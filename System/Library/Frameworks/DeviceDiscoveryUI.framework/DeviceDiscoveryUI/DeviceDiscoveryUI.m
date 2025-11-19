void sub_238063138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_238063F98(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_2(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0x20u);
}

uint64_t sub_2380667E0()
{
  v1 = *v0;
  sub_23815568C();
  MEMORY[0x2383E9CD0](v1);
  return sub_2381556BC();
}

uint64_t sub_238066854()
{
  v1 = *v0;
  sub_23815568C();
  MEMORY[0x2383E9CD0](v1);
  return sub_2381556BC();
}

const char *sub_2380668AC()
{
  if (*v0)
  {
    return "PINPairingDDUI";
  }

  else
  {
    return "AskToAirDrop";
  }
}

uint64_t sub_2380668E4()
{
  sub_23815568C();
  MEMORY[0x2383E9CD0](0);
  return sub_2381556BC();
}

uint64_t sub_238066950()
{
  sub_23815568C();
  MEMORY[0x2383E9CD0](0);
  return sub_2381556BC();
}

uint64_t sub_2380669C0(uint64_t a1, id *a2)
{
  result = sub_238154CAC();
  *a2 = 0;
  return result;
}

uint64_t sub_238066A38(uint64_t a1, id *a2)
{
  v3 = sub_238154CBC();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_238066AB8@<X0>(uint64_t *a1@<X8>)
{
  sub_238154CCC();
  v2 = sub_238154C8C();

  *a1 = v2;
  return result;
}

uint64_t sub_238066AFC()
{
  v1 = *v0;
  v2 = sub_238154CCC();
  v3 = MEMORY[0x2383E94A0](v2);

  return v3;
}

uint64_t sub_238066B38()
{
  v1 = *v0;
  sub_238154CCC();
  sub_238154C5C();
}

uint64_t sub_238066B8C()
{
  v1 = *v0;
  sub_238154CCC();
  sub_23815568C();
  sub_238154C5C();
  v2 = sub_2381556BC();

  return v2;
}

uint64_t sub_238066C00(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = sub_238154CCC();
  v6 = v5;
  if (v4 == sub_238154CCC() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_2381555CC();
  }

  return v9 & 1;
}

uint64_t sub_238066C88@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_238154C8C();

  *a2 = v5;
  return result;
}

uint64_t sub_238066CD0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = sub_238154CCC();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_238066CFC(uint64_t a1)
{
  v2 = sub_238067254(&qword_27DEEA190);
  v3 = sub_238067254(&qword_27DEEA198);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_238066DA4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238066DC4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for RapportFeatureFlags(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
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

_WORD *storeEnumTagSinglePayload for RapportFeatureFlags(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_238066F10(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238066F30(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

unint64_t sub_238066F70()
{
  result = qword_27DEEA160;
  if (!qword_27DEEA160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA160);
  }

  return result;
}

void sub_238066FD8(uint64_t a1, unint64_t *a2)
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

uint64_t getEnumTagSinglePayload for SharingFeatureFlags(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingFeatureFlags(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_238067198()
{
  result = qword_27DEEA170;
  if (!qword_27DEEA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA170);
  }

  return result;
}

uint64_t sub_238067254(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2380672E8(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for _DDNodeViewModel();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA320, &unk_238157920);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[12];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA328, &unk_23815F380);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[13];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8E0, &unk_238157930);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[15];

  return v18(v19, a2, v17);
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

uint64_t sub_238067524(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for _DDNodeViewModel();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA320, &unk_238157920);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[12];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA328, &unk_23815F380);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[13];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8E0, &unk_238157930);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[15];

  return v18(v19, a2, a2, v17);
}

void sub_238067724()
{
  type metadata accessor for _DDNodeViewModel();
  if (v0 <= 0x3F)
  {
    sub_238067930();
    if (v1 <= 0x3F)
    {
      sub_238067980();
      if (v2 <= 0x3F)
      {
        sub_238067A2C(319, &qword_27DEEA350, MEMORY[0x277D839B0], MEMORY[0x277CE10B8]);
        if (v3 <= 0x3F)
        {
          sub_2380714D0(319, &qword_27DEEA358, MEMORY[0x277CDFAA0], MEMORY[0x277CDF468]);
          if (v4 <= 0x3F)
          {
            sub_2380714D0(319, &qword_27DEEA360, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
            if (v5 <= 0x3F)
            {
              sub_238067A2C(319, &qword_27DEEA368, MEMORY[0x277D85048], MEMORY[0x277CDF468]);
              if (v6 <= 0x3F)
              {
                sub_2380714D0(319, &qword_27DEEA910, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_238067930()
{
  result = qword_27DEED730;
  if (!qword_27DEED730)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_27DEED730);
  }

  return result;
}

void sub_238067980()
{
  if (!qword_27DEEA340)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA348, &qword_238157968);
    v0 = sub_23815473C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEA340);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

void sub_238067A2C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for _DDNodeView.Layout(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for _DDNodeView.Layout(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_238067BD8()
{
  result = qword_27DEEA370;
  if (!qword_27DEEA370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA370);
  }

  return result;
}

uint64_t sub_238067C2C()
{
  v1 = *(*(type metadata accessor for _DDNodeDecoration.Kind(0) - 8) + 64);
  v2 = (MEMORY[0x28223BE20])();
  v39 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v38 - v5;
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v38 - v8;
  MEMORY[0x28223BE20](v7);
  v11 = &v38 - v10;
  v12 = type metadata accessor for _DDNodeDecoration(0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8);
  v17 = &v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v38 - v18;
  v20 = type metadata accessor for _DDNodeDecorationCombination(0);
  v21 = *(*(v20 - 8) + 64);
  MEMORY[0x28223BE20](v20);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238070308(v0, v23, type metadata accessor for _DDNodeDecorationCombination);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v25 = *v23;
      v26 = *(*v23 + 16);
      if (v26)
      {
        v27 = 0;
        v28 = v25 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
        v38 = v26 - 1;
        for (i = 0; ; ++i)
        {
          while (1)
          {
            if (i >= *(v25 + 16))
            {
              __break(1u);
LABEL_32:
              v37 = type metadata accessor for _DDNodeAskRequestDecorationViewModel;
              goto LABEL_34;
            }

            v30 = i + 1;
            sub_238070308(v28 + *(v13 + 72) * i, v17, type metadata accessor for _DDNodeDecoration);
            sub_238070308(v17, v6, type metadata accessor for _DDNodeDecoration.Kind);
            if ((swift_getEnumCaseMultiPayload() | 2) != 7)
            {
              break;
            }

            sub_238071150(v17, type metadata accessor for _DDNodeDecoration);
            ++i;
            if (v26 == v30)
            {
              goto LABEL_17;
            }
          }

          sub_238071150(v6, type metadata accessor for _DDNodeDecoration.Kind);
          sub_238070308(v17, v39, type metadata accessor for _DDNodeDecoration.Kind);
          sub_238071150(v17, type metadata accessor for _DDNodeDecoration);
          v31 = swift_getEnumCaseMultiPayload();
          if (v31 > 3)
          {
            if ((v31 - 5) >= 3)
            {
              v37 = type metadata accessor for _DDNodeDecoration.Kind;
LABEL_34:
              sub_238071150(v39, v37);

LABEL_30:
              v33 = 256;
              v27 = 1;
              return v33 | v27 & 1u;
            }
          }

          else
          {
            if (v31 >= 3)
            {
              goto LABEL_32;
            }

            sub_238071150(v39, type metadata accessor for _DDNodeDecoration.Kind);
          }

          v27 = 1;
          if (v38 == i)
          {
LABEL_17:

            goto LABEL_20;
          }
        }
      }

      v32 = *v23;
    }

LABEL_19:
    v27 = 0;
LABEL_20:
    v33 = 0;
    return v33 | v27 & 1u;
  }

  sub_238070370(v23, v19, type metadata accessor for _DDNodeDecoration);
  sub_238070308(v19, v11, type metadata accessor for _DDNodeDecoration.Kind);
  if ((swift_getEnumCaseMultiPayload() | 2) == 7)
  {
    sub_238071150(v19, type metadata accessor for _DDNodeDecoration);
    goto LABEL_19;
  }

  sub_238071150(v11, type metadata accessor for _DDNodeDecoration.Kind);
  sub_238070308(v19, v9, type metadata accessor for _DDNodeDecoration.Kind);
  sub_238071150(v19, type metadata accessor for _DDNodeDecoration);
  v35 = swift_getEnumCaseMultiPayload();
  if (v35 > 2)
  {
    if ((v35 - 5) >= 3)
    {
      if (v35 == 3)
      {
        v36 = type metadata accessor for _DDNodeAskRequestDecorationViewModel;
      }

      else
      {
        v36 = type metadata accessor for _DDNodeDecoration.Kind;
      }

      sub_238071150(v9, v36);
      goto LABEL_30;
    }
  }

  else
  {
    sub_238071150(v9, type metadata accessor for _DDNodeDecoration.Kind);
  }

  v33 = 0;
  v27 = 1;
  return v33 | v27 & 1u;
}

uint64_t sub_238068180(unsigned __int8 a1)
{
  v2 = sub_23815426C();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x28223BE20](v2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      sub_23815419C();
    }

    else
    {
      if (a1 == 3)
      {

        return sub_2381542BC();
      }

      sub_2381542BC();
    }

    sub_2381541FC();
    v9 = sub_23815425C();

    return v9;
  }

  if (a1)
  {
    v10 = v5;
    sub_23815428C();
    (*(v3 + 104))(v7, *MEMORY[0x277CE0A10], v10);
    v11 = sub_23815429C();

    (*(v3 + 8))(v7, v10);
    return v11;
  }

  else
  {

    return sub_2381542AC();
  }
}

uint64_t sub_238068360@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = (&v16 - v9);
  v11 = type metadata accessor for _DDNodeView(0);
  sub_2380712E4(v1 + *(v11 + 48), v10, &qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_238153A2C();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    v14 = *v10;
    sub_2381550EC();
    v15 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_238068568@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = (&v17 - v10);
  v12 = type metadata accessor for _DDNodeView(0);
  sub_2380712E4(v1 + *(v12 + 52), v11, &qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v13 = sub_238153A0C();
    return (*(*(v13 - 8) + 32))(a1, v11, v13);
  }

  else
  {
    v15 = *v11;
    sub_2381550EC();
    v16 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

double sub_238068770()
{
  v1 = sub_238153CFC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20]();
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = (v0 + *(type metadata accessor for _DDNodeView(0) + 56));
  v7 = *v6;
  if (v6[8] == 1)
  {
    return *v6;
  }

  sub_2381550EC();
  v9 = sub_2381540CC();
  sub_23815290C();

  sub_238153CEC();
  swift_getAtKeyPath();
  sub_2380700D8(v7, 0);
  (*(v2 + 8))(v5, v1);
  return *&v10[1];
}

uint64_t sub_2380688CC@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153CFC();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20]();
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = (&v16 - v9);
  v11 = type metadata accessor for _DDNodeView(0);
  sub_2380712E4(v1 + *(v11 + 60), v10, &qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v12 = sub_2381537EC();
    return (*(*(v12 - 8) + 32))(a1, v10, v12);
  }

  else
  {
    v14 = *v10;
    sub_2381550EC();
    v15 = sub_2381540CC();
    sub_23815290C();

    sub_238153CEC();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v7, v3);
  }
}

uint64_t sub_238068AD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2381548DC();
  v6 = v5;
  sub_238068CE0(v2, *&a1, __src);
  memcpy(__dst, __src, 0x28AuLL);
  memcpy(v14, __src, 0x28AuLL);
  sub_2380712E4(__dst, v10, &qword_27DEEA658, &qword_238157D30);
  sub_238071284(v14, &qword_27DEEA658, &qword_238157D30);
  memcpy(v15, __dst, sizeof(v15));
  v7 = qword_238157E40[*(v2 + *(type metadata accessor for _DDNodeView(0) + 24))];
  sub_2381548DC();
  sub_2381538EC();
  *&v12[3] = *&v12[27];
  *&v12[11] = *&v12[35];
  *&v12[19] = *&v12[43];
  sub_2381545DC();
  v8 = sub_23815460C();

  *&v10[0] = v4;
  *(&v10[0] + 1) = v6;
  memcpy(&v10[1], v15, 0x28AuLL);
  *(&v10[41] + 10) = *v12;
  *(&v10[42] + 10) = *&v12[8];
  *(&v10[43] + 10) = *&v12[16];
  *(&v10[44] + 1) = *&v12[23];
  *&v10[45] = v8;
  *(&v10[45] + 1) = 0x4026000000000000;
  v10[46] = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA660, &qword_238157D38);
  sub_23807100C();
  sub_2381544AC();
  memcpy(__src, v10, 0x2F0uLL);
  return sub_238071284(__src, &qword_27DEEA660, &qword_238157D38);
}

uint64_t sub_238068CE0@<X0>(uint64_t a1@<X0>, double a2@<X1>, void *a3@<X8>)
{
  v75 = a2;
  v79 = a3;
  v4 = sub_23815468C();
  v73 = *(v4 - 8);
  v74 = v4;
  v5 = *(v73 + 64);
  MEMORY[0x28223BE20](v4);
  v72 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v7 = *(*(v69 - 8) + 64);
  v8 = MEMORY[0x28223BE20](v69);
  v68 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v66 - v10;
  v12 = sub_2381537EC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v66 - v18;
  sub_2380688CC(&v66 - v18);
  (*(v13 + 104))(v17, *MEMORY[0x277CDF3C0], v12);
  sub_2381537DC();
  v20 = *(v13 + 8);
  v20(v17, v12);
  v20(v19, v12);
  v21 = type metadata accessor for _DDNodeViewModel();
  if (*(a1 + *(v21 + 20) + 32) - 2 < 4 || *(a1 + *(v21 + 20) + 32))
  {
    v22 = sub_2381545EC();
  }

  else
  {
    v22 = sub_2381545FC();
  }

  v87 = v22;
  sub_2381545DC();
  v86 = sub_23815460C();

  sub_23815383C();
  v83 = v227;
  v81 = v229;
  v82 = v228;
  v80 = v231;
  v77 = v232;
  v78 = v230;
  v23 = sub_2381548DC();
  v84 = v24;
  v85 = v23;
  v25 = *(a1 + *(type metadata accessor for _DDNodeView(0) + 24));
  v26 = qword_238157EE0[v25];
  sub_2381548DC();
  sub_2381538EC();
  v27 = sub_238069A78();
  sub_238069BC8(v27, v219, 1.0);

  v215 = v219[6];
  v216 = v219[7];
  v217 = v219[8];
  v218 = v219[9];
  v211 = v219[2];
  v212 = v219[3];
  v213 = v219[4];
  v214 = v219[5];
  v209 = v219[0];
  v210 = v219[1];
  v71 = sub_238069E08();
  v28 = *(a1 + *(v21 + 24));
  if (*(v28 + 16))
  {
    v29 = *(type metadata accessor for _DDNodeDecoration(0) - 8);
    sub_238070308(v28 + ((*(v29 + 80) + 32) & ~*(v29 + 80)), v11, type metadata accessor for _DDNodeDecoration.Kind);
    swift_getEnumCaseMultiPayload();
    sub_238071150(v11, type metadata accessor for _DDNodeDecoration.Kind);
  }

  v76 = sub_23815492C();
  v70 = sub_238069E08();
  if (sub_238069E08())
  {
    v30 = [objc_opt_self() systemBlueColor];
    v31 = sub_23815465C();
    v32 = COERCE_DOUBLE(sub_238069FFC());
    if (v33)
    {
      v32 = 0.0;
    }

    sub_238069BC8(v31, &v121, v32);

    v94 = v127;
    v95 = v128;
    v96 = v129;
    v97 = v130;
    v90 = v123;
    v91 = v124;
    v92 = v125;
    v93 = v126;
    v88 = v121;
    v89 = v122;
    v34 = sub_23815493C();
    v67 = sub_238069FFC();
    v36 = v35 & 1;
    LOBYTE(v99) = v35 & 1;
    if (sub_238069E08())
    {
      v37 = 1.0;
    }

    else
    {
      v37 = 0.0;
    }

    if (*(v28 + 16))
    {
      v38 = *(type metadata accessor for _DDNodeDecoration(0) - 8);
      v39 = v28 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
      v40 = v34;
      v41 = v68;
      sub_238070308(v39, v68, type metadata accessor for _DDNodeDecoration.Kind);
      swift_getEnumCaseMultiPayload();
      v42 = v41;
      v34 = v40;
      sub_238071150(v42, type metadata accessor for _DDNodeDecoration.Kind);
    }

    v43 = sub_23815492C();
    if (sub_238069E08())
    {
      v44 = 1.0;
    }

    else
    {
      v44 = 0.0;
    }

    v160 = v94;
    v161 = v95;
    v162 = v96;
    v163 = v97;
    v156 = v90;
    v157 = v91;
    v158 = v92;
    v159 = v93;
    v154 = v88;
    v155 = v89;
    *&v164 = v34;
    *(&v164 + 1) = v67;
    LOBYTE(v165) = v36;
    *(&v165 + 1) = v37;
    *&v166 = v43;
    *(&v166 + 1) = v44;
    CGSizeMake(&v154);
    v206 = v164;
    v207 = v165;
    v208 = v166;
    v202 = v160;
    v203 = v161;
    v205 = v163;
    v204 = v162;
    v198 = v156;
    v199 = v157;
    v201 = v159;
    v200 = v158;
    v197 = v155;
    v196 = v154;
  }

  else
  {
    sub_2380711B0(&v196);
  }

  v46 = v72;
  v45 = v73;
  v47 = v74;
  (*(v73 + 104))(v72, *MEMORY[0x277CE0FE0], v74);
  v48 = sub_2381546CC();
  (*(v45 + 8))(v46, v47);
  if (v70)
  {
    v49 = 1.0;
  }

  else
  {
    v49 = 0.0;
  }

  v75 = v49;
  if (v71)
  {
    v50 = 1.0;
  }

  else
  {
    v50 = 0.0;
  }

  v51 = sub_2381540FC();
  sub_23815377C();
  v53 = v52;
  v55 = v54;
  v57 = v56;
  v59 = v58;
  v194 = 1;
  v190 = 0;
  sub_23806A404(v25);
  sub_23806A404(v25);
  sub_2381548DC();
  sub_2381538EC();
  *&v195[7] = v233;
  *&v195[23] = v234;
  *&v195[39] = v235;
  v109 = v206;
  v110 = v207;
  v111 = v208;
  v105 = v202;
  v106 = v203;
  v108 = v205;
  v107 = v204;
  v101 = v198;
  v102 = v199;
  v104 = v201;
  v103 = v200;
  v99 = v196;
  v100 = v197;
  *&v112 = v83;
  *(&v112 + 1) = __PAIR64__(v81, v82);
  v61 = v77;
  v60 = v78;
  *&v113 = v78;
  *(&v113 + 1) = v80;
  *&v114 = v77;
  *(&v114 + 1) = v86;
  LOWORD(v115) = 256;
  *(&v115 + 2) = v225;
  WORD3(v115) = v226;
  *(&v115 + 1) = v87;
  LOWORD(v116) = 256;
  WORD3(v116) = v224;
  *(&v116 + 2) = v223;
  *(&v116 + 1) = v85;
  *v117 = v84;
  *&v117[8] = v220;
  *&v117[24] = v221;
  *&v117[40] = v222;
  v98[2] = v114;
  v98[3] = v115;
  v98[0] = v112;
  v98[1] = v113;
  v98[4] = v116;
  v98[5] = *v117;
  v98[6] = *&v117[16];
  v98[7] = *&v117[32];
  v118[6] = v215;
  v118[7] = v216;
  v118[8] = v217;
  v118[9] = v218;
  v118[2] = v211;
  v118[3] = v212;
  v118[4] = v213;
  v118[5] = v214;
  v118[0] = v209;
  v118[1] = v210;
  v62 = v50;
  *&v119 = v50;
  v63 = v76;
  *(&v119 + 1) = v76;
  *(&v98[16] + 8) = v217;
  *(&v98[17] + 8) = v218;
  *(&v98[18] + 8) = v119;
  *(&v98[14] + 8) = v215;
  *(&v98[10] + 8) = v211;
  *(&v98[12] + 8) = v213;
  *(&v98[13] + 8) = v214;
  *(&v98[15] + 8) = v216;
  *(&v98[8] + 8) = v209;
  *(&v98[9] + 8) = v210;
  *(&v98[11] + 8) = v212;
  v131 = v206;
  v132 = v207;
  v133 = v208;
  v127 = v202;
  v128 = v203;
  v130 = v205;
  v129 = v204;
  v123 = v198;
  v124 = v199;
  v126 = v201;
  v125 = v200;
  v122 = v197;
  v121 = v196;
  v98[30] = v206;
  v98[31] = v207;
  v98[26] = v202;
  v98[27] = v203;
  v98[28] = v204;
  v98[29] = v205;
  v64 = v75;
  v120 = v75;
  *&v98[8] = *(&v222 + 1);
  *(&v98[19] + 1) = v75;
  v98[22] = v198;
  v98[23] = v199;
  v98[24] = v200;
  v98[25] = v201;
  v98[20] = v196;
  v98[21] = v197;
  v134[0] = v48;
  v134[1] = 0;
  LOWORD(v135) = 1;
  *(&v135 + 2) = v192;
  WORD3(v135) = v193;
  BYTE8(v135) = v51;
  HIDWORD(v135) = *&v191[3];
  *(&v135 + 9) = *v191;
  *&v136 = v53;
  *(&v136 + 1) = v55;
  *&v137 = v57;
  *(&v137 + 1) = v59;
  LOBYTE(v138[0]) = 0;
  *&v138[3] = *(&v235 + 1);
  *(&v138[2] + 1) = *&v195[32];
  *(&v138[1] + 1) = *&v195[16];
  *(v138 + 1) = *v195;
  WORD4(v138[3]) = 256;
  *(&v98[39] + 10) = *(&v138[2] + 10);
  v98[38] = v138[1];
  v98[39] = v138[2];
  v98[36] = v137;
  v98[37] = v138[0];
  v98[34] = v135;
  v98[35] = v136;
  v98[32] = v208;
  v98[33] = v48;
  memcpy(v79, v98, 0x28AuLL);
  v139[0] = v48;
  v139[1] = 0;
  v140 = 1;
  v141 = v192;
  v142 = v193;
  v143 = v51;
  *v144 = *v191;
  *&v144[3] = *&v191[3];
  v145 = v53;
  v146 = v55;
  v147 = v57;
  v148 = v59;
  v149 = 0;
  v150 = *v195;
  v151 = *&v195[16];
  *v152 = *&v195[32];
  *&v152[15] = *&v195[47];
  v153 = 256;
  sub_2380712E4(&v112, &v154, &qword_27DEEA690, &qword_238157D50);
  sub_2380712E4(v118, &v154, &qword_27DEEA698, &qword_238157D58);
  sub_2380712E4(&v121, &v154, &qword_27DEEA6A0, &qword_238157D60);
  sub_2380712E4(v134, &v154, &qword_27DEEA6A8, &qword_238157D68);
  sub_238071284(v139, &qword_27DEEA6A8, &qword_238157D68);
  v164 = v109;
  v165 = v110;
  v166 = v111;
  v160 = v105;
  v161 = v106;
  v163 = v108;
  v162 = v107;
  v156 = v101;
  v157 = v102;
  v159 = v104;
  v158 = v103;
  v155 = v100;
  v154 = v99;
  sub_238071284(&v154, &qword_27DEEA6A0, &qword_238157D60);
  v167[6] = v215;
  v167[7] = v216;
  v167[8] = v217;
  v167[9] = v218;
  v167[2] = v211;
  v167[3] = v212;
  v167[4] = v213;
  v167[5] = v214;
  v167[0] = v209;
  v167[1] = v210;
  v168 = v62;
  v169 = v63;
  v170 = v64;
  sub_238071284(v167, &qword_27DEEA698, &qword_238157D58);
  v171 = v83;
  v172 = v82;
  v173 = v81;
  v174 = v60;
  v175 = v80;
  v176 = v61;
  v177 = v86;
  v178 = 256;
  v179 = v225;
  v180 = v226;
  v181 = v87;
  v182 = 256;
  v183 = v223;
  v184 = v224;
  v185 = v85;
  v186 = v84;
  v187 = v220;
  v188 = v221;
  v189 = v222;
  return sub_238071284(&v171, &qword_27DEEA690, &qword_238157D50);
}

uint64_t sub_238069A78()
{
  v0 = sub_238152F3C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238152F2C();
  v5 = sub_238152EEC();
  v6 = *(v1 + 8);
  v6(v4, v0);
  if (v5)
  {
    v7 = objc_opt_self();
    v8 = &selRef_secondarySystemFillColor;
  }

  else
  {
    sub_238152F0C();
    v9 = sub_238152EEC();
    v6(v4, v0);
    v7 = objc_opt_self();
    v8 = &selRef_systemFillColor;
    if (v9)
    {
      v8 = &selRef_systemGrayColor;
    }
  }

  v10 = [v7 *v8];
  return sub_23815465C();
}

double sub_238069BC8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v7 = sub_238153A2C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v29[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v29[-v13];
  sub_238068360(&v29[-v13]);
  (*(v8 + 104))(v12, *MEMORY[0x277CDFA90], v7);
  v15 = sub_238153A1C();
  v16 = *(v8 + 8);
  v16(v12, v7);
  v16(v14, v7);
  sub_23815383C();

  v17 = sub_2381548DC();
  v19 = v18;
  sub_2381549DC();
  v21 = v20;
  v23 = v22;
  v24 = qword_238157E40[*(v3 + *(type metadata accessor for _DDNodeView(0) + 24))];
  if (v15)
  {
    v25 = 1.57079633;
  }

  else
  {
    v25 = -1.57079633;
  }

  sub_2381548DC();
  sub_2381538EC();
  *a2 = 0;
  *(a2 + 8) = a3;
  v26 = v30;
  *(a2 + 16) = *&v29[8];
  *(a2 + 32) = v26;
  *(a2 + 48) = v31;
  *(a2 + 56) = a1;
  *(a2 + 64) = 256;
  *(a2 + 72) = v17;
  *(a2 + 80) = v19;
  *(a2 + 88) = v25;
  *(a2 + 96) = v21;
  *(a2 + 104) = v23;
  result = *&v33;
  v28 = v34;
  *(a2 + 128) = v33;
  *(a2 + 144) = v28;
  *(a2 + 112) = v32;
  return result;
}

uint64_t sub_238069E08()
{
  v1 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x28223BE20](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for _DDNodeDecoration(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for _DDNodeViewModel();
  v11 = *(v0 + *(result + 24));
  v12 = *(v11 + 16);
  if (!v12)
  {
    return 0;
  }

  v13 = 0;
  while (v13 < *(v11 + 16))
  {
    sub_238070308(v11 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v13, v9, type metadata accessor for _DDNodeDecoration);
    sub_238070308(v9, v4, type metadata accessor for _DDNodeDecoration.Kind);
    sub_238071150(v9, type metadata accessor for _DDNodeDecoration);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_238071150(v4, type metadata accessor for _DDNodeDecoration.Kind);
      return 1;
    }

    ++v13;
    result = sub_238071150(v4, type metadata accessor for _DDNodeDecoration.Kind);
    if (v12 == v13)
    {
      return 0;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_238069FFC()
{
  v1 = type metadata accessor for _DDNodeDecoration.Kind(0);
  v2 = *(*(v1 - 8) + 64);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = (&v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v3);
  v7 = &v37 - v6;
  v8 = type metadata accessor for _DDNodeDecoration(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8 - 8);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = type metadata accessor for _DDNodeDecorationCombination(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x28223BE20](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v0 + *(type metadata accessor for _DDNodeViewModel() + 24));
  v21 = *(v20 + 16);
  if (v21 == 1)
  {
    sub_238070308(v20 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v19, type metadata accessor for _DDNodeDecoration);
    swift_storeEnumTagMultiPayload();
    sub_238070370(v19, v15, type metadata accessor for _DDNodeDecoration);
    sub_238070308(v15, v7, type metadata accessor for _DDNodeDecoration.Kind);
    sub_238071150(v15, type metadata accessor for _DDNodeDecoration);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v22 = *(v7 + 1);
      v23 = v7[16];
      v24 = *(v7 + 4);
      v25 = *(v7 + 10);

      return v22;
    }

    sub_238071150(v7, type metadata accessor for _DDNodeDecoration.Kind);
    goto LABEL_18;
  }

  if (!v21)
  {
    swift_storeEnumTagMultiPayload();
LABEL_18:
    *&result = 0.0;
    return result;
  }

  *v19 = v20;
  swift_storeEnumTagMultiPayload();
  v27 = *(*v19 + 16);
  if (!v27)
  {

    goto LABEL_18;
  }

  v28 = *v19 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v29 = *(v9 + 72);

  v30 = 0;
  v31 = 0.0;
  do
  {
    sub_238070308(v28, v13, type metadata accessor for _DDNodeDecoration);
    sub_238070308(v13, v5, type metadata accessor for _DDNodeDecoration.Kind);
    sub_238071150(v13, type metadata accessor for _DDNodeDecoration);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v32 = v5[1];
      v33 = *(v5 + 16);
      v34 = *(v5 + 4);
      v35 = *(v5 + 10);

      *&result = COERCE_DOUBLE();
      if ((v33 & 1) == 0)
      {
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
          return result;
        }

        v31 = v31 + v32;
      }
    }

    else
    {
      sub_238071150(v5, type metadata accessor for _DDNodeDecoration.Kind);
    }

    v28 += v29;
    --v27;
  }

  while (v27);

  if (v30 <= 0)
  {
    goto LABEL_18;
  }

  *&result = v31 / v30;
  return result;
}

double sub_23806A404(char a1)
{
  if (*(v1 + *(type metadata accessor for _DDNodeViewModel() + 20) + 32))
  {
    v3 = &unk_238157E90;
  }

  else
  {
    v3 = &unk_238157E68;
  }

  return v3[a1];
}

uint64_t sub_23806A458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a1;
  v95 = a3;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA5B0, &qword_238157C98);
  v6 = *(*(v92 - 8) + 64);
  MEMORY[0x28223BE20](v92);
  v94 = &v70 - v7;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA5B8, &qword_238157CA0);
  v8 = *(*(v93 - 8) + 64);
  MEMORY[0x28223BE20](v93);
  v71 = &v70 - v9;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA5C0, &qword_238157CA8);
  v10 = *(*(v87 - 8) + 64);
  MEMORY[0x28223BE20](v87);
  v90 = &v70 - v11;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA5C8, &qword_238157CB0);
  v12 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v70 = &v70 - v13;
  v14 = sub_238152F3C();
  v82 = *(v14 - 8);
  v83 = v14;
  v15 = *(v82 + 64);
  MEMORY[0x28223BE20](v14);
  v81 = &v70 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA5D0, &qword_238157CB8);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = &v70 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA5D8, &qword_238157CC0);
  v22 = *(v21 - 8);
  v84 = v21;
  v85 = v22;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v21);
  v80 = &v70 - v24;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA5E0, &qword_238157CC8);
  v25 = *(*(v86 - 8) + 64);
  MEMORY[0x28223BE20](v86);
  v79 = &v70 - v26;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA5E8, &qword_238157CD0);
  v27 = *(*(v89 - 8) + 64);
  v28 = MEMORY[0x28223BE20](v89);
  v96 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v91 = &v70 - v30;
  v97 = a1;
  v98 = a2;
  v76 = a2;
  v77 = sub_2380704A0();

  v31 = sub_23815438C();
  v33 = v32;
  v35 = v34;
  sub_23815461C();
  v75 = sub_23815431C();
  v74 = v36;
  v38 = v37;
  v73 = v39;

  sub_238070490(v31, v33, v35 & 1);

  v72 = sub_23806AD98();
  KeyPath = swift_getKeyPath();
  v41 = type metadata accessor for _DDNodeView(0);
  v42 = sub_238068180(*(v3 + *(v41 + 24)));
  v43 = swift_getKeyPath();
  v44 = v38 & 1;
  LOBYTE(v97) = v38 & 1;
  v101 = 0;
  v45 = swift_getKeyPath();
  v46 = &v20[*(v17 + 36)];
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA5F0, &qword_238157CD8) + 28);
  v48 = *MEMORY[0x277CE0B30];
  v49 = sub_23815430C();
  v50 = v46 + v47;
  v51 = v81;
  (*(*(v49 - 8) + 104))(v50, v48, v49);
  *v46 = swift_getKeyPath();
  v52 = v74;
  *v20 = v75;
  *(v20 + 1) = v52;
  v20[16] = v44;
  *(v20 + 3) = v73;
  *(v20 + 4) = KeyPath;
  *(v20 + 5) = v72;
  v20[48] = 0;
  *(v20 + 7) = v43;
  *(v20 + 8) = v42;
  *(v20 + 9) = v45;
  v54 = v82;
  v53 = v83;
  v20[80] = 1;
  v97 = v78;
  v98 = v76;
  v55 = sub_238070A74();
  v56 = v80;
  v57 = v17;
  v58 = MEMORY[0x277D837D0];
  v59 = v77;
  sub_2381544FC();
  sub_238071284(v20, &qword_27DEEA5D0, &qword_238157CB8);
  v97 = v57;
  v98 = v58;
  v99 = v55;
  v100 = v59;
  v60 = v79;
  swift_getOpaqueTypeConformance2();
  v61 = v84;
  sub_2381544AC();
  (*(v85 + 8))(v56, v61);
  sub_238152F1C();
  LOBYTE(v61) = sub_238152EEC();
  v62 = *(v54 + 8);
  v62(v51, v53);
  if (v61)
  {
    sub_2380712E4(v60, v90, &qword_27DEEA5E0, &qword_238157CC8);
    swift_storeEnumTagMultiPayload();
    sub_238070D54();
    sub_238070DE0();
    sub_238153ECC();
  }

  else
  {
    v63 = v70;
    sub_2380712E4(v60, v70, &qword_27DEEA5E0, &qword_238157CC8);
    v64 = (v63 + *(v88 + 36));
    *v64 = sub_23806AF5C;
    v64[1] = 0;
    sub_2380712E4(v63, v90, &qword_27DEEA5C8, &qword_238157CB0);
    swift_storeEnumTagMultiPayload();
    sub_238070D54();
    sub_238070DE0();
    sub_238153ECC();
    sub_238071284(v63, &qword_27DEEA5C8, &qword_238157CB0);
  }

  sub_238071284(v60, &qword_27DEEA5E0, &qword_238157CC8);
  v65 = v91;
  sub_23807121C(v96, v91, &qword_27DEEA5E8, &qword_238157CD0);
  sub_238152F0C();
  v66 = sub_238152EEC();
  v62(v51, v53);
  if (v66)
  {
    v67 = v71;
    sub_2380712E4(v65, v71, &qword_27DEEA5E8, &qword_238157CD0);
    v68 = v94;
    *(v67 + *(v93 + 36)) = 256;
    sub_2380712E4(v67, v68, &qword_27DEEA5B8, &qword_238157CA0);
    swift_storeEnumTagMultiPayload();
    sub_238070EF4();
    sub_238070F80();
    sub_238153ECC();
    sub_238071284(v67, &qword_27DEEA5B8, &qword_238157CA0);
  }

  else
  {
    sub_2380712E4(v65, v94, &qword_27DEEA5E8, &qword_238157CD0);
    swift_storeEnumTagMultiPayload();
    sub_238070EF4();
    sub_238070F80();
    sub_238153ECC();
  }

  return sub_238071284(v65, &qword_27DEEA5E8, &qword_238157CD0);
}

uint64_t sub_23806AD98()
{
  v0 = sub_238153A0C();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x28223BE20](v0);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238152F3C();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238152F2C();
  v10 = sub_238152EEC();
  (*(v6 + 8))(v9, v5);
  sub_238068568(v4);
  v11 = sub_2381539FC();
  (*(v1 + 8))(v4, v0);
  if (v10)
  {
    v12 = sub_2380AFAC8();
    v13 = 1;
    if (v12 == 107)
    {
      v13 = 2;
    }

    v14 = 2;
    if (v12 == 107)
    {
      v14 = 3;
    }

    if (v11)
    {
      return v14;
    }

    else
    {
      return v13;
    }
  }

  else if (v11)
  {
    return 3;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_23806AF84@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238153A0C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v1 + *(type metadata accessor for _DDNodeViewModel() + 40));
  if (v8 != 107)
  {
    v37 = sub_23807CB28(v8);
    v38 = v15;
    sub_2380704A0();
    v16 = sub_23815438C();
    v18 = v17;
    v20 = v19;
    v21 = *(v1 + *(type metadata accessor for _DDNodeView(0) + 24));
    v35 = v4;
    v36 = v3;
    v33 = v1;
    v34 = v7;
    if (v21 > 1)
    {
      if (v21 == 2)
      {
        sub_23815428C();
        goto LABEL_9;
      }

      if (v21 != 3)
      {
        sub_2381542BC();
        goto LABEL_9;
      }
    }

    sub_2381542AC();
LABEL_9:
    v22 = sub_23815435C();
    v24 = v23;
    v26 = v25;

    sub_238070490(v16, v18, v20 & 1);

    sub_23815463C();
    v9 = sub_23815431C();
    v10 = v27;
    v29 = v28;
    v12 = v30;

    sub_238070490(v22, v24, v26 & 1);

    v31 = v34;
    sub_238068568(v34);
    v32 = sub_2381539FC();
    (*(v35 + 8))(v31, v36);
    v14 = (v32 & 1) == 0;
    result = swift_getKeyPath();
    v11 = v29 & 1;
    goto LABEL_10;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  result = 0;
  v14 = 0;
LABEL_10:
  *a1 = v9;
  *(a1 + 8) = v10;
  *(a1 + 16) = v11;
  *(a1 + 24) = v12;
  *(a1 + 32) = result;
  *(a1 + 40) = v14;
  return result;
}

uint64_t sub_23806B1D8@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4F0, &qword_238157BA0);
  v2 = *(*(v46 - 8) + 64);
  MEMORY[0x28223BE20](v46);
  v48 = &v39 - v3;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4F8, &qword_238157BA8);
  v4 = *(*(v47 - 8) + 64);
  MEMORY[0x28223BE20](v47);
  v40 = &v39 - v5;
  v6 = sub_238152F3C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA500, &qword_238157BB0);
  v11 = *(*(v44 - 8) + 64);
  MEMORY[0x28223BE20](v44);
  v45 = &v39 - v12;
  v43 = sub_2380AFAC8();
  v13 = sub_2380AFAC8();
  if (v13 == 107)
  {
    v13 = 1;
  }

  *&v55 = sub_23807CB28(v13);
  *(&v55 + 1) = v14;
  sub_2380704A0();
  v15 = sub_23815438C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_238152F1C();
  v22 = sub_238152EEC();
  v23 = *(v7 + 8);
  v23(v10, v6);
  if (v22 & 1) != 0 || (sub_238152F2C(), v24 = sub_238152EEC(), v23(v10, v6), (v24) || (sub_238152F0C(), v25 = sub_238152EEC(), v23(v10, v6), (v25))
  {
    *&v50 = v15;
    *(&v50 + 1) = v17;
    *&v51 = v19 & 1;
    *(&v51 + 1) = v21;
    LOWORD(v52) = 256;
  }

  else
  {
    v38 = sub_2381540FC();
    *&v50 = v15;
    *(&v50 + 1) = v17;
    *&v51 = v19 & 1;
    *(&v51 + 1) = v21;
    LOWORD(v52) = v38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA508, &qword_238157BB8);
  sub_2380704F4();
  sub_238153ECC();
  v42 = v56;
  v41 = v55;
  v26 = v57;
  v27 = BYTE1(v57);
  v28 = *(v1 + *(type metadata accessor for _DDNodeView(0) + 24));
  v29 = v45;
  if (v28 <= 1)
  {
    goto LABEL_10;
  }

  if (v28 == 2)
  {
    v30 = sub_23815428C();
  }

  else
  {
    if (v28 == 3)
    {
LABEL_10:
      v30 = sub_2381542AC();
      goto LABEL_13;
    }

    v30 = sub_2381542BC();
  }

LABEL_13:
  v31 = v30;
  KeyPath = swift_getKeyPath();
  v60 = v27;
  v33 = sub_2380AFDEC();
  v34 = swift_getKeyPath();
  v35 = swift_getKeyPath();
  v61 = 0;
  v51 = v42;
  v50 = v41;
  LOBYTE(v52) = v26;
  BYTE1(v52) = v27;
  *(&v52 + 1) = KeyPath;
  *&v53 = v31;
  *(&v53 + 1) = v34;
  *v54 = v33;
  *&v54[8] = v35;
  *&v54[16] = 1;
  v54[24] = 0;
  *&v54[25] = 257;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA528, &qword_238157C58);
  sub_2380705C4();
  sub_2381544AC();
  v57 = v52;
  v58 = v53;
  *v59 = *v54;
  *&v59[11] = *&v54[11];
  v55 = v50;
  v56 = v51;
  sub_238071284(&v55, &qword_27DEEA528, &qword_238157C58);
  if (v43 == 107)
  {
    v36 = v40;
    sub_2380712E4(v29, v40, &qword_27DEEA500, &qword_238157BB0);
    sub_2380712E4(v36, v48, &qword_27DEEA4F8, &qword_238157BA8);
    swift_storeEnumTagMultiPayload();
    sub_238070904();
    sub_23806F5D4(&qword_27DEEA5A0, &qword_27DEEA500, &qword_238157BB0, sub_2380705C4);
    sub_238153ECC();
    sub_238071284(v36, &qword_27DEEA4F8, &qword_238157BA8);
  }

  else
  {
    sub_2380712E4(v29, v48, &qword_27DEEA500, &qword_238157BB0);
    swift_storeEnumTagMultiPayload();
    sub_238070904();
    sub_23806F5D4(&qword_27DEEA5A0, &qword_27DEEA500, &qword_238157BB0, sub_2380705C4);
    sub_238153ECC();
  }

  return sub_238071284(v29, &qword_27DEEA500, &qword_238157BB0);
}

uint64_t sub_23806B830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v39 = a2;
  v40 = a3;
  v38 = a1;
  v44 = a4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA438, &qword_238157A90);
  v6 = *(*(v43 - 8) + 64);
  MEMORY[0x28223BE20](v43);
  v8 = &v38 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4A0, &qword_238157B20);
  v9 = *(*(v41 - 8) + 64);
  MEMORY[0x28223BE20](v41);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA428, &qword_238157A88);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x28223BE20](v12 - 8);
  v15 = &v38 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA418, &qword_238157A80);
  v16 = *(*(v42 - 8) + 64);
  v17 = MEMORY[0x28223BE20](v42);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v38 - v20;
  v22 = sub_238153A0C();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  MEMORY[0x28223BE20](v22);
  v26 = &v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238068568(v26);
  v27 = sub_2381539FC();
  (*(v23 + 8))(v26, v22);
  if (v27)
  {
    *v15 = sub_238153D1C();
    *(v15 + 1) = 0x402A000000000000;
    v15[16] = 0;
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4B0, &qword_238157B30);
    sub_23806BCE0(v38, v39, v40, &v15[*(v28 + 44)]);
    sub_2381548DC();
    sub_238153A8C();
    sub_23807121C(v15, v19, &qword_27DEEA428, &qword_238157A88);
    v29 = &v19[*(v42 + 36)];
    v30 = v50;
    *(v29 + 4) = v49;
    *(v29 + 5) = v30;
    *(v29 + 6) = v51;
    v31 = v46;
    *v29 = v45;
    *(v29 + 1) = v31;
    v32 = v48;
    *(v29 + 2) = v47;
    *(v29 + 3) = v32;
    sub_23807121C(v19, v21, &qword_27DEEA418, &qword_238157A80);
    sub_2380712E4(v21, v11, &qword_27DEEA418, &qword_238157A80);
    swift_storeEnumTagMultiPayload();
    sub_23806FBBC();
    sub_2380711D4(&qword_27DEEA430, &qword_27DEEA438, &qword_238157A90);
    sub_238153ECC();
    v33 = v21;
    v34 = &qword_27DEEA418;
    v35 = &qword_238157A80;
  }

  else
  {
    *v8 = sub_238153DEC();
    *(v8 + 1) = 0;
    v8[16] = 0;
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4A8, &qword_238157B28);
    sub_23806C20C(v5, v38, v39, v40, &v8[*(v36 + 44)]);
    sub_2380712E4(v8, v11, &qword_27DEEA438, &qword_238157A90);
    swift_storeEnumTagMultiPayload();
    sub_23806FBBC();
    sub_2380711D4(&qword_27DEEA430, &qword_27DEEA438, &qword_238157A90);
    sub_238153ECC();
    v33 = v8;
    v34 = &qword_27DEEA438;
    v35 = &qword_238157A90;
  }

  return sub_238071284(v33, v34, v35);
}

uint64_t sub_23806BCE0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v30 = a2;
  v31 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4B8, &qword_238157B38);
  v7 = v6 - 8;
  v8 = *(*(v6 - 8) + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4C0, &qword_238157B40);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v30 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - v19;
  sub_238068AD4(a1);
  *v13 = sub_238153DFC();
  *(v13 + 1) = 0;
  v13[16] = 0;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4C8, &qword_238157B48);
  sub_23806BF40(v30, v31, &v13[*(v21 + 44)]);
  v22 = sub_23815415C();
  sub_23815377C();
  v23 = &v13[*(v7 + 44)];
  *v23 = v22;
  *(v23 + 1) = v24;
  *(v23 + 2) = v25;
  *(v23 + 3) = v26;
  *(v23 + 4) = v27;
  v23[40] = 0;
  sub_2380712E4(v20, v18, &qword_27DEEA4C0, &qword_238157B40);
  sub_2380712E4(v13, v11, &qword_27DEEA4B8, &qword_238157B38);
  sub_2380712E4(v18, a4, &qword_27DEEA4C0, &qword_238157B40);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4D0, &qword_238157B50);
  sub_2380712E4(v11, a4 + *(v28 + 48), &qword_27DEEA4B8, &qword_238157B38);
  sub_238071284(v13, &qword_27DEEA4B8, &qword_238157B38);
  sub_238071284(v20, &qword_27DEEA4C0, &qword_238157B40);
  sub_238071284(v11, &qword_27DEEA4B8, &qword_238157B38);
  return sub_238071284(v18, &qword_27DEEA4C0, &qword_238157B40);
}

uint64_t sub_23806BF40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v38 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4D8, &qword_238157B58);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4E0, &qword_238157B60);
  v13 = v12 - 8;
  v14 = *(*(v12 - 8) + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v33 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v33 - v18;
  sub_23806A458(a1, a2, &v33 - v18);
  KeyPath = swift_getKeyPath();
  v21 = &v19[*(v13 + 44)];
  *v21 = KeyPath;
  v21[8] = 0;
  v34 = v11;
  sub_23806B1D8(v11);
  sub_23806AF84(v39);
  v22 = v39[0];
  v23 = v39[2];
  v24 = v39[3];
  v35 = v39[4];
  v36 = v39[1];
  v25 = v40;
  v37 = v17;
  sub_2380712E4(v19, v17, &qword_27DEEA4E0, &qword_238157B60);
  sub_2380712E4(v11, v9, &qword_27DEEA4D8, &qword_238157B58);
  v26 = v17;
  v27 = v38;
  sub_2380712E4(v26, v38, &qword_27DEEA4E0, &qword_238157B60);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4E8, &qword_238157B98);
  sub_2380712E4(v9, v27 + *(v28 + 48), &qword_27DEEA4D8, &qword_238157B58);
  v29 = v27 + *(v28 + 64);
  v30 = v35;
  v31 = v36;
  *v29 = v22;
  *(v29 + 8) = v31;
  *(v29 + 16) = v23;
  *(v29 + 24) = v24;
  *(v29 + 32) = v30;
  *(v29 + 40) = v25;
  sub_2380703E0(v22, v31, v23, v24);
  sub_238071284(v34, &qword_27DEEA4D8, &qword_238157B58);
  sub_238071284(v19, &qword_27DEEA4E0, &qword_238157B60);
  sub_238070440(v22, v31, v23, v24);
  sub_238071284(v9, &qword_27DEEA4D8, &qword_238157B58);
  return sub_238071284(v37, &qword_27DEEA4E0, &qword_238157B60);
}

uint64_t sub_23806C20C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v66 = a3;
  v67 = a4;
  v74 = a5;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA6B0, &qword_238157D70);
  v7 = *(*(v73 - 8) + 64);
  MEMORY[0x28223BE20](v73);
  v64 = (&v63 - v8);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA6B8, &qword_238157D78);
  v9 = *(*(v65 - 8) + 64);
  MEMORY[0x28223BE20](v65);
  v71 = &v63 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA6C0, &qword_238157D80);
  v11 = *(*(v69 - 8) + 64);
  MEMORY[0x28223BE20](v69);
  v13 = (&v63 - v12);
  v14 = sub_238152F3C();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA6C8, &qword_238157D88);
  v20 = *(*(v19 - 8) + 64);
  v21 = MEMORY[0x28223BE20](v19 - 8);
  v72 = &v63 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v70 = &v63 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4C0, &qword_238157B40);
  v25 = *(*(v24 - 8) + 64);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = &v63 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA6D0, &qword_238157D90);
  v29 = v28 - 8;
  v30 = *(*(v28 - 8) + 64);
  v31 = MEMORY[0x28223BE20](v28);
  v68 = &v63 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = &v63 - v34;
  MEMORY[0x28223BE20](v33);
  v37 = &v63 - v36;
  v38 = a2;
  v39 = a1;
  sub_238068AD4(v38);
  LOBYTE(a1) = sub_23815411C();
  type metadata accessor for _DDNodeView(0);
  sub_23815377C();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  sub_23807121C(v27, v35, &qword_27DEEA4C0, &qword_238157B40);
  v48 = &v35[*(v29 + 44)];
  *v48 = a1;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  sub_23807121C(v35, v37, &qword_27DEEA6D0, &qword_238157D90);
  sub_238152F2C();
  LOBYTE(a1) = sub_238152EEC();
  (*(v15 + 8))(v18, v14);
  if (a1)
  {
    *v13 = sub_2381548CC();
    v13[1] = v49;
    v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA6F8, &qword_238157DA8);
    sub_23806C8C0(v39, v66, v67, v13 + *(v50 + 44));
    sub_2380712E4(v13, v71, &qword_27DEEA6C0, &qword_238157D80);
    swift_storeEnumTagMultiPayload();
    sub_2380711D4(&qword_27DEEA6E0, &qword_27DEEA6C0, &qword_238157D80);
    sub_2380711D4(&qword_27DEEA6E8, &qword_27DEEA6B0, &qword_238157D70);
    v51 = v70;
    sub_238153ECC();
    v52 = v13;
    v53 = &qword_27DEEA6C0;
    v54 = &qword_238157D80;
  }

  else
  {
    v55 = sub_238153DEC();
    v56 = v64;
    *v64 = v55;
    *(v56 + 8) = 0;
    *(v56 + 16) = 1;
    v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA6D8, &qword_238157D98);
    sub_23806D3C4(v39, v66, v67, v56 + *(v57 + 44));
    sub_2380712E4(v56, v71, &qword_27DEEA6B0, &qword_238157D70);
    swift_storeEnumTagMultiPayload();
    sub_2380711D4(&qword_27DEEA6E0, &qword_27DEEA6C0, &qword_238157D80);
    sub_2380711D4(&qword_27DEEA6E8, &qword_27DEEA6B0, &qword_238157D70);
    v51 = v70;
    sub_238153ECC();
    v52 = v56;
    v53 = &qword_27DEEA6B0;
    v54 = &qword_238157D70;
  }

  sub_238071284(v52, v53, v54);
  v58 = v68;
  sub_2380712E4(v37, v68, &qword_27DEEA6D0, &qword_238157D90);
  v59 = v72;
  sub_2380712E4(v51, v72, &qword_27DEEA6C8, &qword_238157D88);
  v60 = v74;
  sub_2380712E4(v58, v74, &qword_27DEEA6D0, &qword_238157D90);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA6F0, &qword_238157DA0);
  sub_2380712E4(v59, v60 + *(v61 + 48), &qword_27DEEA6C8, &qword_238157D88);
  sub_238071284(v51, &qword_27DEEA6C8, &qword_238157D88);
  sub_238071284(v37, &qword_27DEEA6D0, &qword_238157D90);
  sub_238071284(v59, &qword_27DEEA6C8, &qword_238157D88);
  return sub_238071284(v58, &qword_27DEEA6D0, &qword_238157D90);
}

uint64_t sub_23806C8C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v52 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4D8, &qword_238157B58);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v50 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA700, &qword_238157DB0);
  v12 = v11 - 8;
  v13 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA708, &qword_238157DB8);
  v17 = v16 - 8;
  v18 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v51 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v50 - v22;
  MEMORY[0x28223BE20](v21);
  v50 = &v50 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA710, &qword_238157DC0);
  v26 = *(*(v25 - 8) + 64);
  v27 = MEMORY[0x28223BE20](v25 - 8);
  v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v31 = (&v50 - v30);
  *v31 = sub_2381548BC();
  v31[1] = v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA718, &qword_238157DC8);
  sub_23806CD68(a1, a2, a3, (v31 + *(v33 + 44)));
  sub_23806B1D8(v10);
  v34 = *(a1 + *(type metadata accessor for _DDNodeView(0) + 24));
  v35 = qword_238157EB8[v34];
  sub_2381548DC();
  sub_238153A8C();
  sub_23807121C(v10, v15, &qword_27DEEA4D8, &qword_238157B58);
  v36 = &v15[*(v12 + 44)];
  v37 = v58;
  *(v36 + 4) = v57;
  *(v36 + 5) = v37;
  *(v36 + 6) = v59;
  v38 = v54;
  *v36 = v53;
  *(v36 + 1) = v38;
  v39 = v56;
  *(v36 + 2) = v55;
  *(v36 + 3) = v39;
  v40 = qword_238157EE0[v34];
  sub_2381548DC();
  sub_238153A8C();
  sub_23807121C(v15, v23, &qword_27DEEA700, &qword_238157DB0);
  v41 = &v23[*(v17 + 44)];
  v42 = v65;
  *(v41 + 4) = v64;
  *(v41 + 5) = v42;
  *(v41 + 6) = v66;
  v43 = v61;
  *v41 = v60;
  *(v41 + 1) = v43;
  v44 = v63;
  *(v41 + 2) = v62;
  *(v41 + 3) = v44;
  v45 = v50;
  sub_23807121C(v23, v50, &qword_27DEEA708, &qword_238157DB8);
  sub_2380712E4(v31, v29, &qword_27DEEA710, &qword_238157DC0);
  v46 = v51;
  sub_2380712E4(v45, v51, &qword_27DEEA708, &qword_238157DB8);
  v47 = v52;
  sub_2380712E4(v29, v52, &qword_27DEEA710, &qword_238157DC0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA720, &qword_238157DD0);
  sub_2380712E4(v46, v47 + *(v48 + 48), &qword_27DEEA708, &qword_238157DB8);
  sub_238071284(v45, &qword_27DEEA708, &qword_238157DB8);
  sub_238071284(v31, &qword_27DEEA710, &qword_238157DC0);
  sub_238071284(v46, &qword_27DEEA708, &qword_238157DB8);
  return sub_238071284(v29, &qword_27DEEA710, &qword_238157DC0);
}

uint64_t sub_23806CD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v78 = a2;
  v79 = a3;
  v69 = a1;
  v83 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA728, &qword_238157DD8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v75 = &v67 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA730, &qword_238157DE0);
  v9 = *(v8 - 8);
  v77 = v8 - 8;
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8 - 8);
  v76 = &v67 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA738, &qword_238157DE8);
  v13 = *(v12 - 8);
  v81 = v12 - 8;
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12 - 8);
  v82 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v80 = &v67 - v18;
  MEMORY[0x28223BE20](v17);
  v84 = &v67 - v19;
  sub_238153D8C();
  v20 = sub_23815436C();
  v22 = v21;
  v24 = v23;
  v68 = *(a1 + *(type metadata accessor for _DDNodeView(0) + 24));
  sub_238068180(v68);
  v25 = sub_23815435C();
  v27 = v26;
  v29 = v28;

  sub_238070490(v20, v22, v24 & 1);

  sub_23815461C();
  v30 = sub_23815431C();
  v73 = v31;
  v74 = v30;
  v33 = v32;
  v72 = v34;

  sub_238070490(v25, v27, v29 & 1);

  KeyPath = swift_getKeyPath();
  v35 = v68;
  v36 = qword_238157EB8[v68];
  sub_2381548DC();
  sub_238153A8C();
  v70 = v33 & 1;
  v105 = v33 & 1;
  v104 = 0;
  *&v103[55] = v109;
  *&v103[71] = v110;
  *&v103[87] = v111;
  *&v103[103] = v112;
  *&v103[7] = v106;
  *&v103[23] = v107;
  *&v103[39] = v108;
  v37 = v75;
  sub_23806A458(v78, v79, v75);
  sub_2381548DC();
  sub_238153A8C();
  v38 = v37;
  v39 = v76;
  sub_23807121C(v38, v76, &qword_27DEEA728, &qword_238157DD8);
  v40 = (v39 + *(v77 + 44));
  v41 = v118;
  v40[4] = v117;
  v40[5] = v41;
  v40[6] = v119;
  v42 = v114;
  *v40 = v113;
  v40[1] = v42;
  v43 = v116;
  v40[2] = v115;
  v40[3] = v43;
  v44 = qword_238157EE0[v35];
  sub_2381548DC();
  sub_238153A8C();
  v45 = v80;
  sub_23807121C(v39, v80, &qword_27DEEA730, &qword_238157DE0);
  v46 = (v45 + *(v81 + 44));
  v47 = v125;
  v46[4] = v124;
  v46[5] = v47;
  v46[6] = v126;
  v48 = v121;
  *v46 = v120;
  v46[1] = v48;
  v49 = v123;
  v46[2] = v122;
  v46[3] = v49;
  v50 = v45;
  v51 = v84;
  sub_23807121C(v50, v84, &qword_27DEEA738, &qword_238157DE8);
  v52 = v82;
  sub_2380712E4(v51, v82, &qword_27DEEA738, &qword_238157DE8);
  v53 = v73;
  v54 = v74;
  *&v85 = v74;
  *(&v85 + 1) = v73;
  v55 = v70;
  LOBYTE(v86) = v70;
  v57 = KeyPath;
  v56 = v72;
  *(&v86 + 1) = v72;
  *&v87 = KeyPath;
  *(&v87 + 1) = 2;
  LOBYTE(v88[0]) = 0;
  *(&v88[4] + 1) = *&v103[64];
  *(&v88[5] + 1) = *&v103[80];
  *(&v88[6] + 1) = *&v103[96];
  *(v88 + 1) = *v103;
  *(&v88[1] + 1) = *&v103[16];
  *(&v88[2] + 1) = *&v103[32];
  *(&v88[3] + 1) = *&v103[48];
  v88[7] = *&v103[111];
  v58 = v88[6];
  v59 = v83;
  v83[8] = v88[5];
  v59[9] = v58;
  v60 = v88[2];
  v59[4] = v88[1];
  v59[5] = v60;
  v61 = v88[4];
  v59[6] = v88[3];
  v59[7] = v61;
  v62 = v86;
  *v59 = v85;
  v59[1] = v62;
  v63 = v88[0];
  v59[2] = v87;
  v59[3] = v63;
  v59[10] = v88[7];
  v64 = v59;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA740, &qword_238157DF0);
  sub_2380712E4(v52, v64 + *(v65 + 48), &qword_27DEEA738, &qword_238157DE8);
  sub_2380712E4(&v85, v89, &qword_27DEEA748, &qword_238157DF8);
  sub_238071284(v84, &qword_27DEEA738, &qword_238157DE8);
  sub_238071284(v52, &qword_27DEEA738, &qword_238157DE8);
  v99 = *&v103[64];
  v100 = *&v103[80];
  *v101 = *&v103[96];
  v95 = *v103;
  v96 = *&v103[16];
  v97 = *&v103[32];
  v89[0] = v54;
  v89[1] = v53;
  v90 = v55;
  v91 = v56;
  v92 = v57;
  v93 = 2;
  v94 = 0;
  v98 = *&v103[48];
  *&v101[15] = *&v103[111];
  v102 = 0;
  return sub_238071284(v89, &qword_27DEEA748, &qword_238157DF8);
}

uint64_t sub_23806D3C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v84 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA4D8, &qword_238157B58);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v79 = &v77 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA700, &qword_238157DB0);
  v11 = *(v10 - 8);
  v81 = v10 - 8;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v80 = &v77 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA708, &qword_238157DB8);
  v15 = *(v14 - 8);
  v83 = v14 - 8;
  v16 = *(v15 + 64);
  v17 = MEMORY[0x28223BE20](v14 - 8);
  v87 = &v77 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v82 = &v77 - v20;
  MEMORY[0x28223BE20](v19);
  v85 = &v77 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA728, &qword_238157DD8);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x28223BE20](v22 - 8);
  v25 = &v77 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA730, &qword_238157DE0);
  v27 = v26 - 8;
  v28 = *(*(v26 - 8) + 64);
  MEMORY[0x28223BE20](v26);
  v30 = &v77 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA738, &qword_238157DE8);
  v32 = v31 - 8;
  v33 = *(*(v31 - 8) + 64);
  v34 = MEMORY[0x28223BE20](v31);
  v86 = &v77 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v77 - v37;
  MEMORY[0x28223BE20](v36);
  v88 = &v77 - v39;
  sub_23806A458(a2, a3, v25);
  v77 = *(a1 + *(type metadata accessor for _DDNodeView(0) + 24));
  v40 = v77;
  v41 = qword_238157EB8[v77];
  sub_2381548DC();
  sub_238153A8C();
  sub_23807121C(v25, v30, &qword_27DEEA728, &qword_238157DD8);
  v42 = &v30[*(v27 + 44)];
  v43 = *&v115[25];
  *(v42 + 4) = *&v115[23];
  *(v42 + 5) = v43;
  *(v42 + 6) = *&v115[27];
  v44 = *&v115[17];
  *v42 = *&v115[15];
  *(v42 + 1) = v44;
  v45 = *&v115[21];
  *(v42 + 2) = *&v115[19];
  *(v42 + 3) = v45;
  v46 = qword_238157EE0[v40];
  sub_2381548DC();
  sub_238153A8C();
  sub_23807121C(v30, v38, &qword_27DEEA730, &qword_238157DE0);
  v47 = &v38[*(v32 + 44)];
  v48 = *&v115[39];
  *(v47 + 4) = *&v115[37];
  *(v47 + 5) = v48;
  *(v47 + 6) = *&v115[41];
  v49 = *&v115[31];
  *v47 = *&v115[29];
  *(v47 + 1) = v49;
  v50 = *&v115[35];
  *(v47 + 2) = *&v115[33];
  *(v47 + 3) = v50;
  sub_23807121C(v38, v88, &qword_27DEEA738, &qword_238157DE8);
  v51 = v79;
  sub_23806B1D8(v79);
  sub_2381548DC();
  sub_238153A8C();
  v52 = v51;
  v53 = v80;
  sub_23807121C(v52, v80, &qword_27DEEA4D8, &qword_238157B58);
  v54 = (v53 + *(v81 + 44));
  v55 = *&v115[53];
  v54[4] = *&v115[51];
  v54[5] = v55;
  v54[6] = *&v115[55];
  v56 = *&v115[45];
  *v54 = *&v115[43];
  v54[1] = v56;
  v57 = *&v115[49];
  v54[2] = *&v115[47];
  v54[3] = v57;
  sub_2381548DC();
  sub_238153A8C();
  v58 = v53;
  v59 = v82;
  sub_23807121C(v58, v82, &qword_27DEEA700, &qword_238157DB0);
  v60 = (v59 + *(v83 + 44));
  v61 = *&v115[67];
  v60[4] = *&v115[65];
  v60[5] = v61;
  v60[6] = *&v115[69];
  v62 = *&v115[59];
  *v60 = *&v115[57];
  v60[1] = v62;
  v63 = *&v115[63];
  v60[2] = *&v115[61];
  v60[3] = v63;
  v64 = v85;
  sub_23807121C(v59, v85, &qword_27DEEA708, &qword_238157DB8);
  sub_23806AF84(v113);
  v82 = v113[1];
  v83 = v113[0];
  v80 = v113[3];
  v81 = v113[2];
  v79 = v113[4];
  v78 = v114;
  if (v77 <= 1)
  {
    if (v77)
    {
      v65 = v84;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  if (v77 == 2)
  {
LABEL_5:
    v65 = v84;
    goto LABEL_7;
  }

  v65 = v84;
LABEL_7:
  sub_2381548DC();
  sub_238153A8C();
  *(v115 + 7) = *&v115[71];
  *(&v115[2] + 7) = *&v115[73];
  *(&v115[4] + 7) = *&v115[75];
  *(&v115[6] + 7) = *&v115[77];
  *(&v115[12] + 7) = v116;
  *(&v115[10] + 7) = *&v115[81];
  *(&v115[8] + 7) = *&v115[79];
  v108 = *&v115[4];
  v109 = *&v115[6];
  v106 = *v115;
  v107 = *&v115[2];
  *&v112[15] = *(&v116 + 1);
  v111 = *&v115[10];
  *v112 = *&v115[12];
  v110 = *&v115[8];
  sub_2381548DC();
  sub_238153A8C();
  v66 = v86;
  sub_2380712E4(v88, v86, &qword_27DEEA738, &qword_238157DE8);
  v67 = v87;
  sub_2380712E4(v64, v87, &qword_27DEEA708, &qword_238157DB8);
  sub_2380712E4(v66, v65, &qword_27DEEA738, &qword_238157DE8);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA750, &qword_238157E00);
  sub_2380712E4(v67, v65 + *(v68 + 48), &qword_27DEEA708, &qword_238157DB8);
  v69 = *(v68 + 64);
  *(&v96[6] + 9) = v110;
  *(&v96[7] + 9) = v111;
  *(&v96[8] + 9) = *v112;
  *(&v96[3] + 9) = v107;
  *(&v96[4] + 9) = v108;
  v71 = v82;
  v70 = v83;
  *&v96[0] = v83;
  *(&v96[0] + 1) = v82;
  v73 = v80;
  v72 = v81;
  *&v96[1] = v81;
  *(&v96[1] + 1) = v80;
  v74 = v79;
  *&v96[2] = v79;
  v75 = v78;
  BYTE8(v96[2]) = v78;
  *(&v96[9] + 1) = *&v112[15];
  *(&v96[5] + 9) = v109;
  *(&v96[2] + 9) = v106;
  v96[14] = v93;
  v96[15] = v94;
  v96[16] = v95;
  v96[10] = v89;
  v96[11] = v90;
  v96[12] = v91;
  v96[13] = v92;
  memcpy((v65 + v69), v96, 0x110uLL);
  sub_2380712E4(v96, v97, &qword_27DEEA758, &qword_238157E08);
  sub_238071284(v85, &qword_27DEEA708, &qword_238157DB8);
  sub_238071284(v88, &qword_27DEEA738, &qword_238157DE8);
  v97[0] = v70;
  v97[1] = v71;
  v97[2] = v72;
  v97[3] = v73;
  v97[4] = v74;
  v98 = v75;
  v103 = v110;
  v104 = v111;
  *v105 = *v112;
  *&v105[15] = *&v112[15];
  v99 = v106;
  v100 = v107;
  v101 = v108;
  v102 = v109;
  *&v105[87] = v93;
  *&v105[103] = v94;
  *&v105[119] = v95;
  *&v105[23] = v89;
  *&v105[39] = v90;
  *&v105[55] = v91;
  *&v105[71] = v92;
  sub_238071284(v97, &qword_27DEEA758, &qword_238157E08);
  sub_238071284(v87, &qword_27DEEA708, &qword_238157DB8);
  return sub_238071284(v86, &qword_27DEEA738, &qword_238157DE8);
}

uint64_t sub_23806DD54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a1;
  v54 = a2;
  v3 = sub_238153A7C();
  v4 = v3 - 8;
  v5 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA488, &qword_238157B08);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v52 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA490, &unk_238157B10);
  v12 = *(*(v52 - 8) + 64);
  MEMORY[0x28223BE20](v52);
  v14 = &v52 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA3F8, &qword_238157A70);
  v16 = *(*(v15 - 8) + 64);
  MEMORY[0x28223BE20](v15);
  v18 = &v52 - v17;
  v19 = *(v4 + 28);
  v20 = *MEMORY[0x277CE0118];
  v21 = sub_238153DDC();
  (*(*(v21 - 8) + 104))(&v7[v19], v20, v21);
  __asm { FMOV            V0.2D, #8.0 }

  *v7 = _Q0;
  v27 = (v2 + *(type metadata accessor for _DDNodeView(0) + 40));
  v28 = *v27;
  v29 = *(v27 + 1);
  v56 = *v27;
  v57 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  sub_23815470C();
  if (v55 == 1)
  {
    v30 = [objc_opt_self() secondarySystemFillColor];
    v31 = sub_23815465C();
  }

  else
  {
    v31 = sub_2381545EC();
  }

  v32 = v31;
  sub_238070370(v7, v11, MEMORY[0x277CDFC08]);
  *&v11[*(v8 + 52)] = v32;
  *&v11[*(v8 + 56)] = 256;
  LOBYTE(v32) = sub_2381540FC();
  sub_23815377C();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  sub_23807121C(v11, v14, &qword_27DEEA488, &qword_238157B08);
  v41 = &v14[*(v52 + 36)];
  *v41 = v32;
  *(v41 + 1) = v34;
  *(v41 + 2) = v36;
  *(v41 + 3) = v38;
  *(v41 + 4) = v40;
  v41[40] = 0;
  v42 = sub_2381548DC();
  v44 = v43;
  v45 = &v18[*(v15 + 36)];
  sub_23807121C(v14, v45, &qword_27DEEA490, &unk_238157B10);
  v46 = (v45 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA448, &qword_238157A98) + 36));
  *v46 = v42;
  v46[1] = v44;
  sub_2380712E4(v53, v18, &qword_27DEEA408, &qword_238157A78);
  v47 = sub_23815496C();
  v56 = v28;
  v57 = v29;
  sub_23815470C();
  v48 = v55;
  v49 = v54;
  sub_23807121C(v18, v54, &qword_27DEEA3F8, &qword_238157A70);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA3E8, &qword_238157A68);
  v51 = v49 + *(result + 36);
  *v51 = v47;
  *(v51 + 8) = v48;
  return result;
}

uint64_t sub_23806E12C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v106 = a2;
  v107 = a3;
  v105 = a1;
  v112 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA408, &qword_238157A78);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v84 = &v83 - v8;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA3E8, &qword_238157A68);
  v9 = *(*(v111 - 8) + 64);
  MEMORY[0x28223BE20](v111);
  v85 = &v83 - v10;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA458, &qword_238157AA8);
  v11 = *(*(v102 - 8) + 64);
  MEMORY[0x28223BE20](v102);
  v104 = &v83 - v12;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA3B0, &qword_238157A50);
  v13 = *(*(v103 - 8) + 64);
  MEMORY[0x28223BE20](v103);
  v86 = &v83 - v14;
  v91 = sub_238152F3C();
  v90 = *(v91 - 8);
  v15 = *(v90 + 64);
  MEMORY[0x28223BE20](v91);
  v17 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = sub_238153A6C();
  v89 = *(v101 - 8);
  v18 = *(v89 + 64);
  MEMORY[0x28223BE20](v101);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for _DDNodeView(0);
  v87 = *(v21 - 8);
  v22 = *(v87 + 64);
  MEMORY[0x28223BE20](v21);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA3B8, &qword_238157A58);
  v88 = *(v92 - 8);
  v23 = *(v88 + 64);
  MEMORY[0x28223BE20](v92);
  v25 = &v83 - v24;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA460, &unk_238157AB0);
  v96 = *(v97 - 8);
  v26 = *(v96 + 64);
  MEMORY[0x28223BE20](v97);
  v113 = &v83 - v27;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA3A0, &qword_238157A48);
  v28 = *(*(v98 - 8) + 64);
  v29 = MEMORY[0x28223BE20](v98);
  v93 = &v83 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v95 = &v83 - v31;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA390, &qword_238157A40);
  v32 = *(*(v108 - 8) + 64);
  v33 = MEMORY[0x28223BE20](v108);
  v100 = &v83 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v94 = &v83 - v36;
  MEMORY[0x28223BE20](v35);
  v99 = &v83 - v37;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA378, &qword_238157A38);
  v38 = *(*(v110 - 8) + 64);
  MEMORY[0x28223BE20](v110);
  v109 = &v83 - v39;
  v40 = type metadata accessor for _DDNodeDecorationCombination(0);
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40);
  v43 = (&v83 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0));
  v44 = *(v5 + *(type metadata accessor for _DDNodeViewModel() + 24));
  v45 = *(v44 + 16);
  if (v45 == 1)
  {
    v46 = *(type metadata accessor for _DDNodeDecoration(0) - 8);
    sub_238070308(v44 + ((*(v46 + 80) + 32) & ~*(v46 + 80)), v43, type metadata accessor for _DDNodeDecoration);
  }

  else if (v45)
  {
    *v43 = v44;
    swift_storeEnumTagMultiPayload();

    goto LABEL_7;
  }

  swift_storeEnumTagMultiPayload();
LABEL_7:
  v47 = sub_238067C2C();
  sub_238071150(v43, type metadata accessor for _DDNodeDecorationCombination);
  if (*(v5 + *(v21 + 24)) == 2 && (v47 > 0xFFu) | (v47 ^ 1) & 1 && *(v5 + *(v21 + 28)) != 1)
  {
    v79 = v84;
    sub_23806B830(v105, v106, v107, v84);
    v80 = v85;
    sub_23806DD54(v79, v85);
    sub_238071284(v79, &qword_27DEEA408, &qword_238157A78);
    sub_23806F5A4();
    sub_23806F994();
    v75 = v109;
    sub_238134E18(v80, v108, v111);
    v77 = &qword_27DEEA3E8;
    v78 = &qword_238157A68;
    v76 = v80;
  }

  else
  {
    sub_238070308(v5, &v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDNodeView);
    v48 = (*(v87 + 80) + 16) & ~*(v87 + 80);
    v49 = swift_allocObject();
    v50 = sub_238070370(&v83 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v49 + v48, type metadata accessor for _DDNodeView);
    MEMORY[0x28223BE20](v50);
    v51 = v105;
    v52 = v106;
    *(&v83 - 4) = v5;
    *(&v83 - 3) = v51;
    v53 = v107;
    *(&v83 - 2) = v52;
    *(&v83 - 1) = v53;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA478, &qword_238157AD0);
    sub_238070150(&qword_27DEEA480, &qword_27DEEA478, &qword_238157AD0, sub_23806FB04);
    sub_23815474C();
    sub_238153A5C();
    v54 = sub_2380711D4(&qword_27DEEA3C0, &qword_27DEEA3B8, &qword_238157A58);
    v55 = sub_23806F94C(&qword_27DEEA3C8, MEMORY[0x277CDDB18]);
    v56 = v113;
    v57 = v92;
    v58 = v101;
    sub_2381543DC();
    v59 = v20;
    v60 = v57;
    (*(v89 + 8))(v59, v58);
    (*(v88 + 8))(v25, v57);
    sub_238152F2C();
    LOBYTE(v57) = sub_238152EEC();
    (*(v90 + 8))(v17, v91);
    if (v57)
    {
      v61 = v86;
      v62 = &v86[*(v103 + 36)];
      v63 = v62 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA3D8, &qword_238157A60) + 28);
      sub_238153A9C();
      *v62 = swift_getKeyPath();
      v64 = v96;
      v65 = v97;
      (*(v96 + 16))(v61, v113, v97);
      sub_2380712E4(v61, v104, &qword_27DEEA3B0, &qword_238157A50);
      swift_storeEnumTagMultiPayload();
      sub_23806F7D4();
      v114 = v60;
      v115 = v58;
      v116 = v54;
      v117 = v55;
      swift_getOpaqueTypeConformance2();
      v66 = v93;
      v56 = v113;
      v67 = v64;
      sub_238153ECC();
      sub_238071284(v61, &qword_27DEEA3B0, &qword_238157A50);
    }

    else
    {
      v67 = v96;
      v65 = v97;
      (*(v96 + 16))(v104, v56, v97);
      swift_storeEnumTagMultiPayload();
      sub_23806F7D4();
      v114 = v60;
      v115 = v58;
      v116 = v54;
      v117 = v55;
      swift_getOpaqueTypeConformance2();
      v66 = v93;
      sub_238153ECC();
    }

    (*(v67 + 8))(v56, v65);
    v68 = sub_23806F688();
    v69 = v95;
    sub_2381507A4(v66, v98, v68);
    sub_238071284(v66, &qword_27DEEA3A0, &qword_238157A48);
    v70 = v94;
    sub_2381544AC();
    sub_238071284(v69, &qword_27DEEA3A0, &qword_238157A48);
    v71 = sub_23806F5A4();
    v72 = v99;
    v73 = v108;
    sub_2381507A4(v70, v108, v71);
    sub_238071284(v70, &qword_27DEEA390, &qword_238157A40);
    v74 = v100;
    sub_2381507A4(v72, v73, v71);
    sub_23806F994();
    v75 = v109;
    sub_238134D20(v74, v73);
    sub_238071284(v74, &qword_27DEEA390, &qword_238157A40);
    v76 = v72;
    v77 = &qword_27DEEA390;
    v78 = &qword_238157A40;
  }

  sub_238071284(v76, v77, v78);
  v81 = sub_238070150(&qword_27DEEA380, &qword_27DEEA378, &qword_238157A38, sub_23806F5A4);
  sub_2381507A4(v75, v110, v81);
  return sub_238071284(v75, &qword_27DEEA378, &qword_238157A38);
}

uint64_t sub_23806EE84(uint64_t a1)
{
  v2 = type metadata accessor for _DDNodeView(0);
  if (*(a1 + v2[6]) == 2 && *(a1 + v2[7]) != 1)
  {
    v6 = (a1 + v2[11]);
    v7 = *v6;
    v8 = *(v6 + 1);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
    sub_23815470C();
    sub_23815471C();
  }

  else
  {
    v3 = a1 + v2[5];
    v4 = *(v3 + 8);
    return (*v3)(MEMORY[0x277D84F90]);
  }
}

uint64_t sub_23806EF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v26[1] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA3E8, &qword_238157A68);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9);
  v12 = v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA760, &unk_238157E10);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x28223BE20](v13);
  v16 = v26 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA408, &qword_238157A78);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v20 = v26 - v19;
  v21 = type metadata accessor for _DDNodeView(0);
  if (*(a1 + *(v21 + 24)) == 2 && *(a1 + *(v21 + 28)) != 1)
  {
    sub_23806B830(a2, a3, a4, v20);
    sub_23806DD54(v20, v12);
    sub_238071284(v20, &qword_27DEEA408, &qword_238157A78);
    sub_2380712E4(v12, v16, &qword_27DEEA3E8, &qword_238157A68);
    swift_storeEnumTagMultiPayload();
    sub_23806FB04();
    sub_23806F994();
    sub_238153ECC();
    v22 = v12;
    v23 = &qword_27DEEA3E8;
    v24 = &qword_238157A68;
  }

  else
  {
    sub_23806B830(a2, a3, a4, v20);
    sub_2380712E4(v20, v16, &qword_27DEEA408, &qword_238157A78);
    swift_storeEnumTagMultiPayload();
    sub_23806FB04();
    sub_23806F994();
    sub_238153ECC();
    v22 = v20;
    v23 = &qword_27DEEA408;
    v24 = &qword_238157A78;
  }

  return sub_238071284(v22, v23, v24);
}

uint64_t sub_23806F210@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA378, &qword_238157A38);
  v1 = *(*(v31 - 8) + 64);
  v2 = MEMORY[0x28223BE20](v31);
  v29 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v30 = &v29 - v4;
  v5 = sub_2381537EC();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238153A2C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_238068770();
  sub_238068360(v14);
  sub_2380688CC(v9);
  v16 = sub_2380B0104(v14, v9, v15);
  v18 = v17;
  v20 = v19;
  (*(v6 + 8))(v9, v5);
  (*(v11 + 8))(v14, v10);
  if (v16)
  {

    v21 = v18;
    v22 = v20;
    v23 = v16;
  }

  else
  {
    [objc_allocWithZone(MEMORY[0x277D755B8]) init];
    v23 = sub_23815466C();
    v21 = 0;
    v22 = 0xE000000000000000;
  }

  v24 = v29;
  sub_23806E12C(v23, v21, v22, v29);
  sub_23806F564(v16);

  v25 = sub_238070150(&qword_27DEEA380, &qword_27DEEA378, &qword_238157A38, sub_23806F5A4);
  v27 = v30;
  v26 = v31;
  sub_2381507A4(v24, v31, v25);
  sub_238071284(v24, &qword_27DEEA378, &qword_238157A38);
  sub_2381507A4(v27, v26, v25);
  return sub_238071284(v27, &qword_27DEEA378, &qword_238157A38);
}

uint64_t sub_23806F564(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23806F5D4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23806F94C(&qword_27DEEAC80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23806F688()
{
  result = qword_27DEEA398;
  if (!qword_27DEEA398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA3A0, &qword_238157A48);
    sub_23806F7D4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA3B8, &qword_238157A58);
    sub_238153A6C();
    sub_2380711D4(&qword_27DEEA3C0, &qword_27DEEA3B8, &qword_238157A58);
    sub_23806F94C(&qword_27DEEA3C8, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA398);
  }

  return result;
}

unint64_t sub_23806F7D4()
{
  result = qword_27DEEA3A8;
  if (!qword_27DEEA3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA3B0, &qword_238157A50);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA3B8, &qword_238157A58);
    sub_238153A6C();
    sub_2380711D4(&qword_27DEEA3C0, &qword_27DEEA3B8, &qword_238157A58);
    sub_23806F94C(&qword_27DEEA3C8, MEMORY[0x277CDDB18]);
    swift_getOpaqueTypeConformance2();
    sub_2380711D4(&qword_27DEEA3D0, &qword_27DEEA3D8, &qword_238157A60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA3A8);
  }

  return result;
}

uint64_t sub_23806F94C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_23806F994()
{
  result = qword_27DEEA3E0;
  if (!qword_27DEEA3E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA3E8, &qword_238157A68);
    sub_23806FA4C();
    sub_2380711D4(&unk_27DEEAB50, &qword_27DEEA450, &qword_238157AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA3E0);
  }

  return result;
}

unint64_t sub_23806FA4C()
{
  result = qword_27DEEA3F0;
  if (!qword_27DEEA3F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA3F8, &qword_238157A70);
    sub_23806FB04();
    sub_2380711D4(&qword_27DEEA440, &qword_27DEEA448, &qword_238157A98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA3F0);
  }

  return result;
}

unint64_t sub_23806FB04()
{
  result = qword_27DEEA400;
  if (!qword_27DEEA400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA408, &qword_238157A78);
    sub_23806FBBC();
    sub_2380711D4(&qword_27DEEA430, &qword_27DEEA438, &qword_238157A90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA400);
  }

  return result;
}

unint64_t sub_23806FBBC()
{
  result = qword_27DEEA410;
  if (!qword_27DEEA410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA418, &qword_238157A80);
    sub_2380711D4(&qword_27DEEA420, &qword_27DEEA428, &qword_238157A88);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA410);
  }

  return result;
}

uint64_t sub_23806FC94(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23806FCCC()
{
  v1 = type metadata accessor for _DDNodeView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v33 = *(*(v1 - 1) + 64);
  v4 = v0 + v3;
  v5 = sub_2381527EC();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = type metadata accessor for _DDNodeViewModel();
  v7 = v0 + v3 + v6[5];
  sub_238070070(*v7, *(v7 + 8), *(v7 + 16), *(v7 + 24), *(v7 + 32));
  v8 = *(v0 + v3 + v6[6]);

  v9 = v6[7];
  v10 = sub_23815278C();
  v11 = *(*(v10 - 8) + 8);
  v11(v0 + v3 + v9, v10);
  v11(v0 + v3 + v6[8], v10);
  v12 = v6[9];
  v13 = sub_238152BAC();
  (*(*(v13 - 8) + 8))(v0 + v3 + v12, v13);
  v14 = *(v0 + v3 + v6[11]);

  v15 = *(v0 + v3 + v6[12]);

  v16 = *(v0 + v3 + v6[13] + 8);

  v17 = *(v0 + v3 + v1[5] + 8);

  MEMORY[0x2383EA980](v0 + v3 + v1[8]);
  v18 = (v0 + v3 + v1[9]);
  v19 = *v18;

  v20 = v18[1];

  v21 = *(v0 + v3 + v1[10] + 8);

  v22 = *(v0 + v3 + v1[11] + 8);

  v23 = v1[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA468, &qword_2381595D0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = sub_238153A2C();
    (*(*(v24 - 8) + 8))(v4 + v23, v24);
  }

  else
  {
    v25 = *(v4 + v23);
  }

  v26 = v1[13];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = sub_238153A0C();
    (*(*(v27 - 8) + 8))(v4 + v26, v27);
  }

  else
  {
    v28 = *(v4 + v26);
  }

  sub_2380700D8(*(v4 + v1[14]), *(v4 + v1[14] + 8));
  v29 = v1[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = sub_2381537EC();
    (*(*(v30 - 8) + 8))(v4 + v29, v30);
  }

  else
  {
    v31 = *(v4 + v29);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v33, v2 | 7);
}

uint64_t sub_238070070(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 1 < 5)
  {
  }

  if (!a5)
  {
  }

  return result;
}

uint64_t sub_2380700D8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_2380700E4()
{
  v1 = *(type metadata accessor for _DDNodeView(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_23806EE84(v2);
}

uint64_t sub_238070150(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    sub_23806F994();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2380701F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (*(*(a5(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

uint64_t sub_238070308(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_238070370(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2380703E0(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_238070430(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_238070430(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_238070440(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_238070490(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_238070490(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

unint64_t sub_2380704A0()
{
  result = qword_27DEEA8A0;
  if (!qword_27DEEA8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA8A0);
  }

  return result;
}

unint64_t sub_2380704F4()
{
  result = qword_27DEEA510;
  if (!qword_27DEEA510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA508, &qword_238157BB8);
    sub_2380711D4(&qword_27DEEA518, &qword_27DEEA520, &qword_238157BC0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA510);
  }

  return result;
}

unint64_t sub_2380705C4()
{
  result = qword_27DEEA530;
  if (!qword_27DEEA530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA528, &qword_238157C58);
    sub_238070650();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA530);
  }

  return result;
}

unint64_t sub_238070650()
{
  result = qword_27DEEA538;
  if (!qword_27DEEA538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA540, &qword_238157C60);
    sub_238070708();
    sub_2380711D4(&qword_27DEEA588, &qword_27DEEA590, &qword_238157C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA538);
  }

  return result;
}

unint64_t sub_238070708()
{
  result = qword_27DEEA548;
  if (!qword_27DEEA548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA550, &qword_238157C68);
    sub_2380707C0();
    sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA548);
  }

  return result;
}

unint64_t sub_2380707C0()
{
  result = qword_27DEEA558;
  if (!qword_27DEEA558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA560, &qword_238157C70);
    sub_238070878();
    sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA558);
  }

  return result;
}

unint64_t sub_238070878()
{
  result = qword_27DEEA568;
  if (!qword_27DEEA568)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA570, &qword_238157C78);
    sub_2380704F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA568);
  }

  return result;
}

unint64_t sub_238070904()
{
  result = qword_27DEEA598;
  if (!qword_27DEEA598)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA4F8, &qword_238157BA8);
    sub_23806F5D4(&qword_27DEEA5A0, &qword_27DEEA500, &qword_238157BB0, sub_2380705C4);
    sub_2380709BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA598);
  }

  return result;
}

unint64_t sub_2380709BC()
{
  result = qword_27DEEA5A8;
  if (!qword_27DEEA5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA5A8);
  }

  return result;
}

unint64_t sub_238070A74()
{
  result = qword_27DEEA5F8;
  if (!qword_27DEEA5F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA5D0, &qword_238157CB8);
    sub_238070B2C();
    sub_2380711D4(&qword_27DEEA630, &qword_27DEEA5F0, &qword_238157CD8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA5F8);
  }

  return result;
}

unint64_t sub_238070B2C()
{
  result = qword_27DEEA600;
  if (!qword_27DEEA600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA608, &qword_238157D10);
    sub_238070BE4();
    sub_2380711D4(&unk_27DEEAB30, &unk_27DEED150, &qword_238158400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA600);
  }

  return result;
}

unint64_t sub_238070BE4()
{
  result = qword_27DEEA610;
  if (!qword_27DEEA610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA618, &qword_238157D18);
    sub_238070C9C();
    sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA610);
  }

  return result;
}

unint64_t sub_238070C9C()
{
  result = qword_27DEEA620;
  if (!qword_27DEEA620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA628, &unk_238157D20);
    sub_2380711D4(&qword_27DEEA588, &qword_27DEEA590, &qword_238157C90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA620);
  }

  return result;
}

unint64_t sub_238070D54()
{
  result = qword_27DEEA638;
  if (!qword_27DEEA638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA5C8, &qword_238157CB0);
    sub_238070DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA638);
  }

  return result;
}

unint64_t sub_238070DE0()
{
  result = qword_27DEEA640;
  if (!qword_27DEEA640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA5E0, &qword_238157CC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA5D0, &qword_238157CB8);
    sub_238070A74();
    sub_2380704A0();
    swift_getOpaqueTypeConformance2();
    sub_23806F94C(&qword_27DEEAC80, MEMORY[0x277CDE470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA640);
  }

  return result;
}

unint64_t sub_238070EF4()
{
  result = qword_27DEEA648;
  if (!qword_27DEEA648)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA5B8, &qword_238157CA0);
    sub_238070F80();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA648);
  }

  return result;
}

unint64_t sub_238070F80()
{
  result = qword_27DEEA650;
  if (!qword_27DEEA650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA5E8, &qword_238157CD0);
    sub_238070D54();
    sub_238070DE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA650);
  }

  return result;
}

unint64_t sub_23807100C()
{
  result = qword_27DEEA668;
  if (!qword_27DEEA668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA660, &qword_238157D38);
    sub_238071098();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA668);
  }

  return result;
}

unint64_t sub_238071098()
{
  result = qword_27DEEA670;
  if (!qword_27DEEA670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA678, &qword_238157D40);
    sub_2380711D4(&qword_27DEEA680, &qword_27DEEA688, &qword_238157D48);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA670);
  }

  return result;
}

uint64_t sub_238071150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

double sub_2380711B0(_OWORD *a1)
{
  result = 0.0;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_2380711D4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_23807121C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_238071284(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2380712E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_23807139C()
{
  sub_238071410();
  if (v0 <= 0x3F)
  {
    sub_238071458();
    if (v1 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_238071410()
{
  if (!qword_27DEEA778)
  {
    v0 = type metadata accessor for _DDNodeDecoration(0);
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEA778);
    }
  }
}

void sub_238071458()
{
  if (!qword_27DEEA780)
  {
    sub_2380714D0(0, &qword_27DEEA788, type metadata accessor for _DDNodeDecoration, MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEA780);
    }
  }
}

void sub_2380714D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_238071578()
{
  v1 = sub_238153F1C();
  v2 = *(v1 - 8);
  v3 = v2[8];
  MEMORY[0x28223BE20](v1);
  v50 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA848, &qword_2381580D0);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v58 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v10 = &v47[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA850, &qword_2381580D8);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v49 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x28223BE20](v13);
  v56 = &v47[-v16];
  v17 = MEMORY[0x28223BE20](v15);
  v57 = &v47[-v18];
  v19 = MEMORY[0x28223BE20](v17);
  v60 = &v47[-v20];
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v47[-v22];
  MEMORY[0x28223BE20](v21);
  v25 = &v47[-v24];
  v55 = v0;
  sub_23814A2B0(&v47[-v24]);
  v26 = v2[13];
  v53 = *MEMORY[0x277CE0560];
  v52 = v26;
  v26(v23);
  v51 = v2[7];
  v51(v23, 0, 1, v1);
  v54 = v5;
  v27 = *(v5 + 48);
  sub_2380712E4(v25, v10, &qword_27DEEA850, &qword_2381580D8);
  sub_2380712E4(v23, &v10[v27], &qword_27DEEA850, &qword_2381580D8);
  v61 = v2;
  v28 = v2[6];
  if (v28(v10, 1, v1) == 1)
  {
    v59 = v28;
    sub_238071284(v23, &qword_27DEEA850, &qword_2381580D8);
    sub_238071284(v25, &qword_27DEEA850, &qword_2381580D8);
    if (v59(&v10[v27], 1, v1) == 1)
    {
      sub_238071284(v10, &qword_27DEEA850, &qword_2381580D8);
      goto LABEL_8;
    }

LABEL_6:
    v30 = v10;
LABEL_14:
    sub_238071284(v30, &qword_27DEEA848, &qword_2381580D0);
    goto LABEL_15;
  }

  v29 = v60;
  sub_2380712E4(v10, v60, &qword_27DEEA850, &qword_2381580D8);
  if (v28(&v10[v27], 1, v1) == 1)
  {
    sub_238071284(v23, &qword_27DEEA850, &qword_2381580D8);
    sub_238071284(v25, &qword_27DEEA850, &qword_2381580D8);
    (v61[1])(v29, v1);
    goto LABEL_6;
  }

  v59 = v28;
  v31 = &v10[v27];
  v32 = v50;
  (v61[4])(v50, v31, v1);
  sub_23807C874(&qword_27DEEA858, MEMORY[0x277CE0570]);
  v48 = sub_238154C7C();
  v33 = v61[1];
  v33(v32, v1);
  sub_238071284(v23, &qword_27DEEA850, &qword_2381580D8);
  sub_238071284(v25, &qword_27DEEA850, &qword_2381580D8);
  v33(v60, v1);
  sub_238071284(v10, &qword_27DEEA850, &qword_2381580D8);
  if ((v48 & 1) == 0)
  {
LABEL_15:
    v40 = 0;
    return v40 & 1;
  }

LABEL_8:
  v34 = v55 + *(type metadata accessor for _DDDevicePickerEducationView() + 20);
  v35 = v57;
  sub_23814A2B0(v57);
  v36 = v56;
  v52(v56, v53, v1);
  v51(v36, 0, 1, v1);
  v37 = *(v54 + 48);
  v38 = v58;
  sub_2380712E4(v35, v58, &qword_27DEEA850, &qword_2381580D8);
  sub_2380712E4(v36, &v38[v37], &qword_27DEEA850, &qword_2381580D8);
  v39 = v59;
  if (v59(v38, 1, v1) != 1)
  {
    v41 = v49;
    sub_2380712E4(v38, v49, &qword_27DEEA850, &qword_2381580D8);
    if (v39(&v38[v37], 1, v1) != 1)
    {
      v43 = v36;
      v44 = v61;
      v45 = v50;
      (v61[4])(v50, &v38[v37], v1);
      sub_23807C874(&qword_27DEEA858, MEMORY[0x277CE0570]);
      v40 = sub_238154C7C();
      v46 = v44[1];
      v46(v45, v1);
      sub_238071284(v43, &qword_27DEEA850, &qword_2381580D8);
      sub_238071284(v35, &qword_27DEEA850, &qword_2381580D8);
      v46(v41, v1);
      sub_238071284(v38, &qword_27DEEA850, &qword_2381580D8);
      return v40 & 1;
    }

    sub_238071284(v36, &qword_27DEEA850, &qword_2381580D8);
    sub_238071284(v35, &qword_27DEEA850, &qword_2381580D8);
    (v61[1])(v41, v1);
    goto LABEL_13;
  }

  sub_238071284(v36, &qword_27DEEA850, &qword_2381580D8);
  sub_238071284(v35, &qword_27DEEA850, &qword_2381580D8);
  if (v39(&v38[v37], 1, v1) != 1)
  {
LABEL_13:
    v30 = v38;
    goto LABEL_14;
  }

  sub_238071284(v38, &qword_27DEEA850, &qword_2381580D8);
  v40 = 1;
  return v40 & 1;
}

uint64_t sub_238071D48()
{
  v1 = v0;
  if (sub_238071578())
  {
    return 0;
  }

  sub_23807A3F8(0, &qword_27DEEA840, 0x277CBEBD0);
  v2 = MEMORY[0x2383E9740]();
  v3 = sub_23815338C();

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = MEMORY[0x2383E9740]();
  v5 = sub_23815335C();

  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = MEMORY[0x2383E9740]();
  v7 = sub_23815336C();

  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(v1 + *(type metadata accessor for _DDDevicePickerEducationView() + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  return v10;
}

uint64_t sub_238071E54()
{
  v1 = *(v0 + *(type metadata accessor for _DDDevicePickerEducationView() + 36) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v21 == 1)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    sub_2380704A0();
    v9 = sub_23815438C();
    v11 = v10;
    v13 = v12;
    sub_23815421C();
    v14 = sub_2381542FC();
    v16 = v15;
    v18 = v17;
    sub_238070490(v9, v11, v13 & 1);

    sub_23815461C();
    v19 = sub_23815431C();
  }

  else
  {
    if ((sub_238071D48() & 1) == 0)
    {
      return 0;
    }

    sub_23807CB28(58);
    sub_2380704A0();
    v2 = sub_23815438C();
    v4 = v3;
    v6 = v5;
    sub_23815421C();
    v14 = sub_2381542FC();
    v16 = v7;
    v18 = v8;
    sub_238070490(v2, v4, v6 & 1);

    sub_238153F0C();
    v19 = sub_23815432C();
  }

  sub_238070490(v14, v16, v18 & 1);

  return v19;
}

uint64_t sub_23807211C()
{
  v1 = type metadata accessor for _DDDevicePickerEducationView();
  v2 = *(v0 + *(v1 + 36) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v4)
  {
    return 62;
  }

  if ((sub_238071D48() & 1) == 0)
  {
    return 60;
  }

  if (*(v0 + *(v1 + 48)))
  {
    return 59;
  }

  return 61;
}

uint64_t sub_2380721E4(uint64_t a1)
{
  v1 = *(a1 + *(type metadata accessor for _DDDevicePickerEducationView() + 36) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v3 == 1)
  {
    return sub_238103664();
  }

  else
  {
    return sub_238103568();
  }
}

uint64_t sub_238072284@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for _DDDevicePickerEducationView() + 36) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v28)
  {
    v4 = 0;
  }

  else
  {
    v4 = 56;
  }

  sub_23807CB28(v4);
  sub_2380704A0();
  v5 = sub_23815438C();
  v25 = v6;
  v26 = v5;
  v8 = v7;
  v10 = v9;
  KeyPath = swift_getKeyPath();
  v12 = sub_2381545BC();
  v13 = swift_getKeyPath();
  v14 = v8 & 1;
  v15 = sub_2381540FC();
  sub_23815377C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v26;
  *(a2 + 8) = v25;
  *(a2 + 16) = v14;
  *(a2 + 24) = v10;
  *(a2 + 32) = KeyPath;
  *(a2 + 40) = 0;
  *(a2 + 48) = v13;
  *(a2 + 56) = v12;
  *(a2 + 64) = v15;
  *(a2 + 72) = v17;
  *(a2 + 80) = v19;
  *(a2 + 88) = v21;
  *(a2 + 96) = v23;
  *(a2 + 104) = 0;
  *(a2 + 112) = 0;
  *(a2 + 120) = v27;
  return result;
}

uint64_t sub_238072444@<X0>(uint64_t a1@<X8>)
{
  v3 = 0xD000000000000014;
  v4 = sub_2381537EC();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v32 - v10;
  v12 = v1 + *(type metadata accessor for _DDDevicePickerEducationView() + 28);
  sub_23814A088(v11);
  (*(v5 + 104))(v9, *MEMORY[0x277CDF3C0], v4);
  LOBYTE(v12) = sub_2381537DC();
  v13 = *(v5 + 8);
  v13(v9, v4);
  v13(v11, v4);
  if (v12)
  {
    v14 = &v34;
    if (qword_27DEEA0E0 != -1)
    {
      swift_once();
    }

    v15 = qword_27DEF3270;
    v16 = "NFC-interaction-light";
    v17 = &v33;
  }

  else
  {
    v14 = v36;
    if (qword_27DEEA0E0 != -1)
    {
      swift_once();
    }

    v15 = qword_27DEF3270;
    v16 = "DeviceDiscoveryUI.Coordinator";
    v3 = 0xD000000000000015;
    v17 = &v35;
  }

  v18 = v16 | 0x8000000000000000;
  v19 = v15;
  sub_2381548DC();
  sub_2381538EC();
  v20 = v37;
  *v14 = *&v36[49];
  *(v14 + 1) = v20;
  *(v14 + 2) = v38;
  sub_2381549DC();
  v22 = v21;
  v24 = v23;
  v25 = sub_23815414C();
  result = sub_23815377C();
  *a1 = v3;
  *(a1 + 8) = v18;
  *(a1 + 16) = v19;
  *(a1 + 24) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  v27 = *(v17 + 1);
  *(a1 + 65) = *v17;
  *(a1 + 48) = sub_2380B5B4C;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 81) = v27;
  *(a1 + 97) = *(v17 + 2);
  *(a1 + 112) = *(v17 + 47);
  *(a1 + 120) = 0x400921FB54442D18;
  *(a1 + 128) = v22;
  *(a1 + 136) = v24;
  *(a1 + 144) = v25;
  *(a1 + 152) = v28;
  *(a1 + 160) = v29;
  *(a1 + 168) = v30;
  *(a1 + 176) = v31;
  *(a1 + 184) = 0;
  return result;
}

uint64_t sub_238072724@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v55 = a2;
  v3 = type metadata accessor for _DDDevicePickerEducationView();
  v53 = *(v3 - 8);
  v4 = *(v53 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB60, &qword_238158408);
  v6 = *(*(v5 - 8) + 64);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v48 - v10;
  v12 = sub_238071E54();
  v58 = v14;
  v59 = v13;
  v54 = v15;
  v16 = v14 & 1;
  if (v15)
  {
    v17 = v12;
  }

  else
  {
    v17 = 0;
  }

  v60 = v12;
  v61 = v17;
  if (v15)
  {
    v18 = v13;
  }

  else
  {
    v18 = 0;
  }

  if (!v15)
  {
    v16 = 0;
  }

  v56 = v16;
  v57 = v18;
  if (v15)
  {
    v19 = 256;
  }

  else
  {
    v19 = 0;
  }

  v62 = v19;
  sub_23807BD3C(v12, v13, v14, v15);
  v20 = sub_23807211C();
  v63 = sub_23807CB28(v20);
  v64 = v21;
  sub_2380704A0();
  v22 = sub_23815438C();
  v24 = v23;
  v26 = v25;
  LODWORD(v63) = sub_238153F0C();
  v27 = sub_23815432C();
  v49 = v28;
  v50 = v27;
  v51 = v29;
  v52 = v30;
  sub_238070490(v22, v24, v26 & 1);

  sub_23807AC84(a1, &v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerEducationView);
  v31 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v32 = swift_allocObject();
  v33 = sub_23807ACEC(&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v32 + v31, type metadata accessor for _DDDevicePickerEducationView);
  MEMORY[0x28223BE20](v33);
  *(&v48 - 2) = a1;
  *(&v48 - 1) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAF0, &qword_2381583E0);
  sub_23807B700();
  sub_23815474C();
  v34 = &v11[*(v5 + 36)];
  v48 = v11;
  v35 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB68, &qword_238158410) + 28);
  v36 = *MEMORY[0x277CDF438];
  v37 = sub_2381537FC();
  (*(*(v37 - 8) + 104))(v34 + v35, v36, v37);
  *v34 = swift_getKeyPath();
  v38 = v9;
  sub_2380712E4(v11, v9, &qword_27DEEAB60, &qword_238158408);
  v39 = v61;
  v41 = v55;
  v40 = v56;
  v42 = v57;
  *v55 = v61;
  v41[1] = v42;
  v43 = v54;
  v41[2] = v40;
  v41[3] = v43;
  *(v41 + 16) = v62;
  v44 = v49;
  v45 = v50;
  v41[5] = v50;
  v41[6] = v44;
  LODWORD(v53) = v51 & 1;
  *(v41 + 56) = v51 & 1;
  v41[8] = v52;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAC40, &qword_2381584F8);
  sub_2380712E4(v38, v41 + *(v46 + 64), &qword_27DEEAB60, &qword_238158408);
  sub_23807BD3C(v39, v42, v40, v43);
  LOBYTE(v39) = v53;
  sub_238070430(v45, v44, v53);

  sub_23807BE0C(v60, v59, v58, v43);
  sub_238071284(v48, &qword_27DEEAB60, &qword_238158408);
  sub_238071284(v38, &qword_27DEEAB60, &qword_238158408);
  sub_238070490(v45, v44, v39);

  return sub_23807BE0C(v61, v42, v40, v43);
}

uint64_t sub_238072BB0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_238153A0C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v31[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAB8, &qword_238158370);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v31[-v11];
  sub_2381533AC();
  v13 = MEMORY[0x2383E79D0]();
  sub_23815337C();

  v14 = MEMORY[0x2383E79D0]();
  sub_23815337C();

  *v12 = sub_238153D1C();
  *(v12 + 1) = 0x4024000000000000;
  v12[16] = 0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB88, &qword_238158490);
  sub_238072FF4(v2, &v12[*(v15 + 44)]);
  v16 = type metadata accessor for _DDDevicePickerEducationView();
  v17 = v2 + *(v16 + 24);
  sub_23814A060(v8);
  LOBYTE(v17) = sub_2381539FC();
  (*(v5 + 8))(v8, v4);
  if (v17)
  {
    v18 = sub_23815489C();
  }

  else
  {
    v18 = sub_2381548FC();
  }

  v20 = v18;
  v21 = v19;
  v22 = *(v2 + *(v16 + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if ((v44 & 1) != 0 || (sub_238071D48() & 1) == 0)
  {
    sub_23807BA08(&v68);
  }

  else
  {
    sub_238072444(&v32);
    v52 = v40;
    v53 = v41;
    v54[0] = v42[0];
    *(v54 + 9) = *(v42 + 9);
    v48 = v36;
    v49 = v37;
    v50 = v38;
    v51 = v39;
    v44 = v32;
    v45 = v33;
    v46 = v34;
    v47 = v35;
    CGSizeMake(&v44);
    v76 = v52;
    v77 = v53;
    v78[0] = v54[0];
    *(v78 + 9) = *(v54 + 9);
    v72 = v48;
    v73 = v49;
    v74 = v50;
    v75 = v51;
    v68 = v44;
    v69 = v45;
    v70 = v46;
    v71 = v47;
  }

  v65 = v76;
  v66 = v77;
  v67[0] = v78[0];
  *(v67 + 9) = *(v78 + 9);
  v61 = v72;
  v62 = v73;
  v63 = v74;
  v64 = v75;
  v57 = v68;
  v58 = v69;
  v59 = v70;
  v60 = v71;
  v40 = v76;
  v41 = v77;
  v42[0] = v67[0];
  v42[1] = v67[1];
  v36 = v72;
  v37 = v73;
  v38 = v74;
  v39 = v75;
  v32 = v68;
  v33 = v69;
  v34 = v70;
  v35 = v71;
  *&v43 = v20;
  *(&v43 + 1) = v21;
  sub_23807BA2C(v12, a1);
  v23 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA978, &qword_2381581E0) + 36));
  v24 = v42[1];
  v23[10] = v42[0];
  v23[11] = v24;
  v23[12] = v43;
  v25 = v39;
  v23[6] = v38;
  v23[7] = v25;
  v26 = v41;
  v23[8] = v40;
  v23[9] = v26;
  v27 = v35;
  v23[2] = v34;
  v23[3] = v27;
  v28 = v37;
  v23[4] = v36;
  v23[5] = v28;
  v29 = v33;
  *v23 = v32;
  v23[1] = v29;
  v52 = v65;
  v53 = v66;
  v54[0] = v67[0];
  v54[1] = v67[1];
  v48 = v61;
  v49 = v62;
  v50 = v63;
  v51 = v64;
  v44 = v57;
  v45 = v58;
  v46 = v59;
  v47 = v60;
  v55 = v20;
  v56 = v21;
  sub_2380712E4(&v32, v31, &qword_27DEEAAC8, &qword_238158378);
  return sub_238071284(&v44, &qword_27DEEAAC8, &qword_238158378);
}

uint64_t sub_238072FF4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB90, &qword_238158498);
  v4 = *(*(v88 - 8) + 64);
  MEMORY[0x28223BE20](v88);
  v86 = (&v80 - v5);
  v6 = type metadata accessor for _DDDevicePickerEducationView();
  v82 = *(v6 - 8);
  v7 = *(v82 + 64);
  MEMORY[0x28223BE20](v6);
  v83 = v8;
  v81 = &v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE0, &unk_2381583D0);
  v9 = *(*(v89 - 8) + 64);
  MEMORY[0x28223BE20](v89);
  v84 = &v80 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB98, &qword_2381584A0);
  v12 = *(*(v11 - 8) + 64);
  v13 = MEMORY[0x28223BE20](v11 - 8);
  v91 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v90 = &v80 - v15;
  v16 = sub_23815426C();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v20 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_238153DFC();
  LOBYTE(v124) = 1;
  sub_238073AC8(a1, &v103);
  v132 = *&v104[16];
  v133 = *&v104[32];
  v134 = *&v104[48];
  v135 = v104[64];
  v130 = v103;
  v131 = *v104;
  v137 = v104[64];
  v136[2] = *&v104[16];
  v136[3] = *&v104[32];
  v136[4] = *&v104[48];
  v136[0] = v103;
  v136[1] = *v104;
  sub_2380712E4(&v130, v97, &qword_27DEEABA0, &qword_2381584A8);
  sub_238071284(v136, &qword_27DEEABA0, &qword_2381584A8);
  *&v118[39] = v132;
  *&v118[55] = v133;
  *&v118[71] = v134;
  v118[87] = v135;
  *&v118[7] = v130;
  *&v118[23] = v131;
  v93 = v124;
  sub_23815417C();
  (*(v17 + 104))(v20, *MEMORY[0x277CE0A10], v16);
  *(&v92 + 1) = sub_23815429C();

  (*(v17 + 8))(v20, v16);
  *&v92 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_238157F10;
  v22 = sub_23815412C();
  *(v21 + 32) = v22;
  v23 = sub_23815410C();
  *(v21 + 33) = v23;
  v24 = sub_23815411C();
  *(v21 + 34) = v24;
  v25 = sub_23815413C();
  sub_23815413C();
  if (sub_23815413C() != v22)
  {
    v25 = sub_23815413C();
  }

  sub_23815413C();
  if (sub_23815413C() != v23)
  {
    v25 = sub_23815413C();
  }

  sub_23815413C();
  if (sub_23815413C() != v24)
  {
    v25 = sub_23815413C();
  }

  v87 = v25;
  sub_23815377C();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v120 = 0;
  v85 = sub_238153F0C();
  v34 = *(a1 + *(v6 + 32) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if ((v103 & 1) != 0 || (sub_238071D48() & 1) == 0)
  {
    v49 = v81;
    sub_23807AC84(a1, v81, type metadata accessor for _DDDevicePickerEducationView);
    v50 = (*(v82 + 80) + 16) & ~*(v82 + 80);
    v51 = swift_allocObject();
    v52 = sub_23807ACEC(v49, v51 + v50, type metadata accessor for _DDDevicePickerEducationView);
    MEMORY[0x28223BE20](v52);
    *(&v80 - 2) = a1;
    *(&v80 - 1) = 0x4010000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAF0, &qword_2381583E0);
    sub_23807B700();
    v53 = v84;
    sub_23815474C();
    v54 = (v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB60, &qword_238158408) + 36));
    v55 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB68, &qword_238158410) + 28);
    v56 = *MEMORY[0x277CDF438];
    v57 = sub_2381537FC();
    (*(*(v57 - 8) + 104))(v54 + v55, v56, v57);
    *v54 = swift_getKeyPath();
    LOBYTE(v56) = sub_23815414C();
    sub_23815377C();
    v59 = v58;
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v66 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB70, &qword_238158448) + 36);
    *v66 = v56;
    *(v66 + 8) = v59;
    *(v66 + 16) = v61;
    *(v66 + 24) = v63;
    *(v66 + 32) = v65;
    *(v66 + 40) = 0;
    *(v53 + *(v89 + 36)) = 0x3FF0000000000000;
    sub_2380712E4(v53, v86, &qword_27DEEAAE0, &unk_2381583D0);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEABA8, &qword_2381584B0);
    sub_23807BA9C();
    sub_23807B7E4(&qword_27DEEABF0, &qword_27DEEABA8, &qword_2381584B0, sub_23807BC64);
    v48 = v90;
    sub_238153ECC();
    sub_238071284(v53, &qword_27DEEAAE0, &unk_2381583D0);
  }

  else
  {
    sub_2381548DC();
    sub_2381538EC();
    v35 = v124;
    v36 = v126;
    v37 = v128;
    v38 = v129;
    LOBYTE(v103) = 1;
    LOBYTE(v97[0]) = v125;
    v96 = v127;
    v39 = sub_23815414C();
    sub_23815377C();
    v40 = v103;
    v41 = v97[0];
    v42 = v96;
    v95 = 0;
    v43 = v86;
    *v86 = 0;
    *(v43 + 8) = v40;
    v43[2] = v35;
    *(v43 + 24) = v41;
    v43[4] = v36;
    *(v43 + 40) = v42;
    v43[6] = v37;
    v43[7] = v38;
    *(v43 + 64) = v39;
    v43[9] = v44;
    v43[10] = v45;
    v43[11] = v46;
    v43[12] = v47;
    *(v43 + 104) = 0;
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEABA8, &qword_2381584B0);
    sub_23807BA9C();
    sub_23807B7E4(&qword_27DEEABF0, &qword_27DEEABA8, &qword_2381584B0, sub_23807BC64);
    v48 = v90;
    sub_238153ECC();
  }

  v67 = v91;
  sub_2380712E4(v48, v91, &qword_27DEEAB98, &qword_2381584A0);
  v97[0] = v94;
  v97[1] = 0;
  LOBYTE(v98[0]) = v93;
  *(&v98[2] + 1) = *&v118[32];
  *(&v98[3] + 1) = *&v118[48];
  *(&v98[4] + 1) = *&v118[64];
  *(&v98[5] + 1) = *&v118[80];
  *(v98 + 1) = *v118;
  *(&v98[1] + 1) = *&v118[16];
  HIDWORD(v98[5]) = *&v119[3];
  *(&v98[5] + 9) = *v119;
  v99 = v92;
  v68 = v87;
  LOBYTE(v100) = v87;
  DWORD1(v100) = *&v121[3];
  *(&v100 + 1) = *v121;
  *(&v100 + 1) = v27;
  *&v101 = v29;
  *(&v101 + 1) = v31;
  *&v102 = v33;
  BYTE8(v102) = 0;
  *(&v102 + 9) = v122;
  BYTE11(v102) = v123;
  v69 = v85;
  HIDWORD(v102) = v85;
  v70 = v98[0];
  *a2 = v94;
  *(a2 + 16) = v70;
  v71 = v98[1];
  v72 = v98[2];
  v73 = v98[4];
  *(a2 + 64) = v98[3];
  *(a2 + 80) = v73;
  *(a2 + 32) = v71;
  *(a2 + 48) = v72;
  v74 = v98[5];
  v75 = v99;
  v76 = v102;
  *(a2 + 144) = v101;
  *(a2 + 160) = v76;
  v77 = v100;
  *(a2 + 112) = v75;
  *(a2 + 128) = v77;
  *(a2 + 96) = v74;
  *(a2 + 176) = 0;
  *(a2 + 184) = 1;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAC08, &qword_2381584D0);
  sub_2380712E4(v67, a2 + *(v78 + 64), &qword_27DEEAB98, &qword_2381584A0);
  sub_2380712E4(v97, &v103, &qword_27DEEAC10, &qword_2381584D8);
  sub_238071284(v48, &qword_27DEEAB98, &qword_2381584A0);
  sub_238071284(v67, &qword_27DEEAB98, &qword_2381584A0);
  *&v104[33] = *&v118[32];
  *&v104[49] = *&v118[48];
  *&v104[65] = *&v118[64];
  *&v104[1] = *v118;
  v103 = v94;
  v104[0] = v93;
  v105 = *&v118[80];
  *&v104[17] = *&v118[16];
  *&v106[3] = *&v119[3];
  *v106 = *v119;
  v107 = v92;
  v108 = v68;
  *&v109[3] = *&v121[3];
  *v109 = *v121;
  v110 = v27;
  v111 = v29;
  v112 = v31;
  v113 = v33;
  v114 = 0;
  v115 = v122;
  v116 = v123;
  v117 = v69;
  return sub_238071284(&v103, &qword_27DEEAC10, &qword_2381584D8);
}

uint64_t sub_238073AC8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v40 = a2;
  v3 = type metadata accessor for _DDDevicePickerEducationView();
  *&v46 = *(v3 - 8);
  v4 = *(v46 + 64);
  MEMORY[0x28223BE20](v3);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_238071E54();
  v10 = v9;
  v44 = v6;
  v43 = v7;
  v42 = v8;
  if (v9)
  {
    v11 = v8 & 1;
    v12 = v6;
    v13 = v7;
    sub_238070430(v6, v7, v8 & 1);
    v14 = v10;

    v41 = 256;
    v10 = v12;
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v11 = 0;
    v41 = 0;
  }

  v15 = *(a1 + *(v3 + 36) + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if ((v51 & 1) != 0 || (sub_238071D48() & 1) == 0)
  {
    v27 = sub_23807211C();
    *&v51 = sub_23807CB28(v27);
    *(&v51 + 1) = v28;
    sub_2380704A0();
    v47 = sub_23815438C();
    *&v48 = v29;
    *(&v48 + 1) = v30 & 1;
    v49 = v31;
    v50 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAC20, &qword_2381584E0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_238157F20;
    *&v45 = sub_23807CB28(63);
    v39 = v17;
    sub_23807AC84(a1, &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerEducationView);
    v18 = (*(v46 + 80) + 16) & ~*(v46 + 80);
    v19 = swift_allocObject();
    sub_23807ACEC(v5, v19 + v18, type metadata accessor for _DDDevicePickerEducationView);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_23807BEDC;
    *(v20 + 24) = v19;
    *(inited + 32) = v45;
    *(inited + 40) = v39;
    *(inited + 48) = sub_23807BEF4;
    *(inited + 56) = v20;
    v21 = sub_2380EE15C(inited);
    swift_setDeallocating();
    sub_238071284(inited + 32, &qword_27DEEAC28, &qword_2381584E8);
    v22 = sub_23807211C();
    v23 = sub_23807CB28(v22);
    v25 = v24;
    v26 = sub_23815417C();
    sub_238079320(v23, v25, v21, v26, &v55);
    v47 = v55;
    v48 = v56;
    v49 = v57;
    v50 = 1;
  }

  sub_23807BCE8();
  sub_238153ECC();
  v46 = v52;
  v45 = v51;
  v32 = v53;
  v33 = v54;
  v34 = v41;
  sub_23807BD3C(v10, v13, v11, v14);
  v35 = *(&v45 + 1);
  v39 = v45;
  v36 = v46;
  sub_23807BD80(v45, *(&v45 + 1), v46, *(&v46 + 1), v32, v33);
  sub_23807BE0C(v44, v43, v42, v14);
  LOBYTE(v51) = v33;
  v37 = v40;
  *v40 = v10;
  v37[1] = v13;
  v37[2] = v11;
  v37[3] = v14;
  *(v37 + 16) = v34;
  *(v37 + 7) = v46;
  *(v37 + 5) = v45;
  v37[9] = v32;
  *(v37 + 80) = v33;
  sub_23807BE50(v39, v35, v36, *(&v36 + 1), v32, v33);
  return sub_23807BE0C(v10, v13, v11, v14);
}

uint64_t sub_238073F4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v65 = a1;
  v68 = a2;
  v2 = type metadata accessor for _DDDevicePickerEducationView();
  v64 = *(v2 - 8);
  v3 = *(v64 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE0, &unk_2381583D0);
  v4 = *(*(v66 - 1) + 64);
  v5 = MEMORY[0x28223BE20](v66);
  v73 = &v62[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v8 = &v62[-v7];
  v9 = sub_23815426C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  v13 = &v62[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v77 = sub_238153DFC();
  LOBYTE(v78) = 1;
  v86 = sub_23807CB28(57);
  v87 = v14;
  sub_2380704A0();
  v15 = sub_23815438C();
  v70 = v16;
  v71 = v15;
  v72 = v17;
  v69 = v18 & 1;
  LOBYTE(v86) = v18 & 1;
  v76 = v78;
  sub_23815417C();
  (*(v10 + 104))(v13, *MEMORY[0x277CE0A10], v9);
  v67 = sub_23815429C();

  (*(v10 + 8))(v13, v9);
  KeyPath = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAE8, &qword_23815C8F0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_238157F10;
  v20 = sub_23815412C();
  *(v19 + 32) = v20;
  v21 = sub_23815410C();
  *(v19 + 33) = v21;
  v22 = sub_23815411C();
  *(v19 + 34) = v22;
  v23 = sub_23815413C();
  sub_23815413C();
  if (sub_23815413C() != v20)
  {
    v23 = sub_23815413C();
  }

  sub_23815413C();
  if (sub_23815413C() != v21)
  {
    v23 = sub_23815413C();
  }

  sub_23815413C();
  if (sub_23815413C() != v22)
  {
    v23 = sub_23815413C();
  }

  v63 = v23;
  sub_23815377C();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v112 = 0;
  v74 = sub_238153F0C();
  v32 = v65;
  sub_23807AC84(v65, &v62[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for _DDDevicePickerEducationView);
  v33 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v34 = swift_allocObject();
  v35 = sub_23807ACEC(&v62[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v34 + v33, type metadata accessor for _DDDevicePickerEducationView);
  MEMORY[0x28223BE20](v35);
  *&v62[-16] = v32;
  *&v62[-8] = 0x4010000000000000;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAF0, &qword_2381583E0);
  sub_23807B700();
  sub_23815474C();
  v36 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB60, &qword_238158408) + 36)];
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB68, &qword_238158410) + 28);
  v38 = *MEMORY[0x277CDF438];
  v39 = sub_2381537FC();
  (*(*(v39 - 8) + 104))(v36 + v37, v38, v39);
  *v36 = swift_getKeyPath();
  LOBYTE(v38) = sub_23815414C();
  sub_23815377C();
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v48 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB70, &qword_238158448) + 36)];
  *v48 = v38;
  *(v48 + 1) = v41;
  *(v48 + 2) = v43;
  *(v48 + 3) = v45;
  *(v48 + 4) = v47;
  v48[40] = 0;
  *&v8[*(v66 + 9)] = 0x3FF0000000000000;
  v49 = v73;
  sub_2380712E4(v8, v73, &qword_27DEEAAE0, &unk_2381583D0);
  v78 = v77;
  LOBYTE(v79) = v76;
  *(&v79 + 1) = v117[0];
  DWORD1(v79) = *(v117 + 3);
  v51 = v70;
  v50 = v71;
  *(&v79 + 1) = v71;
  *&v80 = v70;
  v52 = v69;
  BYTE8(v80) = v69;
  *(&v80 + 9) = *v116;
  HIDWORD(v80) = *&v116[3];
  v66 = v8;
  v53 = v72;
  *&v81 = v72;
  WORD4(v81) = 256;
  HIWORD(v81) = v111;
  *(&v81 + 10) = v110;
  v54 = v67;
  *&v82 = KeyPath;
  *(&v82 + 1) = v67;
  LOBYTE(v83) = v23;
  DWORD1(v83) = *&v113[3];
  *(&v83 + 1) = *v113;
  *(&v83 + 1) = v25;
  *&v84 = v27;
  *(&v84 + 1) = v29;
  *&v85 = v31;
  BYTE8(v85) = 0;
  BYTE11(v85) = v115;
  *(&v85 + 9) = v114;
  HIDWORD(v85) = v74;
  v55 = v83;
  v56 = v68;
  *(v68 + 64) = v82;
  *(v56 + 80) = v55;
  v57 = v81;
  *(v56 + 32) = v80;
  *(v56 + 48) = v57;
  v58 = v79;
  *v56 = v78;
  *(v56 + 16) = v58;
  v59 = v85;
  *(v56 + 96) = v84;
  *(v56 + 112) = v59;
  *(v56 + 128) = 0;
  *(v56 + 136) = 1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAB78, &qword_238158450);
  sub_2380712E4(v49, v56 + *(v60 + 64), &qword_27DEEAAE0, &unk_2381583D0);
  sub_2380712E4(&v78, &v86, &qword_27DEEAB80, &qword_238158458);
  sub_238071284(v66, &qword_27DEEAAE0, &unk_2381583D0);
  sub_238071284(v49, &qword_27DEEAAE0, &unk_2381583D0);
  v86 = v77;
  v87 = 0;
  v88 = v76;
  *v89 = v117[0];
  *&v89[3] = *(v117 + 3);
  v90 = v50;
  v91 = v51;
  v92 = v52;
  *v93 = *v116;
  *&v93[3] = *&v116[3];
  v94 = v53;
  v95 = 256;
  v97 = v111;
  v96 = v110;
  v98 = KeyPath;
  v99 = v54;
  v100 = v63;
  *&v101[3] = *&v113[3];
  *v101 = *v113;
  v102 = v25;
  v103 = v27;
  v104 = v29;
  v105 = v31;
  v106 = 0;
  v108 = v115;
  v107 = v114;
  v109 = v74;
  return sub_238071284(&v86, &qword_27DEEAB80, &qword_238158458);
}

uint64_t sub_2380746E4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v172 = a1;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA938, &qword_2381581A0);
  v3 = *(*(v169 - 8) + 64);
  MEMORY[0x28223BE20](v169);
  v171 = &v143 - v4;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA940, &qword_2381581A8);
  v5 = *(*(v170 - 8) + 64);
  MEMORY[0x28223BE20](v170);
  v145 = &v143 - v6;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA948, &qword_2381581B0);
  v7 = *(*(v165 - 8) + 64);
  MEMORY[0x28223BE20](v165);
  v166 = &v143 - v8;
  v9 = sub_238153FDC();
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v143 = &v143 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA950, &qword_2381581B8);
  v12 = *(*(v174 - 8) + 64);
  MEMORY[0x28223BE20](v174);
  v144 = &v143 - v13;
  v181 = type metadata accessor for _DDDevicePickerEducationView();
  v176 = *(v181 - 1);
  v14 = *(v176 + 64);
  MEMORY[0x28223BE20](v181);
  v177 = v15;
  v178 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA958, &qword_2381581C0);
  v160 = *(v16 - 8);
  v161 = v16;
  v17 = *(v160 + 64);
  MEMORY[0x28223BE20](v16);
  v179 = &v143 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA960, &qword_2381581C8);
  v163 = *(v19 - 8);
  v164 = v19;
  v20 = *(v163 + 64);
  MEMORY[0x28223BE20](v19);
  v173 = &v143 - v21;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA968, &qword_2381581D0);
  v22 = *(*(v167 - 8) + 64);
  v23 = MEMORY[0x28223BE20](v167);
  v162 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v168 = &v143 - v25;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA970, &qword_2381581D8);
  v26 = *(*(v155 - 8) + 64);
  MEMORY[0x28223BE20](v155);
  v154 = (&v143 - v27);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA978, &qword_2381581E0);
  v28 = *(*(v175 - 8) + 64);
  MEMORY[0x28223BE20](v175);
  v159 = &v143 - v29;
  v30 = sub_23815426C();
  v156 = *(v30 - 8);
  v157 = v30;
  v31 = *(v156 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v143 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA980, &qword_2381581E8);
  v35 = *(*(v34 - 8) + 64);
  v36 = MEMORY[0x28223BE20](v34 - 8);
  v38 = &v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v40 = &v143 - v39;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA988, &qword_2381581F0);
  v41 = *(*(v158 - 8) + 64);
  MEMORY[0x28223BE20](v158);
  v43 = &v143 - v42;
  v44 = sub_238153A0C();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  MEMORY[0x28223BE20](v44);
  v48 = &v143 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = sub_238071578();
  v180 = v1;
  if ((v49 & 1) == 0 && (sub_238071D48() & 1) == 0)
  {
    goto LABEL_6;
  }

  v50 = v1 + v181[6];
  sub_23814A060(v48);
  LOBYTE(v50) = sub_2381539FC();
  (*(v45 + 8))(v48, v44);
  if ((v50 & 1) == 0)
  {
    goto LABEL_9;
  }

  v51 = *(v2 + v181[8] + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  if (v185 & 1) != 0 || (sub_238071578())
  {
LABEL_6:
    sub_2381533AC();
    v52 = MEMORY[0x2383E79D0]();
    v53 = sub_23815337C();

    if ((v53 & 1) == 0)
    {
      sub_238071578();
    }

    *v43 = sub_238153D1C();
    *(v43 + 1) = 0;
    v43[16] = 1;
    v54 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA990, &qword_2381581F8) + 44)];
    *v40 = sub_238153DFC();
    *(v40 + 1) = 0;
    v40[16] = 1;
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA998, &qword_238158200);
    sub_238072724(v2, &v40[*(v55 + 44)]);
    sub_2380712E4(v40, v38, &qword_27DEEA980, &qword_2381581E8);
    sub_2380712E4(v38, v54, &qword_27DEEA980, &qword_2381581E8);
    v56 = v54 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA9A0, &qword_238158208) + 48);
    *v56 = 0;
    *(v56 + 8) = 1;
    sub_238071284(v40, &qword_27DEEA980, &qword_2381581E8);
    sub_238071284(v38, &qword_27DEEA980, &qword_2381581E8);
    sub_23815417C();
    v58 = v156;
    v57 = v157;
    (*(v156 + 104))(v33, *MEMORY[0x277CE0A10], v157);
    v59 = sub_23815429C();

    (*(v58 + 8))(v33, v57);
    KeyPath = swift_getKeyPath();
    v61 = &v43[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA9A8, &qword_238158240) + 36)];
    *v61 = KeyPath;
    v61[1] = v59;
    LOBYTE(KeyPath) = sub_2381540FC();
    sub_23815377C();
    v62 = &v43[*(v158 + 36)];
    *v62 = KeyPath;
    *(v62 + 1) = v63;
    *(v62 + 2) = v64;
    *(v62 + 3) = v65;
    *(v62 + 4) = v66;
    v62[40] = 0;
    sub_23807B7E4(&qword_27DEEA9B0, &qword_27DEEA988, &qword_2381581F0, sub_23807AB00);
  }

  else
  {
LABEL_9:
    sub_238072BB0(v159);
    sub_23807B604();
  }

  v67 = sub_2381547BC();
  *(&v186 + 1) = &type metadata for SharingFeatureFlags;
  *&v187 = sub_23807ABE4();
  LOBYTE(v185) = 1;
  v68 = sub_23815283C();
  __swift_destroy_boxed_opaque_existential_1(&v185);
  if (v68)
  {
    v69 = v180;
    v70 = *(v180 + v181[9] + 8);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_238152A8C();

    if (v185 == 1)
    {
      sub_2381533AC();
      v71 = MEMORY[0x2383E79D0]();
      sub_23815337C();

      v72 = sub_238153D1C();
      v73 = v154;
      *v154 = v72;
      v73[1] = 0;
      *(v73 + 16) = 1;
      v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAD0, &qword_238158380);
      sub_238073F4C(v69, v73 + *(v74 + 44));
      sub_2380711D4(&qword_27DEEAAD8, &qword_27DEEA970, &qword_2381581D8);
    }

    else
    {
      sub_238072BB0(v159);
      sub_23807B604();
    }

    v75 = sub_2381547BC();

    v67 = v75;
  }

  else
  {
    v69 = v180;
  }

  sub_238071578();
  sub_2381548DC();
  sub_238153A8C();
  *&v193[51] = v194;
  *&v193[43] = *&v193[99];
  *&v193[35] = *&v193[91];
  *&v193[27] = *&v193[83];
  *&v193[11] = *&v193[67];
  *&v193[3] = *&v193[59];
  *&v193[19] = *&v193[75];
  *(&v184[4] + 10) = *&v193[32];
  *(&v184[5] + 10) = *&v193[40];
  *(&v184[6] + 10) = *&v193[48];
  *(v184 + 10) = *v193;
  *(&v184[1] + 10) = *&v193[8];
  *(&v184[2] + 10) = *&v193[16];
  v159 = v67;
  *&v184[0] = v67;
  WORD4(v184[0]) = 0;
  *(&v184[7] + 1) = *(&v194 + 1);
  *(&v184[3] + 10) = *&v193[24];
  *&v185 = sub_23807CB28(96);
  *(&v185 + 1) = v76;
  sub_2380704A0();
  v77 = sub_23815438C();
  v157 = v78;
  v158 = v77;
  LODWORD(v154) = v79;
  v156 = v80;
  v81 = v69 + v181[11];
  v82 = *v81;
  v83 = *(v81 + 8);
  v182 = v82;
  v183 = v83;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  sub_23815472C();
  v150 = *(&v185 + 1);
  v151 = v186;
  v84 = v178;
  sub_23807AC84(v69, v178, type metadata accessor for _DDDevicePickerEducationView);
  v85 = (*(v176 + 80) + 16) & ~*(v176 + 80);
  v86 = *(v176 + 80);
  v176 = swift_allocObject();
  sub_23807ACEC(v84, v176 + v85, type metadata accessor for _DDDevicePickerEducationView);
  sub_23807AC84(v69, v84, type metadata accessor for _DDDevicePickerEducationView);
  v155 = v86;
  v175 = swift_allocObject();
  sub_23807ACEC(v84, v175 + v85, type metadata accessor for _DDDevicePickerEducationView);
  v153 = type metadata accessor for _DDDevicePickerEducationView;
  sub_23807AC84(v69, v84, type metadata accessor for _DDDevicePickerEducationView);
  v87 = swift_allocObject();
  sub_23807ACEC(v84, v87 + v85, type metadata accessor for _DDDevicePickerEducationView);
  *&v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA08, &qword_238158268);
  *(&v146 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA10, &qword_238158270);
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA18, &qword_238158278);
  *&v148 = sub_23807AE8C();
  *(&v148 + 1) = sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270);
  v149 = sub_23807AFD0();
  v152 = sub_23807B04C();
  v88 = v154;
  v90 = v157;
  v89 = v158;
  sub_23815450C();

  sub_238070490(v89, v90, v88 & 1);

  v189 = v184[4];
  v190 = v184[5];
  v191 = v184[6];
  v192 = v184[7];
  v185 = v184[0];
  v186 = v184[1];
  v187 = v184[2];
  v188 = v184[3];
  sub_238071284(&v185, &qword_27DEEAA08, &qword_238158268);

  v91 = v180;
  v92 = *(v180 + v181[9] + 8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  v182 = v184[0];
  v93 = v178;
  v94 = v153;
  sub_23807AC84(v91, v178, v153);
  v95 = swift_allocObject();
  sub_23807ACEC(v93, v95 + v85, v94);
  v184[0] = v146;
  *&v184[1] = v147;
  *(&v184[1] + 1) = &type metadata for _DDPinEntryAlertView;
  v184[2] = v148;
  *&v184[3] = v149;
  *(&v184[3] + 1) = v152;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v97 = v173;
  v98 = v161;
  v99 = v179;
  sub_23815455C();

  (*(v160 + 8))(v99, v98);
  v100 = sub_2381533AC();
  v101 = MEMORY[0x2383E79D0]();
  v102 = sub_23815337C();

  if (v102)
  {
    sub_238153FCC();
    v103 = *(v174 + 36);
    v181 = v100;
    v104 = v144;
    v105 = &v144[v103];
    sub_23815401C();
    v106 = [objc_opt_self() quaternarySystemFillColor];
    v107 = sub_23815465C();
    v108 = v98;
    v109 = swift_getKeyPath();
    v110 = &v105[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAA0, &qword_238158320) + 36)];
    *v110 = v109;
    v110[1] = v107;
    v111 = sub_2381548DC();
    v113 = v112;
    v114 = &v105[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA70, &qword_2381582D8) + 36)];
    *v114 = v111;
    v114[1] = v113;
    v115 = v163;
    v116 = v97;
    v117 = v164;
    (*(v163 + 16))(v104, v116, v164);
    sub_2380712E4(v104, v166, &qword_27DEEA950, &qword_2381581B8);
    swift_storeEnumTagMultiPayload();
    sub_23807B128();
    *&v184[0] = v108;
    *(&v184[0] + 1) = MEMORY[0x277D839B0];
    *&v184[1] = OpaqueTypeConformance2;
    *(&v184[1] + 1) = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    v118 = v162;
    v119 = v117;
    v97 = v173;
    sub_238153ECC();
    sub_238071284(v104, &qword_27DEEA950, &qword_2381581B8);
  }

  else
  {
    v115 = v163;
    v119 = v164;
    (*(v163 + 16))(v166, v97, v164);
    swift_storeEnumTagMultiPayload();
    sub_23807B128();
    *&v184[0] = v98;
    *(&v184[0] + 1) = MEMORY[0x277D839B0];
    *&v184[1] = OpaqueTypeConformance2;
    *(&v184[1] + 1) = MEMORY[0x277D839C8];
    swift_getOpaqueTypeConformance2();
    v118 = v162;
    sub_238153ECC();
  }

  v120 = v168;
  (*(v115 + 8))(v97, v119);
  v121 = sub_23807B30C(v118, v120);
  v122 = MEMORY[0x2383E79D0](v121);
  v123 = sub_23815337C();

  if (v123)
  {
    sub_2380712E4(v120, v171, &qword_27DEEA968, &qword_2381581D0);
    swift_storeEnumTagMultiPayload();
    sub_23807B384();
    sub_23807B43C();
    sub_238153ECC();
  }

  else
  {
    v124 = v145;
    v125 = &v145[*(v170 + 36)];
    v126 = *(sub_238153A7C() + 20);
    v127 = *MEMORY[0x277CE0118];
    v128 = sub_238153DDC();
    (*(*(v128 - 8) + 104))(&v125[v126], v127, v128);
    __asm { FMOV            V0.2D, #8.0 }

    *v125 = _Q0;
    v134 = [objc_opt_self() quaternarySystemFillColor];
    v135 = sub_23815465C();
    v136 = swift_getKeyPath();
    v137 = &v125[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA78, &qword_238158310) + 36)];
    *v137 = v136;
    v137[1] = v135;
    v138 = sub_2381548DC();
    v140 = v139;
    v141 = &v125[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA80, &qword_238158318) + 36)];
    *v141 = v138;
    v141[1] = v140;
    sub_2380712E4(v120, v124, &qword_27DEEA968, &qword_2381581D0);
    sub_2380712E4(v124, v171, &qword_27DEEA940, &qword_2381581A8);
    swift_storeEnumTagMultiPayload();
    sub_23807B384();
    sub_23807B43C();
    sub_238153ECC();

    sub_238071284(v124, &qword_27DEEA940, &qword_2381581A8);
  }

  return sub_238071284(v120, &qword_27DEEA968, &qword_2381581D0);
}

uint64_t sub_238075BF8(uint64_t a1)
{
  v2 = type metadata accessor for _DDDevicePickerEducationView();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  sub_23807AC84(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerEducationView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_23807ACEC(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for _DDDevicePickerEducationView);
  return sub_23815474C();
}

double sub_238075D40@<D0>(uint64_t a1@<X8>)
{
  v3 = (*(v1 + *(type metadata accessor for _DDDevicePickerEducationView() + 36) + 8) + OBJC_IVAR____TtC17DeviceDiscoveryUI20_DDPinPairingManager_serviceIdentifier);
  v4 = *v3;
  v5 = v3[1];
  v6 = *MEMORY[0x277CE7BF8];
  if (v4 == sub_238154CCC() && v5 == v7)
  {

    goto LABEL_8;
  }

  v9 = sub_2381555CC();

  if (v9)
  {
LABEL_8:
    *&v13 = sub_23807CB28(98);
    *(&v13 + 1) = v11;
    sub_2380704A0();
    sub_23815438C();
    goto LABEL_9;
  }

  *&v13 = sub_23807CB28(97);
  *(&v13 + 1) = v10;
  sub_2380704A0();
  sub_23815438C();
LABEL_9:
  sub_238153ECC();
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v14;
  *(a1 + 32) = v15;
  return result;
}

uint64_t sub_238075E8C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for _DDDevicePickerEducationView();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  sub_23807AC84(v1, &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for _DDDevicePickerEducationView);
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_23807ACEC(&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for _DDDevicePickerEducationView);
  v8 = sub_2381537AC();
  v31 = v9;
  v32 = v8;
  v33 = v10;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_2381546FC();
  v30 = v37;
  v28 = v36;
  v29 = v38;
  LOBYTE(v34) = 0;
  sub_2381546FC();
  v11 = v36;
  v27 = v37;
  LOBYTE(v34) = 0;
  sub_2381546FC();
  v12 = v36;
  v13 = v37;
  if (qword_27DEEA100 != -1)
  {
    swift_once();
  }

  v14 = qword_27DEF3290;
  type metadata accessor for _DDPinPairingManager();
  sub_23807C874(&qword_27DEEA930, type metadata accessor for _DDPinPairingManager);
  v15 = v14;
  v16 = sub_2381539BC();
  v18 = v17;
  if (qword_27DEEA030 != -1)
  {
    swift_once();
  }

  v19 = qword_27DEF3190;
  type metadata accessor for DDDeviceAccessController();
  sub_23807C874(&qword_27DEED6B0, type metadata accessor for DDDeviceAccessController);
  v20 = v19;
  result = sub_2381539BC();
  *a1 = 6;
  v22 = v32 & 1;
  v23 = v31 & 1;
  v24 = v30;
  *(a1 + 8) = v28;
  *(a1 + 16) = v24;
  *(a1 + 24) = v29;
  *(a1 + 32) = v11;
  *(a1 + 33) = v36;
  *(a1 + 36) = *(&v36 + 3);
  *(a1 + 40) = v27;
  *(a1 + 48) = v12;
  *(a1 + 49) = v34;
  *(a1 + 52) = *(&v34 + 3);
  *(a1 + 56) = v13;
  *(a1 + 64) = v22;
  *(a1 + 68) = *&v40[3];
  *(a1 + 65) = *v40;
  *(a1 + 72) = v33;
  *(a1 + 80) = v23;
  *(a1 + 84) = *&v39[3];
  *(a1 + 81) = *v39;
  *(a1 + 88) = v16;
  *(a1 + 96) = v18;
  *(a1 + 104) = result;
  *(a1 + 112) = v25;
  *(a1 + 120) = sub_23807BF20;
  *(a1 + 128) = v7;
  return result;
}

uint64_t sub_2380761E0(uint64_t a1, char *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = (a3 + *(type metadata accessor for _DDDevicePickerEducationView() + 44));
  v6 = *v4;
  v7 = *(v4 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA498, &qword_2381596E0);
  return sub_23815471C();
}

uint64_t sub_238076254@<X0>(uint64_t a1@<X8>)
{
  sub_23807CB28(0);
  sub_2380704A0();
  result = sub_23815438C();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4 & 1;
  *(a1 + 24) = v5;
  return result;
}

uint64_t sub_2380762B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v63 = MEMORY[0x277D84F90];
    sub_2380FDAB8(0, v2, 0);
    v62 = v63;
    v5 = (a1 + 64);
    do
    {
      v7 = *(v5 - 4);
      v6 = *(v5 - 3);
      if (*v5)
      {
        v9 = *(v5 - 2);
        v8 = *(v5 - 1);
        sub_23807C8D8(*(v5 - 4), *(v5 - 3), v9, v8, 1);

        v10 = sub_23815431C();
        v12 = v11;
        v14 = v13;
        v3 = v15;
        sub_23807C928(v7, v6, v9, v8, 1);

        v7 = v10;
        v6 = v12;
      }

      else
      {
        v16 = *(v5 - 3);

        v14 = 0;
      }

      v18 = *(v63 + 16);
      v17 = *(v63 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_2380FDAB8((v17 > 1), v18 + 1, 1);
      }

      *(v63 + 16) = v18 + 1;
      v19 = v63 + 32 * v18;
      *(v19 + 32) = v7;
      *(v19 + 40) = v6;
      *(v19 + 48) = v14 & 1;
      *(v19 + 56) = v3;
      v5 += 40;
      --v2;
      v3 = MEMORY[0x277D84F90];
    }

    while (v2);
  }

  else
  {
    v62 = MEMORY[0x277D84F90];
  }

  sub_238153D8C();
  v20 = sub_23815436C();
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v27 = *(v62 + 16);
  sub_238070430(v20, v21, v23 & 1);

  v58 = v27;
  v56 = v20;
  v55 = v22;
  v54 = v24;
  if (v27)
  {
    v28 = 0;
    v29 = (v62 + 56);
    result = v26;
    while (v28 < *(v62 + 16))
    {
      ++v28;
      v31 = *v29;
      v32 = *(v29 - 8);
      v34 = *(v29 - 3);
      v33 = *(v29 - 2);
      sub_238070430(v34, v33, v32);

      v60 = sub_23815433C();
      v61 = v35;
      v59 = v36;
      v38 = v37;
      sub_238070490(v20, v22, v24 & 1);

      v39 = v34;
      v40 = v59;
      v41 = v32;
      v42 = v60;
      sub_238070490(v39, v33, v41);

      v29 += 4;
      result = v61;
      v43 = v38;
      v24 = v38;
      v22 = v59;
      v20 = v60;
      if (v58 == v28)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
    v42 = v20;
    v40 = v22;
    v43 = v24;
LABEL_17:

    sub_238070490(v56, v55, v54 & 1);

    v44 = v43;
    v45 = sub_23815435C();
    v47 = v46;
    v48 = v42;
    v50 = v49;
    v51 = v40;
    v53 = v52;
    sub_238070490(v48, v51, v44 & 1);

    *a2 = v45;
    *(a2 + 8) = v47;
    *(a2 + 16) = v50 & 1;
    *(a2 + 24) = v53;
  }

  return result;
}

uint64_t sub_238076618@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  return sub_2380762B4(*v1, a1);
}

uint64_t sub_238076624@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[3];
  v6 = v1[4];
  swift_bridgeObjectRetain_n();
  swift_bridgeObjectRetain_n();
  swift_retain_n();
  sub_2381545BC();
  sub_238079764(v3, v4, v5);
  sub_23807C530();
  sub_23815448C();

  v7 = sub_2381548DC();
  v9 = v8;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAC60, &qword_2381585A0);
  v11 = (a1 + *(result + 36));
  *v11 = v3;
  v11[1] = v4;
  v11[2] = v5;
  v11[3] = v6;
  v11[4] = v7;
  v11[5] = v9;
  return result;
}

unint64_t sub_2380768FC()
{
  v1 = (v0 + OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_overlay);
  v2 = *(v0 + OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_overlay + 16);
  if (!*(v2 + 16))
  {
    return 0;
  }

  [*(v0 + OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_layoutManager) characterIndexForPoint:*(v0 + OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_textContainer) inTextContainer:0 fractionOfDistanceBetweenInsertionPoints:?];
  v3 = *v1;
  v4 = v1[1];
  result = sub_238154DBC();
  v6 = 0;
  v7 = 1 << *(v2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v2 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = result >> 14;
  while (v9)
  {
    v12 = v6;
LABEL_11:
    v13 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(v2 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1] >> 14;
    if (v11 >= v16 >> 14 && v11 < v17)
    {
      v19 = *(v2 + 56);
      *(swift_allocObject() + 16) = *(v19 + 16 * v14);

      return sub_23807C9CC;
    }
  }

  while (1)
  {
    v12 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v12 >= v10)
    {
      return 0;
    }

    v9 = *(v2 + 64 + 8 * v12);
    ++v6;
    if (v9)
    {
      v6 = v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void sub_238076B5C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  sub_238079F20();
}

uint64_t sub_238076B74@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = objc_allocWithZone(type metadata accessor for LinkTapOverlay.Coordinator());

  v8 = sub_23807A178(v3, v4, v5, v6);

  *a1 = v8;
  return result;
}

uint64_t sub_238076C50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23807A2C0();

  return MEMORY[0x28212E3C8](a1, a2, a3, v6);
}

uint64_t sub_238076CB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_23807A2C0();

  return MEMORY[0x28212E358](a1, a2, a3, v6);
}

void sub_238076D18()
{
  sub_23807A2C0();
  sub_238153E9C();
  __break(1u);
}

void sub_238076DE8()
{
  v2 = v0;
  v3 = &off_278A48000;
  [v0 setAccessibilityElements_];
  v4 = *(v0 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_tappables);
  if (!v4)
  {
    v6 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text + 8);
    if (v6)
    {
      v7 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text);
      v109 = MEMORY[0x277D84F90];
LABEL_48:

      goto LABEL_49;
    }

LABEL_59:

    return;
  }

  v1 = *(v4 + 16);
  v95 = v2;
  if (v1)
  {
    v5 = sub_238078268(v1, 0);
    v3 = sub_238078F58(&aBlock, (v5 + 32), v1, v4);
    v2 = v103;
    swift_bridgeObjectRetain_n();
    sub_23807A314();
    if (v3 != v1)
    {
      goto LABEL_67;
    }

    v2 = v95;
    v3 = &off_278A48000;
  }

  else
  {

    v5 = MEMORY[0x277D84F90];
  }

  aBlock = v5;
  sub_2380784B0(&aBlock);

  v6 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text + 8);
  if (!v6)
  {
    goto LABEL_59;
  }

  v7 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text);
  v109 = MEMORY[0x277D84F90];
  if (!aBlock)
  {
    goto LABEL_48;
  }

  v8 = aBlock[2];
  if (!v8)
  {

LABEL_49:
    v18 = MEMORY[0x277D84F90];
    v5 = 15;
LABEL_50:

    v83 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v83 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (4 * v83 >= v5 >> 14)
    {
      v84 = 7;
      if (((v6 >> 60) & ((v7 & 0x800000000000000) == 0)) != 0)
      {
        v84 = 11;
      }

      v85 = sub_238077B34(v5, v84 | (v83 << 16));
      v5 = v85;
      if (!v85)
      {
        goto LABEL_58;
      }

      v86 = *MEMORY[0x277D765A8];
      v87 = v85;
      [v87 setAccessibilityTraits_];
      v1 = v87;
      MEMORY[0x2383E94F0]();
      if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_57:
        sub_238154F1C();

        v18 = v109;
LABEL_58:
        sub_238077938(v18);

        v88 = sub_238154ECC();

        [v2 *(v3 + 2528)];

        return;
      }

LABEL_68:
      sub_238154EFC();
      goto LABEL_57;
    }

LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v90 = v7;
  v96 = OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_textContainer;
  v10 = aBlock[4];
  v9 = aBlock[5];
  v94 = (v2 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text);
  v12 = aBlock[6];
  v11 = aBlock[7];
  v13 = aBlock;
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  *(v14 + 24) = v11;
  v1 = v94;
  v98 = v14;
  v99 = v10;
  v2 = (v10 >> 14);
  v93 = *MEMORY[0x277D765A8];
  v92 = *MEMORY[0x277D76548];
  v91 = v6;

  v15 = 0;
  v89 = v13;
  v16 = v13 + 11;
  v17 = v8 - 1;
  v18 = MEMORY[0x277D84F90];
  v3 = 15;
  while (1)
  {
    v97 = v17;
    v22 = v1[1];
    if (v22)
    {
      v23 = v15 == v2;
    }

    else
    {
      v23 = 1;
    }

    v100 = v9;
    if (v23)
    {
      v5 = v9;

      v24 = 0;
      goto LABEL_32;
    }

    v25 = *v1;
    v26 = objc_allocWithZone(MEMORY[0x277D750A0]);

    v27 = [v26 initWithAccessibilityContainer_];
    v28 = sub_238154E8C();
    MEMORY[0x2383E9380](v28);

    v29 = sub_238154C8C();

    [v27 setAccessibilityLabel_];

    v30 = *(v95 + v96);
    if (!v30)
    {
      break;
    }

    v31 = [v30 layoutManager];
    if (v31)
    {
      v32 = v31;
      aBlock = v3;
      v102 = v99;
      v107 = v25;
      v108 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA890, &qword_2381580F8);
      v29 = sub_2380711D4(&qword_27DEEA898, &qword_27DEEA890, &qword_2381580F8);
      sub_2380704A0();
      v33 = sub_23815525C();
      v3 = [v32 glyphRangeForCharacterRange:v33 actualCharacterRange:{v34, 0}];
      v36 = v35;

      v37 = *(v95 + v96);
      if (!v37)
      {
        goto LABEL_71;
      }

      v38 = [v37 layoutManager];
      v1 = v94;
      if (v38)
      {
        v39 = *(v95 + v96);
        if (!v39)
        {
          goto LABEL_73;
        }

        v40 = v38;
        v41 = v39;

        [v40 boundingRectForGlyphRange:v3 inTextContainer:{v36, v41}];
        v43 = v42;
        v45 = v44;
        v47 = v46;
        v49 = v48;
      }

      else
      {

        v43 = 0.0;
        v45 = 0.0;
        v47 = 0.0;
        v49 = 0.0;
      }

      [v27 setAccessibilityFrameInContainerSpace_];
    }

    else
    {

      v1 = v94;
    }

    v5 = v100;
    [v27 setIsAccessibilityElement_];
    v50 = v27;
    [v50 setAccessibilityTraits_];
    v24 = v50;
    MEMORY[0x2383E94F0]();
    if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v81 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
      sub_238154EFC();
    }

    sub_238154F1C();

    v18 = v109;
LABEL_32:
    v15 = (v5 >> 14);
    if (v5 >> 14 < v2)
    {
      __break(1u);
LABEL_65:
      __break(1u);
      goto LABEL_66;
    }

    v51 = v1[1];
    if (!v51 || v2 == v15)
    {

      v19 = v97;
      if (!v97)
      {

        v2 = v95;
        v3 = 0x278A48000;
        v7 = v90;
        v6 = v91;
        goto LABEL_50;
      }
    }

    else
    {
      v52 = *v1;
      v53 = objc_allocWithZone(MEMORY[0x277D750A0]);

      v2 = v95;
      v54 = [v53 initWithAccessibilityContainer_];
      v55 = sub_238154E8C();
      v29 = MEMORY[0x2383E9380](v55);

      v56 = sub_238154C8C();

      [v54 setAccessibilityLabel_];

      v57 = *(v95 + v96);
      if (!v57)
      {
        goto LABEL_70;
      }

      v58 = [v57 layoutManager];
      if (v58)
      {
        v59 = v58;
        aBlock = v99;
        v102 = v100;
        v107 = v52;
        v108 = v51;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA890, &qword_2381580F8);
        sub_2380711D4(&qword_27DEEA898, &qword_27DEEA890, &qword_2381580F8);
        sub_2380704A0();
        v60 = sub_23815525C();
        v62 = [v59 glyphRangeForCharacterRange:v60 actualCharacterRange:{v61, 0}];
        v29 = v63;

        v64 = *(v95 + v96);
        if (!v64)
        {
          goto LABEL_72;
        }

        v65 = [v64 layoutManager];
        if (v65)
        {
          v66 = *(v95 + v96);
          if (!v66)
          {
            goto LABEL_74;
          }

          v67 = v65;
          v68 = v66;

          [v67 boundingRectForGlyphRange:v62 inTextContainer:{v29, v68}];
          v70 = v69;
          v72 = v71;
          v74 = v73;
          v76 = v75;
        }

        else
        {

          v70 = 0.0;
          v72 = 0.0;
          v74 = 0.0;
          v76 = 0.0;
        }

        [v54 setAccessibilityFrameInContainerSpace_];
      }

      else
      {
      }

      v1 = v94;
      [v54 setIsAccessibilityElement_];
      [v54 setAccessibilityTraits_];
      v77 = swift_allocObject();
      v77[2] = v99;
      v77[3] = v100;
      v77[4] = sub_23807A354;
      v77[5] = v98;
      v105 = sub_23807A3B4;
      v106 = v77;
      aBlock = MEMORY[0x277D85DD0];
      v102 = 1107296256;
      v103 = sub_2380778F8;
      v104 = &block_descriptor;
      v78 = _Block_copy(&aBlock);
      v79 = v54;

      [v79 setAccessibilityActivateBlock_];
      _Block_release(v78);

      v80 = v79;
      MEMORY[0x2383E94F0]();
      if (*((v109 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v82 = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_238154EFC();
      }

      sub_238154F1C();

      v18 = v109;

      v19 = v97;
      if (!v97)
      {

        v3 = 0x278A48000;
        v7 = v90;
        v6 = v91;
        v5 = v100;
        goto LABEL_50;
      }
    }

    v20 = *(v16 - 3);
    v9 = *(v16 - 2);
    v5 = *(v16 - 1);
    v21 = *v16;
    v98 = swift_allocObject();
    v99 = v20;
    v2 = (v20 >> 14);
    *(v98 + 16) = v5;
    *(v98 + 24) = v21;
    v16 += 4;
    v17 = v19 - 1;
    v3 = v100;
    if (v2 < v15)
    {
      goto LABEL_65;
    }
  }

  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);

  __break(1u);
}

uint64_t sub_2380778F8(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  LOBYTE(v1) = v1(v3);

  return v1 & 1;
}

char *sub_238077938(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2381554FC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2380FDAD8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x2383E9A70](i, a1);
        sub_23807A3F8(0, &qword_27DEEA8A8, 0x277D750A0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2380FDAD8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_23807A440(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_23807A3F8(0, &qword_27DEEA8A8, 0x277D750A0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2380FDAD8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_23807A440(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_238077B34(unint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text + 8);
  if (!v3 || (a2 ^ a1) < 0x4000)
  {
    return 0;
  }

  v7 = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text);
  v8 = objc_allocWithZone(MEMORY[0x277D750A0]);

  v6 = [v8 initWithAccessibilityContainer_];
  v9 = sub_238154E8C();
  MEMORY[0x2383E9380](v9);

  v10 = sub_238154C8C();

  [v6 setAccessibilityLabel_];

  v11 = OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_textContainer;
  result = *(v2 + OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_textContainer);
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = [result layoutManager];
  if (!v13)
  {

LABEL_13:
    [v6 setIsAccessibilityElement_];
    return v6;
  }

  v14 = v13;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA890, &qword_2381580F8);
  sub_2380711D4(&qword_27DEEA898, &qword_27DEEA890, &qword_2381580F8);
  sub_2380704A0();
  v15 = sub_23815525C();
  v17 = [v14 glyphRangeForCharacterRange:v15 actualCharacterRange:{v16, 0, v7, v3, a1, a2}];
  v19 = v18;

  result = *(v2 + v11);
  if (!result)
  {
    goto LABEL_16;
  }

  result = [result layoutManager];
  if (!result)
  {

    v24 = 0.0;
    v26 = 0.0;
    v28 = 0.0;
    v30 = 0.0;
    goto LABEL_12;
  }

  v20 = *(v2 + v11);
  if (v20)
  {
    v21 = result;
    v22 = v20;

    [v21 boundingRectForGlyphRange:v17 inTextContainer:{v19, v22}];
    v24 = v23;
    v26 = v25;
    v28 = v27;
    v30 = v29;

LABEL_12:
    [v6 setAccessibilityFrameInContainerSpace_];
    goto LABEL_13;
  }

LABEL_17:
  __break(1u);
  return result;
}

id sub_238077E90(void *a1)
{
  *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_textContainer] = 0;
  *&v1[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_tappables] = 0;
  v3 = &v1[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text];
  v4 = type metadata accessor for LinkTapOverlayView();
  *v3 = 0;
  *(v3 + 1) = 0;
  v7.receiver = v1;
  v7.super_class = v4;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, a1);

  if (v5)
  {
  }

  return v5;
}

id sub_238077F64(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_238078028(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_238078070(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2380780D0()
{
  result = qword_27DEEA838;
  if (!qword_27DEEA838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA838);
  }

  return result;
}

uint64_t type metadata accessor for _DDDevicePickerEducationView()
{
  result = qword_27DEEA8F0;
  if (!qword_27DEEA8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_238078170@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_238152A8C();

  *a2 = v5;
  return result;
}

uint64_t sub_2380781F4(char *a1, void **a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  return sub_238152A9C();
}

void *sub_238078268(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA8C0, &qword_238158110);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

size_t sub_2380782EC(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA8C8, &qword_238158118);
  v4 = *(type metadata accessor for _DDNodeDecoration(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if (result - v6 != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2380783E8(uint64_t a1)
{
  v2 = sub_2381537FC();
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, a1);
  return MEMORY[0x2383E8130](v5);
}

uint64_t sub_2380784B0(void **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_23807930C(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_23815558C();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 5;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[3];
          if (v13 >> 14 >= *(v12 - 1) >> 14)
          {
            break;
          }

          v14 = v12[4];
          v15 = *(v12 + 5);
          v16 = *(v12 + 1);
          *(v12 + 3) = *(v12 - 1);
          *(v12 + 5) = v16;
          *(v12 - 1) = v13;
          *v12 = v14;
          *(v12 + 1) = v15;
          v12 -= 4;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 4;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA8B0, &unk_238158100);
      v7 = sub_238154F0C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_238078618(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_238078618(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v95 = *v95;
    if (!v95)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_238078E40(v9);
      v9 = result;
    }

    v87 = v9 + 16;
    v88 = *(v9 + 2);
    if (v88 >= 2)
    {
      while (*a3)
      {
        v89 = &v9[16 * v88];
        v90 = *v89;
        v91 = &v87[2 * v88];
        v92 = v91[1];
        sub_238078BA8((*a3 + 32 * *v89), (*a3 + 32 * *v91), (*a3 + 32 * v92), v95);
        if (v4)
        {
        }

        if (v92 < v90)
        {
          goto LABEL_112;
        }

        if (v88 - 2 >= *v87)
        {
          goto LABEL_113;
        }

        *v89 = v90;
        *(v89 + 1) = v92;
        v93 = *v87 - v88;
        if (*v87 < v88)
        {
          goto LABEL_114;
        }

        v88 = *v87 - 1;
        result = memmove(v91, v91 + 2, 16 * v93);
        *v87 = v88;
        if (v88 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 32 * v8);
      v12 = 32 * v10;
      v13 = (*a3 + 32 * v10);
      v15 = *v13;
      v14 = v13 + 8;
      v16 = v11 >> 14;
      v17 = v15 >> 14;
      v18 = v10 + 2;
      while (v6 != v18)
      {
        v19 = *v14;
        v14 += 4;
        v20 = (v16 < v17) ^ (v19 >> 14 >= v11 >> 14);
        ++v18;
        v11 = v19;
        if ((v20 & 1) == 0)
        {
          v8 = v18 - 1;
          if (v16 >= v17)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v16 >= v17)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v21 = 0;
        v22 = 32 * v8;
        v23 = v10;
        do
        {
          if (v23 != v8 + v21 - 1)
          {
            v29 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v29 + v12);
            v25 = v29 + v22;
            v26 = *v24;
            v27 = v24[1];
            v28 = *(v25 - 16);
            *v24 = *(v25 - 32);
            v24[1] = v28;
            *(v25 - 32) = v26;
            *(v25 - 16) = v27;
          }

          ++v23;
          --v21;
          v22 -= 32;
          v12 += 32;
        }

        while (v23 < v8 + v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_238078E54(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v41 = *(v9 + 2);
    v40 = *(v9 + 3);
    v42 = v41 + 1;
    if (v41 >= v40 >> 1)
    {
      result = sub_238078E54((v40 > 1), v41 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v42;
    v43 = &v9[16 * v41];
    *(v43 + 4) = v10;
    *(v43 + 5) = v8;
    v44 = *v95;
    if (!*v95)
    {
      goto LABEL_125;
    }

    if (v41)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v9 + 4);
          v47 = *(v9 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_57:
          if (v49)
          {
            goto LABEL_103;
          }

          v62 = &v9[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_106;
          }

          v68 = &v9[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_110;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v72 = &v9[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_71:
        if (v67)
        {
          goto LABEL_105;
        }

        v75 = &v9[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_108;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_78:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
        {
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
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v84 = *&v9[16 * v83 + 32];
        v85 = *&v9[16 * v45 + 40];
        sub_238078BA8((*a3 + 32 * v84), (*a3 + 32 * *&v9[16 * v45 + 32]), (*a3 + 32 * v85), v44);
        if (v4)
        {
        }

        if (v85 < v84)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_238078E40(v9);
        }

        if (v83 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v86 = &v9[16 * v83];
        *(v86 + 4) = v84;
        *(v86 + 5) = v85;
        result = sub_238078DB4(v45);
        v42 = *(v9 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v9[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_101;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_102;
      }

      v57 = &v9[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_104;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_107;
      }

      if (v61 >= v53)
      {
        v79 = &v9[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_111;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v30 = *a3;
  v31 = *a3 + 32 * v8 - 32;
  v32 = v10 - v8;
LABEL_30:
  v33 = *(v30 + 32 * v8);
  v34 = v32;
  v35 = v31;
  while (1)
  {
    if (v33 >> 14 >= *v35 >> 14)
    {
LABEL_29:
      ++v8;
      v31 += 32;
      --v32;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v30)
    {
      break;
    }

    v36 = *(v35 + 40);
    v37 = *(v35 + 48);
    v38 = *(v35 + 16);
    *(v35 + 32) = *v35;
    *(v35 + 48) = v38;
    *v35 = v33;
    *(v35 + 8) = v36;
    *(v35 + 16) = v37;
    v35 -= 32;
    if (__CFADD__(v34++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_238078BA8(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 >> 14 < *v4 >> 14)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = v5 + 32;
      v21 = *(v19 - 4);
      v19 -= 32;
      if (v21 >> 14 < *v18 >> 14)
      {
        if (v20 != v6)
        {
          v23 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v23;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        v22 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v22;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v24 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v24 >> 5));
  }

  return 1;
}

uint64_t sub_238078DB4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_238078E40(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_238078E54(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA8B8, &qword_23815AF40);
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

void *sub_238078F58(void *result, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
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
      v17 = (v12 << 10) | (16 * __clz(__rbit64(v9)));
      v18 = *(*(a4 + 56) + v17);
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 48) + v17);
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

uint64_t sub_2380790B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for _DDNodeDecoration(0);
  v34 = *(v8 - 8);
  v9 = *(v34 + 64);
  v10 = MEMORY[0x28223BE20](v8 - 8);
  v33 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v10);
  v32 = &v29 - v13;
  v14 = a4 + 64;
  v15 = -1 << *(a4 + 32);
  if (-v15 < 64)
  {
    v16 = ~(-1 << -v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v18 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v14;
    a1[2] = ~v15;
    a1[3] = v18;
    a1[4] = v17;
    return a3;
  }

  if (!a3)
  {
    v18 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v30 = a1;
    v31 = a3;
    result = 0;
    v18 = 0;
    v29 = v15;
    v19 = (63 - v15) >> 6;
    v20 = 1;
    while (v17)
    {
LABEL_14:
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v24 = v33;
      a1 = *(v34 + 72);
      sub_23807AC84(*(a4 + 56) + a1 * (v23 | (v18 << 6)), v33, type metadata accessor for _DDNodeDecoration);
      v25 = v24;
      v26 = v32;
      sub_23807ACEC(v25, v32, type metadata accessor for _DDNodeDecoration);
      sub_23807ACEC(v26, a2, type metadata accessor for _DDNodeDecoration);
      if (v20 == v31)
      {
        a1 = v30;
        a3 = v31;
        goto LABEL_23;
      }

      a2 += a1;
      result = v20;
      if (__OFADD__(v20++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v21 = v18;
    while (1)
    {
      v22 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v22 >= v19)
      {
        break;
      }

      v17 = *(v14 + 8 * v22);
      ++v21;
      if (v17)
      {
        v18 = v22;
        goto LABEL_14;
      }
    }

    v17 = 0;
    if (v19 <= v18 + 1)
    {
      v28 = v18 + 1;
    }

    else
    {
      v28 = v19;
    }

    v18 = v28 - 1;
    a3 = result;
    a1 = v30;
LABEL_23:
    v15 = v29;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_238079320@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X8>)
{
  v55 = a5;
  v56 = a4;
  v58 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEAC30, &qword_2381584F0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = &v53 - v9;
  v57 = sub_2380EE278(MEMORY[0x277D84F90]);
  v11 = a3 + 64;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a3 + 64);
  v15 = (v12 + 63) >> 6;
  v59 = a2;

  v60 = a3;

  v16 = 0;
  while (1)
  {
    v17 = v16;
    if (!v14)
    {
      break;
    }

LABEL_8:
    v18 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v19 = (v16 << 10) | (16 * v18);
    v20 = *(v60 + 56);
    v21 = (*(v60 + 48) + v19);
    v23 = *v21;
    v22 = v21[1];
    v24 = swift_allocObject();
    v61 = *(v20 + v19);
    *(v24 + 16) = v61;
    v64 = v58;
    v65 = v59;
    v62 = v23;
    v63 = v22;
    v25 = sub_2381527FC();
    (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
    sub_2380704A0();

    v26 = sub_23815532C();
    v28 = v27;
    LOBYTE(v20) = v29;
    sub_238071284(v10, &unk_27DEEAC30, &qword_2381584F0);
    if (v20)
    {
    }

    else
    {
      v30 = swift_allocObject();
      *(v30 + 16) = sub_23807C9CC;
      *(v30 + 24) = v24;
      *&v61 = v30;

      v31 = v57;
      LODWORD(v54) = swift_isUniquelyReferenced_nonNull_native();
      v64 = v31;
      v33 = sub_2380E6C58(v26, v28);
      v34 = *(v31 + 16);
      v35 = (v32 & 1) == 0;
      v36 = v34 + v35;
      if (__OFADD__(v34, v35))
      {
        goto LABEL_22;
      }

      if (*(v31 + 24) >= v36)
      {
        if ((v54 & 1) == 0)
        {
          LODWORD(v57) = v32;
          v54 = v33;
          sub_2380E9458();
          v33 = v54;
          LOBYTE(v32) = v57;
        }
      }

      else
      {
        LODWORD(v57) = v32;
        sub_2380C4C20(v36, v54);
        v37 = sub_2380E6C58(v26, v28);
        v38 = v32 & 1;
        LOBYTE(v32) = v57;
        if ((v57 & 1) != v38)
        {
          goto LABEL_24;
        }

        v33 = v37;
      }

      v57 = v64;
      if (v32)
      {
        v39 = (*(v64 + 56) + 16 * v33);
        v40 = v39[1];
        v41 = v61;
        *v39 = sub_23807C9D4;
        v39[1] = v41;
      }

      else
      {
        *(v64 + 8 * (v33 >> 6) + 64) |= 1 << v33;
        v42 = (*(v57 + 48) + 16 * v33);
        *v42 = v26;
        v42[1] = v28;
        v43 = (*(v57 + 56) + 16 * v33);
        v44 = v61;
        *v43 = sub_23807C9D4;
        v43[1] = v44;

        v45 = *(v57 + 16);
        v46 = __OFADD__(v45, 1);
        v47 = v45 + 1;
        if (v46)
        {
          goto LABEL_23;
        }

        *(v57 + 16) = v47;
      }
    }
  }

  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v15)
    {
      v48 = v60;

      v49 = v59;

      v51 = v55;
      v52 = v57;
      *v55 = v58;
      v51[1] = v49;
      v51[2] = v48;
      v51[3] = v52;
      v51[4] = v56;
      return result;
    }

    v14 = *(v11 + 8 * v16);
    ++v17;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA890, &qword_2381580F8);
  result = sub_2381555FC();
  __break(1u);
  return result;
}

char *sub_238079764(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = sub_238078268(*(a3 + 16), 0);
    v45 = sub_238078F58(&v48, v5 + 2, v4, a3);

    sub_23807A314();
    if (v45 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v48 = v5;
  sub_2380784B0(&v48);

  v6 = v48[2];
  v7 = MEMORY[0x277D84F90];
  if (v6)
  {
    v8 = v48 + 7;
    v9 = 15;
    do
    {
      v11 = *(v8 - 3);
      v10 = *(v8 - 2);
      v13 = *(v8 - 1);
      v12 = *v8;
      v14 = swift_allocObject();
      *(v14 + 16) = v13;
      *(v14 + 24) = v12;

      if (v9 >> 14 < v11 >> 14)
      {
        v15 = sub_238154E8C();
        v16 = MEMORY[0x2383E9380](v15);
        v18 = v17;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = sub_2380BB31C(0, *(v7 + 2) + 1, 1, v7);
        }

        v20 = *(v7 + 2);
        v19 = *(v7 + 3);
        if (v20 >= v19 >> 1)
        {
          v7 = sub_2380BB31C((v19 > 1), v20 + 1, 1, v7);
        }

        *(v7 + 2) = v20 + 1;
        v21 = &v7[40 * v20];
        *(v21 + 4) = v16;
        *(v21 + 5) = v18;
        *(v21 + 6) = 0;
        *(v21 + 7) = 0;
        v21[64] = 0;
      }

      v22 = a2;
      v23 = sub_238154E8C();
      v24 = MEMORY[0x2383E9380](v23);
      v26 = v25;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_2380BB31C(0, *(v7 + 2) + 1, 1, v7);
      }

      v28 = *(v7 + 2);
      v27 = *(v7 + 3);
      if (v28 >= v27 >> 1)
      {
        v7 = sub_2380BB31C((v27 > 1), v28 + 1, 1, v7);
      }

      *(v7 + 2) = v28 + 1;
      v29 = &v7[40 * v28];
      *(v29 + 4) = v24;
      *(v29 + 5) = v26;
      *(v29 + 6) = sub_23807C9CC;
      *(v29 + 7) = v14;
      v29[64] = 1;

      v8 += 4;
      v9 = v10;
      --v6;
    }

    while (v6);
  }

  else
  {
    v10 = 15;
    v22 = a2;
  }

  v30 = HIBYTE(v22) & 0xF;
  if ((v22 & 0x2000000000000000) == 0)
  {
    v30 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v10 >> 14 >= 4 * v30)
  {
  }

  else
  {
    v31 = sub_238154E8C();
    v33 = v32;
    v35 = v34;
    v37 = v36;

    v38 = MEMORY[0x2383E9380](v31, v33, v35, v37);
    v40 = v39;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_2380BB31C(0, *(v7 + 2) + 1, 1, v7);
    }

    v42 = *(v7 + 2);
    v41 = *(v7 + 3);
    if (v42 >= v41 >> 1)
    {
      v7 = sub_2380BB31C((v41 > 1), v42 + 1, 1, v7);
    }

    *(v7 + 2) = v42 + 1;
    v43 = &v7[40 * v42];
    *(v43 + 4) = v38;
    *(v43 + 5) = v40;
    *(v43 + 6) = 0;
    *(v43 + 7) = 0;
    v43[64] = 0;
  }

  return v7;
}

char *sub_238079B4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for LinkTapOverlayView();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA880, &qword_2381580F0);
  sub_238153FEC();
  v8 = *&v16[OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_textContainer];

  v9 = *&v7[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_textContainer];
  *&v7[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_textContainer] = v8;

  v10 = *&v7[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_tappables];
  *&v7[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_tappables] = a4;

  v11 = &v7[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text];
  v12 = *&v7[OBJC_IVAR____TtC17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90018LinkTapOverlayView_text + 8];
  *v11 = a2;
  *(v11 + 1) = a3;

  [v7 setUserInteractionEnabled_];
  sub_238153FEC();
  v13 = [objc_allocWithZone(MEMORY[0x277D75B80]) initWithTarget:v16 action:sel_didTapLabel_];

  v14 = v13;
  sub_238153FEC();
  [v14 setDelegate_];

  [v7 addGestureRecognizer_];
  return v7;
}

id sub_238079CF0()
{
  sub_23815416C();
  v0 = sub_23815418C();

  if (v0)
  {
    v1 = MEMORY[0x277D769A8];
  }

  else
  {
    sub_2381541BC();
    v2 = sub_23815418C();

    if (v2)
    {
      v1 = MEMORY[0x277D76A08];
    }

    else
    {
      sub_23815423C();
      v3 = sub_23815418C();

      if (v3)
      {
        v1 = MEMORY[0x277D76A20];
      }

      else
      {
        sub_23815424C();
        v4 = sub_23815418C();

        if (v4)
        {
          v1 = MEMORY[0x277D76A28];
        }

        else
        {
          sub_2381542CC();
          v5 = sub_23815418C();

          if (v5)
          {
            v1 = MEMORY[0x277D76988];
          }

          else
          {
            sub_23815417C();
            v6 = sub_23815418C();

            if (v6)
            {
              v1 = MEMORY[0x277D769D0];
            }

            else
            {
              sub_23815427C();
              v7 = sub_23815418C();

              if (v7)
              {
                v1 = MEMORY[0x277D76920];
              }

              else
              {
                sub_23815428C();
                v8 = sub_23815418C();

                if (v8)
                {
                  v1 = MEMORY[0x277D76938];
                }

                else
                {
                  sub_2381542AC();
                  v9 = sub_23815418C();

                  if (v9)
                  {
                    v1 = MEMORY[0x277D76940];
                  }

                  else
                  {
                    sub_2381542BC();
                    v10 = sub_23815418C();

                    if (v10)
                    {
                      v1 = MEMORY[0x277D76968];
                    }

                    else
                    {
                      sub_23815419C();
                      sub_23815418C();

                      v1 = MEMORY[0x277D76918];
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

  v11 = [objc_opt_self() preferredFontForTextStyle_];

  return v11;
}

void sub_238079F20()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA860, &unk_2381580E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_238157F20;
  v1 = *MEMORY[0x277D740A8];
  *(inited + 32) = *MEMORY[0x277D740A8];
  v2 = v1;
  v3 = sub_238079CF0();
  *(inited + 64) = sub_23807A3F8(0, &qword_27DEEA868, 0x277D74300);
  *(inited + 40) = v3;
  sub_2380EE3A0(inited);
  swift_setDeallocating();
  sub_238071284(inited + 32, &unk_27DEEA870, &qword_23815C110);
  v4 = objc_allocWithZone(MEMORY[0x277CCA898]);
  v5 = sub_238154C8C();
  type metadata accessor for Key(0);
  sub_23807C874(&qword_27DEEA190, type metadata accessor for Key);
  v6 = sub_238154C0C();

  v7 = [v4 initWithString:v5 attributes:v6];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA880, &qword_2381580F0);
  sub_238153FEC();
  v8 = [objc_allocWithZone(MEMORY[0x277D742D8]) initWithAttributedString_];
  v9 = *&v14[OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_textStorage];
  *&v14[OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_textStorage] = v8;

  sub_238153FEC();
  v10 = *&v14[OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_textStorage];
  v11 = v10;

  if (v10)
  {
    sub_238153FEC();
    v12 = *&v13[OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_layoutManager];

    [v11 addLayoutManager_];
  }

  else
  {
    __break(1u);
  }
}

id sub_23807A178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_layoutManager;
  *&v4[v9] = [objc_allocWithZone(MEMORY[0x277D74238]) init];
  v10 = OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_textContainer;
  v11 = [objc_allocWithZone(MEMORY[0x277D74278]) initWithSize_];
  *&v4[v10] = v11;
  *&v4[OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_textStorage] = 0;
  v12 = &v4[OBJC_IVAR____TtCV17DeviceDiscoveryUIP33_84B88BC285F07FBED29E105A4C9FE90014LinkTapOverlay11Coordinator_overlay];
  *v12 = a1;
  *(v12 + 1) = a2;
  *(v12 + 2) = a3;
  *(v12 + 3) = a4;

  [v11 setLineFragmentPadding_];
  [*&v4[v10] setLineBreakMode_];
  [*&v4[v10] setMaximumNumberOfLines_];
  [*&v4[v9] addTextContainer_];
  v14.receiver = v4;
  v14.super_class = type metadata accessor for LinkTapOverlay.Coordinator();
  return objc_msgSendSuper2(&v14, sel_init);
}

unint64_t sub_23807A2C0()
{
  result = qword_27DEEA888;
  if (!qword_27DEEA888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA888);
  }

  return result;
}

uint64_t sub_23807A31C()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_23807A354()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23807A37C()
{
  v1 = *(v0 + 40);

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_23807A3B4()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v1();
  return 1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23807A3F8(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

_OWORD *sub_23807A440(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_23807A454(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_23807A478(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8D0, &unk_238158120);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA328, &unk_23815F380);
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

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8E0, &unk_238157930);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[7];
    goto LABEL_7;
  }

  v16 = *(a1 + a3[8] + 8);
  if (v16 >= 0xFFFFFFFF)
  {
    LODWORD(v16) = -1;
  }

  return (v16 + 1);
}

uint64_t sub_23807A608(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8D0, &unk_238158120);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA328, &unk_23815F380);
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[6];
    }

    else
    {
      result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA8E0, &unk_238157930);
      if (*(*(result - 8) + 84) != a3)
      {
        *(a1 + a4[8] + 8) = (a2 - 1);
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

void sub_23807A780()
{
  sub_23807A8AC();
  if (v0 <= 0x3F)
  {
    sub_23807A910(319, &qword_27DEEA360, MEMORY[0x277CDFA28]);
    if (v1 <= 0x3F)
    {
      sub_23807A910(319, &qword_27DEEA910, MEMORY[0x277CDF3E0]);
      if (v2 <= 0x3F)
      {
        sub_23807A964();
        if (v3 <= 0x3F)
        {
          sub_23807A9F8();
          if (v4 <= 0x3F)
          {
            sub_23807AA8C();
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_23807A8AC()
{
  if (!qword_27DEEA900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA850, &qword_2381580D8);
    v0 = sub_23815380C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEA900);
    }
  }
}

void sub_23807A910(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_23815380C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_23807A964()
{
  if (!qword_27DEEA918)
  {
    type metadata accessor for _DDAskToAirDropManager();
    sub_23807C874(&qword_27DEEA920, type metadata accessor for _DDAskToAirDropManager);
    v0 = sub_2381539EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEA918);
    }
  }
}

void sub_23807A9F8()
{
  if (!qword_27DEEA928)
  {
    type metadata accessor for _DDPinPairingManager();
    sub_23807C874(&qword_27DEEA930, type metadata accessor for _DDPinPairingManager);
    v0 = sub_2381539EC();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEA928);
    }
  }
}

void sub_23807AA8C()
{
  if (!qword_27DEEA350)
  {
    v0 = sub_23815473C();
    if (!v1)
    {
      atomic_store(v0, &qword_27DEEA350);
    }
  }
}

unint64_t sub_23807AB00()
{
  result = qword_27DEEA9B8;
  if (!qword_27DEEA9B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA9A8, &qword_238158240);
    sub_2380711D4(&qword_27DEEA9C0, &qword_27DEEA9C8, &qword_238158248);
    sub_2380711D4(&unk_27DEEA9D0, &qword_27DEEA578, &unk_238157C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA9B8);
  }

  return result;
}

unint64_t sub_23807ABE4()
{
  result = qword_27DEEA9E0;
  if (!qword_27DEEA9E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEA9E0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_23807AC84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23807ACEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23807AD54()
{
  v1 = *(type metadata accessor for _DDDevicePickerEducationView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_238075BF8(v2);
}

double sub_23807ADC4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _DDDevicePickerEducationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_238075D40(a1);
}

uint64_t sub_23807AE28@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for _DDDevicePickerEducationView() - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));
  return sub_238075E8C(a1);
}

unint64_t sub_23807AE8C()
{
  result = qword_27DEEAA20;
  if (!qword_27DEEAA20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA08, &qword_238158268);
    sub_23807AF18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAA20);
  }

  return result;
}

unint64_t sub_23807AF18()
{
  result = qword_27DEEAA28;
  if (!qword_27DEEAA28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA30, &qword_238158280);
    sub_2380711D4(&qword_27DEEAA38, &qword_27DEEAA40, &qword_238158288);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAA28);
  }

  return result;
}

unint64_t sub_23807AFD0()
{
  result = qword_27DEEAA50;
  if (!qword_27DEEAA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA18, &qword_238158278);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAA50);
  }

  return result;
}

unint64_t sub_23807B04C()
{
  result = qword_27DEEAA58;
  if (!qword_27DEEAA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAA58);
  }

  return result;
}

uint64_t sub_23807B0A8(uint64_t a1, char *a2)
{
  v5 = *(type metadata accessor for _DDDevicePickerEducationView() - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_2380761E0(a1, a2, v6);
}

unint64_t sub_23807B128()
{
  result = qword_27DEEAA60;
  if (!qword_27DEEAA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA950, &qword_2381581B8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA958, &qword_2381581C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA08, &qword_238158268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA10, &qword_238158270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA18, &qword_238158278);
    sub_23807AE8C();
    sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270);
    sub_23807AFD0();
    sub_23807B04C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_2380711D4(&qword_27DEEAA68, &qword_27DEEAA70, &qword_2381582D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAA60);
  }

  return result;
}

uint64_t sub_23807B30C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA968, &qword_2381581D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23807B384()
{
  result = qword_27DEEAA88;
  if (!qword_27DEEAA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA940, &qword_2381581A8);
    sub_23807B43C();
    sub_2380711D4(&qword_27DEEAA98, &qword_27DEEAA80, &qword_238158318);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAA88);
  }

  return result;
}

unint64_t sub_23807B43C()
{
  result = qword_27DEEAA90;
  if (!qword_27DEEAA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA968, &qword_2381581D0);
    sub_23807B128();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA958, &qword_2381581C0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA08, &qword_238158268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA10, &qword_238158270);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAA18, &qword_238158278);
    sub_23807AE8C();
    sub_2380711D4(&qword_27DEEAA48, &qword_27DEEAA10, &qword_238158270);
    sub_23807AFD0();
    sub_23807B04C();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAA90);
  }

  return result;
}

unint64_t sub_23807B604()
{
  result = qword_27DEEAAA8;
  if (!qword_27DEEAAA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEA978, &qword_2381581E0);
    sub_2380711D4(&qword_27DEEAAB0, &qword_27DEEAAB8, &qword_238158370);
    sub_2380711D4(&qword_27DEEAAC0, &qword_27DEEAAC8, &qword_238158378);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAAA8);
  }

  return result;
}

unint64_t sub_23807B700()
{
  result = qword_27DEEAAF8;
  if (!qword_27DEEAAF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAAF0, &qword_2381583E0);
    sub_23807B7E4(&qword_27DEEAB00, &qword_27DEEAB08, &qword_2381583E8, sub_23807B868);
    sub_2380711D4(&unk_27DEEAB50, &qword_27DEEA450, &qword_238157AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAAF8);
  }

  return result;
}

uint64_t sub_23807B7E4(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23807B868()
{
  result = qword_27DEEAB10;
  if (!qword_27DEEAB10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAB18, &unk_2381583F0);
    sub_23807B920();
    sub_2380711D4(&unk_27DEEAB40, &qword_27DEEA580, &qword_238159B10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAB10);
  }

  return result;
}

unint64_t sub_23807B920()
{
  result = qword_27DEEAB20;
  if (!qword_27DEEAB20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAB28, &unk_238159E20);
    sub_2380711D4(&unk_27DEEAB30, &unk_27DEED150, &qword_238158400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAB20);
  }

  return result;
}

double sub_23807BA08(_OWORD *a1)
{
  result = 0.0;
  *(a1 + 169) = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_23807BA2C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAAB8, &qword_238158370);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_23807BA9C()
{
  result = qword_27DEEABB0;
  if (!qword_27DEEABB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAAE0, &unk_2381583D0);
    sub_23807B7E4(&qword_27DEEABB8, &qword_27DEEAB70, &qword_238158448, sub_23807BB80);
    sub_2380711D4(&qword_27DEEABE0, &qword_27DEEABE8, &qword_2381584C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEABB0);
  }

  return result;
}

unint64_t sub_23807BB80()
{
  result = qword_27DEEABC0;
  if (!qword_27DEEABC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAB60, &qword_238158408);
    sub_2380711D4(&qword_27DEEABC8, &qword_27DEEABD0, &qword_2381584B8);
    sub_2380711D4(&qword_27DEEABD8, &qword_27DEEAB68, &qword_238158410);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEABC0);
  }

  return result;
}

unint64_t sub_23807BC64()
{
  result = qword_27DEEABF8;
  if (!qword_27DEEABF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAC00, &qword_2381584C8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEABF8);
  }

  return result;
}

unint64_t sub_23807BCE8()
{
  result = qword_27DEEAC18;
  if (!qword_27DEEAC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAC18);
  }

  return result;
}

uint64_t sub_23807BD3C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_238070430(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23807BD80(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
    sub_238070430(a1, a2, a3 & 1);
  }
}

uint64_t sub_23807BE0C(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_238070490(result, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_23807BE50(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
    sub_238070490(a1, a2, a3 & 1);
  }
}

uint64_t sub_23807BEF4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_23807BF20(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for _DDDevicePickerEducationView();
  v6 = *(v2 + *(v5 + 36) + ((*(*(v5 - 8) + 80) + 16) & ~*(*(v5 - 8) + 80)) + 8);
  sub_238103770(a1, a2);
  return 0;
}

uint64_t sub_23807BFBC(uint64_t (*a1)(void))
{
  v3 = type metadata accessor for _DDDevicePickerEducationView();
  v4 = *(v1 + *(v3 + 36) + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)) + 8);
  return a1();
}

uint64_t objectdestroy_39Tm()
{
  v1 = type metadata accessor for _DDDevicePickerEducationView();
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = (v0 + v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DEEA9F0, &unk_238158250);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v6 = sub_238153F1C();
    v7 = *(v6 - 8);
    if (!(*(v7 + 48))(v0 + v3, 1, v6))
    {
      (*(v7 + 8))(v0 + v3, v6);
    }
  }

  else
  {
    v8 = *v5;
  }

  v9 = v1[5];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v10 = sub_238153F1C();
    v11 = *(v10 - 8);
    if (!(*(v11 + 48))(&v5[v9], 1, v10))
    {
      (*(v11 + 8))(&v5[v9], v10);
    }
  }

  else
  {
    v12 = *&v5[v9];
  }

  v13 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEA470, &unk_238157AC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = sub_238153A0C();
    (*(*(v14 - 8) + 8))(&v5[v13], v14);
  }

  else
  {
    v15 = *&v5[v13];
  }

  v16 = v1[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEEAA00, &qword_238158260);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = sub_2381537EC();
    (*(*(v17 - 8) + 8))(&v5[v16], v17);
  }

  else
  {
    v18 = *&v5[v16];
  }

  v19 = *&v5[v1[10] + 8];

  v20 = *&v5[v1[11] + 8];

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_23807C370()
{
  v1 = *(type metadata accessor for _DDDevicePickerEducationView() - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_2380721E4(v2);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23807C3E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23807C42C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_23807C488()
{
  result = qword_27DEEAC48;
  if (!qword_27DEEAC48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DEEAC50, &qword_238158548);
    sub_23807B384();
    sub_23807B43C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAC48);
  }

  return result;
}

unint64_t sub_23807C530()
{
  result = qword_27DEEAC58;
  if (!qword_27DEEAC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEEAC58);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_23807C5A4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_23807C5EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}