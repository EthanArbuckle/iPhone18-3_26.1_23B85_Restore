unint64_t sub_221B8CF28(void *a1)
{
  v1 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v2 = swift_dynamicCast();
  v3 = v5;
  if (!v2)
  {
    v3 = 0;
  }

  return v3 | ((v2 ^ 1u) << 32);
}

uint64_t sub_221B8CFB4(void *a1)
{
  v1 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v2 = swift_dynamicCast();
  v3 = v5;
  if (!v2)
  {
    return 0;
  }

  return v3;
}

uint64_t static IntentValueTypeIdentifiable.from(_:context:)(void *a1)
{
  v1 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v2 = OUTLINED_FUNCTION_12_14();
  return OUTLINED_FUNCTION_20_15(v2);
}

id IntentValueTypeIdentifiable.lnValue.getter(uint64_t a1)
{
  v9[3] = a1;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v9);
  (*(*(a1 - 8) + 16))(boxed_opaque_existential_1, v1, a1);
  v4 = OUTLINED_FUNCTION_10_19();
  v6 = v5(v4);
  v7 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v9, v6);
}

id static LNValue.from(_:context:)(void *a1)
{
  v2 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  v3 = [a1 valueType];
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  return sub_2219A6260(v6, v3);
}

id sub_221B8D200@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = static LNValue.from(_:context:)(a1);
  *a2 = result;
  return result;
}

id sub_221B8D228(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 - 8);
  OUTLINED_FUNCTION_0_54();
  swift_getWitnessTable();
  return IntentValueTypeIdentifiable.lnValue.getter(a1);
}

unint64_t sub_221B8D26C(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  OUTLINED_FUNCTION_0_54();
  WitnessTable = swift_getWitnessTable();
  return static IntentValueTypeIdentifiable.canConvert(_:)(a1, a2, WitnessTable) & 1;
}

uint64_t sub_221B8D2C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  OUTLINED_FUNCTION_0_54();
  swift_getWitnessTable();
  return static IntentValueTypeIdentifiable.from(_:context:)(a1);
}

uint64_t sub_221B8D3E8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_221B8CDA0(a1);
  *a2 = result;
  return result;
}

uint64_t sub_221B8D82C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_221B8CE20(a1);
  *a2 = result;
  a2[1] = BYTE1(result) & 1;
  return result;
}

uint64_t sub_221B8D8F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_221B8CEA4(a1);
  *a2 = result;
  *(a2 + 2) = BYTE2(result) & 1;
  return result;
}

unint64_t sub_221B8D9B4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_221B8CF28(a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_221B8DC08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_221B8CD20(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

void *OUTLINED_FUNCTION_7_21(void *a1)
{
  v2 = a1[4];
  v3 = a1[3];

  return __swift_project_boxed_opaque_existential_0(a1, v3);
}

uint64_t OUTLINED_FUNCTION_9_24(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

id OUTLINED_FUNCTION_11_20(float a1)
{
  *v1 = a1;
  *(v1 + 4) = v2;
  *v3 = v2;
  *(v1 + 12) = 2080;

  return v2;
}

uint64_t OUTLINED_FUNCTION_12_14()
{

  return swift_dynamicCast();
}

void OUTLINED_FUNCTION_18_16(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

uint64_t OUTLINED_FUNCTION_19_15()
{

  return sub_221BCDC58();
}

uint64_t OUTLINED_FUNCTION_20_15(int a1)
{

  return __swift_storeEnumTagSinglePayload(v2, a1 ^ 1u, 1, v1);
}

BOOL static Measurement<>.canConvertFrom(_:)(void *a1)
{
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (!v2)
  {
    if (qword_27CFB7388 != -1)
    {
      swift_once();
    }

    v3 = sub_221BCCD88();
    __swift_project_value_buffer(v3, qword_27CFDEDF8);
    v4 = a1;
    v5 = sub_221BCCD68();
    v6 = sub_221BCDA78();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v7 = 138412546;
      *(v7 + 4) = v4;
      *v8 = v4;
      *(v7 + 12) = 2080;
      sub_221BCC258();
      v10 = v4;
      v11 = sub_221BCE478();
      v13 = sub_2219A6360(v11, v12, &v15);

      *(v7 + 14) = v13;
      _os_log_impl(&dword_221989000, v5, v6, "Cannot convert from %@ to %s", v7, 0x16u);
      sub_22199B738(v8);
      MEMORY[0x223DA4C00](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x223DA4C00](v9, -1, -1);
      MEMORY[0x223DA4C00](v7, -1, -1);
    }
  }

  return v2 != 0;
}

id static Measurement<>.lnValueType.getter()
{
  v0 = sub_2219A1D20(0, &qword_27CFBC030, 0x277CCAE20);
  if (OUTLINED_FUNCTION_0_55(v0))
  {
    v1 = objc_opt_self();
    v2 = &selRef_lengthValueType;
  }

  else
  {
    v3 = sub_2219A1D20(0, &qword_27CFBC038, 0x277CCAE28);
    if (OUTLINED_FUNCTION_0_55(v3))
    {
      v1 = objc_opt_self();
      v2 = &selRef_massValueType;
    }

    else
    {
      v4 = sub_2219A1D20(0, &qword_27CFBC040, 0x277CCAE48);
      if (OUTLINED_FUNCTION_0_55(v4))
      {
        v1 = objc_opt_self();
        v2 = &selRef_temperatureValueType;
      }

      else
      {
        v5 = sub_2219A1D20(0, &qword_27CFBC048, 0x277CCAE50);
        if (OUTLINED_FUNCTION_0_55(v5))
        {
          v1 = objc_opt_self();
          v2 = &selRef_volumeValueType;
        }

        else
        {
          v6 = sub_2219A1D20(0, &qword_27CFBC050, 0x277CCAE40);
          if (OUTLINED_FUNCTION_0_55(v6))
          {
            v1 = objc_opt_self();
            v2 = &selRef_speedValueType;
          }

          else
          {
            v7 = sub_2219A1D20(0, &qword_27CFBC058, 0x277CCADF8);
            if (OUTLINED_FUNCTION_0_55(v7))
            {
              v1 = objc_opt_self();
              v2 = &selRef_energyValueType;
            }

            else
            {
              v8 = sub_2219A1D20(0, &qword_27CFBC060, 0x277CCADD0);
              if (OUTLINED_FUNCTION_0_55(v8))
              {
                v1 = objc_opt_self();
                v2 = &selRef_durationValueType;
              }

              else
              {
                v9 = sub_2219A1D20(0, &qword_27CFBC068, 0x277CCADA0);
                if (OUTLINED_FUNCTION_0_55(v9))
                {
                  v1 = objc_opt_self();
                  v2 = &selRef_accelerationValueType;
                }

                else
                {
                  v10 = sub_2219A1D20(0, &qword_27CFBC070, 0x277CCADA8);
                  if (OUTLINED_FUNCTION_0_55(v10))
                  {
                    v1 = objc_opt_self();
                    v2 = &selRef_angleValueType;
                  }

                  else
                  {
                    v11 = sub_2219A1D20(0, &qword_27CFBC078, 0x277CCADB0);
                    if (OUTLINED_FUNCTION_0_55(v11))
                    {
                      v1 = objc_opt_self();
                      v2 = &selRef_areaValueType;
                    }

                    else
                    {
                      v12 = sub_2219A1D20(0, &qword_27CFBC080, 0x277CCADB8);
                      if (OUTLINED_FUNCTION_0_55(v12))
                      {
                        v1 = objc_opt_self();
                        v2 = &selRef_concentrationMassValueType;
                      }

                      else
                      {
                        v13 = sub_2219A1D20(0, &qword_27CFBC088, 0x277CCADC8);
                        if (OUTLINED_FUNCTION_0_55(v13))
                        {
                          v1 = objc_opt_self();
                          v2 = &selRef_dispersionValueType;
                        }

                        else
                        {
                          v14 = sub_2219A1D20(0, &qword_27CFBC090, 0x277CCADD8);
                          if (OUTLINED_FUNCTION_0_55(v14))
                          {
                            v1 = objc_opt_self();
                            v2 = &selRef_electricChargeValueType;
                          }

                          else
                          {
                            v15 = sub_2219A1D20(0, &qword_27CFBC098, 0x277CCADE0);
                            if (OUTLINED_FUNCTION_0_55(v15))
                            {
                              v1 = objc_opt_self();
                              v2 = &selRef_electricCurrentValueType;
                            }

                            else
                            {
                              v16 = sub_2219A1D20(0, &qword_27CFBC0A0, 0x277CCADE8);
                              if (OUTLINED_FUNCTION_0_55(v16))
                              {
                                v1 = objc_opt_self();
                                v2 = &selRef_electricPotentialDifferenceValueType;
                              }

                              else
                              {
                                v17 = sub_2219A1D20(0, &qword_27CFBC0A8, 0x277CCADF0);
                                if (OUTLINED_FUNCTION_0_55(v17))
                                {
                                  v1 = objc_opt_self();
                                  v2 = &selRef_electricResistanceValueType;
                                }

                                else
                                {
                                  v18 = sub_2219A1D20(0, &qword_27CFBC0B0, 0x277CCAE00);
                                  if (OUTLINED_FUNCTION_0_55(v18))
                                  {
                                    v1 = objc_opt_self();
                                    v2 = &selRef_frequencyValueType;
                                  }

                                  else
                                  {
                                    v19 = sub_2219A1D20(0, &qword_27CFBC0B8, 0x277CCAE08);
                                    if (OUTLINED_FUNCTION_0_55(v19))
                                    {
                                      v1 = objc_opt_self();
                                      v2 = &selRef_fuelEfficiencyValueType;
                                    }

                                    else
                                    {
                                      v20 = sub_2219A1D20(0, &qword_27CFBC0C0, 0x277CCAE10);
                                      if (OUTLINED_FUNCTION_0_55(v20))
                                      {
                                        v1 = objc_opt_self();
                                        v2 = &selRef_illuminanceValueType;
                                      }

                                      else
                                      {
                                        v21 = sub_2219A1D20(0, &qword_27CFBC0C8, 0x277CCAE18);
                                        if (OUTLINED_FUNCTION_0_55(v21))
                                        {
                                          v1 = objc_opt_self();
                                          v2 = &selRef_informationStorageValueType;
                                        }

                                        else
                                        {
                                          v22 = sub_2219A1D20(0, &qword_27CFBC0D0, 0x277CCAE30);
                                          if (OUTLINED_FUNCTION_0_55(v22))
                                          {
                                            v1 = objc_opt_self();
                                            v2 = &selRef_powerValueType;
                                          }

                                          else
                                          {
                                            v23 = sub_2219A1D20(0, &qword_27CFBC0D8, 0x277CCAE38);
                                            v24 = OUTLINED_FUNCTION_0_55(v23);
                                            v1 = objc_opt_self();
                                            v2 = &selRef_pressureValueType;
                                            if (!v24)
                                            {
                                              v2 = &selRef_unsupportedMeasurementValueType;
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
    }
  }

  v25 = [v1 *v2];

  return v25;
}

uint64_t sub_221B8E604(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221B8E654(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_55(uint64_t a1)
{

  return MEMORY[0x2821FE920](v1, a1);
}

uint64_t OUTLINED_FUNCTION_0_56()
{

  return sub_221BCE058();
}

uint64_t static NSNull.canConvert(_:)(void *a1)
{
  if (a1)
  {
    v1 = [a1 valueType];
  }

  else
  {
    v1 = 0;
  }

  v2 = [objc_allocWithZone(MEMORY[0x277D238A0]) init];
  if (v1)
  {
    sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
    v3 = sub_221BCDC58();

    v2 = v1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

id static NSNull.lnValueType.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277D238A0]);

  return [v0 init];
}

uint64_t static NSNull.from(_:context:)(void *a1)
{
  v1 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  if (swift_dynamicCast())
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

id NSNull.lnValue.getter()
{
  v6[3] = sub_2219A1D20(0, qword_27CFB7E18, 0x277CBEB68);
  v1 = objc_allocWithZone(MEMORY[0x277D238A0]);
  v2 = v0;
  v3 = [v1 init];
  v4 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v6, v3);
}

uint64_t sub_221B8E9B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = static NSNull.from(_:context:)(a1);
  *a2 = result;
  return result;
}

BOOL sub_221B8E9E0(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v6, v4);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, *(a1 + 16));
  if (EnumTagSinglePayload != 1)
  {
    (*(v2 + 8))(v6, a1);
  }

  return EnumTagSinglePayload == 1;
}

uint64_t static Optional<A>.from(_:context:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  (*(*(a1 + 8) + 32))();
  v3 = sub_221BCDC98();

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v3);
}

uint64_t Optional<A>.lnValue.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v36 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v36 - v12;
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18, v20, v16);
  if (__swift_getEnumTagSinglePayload(v18, 1, v3) != 1)
  {
    (*(v4 + 32))(v13, v18, v3);
    v22 = (*(*(a2 + 8) + 16))(v3);
    if (v22)
    {
      v21 = v22;
      (*(v4 + 8))(v13, v3);
      return v21;
    }

    if (qword_27CFB7388 != -1)
    {
      swift_once();
    }

    v24 = sub_221BCCD88();
    __swift_project_value_buffer(v24, qword_27CFDEDF8);
    v25 = *(v4 + 16);
    v25(v10, v13, v3);
    v26 = sub_221BCCD68();
    v27 = sub_221BCDA78();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v37 = v36;
      *v28 = 136315138;
      v25(v7, v10, v3);
      v29 = sub_221BCD3D8();
      v31 = v30;
      v32 = *(v4 + 8);
      v32(v10, v3);
      v33 = sub_2219A6360(v29, v31, &v37);

      *(v28 + 4) = v33;
      _os_log_impl(&dword_221989000, v26, v27, "Optional - Could not get LNValue from %s", v28, 0xCu);
      v34 = v36;
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x223DA4C00](v34, -1, -1);
      MEMORY[0x223DA4C00](v28, -1, -1);

      v32(v13, v3);
    }

    else
    {

      v35 = *(v4 + 8);
      v35(v10, v3);
      v35(v13, v3);
    }
  }

  return 0;
}

uint64_t static Optional<A>.acceptVisitor(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v5);
  return (*(v6 + 32))(a2, a2, *(a3 + 8), v5, v6);
}

uint64_t sub_221B8F05C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221B8F0AC(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  v6 = *(a3[1] + 8);
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_221B8F100(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

id static AttributedString.lnValueType.getter()
{
  v0 = [objc_opt_self() attributedStringValueType];

  return v0;
}

uint64_t static AttributedString.from(_:context:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [a1 value];
  sub_221BCDCF8();
  swift_unknownObjectRelease();
  sub_221B8F240();
  if (swift_dynamicCast())
  {
    sub_221BCC308();
    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  v5 = sub_221BCC2F8();
  return __swift_storeEnumTagSinglePayload(a2, v4, 1, v5);
}

unint64_t sub_221B8F240()
{
  result = qword_27CFBC0E0;
  if (!qword_27CFBC0E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27CFBC0E0);
  }

  return result;
}

id AttributedString.lnValue.getter()
{
  v1 = sub_221BCC2F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](v1);
  v5 = v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_221B8F240();
  (*(v2 + 16))(v5, v0, v1);
  v7 = sub_221BCDBA8();
  v11[3] = v6;
  v11[0] = v7;
  v8 = [objc_opt_self() attributedStringValueType];
  v9 = objc_allocWithZone(MEMORY[0x277D23958]);
  return sub_2219A6260(v11, v8);
}

id static Bool.lnValueType.getter()
{
  v0 = [objc_opt_self() BOOLValueType];

  return v0;
}

id static CLPlacemark.lnValueType.getter()
{
  v0 = [objc_opt_self() placemarkValueType];

  return v0;
}

id static Date.lnValueType.getter()
{
  v0 = [objc_opt_self() dateValueType];

  return v0;
}

id static DateComponents.lnValueType.getter()
{
  v0 = [objc_opt_self() dateComponentsValueType];

  return v0;
}

id static Double.lnValueType.getter()
{
  v0 = [objc_opt_self() doubleValueType];

  return v0;
}

id static Int.lnValueType.getter()
{
  v0 = [objc_opt_self() intValueType];

  return v0;
}

id static Int8.lnValueType.getter()
{
  v0 = [objc_opt_self() int8ValueType];

  return v0;
}

id static Int16.lnValueType.getter()
{
  v0 = [objc_opt_self() int16ValueType];

  return v0;
}

id static Int32.lnValueType.getter()
{
  v0 = [objc_opt_self() int32ValueType];

  return v0;
}

id static Int64.lnValueType.getter()
{
  v0 = [objc_opt_self() int64ValueType];

  return v0;
}

id static URL.lnValueType.getter()
{
  v0 = [objc_opt_self() URLValueType];

  return v0;
}

id static String.lnValueType.getter()
{
  v0 = [objc_opt_self() stringValueType];

  return v0;
}

uint64_t sub_221B8F6FC(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v45 = a8;
  v54 = a1;
  v55 = a2;
  OUTLINED_FUNCTION_0_7();
  v12 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_30_8();
  v56 = v16;
  v18 = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_7();
  v58 = v19;
  v21 = *(v20 + 64);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v43 - v24;
  v26 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_30_8();
  v52 = v27;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_7();
  v46 = v29;
  v47 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v28);
  v33 = &v43 - v32;
  v34 = sub_221BCD9F8();
  if (!v34)
  {
    return sub_221BCD6C8();
  }

  v57 = v34;
  v61 = sub_221BCDF68();
  v48 = sub_221BCDF78();
  sub_221BCDF18();
  result = sub_221BCD9E8();
  if ((v57 & 0x8000000000000000) == 0)
  {
    v43 = v12;
    v44 = a5;
    v36 = 0;
    v49 = (v58 + 16);
    v50 = v58 + 8;
    v51 = v8;
    while (!__OFADD__(v36, 1))
    {
      v58 = v36 + 1;
      v37 = sub_221BCDA18();
      (*v49)(v25);
      v37(v60, 0);
      v38 = v59;
      v54(v25, v56);
      if (v38)
      {
        v41 = OUTLINED_FUNCTION_30_12();
        v42(v41);
        (*(v46 + 8))(v33, v47);

        return (*(v43 + 32))(v45, v56, v44);
      }

      v59 = 0;
      v39 = OUTLINED_FUNCTION_30_12();
      v40(v39);
      sub_221BCDF58();
      result = sub_221BCDA08();
      ++v36;
      if (v58 == v57)
      {
        (*(v46 + 8))(v33, v47);
        return v61;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AppIntentDispatching.value<A, B>(for:from:)(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v9 + 144) = a8;
  *(v9 + 152) = v8;
  *(v9 + 128) = a6;
  *(v9 + 136) = a7;
  *(v9 + 112) = a3;
  *(v9 + 120) = a4;
  *(v9 + 104) = a1;
  *(v9 + 160) = *a2;
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B8FAF8()
{
  OUTLINED_FUNCTION_57_2();
  v25 = v0;
  v1 = *(v0 + 168);
  if (v1)
  {
    v2 = *(v0 + 160);
    v22 = *(v0 + 136);
    v3 = *(v0 + 112);
    v4 = *(*v3 + 112);

    v6 = v4(v5);
    (*(*v3 + 136))(v23, v6);
    v7 = v23[0];
    v8 = v23[1];
    *(v0 + 16) = v2;
    *(v0 + 24) = v1;
    *(v0 + 72) = v7;
    *(v0 + 80) = v8;
    *(v0 + 88) = v24;
    v9 = *(v22 + 56);
    v21 = (v9 + *v9);
    v10 = v9[1];
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    *(v0 + 176) = v11;
    *v11 = v12;
    v11[1] = sub_221B8FCB8;
    v13 = *(v0 + 144);
    v14 = *(v0 + 152);
    v15 = *(v0 + 128);
    v16 = *(v0 + 136);
    v17 = *(v0 + 120);
    v18 = *(v0 + 104);

    return v21(v18, v0 + 16);
  }

  else
  {
    v20 = *(v0 + 112);
    sub_22199D150();

    __break(1u);
  }

  return result;
}

uint64_t sub_221B8FCB8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 176);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 184) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B8FDB4()
{
  OUTLINED_FUNCTION_1_5();
  sub_221B58D98(v0 + 16);
  OUTLINED_FUNCTION_4_3();

  return v1();
}

uint64_t sub_221B8FE0C()
{
  OUTLINED_FUNCTION_1_5();
  sub_221B58D98(v0 + 16);
  OUTLINED_FUNCTION_25();
  v2 = *(v0 + 184);

  return v1();
}

uint64_t sub_221B8FE68()
{
  sub_2219ACB94();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_allocError();
  *v1 = 0xD00000000000002FLL;
  v1[1] = 0x8000000221BF1660;
  OUTLINED_FUNCTION_14_19(v0, v1);
  return swift_willThrow();
}

uint64_t AppIntentDispatching.observe(_:)()
{
  sub_2219ACB94();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_allocError();
  *v1 = 0xD00000000000002FLL;
  v1[1] = 0x8000000221BF1660;
  OUTLINED_FUNCTION_14_19(v0, v1);
  return swift_willThrow();
}

uint64_t sub_221B8FF28()
{
  OUTLINED_FUNCTION_8_0();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_2_15(v0);
  *v1 = v2;
  v1[1] = sub_2219EC5F0;

  return sub_221B8FFD8();
}

uint64_t sub_221B8FFF4()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219ACB94();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_allocError();
  *v1 = 0xD000000000000034;
  v1[1] = 0x8000000221BF1690;
  OUTLINED_FUNCTION_14_19(v0, v1);
  swift_willThrow();
  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_221B9009C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219CA70C;

  return AppIntentDispatching.describeApplication(for:)();
}

uint64_t sub_221B90138()
{
  OUTLINED_FUNCTION_8_0();
  sub_2219ACB94();
  OUTLINED_FUNCTION_15_0();
  v0 = swift_allocError();
  *v1 = 0xD00000000000003DLL;
  v1[1] = 0x8000000221BF16D0;
  OUTLINED_FUNCTION_14_19(v0, v1);
  swift_willThrow();
  OUTLINED_FUNCTION_25();

  return v2();
}

uint64_t sub_221B901E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v18 = swift_task_alloc();
  *(v11 + 16) = v18;
  *v18 = v11;
  v18[1] = sub_2219EC5F0;

  return AppIntentDispatching.options<A>(for:in:searchTerm:as:)(a1, a2, a3, a4, a5, a6, a7, a10, a8, a11);
}

uint64_t AppIntentDispatching.options<A>(for:in:searchTerm:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_10_20();
  v10 = *(a10 + 24);
  OUTLINED_FUNCTION_6_5();
  v19 = (v11 + *v11);
  v13 = *(v12 + 4);
  v14 = swift_task_alloc();
  v15 = OUTLINED_FUNCTION_2_15(v14);
  *v15 = v16;
  v15[1] = sub_2219EC5F0;
  v17 = OUTLINED_FUNCTION_6_25();

  return v19(v17);
}

uint64_t sub_221B90428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = sub_2219EC5F0;

  return AppIntentDispatching.query(_:options:)(a1, a2, a3, a4, a5, v15, v16, v17, a9);
}

uint64_t AppIntentDispatching.query(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_67();
  *(v9 + 16) = *v10;
  *(v9 + 24) = *(v10 + 8);
  v12 = *(v11 + 40);
  OUTLINED_FUNCTION_6_5();
  v27 = v13 + *v13;
  v15 = *(v14 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v9 + 40) = v16;
  *v16 = v17;
  OUTLINED_FUNCTION_33_9(v16);
  OUTLINED_FUNCTION_123_0();

  return v23(v18, v19, v20, v21, v22, v23, v24, v25, a9, v27);
}

uint64_t sub_221B90618()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 40);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  else
  {
    OUTLINED_FUNCTION_25();

    return v12();
  }
}

uint64_t sub_221B90730()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 48);
  return v2();
}

uint64_t sub_221B90754()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_2219EC5F0;

  return AppIntentDispatching.query(_:options:)();
}

void AppIntentDispatching.options(for:in:searchTerm:)()
{
  OUTLINED_FUNCTION_57_2();
  v1 = v0;
  OUTLINED_FUNCTION_10_20();
  sub_2219A8E5C();
  v2 = *(v1 + 24);
  OUTLINED_FUNCTION_11_19();
  v11 = v3 + *v3;
  v5 = *(v4 + 4);
  v6 = swift_task_alloc();
  v7 = OUTLINED_FUNCTION_2_15(v6);
  *v7 = v8;
  v7[1] = sub_2219EC5F0;
  OUTLINED_FUNCTION_6_25();
  OUTLINED_FUNCTION_75_4();

  __asm { BRAA            X8, X16 }
}

uint64_t AppIntentDispatching.perform<A>(_:options:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v11[108] = v10;
  v11[107] = a10;
  v11[106] = a9;
  v11[105] = a8;
  v11[104] = a7;
  v11[103] = a6;
  v11[102] = a5;
  v11[101] = a4;
  v11[100] = a3;
  v11[99] = a2;
  v11[98] = a1;
  return OUTLINED_FUNCTION_11_21();
}

uint64_t sub_221B90968()
{
  OUTLINED_FUNCTION_8_0();
  v16 = v0[105];
  v1 = v0[100];
  v2 = v0[99];
  (*(v0[106] + 32))(v0[104]);
  memcpy(v0 + 68, v1, 0xC4uLL);
  v3 = *(v16 + 32);
  OUTLINED_FUNCTION_11_19();
  v15 = (v4 + *v4);
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[109] = v7;
  *v7 = v8;
  v7[1] = sub_221B90AC4;
  v9 = v0[108];
  v10 = v0[105];
  v11 = v0[103];
  v12 = v0[102];
  v13 = v0[101];

  return (v15)(v0 + 2, v0 + 93, v0 + 68, v13, v12, v11, v10);
}

uint64_t sub_221B90AC4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v6 = *(v5 + 872);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 880) = v0;

  sub_2219B397C(v3 + 744);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B90BC8()
{
  v1 = v0[107];
  v2 = v0[106];
  v3 = v0[104];
  v4 = v0[98];
  sub_221B919E8((v0 + 2), (v0 + 35), &qword_27CFB8048, &qword_221BE5700);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_2219A8E5C();
  AppIntentSuccessResult.init<A>(_:)((v0 + 35), AssociatedTypeWitness, v6, v1, &protocol witness table for LNValue, v4);
  OUTLINED_FUNCTION_29_12();
  sub_2219B1538(v7, v8, v9);
  OUTLINED_FUNCTION_4_3();

  return v10();
}

uint64_t sub_221B90CB8()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 880);
  return v2();
}

uint64_t AppIntentDispatching.perform(_:options:delegate:)()
{
  OUTLINED_FUNCTION_1_5();
  v3 = v2;
  v1[159] = v0;
  v1[158] = v4;
  v1[157] = v5;
  v1[156] = v6;
  v1[155] = v7;
  v1[154] = v2;
  v1[153] = v8;
  v1[152] = v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870) - 8) + 64) + 15;
  v1[160] = swift_task_alloc();
  v1[161] = swift_task_alloc();
  memcpy(v1 + 27, v3, 0xC4uLL);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_221B90DAC()
{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_67();
  memcpy((v0 + 16), *(v0 + 1232), 0xC4uLL);
  if (sub_221B91310(v0 + 16) == 1)
  {
    v1 = *(v0 + 1288);
    v2 = *(v0 + 1280);
    v3 = sub_221BCCC98();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v3);
    sub_221B919E8(v1, v2, &qword_27CFB7D60, &qword_221BD1870);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
    v5 = *(v0 + 1288);
    v6 = *(v0 + 1280);
    if (EnumTagSinglePayload == 1)
    {
      sub_2219B1538(*(v0 + 1288), &qword_27CFB7D60, &qword_221BD1870);
      sub_2219B1538(v6, &qword_27CFB7D60, &qword_221BD1870);
      v7 = 0;
      v8 = 0;
      *&v15 = OUTLINED_FUNCTION_20_16();
      v18 = 0uLL;
      v19 = 1;
      v20 = 2;
    }

    else
    {
      v26 = *(v0 + 1280);
      v7 = sub_221BCCC88();
      v8 = v27;
      sub_2219B1538(v5, &qword_27CFB7D60, &qword_221BD1870);
      OUTLINED_FUNCTION_0_6(v3);
      (*(v28 + 8))(v6, v3);
      *&v15 = OUTLINED_FUNCTION_20_16();
      v19 = 1;
      v20 = 2;
      v18 = 0uLL;
    }

    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
    v24 = 0uLL;
    v25 = 0uLL;
  }

  else
  {
    v9 = *(v0 + 224);
    v16 = *(v0 + 240);
    v20 = *(v0 + 248);
    v7 = *(v0 + 256);
    v8 = *(v0 + 264);
    v15 = *(v0 + 272);
    v17 = *(v0 + 288);
    v18 = *(v0 + 312);
    v21 = *(v0 + 328);
    v22 = *(v0 + 344);
    v23 = *(v0 + 360);
    v24 = *(v0 + 376);
    v25 = *(v0 + 392);
    v14 = *(v0 + 408);
    v10 = *(v0 + 305);
    v11 = *(v0 + 304);
    v19 = *(v0 + 232);
    v12 = *(v0 + 217);
    v13 = *(v0 + 216);
  }

  v29 = *(v0 + 1240);
  v30 = v19 & 1;
  *(v0 + 1320) = v30;
  *(v0 + 416) = v13 & 1;
  *(v0 + 417) = v12 & 1;
  *(v0 + 424) = v9;
  *(v0 + 432) = v30;
  *(v0 + 440) = v16;
  *(v0 + 448) = v20;
  *(v0 + 456) = v7;
  *(v0 + 464) = v8;
  *(v0 + 472) = v15;
  *(v0 + 488) = v17;
  *(v0 + 504) = v11 & 1;
  *(v0 + 505) = v10 & 1;
  *(v0 + 512) = v18;
  *(v0 + 528) = v21;
  *(v0 + 544) = v22;
  *(v0 + 560) = v23;
  *(v0 + 576) = v24;
  *(v0 + 592) = v25;
  *(v0 + 608) = v14;
  if (v29)
  {
    v31 = *(v0 + 1248);
    v32 = v29;
  }

  else
  {
    type metadata accessor for DefaultPerformAppIntentDelegate();
    v32 = swift_allocObject();
  }

  *(v0 + 1296) = v32;
  v33 = *(v0 + 1264);
  v34 = *(v33 + 32);
  v54 = v33 + 32;
  sub_221B919E8(v0 + 216, v0 + 616, &qword_27CFBC0E8, &qword_221BE80C0);
  swift_unknownObjectRetain();
  v53 = v34 + *v34;
  v35 = v34[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 1304) = v36;
  *v36 = v37;
  v36[1] = sub_221B91124;
  v38 = *(v0 + 1272);
  v39 = *(v0 + 1264);
  v40 = *(v0 + 1256);
  v41 = *(v0 + 1224);
  v42 = *(v0 + 1216);
  OUTLINED_FUNCTION_123_0();

  return v50(v43, v44, v45, v46, v47, v48, v49, v50, v53, v54);
}

uint64_t sub_221B91124()
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v6 = *(v5 + 1304);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  v3[164] = v0;

  if (v0)
  {
    v9 = v3[162];
    memcpy(v3 + 102, v3 + 52, 0xC4uLL);
    sub_221B91334((v3 + 102));
    swift_unknownObjectRelease();
    OUTLINED_FUNCTION_27_0();

    return MEMORY[0x2822009F8](v10, v11, v12);
  }

  else
  {
    v13 = v3[162];
    v14 = v3[161];
    v15 = v3[160];
    memcpy(v3 + 127, v3 + 52, 0xC4uLL);
    sub_221B91334((v3 + 127));
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_4_3();

    return v16();
  }
}

uint64_t sub_221B912A8()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[161];
  v2 = v0[160];

  OUTLINED_FUNCTION_25();
  v4 = v0[164];

  return v3();
}

uint64_t sub_221B91310(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t AppIntentDispatching.performShowOutputAction<A>(for:delegate:)()
{
  OUTLINED_FUNCTION_1_5();
  v1[71] = v0;
  v1[70] = v2;
  v1[69] = v3;
  v1[68] = v4;
  v1[67] = v5;
  v1[66] = v6;
  v1[65] = v7;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870) - 8) + 64) + 15;
  v1[72] = swift_task_alloc();
  v1[73] = swift_task_alloc();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

void sub_221B91440()
{
  OUTLINED_FUNCTION_57_2();
  sub_221B919E8(v0[66] + 128, (v0 + 60), &unk_27CFBB7C0, &qword_221BE4C20);
  if (v0[63])
  {
    v1 = v0[73];
    v2 = v0[72];
    v3 = v0[66];
    v4 = *(v0 + 31);
    *(v0 + 55) = *(v0 + 30);
    *(v0 + 57) = v4;
    v0[59] = v0[64];
    v5 = sub_221BCCC98();
    __swift_storeEnumTagSinglePayload(v1, 1, 1, v5);
    v6 = *(v3 + 168);
    *(v0 + 608) = 1;
    sub_221B919E8(v1, v2, &qword_27CFB7D60, &qword_221BD1870);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v5);
    v8 = v0[73];
    v9 = v0[72];
    if (EnumTagSinglePayload == 1)
    {
      sub_2219B1538(v0[73], &qword_27CFB7D60, &qword_221BD1870);
      sub_2219B1538(v9, &qword_27CFB7D60, &qword_221BD1870);
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v17 = v0[72];
      v10 = sub_221BCCC88();
      v11 = v18;
      sub_2219B1538(v8, &qword_27CFB7D60, &qword_221BD1870);
      OUTLINED_FUNCTION_0_6(v5);
      (*(v19 + 8))(v9, v5);
    }

    v36 = v0[70];
    *(v0 + 8) = 0;
    *(v0 + 18) = *(v0 + 53);
    *(v0 + 11) = *(v0 + 108);
    v0[3] = 0;
    *(v0 + 32) = *(v0 + 608);
    *(v0 + 33) = *(v0 + 105);
    *(v0 + 9) = *(v0 + 423);
    v0[5] = 0x403E000000000000;
    *(v0 + 48) = 2;
    v20 = *(v0 + 427);
    *(v0 + 13) = *(v0 + 430);
    *(v0 + 49) = v20;
    v0[7] = v10;
    v0[8] = v11;
    *(v0 + 9) = 0u;
    *(v0 + 11) = 0u;
    *(v0 + 104) = v6 & 1;
    *(v0 + 105) = 0;
    *(v0 + 106) = *(v0 + 218);
    *(v0 + 55) = *(v0 + 111);
    *(v0 + 7) = 0u;
    *(v0 + 8) = 0u;
    *(v0 + 9) = 0u;
    *(v0 + 10) = 0u;
    *(v0 + 11) = 0u;
    *(v0 + 12) = 0u;
    *(v0 + 52) = 2;
    memcpy(v0 + 28, v0 + 2, 0xC4uLL);
    v21 = *(v36 + 32);
    OUTLINED_FUNCTION_11_19();
    v35 = v22 + *v22;
    v24 = *(v23 + 4);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v0[74] = v25;
    *v25 = v26;
    v25[1] = sub_221B917FC;
    v27 = v0[71];
    v28 = v0[70];
    v29 = v0[69];
    v30 = v0[68];
    v31 = v0[67];
    v32 = v0[65];
    OUTLINED_FUNCTION_75_4();

    __asm { BRAA            X7, X16 }
  }

  sub_2219B1538((v0 + 60), &unk_27CFBB7C0, &qword_221BE4C20);
  sub_2219ACB94();
  OUTLINED_FUNCTION_15_0();
  swift_allocError();
  *v12 = 0xD000000000000030;
  *(v12 + 8) = 0x8000000221BF1710;
  *(v12 + 16) = 2;
  swift_willThrow();
  v13 = v0[73];
  v14 = v0[72];

  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_75_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_221B917FC()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v6 = *(v5 + 592);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 600) = v0;

  if (!v0)
  {
    sub_221B91334(v3 + 16);
  }

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B91900()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  sub_2219B397C(v0 + 440);

  OUTLINED_FUNCTION_4_3();

  return v3();
}

uint64_t sub_221B91970()
{
  OUTLINED_FUNCTION_1_5();
  sub_2219B397C((v0 + 55));
  sub_221B91334((v0 + 2));
  v1 = v0[75];
  v2 = v0[73];
  v3 = v0[72];

  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_221B919E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  OUTLINED_FUNCTION_0_6(v6);
  (*(v7 + 16))(a2, a1);
  return a2;
}

uint64_t AppIntentDispatching.query<A>(_:options:)()
{
  OUTLINED_FUNCTION_67();
  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  *(v1 + 88) = v5;
  *(v1 + 96) = v6;
  *(v1 + 56) = *v7;
  *(v1 + 64) = *(v7 + 8);
  v8 = *(v4 + 40);
  OUTLINED_FUNCTION_11_19();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v1 + 136) = v12;
  *v12 = v13;
  v12[1] = sub_221B91B84;
  v14 = OUTLINED_FUNCTION_15_17();

  return v16(v14);
}

{
  OUTLINED_FUNCTION_67();
  *(v1 + 120) = v2;
  *(v1 + 128) = v0;
  *(v1 + 104) = v3;
  *(v1 + 112) = v4;
  *(v1 + 88) = v5;
  *(v1 + 96) = v6;
  *(v1 + 56) = *v7;
  *(v1 + 64) = *(v7 + 8);
  v8 = *(v4 + 40);
  OUTLINED_FUNCTION_11_19();
  v16 = (v9 + *v9);
  v11 = *(v10 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v1 + 136) = v12;
  *v12 = v13;
  v12[1] = sub_221B91F14;
  v14 = OUTLINED_FUNCTION_15_17();

  return v16(v14);
}

uint64_t sub_221B91B84()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B91C80()
{
  OUTLINED_FUNCTION_57_2();
  v1 = OUTLINED_FUNCTION_19_16();
  v2(v1);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC0F0, &qword_221BE80E0);
  v3 = sub_221BCE008();

  *(v0 + 80) = v3;
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_27_13(v4, v5, v6, v7, v8, v9, v10, v11, v30, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC0F8, &qword_221BE80E8);
  sub_221B92BD8();
  OUTLINED_FUNCTION_29_12();
  sub_221B8F6FC(v13, v14, v15, v31, v16, v17, v18, v19);

  OUTLINED_FUNCTION_24_13(v20, v21, v22, v23, v24, v25, v26, v27, v31, v32, v33);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_4_3();

  return v28();
}

uint64_t sub_221B91F14()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 136);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 144) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B92010()
{
  OUTLINED_FUNCTION_57_2();
  v1 = OUTLINED_FUNCTION_19_16();
  v2(v1);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC0F0, &qword_221BE80E0);
  v3 = sub_221BCE008();

  *(v0 + 80) = v3;
  v4 = swift_task_alloc();
  OUTLINED_FUNCTION_27_13(v4, v5, v6, v7, v8, v9, v10, v11, v30, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC0F8, &qword_221BE80E8);
  sub_221B92BD8();
  OUTLINED_FUNCTION_29_12();
  sub_221B8F6FC(v13, v14, v15, v31, v16, v17, v18, v19);

  OUTLINED_FUNCTION_24_13(v20, v21, v22, v23, v24, v25, v26, v27, v31, v32, v33);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  OUTLINED_FUNCTION_4_3();

  return v28();
}

uint64_t sub_221B9216C()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 144);
  return v2();
}

uint64_t sub_221B92190@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v8);
  (*(*(v9 + 16) + 8))(v16, v8);
  v15[0] = v16[0];
  v15[1] = v16[1];
  v17[3] = &type metadata for _IntentValueConversionContext;
  v17[4] = &protocol witness table for _IntentValueConversionContext;
  v10 = swift_allocObject();
  v17[0] = v10;
  swift_unknownObjectRetain();
  _IntentValueConversionContext.init(origin:dispatcher:)(v15, a2, a3, v10 + 16);
  sub_22199E73C();
  v12 = v11;
  result = __swift_destroy_boxed_opaque_existential_0(v17);
  *a4 = v12;
  return result;
}

uint64_t AppIntentDispatching.query<A, B>(_:input:options:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v11 + 376) = a9;
  *(v11 + 384) = a10;
  *(v11 + 360) = a7;
  *(v11 + 368) = a8;
  *(v11 + 344) = a5;
  *(v11 + 352) = a6;
  *(v11 + 328) = a1;
  *(v11 + 336) = a3;
  v12 = *a2;
  *(v11 + 392) = v10;
  *(v11 + 400) = v12;
  *(v11 + 408) = *(a2 + 1);
  *(v11 + 424) = a2[3];
  *(v11 + 178) = *a4;
  *(v11 + 432) = *(a4 + 8);
  return OUTLINED_FUNCTION_11_21();
}

uint64_t sub_221B9230C()
{
  v25 = v0;
  v1 = *(v0 + 432);
  v2 = *(v0 + 178);
  v4 = *(v0 + 416);
  v3 = *(v0 + 424);
  v5 = *(v0 + 408);
  v7 = *(v0 + 392);
  v20 = *(v0 + 440);
  v22 = *(v0 + 368);
  v8 = *(v0 + 336);
  *&v23 = *(v0 + 400);
  v6 = v23;
  *(&v23 + 1) = v5;
  v24 = xmmword_221BD0800;

  swift_unknownObjectRetain();
  v18 = *(v0 + 376);
  v19 = *(v0 + 352);
  _IntentValueConversionContext.init(origin:dispatcher:)(&v23, v7, v22, v0 + 184);
  *&v23 = v6;
  *(&v23 + 1) = v5;
  *&v24 = v4;
  *(&v24 + 1) = v3;
  *(v0 + 272) = v19;
  *(v0 + 288) = v18;
  Representation = type metadata accessor for IntentValueQueryRepresentation();
  sub_221A211A4(v8, Representation, v0 + 16);
  *(v0 + 304) = v2;
  *(v0 + 312) = v1;
  *(v0 + 320) = v20;
  v10 = *(v22 + 48);
  v21 = (v10 + *v10);
  v11 = v10[1];
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 448) = v12;
  *v12 = v13;
  v12[1] = sub_221B924E0;
  v14 = *(v0 + 392);
  v15 = *(v0 + 368);
  v16 = *(v0 + 344);

  return v21(v0 + 232, v0 + 16, v0 + 304, v16, v15);
}

uint64_t sub_221B924E0()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v3 = v2;
  OUTLINED_FUNCTION_9_0();
  *v4 = v3;
  v6 = *(v5 + 448);
  v7 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v8 = v7;
  *(v3 + 456) = v0;

  sub_221B92C7C(v3 + 16);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B925E8()
{
  v16 = v0[57];
  v2 = v0[47];
  v1 = v0[48];
  v3 = v0[45];
  v4 = v0[46];
  v6 = v0[43];
  v5 = v0[44];
  v15 = v0[41];
  v7 = v0[32];
  v14 = v0[33];
  __swift_project_boxed_opaque_existential_0(v0 + 29, v7);
  v8 = swift_task_alloc();
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = v3;
  v8[5] = v4;
  v8[6] = v2;
  v8[7] = v1;
  v8[8] = v0 + 23;
  v9 = swift_task_alloc();
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v3;
  v9[5] = v7;
  v9[6] = v4;
  v9[7] = v2;
  v9[8] = v1;
  v9[9] = v14;
  v9[10] = sub_221B92CD0;
  v9[11] = v8;
  OUTLINED_FUNCTION_29_12();
  sub_221A21A64(v10, v11, v15);

  __swift_destroy_boxed_opaque_existential_0(v0 + 29);
  sub_22199C274((v0 + 23));
  OUTLINED_FUNCTION_4_3();

  return v12();
}

uint64_t sub_221B92730()
{
  OUTLINED_FUNCTION_1_5();
  sub_22199C274(v0 + 184);
  OUTLINED_FUNCTION_25();
  v2 = *(v0 + 456);

  return v1();
}

uint64_t sub_221B9278C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v13[3] = &type metadata for _IntentValueConversionContext;
  v13[4] = &protocol witness table for _IntentValueConversionContext;
  v13[0] = swift_allocObject();
  sub_2219EB180(a2, v13[0] + 16);
  sub_221B8BC18(v11, a3, a4, a5);

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_221B92868(uint64_t a1, void (*a2)(uint64_t *))
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[3] = AssociatedTypeWitness;
  v7[4] = swift_getAssociatedConformanceWitness();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v7);
  (*(*(AssociatedTypeWitness - 8) + 16))(boxed_opaque_existential_1, a1, AssociatedTypeWitness);
  a2(v7);
  return __swift_destroy_boxed_opaque_existential_0(v7);
}

uint64_t AppIntentDispatching.value(for:)()
{
  OUTLINED_FUNCTION_67();
  v2 = v1;
  sub_2219A8E5C();
  v3 = *(v2 + 56);
  OUTLINED_FUNCTION_11_19();
  v11 = (v4 + *v4);
  v6 = *(v5 + 4);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 24) = v7;
  *v7 = v8;
  v7[1] = sub_221B92A9C;
  v9 = OUTLINED_FUNCTION_15_17();

  return v11(v9);
}

uint64_t sub_221B92A9C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9_0();
  *v3 = v2;
  v5 = *(v4 + 24);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 32) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B92BB4()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 32);
  return v2();
}

unint64_t sub_221B92BD8()
{
  result = qword_27CFBC100;
  if (!qword_27CFBC100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CFBC0F8, &qword_221BE80E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC100);
  }

  return result;
}

uint64_t sub_221B92C54@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[5];
  return sub_221B92190(a1, v2[6], v2[4], a2);
}

uint64_t sub_221B92CD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[5];
  v6 = v2[6];
  return sub_221B9278C(a1, v2[8], v2[4], v2[7], a2);
}

uint64_t sub_221B92CE4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 88);
  v10 = *(v1 + 72);
  v9 = *(v1 + 56);
  return sub_221B92868(a1, *(v1 + 80));
}

uint64_t dispatch thunk of AppIntentDispatching.describeApplication(for:)()
{
  OUTLINED_FUNCTION_67();
  v1 = *(v0 + 8);
  OUTLINED_FUNCTION_11_19();
  v10 = (v2 + *v2);
  v4 = *(v3 + 4);
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_2_15(v5);
  *v6 = v7;
  v8 = OUTLINED_FUNCTION_33_9(v6);

  return v10(v8);
}

uint64_t dispatch thunk of AppIntentDispatching.options<A>(for:in:searchTerm:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  OUTLINED_FUNCTION_10_20();
  v11 = *(a11 + 24);
  OUTLINED_FUNCTION_6_5();
  v20 = (v12 + *v12);
  v14 = *(v13 + 4);
  v15 = swift_task_alloc();
  v16 = OUTLINED_FUNCTION_2_15(v15);
  *v16 = v17;
  v16[1] = sub_2219EC5F0;
  v18 = OUTLINED_FUNCTION_6_25();

  return v20(v18);
}

uint64_t dispatch thunk of AppIntentDispatching.perform(_:options:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(OUTLINED_FUNCTION_16_15(a1, a2, a3, a4, a5, a6, a7) + 32);
  OUTLINED_FUNCTION_6_5();
  v17 = v8 + *v8;
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_2_15(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_13_20(v12);

  return v15(v14);
}

uint64_t dispatch thunk of AppIntentDispatching.query(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_67();
  v14 = *(OUTLINED_FUNCTION_21_13(v9, v10, v11, v12, v13) + 40);
  OUTLINED_FUNCTION_6_5();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_2_15(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_18_17(v19);
  OUTLINED_FUNCTION_123_0();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

{
  OUTLINED_FUNCTION_268();
  OUTLINED_FUNCTION_67();
  v14 = *(OUTLINED_FUNCTION_21_13(v9, v10, v11, v12, v13) + 48);
  OUTLINED_FUNCTION_6_5();
  v30 = v15 + *v15;
  v17 = *(v16 + 4);
  v18 = swift_task_alloc();
  v19 = OUTLINED_FUNCTION_2_15(v18);
  *v19 = v20;
  OUTLINED_FUNCTION_18_17(v19);
  OUTLINED_FUNCTION_123_0();

  return v26(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30);
}

uint64_t dispatch thunk of AppIntentDispatching.value<A>(for:as:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(OUTLINED_FUNCTION_16_15(a1, a2, a3, a4, a5, a6, a7) + 56);
  OUTLINED_FUNCTION_6_5();
  v17 = v8 + *v8;
  v10 = *(v9 + 4);
  v11 = swift_task_alloc();
  v12 = OUTLINED_FUNCTION_2_15(v11);
  *v12 = v13;
  v14 = OUTLINED_FUNCTION_13_20(v12);

  return v15(v14);
}

uint64_t OUTLINED_FUNCTION_19_16()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 88);
  v3 = *(v0 + 96);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v8 = *(v0 + 104);
  v9 = *(v0 + 120);
  __swift_project_boxed_opaque_existential_0((v0 + 16), v4);
  v6 = *(v5 + 24);
  return v4;
}

uint64_t OUTLINED_FUNCTION_24_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v14 = *(a11 + 8);

  return sub_221A1F2EC(v12, v11);
}

__n128 OUTLINED_FUNCTION_27_13(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __n128 a10)
{
  *(a1 + 16) = v10;
  result = a10;
  *(a1 + 24) = a9;
  *(a1 + 40) = a10;
  return result;
}

uint64_t sub_221B9366C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_221BCCC98();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v19 - v12;
  __swift_storeEnumTagSinglePayload(&v19 - v12, 1, 1, v2);
  v20 = 0;
  sub_2219B1FB0(v13, v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, v2) == 1)
  {
    result = sub_2219B2020(v13);
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    (*(v3 + 32))(v6, v10, v2);
    v16 = sub_221BCCC88();
    v17 = v18;
    sub_2219B2020(v13);
    result = (*(v3 + 8))(v6, v2);
    v15 = v20;
  }

  *a1 = v15;
  *(a1 + 8) = v16;
  *(a1 + 16) = v17;
  return result;
}

uint64_t AnyEntityQueryDispatching.origin.getter@<X0>(void *a1@<X8>)
{
  v3 = v1[2];
  v2 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  *a1 = v3;
  a1[1] = v2;
  a1[2] = v4;
  a1[3] = v5;

  return sub_221998178(v4, v5);
}

uint64_t AnyEntityQueryDispatching.query<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = a3;
  *(v5 + 88) = a4;
  *(v5 + 64) = a1;
  *(v5 + 72) = a2;
  *(v5 + 96) = *v4;
  return MEMORY[0x2822009F8](sub_221B938B4, 0, 0);
}

uint64_t sub_221B938B4()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  swift_getObjectType();
  sub_221B9366C(v0 + 16);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = *(v0 + 24);
  v5 = swift_task_alloc();
  *(v0 + 112) = v5;
  *v5 = v0;
  v5[1] = sub_221B9399C;
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  v10 = *(v0 + 64);
  v11 = *(v0 + 72);

  return AppIntentDispatching.query<A>(_:options:)();
}

uint64_t sub_221B9399C()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 56);

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_221B93AF8, 0, 0);
  }

  else
  {
    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_221B93B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_221B82200;

  return AnyEntityQueryDispatching.query<A>(_:)(a1, a2, a3, a4);
}

uint64_t dispatch thunk of EntityQueryDispatching.query<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(a6 + 16);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  *(v6 + 16) = v15;
  *v15 = v6;
  v15[1] = sub_221B82200;

  return v17(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_221B93D20(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_221B93D60(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_221B93DBC(char a1)
{
  v2 = 0xE700000000000000;
  v3 = 0x6E776F6E6B6E55;
  switch(a1)
  {
    case 1:
      v2 = 0xE300000000000000;
      v3 = 6512973;
      break;
    case 2:
      v2 = 0xE600000000000000;
      v3 = 0x656E6F685069;
      break;
    case 3:
      v2 = 0xE400000000000000;
      v3 = 1684099177;
      break;
    case 4:
      v2 = 0xE800000000000000;
      v3 = 0x565420656C707041;
      break;
    case 5:
      v2 = 0xEB00000000686374;
      v3 = 0x615720656C707041;
      break;
    case 6:
      v3 = 0x646F50656D6F48;
      break;
    case 7:
      v2 = 0xEE00656369766544;
      v3 = 0x207974696C616552;
      break;
    default:
      break;
  }

  MEMORY[0x223DA31F0](v3, v2);
}

uint64_t sub_221B93ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7518, &unk_221BCFFB0);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_221BCF7F0;
    *(v8 + 32) = a1;
    *(v8 + 40) = a2;
    *(v8 + 48) = a3;
    *(v8 + 56) = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
    sub_2219998AC();
    a1 = sub_221BCD328();
    a2 = v9;
  }

  else
  {
  }

  MEMORY[0x223DA31F0](a1, a2);
}

uint64_t sub_221B93FD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_221BCCE98();
  v24 = v5;
  v25 = v4;
  v6 = sub_221BCCEB8();
  if (v7)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = 0xE000000000000000;
  if (v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v11 = sub_221BBF364();
  v12 = sub_221BCCE88();
  if (v13)
  {
    v14 = v12;
  }

  else
  {
    v14 = 0;
  }

  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v16 = sub_221BBF43C();
  if (v17)
  {
    v18 = v16;
  }

  else
  {
    v18 = 0;
  }

  if (v17)
  {
    v9 = v17;
  }

  v19 = v11 & 1;
  v20 = sub_221B94C4C();
  v21 = sub_221BCCEE8();
  OUTLINED_FUNCTION_11_4(v21);
  result = (*(v22 + 8))(a1);
  *a2 = v8;
  *(a2 + 8) = v10;
  *(a2 + 16) = v19;
  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v18;
  *(a2 + 48) = v9;
  *(a2 + 56) = v20 & 1;
  *(a2 + 64) = v25;
  *(a2 + 72) = v24;
  return result;
}

void sub_221B940B8()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 56);
  if (qword_27CFB7368 != -1)
  {
    swift_once();
  }

  v4 = qword_27CFDEDA8;
  if (qword_27CFDEDA8)
  {
    v5 = sub_221BCD358();
    v6 = [v4 BOOLForKey_];

    if (((v6 | v3) & 1) == 0)
    {

      sub_221BCDE68();
      MEMORY[0x223DA31F0](v1, v2);
      MEMORY[0x223DA31F0](0xD000000000000038, 0x8000000221BF1790);
      sub_221A0E704();
      swift_allocError();
      *v7 = v1;
      *(v7 + 8) = v2;
      *(v7 + 16) = 0;
      *(v7 + 24) = 0xE000000000000000;
      *(v7 + 32) = 1;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_221B9421C(uint64_t *a1)
{
  v5 = *a1;
  v21[4] = *(a1 + 16);
  v22 = a1[6];
  v23 = a1[5];
  v7 = *v1;
  v6 = v1[1];
  v8 = *(v1 + 16);
  switch(v8 >> 5)
  {
    case 1u:
      if (v5 != v7 || v6 != a1[1])
      {
        v15 = *v1;

        sub_221BCE1B8();
      }

      break;
    case 2u:
      LOBYTE(v24) = v8 & 0x1F;
      sub_221B94E48();
      break;
    case 3u:
      OUTLINED_FUNCTION_7_22();
      do
      {
        if (v18 + v3 == -1)
        {
          break;
        }

        if (++v3 >= *(v7 + 16))
        {
          goto LABEL_29;
        }

        v13 = OUTLINED_FUNCTION_4_27(v12, v18, v19, v20, *v21, v21[4], v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
        v12 = v2;
      }

      while ((v13 & 1) != 0);
      break;
    case 4u:
      OUTLINED_FUNCTION_7_22();
      while (v18 + v3 != -1)
      {
        if (++v3 >= *(v7 + 16))
        {
          __break(1u);
LABEL_29:
          __break(1u);
          return;
        }

        v11 = OUTLINED_FUNCTION_4_27(v10, v18, v19, v20, *v21, v21[4], v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33);
        v10 = v2;
        if (v11)
        {
          return;
        }
      }

      break;
    case 5u:
      if (v8 == 160 && (v6 | v7) == 0)
      {
        v17 = *(a1 + 56);
      }

      break;
    default:
      v9 = a1[8];
      static IntentsServices.DeviceType.forDeviceModel(_:)(a1[9], &v24);
      break;
  }
}

uint64_t IntentsServices.DevicePredicate.description.getter()
{
  v3 = *v0;
  v4 = v0[1];
  v5 = *(v0 + 16);
  switch(v5 >> 5)
  {
    case 1u:
      sub_221BCDE68();

      v23[0] = 0x746E656449736469;
      v23[1] = 0xEF3D3D7265696669;
      goto LABEL_28;
    case 2u:
      strcpy(v23, "osVersion");
      WORD1(v23[1]) = 0;
      HIDWORD(v23[1]) = -385875968;
      v14 = 0xE200000000000000;
      v15 = 15677;
      switch(v5 & 0x1F)
      {
        case 1u:
          v14 = 0xE100000000000000;
          v15 = 60;
          break;
        case 2u:
          v15 = 15676;
          break;
        case 3u:
          v14 = 0xE100000000000000;
          v15 = 62;
          break;
        case 4u:
          v15 = 15678;
          break;
        default:
          break;
      }

      MEMORY[0x223DA31F0](v15, v14);

LABEL_28:
      MEMORY[0x223DA31F0](v3, v4);
      goto LABEL_36;
    case 3u:
      OUTLINED_FUNCTION_16_16();
      v8 = MEMORY[0x277D84F90];
      if (v1)
      {
        v16 = OUTLINED_FUNCTION_13_21();
        v8 = v24;
        do
        {
          OUTLINED_FUNCTION_12_15(v16, v17);
          OUTLINED_FUNCTION_8_20();
          if (v12)
          {
            sub_2219A2FB4((v18 > 1), v2, 1);
            v8 = v24;
          }

          OUTLINED_FUNCTION_10_21();
        }

        while (!v13);
      }

      goto LABEL_19;
    case 4u:
      OUTLINED_FUNCTION_16_16();
      v8 = MEMORY[0x277D84F90];
      if (v1)
      {
        v9 = OUTLINED_FUNCTION_13_21();
        v8 = v24;
        do
        {
          OUTLINED_FUNCTION_12_15(v9, v10);
          OUTLINED_FUNCTION_8_20();
          if (v12)
          {
            sub_2219A2FB4((v11 > 1), v2, 1);
            v8 = v24;
          }

          OUTLINED_FUNCTION_10_21();
        }

        while (!v13);
      }

LABEL_19:
      v23[0] = v8;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7520, &qword_221BD0770);
      sub_2219998AC();
      v19 = sub_221BCD328();
      v21 = v20;

      MEMORY[0x223DA31F0](v19, v21);

      MEMORY[0x223DA31F0](41, 0xE100000000000000);
      result = v25;
      break;
    case 5u:
      if ((v4 | v3) == 0 && v5 == 160)
      {
        result = 7958113;
      }

      else
      {
        result = 25965;
      }

      break;
    default:
      strcpy(v23, "deviceType==");
      BYTE5(v23[1]) = 0;
      HIWORD(v23[1]) = -5120;
      v6 = 0xE700000000000000;
      v7 = 0x6E776F6E6B6E55;
      switch(v3)
      {
        case 1:
          v6 = 0xE300000000000000;
          v7 = 6512973;
          break;
        case 2:
          v6 = 0xE600000000000000;
          v7 = 0x656E6F685069;
          break;
        case 3:
          v6 = 0xE400000000000000;
          v7 = 1684099177;
          break;
        case 4:
          v6 = 0xE800000000000000;
          v7 = 0x565420656C707041;
          break;
        case 5:
          v6 = 0xEB00000000686374;
          v7 = 0x615720656C707041;
          break;
        case 6:
          v7 = 0x646F50656D6F48;
          break;
        case 7:
          v6 = 0xEE00656369766544;
          v7 = 0x207974696C616552;
          break;
        default:
          break;
      }

      MEMORY[0x223DA31F0](v7, v6);

LABEL_36:
      result = v23[0];
      break;
  }

  return result;
}

uint64_t static IntentsServices.DeviceType.forDeviceModel(_:)@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  if (a1)
  {
    v14 = a2;
    if (qword_27CFB7310 != -1)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v2 = qword_27CFDECF8;
      v3 = qword_27CFDECF8 + 64;
      v4 = 1 << *(qword_27CFDECF8 + 32);
      v5 = -1;
      if (v4 < 64)
      {
        v5 = ~(-1 << v4);
      }

      v6 = v5 & *(qword_27CFDECF8 + 64);
      v7 = (v4 + 63) >> 6;

      v8 = 0;
      if (v6)
      {
        break;
      }

LABEL_7:
      while (1)
      {
        v9 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v9 >= v7)
        {
          v12 = 0;
          goto LABEL_14;
        }

        v6 = *(v3 + 8 * v9);
        ++v8;
        if (v6)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_19:
      swift_once();
    }

    while (1)
    {
      v9 = v8;
LABEL_10:
      v10 = __clz(__rbit64(v6)) | (v9 << 6);
      v11 = (*(v2 + 48) + 16 * v10);
      v12 = *(*(v2 + 56) + v10);
      v15 = *v11;
      v16 = v11[1];
      sub_221A1CAA4();

      if (sub_221BCDCE8())
      {
        break;
      }

      v6 &= v6 - 1;

      v8 = v9;
      if (!v6)
      {
        goto LABEL_7;
      }
    }

LABEL_14:

    a2 = v14;
  }

  else
  {
    v12 = 0;
  }

  *a2 = v12;
  return result;
}

uint64_t IntentsServices.Device.idsIdentifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_0_0();
}

uint64_t IntentsServices.Device.name.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return OUTLINED_FUNCTION_0_0();
}

uint64_t IntentsServices.Device.osVersion.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);

  return OUTLINED_FUNCTION_0_0();
}

uint64_t IntentsServices.Device.deviceModel.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_0_0();
}

uint64_t IntentsServices.Device.init(name:idsIdentifier:deviceModel:osVersion:isMeDevice:supportsRemoteIntents:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, char a11)
{
  *(a9 + 64) = a5;
  *(a9 + 72) = a6;
  *a9 = a3;
  *(a9 + 8) = a4;
  *(a9 + 16) = a10;
  *(a9 + 24) = result;
  *(a9 + 32) = a2;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a11;
  return result;
}

uint64_t IntentsServices.Device.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v15 = *(v0 + 56);
  v8 = v0[8];
  v9 = v0[9];
  v17 = 0;
  v18 = 0xE000000000000000;
  sub_221BCDE68();
  MEMORY[0x223DA31F0](0x206563697665443CLL, 0xED00003A656D616ELL);
  MEMORY[0x223DA31F0](v4, v5);
  MEMORY[0x223DA31F0](0x5465636976656420, 0xEC0000003A657079);
  static IntentsServices.DeviceType.forDeviceModel(_:)(v9, &v16);
  sub_221B93DBC(v16);
  MEMORY[0x223DA31F0](0x6E65644973646920, 0xEF3A726569666974);
  MEMORY[0x223DA31F0](v1, v2);
  MEMORY[0x223DA31F0](0x766544654D736920, 0xEC0000003A656369);
  if (v3)
  {
    v10 = 1702195828;
  }

  else
  {
    v10 = 0x65736C6166;
  }

  if (v3)
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v10, v11);

  MEMORY[0x223DA31F0](0x6973726556736F20, 0xEB000000003A6E6FLL);
  MEMORY[0x223DA31F0](v6, v7);
  MEMORY[0x223DA31F0](0xD000000000000017, 0x8000000221BF1750);
  if (v15)
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (v15)
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v12, v13);

  MEMORY[0x223DA31F0](62, 0xE100000000000000);
  return v17;
}

int64_t sub_221B94C4C()
{
  v0 = sub_221BBF52C();
  if (v0 == 2 || (v0 & 1) == 0)
  {
    return 0;
  }

  sub_221BCCE98();
  static IntentsServices.DeviceType.forDeviceModel(_:)(v1, &v3);

  result = 1;
  if (v3 <= 6u && ((1 << v3) & 0x5C) != 0)
  {

    return sub_221B9561C();
  }

  return result;
}

uint64_t IntentsServices.DeviceType.description.getter()
{
  result = 0x6E776F6E6B6E55;
  switch(*v0)
  {
    case 1:
      result = 6512973;
      break;
    case 2:
      result = 0x656E6F685069;
      break;
    case 3:
      result = 1684099177;
      break;
    case 4:
      result = 0x565420656C707041;
      break;
    case 5:
      result = 0x615720656C707041;
      break;
    case 6:
      result = 0x646F50656D6F48;
      break;
    case 7:
      result = 0x207974696C616552;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_221B94DC0()
{
  result = sub_221BCD2C8();
  qword_27CFDECF8 = result;
  return result;
}

uint64_t sub_221B94E48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB82E0, &qword_221BD2C30);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v43 - v3;
  switch(*v0)
  {
    case 1:
      v32 = OUTLINED_FUNCTION_6_26();
      v42 = OUTLINED_FUNCTION_5_27(v32);
      OUTLINED_FUNCTION_0_57(v42, v33, v34, v35, v36, v37, MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_11_22();
      sub_221A01F0C(v4, &qword_27CFB82E0, &qword_221BD2C30);
      v11 = v0 == 1;
      goto LABEL_10;
    case 2:
      v19 = OUTLINED_FUNCTION_6_26();
      v40 = OUTLINED_FUNCTION_5_27(v19);
      OUTLINED_FUNCTION_0_57(v40, v20, v21, v22, v23, v24, MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_11_22();
      sub_221A01F0C(v4, &qword_27CFB82E0, &qword_221BD2C30);
      v18 = v0 + 1 == 0;
      goto LABEL_5;
    case 3:
      v26 = OUTLINED_FUNCTION_6_26();
      v41 = OUTLINED_FUNCTION_5_27(v26);
      OUTLINED_FUNCTION_0_57(v41, v27, v28, v29, v30, v31, MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_11_22();
      sub_221A01F0C(v4, &qword_27CFB82E0, &qword_221BD2C30);
      v11 = v0 + 1 == 0;
      goto LABEL_10;
    case 4:
      v12 = OUTLINED_FUNCTION_6_26();
      v39 = OUTLINED_FUNCTION_5_27(v12);
      OUTLINED_FUNCTION_0_57(v39, v13, v14, v15, v16, v17, MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_11_22();
      sub_221A01F0C(v4, &qword_27CFB82E0, &qword_221BD2C30);
      v18 = v0 == 1;
LABEL_5:
      result = !v18;
      break;
    default:
      v5 = OUTLINED_FUNCTION_6_26();
      v38 = OUTLINED_FUNCTION_5_27(v5);
      OUTLINED_FUNCTION_0_57(v38, v6, v7, v8, v9, v10, MEMORY[0x277D837D0]);
      OUTLINED_FUNCTION_11_22();
      sub_221A01F0C(v4, &qword_27CFB82E0, &qword_221BD2C30);
      v11 = v0 == 0;
LABEL_10:
      result = v11;
      break;
  }

  return result;
}

uint64_t IntentsServices.DeviceOSVersionComparator.description.getter()
{
  result = 15677;
  switch(*v0)
  {
    case 1:
      result = 60;
      break;
    case 2:
      result = 15676;
      break;
    case 3:
      result = 62;
      break;
    case 4:
      result = 15678;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s18AppIntentsServices0bC0O10DeviceTypeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_221BCE308();
  MEMORY[0x223DA4060](v1);
  return sub_221BCE358();
}

uint64_t static IntentsServices.DevicePredicate.iOSCompanion.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = &unk_283512008;
  *(a1 + 8) = 0;
  *(a1 + 16) = 96;
}

uint64_t static IntentsServices.DevicePredicate.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = a2[1];
  v7 = *(a2 + 16);
  switch(v4 >> 5)
  {
    case 1u:
      if ((v7 & 0xE0) != 0x20)
      {
        goto LABEL_22;
      }

      v47 = *a1;
      if (v2 != v5 || v3 != v6)
      {
        v22 = sub_221BCE1B8();
        v49 = OUTLINED_FUNCTION_3_32();
        sub_221A1C70C(v49, v50, v51);
        v52 = OUTLINED_FUNCTION_1_49();
        sub_221A1C70C(v52, v53, v54);
        goto LABEL_6;
      }

      sub_221A1C70C(v47, v3, v7);
      v86 = OUTLINED_FUNCTION_1_49();
      sub_221A1C70C(v86, v87, v88);
      v89 = OUTLINED_FUNCTION_1_49();
      sub_2219A1B7C(v89, v90, v91);
      v69 = v2;
      v70 = v3;
      v71 = v7;
      goto LABEL_50;
    case 2u:
      if ((v7 & 0xE0) != 0x40)
      {
LABEL_22:
        v55 = *(a1 + 8);
        goto LABEL_23;
      }

      v30 = *a1;
      if (v2 == v5 && v3 == v6)
      {
        sub_221A1C70C(v30, v3, v7);
        v80 = OUTLINED_FUNCTION_1_49();
        sub_221A1C70C(v80, v81, v82);
        v83 = OUTLINED_FUNCTION_1_49();
        sub_2219A1B7C(v83, v84, v85);
        sub_2219A1B7C(v2, v3, v7);
      }

      else
      {
        v32 = sub_221BCE1B8();
        v33 = OUTLINED_FUNCTION_3_32();
        sub_221A1C70C(v33, v34, v35);
        v36 = OUTLINED_FUNCTION_1_49();
        sub_221A1C70C(v36, v37, v38);
        v39 = OUTLINED_FUNCTION_1_49();
        sub_2219A1B7C(v39, v40, v41);
        v42 = OUTLINED_FUNCTION_3_32();
        sub_2219A1B7C(v42, v43, v44);
        v45 = 0;
        if ((v32 & 1) == 0)
        {
          return v45;
        }
      }

      return ((v7 ^ v4) & 0x1F) == 0;
    case 3u:
      if ((v7 & 0xE0) != 0x60)
      {
        goto LABEL_15;
      }

      goto LABEL_5;
    case 4u:
      if ((v7 & 0xE0) == 0x80)
      {
LABEL_5:
        v15 = OUTLINED_FUNCTION_3_32();
        sub_221A1C70C(v15, v16, v17);
        v18 = OUTLINED_FUNCTION_1_49();
        sub_221A1C70C(v18, v19, v20);
        sub_221A19C78();
        v22 = v21;
LABEL_6:
        v23 = OUTLINED_FUNCTION_1_49();
        sub_2219A1B7C(v23, v24, v25);
        v26 = OUTLINED_FUNCTION_3_32();
        sub_2219A1B7C(v26, v27, v28);
        return v22 & 1;
      }

LABEL_15:
      v46 = *a1;
LABEL_23:

      goto LABEL_24;
    case 5u:
      if (!(v3 | v2) && v4 == 160)
      {
        v65 = (v7 & 0xE0) == 0xA0 && (v6 | v5) == 0;
        if (v65 && v7 == 160)
        {
          OUTLINED_FUNCTION_15_18();
          sub_2219A1B7C(v66, v67, v68);
          OUTLINED_FUNCTION_15_18();
LABEL_50:
          sub_2219A1B7C(v69, v70, v71);
          return 1;
        }

LABEL_24:
        v56 = OUTLINED_FUNCTION_3_32();
        sub_221A1C70C(v56, v57, v58);
        v59 = OUTLINED_FUNCTION_1_49();
        sub_2219A1B7C(v59, v60, v61);
        v62 = OUTLINED_FUNCTION_3_32();
        sub_2219A1B7C(v62, v63, v64);
        return 0;
      }

      v73 = (v7 & 0xE0) == 0xA0 && v5 == 1 && v6 == 0;
      if (!v73 || v7 != 160)
      {
        goto LABEL_24;
      }

      v45 = 1;
      OUTLINED_FUNCTION_15_18();
      sub_2219A1B7C(v74, v75, v76);
      OUTLINED_FUNCTION_15_18();
      sub_2219A1B7C(v77, v78, v79);
      return v45;
    default:
      if (v7 >= 0x20)
      {
        goto LABEL_24;
      }

      v8 = OUTLINED_FUNCTION_1_49();
      sub_2219A1B7C(v8, v9, v10);
      v11 = OUTLINED_FUNCTION_3_32();
      sub_2219A1B7C(v11, v12, v13);
      return (v5 ^ v2) == 0;
  }
}

void IntentsServices.DevicePredicate.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  switch(v3 >> 5)
  {
    case 1u:
      MEMORY[0x223DA4060](3);
      OUTLINED_FUNCTION_145_3();

      sub_221BCD448();
      return;
    case 2u:
      MEMORY[0x223DA4060](4);
      OUTLINED_FUNCTION_145_3();
      sub_221BCD448();
      v5 = v3 & 0x1F;
      goto LABEL_16;
    case 3u:
      v6 = 5;
      goto LABEL_6;
    case 4u:
      v6 = 6;
LABEL_6:
      MEMORY[0x223DA4060](v6);

      sub_2219A0F70(a1, v2);
      return;
    case 5u:
      v5 = *v1 != 0 || v3 != 160;
      goto LABEL_16;
    default:
      MEMORY[0x223DA4060](2);
      v5 = v2;
LABEL_16:
      MEMORY[0x223DA4060](v5);
      return;
  }
}

uint64_t IntentsServices.DevicePredicate.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_221BCE308();
  switch(v3 >> 5)
  {
    case 1u:
      MEMORY[0x223DA4060](3);
      OUTLINED_FUNCTION_145_3();
      sub_221BCD448();
      return sub_221BCE358();
    case 2u:
      MEMORY[0x223DA4060](4);
      OUTLINED_FUNCTION_145_3();
      sub_221BCD448();
      v4 = v3 & 0x1F;
      goto LABEL_5;
    case 3u:
      v5 = 5;
      goto LABEL_7;
    case 4u:
      v5 = 6;
LABEL_7:
      MEMORY[0x223DA4060](v5);
      sub_2219A0F70(v7, v1);
      return sub_221BCE358();
    case 5u:
      v4 = v2 | v1 || v3 != 160;
      goto LABEL_5;
    default:
      MEMORY[0x223DA4060](2);
      v4 = v1;
LABEL_5:
      MEMORY[0x223DA4060](v4);
      return sub_221BCE358();
  }
}

uint64_t sub_221B955CC()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_221BCE308();
  IntentsServices.DevicePredicate.hash(into:)(v3);
  return sub_221BCE358();
}

int64_t sub_221B9561C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBD40, &qword_221BE63B8);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x28223BE20](v0 - 8);
  v3 = v58 - v2;
  sub_221BCCED8();
  v4 = sub_221BCCF48();
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    sub_221A01F0C(v3, &qword_27CFBBD40, &qword_221BE63B8);
    return 0;
  }

  v5 = sub_221BCCF58();
  v7 = v6;
  v8 = (*(*(v4 - 8) + 8))(v3, v4);
  if (!v7)
  {
    return 0;
  }

  v59[0] = 46;
  v59[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v8);
  v58[-2] = v59;
  v9 = sub_221B95948(0x7FFFFFFFFFFFFFFFLL, 1, sub_221A14BBC, &v58[-4], v5, v7);
  v10 = v9;
  if (!v9[2] || !((v9[5] ^ v9[4]) >> 14))
  {
LABEL_13:

    return 0;
  }

  v12 = v9[6];
  v11 = v9[7];
  v13 = OUTLINED_FUNCTION_2_36();
  v18 = sub_221B96C28(v13, v14, v15, v16, v17);
  if ((v19 & 0x100) != 0)
  {

    v22 = OUTLINED_FUNCTION_2_36();
    v27 = sub_221B95D54(v22, v23, v24, v25, v26);
    if (v28)
    {
LABEL_12:

      goto LABEL_13;
    }

    v20 = v27;
  }

  else
  {
    v20 = v18;
    v21 = v19;

    if (v21)
    {
      goto LABEL_12;
    }
  }

  if (v20 <= 17)
  {
    goto LABEL_12;
  }

  result = sub_2219BBC2C(1, v10);
  if (v31 == v32 >> 1)
  {

    swift_unknownObjectRelease();
    return 1;
  }

  if (v31 >= (v32 >> 1))
  {
    __break(1u);
    return result;
  }

  v33 = (v30 + 32 * v31);
  v34 = *v33;
  v35 = v33[1];
  v36 = v33[3];
  v58[0] = v33[2];

  swift_unknownObjectRelease();
  v37 = OUTLINED_FUNCTION_2_36();
  v42 = sub_221B96C28(v37, v38, v39, v40, v41);
  if ((v43 & 0x100) != 0)
  {
    v46 = OUTLINED_FUNCTION_2_36();
    v44 = sub_221B95D54(v46, v47, v48, v49, v50);
    v52 = v51;

    if (v52)
    {
LABEL_28:

      return 1;
    }
  }

  else
  {
    v44 = v42;
    v45 = v43;

    if (v45)
    {
      goto LABEL_28;
    }
  }

  if (v44 != 18)
  {
    goto LABEL_28;
  }

  if (!((v35 ^ v34) >> 14))
  {
    goto LABEL_13;
  }

  v53 = v58[0];
  v54 = sub_221B96C28(v34, v35, v58[0], v36, 10);
  if ((v55 & 0x100) != 0)
  {
    v54 = sub_221B95D54(v34, v35, v53, v36, 10);
  }

  v56 = v54;
  v57 = v55;

  return (v56 > 3) & ~v57;
}

uint64_t sub_221B95948(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v51 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v10 = a5;
  v13 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v14 = HIBYTE(a6) & 0xF) : (v14 = a5 & 0xFFFFFFFFFFFFLL), !v14))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v13 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v13 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v6 = sub_221BCD588();
    v10 = v30;
    v11 = v31;
    v12 = v32;

    sub_2219B40D4();
    v15 = v33;
    v8 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v9 = v8 + 1;
    if (v8 < v34 >> 1)
    {
LABEL_38:
      *(v15 + 16) = v9;
      v38 = (v15 + 32 * v8);
      v38[4] = v6;
      v38[5] = v10;
      v38[6] = v11;
      v38[7] = v12;
      return v15;
    }

LABEL_41:
    sub_2219B40D4();
    v15 = v39;
    goto LABEL_38;
  }

  v6 = a4;
  v15 = 4 * v14;
  v49 = MEMORY[0x277D84F90];
  v16 = 15;
  while (1)
  {
    v47 = v16;
    while (1)
    {
      v12 = v16 >> 14;
      if (v16 >> 14 == v15)
      {
        v16 = v47;
        goto LABEL_30;
      }

      v17 = sub_221BCD558();
      v11 = v18;
      v50[0] = v17;
      v50[1] = v18;
      v19 = v51(v50);
      if (v7)
      {

        return v15;
      }

      v20 = v19;

      if (v20)
      {
        break;
      }

      v16 = sub_221BCD468();
    }

    v22 = (v47 >> 14 == v12) & a2;
    if (v22)
    {
      goto LABEL_20;
    }

    if (v12 < v47 >> 14)
    {
      break;
    }

    v48 = sub_221BCD588();
    v43 = v24;
    v44 = v23;
    v42 = v25;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = *(v49 + 16);
      sub_2219B40D4();
      v49 = v28;
    }

    v12 = *(v49 + 16);
    v11 = v12 + 1;
    if (v12 >= *(v49 + 24) >> 1)
    {
      sub_2219B40D4();
      v49 = v29;
    }

    *(v49 + 16) = v11;
    v26 = (v49 + 32 * v12);
    v26[4] = v48;
    v26[5] = v44;
    v26[6] = v43;
    v26[7] = v42;
LABEL_20:
    v16 = sub_221BCD468();
    if ((v22 & 1) == 0 && *(v49 + 16) == a1)
    {
LABEL_30:
      if (v16 >> 14 == v15 && (a2 & 1) != 0)
      {

        return v49;
      }

      if (v15 < v16 >> 14)
      {
        __break(1u);
      }

      else
      {
        v6 = sub_221BCD588();
        v10 = v35;
        v11 = v36;
        v12 = v37;

        v15 = v49;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v8 = *(v15 + 16);
          v34 = *(v15 + 24);
          goto LABEL_37;
        }
      }

      v40 = *(v15 + 16);
      sub_2219B40D4();
      v15 = v41;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

void *sub_221B95CE4(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27CFB7928, &unk_221BE8640);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *sub_221B95D54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v64 = a1;
  v65 = a2;
  v66 = a3;
  v67 = a4;
  sub_221B97140();

  result = sub_221BCD578();
  v8 = result;
  v9 = v7;
  if ((v7 & 0x1000000000000000) != 0)
  {
    v8 = sub_221B962E8();
    v38 = v37;

    v9 = v38;
    if ((v38 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v7 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v8 & 0x1000000000000000) != 0)
    {
      result = ((v9 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v10 = v8 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = sub_221BCDEE8();
    }

    v11 = *result;
    if (v11 == 43)
    {
      if (v10 >= 1)
      {
        v22 = v10 - 1;
        if (v10 != 1)
        {
          v23 = a5 + 48;
          v24 = a5 + 55;
          v25 = a5 + 87;
          if (a5 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v16 = 0;
            v26 = result + 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v20 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v16 * a5;
              if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
              {
                goto LABEL_126;
              }

              v16 = v29 + (v27 + v28);
              if (__OFADD__(v29, (v27 + v28)))
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v20 = v16;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v20 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v11 != 45)
    {
      if (v10)
      {
        v30 = a5 + 48;
        v31 = a5 + 55;
        v32 = a5 + 87;
        if (a5 > 10)
        {
          v30 = 58;
        }

        else
        {
          v32 = 97;
          v31 = 65;
        }

        if (result)
        {
          v33 = 0;
          do
          {
            v34 = *result;
            if (v34 < 0x30 || v34 >= v30)
            {
              if (v34 < 0x41 || v34 >= v31)
              {
                v20 = 0;
                if (v34 < 0x61 || v34 >= v32)
                {
                  goto LABEL_127;
                }

                v35 = -87;
              }

              else
              {
                v35 = -55;
              }
            }

            else
            {
              v35 = -48;
            }

            v36 = v33 * a5;
            if ((v33 * a5) >> 64 != (v33 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v33 = v36 + (v34 + v35);
            if (__OFADD__(v36, (v34 + v35)))
            {
              goto LABEL_126;
            }

            ++result;
            --v10;
          }

          while (v10);
          v20 = v36 + (v34 + v35);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v10 >= 1)
    {
      v12 = v10 - 1;
      if (v10 != 1)
      {
        v13 = a5 + 48;
        v14 = a5 + 55;
        v15 = a5 + 87;
        if (a5 > 10)
        {
          v13 = 58;
        }

        else
        {
          v15 = 97;
          v14 = 65;
        }

        if (result)
        {
          v16 = 0;
          v17 = result + 1;
          while (1)
          {
            v18 = *v17;
            if (v18 < 0x30 || v18 >= v13)
            {
              if (v18 < 0x41 || v18 >= v14)
              {
                v20 = 0;
                if (v18 < 0x61 || v18 >= v15)
                {
                  goto LABEL_127;
                }

                v19 = -87;
              }

              else
              {
                v19 = -55;
              }
            }

            else
            {
              v19 = -48;
            }

            v21 = v16 * a5;
            if ((v16 * a5) >> 64 != (v16 * a5) >> 63)
            {
              goto LABEL_126;
            }

            v16 = v21 - (v18 + v19);
            if (__OFSUB__(v21, (v18 + v19)))
            {
              goto LABEL_126;
            }

            ++v17;
            if (!--v12)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v20 = 0;
LABEL_127:

        return v20;
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

  v39 = HIBYTE(v9) & 0xF;
  v64 = v8;
  v65 = v9 & 0xFFFFFFFFFFFFFFLL;
  if (v8 != 43)
  {
    if (v8 != 45)
    {
      if (v39)
      {
        v41 = 0;
        v57 = a5 + 48;
        v58 = a5 + 55;
        v59 = a5 + 87;
        if (a5 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v64;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              v20 = 0;
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_127;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v63 + (v61 + v62);
          if (__OFADD__(v63, (v61 + v62)))
          {
            goto LABEL_126;
          }

          v60 = (v60 + 1);
          if (!--v39)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v39)
    {
      v40 = v39 - 1;
      if (v40)
      {
        v41 = 0;
        v42 = a5 + 48;
        v43 = a5 + 55;
        v44 = a5 + 87;
        if (a5 > 10)
        {
          v42 = 58;
        }

        else
        {
          v44 = 97;
          v43 = 65;
        }

        v45 = &v64 + 1;
        while (1)
        {
          v46 = *v45;
          if (v46 < 0x30 || v46 >= v42)
          {
            if (v46 < 0x41 || v46 >= v43)
            {
              v20 = 0;
              if (v46 < 0x61 || v46 >= v44)
              {
                goto LABEL_127;
              }

              v47 = -87;
            }

            else
            {
              v47 = -55;
            }
          }

          else
          {
            v47 = -48;
          }

          v48 = v41 * a5;
          if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
          {
            goto LABEL_126;
          }

          v41 = v48 - (v46 + v47);
          if (__OFSUB__(v48, (v46 + v47)))
          {
            goto LABEL_126;
          }

          ++v45;
          if (!--v40)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v39)
  {
    v49 = v39 - 1;
    if (v49)
    {
      v41 = 0;
      v50 = a5 + 48;
      v51 = a5 + 55;
      v52 = a5 + 87;
      if (a5 > 10)
      {
        v50 = 58;
      }

      else
      {
        v52 = 97;
        v51 = 65;
      }

      v53 = &v64 + 1;
      do
      {
        v54 = *v53;
        if (v54 < 0x30 || v54 >= v50)
        {
          if (v54 < 0x41 || v54 >= v51)
          {
            v20 = 0;
            if (v54 < 0x61 || v54 >= v52)
            {
              goto LABEL_127;
            }

            v55 = -87;
          }

          else
          {
            v55 = -55;
          }
        }

        else
        {
          v55 = -48;
        }

        v56 = v41 * a5;
        if ((v41 * a5) >> 64 != (v41 * a5) >> 63)
        {
          goto LABEL_126;
        }

        v41 = v56 + (v54 + v55);
        if (__OFADD__(v56, (v54 + v55)))
        {
          goto LABEL_126;
        }

        ++v53;
        --v49;
      }

      while (v49);
LABEL_125:
      v20 = v41;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_221B962E8()
{
  v0 = sub_221B96354();
  v4 = sub_221B96388(v0, v1, v2, v3);

  return v4;
}

uint64_t sub_221B96388(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) == 0)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v15[0] = a3;
      v15[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_221BCD438();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  v9 = sub_221BCDCA8();
  if (!v9)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_13;
  }

  v10 = v9;
  v11 = sub_221B95CE4(v9, 0);
  v12 = sub_221B964E8(v15, (v11 + 4), v10, a1, a2, a3, a4);

  if (v12 == v10)
  {
LABEL_13:
    v13 = v11[2];
    v14 = sub_221BCD438();

    return v14;
  }

  __break(1u);
LABEL_11:
  sub_221BCDEE8();
LABEL_4:

  return sub_221BCD438();
}

unint64_t sub_221B964E8(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
    {
      result = sub_221B966F8(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_221BCD508();
      v19 = result;
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_221BCDEE8();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = sub_221B966F8(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = sub_221BCD4D8();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_221B966F8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_221BCD518();
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
    v5 = MEMORY[0x223DA3230](15, a1 >> 16);
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

unint64_t sub_221B96778()
{
  result = qword_27CFBC108;
  if (!qword_27CFBC108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC108);
  }

  return result;
}

unint64_t sub_221B967D0()
{
  result = qword_27CFBC110;
  if (!qword_27CFBC110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC110);
  }

  return result;
}

unint64_t sub_221B96828()
{
  result = qword_27CFBC118;
  if (!qword_27CFBC118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC118);
  }

  return result;
}

uint64_t _s10DeviceTypeOwet(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *_s10DeviceTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s25DeviceOSVersionComparatorOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *_s25DeviceOSVersionComparatorOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_221B96B48(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x1B && *(a1 + 17))
    {
      v2 = *a1 + 26;
    }

    else
    {
      v2 = (*(a1 + 16) & 0x18 | (*(a1 + 16) >> 5)) ^ 0x1F;
      if (v2 >= 0x1A)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_221B96B90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1A)
  {
    *(result + 16) = 0;
    *result = a2 - 27;
    *(result + 8) = 0;
    if (a3 >= 0x1B)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1B)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 8 * (((-a2 >> 3) & 3) - 4 * a2);
    }
  }

  return result;
}

uint64_t sub_221B96BF4(uint64_t result, unsigned int a2)
{
  if (a2 < 5)
  {
    v2 = *(result + 16) & 7 | (32 * a2);
  }

  else
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    v2 = -96;
  }

  *(result + 16) = v2;
  return result;
}

uint64_t sub_221B96C28(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
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
    v11 = sub_221BCDEE8();
  }

  result = sub_221B96D04(v11, v12, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v17 = v14 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_221B96D04(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7)
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
    result = sub_221B966F8(a3, a5, a6);
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

    result = sub_221BCD4F8();
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
    result = sub_221B966F8(v11, a5, a6);
    v17 = v20;
    v11 = result;
  }

  if ((a4 & 0xC) == v14)
  {
    v21 = a4;
    v22 = v17;
    result = sub_221B966F8(v21, a5, a6);
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

  result = sub_221BCD4F8();
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

unint64_t sub_221B97140()
{
  result = qword_27CFBC120;
  if (!qword_27CFBC120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC120);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_57(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{

  return MEMORY[0x28211F3B8](v8 - 80, 64, 0, 0, 1, v7, a7, a7);
}

uint64_t OUTLINED_FUNCTION_4_27@<X0>(_BYTE *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, int a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, char a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18)
{
  v25 = *a1;
  *(v23 - 112) = *(a1 - 1);
  *(v23 - 96) = v25;
  a9 = a4;
  a10 = a3;
  a11 = a6;
  *(v18 + 17) = *(v20 + 17);
  *(v18 + 32) = *(v20 + 32);
  a14 = a8;
  a15 = a7;
  a16 = v19;
  *(v18 + 57) = *(v20 + 57);
  *(v18 + 60) = *(v20 + 60);
  a17 = v21;
  a18 = v22;

  return sub_221B9421C(&a9);
}

unint64_t OUTLINED_FUNCTION_5_27(uint64_t a1)
{
  __swift_storeEnumTagSinglePayload(v1, 1, 1, a1);

  return sub_221A1CAA4();
}

uint64_t OUTLINED_FUNCTION_6_26()
{
  *(v4 - 64) = v2;
  *(v4 - 56) = v1;
  *(v4 - 80) = v0;
  *(v4 - 72) = v3;

  return sub_221BCC588();
}

void OUTLINED_FUNCTION_10_21()
{
  *(v1 + 16) = v3;
  v5 = v1 + 16 * v4;
  *(v5 + 32) = v0;
  *(v5 + 40) = v2;
}

uint64_t OUTLINED_FUNCTION_12_15(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 - 1);
  v6 = *v2;

  return IntentsServices.DevicePredicate.description.getter(a1, a2);
}

char *OUTLINED_FUNCTION_13_21()
{

  return sub_2219A2FB4(0, v0, 0);
}

uint64_t IntentsServices.LocalExecutionMode.hashValue.getter()
{
  v1 = *v0;
  sub_221BCE308();
  MEMORY[0x223DA4060](v1);
  return sub_221BCE358();
}

_BYTE *IntentsServices.DispatcherOptions.init(interfaceIdiom:payloadPrivacy:)@<X0>(_BYTE *result@<X0>, char *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

uint64_t static IntentsServices.localDispatcher(mode:user:clientLabel:source:environment:options:)(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7)
{
  v10 = *a1;
  v11 = *(a2 + 24);
  v12 = *a7;
  v13 = a7[1];
  if (v11 == 255)
  {
    *&v31[0] = 0;
    *&v32 = &type metadata for UserInternal.CurrentUserExecutionStrategy;
    *(&v32 + 1) = &off_28351C8B8;
    v33 = 0uLL;
  }

  else
  {
    v15 = *a2;
    v14 = *(a2 + 8);
    v16 = *(a2 + 16);
    v28[0] = v15;
    v28[1] = v14;
    v28[2] = v16;
    v29 = v11;
    sub_221B975BC(v14, v16, v11);
    UserInternal.init(_:)(v28, v30);
    if (v7)
    {
      return a5;
    }

    v31[0] = v30[0];
    v31[1] = v30[1];
    v32 = v30[2];
    v33 = v30[3];
  }

  v17 = sub_2219A1B08(a6, v28);
  OUTLINED_FUNCTION_1_50(v17, v18, v19, v20, v21, v22);
  if (v10)
  {
    type metadata accessor for RunnerServiceDispatcher();
    swift_allocObject();

    OUTLINED_FUNCTION_0_58();
    sub_2219F8548();
  }

  else
  {
    v24 = type metadata accessor for InProcessDispatcher();
    v25 = *(v24 + 48);
    v26 = *(v24 + 52);
    swift_allocObject();

    OUTLINED_FUNCTION_0_58();
    sub_2219C23DC();
  }

  a5 = v23;
  sub_2219EBE90(v31);
  return a5;
}

uint64_t sub_221B975BC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

void static IntentsServices.localDispatcher(clientLabel:source:environment:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v5 = *a5;
  v6 = a5[1];
  sub_2219A1B08(a4, v10);
  v7 = type metadata accessor for InProcessDispatcher();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();

  sub_2219C23DC();
}

void static IntentsServices.localDispatcher(user:clientLabel:source:environment:options:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, char *a6)
{
  v20 = a4;
  v8 = *a1;
  v7 = *(a1 + 8);
  v9 = *(a1 + 16);
  v10 = *a6;
  v11 = a6[1];
  v12 = *(a1 + 24);
  sub_2219A1B08(a5, v19);
  v21 = v10;
  v22 = v11;
  v16[0] = v8;
  v16[1] = v7;
  v16[2] = v9;
  v17 = v12;
  sub_221B975BC(v7, v9, v12);
  UserInternal.init(_:)(v16, v18);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_0(v19);
  }

  else
  {
    v13 = type metadata accessor for InProcessDispatcher();
    v14 = *(v13 + 48);
    v15 = *(v13 + 52);
    swift_allocObject();

    sub_2219C23DC();
  }
}

uint64_t static IntentsServices.remoteDispatcher(user:devicePredicate:clientLabel:source:environment:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, _BYTE *a7)
{
  *(v7 + 112) = a4;
  *(v7 + 120) = a6;
  *(v7 + 100) = a5;
  *(v7 + 104) = a3;
  *(v7 + 128) = *a1;
  *(v7 + 144) = *(a1 + 16);
  *(v7 + 99) = *(a1 + 24);
  *(v7 + 152) = *a2;
  *(v7 + 102) = *(a2 + 16);
  *(v7 + 103) = *a7;
  *(v7 + 184) = a7[1];
  return MEMORY[0x2822009F8](sub_221B977FC, 0, 0);
}

uint64_t sub_221B977FC()
{
  v15 = v0;
  if (qword_27CFB7270 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = *(v0 + 102);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  v5 = *(v0 + 128);
  *(v0 + 80) = *(v0 + 152);
  *(v0 + 96) = v2;
  *(v0 + 98) = v1;
  v6 = *(v0 + 99);
  v13[0] = v5;
  v13[1] = v3;
  v13[2] = v4;
  v14 = v6;
  sub_221B975BC(v3, v4, v6);
  UserInternal.init(_:)(v13, (v0 + 16));
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v7[1] = sub_221B97968;
  v8 = *(v0 + 112);
  v9 = *(v0 + 120);
  v10 = *(v0 + 104);
  v11 = *(v0 + 100);

  return sub_221B65048();
}

uint64_t sub_221B97968(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 168);
  v8 = *v3;
  *(*v3 + 176) = v2;

  if (v2)
  {
    sub_2219EBE90(v6 + 16);

    return MEMORY[0x2822009F8](sub_221B97ADC, 0, 0);
  }

  else
  {
    sub_2219EBE90(v6 + 16);
    v9 = *(v8 + 8);

    return v9(a1, a2);
  }
}

uint64_t static IntentsServices.DispatcherOptions.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  if (v4 != 10)
  {
    if (v6 == 10 || (sub_221A1A7FC(v4, v6) & 1) == 0)
    {
      return 0;
    }

    return v5 ^ v7 ^ 1u;
  }

  if (v6 == 10)
  {
    return v5 ^ v7 ^ 1u;
  }

  return 0;
}

uint64_t IntentsServices.DispatcherOptions.hash(into:)()
{
  v1 = v0[1];
  if (*v0 == 10)
  {
    sub_221BCE328();
  }

  else
  {
    sub_221BCE328();
    sub_221A1AB78();
  }

  return sub_221BCE348();
}

uint64_t IntentsServices.DispatcherOptions.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_221BCE308();
  sub_221BCE328();
  if (v1 != 10)
  {
    sub_221A1AB78();
  }

  sub_221BCE348();
  return sub_221BCE358();
}

uint64_t sub_221B97C64()
{
  v1 = *v0;
  v2 = v0[1];
  sub_221BCE308();
  sub_221BCE328();
  if (v1 != 10)
  {
    sub_221A1AB78();
  }

  sub_221BCE348();
  return sub_221BCE358();
}

char *IntentsServices.DispatcherOptions.init(payloadPrivacy:)@<X0>(char *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  *a2 = 10;
  a2[1] = v2;
  return result;
}

unint64_t sub_221B97CF8()
{
  result = qword_27CFBC128;
  if (!qword_27CFBC128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC128);
  }

  return result;
}

unint64_t sub_221B97D50()
{
  result = qword_27CFBC130;
  if (!qword_27CFBC130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFBC130);
  }

  return result;
}

_BYTE *_s18LocalExecutionModeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s17DispatcherOptionsVwet(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 65281 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65281 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65282;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s17DispatcherOptionsVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
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
    v6 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
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
          *(result + 1) = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va1, a6);
  va_start(va, a6);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);

  return sub_2219EBEE4(va1, va);
}

uint64_t UserInternal.executeAsUser<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[4];
  v8 = v3[5];
  __swift_project_boxed_opaque_existential_0(v3 + 1, v7);
  return (*(v8 + 8))(a1, a2, a3, v7, v8);
}

uint64_t static IntentsServices.User.personaUniqueIdentifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = 0;
  return OUTLINED_FUNCTION_0_31();
}

void static IntentsServices.User.current.getter(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 2;
}

uint64_t UserInternal.init(_:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = 0xD000000000000025;
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 24);
  if (!*(a1 + 24))
  {
    v10 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v10 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (!v10)
    {
      v8 = "supported on this platform.";
      v9 = 1;
      goto LABEL_11;
    }

    v11 = &off_28351C8A8;
    v12 = v4;
    v13 = v6;
    v14 = &type metadata for UserInternal.AdoptPersonaExecutionStrategy;
LABEL_9:
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v6;
    a2[4] = v14;
    a2[5] = v11;
    a2[6] = v12;
    a2[7] = v13;
    return sub_221B975BC(v4, v6, v7);
  }

  if (v7 != 1)
  {
    v12 = 0;
    v13 = 0;
    v11 = &off_28351C8B8;
    v14 = &type metadata for UserInternal.CurrentUserExecutionStrategy;
    goto LABEL_9;
  }

  v3 = 0xD00000000000005BLL;
  v8 = "operating system version";
  v9 = 6;
LABEL_11:
  sub_221B981E8(v4, v6, v7);
  sub_2219ACB94();
  swift_allocError();
  *v16 = v3;
  *(v16 + 8) = v8 | 0x8000000000000000;
  *(v16 + 16) = v9;
  return swift_willThrow();
}

uint64_t sub_221B981E8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_221B98200(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a3)
  {
    if (a3 != 1)
    {
      return a6 == 2 && !(a5 | a4);
    }

    if (a6 != 1)
    {
      return 0;
    }

LABEL_6:
    if (a1 != a4 || a2 != a5)
    {
      return sub_221BCE1B8();
    }

    return 1;
  }

  if (!a6)
  {
    goto LABEL_6;
  }

  return 0;
}

uint64_t static IntentsServices.User.siriSharedUserIdentifier(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0;
  *(a3 + 8) = a1;
  *(a3 + 16) = a2;
  *(a3 + 24) = 1;
  return OUTLINED_FUNCTION_0_31();
}

uint64_t static IntentsServices.User.personaUniqueIdentifier(_:accessLevel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a3;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = 0;
  return OUTLINED_FUNCTION_0_31();
}

uint64_t static IntentsServices.User.siriSharedUserIdentifier(_:accessLevel:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = a3;
  *(a4 + 8) = a1;
  *(a4 + 16) = a2;
  *(a4 + 24) = 1;
  return OUTLINED_FUNCTION_0_31();
}

uint64_t IntentsServices.User.personaUniqueIdentifier.getter()
{
  if (*(v0 + 24))
  {
    return 0;
  }

  v3 = v0 + 8;
  v1 = *(v0 + 8);
  v2 = *(v3 + 8);

  return v1;
}

uint64_t IntentsServices.User.siriSharedUserIdentifier.getter()
{
  if (*(v0 + 24) != 1)
  {
    return 0;
  }

  v3 = v0 + 8;
  v2 = *(v0 + 8);
  v1 = *(v3 + 8);

  return v2;
}

uint64_t IntentsServices.User.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (!*(v0 + 24))
  {
    OUTLINED_FUNCTION_2_37();
    sub_221BCDE68();

    OUTLINED_FUNCTION_4_28();
    goto LABEL_5;
  }

  if (*(v0 + 24) == 1)
  {
    OUTLINED_FUNCTION_2_37();
    sub_221BCDE68();

    OUTLINED_FUNCTION_4_28();
    v4 = v3 | 1;
LABEL_5:
    v6 = v4;
    MEMORY[0x223DA31F0](v1, v2);
    MEMORY[0x223DA31F0](62, 0xE100000000000000);
    return v6;
  }

  return OUTLINED_FUNCTION_1_51();
}

uint64_t UserInternal.description.getter()
{
  v1 = *(v0 + 56);
  if (!v1)
  {
    return OUTLINED_FUNCTION_1_51();
  }

  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_2_37();
  sub_221BCDE68();

  MEMORY[0x223DA31F0](v2, v1);
  MEMORY[0x223DA31F0](62, 0xE100000000000000);
  return 0xD00000000000001ALL;
}

uint64_t get_enum_tag_for_layout_string_18AppIntentsServices0bC0O4UserV5ValueO(uint64_t a1)
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

uint64_t sub_221B984B8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 25))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 <= 2)
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

uint64_t sub_221B984F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_221B9854C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 64))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 32);
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

uint64_t sub_221B9858C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_221B985E8(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t sub_221B98628(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_221B9866C(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_221B98690(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_221B986D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_221B9876C(void (*a1)(void), uint64_t a2, uint64_t a3, unint64_t a4)
{
  v73 = *MEMORY[0x277D85DE8];
  v7 = objc_opt_self();
  v8 = [v7 currentPersona];
  if (v8)
  {
    v9 = v8;

    v10 = [v9 userPersonaUniqueString];
    if (v10)
    {
      v11 = v10;
      v12 = sub_221BCD388();
      v14 = v13;

      if (v12 == a3 && v14 == a4)
      {

LABEL_21:
        if (qword_27CFB73D8 != -1)
        {
          swift_once();
        }

        v46 = sub_221BCCD88();
        __swift_project_value_buffer(v46, qword_27CFDEED0);

        v47 = sub_221BCCD68();
        v48 = sub_221BCDA68();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v51 = a3;
          v52 = v50;
          v71 = v50;
          *v49 = 136315138;
          *(v49 + 4) = sub_2219A6360(v51, a4, &v71);
          _os_log_impl(&dword_221989000, v47, v48, "Already running as persona %s, nothing to do", v49, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v52);
          MEMORY[0x223DA4C00](v52, -1, -1);
          MEMORY[0x223DA4C00](v49, -1, -1);
        }

        a1();
LABEL_26:

        goto LABEL_35;
      }

      v16 = sub_221BCE1B8();

      if (v16)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

    v70 = a3;
    v69 = a1;
    if (qword_27CFB73D8 != -1)
    {
      swift_once();
    }

    v18 = sub_221BCCD88();
    __swift_project_value_buffer(v18, qword_27CFDEED0);

    v19 = v9;
    v20 = sub_221BCCD68();
    v21 = sub_221BCDA98();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v71 = v66;
      *v22 = 136315394;
      *(v22 + 4) = sub_2219A6360(v70, a4, &v71);
      *(v22 + 12) = 2080;
      v23 = sub_221B98FA4();
      v25 = v19;
      v26 = sub_2219A6360(v23, v24, &v71);

      *(v22 + 14) = v26;
      v19 = v25;
      _os_log_impl(&dword_221989000, v20, v21, "Request to execute as user %s, currently running as %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223DA4C00](v66, -1, -1);
      MEMORY[0x223DA4C00](v22, -1, -1);
    }

    v71 = 0;
    v27 = [v19 copyCurrentPersonaContextWithError_];
    if (!v27)
    {
      v53 = v71;
      sub_221BCC338();

      swift_willThrow();
      goto LABEL_35;
    }

    v28 = v27;
    v29 = v71;
    v30 = v70;
    v31 = sub_221BCD358();
    v32 = [v19 generateAndRestorePersonaContextWithPersonaUniqueString_];

    if (v32)
    {
      v67 = v28;

      v33 = v32;
      v34 = sub_221BCCD68();
      v35 = sub_221BCDA78();

      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        v37 = swift_slowAlloc();
        v71 = v37;
        *v36 = 136315394;
        *(v36 + 4) = sub_2219A6360(v70, a4, &v71);
        *(v36 + 12) = 2080;
        swift_getErrorValue();
        v38 = sub_221BCE288();
        v40 = sub_2219A6360(v38, v39, &v71);

        *(v36 + 14) = v40;
        _os_log_impl(&dword_221989000, v34, v35, "Failed adopting persona %s: %s", v36, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DA4C00](v37, -1, -1);
        v41 = v36;
        v30 = v70;
        MEMORY[0x223DA4C00](v41, -1, -1);
      }

      v71 = 0;
      v72 = 0xE000000000000000;
      sub_221BCDE68();

      v71 = 0xD000000000000018;
      v72 = 0x8000000221BF18E0;
      MEMORY[0x223DA31F0](v30, a4);
      MEMORY[0x223DA31F0](8238, 0xE200000000000000);
      swift_getErrorValue();
      v42 = sub_221BCE288();
      MEMORY[0x223DA31F0](v42);

      v43 = v71;
      v44 = v72;
      sub_2219ACB94();
      swift_allocError();
      *v45 = v43;
      *(v45 + 8) = v44;
      *(v45 + 16) = 1;
      swift_willThrow();

      v9 = v67;
      sub_221B99180(v19, v67);

      goto LABEL_26;
    }

    v54 = sub_221BCCD68();
    v55 = sub_221BCDA98();
    if (os_log_type_enabled(v54, v55))
    {
      v68 = v28;
      v56 = v19;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v71 = v58;
      *v57 = 136315138;
      v59 = [v7 currentPersona];
      if (v59)
      {
        v60 = v59;
        v61 = sub_221B98FA4();
        v63 = v62;
      }

      else
      {
        v63 = 0xE300000000000000;
        v61 = 7104878;
      }

      v64 = sub_2219A6360(v61, v63, &v71);

      *(v57 + 4) = v64;
      _os_log_impl(&dword_221989000, v54, v55, "Executing as %s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x223DA4C00](v58, -1, -1);
      MEMORY[0x223DA4C00](v57, -1, -1);

      v19 = v56;
      v28 = v68;
    }

    else
    {
    }

    v69();
    sub_221B99180(v19, v28);
  }

  else
  {
    sub_2219ACB94();
    swift_allocError();
    *v17 = 0xD000000000000032;
    *(v17 + 8) = 0x8000000221BF18A0;
    *(v17 + 16) = 1;
    swift_willThrow();
  }

LABEL_35:
  v65 = *MEMORY[0x277D85DE8];
}

uint64_t sub_221B98FA4()
{
  sub_221BCDE68();
  v1 = sub_2219ACA7C(v0, &selRef_userPersonaUniqueString);
  if (v2)
  {
    v3 = v2;
  }

  else
  {
    v1 = 0x3E6C696E3CLL;
    v3 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v1, v3);

  MEMORY[0x223DA31F0](10272, 0xE200000000000000);
  v4 = sub_2219ACA7C(v0, &selRef_userPersonaNickName);
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v4 = 0x3E6C696E3CLL;
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223DA31F0](v4, v6);

  MEMORY[0x223DA31F0](0x203A65707974202CLL, 0xE800000000000000);
  v7 = sub_221B993C8([v0 userPersonaType]);
  MEMORY[0x223DA31F0](v7);

  MEMORY[0x223DA31F0](0x203A444955202CLL, 0xE700000000000000);
  [v0 uid];
  v8 = sub_221BCE168();
  MEMORY[0x223DA31F0](v8);

  MEMORY[0x223DA31F0](0x203A444947202CLL, 0xE700000000000000);
  [v0 gid];
  v9 = sub_221BCE168();
  MEMORY[0x223DA31F0](v9);

  MEMORY[0x223DA31F0](41, 0xE100000000000000);
  return 0;
}

void sub_221B99180(void *a1, void *a2)
{
  if (qword_27CFB73D8 != -1)
  {
    swift_once();
  }

  v3 = sub_221BCCD88();
  __swift_project_value_buffer(v3, qword_27CFDEED0);
  v4 = a2;
  oslog = sub_221BCCD68();
  v5 = sub_221BCDA98();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 136315394;
    v8 = [v4 description];
    v9 = sub_221BCD388();
    v11 = v10;

    v12 = sub_2219A6360(v9, v11, &v20);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    v13 = [objc_opt_self() currentPersona];
    if (v13)
    {
      v14 = v13;
      v15 = sub_221B98FA4();
      v17 = v16;
    }

    else
    {
      v17 = 0xE300000000000000;
      v15 = 7104878;
    }

    v18 = sub_2219A6360(v15, v17, &v20);

    *(v6 + 14) = v18;
    _os_log_impl(&dword_221989000, oslog, v5, "Restored persona context %s, executing as %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DA4C00](v7, -1, -1);
    MEMORY[0x223DA4C00](v6, -1, -1);
  }
}

uint64_t sub_221B993C8(uint64_t a1)
{
  result = 0x6C616E6F73726550;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x646567616E614DLL;
      break;
    case 2:
      result = 0x6972707265746E45;
      break;
    case 3:
      result = 0x6D6574737953;
      break;
    case 4:
      result = 0x6173726576696E55;
      break;
    case 5:
      result = 0x746C7561666544;
      break;
    case 6:
      result = 0x7473657547;
      break;
    default:
      if (a1 == 1000)
      {
        result = 0x64696C61766E49;
      }

      else
      {
        result = 0x6E776F6E6B6E753CLL;
      }

      break;
  }

  return result;
}

uint64_t sub_221B99520()
{
  OUTLINED_FUNCTION_1_5();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAA8, &qword_221BE54E8);
  OUTLINED_FUNCTION_15_19(v5);
  v0[9] = v6;
  v8 = *(v7 + 64) + 15;
  v0[10] = swift_task_alloc();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B995DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  v11 = v10[10];
  v12 = v10[5];
  sub_221B62F04(v10[6]);
  OUTLINED_FUNCTION_1_6();
  v14 = *(v13 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA98, &unk_221BE8AD0);
  sub_221BCD838();
  v15 = *(MEMORY[0x277D858B8] + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_6_27(v16);
  *v17 = v18;
  v19 = OUTLINED_FUNCTION_4_29(v17);

  return MEMORY[0x2822005A8](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_221B996A4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221B997A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_25_13();
  if (v13)
  {
    v27 = OUTLINED_FUNCTION_14_20();
    v28(v27);
    OUTLINED_FUNCTION_1_6();
    v12[12] = *(v10 + *(v29 + 112));
    OUTLINED_FUNCTION_13_22(dword_221BE5E10);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v12[13] = v30;
    *v30 = v31;
    v32 = OUTLINED_FUNCTION_12_16(v30);

    return v33(v32);
  }

  else
  {
    if (v11)
    {
      if (v12[7])
      {
        sub_221BCD878();
      }

      v14 = v12[5];
      sub_221B567F4();
      sub_221B59770(v11);
    }

    v15 = *(MEMORY[0x277D858B8] + 4);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_6_27(v16);
    *v17 = v18;
    v19 = OUTLINED_FUNCTION_5_28(v17);

    return MEMORY[0x2822005A8](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }
}

uint64_t sub_221B99908()
{
  OUTLINED_FUNCTION_1_5();
  (*(v0[9] + 8))(v0[10], v0[8]);
  v1 = v0[3];
  v2 = v0[10];

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B9997C()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B99A74()
{
  OUTLINED_FUNCTION_1_5();
  v1 = *(v0 + 96);
  v2 = *(v0 + 80);

  OUTLINED_FUNCTION_25();

  return v3();
}

uint64_t sub_221B99ADC()
{
  OUTLINED_FUNCTION_1_5();
  v1 = v0[12];

  v2 = v0[14];
  v3 = v0[10];

  OUTLINED_FUNCTION_25();

  return v4();
}

uint64_t sub_221B99B40()
{
  OUTLINED_FUNCTION_1_5();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAA8, &qword_221BE54E8);
  OUTLINED_FUNCTION_15_19(v5);
  v0[9] = v6;
  v8 = *(v7 + 64) + 15;
  v0[10] = swift_task_alloc();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B99BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  v11 = v10[10];
  v12 = v10[5];
  sub_221B62F04(v10[6]);
  OUTLINED_FUNCTION_1_6();
  v14 = *(v13 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA98, &unk_221BE8AD0);
  sub_221BCD838();
  v15 = *(MEMORY[0x277D858B8] + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_6_27(v16);
  *v17 = v18;
  v19 = OUTLINED_FUNCTION_4_29(v17);

  return MEMORY[0x2822005A8](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_221B99CC4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221B99DC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_25_13();
  if (v13)
  {
    v27 = OUTLINED_FUNCTION_14_20();
    v28(v27);
    OUTLINED_FUNCTION_1_6();
    v12[12] = *(v10 + *(v29 + 112));
    OUTLINED_FUNCTION_13_22(&unk_221BE5E00);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v12[13] = v30;
    *v30 = v31;
    v32 = OUTLINED_FUNCTION_12_16(v30);

    return v33(v32);
  }

  else
  {
    if (v11)
    {
      if (v12[7])
      {
        sub_221BCD878();
      }

      v14 = v12[5];
      sub_221B56900();
      sub_221B59770(v11);
    }

    v15 = *(MEMORY[0x277D858B8] + 4);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_6_27(v16);
    *v17 = v18;
    v19 = OUTLINED_FUNCTION_5_28(v17);

    return MEMORY[0x2822005A8](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }
}

uint64_t sub_221B99F28()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = *(v4 + 104);
  v6 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B9A020()
{
  OUTLINED_FUNCTION_1_5();
  v0[6] = v1;
  v0[7] = v2;
  v0[4] = v3;
  v0[5] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBAA8, &qword_221BE54E8);
  OUTLINED_FUNCTION_15_19(v5);
  v0[9] = v6;
  v8 = *(v7 + 64) + 15;
  v0[10] = swift_task_alloc();
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B9A0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  v11 = v10[10];
  v12 = v10[5];
  sub_221B62F04(v10[6]);
  OUTLINED_FUNCTION_1_6();
  v14 = *(v13 + 96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBBA98, &unk_221BE8AD0);
  sub_221BCD838();
  v15 = *(MEMORY[0x277D858B8] + 4);
  v16 = swift_task_alloc();
  v17 = OUTLINED_FUNCTION_6_27(v16);
  *v17 = v18;
  v19 = OUTLINED_FUNCTION_4_29(v17);

  return MEMORY[0x2822005A8](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
}

uint64_t sub_221B9A1A4()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 88);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v5, v6, v7);
}

uint64_t sub_221B9A2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_8_0();
  OUTLINED_FUNCTION_25_13();
  if (v13)
  {
    v27 = OUTLINED_FUNCTION_14_20();
    v28(v27);
    OUTLINED_FUNCTION_1_6();
    v12[12] = *(v10 + *(v29 + 112));
    OUTLINED_FUNCTION_13_22(dword_221BE5DF0);
    swift_task_alloc();
    OUTLINED_FUNCTION_26_0();
    v12[13] = v30;
    *v30 = v31;
    v32 = OUTLINED_FUNCTION_12_16(v30);

    return v33(v32);
  }

  else
  {
    if (v11)
    {
      if (v12[7])
      {
        sub_221BCD878();
      }

      v14 = v12[5];
      sub_221B56928();
      sub_221B59770(v11);
    }

    v15 = *(MEMORY[0x277D858B8] + 4);
    v16 = swift_task_alloc();
    v17 = OUTLINED_FUNCTION_6_27(v16);
    *v17 = v18;
    v19 = OUTLINED_FUNCTION_5_28(v17);

    return MEMORY[0x2822005A8](v19, v20, v21, v22, v23, v24, v25, v26, a9, a10);
  }
}

uint64_t sub_221B9A408()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  memcpy((v0 + 16), v1, 0xC4uLL);
  OUTLINED_FUNCTION_58_4(&unk_221BE8AC8);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 216) = v2;
  *v2 = v3;
  v2[1] = sub_221B9A4D8;
  OUTLINED_FUNCTION_253();

  return v9(v4, v5, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_221B9A4D8()
{
  OUTLINED_FUNCTION_1_5();
  OUTLINED_FUNCTION_21_0();
  v2 = *(v1 + 216);
  v3 = *v0;
  OUTLINED_FUNCTION_0_5();
  *v4 = v3;

  OUTLINED_FUNCTION_25();

  return v5();
}

uint64_t sub_221B9A5B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[10] = a5;
  v6[11] = v5;
  v6[8] = a3;
  v6[9] = a4;
  v6[6] = a1;
  v6[7] = a2;
  return MEMORY[0x2822009F8](sub_221B9A5E0, 0, 0);
}

uint64_t sub_221B9A5E0()
{
  v13 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = *(v0 + 72);
  v4 = *(v0 + 56);
  memcpy(__dst, *(v0 + 64), 0xC4uLL);
  sub_221B71A3C(v4, __dst, v3, v1, (v0 + 16));
  v5 = *(v0 + 24);
  *(v0 + 96) = *(v0 + 16);
  *(v0 + 104) = v5;
  v6 = *(v0 + 40);
  *(v0 + 112) = *(v0 + 32);
  *(v0 + 120) = v6;
  OUTLINED_FUNCTION_58_4(&unk_221BE89F8);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 128) = v7;
  *v7 = v8;
  v9 = OUTLINED_FUNCTION_0_59(v7);

  return v10(v9);
}

uint64_t RemoteAppIntentDispatching.perform(_:options:delegate:)()
{
  OUTLINED_FUNCTION_1_5();
  v1[36] = v2;
  v1[37] = v0;
  v1[34] = v3;
  v1[35] = v4;
  v1[32] = v5;
  v1[33] = v6;
  v1[31] = v7;
  memcpy(v1 + 2, v8, 0xC4uLL);
  OUTLINED_FUNCTION_27_0();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_221B9A738()
{
  OUTLINED_FUNCTION_14_3();
  v1 = v0[37];
  (*(v0[36] + 24))(v0[32], v0 + 2, v0[33], v0[34], v0[35]);
  v3 = v0[27];
  v2 = v0[28];
  v0[38] = v3;
  v0[39] = v2;
  v4 = v0[29];
  v5 = v0[30];
  v0[40] = v4;
  v0[41] = v5;
  OUTLINED_FUNCTION_58_4(&unk_221BE89F8);
  v11 = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  v0[42] = v7;
  *v7 = v8;
  v7[1] = sub_221B9A824;
  v9 = v0[31];

  return v11(v9, v3, v2, v4, v5);
}

uint64_t sub_221B9A824()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = v4[42];
  v6 = v4[41];
  v7 = v4[40];
  v8 = v4[39];
  v9 = v4[38];
  v10 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v11 = v10;
  *(v12 + 344) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_253();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_253();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_221B9A9B4()
{
  OUTLINED_FUNCTION_25();
  v1 = *(v0 + 344);
  return v2();
}

uint64_t sub_221B9A9D8()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_37_7(v1, v2, v3);
  OUTLINED_FUNCTION_58_4(dword_221BE8AB8);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_18_18(v4);

  return v7(v6);
}

uint64_t sub_221B9AA7C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a4;
  *(v6 + 136) = a3;
  *(v6 + 48) = a1;
  return MEMORY[0x2822009F8](sub_221B9AAA8, 0, 0);
}

uint64_t sub_221B9AAA8()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_17_17();
  sub_221B71AC4(v1, v2);
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_58_4(&unk_221BE8A08);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 120) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_59(v3);

  return v6(v5);
}

uint64_t RemoteAppIntentDispatching.query(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a4;
  *(v6 + 48) = a1;
  *(v6 + 152) = *a3;
  *(v6 + 88) = *(a3 + 8);
  return OUTLINED_FUNCTION_6_1();
}

{
  *(v6 + 72) = a5;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a4;
  *(v6 + 48) = a1;
  *(v6 + 152) = *a3;
  *(v6 + 88) = *(a3 + 8);
  return OUTLINED_FUNCTION_6_1();
}

uint64_t sub_221B9AB7C()
{
  OUTLINED_FUNCTION_67();
  v1 = OUTLINED_FUNCTION_19_17();
  (*(v2 + 32))(v1);
  OUTLINED_FUNCTION_35_11();
  OUTLINED_FUNCTION_58_4(&unk_221BE8A08);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 136) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_59(v3);

  return v6(v5);
}

uint64_t sub_221B9AC38()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[15];
  v8 = v4[14];
  v9 = v4[13];
  v10 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v11 = v10;
  *(v12 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_253();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_253();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t sub_221B9ADC8()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_37_7(v1, v2, v3);
  OUTLINED_FUNCTION_58_4(dword_221BE8AA8);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 16) = v4;
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_18_18(v4);

  return v7(v6);
}

uint64_t sub_221B9AE6C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 72) = a5;
  *(v6 + 80) = v5;
  *(v6 + 56) = a2;
  *(v6 + 64) = a4;
  *(v6 + 136) = a3;
  *(v6 + 48) = a1;
  return MEMORY[0x2822009F8](sub_221B9AE98, 0, 0);
}

uint64_t sub_221B9AE98()
{
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_17_17();
  sub_221B71ADC(v1, v2);
  OUTLINED_FUNCTION_419();
  OUTLINED_FUNCTION_58_4(dword_221BE8A18);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 120) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_59(v3);

  return v6(v5);
}

uint64_t sub_221B9AF6C()
{
  OUTLINED_FUNCTION_67();
  v1 = OUTLINED_FUNCTION_19_17();
  (*(v2 + 40))(v1);
  OUTLINED_FUNCTION_35_11();
  OUTLINED_FUNCTION_58_4(dword_221BE8A18);
  swift_task_alloc();
  OUTLINED_FUNCTION_26_0();
  *(v0 + 136) = v3;
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_0_59(v3);

  return v6(v5);
}

uint64_t sub_221B9B028()
{
  OUTLINED_FUNCTION_252();
  OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_8_4();
  *v3 = v2;
  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[15];
  v8 = v4[14];
  v9 = v4[13];
  v10 = *v1;
  OUTLINED_FUNCTION_0_5();
  *v11 = v10;
  *(v12 + 144) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27_0();
    OUTLINED_FUNCTION_253();

    return MEMORY[0x2822009F8](v13, v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_253();

    return v18(v17, v18, v19, v20, v21, v22, v23, v24);
  }
}

uint64_t RemoteAppIntentDispatching.queryWithProgress(_:)(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_31_13(a1, a2);
  v6 = OUTLINED_FUNCTION_29_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28_9();
  v9 = &qword_27CFB7D60;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_62_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  OUTLINED_FUNCTION_24_14();
  if (__swift_getEnumTagSinglePayload(v4, 1, v3) == 1)
  {
    sub_2219B2020(v14);
    v15 = 0;
    v4 = 0;
    v9 = 0;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_27_14();
    v17(v16);
    sub_221BCCC88();
    v18 = OUTLINED_FUNCTION_26_9();
    v19(v18);
    sub_2219B2020(v14);
    v15 = v25;
  }

  v25 = v15;
  v26 = v4;
  v27 = v9;
  v20 = *(v2 + 32);
  v21 = OUTLINED_FUNCTION_30_13();
  v22(v21);
}

{
  v5 = OUTLINED_FUNCTION_31_13(a1, a2);
  v6 = OUTLINED_FUNCTION_29_13(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_28_9();
  v9 = &qword_27CFB7D60;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7D60, &qword_221BD1870);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x28223BE20](v10 - 8);
  OUTLINED_FUNCTION_62_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  OUTLINED_FUNCTION_24_14();
  if (__swift_getEnumTagSinglePayload(v4, 1, v3) == 1)
  {
    sub_2219B2020(v14);
    v15 = 0;
    v4 = 0;
    v9 = 0;
  }

  else
  {
    v16 = OUTLINED_FUNCTION_27_14();
    v17(v16);
    sub_221BCCC88();
    v18 = OUTLINED_FUNCTION_26_9();
    v19(v18);
    sub_2219B2020(v14);
    v15 = v25;
  }

  v25 = v15;
  v26 = v4;
  v27 = v9;
  v20 = *(v2 + 40);
  v21 = OUTLINED_FUNCTION_30_13();
  v22(v21);
}

uint64_t RemoteAppIntentDispatching.performWithProgress<A>(_:options:delegate:)(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  memcpy(v17, a2, sizeof(v17));
  (*(a8 + 32))(v18, a6, a8);
  (*(a7 + 24))(v19, v18, v17, a3, a4, a5, a7);
  sub_2219B397C(v18);
  *v17 = v19[0];
  *&v17[16] = v19[1];
  v15 = swift_allocObject();
  v15[2] = a5;
  v15[3] = a6;
  v15[4] = a7;
  v15[5] = a8;
  v15[6] = a9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC138, &qword_221BE8A28);
  swift_getAssociatedTypeWitness();
  type metadata accessor for AppIntentSuccessResult();
  sub_221BA6808();
}

uint64_t sub_221B9B6FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X5>, uint64_t a3@<X8>)
{
  sub_2219B68B8(a1, v8, &qword_27CFB8048, &qword_221BE5700);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_2219A8E5C();
  return AppIntentSuccessResult.init<A>(_:)(v8, AssociatedTypeWitness, v6, a2, &protocol witness table for LNValue, a3);
}

uint64_t sub_221B9B7A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  return sub_221B9B6FC(a1, v2[6], a2);
}

uint64_t RemoteAppIntentDispatching.queryWithProgress<A>(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return sub_221B9B80C(a1, a2, a3, a4, a5, a6);
}

{
  return sub_221B9B80C(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_221B9B80C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[0] = *a2;
  *&v14[8] = *(a2 + 8);
  (*(a5 + 32))(v15, a1, v14, a3, a5);
  *v14 = v15[0];
  *&v14[16] = v15[1];
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v11[6] = v6;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC140, &qword_221BE8A30);
  v12 = *(a6 + 8);
  type metadata accessor for AppEntityQueryResult();
  sub_221BA6808();
}

uint64_t sub_221B9B940@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, uint64_t)@<X6>, void *a8@<X8>)
{
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v15);
  (*(v16 + 24))(v15, v16);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC0F0, &qword_221BE80E0);
  v17 = sub_221BCE008();

  v24[9] = v17;
  v24[2] = a3;
  v24[3] = a4;
  v24[4] = a5;
  v24[5] = a6;
  v24[6] = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC0F8, &qword_221BE80E8);
  v19 = sub_221B92BD8();
  v21 = sub_221B8F6FC(a7, v24, v18, a4, MEMORY[0x277D84A98], v19, MEMORY[0x277D84AC0], v20);

  v22 = *(a6 + 8);
  return sub_221A1F2EC(v21, a8);
}

uint64_t sub_221B9BAD4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, void *a4@<X8>)
{
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = a1[3];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v8);
  (*(*(v9 + 16) + 8))(v17, v8);
  v16[0] = v17[0];
  v16[1] = v17[1];
  v10 = *(a3 + 8);
  v18[3] = &type metadata for _IntentValueConversionContext;
  v18[4] = &protocol witness table for _IntentValueConversionContext;
  v11 = swift_allocObject();
  v18[0] = v11;
  swift_unknownObjectRetain();
  _IntentValueConversionContext.init(origin:dispatcher:)(v16, a2, v10, v11 + 16);
  sub_22199E73C();
  v13 = v12;
  result = __swift_destroy_boxed_opaque_existential_0(v18);
  *a4 = v13;
  return result;
}

uint64_t RemoteAppIntentDispatching.queryWithProgress<A, B>(_:input:options:)(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v10 = v9;
  v14 = a1[1];
  v17 = a1[2];
  v16 = a1[3];
  v26 = *a3;
  v24 = *(a3 + 2);
  v25 = *(a3 + 1);
  *&v31 = *a1;
  v15 = v31;
  *(&v31 + 1) = v14;
  v32 = xmmword_221BD0800;
  v18 = *(a7 + 8);

  swift_unknownObjectRetain();
  _IntentValueConversionContext.init(origin:dispatcher:)(&v31, v10, v18, v35);
  *&v33 = v15;
  *(&v33 + 1) = v14;
  *&v34 = v17;
  *(&v34 + 1) = v16;
  *&v31 = a5;
  *(&v31 + 1) = a6;
  *&v32 = a8;
  *(&v32 + 1) = a9;
  Representation = type metadata accessor for IntentValueQueryRepresentation();
  v20 = sub_221A211A4(a2, Representation, &v31);
  LOBYTE(v29) = v26;
  *(&v29 + 1) = v25;
  *&v30 = v24;
  (*(a7 + 40))(&v33, &v31, &v29, a4, a7, v20);
  sub_221B92C7C(&v31);
  v29 = v33;
  v30 = v34;
  sub_2219EB180(v35, &v31);
  v21 = swift_allocObject();
  v21[2] = a4;
  v21[3] = a5;
  v21[4] = a6;
  v21[5] = a7;
  v21[6] = a8;
  v21[7] = a9;
  sub_22199C218(&v31, (v21 + 8));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC148, &qword_221BE8A38);
  type metadata accessor for QueryResult();
  sub_221BA6808();

  return sub_22199C274(v35);
}

uint64_t sub_221B9BE08@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v3);
  return sub_221A21A64(v3, v4, a2);
}

uint64_t sub_221B9BEEC@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v7 = v2[6];
  v8 = v2[7];
  return sub_221B9BE08(a1, a2);
}

uint64_t dispatch thunk of RemoteAppIntentDispatching.queryWithProgress(_:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 32))();
}

{
  return (*(a4 + 40))();
}

uint64_t sub_221B9BF4C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t a4@<X7>, uint64_t a5@<X8>)
{
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, v9);
  v11 = (*(v10 + 16))(v9, v10);
  v13[3] = &type metadata for _IntentValueConversionContext;
  v13[4] = &protocol witness table for _IntentValueConversionContext;
  v13[0] = swift_allocObject();
  sub_2219EB180(a2, v13[0] + 16);
  sub_221B8BC18(v11, a3, a4, a5);

  return __swift_destroy_boxed_opaque_existential_0(v13);
}

uint64_t sub_221B9C028@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[5];
  v6 = v2[6];
  return sub_221B9BF4C(a1, v2[8], v2[4], v2[7], a2);
}

uint64_t OUTLINED_FUNCTION_4_29(uint64_t a1)
{
  *(a1 + 8) = v1;
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  return v2 + 16;
}

uint64_t OUTLINED_FUNCTION_5_28(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = *(v3 + 80);
  v5 = *(v3 + 64);
  return v2;
}

uint64_t OUTLINED_FUNCTION_13_22@<X0>(int *a1@<X8>)
{
  v2 = a1[1];
  v4 = a1 + *a1;
}

uint64_t OUTLINED_FUNCTION_14_20()
{
  result = v0[10];
  v2 = v0[8];
  v3 = v0[5];
  v4 = *(v0[9] + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_15_19(uint64_t a1)
{
  *(v1 + 64) = a1;
  v3 = *(a1 - 8);
  return a1 - 8;
}

__n128 OUTLINED_FUNCTION_17_17()
{
  v1 = v0[5].n128_u64[0];
  v2 = v0[3].n128_u64[1];
  v4 = v0[8].n128_u8[8];
  return v0[4];
}

__n128 OUTLINED_FUNCTION_19_17()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 56);
  v3 = *(v0 + 64);
  v6 = *(v0 + 152);
  result = *(v0 + 88);
  v5 = *(v0 + 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_24_14()
{
  __swift_storeEnumTagSinglePayload(v2, 1, 1, v1);
  *(v5 - 104) = 0;

  return sub_2219B68B8(v2, v3, v4, v0);
}

uint64_t OUTLINED_FUNCTION_30_13()
{
  result = v0;
  v3 = *(v1 - 120);
  v4 = *(v1 - 112);
  return result;
}

uint64_t OUTLINED_FUNCTION_31_13(uint64_t a1, uint64_t a2)
{
  *(v3 - 120) = a2;
  *(v3 - 112) = v2;

  return sub_221BCCC98();
}

void OUTLINED_FUNCTION_34_10()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
}

void OUTLINED_FUNCTION_35_11()
{
  v1 = v0[3];
  v0[13] = v0[2];
  v0[14] = v1;
  v2 = v0[5];
  v0[15] = v0[4];
  v0[16] = v2;
}

void OUTLINED_FUNCTION_37_7(uint64_t a1, uint64_t a2, unsigned __int8 *a3)
{
  v3 = *a3;
  v4 = *(a3 + 1);
  v5 = *(a3 + 2);
}

double sub_221B9C308@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = sub_221B9E924(a1), (v6 & 1) != 0))
  {
    v7 = *(a2 + 56) + 32 * v5;

    sub_22199B650(v7, a3);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_221B9C36C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 1;
  }

  v4 = sub_221B9E9B8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 1;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

uint64_t sub_221B9C3B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v3 = sub_221B9E9B8(a1, a2);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_32_10(v3);
}

void *sub_221B9C400(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_221B9E9B8(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
  v7 = v6;
  return v6;
}

double sub_221B9C448@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = sub_221B9E9B8(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    sub_22199B650(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

uint64_t sub_221B9C4AC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_221B9EAA0(a1);
  if (v3)
  {
    return OUTLINED_FUNCTION_32_10(v2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_221B9C500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*(a5 + 16))
  {
    return 0;
  }

  v5 = sub_221B9EADC(a1, a2, a3, a4);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_32_10(v5);
}

uint64_t sub_221B9C54C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v2 = sub_221B9EA30(a1);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_32_10(v2);
}

unint64_t sub_221B9C598@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (result = sub_221B9ECA8(result), (v5 & 1) != 0))
  {
    v6 = *(a2 + 56) + 16 * result;

    return sub_221B67358(v6, a3);
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = -1;
  }

  return result;
}

uint64_t sub_221B9C600()
{
  if (v0[1])
  {
    v1 = v0[1];
  }

  else
  {
    v1 = sub_221B9C64C(v0);
    v0[1] = v1;
  }

  return v1;
}

uint64_t sub_221B9C64C(uint64_t *a1)
{
  v1 = *a1;
  v2 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v1 + 32;

    do
    {
      sub_221BA113C(v4, v8);
      v5 = AppEntitySpecification.lnValue.getter();
      v6 = sub_2219A1BD4(v8);
      if (v5)
      {
        MEMORY[0x223DA3390](v6);
        if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_221BCD6B8();
        }

        sub_221BCD6F8();
        v2 = v9;
      }

      v4 += 56;
      --v3;
    }

    while (v3);
  }

  return v2;
}

uint64_t sub_221B9C730()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_221B9C77C();
    v1 = v2;
    *(v0 + 16) = v2;
  }

  return v1;
}

void sub_221B9C77C()
{
  v0 = sub_221B9C600();
  v13 = MEMORY[0x277D84FA0];
  v1 = sub_2219A69A0(v0);
  for (i = 0; ; ++i)
  {
    if (v1 == i)
    {

      return;
    }

    if ((v0 & 0xC000000000000001) != 0)
    {
      v3 = MEMORY[0x223DA3BF0](i, v0);
    }

    else
    {
      if (i >= *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v3 = *(v0 + 8 * i + 32);
    }

    v4 = v3;
    if (__OFADD__(i, 1))
    {
      break;
    }

    v5 = [v3 valueType];
    sub_221BBA264(&v12, v5, v6, v7, v8, v9, v10, v11, v12, v13);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

id sub_221B9C874(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v22[5] = 0;
  v22[6] = 0;
  v22[4] = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC180, &unk_221BE8C90);
  v4 = dynamic_cast_existential_1_conditional(v3);
  if (!v4)
  {

    v10 = sub_221B9C730();
    if (sub_221BB954C(v10) > 1)
    {
      sub_2219A1D20(0, &qword_27CFBBAF0, 0x277D23750);
      sub_221BB9DCC(v10);

      v9 = sub_221BB956C();
      goto LABEL_6;
    }

    v11 = sub_2219A280C(v10);

    if (v11)
    {
      goto LABEL_7;
    }

    v17 = dynamic_cast_existential_1_conditional(&type metadata for AppEntitySpecification);
    if (v17)
    {
      v19 = v17;
      v20 = v18;
      if (dynamic_cast_existential_1_class_conditional(v17))
      {
        v9 = [objc_allocWithZone(MEMORY[0x277D23810]) init];
      }

      else
      {
        v9 = (*(v20 + 16))(v19, v20);
      }

      goto LABEL_6;
    }

    return 0;
  }

  v6 = v4;
  v7 = v5;
  v8 = *(v5 + 16);

  v9 = v8(v6, v7);
LABEL_6:
  v11 = v9;
LABEL_7:
  v12 = [objc_allocWithZone(MEMORY[0x277D23760]) initWithMemberValueType:v11 capabilities:a2];
  v13 = sub_221B9C600();
  v22[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8008, &qword_221BD28C0);
  v22[0] = v13;
  v14 = objc_allocWithZone(MEMORY[0x277D23958]);
  v15 = v12;
  v16 = sub_2219A6260(v22, v15);

  return v16;
}

id sub_221B9CB1C(uint64_t (*a1)(void), SEL *a2)
{
  v3 = a1(0);
  v15[3] = v3;
  __swift_allocate_boxed_opaque_existential_1(v15);
  OUTLINED_FUNCTION_0_6(v3);
  (*(v4 + 16))();
  v5 = [objc_opt_self() *a2];
  v6 = objc_allocWithZone(MEMORY[0x277D23958]);
  return OUTLINED_FUNCTION_6_28(v6, v7, v8, v9, v10, v11, v12, v13, v15[0]);
}

id sub_221B9CBC8(uint64_t a1)
{
  v1 = objc_opt_self();

  v2 = [v1 stringValueType];
  v3 = objc_allocWithZone(MEMORY[0x277D23958]);
  return OUTLINED_FUNCTION_6_28(v3, v4, v5, v6, v7, v8, v9, v10, a1);
}

id sub_221B9CC44(char a1)
{
  LOBYTE(v11) = a1;
  v1 = [objc_opt_self() BOOLValueType];
  v2 = objc_allocWithZone(MEMORY[0x277D23958]);
  return OUTLINED_FUNCTION_6_28(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

id sub_221B9CCAC(double a1)
{
  v1 = [objc_opt_self() doubleValueType];
  v2 = objc_allocWithZone(MEMORY[0x277D23958]);
  return OUTLINED_FUNCTION_6_28(v2, v3, v4, v5, v6, v7, v8, v9, *&a1);
}

id sub_221B9CD28(char a1)
{
  LOBYTE(v11) = a1;
  v1 = [objc_opt_self() int8ValueType];
  v2 = objc_allocWithZone(MEMORY[0x277D23958]);
  return OUTLINED_FUNCTION_6_28(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

id sub_221B9CD90(__int16 a1)
{
  LOWORD(v11) = a1;
  v1 = [objc_opt_self() int16ValueType];
  v2 = objc_allocWithZone(MEMORY[0x277D23958]);
  return OUTLINED_FUNCTION_6_28(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

id sub_221B9CDF8(int a1)
{
  LODWORD(v11) = a1;
  v1 = [objc_opt_self() int32ValueType];
  v2 = objc_allocWithZone(MEMORY[0x277D23958]);
  return OUTLINED_FUNCTION_6_28(v2, v3, v4, v5, v6, v7, v8, v9, v11);
}

id sub_221B9CE74(uint64_t a1, uint64_t a2, SEL *a3)
{
  v3 = [objc_opt_self() *a3];
  v4 = objc_allocWithZone(MEMORY[0x277D23958]);
  return OUTLINED_FUNCTION_6_28(v4, v5, v6, v7, v8, v9, v10, v11, a1);
}

uint64_t static AppIntentRegistry.Target.== infix(_:_:)(void *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_221BCE1B8();
}

uint64_t AppIntentRegistry.target.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

void AppIntentRegistry.openIntent<A>(for:bundleIdentifier:factoidTitle:factoidCaption:)(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9)
{
  v51[14] = *MEMORY[0x277D85DE8];
  v17 = *(v9 + 8);

  if (v17)
  {
    sub_2219ACB94();
    v18 = swift_allocError();
    OUTLINED_FUNCTION_21_14(v18, v19);
  }

  else
  {
    v46 = a6;
    v45 = a4;
    v47 = a8;

    sub_2219A1D20(0, &qword_27CFB7668, 0x277D23828);
    (*(a9 + 16))(a7, a9);
    v21 = sub_2219A51F4();
    if (qword_27CFB7348 != -1)
    {
      OUTLINED_FUNCTION_98();
    }

    v22 = qword_27CFDED38;
    v23 = [objc_opt_self() openEntitySystemProtocol];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC150, &unk_221BE8AE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_221BD19E0;
    *(inited + 32) = 0x746567726174;
    *(inited + 40) = 0xE600000000000000;
    *(inited + 48) = v21;
    sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
    v25 = v21;
    OUTLINED_FUNCTION_25_14();
    sub_221BCD2C8();
    OUTLINED_FUNCTION_25_14();
    v26 = sub_221BCD278();

    v27 = sub_221BCD358();
    v51[0] = 0;
    v28 = [v22 actionsConformingToSystemProtocol:v23 withParametersOfTypes:v26 bundleIdentifier:v27 error:v51];

    v29 = v51[0];
    if (v28)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7710, &qword_221BD0C90);
      v30 = sub_221BCD298();
      v31 = v29;

      v32 = sub_221B9C3B4(a1, a2, v30);

      if (v32 && (sub_2219A2A88(v32), v34 = v33, v36 = v35, , v34))
      {

        v37 = [v36 identifier];
        v38 = sub_221BCD388();
        v40 = v39;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7908, &unk_221BD19D0);
        OUTLINED_FUNCTION_20_0();
        v41 = swift_allocObject();
        *(v41 + 16) = xmmword_221BD19E0;
        static AppEntitySpecification.identifiableEntity<A>(_:)(a7, a9, v51);
        sub_2219B49E0(0x746567726174, 0xE600000000000000, v51, (v41 + 32));
        v51[3] = &type metadata for AnyAppIntentSpecification;
        v51[4] = &off_283513928;
        OUTLINED_FUNCTION_20_0();
        v42 = swift_allocObject();
        v51[0] = v42;
        *(v42 + 16) = a1;
        *(v42 + 24) = a2;
        *(v42 + 32) = xmmword_221BD0800;
        *(v42 + 48) = v38;
        *(v42 + 56) = v40;
        *(v42 + 64) = v41;
        if (v45)
        {
          v49 = a3;
          v50 = v45;
          sub_221B9D400(&v49, v51, v43, 0x656C746974, 0xE500000000000000);
        }

        if (v46)
        {
          v49 = a5;
          v50 = v46;
          sub_221B9D400(&v49, v51, v43, 0x6E6F6974706163, 0xE700000000000000);
        }

        sub_2219EB748(v51, v47);
        sub_2219B397C(v51);
      }

      else
      {

        *(v47 + 32) = 0;
        *v47 = 0u;
        *(v47 + 16) = 0u;
      }
    }

    else
    {
      v44 = v51[0];
      sub_221BCC338();

      swift_willThrow();
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t sub_221B9D400(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = MEMORY[0x277D837D0];
  v27[3] = MEMORY[0x277D837D0];
  v27[0] = v8;
  v11 = objc_opt_self();

  v12 = [v11 stringValueType];
  v13 = objc_allocWithZone(MEMORY[0x277D23958]);
  v14 = sub_2219A6260(v27, v12);
  v15 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_0(a2, v15);
  v17 = (*(v16 + 24))(v15, v16);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_7_23();
    v17 = v25;
  }

  v18 = *(v17 + 16);
  if (v18 >= *(v17 + 24) >> 1)
  {
    sub_2219B394C();
    v17 = v26;
  }

  *(v17 + 16) = v18 + 1;
  v19 = (v17 + 40 * v18);
  v19[4] = a4;
  v19[5] = a5;
  v19[6] = v14;
  v19[7] = v10;
  v19[8] = &protocol witness table for String;
  v20 = a2[3];
  v21 = a2[4];
  __swift_mutable_project_boxed_opaque_existential_1(a2, v20);
  v22 = OUTLINED_FUNCTION_5_29();
  return v23(v22, v20, v21);
}

uint64_t AppIntentRegistry.openIntent<A>(for:bundleIdentifier:factoidTitle:factoidCaption:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, uint64_t a10)
{
  v11 = a8;
  v186 = a5;
  v187 = a7;
  v182 = a6;
  v184 = a4;
  v194 = a2;
  v195 = a3;
  v212 = *MEMORY[0x277D85DE8];
  v14 = *(a8 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](a1);
  MEMORY[0x28223BE20](v16);
  v18 = &v177 - v17;
  v19 = *(v10 + 8);

  if (v19)
  {
    sub_2219ACB94();
    v20 = swift_allocError();
    result = OUTLINED_FUNCTION_21_14(v20, v21);
    goto LABEL_41;
  }

  v196 = v15;
  v197 = v18;
  v200 = &v177 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = v14;
  v178 = a9;

  v183 = a1;
  *&v206 = a1;
  MEMORY[0x28223BE20](v23);
  *(&v177 - 2) = v11;
  *(&v177 - 1) = a10;
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  v199 = a10;
  *(&v177 - 2) = a10;
  *(&v177 - 1) = v25;
  sub_221BCD748();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_25_14();
  v26 = v198;
  v35 = sub_221B8F6FC(v27, v28, v29, v30, v31, v32, v33, v34);
  v179 = v26;

  v36 = sub_221BC2180(v35);
  if (qword_27CFB7348 != -1)
  {
    goto LABEL_83;
  }

LABEL_4:
  v191 = qword_27CFDED38;
  v192 = v36;
  v211 = 0;
  v209 = 0u;
  v210 = 0u;
  v37 = "AnyDeferredEntityProperty" + 16;
  v38 = v194;
  v39 = v195;
  v40 = v188;
  v41 = v196;
  if (v36[2] != 1)
  {
    goto LABEL_15;
  }

  sub_2219A2B14(v36);
  if (!v42)
  {
    v36 = v192;
    goto LABEL_15;
  }

  sub_2219A1D20(0, &qword_27CFB7668, 0x277D23828);
  v43 = sub_2219A51F4();
  v44 = objc_allocWithZone(MEMORY[0x277D23760]);
  v198 = v43;
  v45 = [v44 initWithMemberValueType_];
  v46 = [objc_opt_self() openEntitySystemProtocol];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC150, &unk_221BE8AE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_221BD19E0;
  *(inited + 32) = 0x746567726174;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v45;
  sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
  v193 = v45;
  v48 = v38;
  sub_221BCD2C8();
  v49 = sub_221BCD278();

  v50 = sub_221BCD358();
  *&v206 = 0;
  v51 = [v191 actionsConformingToSystemProtocol:v46 withParametersOfTypes:v49 bundleIdentifier:v50 error:&v206];

  v52 = v206;
  if (!v51)
  {
    v175 = v206;

    sub_221BCC338();

    swift_willThrow();
    result = sub_2219B1538(&v209, &unk_27CFBB7C0, &qword_221BE4C20);
    goto LABEL_41;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7710, &qword_221BD0C90);
  v53 = sub_221BCD298();
  v54 = v52;

  v55 = sub_221B9C3B4(v48, v39, v53);

  if (!v55 || (sub_2219A2A88(v55), v57 = v56, v59 = v58, , !v57))
  {
    v40 = v188;
    v60 = v193;
    goto LABEL_13;
  }

  v40 = v188;
  v60 = v193;
  if (!v59)
  {
LABEL_13:

    sub_2219B1538(&v209, &unk_27CFBB7C0, &qword_221BE4C20);
    v206 = 0u;
    v207 = 0u;
    v208 = 0;
    goto LABEL_14;
  }

  *&v203 = v59;
  v61 = v59;
  v62 = v179;
  sub_221B9E6EC(&v203, v194, v195, v183, v11, v199, &v206);
  v179 = v62;

  sub_2219B1538(&v209, &unk_27CFBB7C0, &qword_221BE4C20);
LABEL_14:
  v41 = v196;
  v36 = v192;
  v37 = "yProperty";
  v209 = v206;
  v210 = v207;
  v211 = v208;
LABEL_15:
  v63 = MEMORY[0x277D837E0];
  v198 = sub_221BCD2C8();
  v64 = 0;
  v65 = (v36 + 7);
  v66 = 1 << *(v36 + 32);
  v67 = -1;
  if (v66 < 64)
  {
    v67 = ~(-1 << v66);
  }

  v68 = v67 & v36[7];
  v69 = (v66 + 63) >> 6;
  v185 = *(v37 + 158);
  v189 = (v36 + 7);
  v190 = v11;
  *&v181 = v69;
  if (v68)
  {
    while (1)
    {
      v70 = v63;
LABEL_23:
      v72 = (v36[6] + ((v64 << 10) | (16 * __clz(__rbit64(v68)))));
      v74 = *v72;
      v73 = v72[1];
      v75 = objc_opt_self();

      v76 = [v75 openEntitySystemProtocol];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC150, &unk_221BE8AE0);
      v77 = swift_initStackObject();
      *(v77 + 16) = v185;
      *(v77 + 32) = 0x746567726174;
      *(v77 + 40) = 0xE600000000000000;
      sub_2219A1D20(0, &qword_27CFB7668, 0x277D23828);

      v180 = v74;
      v193 = v73;
      *(v77 + 48) = sub_2219A51F4();
      sub_2219A1D20(0, &unk_27CFBB670, 0x277D23960);
      v63 = v70;
      sub_221BCD2C8();
      v78 = sub_221BCD278();

      v79 = sub_221BCD358();
      *&v206 = 0;
      v80 = [v191 actionsConformingToSystemProtocol:v76 withParametersOfTypes:v78 bundleIdentifier:v79 error:&v206];

      v81 = v206;
      if (!v80)
      {
        break;
      }

      v68 &= v68 - 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7710, &qword_221BD0C90);
      v82 = sub_221BCD298();
      v83 = v81;

      if (*(v82 + 16))
      {
        v84 = sub_221B9E9B8(v194, v195);
        v40 = v188;
        v41 = v196;
        v11 = v190;
        if ((v85 & 1) == 0)
        {
          goto LABEL_33;
        }

        v86 = *(*(v82 + 56) + 8 * v84);

        v87 = 0;
        v88 = 1 << *(v86 + 32);
        v89 = (v88 + 63) >> 6;
        v90 = 64;
        if (!v89)
        {
          goto LABEL_33;
        }

        while (1)
        {
          v91 = *(v86 + v90);
          if (v91)
          {
            break;
          }

          v87 -= 64;
          --v89;
          v90 += 8;
          if (!v89)
          {
            goto LABEL_33;
          }
        }

        v92 = __clz(__rbit64(v91));
        if (v92 - v88 != v87)
        {
          sub_221BA0C50(&v206, v92 - v87, *(v86 + 36), 0, v86);

          v93 = v206;
          v94 = [v206 identifier];

          v95 = sub_221BCD388();
          v97 = v96;

          v98 = v198;
          swift_isUniquelyReferenced_nonNull_native();
          *&v206 = v98;
          v99 = v95;
          v41 = v196;
          v100 = v97;
          v40 = v188;
          sub_221BA0478(v99, v100, v180, v193);

          v198 = v206;
        }

        else
        {
LABEL_33:
        }

        v36 = v192;
      }

      else
      {

        v40 = v188;
        v41 = v196;
        v36 = v192;
        v11 = v190;
      }

      v65 = v189;
      v69 = v181;
      if (!v68)
      {
        goto LABEL_19;
      }
    }

    v176 = v206;

    sub_221BCC338();

    swift_willThrow();

    sub_2219B1538(&v209, &unk_27CFBB7C0, &qword_221BE4C20);

LABEL_41:
    v106 = *MEMORY[0x277D85DE8];
    return result;
  }

  while (1)
  {
LABEL_19:
    v71 = v64 + 1;
    if (__OFADD__(v64, 1))
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      OUTLINED_FUNCTION_98();
      goto LABEL_4;
    }

    if (v71 >= v69)
    {
      break;
    }

    v68 = v65[v71];
    ++v64;
    if (v68)
    {
      v70 = v63;
      v64 = v71;
      goto LABEL_23;
    }
  }

  v101 = v183;
  OUTLINED_FUNCTION_23_13();
  v102 = sub_221BCD678();
  v202 = v102;
  OUTLINED_FUNCTION_23_13();
  if (v102 == sub_221BCD708())
  {
    v103 = MEMORY[0x277D84F98];
LABEL_40:
    v104 = v210;
    v105 = v178;
    *v178 = v209;
    v105[1] = v104;
    *(v105 + 4) = v211;

    *(v105 + 5) = v103;
    goto LABEL_41;
  }

  v191 = *(v199 + 16);
  v192 = (v199 + 16);
  v193 = (v40 + 16);
  v189 = (v40 + 8);
  v190 = (v40 + 32);
  v103 = MEMORY[0x277D84F98];
  v181 = xmmword_221BD0800;
  while (2)
  {
    OUTLINED_FUNCTION_23_13();
    v107 = sub_221BCD6E8();
    sub_221BCD6A8();
    if (v107)
    {
      v108 = v197;
      (*(v40 + 16))(v197, v101 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v102, v11);
    }

    else
    {
      v170 = sub_221BCDE98();
      if (v41 != 8)
      {
        __break(1u);
      }

      *&v206 = v170;
      v108 = v197;
      (*v193)(v197, &v206, v11);
      swift_unknownObjectRelease();
    }

    sub_221BCD738();
    v109 = v200;
    (*v190)(v200, v108, v11);
    v110 = (v191)(v11, v199);
    if (!*(v198 + 2))
    {
      (*v189)(v109, v11);

      goto LABEL_74;
    }

    v112 = v198;
    v113 = sub_221B9E9B8(v110, v111);
    v115 = v114;

    if ((v115 & 1) == 0)
    {
      v122 = OUTLINED_FUNCTION_31_14();
      v123(v122);
      v41 = v196;
      goto LABEL_74;
    }

    v116 = (v112[7] + 16 * v113);
    v117 = *v116;
    v118 = v116[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7908, &unk_221BD19D0);
    OUTLINED_FUNCTION_20_0();
    v119 = swift_allocObject();
    *(v119 + 16) = v185;

    v120 = v195;

    static AppEntitySpecification.identifiableEntity<A>(_:)(v11, v199, &v206);
    sub_221B62018(&v206, &v203, &qword_27CFB7920, &qword_221BD0E60);
    if (*(&v204 + 1))
    {
      v121 = AppEntitySpecification.lnValue.getter();
      sub_2219B1538(&v206, &qword_27CFB7920, &qword_221BD0E60);
      sub_2219A1BD4(&v203);
    }

    else
    {
      sub_2219B1538(&v206, &qword_27CFB7920, &qword_221BD0E60);
      sub_2219B1538(&v203, &qword_27CFB7920, &qword_221BD0E60);
      v121 = 0;
    }

    *(v119 + 32) = 0x746567726174;
    *(v119 + 40) = 0xE600000000000000;
    *(v119 + 48) = v121;
    *(v119 + 56) = &type metadata for AppEntitySpecification;
    *(v119 + 64) = &protocol witness table for AppEntitySpecification;
    *(&v207 + 1) = &type metadata for AnyAppIntentSpecification;
    v208 = &off_283513928;
    OUTLINED_FUNCTION_20_0();
    v124 = swift_allocObject();
    *&v206 = v124;
    *(v124 + 16) = v194;
    *(v124 + 24) = v120;
    *(v124 + 32) = v181;
    *(v124 + 48) = v117;
    *(v124 + 56) = v118;
    *(v124 + 64) = v119;
    v125 = MEMORY[0x277D837D0];
    if (v186)
    {
      *(&v204 + 1) = MEMORY[0x277D837D0];
      *&v203 = v184;
      *(&v203 + 1) = v186;
      v126 = objc_opt_self();

      v127 = [v126 stringValueType];
      v128 = objc_allocWithZone(MEMORY[0x277D23958]);
      v129 = OUTLINED_FUNCTION_35_12();
      v130 = OUTLINED_FUNCTION_11_23();
      __swift_project_boxed_opaque_existential_0(v130, v131);
      v132 = OUTLINED_FUNCTION_24_15();
      v134 = v133(v132);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_23();
        v134 = v171;
      }

      v135 = *(v134 + 16);
      if (v135 >= *(v134 + 24) >> 1)
      {
        OUTLINED_FUNCTION_27_15();
        v134 = v172;
      }

      *(v134 + 16) = v135 + 1;
      v136 = (v134 + 40 * v135);
      v136[4] = 0x656C746974;
      v136[5] = 0xE500000000000000;
      v136[6] = v129;
      v125 = MEMORY[0x277D837D0];
      v136[7] = MEMORY[0x277D837D0];
      v136[8] = &protocol witness table for String;
      v137 = OUTLINED_FUNCTION_11_23();
      __swift_mutable_project_boxed_opaque_existential_1(v137, v138);
      OUTLINED_FUNCTION_5_29();
      OUTLINED_FUNCTION_25_14();
      v139();
    }

    if (v187)
    {
      *(&v204 + 1) = v125;
      *&v203 = v182;
      *(&v203 + 1) = v187;
      v140 = objc_opt_self();

      v141 = [v140 stringValueType];
      v142 = objc_allocWithZone(MEMORY[0x277D23958]);
      v143 = OUTLINED_FUNCTION_35_12();
      v144 = OUTLINED_FUNCTION_11_23();
      __swift_project_boxed_opaque_existential_0(v144, v145);
      v146 = OUTLINED_FUNCTION_24_15();
      v148 = v147(v146);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_7_23();
        v148 = v173;
      }

      v149 = *(v148 + 16);
      if (v149 >= *(v148 + 24) >> 1)
      {
        OUTLINED_FUNCTION_27_15();
        v148 = v174;
      }

      *(v148 + 16) = v149 + 1;
      v150 = (v148 + 40 * v149);
      v150[4] = 0x6E6F6974706163;
      v150[5] = 0xE700000000000000;
      v150[6] = v143;
      v150[7] = MEMORY[0x277D837D0];
      v150[8] = &protocol witness table for String;
      v151 = OUTLINED_FUNCTION_11_23();
      __swift_mutable_project_boxed_opaque_existential_1(v151, v152);
      OUTLINED_FUNCTION_5_29();
      OUTLINED_FUNCTION_25_14();
      v153();
    }

    v154 = sub_22199B82C(v11, v199);
    sub_2219EB748(&v206, &v203);
    swift_isUniquelyReferenced_nonNull_native();
    v201 = v103;
    v36 = v103;
    v155 = sub_221B9ED28(v154);
    if (__OFADD__(v103[2], (v156 & 1) == 0))
    {
      goto LABEL_81;
    }

    v157 = v155;
    v158 = v156;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC158, &qword_221BE8B28);
    v36 = &v201;
    if ((sub_221BCE028() & 1) == 0)
    {
      v41 = v196;
LABEL_69:
      v103 = v201;
      if (v158)
      {
        sub_221BA0CDC(&v203, v201[7] + 40 * v157);
      }

      else
      {
        v201[(v157 >> 6) + 8] |= 1 << v157;
        *(v103[6] + 8 * v157) = v154;
        v161 = v103[7] + 40 * v157;
        v162 = v203;
        v163 = v204;
        *(v161 + 32) = v205;
        *v161 = v162;
        *(v161 + 16) = v163;
        v164 = v103[2];
        v165 = __OFADD__(v164, 1);
        v166 = v164 + 1;
        if (v165)
        {
          goto LABEL_82;
        }

        v103[2] = v166;
      }

      v167 = OUTLINED_FUNCTION_31_14();
      v168(v167);
      sub_2219B397C(&v206);
      v101 = v183;
      v40 = v188;
LABEL_74:
      OUTLINED_FUNCTION_23_13();
      v169 = sub_221BCD708();
      v102 = v202;
      if (v202 == v169)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  v36 = v201;
  v159 = sub_221B9ED28(v154);
  v41 = v196;
  if ((v158 & 1) == (v160 & 1))
  {
    v157 = v159;
    goto LABEL_69;
  }

  sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
  result = sub_221BCE228();
  __break(1u);
  return result;
}

double sub_221B9E6EC@<D0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v12 = *a1;

  v13 = [v12 identifier];
  v14 = sub_221BCD388();
  v16 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7908, &unk_221BD19D0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_221BD19E0;
  v31 = a4;
  v29 = a5;
  v30 = a6;
  v18 = sub_221BCD748();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_221B8F6FC(sub_221BA1094, v28, v18, &type metadata for AppEntitySpecification, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v20);
  v22 = sub_221B9C874(v21, 3);

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFBC180, &unk_221BE8C90);
  v24 = sub_221BA10C0();
  *(v17 + 32) = 0x746567726174;
  *(v17 + 40) = 0xE600000000000000;
  *(v17 + 48) = v22;
  *(v17 + 56) = v23;
  *(v17 + 64) = v24;
  a7[3] = &type metadata for AnyAppIntentSpecification;
  a7[4] = &off_283513928;
  v25 = swift_allocObject();
  *a7 = v25;
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  result = 0.0;
  *(v25 + 32) = xmmword_221BD0800;
  *(v25 + 48) = v14;
  *(v25 + 56) = v16;
  *(v25 + 64) = v17;
  return result;
}

unint64_t sub_221B9E924(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_221BCD388();
  sub_221BCE308();
  sub_221BCD448();
  v4 = sub_221BCE358();

  return sub_221B9ED6C(a1, v4);
}

unint64_t sub_221B9E9B8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_221BCE308();
  sub_221BCD448();
  v6 = sub_221BCE358();

  return sub_221B9EE64(a1, a2, v6);
}

unint64_t sub_221B9EA30(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_221BCC558();
  OUTLINED_FUNCTION_9_25(&qword_27CFB9420);
  v5 = sub_221BCD308();

  return sub_221B9EF18(a1, v5);
}

unint64_t sub_221B9EAA0(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_221BCE2F8();
  return sub_221B9F1CC(a1, v4);
}

unint64_t sub_221B9EADC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 40);
  sub_221BCE308();
  sub_221BCD448();
  sub_221BCE328();
  if (a4)
  {
    sub_221BCD448();
  }

  v10 = sub_221BCE358();

  return sub_221B9F0C0(a1, a2, a3, a4, v10);
}

unint64_t sub_221B9EB98(uint64_t a1)
{
  v3 = _s17LNConnectionStoreC9AssertionOMa();
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  OUTLINED_FUNCTION_4_0();
  v7 = v6 - v5;
  v8 = *(v1 + 40);
  sub_221BCE308();
  sub_221A5BB74(a1, v7);
  MEMORY[0x223DA4060](0);
  v9 = sub_221BCC558();
  OUTLINED_FUNCTION_9_25(&qword_27CFB9420);
  sub_221BCD318();
  OUTLINED_FUNCTION_0_6(v9);
  (*(v10 + 8))(v7, v9);
  v11 = sub_221BCE358();
  return sub_221B9F22C(a1, v11);
}

unint64_t sub_221B9ECA8(void *__src)
{
  v3 = *(v1 + 40);
  memcpy(__dst, __src, sizeof(__dst));
  sub_221BCE308();
  sub_221B64E24(&v6);
  v4 = sub_221BCE358();

  return sub_221B9F43C(__src, v4);
}

unint64_t sub_221B9ED28(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  v5 = sub_221BCDC48();

  return sub_221B9F6B0(a1, v5);
}

unint64_t sub_221B9ED6C(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
  for (i = a2 & v3; ((1 << i) & *(v2 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v3)
  {
    v5 = *(*(v2 + 48) + 8 * i);
    v6 = sub_221BCD388();
    v8 = v7;
    if (v6 == sub_221BCD388() && v8 == v9)
    {

      return i;
    }

    v11 = sub_221BCE1B8();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

unint64_t sub_221B9EE64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (sub_221BCE1B8() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_221B9EF18(uint64_t a1, uint64_t a2)
{
  v14 = a1;
  v4 = sub_221BCC558();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v2 + 64;
  v13 = ~(-1 << *(v2 + 32));
  for (i = a2 & v13; ((1 << i) & *(v15 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v13)
  {
    (*(v5 + 16))(v8, *(v2 + 48) + *(v5 + 72) * i, v4);
    sub_221A2A71C(&qword_27CFB8AE0);
    v10 = sub_221BCD338();
    (*(v5 + 8))(v8, v4);
    if (v10)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_221B9F0C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  v8 = a5 & ~v7;
  if ((*(v5 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v13 = ~v7;
    v14 = *(v5 + 48);
    do
    {
      v15 = (v14 + 32 * v8);
      v17 = v15[2];
      v16 = v15[3];
      v18 = *v15 == a1 && v15[1] == a2;
      if (v18 || (sub_221BCE1B8() & 1) != 0)
      {
        if (v16)
        {
          if (a4)
          {
            v19 = v17 == a3 && v16 == a4;
            if (v19 || (sub_221BCE1B8() & 1) != 0)
            {
              return v8;
            }
          }
        }

        else if (!a4)
        {
          return v8;
        }
      }

      v8 = (v8 + 1) & v13;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t sub_221B9F1CC(uint64_t a1, uint64_t a2)
{
  v3 = ~(-1 << *(v2 + 32));
    ;
  }

  return i;
}

unint64_t sub_221B9F22C(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB8B08, &unk_221BD6720);
  v4 = *(*(v21 - 8) + 64);
  MEMORY[0x28223BE20](v21);
  v6 = &v18 - v5;
  v7 = _s17LNConnectionStoreC9AssertionOMa();
  v20 = *(v7 - 8);
  v8 = *(v20 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2 + 64;
  v23 = v2;
  v19 = ~(-1 << *(v2 + 32));
  for (i = a2 & v19; ((1 << i) & *(v11 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v19)
  {
    sub_221A5BB74(*(v23 + 48) + *(v20 + 72) * i, v10);
    v13 = *(v21 + 48);
    sub_221A5BB74(v10, v6);
    sub_221A5BB74(v22, &v6[v13]);
    v14 = sub_221BCC518();
    sub_2219A197C(v10);
    v15 = sub_221BCC558();
    v16 = *(*(v15 - 8) + 8);
    v16(&v6[v13], v15);
    v16(v6, v15);
    if (v14)
    {
      break;
    }
  }

  return i;
}

unint64_t sub_221B9F43C(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = v2;
    v7 = ~v4;
    v21 = *(a1 + 49);
    v22 = *(a1 + 48);
    v20 = *(a1 + 25);
    v8 = *a1;
    v9 = a1[1];
    v31 = *(a1 + 1);
    v32 = *(a1 + 32);
    v23 = a1[5];
    v18 = a1[7];
    v19 = a1[8];
    while (1)
    {
      memcpy(__dst, (*(v6 + 48) + 72 * v5), sizeof(__dst));
      v10 = __dst[0] == v8 && __dst[1] == v9;
      if (!v10 && (sub_221BCE1B8() & 1) == 0)
      {
        goto LABEL_27;
      }

      v11 = __dst[2];
      v12 = __dst[3];
      v13 = __dst[4];
      v27 = __dst[2];
      v28 = __dst[3];
      v29 = __dst[4];
      v25 = v31;
      v26 = v32;
      sub_221B67390(__dst, v24);
      sub_221A1C70C(v11, v12, v13);
      sub_221BA0FD4(&v31, v24);
      LOBYTE(v11) = static IntentsServices.DevicePredicate.== infix(_:_:)(&v27, &v25);
      sub_2219A1B7C(v25, *(&v25 + 1), v26);
      sub_2219A1B7C(v27, v28, v29);
      if ((v11 & 1) == 0)
      {
        goto LABEL_26;
      }

      sub_2219A1D20(0, &qword_27CFB7670, 0x277D82BB8);
      if ((sub_221BCDC58() & 1) == 0)
      {
        goto LABEL_26;
      }

      v14 = BYTE1(__dst[6]);
      if (LOBYTE(__dst[6]) == 10)
      {
        if (v22 != 10)
        {
          goto LABEL_26;
        }
      }

      else if (v22 == 10 || (sub_221A1A7FC(__dst[6], v22) & 1) == 0)
      {
        goto LABEL_26;
      }

      if (((v14 ^ v21) & 1) != 0 || WORD1(__dst[6]) != v20)
      {
        goto LABEL_26;
      }

      if (!__dst[8])
      {
        break;
      }

      if (!v19)
      {
        goto LABEL_26;
      }

      if (__dst[7] == v18 && __dst[8] == v19)
      {
LABEL_29:
        sub_2219A1878(__dst);
        return v5;
      }

      v16 = sub_221BCE1B8();
      sub_2219A1878(__dst);
      if (v16)
      {
        return v5;
      }

LABEL_27:
      v5 = (v5 + 1) & v7;
      if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
      {
        return v5;
      }
    }

    if (!v19)
    {
      goto LABEL_29;
    }

LABEL_26:
    sub_2219A1878(__dst);
    goto LABEL_27;
  }

  return v5;
}

unint64_t sub_221B9F6B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = v2 + 64;
  v5 = ~(-1 << *(v2 + 32));
  for (i = a2 & v5; ((1 << i) & *(v4 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v5)
  {
    sub_2219A1D20(0, &qword_27CFBB8B0, 0x277D23800);
    v7 = *(*(v3 + 48) + 8 * i);
    v8 = sub_221BCDC58();

    if (v8)
    {
      break;
    }
  }

  return i;
}

void sub_221B9F788()
{
  OUTLINED_FUNCTION_21();
  v2 = v0;
  OUTLINED_FUNCTION_20_17();
  v3 = sub_221BCC558();
  v4 = OUTLINED_FUNCTION_0_2(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_4_0();
  v9 = OUTLINED_FUNCTION_17_18();
  OUTLINED_FUNCTION_0_60(v9, v10);
  if (v12)
  {
    __break(1u);
LABEL_11:
    sub_221BCE228();
    __break(1u);
    return;
  }

  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB77C0, &qword_221BD0D28);
  if (OUTLINED_FUNCTION_4_30())
  {
    v14 = *v0;
    sub_221B9EA30(v1);
    OUTLINED_FUNCTION_19_18();
    if (!v15)
    {
      goto LABEL_11;
    }
  }

  if (v13)
  {
    v16 = *(*v2 + 56);
    OUTLINED_FUNCTION_22();

    sub_221BA11F4(v17, v18);
  }

  else
  {
    v20 = *(v6 + 16);
    v21 = OUTLINED_FUNCTION_63_3();
    v22(v21);
    v23 = OUTLINED_FUNCTION_28_10();
    sub_221BA06F0(v23, v24, v25, v26);
    OUTLINED_FUNCTION_22();
  }
}

_OWORD *sub_221B9F8D4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = OUTLINED_FUNCTION_13_23(a1, a2);
  v10 = sub_221B9E9B8(v8, v9);
  OUTLINED_FUNCTION_0_60(v10, v11);
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = sub_221BCE228();
    __break(1u);
    return result;
  }

  v15 = v12;
  v16 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFB7768, &qword_221BE9980);
  if (OUTLINED_FUNCTION_4_30())
  {
    v17 = *v3;
    sub_221B9E9B8(a2, a3);
    OUTLINED_FUNCTION_8_21();
    if (!v19)
    {
      goto LABEL_14;
    }

    v15 = v18;
  }

  v20 = *v4;
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_0((v20[7] + 32 * v15));
    v21 = OUTLINED_FUNCTION_0_0();

    return sub_2219A1AB0(v21, v22);
  }

  else
  {
    sub_221BA07B8(v15, a2, a3, a1, v20);
  }
}

uint64_t sub_221B9FA14()
{
  OUTLINED_FUNCTION_21();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = OUTLINED_FUNCTION_13_23(v8, v6);
  v12 = sub_221B9E9B8(v10, v11);
  OUTLINED_FUNCTION_0_60(v12, v13);
  if (v14)
  {
    __break(1u);
LABEL_14:
    result = sub_221BCE228();
    __break(1u);
    return result;
  }

  OUTLINED_FUNCTION_37_8();
  if (OUTLINED_FUNCTION_4_30())
  {
    v15 = *v0;
    sub_221B9E9B8(v7, v5);
    OUTLINED_FUNCTION_8_21();
    if (!v17)
    {
      goto LABEL_14;
    }

    v2 = v16;
  }

  if (v1)
  {
    v18 = *(*v3 + 56);
    v19 = *(v18 + 8 * v2);
    *(v18 + 8 * v2) = v9;
    OUTLINED_FUNCTION_22();
  }

  else
  {
    v22 = OUTLINED_FUNCTION_29_14();
    sub_221BA0824(v22, v23, v24, v25, v26);
    OUTLINED_FUNCTION_22();
  }
}