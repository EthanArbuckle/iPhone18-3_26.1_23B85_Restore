void *sub_1B728BDE4()
{
  if (qword_1EDAF8960 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF8968;
  os_unfair_lock_lock((qword_1EDAF8968 + 24));
  sub_1B75E5458((v0 + 16), v10);
  os_unfair_lock_unlock((v0 + 24));
  v1 = *(v10[0] + 16);

  v2 = [type metadata accessor for BankConnectMessagesManager() makeManager];
  v3 = qword_1EDAF9CD8;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = off_1EDAF9CE0;
  v5 = type metadata accessor for BankConnectEvaluationManager();
  v6 = objc_allocWithZone(v5);
  v10[3] = type metadata accessor for BankConnectService();
  v10[4] = &protocol witness table for BankConnectService;
  v10[0] = v4;
  *&v6[OBJC_IVAR____TtC10FinanceKit28BankConnectEvaluationManager_store] = v1;
  sub_1B719B06C(v10, &v6[OBJC_IVAR____TtC10FinanceKit28BankConnectEvaluationManager_discoveryCardReevaluator]);
  v9.receiver = v6;
  v9.super_class = v5;

  v7 = objc_msgSendSuper2(&v9, sel_init);
  __swift_destroy_boxed_opaque_existential_1(v10);
  return sub_1B728CED4(v2, v7, v1);
}

void __swiftcall FKBankConnectPassUpdateProcessor.init()(FKBankConnectPassUpdateProcessor *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_1B728C124(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B728C148, 0, 0);
}

uint64_t sub_1B728C148()
{
  v1 = sub_1B728BD78();
  v0[5] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_1B728C2E0;
    v4 = v0[2];
    v3 = v0[3];

    return sub_1B728A91C(v4, v3);
  }

  else
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v6 = sub_1B78000B8();
    __swift_project_value_buffer(v6, qword_1EDAF65B0);
    v7 = sub_1B7800098();
    v8 = sub_1B78011D8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1B7198000, v7, v8, "BankConnectPassUpdateProcessor does not exist; skipping pass deletion processing", v9, 2u);
      MEMORY[0x1B8CA7A40](v9, -1, -1);
    }

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1B728C2E0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B728D254, 0, 0);
}

uint64_t sub_1B728C564(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1B7800868();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1B728D258;

  return sub_1B728C124(v5, v7);
}

uint64_t sub_1B728C638(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B728C65C, 0, 0);
}

uint64_t sub_1B728C65C()
{
  v1 = sub_1B728BD78();
  v0[5] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = sub_1B728C7F4;
    v4 = v0[2];
    v3 = v0[3];

    return sub_1B728B47C(v4, v3);
  }

  else
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v6 = sub_1B78000B8();
    __swift_project_value_buffer(v6, qword_1EDAF65B0);
    v7 = sub_1B7800098();
    v8 = sub_1B78011D8();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1B7198000, v7, v8, "BankConnectPassUpdateProcessor does not exist; skipping pass deletion processing", v9, 2u);
      MEMORY[0x1B8CA7A40](v9, -1, -1);
    }

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1B728C7F4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B728C8F0, 0, 0);
}

uint64_t sub_1B728C8F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B728CAD8(int a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_1B7800868();
  v7 = v6;
  v3[4] = v6;
  a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_1B728CBAC;

  return sub_1B728C638(v5, v7);
}

uint64_t sub_1B728CBAC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v4 = *v0;

  if (v2)
  {
    v5 = *(v1 + 24);
    v5[2](v5);
    _Block_release(v5);
  }

  v6 = *(v4 + 8);

  return v6();
}

id FKBankConnectPassUpdateProcessor.init()()
{
  *(v0 + OBJC_IVAR___FKBankConnectPassUpdateProcessor____lazy_storage___processor) = 1;
  v2.super_class = FKBankConnectPassUpdateProcessor;
  return objc_msgSendSuper2(&v2, sel_init);
}

unint64_t type metadata accessor for FKBankConnectPassUpdateProcessor()
{
  result = qword_1EB9907E0;
  if (!qword_1EB9907E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB9907E0);
  }

  return result;
}

uint64_t sub_1B728CE20()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B723838C;

  return sub_1B728CAD8(v2, v3, v4);
}

void *sub_1B728CED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = type metadata accessor for BankConnectMessagesManager();
  v17 = &protocol witness table for BankConnectMessagesManager;
  *&v15 = a1;
  v6 = type metadata accessor for BankConnectEvaluationManager();
  v14[3] = v6;
  v14[4] = &off_1F2F630F8;
  v14[0] = a2;
  type metadata accessor for BankConnectPassUpdateProcessor();
  v7 = swift_allocObject();
  v8 = __swift_mutable_project_boxed_opaque_existential_1(v14, v6);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v11 + 16))(v10);
  v12 = *v10;
  v7[10] = v6;
  v7[11] = &off_1F2F630F8;
  v7[7] = v12;
  v7[13] = 0xD000000000000021;
  v7[14] = 0x80000001B7876FA0;
  v7[15] = 0xD00000000000001DLL;
  v7[16] = 0x80000001B7876FD0;
  sub_1B71E4C44(&v15, (v7 + 2));
  v7[12] = a3;
  __swift_destroy_boxed_opaque_existential_1(v14);
  return v7;
}

uint64_t sub_1B728D04C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_1B728D05C(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B728D0B4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B723838C;

  return sub_1B728C564(v2, v3, v4);
}

uint64_t sub_1B728D168(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B7201BB0;

  return sub_1B77E4864(a1, v4, v5, v6);
}

uint64_t RawBankConnectData.SupportedCapabilities.init(rawValue:)@<X0>(char *a1@<X8>)
{
  v2 = sub_1B7801D18();

  v4 = 8;
  if (v2 < 8)
  {
    v4 = v2;
  }

  *a1 = v4;
  return result;
}

void sub_1B728D39C(void *a1@<X8>)
{
  v2 = *v1;
  v3 = "scheduled-payments";
  v4 = "4f-ae5b-ef58636aa1a1";
  if (v2 != 6)
  {
    v4 = "da-9956-4a1769ca75d2";
  }

  v5 = "ce-b5b2-f451a02dbdaa";
  if (v2 != 4)
  {
    v5 = "09-a67a-beb31cf3b464";
  }

  if (*v1 <= 5u)
  {
    v4 = v5;
  }

  v6 = "82-80db-b19522b86b29";
  if (v2 != 2)
  {
    v6 = "93-b89e-b7e974a05e7b";
  }

  if (*v1)
  {
    v3 = "f4-9604-04092216df15";
  }

  if (*v1 > 1u)
  {
    v3 = v6;
  }

  if (*v1 <= 3u)
  {
    v7 = v3;
  }

  else
  {
    v7 = v4;
  }

  *a1 = 0xD000000000000024;
  a1[1] = v7 | 0x8000000000000000;
}

unsigned __int8 *_s10FinanceKit18RawBankConnectDataO21SupportedCapabilitiesO08filteredH0SayAEGvgZ_0()
{
  v11[3] = &_s10FinanceKit11FeatureFlagVN_0;
  v11[4] = sub_1B721D3DC();
  LOBYTE(v11[0]) = 8;
  v0 = sub_1B77FFDC8();
  __swift_destroy_boxed_opaque_existential_1(v11);
  v1 = byte_1F2F41DB0;
  if ((v0 & 1) == 0)
  {
    v3 = 0;
    v1 = MEMORY[0x1E69E7CC0];
    do
    {
      v4 = byte_1F2F41DB0[v3 + 32];
      if (v4 > 3)
      {
        if (byte_1F2F41DB0[v3 + 32] <= 5u)
        {
          v6 = 0x80000001B7872E40;
          if (v4 == 4)
          {
            if (0x80000001B7872E40 != 0x80000001B7872E10)
            {
              goto LABEL_25;
            }

            goto LABEL_4;
          }

LABEL_24:
          if (0x80000001B7872E40 != v6)
          {
            goto LABEL_25;
          }

          goto LABEL_4;
        }

        if (v4 == 6)
        {
          if (0x80000001B7872E40 != 0x80000001B7872E70)
          {
            goto LABEL_25;
          }
        }

        else if (0x80000001B7872E40 != 0x80000001B7872EA0)
        {
          goto LABEL_25;
        }
      }

      else
      {
        if (byte_1F2F41DB0[v3 + 32] > 1u)
        {
          if (v4 == 2)
          {
            if (0x80000001B7872E40 != 0x80000001B7872DB0)
            {
              goto LABEL_25;
            }

            goto LABEL_4;
          }

          v6 = 0x80000001B7872DE0;
          goto LABEL_24;
        }

        if (byte_1F2F41DB0[v3 + 32])
        {
          v5 = 0x80000001B7872D80;
        }

        else
        {
          v5 = 0x80000001B7872D50;
        }

        if (0x80000001B7872E40 != v5)
        {
LABEL_25:
          v7 = sub_1B78020F8();

          if ((v7 & 1) == 0)
          {
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v11[0] = v1;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1B71FDB20(0, *(v1 + 2) + 1, 1);
              v1 = v11[0];
            }

            v10 = *(v1 + 2);
            v9 = *(v1 + 3);
            if (v10 >= v9 >> 1)
            {
              sub_1B71FDB20((v9 > 1), v10 + 1, 1);
              v1 = v11[0];
            }

            *(v1 + 2) = v10 + 1;
            v1[v10 + 32] = v4;
          }

          goto LABEL_5;
        }
      }

LABEL_4:

LABEL_5:
      ++v3;
    }

    while (v3 != 8);
  }

  return v1;
}

unint64_t sub_1B728D788()
{
  result = qword_1EB9907E8;
  if (!qword_1EB9907E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9907E8);
  }

  return result;
}

unint64_t sub_1B728D7E0()
{
  result = qword_1EB9907F0;
  if (!qword_1EB9907F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9907F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9907F0);
  }

  return result;
}

uint64_t _s21SupportedCapabilitiesOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s21SupportedCapabilitiesOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B728D994()
{
  result = qword_1EB990800;
  if (!qword_1EB990800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990800);
  }

  return result;
}

uint64_t Order.DisplayStatusValues.init(order:orderContent:contentItem:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v102 = a1;
  v103 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990808);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v89 - v7;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990810);
  MEMORY[0x1EEE9AC00](v96);
  v10 = &v89 - v9;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990818);
  v11 = MEMORY[0x1EEE9AC00](v97);
  v99 = &v89 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990820);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v93 = &v89 - v15;
  v92 = type metadata accessor for Order.ShippingFulfillment.StatusValues(0);
  MEMORY[0x1EEE9AC00](v92);
  v94 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v89 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v18);
  v91 = &v89 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v101 = &v89 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v95 = &v89 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v100 = &v89 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v89 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990830);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = &v89 - v32;
  v34 = type metadata accessor for Order.PickupFulfillment.StatusValues(0);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v89 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a3;
  if ((~*a3 & 0x7000000000000007) != 0)
  {
    v89 = v10;
    v90 = a4;
    v39 = v102;
    v38 = v103;
    if ((v37 & 0x4000000000000000) != 0)
    {
      v50 = ManagedOrderReturn.status.getter();
      ManagedECommerceOrderContent.status.getter(&v104);
      v51 = v104;
      v52 = [v39 isMarkedAsComplete];
      v53 = [v39 isMarkedAsCompleteModificationDate];
      if (v53)
      {
        v54 = v53;
        sub_1B77FF928();
        sub_1B7290634(v37);

        v55 = sub_1B77FF988();
        (*(*(v55 - 8) + 56))(v20, 0, 1, v55);
      }

      else
      {
        sub_1B7290634(v37);

        v63 = sub_1B77FF988();
        (*(*(v63 - 8) + 56))(v20, 1, 1, v63);
      }

      v64 = v89;
      v65 = *(v96 + 80);
      *v89 = v51;
      v64[1] = v50;
      sub_1B722376C(v20, &v64[v65], &qword_1EB98EBD0);
      v66 = v64[1];
      if (v52 && (v67 = sub_1B77FF988(), v68 = *(v67 - 8), (*(v68 + 48))(&v64[v65], 1, v67) != 1))
      {
        v70 = v99;
        (*(v68 + 32))(v99, &v64[v65], v67);
        swift_storeEnumTagMultiPayload();
      }

      else
      {
        v69 = v99;
        *v99 = v66;
        v70 = v69;
        swift_storeEnumTagMultiPayload();
        sub_1B7205418(&v64[v65], &qword_1EB98EBD0);
      }

      v71 = v98;
      sub_1B722376C(v70, v98, &qword_1EB990818);
      sub_1B722376C(v71, v90, &qword_1EB990818);
    }

    else if (v37 < 0)
    {
      v56 = v102;
      v57 = v38;
      sub_1B7290664(v37);
      v58 = ManagedOrderPickupFulfillment.status.getter();
      Order.Fulfillment.DisplayStatus<>.init(order:orderContent:pickupStatus:)(v56, v57, v58, v33);
      ManagedOrderPickupFulfillment.pickupWindow.getter(v30);
      v59 = [v37 & 0x3FFFFFFFFFFFFFFFLL pickedUpDate];
      if (v59)
      {
        v60 = v95;
        v61 = v59;
        sub_1B77FF928();
        sub_1B7290634(v37);
        sub_1B7290634(v37);

        v62 = 0;
      }

      else
      {
        sub_1B7290634(v37);
        sub_1B7290634(v37);
        v62 = 1;
        v60 = v95;
      }

      v83 = sub_1B77FF988();
      v84 = *(*(v83 - 8) + 56);
      v84(v60, v62, 1, v83);
      v85 = *(v34 + 20);
      v86 = type metadata accessor for Order.FulfillmentWindow(0);
      (*(*(v86 - 8) + 56))(&v36[v85], 1, 1, v86);
      v87 = *(v34 + 24);
      v84(&v36[v87], 1, 1, v83);
      sub_1B722376C(v33, v36, &qword_1EB990830);
      sub_1B7213740(v30, &v36[v85], &qword_1EB990828);
      sub_1B7213740(v95, &v36[v87], &qword_1EB98EBD0);
      sub_1B7290694(v36, v90, type metadata accessor for Order.PickupFulfillment.StatusValues);
    }

    else
    {
      v40 = v102;
      v41 = v38;
      sub_1B7290664(v37);
      v42 = ManagedOrderShippingFulfillment.status.getter();
      v43 = ManagedOrderShippingFulfillment.shippingType.getter();
      v44 = v93;
      Order.Fulfillment.DisplayStatus<>.init(order:orderContent:shippingStatus:shippingType:)(v40, v41, v42, v43 & 1, v93);
      ManagedOrderShippingFulfillment.estimatedDeliveryWindow.getter(v100);
      v45 = [v37 deliveryDate];
      if (v45)
      {
        v46 = v101;
        v47 = v45;
        sub_1B77FF928();

        v48 = 0;
        v49 = v91;
      }

      else
      {
        v48 = 1;
        v49 = v91;
        v46 = v101;
      }

      v72 = sub_1B77FF988();
      v73 = *(*(v72 - 8) + 56);
      v73(v46, v48, 1, v72);
      v74 = [v37 shippedDate];
      if (v74)
      {
        v75 = v74;
        sub_1B77FF928();
        sub_1B7290634(v37);
        sub_1B7290634(v37);

        v76 = 0;
      }

      else
      {
        sub_1B7290634(v37);
        sub_1B7290634(v37);
        v76 = 1;
      }

      v73(v49, v76, 1, v72);
      v77 = v92;
      v78 = *(v92 + 20);
      v79 = type metadata accessor for Order.FulfillmentWindow(0);
      v80 = v94;
      (*(*(v79 - 8) + 56))(&v94[v78], 1, 1, v79);
      v81 = *(v77 + 24);
      v73(v80 + v81, 1, 1, v72);
      v82 = *(v77 + 28);
      v73(v80 + v82, 1, 1, v72);
      sub_1B722376C(v44, v80, &qword_1EB990820);
      sub_1B7213740(v100, v80 + v78, &qword_1EB990828);
      sub_1B7213740(v101, v80 + v81, &qword_1EB98EBD0);
      sub_1B7213740(v49, v80 + v82, &qword_1EB98EBD0);
      sub_1B7290694(v80, v90, type metadata accessor for Order.ShippingFulfillment.StatusValues);
    }
  }

  else
  {
    Order.Fulfillment.DisplayStatus<>.init(order:orderContent:)(v102, v103, v8);
    sub_1B722376C(v8, a4, &qword_1EB990808);
  }

  type metadata accessor for Order.DisplayStatusValues(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Order.DisplayStatusValues.init(orderContent:contentItem:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v54 = a1;
  v55 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990818);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = &v49 - v5;
  v6 = type metadata accessor for RawOrderReturn();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RawOrderShippingFulfillment();
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v50 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v52 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v51 = &v49 - v16;
  v17 = type metadata accessor for RawECommerceOrderContent(0);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v49 - v21;
  v23 = type metadata accessor for RawOrderPickupFulfillment();
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v49 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990838);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v49 - v30;
  sub_1B7205588(a2, &v49 - v30, &qword_1EB990838);
  v32 = type metadata accessor for RawECommerceOrderContent.ContentItem(0);
  if ((*(*(v32 - 8) + 48))(v31, 1, v32) == 1)
  {
    v33 = v54;
    sub_1B729075C(v54, v22, type metadata accessor for RawECommerceOrderContent);
    Order.Fulfillment.DisplayStatus<>.init(orderContent:)(v22, v55);
    sub_1B7205418(a2, &qword_1EB990838);
    sub_1B72906FC(v33, type metadata accessor for RawECommerceOrderContent);
  }

  else
  {
    v34 = a2;
    v35 = v54;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B7290694(v31, v8, type metadata accessor for RawOrderReturn);
      sub_1B729075C(v35, v22, type metadata accessor for RawECommerceOrderContent);
      v57 = v8[8];
      v36 = v53;
      Order.Fulfillment.DisplayStatus<>.init(orderContent:returnStatus:)(v22, &v57, v53);
      sub_1B7205418(v34, &qword_1EB990838);
      sub_1B72906FC(v35, type metadata accessor for RawECommerceOrderContent);
      sub_1B72906FC(v8, type metadata accessor for RawOrderReturn);
      sub_1B722376C(v36, v55, &qword_1EB990818);
    }

    else
    {
      type metadata accessor for RawOrderFulfillment();
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        sub_1B7290694(v31, v28, type metadata accessor for RawOrderPickupFulfillment);
        v37 = v35;
        sub_1B729075C(v35, v22, type metadata accessor for RawECommerceOrderContent);
        sub_1B729075C(v28, v26, type metadata accessor for RawOrderPickupFulfillment);
        sub_1B729075C(v22, v20, type metadata accessor for RawECommerceOrderContent);
        v56 = v26[8];
        v38 = v55;
        Order.Fulfillment.DisplayStatus<>.init(orderContent:pickupStatus:)(v20, &v56, v55);
        v39 = v51;
        RawOrderPickupFulfillment.pickupWindow.getter(v51);
        sub_1B7205418(v34, &qword_1EB990838);
        sub_1B72906FC(v37, type metadata accessor for RawECommerceOrderContent);
        sub_1B72906FC(v22, type metadata accessor for RawECommerceOrderContent);
        sub_1B72906FC(v28, type metadata accessor for RawOrderPickupFulfillment);
        v40 = v52;
        sub_1B7205588(&v26[*(v23 + 56)], v52, &qword_1EB98EBD0);
        sub_1B72906FC(v26, type metadata accessor for RawOrderPickupFulfillment);
        v41 = type metadata accessor for Order.PickupFulfillment.StatusValues(0);
        v42 = *(v41 + 20);
        v43 = type metadata accessor for Order.FulfillmentWindow(0);
        (*(*(v43 - 8) + 56))(&v38[v42], 1, 1, v43);
        v44 = *(v41 + 24);
        v45 = sub_1B77FF988();
        (*(*(v45 - 8) + 56))(&v38[v44], 1, 1, v45);
        sub_1B7213740(v39, &v38[v42], &qword_1EB990828);
        sub_1B7213740(v40, &v38[v44], &qword_1EB98EBD0);
      }

      else
      {
        v46 = v50;
        sub_1B7290694(v31, v50, type metadata accessor for RawOrderShippingFulfillment);
        sub_1B729075C(v35, v22, type metadata accessor for RawECommerceOrderContent);
        v47 = v49;
        sub_1B729075C(v46, v49, type metadata accessor for RawOrderShippingFulfillment);
        Order.ShippingFulfillment.StatusValues.init(orderContent:fulfillment:)(v22, v47, v55);
        sub_1B7205418(v34, &qword_1EB990838);
        sub_1B72906FC(v35, type metadata accessor for RawECommerceOrderContent);
        sub_1B72906FC(v46, type metadata accessor for RawOrderShippingFulfillment);
      }
    }
  }

  type metadata accessor for Order.DisplayStatusValues(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t Order.DisplayStatusValuesFormatter.format(_:now:)(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v31 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990818);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v28 - v3;
  v5 = type metadata accessor for Order.ShippingFulfillment.StatusFormatter(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Order.ShippingFulfillment.StatusValues(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Order.PickupFulfillment.StatusFormatter(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Order.PickupFulfillment.StatusValues(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990808);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v28 - v18;
  v20 = type metadata accessor for Order.DisplayStatusValues(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v28 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B729075C(v31, v22, type metadata accessor for Order.DisplayStatusValues);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1B722376C(v22, v4, &qword_1EB990818);
      v24 = Order.Fulfillment.DisplayStatus<>.localizedTitle.getter();
      v25 = v4;
      v26 = &qword_1EB990818;
      goto LABEL_8;
    }

    sub_1B7290694(v22, v10, type metadata accessor for Order.ShippingFulfillment.StatusValues);
    sub_1B729075C(v29, v7, type metadata accessor for FormatterConfiguration);
    v7[*(v5 + 20)] = 1;
    v7[*(v5 + 24)] = 1;
    v24 = Order.ShippingFulfillment.StatusFormatter.format(_:now:)(v10, v30);
    sub_1B72906FC(v7, type metadata accessor for Order.ShippingFulfillment.StatusFormatter);
    sub_1B72906FC(v10, type metadata accessor for Order.ShippingFulfillment.StatusValues);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1B722376C(v22, v19, &qword_1EB990808);
      v24 = Order.Fulfillment.DisplayStatus<>.localizedTitle.getter();
      v25 = v19;
      v26 = &qword_1EB990808;
LABEL_8:
      sub_1B7205418(v25, v26);
      return v24;
    }

    sub_1B7290694(v22, v16, type metadata accessor for Order.PickupFulfillment.StatusValues);
    sub_1B729075C(v29, v13, type metadata accessor for FormatterConfiguration);
    v13[*(v11 + 20)] = 1;
    v13[*(v11 + 24)] = 1;
    v24 = Order.PickupFulfillment.StatusFormatter.format(_:now:)(v16, v30);
    sub_1B72906FC(v13, type metadata accessor for Order.PickupFulfillment.StatusFormatter);
    sub_1B72906FC(v16, type metadata accessor for Order.PickupFulfillment.StatusValues);
  }

  return v24;
}

BOOL static Order.DisplayStatusValuesFormatter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (MEMORY[0x1B8CA3D90]())
  {
    v4 = type metadata accessor for FormatterConfiguration();
    if (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) != 0 && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B728F200@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B728F290(uint64_t a1)
{
  v2 = sub_1B72907C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B728F2CC(uint64_t a1)
{
  v2 = sub_1B72907C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.DisplayStatusValuesFormatter.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990840);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72907C4();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration();
  sub_1B7290818(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Order.DisplayStatusValuesFormatter.hash(into:)()
{
  sub_1B77FFAF8();
  sub_1B7290818(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B7290818(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7290818(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  return sub_1B7800768();
}

uint64_t Order.DisplayStatusValuesFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B7290818(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B7290818(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7290818(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t Order.DisplayStatusValuesFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990868);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Order.DisplayStatusValuesFormatter(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72907C4();
  sub_1B78023C8();
  if (!v2)
  {
    v12 = v15;
    sub_1B7290818(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    v13 = v17;
    sub_1B7801E48();
    (*(v16 + 8))(v8, v6);
    sub_1B7290694(v13, v11, type metadata accessor for FormatterConfiguration);
    sub_1B7290694(v11, v12, type metadata accessor for Order.DisplayStatusValuesFormatter);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B728F984@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Order.DisplayStatusValuesFormatter.format(_:now:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B728F9AC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v8 = Order.DisplayStatusValuesFormatter.format(_:now:)(a1, v7);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B728FAAC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990840);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72907C4();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration();
  sub_1B7290818(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B728FC24()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B7290818(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B7290818(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7290818(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B728FD74()
{
  sub_1B77FFAF8();
  sub_1B7290818(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B7290818(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7290818(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  return sub_1B7800768();
}

uint64_t sub_1B728FEB4()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B7290818(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B7290818(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B7290818(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

BOOL _s10FinanceKit5OrderV11FulfillmentO23NotificationFormatStyleV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (MEMORY[0x1B8CA3D90]())
  {
    v4 = type metadata accessor for FormatterConfiguration();
    if (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) != 0 && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)))
    {
      return 1;
    }
  }

  return result;
}

uint64_t _s10FinanceKit5OrderV19DisplayStatusValuesO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v44 = a1;
  v45 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990818);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v43 = &v42 - v3;
  v4 = type metadata accessor for Order.ShippingFulfillment.StatusValues(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v42 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Order.PickupFulfillment.StatusValues(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990808);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v42 - v10;
  v12 = type metadata accessor for Order.DisplayStatusValues(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v42 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v42 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v42 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9908F8);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v42 - v26;
  v28 = *(v25 + 56);
  sub_1B729075C(v44, &v42 - v26, type metadata accessor for Order.DisplayStatusValues);
  sub_1B729075C(v45, &v27[v28], type metadata accessor for Order.DisplayStatusValues);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_1B729075C(v27, v15, type metadata accessor for Order.DisplayStatusValues);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v30 = &qword_1EB990818;
        v31 = v15;
        goto LABEL_16;
      }

      v37 = &qword_1EB990818;
      v38 = &v27[v28];
      v39 = v43;
      sub_1B722376C(v38, v43, &qword_1EB990818);
      v34 = sub_1B767C840(v15, v39);
      sub_1B7205418(v39, &qword_1EB990818);
      v40 = v15;
      goto LABEL_19;
    }

    sub_1B729075C(v27, v18, type metadata accessor for Order.DisplayStatusValues);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v32 = &v27[v28];
      v33 = v42;
      sub_1B7290694(v32, v42, type metadata accessor for Order.ShippingFulfillment.StatusValues);
      v34 = _s10FinanceKit5OrderV19ShippingFulfillmentV12StatusValuesV2eeoiySbAG_AGtFZ_0(v18, v33);
      sub_1B72906FC(v33, type metadata accessor for Order.ShippingFulfillment.StatusValues);
      v35 = v18;
      v36 = type metadata accessor for Order.ShippingFulfillment.StatusValues;
LABEL_10:
      sub_1B72906FC(v35, v36);
LABEL_20:
      sub_1B72906FC(v27, type metadata accessor for Order.DisplayStatusValues);
      return v34 & 1;
    }

    sub_1B72906FC(v18, type metadata accessor for Order.ShippingFulfillment.StatusValues);
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1B729075C(v27, v23, type metadata accessor for Order.DisplayStatusValues);
      if (swift_getEnumCaseMultiPayload())
      {
        v30 = &qword_1EB990808;
        v31 = v23;
LABEL_16:
        sub_1B7205418(v31, v30);
        goto LABEL_17;
      }

      v37 = &qword_1EB990808;
      sub_1B722376C(&v27[v28], v11, &qword_1EB990808);
      v34 = sub_1B767C508(v23, v11);
      sub_1B7205418(v11, &qword_1EB990808);
      v40 = v23;
LABEL_19:
      sub_1B7205418(v40, v37);
      goto LABEL_20;
    }

    sub_1B729075C(v27, v21, type metadata accessor for Order.DisplayStatusValues);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B7290694(&v27[v28], v8, type metadata accessor for Order.PickupFulfillment.StatusValues);
      v34 = static Order.PickupFulfillment.StatusValues.== infix(_:_:)(v21, v8);
      sub_1B72906FC(v8, type metadata accessor for Order.PickupFulfillment.StatusValues);
      v35 = v21;
      v36 = type metadata accessor for Order.PickupFulfillment.StatusValues;
      goto LABEL_10;
    }

    sub_1B72906FC(v21, type metadata accessor for Order.PickupFulfillment.StatusValues);
  }

LABEL_17:
  sub_1B7205418(v27, &qword_1EB9908F8);
  v34 = 0;
  return v34 & 1;
}

void sub_1B7290634(uint64_t a1)
{
  if ((~a1 & 0x7000000000000007) != 0)
  {
    sub_1B729064C(a1);
  }
}

void sub_1B729064C(uint64_t a1)
{
  v1 = 0xBFFFFFFFFFFFFFFFLL;
  if ((a1 & 0x4000000000000000) == 0)
  {
    v1 = 0x3FFFFFFFFFFFFFFFLL;
  }
}

uint64_t sub_1B7290664(uint64_t a1)
{
  if ((~a1 & 0x7000000000000007) != 0)
  {
    return sub_1B729067C(a1);
  }

  return a1;
}

id sub_1B729067C(uint64_t a1)
{
  v1 = 0xBFFFFFFFFFFFFFFFLL;
  if ((a1 & 0x4000000000000000) == 0)
  {
    v1 = 0x3FFFFFFFFFFFFFFFLL;
  }

  return (v1 & a1);
}

uint64_t sub_1B7290694(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B72906FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B729075C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1B72907C4()
{
  result = qword_1EB990848;
  if (!qword_1EB990848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990848);
  }

  return result;
}

uint64_t sub_1B7290818(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7290880(uint64_t a1)
{
  result = sub_1B7290818(&qword_1EB990878, type metadata accessor for Order.DisplayStatusValuesFormatter);
  *(a1 + 8) = result;
  return result;
}

void sub_1B72909F8()
{
  sub_1B7290A94();
  if (v0 <= 0x3F)
  {
    type metadata accessor for Order.PickupFulfillment.StatusValues(319);
    if (v1 <= 0x3F)
    {
      type metadata accessor for Order.ShippingFulfillment.StatusValues(319);
      if (v2 <= 0x3F)
      {
        sub_1B7290B64();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1B7290A94()
{
  if (!qword_1EB9908B0)
  {
    sub_1B7290B10();
    v0 = type metadata accessor for Order.Fulfillment.DisplayStatus();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB9908B0);
    }
  }
}

unint64_t sub_1B7290B10()
{
  result = qword_1EB9908B8;
  if (!qword_1EB9908B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9908B8);
  }

  return result;
}

void sub_1B7290B64()
{
  if (!qword_1EB9908C0)
  {
    sub_1B7290B10();
    sub_1B7290BE0();
    v0 = type metadata accessor for Order.Fulfillment.DisplayStatus();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB9908C0);
    }
  }
}

unint64_t sub_1B7290BE0()
{
  result = qword_1EB9908C8;
  if (!qword_1EB9908C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9908C8);
  }

  return result;
}

uint64_t sub_1B7290C5C()
{
  result = type metadata accessor for FormatterConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B7290CDC()
{
  result = qword_1EB9908E0;
  if (!qword_1EB9908E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9908E0);
  }

  return result;
}

unint64_t sub_1B7290D34()
{
  result = qword_1EB9908E8;
  if (!qword_1EB9908E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9908E8);
  }

  return result;
}

unint64_t sub_1B7290D8C()
{
  result = qword_1EB9908F0;
  if (!qword_1EB9908F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9908F0);
  }

  return result;
}

unint64_t RecurringPayment.Status.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1B7290ED0()
{
  result = qword_1EB990900;
  if (!qword_1EB990900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990900);
  }

  return result;
}

unint64_t sub_1B7290F28()
{
  result = qword_1EB990908;
  if (!qword_1EB990908)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB990910);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990908);
  }

  return result;
}

void sub_1B7290F9C(void *a1@<X8>)
{
  v2 = *v1;
  a1[3] = MEMORY[0x1E69E6530];
  *a1 = v2;
}

unint64_t sub_1B7290FC4()
{
  result = qword_1EB990918;
  if (!qword_1EB990918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990918);
  }

  return result;
}

FinanceKit::FinanceTrialNamespace_optional __swiftcall FinanceTrialNamespace.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t FinanceTrialNamespace.rawValue.getter()
{
  v1 = 0xD000000000000018;
  if (*v0 == 2)
  {
    v1 = 0x5F45434E414E4946;
  }

  if (*v0 <= 1u)
  {
    return 0x5F45434E414E4946;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B7291104()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

uint64_t sub_1B72911CC()
{
  sub_1B7800798();
}

uint64_t sub_1B7291280()
{
  sub_1B78022F8();
  sub_1B7800798();

  return sub_1B7802368();
}

void sub_1B7291350(uint64_t *a1@<X8>)
{
  v2 = 0xEE004749464E4F43;
  v3 = 0xEF504F4F4B534F42;
  v4 = 0x5F45434E414E4946;
  if (*v1 != 2)
  {
    v4 = 0xD000000000000018;
    v3 = 0x80000001B7872F00;
  }

  if (*v1)
  {
    v2 = 0xEF58494E454F4850;
  }

  if (*v1 <= 1u)
  {
    v5 = 0x5F45434E414E4946;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v3;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t FinanceTrialFactor.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FinanceTrialFactor.rawValue.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

void *sub_1B7291488@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t sub_1B7291494@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1B72914A0()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t sub_1B72914F4()
{
  sub_1B78022F8();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t _s10FinanceKit18RawBankConnectDataO36RegisterToNotificationEventsResponseV2eeoiySbAE_AEtFZ_0(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B78020F8();
  }
}

uint64_t sub_1B7291570(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, char a5)
{
  v64 = sub_1B77FEA08();
  v10 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDAF6568 != -1)
  {
    swift_once();
  }

  v13 = sub_1B78000B8();
  v14 = __swift_project_value_buffer(v13, qword_1EDAF6570);

  v65 = v14;
  v15 = sub_1B7800098();
  v16 = sub_1B78011B8();

  v17 = os_log_type_enabled(v15, v16);
  v63 = v10;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v67.value._countAndFlagsBits = v19;
    *v18 = 136315394;
    *(v18 + 4) = sub_1B71A3EF8(a3, a4, &v67.value._countAndFlagsBits);
    *(v18 + 12) = 2080;
    *(v18 + 14) = sub_1B71A3EF8(a1, a2, &v67.value._countAndFlagsBits);
    _os_log_impl(&dword_1B7198000, v15, v16, "Checking Trial for %s support for country: %s.", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v19, -1, -1);
    MEMORY[0x1B8CA7A40](v18, -1, -1);
  }

  v67.value._countAndFlagsBits = a3;
  v67.value._object = a4;
  v66 = a5;
  v20.rawValue._countAndFlagsBits = &v67;
  v20.rawValue._object = &v66;
  v22 = FinanceTrialProvider.stringValue(for:in:)(v20, v21);
  if (!v22.value._object)
  {
    v53 = sub_1B7800098();
    v54 = sub_1B78011D8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_1B7198000, v53, v54, "No supported country codes were found.", v55, 2u);
      MEMORY[0x1B8CA7A40](v55, -1, -1);
    }

    return 1;
  }

  v23 = sub_1B7800098();
  v24 = sub_1B78011B8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v67.value._countAndFlagsBits = v26;
    *v25 = 136315138;

    v27 = sub_1B71A3EF8(v22.value._countAndFlagsBits, v22.value._object, &v67.value._countAndFlagsBits);

    *(v25 + 4) = v27;
    _os_log_impl(&dword_1B7198000, v23, v24, "Obtained supported country codes: %s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v26);
    MEMORY[0x1B8CA7A40](v26, -1, -1);
    MEMORY[0x1B8CA7A40](v25, -1, -1);
  }

  v67 = v22;

  sub_1B77FE9E8();
  sub_1B7205210();
  v28 = sub_1B78017C8();
  (*(v63 + 8))(v12, v64);

  v67.value._countAndFlagsBits = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  sub_1B723E0F4();
  v29 = sub_1B78007C8();
  v31 = v30;

  v67.value._countAndFlagsBits = 44;
  v67.value._object = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v32);
  v61 = &v67;

  v34 = sub_1B7292F48(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B72936E4, (&v62 - 4), v29, v31, v33);
  v35 = sub_1B7800098();
  v36 = sub_1B78011B8();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v67.value._countAndFlagsBits = v38;
    *v37 = 136315138;
    v39 = MEMORY[0x1B8CA4F60](v34, MEMORY[0x1E69E67B0]);
    v41 = sub_1B71A3EF8(v39, v40, &v67.value._countAndFlagsBits);

    *(v37 + 4) = v41;
    _os_log_impl(&dword_1B7198000, v35, v36, "Evaluating against: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x1B8CA7A40](v38, -1, -1);
    MEMORY[0x1B8CA7A40](v37, -1, -1);
  }

  v42 = *(v34 + 16);
  if (!v42)
  {

    return 1;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v43 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v43 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v44 = (v34 + 56);
  v45 = v42 + 1;
  while (--v45)
  {
    if (*(v44 - 1) != a1 || *v44 != a2 || *(v44 - 3) >> 16 != 0 || *(v44 - 2) >> 16 != v43)
    {
      v44 += 4;
      LOBYTE(v61) = 0;
      if ((sub_1B7802048() & 1) == 0)
      {
        continue;
      }
    }

    v49 = sub_1B7800098();
    v50 = sub_1B78011B8();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v67.value._countAndFlagsBits = v52;
      *v51 = 136315138;
      *(v51 + 4) = sub_1B71A3EF8(a1, a2, &v67.value._countAndFlagsBits);
      _os_log_impl(&dword_1B7198000, v49, v50, "Country code: %s is supported.", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v52);
      MEMORY[0x1B8CA7A40](v52, -1, -1);
      MEMORY[0x1B8CA7A40](v51, -1, -1);
    }

    return 1;
  }

  v57 = sub_1B7800098();
  v58 = sub_1B78011D8();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v67.value._countAndFlagsBits = v60;
    *v59 = 136315138;
    *(v59 + 4) = sub_1B71A3EF8(a1, a2, &v67.value._countAndFlagsBits);
    _os_log_impl(&dword_1B7198000, v57, v58, "Country code: %s is not supported.", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x1B8CA7A40](v60, -1, -1);
    MEMORY[0x1B8CA7A40](v59, -1, -1);
  }

  return 0;
}

Swift::Bool __swiftcall FinanceTrialProviding.isCountryCodeSupported(_:forTrialFactor:namespace:)(Swift::String _, FinanceKit::FinanceTrialFactor forTrialFactor, FinanceKit::FinanceTrialNamespace a3)
{
  v5 = v3;
  v6 = a3;
  object = forTrialFactor.rawValue._object;
  countAndFlagsBits = forTrialFactor.rawValue._countAndFlagsBits;
  v9 = _._object;
  v99 = _._countAndFlagsBits;
  v90 = sub_1B77FEA08();
  v88 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v85 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1B78000B8();
  v98 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v87 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v85 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v86 = &v85 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v91 = &v85 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v93 = &v85 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v85 - v23;
  v25 = *countAndFlagsBits;
  v26 = countAndFlagsBits[1];
  v92 = *object;
  v94 = v6;
  v95 = v4;
  v96 = v5;
  sub_1B7292EA0(&v85 - v23);

  v27 = sub_1B7800098();
  v28 = sub_1B78011B8();

  v29 = os_log_type_enabled(v27, v28);
  v85 = v16;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v101 = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_1B71A3EF8(v25, v26, &v101);
    *(v30 + 12) = 2080;
    *(v30 + 14) = sub_1B71A3EF8(v99, v9, &v101);
    _os_log_impl(&dword_1B7198000, v27, v28, "Checking Trial for %s support for country: %s.", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v31, -1, -1);
    MEMORY[0x1B8CA7A40](v30, -1, -1);
  }

  v97 = *(v98 + 8);
  v97(v24, v11);
  v32 = v11;
  v101 = v25;
  v102 = v26;
  v100 = v92;
  v33 = (*(v96 + 8))(&v101, &v100, v94, v96);
  v35 = v93;
  if (!v34)
  {
    v43 = v87;
    sub_1B7292EA0(v87);
    v44 = sub_1B7800098();
    v45 = sub_1B78011D8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1B7198000, v44, v45, "No supported country codes were found.", v46, 2u);
      MEMORY[0x1B8CA7A40](v46, -1, -1);
    }

    v97(v43, v32);
    return 1;
  }

  v36 = v33;
  v37 = v34;
  sub_1B7292EA0(v93);
  v38 = sub_1B7800098();
  v39 = sub_1B78011B8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v101 = v41;
    *v40 = 136315138;

    v42 = sub_1B71A3EF8(v36, v37, &v101);

    *(v40 + 4) = v42;
    v32 = v11;
    _os_log_impl(&dword_1B7198000, v38, v39, "Obtained supported country codes: %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v41);
    MEMORY[0x1B8CA7A40](v41, -1, -1);
    MEMORY[0x1B8CA7A40](v40, -1, -1);
  }

  v97(v35, v11);
  v48 = v88;
  v47 = v89;
  v101 = v36;
  v102 = v37;

  sub_1B77FE9E8();
  sub_1B7205210();
  v49 = sub_1B78017C8();
  (*(v48 + 8))(v47, v90);

  v101 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  sub_1B723E0F4();
  v50 = sub_1B78007C8();
  v52 = v51;

  v101 = 44;
  v102 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v53);
  v84 = &v101;

  v55 = sub_1B7292F48(0x7FFFFFFFFFFFFFFFLL, 1, sub_1B7293360, (&v85 - 4), v50, v52, v54);
  v56 = v91;
  sub_1B7292EA0(v91);

  v57 = sub_1B7800098();
  v58 = sub_1B78011B8();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v101 = v60;
    *v59 = 136315138;
    v61 = MEMORY[0x1B8CA4F60](v55, MEMORY[0x1E69E67B0]);
    v63 = v32;
    v64 = sub_1B71A3EF8(v61, v62, &v101);

    *(v59 + 4) = v64;
    v32 = v63;
    _os_log_impl(&dword_1B7198000, v57, v58, "Evaluating against: %s", v59, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v60);
    MEMORY[0x1B8CA7A40](v60, -1, -1);
    MEMORY[0x1B8CA7A40](v59, -1, -1);

    v65 = v91;
  }

  else
  {

    v65 = v56;
  }

  v97(v65, v32);
  v66 = *(v55 + 16);
  if (!v66)
  {

LABEL_33:

    return 1;
  }

  if ((v9 & 0x2000000000000000) != 0)
  {
    v67 = HIBYTE(v9) & 0xF;
  }

  else
  {
    v67 = v99 & 0xFFFFFFFFFFFFLL;
  }

  v68 = (v55 + 56);
  v69 = v66 + 1;
  while (--v69)
  {
    if (*(v68 - 1) != v99 || *v68 != v9 || *(v68 - 3) >> 16 != 0 || *(v68 - 2) >> 16 != v67)
    {
      v68 += 4;
      LOBYTE(v84) = 0;
      if ((sub_1B7802048() & 1) == 0)
      {
        continue;
      }
    }

    v73 = v86;
    sub_1B7292EA0(v86);

    v74 = sub_1B7800098();
    v75 = sub_1B78011B8();

    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v101 = v77;
      *v76 = 136315138;
      *(v76 + 4) = sub_1B71A3EF8(v99, v9, &v101);
      _os_log_impl(&dword_1B7198000, v74, v75, "Country code: %s is supported.", v76, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v77);
      MEMORY[0x1B8CA7A40](v77, -1, -1);
      MEMORY[0x1B8CA7A40](v76, -1, -1);
    }

    v97(v73, v32);
    goto LABEL_33;
  }

  v79 = v85;
  sub_1B7292EA0(v85);

  v80 = sub_1B7800098();
  v81 = sub_1B78011D8();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v101 = v83;
    *v82 = 136315138;
    *(v82 + 4) = sub_1B71A3EF8(v99, v9, &v101);
    _os_log_impl(&dword_1B7198000, v80, v81, "Country code: %s is not supported.", v82, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v83);
    MEMORY[0x1B8CA7A40](v83, -1, -1);
    MEMORY[0x1B8CA7A40](v82, -1, -1);
  }

  v97(v79, v32);

  return 0;
}

Swift::String_optional __swiftcall FinanceTrialProvider.stringValue(for:in:)(FinanceKit::FinanceTrialFactor a1, FinanceKit::FinanceTrialNamespace in)
{
  v2 = [objc_opt_self() clientWithIdentifier_];
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();

  v5 = [v2 levelForFactor:v3 withNamespaceName:v4];

  if (!v5)
  {
    goto LABEL_5;
  }

  v6 = [v5 stringValue];
  if (!v6)
  {

LABEL_5:
    v12 = 0;
    v11 = 0;
    goto LABEL_6;
  }

  v7 = v6;
  v8 = sub_1B7800868();
  v10 = v9;

  v11 = v10;
  v12 = v8;
LABEL_6:
  result.value._object = v11;
  result.value._countAndFlagsBits = v12;
  return result;
}

Swift::String_optional __swiftcall FinanceTrialProvider.filePathValue(for:in:)(FinanceKit::FinanceTrialFactor a1, FinanceKit::FinanceTrialNamespace in)
{
  v2 = [objc_opt_self() clientWithIdentifier_];
  v3 = sub_1B7800838();
  v4 = sub_1B7800838();

  v5 = [v2 levelForFactor:v3 withNamespaceName:v4];

  if (!v5)
  {
    goto LABEL_8;
  }

  v6 = [v5 fileValue];
  if (!v6)
  {
LABEL_7:

LABEL_8:
    v14 = 0;
    v13 = 0;
    goto LABEL_9;
  }

  v7 = v6;
  if (([v6 hasPath] & 1) == 0 || (v8 = objc_msgSend(v7, sel_path)) == 0)
  {

    goto LABEL_7;
  }

  v9 = v8;
  v10 = sub_1B7800868();
  v12 = v11;

  v13 = v12;
  v14 = v10;
LABEL_9:
  result.value._object = v13;
  result.value._countAndFlagsBits = v14;
  return result;
}

void FinanceTrialProvider.experimentIdentifiers(for:)(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() clientWithIdentifier_];
  v3 = sub_1B7800838();

  v4 = [v2 experimentIdentifiersWithNamespaceName_];

  if (v4)
  {
    v5 = [v4 experimentId];
    v6 = sub_1B7800868();
    v8 = v7;

    v9 = [v4 treatmentId];
    v10 = sub_1B7800868();
    v12 = v11;

    v13 = [v4 deploymentId];
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v10 = 0;
    v12 = 0;
    v13 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v8;
  *(a1 + 16) = v10;
  *(a1 + 24) = v12;
  *(a1 + 32) = v13;
}

void FinanceTrialProvider.rolloutIdentifiers(for:)(uint64_t *a1@<X8>)
{
  v2 = [objc_opt_self() clientWithIdentifier_];
  v3 = sub_1B7800838();

  v4 = [v2 rolloutIdentifiersWithNamespaceName_];

  if (v4)
  {
    v5 = [v4 rolloutId];
    v6 = sub_1B7800868();
    v8 = v7;

    v9 = [v4 deploymentId];
    v10 = [v4 factorPackId];
    v11 = sub_1B7800868();
    v13 = v12;

    v14 = [v4 rampId];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1B7800868();
      v18 = v17;
    }

    else
    {

      v16 = 0;
      v18 = 0;
    }

    *a1 = v6;
    a1[1] = v8;
    a1[2] = v9;
    a1[3] = v11;
    a1[4] = v13;
    a1[5] = v16;
    a1[6] = v18;
  }

  else
  {
    a1[6] = 0;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }
}

uint64_t sub_1B7292EA0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EDAF6568 != -1)
  {
    swift_once();
  }

  v2 = sub_1B78000B8();
  v3 = __swift_project_value_buffer(v2, qword_1EDAF6570);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_1B7292F48@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x1E69E7CC0];
    }

    v7 = sub_1B7800AC8();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = sub_1B723E848(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = sub_1B723E848((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x1E69E7CC0];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = sub_1B7800AA8();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = sub_1B78009B8();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = sub_1B78009B8();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = sub_1B7800AC8();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = sub_1B723E848(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = sub_1B7800AC8();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = sub_1B723E848(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = sub_1B723E848((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = sub_1B78009B8();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B7293308(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B78020F8() & 1;
  }
}

unint64_t sub_1B7293380()
{
  result = qword_1EB990920;
  if (!qword_1EB990920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990920);
  }

  return result;
}

unint64_t sub_1B72933D8()
{
  result = qword_1EB990928;
  if (!qword_1EB990928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990928);
  }

  return result;
}

uint64_t sub_1B729343C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B7293484(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B7293530(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
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

uint64_t sub_1B7293578(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

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

uint64_t getEnumTagSinglePayload for RawApplePayMerchantTokenUsageInformation.PastPayment.SummaryItem(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for RawApplePayMerchantTokenUsageInformation.PastPayment.SummaryItem(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1B729368C(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B78020F8() & 1;
  }
}

Swift::Bool __swiftcall isFinanceFeatureEnabled(_:)(FinanceKit::FinanceFeatureFlag a1)
{
  v1 = *a1;
  v5 = &_s10FinanceKit11FeatureFlagVN_0;
  v6 = sub_1B721D3DC();
  v4[0] = v1;
  v2 = sub_1B77FFDC8();
  __swift_destroy_boxed_opaque_existential_1(v4);
  return v2 & 1;
}

uint64_t FinanceFeatureFlag.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

unint64_t sub_1B72937E4()
{
  result = qword_1EB990930;
  if (!qword_1EB990930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990930);
  }

  return result;
}

uint64_t _s22TransactionForInsightsV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 14;
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

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s22TransactionForInsightsV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
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
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

const char *sub_1B7293998()
{
  result = "FoundInApp";
  switch(*v0)
  {
    case 1:
      result = "BoskoopAPI";
      break;
    case 2:
      result = "CredentialSync";
      break;
    case 3:
      result = "ScheduledPayments";
      break;
    case 4:
      result = "SyncTransactions";
      break;
    case 5:
      result = "ExtractedOrders";
      break;
    case 6:
      result = "OrderSchemaVersionTwo";
      break;
    case 7:
      result = "BankCredentialsSync";
      break;
    case 8:
      result = "BackgroundRefreshReminders";
      break;
    case 9:
      result = "AppleCardFinancialLearningLab";
      break;
    case 0xA:
      result = "WPCClassificationService";
      break;
    case 0xB:
      result = "ClassifyNonPOSTransactions";
      break;
    case 0xC:
      result = "ImportUnconnectedTransactionsFromWallet";
      break;
    case 0xD:
      result = "FoundInInsights";
      break;
    case 0xE:
      result = "FoundInBiomeDonation";
      break;
    default:
      return result;
  }

  return result;
}

uint64_t BankConnectService.termsAndConditions(withInstitutionID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for BankConnectService.Message();
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7293B88, 0, 0);
}

uint64_t sub_1B7293B88()
{
  v1 = v0[7];
  v2 = v0[4];
  *v1 = v0[3];
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1B7293C64;
  v4 = v0[7];
  v5 = v0[2];

  return sub_1B726FE48(v5, v4);
}

uint64_t sub_1B7293C64()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 72) = v0;

  sub_1B7267DAC(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7293DC8, 0, 0);
}

uint64_t sub_1B7293DC8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t BankConnectService.termsAndConditionsURL(forTermsAndConditionsID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v4[6] = type metadata accessor for BankConnectService.Message();
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B7293EC4, 0, 0);
}

uint64_t sub_1B7293EC4()
{
  v1 = v0[7];
  v2 = v0[4];
  *v1 = v0[3];
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1B7293FA0;
  v4 = v0[7];
  v5 = v0[2];

  return sub_1B7270610(v5, v4);
}

uint64_t sub_1B7293FA0()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 72) = v0;

  sub_1B7267DAC(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7294FC8, 0, 0);
}

uint64_t BankConnectService.updateTermsAndConditions(withTermsAndConditionsID:reviewedAt:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[14] = type metadata accessor for BankConnectService.Message();
  v4[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B729419C, 0, 0);
}

uint64_t sub_1B729419C()
{
  v1 = v0[15];
  v2 = v0[12];
  v4 = v0[10];
  v3 = v0[11];
  v0[16] = *(v0[13] + 16);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990938) + 48);
  *v1 = v4;
  *(v1 + 1) = v3;
  v6 = sub_1B77FF988();
  (*(*(v6 - 8) + 16))(&v1[v5], v2, v6);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B7294294, 0, 0);
}

uint64_t sub_1B7294294()
{
  v1 = v0[16];
  v0[2] = v0;
  v0[3] = sub_1B7294338;
  v2 = swift_continuation_init();
  sub_1B7236A04(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B7294338()
{
  v1 = *(*v0 + 48);
  *(*v0 + 136) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B72944C4;
  }

  else
  {
    v2 = sub_1B7294454;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7294454()
{
  sub_1B7267DAC(*(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B72944C4()
{
  sub_1B7267DAC(*(v0 + 120));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7294534(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v4[5] = type metadata accessor for BankConnectService.Message();
  v5 = swift_task_alloc();
  v6 = *v3;
  v4[6] = v5;
  v4[7] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B72945D0, 0, 0);
}

uint64_t sub_1B72945D0()
{
  v1 = v0[6];
  v2 = v0[4];
  *v1 = v0[3];
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1B72946AC;
  v4 = v0[6];
  v5 = v0[2];

  return sub_1B726FE48(v5, v4);
}

uint64_t sub_1B72946AC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 72) = v0;

  sub_1B7267DAC(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7294810, 0, 0);
}

uint64_t sub_1B7294810()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B7294874(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v4[5] = type metadata accessor for BankConnectService.Message();
  v5 = swift_task_alloc();
  v6 = *v3;
  v4[6] = v5;
  v4[7] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B7294910, 0, 0);
}

uint64_t sub_1B7294910()
{
  v1 = v0[6];
  v2 = v0[4];
  *v1 = v0[3];
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_1B72949EC;
  v4 = v0[6];
  v5 = v0[2];

  return sub_1B7270610(v5, v4);
}

uint64_t sub_1B72949EC()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 72) = v0;

  sub_1B7267DAC(v2);
  if (!v0)
  {

    v4 = *(v3 + 8);

    __asm { BRAA            X1, X16 }
  }

  return MEMORY[0x1EEE6DFA0](sub_1B7294FCC, 0, 0);
}

uint64_t sub_1B7294B50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7201BB0;

  return BankConnectService.updateTermsAndConditions(withTermsAndConditionsID:reviewedAt:)(a1, a2, a3);
}

uint64_t dispatch thunk of BankConnectTermsAndConditionsProviding.termsAndConditions(withInstitutionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B7201BB0;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of BankConnectTermsAndConditionsProviding.termsAndConditionsURL(forTermsAndConditionsID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B723838C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of BankConnectTermsAndConditionsProviding.updateTermsAndConditions(withTermsAndConditionsID:reviewedAt:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1B723838C;

  return v13(a1, a2, a3, a4, a5);
}

void sub_1B7294FD0(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 accountDescription];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1B7800868();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

void sub_1B7295038(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (*(a1 + 8))
  {
    v3 = sub_1B7800838();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  [v2 setAccountDescription_];
}

void sub_1B72950A8(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15 - v9;
  sub_1B7205588(a1, &v15 - v9, &qword_1EB98EBD0);
  v11 = *a2;
  v12 = sub_1B77FF988();
  v13 = *(v12 - 8);
  v14 = 0;
  if ((*(v13 + 48))(v10, 1, v12) != 1)
  {
    v14 = sub_1B77FF8B8();
    (*(v13 + 8))(v10, v12);
  }

  [v11 *a5];
}

id ManagedAccount.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedAccount.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedAccount.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedAccount.__allocating_init(_:consent:context:)(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_1B7297524(a1, a2, a3);

  return v5;
}

void ManagedAccount.creditLimit.setter(void *a1)
{
  if (a1[4])
  {
    v3 = a1[1];
    v2 = a1[2];
    v4 = HIDWORD(*a1);
    v5 = HIWORD(*a1);
    v8 = *a1;
    v9 = v4;
    v10 = v5;
    v11 = v3;
    v12 = v2;
    v6 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];

    [v7 setCreditLimitAmountValue_];
  }

  else
  {

    [v1 setCreditLimitAmountValue_];
  }
}

void sub_1B72954A0(void *a1, SEL *a2)
{
  if (a1[4])
  {
    v3 = a1[2];
    v4 = a1[1];
    v5 = HIDWORD(*a1);
    v6 = HIWORD(*a1);
    v11 = *a1;
    v12 = v5;
    v13 = v6;
    v14 = v4;
    v15 = v3;
    v7 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
    [v2 *a2];

    v8 = sub_1B7800838();

    [v2 setCurrency_];
  }

  else
  {
    v9 = *a2;

    [v2 v9];
  }
}

id ManagedAccount.__allocating_init(_:consent:migratedAccountsProvider:context:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  v5 = v4;
  v41 = a3;
  v9 = sub_1B77FFA18();
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = (&v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for RawBankConnectData.Account(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = objc_allocWithZone(v5);
  v39 = a4;
  v22 = [v21 initWithContext_];
  sub_1B7297B90(a1, v20);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B729885C(v20, v14, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v23 = *v14;
    v24 = v14[1];

    v25 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    v26 = v14;
  }

  else
  {
    sub_1B729885C(v20, v17, type metadata accessor for RawBankConnectData.AssetAccount);
    v23 = *v17;
    v24 = v17[1];

    v25 = type metadata accessor for RawBankConnectData.AssetAccount;
    v26 = v17;
  }

  sub_1B7298F20(v26, v25);
  v27 = [a2 institutionObject];
  v28 = [v27 id];

  v29 = sub_1B7800868();
  v31 = v30;

  v40[0] = v23;
  v40[1] = v24;
  v40[2] = v29;
  v40[3] = v31;
  v32 = v41;
  v33 = v38;
  sub_1B72959A0(v40, v41, v11);
  if (v33)
  {

    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_1B7298F20(a1, type metadata accessor for RawBankConnectData.Account);
  }

  else
  {

    v34 = sub_1B77FF9B8();
    (*(v36 + 8))(v11, v37);
    [v22 setId_];

    _s10FinanceKit14ManagedAccountC6update_7consent07withRawD0yAC_AA0C7ConsentCAA0H15BankConnectDataO0D0OtFZ_0(v22, a2, a1);
    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_1B7298F20(a1, type metadata accessor for RawBankConnectData.Account);
  }

  return v22;
}

void sub_1B72959A0(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v32 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v29 - v9;
  v11 = *a1;
  v12 = a1[1];
  v14 = a1[2];
  v13 = a1[3];
  v16 = a2[3];
  v15 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v16);
  v30 = v11;
  v31 = v14;
  v35 = v11;
  v36 = v12;
  v17 = v12;
  v37 = v14;
  v38 = v13;
  (*(v15 + 8))(&v35, v16, v15);
  if (v3)
  {
    v39 = v3;
    v18 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991110);
    if (swift_dynamicCast())
    {

      if (qword_1EDAF6588 != -1)
      {
        swift_once();
      }

      v19 = sub_1B78000B8();
      __swift_project_value_buffer(v19, qword_1EDAF6590);

      v20 = sub_1B7800098();
      v21 = sub_1B78011B8();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v34 = v23;
        v35 = 0;
        *v22 = 136315138;
        v36 = 0xE000000000000000;

        sub_1B7801A78();
        MEMORY[0x1B8CA4D30](0xD00000000000002BLL, 0x80000001B7875720);
        MEMORY[0x1B8CA4D30](v30, v17);
        MEMORY[0x1B8CA4D30](0xD000000000000011, 0x80000001B7875750);
        MEMORY[0x1B8CA4D30](v31, v13);
        MEMORY[0x1B8CA4D30](41, 0xE100000000000000);

        v24 = sub_1B71A3EF8(v35, v36, &v34);

        *(v22 + 4) = v24;
        _os_log_impl(&dword_1B7198000, v20, v21, "Found multiple public account IDs for account: %s. Generating a new one.", v22, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v23);
        MEMORY[0x1B8CA7A40](v23, -1, -1);
        MEMORY[0x1B8CA7A40](v22, -1, -1);
      }

      sub_1B77FFA08();
    }

    else
    {
    }
  }

  else
  {
    v25 = v32;
    sub_1B7205588(v10, v32, &unk_1EB993A10);
    v26 = sub_1B77FFA18();
    v27 = *(v26 - 8);
    v28 = *(v27 + 48);
    if (v28(v25, 1, v26) == 1)
    {
      sub_1B77FFA08();
      sub_1B7205418(v10, &unk_1EB993A10);
      if (v28(v25, 1, v26) != 1)
      {
        sub_1B7205418(v25, &unk_1EB993A10);
      }
    }

    else
    {
      sub_1B7205418(v10, &unk_1EB993A10);
      (*(v27 + 32))(v33, v25, v26);
    }
  }
}

uint64_t Account.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v140 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v136 = &v114 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v114 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v114 - v9;
  v11 = sub_1B77FFA18();
  v137 = *(v11 - 8);
  v138 = v11;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v114 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v114 - v15;
  v139 = type metadata accessor for Account(0);
  v17 = MEMORY[0x1EEE9AC00](v139);
  v19 = &v114 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v114 - v20;
  ManagedAccount.accountType.getter(&v144);
  v22 = v144;
  v23 = [a1 id];
  if (v22)
  {
    sub_1B77FF9E8();

    v24 = [a1 displayName];
    v25 = sub_1B7800868();
    v131 = v26;
    v132 = v25;

    v27 = [a1 accountDescription];
    if (v27)
    {
      v28 = v27;
      v29 = sub_1B7800868();
      v129 = v30;
      v130 = v29;
    }

    else
    {
      v129 = 0;
      v130 = 0;
    }

    v37 = [a1 institutionName];
    v38 = sub_1B7800868();
    v127 = v39;
    v128 = v38;

    v40 = [a1 currency];
    v126 = sub_1B7800868();
    v125 = v41;

    v42 = [a1 creditLimitAmountValue];
    if (v42)
    {
      v43 = v42;
      [v42 decimalValue];
      v123 = *(&v141 + 1);
      v124 = v141;
      v122 = v142;
      v44 = [a1 currency];
      v121 = sub_1B7800868();
      v120 = v45;
    }

    else
    {
      v124 = 0;
      v123 = 0;
      v122 = 0;
      v121 = 0;
      v120 = 0;
    }

    v57 = [a1 nextPaymentDate];
    if (v57)
    {
      v58 = v57;
      sub_1B77FF928();

      v59 = 0;
    }

    else
    {
      v59 = 1;
    }

    v133 = v14;
    v68 = sub_1B77FF988();
    v69 = *(v68 - 8);
    v70 = *(v69 + 56);
    v134 = v8;
    v119 = v68;
    v118 = v70;
    v117 = v69 + 56;
    (v70)(v8, v59, 1);
    v71 = [a1 minimumPaymentAmountValue];
    v135 = 0u;
    if (v71)
    {
      v72 = v71;
      [v71 decimalValue];
      v73 = v142;
      v74 = v141;
      v75 = [a1 currency];
      v76 = sub_1B7800868();
      v78 = v77;

      CurrencyAmount.init(_:currencyCode:)(v74, *(&v74 + 1), v73, v76, v78, &v141);
      v115 = v142;
      v116 = v141;
      v79 = v143;
    }

    else
    {
      v79 = 0;
      v116 = 0uLL;
      v115 = 0uLL;
    }

    v80 = [a1 overduePaymentAmountValue];
    if (v80)
    {
      v81 = v80;
      [v80 decimalValue];
      LODWORD(v135) = v142;
      v82 = v141;
      v83 = [a1 currency];
      v84 = sub_1B7800868();
      v85 = v19;
      v86 = v79;
      v88 = v87;

      v89 = v88;
      v79 = v86;
      v19 = v85;
      CurrencyAmount.init(_:currencyCode:)(v82, *(&v82 + 1), v135, v84, v89, &v141);

      v114 = v142;
      v135 = v141;
      v90 = v143;
    }

    else
    {
      v90 = 0;
      v114 = 0u;
    }

    v91 = v136;
    v92 = v134;
    v93 = [a1 openingDate];
    if (v93)
    {
      v94 = v93;
      sub_1B77FF928();

      v95 = 0;
    }

    else
    {
      v95 = 1;
    }

    v118(v91, v95, 1, v119);
    (*(v137 + 32))(v19, v133, v138);
    v96 = type metadata accessor for LiabilityAccount(0);
    v97 = &v19[v96[5]];
    v98 = v131;
    *v97 = v132;
    *(v97 + 1) = v98;
    v99 = &v19[v96[6]];
    v100 = v129;
    *v99 = v130;
    *(v99 + 1) = v100;
    v101 = &v19[v96[8]];
    v102 = v125;
    *v101 = v126;
    v101[1] = v102;
    v103 = &v19[v96[7]];
    v104 = v127;
    *v103 = v128;
    *(v103 + 1) = v104;
    v105 = &v19[v96[9]];
    v106 = v123;
    *v105 = v124;
    *(v105 + 1) = v106;
    v107 = v121;
    *(v105 + 2) = v122;
    *(v105 + 3) = v107;
    *(v105 + 4) = v120;
    v108 = type metadata accessor for AccountCreditInformation(0);
    sub_1B7205340(v92, &v105[v108[5]]);
    v109 = &v105[v108[6]];
    v110 = v115;
    *v109 = v116;
    *(v109 + 1) = v110;
    *(v109 + 4) = v79;
    v111 = &v105[v108[7]];
    v112 = v114;
    *v111 = v135;
    *(v111 + 1) = v112;
    *(v111 + 4) = v90;
    sub_1B7205340(v91, &v19[v96[10]]);
    swift_storeEnumTagMultiPayload();
    v21 = v19;
  }

  else
  {
    sub_1B77FF9E8();

    v31 = [a1 displayName];
    v136 = sub_1B7800868();
    *&v135 = v32;

    v33 = [a1 accountDescription];
    if (v33)
    {
      v34 = v33;
      v35 = sub_1B7800868();
      v133 = v36;
      v134 = v35;
    }

    else
    {
      v133 = 0;
      v134 = 0;
    }

    v46 = [a1 institutionName];
    v47 = sub_1B7800868();
    v49 = v48;

    v50 = [a1 currency];
    v51 = sub_1B7800868();
    v53 = v52;

    v54 = [a1 openingDate];
    if (v54)
    {
      v55 = v54;
      sub_1B77FF928();

      v56 = 0;
    }

    else
    {
      v56 = 1;
    }

    v60 = sub_1B77FF988();
    (*(*(v60 - 8) + 56))(v10, v56, 1, v60);
    (*(v137 + 32))(v21, v16, v138);
    v61 = type metadata accessor for AssetAccount(0);
    v62 = &v21[v61[5]];
    v63 = v134;
    v64 = v135;
    *v62 = v136;
    *(v62 + 1) = v64;
    v65 = &v21[v61[6]];
    *v65 = v63;
    *(v65 + 1) = v133;
    v66 = &v21[v61[8]];
    *v66 = v51;
    v66[1] = v53;
    v67 = &v21[v61[7]];
    *v67 = v47;
    v67[1] = v49;
    sub_1B7205340(v10, &v21[v61[9]]);
    swift_storeEnumTagMultiPayload();
  }

  return sub_1B729885C(v21, v140, type metadata accessor for Account);
}

id ManagedAccount.accountType.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  result = [v2 accountTypeValue];
  if (!result)
  {
    v5 = 0;
LABEL_4:
    *a1 = v5;
    return result;
  }

  v5 = result;
  if (result == 1)
  {
    goto LABEL_4;
  }

  sub_1B7801A78();

  [v2 accountTypeValue];
  v6 = sub_1B7802068();
  MEMORY[0x1B8CA4D30](v6);

  result = sub_1B7801C88();
  __break(1u);
  return result;
}

void ManagedAccount.creditLimit.getter(uint64_t a1@<X8>)
{
  v3 = [v1 creditLimitAmountValue];
  if (v3)
  {
    v4 = v3;
    [v3 decimalValue];
    v11 = v12;
    v5 = v13;
    v6 = [v1 currency];
    v7 = sub_1B7800868();
    v9 = v8;

    v10 = v11;
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v9 = 0;
    v10 = 0uLL;
  }

  *a1 = v10;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v9;
}

void sub_1B7296914(void *a1, void **a2)
{
  v2 = *a2;
  if (a1[4])
  {
    v4 = a1[1];
    v3 = a1[2];
    v5 = HIDWORD(*a1);
    v6 = HIWORD(*a1);
    v8 = *a1;
    v9 = v5;
    v10 = v6;
    v11 = v4;
    v12 = v3;
    v7 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
    [v2 setCreditLimitAmountValue_];
  }

  else
  {

    [v2 setCreditLimitAmountValue_];
  }
}

void (*ManagedAccount.creditLimit.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v2;
  v6 = [v2 creditLimitAmountValue];
  if (v6)
  {
    v7 = v6;
    [v6 decimalValue];
    v8 = v16;
    v9 = [v2 currency];
    v10 = sub_1B7800868();
    v12 = v11;

    v13 = v15;
  }

  else
  {
    v8 = 0;
    v10 = 0;
    v12 = 0;
    v13 = 0uLL;
  }

  *v5 = v13;
  *(v5 + 16) = v8;
  *(v5 + 24) = v10;
  *(v5 + 32) = v12;
  return sub_1B7296B3C;
}

void sub_1B7296B3C(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 32);
  v3 = *(*a1 + 40);
  if (a2)
  {
    if (v4)
    {
      v6 = v2[1];
      v5 = v2[2];
      v7 = *v2;
      v8 = HIDWORD(*v2);
      v9 = HIWORD(*v2);
      v10 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      *(v2 + 12) = v7;
      *(v2 + 26) = v8;
      *(v2 + 27) = v9;
      v2[7] = v6;
      *(v2 + 16) = v5;
      v11 = [v10 initWithDecimal_];
      [v3 setCreditLimitAmountValue_];
    }

    else
    {
      [*(*a1 + 40) setCreditLimitAmountValue_];
    }
  }

  else if (v4)
  {
    v13 = v2[1];
    v12 = v2[2];
    v14 = *v2;
    v15 = HIDWORD(*v2);
    v16 = HIWORD(*v2);
    v17 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    *(v2 + 12) = v14;
    *(v2 + 26) = v15;
    *(v2 + 27) = v16;
    v2[7] = v13;
    *(v2 + 16) = v12;
    v18 = [v17 initWithDecimal_];

    [v3 setCreditLimitAmountValue_];
  }

  else
  {
    [*(*a1 + 40) setCreditLimitAmountValue_];
  }

  free(v2);
}

void (*ManagedAccount.minimumPaymentAmount.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x80uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 120) = v2;
  v6 = [v2 minimumPaymentAmountValue];
  if (v6)
  {
    v7 = v6;
    [v6 decimalValue];
    v8 = v19;
    v9 = v18;
    v10 = [v2 currency];
    v11 = sub_1B7800868();
    v13 = v12;

    CurrencyAmount.init(_:currencyCode:)(v9, *(&v9 + 1), v8, v11, v13, &v18);
    v14 = v18;
    v15 = v19;
    v16 = v20;
  }

  else
  {
    v16 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *v5 = v14;
  *(v5 + 16) = v15;
  *(v5 + 32) = v16;
  return sub_1B7296E2C;
}

void sub_1B7296E38(void *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v5 = *a2;
  if (a1[4])
  {
    v6 = a1[2];
    v7 = a1[1];
    v8 = HIDWORD(*a1);
    v9 = HIWORD(*a1);
    v14 = *a1;
    v15 = v8;
    v16 = v9;
    v17 = v7;
    v18 = v6;
    v10 = [objc_allocWithZone(MEMORY[0x1E696AB90]) initWithDecimal_];
    [v5 *a5];

    v11 = sub_1B7800838();
    [v5 setCurrency_];
  }

  else
  {
    v12 = *a5;

    [v5 v12];
  }
}

void (*ManagedAccount.overduePaymentAmount.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v2 = v1;
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x80uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 120) = v2;
  v6 = [v2 overduePaymentAmountValue];
  if (v6)
  {
    v7 = v6;
    [v6 decimalValue];
    v8 = v19;
    v9 = v18;
    v10 = [v2 currency];
    v11 = sub_1B7800868();
    v13 = v12;

    CurrencyAmount.init(_:currencyCode:)(v9, *(&v9 + 1), v8, v11, v13, &v18);
    v14 = v18;
    v15 = v19;
    v16 = v20;
  }

  else
  {
    v16 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *v5 = v14;
  *(v5 + 16) = v15;
  *(v5 + 32) = v16;
  return sub_1B72970AC;
}

void sub_1B72970B8(uint64_t a1, char a2, SEL *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 120);
  if (a2)
  {
    if (v5)
    {
      v8 = v4[2];
      v7 = v4[3];
      v10 = *v4;
      v9 = v4[1];
      v11 = HIDWORD(*v4);
      v12 = HIWORD(*v4);
      v23 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v4[5] = v10;
      v4[6] = v9;
      v4[7] = v8;
      v4[8] = v7;
      v4[9] = v5;
      sub_1B7215720((v4 + 5), (v4 + 10));
      *(v4 + 20) = v10;
      *(v4 + 42) = v11;
      *(v4 + 43) = v12;
      v4[11] = v9;
      *(v4 + 24) = v8;
      v13 = [v23 initWithDecimal_];
      [v6 *a3];

      v14 = sub_1B7800838();

      [v6 setCurrency_];
    }

    else
    {
      [*(*a1 + 120) *a3];
    }
  }

  else if (v5)
  {
    v15 = v4[2];
    v17 = *v4;
    v16 = v4[1];
    v18 = HIDWORD(*v4);
    v19 = HIWORD(*v4);
    v20 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    *(v4 + 10) = v17;
    *(v4 + 22) = v18;
    *(v4 + 23) = v19;
    v4[6] = v16;
    *(v4 + 14) = v15;
    v21 = [v20 initWithDecimal_];
    [v6 *a3];

    v22 = sub_1B7800838();

    [v6 setCurrency_];
  }

  else
  {
    [*(*a1 + 120) *a3];
  }

  free(v4);
}

id sub_1B72972F4(void *a1, void *a2, void *a3, void *a4)
{
  v29 = a3;
  v5 = v4;
  v9 = sub_1B77FFA18();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = objc_allocWithZone(v5);
  v32 = a4;
  v13 = [v12 initWithContext_];
  v14 = [a1 accountIdentifier];
  v15 = sub_1B7800868();
  v17 = v16;

  v18 = [a2 institutionObject];
  v19 = [v18 id];

  v20 = sub_1B7800868();
  v22 = v21;

  v24 = v29;
  v23 = v30;
  v31[0] = v15;
  v31[1] = v17;
  v31[2] = v20;
  v31[3] = v22;
  sub_1B72959A0(v31, v29, v11);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  else
  {

    v25 = sub_1B77FF9B8();
    (*(v27 + 8))(v11, v28);
    [v13 setId_];

    sub_1B729899C(v13, a2, a1);
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  return v13;
}

id sub_1B7297524(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v64 - v12;
  v14 = type metadata accessor for Institution(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [objc_allocWithZone(v4) initWithContext_];
  v18 = sub_1B77FF9B8();
  [v17 setId_];

  v19 = type metadata accessor for InternalAccount();
  [v17 setAccountTypeValue_];
  v20 = sub_1B7800838();
  [v17 setDisplayName_];

  Institution.init(_:)([a2 institutionObject], v16);

  sub_1B7298F20(v16, type metadata accessor for Institution);
  v21 = sub_1B7800838();

  [v17 setInstitutionName_];

  if (*(a1 + v19[12] + 8))
  {
    v22 = sub_1B7800838();
  }

  else
  {
    v22 = 0;
  }

  v70 = v11;
  [v17 setAccountDescription_];

  v23 = sub_1B7800838();
  [v17 setCurrency_];

  v24 = (a1 + v19[18]);
  v25 = v24[4];
  v71 = v19;
  v72 = a1;
  if (v25)
  {
    v27 = v24[1];
    v26 = v24[2];
    v28 = *v24;
    v29 = HIDWORD(*v24);
    v30 = HIWORD(*v24);
    v69 = v13;
    v68 = v26 >> 16;
    v31 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    v73 = v28;
    v74 = v29;
    v75 = v30;
    v76 = v27;
    v13 = v69;
    v19 = v71;
    a1 = v72;
    v77 = v26;
    v78 = v68;
    v32 = [v31 initWithDecimal_];
    [v17 setCreditLimitAmountValue_];
  }

  else
  {
    [v17 setCreditLimitAmountValue_];
  }

  sub_1B7205588(a1 + v19[19], v13, &qword_1EB98EBD0);
  v33 = sub_1B77FF988();
  v34 = *(v33 - 8);
  v35 = *(v34 + 48);
  v67 = v34 + 48;
  v68 = v34;
  v66 = v35;
  v36 = 0;
  if (v35(v13, 1, v33) != 1)
  {
    v36 = sub_1B77FF8B8();
    (*(v68 + 8))(v13, v33);
  }

  v69 = v33;
  [v17 setNextPaymentDate_];

  v37 = (a1 + v19[20]);
  if (v37[4])
  {
    v39 = v37[2];
    v38 = v37[3];
    v41 = *v37;
    v40 = v37[1];
    v42 = HIDWORD(*v37);
    v43 = HIWORD(*v37);
    v44 = v40 >> 16;
    v45 = HIDWORD(v40);
    v46 = HIWORD(v40);
    v64 = v39 >> 16;
    v65 = v38;
    v47 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    v73 = v41;
    v74 = v42;
    v75 = v43;
    LOWORD(v76) = v40;
    v19 = v71;
    a1 = v72;
    WORD1(v76) = v44;
    WORD2(v76) = v45;
    HIWORD(v76) = v46;
    v77 = v39;
    v78 = v64;
    v48 = [v47 initWithDecimal_];
    [v17 setMinimumPaymentAmountValue_];

    v49 = sub_1B7800838();
    [v17 setCurrency_];
  }

  else
  {
    [v17 setMinimumPaymentAmountValue_];
  }

  v50 = (a1 + v19[21]);
  if (v50[4])
  {
    v52 = v50[2];
    v51 = v50[3];
    v54 = *v50;
    v53 = v50[1];
    v55 = HIDWORD(*v50);
    v56 = HIWORD(*v50);
    v64 = v52 >> 16;
    v65 = v51;
    v57 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    v73 = v54;
    v74 = v55;
    v75 = v56;
    v76 = v53;
    v77 = v52;
    v19 = v71;
    a1 = v72;
    v78 = v64;
    v58 = [v57 initWithDecimal_];
    [v17 setOverduePaymentAmountValue_];

    v59 = sub_1B7800838();
    [v17 setCurrency_];
  }

  else
  {
    [v17 setOverduePaymentAmountValue_];
  }

  v60 = v70;
  sub_1B7205588(a1 + v19[31], v70, &qword_1EB98EBD0);
  v61 = v69;
  if (v66(v60, 1, v69) == 1)
  {
    v62 = 0;
  }

  else
  {
    v62 = sub_1B77FF8B8();
    (*(v68 + 8))(v60, v61);
  }

  [v17 setOpeningDate_];

  sub_1B7298F20(a1, type metadata accessor for InternalAccount);
  return v17;
}

uint64_t sub_1B7297B90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawBankConnectData.Account(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void _s10FinanceKit14ManagedAccountC6update_7consent07withRawD0yAC_AA0C7ConsentCAA0H15BankConnectDataO0D0OtFZ_0(void *a1, void *a2, uint64_t a3)
{
  v93 = a3;
  v92 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v96 = &v87 - v5;
  *&v99 = type metadata accessor for RawBankConnectData.LiabilityAccount(0);
  v6 = MEMORY[0x1EEE9AC00](v99);
  v91 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v90 = &v87 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v89 = &v87 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v87 - v12;
  v88 = type metadata accessor for RawBankConnectData.AssetAccount(0);
  MEMORY[0x1EEE9AC00](v88);
  v15 = &v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for RawBankConnectData.Account(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v98 = &v87 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v97 = &v87 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v95 = &v87 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v94 = &v87 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v87 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v87 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v87 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v87 - v34;
  v36 = type metadata accessor for Institution(0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v87 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  Institution.init(_:)([a2 institutionObject], v38);

  v39 = v38;
  v40 = v92;
  sub_1B7298F20(v39, type metadata accessor for Institution);
  v41 = sub_1B7800838();

  [v40 setInstitutionName_];

  v42 = v93;
  sub_1B7297B90(v93, v35);
  v43 = swift_getEnumCaseMultiPayload() == 1;
  sub_1B7298F20(v35, type metadata accessor for RawBankConnectData.Account);
  [v40 setAccountTypeValue_];
  sub_1B7297B90(v42, v33);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B729885C(v33, v13, type metadata accessor for RawBankConnectData.LiabilityAccount);

    v44 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    v45 = v13;
  }

  else
  {
    sub_1B729885C(v33, v15, type metadata accessor for RawBankConnectData.AssetAccount);

    v44 = type metadata accessor for RawBankConnectData.AssetAccount;
    v45 = v15;
  }

  sub_1B7298F20(v45, v44);
  v46 = sub_1B7800838();

  [v40 setDisplayName_];

  sub_1B7297B90(v42, v30);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B729885C(v30, v13, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v47 = *(v13 + 10);

    v48 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    v49 = v13;
  }

  else
  {
    sub_1B729885C(v30, v15, type metadata accessor for RawBankConnectData.AssetAccount);
    v47 = *(v15 + 10);

    v48 = type metadata accessor for RawBankConnectData.AssetAccount;
    v49 = v15;
  }

  sub_1B7298F20(v49, v48);
  v50 = v96;
  if (v47)
  {
    v51 = sub_1B7800838();
  }

  else
  {
    v51 = 0;
  }

  [v40 setAccountDescription_];

  sub_1B7297B90(v42, v27);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B729885C(v27, v13, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v52 = v99;
    sub_1B734074C();
    sub_1B7298F20(v13, type metadata accessor for RawBankConnectData.LiabilityAccount);
  }

  else
  {
    sub_1B729885C(v27, v15, type metadata accessor for RawBankConnectData.AssetAccount);
    sub_1B734074C();
    sub_1B7298F20(v15, type metadata accessor for RawBankConnectData.AssetAccount);
    v52 = v99;
  }

  v53 = sub_1B7800838();

  [v40 setCurrency_];

  v54 = v94;
  sub_1B7297B90(v42, v94);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1B729885C(v54, v13, type metadata accessor for RawBankConnectData.LiabilityAccount);
    sub_1B7205588(&v13[v52[13]], v50, &qword_1EB98EBD0);
    v55 = type metadata accessor for RawBankConnectData.LiabilityAccount;
    v56 = v13;
  }

  else
  {
    v57 = sub_1B77FF988();
    (*(*(v57 - 8) + 56))(v50, 1, 1, v57);
    v55 = type metadata accessor for RawBankConnectData.Account;
    v56 = v54;
  }

  sub_1B7298F20(v56, v55);
  v58 = sub_1B77FF988();
  v59 = *(v58 - 8);
  v60 = 0;
  if ((*(v59 + 48))(v50, 1, v58) != 1)
  {
    v60 = sub_1B77FF8B8();
    (*(v59 + 8))(v50, v58);
  }

  [v40 setNextPaymentDate_];

  v61 = v95;
  sub_1B7297B90(v42, v95);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v62 = v61;
    v63 = v89;
    sub_1B729885C(v62, v89, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v64 = (v63 + v52[11]);
    v65 = v64[3];
    v103 = v64[2];
    v104 = v65;
    v105 = v64[4];
    v66 = v64[1];
    *v102 = *v64;
    *&v102[16] = v66;
    sub_1B7205588(v102, &v100, &qword_1EB990780);
    sub_1B7298F20(v63, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v67 = v98;
    if (*(&v104 + 1))
    {
      v68 = *v102;
      v99 = *&v102[4];
      sub_1B7205418(v102, &qword_1EB990780);
      v69 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v100 = v68;
      v101 = v99;
      v70 = [v69 initWithDecimal_];
      [v40 setCreditLimitAmountValue_];
    }
  }

  else
  {
    sub_1B7298F20(v61, type metadata accessor for RawBankConnectData.Account);
    v67 = v98;
  }

  v71 = v97;
  sub_1B7297B90(v42, v97);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v72 = v71;
    v73 = v90;
    sub_1B729885C(v72, v90, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v74 = (v73 + v52[12]);
    v75 = v74[4];
    v104 = v74[3];
    v105 = v75;
    v76 = v74[2];
    *&v102[16] = v74[1];
    v103 = v76;
    *v102 = *v74;
    sub_1B7205588(v102, &v100, &qword_1EB990780);
    sub_1B7298F20(v73, type metadata accessor for RawBankConnectData.LiabilityAccount);
    if (*(&v104 + 1))
    {
      v77 = *v102;
      v99 = *&v102[4];
      sub_1B7205418(v102, &qword_1EB990780);
      v78 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v100 = v77;
      v101 = v99;
      v79 = [v78 initWithDecimal_];
      [v40 setMinimumPaymentAmountValue_];
    }
  }

  else
  {
    sub_1B7298F20(v71, type metadata accessor for RawBankConnectData.Account);
  }

  sub_1B7297B90(v42, v67);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v80 = v91;
    sub_1B729885C(v67, v91, type metadata accessor for RawBankConnectData.LiabilityAccount);
    v81 = (v80 + v52[14]);
    v82 = v81[4];
    v104 = v81[3];
    v105 = v82;
    v83 = v81[2];
    *&v102[16] = v81[1];
    v103 = v83;
    *v102 = *v81;
    sub_1B7205588(v102, &v100, &qword_1EB990780);
    sub_1B7298F20(v80, type metadata accessor for RawBankConnectData.LiabilityAccount);
    if (*(&v104 + 1))
    {
      v84 = *v102;
      v99 = *&v102[4];
      sub_1B7205418(v102, &qword_1EB990780);
      v85 = objc_allocWithZone(MEMORY[0x1E696AB90]);
      v100 = v84;
      v101 = v99;
      v86 = [v85 initWithDecimal_];
      [v40 setOverduePaymentAmountValue_];
    }
  }

  else
  {
    sub_1B7298F20(v67, type metadata accessor for RawBankConnectData.Account);
  }
}

uint64_t sub_1B729885C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double keypath_get_25Tm@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(v6);
  v3 = v7;
  result = *v6;
  v5 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v5;
  *(a2 + 32) = v3;
  return result;
}

void sub_1B729899C(void *a1, void *a2, void *a3)
{
  v47 = sub_1B77FF988();
  v6 = *(v47 - 8);
  v7 = MEMORY[0x1EEE9AC00](v47);
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v43 - v9;
  v10 = type metadata accessor for Institution(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a3 currency];
  if (!v13)
  {
    sub_1B7800868();
    v13 = sub_1B7800838();
  }

  v48 = sub_1B7800868();
  v15 = v14;
  Institution.init(_:)([a2 institutionObject], v12);

  sub_1B7298F20(v12, type metadata accessor for Institution);
  v16 = sub_1B7800838();

  [a1 setInstitutionName_];

  [a1 setAccountTypeValue_];
  [a1 setCurrency_];

  v17 = [a3 displayName];
  if (!v17)
  {
    sub_1B7800868();
    v17 = sub_1B7800838();
  }

  v46 = v6;
  [a1 setDisplayName_];

  v18 = [a3 displayName];
  if (!v18)
  {
    sub_1B7800868();
    v18 = sub_1B7800838();
  }

  [a1 setAccountDescription_];

  v19 = [a3 creditLimit];
  if (v19)
  {
    v20 = v19;
    [v19 decimalValue];
    v21 = *&v50[16];
    v22 = *v50;

    CurrencyAmount.init(_:currencyCode:)(v22, *(&v22 + 1), v21, v48, v15, v50);
    v23 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    *v49 = *v50;
    *&v49[4] = *&v50[4];
    v24 = [v23 initWithDecimal_];
    sub_1B721722C(v50);
    [a1 setCreditLimitAmountValue_];
  }

  v25 = [a3 minimumDueAmount];
  if (v25)
  {
    v26 = v25;
    [v25 decimalValue];
    v27 = *&v50[16];
    v28 = *v50;

    CurrencyAmount.init(_:currencyCode:)(v28, *(&v28 + 1), v27, v48, v15, v50);
    v29 = objc_allocWithZone(MEMORY[0x1E696AB90]);
    *v49 = *v50;
    *&v49[16] = *&v50[16];
    v30 = [v29 initWithDecimal_];
    [a1 setMinimumPaymentAmountValue_];

    v31 = sub_1B7800838();

    [a1 setCurrency_];
  }

  else
  {
  }

  v32 = v46;
  v33 = [a3 overduePaymentAmount];
  [a1 setOverduePaymentAmountValue_];

  v34 = [a3 nextPaymentDueDate];
  if (v34)
  {
    v35 = v44;
    v36 = v34;
    sub_1B77FF928();

    v37 = sub_1B77FF8B8();
    v38 = v47;
    (*(v32 + 8))(v35, v47);
  }

  else
  {
    v37 = 0;
    v38 = v47;
  }

  [a1 setNextPaymentDate_];

  v39 = [a3 openingDate];
  if (v39)
  {
    v40 = v45;
    v41 = v39;
    sub_1B77FF928();

    v42 = sub_1B77FF8B8();
    (*(v32 + 8))(v40, v38);
  }

  else
  {
    v42 = 0;
  }

  [a1 setOpeningDate_];
}

uint64_t sub_1B7298F20(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Order.PaymentMethod.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Order.PaymentMethod.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t static Order.PaymentMethod.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1B78020F8();
  }
}

uint64_t sub_1B7299058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B78020F8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B72990E4(uint64_t a1)
{
  v2 = sub_1B7299298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7299120(uint64_t a1)
{
  v2 = sub_1B7299298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.PaymentMethod.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990940);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7299298();
  sub_1B78023F8();
  sub_1B7801F78();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B7299298()
{
  result = qword_1EB990948;
  if (!qword_1EB990948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990948);
  }

  return result;
}

uint64_t Order.PaymentMethod.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990950);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7299298();
  sub_1B78023C8();
  if (!v2)
  {
    v9 = sub_1B7801DF8();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B7299478(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990940);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7299298();
  sub_1B78023F8();
  sub_1B7801F78();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1B72995D8()
{
  result = qword_1EB990958;
  if (!qword_1EB990958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990958);
  }

  return result;
}

unint64_t sub_1B7299630()
{
  result = qword_1EB990960;
  if (!qword_1EB990960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990960);
  }

  return result;
}

unint64_t sub_1B7299688()
{
  result = qword_1EB990968;
  if (!qword_1EB990968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990968);
  }

  return result;
}

uint64_t ManagedTransactionExporter.__allocating_init(transactionClassifier:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v10 = *(a1 + 24);
  v3 = v10;
  v4 = __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  v5 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  *(v2 + 40) = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v2 + 16));
  (*(v5 + 32))(boxed_opaque_existential_1, v7, v3);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v2;
}

uint64_t *ManagedTransactionExporter.init(transactionClassifier:)(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = sub_1B729B62C(v7, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

uint64_t ManagedTransactionExporter.financeKitTransactions(from:classifyIfNecessary:)(unint64_t a1, char a2)
{
  v3 = v2;
  v48 = sub_1B77FF988();
  v6 = *(v48 - 8);
  v7 = MEMORY[0x1EEE9AC00](v48);
  v47 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v45 = &v38 - v11;
  v50 = a1;
  v12 = a1 >> 62;
  if ((a2 & 1) == 0)
  {
    goto LABEL_29;
  }

  v51 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
LABEL_23:
    v13 = sub_1B7801958();
    if (v13)
    {
      goto LABEL_4;
    }
  }

  else
  {
    v13 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13)
    {
LABEL_4:
      v38 = v3;
      v39 = v12;
      v14 = 0;
      v15 = v50 & 0xC000000000000001;
      v16 = v50 & 0xFFFFFFFFFFFFFF8;
      v42 = (v6 + 1);
      v43 = (v6 + 4);
      v3 = &off_1E7CAF000;
      v44 = v13;
      v40 = v50 & 0xFFFFFFFFFFFFFF8;
      v41 = v50 & 0xC000000000000001;
      while (1)
      {
        if (v15)
        {
          v17 = MEMORY[0x1B8CA5DC0](v14, v50);
        }

        else
        {
          if (v14 >= *(v16 + 16))
          {
            goto LABEL_22;
          }

          v17 = *(v50 + 8 * v14 + 32);
        }

        v18 = v17;
        v12 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v19 = [v17 insightsObject];
        if (v19)
        {
          v20 = v19;
          v6 = [v19 mapsInsightObject];

          if (v6)
          {
            v21 = [v6 earliestRetryDate];
            if (!v21)
            {

LABEL_17:
              goto LABEL_6;
            }

            v22 = v46;
            v23 = v21;
            sub_1B77FF928();

            v24 = v45;
            v25 = v22;
            v26 = v48;
            (*v43)(v45, v25, v48);
            v27 = v47;
            sub_1B77FF938();
            v49 = sub_1B77FF8D8();

            v6 = *v42;
            (*v42)(v27, v26);
            v28 = v24;
            v16 = v40;
            v15 = v41;
            v29 = v26;
            v13 = v44;
            (v6)(v28, v29);
            if ((v49 & 1) == 0)
            {
              goto LABEL_17;
            }
          }
        }

        v6 = &v51;
        sub_1B7801B68();
        sub_1B7801BA8();
        sub_1B7801BB8();
        sub_1B7801B78();
LABEL_6:
        ++v14;
        if (v12 == v13)
        {
          v30 = v51;
          v3 = v38;
          v12 = v39;
          if (v51 < 0)
          {
            goto LABEL_42;
          }

          goto LABEL_25;
        }
      }
    }
  }

  v30 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_42;
  }

LABEL_25:
  if ((v30 & 0x4000000000000000) == 0)
  {
    if (!*(v30 + 16))
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

  while (1)
  {
LABEL_42:
    if (sub_1B7801958())
    {
LABEL_27:
      v31 = v3[5];
      v32 = v3[6];
      __swift_project_boxed_opaque_existential_1(v3 + 2, v31);
      (v32->name)(v30, v31, v32);
    }

LABEL_28:

LABEL_29:
    v30 = v12 ? sub_1B7801958() : *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    result = MEMORY[0x1E69E7CC0];
    if (!v30)
    {
      break;
    }

    v51 = MEMORY[0x1E69E7CC0];
    sub_1B7801B98();
    if ((v30 & 0x8000000000000000) == 0)
    {
      v34 = 0;
      v35 = v50 & 0xC000000000000001;
      do
      {
        if (v35)
        {
          v36 = MEMORY[0x1B8CA5DC0](v34, v50);
        }

        else
        {
          v36 = *(v50 + 8 * v34 + 32);
        }

        v37 = v36;
        ++v34;
        ManagedTransactionExporter.financeKitTransaction(from:classifyIfNecessary:)(v36, 0);

        sub_1B7801B68();
        sub_1B7801BA8();
        sub_1B7801BB8();
        sub_1B7801B78();
      }

      while (v30 != v34);
      return v51;
    }

    __break(1u);
  }

  return result;
}

char *ManagedTransactionExporter.financeKitTransaction(from:classifyIfNecessary:)(void *a1, int a2)
{
  LODWORD(v136) = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB993A10);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v142 = &v121 - v4;
  v5 = type metadata accessor for Actions();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v133 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v140 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v141 = &v121 - v10;
  v11 = sub_1B77FF988();
  v145 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v144 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = [a1 transactionId];
  v13 = [a1 publicTransactionObject];
  v14 = [v13 amount];
  [v14 decimalValue];
  v15 = v152;
  v17 = v151[0];
  v16 = v151[1];

  v18 = [v13 currency];
  v19 = sub_1B7800868();
  v21 = v20;

  v22 = v17;
  v23 = &off_1E7CAF000;
  CurrencyAmount.init(_:currencyCode:)(v22, v16, v15, v19, v21, v151);

  v24 = objc_allocWithZone(FKAmount);
  v25 = sub_1B7801608();
  sub_1B7215720(v151, &v148);
  v26 = sub_1B7800838();
  sub_1B721722C(v151);
  v138 = [v24 initWithDecimalNumber:v25 currency:v26];
  sub_1B721722C(v151);

  v27 = [a1 publicTransactionObject];
  v28 = [v27 foreignAmount];
  v143 = v11;
  if (v28)
  {
    v29 = v28;
    [v28 decimalValue];
    v30 = v148;
    v31 = WORD2(v148);
    v32 = WORD3(v148);
    v33 = *(&v148 + 1);
    v34 = v149;

    v35 = [v27 foreignCurrency];
    if (v35)
    {
      v36 = v35;
      v37 = sub_1B7800868();
      v39 = v38;

      v40 = v37;
      v23 = &off_1E7CAF000;
      CurrencyAmount.init(_:currencyCode:)(v30 | (v31 << 32) | (v32 << 48), v33, v34, v40, v39, v146);

      v148 = v146[0];
      v149 = v146[1];
      v150 = v147;
      v41 = objc_allocWithZone(FKAmount);
      sub_1B7215720(&v148, v146);
      v42 = sub_1B7801608();
      sub_1B7215720(&v148, v146);
      v43 = sub_1B7800838();
      sub_1B721722C(&v148);
      v135 = [v41 initWithDecimalNumber:v42 currency:v43];
      sub_1B721722C(&v148);
      sub_1B721722C(&v148);
    }

    else
    {

      v135 = 0;
    }

    v11 = v143;
  }

  else
  {

    v135 = 0;
  }

  v44 = v145;
  v45 = [a1 v23[324]];
  v134 = [v45 foreignCurrencyExchangeRate];

  v46 = [a1 v23[324]];
  v47 = [v46 transactionDate];

  sub_1B77FF928();
  v48 = [a1 v23[324]];
  v49 = [v48 postedDate];

  if (v49)
  {
    sub_1B77FF928();

    v50 = 0;
  }

  else
  {
    v50 = 1;
  }

  v51 = v140;
  (*(v44 + 56))(v140, v50, 1, v11);
  sub_1B7205340(v51, v141);
  v52 = [a1 v23[324]];
  v53 = [v52 transactionTypeValue];

  TransactionType.init(rawValue:)(v53);
  v54 = v148;
  if (v148 == 17)
  {
    v54 = 0;
  }

  LOBYTE(v148) = v54;
  v140 = _sSo24FKPaymentTransactionTypeV10FinanceKitEyAbC0bC0OcfC_0(&v148);
  v55 = [a1 v23[324]];
  ManagedTransaction.status.getter(&v148);

  v131 = qword_1B780E650[v148];
  v128 = sub_1B7776CC0();
  v129 = v56;
  v57 = [a1 v23[324]];
  v132 = [v57 originalTransactionDescription];

  v58 = [a1 v23[324]];
  LOWORD(v55) = [v58 transactionTypeValue];

  TransactionType.init(rawValue:)(v55);
  v59 = v148;
  if (v148 == 17)
  {
    v59 = 0;
  }

  LOBYTE(v148) = v59;
  v126 = TransactionType.localizedDescription.getter();
  v127 = v60;
  v61 = [a1 v23[324]];
  ManagedTransaction.creditDebitIndicator.getter(v146);

  v130 = LOBYTE(v146[0]);
  sub_1B7205540(0, &qword_1EB98FA38);
  v62 = [a1 actionsObject];
  v63 = v133;
  Actions.init(_:)(v62, v133);
  v133 = FKActions.init(from:)(v63);
  v64 = [a1 v23[324]];
  v65 = [v64 id];

  v66 = v142;
  sub_1B77FF9E8();

  v67 = sub_1B77FFA18();
  v68 = *(v67 - 8);
  (*(v68 + 56))(v66, 0, 1, v67);
  v69 = [a1 v23[324]];
  if (([v69 merchantCategoryCodeValue] & 0x80000000) != 0)
  {

    v125 = 0;
  }

  else
  {
    v70 = [v69 merchantCategoryCodeValue];

    v125 = v70;
  }

  v124 = [a1 hasNotificationServiceData];
  v71 = [a1 paymentHash];
  if (v71)
  {
    v72 = v71;
    v123 = sub_1B7800868();
    v74 = v73;
  }

  else
  {
    v123 = 0;
    v74 = 0;
  }

  v75 = [a1 altDSID];
  if (v75)
  {
    v76 = v75;
    v122 = sub_1B7800868();
    v78 = v77;
  }

  else
  {
    v122 = 0;
    v78 = 0;
  }

  v79 = sub_1B729B69C(a1);
  v80 = sub_1B729CCA8(a1);
  v81 = sub_1B729AA48(a1, v136 & 1);
  v82 = sub_1B729CF58(a1);
  v83 = sub_1B729D044(a1);
  v137 = [objc_allocWithZone(FKPaymentTransactionInsights) initWithApplePayInsight:v79 bankMerchantInformationInsight:v80 mapsInsight:v81 contactInsight:v82 userInsight:v83];

  v84 = [a1 pkServiceIdentifier];
  if (v84)
  {
    v85 = v84;
    v121 = sub_1B7800868();
    v87 = v86;
  }

  else
  {
    v121 = 0;
    v87 = 0;
  }

  v88 = v143;
  v89 = v145;
  v90 = v141;
  v141 = sub_1B77FF8B8();
  if ((*(v89 + 48))(v90, 1, v88) == 1)
  {
    v136 = 0;
  }

  else
  {
    v136 = sub_1B77FF8B8();
    (*(v89 + 8))(v90, v88);
  }

  v91 = v142;
  v92 = sub_1B7800838();

  v93 = sub_1B7800838();

  if ((*(v68 + 48))(v91, 1, v67) == 1)
  {
    v94 = 0;
    if (v74)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v94 = sub_1B77FF9B8();
    (*(v68 + 8))(v91, v67);
    if (v74)
    {
LABEL_31:
      v95 = sub_1B7800838();

      if (v78)
      {
        goto LABEL_32;
      }

LABEL_36:
      v96 = 0;
      if (v87)
      {
        goto LABEL_33;
      }

LABEL_37:
      v97 = 0;
      goto LABEL_38;
    }
  }

  v95 = 0;
  if (!v78)
  {
    goto LABEL_36;
  }

LABEL_32:
  v96 = sub_1B7800838();

  if (!v87)
  {
    goto LABEL_37;
  }

LABEL_33:
  v97 = sub_1B7800838();

LABEL_38:
  v129 = v97;
  v98 = objc_allocWithZone(FKPaymentTransaction);
  v120 = v97;
  v99 = v137;
  v119 = v96;
  v118 = v95;
  LOBYTE(v117) = v124;
  v116 = v94;
  LOBYTE(v115) = 1;
  v100 = v133;
  v113 = v93;
  v114 = v130;
  v130 = v93;
  v101 = v132;
  v112 = v92;
  v111 = v131;
  v110 = v140;
  v102 = v139;
  v131 = v95;
  v103 = v138;
  v128 = v94;
  v104 = v135;
  v105 = v92;
  v106 = v134;
  v140 = v96;
  v107 = v141;
  v108 = v136;
  v142 = [v98 initWithTransactionIdentifier:v139 amount:v138 foreignAmount:v135 foreignCurrencyExchangeRate:v134 transactionDate:v141 transactionStatusChangedDate:v136 type:v110 status:v111 transactionDescription:v112 originalTransactionDescription:v132 localizedTypeDescription:v113 creditDebitIndicator:v114 actions:v133 isBankConnectTransaction:v115 bankConnectIdentifier:v116 merchantCategoryCode:v125 hasNotificationServiceData:v117 paymentHash:v118 altDSID:v119 insights:v137 serviceIdentifier:v120];

  (*(v145 + 8))(v144, v143);
  return v142;
}

id sub_1B729AA48(void *a1, int a2)
{
  LODWORD(v99) = a2;
  v3 = sub_1B77FFA18();
  v93 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v88 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for MapsBrand();
  v96 = *(v6 - 8);
  v97 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v92 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v91 = &v88 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9981B0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v95 = &v88 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v98 = &v88 - v13;
  v14 = type metadata accessor for MapsMerchant();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v90 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v89 = &v88 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99CF50);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v88 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v88 - v26;
  v28 = [a1 insightsObject];
  if (!v28 || (v29 = v28, v30 = [v28 mapsInsightObject], v29, !v30))
  {
    if (qword_1EDAF65A8 != -1)
    {
      swift_once();
    }

    v39 = sub_1B78000B8();
    __swift_project_value_buffer(v39, qword_1EDAF65B0);
    v40 = a1;
    v41 = sub_1B7800098();
    v42 = sub_1B78011C8();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v102 = v44;
      *v43 = 136315394;
      v45 = [v40 publicTransactionObject];
      v46 = [v45 id];

      sub_1B77FF9E8();
      sub_1B729D260();
      v47 = sub_1B7802068();
      v49 = v48;
      (*(v93 + 8))(v5, v3);
      v50 = sub_1B71A3EF8(v47, v49, &v102);

      *(v43 + 4) = v50;
      *(v43 + 12) = 2080;
      v51 = v99;
      if (v99)
      {
        v52 = 1819044183;
      }

      else
      {
        v52 = 0x746F6E206C6C6957;
      }

      if (v99)
      {
        v53 = 0xE400000000000000;
      }

      else
      {
        v53 = 0xE800000000000000;
      }

      v54 = sub_1B71A3EF8(v52, v53, &v102);

      *(v43 + 14) = v54;
      _os_log_impl(&dword_1B7198000, v41, v42, "No insight available for transaction %s.\n%s trigger classification.", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v44, -1, -1);
      MEMORY[0x1B8CA7A40](v43, -1, -1);

      if ((v51 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {

      if ((v99 & 1) == 0)
      {
        return 0;
      }
    }

    v55 = v94[5];
    v56 = v94[6];
    __swift_project_boxed_opaque_existential_1(v94 + 2, v55);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
    v57 = swift_allocObject();
    *(v57 + 16) = xmmword_1B780B190;
    *(v57 + 32) = v40;
    v58 = *(v56 + 8);
    v59 = v40;
    v58(v57, v55, v56);

    return 0;
  }

  v99 = v30;
  v31 = [v30 fallbackCategoryValue];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 shortValue];

    TransactionCategory.init(rawValue:)(v33);
    v34 = v101;
    if (v101 != 13)
    {
      v35 = [v99 transactionCategorySourceValue];
      if (v35)
      {
        v36 = v35;
        v37 = [v35 shortValue];

        if (!v37)
        {
          v38 = 0;
          goto LABEL_41;
        }

        if (v37 == 1)
        {
          v38 = 1;
LABEL_41:
          v100 = v34;
          v94 = [objc_allocWithZone(FKPaymentTransactionCategoryAndSource) initWithCategory:_sSo28FKPaymentTransactionCategoryV10FinanceKitEyAbC0bC0OcfC_0(&v100) source:v38];
          goto LABEL_25;
        }
      }
    }
  }

  else
  {
    v101 = 13;
  }

  v94 = 0;
LABEL_25:
  v61 = v99;
  v62 = [v99 updatedAt];
  sub_1B77FF928();

  v63 = sub_1B77FF988();
  v64 = *(v63 - 8);
  v65 = *(v64 + 56);
  v66 = 1;
  v93 = v63;
  v65(v27, 0, 1);
  v67 = [v61 merchantObject];
  if (v67)
  {
    MapsMerchant.init(_:)(v67, v24);
    v66 = 0;
  }

  (*(v15 + 56))(v24, v66, 1, v14);
  sub_1B7205588(v24, v22, &unk_1EB99CF50);
  if ((*(v15 + 48))(v22, 1, v14) == 1)
  {
    sub_1B7205418(v24, &unk_1EB99CF50);
    v68 = 0;
  }

  else
  {
    v69 = v22;
    v70 = v89;
    sub_1B729D2B8(v69, v89, type metadata accessor for MapsMerchant);
    sub_1B7205540(0, &qword_1EB990978);
    v71 = v90;
    sub_1B729D320(v70, v90, type metadata accessor for MapsMerchant);
    v68 = sub_1B72D1E60(v71);
    sub_1B729D388(v70, type metadata accessor for MapsMerchant);
    sub_1B7205418(v24, &unk_1EB99CF50);
  }

  v72 = v98;
  v73 = v99;
  v74 = v95;
  v75 = [v99 brandObject];
  if (v75)
  {
    MapsBrand.init(_:)(v75, v72);
    v76 = 0;
  }

  else
  {
    v76 = 1;
  }

  v78 = v96;
  v77 = v97;
  (*(v96 + 56))(v72, v76, 1, v97);
  sub_1B7205588(v72, v74, &qword_1EB9981B0);
  if ((*(v78 + 48))(v74, 1, v77) == 1)
  {
    sub_1B7205418(v72, &qword_1EB9981B0);
    v79 = 0;
  }

  else
  {
    v80 = v74;
    v81 = v91;
    sub_1B729D2B8(v80, v91, type metadata accessor for MapsBrand);
    sub_1B7205540(0, &qword_1EB990970);
    v82 = v92;
    sub_1B729D320(v81, v92, type metadata accessor for MapsBrand);
    v79 = sub_1B73D5E30(v82);
    sub_1B729D388(v81, type metadata accessor for MapsBrand);
    sub_1B7205418(v72, &qword_1EB9981B0);
  }

  v83 = v93;
  if ((*(v64 + 48))(v27, 1, v93) == 1)
  {
    v84 = 0;
  }

  else
  {
    v84 = sub_1B77FF8B8();
    (*(v64 + 8))(v27, v83);
  }

  v85 = objc_allocWithZone(FKMapsTransactionInsight);
  v86 = v94;
  v87 = [v85 initWithUpdatedAt:v84 categoryAndSource:v94 merchant:v68 brand:v79];

  return v87;
}

uint64_t ManagedTransactionExporter.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1B729B524(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8CA5DC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B729D3E8;
  }

  __break(1u);
  return result;
}

void (*sub_1B729B5A4(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B8CA5DC0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1B729B624;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1B729B62C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  return a2;
}

uint64_t sub_1B729B69C(void *a1)
{
  v2 = sub_1B77FFA18();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v157 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v208 = &v157 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v206 = &v157 - v9;
  v10 = type metadata accessor for ApplePayTransactionInsight.Location(0);
  v205 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = (&v157 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v204 = &v157 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990980);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = &v157 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v157 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v207 = &v157 - v22;
  v23 = [a1 insightsObject];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 applePayInsightObject];

    if (v25)
    {
      v26 = [v25 paymentHash];
      v27 = [v25 transactionDate];
      if (v27)
      {
        v28 = v207;
        v29 = v27;
        sub_1B77FF928();

        v30 = sub_1B77FF988();
        (*(*(v30 - 8) + 56))(v28, 0, 1, v30);
      }

      else
      {
        v44 = sub_1B77FF988();
        (*(*(v44 - 8) + 56))(v207, 1, 1, v44);
      }

      v45 = [v25 merchantName];
      if (v45)
      {
        v46 = v45;
        v178 = sub_1B7800868();
        v191 = v47;
      }

      else
      {
        v178 = 0;
        v191 = 0;
      }

      v48 = [v25 merchantRawName];
      if (v48)
      {
        v49 = v48;
        v177 = sub_1B7800868();
        v198 = v50;
      }

      else
      {
        v177 = 0;
        v198 = 0;
      }

      v51 = [v25 industryCategory];
      if (v51)
      {
        v52 = v51;
        v176 = sub_1B7800868();
        v197 = v53;
      }

      else
      {
        v176 = 0;
        v197 = 0;
      }

      v188 = [v25 industryCodeValue];
      v54 = [v25 merchantType];
      if (v54)
      {
        v55 = v54;
        v175 = sub_1B7800868();
        v196 = v56;
      }

      else
      {
        v175 = 0;
        v196 = 0;
      }

      v57 = [v25 merchantCountryCode];
      if (v57)
      {
        v58 = v57;
        v173 = sub_1B7800868();
        v195 = v59;
      }

      else
      {
        v173 = 0;
        v195 = 0;
      }

      v60 = [v25 terminalIdentifier];
      if (v60)
      {
        v61 = v60;
        v172 = sub_1B7800868();
        v194 = v62;
      }

      else
      {
        v172 = 0;
        v194 = 0;
      }

      v63 = [v25 merchantAdditionalData];
      if (v63)
      {
        v64 = v63;
        v171 = sub_1B7800868();
        v193 = v65;
      }

      else
      {
        v171 = 0;
        v193 = 0;
      }

      v66 = [v25 paymentNetwork];
      if (v66)
      {
        v67 = v66;
        v170 = sub_1B7800868();
        v192 = v68;
      }

      else
      {
        v170 = 0;
        v192 = 0;
      }

      v69 = [v25 tokenTypeValue];
      if (v69 > 2)
      {

        result = sub_1B7801C88();
        __break(1u);
        return result;
      }

      v203 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v202 = [v25 isCoarseLocationValue];
      ManagedApplePayTransactionInsight.location.getter(v20);
      sub_1B7205588(v20, v18, &qword_1EB990980);
      v70 = v205[6](v18, 1, v10);
      v189 = v26;
      if (v70 == 1)
      {
        v205 = 0;
      }

      else
      {
        v71 = v18;
        v72 = v204;
        sub_1B729D2B8(v71, v204, type metadata accessor for ApplePayTransactionInsight.Location);
        sub_1B729D320(v72, v13, type metadata accessor for ApplePayTransactionInsight.Location);
        v73 = objc_allocWithZone(MEMORY[0x1E6985C40]);
        v74 = *v13;
        v75 = v13[1];
        v76 = v13[2];
        v77 = v13[3];
        v78 = v13[4];
        v79 = sub_1B77FF8B8();
        v205 = [v73 initWithCoordinate:v79 altitude:v74 horizontalAccuracy:v75 verticalAccuracy:v76 timestamp:{v77, v78}];

        sub_1B729D388(v13, type metadata accessor for ApplePayTransactionInsight.Location);
        sub_1B729D388(v72, type metadata accessor for ApplePayTransactionInsight.Location);
      }

      v80 = v208;
      v81 = v206;
      sub_1B7205418(v20, &qword_1EB990980);
      v82 = [v25 merchantIdentifier];
      if (v82)
      {
        v83 = v82;
        v169 = sub_1B7800868();
        v85 = v84;
      }

      else
      {
        v169 = 0;
        v85 = 0;
      }

      v86 = [v25 merchantRawCANL];
      if (v86)
      {
        v87 = v86;
        v168 = sub_1B7800868();
        v190 = v88;
      }

      else
      {
        v168 = 0;
        v190 = 0;
      }

      v89 = [v25 merchantRawCity];
      if (v89)
      {
        v90 = v89;
        v167 = sub_1B7800868();
        v187 = v91;
      }

      else
      {
        v167 = 0;
        v187 = 0;
      }

      v92 = [v25 merchantRawState];
      if (v92)
      {
        v93 = v92;
        v166 = sub_1B7800868();
        v186 = v94;
      }

      else
      {
        v166 = 0;
        v186 = 0;
      }

      v95 = [v25 merchantRawCountry];
      if (v95)
      {
        v96 = v95;
        v165 = sub_1B7800868();
        v185 = v97;
      }

      else
      {
        v165 = 0;
        v185 = 0;
      }

      v98 = [v25 merchantCity];
      if (v98)
      {
        v99 = v98;
        v164 = sub_1B7800868();
        v182 = v100;
      }

      else
      {
        v164 = 0;
        v182 = 0;
      }

      v101 = [v25 merchantZip];
      if (v101)
      {
        v102 = v101;
        v163 = sub_1B7800868();
        v184 = v103;
      }

      else
      {
        v163 = 0;
        v184 = 0;
      }

      v104 = [v25 merchantState];
      if (v104)
      {
        v105 = v104;
        v162 = sub_1B7800868();
        v183 = v106;
      }

      else
      {
        v162 = 0;
        v183 = 0;
      }

      v206 = [v25 merchantCleanConfidenceLevelValue];
      v204 = [v25 rewardsAmount];
      v107 = [v25 rewardsCurrency];
      if (v107)
      {
        v108 = v107;
        v161 = sub_1B7800868();
        v181 = v109;
      }

      else
      {
        v161 = 0;
        v181 = 0;
      }

      v201 = [v25 rewardsEligibilityReasonValue];
      v200 = [v25 adamIdentifierValue];
      v110 = [v25 webURL];
      if (v110)
      {
        v111 = v110;
        sub_1B77FF478();

        v112 = 0;
      }

      else
      {
        v112 = 1;
      }

      v113 = sub_1B77FF4F8();
      v114 = *(v113 - 8);
      v115 = *(v114 + 56);
      v115(v81, v112, 1, v113);
      v116 = [v25 webMerchantIdentifier];
      if (v116)
      {
        v117 = v116;
        v160 = sub_1B7800868();
        v180 = v118;
      }

      else
      {
        v160 = 0;
        v180 = 0;
      }

      v119 = [v25 webMerchantName];
      if (v119)
      {
        v120 = v119;
        v159 = sub_1B7800868();
        v179 = v121;
      }

      else
      {
        v159 = 0;
        v179 = 0;
      }

      v122 = [v25 isIssuerInstallmentTransaction];
      v199 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v123 = [v25 issuerInstallmentManagementURL];
      if (v123)
      {
        v124 = v123;
        sub_1B77FF478();

        v125 = 0;
      }

      else
      {
        v125 = 1;
      }

      v115(v80, v125, 1, v113);
      v126 = sub_1B77FF988();
      v127 = *(v126 - 8);
      v128 = v207;
      v129 = 0;
      if ((*(v127 + 48))(v207, 1, v126) != 1)
      {
        v129 = sub_1B77FF8B8();
        (*(v127 + 8))(v128, v126);
      }

      if (v191)
      {
        v178 = sub_1B7800838();
      }

      else
      {
        v178 = 0;
      }

      v130 = v114;
      if (v198)
      {
        v177 = sub_1B7800838();

        if (v197)
        {
          goto LABEL_85;
        }
      }

      else
      {
        v177 = 0;
        if (v197)
        {
LABEL_85:
          v176 = sub_1B7800838();

          if (v196)
          {
            goto LABEL_86;
          }

          goto LABEL_90;
        }
      }

      v176 = 0;
      if (v196)
      {
LABEL_86:
        v175 = sub_1B7800838();

        if (v195)
        {
LABEL_87:
          v173 = sub_1B7800838();

          goto LABEL_92;
        }

LABEL_91:
        v173 = 0;
LABEL_92:
        if (v194)
        {
          v172 = sub_1B7800838();
        }

        else
        {
          v172 = 0;
        }

        if (v193)
        {
          v171 = sub_1B7800838();
        }

        else
        {
          v171 = 0;
        }

        if (v192)
        {
          v207 = sub_1B7800838();
        }

        else
        {
          v207 = 0;
        }

        v131 = v190;
        v170 = v129;
        if (v85)
        {
          v198 = sub_1B7800838();

          if (v131)
          {
LABEL_103:
            v197 = sub_1B7800838();

            goto LABEL_106;
          }
        }

        else
        {
          v198 = 0;
          if (v190)
          {
            goto LABEL_103;
          }
        }

        v197 = 0;
LABEL_106:
        if (v187)
        {
          v196 = sub_1B7800838();
        }

        else
        {
          v196 = 0;
        }

        if (v186)
        {
          v195 = sub_1B7800838();
        }

        else
        {
          v195 = 0;
        }

        v132 = v182;
        if (v185)
        {
          v194 = sub_1B7800838();

          if (v132)
          {
LABEL_114:
            v190 = sub_1B7800838();

LABEL_117:
            if (v184)
            {
              v193 = sub_1B7800838();
            }

            else
            {
              v193 = 0;
            }

            if (v183)
            {
              v192 = sub_1B7800838();
            }

            else
            {
              v192 = 0;
            }

            if (v181)
            {
              v191 = sub_1B7800838();
            }

            else
            {
              v191 = 0;
            }

            v133 = *(v114 + 48);
            v134 = v133(v81, 1, v113);
            v158 = v114;
            if (v134 == 1)
            {
              v135 = v113;
              v136 = 0;
            }

            else
            {
              v136 = sub_1B77FF3F8();
              v135 = v113;
              (*(v130 + 8))(v81, v113);
            }

            if (v180)
            {
              v137 = sub_1B7800838();
            }

            else
            {
              v137 = 0;
            }

            if (v179)
            {
              v138 = sub_1B7800838();
            }

            else
            {
              v138 = 0;
            }

            v139 = v208;
            v140 = v133(v208, 1, v135);
            v174 = v25;
            v141 = v170;
            if (v140 == 1)
            {
              v142 = 0;
            }

            else
            {
              v142 = sub_1B77FF3F8();
              (*(v158 + 8))(v139, v135);
            }

            v208 = v142;
            v143 = objc_allocWithZone(FKApplePayTransactionInsight);
            v156 = v142;
            v187 = v138;
            v155 = v138;
            v186 = v137;
            v154 = v137;
            v185 = v136;
            v153 = v136;
            v144 = v171;
            v145 = v172;
            v146 = v173;
            v147 = v175;
            v148 = v189;
            v149 = v178;
            v150 = v177;
            v151 = v176;
            v152 = v188;
            v184 = [v143 initWithPaymentHash:v189 transactionDate:v141 merchantName:v178 merchantRawName:v177 industryCategory:v176 industryCode:v188 merchantType:v175 merchantCountryCode:v173 terminalIdentifier:v172 merchantAdditionalData:v171 paymentNetwork:v207 isMerchantTokenTransaction:v203 isCoarseLocation:v202 location:v205 merchantIdentifier:v198 merchantRawCANL:v197 merchantRawCity:v196 merchantRawState:v195 merchantRawCountry:v194 merchantCity:v190 merchantZip:v193 merchantState:v192 merchantCleanConfidenceLevel:v206 rewardsAmount:v204 rewardsCurrency:v191 rewardsEligibilityReason:v201 adamIdentifier:v200 webURL:v153 webMerchantIdentifier:v154 webMerchantName:v155 isIssuerInstallmentTransaction:v199 issuerInstallmentManagementURL:v156];

            return v184;
          }
        }

        else
        {
          v194 = 0;
          if (v182)
          {
            goto LABEL_114;
          }
        }

        v190 = 0;
        goto LABEL_117;
      }

LABEL_90:
      v175 = 0;
      if (v195)
      {
        goto LABEL_87;
      }

      goto LABEL_91;
    }
  }

  if (qword_1EDAF65A8 != -1)
  {
    swift_once();
  }

  v31 = sub_1B78000B8();
  __swift_project_value_buffer(v31, qword_1EDAF65B0);
  v32 = a1;
  v33 = sub_1B7800098();
  v34 = sub_1B78011C8();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v209 = v36;
    *v35 = 136315138;
    v37 = [v32 publicTransactionObject];
    v38 = [v37 id];

    sub_1B77FF9E8();
    sub_1B729D260();
    v39 = sub_1B7802068();
    v41 = v40;
    (*(v3 + 8))(v5, v2);
    v42 = sub_1B71A3EF8(v39, v41, &v209);

    *(v35 + 4) = v42;
    _os_log_impl(&dword_1B7198000, v33, v34, "No Apple Pay insight available for transaction %s.", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1B8CA7A40](v36, -1, -1);
    MEMORY[0x1B8CA7A40](v35, -1, -1);
  }

  return 0;
}

id sub_1B729CCA8(void *a1)
{
  result = [a1 insightsObject];
  if (result)
  {
    v2 = result;
    v3 = [result bankMerchantInformationInsightObject];

    if (!v3)
    {
      return 0;
    }

    v4 = [v3 categoryDescription];
    if (v4)
    {
      v5 = v4;
      v27 = sub_1B7800868();
      v7 = v6;
    }

    else
    {
      v27 = 0;
      v7 = 0;
    }

    v28 = [v3 merchantAddress];
    v8 = ManagedBankMerchantInformationInsight.merchantCategoryCodeValue.getter();
    if ((v8 & 0x10000) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithShort_];
    }

    v10 = [v3 merchantName];
    if (v10)
    {
      v11 = v10;
      sub_1B7800868();
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = [v3 merchantNumber];
    if (v14)
    {
      v15 = v14;
      sub_1B7800868();
      v17 = v16;
    }

    else
    {
      v17 = 0;
    }

    v18 = [v3 standardIndustrialClassificationCode];
    if (v18)
    {
      v19 = v18;
      sub_1B7800868();
      v21 = v20;

      if (v7)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v21 = 0;
      if (v7)
      {
LABEL_18:
        v22 = sub_1B7800838();

        if (v13)
        {
          goto LABEL_19;
        }

        goto LABEL_24;
      }
    }

    v22 = 0;
    if (v13)
    {
LABEL_19:
      v23 = sub_1B7800838();

      if (v17)
      {
        goto LABEL_20;
      }

      goto LABEL_25;
    }

LABEL_24:
    v23 = 0;
    if (v17)
    {
LABEL_20:
      v24 = sub_1B7800838();

      if (v21)
      {
LABEL_21:
        v25 = sub_1B7800838();

LABEL_27:
        v26 = [objc_allocWithZone(FKBankMerchantInformationInsight) initWithCategoryDescription:v22 merchantAddress:v28 merchantCategoryCode:v9 merchantName:v23 merchantNumber:v24 standardIndustrialClassificationCode:v25];

        return v26;
      }

LABEL_26:
      v25 = 0;
      goto LABEL_27;
    }

LABEL_25:
    v24 = 0;
    if (v21)
    {
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  return result;
}

id sub_1B729CF58(void *a1)
{
  result = [a1 insightsObject];
  if (result)
  {
    v2 = result;
    v3 = [result contactInsightObject];
    if (v3)
    {
      v4 = v3;
      v5 = [v3 peerPaymentCounterpartHandle];
      if (v5)
      {
        v6 = v5;
        sub_1B7800868();

        v7 = sub_1B7800838();
      }

      else
      {
        v7 = 0;
      }

      v8 = [objc_allocWithZone(FKContactTransactionInsight) initWithPeerPaymentCounterpartHandle_];

      return v8;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

id sub_1B729D044(void *a1)
{
  v2 = sub_1B77FF988();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 2];
  result = [a1 insightsObject];
  if (result)
  {
    v7 = result;
    v8 = [result userInsightObject];

    if (v8)
    {
      ManagedUserTransactionInsight.TransactionCategory.init(rawValue:)([v8 transactionCategoryValue]);
      v15[0] = byte_1B780E678[v15[1]];
      v9 = _sSo28FKPaymentTransactionCategoryV10FinanceKitEyAbC0bC0OcfC_0(v15);
      v10 = [v8 updatedAt];
      sub_1B77FF928();

      v11 = objc_allocWithZone(FKUserTransactionInsight);
      v12 = sub_1B77FF8B8();
      v13 = [v11 initWithTransactionCategory:v9 updatedAt:v12];

      (*(v3 + 8))(v5, v2);
      return v13;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_1B729D260()
{
  result = qword_1EB98F120;
  if (!qword_1EB98F120)
  {
    sub_1B77FFA18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB98F120);
  }

  return result;
}

uint64_t sub_1B729D2B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B729D320(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B729D388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t InternalAccountQuery.init(sortDescriptors:predicate:limit:offset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, int a6@<W5>, void *a7@<X8>)
{
  v28 = a6;
  v27 = a5;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F130);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F128);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v27 - v20;
  *a7 = a1;
  v22 = type metadata accessor for InternalAccountQuery();
  sub_1B729D6B8(a2, a7 + v22[5]);
  sub_1B729D6B8(a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1B729D728(a2);
    result = sub_1B729D728(v14);
    v24 = 0;
  }

  else
  {
    (*(v16 + 32))(v21, v14, v15);
    sub_1B729D790();
    (*(v16 + 16))(v19, v21, v15);
    v24 = sub_1B71F8678(v19);
    sub_1B729D728(a2);
    result = (*(v16 + 8))(v21, v15);
  }

  *(a7 + v22[8]) = v24;
  v25 = a7 + v22[6];
  *v25 = a3;
  v25[8] = a4 & 1;
  v26 = a7 + v22[7];
  *v26 = v27;
  v26[8] = v28 & 1;
  return result;
}

uint64_t type metadata accessor for InternalAccountQuery()
{
  result = qword_1EDAF8608;
  if (!qword_1EDAF8608)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B729D6B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B729D728(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98F130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B729D790()
{
  result = qword_1EDAFAF30;
  if (!qword_1EDAFAF30)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDAFAF30);
  }

  return result;
}

uint64_t PrivateInternalAccountQuery.init(sortDescriptors:predicate:limit:offset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = a4 & 1;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  return result;
}

void sub_1B729D824()
{
  sub_1B729D930(319, &qword_1EDAF64B8, &qword_1EB990988, &unk_1B78207B0, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B729D930(319, &qword_1EDAF65C8, &qword_1EB98F128, &unk_1B7816FD0, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B729D994();
      if (v2 <= 0x3F)
      {
        sub_1B729D9E4();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1B729D930(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1B729D994()
{
  if (!qword_1EDAF6488)
  {
    v0 = sub_1B7801768();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAF6488);
    }
  }
}

void sub_1B729D9E4()
{
  if (!qword_1EDAF6480)
  {
    sub_1B729D790();
    v0 = sub_1B7801768();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDAF6480);
    }
  }
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

uint64_t sub_1B729DA50(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B729DA98(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

FinanceKit::AccountStatus_optional __swiftcall AccountStatus.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B729DB20()
{
  result = qword_1EB990990;
  if (!qword_1EB990990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990990);
  }

  return result;
}

unint64_t sub_1B729DC30()
{
  result = qword_1EB990998;
  if (!qword_1EB990998)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9909A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990998);
  }

  return result;
}

unint64_t sub_1B729DCB4()
{
  result = qword_1EB9909A8;
  if (!qword_1EB9909A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9909A8);
  }

  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ManagedFoundInMailItemDeleter.deleteFoundInMailItem(withMessageID:context:)(Swift::String withMessageID, NSManagedObjectContext context)
{
  object = withMessageID._object;
  countAndFlagsBits = withMessageID._countAndFlagsBits;
  type metadata accessor for ManagedFoundInMailItem();
  v6 = static ManagedFoundInMailItem.mailItem(withMessageID:in:)(countAndFlagsBits, object);
  if (v2)
  {
    if (qword_1EDAFAF50 != -1)
    {
      swift_once();
    }

    v7 = sub_1B78000B8();
    __swift_project_value_buffer(v7, qword_1EDAFAF58);

    v8 = v2;
    v9 = sub_1B7800098();
    v10 = sub_1B78011D8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v11 = 136315650;
      *(v11 + 4) = sub_1B71A3EF8(0xD000000000000016, 0x80000001B7877350, &v19);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_1B71A3EF8(countAndFlagsBits, object, &v19);
      *(v11 + 22) = 2112;
      v14 = v2;
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 24) = v15;
      *v12 = v15;
      _os_log_impl(&dword_1B7198000, v9, v10, "Could not delete %s with messageID %s. %@", v11, 0x20u);
      sub_1B726B694(v12);
      MEMORY[0x1B8CA7A40](v12, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v13, -1, -1);
      MEMORY[0x1B8CA7A40](v11, -1, -1);
    }

    swift_willThrow();
  }

  else if (v6)
  {
    v17 = v6;
    [(objc_class *)context.super.isa deleteObject:v6];

    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

void ManagedFoundInMailItemDeleter.deleteFoundInMailItem(with:associatedWith:in:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  type metadata accessor for ManagedFoundInMailItem();
  v7 = static ManagedFoundInMailItem.mailItem(withMessageID:in:)(a1, a2);
  if (v3)
  {
    if (qword_1EDAFAF50 != -1)
    {
      swift_once();
    }

    v8 = sub_1B78000B8();
    __swift_project_value_buffer(v8, qword_1EDAFAF58);

    v9 = v3;
    v10 = sub_1B7800098();
    v11 = sub_1B78011D8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v20 = v14;
      *v12 = 136315650;
      *(v12 + 4) = sub_1B71A3EF8(0xD000000000000016, 0x80000001B7877350, &v20);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_1B71A3EF8(a1, a2, &v20);
      *(v12 + 22) = 2112;
      v15 = v3;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 24) = v16;
      *v13 = v16;
      _os_log_impl(&dword_1B7198000, v10, v11, "Could not delete %s with messageID %s. %@", v12, 0x20u);
      sub_1B726B694(v13);
      MEMORY[0x1B8CA7A40](v13, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1B8CA7A40](v14, -1, -1);
      MEMORY[0x1B8CA7A40](v12, -1, -1);
    }

    swift_willThrow();
  }

  else if (v7)
  {
    v17 = v7;
    v18 = sub_1B7800838();
    v19 = [v17 mutableSetValueForKey_];

    [v19 removeObject_];
  }
}

uint64_t ManagedFoundInMailItemDeleter.deleteFoundInMailItems(messageIDs:with:associatedWith:in:)(uint64_t a1, unsigned __int8 *a2, void *a3)
{
  v6 = *a2;
  type metadata accessor for ManagedFoundInMailItem();
  LOBYTE(v48[0]) = v6;
  v7 = static ManagedFoundInMailItem.mailItems(dataSource:associatedWith:in:)(v48, a3);
  v8 = v3;
  if (!v3)
  {
    v49 = MEMORY[0x1E69E7CC0];
    if (v7 >> 62)
    {
      v36 = v7;
      v6 = sub_1B7801958();
      v7 = v36;
      if (v6)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v6 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v6)
      {
LABEL_8:
        v43 = a3;
        v44 = v7;
        v8 = 0;
        v19 = v7 & 0xC000000000000001;
        v46 = (v7 + 32);
        v47 = v7 & 0xFFFFFFFFFFFFFF8;
        v20 = a1 + 56;
        v45 = v6;
        while (1)
        {
          if (v19)
          {
            v21 = MEMORY[0x1B8CA5DC0](v8, v44);
          }

          else
          {
            if (v8 >= *(v47 + 16))
            {
              goto LABEL_32;
            }

            v21 = *&v46[8 * v8];
          }

          v22 = v21;
          if (__OFADD__(v8++, 1))
          {
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          if (a1)
          {
            v24 = [v21 messageID];
            v25 = sub_1B7800868();
            v27 = v26;

            if (!*(a1 + 16))
            {

              goto LABEL_11;
            }

            v28 = v19;
            sub_1B78022F8();
            sub_1B7800798();
            v29 = sub_1B7802368();
            v30 = -1 << *(a1 + 32);
            v31 = v29 & ~v30;
            if (((*(v20 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
            {
LABEL_26:

              v19 = v28;
              v6 = v45;
              goto LABEL_11;
            }

            v32 = ~v30;
            while (1)
            {
              v33 = (*(a1 + 48) + 16 * v31);
              v34 = *v33 == v25 && v33[1] == v27;
              if (v34 || (sub_1B78020F8() & 1) != 0)
              {
                break;
              }

              v31 = (v31 + 1) & v32;
              if (((*(v20 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
              {
                goto LABEL_26;
              }
            }

            v19 = v28;
            v6 = v45;
          }

          sub_1B7801B68();
          sub_1B7801BA8();
          sub_1B7801BB8();
          sub_1B7801B78();
LABEL_11:
          if (v8 == v6)
          {
            v35 = v49;
            a3 = v43;

            if ((v35 & 0x8000000000000000) == 0)
            {
              goto LABEL_36;
            }

            goto LABEL_44;
          }
        }
      }
    }

    v35 = MEMORY[0x1E69E7CC0];

    if (v35 < 0)
    {
      goto LABEL_44;
    }

LABEL_36:
    if ((v35 & 0x4000000000000000) != 0)
    {
LABEL_44:
      result = sub_1B7801958();
      v37 = result;
      if (!result)
      {
      }
    }

    else
    {
      v37 = *(v35 + 16);
      if (!v37)
      {
      }
    }

    if (v37 < 1)
    {
      __break(1u);
      return result;
    }

    v38 = 0;
    do
    {
      if ((v35 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x1B8CA5DC0](v38, v35);
      }

      else
      {
        v39 = *(v35 + 8 * v38 + 32);
      }

      v40 = v39;
      ++v38;
      v41 = sub_1B7800838();
      v42 = [v40 mutableSetValueForKey_];

      [v42 removeObject_];
    }

    while (v37 != v38);
  }

  if (qword_1EDAFAF50 != -1)
  {
LABEL_33:
    swift_once();
  }

  v9 = sub_1B78000B8();
  __swift_project_value_buffer(v9, qword_1EDAFAF58);
  v10 = v8;
  v11 = sub_1B7800098();
  v12 = sub_1B78011D8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v48[0] = v15;
    *v13 = 136315650;
    *(v13 + 4) = sub_1B71A3EF8(0xD000000000000016, 0x80000001B7877350, v48);
    *(v13 + 12) = 2048;
    *(v13 + 14) = v6;
    *(v13 + 22) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v17;
    *v14 = v17;
    _os_log_impl(&dword_1B7198000, v11, v12, "Could not delete %s with dataSource %ld. %@", v13, 0x20u);
    sub_1B726B694(v14);
    MEMORY[0x1B8CA7A40](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1B8CA7A40](v15, -1, -1);
    MEMORY[0x1B8CA7A40](v13, -1, -1);
  }

  return swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ManagedFoundInMailItemDeleter.deleteAllFoundInMailItems(for:in:)(FinanceKit::FoundInMailItem::DataSource_optional a1, NSManagedObjectContext in)
{
  v4 = *a1.value;
  type metadata accessor for ManagedFoundInMailItem();
  LOBYTE(v24) = v4;
  v5 = static ManagedFoundInMailItem.mailItems(dataSource:associatedWith:in:)(&v24, 0);
  if (!v2)
  {
    v15 = v5;
    if (v5 >> 62)
    {
      v16 = sub_1B7801958();
      if (!v16)
      {
        goto LABEL_19;
      }
    }

    else
    {
      v16 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_19;
      }
    }

    if (v16 < 1)
    {
      __break(1u);
      return;
    }

    for (i = 0; i != v16; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1B8CA5DC0](i, v15);
      }

      else
      {
        v18 = *(v15 + 8 * i + 32);
      }

      v19 = v18;
      [(objc_class *)in.super.isa deleteObject:v18];
    }

LABEL_19:

    return;
  }

  if (qword_1EDAFAF50 != -1)
  {
    swift_once();
  }

  v6 = sub_1B78000B8();
  __swift_project_value_buffer(v6, qword_1EDAFAF58);
  v7 = v2;
  v8 = sub_1B7800098();
  v9 = sub_1B78011D8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = 0xD000000000000010;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v11 = 136315650;
    *(v11 + 4) = sub_1B71A3EF8(0xD000000000000016, 0x80000001B7877350, &v24);
    *(v11 + 12) = 2080;
    if (v4 == 2)
    {
      v14 = 0x80000001B7877390;
    }

    else
    {
      v10 = sub_1B7802068();
      v14 = v20;
    }

    v21 = sub_1B71A3EF8(v10, v14, &v24);

    *(v11 + 14) = v21;
    *(v11 + 22) = 2112;
    v22 = v2;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 24) = v23;
    *v12 = v23;
    _os_log_impl(&dword_1B7198000, v8, v9, "Could not delete all %s for %s. %@", v11, 0x20u);
    sub_1B726B694(v12);
    MEMORY[0x1B8CA7A40](v12, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1B8CA7A40](v13, -1, -1);
    MEMORY[0x1B8CA7A40](v11, -1, -1);
  }

  swift_willThrow();
}

uint64_t Order.PickupFulfillment.StatusValues.init(order:orderContent:fulfillment:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990830);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v30 - v15;
  v17 = a1;
  v18 = a2;
  v19 = ManagedOrderPickupFulfillment.status.getter();
  Order.Fulfillment.DisplayStatus<>.init(order:orderContent:pickupStatus:)(v17, v18, v19, v16);
  ManagedOrderPickupFulfillment.pickupWindow.getter(v13);
  v20 = [a3 pickedUpDate];
  if (v20)
  {
    v21 = v20;
    sub_1B77FF928();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = sub_1B77FF988();
  v24 = *(*(v23 - 8) + 56);
  v24(v10, v22, 1, v23);
  v25 = type metadata accessor for Order.PickupFulfillment.StatusValues(0);
  v26 = *(v25 + 20);
  v27 = type metadata accessor for Order.FulfillmentWindow(0);
  (*(*(v27 - 8) + 56))(a4 + v26, 1, 1, v27);
  v28 = *(v25 + 24);
  v24((a4 + v28), 1, 1, v23);
  sub_1B72A0824(v16, a4);
  sub_1B7213740(v13, a4 + v26, &qword_1EB990828);
  return sub_1B7213740(v10, a4 + v28, &qword_1EB98EBD0);
}

uint64_t Order.PickupFulfillment.StatusValues.init(orderContent:fulfillment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22[-v10];
  v12 = type metadata accessor for RawECommerceOrderContent(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B72A1FE8(a1, v14, type metadata accessor for RawECommerceOrderContent);
  v23 = *(a2 + 8);
  Order.Fulfillment.DisplayStatus<>.init(orderContent:pickupStatus:)(v14, &v23, a3);
  RawOrderPickupFulfillment.pickupWindow.getter(v11);
  sub_1B72A0894(a1, type metadata accessor for RawECommerceOrderContent);
  v15 = type metadata accessor for RawOrderPickupFulfillment();
  sub_1B7205588(a2 + *(v15 + 56), v8, &qword_1EB98EBD0);
  sub_1B72A0894(a2, type metadata accessor for RawOrderPickupFulfillment);
  v16 = type metadata accessor for Order.PickupFulfillment.StatusValues(0);
  v17 = *(v16 + 20);
  v18 = type metadata accessor for Order.FulfillmentWindow(0);
  (*(*(v18 - 8) + 56))(&a3[v17], 1, 1, v18);
  v19 = *(v16 + 24);
  v20 = sub_1B77FF988();
  (*(*(v20 - 8) + 56))(&a3[v19], 1, 1, v20);
  sub_1B7213740(v11, &a3[v17], &qword_1EB990828);
  return sub_1B7213740(v8, &a3[v19], &qword_1EB98EBD0);
}

uint64_t Order.PickupFulfillment.StatusFormatter.init(configuration:formatPickedUpDate:useRelativeDateFormatting:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1B72A26D0(a1, a4, type metadata accessor for FormatterConfiguration);
  result = type metadata accessor for Order.PickupFulfillment.StatusFormatter(0);
  *(a4 + *(result + 20)) = a2;
  *(a4 + *(result + 24)) = a3;
  return result;
}

uint64_t Order.PickupFulfillment.StatusFormatter.format(_:now:)(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990830);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17 - v9;
  sub_1B7205588(a1, &v17 - v9, &qword_1EB990830);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_9;
  }

  sub_1B7205588(v10, v8, &qword_1EB990830);
  v11 = *v8;
  if (v11 != 3)
  {
    if (v11 == 2)
    {
      v12 = sub_1B729F478(a1, a2);
      goto LABEL_7;
    }

LABEL_9:
    sub_1B7205418(v10, &qword_1EB990830);
LABEL_10:
    v14 = Order.Fulfillment.DisplayStatus<>.localizedTitle.getter();

    return v14;
  }

  if (*(v2 + *(type metadata accessor for Order.PickupFulfillment.StatusFormatter(0) + 20)) != 1)
  {
    goto LABEL_9;
  }

  v12 = sub_1B729F6F4(a1, a2);
LABEL_7:
  v14 = v12;
  v15 = v13;
  sub_1B7205418(v10, &qword_1EB990830);
  if (!v15)
  {
    goto LABEL_10;
  }

  return v14;
}

uint64_t Order.PickupFulfillment.StatusValues.init(displayStatus:pickupWindow:pickedUpDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for Order.PickupFulfillment.StatusValues(0);
  v9 = *(v8 + 20);
  v10 = type metadata accessor for Order.FulfillmentWindow(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = *(v8 + 24);
  v12 = sub_1B77FF988();
  (*(*(v12 - 8) + 56))(a4 + v11, 1, 1, v12);
  sub_1B72A0824(a1, a4);
  sub_1B7213740(a2, a4 + v9, &qword_1EB990828);
  return sub_1B7213740(a3, a4 + v11, &qword_1EB98EBD0);
}

uint64_t sub_1B729F478(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v4 = type metadata accessor for EndOfPickupWindowFormatter();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for Order.FulfillmentWindow(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Order.PickupFulfillment.StatusValues(0);
  sub_1B7205588(a1 + *(v14 + 20), v9, &qword_1EB990828);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B7205418(v9, &qword_1EB990828);
    return 0;
  }

  else
  {
    sub_1B72A26D0(v9, v13, type metadata accessor for Order.FulfillmentWindow);
    v16 = *(v2 + *(type metadata accessor for Order.PickupFulfillment.StatusFormatter(0) + 24));
    sub_1B72A1FE8(v2, v6, type metadata accessor for FormatterConfiguration);
    v6[*(v4 + 20)] = v16;
    v17 = sub_1B7678898(v13, v19);
    sub_1B72A0894(v6, type metadata accessor for EndOfPickupWindowFormatter);
    sub_1B72A0894(v13, type metadata accessor for Order.FulfillmentWindow);
    return v17;
  }
}

uint64_t sub_1B729F6F4(uint64_t a1, uint64_t a2)
{
  v19 = a2;
  v4 = type metadata accessor for PickedUpDateFormatter(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = sub_1B77FF988();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Order.PickupFulfillment.StatusValues(0);
  sub_1B7205588(a1 + *(v14 + 24), v9, &qword_1EB98EBD0);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B7205418(v9, &qword_1EB98EBD0);
    return 0;
  }

  else
  {
    (*(v11 + 32))(v13, v9, v10);
    v16 = *(v2 + *(type metadata accessor for Order.PickupFulfillment.StatusFormatter(0) + 24));
    sub_1B72A1FE8(v2, v6, type metadata accessor for FormatterConfiguration);
    v6[*(v4 + 20)] = v16;
    v17 = sub_1B767A75C(v13, v19);
    sub_1B72A0894(v6, type metadata accessor for PickedUpDateFormatter);
    (*(v11 + 8))(v13, v10);
    return v17;
  }
}

uint64_t static Order.PickupFulfillment.StatusFormatter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1B8CA3D90]() & 1) != 0 && (v4 = type metadata accessor for FormatterConfiguration(), (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20))) && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)) & 1) != 0 && (v5 = type metadata accessor for Order.PickupFulfillment.StatusFormatter(0), *(a1 + *(v5 + 20)) == *(a2 + *(v5 + 20))))
  {
    v6 = *(a1 + *(v5 + 24)) ^ *(a2 + *(v5 + 24)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1B729FA14()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t sub_1B729FA80@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B72A25A4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B729FAA8(uint64_t a1)
{
  v2 = sub_1B72A1F4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B729FAE4(uint64_t a1)
{
  v2 = sub_1B72A1F4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Order.PickupFulfillment.StatusFormatter.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9909B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72A1F4C();
  sub_1B78023F8();
  v8[15] = 0;
  type metadata accessor for FormatterConfiguration();
  sub_1B72A1FA0(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for Order.PickupFulfillment.StatusFormatter(0);
    v8[14] = 1;
    sub_1B7801F88();
    v8[13] = 2;
    sub_1B7801F88();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t Order.PickupFulfillment.StatusFormatter.hash(into:)()
{
  sub_1B77FFAF8();
  sub_1B72A1FA0(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B72A1FA0(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B72A1FA0(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  type metadata accessor for Order.PickupFulfillment.StatusFormatter(0);
  sub_1B7802318();
  return sub_1B7802318();
}

uint64_t Order.PickupFulfillment.StatusFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B72A1FA0(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B72A1FA0(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B72A1FA0(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  type metadata accessor for Order.PickupFulfillment.StatusFormatter(0);
  sub_1B7802318();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t Order.PickupFulfillment.StatusFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9909C0);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for Order.PickupFulfillment.StatusFormatter(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72A1F4C();
  sub_1B78023C8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v18;
  v13 = v11;
  v23 = 0;
  sub_1B72A1FA0(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
  v14 = v19;
  sub_1B7801E48();
  sub_1B72A26D0(v20, v13, type metadata accessor for FormatterConfiguration);
  v22 = 1;
  *(v13 + *(v9 + 20)) = sub_1B7801E08() & 1;
  v21 = 2;
  v15 = sub_1B7801E08();
  (*(v12 + 8))(v8, v14);
  *(v13 + *(v9 + 24)) = v15 & 1;
  sub_1B72A1FE8(v13, v17, type metadata accessor for Order.PickupFulfillment.StatusFormatter);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B72A0894(v13, type metadata accessor for Order.PickupFulfillment.StatusFormatter);
}

uint64_t sub_1B72A0348@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = Order.PickupFulfillment.StatusFormatter.format(_:now:)(a1, a2);
  *a3 = result;
  a3[1] = v5;
  return result;
}

uint64_t sub_1B72A0370@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v8 = Order.PickupFulfillment.StatusFormatter.format(_:now:)(a1, v7);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B72A048C()
{
  sub_1B77FFAF8();
  sub_1B72A1FA0(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B72A1FA0(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B72A1FA0(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  sub_1B7802318();
  return sub_1B7802318();
}

uint64_t sub_1B72A05EC()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B72A1FA0(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B72A1FA0(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B72A1FA0(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  sub_1B7802318();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t sub_1B72A0764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x1B8CA3D90]() & 1) != 0 && (v6 = type metadata accessor for FormatterConfiguration(), (MEMORY[0x1B8CA3EF0](a1 + *(v6 + 20), a2 + *(v6 + 20))) && (MEMORY[0x1B8CA3FF0](a1 + *(v6 + 24), a2 + *(v6 + 24)) & 1) != 0 && *(a1 + *(a3 + 20)) == *(a2 + *(a3 + 20)))
  {
    v7 = *(a1 + *(a3 + 24)) ^ *(a2 + *(a3 + 24)) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1B72A0824(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990830);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B72A0894(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B72A0914()
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF93B0;
  v1 = sub_1B7800838();
  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_1B7800868();
  return v5;
}

uint64_t sub_1B72A0A14()
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDAF93B0;
  v1 = sub_1B7800838();
  v2 = sub_1B7800838();
  v3 = sub_1B7800838();
  v4 = [v0 localizedStringForKey:v1 value:v2 table:v3];

  v5 = sub_1B7800868();
  return v5;
}

uint64_t sub_1B72A0B14(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B7807CD0;
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B721FF04();
  *(v4 + 32) = a1;
  *(v4 + 40) = a2;
  v5 = qword_1EDAF93A8;

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDAF93B0;
  v7 = sub_1B7800838();
  v8 = sub_1B7800838();
  v9 = sub_1B7800838();
  v10 = [v6 localizedStringForKey:v7 value:v8 table:v9];

  sub_1B7800868();
  v11 = sub_1B78008A8();

  return v11;
}

uint64_t sub_1B72A0C9C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990A98);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72A2B48();
  sub_1B78023F8();
  v8[15] = 0;
  type metadata accessor for FormatterConfiguration();
  sub_1B72A1FA0(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  if (!v1)
  {
    type metadata accessor for PickedUpDateFormatter(0);
    v8[14] = 1;
    sub_1B7801F88();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1B72A0E54@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990A88);
  v17 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = type metadata accessor for PickedUpDateFormatter(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72A2B48();
  v11 = v19;
  sub_1B78023C8();
  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = type metadata accessor for FormatterConfiguration;
  }

  else
  {
    v12 = v17;
    v21 = 0;
    sub_1B72A1FA0(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    sub_1B7801E48();
    sub_1B72A2B9C(v18, v10);
    v20 = 1;
    v13 = sub_1B7801E08();
    (*(v12 + 8))(v7, v5);
    v10[*(v8 + 20)] = v13 & 1;
    sub_1B72A1FE8(v10, v16, type metadata accessor for PickedUpDateFormatter);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v15 = type metadata accessor for PickedUpDateFormatter;
  }

  return sub_1B72A0894(v10, v15);
}

uint64_t sub_1B72A1164()
{
  if (*v0)
  {
    return 0xD000000000000019;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t sub_1B72A11B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B78773D0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B78020F8();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1B72A129C(uint64_t a1)
{
  v2 = sub_1B72A2B48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72A12D8(uint64_t a1)
{
  v2 = sub_1B72A2B48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B72A1354@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FF938();
  v8 = sub_1B767A75C(a1, v7);
  v10 = v9;
  result = (*(v5 + 8))(v7, v4);
  *a2 = v8;
  a2[1] = v10;
  return result;
}

uint64_t sub_1B72A146C()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B72A1FA0(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B72A1FA0(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B72A1FA0(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t sub_1B72A15D8()
{
  sub_1B77FFAF8();
  sub_1B72A1FA0(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B72A1FA0(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B72A1FA0(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802318();
}

uint64_t sub_1B72A172C()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B72A1FA0(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B72A1FA0(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B72A1FA0(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  sub_1B7802318();
  return sub_1B7802368();
}

uint64_t sub_1B72A1894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x1B8CA3D90]() & 1) != 0 && (v6 = type metadata accessor for FormatterConfiguration(), (MEMORY[0x1B8CA3EF0](a1 + *(v6 + 20), a2 + *(v6 + 20))) && (MEMORY[0x1B8CA3FF0](a1 + *(v6 + 24), a2 + *(v6 + 24)))
  {
    v7 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

BOOL _s10FinanceKit5OrderV17PickupFulfillmentV12StatusValuesV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF988();
  v48 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v39 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v39 - v9;
  v10 = type metadata accessor for Order.FulfillmentWindow(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v45 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990828);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v39 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990A40);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  v19 = a2;
  if ((sub_1B767C864(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v40 = v6;
  v43 = v4;
  v41 = type metadata accessor for Order.PickupFulfillment.StatusValues(0);
  v42 = a1;
  v20 = *(v41 + 20);
  v21 = *(v16 + 48);
  sub_1B7205588(a1 + v20, v18, &qword_1EB990828);
  sub_1B7205588(v19 + v20, &v18[v21], &qword_1EB990828);
  v22 = *(v11 + 48);
  if (v22(v18, 1, v10) != 1)
  {
    sub_1B7205588(v18, v15, &qword_1EB990828);
    if (v22(&v18[v21], 1, v10) != 1)
    {
      v25 = v45;
      sub_1B72A26D0(&v18[v21], v45, type metadata accessor for Order.FulfillmentWindow);
      v26 = _s10FinanceKit5OrderV17FulfillmentWindowO2eeoiySbAE_AEtFZ_0(v15, v25);
      sub_1B72A0894(v25, type metadata accessor for Order.FulfillmentWindow);
      sub_1B72A0894(v15, type metadata accessor for Order.FulfillmentWindow);
      sub_1B7205418(v18, &qword_1EB990828);
      if ((v26 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

    sub_1B72A0894(v15, type metadata accessor for Order.FulfillmentWindow);
LABEL_7:
    v23 = &qword_1EB990A40;
    v24 = v18;
LABEL_15:
    sub_1B7205418(v24, v23);
    return 0;
  }

  if (v22(&v18[v21], 1, v10) != 1)
  {
    goto LABEL_7;
  }

  sub_1B7205418(v18, &qword_1EB990828);
LABEL_9:
  v27 = *(v41 + 24);
  v28 = v47;
  v29 = *(v46 + 48);
  sub_1B7205588(v42 + v27, v47, &qword_1EB98EBD0);
  sub_1B7205588(v19 + v27, v28 + v29, &qword_1EB98EBD0);
  v30 = v48;
  v31 = *(v48 + 48);
  v32 = v43;
  if (v31(v28, 1, v43) == 1)
  {
    if (v31(v28 + v29, 1, v32) == 1)
    {
      sub_1B7205418(v28, &qword_1EB98EBD0);
      return 1;
    }

    goto LABEL_14;
  }

  v33 = v44;
  sub_1B7205588(v28, v44, &qword_1EB98EBD0);
  if (v31(v28 + v29, 1, v32) == 1)
  {
    (*(v30 + 8))(v33, v32);
LABEL_14:
    v23 = &qword_1EB98FCE0;
    v24 = v28;
    goto LABEL_15;
  }

  v35 = v28 + v29;
  v36 = v40;
  (*(v30 + 32))(v40, v35, v32);
  sub_1B72A1FA0(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v37 = sub_1B7800828();
  v38 = *(v30 + 8);
  v38(v36, v32);
  v38(v33, v32);
  sub_1B7205418(v28, &qword_1EB98EBD0);
  return (v37 & 1) != 0;
}

unint64_t sub_1B72A1F4C()
{
  result = qword_1EB9909B8;
  if (!qword_1EB9909B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9909B8);
  }

  return result;
}

uint64_t sub_1B72A1FA0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B72A1FE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B72A2050(uint64_t a1)
{
  result = sub_1B72A1FA0(&qword_1EB9909C8, type metadata accessor for Order.PickupFulfillment.StatusFormatter);
  *(a1 + 8) = result;
  return result;
}

void sub_1B72A21F0()
{
  sub_1B72A22C4();
  if (v0 <= 0x3F)
  {
    sub_1B72A2394(319, &qword_1EB990A10, type metadata accessor for Order.FulfillmentWindow);
    if (v1 <= 0x3F)
    {
      sub_1B72A2394(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B72A22C4()
{
  if (!qword_1EB990A00)
  {
    sub_1B7290B10();
    sub_1B72A2340();
    v0 = type metadata accessor for Order.Fulfillment.DisplayStatus();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB990A00);
    }
  }
}

unint64_t sub_1B72A2340()
{
  result = qword_1EB990A08;
  if (!qword_1EB990A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990A08);
  }

  return result;
}

void sub_1B72A2394(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B7801768();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B72A2410()
{
  result = type metadata accessor for FormatterConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B72A24A0()
{
  result = qword_1EB990A28;
  if (!qword_1EB990A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990A28);
  }

  return result;
}

unint64_t sub_1B72A24F8()
{
  result = qword_1EB990A30;
  if (!qword_1EB990A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990A30);
  }

  return result;
}

unint64_t sub_1B72A2550()
{
  result = qword_1EB990A38;
  if (!qword_1EB990A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990A38);
  }

  return result;
}

uint64_t sub_1B72A25A4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B78773B0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001B78773D0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1B72A26D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t __swift_get_extra_inhabitant_index_8Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for FormatterConfiguration();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t __swift_store_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for FormatterConfiguration();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1B72A2904()
{
  result = type metadata accessor for FormatterConfiguration();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B72A2A98(uint64_t a1)
{
  result = sub_1B72A1FA0(&qword_1EB990A78, type metadata accessor for PickedUpDateFormatter);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B72A2AF0(uint64_t a1)
{
  result = sub_1B72A1FA0(&qword_1EB990A80, type metadata accessor for PickedUpDateFormatter);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B72A2B48()
{
  result = qword_1EB990A90;
  if (!qword_1EB990A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990A90);
  }

  return result;
}

uint64_t sub_1B72A2B9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatterConfiguration();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B72A2C14()
{
  result = qword_1EB990AA0;
  if (!qword_1EB990AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990AA0);
  }

  return result;
}

unint64_t sub_1B72A2C6C()
{
  result = qword_1EB990AA8;
  if (!qword_1EB990AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990AA8);
  }

  return result;
}

unint64_t sub_1B72A2CC4()
{
  result = qword_1EB990AB0;
  if (!qword_1EB990AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990AB0);
  }

  return result;
}

uint64_t BankConnectService.loadScheduledPayments(for:)(uint64_t a1, uint64_t a2)
{
  v3[11] = a2;
  v3[12] = v2;
  v3[10] = a1;
  v3[13] = type metadata accessor for BankConnectService.Message();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B72A2DB4, 0, 0);
}

uint64_t sub_1B72A2DB4()
{
  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[10];
  v0[15] = *(v0[12] + 16);
  *v1 = v3;
  v1[1] = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B726B820, 0, 0);
}

uint64_t BankConnectService.loadScheduledPayments(for:)(uint64_t *a1)
{
  *(v2 + 80) = v1;
  *(v2 + 88) = type metadata accessor for BankConnectService.Message();
  v4 = swift_task_alloc();
  v5 = *a1;
  *(v2 + 96) = v4;
  *(v2 + 104) = v5;
  *(v2 + 112) = *(a1 + 1);
  *(v2 + 128) = a1[3];

  return MEMORY[0x1EEE6DFA0](sub_1B72A2EEC, 0, 0);
}

uint64_t sub_1B72A2EEC()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];
  v5 = v0[12];
  v0[17] = *(v0[10] + 16);
  *v5 = v3;
  v5[1] = v4;
  v5[2] = v1;
  v5[3] = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B726BC10, 0, 0);
}

uint64_t sub_1B72A2F90(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B723838C;

  return BankConnectService.loadScheduledPayments(for:)(a1, a2);
}

uint64_t sub_1B72A3038(uint64_t *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B7201BB0;

  return BankConnectService.loadScheduledPayments(for:)(a1);
}

uint64_t dispatch thunk of BankConnectScheduledPaymentsUpdating.loadScheduledPayments(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1B723838C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of BankConnectScheduledPaymentsUpdating.loadScheduledPayments(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1B7201BB0;

  return v9(a1, a2, a3);
}

uint64_t BankConnectTermsAndConditionsNotificationFormatter.Output.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BankConnectTermsAndConditionsNotificationFormatter.Output.body.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t BankConnectTermsAndConditionsNotificationFormatter.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B77FFA68();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFBC8();
  sub_1B77FFCC8();

  return sub_1B72A2B9C(a1, a2);
}

uint64_t BankConnectTermsAndConditionsNotificationFormatter.format(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_1EDAF93A8 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDAF93B0;
  v5 = sub_1B7800838();
  v6 = sub_1B7800838();
  v7 = sub_1B7800838();
  v8 = [v4 localizedStringForKey:v5 value:v6 table:v7];

  v9 = sub_1B7800868();
  v11 = v10;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B7807CD0;
  v13 = sub_1B72A43C8(a1);
  v15 = v14;
  *(v12 + 56) = MEMORY[0x1E69E6158];
  *(v12 + 64) = sub_1B721FF04();
  *(v12 + 32) = v13;
  *(v12 + 40) = v15;
  v16 = sub_1B7800838();
  v17 = sub_1B7800838();
  v18 = sub_1B7800838();
  v19 = [v4 localizedStringForKey:v16 value:v17 table:v18];

  sub_1B7800868();
  v20 = sub_1B78008A8();
  v22 = v21;

  *a2 = v9;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v22;
  return result;
}

uint64_t static BankConnectTermsAndConditionsNotificationFormatter.notificationIdentifier(forTermsAndConditionsID:)(uint64_t a1, uint64_t a2)
{
  sub_1B7801A78();
  MEMORY[0x1B8CA4D30](0xD000000000000033, 0x80000001B78774E0);
  MEMORY[0x1B8CA4D30](a1, a2);
  return 0;
}

BOOL static BankConnectTermsAndConditionsNotificationFormatter.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (MEMORY[0x1B8CA3D90]())
  {
    v4 = type metadata accessor for FormatterConfiguration();
    if (MEMORY[0x1B8CA3EF0](a1 + *(v4 + 20), a2 + *(v4 + 20)) & 1) != 0 && (MEMORY[0x1B8CA3FF0](a1 + *(v4 + 24), a2 + *(v4 + 24)))
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B72A3718(uint64_t a1)
{
  v2 = sub_1B72A4D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B72A3754(uint64_t a1)
{
  v2 = sub_1B72A4D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BankConnectTermsAndConditionsNotificationFormatter.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990AB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72A4D90();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration();
  sub_1B72A4F50(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t BankConnectTermsAndConditionsNotificationFormatter.hash(into:)()
{
  sub_1B77FFAF8();
  sub_1B72A4F50(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B72A4F50(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B72A4F50(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  return sub_1B7800768();
}

uint64_t BankConnectTermsAndConditionsNotificationFormatter.hashValue.getter()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B72A4F50(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B72A4F50(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B72A4F50(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t BankConnectTermsAndConditionsNotificationFormatter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v3 = type metadata accessor for FormatterConfiguration();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990AC8);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for BankConnectTermsAndConditionsNotificationFormatter();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B77FFA68();
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72A4D90();
  v12 = v18;
  sub_1B78023C8();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v14 = v11;
  }

  else
  {
    v13 = v16;
    sub_1B72A4F50(&qword_1EB990870, type metadata accessor for FormatterConfiguration);
    sub_1B7801E48();
    (*(v17 + 8))(v8, v6);
    sub_1B72A2B9C(v5, v11);
    sub_1B72A50E8(v11, v13, type metadata accessor for BankConnectTermsAndConditionsNotificationFormatter);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v14 = v11;
  }

  return sub_1B72A5150(v14, type metadata accessor for BankConnectTermsAndConditionsNotificationFormatter);
}

uint64_t sub_1B72A3E74(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990AB8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B72A4D90();
  sub_1B78023F8();
  type metadata accessor for FormatterConfiguration();
  sub_1B72A4F50(&qword_1EB990850, type metadata accessor for FormatterConfiguration);
  sub_1B7801FC8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B72A3FEC()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B72A4F50(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B72A4F50(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B72A4F50(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B72A413C()
{
  sub_1B77FFAF8();
  sub_1B72A4F50(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B72A4F50(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B72A4F50(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  return sub_1B7800768();
}

uint64_t sub_1B72A427C()
{
  sub_1B78022F8();
  sub_1B77FFAF8();
  sub_1B72A4F50(&qword_1EB990858, MEMORY[0x1E6969770]);
  sub_1B7800768();
  type metadata accessor for FormatterConfiguration();
  sub_1B77FFC88();
  sub_1B72A4F50(&unk_1EB99D750, MEMORY[0x1E6969AE8]);
  sub_1B7800768();
  sub_1B77FFCF8();
  sub_1B72A4F50(&qword_1EB990860, MEMORY[0x1E6969BC0]);
  sub_1B7800768();
  return sub_1B7802368();
}

uint64_t sub_1B72A43C8(uint64_t a1)
{
  v78 = a1;
  v55 = sub_1B77FF718();
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v53 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1B77FF6B8();
  v80 = *(v2 - 8);
  v81 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v79 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1B77FF748();
  v76 = *(v4 - 8);
  v77 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_1B77FFC68();
  v71 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v70 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_1B77FF988();
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v69 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B77FF378();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v68 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B77FFCF8();
  v66 = *(v10 - 8);
  v67 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_1B77FFC88();
  v62 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v63 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_1B77FFAF8();
  v13 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99D700);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v53 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB990B18);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v53 - v20;
  v59 = sub_1B77FF7D8();
  v61 = *(v59 - 8);
  v22 = MEMORY[0x1EEE9AC00](v59);
  v60 = &v53 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v57 = &v53 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v53 - v26;
  v28 = type metadata accessor for FormatterConfiguration();
  v29 = v28 - 8;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v32 = &v53 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v53 - v33;
  sub_1B77FFA68();
  v56 = *(v29 + 28);
  sub_1B77FFBC8();
  sub_1B77FFCC8();
  sub_1B72A50E8(v34, v32, type metadata accessor for FormatterConfiguration);
  v35 = sub_1B77FF648();
  (*(*(v35 - 8) + 56))(v21, 1, 1, v35);
  v36 = sub_1B77FF628();
  (*(*(v36 - 8) + 56))(v18, 1, 1, v36);
  (*(v13 + 16))(v15, v32, v58);
  (*(v62 + 16))(v63, &v32[*(v29 + 28)], v64);
  (*(v66 + 16))(v65, &v32[*(v29 + 32)], v67);
  sub_1B77FF368();
  v37 = v57;
  sub_1B77FF668();
  sub_1B72A5150(v32, type metadata accessor for FormatterConfiguration);
  v38 = v69;
  sub_1B77FF938();
  v39 = v70;
  v40 = v71;
  v41 = v73;
  (*(v71 + 104))(v70, *MEMORY[0x1E6969A68], v73);
  LOBYTE(v15) = sub_1B77FFC38();
  v42 = v40;
  v43 = v59;
  (*(v42 + 8))(v39, v41);
  v44 = v38;
  v45 = v61;
  (*(v72 + 8))(v44, v74);
  v46 = v75;
  sub_1B77FF738();
  v74 = v27;
  v47 = v60;
  sub_1B77FF698();
  (*(v76 + 8))(v46, v77);
  v48 = v79;
  sub_1B77FF6A8();
  sub_1B77FF658();
  (*(v80 + 8))(v48, v81);
  v49 = *(v45 + 8);
  v49(v47, v43);
  if ((v15 & 1) == 0)
  {
    v50 = v53;
    sub_1B77FF708();
    sub_1B77FF688();
    (*(v54 + 8))(v50, v55);
    v49(v37, v43);
    (*(v45 + 32))(v37, v47, v43);
  }

  v51 = sub_1B77FF788();
  v49(v37, v43);
  v49(v74, v43);
  sub_1B72A5150(v34, type metadata accessor for FormatterConfiguration);
  return v51;
}

unint64_t sub_1B72A4D90()
{
  result = qword_1EB990AC0;
  if (!qword_1EB990AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990AC0);
  }

  return result;
}

uint64_t type metadata accessor for BankConnectTermsAndConditionsNotificationFormatter()
{
  result = qword_1EB990AF0;
  if (!qword_1EB990AF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B72A4F50(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1B72A4FE4()
{
  result = qword_1EB990B00;
  if (!qword_1EB990B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990B00);
  }

  return result;
}

unint64_t sub_1B72A503C()
{
  result = qword_1EB990B08;
  if (!qword_1EB990B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990B08);
  }

  return result;
}

unint64_t sub_1B72A5094()
{
  result = qword_1EB990B10;
  if (!qword_1EB990B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990B10);
  }

  return result;
}

uint64_t sub_1B72A50E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B72A5150(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

FinanceKit::AccountType_optional __swiftcall AccountType.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B72A51E4()
{
  result = qword_1EB990B20;
  if (!qword_1EB990B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990B20);
  }

  return result;
}

void *sub_1B72A5238@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

unint64_t sub_1B72A530C()
{
  result = qword_1EB990B28;
  if (!qword_1EB990B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB990B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990B28);
  }

  return result;
}

unint64_t sub_1B72A5390()
{
  result = qword_1EB990B38;
  if (!qword_1EB990B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB990B38);
  }

  return result;
}

id static ManagedRecurringPreauthorizedPayment.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit36ManagedRecurringPreauthorizedPayment;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

unint64_t static ManagedRecurringPreauthorizedPayment.existingRecurringPayment(with:in:)()
{
  v1 = v0;
  v10.receiver = swift_getObjCClassFromMetadata();
  v10.super_class = &OBJC_METACLASS____TtC10FinanceKit36ManagedRecurringPreauthorizedPayment;
  v2 = objc_msgSendSuper2(&v10, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B7807CD0;
  v4 = sub_1B77FF9B8();
  *(v3 + 56) = sub_1B7205540(0, &qword_1EB9905A8);
  *(v3 + 64) = sub_1B726E47C();
  *(v3 + 32) = v4;
  v5 = sub_1B78010E8();
  [v2 setPredicate_];

  result = sub_1B7801498();
  if (v0)
  {

    return v1;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v8 = result;
  v9 = sub_1B7801958();
  result = v8;
  if (!v9)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);
LABEL_8:
    v1 = v7;

    return v1;
  }

  __break(1u);
  return result;
}

unint64_t static ManagedRecurringPreauthorizedPayment.existingRecurringPayment(with:fullyQualifiedAccountIdentifier:in:)(uint64_t a1, uint64_t a2, __int128 *a3)
{
  v18 = *a3;
  v5 = *(a3 + 3);
  v17 = *(a3 + 2);
  v22.receiver = swift_getObjCClassFromMetadata();
  v22.super_class = &OBJC_METACLASS____TtC10FinanceKit36ManagedRecurringPreauthorizedPayment;
  v6 = objc_msgSendSuper2(&v22, sel_fetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  v8 = "TermsAndConditions.";
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7807CD0;
  *(v9 + 56) = MEMORY[0x1E69E6158];
  *(v9 + 64) = sub_1B721FF04();
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  *(v7 + 32) = sub_1B78010E8();
  v19 = v18;
  v20 = v17;
  v21 = v5;
  *(v7 + 40) = _s10FinanceKit27ManagedPreauthorizedPaymentC19predicateForAccount4withSo11NSPredicateCAA014FullyQualifiedH10IdentifierV_tFZ_0(&v19);
  v10 = sub_1B7800C18();

  v11 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v6 setPredicate_];
  v12 = v23;
  result = sub_1B7801498();
  if (v12)
  {

    return v8;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v15 = result;
  v16 = sub_1B7801958();
  result = v15;
  if (!v16)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *(result + 32);
LABEL_8:
    v8 = v14;

    return v8;
  }

  __break(1u);
  return result;
}