uint64_t sub_23BC5898C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1BFEC8, &qword_23BC58DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

unint64_t sub_23BC58A3C()
{
  result = qword_27E1BFED0;
  if (!qword_27E1BFED0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27E1BFED0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
    return MEMORY[0x2821FEB70](*a1);
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t _sSo20NSManagedObjectModelC015_SwiftData_CoreE0E011makeManagedbC03for10mergedWithABSg0dE06SchemaC_AGtF_0(uint64_t a1, void *a2)
{
  if (!a2)
  {
    sub_23BC58CDC();
    if (v7)
    {
      sub_23BC58A3C();
      goto LABEL_6;
    }

LABEL_9:
    sub_23BC5898C(v6);
    return 0;
  }

  v5[3] = sub_23BC58A3C();
  v5[0] = a2;
  v3 = a2;
  sub_23BC58CBC();
  __swift_destroy_boxed_opaque_existential_0(v5);
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (swift_dynamicCast())
  {
    return v5[0];
  }

  else
  {
    return 0;
  }
}

uint64_t _sSo20NSManagedObjectModelC015_SwiftData_CoreE0E011makeManagedbC03for10mergedWithABSgSay0dE0010PersistentC0_pXpG_AGtFZ_0(uint64_t a1, void *a2)
{
  if (!a2)
  {
    sub_23BC58CFC();
    sub_23BC58CEC();
    if (v7)
    {
      sub_23BC58A3C();
      goto LABEL_6;
    }

LABEL_9:
    sub_23BC5898C(v6);
    return 0;
  }

  sub_23BC58CFC();
  v5[3] = sub_23BC58A3C();
  v5[0] = a2;
  v3 = a2;
  sub_23BC58CCC();
  __swift_destroy_boxed_opaque_existential_0(v5);
  if (!v7)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (swift_dynamicCast())
  {
    return v5[0];
  }

  else
  {
    return 0;
  }
}