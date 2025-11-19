uint64_t sub_18F27A108()
{
  OUTLINED_FUNCTION_69();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_9_6(v4);
  *v5 = v6;
  v5[1] = sub_18F0FC870;

  return sub_18F273D14(v2, v3);
}

uint64_t sub_18F27A19C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_89();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_9_6(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_14_28(v1);
  OUTLINED_FUNCTION_109_0();

  return sub_18F275820(v3, v4, v5, v6);
}

uint64_t get_enum_tag_for_layout_string_10AppIntents17PerformQueryErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

unint64_t sub_18F27A25C()
{
  result = qword_1EACD3A98;
  if (!qword_1EACD3A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3A98);
  }

  return result;
}

uint64_t sub_18F27A2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_17_27();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_13_1(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_1_51(v13);
  OUTLINED_FUNCTION_29_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_18F27A340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_17_27();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_13_1(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_1_51(v13);
  OUTLINED_FUNCTION_29_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t objectdestroy_26Tm()
{
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 64));

  OUTLINED_FUNCTION_62_4();

  return swift_deallocObject();
}

uint64_t sub_18F27A418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_17_27();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_13_1(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_1_51(v13);
  OUTLINED_FUNCTION_29_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_18F27A4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_17_27();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_13_1(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_1_51(v13);
  OUTLINED_FUNCTION_29_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t objectdestroy_36Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  _Block_release(*(v0 + 64));

  OUTLINED_FUNCTION_62_4();

  return swift_deallocObject();
}

uint64_t sub_18F27A580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_24_4();
  OUTLINED_FUNCTION_17_27();
  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_13_1(v12);
  *v13 = v14;
  OUTLINED_FUNCTION_1_51(v13);
  OUTLINED_FUNCTION_29_1();

  return v23(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10, a11, a12);
}

uint64_t sub_18F27A610(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3);
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return a2;
}

uint64_t sub_18F27A6B0(void *a1)
{
  v1 = [a1 sortingOptions];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_18F0F21A8(0, qword_1EACD0F88);
  v3 = sub_18F521CAC();

  return v3;
}

uint64_t OUTLINED_FUNCTION_115_0(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = result;
  v4[3] = a2;
  return result;
}

uint64_t OUTLINED_FUNCTION_123_1()
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_124_1()
{

  return swift_willThrow();
}

uint64_t OUTLINED_FUNCTION_125_1()
{

  return swift_getAssociatedConformanceWitness();
}

void OUTLINED_FUNCTION_127()
{
}

uint64_t sub_18F27A848()
{
  v1 = v0;
  v2 = sub_18F27BB58(v0, &selRef_country);
  v36 = v3;
  v37 = v2;
  v4 = sub_18F27BB58(v0, &selRef_ISOcountryCode);
  v34 = v5;
  v35 = v4;
  v6 = sub_18F27BB58(v0, &selRef_administrativeArea);
  v32 = v7;
  v33 = v6;
  v8 = sub_18F27BB58(v0, &selRef_subAdministrativeArea);
  v30 = v9;
  v31 = v8;
  v10 = sub_18F27BB58(v0, &selRef_subLocality);
  v28 = v11;
  v29 = v10;
  v12 = sub_18F27BB58(v0, &selRef_locality);
  v14 = v13;
  v15 = sub_18F27BB58(v1, &selRef_postalCode);
  v17 = v16;
  v18 = sub_18F27BB58(v1, &selRef_thoroughfare);
  v20 = v19;
  v21 = sub_18F27BB58(v1, &selRef_subThoroughfare);
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3B90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F53F800;
  *(inited + 32) = 0x7365756C6176;
  *(inited + 40) = 0xE600000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3B98);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_18F53F800;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3BA0);
  v26 = swift_initStackObject();
  *(v26 + 16) = xmmword_18F53F800;
  *(v26 + 32) = 0x73736572646461;
  *(v26 + 40) = 0xE700000000000000;
  *(v26 + 48) = v37;
  *(v26 + 56) = v36;
  *(v26 + 64) = v35;
  *(v26 + 72) = v34;
  *(v26 + 80) = v33;
  *(v26 + 88) = v32;
  *(v26 + 96) = v31;
  *(v26 + 104) = v30;
  *(v26 + 112) = v29;
  *(v26 + 120) = v28;
  *(v26 + 128) = v12;
  *(v26 + 136) = v14;
  *(v26 + 144) = v15;
  *(v26 + 152) = v17;
  *(v26 + 160) = v18;
  *(v26 + 168) = v20;
  *(v26 + 176) = v21;
  *(v26 + 184) = v23;
  *(v25 + 32) = sub_18F5216CC();
  *(inited + 48) = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD02F8);
  return sub_18F5216CC();
}

uint64_t IntentParameter.PlacemarkDisplayStyle.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t sub_18F27AB20()
{
  sub_18F522EFC();
  IntentParameter.PlacemarkDisplayStyle.hash(into:)();
  return sub_18F522F4C();
}

id sub_18F27AB74()
{
  v0 = type metadata accessor for IntentContext();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = (&v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  static IntentContext.current.getter(v3);
  v4 = v3[1];
  sub_18F178EA4(v3);
  v5 = [v4 localeIdentifier];

  v6 = sub_18F5218DC();
  v8 = v7;

  sub_18F0F21A8(0, &qword_1EACD3BA8);
  return sub_18F323B00(v6, v8);
}

void CLPlacemark.displayRepresentation.getter(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v8 = OUTLINED_FUNCTION_10(v7);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = sub_18F52187C();
  v12 = OUTLINED_FUNCTION_10(v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = sub_18F27AB74();
  v14 = [v1 _intents_readableTitleWithLocalizer_];

  if (v14)
  {
    sub_18F5218DC();

    sub_18F52186C();
    sub_18F52185C();
    sub_18F52183C();

    sub_18F52185C();
    sub_18F520AEC();
    v15 = sub_18F520B3C();
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
    v19 = type metadata accessor for DisplayRepresentation.Image(0);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
    v23 = type metadata accessor for DisplayRepresentation();
    v24 = v23[5];
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v15);
    v28 = v23[6];
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v29, v30, v31, v19);
    *(a1 + v23[7]) = xmmword_18F540410;
    *(a1 + v23[8]) = 0;
    *(a1 + v23[9]) = MEMORY[0x1E69E7CC0];
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v15);
    sub_18F0FF628(v10, a1 + v24, &qword_1EACCF7A8);
    sub_18F0FF628(v6, a1 + v28, &qword_1EACD0270);
  }

  else
  {

    DisplayRepresentation.init(stringLiteral:)();
  }
}

uint64_t sub_18F27AF3C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return InstanceDisplayRepresentable.localizedStringResource.getter(a1, WitnessTable);
}

uint64_t IntentParameter<>.displayStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  sub_18F19E300(*(v1 + *(*v1 + 112)), &v4);
  if (!v5)
  {
    result = sub_18F106E70(&v4);
    goto LABEL_5;
  }

  type metadata accessor for IntentParameter.PlacemarkDisplayStyle();
  result = OUTLINED_FUNCTION_0_16();
  if ((result & 1) == 0)
  {
LABEL_5:
    *a1 = 3;
  }

  return result;
}

void IntentParameterContext<>.displayStyle.getter(_BYTE *a1@<X8>)
{
  v3 = *v1;
  if (!*(v3 + 16) || (v4 = sub_18F0F713C(0xD000000000000017, 0x800000018F528380), (v5 & 1) == 0) || (sub_18F0FECD4(*(v3 + 56) + 32 * v4, &v6), type metadata accessor for IntentParameter.PlacemarkDisplayStyle(), (OUTLINED_FUNCTION_0_16() & 1) == 0))
  {
    *a1 = 3;
  }
}

id static CLPlacemark.valueType.getter()
{
  v0 = [objc_opt_self() placemarkValueType];

  return v0;
}

uint64_t sub_18F27B188(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7972746E756F63 && a2 == 0xE700000000000000;
  if (v4 || (sub_18F522D5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
    if (v6 || (sub_18F522D5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x800000018F5283A0 == a2;
      if (v7 || (sub_18F522D5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000015 && 0x800000018F5283C0 == a2;
        if (v8 || (sub_18F522D5C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6C61636F4C627573 && a2 == 0xEB00000000797469;
          if (v9 || (sub_18F522D5C() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0x7974696C61636F6CLL && a2 == 0xE800000000000000;
            if (v10 || (sub_18F522D5C() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x65646F4374736F70 && a2 == 0xE800000000000000;
              if (v11 || (sub_18F522D5C() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6867756F726F6874 && a2 == 0xEC00000065726166;
                if (v12 || (sub_18F522D5C() & 1) != 0)
                {

                  return 7;
                }

                else if (a1 == 0x6F726F6854627573 && a2 == 0xEF65726166686775)
                {

                  return 8;
                }

                else
                {
                  v14 = sub_18F522D5C();

                  if (v14)
                  {
                    return 8;
                  }

                  else
                  {
                    return 9;
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_18F27B470(char a1)
{
  result = 0x7972746E756F63;
  switch(a1)
  {
    case 1:
      result = 0x437972746E756F63;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6C61636F4C627573;
      break;
    case 5:
      result = 0x7974696C61636F6CLL;
      break;
    case 6:
      result = 0x65646F4374736F70;
      break;
    case 7:
      result = 0x6867756F726F6874;
      break;
    case 8:
      result = 0x6F726F6854627573;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18F27B59C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3B80);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F27BB04();
  sub_18F522FEC();
  v8[15] = 0;
  OUTLINED_FUNCTION_0_56();
  if (!v1)
  {
    v8[14] = 1;
    OUTLINED_FUNCTION_0_56();
    v8[13] = 2;
    OUTLINED_FUNCTION_0_56();
    v8[12] = 3;
    OUTLINED_FUNCTION_0_56();
    v8[11] = 4;
    OUTLINED_FUNCTION_0_56();
    v8[10] = 5;
    OUTLINED_FUNCTION_0_56();
    v8[9] = 6;
    OUTLINED_FUNCTION_0_56();
    v8[8] = 7;
    OUTLINED_FUNCTION_0_56();
    v8[7] = 8;
    OUTLINED_FUNCTION_0_56();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_18F27B7CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F27B188(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F27B7F4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18F27B468();
  *a1 = result;
  return result;
}

uint64_t sub_18F27B81C(uint64_t a1)
{
  v2 = sub_18F27BB04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F27B858(uint64_t a1)
{
  v2 = sub_18F27BB04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F27B8AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18F27A848();
  *a1 = result;
  return result;
}

uint64_t sub_18F27B8F4(uint64_t a1)
{
  result = sub_18F10F7C8(&qword_1EACD3AD8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F27B938(uint64_t a1)
{
  result = sub_18F10F7C8(&qword_1EACD3AE0);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F27B980()
{
  result = qword_1EACD3AE8;
  if (!qword_1EACD3AE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD3AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3AE8);
  }

  return result;
}

_BYTE *sub_18F27BA28(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F27BB04()
{
  result = qword_1EACD3B88;
  if (!qword_1EACD3B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3B88);
  }

  return result;
}

uint64_t sub_18F27BB58(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_18F5218DC();

  return v4;
}

_BYTE *_s17LocationNLGParamsV10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F27BC98()
{
  result = qword_1EACD3BB0;
  if (!qword_1EACD3BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3BB0);
  }

  return result;
}

unint64_t sub_18F27BCF0()
{
  result = qword_1EACD3BB8;
  if (!qword_1EACD3BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3BB8);
  }

  return result;
}

unint64_t sub_18F27BD48()
{
  result = qword_1EACD3BC0[0];
  if (!qword_1EACD3BC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD3BC0);
  }

  return result;
}

uint64_t sub_18F27BD9C(_BYTE *a1, uint64_t a2)
{
  v18 = a2;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v4 = sub_18F52254C();
  v5 = *(v4 - 8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(TupleTypeMetadata2 - 8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  LOBYTE(a1) = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD03F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F53F800;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x800000018F5283E0;
  *(inited + 72) = type metadata accessor for IntentParameter.DoubleControlStyle();
  *(inited + 48) = a1;
  sub_18F1168B4();
  v14 = sub_18F5216CC();
  (*(v5 + 16))(v8, v18, v4);
  if (__swift_getEnumTagSinglePayload(v8, 1, TupleTypeMetadata2) == 1)
  {
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    (*(v9 + 32))(v12, v8, TupleTypeMetadata2);
    v22 = TupleTypeMetadata2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
    (*(v9 + 16))(boxed_opaque_existential_1, v12, TupleTypeMetadata2);
    sub_18F118710(v21, &v20);
    swift_isUniquelyReferenced_nonNull_native();
    v19 = v14;
    sub_18F2BFA5C();
    v14 = v19;
    (*(v9 + 8))(v12, TupleTypeMetadata2);
  }

  return v14;
}

uint64_t sub_18F27C094@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = sub_18F52187C();
  v13 = OUTLINED_FUNCTION_10(v12);
  MEMORY[0x1EEE9AC00](v13);
  if (qword_1EACCEC68 != -1)
  {
    swift_once();
  }

  v14 = [qword_1EAD0ABA8 stringFromNumber_];
  if (!v14)
  {
    v14 = [a1 stringValue];
  }

  sub_18F5218DC();

  sub_18F52186C();
  sub_18F52185C();
  sub_18F52183C();

  sub_18F52185C();
  sub_18F520AEC();
  v15 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  v19 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v19);
  v23 = type metadata accessor for DisplayRepresentation();
  v24 = v23[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v15);
  v28 = v23[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v19);
  *(a2 + v23[7]) = xmmword_18F540410;
  *(a2 + v23[8]) = 0;
  v32 = v23[9];

  *(a2 + v32) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v15);
  sub_18F0FF628(v11, a2 + v24, &qword_1EACCF7A8);
  return sub_18F0FF628(v7, a2 + v28, &qword_1EACD0270);
}

unint64_t static Double.defaultResolverSpecification.getter()
{
  sub_18F27C380();

  return sub_18F27C3D4();
}

unint64_t sub_18F27C380()
{
  result = qword_1ED6FC100;
  if (!qword_1ED6FC100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FC100);
  }

  return result;
}

unint64_t sub_18F27C3D4()
{
  result = qword_1ED6FBFE8;
  if (!qword_1ED6FBFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBFE8);
  }

  return result;
}

uint64_t DoubleResolver.resolve(from:context:)(uint64_t a1, double a2)
{
  *(v2 + 24) = a1;
  *(v2 + 16) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  OUTLINED_FUNCTION_10(v3);
  *(v2 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F27C4C8, 0, 0);
}

uint64_t sub_18F27C4C8()
{
  v1 = COERCE_DOUBLE(sub_18F1DCAA8());
  if ((v3 & 1) == 0 && ((v4 = *(v0 + 16), v4 >= v1) ? (v5 = v4 > v2) : (v5 = 1), v5))
  {
    v6 = *(v0 + 32);
    type metadata accessor for IntentDialog(0);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    type metadata accessor for AppIntentError(0);
    sub_18F2199DC();
    OUTLINED_FUNCTION_77();
    sub_18F1DC8C0(v6, v11);
    sub_18F0EF148(v6, &qword_1EACCF7A0);
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }

  else
  {

    v14 = OUTLINED_FUNCTION_1_52();

    return v15(v14);
  }
}

uint64_t sub_18F27C648(uint64_t a1, double *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_18F1DB400;

  return DoubleResolver.resolve(from:context:)(a3, v5);
}

uint64_t DoubleFromStringResolver.resolve(from:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_18F27C70C, 0, 0);
}

uint64_t sub_18F27C70C()
{
  v1 = v0[2];
  v2 = v0[3];
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v3 = sub_18F27C7E8(v1, v2);
  v5 = v4;
  if ((v4 & 1) == 0)
  {
    sub_18F1DB1DC(*&v3);
  }

  v6 = v0[1];

  return v6(v3, v5 & 1);
}

uint64_t sub_18F27C7E8(uint64_t a1, uint64_t a2)
{
  sub_18F3C87B0(a1, a2);

  return 0;
}

uint64_t sub_18F27C850(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = a2[1];
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_18F1DE254;

  return DoubleFromStringResolver.resolve(from:context:)(v5, v6, a3);
}

uint64_t DoubleFromIntResolver.resolve(from:context:)(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A0);
  OUTLINED_FUNCTION_10(v3);
  v2[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F27C994, 0, 0);
}

uint64_t sub_18F27C994()
{
  v1 = v0[2];
  v2 = COERCE_DOUBLE(sub_18F1DCAA8());
  if ((v4 & 1) == 0 && (v2 <= v1 ? (v5 = v1 > v3) : (v5 = 1), v5))
  {
    v6 = v0[4];
    type metadata accessor for IntentDialog(0);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
    type metadata accessor for AppIntentError(0);
    sub_18F2199DC();
    OUTLINED_FUNCTION_77();
    sub_18F1DC8C0(v6, v11);
    sub_18F0EF148(v6, &qword_1EACCF7A0);
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }

  else
  {

    v14 = OUTLINED_FUNCTION_1_52();

    return v15(v14);
  }
}

uint64_t sub_18F27CAD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = *a2;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_18F1DE254;

  return DoubleFromIntResolver.resolve(from:context:)(v5, a3);
}

uint64_t IntentParameter.DoubleControlStyle.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t sub_18F27CC0C()
{
  sub_18F522EFC();
  IntentParameter.DoubleControlStyle.hash(into:)();
  return sub_18F522F4C();
}

uint64_t IntentParameter<>.controlStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  sub_18F19E300(*(v1 + *(*v1 + 112)), &v4);
  if (!v5)
  {
    result = sub_18F0EF148(&v4, &qword_1EACD0430);
    goto LABEL_5;
  }

  type metadata accessor for IntentParameter.DoubleControlStyle();
  result = OUTLINED_FUNCTION_0_16();
  if ((result & 1) == 0)
  {
LABEL_5:
    *a1 = 3;
  }

  return result;
}

id static Double.valueType.getter()
{
  v0 = [objc_opt_self() doubleValueType];

  return v0;
}

uint64_t Double.defaultDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_18F521FDC();
  sub_18F27C094(v2, a1);
  v3 = type metadata accessor for DisplayRepresentation();

  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v3);
}

id sub_18F27CF24()
{
  result = [objc_allocWithZone(MEMORY[0x1E696ADA0]) init];
  qword_1EAD0ABA8 = result;
  return result;
}

double sub_18F27CF58@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

unint64_t sub_18F27CF98(uint64_t a1)
{
  result = sub_18F1DD958();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F27CFC0(uint64_t a1)
{
  result = sub_18F27C380();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F27CFE8(uint64_t a1)
{
  result = sub_18F27D010();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F27D010()
{
  result = qword_1ED6FC110;
  if (!qword_1ED6FC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FC110);
  }

  return result;
}

unint64_t sub_18F27D068()
{
  result = qword_1ED6FC108;
  if (!qword_1ED6FC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FC108);
  }

  return result;
}

unint64_t sub_18F27D0BC(uint64_t a1)
{
  result = sub_18F27C3D4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F27D0E4(uint64_t a1)
{
  result = sub_18F27D10C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F27D10C()
{
  result = qword_1ED6FBFF8;
  if (!qword_1ED6FBFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBFF8);
  }

  return result;
}

unint64_t sub_18F27D164()
{
  result = qword_1ED6FBFF0;
  if (!qword_1ED6FBFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FBFF0);
  }

  return result;
}

unint64_t sub_18F27D1B8(uint64_t a1)
{
  result = sub_18F27D1E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F27D1E0()
{
  result = qword_1EACCEEF8[0];
  if (!qword_1EACCEEF8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACCEEF8);
  }

  return result;
}

unint64_t sub_18F27D234(uint64_t a1)
{
  result = sub_18F27D25C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F27D25C()
{
  result = qword_1ED6FC0D8;
  if (!qword_1ED6FC0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FC0D8);
  }

  return result;
}

unint64_t sub_18F27D2B4()
{
  result = qword_1ED6FC0D0;
  if (!qword_1ED6FC0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED6FC0D0);
  }

  return result;
}

_BYTE *sub_18F27D348(_BYTE *result, int a2, int a3)
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

_BYTE *sub_18F27D3F0(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F27D4BC()
{
  result = qword_1EACCF3C0;
  if (!qword_1EACCF3C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EACD3C48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACCF3C0);
  }

  return result;
}

uint64_t static _AssistantIntent.PhraseBuilder.buildExpression(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  type metadata accessor for _AssistantIntent.Phrase();
  sub_18F522CAC();
  swift_allocObject();
  v4 = sub_18F521CDC();
  *v5 = v1;
  v5[1] = v2;
  v5[2] = v3;
  v6 = sub_18F129FD4(v4);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v6;
}

uint64_t static _AssistantIntent.PhraseBuilder.buildBlock(_:)()
{
  type metadata accessor for _AssistantIntent.Phrase();
  sub_18F521DBC();
  OUTLINED_FUNCTION_0_57();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_53();
  return sub_18F521B3C();
}

{
  type metadata accessor for _AssistantIntent.Phrase();
  sub_18F521DBC();
  sub_18F521DBC();
  OUTLINED_FUNCTION_0_57();
  swift_getWitnessTable();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_1_53();
  return sub_18F521BEC();
}

uint64_t sub_18F27D630@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v3 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v3;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
}

uint64_t static _AssistantIntent.PhraseBuilder.buildBlock()()
{
  type metadata accessor for _AssistantIntent.Phrase();

  return sub_18F521D2C();
}

_BYTE *sub_18F27D764(_BYTE *result, int a2, int a3)
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

__n128 ViewEntityIdentifier.init(identifier:interactionId:location:state:displayRepresentation:structuredDataRepresentations:)@<Q0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v32 - v12;
  v14 = type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  v18 = a1[1];
  v20 = a1[2];
  v21 = a1[3];
  v22 = *a3;
  v32 = *(a3 + 16);
  v33 = v22;
  v23 = *(a3 + 32);
  v24 = *(a3 + 40);
  v25 = *a4;
  v26 = sub_18F27DB1C(v19, v18, v20, v21);
  v27 = static AppEntity.structuredDataRepresentations.getter();

  sub_18F209F7C(a5, v13);
  if (__swift_getEnumTagSinglePayload(v13, 1, v14) == 1)
  {
    if (qword_1EACCF4D8 != -1)
    {
      OUTLINED_FUNCTION_0_58();
    }

    v28 = __swift_project_value_buffer(v14, qword_1EACD3CD0);
    swift_beginAccess();
    OUTLINED_FUNCTION_1_54();
    sub_18F27EC60(v28, v17, v29);
    sub_18F1C7564(a5);
    if (__swift_getEnumTagSinglePayload(v13, 1, v14) != 1)
    {
      sub_18F1C7564(v13);
    }
  }

  else
  {
    sub_18F1C7564(a5);
    sub_18F143B8C(v13, v17);
  }

  *a6 = v26;
  *(a6 + 56) = v34;
  v30 = type metadata accessor for ViewEntityIdentifier();
  *(a6 + *(v30 + 36)) = v27;
  sub_18F143B8C(v17, a6 + *(v30 + 32));
  *(a6 + 64) = v25;
  result = v33;
  *(a6 + 24) = v32;
  *(a6 + 8) = result;
  *(a6 + 40) = v23;
  *(a6 + 48) = v24;
  return result;
}

BOOL static ViewLocation.== infix(_:_:)(double *a1, double *a2)
{
  v5 = a1[2];
  v4 = a1[3];
  v7 = a1[4];
  v6 = a1[5];
  v9 = a2[2];
  v8 = a2[3];
  v11 = a2[4];
  v10 = a2[5];
  if (!sub_18F27DDB0(*a1, *a2) || !sub_18F27DDB0(a1[1], a2[1]) || !sub_18F27DDB0(v5, v9) || !sub_18F27DDB0(v4, v8) || !sub_18F27DDB0(v7, v11))
  {
    return 0;
  }

  return sub_18F27DDB0(v6, v10);
}

uint64_t sub_18F27DB1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = &type metadata for EntityIdentifier;
  v15 = &protocol witness table for EntityIdentifier;
  v8 = swift_allocObject();
  *&v13 = v8;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  sub_18F0FF968(&v13, v12);
  __swift_project_boxed_opaque_existential_1Tm(v12, v12[3]);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F23311C();
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_1Tm(v12);
  return v10;
}

id sub_18F27DBE8()
{
  type metadata accessor for IntentPerson(0);
  OUTLINED_FUNCTION_10_0();
  v2 = MEMORY[0x1EEE9AC00](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2;
  v12 = &protocol witness table for IntentPerson;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10);
  sub_18F27EC60(v0, boxed_opaque_existential_1, type metadata accessor for IntentPerson);
  sub_18F0FF968(&v10, v9);
  v6 = __swift_project_boxed_opaque_existential_1Tm(v9, v9[3]);
  sub_18F27EC60(v6, v4, type metadata accessor for IntentPerson);
  v7 = sub_18F233FA8(v4);
  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return v7;
}

void __swiftcall ViewLocation.init(_:)(AppIntents::ViewLocation *__return_ptr retstr, __C::CGRect a2)
{
  retstr->x = a2.origin.x;
  retstr->y = a2.origin.y;
  retstr->z = NAN;
  retstr->width = a2.size.width;
  retstr->height = a2.size.height;
  retstr->depth = NAN;
}

void sub_18F27DD10()
{
  xmmword_1ED6FCD78 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&qword_1ED6FCD88 = xmmword_1ED6FCD78;
  OUTLINED_FUNCTION_3_35(&xmmword_1ED6FCD78, xmmword_1ED6FCD78);
}

void __swiftcall ViewLocation.init()(AppIntents::ViewLocation *__return_ptr retstr)
{
  v1 = vdupq_n_s64(0x7FF8000000000000uLL);
  *&retstr->x = v1;
  *&retstr->z = v1;
  OUTLINED_FUNCTION_3_35(retstr, v1);
}

double static ViewLocation.unknown.getter@<D0>(_OWORD *a1@<X8>)
{
  if (qword_1ED6FCD70 != -1)
  {
    swift_once();
  }

  v2 = *&qword_1ED6FCD88;
  *a1 = xmmword_1ED6FCD78;
  a1[1] = v2;
  result = *&xmmword_1ED6FCD98;
  a1[2] = xmmword_1ED6FCD98;
  return result;
}

void __swiftcall ViewLocation.init(x:y:z:width:height:depth:)(AppIntents::ViewLocation *__return_ptr retstr, Swift::Double x, Swift::Double y, Swift::Double z, Swift::Double width, Swift::Double height, Swift::Double depth)
{
  retstr->x = x;
  retstr->y = y;
  retstr->z = z;
  retstr->width = width;
  retstr->height = height;
  retstr->depth = depth;
}

uint64_t ViewLocation.hash(into:)()
{
  sub_18F521FFC();
  sub_18F521FFC();
  sub_18F521FFC();
  sub_18F521FFC();
  sub_18F521FFC();

  return sub_18F521FFC();
}

uint64_t ViewLocation.hashValue.getter()
{
  sub_18F522EFC();
  sub_18F521FFC();
  sub_18F521FFC();
  sub_18F521FFC();
  sub_18F521FFC();
  sub_18F521FFC();
  sub_18F521FFC();
  return sub_18F522F4C();
}

uint64_t sub_18F27DF38()
{
  sub_18F522EFC();
  sub_18F521FFC();
  sub_18F521FFC();
  sub_18F521FFC();
  sub_18F521FFC();
  sub_18F521FFC();
  sub_18F521FFC();
  return sub_18F522F4C();
}

void ViewEntityIdentifier.location.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 8);
  *(a1 + 16) = v2;
  OUTLINED_FUNCTION_3_35(a1, *(v1 + 40));
}

uint64_t static DisplayRepresentation.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EACCF4D8 != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  v2 = type metadata accessor for DisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, qword_1EACD3CD0);
  swift_beginAccess();
  OUTLINED_FUNCTION_1_54();
  return sub_18F27EC60(v3, a1, v4);
}

__n128 ViewEntityIdentifier.init(lnValue:interactionId:structuredDataRepresentations:displayRepresentation:visualState:location:)@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a5;
  v12 = *(a6 + 32);
  v13 = *(a6 + 40);
  *a7 = a1;
  *(a7 + 56) = a2;
  v14 = type metadata accessor for ViewEntityIdentifier();
  *(a7 + *(v14 + 36)) = a3;
  sub_18F143B8C(a4, a7 + *(v14 + 32));
  *(a7 + 64) = v11;
  result = *a6;
  *(a7 + 24) = *(a6 + 16);
  *(a7 + 8) = result;
  *(a7 + 40) = v12;
  *(a7 + 48) = v13;
  return result;
}

uint64_t ViewEntityIdentifier.init(for:interactionId:location:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v15 = OUTLINED_FUNCTION_10_28(a1);
  v7 = a1[3];
  v8 = a1[4];
  v9 = OUTLINED_FUNCTION_56();
  __swift_project_boxed_opaque_existential_1Tm(v9, v10);
  AppEntity.fullyQualifiedIdentifier.getter(v7, v8, v17);
  v11 = static AppEntity.structuredDataRepresentations.getter();

  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  OUTLINED_FUNCTION_7_30();
  v12 = OUTLINED_FUNCTION_8_27();
  v3(v12);
  *a3 = v15;
  *(a3 + 56) = a2;
  *(a3 + *(v4 + 36)) = v11;
  *(a3 + 64) = 0;
  v13 = OUTLINED_FUNCTION_9_29();

  return __swift_destroy_boxed_opaque_existential_1Tm(v13);
}

__n128 ViewEntityIdentifier.init(identifier:interactionId:location:)@<Q0>(uint64_t *a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16 = *(a3 + 16);
  v17 = *a3;
  v6 = *(a3 + 32);
  v7 = *(a3 + 40);
  v8 = sub_18F27DB1C(*a1, a1[1], a1[2], a1[3]);
  v9 = static AppEntity.structuredDataRepresentations.getter();

  v10 = type metadata accessor for ViewEntityIdentifier();
  v11 = *(v10 + 32);
  if (qword_1EACCF4D8 != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  v12 = type metadata accessor for DisplayRepresentation();
  v13 = __swift_project_value_buffer(v12, qword_1EACD3CD0);
  swift_beginAccess();
  OUTLINED_FUNCTION_1_54();
  sub_18F27EC60(v13, a4 + v11, v14);
  *a4 = v8;
  *(a4 + 56) = a2;
  *(a4 + *(v10 + 36)) = v9;
  *(a4 + 64) = 0;
  result = v17;
  *(a4 + 24) = v16;
  *(a4 + 8) = v17;
  *(a4 + 40) = v6;
  *(a4 + 48) = v7;
  return result;
}

void static ViewEntityIdentifier.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_18F0F21A8(0, &qword_1EACCE798);
  if ((sub_18F52243C() & 1) != 0 && *(a1 + 56) == *(a2 + 56))
  {
    v5 = *(a1 + 24);
    v4 = *(a1 + 32);
    v7 = *(a1 + 40);
    v6 = *(a1 + 48);
    v9 = *(a2 + 24);
    v8 = *(a2 + 32);
    v11 = *(a2 + 40);
    v10 = *(a2 + 48);
    if (sub_18F27DDB0(*(a1 + 8), *(a2 + 8)) && sub_18F27DDB0(*(a1 + 16), *(a2 + 16)) && sub_18F27DDB0(v5, v9) && sub_18F27DDB0(v4, v8) && sub_18F27DDB0(v7, v11) && sub_18F27DDB0(v6, v10))
    {
      v12 = type metadata accessor for ViewEntityIdentifier();
      if (*(a1 + *(v12 + 36)) == *(a2 + *(v12 + 36)) && *(a1 + 64) == *(a2 + 64))
      {

        static DisplayRepresentation.== infix(_:_:)();
      }
    }
  }
}

uint64_t ViewEntityIdentifier.hash(into:)(uint64_t a1)
{
  sub_18F52244C();
  sub_18F521FFC();
  sub_18F521FFC();
  sub_18F521FFC();
  sub_18F521FFC();
  sub_18F521FFC();
  sub_18F521FFC();
  sub_18F522F2C();
  v3 = type metadata accessor for ViewEntityIdentifier();
  MEMORY[0x193ADC4F0](*(v1 + *(v3 + 36)));
  MEMORY[0x193ADC4F0](*(v1 + 64));
  v4 = v1 + *(v3 + 32);
  result = type metadata accessor for DisplayRepresentation();
  v6 = (v4 + *(result + 28));
  v7 = v6[1];
  if (v7 >> 60 != 15)
  {
    v8 = *v6;

    return MEMORY[0x1EEDC45B0](a1, v8, v7);
  }

  return result;
}

uint64_t ViewEntityIdentifier.hashValue.getter()
{
  sub_18F522EFC();
  ViewEntityIdentifier.hash(into:)(v1);
  return sub_18F522F4C();
}

uint64_t sub_18F27E5F4()
{
  sub_18F522EFC();
  ViewEntityIdentifier.hash(into:)(v1);
  return sub_18F522F4C();
}

uint64_t ViewEntityIdentifier.init(for:interactionId:location:state:)@<X0>(void *a1@<X0>, int a2@<W1>, uint64_t *a3@<X3>, uint64_t a4@<X8>)
{
  v17 = *a3;
  v16 = OUTLINED_FUNCTION_10_28(a1);
  v8 = a1[3];
  v9 = a1[4];
  v10 = OUTLINED_FUNCTION_56();
  __swift_project_boxed_opaque_existential_1Tm(v10, v11);
  AppEntity.fullyQualifiedIdentifier.getter(v8, v9, v19);
  v12 = static AppEntity.structuredDataRepresentations.getter();

  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  OUTLINED_FUNCTION_7_30();
  v13 = OUTLINED_FUNCTION_8_27();
  v4(v13);
  *a4 = v16;
  *(a4 + 56) = a2;
  *(a4 + *(v5 + 36)) = v12;
  *(a4 + 64) = v17;
  v14 = OUTLINED_FUNCTION_9_29();

  return __swift_destroy_boxed_opaque_existential_1Tm(v14);
}

void ViewIntentIdentifier.location.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 24);
  *(a1 + 16) = v2;
  OUTLINED_FUNCTION_3_35(a1, *(v1 + 56));
}

void __swiftcall ViewIntentIdentifier.init(intentIdentifier:viewIdentifier:location:)(AppIntents::ViewIntentIdentifier *__return_ptr retstr, Swift::String intentIdentifier, Swift::Int viewIdentifier, AppIntents::ViewLocation *location)
{
  retstr->intentIdentifier = intentIdentifier;
  retstr->viewIdentifier = viewIdentifier;
  v4 = *&location->z;
  *&retstr->location.x = *&location->x;
  *&retstr->location.z = v4;
  *&retstr->location.height = *&location->height;
}

void sub_18F27E7A0()
{
  v0 = type metadata accessor for DisplayRepresentation();
  __swift_allocate_value_buffer(v0, qword_1EACD3CD0);
  v1 = OUTLINED_FUNCTION_56();
  __swift_project_value_buffer(v1, v2);
  DisplayRepresentation.init(stringLiteral:)();
}

uint64_t type metadata accessor for ViewEntityIdentifier()
{
  result = qword_1ED6FCA48;
  if (!qword_1ED6FCA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static DisplayRepresentation.empty.setter(uint64_t a1)
{
  if (qword_1EACCF4D8 != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  v2 = type metadata accessor for DisplayRepresentation();
  __swift_project_value_buffer(v2, qword_1EACD3CD0);
  swift_beginAccess();
  v3 = OUTLINED_FUNCTION_56();
  sub_18F27E948(v3, v4);
  swift_endAccess();
  return sub_18F14372C(a1);
}

uint64_t (*static DisplayRepresentation.empty.modify())()
{
  if (qword_1EACCF4D8 != -1)
  {
    OUTLINED_FUNCTION_0_58();
  }

  v0 = type metadata accessor for DisplayRepresentation();
  __swift_project_value_buffer(v0, qword_1EACD3CD0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_18F27E948(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayRepresentation();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

unint64_t sub_18F27E9B0()
{
  result = qword_1EACD3CE8;
  if (!qword_1EACD3CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3CE8);
  }

  return result;
}

unint64_t sub_18F27EA08()
{
  result = qword_1EACD3CF0;
  if (!qword_1EACD3CF0)
  {
    type metadata accessor for ViewEntityIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3CF0);
  }

  return result;
}

uint64_t sub_18F27EA60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18F27EA80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

void sub_18F27EAF0()
{
  sub_18F0F21A8(319, &unk_1ED6FE390);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DisplayRepresentation();
    if (v1 <= 0x3F)
    {
      type metadata accessor for LNStructuredDataRepresentations(319);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_18F27EBC0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 72))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_18F27EC00(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_18F27EC60(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_10_0();
  v4 = OUTLINED_FUNCTION_56();
  v5(v4);
  return a2;
}

uint64_t static IntentSideEffect.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) == 1)
  {
    if (v2)
    {
      if (*(a2 + 8))
      {
        return v3 != 0;
      }
    }

    else if (*(a2 + 8))
    {
      return v3 == 0;
    }
  }

  else
  {
    if (v2 == v3)
    {
      v5 = *(a2 + 8);
    }

    else
    {
      v5 = 1;
    }

    if (v5 != 1)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t IntentSideEffect.hash(into:)()
{
  v1 = *v0;
  if (*(v0 + 8) == 1)
  {
    OUTLINED_FUNCTION_2_11();
  }

  else
  {
    MEMORY[0x193ADC4F0](2);
  }

  return MEMORY[0x193ADC4F0](v1);
}

uint64_t IntentSideEffect.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_18F522EFC();
  if (v2 == 1)
  {
    OUTLINED_FUNCTION_2_11();
  }

  else
  {
    MEMORY[0x193ADC4F0](2);
  }

  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

AppIntents::IntentSideEffect::Kind_optional __swiftcall IntentSideEffect.Kind.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if ((rawValue + 1) < 3)
  {
    v2 = rawValue + 1;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_18F27EE04@<X0>(uint64_t *a1@<X8>)
{
  result = IntentSideEffect.Kind.rawValue.getter();
  *a1 = result;
  return result;
}

_BYTE *IntentSideEffect.init(kind:idempotent:)@<X0>(_BYTE *result@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v3 = *result;
  v4 = (a2 & 1) == 0;
  if (a2 == 2)
  {
    v4 = -1;
  }

  if (v3 == 1)
  {
    v4 = 1;
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  if (*result)
  {
    v3 = v4;
    v6 = v5;
  }

  else
  {
    v6 = 1;
  }

  *a3 = v3;
  *(a3 + 8) = v6;
  return result;
}

unint64_t sub_18F27EE78()
{
  result = qword_1EACD3CF8;
  if (!qword_1EACD3CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3CF8);
  }

  return result;
}

unint64_t sub_18F27EED0()
{
  result = qword_1EACD3D00;
  if (!qword_1EACD3D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3D00);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentSideEffect.Kind(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F27F018()
{
  result = qword_1EACD3D08;
  if (!qword_1EACD3D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3D08);
  }

  return result;
}

unint64_t sub_18F27F078()
{
  result = qword_1EACD3D10;
  if (!qword_1EACD3D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3D10);
  }

  return result;
}

unint64_t sub_18F27F0D0()
{
  result = qword_1EACD3D18;
  if (!qword_1EACD3D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3D18);
  }

  return result;
}

unint64_t sub_18F27F128()
{
  result = qword_1EACD3D20;
  if (!qword_1EACD3D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3D20);
  }

  return result;
}

unint64_t sub_18F27F180()
{
  result = qword_1EACD3D28[0];
  if (!qword_1EACD3D28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EACD3D28);
  }

  return result;
}

uint64_t sub_18F27F1D8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FB5F8;

  return PreparableIntent.prepare()();
}

uint64_t dispatch thunk of PreparableIntent.prepare()(uint64_t a1, uint64_t a2)
{
  v8 = (*(a2 + 16) + **(a2 + 16));
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_13_1(v4);
  *v5 = v6;
  v5[1] = sub_18F0FB5F8;

  return v8(a1, a2);
}

uint64_t sub_18F27F37C()
{
  OUTLINED_FUNCTION_69();
  v0 = OUTLINED_FUNCTION_6_4();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_2_53(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_18F27F3FC()
{
  OUTLINED_FUNCTION_69();
  v0 = OUTLINED_FUNCTION_6_4();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_2_53(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_18F27F47C()
{
  OUTLINED_FUNCTION_69();
  v0 = OUTLINED_FUNCTION_6_4();
  v1 = OUTLINED_FUNCTION_13_1(v0);
  *v1 = v2;
  v10 = OUTLINED_FUNCTION_2_53(v1, v3, v4, v5, v6, v7, v8, v9, v12);

  return v10();
}

uint64_t sub_18F27F504(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a1;
  v6[5] = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[8] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_51(AssociatedTypeWitness);
  v6[9] = v11;
  v6[10] = OUTLINED_FUNCTION_34_0();
  v6[11] = *(a5 + 24);
  v12 = swift_getAssociatedTypeWitness();
  v6[12] = v12;
  v13 = sub_18F52254C();
  v6[13] = v13;
  OUTLINED_FUNCTION_51(v13);
  v6[14] = v14;
  v6[15] = OUTLINED_FUNCTION_34_0();
  v6[16] = *(v12 - 8);
  v15 = OUTLINED_FUNCTION_34_0();
  v16 = *(a2 + 16);
  v17 = *(a2 + 24);
  v6[17] = v15;
  v6[18] = v16;
  v18 = *a3;
  v6[19] = v17;
  v6[20] = v18;
  v19 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_18F27F6B8()
{
  v1 = v0[15];
  v2 = v0[12];
  swift_getAssociatedConformanceWitness();
  v3 = OUTLINED_FUNCTION_5_36();
  v4(v3);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v5 = v0[4];
    (*(v0[14] + 8))(v0[15], v0[13]);
    v6 = type metadata accessor for DisplayRepresentation();
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);

    OUTLINED_FUNCTION_6();

    return v7();
  }

  else
  {
    v9 = v0[20];
    v11 = v0[16];
    v10 = v0[17];
    v12 = v0[12];
    (*(v11 + 32))(v10, v0[15], v12);
    v13 = OUTLINED_FUNCTION_9_30();
    v14(v13);
    sub_18F18C388(v12, v12);
    OUTLINED_FUNCTION_17_28();
    v15 = sub_18F521CDC();
    (*(v11 + 16))(v16, v10, v12);
    v0[21] = sub_18F129FD4(v15);
    v0[2] = v9;
    v17 = swift_task_alloc();
    v0[22] = v17;
    swift_getAssociatedConformanceWitness();
    *v17 = v0;
    v17[1] = sub_18F27F92C;

    return sub_18F192F04();
  }
}

uint64_t sub_18F27F92C()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  v4[23] = v0;

  if (v0)
  {
    (*(v4[9] + 8))(v4[10], v4[8]);

    v6 = sub_18F27FBDC;
  }

  else
  {
    v8 = v4[9];
    v7 = v4[10];
    v9 = v4[8];
    v4[24] = v3;
    (*(v8 + 8))(v7, v9);

    v6 = sub_18F27FA8C;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_18F27FA8C()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[12];
  type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_43_1();
  swift_getAssociatedConformanceWitness();
  v4 = sub_18F52170C();

  v0[3] = v4;
  sub_18F5216FC();
  swift_getWitnessTable();
  sub_18F52211C();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_6();

  return v5();
}

uint64_t sub_18F27FBDC()
{
  OUTLINED_FUNCTION_21();
  (*(v0[16] + 8))(v0[17], v0[12]);

  v1 = v0[1];

  return v1();
}

id AppEntity.asValueWithDisplayRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_11_0();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  (*(*(*(v6 + 16) + 8) + 16))(a2);
  v7 = sub_18F0F21A8(0, &qword_1ED6FE640);
  OUTLINED_FUNCTION_26_1();
  v8();
  v9 = OUTLINED_FUNCTION_43_1();
  v11 = sub_18F141AA0(v9, v10, a2, a3);
  v17[3] = v7;
  v12 = OUTLINED_FUNCTION_16_26(v11);
  sub_18F13FE10();
  v14 = v13;
  v15 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  return sub_18F141064(v17, v12, v14);
}

uint64_t sub_18F27FDBC(uint64_t a1)
{
  v13 = MEMORY[0x1E69E7CC0];
  v10[2] = &v13;
  sub_18F11D980(sub_18F281150, v10, a1);
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_18F52279C();
  v1 = sub_18F52307C();
  v3 = v2;

  v11 = v1;
  v12 = v3;
  MEMORY[0x193ADB000](0x747265706F727028, 0xEE005B203A736569);
  v10[3] = v13;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
  OUTLINED_FUNCTION_26_1();
  sub_18F1B8B98(v4, v5);
  v6 = sub_18F5217AC();
  v8 = v7;

  MEMORY[0x193ADB000](v6, v8);

  MEMORY[0x193ADB000](10589, 0xE200000000000000);

  return v11;
}

uint64_t sub_18F27FF4C()
{
  OUTLINED_FUNCTION_21();
  v3 = v2;
  v1[5] = v4;
  v1[6] = v0;
  v1[3] = v5;
  v1[4] = v6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[7] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_51(AssociatedTypeWitness);
  v1[8] = v8;
  v1[9] = OUTLINED_FUNCTION_34_0();
  v9 = swift_getAssociatedTypeWitness();
  v1[10] = v9;
  v10 = sub_18F52254C();
  v1[11] = v10;
  OUTLINED_FUNCTION_51(v10);
  v1[12] = v11;
  v1[13] = OUTLINED_FUNCTION_34_0();
  v1[14] = *(v9 - 8);
  v12 = OUTLINED_FUNCTION_34_0();
  v13 = *(v3 + 16);
  v14 = *(v3 + 24);
  v1[15] = v12;
  v1[16] = v13;
  v1[17] = v14;
  v15 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_18F2800E4()
{
  v1 = v0[13];
  v2 = v0[10];
  swift_getAssociatedConformanceWitness();
  v3 = OUTLINED_FUNCTION_5_36();
  v4(v3);
  if (__swift_getEnumTagSinglePayload(v1, 1, v2) == 1)
  {
    v5 = v0[3];
    v6 = v0[4];
    (*(v0[12] + 8))(v0[13], v0[11]);
    __swift_storeEnumTagSinglePayload(v5, 1, 1, v6);

    OUTLINED_FUNCTION_6();

    return v7();
  }

  else
  {
    v10 = v0[14];
    v9 = v0[15];
    v11 = v0[10];
    (*(v10 + 32))(v9, v0[13], v11);
    v12 = OUTLINED_FUNCTION_9_30();
    v13(v12);
    sub_18F18C388(v11, v11);
    OUTLINED_FUNCTION_17_28();
    v14 = sub_18F521CDC();
    (*(v10 + 16))(v15, v9, v11);
    v16 = sub_18F129FD4(v14);
    v0[18] = v16;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_10_29(AssociatedConformanceWitness);
    v20 = (v18 + *v18);
    v19 = swift_task_alloc();
    v0[19] = v19;
    *v19 = v0;
    OUTLINED_FUNCTION_14_29(v19);

    return v20(v16);
  }
}

uint64_t sub_18F280390(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  *v6 = *v2;
  v5[20] = v1;

  v7 = v4[9];
  v8 = v4[8];
  v9 = v4[7];
  if (v1)
  {
    (*(v8 + 8))(v7, v9);

    v10 = sub_18F28062C;
  }

  else
  {
    v5[21] = a1;
    (*(v8 + 8))(v7, v9);

    v10 = sub_18F280534;
  }

  return MEMORY[0x1EEE6DFA0](v10, 0, 0);
}

uint64_t sub_18F280534()
{
  OUTLINED_FUNCTION_29();
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[10];
  v0[2] = v0[21];
  sub_18F521DBC();
  swift_getWitnessTable();
  sub_18F52211C();
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_6();

  return v4();
}

uint64_t sub_18F28062C()
{
  OUTLINED_FUNCTION_21();
  (*(v0[14] + 8))(v0[15], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_18F2806C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4[7] = AssociatedTypeWitness;
  OUTLINED_FUNCTION_51(AssociatedTypeWitness);
  v4[8] = v6;
  v4[9] = OUTLINED_FUNCTION_34_0();
  v7 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F28078C()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  (*(v1 + 56))(v2, v1);
  v0[2] = v3;
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EACD1E80);
  swift_getAssociatedTypeWitness();
  sub_18F1B8B98(&qword_1EACD1F88, qword_1EACD1E80);
  v5 = sub_18F521B3C();
  v0[10] = v5;

  OUTLINED_FUNCTION_43_1();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_10_29(AssociatedConformanceWitness);
  v10 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  OUTLINED_FUNCTION_14_29(v8);

  return v10(v5);
}

uint64_t sub_18F2809A8()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v4 = *v1;
  v5 = *(*v1 + 64);
  v6 = *v1;
  *(*v1 + 96) = v0;

  (*(v5 + 8))(*(v4 + 72), *(v4 + 56));

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18F280B7C, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(v3);
  }
}

uint64_t sub_18F280B7C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18F280BE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 16))(v1, v2, AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t sub_18F280C9C(void *a1, uint64_t *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1Tm(a1, v3);
  v5 = (*(v4 + 64))(v3, v4);
  v7 = v6;
  sub_18F166FA8();
  v8 = *(*a2 + 16);
  result = sub_18F167060(v8);
  v10 = *a2;
  *(v10 + 16) = v8 + 1;
  v11 = v10 + 16 * v8;
  *(v11 + 32) = v5;
  *(v11 + 40) = v7;
  return result;
}

uint64_t sub_18F280D34()
{
  OUTLINED_FUNCTION_29();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v1[4] = v2;
  v1[5] = v0;
  v1[3] = v4;
  OUTLINED_FUNCTION_11_0();
  v1[6] = v8;
  v1[7] = OUTLINED_FUNCTION_34_0();
  type metadata accessor for DisplayRepresentation();
  v9 = OUTLINED_FUNCTION_34_0();
  v1[8] = v9;
  v1[2] = *v7;
  v10 = *(*(v3 + 16) + 8);
  v13 = (*(v10 + 24) + **(v10 + 24));
  v11 = swift_task_alloc();
  v1[9] = v11;
  *v11 = v1;
  v11[1] = sub_18F280EE8;

  return v13(v9, v1 + 2, v5, v10);
}

uint64_t sub_18F280EE8()
{
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F280FD4()
{
  v16 = v0;
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v6 = v0[3];
  v5 = v0[4];
  v7 = sub_18F0F21A8(0, &qword_1ED6FE640);
  (*(v4 + 16))(v1, v3, v6);
  v15[3] = v7;
  v15[0] = sub_18F141AA0(v1, v7, v6, v5);
  v8 = static AppEntity.valueType.getter(v6, v5);
  sub_18F13FE10();
  v10 = v9;
  v11 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  v12 = sub_18F141064(v15, v8, v10);
  sub_18F14372C(v2);

  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_18F28116C()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  return v0;
}

uint64_t sub_18F28119C()
{
  sub_18F28116C();

  return MEMORY[0x1EEE6BDC0](v0, 72, 7);
}

uint64_t IntentParameterSummary.init()@<X0>(uint64_t a1@<X8>)
{
  sub_18F52288C();
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  result = sub_18F521D2C();
  *(a1 + 40) = result;
  return result;
}

uint64_t IntentParameterSummary.init(_:table:_:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v12 = *a1;
  v9 = *(a1 + 2);
  v10 = sub_18F12B5CC(0);
  *a5 = v12;
  *(a5 + 16) = v9;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  result = a4(v10);
  *(a5 + 40) = result;
  return result;
}

uint64_t IntentParameterSummary.init(_:table:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *a1;
  v7 = *(a1 + 2);
  sub_18F12B5CC(0);
  *a4 = v9;
  *(a4 + 16) = v7;
  *(a4 + 24) = a2;
  *(a4 + 32) = a3;
  sub_18F52288C();
  result = sub_18F521D2C();
  *(a4 + 40) = result;
  return result;
}

uint64_t IntentParameterSummary.init(_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  result = a1();
  *(a2 + 40) = result;
  return result;
}

uint64_t sub_18F28138C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_10AppIntents22ParameterSummaryStringVyxGSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_18F2813E0(uint64_t a1, int a2)
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

uint64_t sub_18F281420(uint64_t result, int a2, int a3)
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

_BYTE *sub_18F281484(_BYTE *result, int a2, int a3)
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

id sub_18F281538(uint64_t a1, unint64_t a2)
{
  v4 = sub_18F520D2C();
  v5 = [swift_getObjCClassFromMetadata() imageWithImageData_];

  sub_18F123A1C(a1, a2);
  return v5;
}

uint64_t IntentNote.createdDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntentNote() + 32);
  sub_18F52085C();
  OUTLINED_FUNCTION_10_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for IntentNote()
{
  result = qword_1EACCE6C0;
  if (!qword_1EACCE6C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t IntentNote.modifiedDateComponents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for IntentNote() + 36);
  sub_18F52085C();
  OUTLINED_FUNCTION_10_0();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t IntentNote.init(title:identifier:contents:groupName:createdDateComponents:modifiedDateComponents:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 3) = a4;
  *(a9 + 4) = a5;
  *(a9 + 5) = a6;
  *(a9 + 6) = a7;
  v12 = type metadata accessor for IntentNote();
  v13 = *(v12 + 32);
  v14 = sub_18F52085C();
  OUTLINED_FUNCTION_10_0();
  v18 = *(v15 + 32);
  v18(&a9[v13], a8, v14);
  v16 = &a9[*(v12 + 36)];

  return (v18)(v16, a10, v14);
}

uint64_t IntentNote.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - v8;
  v10 = sub_18F52187C();
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_18F52186C();
  sub_18F52185C();
  sub_18F52183C();
  sub_18F52185C();
  sub_18F520AEC();
  v12 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v12);
  v16 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = type metadata accessor for DisplayRepresentation();
  v21 = v20[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v12);
  v25 = v20[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v16);
  *(a1 + v20[7]) = xmmword_18F540410;
  *(a1 + v20[8]) = 0;
  *(a1 + v20[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v29, v30, v31, v12);
  sub_18F0FF800(v9, a1 + v21, &qword_1EACCF7A8);
  return sub_18F0FF800(v5, a1 + v25, &qword_1EACD0270);
}

id static IntentNote.valueType.getter()
{
  v0 = [objc_opt_self() noteValueType];

  return v0;
}

id IntentNote.projectedAsValue.getter@<X0>(void *a1@<X8>)
{
  v3 = type metadata accessor for IntentNote();
  v4 = OUTLINED_FUNCTION_10(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18F0F21A8(0, &qword_1EACD3110);
  sub_18F281B6C(v1, v6);
  result = sub_18F281BD0(v6);
  a1[3] = v7;
  *a1 = result;
  return result;
}

uint64_t sub_18F281B6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IntentNote();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id sub_18F281BD0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  if (v3)
  {
    sub_18F5228CC();
    v4 = (v2 + 48);
    do
    {
      v5 = *v4;
      if (*v4)
      {
        sub_18F0F21A8(0, &qword_1ED6FEFC0);
        v6 = OUTLINED_FUNCTION_78();
        sub_18F282BC4(v6, v7, 1);
        v8 = OUTLINED_FUNCTION_78();
        sub_18F16AAE0(v8, v9);
        v10 = OUTLINED_FUNCTION_78();
        v12 = sub_18F281538(v10, v11);
        [objc_allocWithZone(MEMORY[0x1E696E870]) initWithImage_];
      }

      else
      {
        v13 = objc_allocWithZone(MEMORY[0x1E696EAB0]);
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
        OUTLINED_FUNCTION_78();
        v12 = sub_18F5218AC();
        [v13 initWithText_];
      }

      v14 = OUTLINED_FUNCTION_78();
      sub_18F282B58(v14, v15, v5);
      sub_18F52289C();
      sub_18F5228DC();
      sub_18F5228EC();
      sub_18F5228AC();
      v4 += 24;
      --v3;
    }

    while (v3);
  }

  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_18F0F21A8(0, &qword_1EACD1AA8);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v17 = sub_18F39B210();
  sub_18F0F21A8(0, &qword_1EACD3E70);
  v18 = sub_18F521C8C();

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v19 = sub_18F39B210();
  type metadata accessor for IntentNote();
  v20 = sub_18F52082C();
  v21 = sub_18F52082C();
  v22 = sub_18F5218AC();
  v23 = [v16 initWithTitle:v17 contents:v18 groupName:v19 createdDateComponents:v20 modifiedDateComponents:v21 identifier:v22];

  sub_18F282B68(a1);
  return v23;
}

uint64_t sub_18F281E50(uint64_t a1)
{
  result = sub_18F281F40(&qword_1EACD3E30);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_18F281E94(uint64_t a1)
{
  result = sub_18F281F40(&qword_1EACD3E38);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F281EDC()
{
  result = qword_1EACD3E40;
  if (!qword_1EACD3E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD3E48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3E40);
  }

  return result;
}

uint64_t sub_18F281F40(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IntentNote();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_18F281F90()
{
  result = qword_1EACD44C0;
  if (!qword_1EACD44C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD44C0);
  }

  return result;
}

uint64_t sub_18F281FE4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v4 || (sub_18F522D5C() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
    if (v6 || (sub_18F522D5C() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x73746E65746E6F63 && a2 == 0xE800000000000000;
      if (v7 || (sub_18F522D5C() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6D614E70756F7267 && a2 == 0xE900000000000065;
        if (v8 || (sub_18F522D5C() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000015 && 0x800000018F527830 == a2;
          if (v9 || (sub_18F522D5C() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0xD000000000000016 && 0x800000018F527850 == a2)
          {

            return 5;
          }

          else
          {
            v11 = sub_18F522D5C();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t sub_18F2821E4(char a1)
{
  result = 0x656C746974;
  switch(a1)
  {
    case 1:
      result = 0x696669746E656469;
      break;
    case 2:
      result = 0x73746E65746E6F63;
      break;
    case 3:
      result = 0x6D614E70756F7267;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    case 5:
      result = 0xD000000000000016;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_18F2822A8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3E58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F282A88();
  sub_18F522FEC();
  LOBYTE(v12) = 0;
  OUTLINED_FUNCTION_1_3();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    OUTLINED_FUNCTION_1_3();
    *&v12 = *(v3 + 32);
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
    sub_18F282ADC();
    OUTLINED_FUNCTION_2_54();
    sub_18F522C2C();
    LOBYTE(v12) = 3;
    OUTLINED_FUNCTION_1_3();
    v9 = *(v3 + 72);
    v12 = *(v3 + 56);
    v13 = v9;
    v14 = 4;
    sub_18F1728C8();
    OUTLINED_FUNCTION_2_54();
    sub_18F522C2C();
    v10 = *(v3 + 104);
    v12 = *(v3 + 88);
    v13 = v10;
    v14 = 5;
    OUTLINED_FUNCTION_2_54();
    sub_18F522C2C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_18F2824D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_18F281FE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_18F2824F8(uint64_t a1)
{
  v2 = sub_18F282A88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F282534(uint64_t a1)
{
  v2 = sub_18F282A88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_18F282588@<X0>(void *a1@<X8>)
{
  v27 = v1[2];
  v3 = v1[4];
  v4 = *(v3 + 16);
  v25 = *v1;
  v26 = v1[3];
  v24 = v1[1];
  if (v4)
  {
    v28 = MEMORY[0x1E69E7CC0];
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    sub_18F3AA158();
    v5 = v28;
    v6 = (v3 + 48);
    do
    {
      if (*v6)
      {
        v7 = 0;
        v8 = 0xE000000000000000;
      }

      else
      {
        v7 = *(v6 - 2);
        v8 = *(v6 - 1);
        _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      }

      v9 = *(v28 + 16);
      if (v9 >= *(v28 + 24) >> 1)
      {
        sub_18F3AA158();
      }

      *(v28 + 16) = v9 + 1;
      v10 = v28 + 16 * v9;
      *(v10 + 32) = v7;
      *(v10 + 40) = v8;
      v6 += 24;
      --v4;
    }

    while (v4);
  }

  else
  {
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v5 = MEMORY[0x1E69E7CC0];
  }

  v11 = v1[6];
  v23 = v1[5];
  type metadata accessor for IntentNote();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v12 = sub_18F4506B8();
  v14 = v13;
  v16 = v15;
  v18 = v17 & 1;
  result = sub_18F4506B8();
  *a1 = v25;
  a1[1] = v24;
  a1[2] = v27;
  a1[3] = v26;
  a1[4] = v5;
  a1[5] = v23;
  a1[6] = v11;
  a1[7] = v12;
  a1[8] = v18;
  a1[9] = v14;
  a1[10] = v16;
  a1[11] = result;
  a1[12] = v20 & 1;
  a1[13] = v21;
  a1[14] = v22;
  return result;
}

uint64_t dispatch thunk of NoteRepresentableEntity.noteRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F10DF80;

  return v9(a1, a2, a3);
}

void sub_18F2828AC()
{
  sub_18F282940();
  if (v0 <= 0x3F)
  {
    sub_18F52085C();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_18F282940()
{
  if (!qword_1EACCDD80)
  {
    v0 = sub_18F521DBC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EACCDD80);
    }
  }
}

uint64_t sub_18F2829B4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 120))
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

uint64_t sub_18F282A08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 120) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_18F282A88()
{
  result = qword_1EACD3E60;
  if (!qword_1EACD3E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3E60);
  }

  return result;
}

unint64_t sub_18F282ADC()
{
  result = qword_1EACD3E68;
  if (!qword_1EACD3E68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD0400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3E68);
  }

  return result;
}

uint64_t sub_18F282B58(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_18F123A1C(a1, a2);
  }

  else
  {
  }
}

uint64_t sub_18F282B68(uint64_t a1)
{
  v2 = type metadata accessor for IntentNote();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18F282BC4(uint64_t a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return sub_18F16AAE0(a1, a2);
  }

  else
  {
    return _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }
}

_BYTE *storeEnumTagSinglePayload for IntentNote.NoteNLGParams.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_18F282CB4()
{
  result = qword_1EACD3E78;
  if (!qword_1EACD3E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3E78);
  }

  return result;
}

unint64_t sub_18F282D0C()
{
  result = qword_1EACD3E80;
  if (!qword_1EACD3E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3E80);
  }

  return result;
}

unint64_t sub_18F282D64()
{
  result = qword_1EACD3E88;
  if (!qword_1EACD3E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3E88);
  }

  return result;
}

void sub_18F2833C0()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F283504()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F2835AC()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F2837EC()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(v7 - v6, v1, v2);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v0();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F2839E0()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, v1, 0, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F283AEC()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, 0, v1, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F284560()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F2846A8()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4_18();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F284754()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_4_18();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F284998()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v3 = OUTLINED_FUNCTION_4_18();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  (*(v5 + 16))(v8 - v7, v0, v3);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v2();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F284B90()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, v1, 0, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F284C9C()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, 0, v1, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F285484()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F2855DC()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  OUTLINED_FUNCTION_2_55();
  v2 = sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F285698()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  OUTLINED_FUNCTION_2_55();
  v2 = sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F2858EC()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  OUTLINED_FUNCTION_2_55();
  v3 = sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21_20();
  v7 = OUTLINED_FUNCTION_8_28();
  v8(v7);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v2();
  (*(v5 + 8))(v0, v3);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F285B18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t))
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_2_55();
  sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21_20();
  v22 = OUTLINED_FUNCTION_8_28();
  v23(v22);
  v24 = OUTLINED_FUNCTION_123();
  a21(v24);
  v25 = OUTLINED_FUNCTION_26_22();
  v26(v25);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F285C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void (*a21)(uint64_t))
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_2_55();
  sub_18F520B3C();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_21_20();
  v22 = OUTLINED_FUNCTION_8_28();
  v23(v22);
  v24 = OUTLINED_FUNCTION_123();
  a21(v24);
  v25 = OUTLINED_FUNCTION_26_22();
  v26(v25);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F2866D0()
{
  OUTLINED_FUNCTION_102();
  v1 = v0;
  v2 = sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v1();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F286814()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F2868BC()
{
  OUTLINED_FUNCTION_102();
  v1 = OUTLINED_FUNCTION_4_4();
  v2 = OUTLINED_FUNCTION_10(v1);
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_10_6();
  OUTLINED_FUNCTION_23_0();
  OUTLINED_FUNCTION_28_3();
  v0();
  OUTLINED_FUNCTION_101_0();
}

void sub_18F286AFC()
{
  OUTLINED_FUNCTION_18();
  v2 = OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_0();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4();
  (*(v4 + 16))(v7 - v6, v1, v2);
  OUTLINED_FUNCTION_11_1();
  OUTLINED_FUNCTION_28_3();
  v0();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F286CF0()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, v1, 0, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

void sub_18F286DFC()
{
  OUTLINED_FUNCTION_18();
  v14 = v5;
  v7 = v6;
  OUTLINED_FUNCTION_3_8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4();
  v10 = OUTLINED_FUNCTION_5_0(v9);
  v11(v10);
  v14(v3, v2, v4, 0, v1, v0, v7);
  v12 = OUTLINED_FUNCTION_9_3();
  v13(v12);
  OUTLINED_FUNCTION_15();
  OUTLINED_FUNCTION_16();
}

uint64_t IntentEnvironment.environmentIdentifier.getter()
{
  v1 = *v0;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  return v1;
}

AppIntents::IntentEnvironment_optional __swiftcall IntentEnvironment.init(rawValue:)(Swift::String rawValue)
{
  *v1 = rawValue;
  result.value.environmentIdentifier = rawValue;
  return result;
}

uint64_t sub_18F2871CC@<X0>(uint64_t *a1@<X8>)
{
  result = IntentEnvironment.environmentIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t IntentEnvironment.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v3);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v7);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_5_38();
  v10 = OUTLINED_FUNCTION_10(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_3_4();
  sub_18F52186C();
  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  sub_18F52183C();
  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  sub_18F520AEC();
  v11 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  v15 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  v19 = type metadata accessor for DisplayRepresentation();
  v20 = v19[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v21, v22, v23, v11);
  v24 = v19[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v25, v26, v27, v15);
  *(a1 + v19[7]) = xmmword_18F540410;
  *(a1 + v19[8]) = 0;
  *(a1 + v19[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v11);
  sub_18F0FF628(v1, a1 + v20, &qword_1EACCF7A8);
  return sub_18F0FF628(v6, a1 + v24, &qword_1EACD0270);
}

id static IntentEnvironment.valueType.getter()
{
  v0 = [objc_opt_self() environmentValueType];

  return v0;
}

id IntentEnvironment._asValue.getter()
{
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v4[3] = MEMORY[0x1E69E6158];
  v4[0] = sub_18F521AEC();
  v1 = [objc_opt_self() environmentValueType];
  v2 = objc_allocWithZone(MEMORY[0x1E69ACA88]);
  return sub_18F166E58(v4, v1);
}

uint64_t IntentEnvironment.defaultDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0270);
  OUTLINED_FUNCTION_10(v4);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v35 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_5_38();
  v11 = OUTLINED_FUNCTION_10(v10);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_3_4();
  v12 = *v1;
  v13 = v1[1];
  sub_18F52186C();
  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  v35[0] = v12;
  v35[1] = v13;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F521AEC();
  sub_18F52183C();

  OUTLINED_FUNCTION_132();
  sub_18F52185C();
  sub_18F520AEC();
  v14 = sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
  v18 = type metadata accessor for DisplayRepresentation.Image(0);
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v18);
  v22 = type metadata accessor for DisplayRepresentation();
  v23 = v22[5];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v14);
  v27 = v22[6];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v28, v29, v30, v18);
  *(a1 + v22[7]) = xmmword_18F540410;
  *(a1 + v22[8]) = 0;
  *(a1 + v22[9]) = MEMORY[0x1E69E7CC0];
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v14);
  sub_18F0FF628(v2, a1 + v23, &qword_1EACCF7A8);
  sub_18F0FF628(v7, a1 + v27, &qword_1EACD0270);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v22);
}

uint64_t sub_18F28775C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3EC0);
  v3 = *(v2 - 8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_18F287C90();
  sub_18F522FEC();
  sub_18F522BFC();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_18F2878A4(uint64_t a1)
{
  v2 = sub_18F287C90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18F2878E0(uint64_t a1)
{
  v2 = sub_18F287C90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_18F287938(uint64_t a1)
{
  result = sub_18F287960();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F287960()
{
  result = qword_1EACD3E90;
  if (!qword_1EACD3E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3E90);
  }

  return result;
}

unint64_t sub_18F2879B4(uint64_t a1)
{
  result = sub_18F2879DC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18F2879DC()
{
  result = qword_1EACD3E98;
  if (!qword_1EACD3E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3E98);
  }

  return result;
}

unint64_t sub_18F287A34()
{
  result = qword_1EACD3EA0;
  if (!qword_1EACD3EA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EACD3EA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3EA0);
  }

  return result;
}

unint64_t sub_18F287A98()
{
  result = qword_1EACD3EB0;
  if (!qword_1EACD3EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3EB0);
  }

  return result;
}

unint64_t sub_18F287AF0()
{
  result = qword_1EACD3EB8;
  if (!qword_1EACD3EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3EB8);
  }

  return result;
}

uint64_t dispatch thunk of EnvironmentRepresentableEntity.environmentRepresentation.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_18F10DF80;

  return v9(a1, a2, a3);
}

unint64_t sub_18F287C90()
{
  result = qword_1EACD3EC8;
  if (!qword_1EACD3EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3EC8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for IntentEnvironment.EnvironmentNLGParams.CodingKeys(_BYTE *result, int a2, int a3)
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

unint64_t sub_18F287D94()
{
  result = qword_1EACD3ED0;
  if (!qword_1EACD3ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3ED0);
  }

  return result;
}

unint64_t sub_18F287DEC()
{
  result = qword_1EACD3ED8;
  if (!qword_1EACD3ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3ED8);
  }

  return result;
}

unint64_t sub_18F287E44()
{
  result = qword_1EACD3EE0;
  if (!qword_1EACD3EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EACD3EE0);
  }

  return result;
}

uint64_t sub_18F287EA0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_18F5218AC();
    v4 = sub_18F5218AC();
    v5 = [v2 localizedStringsForTable:v3 localization:v4];

    v6 = sub_18F5216BC();
    v7 = sub_18F19E680(0xD000000000000013, 0x800000018F528480, v6);
    if (v8)
    {
      v9 = v7;

      return v9;
    }

    v10 = OUTLINED_FUNCTION_0_59();
    v9 = sub_18F19E680(v10, v11, v6);
    v13 = v12;

    if (v13)
    {
      return v9;
    }
  }

  v14 = sub_18F3E4130(v2);
  if (!v14)
  {
    v18 = 0u;
    v19 = 0u;
LABEL_9:
    v15 = sub_18F3E4130(v2);
    if (v15)
    {
      v16 = v15;
      OUTLINED_FUNCTION_0_59();
      sub_18F19E300(v16, &v20);

      if (*(&v19 + 1))
      {
        sub_18F0EF148(&v18, &qword_1EACD0430);
      }
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    goto LABEL_13;
  }

  sub_18F19E300(v14, &v18);

  if (!*(&v19 + 1))
  {
    goto LABEL_9;
  }

  sub_18F118710(&v18, &v20);
LABEL_13:
  if (*(&v21 + 1))
  {
    if (swift_dynamicCast())
    {
      return v18;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_18F0EF148(&v20, &qword_1EACD0430);
    return 0;
  }
}

uint64_t sub_18F2880C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = sub_18F288138(a3, a4, a5, a6);
  v9 = sub_18F19ED7C(a1, a2, v8);

  if (v9)
  {
    return v9;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_18F288138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3EE8);
  OUTLINED_FUNCTION_0();
  v78 = v10;
  v79 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v81 = &v74 - v11;
  v12 = sub_18F520F1C();
  OUTLINED_FUNCTION_0();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    v18 = a4;
  }

  else
  {
    sub_18F520EDC();
    a3 = sub_18F520E8C();
    v18 = v19;
    (*(v14 + 8))(v17, v12);
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v20 = [v5 localizations];
  if (!v20)
  {
    sub_18F521CAC();
    v20 = sub_18F521C8C();
  }

  v21 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0038);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_18F53F800;
  *(v22 + 32) = a3;
  *(v22 + 40) = v18;
  v23 = sub_18F521C8C();

  v24 = [v21 preferredLocalizationsFromArray:v20 forPreferences:v23];

  v25 = sub_18F521CAC();
  if (!*(v25 + 16))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0400);
    return sub_18F5216CC();
  }

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();

  if (a2)
  {
    v26 = sub_18F5218AC();
  }

  else
  {
    v26 = 0;
  }

  v28 = sub_18F5218AC();

  v29 = [v5 localizedStringsForTable:v26 localization:v28];

  v30 = sub_18F5216BC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3EF0);
  v31 = v81;
  v32 = sub_18F52126C();
  MEMORY[0x1EEE9AC00](v32);
  *(&v74 - 2) = v31;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F3EED14(sub_18F2897FC, (&v74 - 4), v30);
  v34 = v33;

  v82 = v34;
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F288B98(&v82);

  v35 = 0;
  v36 = v82;
  v37 = v82[2];
  v38 = v82 + 8;
  v80 = MEMORY[0x1E69E7CC8];
  v77 = v82 + 8;
  while (2)
  {
    for (i = &v38[5 * v35]; ; i += 5)
    {
      if (v37 == v35)
      {

        (*(v78 + 8))(v81, v79);
        return v80;
      }

      if (v35 >= v36[2])
      {
        __break(1u);
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      if (!*(v30 + 16))
      {
        goto LABEL_18;
      }

      v40 = *(i - 1);
      v41 = *i;
      v42 = *(i - 4);
      v43 = *(i - 3);
      swift_bridgeObjectRetain_n();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v44 = sub_18F0F713C(v42, v43);
      v46 = v45;

      if (v46)
      {
        break;
      }

LABEL_18:
      ++v35;
    }

    v47 = (*(v30 + 56) + 16 * v44);
    v48 = *v47;
    v75 = v47[1];
    v76 = v48;
    v49 = v80;
    if (*(v80 + 16))
    {
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v50 = sub_18F0F713C(v40, v41);
      v52 = v51;

      v53 = MEMORY[0x1E69E7CC0];
      if (v52)
      {
        v54 = *(*(v49 + 56) + 8 * v50);
        goto LABEL_23;
      }
    }

    else
    {
      v54 = MEMORY[0x1E69E7CC0];
LABEL_23:
      _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
      v53 = v54;
    }

    v55 = v53;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v56 = v55;
    }

    else
    {
      sub_18F141818();
      v56 = v72;
    }

    v57 = *(v56 + 16);
    if (v57 >= *(v56 + 24) >> 1)
    {
      sub_18F141818();
      v56 = v73;
    }

    *(v56 + 16) = v57 + 1;
    v74 = v56;
    v58 = v56 + 16 * v57;
    v59 = v75;
    *(v58 + 32) = v76;
    *(v58 + 40) = v59;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    LODWORD(v76) = swift_isUniquelyReferenced_nonNull_native();
    v82 = v49;
    v60 = sub_18F0F713C(v40, v41);
    if (__OFADD__(*(v49 + 16), (v61 & 1) == 0))
    {
      goto LABEL_41;
    }

    v62 = v60;
    LODWORD(v80) = v61;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3EF8);
    if ((sub_18F5229DC() & 1) == 0)
    {
      v38 = v77;
      v66 = v74;
      v65 = v80;
LABEL_33:
      v67 = v82;
      v80 = v82;
      if (v65)
      {
        *(v82[7] + 8 * v62) = v66;

LABEL_37:
        ++v35;

        continue;
      }

      v82[(v62 >> 6) + 8] |= 1 << v62;
      v68 = (v67[6] + 16 * v62);
      *v68 = v40;
      v68[1] = v41;
      *(v67[7] + 8 * v62) = v66;
      v69 = v67[2];
      v70 = __OFADD__(v69, 1);
      v71 = v69 + 1;
      if (!v70)
      {
        v67[2] = v71;
        goto LABEL_37;
      }

LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    break;
  }

  v63 = sub_18F0F713C(v40, v41);
  v65 = v80;
  v38 = v77;
  if ((v80 & 1) == (v64 & 1))
  {
    v62 = v63;
    v66 = v74;
    goto LABEL_33;
  }

LABEL_43:
  sub_18F522E2C();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_18F28885C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F00);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F08);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = *a1;
  v13 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3EE8);
  sub_18F52128C();
  if (v2)
  {

    __swift_storeEnumTagSinglePayload(v7, 1, 1, v8);
LABEL_4:
    result = sub_18F0EF148(v7, &qword_1EACD3F00);
LABEL_5:
    *(a2 + 32) = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    goto LABEL_4;
  }

  v32 = v9;
  (*(v9 + 32))(v11, v7, v8);
  swift_getKeyPath();
  sub_18F52129C();

  v16 = v28;
  v15 = v29;
  if (!((v29 ^ v28) >> 14))
  {

    goto LABEL_11;
  }

  v26 = v30;
  v27 = v31;
  v17 = sub_18F289818(v28, v29, v30, v31, 10);
  if ((v18 & 0x100) == 0)
  {
    v19 = v18;
    v26 = v17;

    v20 = v32;
    if ((v19 & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_12:
    result = (*(v20 + 8))(v11, v8);
    goto LABEL_5;
  }

  v26 = sub_18F1DCB60(v16, v15, v26, v27, 10);
  v22 = v21;

  if (v22)
  {
LABEL_11:
    v20 = v32;
    goto LABEL_12;
  }

LABEL_13:
  swift_getKeyPath();
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  sub_18F52129C();

  v23 = MEMORY[0x193ADAF70](v28, v29, v30, v31);
  v25 = v24;

  result = (*(v32 + 8))(v11, v8);
  *a2 = v12;
  *(a2 + 8) = v13;
  *(a2 + 16) = v26;
  *(a2 + 24) = v23;
  *(a2 + 32) = v25;
  return result;
}

uint64_t sub_18F288B98(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_18F3BA94C();
  }

  v3 = *(v2 + 16);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_18F288C04(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_18F288C04(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_18F522C8C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0070);
        v6 = sub_18F521D3C();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_18F288E3C(v7, v8, a1, v4);
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
    return sub_18F288D08(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_18F288D08(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3 - 40;
    v6 = result - a3;
    while (2)
    {
      v21 = a3;
      v7 = (v4 + 40 * a3);
      v8 = v7[2];
      v9 = v7[3];
      v10 = v7[4];
      v19 = v6;
      v20 = v5;
      do
      {
        v11 = *(v5 + 16);
        v12 = v9 == *(v5 + 24) && v10 == *(v5 + 32);
        if (v12 || (result = sub_18F522D5C(), (result & 1) != 0))
        {
          if (v8 >= v11)
          {
            break;
          }
        }

        else
        {
          result = sub_18F522D5C();
          if ((result & 1) == 0)
          {
            break;
          }
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        v13 = *(v5 + 48);
        v8 = *(v5 + 56);
        v14 = *(v5 + 16);
        v16 = *(v5 + 32);
        v15 = *(v5 + 40);
        *(v5 + 40) = *v5;
        v9 = *(v5 + 64);
        v10 = *(v5 + 72);
        *(v5 + 56) = v14;
        *(v5 + 72) = v16;
        *v5 = v15;
        *(v5 + 8) = v13;
        *(v5 + 16) = v8;
        *(v5 + 24) = v9;
        *(v5 + 32) = v10;
        v5 -= 40;
      }

      while (!__CFADD__(v6++, 1));
      a3 = v21 + 1;
      v5 = v20 + 40;
      v6 = v19 - 1;
      if (v21 + 1 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_18F288E3C(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = a3[1];
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v7 = v5;
      v8 = v5 + 1;
      if ((v5 + 1) < v4)
      {
        v114 = v6;
        v9 = *a3;
        v10 = v5;
        v11 = v5 + 1;
        v12 = (*a3 + 40 * v8);
        v13 = v12[2];
        v14 = v12[3];
        v15 = v12[4];
        v117 = v10;
        v16 = (*a3 + 40 * v10);
        v17 = v16[2];
        v18 = v14 == v16[3] && v15 == v16[4];
        v120 = v4;
        if (v18 || (v19 = sub_18F522D5C(), v4 = v120, (v19 & 1) != 0))
        {
          v122 = v13 < v17;
        }

        else
        {
          v20 = sub_18F522D5C();
          v4 = v120;
          v122 = v20;
        }

        v21 = 0;
        v22 = (v117 + 2);
        v23 = (v9 + 40 * v117 + 112);
        v24 = v11;
        do
        {
          v25 = v22;
          v26 = v24;
          v27 = v21;
          if (v22 >= v4)
          {
            break;
          }

          v28 = *(v23 - 2);
          v29 = *(v23 - 7);
          v30 = *(v23 - 1) == *(v23 - 6) && *v23 == *(v23 - 5);
          if (v30 || (v125 = v22, v31 = sub_18F522D5C(), v25 = v125, v4 = v120, (v31 & 1) != 0))
          {
            v32 = v28 < v29;
          }

          else
          {
            v32 = sub_18F522D5C();
            v25 = v125;
            v4 = v120;
          }

          v22 = v25 + 1;
          v23 += 5;
          v24 = v26 + 1;
          v21 = v27 + 40;
        }

        while (((v122 ^ v32) & 1) == 0);
        if (v122)
        {
          v33 = v117;
          v6 = v114;
          if (v25 < v117)
          {
            goto LABEL_140;
          }

          if (v117 >= v25)
          {
            v8 = v25;
            v7 = v117;
            goto LABEL_33;
          }

          v34 = 0;
          do
          {
            if (v33 != v26)
            {
              if (!*a3)
              {
                goto LABEL_147;
              }

              v35 = *a3 + 40 * v117;
              v36 = (v35 + v34);
              v37 = v35 + v27;
              v38 = *v36;
              v39 = v36[1];
              v40 = v36[4];
              v41 = *(v36 + 1);
              v42 = *(v37 + 72);
              v43 = *(v37 + 56);
              *v36 = *(v37 + 40);
              *(v36 + 1) = v43;
              v36[4] = v42;
              *(v37 + 40) = v38;
              *(v37 + 48) = v39;
              *(v37 + 56) = v41;
              *(v37 + 72) = v40;
            }

            ++v33;
            v27 -= 40;
            v34 += 40;
          }

          while (v33 < v26--);
          v8 = v25;
        }

        else
        {
          v8 = v25;
          v6 = v114;
        }

        v7 = v117;
      }

LABEL_33:
      v45 = a3[1];
      if (v8 < v45)
      {
        if (__OFSUB__(v8, v7))
        {
          goto LABEL_139;
        }

        if (v8 - v7 < a4)
        {
          v46 = &v7[a4];
          if (__OFADD__(v7, a4))
          {
            goto LABEL_141;
          }

          if (v46 >= v45)
          {
            v46 = a3[1];
          }

          if (v46 >= v7)
          {
            if (v8 == v46)
            {
              goto LABEL_56;
            }

            v115 = v6;
            v47 = *a3;
            v48 = *a3 + 40 * v8 - 40;
            v118 = v7;
            v119 = v46;
            v49 = v7 - v8;
LABEL_42:
            v123 = v48;
            v125 = v8;
            v50 = (v47 + 40 * v8);
            v51 = v50[2];
            v52 = v50[3];
            v53 = v50[4];
            v121 = v49;
            v54 = v48;
            while (1)
            {
              v55 = *(v54 + 16);
              v56 = v52 == *(v54 + 24) && v53 == *(v54 + 32);
              if (v56 || (sub_18F522D5C() & 1) != 0)
              {
                if (v51 >= v55)
                {
                  goto LABEL_54;
                }
              }

              else if ((sub_18F522D5C() & 1) == 0)
              {
                goto LABEL_54;
              }

              if (!v47)
              {
                break;
              }

              v57 = *(v54 + 48);
              v51 = *(v54 + 56);
              v58 = *(v54 + 16);
              v60 = *(v54 + 32);
              v59 = *(v54 + 40);
              *(v54 + 40) = *v54;
              v52 = *(v54 + 64);
              v53 = *(v54 + 72);
              *(v54 + 56) = v58;
              *(v54 + 72) = v60;
              *v54 = v59;
              *(v54 + 8) = v57;
              *(v54 + 16) = v51;
              *(v54 + 24) = v52;
              *(v54 + 32) = v53;
              v54 -= 40;
              if (__CFADD__(v49++, 1))
              {
LABEL_54:
                v8 = v125 + 1;
                v48 = v123 + 40;
                v49 = v121 - 1;
                if (v125 + 1 == v119)
                {
                  v8 = v119;
                  v6 = v115;
                  v7 = v118;
                  goto LABEL_56;
                }

                goto LABEL_42;
              }
            }

            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
            goto LABEL_148;
          }

LABEL_142:
          __break(1u);
LABEL_143:
          v6 = sub_18F3BA714();
          goto LABEL_110;
        }
      }

LABEL_56:
      if (v8 < v7)
      {
        goto LABEL_138;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_18F167414();
        v6 = v104;
      }

      v62 = *(v6 + 2);
      v63 = v62 + 1;
      if (v62 >= *(v6 + 3) >> 1)
      {
        sub_18F167414();
        v6 = v105;
      }

      *(v6 + 2) = v63;
      v64 = v6 + 32;
      v65 = &v6[16 * v62 + 32];
      *v65 = v7;
      *(v65 + 1) = v8;
      v124 = *a1;
      if (!*a1)
      {
LABEL_148:
        __break(1u);
        goto LABEL_149;
      }

      v125 = v8;
      if (v62)
      {
        while (1)
        {
          v66 = v63 - 1;
          v67 = &v64[16 * v63 - 16];
          v68 = &v6[16 * v63];
          if (v63 >= 4)
          {
            break;
          }

          if (v63 == 3)
          {
            v69 = *(v6 + 4);
            v70 = *(v6 + 5);
            v79 = __OFSUB__(v70, v69);
            v71 = v70 - v69;
            v72 = v79;
LABEL_76:
            if (v72)
            {
              goto LABEL_125;
            }

            v84 = *v68;
            v83 = *(v68 + 1);
            v85 = __OFSUB__(v83, v84);
            v86 = v83 - v84;
            v87 = v85;
            if (v85)
            {
              goto LABEL_128;
            }

            v88 = *(v67 + 1);
            v89 = v88 - *v67;
            if (__OFSUB__(v88, *v67))
            {
              goto LABEL_131;
            }

            if (__OFADD__(v86, v89))
            {
              goto LABEL_133;
            }

            if (v86 + v89 >= v71)
            {
              if (v71 < v89)
              {
                v66 = v63 - 2;
              }

              goto LABEL_98;
            }

            goto LABEL_91;
          }

          if (v63 < 2)
          {
            goto LABEL_127;
          }

          v91 = *v68;
          v90 = *(v68 + 1);
          v79 = __OFSUB__(v90, v91);
          v86 = v90 - v91;
          v87 = v79;
LABEL_91:
          if (v87)
          {
            goto LABEL_130;
          }

          v93 = *v67;
          v92 = *(v67 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_132;
          }

          if (v94 < v86)
          {
            goto LABEL_105;
          }

LABEL_98:
          if (v66 - 1 >= v63)
          {
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
LABEL_141:
            __break(1u);
            goto LABEL_142;
          }

          if (!*a3)
          {
            goto LABEL_145;
          }

          v98 = v6;
          v99 = &v64[16 * v66 - 16];
          v100 = *v99;
          v101 = &v64[16 * v66];
          v102 = *(v101 + 1);
          sub_18F289574((*a3 + 40 * *v99), (*a3 + 40 * *v101), *a3 + 40 * v102, v124);
          if (v127)
          {
            goto LABEL_118;
          }

          if (v102 < v100)
          {
            goto LABEL_120;
          }

          v103 = *(v98 + 2);
          if (v66 > v103)
          {
            goto LABEL_121;
          }

          *v99 = v100;
          *(v99 + 1) = v102;
          if (v66 >= v103)
          {
            goto LABEL_122;
          }

          v127 = 0;
          v63 = v103 - 1;
          sub_18F3BA72C(v101 + 16, v103 - 1 - v66, &v64[16 * v66]);
          v6 = v98;
          *(v98 + 2) = v103 - 1;
          if (v103 <= 2)
          {
            goto LABEL_105;
          }
        }

        v73 = &v64[16 * v63];
        v74 = *(v73 - 8);
        v75 = *(v73 - 7);
        v79 = __OFSUB__(v75, v74);
        v76 = v75 - v74;
        if (v79)
        {
          goto LABEL_123;
        }

        v78 = *(v73 - 6);
        v77 = *(v73 - 5);
        v79 = __OFSUB__(v77, v78);
        v71 = v77 - v78;
        v72 = v79;
        if (v79)
        {
          goto LABEL_124;
        }

        v80 = *(v68 + 1);
        v81 = v80 - *v68;
        if (__OFSUB__(v80, *v68))
        {
          goto LABEL_126;
        }

        v79 = __OFADD__(v71, v81);
        v82 = v71 + v81;
        if (v79)
        {
          goto LABEL_129;
        }

        if (v82 >= v76)
        {
          v96 = *v67;
          v95 = *(v67 + 1);
          v79 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v79)
          {
            goto LABEL_137;
          }

          if (v71 < v97)
          {
            v66 = v63 - 2;
          }

          goto LABEL_98;
        }

        goto LABEL_76;
      }

LABEL_105:
      v5 = v125;
      v4 = a3[1];
      if (v125 >= v4)
      {
        goto LABEL_108;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_108:
  v125 = *a1;
  if (!*a1)
  {
LABEL_149:
    __break(1u);
    return;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_143;
  }

LABEL_110:
  v106 = (v6 + 16);
  for (i = *(v6 + 2); i >= 2; *v106 = i)
  {
    if (!*a3)
    {
      goto LABEL_146;
    }

    v108 = &v6[16 * i];
    v109 = *v108;
    v110 = &v106[2 * i];
    v111 = *(v110 + 1);
    sub_18F289574((*a3 + 40 * *v108), (*a3 + 40 * *v110), *a3 + 40 * v111, v125);
    if (v127)
    {
      break;
    }

    if (v111 < v109)
    {
      goto LABEL_134;
    }

    if (i - 2 >= *v106)
    {
      goto LABEL_135;
    }

    *v108 = v109;
    *(v108 + 1) = v111;
    v112 = *v106 - i;
    if (*v106 < i)
    {
      goto LABEL_136;
    }

    v127 = 0;
    i = *v106 - 1;
    sub_18F3BA72C(v110 + 16, v112, v110);
  }

LABEL_118:
}

uint64_t sub_18F289574(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a2;
  v5 = (a2 - a1) / 40;
  v6 = (a3 - a2) / 40;
  if (v5 < v6)
  {
    sub_18F147B5C(a1, (a2 - a1) / 40, a4);
    v7 = a4;
    v9 = a3;
    v8 = a1;
    v10 = &a4[40 * v5];
    while (1)
    {
      if (v7 >= v10 || v4 >= v9)
      {
        v23 = v8;
        goto LABEL_41;
      }

      v12 = *(v4 + 2);
      v13 = *(v7 + 2);
      __srca = v7;
      v14 = *(v4 + 3) == *(v7 + 3) && *(v4 + 4) == *(v7 + 4);
      if (v14 || (v15 = v8, v16 = sub_18F522D5C(), v9 = a3, v8 = v15, (v16 & 1) != 0))
      {
        if (v12 >= v13)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v18 = sub_18F522D5C();
        v9 = a3;
        v8 = v15;
        if ((v18 & 1) == 0)
        {
LABEL_17:
          v17 = __srca;
          v7 = __srca + 40;
          if (v8 == __srca)
          {
            goto LABEL_19;
          }

LABEL_18:
          v19 = *v17;
          v20 = *(v17 + 1);
          *(v8 + 4) = *(v17 + 4);
          *v8 = v19;
          *(v8 + 1) = v20;
          goto LABEL_19;
        }
      }

      v17 = v4;
      v14 = v8 == v4;
      v4 += 40;
      v7 = __srca;
      if (!v14)
      {
        goto LABEL_18;
      }

LABEL_19:
      v8 += 40;
    }
  }

  sub_18F147B5C(a2, (a3 - a2) / 40, a4);
  v7 = a4;
  v22 = a3;
  v21 = a1;
  v10 = &a4[40 * v6];
LABEL_21:
  v23 = v4;
  for (v22 -= 40; v10 > v7 && v4 > v21; v22 -= 40)
  {
    v25 = *(v10 - 3);
    v26 = *(v4 - 3);
    v27 = *(v10 - 2) == *(v4 - 2) && *(v10 - 1) == *(v4 - 1);
    if (v27 || (v28 = v22, v29 = sub_18F522D5C(), v7 = a4, v22 = v28, v21 = a1, (v29 & 1) != 0))
    {
      if (v25 < v26)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v30 = sub_18F522D5C();
      v7 = a4;
      v22 = v28;
      v21 = a1;
      if (v30)
      {
LABEL_38:
        v4 -= 40;
        if ((v22 + 40) != v23)
        {
          v33 = *v4;
          v34 = *(v23 - 24);
          *(v22 + 32) = *(v23 - 1);
          *v22 = v33;
          *(v22 + 16) = v34;
        }

        goto LABEL_21;
      }
    }

    if (v10 != (v22 + 40))
    {
      v31 = *(v10 - 40);
      v32 = *(v10 - 24);
      *(v22 + 32) = *(v10 - 1);
      *v22 = v31;
      *(v22 + 16) = v32;
    }

    v10 -= 40;
  }

LABEL_41:
  v35 = (v10 - v7) / 40;
  if (v23 != v7 || v23 >= &v7[40 * v35])
  {
    memmove(v23, v7, 40 * v35);
  }

  return 1;
}

uint64_t sub_18F289818(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v12 = HIBYTE(a4) & 0xF;
    v15[0] = a3;
    v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v15;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v12 = a3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = sub_18F52286C();
  }

  result = sub_18F2898F4(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_18F2898F4(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
{
  v11 = a3;
  v12 = result;
  v13 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v13) = 1;
  }

  v14 = 4 << v13;
  v15 = a3 & 0xC;
  v16 = a3;
  if (v15 == 4 << v13)
  {
    result = sub_18F1DE19C(a3, a5, a6);
    v16 = result;
  }

  v17 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x1000000000000000) != 0)
  {
    v19 = a5 & 0xFFFFFFFFFFFFLL;
    if ((a6 & 0x2000000000000000) != 0)
    {
      v19 = HIBYTE(a6) & 0xF;
    }

    if (v19 < v16 >> 16)
    {
      goto LABEL_96;
    }

    result = sub_18F521A6C();
    v18 = result;
    v17 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v18 = v16 >> 16;
  }

  if (v15 == v14)
  {
    v20 = v17;
    result = sub_18F1DE19C(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_18F1DE19C(v21, a5, a6);
    v17 = v22;
    a4 = result;
    if ((a6 & 0x1000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_11:
    result = (a4 >> 16) - (v11 >> 16);
    goto LABEL_22;
  }

  v23 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v23 = v17;
  }

  if (v23 < v11 >> 16)
  {
    goto LABEL_92;
  }

  if (v23 < a4 >> 16)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  result = sub_18F521A6C();
LABEL_22:
  v24 = v18 + result;
  if (__OFADD__(v18, result))
  {
    __break(1u);
    goto LABEL_91;
  }

  if (v24 < v18)
  {
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v25 = (v18 + v12);
  if (!v12)
  {
    v25 = 0;
  }

  v26 = *v25;
  if (v26 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v37 = a7 + 48;
        v38 = a7 + 55;
        v39 = a7 + 87;
        if (a7 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v25)
        {
          v30 = 0;
          v40 = v25 + 1;
          v41 = result - 1;
          do
          {
            v42 = *v40;
            if (v42 < 0x30 || v42 >= v37)
            {
              if (v42 < 0x41 || v42 >= v38)
              {
                v35 = 0;
                if (v42 < 0x61 || v42 >= v39)
                {
                  return v35;
                }

                v43 = -87;
              }

              else
              {
                v43 = -55;
              }
            }

            else
            {
              v43 = -48;
            }

            v44 = v30 * a7;
            if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
            {
              return 0;
            }

            v30 = v44 + (v42 + v43);
            if (__OFADD__(v44, (v42 + v43)))
            {
              return 0;
            }

            ++v40;
            --v41;
          }

          while (v41);
          return v30;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_95;
  }

  if (v26 != 45)
  {
    if (v24 != v18)
    {
      v45 = a7 + 48;
      v46 = a7 + 55;
      v47 = a7 + 87;
      if (a7 > 10)
      {
        v45 = 58;
      }

      else
      {
        v47 = 97;
        v46 = 65;
      }

      if (v25)
      {
        v30 = 0;
        while (1)
        {
          v48 = *v25;
          if (v48 < 0x30 || v48 >= v45)
          {
            if (v48 < 0x41 || v48 >= v46)
            {
              v35 = 0;
              if (v48 < 0x61 || v48 >= v47)
              {
                return v35;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v50 + (v48 + v49);
          if (__OFADD__(v50, (v48 + v49)))
          {
            return 0;
          }

          ++v25;
          if (!--result)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v27 = a7 + 48;
      v28 = a7 + 55;
      v29 = a7 + 87;
      if (a7 > 10)
      {
        v27 = 58;
      }

      else
      {
        v29 = 97;
        v28 = 65;
      }

      if (v25)
      {
        v30 = 0;
        v31 = v25 + 1;
        v32 = result - 1;
        while (1)
        {
          v33 = *v31;
          if (v33 < 0x30 || v33 >= v27)
          {
            if (v33 < 0x41 || v33 >= v28)
            {
              v35 = 0;
              if (v33 < 0x61 || v33 >= v29)
              {
                return v35;
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

          v36 = v30 * a7;
          if ((v30 * a7) >> 64 != (v30 * a7) >> 63)
          {
            return 0;
          }

          v30 = v36 - (v33 + v34);
          if (__OFSUB__(v36, (v33 + v34)))
          {
            return 0;
          }

          ++v31;
          if (!--v32)
          {
            return v30;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
  return result;
}

uint64_t sub_18F289D34()
{
  sub_18F171AAC(v2);
  v0 = sub_18F28FDC4();
  sub_18F295F28(v2);
  return v0;
}

uint64_t sub_18F289D80(void *a1)
{
  v1 = [a1 filename];
  sub_18F5218DC();

  v2 = sub_18F290088();

  return v2;
}

uint64_t sub_18F289E24()
{
  sub_18F282588(v2);
  v0 = sub_18F29060C();
  sub_18F295D94(v2);
  return v0;
}

uint64_t sub_18F289E70()
{
  sub_18F1E3648(v2);
  v0 = sub_18F2908D0();
  sub_18F295E90(v2);
  return v0;
}

uint64_t sub_18F289ED8()
{
  sub_18F3FC1D0();
  v0 = sub_18F290B94();
  sub_18F2959F8(&v2);
  return v0;
}

uint64_t sub_18F289F24()
{
  sub_18F1F2020(v2);
  v0 = sub_18F290E60();
  sub_18F295E3C(v2);
  return v0;
}

uint64_t sub_18F289FA4()
{
  sub_18F31C080(v2);
  v0 = sub_18F291354();
  sub_18F295CEC(v2);
  return v0;
}

uint64_t sub_18F289FF0()
{
  sub_18F23A8C8(v2);
  v0 = sub_18F291624();
  sub_18F295DE8(v2);
  return v0;
}

uint64_t sub_18F28A03C()
{
  sub_18F324AC4(v2);
  v0 = sub_18F2918E8();
  v5 = v2[0];
  sub_18F0EF1A8(&v5, &qword_1EACD4470);
  v4 = v2[1];
  sub_18F0EF1A8(&v4, &qword_1EACD4470);
  v3 = v2[2];
  sub_18F0EF1A8(&v3, &qword_1EACD4470);
  return v0;
}

uint64_t sub_18F28A130()
{
  sub_18F399D30(v2);
  v0 = sub_18F291E70();
  sub_18F295B48(v2);
  return v0;
}

uint64_t sub_18F28A17C()
{
  sub_18F39C238(v2);
  v0 = sub_18F292140();
  sub_18F295AA0(v2);
  return v0;
}

uint64_t sub_18F28A1C8()
{
  sub_18F37C080(v2);
  v0 = sub_18F292404();
  v4[0] = v2[0];
  v4[1] = v2[1];
  sub_18F0EF1A8(v4, &qword_1EACD4490);
  v3[0] = v2[2];
  v3[1] = v2[3];
  sub_18F0EF1A8(v3, &qword_1EACD4490);
  return v0;
}

uint64_t sub_18F28A254()
{
  sub_18F396420(v2);
  v0 = sub_18F2926C8();
  v6 = v2[0];
  sub_18F0EF1A8(&v6, &qword_1EACD4470);
  v5 = v2[1];
  sub_18F0EF1A8(&v5, &qword_1EACD4470);
  v4 = v3;
  sub_18F0EF1A8(&v4, &qword_1EACD4478);
  return v0;
}

uint64_t sub_18F28A314()
{
  sub_18F4506B8();
  sub_18F292C88();
  v1 = v0;

  return v1;
}

uint64_t sub_18F28A388()
{
  sub_18F520BAC();
  sub_18F291124();
  v1 = v0;

  return v1;
}

uint64_t sub_18F28A3EC()
{
  v0 = sub_18F520FDC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_18F520D8C();
  sub_18F520FAC();
  sub_18F520F8C();
  (*(v1 + 8))(v3, v0);
  sub_18F292C88();
  v5 = v4;

  return v5;
}

uint64_t sub_18F28A524()
{
  OUTLINED_FUNCTION_18_7();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_11_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_14_7();
  (*(v0 + 24))(v1, v0);
  OUTLINED_FUNCTION_66();
  swift_getAssociatedConformanceWitness();
  sub_18F2936E8();
  OUTLINED_FUNCTION_62_5();
  v3 = OUTLINED_FUNCTION_66_0();
  v4(v3);
  return OUTLINED_FUNCTION_56();
}

void _IntentValue.asNLGValue.getter()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_47_3();
  v2 = sub_18F520F1C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  v31[0] = v5 - v4;
  v6 = sub_18F52189C();
  v7 = OUTLINED_FUNCTION_10(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD32D0);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_67();
  v10 = type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_11_0();
  v16 = v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v31 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = *(v16 + 16);
  v21(v31 - v22, v0, v0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD33B0);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4(&v32, v35);
    __swift_project_boxed_opaque_existential_1Tm(v35, v36);
    v23 = OUTLINED_FUNCTION_66();
    v24(v23);
    OUTLINED_FUNCTION_62_5();
  }

  else
  {
    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_18F0EF1A8(&v32, &unk_1EACD3F10);
    v21(v20, v0, v0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0EF0);
    if (!swift_dynamicCast())
    {
      v34 = 0;
      v32 = 0u;
      v33 = 0u;
      sub_18F0EF1A8(&v32, &unk_1EACD3F20);
      sub_18F290088();
      OUTLINED_FUNCTION_62_5();
      goto LABEL_8;
    }

    sub_18F0FD0B4(&v32, v35);
    v26 = v36;
    v25 = v37;
    __swift_project_boxed_opaque_existential_1Tm(v35, v36);
    sub_18F1436A0(v26, *(*(v25 + 16) + 8));
    if (__swift_getEnumTagSinglePayload(v1, 1, v10) == 1)
    {
      sub_18F0EF1A8(v1, &qword_1EACD32D0);
      __swift_project_boxed_opaque_existential_1Tm(v35, v36);
      swift_getAssociatedTypeWitness();
      OUTLINED_FUNCTION_10_0();
      OUTLINED_FUNCTION_12();
      MEMORY[0x1EEE9AC00](v27);
      OUTLINED_FUNCTION_14_7();
      sub_18F521C0C();
      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_66_0();
      sub_18F52195C();
      sub_18F290088();
      OUTLINED_FUNCTION_62_5();
    }

    else
    {
      v28 = OUTLINED_FUNCTION_67_0();
      sub_18F141510(v28, v29);
      sub_18F520ABC();
      sub_18F520EDC();
      sub_18F52192C();
      sub_18F290088();
      OUTLINED_FUNCTION_62_5();

      OUTLINED_FUNCTION_21_21();
      sub_18F11CE88(v14, v30);
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v35);
LABEL_8:
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_16();
}

uint64_t _FormattedValueEntity.init(parameter:format:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t IntentDialog.init<A, B>(from:)(uint64_t *a1)
{
  OUTLINED_FUNCTION_66_3(*a1);

  return swift_storeEnumTagMultiPayload();
}

void IntentDialog._GeneratedDialogContent.init(_:fromResult:options:fallbackDialog:)()
{
  OUTLINED_FUNCTION_18();
  v29 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F30);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_53_4();
  v12 = type metadata accessor for _GeneratedContentFallback(v11);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();
  v14 = v6(&v37);
  v15 = v39;
  v33 = v37;
  v34 = v38;
  v35 = v39;
  v36 = v40;
  v4(&v30, v14);
  v16 = v30;
  v17 = v31;
  v18 = v32;
  sub_18F28AE5C();
  sub_18F290380(v16, v17, v18);

  v19 = v41;
  v20 = v42;
  v21 = v43;
  v22 = v44;
  v23 = OUTLINED_FUNCTION_82();
  sub_18F116970(v23, v24, &qword_1EACD3F30);
  if (__swift_getEnumTagSinglePayload(v0, 1, v12) == 1)
  {
    v25 = OUTLINED_FUNCTION_53();
    sub_18F0EF1A8(v25, v26);
    sub_18F0EF1A8(v0, &qword_1EACD3F30);
  }

  else
  {
    OUTLINED_FUNCTION_24_25();
    sub_18F141510(v0, v1);
    v27 = sub_18F28B0E8();
    sub_18F0EF1A8(v29, &qword_1EACD3F30);
    OUTLINED_FUNCTION_7_31();
    sub_18F11CE88(v1, v28);

    v21 = v27;
  }

  *v8 = v19;
  *(v8 + 8) = v20;
  *(v8 + 16) = v21;
  *(v8 + 24) = v22;
  OUTLINED_FUNCTION_16();
}

void sub_18F28AE5C()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F38);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v33 - v7;
  v9 = *v3;
  v10 = *(v3 + 24);
  v11 = *v1;
  if (*v1)
  {
    v37 = v5;
    v12 = *(v1 + 8);
    v13 = *(v1 + 16);
    v14 = *(v1 + 24);
    v39[0] = v9;
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v15 = _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    v34 = v13;
    v35 = v12;
    sub_18F296228(v15, v12, v13);
    v36 = v11;
    sub_18F25DA4C(v11);
    v16 = 0;
    v17 = v39[0];
    v18 = MEMORY[0x1E69E7CC0];
    if (v10 == 2)
    {
      v19 = v14;
    }

    else
    {
      v19 = v10;
    }

    v33[0] = v19;
    v33[1] = v14;
    v20 = *(v39[0] + 16);
    for (i = v39[0] + 32; ; i += 40)
    {
      if (v20 == v16)
      {
        sub_18F290380(v36, v35, v34);

        v28 = v37;
        *v37 = v18;
        *(v28 + 8) = 1;
        v28[2] = 0;
        *(v28 + 24) = v33[0];
        OUTLINED_FUNCTION_16();
        return;
      }

      if (v16 >= *(v17 + 16))
      {
        break;
      }

      sub_18F0FD6C4(i, v39);
      v22 = OUTLINED_FUNCTION_77_3();
      sub_18F0FD6C4(v22, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F40);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v39);
        sub_18F0EF1A8(v8, &qword_1EACD3F38);
      }

      else
      {
        v24 = OUTLINED_FUNCTION_77_3();
        sub_18F0FD0B4(v24, v25);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          OUTLINED_FUNCTION_76_5();
          OUTLINED_FUNCTION_30_17();
          sub_18F3AAE0C();
          v18 = v40;
        }

        v27 = *(v18 + 16);
        if (v27 >= *(v18 + 24) >> 1)
        {
          sub_18F3AAE0C();
          v18 = v40;
        }

        *(v18 + 16) = v27 + 1;
        sub_18F0FD0B4(&v38, v18 + 40 * v27 + 32);
      }

      ++v16;
    }

    __break(1u);
  }

  else
  {
    v29 = v3[2];
    v30 = *(v3 + 8);
    *v5 = v9;
    *(v5 + 8) = v30;
    *(v5 + 16) = v29;
    *(v5 + 24) = v10;
    v31 = v29;
    OUTLINED_FUNCTION_16();

    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  }
}

uint64_t sub_18F28B0E8()
{
  type metadata accessor for IntentDialog.Storage(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  v2 = OUTLINED_FUNCTION_27_23();
  v3 = type metadata accessor for IntentDialog(v2);
  v4 = OUTLINED_FUNCTION_10(v3);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v18 - v8;
  v10 = OUTLINED_FUNCTION_165();
  sub_18F1B8ADC(v10, v11);
  sub_18F141510(v9, v0);
  v12 = 0;
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    v13 = OUTLINED_FUNCTION_53();
    sub_18F1B8ADC(v13, v14);
    type metadata accessor for _GeneratedContentFallback(0);
    _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
    OUTLINED_FUNCTION_71_3();
    sub_18F2E9CD0();
    v12 = v15;

    OUTLINED_FUNCTION_6_39();
    sub_18F11CE88(v7, v16);
  }

  sub_18F11CE88(v0, type metadata accessor for IntentDialog.Storage);
  return v12;
}

void sub_18F28B274()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F30);
  OUTLINED_FUNCTION_10(v8);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_53_4();
  v11 = type metadata accessor for _GeneratedContentFallback(v10);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();
  v5(&v23);
  v13 = v23;
  v14 = v24;
  v15 = v25;
  v16 = v26;
  v17 = OUTLINED_FUNCTION_82();
  sub_18F116970(v17, v18, &qword_1EACD3F30);
  if (__swift_getEnumTagSinglePayload(v0, 1, v11) == 1)
  {
    v19 = OUTLINED_FUNCTION_53();
    sub_18F0EF1A8(v19, v20);
    sub_18F0EF1A8(v0, &qword_1EACD3F30);
  }

  else
  {
    sub_18F141510(v0, v1);
    v21 = sub_18F28B0E8();
    sub_18F0EF1A8(v3, &qword_1EACD3F30);
    OUTLINED_FUNCTION_7_31();
    sub_18F11CE88(v1, v22);

    v15 = v21;
  }

  *v7 = v13;
  *(v7 + 8) = v14;
  *(v7 + 16) = v15;
  *(v7 + 24) = v16;
  OUTLINED_FUNCTION_16();
}

void sub_18F28B410(uint64_t *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  v7 = *(a1 + 24);
  v8 = *a2;

  *a4 = v6;
  *(a4 + 24) = v7;
  *(a4 + 8) = v8;
  *(a4 + 16) = a3;
}

uint64_t static IntentDialog._GeneratedDialogContent.summarize(options:fallbackDialog:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F30);
  OUTLINED_FUNCTION_10(v6);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for _GeneratedContentFallback(0);
  OUTLINED_FUNCTION_10_0();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4();
  v14 = v13 - v12;
  v15 = *a1;
  sub_18F116970(a2, v9, &qword_1EACD3F30);
  if (__swift_getEnumTagSinglePayload(v9, 1, v10) == 1)
  {
    result = sub_18F0EF1A8(v9, &qword_1EACD3F30);
    v17 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_24_25();
    v18 = OUTLINED_FUNCTION_45();
    sub_18F141510(v18, v19);
    v17 = sub_18F28B0E8();
    OUTLINED_FUNCTION_7_31();
    result = sub_18F11CE88(v14, v20);
  }

  *a3 = MEMORY[0x1E69E7CC0];
  *(a3 + 8) = v15;
  *(a3 + 16) = v17;
  *(a3 + 24) = 0;
  return result;
}

uint64_t IntentDialog.GeneratedContainerOptions.hashValue.getter()
{
  v1 = *v0;
  sub_18F522EFC();
  MEMORY[0x193ADC4F0](v1);
  return sub_18F522F4C();
}

uint64_t IntentDialog.init<A, B>(from:capturedContent:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  sub_18F28AE5C();
  v4 = OUTLINED_FUNCTION_82();
  sub_18F290380(v4, v5, v3);

  OUTLINED_FUNCTION_66_3(v7);

  return swift_storeEnumTagMultiPayload();
}

uint64_t IntentDialog._CapturedContent.init<>(entity:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  v7 = OUTLINED_FUNCTION_9_12();
  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F28B760()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  v1 = *(v0 + 56);
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F40);
  v2 = swift_task_alloc();
  *(v0 + 96) = v2;
  v3 = *(v0 + 64);
  *(v2 + 16) = *(v0 + 80);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  *(v2 + 56) = v0 + 16;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_18F28B890;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_18F28B890()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F28B990()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  OUTLINED_FUNCTION_31_0();
  v6 = *(v5 + 8);
  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v7 = v3;
  v8 = OUTLINED_FUNCTION_56();
  v6(v8);
  v9 = *(v0 + 32);

  OUTLINED_FUNCTION_71();

  return v10();
}

uint64_t sub_18F28BA5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[45] = a7;
  v8[46] = a8;
  v8[43] = a5;
  v8[44] = a6;
  v8[41] = a3;
  v8[42] = a4;
  v8[40] = a2;
  v8[47] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F38);
  v8[48] = swift_task_alloc();
  v10 = *(a7 - 8);
  v8[49] = v10;
  v8[50] = *(v10 + 64);
  v8[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0418);
  v8[52] = swift_task_alloc();
  v8[53] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4560);
  v8[54] = v11;
  v8[55] = *(v11 - 8);
  v8[56] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F28BC10, 0, 0);
}

uint64_t sub_18F28BC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v52 = v12;
  (*(v12 + 328))(v51);
  v13 = v51[0];

  v14 = *(v13 + 16);
  if (v14)
  {
    v15 = v13 + 32;
    v45 = **(v12 + 320);
    v46 = *(v12 + 392);
    v16 = sub_18F521EFC();
    do
    {
      v49 = v14;
      v17 = *(v12 + 424);
      v47 = *(v12 + 416);
      v18 = *(v12 + 408);
      v19 = *(v12 + 344);
      v50 = *(v12 + 360);
      OUTLINED_FUNCTION_11();
      __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
      v48 = v15;
      sub_18F0FD6C4(v15, v12 + 16);
      (*(v46 + 16))(v18, v19, v50);
      v23 = v16;
      v24 = (*(v46 + 80) + 88) & ~*(v46 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = 0;
      *(v25 + 24) = 0;
      *(v25 + 32) = v50;
      sub_18F0FD0B4((v12 + 16), v25 + 48);
      v26 = v25 + v24;
      v16 = v23;
      (*(v46 + 32))(v26, v18, v50);
      sub_18F116970(v17, v47, &qword_1EACD0418);
      LODWORD(v17) = __swift_getEnumTagSinglePayload(v47, 1, v23);

      v27 = *(v12 + 416);
      if (v17 == 1)
      {
        sub_18F0EF1A8(*(v12 + 416), &qword_1EACD0418);
      }

      else
      {
        sub_18F521EEC();
        (*(*(v23 - 8) + 8))(v27, v23);
      }

      if (*(v25 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v28 = sub_18F521E1C();
        v30 = v29;
        swift_unknownObjectRelease();
      }

      else
      {
        v28 = 0;
        v30 = 0;
      }

      v31 = swift_allocObject();
      *(v31 + 16) = &unk_18F54F4A8;
      *(v31 + 24) = v25;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F40);
      v32 = v30 | v28;
      if (v30 | v28)
      {
        v32 = v12 + 256;
        *(v12 + 256) = 0;
        *(v12 + 264) = 0;
        *(v12 + 272) = v28;
        *(v12 + 280) = v30;
      }

      v33 = *(v12 + 424);
      *(v12 + 288) = 1;
      *(v12 + 296) = v32;
      *(v12 + 304) = v45;
      swift_task_create();

      sub_18F0EF1A8(v33, &qword_1EACD0418);
      v15 = v48 + 40;
      v14 = v49 - 1;
    }

    while (v49 != 1);
  }

  *(v12 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F40);
  sub_18F521E6C();
  *(v12 + 464) = MEMORY[0x1E69E7CC0];
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v12 + 472) = v34;
  *v34 = v35;
  v36 = OUTLINED_FUNCTION_16_27(v34);

  return MEMORY[0x1EEE6D8A8](v36, v37, v38, v39, v40, v41, v42, v43, a9, a10, a11, a12);
}

uint64_t sub_18F28BFFC()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_18F28C0E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_24_4();
  v13 = *(v12 + 464);
  if (*(v12 + 80))
  {
    sub_18F0FD0B4((v12 + 56), v12 + 216);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v12 + 312) = v13;
    v15 = *(v12 + 464);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_23:
      OUTLINED_FUNCTION_76_5();
      OUTLINED_FUNCTION_30_17();
      sub_18F168C38();
      v15 = v49;
      *(v12 + 312) = v49;
    }

    v16 = *(v15 + 16);
    if (v16 >= *(v15 + 24) >> 1)
    {
      sub_18F168C38();
      v15 = v50;
      *(v12 + 312) = v50;
    }

    v17 = *(v12 + 240);
    v18 = *(v12 + 248);
    v19 = __swift_mutable_project_boxed_opaque_existential_1(v12 + 216, v17);
    OUTLINED_FUNCTION_11_0();
    v21 = v20;
    v22 = OUTLINED_FUNCTION_34_0();
    (*(v21 + 16))(v22, v19, v17);
    sub_18F317A70(v16, v22, (v12 + 312), v17, v18);
    OUTLINED_FUNCTION_89_2(v12 + 216);

    *(v12 + 464) = v15;
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v12 + 472) = v23;
    *v23 = v24;
    OUTLINED_FUNCTION_16_27();
    OUTLINED_FUNCTION_29_1();

    return MEMORY[0x1EEE6D8A8](v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
  }

  else
  {
    (*(*(v12 + 440) + 8))(*(v12 + 448), *(v12 + 432));
    v33 = 0;
    v34 = *(v13 + 16);
    v35 = MEMORY[0x1E69E7CC0];
    v36 = v13 + 32;
    while (v34 != v33)
    {
      if (v33 >= *(v13 + 16))
      {
        __break(1u);
        goto LABEL_23;
      }

      sub_18F0FD6C4(v36, v12 + 96);
      sub_18F0FD6C4(v12 + 96, v12 + 136);
      if (swift_dynamicCast())
      {
        v37 = OUTLINED_FUNCTION_89_2(v12 + 96);
        sub_18F0EF1A8(v37, &qword_1EACD3F38);
      }

      else
      {
        sub_18F0FD0B4((v12 + 96), v12 + 176);
        a9 = v35;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_76_5();
          OUTLINED_FUNCTION_30_17();
          sub_18F3AAE0C();
        }

        v38 = *(v35 + 16);
        if (v38 >= *(v35 + 24) >> 1)
        {
          sub_18F3AAE0C();
        }

        *(v35 + 16) = v38 + 1;
        sub_18F0FD0B4((v12 + 176), v35 + 40 * v38 + 32);
      }

      v36 += 40;
      ++v33;
    }

    v39 = *(v12 + 352);

    v40 = *(v39 + 16);
    *v39 = v35;
    *(v39 + 8) = 1;
    *(v39 + 16) = 0;
    *(v39 + 24) = 1;

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_29_1();

    return v42(v41, v42, v43, v44, v45, v46, v47, v48, a9, a10, a11, a12);
  }
}

uint64_t sub_18F28C42C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  v7[7] = *(a6 - 8);
  v7[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_18F28C4E8, 0, 0);
}

uint64_t sub_18F28C4E8()
{
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_24_4();
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 40);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1Tm(*(v0 + 24), *(*(v0 + 24) + 24));
  (*(v2 + 16))(v1, v4, v3);
  OUTLINED_FUNCTION_11_0();
  v7 = v6;
  *(v0 + 72) = OUTLINED_FUNCTION_34_0();
  (*(v7 + 16))();
  v5[3] = type metadata accessor for _NLGRepresentationEntity();
  OUTLINED_FUNCTION_23_20();
  v5[4] = swift_getWitnessTable();
  __swift_allocate_boxed_opaque_existential_1(v5);
  swift_task_alloc();
  OUTLINED_FUNCTION_25();
  *(v0 + 80) = v8;
  *v8 = v9;
  v8[1] = sub_18F28C668;
  OUTLINED_FUNCTION_29_1();

  return _NLGRepresentationEntity.init<A>(instance:representation:)();
}

uint64_t sub_18F28C668()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_39();
  *v2 = v1;

  OUTLINED_FUNCTION_71();

  return v3();
}

uint64_t _NLGRepresentationEntity.init<A>(instance:representation:)()
{
  OUTLINED_FUNCTION_69();
  v0[35] = v1;
  v0[36] = v2;
  v0[33] = v3;
  v0[34] = v4;
  v0[31] = v5;
  v0[32] = v6;
  v0[30] = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v8);
  v0[37] = OUTLINED_FUNCTION_34_0();
  v9 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_18F28C810(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_24_4();
  v13 = *(v12 + 288);
  v14 = *(v12 + 272);
  v15 = *(v12 + 240);
  v16 = type metadata accessor for _NLGRepresentationEntity();
  *(v12 + 304) = v16;
  *(v15 + 24) = 0u;
  *(v15 + 40) = 0u;
  v17 = *(v16 + 48);
  *(v12 + 360) = v17;
  *(v12 + 312) = sub_18F520B3C();
  OUTLINED_FUNCTION_13_28();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v21);
  if ((*(v13 + 16))(v14, v13))
  {
    sub_18F52288C();
    OUTLINED_FUNCTION_29_13();
    v22 = swift_dynamicCastClass();
    if (!v22)
    {
    }
  }

  else
  {
    v22 = 0;
  }

  *(v12 + 320) = v22;
  v23 = *(v12 + 288);
  v24 = *(v12 + 272);
  v25 = *(v12 + 240);
  *v25 = v22;
  v25[1] = (*(v23 + 24))(v24);
  v25[2] = v26;
  OUTLINED_FUNCTION_23_20();
  *(v12 + 328) = swift_getWitnessTable();
  OUTLINED_FUNCTION_66_0();
  sub_18F28CF44(v27, v28, v29);
  v30 = *(v12 + 248);
  if (*(v12 + 80))
  {
    v31 = *(v12 + 280);
    v32 = *(v12 + 264);
    sub_18F0FD0B4((v12 + 56), v12 + 16);
    *(v12 + 120) = v32;
    *(v12 + 128) = v31;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v12 + 96));
    v34 = *(v32 - 8);
    *(v12 + 336) = v34;
    (*(v34 + 16))(boxed_opaque_existential_1, v30, v32);
    swift_task_alloc();
    OUTLINED_FUNCTION_25();
    *(v12 + 344) = v35;
    *v35 = v36;
    v35[1] = sub_18F28CAF4;
    OUTLINED_FUNCTION_29_1();

    return sub_18F28D028();
  }

  else
  {
    v39 = *(v12 + 264);
    OUTLINED_FUNCTION_31_0();
    (*(v40 + 8))();
    OUTLINED_FUNCTION_31_0();
    (*(v41 + 8))(v30, v39);
    sub_18F0EF1A8(v12 + 56, &qword_1EACD0D08);
    *(v15 + 24) = 0u;
    *(v15 + 40) = 0u;
    sub_18F0EF1A8(v15 + v17, &qword_1EACCF7A8);
    OUTLINED_FUNCTION_13_28();
    __swift_storeEnumTagSinglePayload(v42, v43, v44, v45);

    **(v12 + 240) = 0;

    OUTLINED_FUNCTION_71();
    OUTLINED_FUNCTION_29_1();

    return v47(v46, v47, v48, v49, v50, v51, v52, v53, a9, a10, a11, a12);
  }
}

uint64_t sub_18F28CAF4()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v2 = v1;
  v1[27] = v0;
  v1[28] = v3;
  v1[29] = v4;
  v5 = *v0;
  OUTLINED_FUNCTION_39();
  *v6 = v5;
  v2[44] = v7;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 12));
  v8 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_18F28CBEC()
{
  v1 = *(v0 + 352);
  if (v1)
  {
    v2 = *(v0 + 224);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1Tm((v0 + 16), *(v0 + 40));
    v3 = OUTLINED_FUNCTION_66();
    v4(v3);
    v1 = *(v0 + 160);
    if (v1)
    {
      __swift_project_boxed_opaque_existential_1Tm((v0 + 136), *(v0 + 160));
      OUTLINED_FUNCTION_29_13();
      _IntentValue.asNLGValue.getter();
      v2 = v5;
      v1 = v6;
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 136);
    }

    else
    {
      sub_18F0EF1A8(v0 + 136, &qword_1EACD0620);
      v2 = 0;
    }
  }

  v7 = *(v0 + 336);
  v22 = *(v0 + 312);
  v23 = *(v0 + 360);
  v8 = *(v0 + 296);
  v9 = *(v0 + 264);
  v10 = *(v0 + 272);
  v12 = *(v0 + 248);
  v11 = *(v0 + 256);
  v13 = *(v0 + 240);
  v13[3] = v2;
  v13[4] = v1;
  sub_18F0FD6C4(v0 + 16, v0 + 176);
  v14 = sub_18F28CE54(v0 + 176);
  v16 = v15;
  sub_18F0EF1A8(v0 + 176, &qword_1EACD0D08);
  v13[5] = v14;
  v13[6] = v16;
  v18 = *(v0 + 40);
  v17 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1Tm((v0 + 16), v18);
  (*(*(v17 + 8) + 32))(v18);
  OUTLINED_FUNCTION_31_0();
  (*(v19 + 8))(v11, v10);
  (*(v7 + 8))(v12, v9);
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v22);
  sub_18F2608E8(v8, v13 + v23);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);

  **(v0 + 240) = 0;

  OUTLINED_FUNCTION_71();

  return v20();
}

BOOL sub_18F28CE0C(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  if (v2)
  {
  }

  return v2 == 0;
}

uint64_t sub_18F28CE54(uint64_t a1)
{
  sub_18F116970(a1, &v5, &qword_1EACD0D08);
  if (v6)
  {
    sub_18F0FD0B4(&v5, v7);
    __swift_project_boxed_opaque_existential_1Tm(v7, v7[3]);
    v1 = OUTLINED_FUNCTION_66();
    *&v5 = v2(v1);
    *(&v5 + 1) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4530);
    sub_18F52194C();
    OUTLINED_FUNCTION_44_9();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
  }

  else
  {
    sub_18F0EF1A8(&v5, &qword_1EACD0D08);
  }

  return OUTLINED_FUNCTION_22();
}

double sub_18F28CF44@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if ((*(a2 + 16))(a1, a2))
  {
    OUTLINED_FUNCTION_53();
    swift_getAtPartialKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EACD1410);
    if (swift_dynamicCast())
    {
      sub_18F0FD0B4(v5, a3);
      return result;
    }

    v6 = 0;
    memset(v5, 0, sizeof(v5));
    sub_18F0EF1A8(v5, &qword_1EACD0D08);
  }

  *(a3 + 32) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

uint64_t sub_18F28D028()
{
  OUTLINED_FUNCTION_69();
  v0[73] = v1;
  v0[72] = v2;
  v3 = sub_18F520F1C();
  OUTLINED_FUNCTION_10(v3);
  v0[74] = OUTLINED_FUNCTION_34_0();
  v4 = type metadata accessor for DisplayRepresentation();
  OUTLINED_FUNCTION_10(v4);
  v0[75] = OUTLINED_FUNCTION_34_0();
  v5 = sub_18F520B3C();
  v0[76] = v5;
  OUTLINED_FUNCTION_51(v5);
  v0[77] = v6;
  v0[78] = swift_task_alloc();
  v0[79] = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_9_12();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_18F28D124()
{
  sub_18F0FD6C4(*(v0 + 576), v0 + 56);
  *(v0 + 640) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1490);
  *(v0 + 648) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4540);
  if (swift_dynamicCast())
  {
    sub_18F0FD0B4((v0 + 96), v0 + 16);
    v1 = OUTLINED_FUNCTION_45();
    __swift_project_boxed_opaque_existential_1Tm(v1, v2);
    v3 = OUTLINED_FUNCTION_165();
    v4(v3);
    if (*(v0 + 240))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD1A40);
      if (swift_dynamicCast())
      {
        if (*(v0 + 200))
        {
          sub_18F0FD0B4((v0 + 176), v0 + 136);
          v6 = *(v0 + 160);
          v5 = *(v0 + 168);
          __swift_project_boxed_opaque_existential_1Tm((v0 + 136), v6);
          sub_18F0FD6C4(v0 + 16, v0 + 296);
          swift_task_alloc();
          OUTLINED_FUNCTION_25();
          *(v0 + 656) = v7;
          *v7 = v8;
          v7[1] = sub_18F28D39C;

          return sub_18F1E1ED4(v0 + 256, v0 + 296, v6, v5);
        }
      }

      else
      {
        *(v0 + 208) = 0;
        *(v0 + 176) = 0u;
        *(v0 + 192) = 0u;
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v0 + 16);
      sub_18F0EF1A8(v0 + 216, &qword_1EACD0620);
      *(v0 + 176) = 0u;
      *(v0 + 192) = 0u;
      *(v0 + 208) = 0;
    }

    v10 = &unk_1EACD4550;
    v11 = v0 + 176;
  }

  else
  {
    *(v0 + 128) = 0;
    *(v0 + 96) = 0u;
    *(v0 + 112) = 0u;
    v10 = &qword_1EACCFCF8;
    v11 = v0 + 96;
  }

  sub_18F0EF1A8(v11, v10);
  OUTLINED_FUNCTION_87_3();

  v12 = OUTLINED_FUNCTION_83();

  return v13(v12);
}

uint64_t sub_18F28D39C()
{
  OUTLINED_FUNCTION_69();
  OUTLINED_FUNCTION_85();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_39();
  *v5 = v4;
  *(v3 + 664) = v0;

  sub_18F0EF1A8(v3 + 296, &qword_1EACCFCF8);
  if (v0)
  {
    v6 = sub_18F28D7E0;
  }

  else
  {
    v6 = sub_18F28D4B8;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_18F28D4B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_67_2();
  OUTLINED_FUNCTION_24_4();
  sub_18F116970(v12 + 256, v12 + 496, &qword_1EACD0620);
  if (!*(v12 + 520))
  {
    sub_18F0EF1A8(v12 + 496, &qword_1EACD0620);
    *(v12 + 456) = 0u;
    *(v12 + 472) = 0u;
    *(v12 + 488) = 0;
    goto LABEL_7;
  }

  __swift_project_boxed_opaque_existential_1Tm((v12 + 496), *(v12 + 520));
  OUTLINED_FUNCTION_45();
  sub_18F11E26C();
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 496);
  if (!*(v12 + 480))
  {
LABEL_7:
    sub_18F0EF1A8(v12 + 456, &qword_1EACD0620);
    *(v12 + 416) = 0u;
    *(v12 + 432) = 0u;
    *(v12 + 448) = 0;
    goto LABEL_9;
  }

  if (swift_dynamicCast())
  {
    if (*(v12 + 440))
    {
      v13 = *(v12 + 632);
      v14 = *(v12 + 616);
      v15 = *(v12 + 608);
      v16 = *(v12 + 600);
      sub_18F0FD0B4((v12 + 416), v12 + 376);
      v18 = *(v12 + 400);
      v17 = *(v12 + 408);
      __swift_project_boxed_opaque_existential_1Tm((v12 + 376), v18);
      (*(*(*(v17 + 16) + 8) + 16))(v18);
      v19 = *(v14 + 16);
      v19(v13, v16, v15);
      OUTLINED_FUNCTION_21_21();
      sub_18F11CE88(v16, v20);
      sub_18F520EDC();
      sub_18F520B2C();
      v21 = OUTLINED_FUNCTION_66();
      (v19)(v21);
      sub_18F52193C();
      OUTLINED_FUNCTION_44_9();
      v22 = OUTLINED_FUNCTION_165();
      v23(v22);
      sub_18F0EF1A8(v12 + 256, &qword_1EACD0620);
      __swift_destroy_boxed_opaque_existential_1Tm(v12 + 16);
      v24 = v12 + 376;
LABEL_11:
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      goto LABEL_13;
    }
  }

  else
  {
    *(v12 + 448) = 0;
    *(v12 + 416) = 0u;
    *(v12 + 432) = 0u;
  }

LABEL_9:
  sub_18F0EF1A8(v12 + 416, &qword_1EACCFCF8);
  sub_18F116970(v12 + 256, v12 + 536, &qword_1EACD0620);
  if (*(v12 + 560))
  {
    __swift_project_boxed_opaque_existential_1Tm((v12 + 536), *(v12 + 560));
    OUTLINED_FUNCTION_29_13();
    _IntentValue.asNLGValue.getter();
    OUTLINED_FUNCTION_44_9();
    sub_18F0EF1A8(v12 + 256, &qword_1EACD0620);
    __swift_destroy_boxed_opaque_existential_1Tm(v12 + 16);
    v24 = v12 + 536;
    goto LABEL_11;
  }

  sub_18F0EF1A8(v12 + 256, &qword_1EACD0620);
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 16);
  sub_18F0EF1A8(v12 + 536, &qword_1EACD0620);
LABEL_13:
  __swift_destroy_boxed_opaque_existential_1Tm(v12 + 136);

  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_29_1();

  return v28(v25, v26, v27, v28, v29, v30, v31, v32, a9, a10, a11, a12);
}

uint64_t sub_18F28D7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_20_2();
  a19 = v22;
  a20 = v23;
  OUTLINED_FUNCTION_24_4();
  a18 = v20;
  if (qword_1ED6FEFE8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v24 = v20[73];
  v25 = sub_18F52165C();
  __swift_project_value_buffer(v25, qword_1ED7077A8);
  sub_18F0FD6C4(v24, (v20 + 42));
  v26 = sub_18F52163C();
  v27 = sub_18F52221C();
  v28 = os_log_type_enabled(v26, v27);
  v29 = v20[83];
  if (v28)
  {
    swift_slowAlloc();
    v30 = OUTLINED_FUNCTION_51_1();
    a10 = v30;
    *v21 = 136315138;
    __swift_project_boxed_opaque_existential_1Tm(v20 + 42, v20[45]);
    v31 = OUTLINED_FUNCTION_115();
    v33 = v32(v31);
    if (v34)
    {
      v35 = v33;
    }

    else
    {
      v35 = 0xD000000000000016;
    }

    if (v34)
    {
      v36 = v34;
    }

    else
    {
      v36 = 0x800000018F528530;
    }

    __swift_destroy_boxed_opaque_existential_1Tm((v20 + 42));
    v37 = sub_18F11897C(v35, v36, &a10);

    *(v21 + 4) = v37;
    _os_log_impl(&dword_18F0E9000, v26, v27, "Unable to retrieve value from updatable property %s", v21, 0xCu);
    OUTLINED_FUNCTION_89_2(v30);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_65();

    v38 = (v20 + 2);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm((v20 + 2));
    v38 = (v20 + 42);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  __swift_destroy_boxed_opaque_existential_1Tm((v20 + 17));
  OUTLINED_FUNCTION_87_3();

  OUTLINED_FUNCTION_83();
  OUTLINED_FUNCTION_176();

  return v42(v39, v40, v41, v42, v43, v44, v45, v46, a9, a10, a11, a12);
}

uint64_t _GeneratedContentFallback.init(_:localeIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_18F141510(a1, a4);
  result = type metadata accessor for _GeneratedContentFallback(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

uint64_t static _DialogBuilderIntent.buildExpression(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v5 = OUTLINED_FUNCTION_82();

  return _NLGRepresentationIntent.init(keyPath:format:)(v5, v6, v4, a3, v7);
}

uint64_t static _DialogBuilderIntent.buildExpression<A>(_:)@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED6FEFE8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v3 = sub_18F52165C();
  __swift_project_value_buffer(v3, qword_1ED7077A8);

  v4 = sub_18F52163C();
  v5 = sub_18F52221C();

  if (os_log_type_enabled(v4, v5))
  {
    swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_51_1();
    v22 = v6;
    *v1 = 136315138;
    v7 = sub_18F52262C();
    v9 = sub_18F11897C(v7, v8, &v22);

    *(v1 + 4) = v9;
    OUTLINED_FUNCTION_86_5(&dword_18F0E9000, v10, v11, "Key path %s with value of type AppEntity is not allowed and will be discarded; try adding individual AppEntity properties");
    OUTLINED_FUNCTION_89_2(v6);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_65();
  }

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F38) + 40);
  sub_18F520B3C();
  v13 = OUTLINED_FUNCTION_8_29();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_28_28();
  sub_18F0EF1A8(a1 + v12, &qword_1EACCF7A8);
  v17 = OUTLINED_FUNCTION_8_29();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t _NLGRepresentationEmpty.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = *(type metadata accessor for _NLGRepresentationEmpty() + 40);
  sub_18F520B3C();
  v3 = OUTLINED_FUNCTION_8_29();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_28_28();
  sub_18F0EF1A8(a1 + v2, &qword_1EACCF7A8);
  v7 = OUTLINED_FUNCTION_8_29();

  return __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
}

uint64_t static _DialogBuilderIntent.buildExpression<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _NLGRepresentationIntent.init(keyPath:)(a1, a2, a3);
}

{
  _NLGRepresentationIntent.init(keyPath:)(a1, a2, a3);
}

uint64_t static _DialogBuilderEntity.buildExpression<>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  v4 = *(*(a3 + 8) + 24);

  _s10AppIntents22IntentParameterSummaryV0D15KeyPathsBuilderO10buildBlockySays07PartialF4PathCyxGGAId_tFZ_0();
  v5 = OUTLINED_FUNCTION_45();

  return _NLGRepresentationEntity.init(keyPath:format:)(v5, v6, v3, v4, v7);
}

uint64_t sub_18F28DDB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X8>)
{
  a5(a1, a4);

  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  return result;
}

uint64_t sub_18F28DE14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  *(a4 + 8) = 0u;
  *(a4 + 24) = 0u;
  *(a4 + 40) = 0u;
  a3(0, *(v6 + *MEMORY[0x1E69E6B90]), a2);
  sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  result = __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  *a4 = a1;
  return result;
}

uint64_t static _DialogBuilderEntity.buildExpression<A>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _NLGRepresentationEntity.init(keyPath:)(a1, *(*(a2 + 8) + 24), a3);
}

uint64_t sub_18F28DEFC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED6FEFE8 != -1)
  {
    OUTLINED_FUNCTION_1_1();
  }

  v3 = sub_18F52165C();
  __swift_project_value_buffer(v3, qword_1ED7077A8);

  v4 = sub_18F52163C();
  v5 = sub_18F52221C();

  if (os_log_type_enabled(v4, v5))
  {
    swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_51_1();
    v22 = v6;
    *v1 = 136315138;
    v7 = sub_18F52262C();
    v9 = sub_18F11897C(v7, v8, &v22);

    *(v1 + 4) = v9;
    OUTLINED_FUNCTION_86_5(&dword_18F0E9000, v10, v11, "Key path %s with value of type [AppEntity] is not allowed and will be discarded; try adding an array of non-AppEntity types");
    OUTLINED_FUNCTION_89_2(v6);
    OUTLINED_FUNCTION_32();
    OUTLINED_FUNCTION_65();
  }

  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F38) + 40);
  sub_18F520B3C();
  v13 = OUTLINED_FUNCTION_8_29();
  __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  OUTLINED_FUNCTION_28_28();
  sub_18F0EF1A8(a1 + v12, &qword_1EACCF7A8);
  v17 = OUTLINED_FUNCTION_8_29();

  return __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
}

uint64_t static _DialogBuilderEntity.buildExpression(_:)(uint64_t a1)
{
  v1 = MEMORY[0x1E69E7CC0];
  v8 = MEMORY[0x1E69E7CC0];
  v2 = *(a1 + 16);
  if (!v2)
  {
    return v1;
  }

  if (v2 == 1)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  for (i = (a1 + 32); ; i += 5)
  {
    v5 = OUTLINED_FUNCTION_53();
    __swift_project_boxed_opaque_existential_1Tm(v5, v6);
    result = sub_18F259454(i, &v8, 0, 0xE000000000000000, v3);
    if (v3 == 0x7FFFFFFFFFFFFFFFLL)
    {
      break;
    }

    ++v3;
    if (!--v2)
    {
      return v8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_18F28E12C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  _NLGRepresentationEntity.init(keyPath:)(a1, *(*(a2 + 8) + 24), a3);
}

uint64_t static _DialogBuilderEntity.buildExpression<A, B>(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  _NLGRepresentationEntity.init(keyPath:)(a1, *(*(*(*(*a1 + *MEMORY[0x1E69E77B0] + 8) + 104) + 8) + 24), a2);
}

void static _DialogBuilderEntity.buildBlock(_:)()
{
  OUTLINED_FUNCTION_18();
  v2 = v1;
  v15 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F38);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_14_7();
  v5 = *(v2 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  for (i = v2 + 32; v5; --v5)
  {
    sub_18F0FD6C4(i, v17);
    v8 = OUTLINED_FUNCTION_77_3();
    sub_18F0FD6C4(v8, v9);
    v10 = OUTLINED_FUNCTION_115();
    __swift_instantiateConcreteTypeFromMangledNameV2(v10);
    if (OUTLINED_FUNCTION_49_8())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      sub_18F0EF1A8(v0, &qword_1EACD3F38);
    }

    else
    {
      v11 = OUTLINED_FUNCTION_77_3();
      sub_18F0FD0B4(v11, v12);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v6;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_76_5();
        OUTLINED_FUNCTION_30_17();
        sub_18F3AAE0C();
        v6 = v18;
      }

      v14 = *(v6 + 16);
      if (v14 >= *(v6 + 24) >> 1)
      {
        sub_18F3AAE0C();
        v6 = v18;
      }

      *(v6 + 16) = v14 + 1;
      sub_18F0FD0B4(&v16, v6 + 40 * v14 + 32);
    }

    i += 40;
  }

  *v15 = v6;
  OUTLINED_FUNCTION_1_55();
  OUTLINED_FUNCTION_16();
}

void sub_18F28E368()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v5 = v4;
  v14 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F38);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_14_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F53F800;
  *(inited + 56) = v5;
  *(inited + 64) = v3;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_31_0();
  (*(v9 + 16))();
  v10 = MEMORY[0x1E69E7CC0];
  sub_18F0FD6C4(inited + 32, v16);
  sub_18F0FD6C4(v16, v15);
  v11 = OUTLINED_FUNCTION_115();
  __swift_instantiateConcreteTypeFromMangledNameV2(v11);
  if (OUTLINED_FUNCTION_49_8())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    sub_18F0EF1A8(v1, &qword_1EACD3F38);
  }

  else
  {
    sub_18F0FD0B4(v16, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      OUTLINED_FUNCTION_30_17();
      sub_18F3AAE0C();
      v10 = v17;
    }

    OUTLINED_FUNCTION_52_6();
    if (v13)
    {
      sub_18F3AAE0C();
      v10 = v17;
    }

    *(v10 + 16) = v3;
    sub_18F0FD0B4(v15, v10 + 40 * v0 + 32);
  }

  swift_setDeallocating();
  sub_18F170528();
  *v14 = v10;
  OUTLINED_FUNCTION_1_55();
  OUTLINED_FUNCTION_16();
}

void sub_18F28E560()
{
  OUTLINED_FUNCTION_18();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v20 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F38);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_14_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F541F50;
  *(inited + 56) = v9;
  *(inited + 64) = v5;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_31_0();
  (*(v13 + 16))();
  *(inited + 96) = v7;
  *(inited + 104) = v3;
  __swift_allocate_boxed_opaque_existential_1((inited + 72));
  OUTLINED_FUNCTION_31_0();
  (*(v14 + 16))();
  v15 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 112; i += 40)
  {
    sub_18F0FD6C4(inited + i, &v22);
    sub_18F0FD6C4(&v22, v21);
    v17 = OUTLINED_FUNCTION_115();
    __swift_instantiateConcreteTypeFromMangledNameV2(v17);
    if (OUTLINED_FUNCTION_49_8())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v22);
      sub_18F0EF1A8(v1, &qword_1EACD3F38);
    }

    else
    {
      sub_18F0FD0B4(&v22, v21);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v15;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_30_17();
        sub_18F3AAE0C();
        v15 = v23;
      }

      OUTLINED_FUNCTION_52_6();
      if (v19)
      {
        sub_18F3AAE0C();
        v15 = v23;
      }

      *(v15 + 16) = v5;
      sub_18F0FD0B4(v21, v15 + 40 * v0 + 32);
    }
  }

  swift_setDeallocating();
  sub_18F170528();
  *v20 = v15;
  OUTLINED_FUNCTION_1_55();
  OUTLINED_FUNCTION_16();
}

void sub_18F28E7BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_18();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v43 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F38);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_14_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F549D20;
  *(inited + 56) = v29;
  *(inited + 64) = a21;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_31_0();
  (*(v35 + 16))();
  *(inited + 96) = v27;
  *(inited + 104) = a22;
  __swift_allocate_boxed_opaque_existential_1((inited + 72));
  OUTLINED_FUNCTION_31_0();
  (*(v36 + 16))();
  *(inited + 136) = v25;
  *(inited + 144) = a23;
  __swift_allocate_boxed_opaque_existential_1((inited + 112));
  OUTLINED_FUNCTION_31_0();
  (*(v37 + 16))();
  v38 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 152; i += 40)
  {
    sub_18F0FD6C4(inited + i, &v45);
    sub_18F0FD6C4(&v45, v44);
    v40 = OUTLINED_FUNCTION_115();
    __swift_instantiateConcreteTypeFromMangledNameV2(v40);
    if (OUTLINED_FUNCTION_49_8())
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v45);
      sub_18F0EF1A8(v23, &qword_1EACD3F38);
    }

    else
    {
      sub_18F0FD0B4(&v45, v44);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v46 = v38;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_30_17();
        sub_18F3AAE0C();
        v38 = v46;
      }

      OUTLINED_FUNCTION_52_6();
      if (v42)
      {
        sub_18F3AAE0C();
        v38 = v46;
      }

      *(v38 + 16) = v31;
      sub_18F0FD0B4(v44, v38 + 40 * a22 + 32);
    }
  }

  swift_setDeallocating();
  sub_18F170528();
  *v43 = v38;
  OUTLINED_FUNCTION_1_55();
  OUTLINED_FUNCTION_16();
}

void sub_18F28EA74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  OUTLINED_FUNCTION_18();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v44 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F38);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_26_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F543810;
  *(inited + 56) = v31;
  *(inited + 64) = a23;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_31_0();
  (*(v35 + 16))();
  *(inited + 96) = v29;
  *(inited + 104) = a24;
  __swift_allocate_boxed_opaque_existential_1((inited + 72));
  OUTLINED_FUNCTION_31_0();
  (*(v36 + 16))();
  *(inited + 136) = v27;
  *(inited + 144) = a25;
  __swift_allocate_boxed_opaque_existential_1((inited + 112));
  OUTLINED_FUNCTION_31_0();
  (*(v37 + 16))();
  *(inited + 176) = a21;
  *(inited + 184) = a26;
  __swift_allocate_boxed_opaque_existential_1((inited + 152));
  OUTLINED_FUNCTION_31_0();
  (*(v38 + 16))();
  v39 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 192; i += 40)
  {
    sub_18F0FD6C4(inited + i, v46);
    sub_18F0FD6C4(v46, &v45);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F40);
    if (swift_dynamicCast())
    {
      v41 = OUTLINED_FUNCTION_89_2(v46);
      sub_18F0EF1A8(v41, &qword_1EACD3F38);
    }

    else
    {
      sub_18F0FD0B4(v46, &v45);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v47 = v39;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_30_17();
        sub_18F3AAE0C();
        v39 = v47;
      }

      v43 = *(v39 + 16);
      if (v43 >= *(v39 + 24) >> 1)
      {
        sub_18F3AAE0C();
        v39 = v47;
      }

      *(v39 + 16) = v43 + 1;
      sub_18F0FD0B4(&v45, v39 + 40 * v43 + 32);
    }
  }

  swift_setDeallocating();
  sub_18F170528();
  *v44 = v39;
  OUTLINED_FUNCTION_1_55();
  OUTLINED_FUNCTION_16();
}

void sub_18F28ED80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_18();
  v30 = v29;
  v32 = v31;
  v46 = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F38);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_26_10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD0010);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_18F54EF20;
  *(inited + 56) = v32;
  *(inited + 64) = a25;
  __swift_allocate_boxed_opaque_existential_1((inited + 32));
  OUTLINED_FUNCTION_31_0();
  (*(v36 + 16))();
  *(inited + 96) = v30;
  *(inited + 104) = a26;
  __swift_allocate_boxed_opaque_existential_1((inited + 72));
  OUTLINED_FUNCTION_31_0();
  (*(v37 + 16))();
  *(inited + 136) = a21;
  *(inited + 144) = a27;
  __swift_allocate_boxed_opaque_existential_1((inited + 112));
  OUTLINED_FUNCTION_31_0();
  (*(v38 + 16))();
  *(inited + 176) = a22;
  *(inited + 184) = a28;
  __swift_allocate_boxed_opaque_existential_1((inited + 152));
  OUTLINED_FUNCTION_31_0();
  (*(v39 + 16))();
  *(inited + 216) = a23;
  *(inited + 224) = a29;
  __swift_allocate_boxed_opaque_existential_1((inited + 192));
  OUTLINED_FUNCTION_31_0();
  (*(v40 + 16))();
  v41 = MEMORY[0x1E69E7CC0];
  for (i = 32; i != 232; i += 40)
  {
    sub_18F0FD6C4(inited + i, v48);
    sub_18F0FD6C4(v48, v47);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACD3F40);
    if (swift_dynamicCast())
    {
      v43 = OUTLINED_FUNCTION_89_2(v48);
      sub_18F0EF1A8(v43, &qword_1EACD3F38);
    }

    else
    {
      sub_18F0FD0B4(v48, v47);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v49 = v41;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_30_17();
        sub_18F3AAE0C();
        v41 = v49;
      }

      v45 = *(v41 + 16);
      if (v45 >= *(v41 + 24) >> 1)
      {
        sub_18F3AAE0C();
        v41 = v49;
      }

      *(v41 + 16) = v45 + 1;
      sub_18F0FD0B4(v47, v41 + 40 * v45 + 32);
    }
  }

  swift_setDeallocating();
  sub_18F170528();
  *v46 = v41;
  OUTLINED_FUNCTION_1_55();
  OUTLINED_FUNCTION_16();
}

uint64_t _NLGRepresentationEmpty.keyPath.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t _NLGRepresentationEmpty.format.setter()
{
  OUTLINED_FUNCTION_18_7();

  *(v1 + 8) = v2;
  *(v1 + 16) = v0;
  return result;
}

uint64_t _NLGRepresentationEmpty.value.setter()
{
  OUTLINED_FUNCTION_18_7();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t _NLGRepresentationEmpty.type.setter()
{
  OUTLINED_FUNCTION_18_7();

  *(v1 + 40) = v2;
  *(v1 + 48) = v0;
  return result;
}

uint64_t _NLGRepresentationEmpty.init(keyPath:)@<X0>(uint64_t a1@<X8>)
{

  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  type metadata accessor for _NLGRepresentationEmpty();
  sub_18F520B3C();
  OUTLINED_FUNCTION_11();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t _NLGRepresentationEmpty.init(keyPath:format:)()
{

  OUTLINED_FUNCTION_74_3();
  type metadata accessor for _NLGRepresentationEmpty();
  sub_18F520B3C();
  OUTLINED_FUNCTION_11();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t _NLGRepresentationEmpty.init<A>(instance:representation:)@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_31_0();
  (*(v2 + 8))(v3, v4);
  OUTLINED_FUNCTION_31_0();
  v5 = OUTLINED_FUNCTION_22();
  v6(v5);
  v7 = *(type metadata accessor for _NLGRepresentationEmpty() + 40);
  sub_18F520B3C();
  OUTLINED_FUNCTION_13_28();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_74_3();
  sub_18F0EF1A8(a1 + v7, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_13_28();

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t _NLGRepresentationEmpty.init(keyPath:format:value:type:title:)@<X0>(uint64_t a1@<X8>)
{

  v2 = OUTLINED_FUNCTION_56();
  sub_18F0EF1A8(v2, v3);
  v4 = *(type metadata accessor for _NLGRepresentationEmpty() + 40);
  sub_18F520B3C();
  OUTLINED_FUNCTION_13_28();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  sub_18F0EF1A8(a1 + v4, &qword_1EACCF7A8);
  OUTLINED_FUNCTION_13_28();

  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t sub_18F28F5F0(uint64_t a1)
{
  _NLGRepresentationEmpty.init<A>(instance:representation:)(a1);
  v2 = *(v1 + 8);

  return v2();
}

void _NLGRepresentationIntent.init<A>(instance:representation:)()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v44 = v6;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EACCF7A8);
  OUTLINED_FUNCTION_10(v9);
  OUTLINED_FUNCTION_12();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v13 = type metadata accessor for _NLGRepresentationIntent();
  *(v8 + 24) = 0u;
  *(v8 + 40) = 0u;
  v14 = *(v13 + 48);
  sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  v43 = v15;
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v15);
  v19 = (*(v1 + 16))(v3, v1);
  if (v19)
  {
    OUTLINED_FUNCTION_47_3();
    sub_18F52288C();
    OUTLINED_FUNCTION_29_13();
    v19 = swift_dynamicCastClass();
    if (!v19)
    {

      v19 = 0;
    }
  }

  *v8 = v19;
  *(v8 + 8) = (*(v1 + 24))(v3, v1);
  *(v8 + 16) = v20;
  WitnessTable = swift_getWitnessTable();
  v22 = v44;
  sub_18F28CF44(v13, WitnessTable, &v45);
  if (v46)
  {
    sub_18F0FD0B4(&v45, v47);
    v23 = v48;
    v24 = v49;
    __swift_project_boxed_opaque_existential_1Tm(v47, v48);
    (*(v24 + 72))(&v45, v23, v24);
    v25 = v46;
    if (v46)
    {
      __swift_project_boxed_opaque_existential_1Tm(&v45, v46);
      OUTLINED_FUNCTION_29_13();
      _IntentValue.asNLGValue.getter();
      v25 = v26;
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_1Tm(&v45);
    }

    else
    {
      sub_18F0EF1A8(&v45, &qword_1EACD0620);
      v28 = 0;
    }

    *(v8 + 24) = v25;
    *(v8 + 32) = v28;
    sub_18F0FD6C4(v47, &v45);
    v35 = sub_18F28CE54(&v45);
    v37 = v36;
    sub_18F0EF1A8(&v45, &qword_1EACD0D08);
    *(v8 + 40) = v35;
    *(v8 + 48) = v37;
    v39 = v48;
    v38 = v49;
    __swift_project_boxed_opaque_existential_1Tm(v47, v48);
    (*(*(v38 + 8) + 32))(v39);
    OUTLINED_FUNCTION_31_0();
    v40 = OUTLINED_FUNCTION_123();
    v41(v40);
    OUTLINED_FUNCTION_31_0();
    (*(v42 + 8))(v44, v5);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v43);
    sub_18F2608E8(v12, v8 + v14);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
  }

  else
  {
    OUTLINED_FUNCTION_31_0();
    v29 = OUTLINED_FUNCTION_123();
    v30(v29);
    OUTLINED_FUNCTION_31_0();
    (*(v31 + 8))(v22, v5);
    sub_18F0EF1A8(&v45, &qword_1EACD0D08);
    *(v8 + 24) = 0u;
    *(v8 + 40) = 0u;
    sub_18F0EF1A8(v8 + v14, &qword_1EACCF7A8);
    OUTLINED_FUNCTION_11();
    __swift_storeEnumTagSinglePayload(v32, v33, v34, v43);
  }

  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F28FAD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t (*a23)(void, uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_18();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  a23(0, a21, a22);
  sub_18F520B3C();
  OUTLINED_FUNCTION_11();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  *v38 = v36;
  v38[1] = v34;
  v38[2] = v32;
  v38[3] = v30;
  v38[4] = v28;
  v38[5] = v26;
  v38[6] = v24;
  OUTLINED_FUNCTION_16();

  return sub_18F2608E8(v43, v44);
}

uint64_t sub_18F28FB8C()
{
  _NLGRepresentationIntent.init<A>(instance:representation:)();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18F28FCE4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_18F0FC874;

  return _NLGRepresentationEntity.init<A>(instance:representation:)();
}

uint64_t sub_18F28FDC4()
{
  v1 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v2);
  memcpy(__dst, v0, sizeof(__dst));
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F295EE4(&qword_1EACD33A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  sub_18F1E9F48(&qword_1EACD33A8, &unk_1EACD4440);
  sub_18F52266C();
  sub_18F52067C();
  sub_18F171394();
  v3 = sub_18F52068C();
  v5 = v4;
  sub_18F5218FC();
  v6 = sub_18F5218EC();
  if (v7)
  {
    v8 = v6;
    sub_18F123A1C(v3, v5);
  }

  else
  {
    sub_18F123A1C(v3, v5);

    return 32123;
  }

  return v8;
}

uint64_t sub_18F290088()
{
  v0 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v1);
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F295EE4(&qword_1EACD33A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  sub_18F1E9F48(&qword_1EACD33A8, &unk_1EACD4440);
  sub_18F52266C();
  sub_18F52067C();
  v2 = sub_18F52068C();
  v4 = v3;
  sub_18F5218FC();
  v5 = sub_18F5218EC();
  if (v6)
  {
    v7 = v5;
    sub_18F123A1C(v2, v4);
  }

  else
  {
    sub_18F123A1C(v2, v4);

    return 32123;
  }

  return v7;
}

void sub_18F290380(uint64_t a1, uint64_t a2, void *a3)
{
  if (a1)
  {
  }
}

uint64_t sub_18F2903C0()
{
  v0 = sub_18F52190C();
  v1 = OUTLINED_FUNCTION_10(v0);
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_27_23();
  v2 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_67();
  sub_18F5206AC();
  OUTLINED_FUNCTION_88_4();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  OUTLINED_FUNCTION_2_56();
  sub_18F295EE4(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  OUTLINED_FUNCTION_0_60();
  sub_18F1E9F48(v5, v6);
  sub_18F52266C();
  sub_18F52067C();
  sub_18F295F7C();
  sub_18F52068C();
  sub_18F5218FC();
  OUTLINED_FUNCTION_66_0();
  sub_18F5218EC();
  if (v7)
  {
    OUTLINED_FUNCTION_44_9();
    v8 = OUTLINED_FUNCTION_66_0();
    sub_18F123A1C(v8, v9);
  }

  else
  {
    v11 = OUTLINED_FUNCTION_66_0();
    sub_18F123A1C(v11, v12);

    OUTLINED_FUNCTION_80_4();
  }

  return OUTLINED_FUNCTION_22();
}

uint64_t sub_18F29060C()
{
  v1 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v2);
  memcpy(__dst, v0, sizeof(__dst));
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F295EE4(&qword_1EACD33A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  sub_18F1E9F48(&qword_1EACD33A8, &unk_1EACD4440);
  sub_18F52266C();
  sub_18F52067C();
  sub_18F281F90();
  v3 = sub_18F52068C();
  v5 = v4;
  sub_18F5218FC();
  v6 = sub_18F5218EC();
  if (v7)
  {
    v8 = v6;
    sub_18F123A1C(v3, v5);
  }

  else
  {
    sub_18F123A1C(v3, v5);

    return 32123;
  }

  return v8;
}

uint64_t sub_18F2908D0()
{
  v1 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v2);
  memcpy(__dst, v0, sizeof(__dst));
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F295EE4(&qword_1EACD33A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  sub_18F1E9F48(&qword_1EACD33A8, &unk_1EACD4440);
  sub_18F52266C();
  sub_18F52067C();
  sub_18F1E2E5C();
  v3 = sub_18F52068C();
  v5 = v4;
  sub_18F5218FC();
  v6 = sub_18F5218EC();
  if (v7)
  {
    v8 = v6;
    sub_18F123A1C(v3, v5);
  }

  else
  {
    sub_18F123A1C(v3, v5);

    return 32123;
  }

  return v8;
}

uint64_t sub_18F290B94()
{
  v1 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v2);
  memcpy(__dst, v0, sizeof(__dst));
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F295EE4(&qword_1EACD33A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  sub_18F1E9F48(&qword_1EACD33A8, &unk_1EACD4440);
  sub_18F52266C();
  sub_18F52067C();
  sub_18F295A4C();
  v3 = sub_18F52068C();
  v5 = v4;
  sub_18F5218FC();
  v6 = sub_18F5218EC();
  if (v7)
  {
    v8 = v6;
    sub_18F123A1C(v3, v5);
  }

  else
  {
    sub_18F123A1C(v3, v5);

    return 32123;
  }

  return v8;
}

uint64_t sub_18F290E60()
{
  v1 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v2);
  memcpy(__dst, v0, sizeof(__dst));
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F295EE4(&qword_1EACD33A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  sub_18F1E9F48(&qword_1EACD33A8, &unk_1EACD4440);
  sub_18F52266C();
  sub_18F52067C();
  sub_18F1F1B34();
  v3 = sub_18F52068C();
  v5 = v4;
  sub_18F5218FC();
  v6 = sub_18F5218EC();
  if (v7)
  {
    v8 = v6;
    sub_18F123A1C(v3, v5);
  }

  else
  {
    sub_18F123A1C(v3, v5);

    return 32123;
  }

  return v8;
}

void sub_18F291124()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v2 = sub_18F52190C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_27_23();
  sub_18F52066C();
  OUTLINED_FUNCTION_65_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_10();
  sub_18F5206AC();
  OUTLINED_FUNCTION_88_4();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(OUTLINED_FUNCTION_69_2() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  OUTLINED_FUNCTION_2_56();
  sub_18F295EE4(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  OUTLINED_FUNCTION_0_60();
  sub_18F1E9F48(v7, v8);
  OUTLINED_FUNCTION_68_4();
  v9 = sub_18F52067C();
  v1(v9);
  v10 = sub_18F52068C();
  v12 = v11;
  sub_18F5218FC();
  sub_18F5218EC();
  if (v13)
  {
    OUTLINED_FUNCTION_44_9();
    sub_18F123A1C(v10, v12);
  }

  else
  {
    sub_18F123A1C(v10, v12);

    OUTLINED_FUNCTION_80_4();
  }

  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F291354()
{
  v1 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v2);
  memcpy(__dst, v0, sizeof(__dst));
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F295EE4(&qword_1EACD33A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  sub_18F1E9F48(&qword_1EACD33A8, &unk_1EACD4440);
  sub_18F52266C();
  sub_18F52067C();
  sub_18F295D40();
  v3 = sub_18F52068C();
  v5 = v4;
  sub_18F5218FC();
  v6 = sub_18F5218EC();
  if (v7)
  {
    v8 = v6;
    sub_18F123A1C(v3, v5);
  }

  else
  {
    sub_18F123A1C(v3, v5);

    return 32123;
  }

  return v8;
}

uint64_t sub_18F291624()
{
  v1 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v2);
  memcpy(__dst, v0, sizeof(__dst));
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F295EE4(&qword_1EACD33A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  sub_18F1E9F48(&qword_1EACD33A8, &unk_1EACD4440);
  sub_18F52266C();
  sub_18F52067C();
  sub_18F23A2AC();
  v3 = sub_18F52068C();
  v5 = v4;
  sub_18F5218FC();
  v6 = sub_18F5218EC();
  if (v7)
  {
    v8 = v6;
    sub_18F123A1C(v3, v5);
  }

  else
  {
    sub_18F123A1C(v3, v5);

    return 32123;
  }

  return v8;
}

uint64_t sub_18F2918E8()
{
  v0 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v1);
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F295EE4(&qword_1EACD33A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  sub_18F1E9F48(&qword_1EACD33A8, &unk_1EACD4440);
  sub_18F52266C();
  sub_18F52067C();
  sub_18F295C98();
  v2 = sub_18F52068C();
  v4 = v3;
  sub_18F5218FC();
  v5 = sub_18F5218EC();
  if (v6)
  {
    v7 = v5;
    sub_18F123A1C(v2, v4);
  }

  else
  {
    sub_18F123A1C(v2, v4);

    return 32123;
  }

  return v7;
}

uint64_t sub_18F291BAC()
{
  v0 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v1);
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F295EE4(&qword_1EACD33A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  sub_18F1E9F48(&qword_1EACD33A8, &unk_1EACD4440);
  sub_18F52266C();
  sub_18F52067C();
  sub_18F1DFDF4();
  v2 = sub_18F52068C();
  v4 = v3;
  sub_18F5218FC();
  v5 = sub_18F5218EC();
  if (v6)
  {
    v7 = v5;
    sub_18F123A1C(v2, v4);
  }

  else
  {
    sub_18F123A1C(v2, v4);

    return 32123;
  }

  return v7;
}

uint64_t sub_18F291E70()
{
  v1 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v2);
  memcpy(__dst, v0, sizeof(__dst));
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F295EE4(&qword_1EACD33A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  sub_18F1E9F48(&qword_1EACD33A8, &unk_1EACD4440);
  sub_18F52266C();
  sub_18F52067C();
  sub_18F1729A0();
  v3 = sub_18F52068C();
  v5 = v4;
  sub_18F5218FC();
  v6 = sub_18F5218EC();
  if (v7)
  {
    v8 = v6;
    sub_18F123A1C(v3, v5);
  }

  else
  {
    sub_18F123A1C(v3, v5);

    return 32123;
  }

  return v8;
}

uint64_t sub_18F292140()
{
  v1 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v2);
  memcpy(__dst, v0, sizeof(__dst));
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F295EE4(&qword_1EACD33A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  sub_18F1E9F48(&qword_1EACD33A8, &unk_1EACD4440);
  sub_18F52266C();
  sub_18F52067C();
  sub_18F295AF4();
  v3 = sub_18F52068C();
  v5 = v4;
  sub_18F5218FC();
  v6 = sub_18F5218EC();
  if (v7)
  {
    v8 = v6;
    sub_18F123A1C(v3, v5);
  }

  else
  {
    sub_18F123A1C(v3, v5);

    return 32123;
  }

  return v8;
}

uint64_t sub_18F292404()
{
  v0 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v1);
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F295EE4(&qword_1EACD33A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  sub_18F1E9F48(&qword_1EACD33A8, &unk_1EACD4440);
  sub_18F52266C();
  sub_18F52067C();
  sub_18F295BF0();
  v2 = sub_18F52068C();
  v4 = v3;
  sub_18F5218FC();
  v5 = sub_18F5218EC();
  if (v6)
  {
    v7 = v5;
    sub_18F123A1C(v2, v4);
  }

  else
  {
    sub_18F123A1C(v2, v4);

    return 32123;
  }

  return v7;
}

uint64_t sub_18F2926C8()
{
  v0 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v1);
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F295EE4(&qword_1EACD33A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  sub_18F1E9F48(&qword_1EACD33A8, &unk_1EACD4440);
  sub_18F52266C();
  sub_18F52067C();
  sub_18F295B9C();
  v2 = sub_18F52068C();
  v4 = v3;
  sub_18F5218FC();
  v5 = sub_18F5218EC();
  if (v6)
  {
    v7 = v5;
    sub_18F123A1C(v2, v4);
  }

  else
  {
    sub_18F123A1C(v2, v4);

    return 32123;
  }

  return v7;
}

uint64_t sub_18F29298C()
{
  v0 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v1);
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F295EE4(&qword_1EACD33A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  sub_18F1E9F48(&qword_1EACD33A8, &unk_1EACD4440);
  sub_18F52266C();
  sub_18F52067C();
  sub_18F5208EC();
  sub_18F295EE4(&qword_1EACD1828, MEMORY[0x1E6968848]);
  v2 = sub_18F52068C();
  v4 = v3;
  sub_18F5218FC();
  v5 = sub_18F5218EC();
  if (v6)
  {
    v7 = v5;
    sub_18F123A1C(v2, v4);
  }

  else
  {
    sub_18F123A1C(v2, v4);

    return 32123;
  }

  return v7;
}

void sub_18F292C88()
{
  OUTLINED_FUNCTION_18();
  v1 = v0;
  v2 = sub_18F52190C();
  v3 = OUTLINED_FUNCTION_10(v2);
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_53_4();
  sub_18F52066C();
  OUTLINED_FUNCTION_65_6();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_10();
  sub_18F5206AC();
  OUTLINED_FUNCTION_88_4();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(OUTLINED_FUNCTION_69_2() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  OUTLINED_FUNCTION_2_56();
  sub_18F295EE4(v5, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  OUTLINED_FUNCTION_0_60();
  sub_18F1E9F48(v7, v8);
  OUTLINED_FUNCTION_68_4();
  v9 = sub_18F52067C();
  v1(v9);
  sub_18F52068C();
  sub_18F5218FC();
  OUTLINED_FUNCTION_123();
  sub_18F5218EC();
  if (v10)
  {
    OUTLINED_FUNCTION_44_9();
    v11 = OUTLINED_FUNCTION_123();
    sub_18F123A1C(v11, v12);
  }

  else
  {
    v13 = OUTLINED_FUNCTION_123();
    sub_18F123A1C(v13, v14);

    OUTLINED_FUNCTION_80_4();
  }

  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_16();
}

uint64_t sub_18F292EAC()
{
  v0 = sub_18F52190C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_18F52066C();
  MEMORY[0x1EEE9AC00](v1);
  sub_18F5206AC();
  swift_allocObject();
  sub_18F52069C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4430);
  *(swift_allocObject() + 16) = xmmword_18F53F800;
  sub_18F52065C();
  sub_18F295EE4(&qword_1EACD33A0, MEMORY[0x1E6967F78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EACD4440);
  sub_18F1E9F48(&qword_1EACD33A8, &unk_1EACD4440);
  sub_18F52266C();
  sub_18F52067C();
  v2 = sub_18F52068C();
  v4 = v3;
  sub_18F5218FC();
  v5 = sub_18F5218EC();
  if (v6)
  {
    v7 = v5;
    sub_18F123A1C(v2, v4);
  }

  else
  {
    sub_18F123A1C(v2, v4);

    return 32123;
  }

  return v7;
}