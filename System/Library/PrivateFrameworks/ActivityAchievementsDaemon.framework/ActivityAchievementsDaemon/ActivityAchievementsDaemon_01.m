uint64_t sub_221E50BBC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_221E50C24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_221E50C84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CFEA848, &qword_221E5E850);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_221E50CF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_221E50DD0()
{
  result = sub_221E56EA0();
  if (v1 <= 0x3F)
  {
    result = sub_221E511E8(319, qword_280FAFD20, 0x277CCD7E8);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_221E50E8C()
{
  sub_221E50F50(319, &unk_280FAFE40, &qword_280FAFD18, 0x277CCAE20);
  if (v0 <= 0x3F)
  {
    sub_221E50F50(319, &qword_280FAFE38, &qword_280FAFD10, 0x277CCADD0);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_221E50F50(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_221E511E8(255, a3, a4);
    v5 = sub_221E56E50();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_221E50FA8()
{
  result = qword_27CFEAA50[0];
  if (!qword_27CFEAA50[0])
  {
    type metadata accessor for DistanceSampleIntervalRecord(255);
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CFEAA50);
  }

  return result;
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

uint64_t sub_221E51070(uint64_t a1, uint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_221E510A8@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = objc_opt_self();
  v7 = [v6 meters];
  v8 = type metadata accessor for DistanceAccumulator(0);
  v9 = v8[9];
  sub_221E511E8(0, &qword_280FAFD18, 0x277CCAE20);
  sub_221E56E00();
  v10 = [v6 meters];
  v11 = a2 + v8[10];
  sub_221E56E00();
  *a2 = v5;
  *(a2 + 8) = 0;
  sub_221E50BBC(v4, a2 + v8[6], type metadata accessor for DistanceSample);
  *(a2 + v8[7]) = -1;
  result = sub_221E50BBC(v4, a2 + v8[8], type metadata accessor for DistanceSample);
  *(a2 + v8[11]) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_221E511E8(uint64_t a1, unint64_t *a2, uint64_t *a3)
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

uint64_t sub_221E51230(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_221E5128C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_221E512EC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
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

void sub_221E51404()
{
  type metadata accessor for DistanceSample(319);
  if (v0 <= 0x3F)
  {
    sub_221E50F50(319, &unk_280FAFE40, &qword_280FAFD18, 0x277CCAE20);
    if (v1 <= 0x3F)
    {
      sub_221E514D8();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_221E514D8()
{
  if (!qword_27CFEA928)
  {
    type metadata accessor for DistanceSampleIntervalRecord(255);
    v0 = sub_221E56FB0();
    if (!v1)
    {
      atomic_store(v0, &qword_27CFEA928);
    }
  }
}

uint64_t sub_221E51574(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_221E515C0()
{
  result = qword_27CFEAD70[0];
  if (!qword_27CFEAD70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CFEAD70);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_221E51688()
{
  result = qword_27CFEAE80;
  if (!qword_27CFEAE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEAE80);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0Tm(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t sub_221E51728()
{
  result = qword_27CFEAE88;
  if (!qword_27CFEAE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEAE88);
  }

  return result;
}

unint64_t sub_221E5177C()
{
  result = qword_27CFEAE90;
  if (!qword_27CFEAE90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEAE90);
  }

  return result;
}

unint64_t sub_221E517D0()
{
  result = qword_27CFEAE98;
  if (!qword_27CFEAE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEAE98);
  }

  return result;
}

unint64_t sub_221E51824()
{
  result = qword_27CFEAEA0[0];
  if (!qword_27CFEAEA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CFEAEA0);
  }

  return result;
}

uint64_t sub_221E5187C(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_221E51910(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_221E51A24()
{
  result = qword_27CFEB3B0[0];
  if (!qword_27CFEB3B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CFEB3B0);
  }

  return result;
}

unint64_t sub_221E51A7C()
{
  result = qword_27CFEB4C0;
  if (!qword_27CFEB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEB4C0);
  }

  return result;
}

unint64_t sub_221E51AD4()
{
  result = qword_27CFEB4C8[0];
  if (!qword_27CFEB4C8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CFEB4C8);
  }

  return result;
}

unint64_t sub_221E51B2C()
{
  result = qword_27CFEB550;
  if (!qword_27CFEB550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEB550);
  }

  return result;
}

unint64_t sub_221E51B84()
{
  result = qword_27CFEB558[0];
  if (!qword_27CFEB558[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CFEB558);
  }

  return result;
}

unint64_t sub_221E51BDC()
{
  result = qword_27CFEB5E0;
  if (!qword_27CFEB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEB5E0);
  }

  return result;
}

unint64_t sub_221E51C34()
{
  result = qword_27CFEB5E8[0];
  if (!qword_27CFEB5E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CFEB5E8);
  }

  return result;
}

unint64_t sub_221E51C8C()
{
  result = qword_27CFEB670;
  if (!qword_27CFEB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEB670);
  }

  return result;
}

unint64_t sub_221E51CE4()
{
  result = qword_27CFEB678;
  if (!qword_27CFEB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEB678);
  }

  return result;
}

unint64_t sub_221E51D3C()
{
  result = qword_27CFEB700;
  if (!qword_27CFEB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CFEB700);
  }

  return result;
}

unint64_t sub_221E51D94()
{
  result = qword_27CFEB708[0];
  if (!qword_27CFEB708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27CFEB708);
  }

  return result;
}

void ACHEarnedInstanceSyncIdentityFromEarnedInstance_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_221DDC000, v0, OS_LOG_TYPE_FAULT, "ACHEarnedInstanceEntity ConcreteSyncIdentity is nil %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void ACHTemplateSyncIdentityFromTemplate_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(&dword_221DDC000, v0, OS_LOG_TYPE_FAULT, "ACHTemplateEntity ConcreteSyncIdentity is nil %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}