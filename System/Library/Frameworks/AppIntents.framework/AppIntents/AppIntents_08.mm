void *sub_18F19E284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = a3();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a2 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_18F19E318(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_18F181A54(), (v4 & 1) != 0))
  {
    v5 = *(*(a2 + 56) + 24 * v3);
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }

  return OUTLINED_FUNCTION_56();
}

uint64_t sub_18F19E388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (sub_18F0F713C(a1, a2), (v7 & 1) != 0))
  {
    OUTLINED_FUNCTION_6_13();
    type metadata accessor for AppIntentEnablement();
    OUTLINED_FUNCTION_10_0();
    sub_18F19ED20(v5 + *(v8 + 72) * v4, a4, type metadata accessor for AppIntentEnablement);
    v9 = OUTLINED_FUNCTION_1_18();
  }

  else
  {
    type metadata accessor for AppIntentEnablement();
    v9 = OUTLINED_FUNCTION_4_10();
  }

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

void *sub_18F19E424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_18F0F713C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_18F19E46C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_18F181EC0(a1), (v2 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

double sub_18F19E4D4@<D0>(uint64_t a1@<X1>, uint64_t (*a2)(void)@<X2>, _OWORD *a3@<X8>)
{
  if (*(a1 + 16) && (v4 = a2(), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_8_3(v4);

    sub_18F0FECD4(v6, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_18F19E538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (*(a5 + 16) && (sub_18F181F04(a1, a2, a3, a4), (v9 & 1) != 0))
  {
    v10 = OUTLINED_FUNCTION_6_13();
    _s18AppManagerObserverO17OnChangedObserverVMa(v10);
    OUTLINED_FUNCTION_10_0();
    sub_18F19ED20(v7 + *(v11 + 72) * v6, a6, _s18AppManagerObserverO17OnChangedObserverVMa);
    v12 = OUTLINED_FUNCTION_1_18();
  }

  else
  {
    _s18AppManagerObserverO17OnChangedObserverVMa(0);
    v12 = OUTLINED_FUNCTION_4_10();
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t sub_18F19E5D4(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_18F181A54(), (v3 & 1) != 0))
  {
    OUTLINED_FUNCTION_2_23(v2);
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }

  return OUTLINED_FUNCTION_56();
}

unint64_t sub_18F19E618(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0xF000000000000007;
  }

  v4 = sub_18F0F713C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 24 * v4);
  }

  else
  {
    return 0xF000000000000007;
  }
}

uint64_t sub_18F19E680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v3 = sub_18F0F713C(a1, a2), (v4 & 1) != 0))
  {
    OUTLINED_FUNCTION_2_23(v3);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  else
  {
    OUTLINED_FUNCTION_10_11();
  }

  return OUTLINED_FUNCTION_56();
}

double sub_18F19E6C4@<D0>(uint64_t a1@<X2>, uint64_t (*a2)(void)@<X3>, _OWORD *a3@<X8>)
{
  if (*(a1 + 16) && (v4 = a2(), (v5 & 1) != 0))
  {
    v6 = OUTLINED_FUNCTION_8_3(v4);

    sub_18F0FECD4(v6, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

double sub_18F19E728@<D0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (sub_18F181A54(), (v5 & 1) != 0))
  {
    v6 = *(a1 + 56) + 56 * v4;

    sub_18F19ECB0(v6, a2);
  }

  else
  {
    *(a2 + 48) = 0;
    result = 0.0;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_18F19E798(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  a4();
  if (v4)
  {
    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F19E7EC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_18F182088();
  if (v2)
  {
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F19E83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_18F0F713C(a1, a2);
  if (v5)
  {
    return *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F19E894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (*(a4 + 16) && (sub_18F10A40C(a1, a2, a3), (v8 & 1) != 0))
  {
    OUTLINED_FUNCTION_6_13();
    type metadata accessor for AppViewBridgeAnnotation();
    OUTLINED_FUNCTION_10_0();
    sub_18F19ED20(v6 + *(v9 + 72) * v5, a5, type metadata accessor for AppViewBridgeAnnotation);
    v10 = OUTLINED_FUNCTION_1_18();
  }

  else
  {
    type metadata accessor for AppViewBridgeAnnotation();
    v10 = OUTLINED_FUNCTION_4_10();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

void IntentParameter<>.unit.getter()
{
  if (!*(*(v0 + *(*v0 + 112)) + 16) || (v1 = OUTLINED_FUNCTION_5_2(), (v2 & 1) == 0) || (v3 = OUTLINED_FUNCTION_8_3(v1), sub_18F0FECD4(v3, &v4), type metadata accessor for IntentParameter<>.DurationUnit(), (OUTLINED_FUNCTION_0_16() & 1) == 0))
  {
    OUTLINED_FUNCTION_9_8();
  }
}

void IntentParameter<>.defaultUnit.getter()
{
  sub_18F19E6C4(*(v0 + *(*v0 + 112)), sub_18F0F713C, &v1);
  if (!v2)
  {
    sub_18F106E70(&v1);
    goto LABEL_5;
  }

  type metadata accessor for IntentParameter<>.DurationUnit();
  if ((OUTLINED_FUNCTION_0_16() & 1) == 0)
  {
LABEL_5:
    OUTLINED_FUNCTION_9_8();
  }
}

void IntentParameterContext<>.unit.getter()
{
  if (!*(*v0 + 16) || (v1 = OUTLINED_FUNCTION_5_2(), (v2 & 1) == 0) || (v3 = OUTLINED_FUNCTION_8_3(v1), sub_18F0FECD4(v3, &v4), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD07E0), (OUTLINED_FUNCTION_0_16() & 1) == 0))
  {
    OUTLINED_FUNCTION_9_8();
  }
}

void IntentParameterContext<>.defaultUnit.getter()
{
  if (!*(*v0 + 16) || (v1 = sub_18F0F713C(0xD000000000000016, 0x800000018F5263D0), (v2 & 1) == 0) || (v3 = OUTLINED_FUNCTION_8_3(v1), sub_18F0FECD4(v3, &v4), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD07E0), (OUTLINED_FUNCTION_0_16() & 1) == 0))
  {
    OUTLINED_FUNCTION_9_8();
  }
}

uint64_t sub_18F19EBC4(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD03F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F541F50;
  *(inited + 32) = 0x6D6572757361656DLL;
  *(inited + 40) = 0xEF74696E55746E65;
  type metadata accessor for IntentParameter<>.DurationUnit();
  v5 = sub_18F52254C();
  *(inited + 48) = v2;
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x800000018F5263D0;
  *(inited + 120) = v5;
  *(inited + 96) = v3;
  sub_18F1168B4();
  return sub_18F5216CC();
}

uint64_t sub_18F19ECB0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD07E8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F19ED20(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return a2;
}

uint64_t _SnippetViewContainer.init(view:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18F0FD0B4(a1, a2);
  *(a2 + 40) = 0;
  return result;
}

uint64_t _SnippetViewContainer.init(view:intentViewOptions:)@<X0>(__int128 *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  result = sub_18F0FD0B4(a1, a3);
  *(a3 + 40) = v4;
  return result;
}

uint64_t _SnippetViewContainer.data()()
{
  v1[7] = v0;
  v1[8] = type metadata accessor for IntentContext();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F19EE7C, 0, 0);
}

uint64_t sub_18F19EE7C()
{
  v1 = v0[9];
  sub_18F0FD724(v0[7], (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1Tm(v0 + 2, v2);
  static IntentContext.current.getter(v1);
  v4 = v0[9];
  v5 = (v4 + *(v0[8] + 88));
  v6 = *v5;
  v7 = v5[1];
  v0[10] = v7;

  sub_18F178EA4(v4);
  OUTLINED_FUNCTION_1_19(v3);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_18F19F04C;

  return v11(v6, v7, v2, v3);
}

uint64_t sub_18F19F04C()
{
  OUTLINED_FUNCTION_3_13();
  v4 = v3;

  if (v1)
  {

    v5 = sub_18F19F1FC;
  }

  else
  {

    *(v4 + 96) = v0;
    *(v4 + 104) = v2;
    v5 = sub_18F19F180;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18F19F180()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_2_10();

  return v3(v2, v1);
}

uint64_t sub_18F19F1FC()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  OUTLINED_FUNCTION_2_10();

  return v1(0, 0xF000000000000000);
}

uint64_t SnippetPluginContainer.init(data:bundleIdentifer:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  *(a5 + 32) = 0;
  return result;
}

uint64_t SnippetPluginContainer.init(data:bundleIdentifier:intentViewOptions:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a5;
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = v6;
  return result;
}

id sub_18F19F298()
{
  sub_18F0FD724(v0, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD07F0);
  if (swift_dynamicCast())
  {
    return 0;
  }

  v2 = v0[3];
  v3 = v0[4];
  __swift_project_boxed_opaque_existential_1Tm(v0, v2);
  return sub_18F1A0DE4(v2, *(v3 + 8));
}

uint64_t _SnippetIntentContainer.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  a4[3] = a2;
  a4[4] = a3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a4);
  v7 = *(*(a2 - 8) + 32);

  return v7(boxed_opaque_existential_1, a1, a2);
}

uint64_t dispatch thunk of _ArchivableView.archiveDataWithSnippetEnvironment(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_19(a4);
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_18F19F4B8;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_18F19F4B8()
{
  OUTLINED_FUNCTION_3_13();

  OUTLINED_FUNCTION_2_10();

  return v2(v1, v0);
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_18F19F5C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IntentViewOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IntentViewOptions(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18F19F7A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t sub_18F19F804(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t static _AssistantIntent.ParameterValueBuilder.buildExpression(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0110);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_18F53F800;
  sub_18F19F8AC(a1, v2 + 32);
  return v2;
}

uint64_t static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = a1 + 32;
  v3 = MEMORY[0x1E69E7CC0];
  do
  {
    sub_18F19F8AC(v2, v13);
    v9 = v13[0];
    v10 = v13[1];
    v11 = v13[2];
    v12 = v13[3];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_18F168B64();
      v3 = v6;
    }

    v4 = *(v3 + 16);
    if (v4 >= *(v3 + 24) >> 1)
    {
      sub_18F168B64();
      v3 = v7;
    }

    *(v3 + 16) = v4 + 1;
    v5 = (v3 + (v4 << 6));
    v5[4] = v11;
    v5[5] = v12;
    v5[2] = v9;
    v5[3] = v10;
    v2 += 64;
    --v1;
  }

  while (v1);
  return v3;
}

void static _AssistantIntent.ParameterValueBuilder.buildBlock(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = (a1 + 32);
  v3 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    while (1)
    {
      v4 = *v2;
      v5 = *(*v2 + 16);
      v6 = *(v3 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v3 + 24) >> 1)
      {
        sub_18F168B64();
        v3 = v7;
      }

      if (*(v4 + 16))
      {
        if ((*(v3 + 24) >> 1) - *(v3 + 16) < v5)
        {
          goto LABEL_16;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v8 = *(v3 + 16);
          v9 = __OFADD__(v8, v5);
          v10 = v8 + v5;
          if (v9)
          {
            goto LABEL_17;
          }

          *(v3 + 16) = v10;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v2;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

_BYTE *_s21ParameterValueBuilderOwst(_BYTE *result, int a2, int a3)
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

uint64_t IntentNotification.notificationID.getter()
{
  v1 = *v0;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v1;
}

uint64_t IntentNotification.init(uuid:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = _s10Foundation4UUIDV10AppIntentsE22entityIdentifierStringSSvg_0();
  v6 = v5;
  v7 = sub_18F520E6C();
  result = (*(*(v7 - 8) + 8))(a1, v7);
  *a2 = v4;
  a2[1] = v6;
  return result;
}

uint64_t IntentNotification.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v30 - v6;
  v8 = sub_18F52187C();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_18F52186C();
  sub_18F52185C();
  sub_18F52183C();
  sub_18F52185C();
  sub_18F520AEC();
  v9 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v10, v11, v12, v9);
  v13 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v13);
  v17 = type metadata accessor for DisplayRepresentation();
  v18 = v17[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v9);
  v22 = v17[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v13);
  *(a1 + v17[7]) = xmmword_18F540410;
  *(a1 + v17[8]) = 0;
  *(a1 + v17[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v9);
  sub_18F0FF628(v7, a1 + v18, &qword_1EACCF7A8);
  return sub_18F0FF628(v4, a1 + v22, &qword_1EACD0270);
}

id static IntentNotification.valueType.getter()
{
  v0 = [objc_opt_self() notificationValueType];

  return v0;
}

uint64_t IntentNotification.projectedAsValue.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v2 = v1[1];
  a1[3] = MEMORY[0x1E69E6158];
  *a1 = v3;
  a1[1] = v2;
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

unint64_t sub_18F19FF50(uint64_t a1)
{
  result = sub_18F19FF78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F19FF78()
{
  result = qword_1EACD07F8;
  if (!qword_1EACD07F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD07F8);
  }

  return result;
}

unint64_t sub_18F19FFCC(uint64_t a1)
{
  result = sub_18F19FFF4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F19FFF4()
{
  result = qword_1EACD0800;
  if (!qword_1EACD0800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0800);
  }

  return result;
}

unint64_t sub_18F1A004C()
{
  result = qword_1EACD0808;
  if (!qword_1EACD0808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0808);
  }

  return result;
}

unint64_t sub_18F1A00B0()
{
  result = qword_1EACD0818;
  if (!qword_1EACD0818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0818);
  }

  return result;
}

unint64_t sub_18F1A0110()
{
  result = qword_1EACD44F0;
  if (!qword_1EACD44F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD44F0);
  }

  return result;
}

uint64_t sub_18F1A0164(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_18F522D5C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t _s10AppIntents31ParameterSummarySwitchConditionV12WidgetFamilyO9hashValueSivg_0()
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](0);
  return sub_18F522F4C();
}

uint64_t sub_18F1A0230(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0820);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F1A06E4();
  sub_18F522FEC();
  sub_18F522BFC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_18F1A0378()
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](0);
  return sub_18F522F4C();
}

uint64_t sub_18F1A03BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F1A0164(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_18F1A0404@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_292();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18F1A0430(uint64_t a1)
{
  v2 = sub_18F1A06E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F1A046C(uint64_t a1)
{
  v2 = sub_18F1A06E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _s10AppIntents17IntentApplicationV8rawValueSSvg_0()
{
  v1 = *v0;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v1;
}

uint64_t dispatch thunk of NotificationRepresentableEntity.notificationRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F10DF80;

  return v9(a1, a2, a3);
}

uint64_t sub_18F1A0630(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
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

uint64_t sub_18F1A0684(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_18F1A06E4()
{
  result = qword_1EACD0828;
  if (!qword_1EACD0828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0828);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentNotification.NotificationNLGParams.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_18F1A07E8()
{
  result = qword_1EACD0830;
  if (!qword_1EACD0830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0830);
  }

  return result;
}

unint64_t sub_18F1A0840()
{
  result = qword_1EACD0838;
  if (!qword_1EACD0838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0838);
  }

  return result;
}

unint64_t sub_18F1A0898()
{
  result = qword_1EACD0840;
  if (!qword_1EACD0840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0840);
  }

  return result;
}

void sub_18F1A0904(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = [v3 properties];
  sub_18F1427E8();
  v7 = sub_18F521CAC();

  v8 = sub_18F111F70(v7);
  for (i = 0; ; ++i)
  {
    if (v8 == i)
    {
      goto LABEL_16;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x193ADBE10](i, v7);
    }

    else
    {
      if (i >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v10 = *(v7 + 8 * i + 32);
    }

    v11 = v10;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v12 = [v10 identifier];
    v13 = sub_18F5218DC();
    v15 = v14;

    if (v13 == a1 && v15 == a2)
    {

LABEL_16:

      return;
    }

    v17 = sub_18F522D5C();

    if (v17)
    {
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
}

uint64_t sub_18F1A0A8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sub_18F113E38(a3, a4);
  v9 = result;
  v10 = *(result + 16);
  if (v10)
  {
    v11 = 0;
    v12 = result + 32;
    while (v11 < *(v9 + 16))
    {
      sub_18F0FD724(v12, &v19);
      v14 = v20;
      v13 = v21;
      __swift_project_boxed_opaque_existential_1Tm(&v19, v20);
      v15 = (*(*(v13 + 8) + 16))(v14);
      if (v16)
      {
        if (v15 == a1 && v16 == a2)
        {

LABEL_13:

          return sub_18F0FD0B4(&v19, a5);
        }

        v18 = sub_18F522D5C();

        if (v18)
        {
          goto LABEL_13;
        }
      }

      ++v11;
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v19);
      v12 += 40;
      if (v10 == v11)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:

    *(a5 + 32) = 0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t static AppIntent.description.getter()
{
  type metadata accessor for IntentDescription();
  OUTLINED_FUNCTION_11();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

id sub_18F1A0DE4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_18F0F21A8(0, &qword_1ED6FD860);
  (*(v6 + 16))(v9, v2, a1);
  return sub_18F33B63C(v9, v10, a1, a2);
}

uint64_t AppIntent.donate()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F1A0EE4()
{
  OUTLINED_FUNCTION_69();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 48) = v1;
  *v1 = v2;
  v1[1] = sub_18F1A0F78;

  return IntentDonationManager.donate<A>(intent:)();
}

uint64_t sub_18F1A0F78()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t AppIntent.donate<A>(result:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F1A10F4()
{
  OUTLINED_FUNCTION_69();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 72) = v1;
  *v1 = v2;
  v1[1] = sub_18F1A1190;

  return IntentDonationManager.donate<A, B>(intent:result:)();
}

uint64_t sub_18F1A1190()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t AppIntent.callAsFunction<>(donate:)()
{
  OUTLINED_FUNCTION_31();
  v0[2] = v1;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_23_11();
  swift_getAssociatedConformanceWitness();
  v0[3] = swift_getAssociatedTypeWitness();
  v2 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v2);
  v0[4] = OUTLINED_FUNCTION_34_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[5] = v3;
  *v3 = v4;
  v3[1] = sub_18F1A1420;
  OUTLINED_FUNCTION_11_7();

  return AppIntent.resolveAndPerform(donate:)();
}

{
  OUTLINED_FUNCTION_21();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v1;
  *v1 = v2;
  v1[1] = sub_18F1A26A0;
  OUTLINED_FUNCTION_11_7();

  return AppIntent.resolveAndPerform(donate:)();
}

uint64_t sub_18F1A1420()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1A1518()
{
  OUTLINED_FUNCTION_69();
  result = __swift_getEnumTagSinglePayload(*(v0 + 32), 1, *(v0 + 24));
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    (*(v2 + 32))();

    OUTLINED_FUNCTION_6();

    return v3();
  }

  return result;
}

uint64_t sub_18F1A15C0()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t AppIntent.resolveAndPerform(donate:)()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  *(v1 + 72) = v4;
  *(v1 + 80) = v0;
  *(v1 + 272) = v5;
  *(v1 + 56) = v6;
  *(v1 + 64) = v2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v1 + 88) = AssociatedTypeWitness;
  *(v1 + 96) = swift_getAssociatedConformanceWitness();
  *(v1 + 104) = swift_getAssociatedTypeWitness();
  v8 = sub_18F52254C();
  *(v1 + 112) = v8;
  OUTLINED_FUNCTION_51(v8);
  *(v1 + 120) = v9;
  *(v1 + 128) = OUTLINED_FUNCTION_34_0();
  v10 = type metadata accessor for IntentDonationIdentifier();
  OUTLINED_FUNCTION_10(v10);
  *(v1 + 136) = OUTLINED_FUNCTION_34_0();
  v11 = sub_18F52254C();
  *(v1 + 144) = v11;
  OUTLINED_FUNCTION_51(v11);
  *(v1 + 152) = v12;
  *(v1 + 160) = OUTLINED_FUNCTION_34_0();
  *(v1 + 168) = *(AssociatedTypeWitness - 8);
  *(v1 + 176) = OUTLINED_FUNCTION_34_0();
  *(v1 + 184) = *(v3 - 8);
  *(v1 + 192) = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_18F1A1844()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[24];
  v2 = v0[9];
  v3 = v0[8];
  type metadata accessor for PreparedIntent();
  v4 = OUTLINED_FUNCTION_22();
  v5(v4);
  v0[25] = sub_18F1194F4(v1, MEMORY[0x1E69E7CC0], v3, v2);
  v6 = swift_task_alloc();
  v0[26] = v6;
  *v6 = v0;
  v6[1] = sub_18F1A1930;

  return sub_18F1316DC();
}

uint64_t sub_18F1A1930()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 216) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    v10 = swift_task_alloc();
    *(v3 + 224) = v10;
    *v10 = v5;
    v10[1] = sub_18F1A1A88;

    return sub_18F1321C4(0);
  }
}

uint64_t sub_18F1A1A88()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 232) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v3 + 240) = v10;
    *v10 = v11;
    v10[1] = sub_18F1A1BE0;

    return sub_18F22A010(v3 + 16);
  }
}

uint64_t sub_18F1A1BE0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1A1CD8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0848);
  v1 = OUTLINED_FUNCTION_31_14();
  v2 = *(v0 + 88);
  if (!v1)
  {
    v11 = *(v0 + 152);
    v10 = *(v0 + 160);
    v12 = *(v0 + 144);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v2);
    (*(v11 + 8))(v10, v12);
    sub_18F52279C();

    v16 = sub_18F52307C();
    MEMORY[0x193ADB000](v16);

    return OUTLINED_FUNCTION_36_6();
  }

  v3 = *(v0 + 160);
  v4 = *(v0 + 272);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, *(v0 + 88));
  v5 = OUTLINED_FUNCTION_45();
  v6(v5);
  if (v4 == 1)
  {
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v0 + 256) = v7;
    *v7 = v8;
    v7[1] = sub_18F1A2088;

    return IntentDonationManager.donate<A, B>(intent:result:)();
  }

  v17 = OUTLINED_FUNCTION_17_9();
  v18(v17);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
  v20 = *(v0 + 104);
  if (EnumTagSinglePayload == 1)
  {
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
    if (!swift_dynamicCastMetatype())
    {
      sub_18F15F670();
      OUTLINED_FUNCTION_28();
      swift_willThrow();

      v28 = OUTLINED_FUNCTION_12_14();
      v29(v28);
      OUTLINED_FUNCTION_35_4();

      OUTLINED_FUNCTION_71();
      goto LABEL_12;
    }

    v21 = OUTLINED_FUNCTION_12_14();
    v22(v21);
  }

  else
  {
    v23 = *(v0 + 128);
    v24 = *(v0 + 56);
    (*(*(v0 + 168) + 8))(*(v0 + 176), *(v0 + 88));

    OUTLINED_FUNCTION_31_0();
    (*(v25 + 32))(v24, v23, v20);
  }

  OUTLINED_FUNCTION_4_11();
  __swift_storeEnumTagSinglePayload(*(v0 + 56), v26, 1, *(v0 + 104));

  OUTLINED_FUNCTION_6();
LABEL_12:

  return v27();
}

uint64_t sub_18F1A2088()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 264) = v0;

  if (!v0)
  {
    sub_18F1A27DC(*(v3 + 136));
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1A218C()
{
  v3 = OUTLINED_FUNCTION_17_9();
  v4(v3);
  if (__swift_getEnumTagSinglePayload(v0, 1, v1) != 1)
  {
    v7 = v2[16];
    v8 = v2[13];
    v9 = v2[7];
    (*(v2[21] + 8))(v2[22], v2[11]);

    OUTLINED_FUNCTION_31_0();
    (*(v10 + 32))(v9, v7, v8);
    goto LABEL_5;
  }

  (*(v2[15] + 8))(v2[16], v2[14]);
  if (swift_dynamicCastMetatype())
  {
    v5 = OUTLINED_FUNCTION_12_14();
    v6(v5);

LABEL_5:
    OUTLINED_FUNCTION_4_11();
    __swift_storeEnumTagSinglePayload(v2[7], v11, 1, v2[13]);

    OUTLINED_FUNCTION_6();
    goto LABEL_6;
  }

  sub_18F15F670();
  OUTLINED_FUNCTION_28();
  swift_willThrow();

  v14 = OUTLINED_FUNCTION_12_14();
  v15(v14);
  OUTLINED_FUNCTION_35_4();

  OUTLINED_FUNCTION_71();
LABEL_6:

  return v12();
}

uint64_t sub_18F1A2384()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_4_11();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1A241C()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_4_11();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1A24B4()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_4_11();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1A254C()
{
  OUTLINED_FUNCTION_31();

  v0 = OUTLINED_FUNCTION_22();
  v1(v0);
  OUTLINED_FUNCTION_4_11();

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F1A26A0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 24) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1A27DC(uint64_t a1)
{
  v2 = type metadata accessor for IntentDonationIdentifier();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppIntent._resolveAndPerform(donate:)()
{
  OUTLINED_FUNCTION_31();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_23_11();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v1 = sub_18F52254C();
  v0[2] = v1;
  OUTLINED_FUNCTION_51(v1);
  v0[3] = v2;
  v0[4] = OUTLINED_FUNCTION_34_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  v0[5] = v3;
  *v3 = v4;
  v3[1] = sub_18F1A2988;
  OUTLINED_FUNCTION_11_7();

  return AppIntent.resolveAndPerform(donate:)();
}

uint64_t sub_18F1A2988()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  v3[6] = v0;

  if (!v0)
  {
    (*(v3[3] + 8))(v3[4], v3[2]);
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1A2A9C()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_6();

  return v0();
}

uint64_t AppIntent<>.callAsFunction(donate:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 128) = a4;
  *(v5 + 136) = v4;
  *(v5 + 329) = a2;
  *(v5 + 112) = a1;
  *(v5 + 120) = a3;
  v7 = type metadata accessor for IntentDonationIdentifier();
  OUTLINED_FUNCTION_10(v7);
  *(v5 + 144) = OUTLINED_FUNCTION_34_0();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  OUTLINED_FUNCTION_10(v8);
  *(v5 + 152) = OUTLINED_FUNCTION_34_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_23_11();
  *(v5 + 160) = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 168) = AssociatedTypeWitness;
  v10 = sub_18F52254C();
  OUTLINED_FUNCTION_10(v10);
  *(v5 + 176) = OUTLINED_FUNCTION_34_0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(v5 + 184) = AssociatedConformanceWitness;
  v12 = sub_18F199AE0();
  *(v5 + 16) = AssociatedTypeWitness;
  v13 = MEMORY[0x1E69E73E0];
  *(v5 + 192) = v12;
  *(v5 + 24) = v13;
  *(v5 + 32) = v13;
  *(v5 + 40) = v13;
  *(v5 + 48) = AssociatedConformanceWitness;
  *(v5 + 56) = v12;
  v14 = type metadata accessor for IntentResultContainer();
  *(v5 + 200) = v14;
  OUTLINED_FUNCTION_51(v14);
  *(v5 + 208) = v15;
  *(v5 + 216) = OUTLINED_FUNCTION_34_0();
  v16 = swift_checkMetadataState();
  *(v5 + 224) = v16;
  OUTLINED_FUNCTION_51(v16);
  *(v5 + 232) = v17;
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  v22 = (*(a4 + 112) + **(a4 + 112));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v5 + 256) = v18;
  *v18 = v19;
  v20 = OUTLINED_FUNCTION_25_2(v18);

  return v22(v20);
}

uint64_t sub_18F1A2E70()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 264) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1A2F68()
{
  v1 = v0[23];
  v2 = v0[21];
  v4 = v0[15];
  v3 = v0[16];
  (*(v0[29] + 16))(v0[30], v0[31], v0[28]);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v0[8] = v4;
  v0[9] = v2;
  v0[10] = AssociatedTypeWitness;
  v0[11] = v3;
  v0[12] = v1;
  type metadata accessor for DeferredIntentResultContainer();
  if (swift_dynamicCast())
  {
    v0[34] = v0[13];
    v6 = DeferredIntentResultContainer.execute.getter();
    v0[35] = v7;
    v15 = (v6 + *v6);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    v0[36] = v8;
    *v8 = v9;
    v8[1] = sub_18F1A31B4;
    v10 = v0[14];

    return v15(v10);
  }

  else
  {
    sub_18F15F670();
    OUTLINED_FUNCTION_28();
    swift_willThrow();
    v12 = OUTLINED_FUNCTION_22();
    v13(v12);

    OUTLINED_FUNCTION_71();

    return v14();
  }
}

uint64_t sub_18F1A31B4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 296) = v0;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1A32B8()
{
  v23 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  v4 = *(v0 + 168);
  v3 = *(v0 + 176);
  v5 = *(v0 + 152);
  v6 = *(v0 + 329);
  v7 = *(v0 + 112);

  v8 = *(v4 - 8);
  *(v0 + 304) = v8;
  (*(v8 + 16))(v3, v7, v4);
  __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
  *(v0 + 328) = 1;
  type metadata accessor for IntentDialog(0);
  memset(&v20[1], 0, 25);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  v22 = 0;
  IntentResultContainer.init(value:opensIntent:snippetView:dialog:nextIntent:suggestedFollowUpIntents:activityIdentifier:confirmationConditions:)(v3, v0 + 328, v20, v5, &v21, 0, 0, 0, &v22, v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], MEMORY[0x1E69E73E0], v1, v2, v19, 0, 0, 0, *(&v20[1] + 1), 0, *(&v20[2] + 1), 0, 0, 0, 0, 0);
  if (v6 == 1)
  {
    v13 = swift_task_alloc();
    *(v0 + 312) = v13;
    swift_getWitnessTable();
    *v13 = v0;
    v13[1] = sub_18F1A355C;

    return IntentDonationManager.donate<A, B>(intent:result:)();
  }

  else
  {
    v15 = *(v0 + 208);

    (*(v15 + 8))(*(v0 + 216), *(v0 + 200));
    v16 = OUTLINED_FUNCTION_45();
    v17(v16);

    OUTLINED_FUNCTION_6();

    return v18();
  }
}

uint64_t sub_18F1A355C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_8_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 320) = v0;

  if (!v0)
  {
    sub_18F1A27DC(*(v3 + 144));
  }

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1A3660()
{

  (*(v0[26] + 8))(v0[27], v0[25]);
  v1 = OUTLINED_FUNCTION_45();
  v2(v1);

  OUTLINED_FUNCTION_6();

  return v3();
}

uint64_t sub_18F1A3744()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_19_7();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1A37D4()
{
  OUTLINED_FUNCTION_31();

  v0 = OUTLINED_FUNCTION_22();
  v1(v0);
  OUTLINED_FUNCTION_19_7();

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F1A3888()
{
  v1 = v0[38];
  v3 = v0[26];
  v2 = v0[27];
  v4 = v0[25];
  v5 = v0[21];
  v6 = v0[14];

  (*(v3 + 8))(v2, v4);
  (*(v1 + 8))(v6, v5);
  v7 = OUTLINED_FUNCTION_22();
  v8(v7);
  OUTLINED_FUNCTION_19_7();

  OUTLINED_FUNCTION_71();

  return v9();
}

uint64_t IntentAuthenticationPolicy.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t IntentError.hashValue.getter()
{
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](0);
  return sub_18F522F4C();
}

uint64_t LNInitalizerError.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t AppIntent.init(lnAction:)()
{
  OUTLINED_FUNCTION_69();
  v0[13] = v1;
  v0[14] = v2;
  v0[12] = v3;
  v4 = sub_18F52254C();
  v0[15] = v4;
  OUTLINED_FUNCTION_51(v4);
  v0[16] = v5;
  v0[17] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_18F1A3C10()
{
  OUTLINED_FUNCTION_21();
  sub_18F0F9FD4(v0[13], (v0 + 7), &qword_1EACD0430);
  if (v0[10])
  {
    sub_18F0F21A8(0, &qword_1ED6FD860);
    if (swift_dynamicCast())
    {
      v0[18] = v0[11];
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[19] = v1;
      *v1 = v2;
      v1[1] = sub_18F1A3DA0;

      return sub_18F114AB0();
    }
  }

  else
  {
    sub_18F0FA038((v0 + 7), &qword_1EACD0430);
  }

  v4 = v0[13];
  sub_18F1A4098();
  OUTLINED_FUNCTION_28();
  *v5 = 0;
  swift_willThrow();
  sub_18F0FA038(v4, &qword_1EACD0430);

  OUTLINED_FUNCTION_71();

  return v6();
}

uint64_t sub_18F1A3DA0()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 160) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1A3E98()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD80B0);
  v1 = OUTLINED_FUNCTION_31_14();
  v2 = v0[17];
  v3 = v0[18];
  if (v1)
  {
    v5 = v0[13];
    v4 = v0[14];
    v6 = v0[12];

    __swift_storeEnumTagSinglePayload(v2, 0, 1, v4);
    sub_18F0FA038(v5, &qword_1EACD0430);
    OUTLINED_FUNCTION_31_0();
    (*(v7 + 32))(v6, v2, v4);

    OUTLINED_FUNCTION_6();
  }

  else
  {
    v9 = v0[13];
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    v14 = OUTLINED_FUNCTION_22();
    v15(v14);
    sub_18F1A4098();
    OUTLINED_FUNCTION_28();
    *v16 = 1;
    swift_willThrow();

    sub_18F0FA038(v9, &qword_1EACD0430);

    OUTLINED_FUNCTION_71();
  }

  return v8();
}

uint64_t sub_18F1A4018()
{
  OUTLINED_FUNCTION_69();
  v1 = *(v0 + 104);

  sub_18F0FA038(v1, &qword_1EACD0430);

  OUTLINED_FUNCTION_71();

  return v2();
}

unint64_t sub_18F1A4098()
{
  result = qword_1EACD0850;
  if (!qword_1EACD0850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0850);
  }

  return result;
}

uint64_t anyAppIntent(lnAction:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return OUTLINED_FUNCTION_10_5();
}

uint64_t sub_18F1A4100()
{
  OUTLINED_FUNCTION_21();
  sub_18F0F9FD4(v0[8], (v0 + 2), &qword_1EACD0430);
  if (v0[5])
  {
    sub_18F0F21A8(0, &qword_1ED6FD860);
    if (swift_dynamicCast())
    {
      v0[9] = v0[6];
      swift_task_alloc();
      OUTLINED_FUNCTION_25();
      v0[10] = v1;
      *v1 = v2;
      v1[1] = sub_18F1A4268;

      return sub_18F114AB0();
    }
  }

  else
  {
    sub_18F0FA038((v0 + 2), &qword_1EACD0430);
  }

  sub_18F1A4098();
  OUTLINED_FUNCTION_28();
  *v4 = 0;
  swift_willThrow();
  OUTLINED_FUNCTION_71();

  return v5();
}

uint64_t sub_18F1A4268()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_5_1();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v6 + 88) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1A4360()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_6();

  return v1();
}

uint64_t sub_18F1A43B8()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v1();
}

uint64_t AppIntent.lnAction.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = sub_18F1A0DE4(a1, a2);
  result = sub_18F0F21A8(0, &qword_1ED6FD860);
  a3[3] = result;
  *a3 = v4;
  return result;
}

uint64_t static AppIntent.lnMetadata.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = sub_18F110768(a1, a2);
  result = sub_18F0F21A8(0, &qword_1ED6FE720);
  a3[3] = result;
  *a3 = v4;
  return result;
}

uint64_t static AppIntent.intentMetadata.getter(uint64_t a1)
{
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  v2 = static AppIntent._identifier.getter(a1);
  v3 = sub_18F164DD4(v2);

  return v3;
}

uint64_t sub_18F1A4584@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F1A4560();
  *a1 = result & 1;
  return result;
}

uint64_t sub_18F1A45B0(uint64_t a1)
{
  v2 = sub_18F1A4824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F1A45EC(uint64_t a1)
{
  v2 = sub_18F1A4824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t _GeneratedContentOptions.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0858);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F1A4824();
  sub_18F522FEC();
  return (*(v4 + 8))(v7, v2);
}

unint64_t sub_18F1A4824()
{
  result = qword_1EACD0860;
  if (!qword_1EACD0860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0860);
  }

  return result;
}

unint64_t sub_18F1A487C()
{
  result = qword_1EACD0868;
  if (!qword_1EACD0868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0868);
  }

  return result;
}

unint64_t sub_18F1A48D4()
{
  result = qword_1EACD0870;
  if (!qword_1EACD0870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0870);
  }

  return result;
}

unint64_t sub_18F1A492C()
{
  result = qword_1EACD0878;
  if (!qword_1EACD0878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0878);
  }

  return result;
}

uint64_t dispatch thunk of AppIntent.perform()()
{
  OUTLINED_FUNCTION_31();
  v6 = (*(v1 + 112) + **(v1 + 112));
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 16) = v2;
  *v2 = v3;
  v4 = OUTLINED_FUNCTION_25_2(v2);

  return v6(v4);
}

_BYTE *storeEnumTagSinglePayload for IntentAuthenticationPolicy(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for LNInitalizerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_18F1A4D10(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_16_0();
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

_BYTE *sub_18F1A4D5C(_BYTE *result, int a2, int a3)
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

unint64_t sub_18F1A4E1C()
{
  result = qword_1EACD0880;
  if (!qword_1EACD0880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0880);
  }

  return result;
}

unint64_t sub_18F1A4E74()
{
  result = qword_1EACD0888;
  if (!qword_1EACD0888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0888);
  }

  return result;
}

uint64_t sub_18F1A4F10()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  *(v0 + 208) = v3;
  v4 = type metadata accessor for Annotation(0);
  *(v0 + 216) = v4;
  OUTLINED_FUNCTION_10(v4);
  *(v0 + 224) = OUTLINED_FUNCTION_34_0();
  v5 = v2[1];
  *(v0 + 80) = *v2;
  *(v0 + 96) = v5;
  v6 = v2[3];
  *(v0 + 112) = v2[2];
  *(v0 + 128) = v6;
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F1A4FA4()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 224);
  v1[3] = &type metadata for FetchDisplayRepresentationTask;
  v1[4] = &off_1F0311440;
  v2 = swift_allocObject();
  *v1 = v2;
  v3 = *(v0 + 80);
  v4 = *(v0 + 96);
  *(v0 + 16) = v3;
  *(v0 + 32) = v4;
  v5 = *(v0 + 112);
  v6 = *(v0 + 128);
  *(v0 + 48) = v5;
  *(v0 + 64) = v6;
  v2[1] = v3;
  v2[2] = v4;
  v2[3] = v5;
  v2[4] = v6;
  OUTLINED_FUNCTION_16_7();
  v7 = swift_task_alloc();
  *(v0 + 232) = v7;
  *(v7 + 16) = v0 + 80;
  sub_18F1A81D8(v0 + 16, v0 + 144);
  OUTLINED_FUNCTION_6_1(&unk_18F559B90);
  v13 = v8;
  v9 = swift_task_alloc();
  *(v0 + 240) = v9;
  *v9 = v0;
  v9[1] = sub_18F1A50DC;
  v10 = *(v0 + 224);
  v11 = *(v0 + 208);

  return v13(v11, v10, 0, 0, &unk_18F542998, v7);
}

uint64_t sub_18F1A50DC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 248) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_0_17();

    OUTLINED_FUNCTION_71();

    return v10();
  }
}

uint64_t sub_18F1A5208()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_0_17();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1A5270(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for Annotation(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F1A5304, 0, 0);
}

uint64_t sub_18F1A5304()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_19_8();
  v0[3] = type metadata accessor for FetchViewEntitiesTask();
  v0[4] = &off_1F0306EF8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0);
  sub_18F103B8C(v1, boxed_opaque_existential_1, type metadata accessor for FetchViewEntitiesTask);
  OUTLINED_FUNCTION_16_7();
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_17_10(v4);
  OUTLINED_FUNCTION_6_1(&unk_18F559CD8);
  v5 = swift_task_alloc();
  *(v2 + 48) = v5;
  *v5 = v2;
  v5[1] = sub_18F1A53FC;
  v6 = OUTLINED_FUNCTION_4_12(*(v2 + 32));

  return v7(v6);
}

uint64_t sub_18F1A53FC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_0_17();

    v10 = OUTLINED_FUNCTION_14_1();

    return v11(v10);
  }
}

uint64_t sub_18F1A5534()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_0_17();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1A559C(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for Annotation(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F1A5630, 0, 0);
}

uint64_t sub_18F1A5630()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_19_8();
  v0[3] = type metadata accessor for FetchStructuredDataTask();
  v0[4] = &off_1F03065A8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0);
  sub_18F103B8C(v1, boxed_opaque_existential_1, type metadata accessor for FetchStructuredDataTask);
  OUTLINED_FUNCTION_16_7();
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_17_10(v4);
  OUTLINED_FUNCTION_6_1(&unk_18F559CB8);
  v5 = swift_task_alloc();
  *(v2 + 48) = v5;
  *v5 = v2;
  v5[1] = sub_18F1A5728;
  v6 = OUTLINED_FUNCTION_4_12(*(v2 + 32));

  return v7(v6);
}

uint64_t sub_18F1A5728()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_1_0();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_0_17();

    v10 = OUTLINED_FUNCTION_14_1();

    return v11(v10);
  }
}

uint64_t sub_18F1A5860()
{
  OUTLINED_FUNCTION_69();
  v0[2] = v1;
  v2 = type metadata accessor for Annotation(0);
  v0[3] = v2;
  OUTLINED_FUNCTION_10(v2);
  v0[4] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F1A58E0()
{
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_19_8();
  v0[3] = type metadata accessor for PerformActionExecutorTask(v3);
  v0[4] = &off_1F0305CE8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0);
  sub_18F103B8C(v1, boxed_opaque_existential_1, type metadata accessor for PerformActionExecutorTask);
  OUTLINED_FUNCTION_16_7();
  v5 = swift_task_alloc();
  OUTLINED_FUNCTION_17_10(v5);
  OUTLINED_FUNCTION_6_1(&unk_18F559BA8);
  v6 = swift_task_alloc();
  *(v2 + 48) = v6;
  *v6 = v2;
  v6[1] = sub_18F1A5728;
  v7 = OUTLINED_FUNCTION_4_12(*(v2 + 32));

  return v8(v7);
}

uint64_t sub_18F1A59D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_18F1A7F98();
  v9 = MEMORY[0x193ADB620](v2, &type metadata for ResolverCache.Node, v3);
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 32;
    do
    {
      sub_18F1A7FEC(v5, v7);
      sub_18F2C97EC(v8, v7);
      sub_18F1A8048(v8);
      v5 += 40;
      --v4;
    }

    while (v4);

    return v9;
  }

  else
  {
    OUTLINED_FUNCTION_46();
  }

  return v2;
}

void sub_18F1A5A80(uint64_t a1)
{
  v5 = *(a1 + 16);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4470);
  v7 = sub_18F1A7F1C();
  MEMORY[0x193ADB620](v5, v6, v7);
  OUTLINED_FUNCTION_27_12();
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(a1 + 16))
    {
      break;
    }

    ++v1;
    v8 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v16 = OUTLINED_FUNCTION_25_9(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18);
    sub_18F2C9AC8(v16);

    v3 += 16;
  }

  __break(1u);
}

uint64_t sub_18F1A5B40(uint64_t a1)
{
  result = MEMORY[0x193ADB620](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F12A054(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18F1A5C5C(uint64_t a1)
{
  v2 = MEMORY[0x193ADB620](*(a1 + 16), MEMORY[0x1E69E7668], MEMORY[0x1E69E7678]);
  v8 = v2;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_18F2C9C00(&v7, *(a1 + v4));
      v4 += 4;
      --v3;
    }

    while (v3);

    return v8;
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

void sub_18F1A5CF0(uint64_t a1)
{
  MEMORY[0x193ADB620](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  OUTLINED_FUNCTION_27_12();
  while (1)
  {
    if (v2 == v1)
    {

      return;
    }

    if (v1 >= *(a1 + 16))
    {
      break;
    }

    ++v1;
    v5 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v13 = OUTLINED_FUNCTION_25_9(v5, v6, v7, v8, v9, v10, v11, v12, v16, v17);
    sub_18F12A054(v13, v14, v15);

    v3 += 16;
  }

  __break(1u);
}

uint64_t AppContext.fetchViewEntities(_:)()
{
  OUTLINED_FUNCTION_69();
  v0[4] = v1;
  ViewEntitiesTask = type metadata accessor for FetchViewEntitiesTask();
  v0[5] = ViewEntitiesTask;
  OUTLINED_FUNCTION_10(ViewEntitiesTask);
  v0[6] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_18F1A5E18()
{
  if (qword_1ED6FD648 != -1)
  {
    swift_once();
  }

  if (byte_1ED707680 != 1)
  {

    OUTLINED_FUNCTION_28_2();

    __asm { BRAA            X2, X16 }
  }

  if (qword_1ED6FEF38 != -1)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v1 = sub_18F52165C();
  __swift_project_value_buffer(v1, qword_1ED707778);
  v2 = sub_18F52163C();
  v3 = sub_18F52220C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_18F0E9000, v2, v3, "Pulling view entities", v4, 2u);
    MEMORY[0x193ADD350](v4, -1, -1);
  }

  v5 = v0[4];

  if (!v5)
  {
    v10 = 0;
    goto LABEL_29;
  }

  v0[2] = v0[4];
  swift_unknownObjectRetain_n();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0898);
  if (!swift_dynamicCast())
  {
    sub_18F1A7790();
    swift_allocError();
    strcpy(v17, "interactionIDs");
    v17[15] = -18;
    swift_willThrow();
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_28_2();

    __asm { BRAA            X1, X16 }
  }

  v6 = v0[3];
  v7 = sub_18F111FA0(v6);
  if (!v7)
  {

    v10 = MEMORY[0x1E69E7CC0];
LABEL_28:
    sub_18F1A5C5C(v10);
    OUTLINED_FUNCTION_46();
    swift_unknownObjectRelease();
LABEL_29:
    if (qword_1ED6FD658 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v20 = v0[5];
    v21 = v0[6];
    __swift_project_value_buffer(v1, qword_1ED707698);
    OUTLINED_FUNCTION_31_0();
    (*(v22 + 16))(v21);
    v23 = v21 + *(v20 + 20);
    *v23 = "FetchViewEntities";
    *(v23 + 8) = 17;
    *(v23 + 16) = 2;
    *(v21 + *(v20 + 24)) = v10;
    OUTLINED_FUNCTION_6_1(&unk_18F542838);
    v24 = swift_task_alloc();
    v0[7] = v24;
    *v24 = v0;
    v24[1] = sub_18F1A6270;
    OUTLINED_FUNCTION_28_2();

    __asm { BR              X1 }
  }

  v8 = v7;
  v27 = v1;
  v28 = MEMORY[0x1E69E7CC0];
  sub_18F3AAE2C();
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v10 = v28;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x193ADBE10](v9, v6);
      }

      else
      {
        v11 = *(v6 + 8 * v9 + 32);
      }

      v12 = v11;
      v13 = [v11 unsignedIntValue];

      v14 = *(v28 + 16);
      if (v14 >= *(v28 + 24) >> 1)
      {
        sub_18F3AAE2C();
      }

      ++v9;
      *(v28 + 16) = v14 + 1;
      *(v28 + 4 * v14 + 32) = v13;
    }

    while (v8 != v9);

    v1 = v27;
    goto LABEL_28;
  }

  __break(1u);
}

uint64_t sub_18F1A6270()
{
  OUTLINED_FUNCTION_31();
  v3 = v2;
  v4 = *v1;
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  v7 = *v1;
  *v6 = *v1;
  *(v5 + 64) = v0;

  sub_18F103A00(*(v4 + 48), type metadata accessor for FetchViewEntitiesTask);
  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {

    v11 = *(v7 + 8);

    return v11(v3);
  }
}

uint64_t sub_18F1A63EC()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1A64D4(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v5 = a3;
  v6 = swift_task_alloc();
  v3[5] = v6;
  *v6 = v3;
  v6[1] = sub_18F1A6594;

  return AppContext.fetchViewEntities(_:)();
}

uint64_t sub_18F1A6594()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_20_9();
  v3 = *v2;
  v4 = *(*v2 + 24);
  v5 = *v2;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  swift_unknownObjectRelease();

  v7 = *(v3 + 32);
  if (v0)
  {
    sub_18F520A7C();

    v8 = OUTLINED_FUNCTION_11_3();
    v9(v8, 0, v1);

    _Block_release(v7);
  }

  else
  {
    v10 = OUTLINED_FUNCTION_11_3();
    v11(v10, v1, 0);
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_18_9();

  return v12();
}

uint64_t sub_18F1A674C()
{
  OUTLINED_FUNCTION_21();
  if (qword_1ED6FEF38 != -1)
  {
    OUTLINED_FUNCTION_9_1();
  }

  v1 = sub_18F52165C();
  __swift_project_value_buffer(v1, qword_1ED707778);
  v2 = sub_18F52163C();
  v3 = sub_18F52220C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    OUTLINED_FUNCTION_42(&dword_18F0E9000, v5, v6, "Pulling view intents");
    MEMORY[0x193ADD350](v4, -1, -1);
  }

  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  *(v0 + 64) = *(off_1ED6FF6C8 + 10);

  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  *v7 = v0;
  v7[1] = sub_18F1A68BC;

  return sub_18F2ADA38();
}

uint64_t sub_18F1A68BC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  *(v2 + 80) = v1;
  *(v2 + 88) = v0;

  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F1A69C4()
{
  v1 = *(v0 + 80);

  v2 = *(v1 + 16);
  v3 = *(v0 + 80);
  if (v2)
  {
    sub_18F5228CC();
    v4 = (v3 + 48);
    do
    {
      v5 = *v4;
      v6 = v4[5];
      v7 = v4[6];
      v13 = *(v4 + 3);
      v14 = *(v4 + 1);
      v8 = objc_allocWithZone(MEMORY[0x1E69AD080]);
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v9 = sub_18F5218AC();
      *(v0 + 16) = v14;
      *(v0 + 32) = v13;
      *(v0 + 48) = v6;
      *(v0 + 56) = v7;
      [v8 initWithActionIdentifier:v9 viewIdentifier:v5 location:v0 + 16];

      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      sub_18F5228AC();
      v4 += 9;
      --v2;
    }

    while (v2);
  }

  sub_18F1A7B20();
  v10 = sub_18F521C8C();

  v11 = *(v0 + 8);

  return v11(v10);
}

uint64_t sub_18F1A6B78()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1A6C50(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_18F1A6CF4;

  return AppContext.fetchViewActions()();
}

uint64_t sub_18F1A6CF4()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_20_9();
  v3 = *v2;
  v4 = *(*v2 + 16);
  v5 = *v2;
  OUTLINED_FUNCTION_39();
  *v6 = v5;

  v7 = *(v3 + 24);
  if (v0)
  {
    sub_18F520A7C();

    (v7)[2](v7, 0, v1);
    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, v1, 0);
    _Block_release(v7);
    swift_unknownObjectRelease();
  }

  v8 = *(v5 + 8);

  return v8();
}

uint64_t AppContext.fetchStructuredData(_:forEntityIdentifiers:)()
{
  OUTLINED_FUNCTION_69();
  v0[4] = v1;
  v0[5] = v2;
  StructuredDataTask = type metadata accessor for FetchStructuredDataTask();
  v0[6] = StructuredDataTask;
  OUTLINED_FUNCTION_10(StructuredDataTask);
  v0[7] = OUTLINED_FUNCTION_34_0();
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_18F1A6F00()
{
  v0[2] = v0[5];
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0258);
  if (swift_dynamicCast())
  {
    v1 = v0[3];
    if (qword_1ED6FD658 != -1)
    {
      OUTLINED_FUNCTION_0_8();
    }

    v3 = v0[6];
    v2 = v0[7];
    v4 = v0[4];
    v5 = sub_18F52165C();
    __swift_project_value_buffer(v5, qword_1ED707698);
    OUTLINED_FUNCTION_31_0();
    (*(v6 + 16))(v2);
    v7 = v2 + v3[5];
    *v7 = "FetchStructuredData";
    *(v7 + 8) = 19;
    *(v7 + 16) = 2;
    *(v2 + v3[6]) = v4;
    *(v2 + v3[7]) = v1;
    OUTLINED_FUNCTION_6_1(&unk_18F542860);
    v20 = v8;
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_18F1A71A0;
    v10 = v0[7];

    return v20(v10);
  }

  else
  {
    if (qword_1ED6FEF38 != -1)
    {
      OUTLINED_FUNCTION_9_1();
    }

    v12 = sub_18F52165C();
    __swift_project_value_buffer(v12, qword_1ED707778);
    v13 = sub_18F52163C();
    v14 = sub_18F52221C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      OUTLINED_FUNCTION_42(&dword_18F0E9000, v16, v17, "Unable to parse entity identifiers while fetching structured data.");
      MEMORY[0x193ADD350](v15, -1, -1);
    }

    sub_18F1A7B64();
    swift_allocError();
    *v18 = xmmword_18F540420;
    swift_willThrow();

    OUTLINED_FUNCTION_71();

    return v19();
  }
}

uint64_t sub_18F1A71A0()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  *v6 = *v1;
  *(v5 + 72) = v0;

  sub_18F103A00(*(v4 + 56), type metadata accessor for FetchStructuredDataTask);
  if (v0)
  {
    OUTLINED_FUNCTION_13_0();

    return MEMORY[0x1EEE6DFA0](v8, v9, v10);
  }

  else
  {

    v11 = *(v7 + 8);

    return v11(v3);
  }
}

uint64_t sub_18F1A7314()
{
  OUTLINED_FUNCTION_69();

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1A7408(int a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a2;
  v4[3] = a4;
  v4[4] = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  v6 = a4;
  v7 = swift_task_alloc();
  v4[5] = v7;
  *v7 = v4;
  v7[1] = sub_18F1A6594;

  return AppContext.fetchStructuredData(_:forEntityIdentifiers:)();
}

uint64_t sub_18F1A74E0(uint64_t a1, uint64_t a2)
{
  v2 = 9001;
  if (a2 != 1)
  {
    v2 = 9002;
  }

  if (a2)
  {
    return v2;
  }

  else
  {
    return 9000;
  }
}

uint64_t sub_18F1A74FC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a2 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18F53F800;
      *(inited + 32) = sub_18F5218DC();
      *(inited + 40) = v4;
      v5 = 0x800000018F526660;
      *(inited + 72) = MEMORY[0x1E69E6158];
      v6 = 0xD000000000000026;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_18F53F800;
      *(inited + 32) = sub_18F5218DC();
      *(inited + 40) = v9;
      sub_18F52279C();
      MEMORY[0x193ADB000](0xD000000000000021, 0x800000018F526610);
      MEMORY[0x193ADB000](a1, a2);
      MEMORY[0x193ADB000](0xD000000000000012, 0x800000018F526640);
      v6 = 0;
      v5 = 0xE000000000000000;
      *(inited + 72) = MEMORY[0x1E69E6158];
    }

    *(inited + 48) = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_18F53F800;
    *(inited + 32) = sub_18F5218DC();
    *(inited + 40) = v7;
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = 0x206E776F6E6B6E55;
    v5 = 0xED0000726F727265;
  }

  *(inited + 56) = v5;
  return sub_18F5216CC();
}

uint64_t sub_18F1A7704(uint64_t a1)
{
  v2 = sub_18F1A7CB4();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18F1A7740(uint64_t a1)
{
  v2 = sub_18F1A7CB4();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_18F1A7790()
{
  result = qword_1EACD08A0;
  if (!qword_1EACD08A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD08A0);
  }

  return result;
}

uint64_t sub_18F1A77E4(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  v5 = a2[3];
  *(v2 + 48) = a2[2];
  *(v2 + 64) = v5;
  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  *v6 = v2;
  v6[1] = sub_18F1A7890;

  return sub_18F2097B0(a1);
}

uint64_t sub_18F1A7890()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F1A7970()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F130C90;

  return sub_18F380CD8();
}

uint64_t sub_18F1A7A00()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F18C9E0;

  return sub_18F3BB58C();
}

uint64_t sub_18F1A7A90()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F18C9E0;

  return sub_18F2460A4();
}

unint64_t sub_18F1A7B20()
{
  result = qword_1EACD08A8;
  if (!qword_1EACD08A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EACD08A8);
  }

  return result;
}

unint64_t sub_18F1A7B64()
{
  result = qword_1EACD08B0;
  if (!qword_1EACD08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD08B0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10AppIntents18FetchMetadataErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18F1A7BD0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F1A7C24(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_18F1A7C80(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_18F1A7CB4()
{
  result = qword_1EACD08B8;
  if (!qword_1EACD08B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD08B8);
  }

  return result;
}

uint64_t sub_18F1A7D08()
{
  OUTLINED_FUNCTION_31();
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_18F0FC870;

  return sub_18F1A7408(v2, v3, v5, v4);
}

uint64_t sub_18F1A7DC4()
{
  OUTLINED_FUNCTION_21();
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_18F0FC874;

  return sub_18F1A6C50(v2, v3);
}

uint64_t sub_18F1A7E6C()
{
  OUTLINED_FUNCTION_21();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18F0FC870;

  return sub_18F1A64D4(v2, v3, v4);
}

unint64_t sub_18F1A7F1C()
{
  result = qword_1EACD08C0;
  if (!qword_1EACD08C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD4470);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD08C0);
  }

  return result;
}

unint64_t sub_18F1A7F98()
{
  result = qword_1EACD08C8;
  if (!qword_1EACD08C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD08C8);
  }

  return result;
}

uint64_t sub_18F1A809C(uint64_t a1, _OWORD *a2)
{
  v4 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v4;
  v5 = a2[3];
  *(v2 + 48) = a2[2];
  *(v2 + 64) = v5;
  v6 = swift_task_alloc();
  *(v2 + 80) = v6;
  *v6 = v2;
  v6[1] = sub_18F1A869C;

  return sub_18F1A77E4(a1, (v2 + 16));
}

uint64_t sub_18F1A8148()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_24_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_24(v1);

  return v4(v3);
}

uint64_t sub_18F1A8234(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18F1A82CC;

  return sub_18F1A7970();
}

uint64_t sub_18F1A82CC()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  OUTLINED_FUNCTION_85();
  v5 = v4;
  OUTLINED_FUNCTION_1_0();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_39();
  *v8 = v7;

  if (!v0)
  {
    **(v5 + 16) = v3;
  }

  OUTLINED_FUNCTION_18_9();

  return v9();
}

uint64_t sub_18F1A83BC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18F1A86A4;

  return sub_18F1A7A00();
}

uint64_t sub_18F1A8454(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_18F1A86A4;

  return sub_18F1A7A90();
}

uint64_t sub_18F1A84EC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_24_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_24(v1);

  return v4(v3);
}

uint64_t sub_18F1A857C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_24_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_24(v1);

  return v4(v3);
}

uint64_t sub_18F1A860C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_24_1();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_2_24(v1);

  return v4(v3);
}

uint64_t ParameterSummarySwitchCondition.init(_:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  type metadata accessor for ParameterSummarySwitchCondition();

  a2(v4);
}

uint64_t ParameterSummarySwitchCondition.init<>(_:_:)@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, void *a2@<X8>)
{
  return sub_18F1A88A0(a1, sub_18F1A87C0, a2);
}

{
  return sub_18F1A88A0(a1, sub_18F1A8934, a2);
}

unint64_t sub_18F1A87C0()
{
  result = qword_1EACD08D0;
  if (!qword_1EACD08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD08D0);
  }

  return result;
}

uint64_t sub_18F1A88A0@<X0>(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, void (*a2)(void)@<X7>, void *a3@<X8>)
{
  *a3 = 0;
  a2();
  v4 = type metadata accessor for ParameterSummarySwitchCondition();
  return a1(v4, v5, v6, v7, v8, v9);
}

unint64_t sub_18F1A8934()
{
  result = qword_1EACD08D8[0];
  if (!qword_1EACD08D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD08D8);
  }

  return result;
}

uint64_t sub_18F1A89A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  sub_18F522EFC();
  a4(v6);
  return sub_18F522F4C();
}

uint64_t ParameterSummaryCaseCondition.init(_:_:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  sub_18F18C388(a3, a3);
  v7 = *(a3 - 8);
  swift_allocObject();
  v8 = sub_18F521CDC();
  (*(v7 + 16))(v9, a1, a3);
  *a4 = sub_18F129FD4(v8);
  type metadata accessor for ParameterSummaryCaseCondition();
  a2();
  return (*(v7 + 8))(a1, a3);
}

uint64_t ParameterSummaryCaseCondition.init(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = type metadata accessor for ParameterSummaryCaseCondition();
  return a2(v4, v5, v6, v7, v8, v9);
}

uint64_t sub_18F1A8C24()
{
  type metadata accessor for IntentParameter();
  sub_18F522FFC();
  result = sub_18F52254C();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18F1A8CD0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
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

  v10 = ((v7 + 8) & ~v7) + *(*(v4 - 8) + 64);
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
      if (v6 > 0x7FFFFFFE)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v16) = -1;
      }

      if ((v16 + 1) >= 2)
      {
        return v16;
      }

      else
      {
        return 0;
      }
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

void sub_18F1A8E60(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0x7FFFFFFE)
  {
    v9 = 2147483646;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 8) & ~v10) + *(*(v6 - 8) + 64);
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
          if (v8 > 0x7FFFFFFE)
          {
            v21 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
          }

          else if (a2 > 0x7FFFFFFE)
          {
            *a1 = 0;
            *a1 = a2 - 0x7FFFFFFF;
          }

          else
          {
            *a1 = a2;
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

_BYTE *sub_18F1A90D8(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F1A918C()
{
  result = sub_18F521DBC();
  if (v1 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18F1A9218(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 32);
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

  v10 = ((v7 + 8) & ~v7) + *(*(v4 - 8) + 64);
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
        return __swift_getEnumTagSinglePayload((a1 + v7 + 8) & ~v7, v6, v4);
      }

      v16 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
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

void sub_18F1A9398(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 32);
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
  v11 = ((v10 + 8) & ~v10) + *(*(v6 - 8) + 64);
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
LABEL_45:
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
            v22 = &a1[v10 + 8] & ~v10;

            __swift_storeEnumTagSinglePayload(v22, a2, v8, v6);
          }

          else
          {
            if ((a2 & 0x80000000) != 0)
            {
              v21 = a2 & 0x7FFFFFFF;
            }

            else
            {
              v21 = (a2 - 1);
            }

            *a1 = v21;
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
        goto LABEL_45;
      case 4:
        *&a1[v11] = v17;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_18F1A95E0()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18F1A9650(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 32);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return __swift_getEnumTagSinglePayload(a1, v5, v4);
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_19;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_19:
      if (v5)
      {
        return __swift_getEnumTagSinglePayload(a1, v5, v4);
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_19;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    switch(v6)
    {
      case 2:
        LODWORD(v6) = *a1;
        break;
      case 3:
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v6) = *a1;
        break;
      default:
        LODWORD(v6) = *a1;
        break;
    }
  }

  return v5 + (v6 | v11) + 1;
}

void sub_18F1A978C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 32);
  v7 = *(*(v6 - 8) + 84);
  v8 = *(*(v6 - 8) + 64);
  v9 = 8 * v8;
  v10 = a3 >= v7;
  v11 = a3 - v7;
  if (v11 != 0 && v10)
  {
    if (v8 <= 3)
    {
      v15 = ((v11 + ~(-1 << v9)) >> v9) + 1;
      if (HIWORD(v15))
      {
        v12 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v12 = v16;
        }

        else
        {
          v12 = 0;
        }
      }
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  if (v7 >= a2)
  {
    switch(v12)
    {
      case 1:
        a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 2:
        *&a1[v8] = 0;
        if (a2)
        {
          goto LABEL_24;
        }

        break;
      case 3:
LABEL_37:
        __break(1u);
        break;
      case 4:
        *&a1[v8] = 0;
        goto LABEL_23;
      default:
LABEL_23:
        if (a2)
        {
LABEL_24:

          __swift_storeEnumTagSinglePayload(a1, a2, v7, v6);
        }

        break;
    }
  }

  else
  {
    v13 = ~v7 + a2;
    if (v8 < 4)
    {
      v14 = (v13 >> v9) + 1;
      if (v8)
      {
        v17 = v13 & ~(-1 << v9);
        bzero(a1, v8);
        if (v8 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v8 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v8);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v8] = v14;
        break;
      case 2:
        *&a1[v8] = v14;
        break;
      case 3:
        goto LABEL_37;
      case 4:
        *&a1[v8] = v14;
        break;
      default:
        return;
    }
  }
}

uint64_t static AppIntentEnablement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_18F520B3C();
  v38 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v9 = OUTLINED_FUNCTION_10(v8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0B60);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  v15 = type metadata accessor for AppIntentEnablement();
  v16 = OUTLINED_FUNCTION_10(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4();
  v19 = v18 - v17;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0B68);
  v21 = OUTLINED_FUNCTION_10(v20);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v25 = *(v22 + 56);
  sub_18F1A9DB0(a1, &v37 - v23);
  sub_18F1A9DB0(a2, &v24[v25]);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0B70);
  OUTLINED_FUNCTION_106(v24, 1, v26);
  if (v28)
  {
    OUTLINED_FUNCTION_106(&v24[v25], 1, v26);
    if (v28)
    {
      goto LABEL_5;
    }
  }

  else
  {
    sub_18F1A9DB0(v24, v19);
    OUTLINED_FUNCTION_106(&v24[v25], 1, v26);
    if (!v28)
    {
      v29 = *(v12 + 48);
      sub_18F1A9E70(v19, v14);
      sub_18F1A9E70(&v24[v25], &v14[v29]);
      v30 = OUTLINED_FUNCTION_25_4();
      OUTLINED_FUNCTION_106(v30, v31, v4);
      if (v32)
      {
        OUTLINED_FUNCTION_106(&v14[v29], 1, v4);
        if (v28)
        {
          sub_18F0EF148(v14, &qword_1EACCF7A8);
          goto LABEL_5;
        }
      }

      else
      {
        sub_18F11F0A0(v14, v11);
        OUTLINED_FUNCTION_106(&v14[v29], 1, v4);
        if (!v33)
        {
          v34 = v38;
          (*(v38 + 32))(v7, &v14[v29], v4);
          sub_18F1A9EE0();
          v35 = sub_18F52180C();
          v36 = *(v34 + 8);
          v36(v7, v4);
          v36(v11, v4);
          sub_18F0EF148(v14, &qword_1EACCF7A8);
          if ((v35 & 1) == 0)
          {
            goto LABEL_19;
          }

LABEL_5:
          sub_18F1A9E14(v24);
          return 1;
        }

        (*(v38 + 8))(v11, v4);
      }

      sub_18F0EF148(v14, &qword_1EACD0B60);
LABEL_19:
      sub_18F1A9E14(v24);
      return 0;
    }

    sub_18F0EF148(v19, &qword_1EACCF7A8);
  }

  sub_18F0EF148(v24, &qword_1EACD0B68);
  return 0;
}

uint64_t sub_18F1A9DB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentEnablement();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18F1A9E14(uint64_t a1)
{
  v2 = type metadata accessor for AppIntentEnablement();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F1A9E70(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_18F1A9EE0()
{
  result = qword_1EACD0B78[0];
  if (!qword_1EACD0B78[0])
  {
    sub_18F520B3C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD0B78);
  }

  return result;
}

uint64_t static ConditionallyEnabledIntent.enabled.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppIntentEnablement();
  v5 = OUTLINED_FUNCTION_10(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  v8 = v7 - v6;
  static ConditionallyEnabledIntent.intentState.getter(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0B70);
  v9 = OUTLINED_FUNCTION_25_4();
  OUTLINED_FUNCTION_106(v9, v10, v11);
  if (v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = 0;
  }

  sub_18F1A9E14(v8);
  return v13;
}

uint64_t sub_18F1A9FEC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  result = static ConditionallyEnabledIntent.enabled.getter(*(a1 + a2 - 16), *(a1 + a2 - 8));
  *a3 = result & 1;
  return result;
}

uint64_t static ConditionallyEnabledIntent.enabled.setter(char a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for AppIntentEnablement();
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v10 = v9 - v8;
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0B70);
    v11 = OUTLINED_FUNCTION_25_4();
  }

  else
  {
    sub_18F520B3C();
    v14 = OUTLINED_FUNCTION_25_4();
    __swift_storeEnumTagSinglePayload(v14, v15, 1, v16);
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0B70);
    v11 = v10;
    v12 = 0;
  }

  __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
  return static ConditionallyEnabledIntent.intentState.setter(v10, a2, a3);
}

uint64_t static ConditionallyEnabledIntent.intentState.getter(uint64_t a1, uint64_t a2)
{
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  sub_18F3E6B10(v2, a1, a2);
}

uint64_t static ConditionallyEnabledIntent.intentState.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  sub_18F3E6B8C(v4, a1, a2, a3);

  return sub_18F1A9E14(a1);
}

uint64_t (*static ConditionallyEnabledIntent.enabled.modify(uint64_t a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  *(a1 + 8) = a3;
  *(a1 + 16) = v3;
  *a1 = a2;
  *(a1 + 24) = static ConditionallyEnabledIntent.enabled.getter(a2, a3) & 1;
  return sub_18F1AA2D0;
}

uint64_t sub_18F1AA32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a3 + a4 - 16);
  v6 = *(a3 + a4 - 8);
  v7 = type metadata accessor for AppIntentEnablement();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F1A9DB0(a1, v9);
  return static ConditionallyEnabledIntent.intentState.setter(v9, v5, v6);
}

void (*static ConditionallyEnabledIntent.intentState.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[1] = a3;
  v7[2] = v3;
  *v7 = a2;
  v8 = type metadata accessor for AppIntentEnablement();
  OUTLINED_FUNCTION_10(v8);
  v10 = *(v9 + 64);
  v7[3] = __swift_coroFrameAllocStub(v10);
  v7[4] = __swift_coroFrameAllocStub(v10);
  static ConditionallyEnabledIntent.intentState.getter(a2, a3);
  return sub_18F1AA48C;
}

void sub_18F1AA48C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = **a1;
  if (a2)
  {
    sub_18F1A9DB0(v4, v3);
    static ConditionallyEnabledIntent.intentState.setter(v3, v6, v5);
    sub_18F1A9E14(v4);
  }

  else
  {
    static ConditionallyEnabledIntent.intentState.setter(v4, v6, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

id sub_18F1AA524()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v3 = OUTLINED_FUNCTION_10(v2);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v21 - v7;
  v9 = type metadata accessor for AppIntentEnablement();
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4();
  v13 = v12 - v11;
  sub_18F1A9DB0(v1, v12 - v11);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0B70);
  OUTLINED_FUNCTION_106(v13, 1, v14);
  if (v18)
  {
    v15 = [objc_opt_self() enabled];

    return v15;
  }

  else
  {
    sub_18F1A9E70(v13, v8);
    sub_18F11F0A0(v8, v6);
    v17 = sub_18F520B3C();
    OUTLINED_FUNCTION_106(v6, 1, v17);
    if (v18)
    {
      sub_18F0EF148(v6, &qword_1EACCF7A8);
      v19 = 0;
    }

    else
    {
      v19 = sub_18F117248();
      (*(*(v17 - 8) + 8))(v6, v17);
    }

    v20 = [objc_opt_self() disabledWithReason_];

    sub_18F0EF148(v8, &qword_1EACCF7A8);
    return v20;
  }
}

uint64_t sub_18F1AA740()
{
  if (![v0 value])
  {
    v1 = [v0 disabledReason];
    if (v1)
    {
      v2 = v1;
      sub_18F2EF744();
    }

    sub_18F520B3C();
    v3 = OUTLINED_FUNCTION_6_14();
    __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0B70);
  v7 = OUTLINED_FUNCTION_6_14();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

void sub_18F1AA82C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ResolverCache();
  swift_allocObject();
  v4 = sub_18F29DB28();
  v5 = sub_18F111F70(a1);
  if (!v5)
  {

    v8 = MEMORY[0x1E69E7CC0];
LABEL_12:
    *a2 = sub_18F46185C(v8);
    a2[1] = v4;
    return;
  }

  v6 = v5;
  v18 = MEMORY[0x1E69E7CC0];
  sub_18F3AAD2C();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v17 = a2;
    v7 = 0;
    v8 = v18;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x193ADBE10](v7, a1);
      }

      else
      {
        v9 = *(a1 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = [v9 identifier];
      v12 = sub_18F5218DC();
      v14 = v13;

      v15 = *(v18 + 16);
      if (v15 >= *(v18 + 24) >> 1)
      {
        sub_18F3AAD2C();
      }

      ++v7;
      *(v18 + 16) = v15 + 1;
      v16 = (v18 + 24 * v15);
      v16[4] = v12;
      v16[5] = v14;
      v16[6] = v10;
    }

    while (v6 != v7);

    a2 = v17;
    goto LABEL_12;
  }

  __break(1u);
}

uint64_t _UpdatableEntityProperty.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = qword_1ED707730;
  OUTLINED_FUNCTION_16_8();
  sub_18F520B3C();
  OUTLINED_FUNCTION_10_0();
  return (*(v5 + 16))(a1, v3 + v4);
}

uint64_t _UpdatableEntityProperty.wrappedValue.getter()
{

  sub_18F10887C();
}

uint64_t sub_18F1AAAA0(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = &v5 - v1;
  (*(v3 + 16))(&v5 - v1);
  return _UpdatableEntityProperty.wrappedValue.setter(v2);
}

uint64_t _UpdatableEntityProperty.wrappedValue.setter(uint64_t a1)
{
  v3 = *(*v1 + 88);
  OUTLINED_FUNCTION_11_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - v7;
  (*(v5 + 16))(&v10 - v7, a1, v3);

  sub_18F102A0C(v8);

  return (*(v5 + 8))(a1, v3);
}

void (*_UpdatableEntityProperty.wrappedValue.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v3[1] = *(*v1 + 88);
  OUTLINED_FUNCTION_11_0();
  *(v4 + 16) = v5;
  v7 = *(v6 + 64);
  v3[3] = __swift_coroFrameAllocStub(v7);
  v3[4] = __swift_coroFrameAllocStub(v7);
  _UpdatableEntityProperty.wrappedValue.getter();
  return sub_18F1AAD34;
}

void sub_18F1AAD34(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    _UpdatableEntityProperty.wrappedValue.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    _UpdatableEntityProperty.wrappedValue.setter(*(*a1 + 32));
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t _s10AppIntents24_UpdatableEntityPropertyCA2A04FileD09ValueTypeRp_rlE5titleACyxq_G10Foundation23LocalizedStringResourceV_tcfC_0(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_18F1AAE28(a1);
  return v2;
}

uint64_t sub_18F1AAE28(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for _EntityPropertyContainer();
  *(v2 + 16) = sub_18F102E90(a1);
  return v2;
}

uint64_t sub_18F1AAED0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = (*(v3 + 16) + *a3);
  *v4 = a1;
  v4[1] = a2;
}

uint64_t sub_18F1AAF20@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = qword_1ED707718;
  OUTLINED_FUNCTION_16_8();
  return sub_18F116970(v3 + v4, a1, &qword_1EACD0620);
}

uint64_t sub_18F1AAF80(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = qword_1ED707718;
  swift_beginAccess();

  sub_18F102AC8(a1, v3 + v4);
  swift_endAccess();
}

uint64_t _UpdatableEntityProperty.__deallocating_deinit()
{
  _UpdatableEntityProperty.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_18F1AB098()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_56();
  swift_getAssociatedConformanceWitness();
  return AssociatedTypeWitness;
}

uint64_t sub_18F1AB130()
{
  sub_18F1AAF20(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
  v0 = swift_dynamicCast();
  return OUTLINED_FUNCTION_14_2(v0);
}

uint64_t sub_18F1AB1B0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v2[9] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_18F1AB1F8, 0, 0);
}

uint64_t sub_18F1AB1F8()
{
  sub_18F1AAF20(v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0620);
  v1 = swift_dynamicCast();
  OUTLINED_FUNCTION_14_2(v1);
  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F1AB29C()
{
  v0 = 7104878;
  v18 = 0;
  v19 = 0xE000000000000000;
  v1 = sub_18F1AAE98();
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 7104878;
    v3 = 0xE300000000000000;
  }

  MEMORY[0x193ADB000](v1, v3);

  MEMORY[0x193ADB000](1008745760, 0xE400000000000000);
  v4 = sub_18F52307C();
  MEMORY[0x193ADB000](v4);

  MEMORY[0x193ADB000](10302, 0xE200000000000000);
  sub_18F1AAF20(v16);
  v5 = v17;
  if (v17)
  {
    __swift_project_boxed_opaque_existential_1Tm(v16, v17);
    OUTLINED_FUNCTION_11_0();
    v7 = v6;
    MEMORY[0x1EEE9AC00](v8);
    OUTLINED_FUNCTION_4();
    v11 = v10 - v9;
    (*(v7 + 16))(v10 - v9);
    sub_18F0EF1A8(v16, &qword_1EACD0620);
    v12 = OUTLINED_FUNCTION_80_0();
    v0 = sub_18F238088(v12);
    v14 = v13;
    (*(v7 + 8))(v11, v5);
  }

  else
  {
    sub_18F0EF1A8(v16, &qword_1EACD0620);
    v14 = 0xE300000000000000;
  }

  MEMORY[0x193ADB000](v0, v14);

  MEMORY[0x193ADB000](41, 0xE100000000000000);
  return v18;
}

uint64_t sub_18F1AB5F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_18F0FC874;

  return sub_18F1AB1B0(a1);
}

uint64_t _AppEntityUpdate.value<A>(of:)()
{
  OUTLINED_FUNCTION_10_12();
  *(v4 + 16) = *v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_task_alloc();
  *(v4 + 32) = v6;
  v7 = OUTLINED_FUNCTION_15_10();
  *v6 = v4;
  v6[1] = sub_18F1AD1A8;

  return sub_18F1AB7DC(v3, AssociatedTypeWitness, v0, v2, AssociatedTypeWitness, v7);
}

{
  OUTLINED_FUNCTION_10_12();
  *(v4 + 16) = *v1;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_15_10();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = swift_task_alloc();
  *(v4 + 32) = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *v6 = v4;
  v6[1] = sub_18F1AC5EC;

  return sub_18F1AB7DC(v3, AssociatedTypeWitness, v0, v2, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_18F1AB7DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 368) = a5;
  *(v7 + 376) = a6;
  *(v7 + 352) = a3;
  *(v7 + 360) = a4;
  *(v7 + 344) = a1;
  v9 = sub_18F52254C();
  *(v7 + 384) = v9;
  *(v7 + 392) = *(v9 - 8);
  *(v7 + 400) = swift_task_alloc();
  *(v7 + 408) = swift_task_alloc();
  *(v7 + 416) = *(a5 - 8);
  *(v7 + 424) = swift_task_alloc();
  *(v7 + 432) = swift_task_alloc();
  *(v7 + 440) = *v6;

  return MEMORY[0x1EEE6DFA0](sub_18F1AB928, 0, 0);
}

uint64_t sub_18F1AB928()
{
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 360);
  v2 = *(v1 + 16);
  v3 = *(*(*(v1 + 24) + 8) + 8);

  static AppValue._identifier.getter(v2, v3);
  v4 = sub_18F3E6A5C();
  v6 = v5;

  *(v0 + 456) = v4;
  *(v0 + 464) = v6;
  if (!v4)
  {
    goto LABEL_17;
  }

  v4(*(v0 + 352));
  if (!*(v0 + 80))
  {
    v21 = OUTLINED_FUNCTION_80_0();
    sub_18F0F689C(v21);
    sub_18F0EF1A8(v0 + 56, &qword_1EACD0D08);
LABEL_17:
    v25 = OUTLINED_FUNCTION_0_18();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
    goto LABEL_18;
  }

  sub_18F0FD0B4((v0 + 56), v0 + 16);
  v7 = *(v0 + 40);
  v8 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v7);
  result = (*(v8 + 16))(v7, v8);
  if (!v10)
  {
    __break(1u);
    return result;
  }

  v11 = sub_18F19ED80(result, v10, *(v0 + 440));
  *(v0 + 472) = v11;

  if (!v11)
  {
    v22 = OUTLINED_FUNCTION_80_0();
    sub_18F0F689C(v22);
LABEL_16:
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    goto LABEL_17;
  }

  v12 = [v11 value];
  if (!v12)
  {
    v23 = OUTLINED_FUNCTION_80_0();
    sub_18F0F689C(v23);

    *(v0 + 168) = 0;
    *(v0 + 152) = 0u;
    *(v0 + 136) = 0u;
LABEL_15:
    sub_18F0EF1A8(v0 + 136, &qword_1EACD0620);
    goto LABEL_16;
  }

  v13 = v12;
  LNValue.asPropertyType.getter();

  if (!*(v0 + 160))
  {
    v24 = OUTLINED_FUNCTION_80_0();
    sub_18F0F689C(v24);

    goto LABEL_15;
  }

  sub_18F0FD0B4((v0 + 136), v0 + 96);
  sub_18F0FD724(v0 + 96, v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
  if (swift_dynamicCast())
  {
    v14 = *(v0 + 432);
    v15 = *(v0 + 408);
    v16 = *(v0 + 416);
    v17 = *(v0 + 368);
    v18 = *(v0 + 344);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
    v19 = OUTLINED_FUNCTION_80_0();
    sub_18F0F689C(v19);

    __swift_storeEnumTagSinglePayload(v15, 0, 1, v17);
    v20 = *(v16 + 32);
    v20(v14, v15, v17);
    v20(v18, v14, v17);
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
LABEL_18:

    OUTLINED_FUNCTION_71();

    return v29();
  }

  v30 = *(v0 + 408);
  v31 = *(v0 + 384);
  v32 = *(v0 + 392);
  v33 = *(v0 + 368);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v34, v35, v36, v33);
  v37 = *(v32 + 8);
  *(v0 + 480) = v37;
  *(v0 + 488) = (v32 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v37(v30, v31);
  v38 = *(v0 + 40);
  v39 = *(v0 + 48);
  v40 = __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v38);
  v41 = sub_18F1ACD98(v40, v38, v33, v39);
  *(v0 + 496) = v41;
  *(v0 + 336) = v41;
  sub_18F0FD724(v0 + 96, v0 + 216);
  v42 = swift_task_alloc();
  *(v0 + 504) = v42;
  v43 = type metadata accessor for IntentParameter();
  *(v0 + 512) = v43;
  WitnessTable = swift_getWitnessTable();
  *v42 = v0;
  v42[1] = sub_18F1ABD8C;

  return sub_18F29A748(v0 + 336, v0 + 216, v43, WitnessTable);
}

uint64_t sub_18F1ABD8C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = v1;
  v1[65] = v3;
  v1[66] = v4;
  v1[67] = v0;

  sub_18F0EF1A8((v2 + 27), &qword_1EACD0620);
  if (v0)
  {
    v5 = sub_18F1AC2E4;
  }

  else
  {
    v5 = sub_18F1ABEB8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18F1ABEB8()
{
  v1 = v0[65];
  if (v1)
  {
    v2 = v0[62];
    v0[35] = v0[64];
    v0[36] = swift_getWitnessTable();
    v0[32] = v2;
    sub_18F0FD724((v0 + 12), (v0 + 37));

    v13 = (v1 + *v1);
    v3 = swift_task_alloc();
    v0[68] = v3;
    *v3 = v0;
    v3[1] = sub_18F1AC080;
    v4 = v0[50];

    return (v13)(v4, v0 + 32, v0 + 37);
  }

  else
  {
    v6 = v0[59];
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 12));
    v7 = OUTLINED_FUNCTION_80_0();
    sub_18F0F689C(v7);

    v8 = OUTLINED_FUNCTION_0_18();
    OUTLINED_FUNCTION_5_16(v8, v9, v10, v11);

    OUTLINED_FUNCTION_71();

    return v12();
  }
}

uint64_t sub_18F1AC080()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v3 + 552) = v0;

  sub_18F0EF1A8(v3 + 296, &qword_1EACD0620);
  if (v0)
  {
    v6 = sub_18F1AC390;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v3 + 256);
    v6 = sub_18F1AC1A4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_18F1AC1A4()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 400);
  v3 = *(v0 + 368);
  sub_18F0F689C(*(v0 + 456));

  v4 = OUTLINED_FUNCTION_56();
  sub_18F0F689C(v4);

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 96);
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    (*(v0 + 480))(*(v0 + 400), *(v0 + 384));
    v5 = OUTLINED_FUNCTION_0_18();
  }

  else
  {
    v9 = *(v0 + 424);
    v10 = *(v0 + 368);
    v11 = *(v0 + 344);
    v12 = *(*(v0 + 416) + 32);
    v12(v9, *(v0 + 400), v10);
    v12(v11, v9, v10);
    v5 = v11;
    v6 = 0;
    v7 = 1;
    v8 = v10;
  }

  OUTLINED_FUNCTION_5_16(v5, v6, v7, v8);

  OUTLINED_FUNCTION_71();

  return v13();
}

uint64_t sub_18F1AC2E4()
{
  v1 = v0[67];
  v2 = v0[59];
  sub_18F0F689C(v0[57]);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 12));

  v3 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_5_16(v3, v4, v5, v6);

  OUTLINED_FUNCTION_71();

  return v7();
}

uint64_t sub_18F1AC390()
{
  v1 = v0[69];
  v2 = v0[59];
  sub_18F0F689C(v0[57]);

  v3 = OUTLINED_FUNCTION_80_0();
  sub_18F0F689C(v3);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 12));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  v4 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_5_16(v4, v5, v6, v7);

  OUTLINED_FUNCTION_71();

  return v8();
}

uint64_t sub_18F1AC5EC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t sub_18F1AC6D4(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t dispatch thunk of _EntityUpdateHandler.update(identifiers:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_18F0FC874;

  return v13(a1, a2, a3, a4, a5);
}

_BYTE *sub_18F1AC8E0(_BYTE *result, int a2, int a3)
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

uint64_t sub_18F1AC994(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(v4 - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = 8 * v7;
    if (v7 > 3)
    {
      goto LABEL_8;
    }

    v11 = ((v8 + ~(-1 << v9)) >> v9) + 1;
    if (HIWORD(v11))
    {
      v10 = *(a1 + v7);
      if (v10)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v11 <= 0xFF)
      {
        if (v11 < 2)
        {
          goto LABEL_23;
        }

LABEL_8:
        v10 = *(a1 + v7);
        if (!*(a1 + v7))
        {
          goto LABEL_23;
        }

LABEL_15:
        v12 = (v10 - 1) << v9;
        if (v7 > 3)
        {
          v12 = 0;
        }

        if (v7)
        {
          if (v7 > 3)
          {
            LODWORD(v7) = 4;
          }

          switch(v7)
          {
            case 2:
              LODWORD(v7) = *a1;
              break;
            case 3:
              LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
              break;
            case 4:
              LODWORD(v7) = *a1;
              break;
            default:
              LODWORD(v7) = *a1;
              break;
          }
        }

        return v6 + (v7 | v12) + 1;
      }

      v10 = *(a1 + v7);
      if (*(a1 + v7))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_23:
  if (v5 < 2)
  {
    return 0;
  }

  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(a1, v5, v4);
  if (EnumTagSinglePayload >= 2)
  {
    return EnumTagSinglePayload - 1;
  }

  else
  {
    return 0;
  }
}

void sub_18F1ACB0C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  if (v9)
  {
    v10 = v9 - 1;
  }

  else
  {
    v10 = 0;
  }

  if (v9)
  {
    v11 = *(v8 + 64);
  }

  else
  {
    v11 = *(v8 + 64) + 1;
  }

  v12 = 8 * v11;
  v13 = a3 >= v10;
  v14 = a3 - v10;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v15 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v15))
      {
        v6 = 4;
      }

      else
      {
        if (v15 < 0x100)
        {
          v16 = 1;
        }

        else
        {
          v16 = 2;
        }

        if (v15 >= 2)
        {
          v6 = v16;
        }

        else
        {
          v6 = 0;
        }
      }
    }

    else
    {
      v6 = 1;
    }
  }

  if (v10 >= a2)
  {
    switch(v6)
    {
      case 1:
        a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 2:
        *&a1[v11] = 0;
        if (a2)
        {
          goto LABEL_31;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v11] = 0;
        goto LABEL_30;
      default:
LABEL_30:
        if (a2)
        {
LABEL_31:
          if (v9 >= 2)
          {
            v20 = a2 + 1;

            __swift_storeEnumTagSinglePayload(a1, v20, v9, v7);
          }
        }

        break;
    }
  }

  else
  {
    v17 = ~v10 + a2;
    if (v11 < 4)
    {
      v18 = (v17 >> v12) + 1;
      if (v11)
      {
        v19 = v17 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v19;
          a1[2] = BYTE2(v19);
        }

        else if (v11 == 2)
        {
          *a1 = v19;
        }

        else
        {
          *a1 = v17;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v17;
      v18 = 1;
    }

    switch(v6)
    {
      case 1:
        a1[v11] = v18;
        break;
      case 2:
        *&a1[v11] = v18;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v18;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_18F1ACD44()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18F1ACD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = sub_18F52254C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_18F520B3C();
  MEMORY[0x1EEE9AC00](v11 - 8);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  (*(v15 + 16))(v14 - v13, v4, a2);
  type metadata accessor for IntentParameter();
  if (swift_dynamicCast())
  {
    return *&v51[0];
  }

  if (dynamic_cast_existential_1_conditional(AssociatedTypeWitness))
  {
    OUTLINED_FUNCTION_7_11();
    sub_18F39D018(v17);
  }

  else if (dynamic_cast_existential_1_conditional(AssociatedTypeWitness))
  {
    v18 = OUTLINED_FUNCTION_7_11();
    sub_18F120FCC(v18, v19, v20, v21);
  }

  else
  {
    v50 = 0;
    v48 = 0u;
    v49 = 0u;
  }

  v51[0] = v48;
  v51[1] = v49;
  v52 = v50;
  v22 = v43;
  (*(*(v43 + 8) + 32))(a2);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v23, v24, v25, AssociatedTypeWitness);
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  sub_18F116970(v51, v47, &qword_1EACD0D00);
  v26 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v26);
  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_18F116B3C();
  v16 = v33;
  v34 = (*(v22 + 16))(a2, v22);
  v35 = (v16 + *(*v16 + 152));
  *v35 = v34;
  v35[1] = v36;

  v37 = (*(v22 + 40))(a2, v22);
  v39 = v38;
  sub_18F0EF1A8(v51, &qword_1EACD0D00);
  v40 = (v16 + *(*v16 + 160));
  *v40 = v37;
  v40[1] = v39;

  return v16;
}

uint64_t sub_18F1AD1B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v5[13] = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_14_6();
  v5[14] = v6;
  v5[15] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[16] = AssociatedTypeWitness;
  v5[17] = sub_18F52254C();
  OUTLINED_FUNCTION_14_6();
  v5[18] = v8;
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = *(AssociatedTypeWitness - 8);
  v5[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F1AD378, 0, 0);
}

uint64_t sub_18F1AD378()
{
  sub_18F0FECD4(v0[9], (v0 + 2));
  if (swift_dynamicCast())
  {
    v1 = v0[20];
    v2 = v0[21];
    v3 = v0[19];
    v4 = v0[16];
    __swift_storeEnumTagSinglePayload(v3, 0, 1, v4);
    (*(v2 + 32))(v1, v3, v4);
    __swift_storeEnumTagSinglePayload(v1, 0, 1, v4);
  }

  else
  {
    v5 = v0[19];
    v6 = v0[20];
    v7 = v0[16];
    v8 = v0[9];
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD32A0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_18F53F800;
    sub_18F0FECD4(v8, v9 + 32);
    v0[6] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D10);
    v10 = swift_dynamicCast();
    __swift_storeEnumTagSinglePayload(v6, v10 ^ 1u, 1, v7);
    if (__swift_getEnumTagSinglePayload(v5, 1, v7) != 1)
    {
      (*(v0[18] + 8))(v0[19], v0[17]);
    }
  }

  v11 = v0[20];
  v12 = v0[16];
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    v13 = v0[8];
    (*(v0[18] + 8))(v11, v0[17]);
    *(v13 + 32) = 0;
    *v13 = 0u;
    *(v13 + 16) = 0u;

    OUTLINED_FUNCTION_71();

    return v14();
  }

  else
  {
    (*(v0[21] + 32))(v0[22], v11, v12);
    v16 = swift_task_alloc();
    v0[23] = v16;
    *v16 = v0;
    v16[1] = sub_18F1AD64C;

    return sub_18F139E28();
  }
}

uint64_t sub_18F1AD64C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  v2[24] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F1ADB3C, 0, 0);
  }

  else
  {
    OUTLINED_FUNCTION_14_6();
    v11 = (v4 + *v4);
    v5 = swift_task_alloc();
    v2[25] = v5;
    *v5 = v2;
    v5[1] = sub_18F1AD83C;
    v6 = v2[22];
    v7 = v2[15];
    v8 = v2[11];
    v9 = v2[10];

    return v11(v7, v6, v9, v8);
  }
}

uint64_t sub_18F1AD83C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_39();
  *v3 = v2;
  *(v4 + 208) = v0;

  if (v0)
  {
    v5 = sub_18F1ADBD4;
  }

  else
  {
    v5 = sub_18F1AD948;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_18F1AD948()
{
  v1 = v0[21];
  v11 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v6 = v0[8];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = (*(AssociatedConformanceWitness + 40))(v4, AssociatedConformanceWitness);
  (*(v5 + 8))(v3, v4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v6[3] = sub_18F521DBC();
  v0[7] = swift_getAssociatedConformanceWitness();
  v6[4] = swift_getWitnessTable();
  *v6 = v8;
  (*(v1 + 8))(v11, v2);

  OUTLINED_FUNCTION_71();

  return v9();
}

uint64_t sub_18F1ADB3C()
{
  v0 = OUTLINED_FUNCTION_1_20();
  v1(v0);

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t sub_18F1ADBD4()
{
  v0 = OUTLINED_FUNCTION_1_20();
  v1(v0);

  OUTLINED_FUNCTION_71();

  return v2();
}

uint64_t static IntentValueQuery._identifier.getter(uint64_t a1, uint64_t a2)
{
  (*(*(a2 + 8) + 8))();
  sub_18F12A000();
  v2 = sub_18F5225CC();

  return v2;
}

uint64_t sub_18F1ADD1C()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return swift_getWitnessTable();
}

uint64_t dispatch thunk of IntentValueQuery.values(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_14_6();
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_18F1ADF4C;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_18F1ADF4C()
{
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t InputConnectionBehavior.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

unint64_t sub_18F1AE0CC()
{
  result = qword_1EACD0D18;
  if (!qword_1EACD0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0D18);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for InputConnectionBehavior(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t AppIntentsXPCError.errorUserInfo.getter()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0350);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F53F800;
  *(inited + 32) = sub_18F5218DC();
  *(inited + 40) = v4;
  sub_18F52279C();

  MEMORY[0x193ADB000](v1, v2);
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0xD000000000000013;
  *(inited + 56) = 0x800000018F5266C0;
  return sub_18F5216CC();
}

uint64_t sub_18F1AE2F8(uint64_t a1)
{
  v2 = sub_18F1AE3A8();

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_18F1AE334(uint64_t a1)
{
  v2 = sub_18F1AE3A8();

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

unint64_t sub_18F1AE3A8()
{
  result = qword_1EACD0D20;
  if (!qword_1EACD0D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0D20);
  }

  return result;
}

void EntityIdentifier.asLNEntityIdentifier.getter()
{
  v1 = *v0;
  OUTLINED_FUNCTION_7_12();
  if (dynamic_cast_existential_1_conditional(v1))
  {
    if (qword_1ED6FF6D8 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    OUTLINED_FUNCTION_7_12();
    OUTLINED_FUNCTION_37();
    v3 = sub_18F164CE8(v2);

    v4 = v3;
    sub_18F1AF344();
  }

  v5 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  OUTLINED_FUNCTION_8_11();
}

double EntityIdentifier.init(_:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = [a1 typeIdentifier];
  sub_18F5218DC();

  v5 = [a1 instanceIdentifier];
  v6 = sub_18F5218DC();
  v8 = v7;

  sub_18F1AF5AC(v6, v8, v11);
  result = *v11;
  v10 = v11[1];
  *a2 = v11[0];
  a2[1] = v10;
  return result;
}

_OWORD *sub_18F1AE5E4@<X0>(_OWORD *a1@<X8>)
{
  v10 = a1;
  v1 = sub_18F520B5C();
  v9 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F5221CC();
  sub_18F1B0B24();
  while (1)
  {
    sub_18F52257C();
    if (!v14)
    {
      result = (*(v9 + 8))(v3, v1);
      v7 = v10;
      *v10 = 0u;
      v7[1] = 0u;
      return result;
    }

    sub_18F118710(&v13, v12);
    sub_18F0FECD4(v12, v11);
    sub_18F0F21A8(0, &unk_1ED6FE300);
    if (swift_dynamicCast())
    {
      v4 = v15;
      v5 = [v15 type];

      if (v5 == 3)
      {
        break;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  (*(v9 + 8))(v3, v1);
  return sub_18F118710(v12, v10);
}

uint64_t sub_18F1AE7EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static String.entityIdentifier(for:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_18F1AE818@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4700);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  sub_18F520DFC();
  v9 = sub_18F520E6C();
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_18F0EF148(v8, &qword_1EACD4700);
    if (qword_1ED6FE088 != -1)
    {
      swift_once();
    }

    v10 = sub_18F52165C();
    __swift_project_value_buffer(v10, qword_1ED707760);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v11 = sub_18F52163C();
    v12 = sub_18F52221C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v18 = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_18F11897C(a1, a2, &v18);
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_18F11897C(1145656661, 0xE400000000000000, &v18);
      _os_log_impl(&dword_18F0E9000, v11, v12, "Failed to convert entity identifier %s back to original type %s.", v13, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193ADD350](v14, -1, -1);
      MEMORY[0x193ADD350](v13, -1, -1);
    }

    v15 = 1;
  }

  else
  {
    (*(*(v9 - 8) + 32))(a3, v8, v9);
    v15 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a3, v15, 1, v9);
}

unint64_t sub_18F1AEA84(uint64_t a1, unint64_t a2)
{
  LODWORD(v12[0]) = 0;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v4 = sub_18F1B0A10(a1, a2);

  if (v4)
  {
    v5 = LODWORD(v12[0]);
  }

  else
  {
    if (qword_1ED6FE088 != -1)
    {
      swift_once();
    }

    v6 = sub_18F52165C();
    __swift_project_value_buffer(v6, qword_1ED707760);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v7 = sub_18F52163C();
    v8 = sub_18F52221C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12[0] = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_18F11897C(a1, a2, v12);
      *(v9 + 12) = 2080;
      *(v9 + 14) = sub_18F11897C(0x74616F6C46, 0xE500000000000000, v12);
      _os_log_impl(&dword_18F0E9000, v7, v8, "Failed to convert entity identifier %s back to original type %s.", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x193ADD350](v10, -1, -1);
      MEMORY[0x193ADD350](v9, -1, -1);
    }

    v5 = 0;
  }

  LOBYTE(v12[0]) = !v4;
  return v5 | (LOBYTE(v12[0]) << 32);
}

uint64_t sub_18F1AEC58(uint64_t a1, unint64_t a2)
{
  sub_18F1AEE58(a1, a2, &v10);
  if ((v11 & 1) == 0)
  {
    return v10;
  }

  if (qword_1ED6FE088 != -1)
  {
    swift_once();
  }

  v4 = sub_18F52165C();
  __swift_project_value_buffer(v4, qword_1ED707760);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v5 = sub_18F52163C();
  v6 = sub_18F52221C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v10 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_18F11897C(a1, a2, &v10);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_18F11897C(7630409, 0xE300000000000000, &v10);
    _os_log_impl(&dword_18F0E9000, v5, v6, "Failed to convert entity identifier %s back to original type %s.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193ADD350](v8, -1, -1);
    MEMORY[0x193ADD350](v7, -1, -1);
  }

  return 0;
}

uint64_t sub_18F1AEE58@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    v29 = 0;
    v28 = 1;
LABEL_66:
    *a3 = v29;
    *(a3 + 8) = v28 & 1;
    return result;
  }

  v8 = result;
  if ((a2 & 0x1000000000000000) != 0)
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F1B0024(v8, a2, 10);
    v10 = v30;
    v28 = v31;

LABEL_63:
    if (v28)
    {
      v29 = 0;
    }

    else
    {
      v29 = v10;
    }

    goto LABEL_66;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_18F52286C();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          v10 = 0;
          if (result)
          {
            v17 = (result + 1);
            while (1)
            {
              v18 = *v17 - 48;
              if (v18 > 9)
              {
                goto LABEL_61;
              }

              v19 = 10 * v10;
              if ((v10 * 10) >> 64 != (10 * v10) >> 63)
              {
                goto LABEL_61;
              }

              v10 = v19 + v18;
              if (__OFADD__(v19, v18))
              {
                goto LABEL_61;
              }

              ++v17;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_72;
    }

    if (v9 != 45)
    {
      if (v6)
      {
        v10 = 0;
        if (result)
        {
          while (1)
          {
            v23 = *result - 48;
            if (v23 > 9)
            {
              goto LABEL_61;
            }

            v24 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              goto LABEL_61;
            }

            v10 = v24 + v23;
            if (__OFADD__(v24, v23))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v10 = 0;
      LOBYTE(v5) = 1;
      goto LABEL_62;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        v10 = 0;
        if (result)
        {
          v11 = (result + 1);
          while (1)
          {
            v12 = *v11 - 48;
            if (v12 > 9)
            {
              goto LABEL_61;
            }

            v13 = 10 * v10;
            if ((v10 * 10) >> 64 != (10 * v10) >> 63)
            {
              goto LABEL_61;
            }

            v10 = v13 - v12;
            if (__OFSUB__(v13, v12))
            {
              goto LABEL_61;
            }

            ++v11;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
LABEL_62:
        v33 = v5;
        v28 = v5;
        goto LABEL_63;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  v32[0] = result;
  v32[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        v10 = 0;
        v25 = v32;
        while (1)
        {
          v26 = *v25 - 48;
          if (v26 > 9)
          {
            break;
          }

          v27 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v27 + v26;
          if (__OFADD__(v27, v26))
          {
            break;
          }

          ++v25;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        v10 = 0;
        v14 = v32 + 1;
        while (1)
        {
          v15 = *v14 - 48;
          if (v15 > 9)
          {
            break;
          }

          v16 = 10 * v10;
          if ((v10 * 10) >> 64 != (10 * v10) >> 63)
          {
            break;
          }

          v10 = v16 - v15;
          if (__OFSUB__(v16, v15))
          {
            break;
          }

          ++v14;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_71;
  }

  if (v5)
  {
    if (--v5)
    {
      v10 = 0;
      v20 = v32 + 1;
      while (1)
      {
        v21 = *v20 - 48;
        if (v21 > 9)
        {
          break;
        }

        v22 = 10 * v10;
        if ((v10 * 10) >> 64 != (10 * v10) >> 63)
        {
          break;
        }

        v10 = v22 + v21;
        if (__OFADD__(v22, v21))
        {
          break;
        }

        ++v20;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_73:
  __break(1u);
  return result;
}

uint64_t sub_18F1AF170@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = static Int.entityIdentifier(for:)(a1, a2);
  *a3 = result;
  *(a3 + 8) = v5 & 1;
  return result;
}

uint64_t sub_18F1AF1D8@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = static Float.entityIdentifier(for:)(a1, a2);
  *a3 = result;
  *(a3 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t EntityIdentifier.identifier.getter()
{
  v1 = *(v0 + 16);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v1;
}

uint64_t EntityIdentifier.bundleIdentifier.getter()
{
  v2 = *v0;
  v1 = v0[1];
  if (!dynamic_cast_existential_1_conditional(v2))
  {
    return 0;
  }

  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  v3 = *(v1 + 8);

  static AppValue._identifier.getter(v2, v3);
  OUTLINED_FUNCTION_37();
  v5 = sub_18F164CE8(v4);

  v6 = v5;
  v7 = sub_18F1AF344();

  return v7;
}

uint64_t sub_18F1AF344()
{
  v1 = [v0 effectiveBundleIdentifiers];
  v2 = [v1 count];

  v3 = 0;
  if (v2 == 1)
  {
    v4 = [v0 effectiveBundleIdentifiers];
    sub_18F1AE5E4(&v8);

    if (v9)
    {
      sub_18F0F21A8(0, &unk_1ED6FE300);
      if (swift_dynamicCast())
      {
        v5 = [v7 bundleIdentifier];
        v3 = sub_18F5218DC();

        return v3;
      }
    }

    else
    {
      sub_18F0EF148(&v8, &qword_1EACD0430);
    }

    return 0;
  }

  return v3;
}

uint64_t static EntityIdentifier.valueMaximumLength.getter()
{
  if (qword_1EACCF4B0 != -1)
  {
    swift_once();
  }

  return qword_1EACD0D28;
}

uint64_t EntityIdentifier.hash(into:)()
{
  static AppValue._identifier.getter(*v0, *(v0[1] + 8));
  sub_18F5219CC();

  return sub_18F5219CC();
}

uint64_t static EntityIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  if (a1[2] == a2[2] && a1[3] == a2[3])
  {
    return 1;
  }

  else
  {
    return sub_18F522D5C();
  }
}

uint64_t sub_18F1AF5AC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  if (qword_1ED6FF6D8 != -1)
  {
    OUTLINED_FUNCTION_2_1();
  }

  OUTLINED_FUNCTION_37();
  v6 = sub_18F2794A0();
  v8 = v7;

  *a3 = v6;
  a3[1] = v8;
  a3[2] = a1;
  a3[3] = a2;
  return result;
}

unint64_t EntityIdentifier.init(activityIdentifier:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  OUTLINED_FUNCTION_16_9();
  sub_18F1AF96C(v6, v7, v8, v9);
  if (v10)
  {
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_16_9();
  v11 = sub_18F521AFC();
  v15 = v14;
  if (!((v11 ^ v12) >> 14))
  {
LABEL_3:

LABEL_4:

LABEL_5:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  v17 = v11;
  v18 = v12;
  v19 = v13;
  OUTLINED_FUNCTION_16_9();
  result = sub_18F521A0C();
  v20 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v20 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v20 < result >> 14)
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_16_9();
    v21 = sub_18F521AFC();
    v23 = v22;
    v25 = v24;
    v27 = v26;

    if (!((v21 ^ v23) >> 14))
    {
      goto LABEL_3;
    }

    MEMORY[0x193ADAF70](v17, v18, v19, v15);

    v28 = MEMORY[0x193ADAF70](v21, v23, v25, v27);
    v30 = v29;

    result = sub_18F1AF5AC(v28, v30, &v33);
    if (!v33)
    {
      goto LABEL_5;
    }

    v31 = v35;
    v32 = v34;
    *a3 = v33;
    *(a3 + 8) = v32;
    *(a3 + 24) = v31;
  }

  return result;
}

unint64_t sub_18F1AF96C(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_18F5219EC())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_18F521ACC() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_18F522D5C();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

uint64_t sub_18F1AFA54(void *a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v4 = 0;
    v5 = a2 + 32;
    do
    {
      sub_18F1A7FEC(v5, v15);
      sub_18F0FD724(v15, v14);
      v6 = OUTLINED_FUNCTION_13_8(v14);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      sub_18F0FD724(a1, v14);
      __swift_project_boxed_opaque_existential_1Tm(v14, v14[3]);
      DynamicType = swift_getDynamicType();
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      if (v6 == DynamicType)
      {
        sub_18F522EFC();
        sub_18F0FD724(v15, v13);
        v8 = OUTLINED_FUNCTION_13_8(v13);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x193ADC4F0](v8);
        __swift_project_boxed_opaque_existential_1Tm(v15, v15[3]);
        sub_18F52178C();
        v9 = sub_18F522F4C();
        sub_18F522EFC();
        sub_18F0FD724(a1, v13);
        v10 = OUTLINED_FUNCTION_13_8(v13);
        __swift_destroy_boxed_opaque_existential_1Tm(v13);
        MEMORY[0x193ADC4F0](v10);
        __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
        sub_18F52178C();
        v11 = sub_18F522F4C();
        sub_18F1A8048(v15);
        if (v9 == v11)
        {
          return v4;
        }
      }

      else
      {
        sub_18F1A8048(v15);
      }

      ++v4;
      v5 += 40;
    }

    while (v2 != v4);
  }

  return 0;
}

uint64_t EntityIdentifier.hashValue.getter()
{
  OUTLINED_FUNCTION_17_11();
  static AppValue._identifier.getter(v0, *(v1 + 8));
  OUTLINED_FUNCTION_12_15();

  sub_18F5219CC();
  return sub_18F522F4C();
}

uint64_t sub_18F1AFCA0()
{
  sub_18F522EFC();
  EntityIdentifier.hash(into:)();
  return sub_18F522F4C();
}

id static EntityIdentifier.valueType.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69AC7E8]);

  return [v0 init];
}

uint64_t EntityIdentifier.projectedAsValue.getter@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1[1] + 8);
  static AppValue._identifier.getter(*v1, v4);
  if (dynamic_cast_existential_1_conditional(v3))
  {
    if (qword_1ED6FF6D8 != -1)
    {
      OUTLINED_FUNCTION_2_1();
    }

    static AppValue._identifier.getter(v3, v4);
    OUTLINED_FUNCTION_37();
    v6 = sub_18F164CE8(v5);

    v7 = v6;
    sub_18F1AF344();
  }

  v8 = objc_allocWithZone(MEMORY[0x1E69AC7E0]);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F166ED0();
  v10 = v9;
  result = sub_18F0F21A8(0, &qword_1EACCDD20);
  a1[3] = result;
  *a1 = v10;
  return result;
}

unint64_t sub_18F1AFEEC()
{
  result = qword_1EACD0D30;
  if (!qword_1EACD0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0D30);
  }

  return result;
}

unint64_t sub_18F1AFF44()
{
  result = qword_1EACCEBC8;
  if (!qword_1EACCEBC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0D38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCEBC8);
  }

  return result;
}

unint64_t sub_18F1AFFA8()
{
  result = qword_1ED6FDDB0;
  if (!qword_1ED6FDDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FDDB0);
  }

  return result;
}

void sub_18F1B0024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v5 = sub_18F521AEC();
  v6 = v4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_80_0();
    v5 = sub_18F1DDD90();
    v51 = v50;

    v6 = v51;
    if ((v51 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) != 0)
    {
      v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_80_0();
      v7 = sub_18F52286C();
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_2_25();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v31 = 0;
            v32 = (v27 + 1);
            while (1)
            {
              v33 = *v32;
              if (v33 < 0x30 || v33 >= v30)
              {
                if (v33 < 0x41 || v33 >= v29)
                {
                  OUTLINED_FUNCTION_3_2();
                  if (!v22 || v33 >= v35)
                  {
                    goto LABEL_136;
                  }

                  v34 = -87;
                }

                else
                {
                  v34 = -55;
                }
              }

              else
              {
                v34 = -48;
              }

              v36 = v31 * a3;
              if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
              {
                v31 = v36 + (v33 + v34);
                if (!__OFADD__(v36, (v33 + v34)))
                {
                  ++v32;
                  if (--v28)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_136;
            }
          }
        }

        goto LABEL_136;
      }

      goto LABEL_140;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        OUTLINED_FUNCTION_11_8();
        if (v38 ^ v39 | v37)
        {
          v42 = v45;
        }

        if (v38 ^ v39 | v37)
        {
          v43 = 65;
        }

        if (!(v38 ^ v39 | v37))
        {
          v44 = 58;
        }

        if (v40)
        {
          v46 = 0;
          while (1)
          {
            v47 = *v40;
            if (v47 < 0x30 || v47 >= v44)
            {
              if (v47 < 0x41 || v47 >= v43)
              {
                if (v47 < 0x61 || v47 >= v42)
                {
                  goto LABEL_136;
                }

                v48 = -87;
              }

              else
              {
                v48 = -55;
              }
            }

            else
            {
              v48 = -48;
            }

            v49 = v46 * a3;
            if ((v46 * a3) >> 64 == (v46 * a3) >> 63)
            {
              v46 = v49 + (v47 + v48);
              if (!__OFADD__(v49, (v47 + v48)))
              {
                ++v40;
                if (--v41)
                {
                  continue;
                }
              }
            }

            goto LABEL_136;
          }
        }
      }

      goto LABEL_136;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_2_25();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_3_2();
                if (!v22 || v19 >= v21)
                {
                  break;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 == (v17 * a3) >> 63)
            {
              v17 = v23 - (v19 + v20);
              if (!__OFSUB__(v23, (v19 + v20)))
              {
                ++v18;
                if (--v14)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_136:

      return;
    }

    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
    goto LABEL_141;
  }

  OUTLINED_FUNCTION_9_9();
  if (!v10)
  {
    if (v53 != 45)
    {
      if (v52)
      {
        OUTLINED_FUNCTION_0_19();
        while (1)
        {
          OUTLINED_FUNCTION_6_15();
          if (v22 && v69 < v68)
          {
            v70 = -48;
          }

          else if (v69 < 0x41 || v69 >= v67)
          {
            OUTLINED_FUNCTION_3_2();
            if (!v22 || v69 >= v71)
            {
              goto LABEL_136;
            }

            v70 = -87;
          }

          else
          {
            v70 = -55;
          }

          if ((v66 * a3) >> 64 == (v66 * a3) >> 63 && !__OFADD__(v66 * a3, (v69 + v70)))
          {
            OUTLINED_FUNCTION_5_17();
            if (!v10)
            {
              continue;
            }
          }

          goto LABEL_136;
        }
      }

      goto LABEL_136;
    }

    if (v52)
    {
      if (v52 != 1)
      {
        OUTLINED_FUNCTION_0_19();
        OUTLINED_FUNCTION_4_13();
        while (1)
        {
          OUTLINED_FUNCTION_6_15();
          if (v22 && v57 < v56)
          {
            v58 = -48;
          }

          else if (v57 < 0x41 || v57 >= v55)
          {
            OUTLINED_FUNCTION_3_2();
            if (!v22 || v57 >= v59)
            {
              goto LABEL_136;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }

          if ((v54 * a3) >> 64 == (v54 * a3) >> 63 && !__OFSUB__(v54 * a3, (v57 + v58)))
          {
            OUTLINED_FUNCTION_5_17();
            if (!v10)
            {
              continue;
            }
          }

          goto LABEL_136;
        }
      }

      goto LABEL_136;
    }

    goto LABEL_139;
  }

  if (v52)
  {
    if (v52 != 1)
    {
      OUTLINED_FUNCTION_0_19();
      OUTLINED_FUNCTION_4_13();
      while (1)
      {
        OUTLINED_FUNCTION_6_15();
        if (v22 && v63 < v62)
        {
          v64 = -48;
        }

        else if (v63 < 0x41 || v63 >= v61)
        {
          OUTLINED_FUNCTION_3_2();
          if (!v22 || v63 >= v65)
          {
            goto LABEL_136;
          }

          v64 = -87;
        }

        else
        {
          v64 = -55;
        }

        if ((v60 * a3) >> 64 == (v60 * a3) >> 63 && !__OFADD__(v60 * a3, (v63 + v64)))
        {
          OUTLINED_FUNCTION_5_17();
          if (!v10)
          {
            continue;
          }
        }

        goto LABEL_136;
      }
    }

    goto LABEL_136;
  }

LABEL_141:
  __break(1u);
}

void sub_18F1B04EC(uint64_t a1, uint64_t a2, unint64_t a3)
{
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v5 = sub_18F521AEC();
  v6 = v4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    OUTLINED_FUNCTION_80_0();
    v5 = sub_18F1DDD90();
    v40 = v39;

    v6 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) != 0)
    {
      v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_80_0();
      v7 = sub_18F52286C();
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_2_25();
          if (v18)
          {
            while (1)
            {
              OUTLINED_FUNCTION_6_15();
              if (v15 && v22 < v20)
              {
                v23 = -48;
              }

              else if (v22 < 0x41 || v22 >= v19)
              {
                OUTLINED_FUNCTION_3_2();
                if (!v15 || v22 >= v24)
                {
                  goto LABEL_128;
                }

                v23 = -87;
              }

              else
              {
                v23 = -55;
              }

              if (is_mul_ok(v21, a3) && !__CFADD__(v21 * a3, (v22 + v23)))
              {
                OUTLINED_FUNCTION_5_17();
                if (!v25)
                {
                  continue;
                }
              }

              goto LABEL_128;
            }
          }
        }

        goto LABEL_128;
      }

      goto LABEL_132;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        OUTLINED_FUNCTION_11_8();
        if (v26 ^ v27 | v25)
        {
          v30 = v33;
        }

        if (v26 ^ v27 | v25)
        {
          v31 = 65;
        }

        if (!(v26 ^ v27 | v25))
        {
          v32 = 58;
        }

        if (v28)
        {
          v34 = 0;
          while (1)
          {
            v35 = *v28;
            if (v35 < 0x30 || v35 >= v32)
            {
              if (v35 < 0x41 || v35 >= v31)
              {
                if (v35 < 0x61 || v35 >= v30)
                {
                  goto LABEL_128;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            if (is_mul_ok(v34, a3))
            {
              v37 = v34 * a3;
              v38 = v35 + v36;
              v15 = __CFADD__(v37, v38);
              v34 = v37 + v38;
              if (!v15)
              {
                ++v28;
                if (--v29)
                {
                  continue;
                }
              }
            }

            goto LABEL_128;
          }
        }
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_2_25();
        if (v10)
        {
          while (1)
          {
            OUTLINED_FUNCTION_6_15();
            if (v15 && v14 < v12)
            {
              v16 = -48;
            }

            else if (v14 < 0x41 || v14 >= v11)
            {
              OUTLINED_FUNCTION_3_2();
              if (!v15 || v14 >= v17)
              {
                break;
              }

              v16 = -87;
            }

            else
            {
              v16 = -55;
            }

            if (is_mul_ok(v13, a3) && v13 * a3 >= (v14 + v16))
            {
              OUTLINED_FUNCTION_5_17();
              if (!v25)
              {
                continue;
              }
            }

            break;
          }
        }
      }

LABEL_128:

      return;
    }

    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  OUTLINED_FUNCTION_9_9();
  if (!v25)
  {
    if (v42 != 45)
    {
      if (v41)
      {
        OUTLINED_FUNCTION_0_19();
        while (1)
        {
          OUTLINED_FUNCTION_6_15();
          if (v15 && v58 < v57)
          {
            v59 = -48;
          }

          else if (v58 < 0x41 || v58 >= v56)
          {
            OUTLINED_FUNCTION_3_2();
            if (!v15 || v58 >= v60)
            {
              goto LABEL_128;
            }

            v59 = -87;
          }

          else
          {
            v59 = -55;
          }

          if (is_mul_ok(v55, a3) && !__CFADD__(v55 * a3, (v58 + v59)))
          {
            OUTLINED_FUNCTION_5_17();
            if (!v25)
            {
              continue;
            }
          }

          goto LABEL_128;
        }
      }

      goto LABEL_128;
    }

    if (v41)
    {
      if (v41 != 1)
      {
        OUTLINED_FUNCTION_0_19();
        OUTLINED_FUNCTION_4_13();
        while (1)
        {
          OUTLINED_FUNCTION_6_15();
          if (v15 && v46 < v45)
          {
            v47 = -48;
          }

          else if (v46 < 0x41 || v46 >= v44)
          {
            OUTLINED_FUNCTION_3_2();
            if (!v15 || v46 >= v48)
            {
              goto LABEL_128;
            }

            v47 = -87;
          }

          else
          {
            v47 = -55;
          }

          if (is_mul_ok(v43, a3) && v43 * a3 >= (v46 + v47))
          {
            OUTLINED_FUNCTION_5_17();
            if (!v25)
            {
              continue;
            }
          }

          goto LABEL_128;
        }
      }

      goto LABEL_128;
    }

    goto LABEL_131;
  }

  if (v41)
  {
    if (v41 != 1)
    {
      OUTLINED_FUNCTION_0_19();
      OUTLINED_FUNCTION_4_13();
      while (1)
      {
        OUTLINED_FUNCTION_6_15();
        if (v15 && v52 < v51)
        {
          v53 = -48;
        }

        else if (v52 < 0x41 || v52 >= v50)
        {
          OUTLINED_FUNCTION_3_2();
          if (!v15 || v52 >= v54)
          {
            goto LABEL_128;
          }

          v53 = -87;
        }

        else
        {
          v53 = -55;
        }

        if (is_mul_ok(v49, a3) && !__CFADD__(v49 * a3, (v52 + v53)))
        {
          OUTLINED_FUNCTION_5_17();
          if (!v25)
          {
            continue;
          }
        }

        goto LABEL_128;
      }
    }

    goto LABEL_128;
  }

LABEL_133:
  __break(1u);
}

_BYTE *sub_18F1B09A4@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtof_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL sub_18F1B0A10(uint64_t a1, uint64_t a2)
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
    sub_18F52278C();
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
  v4 = _swift_stdlib_strtof_clocale();
  if (!v4)
  {
    return 0;
  }

  return *v4 == 0;
}

unint64_t sub_18F1B0B24()
{
  result = qword_1EACD0D40;
  if (!qword_1EACD0D40)
  {
    sub_18F520B5C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0D40);
  }

  return result;
}

uint64_t sub_18F1B0BA0()
{
  if (qword_1ED6FF6D8 != -1)
  {
    swift_once();
  }

  v8 = sub_18F34F344(0, 0);
  v10 = v9;

  if (v8)
  {
    v0[2] = off_1ED6FF6C8;
    v11 = *(v10 + 8);

    v0[3] = v11(v8, v10);
    v12 = swift_task_alloc();
    v0[4] = v12;
    *v12 = v0;
    v12[1] = sub_18F1B0E18;

    return sub_18F3E100C();
  }

  else
  {
    if (qword_1ED6FEF38 != -1)
    {
      swift_once();
    }

    v1 = sub_18F52165C();
    __swift_project_value_buffer(v1, qword_1ED707778);
    v2 = sub_18F52163C();
    v3 = sub_18F52221C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_18F0E9000, v2, v3, "Attempted to fetch Auto Shortcuts, but couldn't find the AppShortcutsProvider", v4, 2u);
      MEMORY[0x193ADD350](v4, -1, -1);
    }

    sub_18F1B1258();
    swift_allocError();
    *v5 = 1;
    swift_willThrow();
    OUTLINED_FUNCTION_71();

    return v6();
  }
}

uint64_t sub_18F1B0E18()
{
  v5 = *v1;
  OUTLINED_FUNCTION_39();
  *v2 = v5;
  *(v5 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F1B0F54, 0, 0);
  }

  else
  {

    OUTLINED_FUNCTION_71();

    return v3();
  }
}

uint64_t sub_18F1B0F54()
{

  OUTLINED_FUNCTION_71();

  return v0();
}

uint64_t sub_18F1B1038(const void *a1, void *a2)
{
  v2[2] = a2;
  v2[3] = _Block_copy(a1);
  v4 = a2;
  v5 = swift_task_alloc();
  v2[4] = v5;
  *v5 = v2;
  v5[1] = sub_18F1B10DC;

  return AppContext.updateAppShortcutParameters()();
}

uint64_t sub_18F1B10DC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  v6 = *(v3 + 16);
  v7 = *v1;
  *v5 = *v1;

  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_18F520A7C();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(v8, 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

unint64_t sub_18F1B1258()
{
  result = qword_1EACD0D48;
  if (!qword_1EACD0D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD0D48);
  }

  return result;
}

uint64_t sub_18F1B12AC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_18F1ADF4C;

  return sub_18F1B1038(v2, v3);
}

void *AppShortcutParameterPresentation.init<A>(for:title:optionsCollection:)@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>)
{
  memcpy(__dst, a2, sizeof(__dst));
  *(a6 + 64) = 0u;
  *(a6 + 80) = 0u;
  *(a6 + 96) = 0u;
  *(a6 + 112) = 0;
  *(a6 + 48) = 0u;
  *(a6 + 120) = 0u;
  *(a6 + 136) = 0u;
  *(a6 + 146) = 0u;
  *a6 = a1;
  *(a6 + 32) = a4;
  *(a6 + 40) = a5;
  __swift_allocate_boxed_opaque_existential_1((a6 + 8));

  a3(v11);

  memcpy(v15, (a6 + 48), 0x42uLL);
  type metadata accessor for AppShortcutParameterPresentationTitle();
  v12 = sub_18F52254C();
  (*(*(v12 - 8) + 8))(v15, v12);
  return memcpy((a6 + 48), __dst, 0x42uLL);
}

uint64_t sub_18F1B14B4(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 162))
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

uint64_t sub_18F1B14F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 162) = 1;
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

    *(result + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18F1B1560@<X0>(uint64_t *a1@<X8>)
{
  v3 = __swift_project_boxed_opaque_existential_1Tm((v1 + 8), *(v1 + 32));
  MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  a1[3] = swift_getAssociatedTypeWitness();
  a1[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_18F521B1C();
}

uint64_t sub_18F1B1690@<X0>(uint64_t a1@<X8>)
{
  if (dynamic_cast_existential_1_conditional(&type metadata for UndoOperation))
  {
    v2 = &qword_1EACD0E58;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E58);
    v4 = &unk_1EACD0E60;
  }

  else
  {
    v2 = &qword_1EACD0E50;
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E50);
    v4 = &unk_1ED6FE0A0;
  }

  result = sub_18F1B8B98(v4, v2);
  *(a1 + 24) = v3;
  *(a1 + 32) = result;
  return result;
}

void sub_18F1B174C()
{
  OUTLINED_FUNCTION_18();
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E28);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  v9 = sub_18F520E6C();
  OUTLINED_FUNCTION_0();
  v45 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v43 = v12 - v13;
  OUTLINED_FUNCTION_44();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_74();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD4700);
  v16 = OUTLINED_FUNCTION_10(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_5();
  v44 = v17 - v18;
  OUTLINED_FUNCTION_44();
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v42 - v21;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_28_13();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_66_1();
  OUTLINED_FUNCTION_66_0();
  sub_18F520DFC();
  sub_18F1169CC(v4, v46, &qword_1EACD0430);
  if (!v46[3])
  {
    sub_18F0EF1A8(v46, &qword_1EACD0430);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v30, v31, v32, v9);
    goto LABEL_9;
  }

  v24 = swift_dynamicCast();
  __swift_storeEnumTagSinglePayload(v2, v24 ^ 1u, 1, v9);
  OUTLINED_FUNCTION_54_0(v2);
  if (v36)
  {
LABEL_9:
    sub_18F0EF1A8(v1, &qword_1EACD4700);
    v33 = v2;
    v34 = &qword_1EACD4700;
LABEL_10:
    sub_18F0EF1A8(v33, v34);
    goto LABEL_11;
  }

  v25 = v2;
  v26 = v45;
  v42 = *(v45 + 32);
  v42(v0, v25, v9);
  (*(v26 + 16))(v22, v0, v9);
  __swift_storeEnumTagSinglePayload(v22, 0, 1, v9);
  v27 = *(v5 + 48);
  sub_18F1169CC(v1, v8, &qword_1EACD4700);
  sub_18F1169CC(v22, &v8[v27], &qword_1EACD4700);
  OUTLINED_FUNCTION_54_0(v8);
  if (!v36)
  {
    v35 = v44;
    sub_18F1169CC(v8, v44, &qword_1EACD4700);
    OUTLINED_FUNCTION_54_0(&v8[v27]);
    if (!v36)
    {
      v39 = v43;
      v42(v43, &v8[v27], v9);
      sub_18F1B8A84();
      sub_18F52180C();
      v40 = *(v26 + 8);
      v40(v39, v9);
      sub_18F0EF1A8(v22, &qword_1EACD4700);
      v41 = OUTLINED_FUNCTION_53();
      (v40)(v41);
      sub_18F0EF1A8(v1, &qword_1EACD4700);
      v40(v44, v9);
      sub_18F0EF1A8(v8, &qword_1EACD4700);
      goto LABEL_11;
    }

    OUTLINED_FUNCTION_104_0(v22);
    v37 = *(v26 + 8);
    v38 = OUTLINED_FUNCTION_53();
    v37(v38);
    OUTLINED_FUNCTION_104_0(v1);
    (v37)(v35, v9);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_104_0(v22);
  v28 = OUTLINED_FUNCTION_53();
  v29(v28);
  OUTLINED_FUNCTION_104_0(v1);
  OUTLINED_FUNCTION_54_0(&v8[v27]);
  if (!v36)
  {
LABEL_15:
    v34 = &qword_1EACD0E28;
    v33 = v8;
    goto LABEL_10;
  }

  sub_18F0EF1A8(v8, &qword_1EACD4700);
LABEL_11:
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F1B1BEC()
{
  v0 = sub_18F520B3C();
  __swift_allocate_value_buffer(v0, qword_1ED6FE170);
  __swift_project_value_buffer(v0, qword_1ED6FE170);
  return sub_18F520ACC();
}

uint64_t sub_18F1B1C44()
{
  if (qword_1ED6FE168 != -1)
  {
    OUTLINED_FUNCTION_11_9();
  }

  v0 = sub_18F520B3C();

  return __swift_project_value_buffer(v0, qword_1ED6FE170);
}

uint64_t static _UndoIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED6FE168 != -1)
  {
    OUTLINED_FUNCTION_11_9();
  }

  v2 = sub_18F520B3C();
  v3 = __swift_project_value_buffer(v2, qword_1ED6FE170);
  OUTLINED_FUNCTION_37();
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static _UndoIntent.title.setter(uint64_t a1)
{
  if (qword_1ED6FE168 != -1)
  {
    OUTLINED_FUNCTION_11_9();
  }

  v2 = sub_18F520B3C();
  __swift_project_value_buffer(v2, qword_1ED6FE170);
  OUTLINED_FUNCTION_81();
  v3 = *(v2 - 8);
  v4 = OUTLINED_FUNCTION_80_0();
  v5(v4);
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*static _UndoIntent.title.modify())()
{
  if (qword_1ED6FE168 != -1)
  {
    OUTLINED_FUNCTION_11_9();
  }

  v0 = sub_18F520B3C();
  __swift_project_value_buffer(v0, qword_1ED6FE170);
  OUTLINED_FUNCTION_81();
  return j__swift_endAccess;
}

uint64_t sub_18F1B1E98@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18F1B1C44();
  swift_beginAccess();
  v3 = sub_18F520B3C();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t sub_18F1B1F14(uint64_t a1)
{
  v2 = sub_18F1B1C44();
  swift_beginAccess();
  v3 = sub_18F520B3C();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

id _UndoIntent.undoManager.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void _UndoIntent.init()()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v51 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v52 = &v49 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v50 = v9 - v10;
  OUTLINED_FUNCTION_44();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - v13;
  v49 = &v49 - v13;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_28_13();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_66_1();
  v16 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v49 - v24;
  *v3 = 0;
  sub_18F520ACC();
  v26 = type metadata accessor for IntentDialog(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v26);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v30, v31, v32, v26);
  (*(v18 + 16))(v22, v25, v16);
  OUTLINED_FUNCTION_90();
  sub_18F1B1690(v33);
  sub_18F1169CC(v0, v14, &qword_1EACCF7A0);
  v34 = v50;
  sub_18F1169CC(v1, v50, &qword_1EACCF7A0);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D50);
  v55 = sub_18F1B8B98(&qword_1ED6FE1D0, &qword_1EACD0D50);
  v53[0] = &unk_1F030D118;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D58);
  swift_allocObject();
  v35 = sub_18F1B4CF8(v22, 2, 0, &v57, v56, v49, v34, v53);
  sub_18F0EF1A8(v1, &qword_1EACCF7A0);
  sub_18F0EF1A8(v0, &qword_1EACCF7A0);
  (*(v18 + 8))(v25, v16);
  v36 = v51;
  *(v51 + 8) = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0D60);
  sub_18F520ACC();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v37, v38, v39, v16);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v26);
  OUTLINED_FUNCTION_37();
  sub_18F1B71C8(v43, v44, v45, v46, 0x20000, v0, 0, v47, &unk_18F543770, &unk_1ED6FE0A8, v49, v50, v51, v52, v53[0], v53[1], v53[2], v54, v55, v56[0], v56[1], v56[2]);
  *(v36 + 16) = v48;
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F1B23E4()
{
  OUTLINED_FUNCTION_69();
  *(v1 + 97) = v2;
  *(v1 + 280) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  OUTLINED_FUNCTION_10(v4);
  *(v1 + 288) = OUTLINED_FUNCTION_34_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E30);
  *(v1 + 296) = v5;
  OUTLINED_FUNCTION_10(v5);
  *(v1 + 304) = OUTLINED_FUNCTION_34_0();
  v6 = type metadata accessor for ConfirmationActionNameEnum();
  OUTLINED_FUNCTION_10(v6);
  *(v1 + 312) = OUTLINED_FUNCTION_34_0();
  v7 = sub_18F520B3C();
  *(v1 + 320) = v7;
  *(v1 + 328) = *(v7 - 8);
  *(v1 + 336) = OUTLINED_FUNCTION_34_0();
  v8 = type metadata accessor for IntentDialog(0);
  *(v1 + 344) = v8;
  OUTLINED_FUNCTION_10(v8);
  v9 = OUTLINED_FUNCTION_34_0();
  v10 = *v0;
  *(v1 + 352) = v9;
  *(v1 + 360) = v10;
  *(v1 + 368) = *(v0 + 1);
  sub_18F521EBC();
  *(v1 + 384) = sub_18F521EAC();
  v12 = sub_18F521E1C();
  *(v1 + 392) = v12;
  *(v1 + 400) = v11;

  return MEMORY[0x1EEE6DFA0](sub_18F1B257C, v12, v11);
}

uint64_t sub_18F1B257C()
{
  v1 = v0[39];
  (*(v0[41] + 16))(v0[42], v0[35], v0[40]);
  IntentDialog.init(_:)();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0E38);
  __swift_storeEnumTagSinglePayload(v1, 7, 33, v2);
  sub_18F39DE70(v1, 0, v0 + 34);
  v0[51] = v0[34];
  OUTLINED_FUNCTION_13_0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F1B2650()
{
  v1 = *(v0 + 344);
  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 288);
  v29 = v4;
  OUTLINED_FUNCTION_13_14();
  sub_18F1B8ADC(v5, v4);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v1);
  *(v0 + 184) = 0;
  *(v0 + 168) = 0u;
  *(v0 + 152) = 0u;
  *(v0 + 208) = 0u;
  *(v0 + 224) = 0;
  *(v0 + 192) = 0u;
  *(v0 + 248) = 0u;
  *(v0 + 232) = 0u;
  *(v0 + 264) = 0;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 16) = 0u;
  OUTLINED_FUNCTION_37_6(0, xmmword_18F543360);
  v27 = v3[17];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v1);
  v2[v3[18]] = 1;
  v9 = v3[20];
  v28 = &v2[v3[19]];
  v2[v9] = 2;
  v10 = &v2[v3[21]];
  *(v10 + 25) = 0u;
  *v10 = 0u;
  v10[1] = 0u;
  v11 = &v2[v3[22]];
  *(v11 + 32) = 0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  v12 = &v2[v3[23]];
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 1;
  v12[32] = 0;
  v13 = &v2[v3[24]];
  *(v13 + 32) = 0u;
  *(v13 + 48) = 0u;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 64) = v24;
  *(v13 + 80) = 0;
  v14 = &v2[v3[25]];
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  v23 = v3[26];
  v25 = v3[27];
  *&v2[v25] = 0;
  v15 = &v2[v3[29]];
  *(v15 + 32) = 0;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *v2 = 1;
  sub_18F0FF690(v0 + 192, v15, &qword_1EACD0D70);
  v2[v9] = 2;
  sub_18F0FF690(v26, v10, &qword_1EACD0550);
  sub_18F0FF690(v0 + 232, v11, &qword_1EACD0D78);
  sub_18F138888(*v12, *(v12 + 1), *(v12 + 2), *(v12 + 3));
  *v12 = 0;
  *(v12 + 1) = 0;
  *(v12 + 2) = 0;
  *(v12 + 3) = 1;
  v12[32] = 0;
  sub_18F0FF690(v0 + 16, v13, &qword_1EACD0D80);
  sub_18F0FF690(v29, &v2[v27], &qword_1EACCF7A0);
  sub_18F0FF690(v0 + 152, v14, &qword_1EACD0D70);
  *&v2[v23] = 0;
  *v28 = 0;
  v28[1] = 0;
  *&v2[v25] = 0;
  *&v2[v3[28]] = 0;
  v16 = swift_task_alloc();
  *(v0 + 416) = v16;
  *v16 = v0;
  v16[1] = sub_18F1B2964;
  v17 = *(v0 + 408);
  v18 = *(v0 + 368);
  v19 = *(v0 + 376);
  v20 = *(v0 + 360);
  v21 = *(v0 + 304);

  return sub_18F1B7A24(v21, v17, 1, 0, v20, v18, v19);
}