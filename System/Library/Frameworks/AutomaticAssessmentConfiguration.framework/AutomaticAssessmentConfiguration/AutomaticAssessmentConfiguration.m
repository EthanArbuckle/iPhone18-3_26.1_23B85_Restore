id AEErrorUserInfo(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (AEErrorUserInfo_onceToken[0] != -1)
  {
    AEErrorUserInfo_cold_1();
  }

  v4 = *MEMORY[0x277CCA450];
  v5 = [v3 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
  if (!v5 || (v6 = v5, [v3 objectForKeyedSubscript:@"NSDescriptionKey"], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    if (a1 <= 2)
    {
      if (a1 == 1 || a1 == 2)
      {
        goto LABEL_12;
      }
    }

    else if (a1 == 3 || a1 == 4 || a1 == 5)
    {
LABEL_12:
      v8 = AELocalizedStringFromTableInBundle();
      [0 setObject:v8 forKeyedSubscript:v4];
    }
  }

  v9 = v3;
  v10 = v9;
  if ([0 count])
  {
    v11 = [MEMORY[0x277CBEB38] dictionaryWithDictionary:v9];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v12 = [0 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v23;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v23 != v14)
          {
            objc_enumerationMutation(0);
          }

          v16 = *(*(&v22 + 1) + 8 * i);
          v17 = [v11 objectForKeyedSubscript:v16];

          if (!v17)
          {
            v18 = [0 objectForKeyedSubscript:v16];
            [v11 setObject:v18 forKeyedSubscript:v16];
          }
        }

        v13 = [0 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v13);
    }

    v10 = [v11 copy];
  }

  v19 = [MEMORY[0x277CCA9B8] errorWithDomain:@"AEAssessmentErrorDomain" code:a1 userInfo:v10];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

id AEErrorUnderlyingError(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = *MEMORY[0x277CCA7E8];
  v10[0] = a2;
  v3 = MEMORY[0x277CBEAC0];
  v4 = a2;
  v5 = [v3 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  v6 = AEErrorUserInfo(a1, v5);

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

uint64_t __AEErrorUserInfo_block_invoke()
{
  AEErrorUserInfo_bundle = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_236DF3964(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for AEAssessmentError(0);
  sub_236DF407C(&qword_27DE848E0, type metadata accessor for AEAssessmentError);
  v3 = sub_236DF5484();
  v4 = *a2;
  v5 = sub_236DF54B4();
  if (!*(v3 + 16))
  {

    goto LABEL_7;
  }

  v7 = sub_236DF3F18(v5, v6);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
LABEL_7:

    return 0;
  }

  sub_236DF3F90(*(v3 + 56) + 32 * v7, v12);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE848E8, &qword_236DF5D60);
  if (swift_dynamicCast())
  {
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_236DF3AB4(uint64_t a1)
{
  v2 = sub_236DF407C(&qword_27DE848E0, type metadata accessor for AEAssessmentError);

  return MEMORY[0x28211CAD0](a1, v2);
}

uint64_t sub_236DF3B20(uint64_t a1)
{
  v2 = sub_236DF407C(&qword_27DE848E0, type metadata accessor for AEAssessmentError);

  return MEMORY[0x28211CA88](a1, v2);
}

uint64_t sub_236DF3B8C(void *a1, uint64_t a2)
{
  v4 = sub_236DF407C(&qword_27DE848E0, type metadata accessor for AEAssessmentError);
  v5 = a1;

  return MEMORY[0x28211CA70](v5, a2, v4);
}

uint64_t sub_236DF3C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_236DF407C(&qword_27DE848E0, type metadata accessor for AEAssessmentError);

  return MEMORY[0x28211CAB8](a1, a2, v4);
}

uint64_t sub_236DF3CBC()
{
  v2 = *v0;
  sub_236DF5524();
  sub_236DF54A4();
  return sub_236DF5534();
}

void *sub_236DF3D1C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_236DF3D38(uint64_t a1)
{
  v2 = sub_236DF407C(&qword_27DE84908, type metadata accessor for AEAssessmentError);

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_236DF3DA4(uint64_t a1)
{
  v2 = sub_236DF407C(&qword_27DE84908, type metadata accessor for AEAssessmentError);

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_236DF3E14(uint64_t a1)
{
  v2 = sub_236DF407C(&qword_27DE848E0, type metadata accessor for AEAssessmentError);

  return MEMORY[0x28211CA68](a1, v2);
}

uint64_t sub_236DF3E80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_236DF407C(&qword_27DE848E0, type metadata accessor for AEAssessmentError);

  return MEMORY[0x28211CA98](a1, a2, a3, v6);
}

unint64_t sub_236DF3F18(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_236DF5524();
  sub_236DF54C4();
  v6 = sub_236DF5534();

  return sub_236DF43BC(a1, a2, v6);
}

uint64_t sub_236DF3F90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t sub_236DF407C(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_236DF4240(uint64_t a1, unint64_t *a2)
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

unint64_t sub_236DF42D8()
{
  result = qword_27DE84930;
  if (!qword_27DE84930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE84930);
  }

  return result;
}

unint64_t sub_236DF43BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_236DF54E4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}