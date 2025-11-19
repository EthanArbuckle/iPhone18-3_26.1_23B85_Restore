uint64_t specialized UnsafeMutableBufferPointer._finalizeRuns(_:buffer:by:)(uint64_t *a1, char *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
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
    specialized _merge<A>(low:mid:high:buffer:by:)((*a3 + 16 * *v9), (*a3 + 16 * *v11), (*a3 + 16 * v12), a2);
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

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = (__dst - __src) / 16;
  v9 = (a3 - __dst) / 16;
  if (v8 < v9)
  {
    if (a4 != __src || &__src[16 * v8] <= a4)
    {
      memmove(a4, __src, 16 * v8);
    }

    v11 = &v4[16 * v8];
    while (1)
    {
      if (v4 >= v11 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_46;
      }

      v13 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v14 = v6;
      v13 = v7 == v6;
      v6 += 16;
      if (!v13)
      {
        goto LABEL_21;
      }

LABEL_22:
      v7 += 16;
    }

    v14 = v4;
    v13 = v7 == v4;
    v4 += 16;
    if (v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v7 = *v14;
    goto LABEL_22;
  }

  if (a4 != __dst || &__dst[16 * v9] <= a4)
  {
    memmove(a4, __dst, 16 * v9);
  }

  v11 = &v4[16 * v9];
LABEL_29:
  v16 = v6 - 16;
  for (v5 -= 16; v11 > v4 && v6 > v7; v5 -= 16)
  {
    v18 = *(v11 - 2) == *(v6 - 2) && *(v11 - 1) == *(v6 - 1);
    if (!v18 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v13 = v5 + 16 == v6;
      v6 -= 16;
      if (!v13)
      {
        *v5 = *v16;
        v6 = v16;
      }

      goto LABEL_29;
    }

    if (v11 != v5 + 16)
    {
      *v5 = *(v11 - 1);
    }

    v11 -= 16;
  }

LABEL_46:
  v19 = (v11 - v4) / 16;
  if (v6 != v4 || v6 >= &v4[16 * v19])
  {
    memmove(v6, v4, 16 * v19);
  }

  return 1;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t result, void *a2, unint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
    v10 = 0;
LABEL_20:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v13;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < v10)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            v10 = v12;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == v10)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized DataCollectorInternal.__allocating_init(stateStorage:invocationProcessor:assetDeliveryProcessor:coreAnalyticsUploader:selfUploader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, __int128 a10, uint64_t a11)
{
  v39 = a8;
  v40 = a5;
  v43 = a2;
  v44 = a3;
  v45 = a1;
  v42 = a10;
  v41 = a11;
  v13 = *(a8 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](a1);
  v17 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a9 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v15);
  v22 = &v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v23;
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x28223BE20](v20);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DataCollectorInternal();
  v38 = swift_allocObject();
  (*(v24 + 16))(v27, v45, a7);
  (*(v18 + 16))(v22, a4, a9);
  v28 = v17;
  v29 = v17;
  v31 = v39;
  v30 = v40;
  (*(v13 + 16))(v29, v40, v39);
  v32 = v28;
  v33 = v37;
  v34 = specialized DataCollectorInternal.init(stateStorage:invocationProcessor:assetDeliveryProcessor:coreAnalyticsUploader:selfUploader:)(v27, v43, v44, v22, v32, v38, v37, v31, a9, v42, *(&v42 + 1), v41);
  (*(v13 + 8))(v30, v31);
  (*(v18 + 8))(a4, a9);
  (*(v24 + 8))(v45, v33);
  return v34;
}

uint64_t specialized DataCollectorInternal.init(stateStorage:invocationProcessor:assetDeliveryProcessor:coreAnalyticsUploader:selfUploader:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v31 = a7;
  v32 = a10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a1, a7);
  v28 = a9;
  v29 = a12;
  v20 = __swift_allocate_boxed_opaque_existential_1(&v27);
  (*(*(a9 - 8) + 32))(v20, a4, a9);
  v25 = a8;
  v26 = a11;
  v21 = __swift_allocate_boxed_opaque_existential_1(&v24);
  (*(*(a8 - 8) + 32))(v21, a5, a8);
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(&v30, a6 + 16);
  *(a6 + 56) = a2;
  *(a6 + 64) = a3;
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(&v27, a6 + 72);
  outlined init with take of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(&v24, a6 + 112);
  return a6;
}

uint64_t outlined init with copy of InvocationStep()
{
  OUTLINED_FUNCTION_117();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 16);
  v5 = OUTLINED_FUNCTION_62();
  v6(v5);
  return v0;
}

unint64_t lazy protocol witness table accessor for type [String] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [String] and conformance [A];
  if (!lazy protocol witness table cache variable for type [String] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [String] and conformance [A]);
  }

  return result;
}

uint64_t outlined destroy of InvocationStepMetadata(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t outlined init with take of InvocationStep()
{
  OUTLINED_FUNCTION_117();
  v2 = v1(0);
  OUTLINED_FUNCTION_4(v2);
  v4 = *(v3 + 32);
  v5 = OUTLINED_FUNCTION_62();
  v6(v5);
  return v0;
}

unint64_t lazy protocol witness table accessor for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError()
{
  result = lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError;
  if (!lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError)
  {
    type metadata accessor for GeneralAppleIntelligenceError();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeneralAppleIntelligenceError and conformance GeneralAppleIntelligenceError);
  }

  return result;
}

uint64_t dispatch thunk of DataCollectorInternal.runDataCollectionAndUpload()()
{
  OUTLINED_FUNCTION_1_2();
  v2 = *(v1 + 248);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v4[1] = dispatch thunk of DataCollectorInternal.runDataCollectionAndUpload();

  return v6();
}

uint64_t dispatch thunk of DataCollectorInternal.runInvocationDataCollectionAndUpload(dateSinceLastProcessed:)(uint64_t a1)
{
  OUTLINED_FUNCTION_1_2();
  v7 = (*(v3 + 272) + **(v3 + 272));
  v4 = *(*(v3 + 272) + 4);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = dispatch thunk of DataCollectorInternal.runInvocationDataCollectionAndUpload(dateSinceLastProcessed:);

  return v7(a1);
}

uint64_t dispatch thunk of DataCollectorInternal.runInvocationDataCollectionAndUpload(dateSinceLastProcessed:)()
{
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_63();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_18_0();
  *v4 = v3;

  OUTLINED_FUNCTION_35();

  return v5();
}

uint64_t dispatch thunk of DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:)()
{
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_67();
  OUTLINED_FUNCTION_1_2();
  v7 = (*(v3 + 280) + **(v3 + 280));
  v4 = *(*(v3 + 280) + 4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of DataCollectorInternal.runDataCollectionAndUpload();

  return v7(v1, v0);
}

uint64_t getEnumTagSinglePayload for DataCollectorInternal.SampledSubsystemInfo(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 125))
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

uint64_t storeEnumTagSinglePayload for DataCollectorInternal.SampledSubsystemInfo(uint64_t result, unsigned int a2, unsigned int a3)
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
    *(result + 124) = 0;
    *(result + 120) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 125) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 125) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent()
{
  result = lazy protocol witness table cache variable for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent;
  if (!lazy protocol witness table cache variable for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent;
  if (!lazy protocol witness table cache variable for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent()
{
  result = lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent;
  if (!lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent;
  if (!lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InvocationEvent and conformance InvocationEvent()
{
  result = lazy protocol witness table cache variable for type InvocationEvent and conformance InvocationEvent;
  if (!lazy protocol witness table cache variable for type InvocationEvent and conformance InvocationEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationEvent and conformance InvocationEvent);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationEvent and conformance InvocationEvent;
  if (!lazy protocol witness table cache variable for type InvocationEvent and conformance InvocationEvent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationEvent and conformance InvocationEvent);
  }

  return result;
}

uint64_t outlined init with copy of AppleIntelligenceError?()
{
  OUTLINED_FUNCTION_117();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_4(v3);
  v5 = *(v4 + 16);
  v6 = OUTLINED_FUNCTION_62();
  v7(v6);
  return v0;
}

uint64_t outlined destroy of NSObject?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  OUTLINED_FUNCTION_4(v4);
  (*(v5 + 8))(a1);
  return a1;
}

void *OUTLINED_FUNCTION_1_3(uint64_t a1)
{
  *(a1 + 8) = DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:);
  v2 = v1[806];
  v3 = v1[805];
  v4 = v1[794];
  return v1 + 252;
}

uint64_t OUTLINED_FUNCTION_2_3(uint64_t result)
{
  *(result + 8) = DataCollectorInternal.runAssetDeliveryDataCollectionAndUpload(dateSinceLastProcessed:invocations:);
  v2 = v1[806];
  v3 = v1[805];
  v4 = v1[794];
  return result;
}

uint64_t OUTLINED_FUNCTION_3_3@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *(v3 + 6432) = a2;
  *(v3 + 6424) = v2;
  v4 = *(result + 48) + ((a2 << 10) | (16 * __clz(__rbit64(v2))));
  return result;
}

uint64_t OUTLINED_FUNCTION_6_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  a14 = a1;
  *v14 = a11;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v15, &a14);
}

uint64_t OUTLINED_FUNCTION_16_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_17_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3[805] = *v2;
  v3[806] = v2[1];
  v5 = (*(a1 + 56) + a2);
  v6 = *v5;
  v3[807] = *v5;
  v3[808] = v5[1];
  v3[809] = *(v6 + 16);
}

void OUTLINED_FUNCTION_19_0(uint64_t a1@<X8>)
{
  if (a1 <= *(v1 + 16))
  {
    v2 = *(v1 + 16);
  }
}

id OUTLINED_FUNCTION_22_0(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

uint64_t OUTLINED_FUNCTION_27(uint64_t result)
{
  *(v2 + 14) = result;
  *v1 = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_29(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_32()
{

  return swift_arrayInitWithCopy();
}

void OUTLINED_FUNCTION_34()
{

  JUMPOUT(0x22AAAF0A0);
}

uint64_t OUTLINED_FUNCTION_35()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

void OUTLINED_FUNCTION_36()
{

  JUMPOUT(0x22AAAF0A0);
}

uint64_t OUTLINED_FUNCTION_38(uint64_t a1)
{
  *(a1 + 8) = DataCollectorInternal.runDataCollectionAndUpload();
  v2 = *(v1 + 224);
  return *(v1 + 248);
}

uint64_t OUTLINED_FUNCTION_39(uint64_t a1)
{
  *(a1 + 8) = Collection.asyncForEach(_:);
  v2 = *(v1 + 24);
  return *(v1 + 72);
}

uint64_t OUTLINED_FUNCTION_43()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_52()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_56()
{

  JUMPOUT(0x22AAAF0A0);
}

void OUTLINED_FUNCTION_58()
{
  v0[811] = 0;
  v1 = v0[809];
  v2 = v0[807];
}

void *OUTLINED_FUNCTION_59()
{

  return memcpy((v1 + v0), (v1 + v2), 0xE5uLL);
}

void OUTLINED_FUNCTION_61()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0);

  JUMPOUT(0x22AAAF0A0);
}

uint64_t OUTLINED_FUNCTION_64@<X0>(void (*a1)(void)@<X3>, uint64_t a2@<X8>)
{

  return specialized UnsafeMutablePointer.moveInitialize(from:count:)(v2 + a2, v4, v3 + a2, a1);
}

void *OUTLINED_FUNCTION_70()
{

  return memcpy((v0 + 2016), (v0 + 1616), 0x189uLL);
}

void *OUTLINED_FUNCTION_71@<X0>(uint64_t a1@<X8>)
{

  return memcpy((v1 + 1616), (a1 + 32), 0x189uLL);
}

void *OUTLINED_FUNCTION_72()
{

  return memcpy((v0 + 1216), (v0 + 416), 0x189uLL);
}

void *OUTLINED_FUNCTION_73()
{

  return memcpy((v0 + 3616), (v0 + 416), 0x189uLL);
}

uint64_t OUTLINED_FUNCTION_74()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_75()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_80()
{

  return swift_slowAlloc();
}

void *OUTLINED_FUNCTION_81()
{
  v3 = *(v0 + 6352);

  return memcpy((v0 + 16), v1, 0x189uLL);
}

void *OUTLINED_FUNCTION_82()
{
  v3 = *(v0 + 6352);

  return memcpy((v0 + 4016), v1, 0xE5uLL);
}

uint64_t OUTLINED_FUNCTION_83()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_84()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_85()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_87()
{

  return outlined init with copy of AvailabilityChangeEvent(v0 + 4016, v0 + 4480);
}

void OUTLINED_FUNCTION_88(void *a1, NSObject *a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, a2, a3, a4, v4, 0x16u);
}

void *OUTLINED_FUNCTION_91()
{

  return memcpy((v0 + 4944), (v1 + 32), 0xE5uLL);
}

uint64_t OUTLINED_FUNCTION_94()
{
  v2 = v0[12];
  v1 = v0[13];
  v4 = v0[9];
  v3 = v0[10];
  v5 = *(v0[14] + 8);
  return v0[15];
}

uint64_t OUTLINED_FUNCTION_95()
{
  v1 = v0[15];
  v2 = v0[13];
  v3 = v0[10];
  result = v0[6];
  v5 = v0[7];
  v6 = v0[4];
  return result;
}

uint64_t OUTLINED_FUNCTION_97()
{

  return swift_task_alloc();
}

size_t OUTLINED_FUNCTION_98(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC36AppleIntelligenceReportingProcessing22InvocationStepMetadataV_Tt1g5Tm(v5, a2, a3, a4, v4);
}

void *OUTLINED_FUNCTION_100()
{

  return memcpy((v2 + v0), (v2 + v1), 0xE5uLL);
}

void *OUTLINED_FUNCTION_101()
{

  return memcpy((v0 + v2), v1, 0xE5uLL);
}

void OUTLINED_FUNCTION_102(void *a1, uint64_t a2, os_log_type_t a3, const char *a4)
{

  _os_log_impl(a1, v4, a3, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_103()
{
}

void *OUTLINED_FUNCTION_104()
{

  return memcpy((v0 + 416), v1, 0x189uLL);
}

uint64_t OUTLINED_FUNCTION_105()
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_106()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_108()
{

  return outlined init with copy of AvailabilityDetailedStatusEvent(v0 + 16, v0 + 816);
}

uint64_t OUTLINED_FUNCTION_109()
{

  return outlined init with copy of AvailabilityDetailedStatusEvent(v0 + 1616, v0 + 2416);
}

BOOL OUTLINED_FUNCTION_110()
{

  return os_log_type_enabled(v0, v1);
}

uint64_t OUTLINED_FUNCTION_114()
{
  result = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[2];
  v5 = *(v0[8] + 32);
  return result;
}

uint64_t OUTLINED_FUNCTION_119()
{
  v1 = v0[29];
  v2 = *(v0[30] + 8);
  return v0[31];
}

id OUTLINED_FUNCTION_123(uint64_t a1)
{
  *(v2 + 4) = a1;
  *(v2 + 12) = 2112;

  return v1;
}

void *OUTLINED_FUNCTION_124(void *a1)
{

  return memcpy(a1, v1, 0x189uLL);
}

void *OUTLINED_FUNCTION_125(void *a1)
{

  return memcpy(a1, v1, 0xE5uLL);
}

uint64_t AvailabilityChangeEvent.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 28);
  v6 = *(v0 + 32);
  v7 = *(v0 + 36);
  v8 = *(v0 + 40);
  v26 = *(v0 + 48);
  v9 = *(v0 + 56);
  v28 = *(v0 + 64);
  v27 = *(v0 + 72);
  v30 = *(v0 + 80);
  v29 = *(v0 + 88);
  v32 = *(v0 + 96);
  v31 = *(v0 + 104);
  v34 = *(v0 + 112);
  v33 = *(v0 + 120);
  v36 = *(v0 + 128);
  v35 = *(v0 + 136);
  v38 = *(v0 + 140);
  v37 = *(v0 + 144);
  v40 = *(v0 + 156);
  v39 = *(v0 + 160);
  v43 = *(v0 + 176);
  v42 = *(v0 + 184);
  v45 = *(v0 + 216);
  v46 = *(v0 + 208);
  strcpy(v47, "Change Event:\n");
  v47[15] = -18;
  v44 = *(v0 + 224);
  v41 = *(v0 + 228);
  v10 = *(v0 + 57);
  v11 = *(v0 + 73);
  v12 = *(v0 + 89);
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFs6UInt64V_Tt2g5(v47, 0x757461745377656ELL, 0xE900000000000073, v1, v2);
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFs6UInt64V_Tt2g5(v47, 0x7461745376657270, 0xEA00000000007375, v3, v4);
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFs6UInt32V_Tt2g5(v47, 0x4D746E6572727563, 0xEB0000000065646FLL, v5 | (v6 << 32));
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFs6UInt32V_Tt2g5(v47, 0x65646F4D76657270, 0xE800000000000000, v7 | (v8 << 32));
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSd_Tt2g5(v47, 0xD000000000000019, 0x8000000227FB4F10, v26, v9);
  v13 = OUTLINED_FUNCTION_8_3();
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSb_Tt2g5(v13, 0xD00000000000001CLL, v14 | 0x8000000000000000, v10);
  v15 = OUTLINED_FUNCTION_8_3();
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSd_Tt2g5(v15, 0xD00000000000001BLL, v16 | 0x8000000000000000, v28, v27);
  v17 = OUTLINED_FUNCTION_8_3();
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSb_Tt2g5(v17, 0xD000000000000027, v18 | 0x8000000000000000, v11);
  v19 = OUTLINED_FUNCTION_8_3();
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSd_Tt2g5(v19, 0xD00000000000001BLL, v20 | 0x8000000000000000, v30, v29);
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSb_Tt2g5(v47, 0x656C67676F544941, 0xED00006574617453, v12);
  v21 = OUTLINED_FUNCTION_8_3();
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSd_Tt2g5(v21, 0xD000000000000015, v22 | 0x8000000000000000, v32, v31);
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSd_Tt2g5(v47, 0xD00000000000001FLL, 0x8000000227FB4FE0, v34, v33);
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSd_Tt2g5(v47, 0xD000000000000011, 0x8000000227FB5000, v36, v35);
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFs6UInt32V_Tt2g5(v47, 0xD000000000000015, 0x8000000227FB5020, v38 | (v37 << 32));
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFs6UInt32V_Tt2g5(v47, 0xD000000000000016, 0x8000000227FB5040, v40 | (v39 << 32));
  v23 = OUTLINED_FUNCTION_8_3();
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSd_Tt2g5(v23, 0xD000000000000025, v24 | 0x8000000000000000, v43, v42);
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSS_Tt2g5(v47, 0x4965736143657375, 0xE900000000000044, v46, v45);
  _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFs6UInt32V_Tt2g5(v47, 0x6D617473656D6974, 0xE900000000000070, v44 | (v41 << 32));
  return *v47;
}

uint64_t AvailabilityChangeEvent.upload(coreAnalyticsUploader:)(void *a1)
{
  memcpy(__dst, v1, 0xE5uLL);
  type metadata accessor for CAEncoder();
  v9[3] = &type metadata for AvailabilityChangeEvent;
  v9[4] = lazy protocol witness table accessor for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent();
  v9[0] = swift_allocObject();
  memcpy((v9[0] + 16), v1, 0xE5uLL);
  outlined init with copy of AvailabilityChangeEvent(__dst, v8);
  v4 = static CAEncoder.toCADictionary(_:)(v9);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v9);
  if (!v2)
  {
    v6 = a1[3];
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v6);
    (*(v7 + 8))(0xD000000000000037, 0x8000000227FB4E60, v4, v6, v7);
  }

  return result;
}

uint64_t AvailabilityChangeEvent.uploadToSELF(using:)(uint64_t a1)
{
  *(v2 + 248) = a1;
  memcpy((v2 + 16), v1, 0xE5uLL);

  return MEMORY[0x2822009F8](AvailabilityChangeEvent.uploadToSELF(using:), 0, 0);
}

uint64_t AvailabilityChangeEvent.uploadToSELF(using:)()
{
  v1 = *(v0 + 248);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 16);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 256) = v6;
  *v6 = v0;
  v6[1] = AvailabilityChangeEvent.uploadToSELF(using:);

  return v8(v0 + 16, v2, v3);
}

{
  v2 = *(*v1 + 256);
  v3 = *v1;
  *(v3 + 264) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](AvailabilityChangeEvent.uploadToSELF(using:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 264);
  return (*(v0 + 8))();
}

uint64_t AvailabilityChangeEvent.newStatus.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  return result;
}

uint64_t AvailabilityChangeEvent.prevStatus.getter()
{
  result = *(v0 + 16);
  v2 = *(v0 + 24);
  return result;
}

uint64_t AvailabilityChangeEvent.timeSinceLastStatusChange.getter()
{
  result = *(v0 + 48);
  v2 = *(v0 + 56);
  return result;
}

uint64_t AvailabilityChangeEvent.timeSinceLastEligibleChange.getter()
{
  result = *(v0 + 64);
  v2 = *(v0 + 72);
  return result;
}

uint64_t AvailabilityChangeEvent.timeSinceLastWaitlistChange.getter()
{
  result = *(v0 + 80);
  v2 = *(v0 + 88);
  return result;
}

uint64_t AvailabilityChangeEvent.timeSinceLastAIToggle.getter()
{
  result = *(v0 + 96);
  v2 = *(v0 + 104);
  return result;
}

uint64_t AvailabilityChangeEvent.timeSinceLastAvailabilityChange.getter()
{
  result = *(v0 + 112);
  v2 = *(v0 + 120);
  return result;
}

uint64_t AvailabilityChangeEvent.timeSinceLastBoot.getter()
{
  result = *(v0 + 128);
  v2 = *(v0 + 136);
  return result;
}

uint64_t AvailabilityChangeEvent.timeSinceLastMCSubscriptionHashChange.getter()
{
  result = *(v0 + 176);
  v2 = *(v0 + 184);
  return result;
}

uint64_t AvailabilityChangeEvent.timeSinceLastSubscriptionHashChange.getter()
{
  result = *(v0 + 192);
  v2 = *(v0 + 200);
  return result;
}

uint64_t AvailabilityChangeEvent.useCaseID.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return v1;
}

uint64_t _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFs6UInt64V_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    MEMORY[0x22AAAE070](a2, a3);
    MEMORY[0x22AAAE070](8250, 0xE200000000000000);
    v5 = String.init<A>(describing:)();
    MEMORY[0x22AAAE070](v5);

    MEMORY[0x22AAAE070](10, 0xE100000000000000);
    MEMORY[0x22AAAE070](2108704, 0xE300000000000000);
  }

  return result;
}

uint64_t _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFs6UInt32V_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x100000000) == 0)
  {
    MEMORY[0x22AAAE070](a2, a3);
    MEMORY[0x22AAAE070](8250, 0xE200000000000000);
    v4 = String.init<A>(describing:)();
    MEMORY[0x22AAAE070](v4);

    MEMORY[0x22AAAE070](10, 0xE100000000000000);
    MEMORY[0x22AAAE070](2108704, 0xE300000000000000);
  }

  return result;
}

uint64_t _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSd_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if ((a5 & 1) == 0)
  {
    MEMORY[0x22AAAE070](a2, a3);
    MEMORY[0x22AAAE070](8250, 0xE200000000000000);
    v5 = String.init<A>(describing:)();
    MEMORY[0x22AAAE070](v5);

    MEMORY[0x22AAAE070](10, 0xE100000000000000);
    MEMORY[0x22AAAE070](2108704, 0xE300000000000000);
  }

  return result;
}

uint64_t _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSb_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != 2)
  {
    MEMORY[0x22AAAE070](a2, a3);
    MEMORY[0x22AAAE070](8250, 0xE200000000000000);
    v4 = String.init<A>(describing:)();
    MEMORY[0x22AAAE070](v4);

    MEMORY[0x22AAAE070](10, 0xE100000000000000);
    MEMORY[0x22AAAE070](2108704, 0xE300000000000000);
  }

  return result;
}

uint64_t _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV21debugDescriptionBuild11description9fieldName0L0ySSz_SSxSgtlFSS_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
    MEMORY[0x22AAAE070](a2, a3);
    MEMORY[0x22AAAE070](8250, 0xE200000000000000);

    v5 = String.init<A>(describing:)();
    MEMORY[0x22AAAE070](v5);

    MEMORY[0x22AAAE070](10, 0xE100000000000000);
    MEMORY[0x22AAAE070](2108704, 0xE300000000000000);
  }

  return result;
}

uint64_t AvailabilityChangeEvent.debugDescriptionBuild<A>(description:fieldName:field:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29[1] = a1;
  v9 = type metadata accessor for Optional();
  OUTLINED_FUNCTION_26();
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v14);
  v16 = v29 - v15;
  OUTLINED_FUNCTION_26();
  v18 = v17;
  v20 = *(v19 + 64);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v29 - v25;
  (*(v11 + 16))(v16, a4, v9);
  if (__swift_getEnumTagSinglePayload(v16, 1, a5) == 1)
  {
    return (*(v11 + 8))(v16, v9);
  }

  (*(v18 + 32))(v26, v16, a5);
  v30 = 2108704;
  v31 = 0xE300000000000000;
  MEMORY[0x22AAAE070](a2, a3);
  MEMORY[0x22AAAE070](8250, 0xE200000000000000);
  (*(v18 + 16))(v24, v26, a5);
  v28 = String.init<A>(describing:)();
  MEMORY[0x22AAAE070](v28);

  MEMORY[0x22AAAE070](10, 0xE100000000000000);
  MEMORY[0x22AAAE070](v30, v31);

  return (*(v18 + 8))(v26, a5);
}

uint64_t AvailabilityChangeEvent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x757461745377656ELL && a2 == 0xE900000000000073;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x7461745376657270 && a2 == 0xEA00000000007375;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x4D746E6572727563 && a2 == 0xEB0000000065646FLL;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x65646F4D76657270 && a2 == 0xE800000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000019 && 0x8000000227FB4F10 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001CLL && 0x8000000227FB4F30 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001BLL && 0x8000000227FB4F50 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000027 && 0x8000000227FB4F70 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD00000000000001BLL && 0x8000000227FB4FA0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x656C67676F544941 && a2 == 0xED00006574617453;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0xD000000000000015 && 0x8000000227FB4FC0 == a2;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001FLL && 0x8000000227FB4FE0 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000011 && 0x8000000227FB5000 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000015 && 0x8000000227FB5020 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000013 && 0x8000000227FB5090 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000016 && 0x8000000227FB5040 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD000000000000014 && 0x8000000227FB50B0 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD000000000000025 && 0x8000000227FB5060 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000023 && 0x8000000227FB50D0 == a2;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0x4965736143657375 && a2 == 0xE900000000000044;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070)
                                        {

                                          return 20;
                                        }

                                        else
                                        {
                                          v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                          if (v26)
                                          {
                                            return 20;
                                          }

                                          else
                                          {
                                            return 21;
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

Swift::Int AvailabilityChangeEvent.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AAAE9F0](a1);
  return Hasher._finalize()();
}

unint64_t AvailabilityChangeEvent.CodingKeys.stringValue.getter(char a1)
{
  result = 0x757461745377656ELL;
  switch(a1)
  {
    case 1:
      result = 0x7461745376657270;
      break;
    case 2:
      result = 0x4D746E6572727563;
      break;
    case 3:
      result = 0x65646F4D76657270;
      break;
    case 4:
      result = 0xD000000000000019;
      break;
    case 5:
      result = 0xD00000000000001CLL;
      break;
    case 6:
    case 8:
      result = 0xD00000000000001BLL;
      break;
    case 7:
      result = 0xD000000000000027;
      break;
    case 9:
      result = 0x656C67676F544941;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000016;
      break;
    case 16:
      result = 0xD000000000000014;
      break;
    case 17:
      result = 0xD000000000000025;
      break;
    case 18:
      result = 0xD000000000000023;
      break;
    case 19:
      result = 0x4965736143657375;
      break;
    case 20:
      result = 0x6D617473656D6974;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AvailabilityChangeEvent.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x22AAAE9F0](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AvailabilityChangeEvent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AvailabilityChangeEvent.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AvailabilityChangeEvent.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AvailabilityChangeEvent.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AvailabilityChangeEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AvailabilityChangeEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvailabilityChangeEvent.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV10CodingKeys33_273A2E0FDD97999694FF904920922F8ELLOGMd, &_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV10CodingKeys33_273A2E0FDD97999694FF904920922F8ELLOGMR);
  OUTLINED_FUNCTION_26();
  v4 = v3;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  v9 = v25 - v8;
  v10 = *v1;
  v11 = *(v1 + 8);
  v12 = v1[2];
  v61 = *(v1 + 24);
  v58 = *(v1 + 7);
  v59 = v12;
  v57 = *(v1 + 32);
  v56 = *(v1 + 9);
  LODWORD(v12) = *(v1 + 40);
  v53 = v1[6];
  v54 = *(v1 + 56);
  v55 = v12;
  LODWORD(v12) = *(v1 + 57);
  v50 = v1[8];
  v51 = *(v1 + 72);
  v52 = v12;
  LODWORD(v12) = *(v1 + 73);
  v47 = v1[10];
  v48 = *(v1 + 88);
  v49 = v12;
  LODWORD(v12) = *(v1 + 89);
  v44 = v1[12];
  v45 = *(v1 + 104);
  v46 = v12;
  v42 = v1[14];
  v43 = *(v1 + 120);
  v13 = v1[16];
  v41 = *(v1 + 136);
  v39 = *(v1 + 35);
  v40 = v13;
  v38 = *(v1 + 144);
  v37 = *(v1 + 37);
  v36 = *(v1 + 152);
  v35 = *(v1 + 39);
  v34 = *(v1 + 160);
  v33 = *(v1 + 41);
  v32 = *(v1 + 168);
  v25[1] = v1[22];
  v26 = *(v1 + 184);
  v27 = v1[24];
  v28 = *(v1 + 200);
  v14 = v1[27];
  v29 = v1[26];
  v30 = v14;
  v31 = *(v1 + 56);
  v15 = *(v1 + 228);
  v16 = a1[3];
  v17 = a1[4];
  v18 = a1;
  v20 = v19;
  __swift_project_boxed_opaque_existential_1(v18, v16);
  lazy protocol witness table accessor for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v63 = 0;
  v21 = v60;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v21)
  {
    v22 = v57;
    v23 = v55;
    LODWORD(v60) = v15;
    OUTLINED_FUNCTION_6_2(1);
    OUTLINED_FUNCTION_12_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v63 = 2;
    v62 = v22;
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v63 = 3;
    v62 = v23;
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(4);
    OUTLINED_FUNCTION_12_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v63 = 5;
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(6);
    OUTLINED_FUNCTION_12_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v63 = 7;
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(8);
    OUTLINED_FUNCTION_12_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v63 = 9;
    OUTLINED_FUNCTION_11_2();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(11);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(12);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v63 = 13;
    OUTLINED_FUNCTION_10_2(v38);
    OUTLINED_FUNCTION_4_3();
    v63 = 14;
    OUTLINED_FUNCTION_10_2(v36);
    OUTLINED_FUNCTION_4_3();
    v63 = 15;
    OUTLINED_FUNCTION_10_2(v34);
    OUTLINED_FUNCTION_4_3();
    v63 = 16;
    OUTLINED_FUNCTION_10_2(v32);
    OUTLINED_FUNCTION_4_3();
    OUTLINED_FUNCTION_6_2(17);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(18);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(19);
    OUTLINED_FUNCTION_5_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v63 = 20;
    OUTLINED_FUNCTION_10_2(v60);
    OUTLINED_FUNCTION_4_3();
  }

  return (*(v4 + 8))(v9, v20);
}

unint64_t lazy protocol witness table accessor for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys);
  }

  return result;
}

uint64_t AvailabilityChangeEvent.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV10CodingKeys33_273A2E0FDD97999694FF904920922F8ELLOGMd, &_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing23AvailabilityChangeEventV10CodingKeys33_273A2E0FDD97999694FF904920922F8ELLOGMR);
  OUTLINED_FUNCTION_26();
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v7);
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AvailabilityChangeEvent.CodingKeys and conformance AvailabilityChangeEvent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v62 = a2;
  LOBYTE(v64) = 0;
  v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v170 = v10 & 1;
  OUTLINED_FUNCTION_2_4(1);
  v61 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v168 = v11 & 1;
  OUTLINED_FUNCTION_2_4(2);
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v60 = v9;
  v165 = BYTE4(v12) & 1;
  LOBYTE(v64) = 3;
  LODWORD(v9) = v12;
  OUTLINED_FUNCTION_3_4();
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v59 = v9;
  v162 = BYTE4(v13) & 1;
  LOBYTE(v64) = 4;
  LODWORD(v9) = v13;
  OUTLINED_FUNCTION_3_4();
  v58 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v160 = v14 & 1;
  OUTLINED_FUNCTION_2_4(5);
  v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_2_4(6);
  v56 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v157 = v15 & 1;
  OUTLINED_FUNCTION_2_4(7);
  v55 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_2_4(8);
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v154 = v16 & 1;
  OUTLINED_FUNCTION_2_4(9);
  v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  OUTLINED_FUNCTION_0_4(10);
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v151 = v19 & 1;
  OUTLINED_FUNCTION_0_4(11);
  v53 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v149 = v20 & 1;
  OUTLINED_FUNCTION_0_4(12);
  v52 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v147 = v21 & 1;
  OUTLINED_FUNCTION_0_4(13);
  v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v144 = BYTE4(v51) & 1;
  OUTLINED_FUNCTION_0_4(14);
  v50 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v141 = BYTE4(v50) & 1;
  OUTLINED_FUNCTION_0_4(15);
  v49 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v138 = BYTE4(v49) & 1;
  OUTLINED_FUNCTION_0_4(16);
  v48 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v135 = BYTE4(v48) & 1;
  OUTLINED_FUNCTION_0_4(17);
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v133 = v22 & 1;
  OUTLINED_FUNCTION_0_4(18);
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v131 = v23 & 1;
  OUTLINED_FUNCTION_0_4(19);
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v45 = v24;
  v128 = 20;
  v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = OUTLINED_FUNCTION_9_2();
  v26(v25);
  v129 = BYTE4(v43) & 1;
  v63[0] = v60;
  v39 = v170;
  LOBYTE(v63[1]) = v170;
  *(&v63[1] + 1) = *v169;
  HIDWORD(v63[1]) = *&v169[3];
  v63[2] = v61;
  v33 = v168;
  LOBYTE(v63[3]) = v168;
  *(&v63[3] + 1) = v166;
  BYTE3(v63[3]) = v167;
  HIDWORD(v63[3]) = v59;
  v30 = v165;
  LOBYTE(v63[4]) = v165;
  BYTE3(v63[4]) = v164;
  *(&v63[4] + 1) = v163;
  v29 = v9;
  HIDWORD(v63[4]) = v9;
  v28 = v162;
  LOBYTE(v63[5]) = v162;
  *(&v63[5] + 1) = *v161;
  HIDWORD(v63[5]) = *&v161[3];
  v63[6] = v58;
  LOBYTE(v9) = v160;
  LOBYTE(v63[7]) = v160;
  BYTE1(v63[7]) = v57;
  *(&v63[7] + 2) = v158;
  HIWORD(v63[7]) = v159;
  v63[8] = v56;
  LODWORD(v171) = v157;
  LOBYTE(v63[9]) = v157;
  BYTE1(v63[9]) = v55;
  HIWORD(v63[9]) = v156;
  *(&v63[9] + 2) = v155;
  v63[10] = v54;
  v42 = v154;
  LOBYTE(v63[11]) = v154;
  BYTE1(v63[11]) = v17;
  HIWORD(v63[11]) = v153;
  *(&v63[11] + 2) = v152;
  v63[12] = v18;
  v41 = v151;
  LOBYTE(v63[13]) = v151;
  HIDWORD(v63[13]) = *&v150[3];
  *(&v63[13] + 1) = *v150;
  v63[14] = v53;
  v40 = v149;
  LOBYTE(v63[15]) = v149;
  HIDWORD(v63[15]) = *&v148[3];
  *(&v63[15] + 1) = *v148;
  v63[16] = v52;
  v38 = v147;
  LOBYTE(v63[17]) = v147;
  BYTE3(v63[17]) = v146;
  *(&v63[17] + 1) = v145;
  HIDWORD(v63[17]) = v51;
  v37 = v144;
  LOBYTE(v63[18]) = v144;
  BYTE3(v63[18]) = v143;
  *(&v63[18] + 1) = v142;
  HIDWORD(v63[18]) = v50;
  v36 = v141;
  LOBYTE(v63[19]) = v141;
  BYTE3(v63[19]) = v140;
  *(&v63[19] + 1) = v139;
  HIDWORD(v63[19]) = v49;
  v35 = v138;
  LOBYTE(v63[20]) = v138;
  BYTE3(v63[20]) = v137;
  *(&v63[20] + 1) = v136;
  HIDWORD(v63[20]) = v48;
  v34 = v135;
  LOBYTE(v63[21]) = v135;
  HIDWORD(v63[21]) = *&v134[3];
  *(&v63[21] + 1) = *v134;
  v63[22] = v47;
  v32 = v133;
  LOBYTE(v63[23]) = v133;
  HIDWORD(v63[23]) = *&v132[3];
  *(&v63[23] + 1) = *v132;
  v63[24] = v46;
  v31 = v131;
  LOBYTE(v63[25]) = v131;
  HIDWORD(v63[25]) = *&v130[3];
  *(&v63[25] + 1) = *v130;
  v63[26] = v44;
  v63[27] = v45;
  LODWORD(v63[28]) = v43;
  BYTE4(v63[28]) = BYTE4(v43) & 1;
  memcpy(v62, v63, 0xE5uLL);
  outlined init with copy of AvailabilityChangeEvent(v63, &v64);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v64 = v60;
  v65 = v39;
  v67 = v61;
  v68 = v33;
  v71 = v59;
  v72 = v30;
  v75 = v29;
  v76 = v28;
  v78 = v58;
  v79 = v9;
  v80 = v57;
  *v66 = *v169;
  *&v66[3] = *&v169[3];
  v69 = v166;
  v70 = v167;
  v73 = v163;
  v74 = v164;
  *v77 = *v161;
  *&v77[3] = *&v161[3];
  v81 = v158;
  v82 = v159;
  v83 = v56;
  v84 = v171;
  v85 = v55;
  v87 = v156;
  v86 = v155;
  v88 = v54;
  v89 = v42;
  v90 = v17;
  v92 = v153;
  v91 = v152;
  v93 = v18;
  v94 = v41;
  *&v95[3] = *&v150[3];
  *v95 = *v150;
  v96 = v53;
  v97 = v40;
  *&v98[3] = *&v148[3];
  *v98 = *v148;
  v99 = v52;
  v100 = v38;
  v102 = v146;
  v101 = v145;
  v103 = v51;
  v104 = v37;
  v106 = v143;
  v105 = v142;
  v107 = v50;
  v108 = v36;
  v110 = v140;
  v109 = v139;
  v111 = v49;
  v112 = v35;
  v114 = v137;
  v113 = v136;
  v115 = v48;
  v116 = v34;
  *&v117[3] = *&v134[3];
  *v117 = *v134;
  v118 = v47;
  v119 = v32;
  *&v120[3] = *&v132[3];
  *v120 = *v132;
  v121 = v46;
  v122 = v31;
  *&v123[3] = *&v130[3];
  *v123 = *v130;
  v124 = v44;
  v125 = v45;
  v126 = v43;
  v127 = BYTE4(v43) & 1;
  return outlined destroy of AvailabilityChangeEvent(&v64);
}

uint64_t AvailabilityChangeEvent.init(newStatus:prevStatus:currentMode:prevMode:timeSinceLastStatusChange:eligibleForAppleIntelligence:timeSinceLastEligibleChange:allowedThroughAppleIntelligenceWaitlist:timeSinceLastWaitlistChange:AIToggleState:timeSinceLastAIToggle:timeSinceLastAvailabilityChange:timeSinceLastBoot:newMCSubscriptionHash:newSubscriptionHash:prevMCSubscriptionHash:prevSubscriptionHash:timeSinceLastMCSubscriptionHashChange:timeSinceLastSubscriptionHashChange:useCaseID:timestamp:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, char a12, char a13, uint64_t a14, char a15, char a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21, char a22, int a23, int a24, char a25, int a26, char a27, int a28, char a29, int a30, char a31, uint64_t a32, char a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, int a38, char a39)
{
  *a9 = result;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 28) = a5;
  *(a9 + 32) = BYTE4(a5) & 1;
  *(a9 + 36) = a6;
  *(a9 + 40) = BYTE4(a6) & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  *(a9 + 57) = a10;
  *(a9 + 64) = a11;
  *(a9 + 72) = a12 & 1;
  *(a9 + 73) = a13;
  *(a9 + 80) = a14;
  *(a9 + 88) = a15 & 1;
  *(a9 + 89) = a16;
  *(a9 + 96) = a17;
  *(a9 + 104) = a18 & 1;
  *(a9 + 112) = a19;
  *(a9 + 120) = a20 & 1;
  *(a9 + 128) = a21;
  *(a9 + 136) = a22 & 1;
  *(a9 + 140) = a24;
  *(a9 + 144) = a25 & 1;
  *(a9 + 148) = a26;
  *(a9 + 152) = a27 & 1;
  *(a9 + 156) = a28;
  *(a9 + 160) = a29 & 1;
  *(a9 + 164) = a30;
  *(a9 + 168) = a31 & 1;
  *(a9 + 176) = a32;
  *(a9 + 184) = a33 & 1;
  *(a9 + 192) = a34;
  *(a9 + 200) = a35 & 1;
  *(a9 + 208) = a36;
  *(a9 + 216) = a37;
  *(a9 + 224) = a38;
  *(a9 + 228) = a39 & 1;
  return result;
}

unint64_t instantiation function for generic protocol witness table for AvailabilityChangeEvent(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent();
  result = lazy protocol witness table accessor for type AvailabilityChangeEvent and conformance AvailabilityChangeEvent();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AvailabilityChangeEvent(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 229))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 216);
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

uint64_t storeEnumTagSinglePayload for AvailabilityChangeEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 228) = 0;
    *(result + 224) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 229) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 229) = 0;
    }

    if (a2)
    {
      *(result + 216) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AvailabilityChangeEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xEC)
  {
    if (a2 + 20 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 20) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 21;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v5 = v6 - 21;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AvailabilityChangeEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xEC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEB)
  {
    v6 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
          *result = a2 + 20;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_4@<X0>(char a1@<W8>)
{
  *(v1 + 488) = a1;
  result = v1 + 488;
  v4 = *(v2 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_3()
{

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_9_2()
{
  v3 = *(v1 + 8);
  result = v0;
  v5 = *(v2 - 72);
  return result;
}

unint64_t AvailabilityDetailedStatusEvent.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v26 = v0[4];
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v27 = *(v0 + 11);
  v28 = *(v0 + 13);
  v46 = *(v0 + 56);
  v47 = v0[9];
  v48 = *(v0 + 84);
  v39 = v0[8];
  v40 = v0[11];
  v49 = v0[12];
  v29 = *(v0 + 20);
  v30 = *(v0 + 26);
  v50 = *(v0 + 108);
  v51 = v0[15];
  v52 = *(v0 + 132);
  v41 = v0[14];
  v42 = v0[17];
  v53 = v0[18];
  v31 = *(v0 + 32);
  v32 = *(v0 + 42);
  v7 = *(v0 + 172);
  OUTLINED_FUNCTION_13_2();
  v8 = v0[23];
  v9 = v0[28];
  v10 = v0[30];
  v11 = v0[32];
  v12 = v0[48];
  v54 = v13;
  v55 = *(v0 + 196);
  v33 = *(v0 + 48);
  v34 = *(v0 + 50);
  v14 = v0[27];
  v43 = v0[22];
  v44 = v0[26];
  v56 = *(v0 + 204);
  v57 = *(v0 + 232);
  v58 = *(v0 + 248);
  v59 = *(v0 + 264);
  v35 = *(v0 + 75);
  v60 = *(v0 + 304);
  v45 = v0[43];
  v61 = v0[44];
  v37 = *(v0 + 90);
  v64 = *(v0 + 364);
  v38 = *(v0 + 92);
  v65 = *(v0 + 372);
  v36 = *(v0 + 94);
  v62 = *(v0 + 380);
  v63 = *(v0 + 392);
  if (v2)
  {
    OUTLINED_FUNCTION_16_1();
    _StringGuts.grow(_:)(31);

    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAAE070](v1, v2);
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_21_0();
  }

  if (v3)
  {
    MEMORY[0x22AAAE070](v4, v3);
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_21_0();
  }

  if ((v5 & 1) == 0)
  {
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AAAE070](v15);

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_21_0();
  }

  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AAAE070](v16);

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_21_0();
  }

  if ((v46 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    v17 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AAAE070](v17);

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_21_0();
  }

  if (v47)
  {
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_27_0(v18);
    MEMORY[0x22AAAE070](v39, v47);
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_23_1();
  }

  if ((v48 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AAAE070](v19);

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_23_1();
  }

  if (v49)
  {
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_27_0(v20);
    MEMORY[0x22AAAE070](v40, v49);
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_23_1();
  }

  if ((v50 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    v21 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AAAE070](v21);

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_23_1();
  }

  if (v51)
  {
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_27_0(v22);
    MEMORY[0x22AAAE070](v41, v51);
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v52 & 1) == 0)
  {
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_25_1();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if (v53)
  {
    OUTLINED_FUNCTION_13_2();
    MEMORY[0x22AAAE070](v42);
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v54 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_25_1();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if (v8)
  {
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_27_0(v23);
    MEMORY[0x22AAAE070](v43, v8);
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v55 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_25_1();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v56 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_25_1();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if (v14)
  {
    OUTLINED_FUNCTION_13_2();
    OUTLINED_FUNCTION_27_0(v24);
    MEMORY[0x22AAAE070](v44, v14);
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v57 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_1();
    _StringGuts.grow(_:)(29);
    OUTLINED_FUNCTION_28_0();
    MEMORY[0x22AAAE070](0xD00000000000001ALL, 0x8000000227FB5240);
    Double.write<A>(to:)();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v58 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_1();
    _StringGuts.grow(_:)(38);
    OUTLINED_FUNCTION_28_0();
    MEMORY[0x22AAAE070](0xD000000000000023, 0x8000000227FB5210);
    Double.write<A>(to:)();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v59 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_1();
    _StringGuts.grow(_:)(39);
    OUTLINED_FUNCTION_28_0();
    MEMORY[0x22AAAE070](0xD000000000000024, 0x8000000227FB51E0);
    Double.write<A>(to:)();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v60 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_25_1();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if (v61)
  {
    MEMORY[0x22AAAE070](v45, v61);
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v62 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_25_1();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v63 & 1) == 0)
  {
    OUTLINED_FUNCTION_16_1();
    _StringGuts.grow(_:)(51);
    OUTLINED_FUNCTION_28_0();
    MEMORY[0x22AAAE070](0xD000000000000030, 0x8000000227FB5160);
    Double.write<A>(to:)();
    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v64 & 1) == 0)
  {
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_25_1();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  if ((v65 & 1) == 0)
  {
    OUTLINED_FUNCTION_13_2();
    dispatch thunk of CustomStringConvertible.description.getter();
    OUTLINED_FUNCTION_25_1();

    OUTLINED_FUNCTION_22_1();
    OUTLINED_FUNCTION_12_3();
  }

  return 0xD000000000000021;
}

uint64_t AvailabilityDetailedStatusEvent.upload(coreAnalyticsUploader:)(void *a1)
{
  memcpy(__dst, v1, 0x189uLL);
  type metadata accessor for CAEncoder();
  v9[3] = &type metadata for AvailabilityDetailedStatusEvent;
  v9[4] = lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent();
  v9[0] = swift_allocObject();
  memcpy((v9[0] + 16), v1, 0x189uLL);
  outlined init with copy of AvailabilityDetailedStatusEvent(__dst, v8);
  v4 = static CAEncoder.toCADictionary(_:)(v9);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v9);
  if (!v2)
  {
    v6 = a1[3];
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v6);
    (*(v7 + 8))(0xD000000000000036, 0x8000000227FB4EA0, v4, v6, v7);
  }

  return result;
}

uint64_t AvailabilityDetailedStatusEvent.uploadToSELF(using:)(uint64_t a1)
{
  *(v2 + 416) = a1;
  memcpy((v2 + 16), v1, 0x189uLL);

  return MEMORY[0x2822009F8](AvailabilityDetailedStatusEvent.uploadToSELF(using:), 0, 0);
}

uint64_t AvailabilityDetailedStatusEvent.uploadToSELF(using:)()
{
  v1 = *(v0 + 416);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 24);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 424) = v6;
  *v6 = v0;
  v6[1] = AvailabilityDetailedStatusEvent.uploadToSELF(using:);

  return v8(v0 + 16, v2, v3);
}

{
  v2 = *(*v1 + 424);
  v3 = *v1;
  *(v3 + 432) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](AvailabilityDetailedStatusEvent.uploadToSELF(using:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 432);
  return (*(v0 + 8))();
}

uint64_t AvailabilityDetailedStatusEvent.AppleIntelligenceLocale.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_62();
}

uint64_t AvailabilityDetailedStatusEvent.locale.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_62();
}

uint64_t AvailabilityDetailedStatusEvent.status.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t AvailabilityDetailedStatusEvent.lastMADownloadAttemptErrorAsset.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);

  return OUTLINED_FUNCTION_62();
}

uint64_t AvailabilityDetailedStatusEvent.lastMADownloadAttemptErrorDomain.getter()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return OUTLINED_FUNCTION_62();
}

uint64_t AvailabilityDetailedStatusEvent.lastMADownloadAttemptErrorUnderlyingDomain.getter()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return OUTLINED_FUNCTION_62();
}

uint64_t AvailabilityDetailedStatusEvent.failingSubsystemOperations.getter()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 144);

  return OUTLINED_FUNCTION_62();
}

uint64_t AvailabilityDetailedStatusEvent.sampledSubsystemOperation.getter()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 160);

  return OUTLINED_FUNCTION_62();
}

uint64_t AvailabilityDetailedStatusEvent.sampledErrorDomain.getter()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);

  return OUTLINED_FUNCTION_62();
}

uint64_t AvailabilityDetailedStatusEvent.sampledErrorUnderlyingDomain.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return OUTLINED_FUNCTION_62();
}

uint64_t AvailabilityDetailedStatusEvent.timeSinceLastAIToggle.getter()
{
  result = *(v0 + 224);
  v2 = *(v0 + 232);
  return result;
}

uint64_t AvailabilityDetailedStatusEvent.timeSinceLastMADownloadAttempt.getter()
{
  result = *(v0 + 240);
  v2 = *(v0 + 248);
  return result;
}

uint64_t AvailabilityDetailedStatusEvent.timeSinceLastSubscriptionChange.getter()
{
  result = *(v0 + 256);
  v2 = *(v0 + 264);
  return result;
}

uint64_t AvailabilityDetailedStatusEvent.timeSinceLastMADownloadError.getter()
{
  result = *(v0 + 272);
  v2 = *(v0 + 280);
  return result;
}

uint64_t AvailabilityDetailedStatusEvent.timeSinceLastBoot.getter()
{
  result = *(v0 + 320);
  v2 = *(v0 + 328);
  return result;
}

uint64_t AvailabilityDetailedStatusEvent.useCaseID.getter()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);

  return OUTLINED_FUNCTION_62();
}

uint64_t AvailabilityDetailedStatusEvent.timeSinceSubscriptionDownloadStatusComplete.getter()
{
  result = *(v0 + 384);
  v2 = *(v0 + 392);
  return result;
}

uint64_t AvailabilityDetailedStatusEvent.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000017 && 0x8000000227FB5480 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0xD000000000000019 && 0x8000000227FB54A0 == a2;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0xD000000000000017 && 0x8000000227FB54C0 == a2;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD00000000000001FLL && 0x8000000227FB54E0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0xD00000000000001ELL && 0x8000000227FB5500 == a2;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0xD000000000000020 && 0x8000000227FB5520 == a2;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000028 && 0x8000000227FB5550 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0xD00000000000002ALL && 0x8000000227FB5580 == a2;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 0x756F43726F727265 && a2 == 0xEA0000000000746ELL;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else
                      {
                        v16 = a1 == 0xD00000000000001ALL && 0x8000000227FB55B0 == a2;
                        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                        {

                          return 11;
                        }

                        else
                        {
                          v17 = a1 == 0xD000000000000019 && 0x8000000227FB55D0 == a2;
                          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                          {

                            return 12;
                          }

                          else
                          {
                            v18 = a1 == 0xD000000000000010 && 0x8000000227FB55F0 == a2;
                            if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                            {

                              return 13;
                            }

                            else
                            {
                              v19 = a1 == 0xD000000000000012 && 0x8000000227FB5610 == a2;
                              if (v19 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                              {

                                return 14;
                              }

                              else
                              {
                                v20 = a1 == 0xD000000000000010 && 0x8000000227FB5630 == a2;
                                if (v20 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                {

                                  return 15;
                                }

                                else
                                {
                                  v21 = a1 == 0xD00000000000001ALL && 0x8000000227FB5650 == a2;
                                  if (v21 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                  {

                                    return 16;
                                  }

                                  else
                                  {
                                    v22 = a1 == 0xD00000000000001CLL && 0x8000000227FB5670 == a2;
                                    if (v22 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                    {

                                      return 17;
                                    }

                                    else
                                    {
                                      v23 = a1 == 0xD000000000000015 && 0x8000000227FB4FC0 == a2;
                                      if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                      {

                                        return 18;
                                      }

                                      else
                                      {
                                        v24 = a1 == 0xD00000000000001ELL && 0x8000000227FB5690 == a2;
                                        if (v24 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                        {

                                          return 19;
                                        }

                                        else
                                        {
                                          v25 = a1 == 0xD00000000000001FLL && 0x8000000227FB56B0 == a2;
                                          if (v25 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                          {

                                            return 20;
                                          }

                                          else
                                          {
                                            v26 = a1 == 0xD00000000000001CLL && 0x8000000227FB56D0 == a2;
                                            if (v26 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                            {

                                              return 21;
                                            }

                                            else
                                            {
                                              v27 = a1 == 0x555350746E756F63 && a2 == 0xEF73746573734153;
                                              if (v27 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                              {

                                                return 22;
                                              }

                                              else
                                              {
                                                v28 = a1 == 0xD000000000000013 && 0x8000000227FB56F0 == a2;
                                                if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                {

                                                  return 23;
                                                }

                                                else
                                                {
                                                  v29 = a1 == 0x64616F6C6E776F64 && a2 == 0xED00006574617453;
                                                  if (v29 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                  {

                                                    return 24;
                                                  }

                                                  else
                                                  {
                                                    v30 = a1 == 0x7461745353555350 && a2 == 0xE900000000000065;
                                                    if (v30 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                    {

                                                      return 25;
                                                    }

                                                    else
                                                    {
                                                      v31 = a1 == 0xD000000000000011 && 0x8000000227FB5000 == a2;
                                                      if (v31 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                      {

                                                        return 26;
                                                      }

                                                      else
                                                      {
                                                        v32 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
                                                        if (v32 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                        {

                                                          return 27;
                                                        }

                                                        else
                                                        {
                                                          v33 = a1 == 0x4965736143657375 && a2 == 0xE900000000000044;
                                                          if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                          {

                                                            return 28;
                                                          }

                                                          else
                                                          {
                                                            v34 = a1 == 1701080941 && a2 == 0xE400000000000000;
                                                            if (v34 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                            {

                                                              return 29;
                                                            }

                                                            else
                                                            {
                                                              v35 = a1 == 0xD00000000000001CLL && 0x8000000227FB5710 == a2;
                                                              if (v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                              {

                                                                return 30;
                                                              }

                                                              else
                                                              {
                                                                v36 = a1 == 0xD00000000000001ALL && 0x8000000227FB5730 == a2;
                                                                if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                                                                {

                                                                  return 31;
                                                                }

                                                                else if (a1 == 0xD00000000000002BLL && 0x8000000227FB5750 == a2)
                                                                {

                                                                  return 32;
                                                                }

                                                                else
                                                                {
                                                                  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

                                                                  if (v38)
                                                                  {
                                                                    return 32;
                                                                  }

                                                                  else
                                                                  {
                                                                    return 33;
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

unint64_t AvailabilityDetailedStatusEvent.CodingKeys.stringValue.getter(char a1)
{
  result = 0x656C61636F6CLL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x737574617473;
      break;
    case 3:
    case 12:
      result = 0xD000000000000019;
      break;
    case 5:
    case 20:
      result = 0xD00000000000001FLL;
      break;
    case 6:
    case 19:
      result = 0xD00000000000001ELL;
      break;
    case 7:
      result = 0xD000000000000020;
      break;
    case 8:
      result = 0xD000000000000028;
      break;
    case 9:
      result = 0xD00000000000002ALL;
      break;
    case 10:
      result = 0x756F43726F727265;
      break;
    case 11:
      result = 0xD00000000000001ALL;
      break;
    case 13:
    case 15:
      result = 0xD000000000000010;
      break;
    case 14:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0xD00000000000001ALL;
      break;
    case 17:
    case 21:
    case 30:
      result = 0xD00000000000001CLL;
      break;
    case 18:
      result = 0xD000000000000015;
      break;
    case 22:
      result = 0x555350746E756F63;
      break;
    case 23:
      result = 0xD000000000000013;
      break;
    case 24:
      result = 0x64616F6C6E776F64;
      break;
    case 25:
      result = 0x7461745353555350;
      break;
    case 26:
      result = 0xD000000000000011;
      break;
    case 27:
      result = 0x6D617473656D6974;
      break;
    case 28:
      result = 0x4965736143657375;
      break;
    case 29:
      result = 1701080941;
      break;
    case 31:
      result = 0xD00000000000001ALL;
      break;
    case 32:
      result = 0xD00000000000002BLL;
      break;
    default:
      result = 0xD000000000000017;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AvailabilityDetailedStatusEvent.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = AvailabilityDetailedStatusEvent.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance AvailabilityDetailedStatusEvent.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = AvailabilityDetailedStatusEvent.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AvailabilityDetailedStatusEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AvailabilityDetailedStatusEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvailabilityDetailedStatusEvent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventV10CodingKeys33_F72A3482A09DA23F578681F03E6B3DBBLLOGMd, &_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventV10CodingKeys33_F72A3482A09DA23F578681F03E6B3DBBLLOGMR);
  v5 = OUTLINED_FUNCTION_26_0(v4);
  v7 = v6;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v5);
  v10 = *v1;
  v94[2] = v1[1];
  v95 = v10;
  v11 = v1[2];
  v94[0] = v1[3];
  v94[1] = v11;
  v12 = v1[4];
  v98 = *(v1 + 40);
  v93[0] = *(v1 + 11);
  v93[1] = v12;
  v92 = *(v1 + 48);
  v91 = *(v1 + 13);
  v90 = *(v1 + 56);
  v13 = v1[9];
  v88 = v1[8];
  v89 = v13;
  v87 = *(v1 + 20);
  v86 = *(v1 + 84);
  v14 = v1[12];
  v85[0] = v1[11];
  v85[1] = v14;
  v84 = *(v1 + 26);
  v83 = *(v1 + 108);
  v15 = v1[15];
  v82[0] = v1[14];
  v82[1] = v15;
  v81 = *(v1 + 32);
  v80 = *(v1 + 132);
  v16 = v1[18];
  v78 = v1[17];
  v79 = v16;
  v17 = v1[20];
  v76 = v1[19];
  v77 = v17;
  v75 = *(v1 + 42);
  v74 = *(v1 + 172);
  v18 = v1[23];
  v72 = v1[22];
  v73 = v18;
  v71 = *(v1 + 48);
  v70 = *(v1 + 196);
  v69 = *(v1 + 50);
  v68 = *(v1 + 204);
  v19 = v1[27];
  v41[0] = v1[26];
  v41[1] = v19;
  v41[2] = v1[28];
  v42 = *(v1 + 232);
  v43 = v1[30];
  v44 = *(v1 + 248);
  v45 = v1[32];
  v46 = *(v1 + 264);
  v47 = v1[34];
  v48 = *(v1 + 280);
  v50 = *(v1 + 71);
  v49 = *(v1 + 288);
  v52 = *(v1 + 73);
  v51 = *(v1 + 296);
  v54 = *(v1 + 75);
  v53 = *(v1 + 304);
  v56 = *(v1 + 77);
  v55 = *(v1 + 312);
  v57 = v1[40];
  v58 = *(v1 + 328);
  v60 = *(v1 + 83);
  v59 = *(v1 + 336);
  v20 = v1[44];
  v61 = v1[43];
  v62 = v20;
  v64 = *(v1 + 90);
  v63 = *(v1 + 364);
  v66 = *(v1 + 92);
  v65 = *(v1 + 372);
  v67 = *(v1 + 94);
  v21 = *(v1 + 380);
  v22 = v1[48];
  v23 = *(v1 + 392);
  v24 = a1[3];
  v25 = a1[4];
  v26 = a1;
  v28 = v41 - v27;
  __swift_project_boxed_opaque_existential_1(v26, v24);
  lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v100 = 0;
  v29 = v96;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v29)
  {
    LODWORD(v96) = v23;
    OUTLINED_FUNCTION_6_2(1);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(2);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v100 = 3;
    OUTLINED_FUNCTION_10_2(v92);
    OUTLINED_FUNCTION_14_2();
    v100 = 4;
    OUTLINED_FUNCTION_10_2(v90);
    OUTLINED_FUNCTION_14_2();
    OUTLINED_FUNCTION_6_2(5);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v100 = 6;
    OUTLINED_FUNCTION_10_2(v86);
    OUTLINED_FUNCTION_14_2();
    OUTLINED_FUNCTION_6_2(7);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v100 = 8;
    OUTLINED_FUNCTION_10_2(v83);
    OUTLINED_FUNCTION_14_2();
    OUTLINED_FUNCTION_6_2(9);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v100 = 10;
    OUTLINED_FUNCTION_10_3(&v102 + 4);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(11);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(12);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v100 = 13;
    OUTLINED_FUNCTION_10_3(&v101 + 4);
    OUTLINED_FUNCTION_4_4(v30);
    OUTLINED_FUNCTION_6_2(14);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v100 = 15;
    OUTLINED_FUNCTION_10_3(v97);
    OUTLINED_FUNCTION_4_4(v31);
    v100 = 16;
    OUTLINED_FUNCTION_10_3(&v95 + 4);
    OUTLINED_FUNCTION_4_4(v32);
    OUTLINED_FUNCTION_6_2(17);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(18);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(19);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(20);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(21);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v100 = 22;
    OUTLINED_FUNCTION_10_3(v82 + 4);
    OUTLINED_FUNCTION_4_4(v33);
    v100 = 23;
    OUTLINED_FUNCTION_10_3(&v83);
    OUTLINED_FUNCTION_4_4(v34);
    v100 = 24;
    OUTLINED_FUNCTION_10_3(v85 + 4);
    OUTLINED_FUNCTION_4_4(v35);
    v100 = 25;
    OUTLINED_FUNCTION_10_3(&v86);
    OUTLINED_FUNCTION_4_4(v36);
    OUTLINED_FUNCTION_6_2(26);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v100 = 27;
    OUTLINED_FUNCTION_10_3(&v89 + 4);
    OUTLINED_FUNCTION_4_4(v37);
    OUTLINED_FUNCTION_6_2(28);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v100 = 29;
    OUTLINED_FUNCTION_10_3(v93 + 4);
    OUTLINED_FUNCTION_4_4(v38);
    v100 = 30;
    OUTLINED_FUNCTION_10_3(v94 + 4);
    OUTLINED_FUNCTION_4_4(v39);
    v100 = 31;
    v99 = v21;
    OUTLINED_FUNCTION_4_4(v21);
    OUTLINED_FUNCTION_6_2(32);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v7 + 8))(v28, v2);
}

unint64_t lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys);
  }

  return result;
}

__n128 AvailabilityDetailedStatusEvent.init(AppleIntelligenceLocale:locale:status:currentMCSubscriptionHash:currentSubscriptionHash:lastMADownloadAttemptErrorAsset:lastMADownloadAttemptErrorCode:lastMADownloadAttemptErrorDomain:lastMADownloadAttemptErrorUnderlyingCode:lastMADownloadAttemptErrorUnderlyingDomain:errorCount:failingSubsystemOperations:sampledSubsystemOperation:sampledErrorCode:sampledErrorDomain:sampledErrorHash:sampledErrorUnderlyingCode:sampledErrorUnderlyingDomain:timeSinceLastAIToggle:timeSinceLastMADownloadAttempt:timeSinceLastSubscriptionChange:timeSinceLastMADownloadError:countPSUSAssets:countRequiredAssets:downloadState:PSUSState:timeSinceLastBoot:timestamp:useCaseID:mode:invocationsWhileNotAvailable:subscriptionDownloadStatus:timeSinceSubscriptionDownloadStatusComplete:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, int a12, char a13, uint64_t a14, uint64_t a15, int a16, char a17, uint64_t a18, uint64_t a19, int a20, char a21, __int128 a22, uint64_t a23, uint64_t a24, int a25, char a26, uint64_t a27, uint64_t a28, int a29, char a30, int a31, char a32, __n128 a33, uint64_t a34, char a35, uint64_t a36, char a37, uint64_t a38, char a39, uint64_t a40, char a41, int a42, int a43, char a44, int a45, char a46, int a47, char a48, int a49, char a50, uint64_t a51, char a52, int a53, int a54, char a55, uint64_t a56, uint64_t a57, int a58, char a59, int a60, char a61, int a62, char a63)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 44) = a7;
  *(a9 + 48) = BYTE4(a7) & 1;
  *(a9 + 52) = a8;
  *(a9 + 56) = BYTE4(a8) & 1;
  *(a9 + 64) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 84) = a13 & 1;
  *(a9 + 88) = a14;
  *(a9 + 96) = a15;
  *(a9 + 104) = a16;
  *(a9 + 108) = a17 & 1;
  *(a9 + 112) = a18;
  *(a9 + 120) = a19;
  *(a9 + 128) = a20;
  *(a9 + 132) = a21 & 1;
  *(a9 + 152) = a23;
  *(a9 + 160) = a24;
  *(a9 + 168) = a25;
  *(a9 + 172) = a26 & 1;
  *(a9 + 176) = a27;
  *(a9 + 184) = a28;
  *(a9 + 192) = a29;
  *(a9 + 196) = a30 & 1;
  *(a9 + 200) = a31;
  *(a9 + 204) = a32 & 1;
  *(a9 + 224) = a34;
  *(a9 + 232) = a35 & 1;
  *(a9 + 240) = a36;
  *(a9 + 248) = a37 & 1;
  *(a9 + 256) = a38;
  *(a9 + 264) = a39 & 1;
  *(a9 + 272) = a40;
  *(a9 + 280) = a41 & 1;
  *(a9 + 284) = a43;
  *(a9 + 288) = a44 & 1;
  *(a9 + 292) = a45;
  *(a9 + 296) = a46 & 1;
  *(a9 + 300) = a47;
  *(a9 + 304) = a48 & 1;
  *(a9 + 308) = a49;
  *(a9 + 312) = a50 & 1;
  *(a9 + 320) = a51;
  *(a9 + 328) = a52 & 1;
  *(a9 + 332) = a54;
  *(a9 + 336) = a55 & 1;
  *(a9 + 344) = a56;
  *(a9 + 352) = a57;
  *(a9 + 360) = a58;
  *(a9 + 364) = a59 & 1;
  *(a9 + 368) = a60;
  *(a9 + 372) = a61 & 1;
  *(a9 + 376) = a62;
  *(a9 + 380) = a63 & 1;
  *(a9 + 384) = a64;
  *(a9 + 392) = a65 & 1;
  result = a33;
  *(a9 + 136) = a22;
  *(a9 + 208) = a33;
  return result;
}

uint64_t AvailabilityDetailedStatusEvent.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventV10CodingKeys33_F72A3482A09DA23F578681F03E6B3DBBLLOGMd, &_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventV10CodingKeys33_F72A3482A09DA23F578681F03E6B3DBBLLOGMR);
  v7 = OUTLINED_FUNCTION_26_0(v6);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7);
  v10 = a1[3];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v10);
  lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent.CodingKeys and conformance AvailabilityDetailedStatusEvent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = a2;
    OUTLINED_FUNCTION_3_5();
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v101 = v15;
    OUTLINED_FUNCTION_2_5(1);
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v100 = v17;
    OUTLINED_FUNCTION_2_5(2);
    v105 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v268 = v18 & 1;
    OUTLINED_FUNCTION_2_5(3);
    v19 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v265 = BYTE4(v19) & 1;
    v103 = v19;
    OUTLINED_FUNCTION_3_5();
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v262 = BYTE4(v20) & 1;
    LOBYTE(v107[0]) = 5;
    v92 = v20;
    OUTLINED_FUNCTION_3_5();
    v91 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v99 = v21;
    OUTLINED_FUNCTION_2_5(6);
    v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v90 = v22;
    v260 = BYTE4(v22) & 1;
    OUTLINED_FUNCTION_2_5(7);
    v89 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v98 = v23;
    OUTLINED_FUNCTION_2_5(8);
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v88 = v24;
    v257 = BYTE4(v24) & 1;
    OUTLINED_FUNCTION_0_5(9);
    v87 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v97 = v25;
    OUTLINED_FUNCTION_0_5(10);
    v86 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v254 = BYTE4(v86) & 1;
    OUTLINED_FUNCTION_0_5(11);
    v85 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v96 = v26;
    OUTLINED_FUNCTION_0_5(12);
    v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v95 = v27;
    OUTLINED_FUNCTION_0_5(13);
    v83 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v251 = BYTE4(v83) & 1;
    OUTLINED_FUNCTION_0_5(14);
    v82 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v94 = v28;
    OUTLINED_FUNCTION_0_5(15);
    v81 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v248 = BYTE4(v81) & 1;
    OUTLINED_FUNCTION_0_5(16);
    v80 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v245 = BYTE4(v80) & 1;
    OUTLINED_FUNCTION_0_5(17);
    v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v93 = v29;
    OUTLINED_FUNCTION_0_5(18);
    v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v242 = v30 & 1;
    OUTLINED_FUNCTION_0_5(19);
    v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v240 = v31 & 1;
    OUTLINED_FUNCTION_0_5(20);
    v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v238 = v32 & 1;
    OUTLINED_FUNCTION_0_5(21);
    v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v236 = v33 & 1;
    OUTLINED_FUNCTION_0_5(22);
    v74 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v233 = BYTE4(v74) & 1;
    OUTLINED_FUNCTION_0_5(23);
    v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v230 = BYTE4(v73) & 1;
    OUTLINED_FUNCTION_0_5(24);
    v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v227 = BYTE4(v72) & 1;
    OUTLINED_FUNCTION_0_5(25);
    v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v224 = BYTE4(v71) & 1;
    OUTLINED_FUNCTION_0_5(26);
    v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v222 = v34 & 1;
    OUTLINED_FUNCTION_0_5(27);
    v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v219 = BYTE4(v69) & 1;
    OUTLINED_FUNCTION_0_5(28);
    v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v36 = v35;
    OUTLINED_FUNCTION_0_5(29);
    v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v217 = BYTE4(v67) & 1;
    OUTLINED_FUNCTION_0_5(30);
    v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v214 = BYTE4(v66) & 1;
    OUTLINED_FUNCTION_0_5(31);
    v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v211 = BYTE4(v65) & 1;
    v207 = 32;
    v64 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v62 = v37;
    v269 = 0;
    v38 = OUTLINED_FUNCTION_11_3();
    v39(v38);
    v208 = v62 & 1;
    v106[0] = v14;
    v106[1] = v101;
    v106[2] = v16;
    v106[3] = v100;
    v106[4] = v105;
    v49 = v268;
    LOBYTE(v106[5]) = v268;
    *(&v106[5] + 1) = v266;
    BYTE3(v106[5]) = v267;
    HIDWORD(v106[5]) = v103;
    v48 = v265;
    LOBYTE(v106[6]) = v265;
    *(&v106[6] + 1) = v263;
    BYTE3(v106[6]) = v264;
    HIDWORD(v106[6]) = v92;
    v47 = v262;
    LOBYTE(v106[7]) = v262;
    *(&v106[7] + 1) = *v261;
    HIDWORD(v106[7]) = *&v261[3];
    v106[8] = v91;
    v106[9] = v99;
    LODWORD(v106[10]) = v90;
    v46 = v260;
    BYTE4(v106[10]) = v260;
    *(&v106[10] + 5) = v258;
    HIBYTE(v106[10]) = v259;
    v106[11] = v89;
    v106[12] = v98;
    LODWORD(v106[13]) = v88;
    v45 = v257;
    BYTE4(v106[13]) = v257;
    HIBYTE(v106[13]) = v256;
    *(&v106[13] + 5) = v255;
    v106[14] = v87;
    v106[15] = v97;
    LODWORD(v106[16]) = v86;
    v44 = v254;
    BYTE4(v106[16]) = v254;
    HIBYTE(v106[16]) = v253;
    *(&v106[16] + 5) = v252;
    v106[17] = v85;
    v106[18] = v96;
    v106[19] = v84;
    v106[20] = v95;
    LODWORD(v106[21]) = v83;
    v43 = v251;
    BYTE4(v106[21]) = v251;
    HIBYTE(v106[21]) = v250;
    *(&v106[21] + 5) = v249;
    v106[22] = v82;
    v106[23] = v94;
    LODWORD(v106[24]) = v81;
    v42 = v248;
    BYTE4(v106[24]) = v248;
    HIBYTE(v106[24]) = v247;
    *(&v106[24] + 5) = v246;
    LODWORD(v106[25]) = v80;
    v41 = v245;
    BYTE4(v106[25]) = v245;
    HIBYTE(v106[25]) = v244;
    *(&v106[25] + 5) = v243;
    v106[26] = v79;
    v106[27] = v93;
    v106[28] = v78;
    v40 = v242;
    LOBYTE(v106[29]) = v242;
    HIDWORD(v106[29]) = *&v241[3];
    *(&v106[29] + 1) = *v241;
    v106[30] = v77;
    v63 = v240;
    LOBYTE(v106[31]) = v240;
    HIDWORD(v106[31]) = *&v239[3];
    *(&v106[31] + 1) = *v239;
    v106[32] = v76;
    v61 = v238;
    LOBYTE(v106[33]) = v238;
    *(&v106[33] + 1) = *v237;
    HIDWORD(v106[33]) = *&v237[3];
    v106[34] = v75;
    v60 = v236;
    LOBYTE(v106[35]) = v236;
    *(&v106[35] + 1) = v234;
    BYTE3(v106[35]) = v235;
    HIDWORD(v106[35]) = v74;
    v59 = v233;
    LOBYTE(v106[36]) = v233;
    *(&v106[36] + 1) = v231;
    BYTE3(v106[36]) = v232;
    HIDWORD(v106[36]) = v73;
    v58 = v230;
    LOBYTE(v106[37]) = v230;
    *(&v106[37] + 1) = v228;
    BYTE3(v106[37]) = v229;
    HIDWORD(v106[37]) = v72;
    v57 = v227;
    LOBYTE(v106[38]) = v227;
    *(&v106[38] + 1) = v225;
    BYTE3(v106[38]) = v226;
    HIDWORD(v106[38]) = v71;
    v56 = v224;
    LOBYTE(v106[39]) = v224;
    *(&v106[39] + 1) = *v223;
    HIDWORD(v106[39]) = *&v223[3];
    v106[40] = v70;
    v55 = v222;
    LOBYTE(v106[41]) = v222;
    *(&v106[41] + 1) = v220;
    BYTE3(v106[41]) = v221;
    HIDWORD(v106[41]) = v69;
    v54 = v219;
    LOBYTE(v106[42]) = v219;
    *(&v106[42] + 1) = *v218;
    HIDWORD(v106[42]) = *&v218[3];
    v106[43] = v68;
    v106[44] = v36;
    LODWORD(v106[45]) = v67;
    v53 = v217;
    BYTE4(v106[45]) = v217;
    *(&v106[45] + 5) = v215;
    HIBYTE(v106[45]) = v216;
    LODWORD(v106[46]) = v66;
    *(&v106[46] + 5) = v212;
    v52 = v214;
    BYTE4(v106[46]) = v214;
    HIBYTE(v106[46]) = v213;
    LODWORD(v106[47]) = v65;
    *(&v106[47] + 5) = v209;
    v50 = v211;
    BYTE4(v106[47]) = v211;
    HIBYTE(v106[47]) = v210;
    v106[48] = v64;
    v51 = v208;
    LOBYTE(v106[49]) = v208;
    memcpy(v12, v106, 0x189uLL);
    outlined init with copy of AvailabilityDetailedStatusEvent(v106, v107);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    v107[0] = v14;
    v107[1] = v101;
    v107[2] = v16;
    v107[3] = v100;
    v107[4] = v105;
    v108 = v49;
    v111 = v103;
    v112 = v48;
    v115 = v92;
    v116 = v47;
    v118 = v91;
    v119 = v99;
    v120 = v90;
    v121 = v46;
    v124 = v89;
    v125 = v98;
    v126 = v88;
    v127 = v45;
    v130 = v87;
    v131 = v97;
    v132 = v86;
    v133 = v44;
    v136 = v85;
    v137 = v96;
    v138 = v84;
    v139 = v95;
    v140 = v83;
    v141 = v43;
    v144 = v82;
    v145 = v94;
    v146 = v81;
    v147 = v42;
    v150 = v80;
    v151 = v41;
    v154 = v79;
    v155 = v93;
    v156 = v78;
    v157 = v40;
    v109 = v266;
    v110 = v267;
    v113 = v263;
    v114 = v264;
    *&v117[3] = *&v261[3];
    *v117 = *v261;
    v122 = v258;
    v123 = v259;
    v128 = v255;
    v129 = v256;
    v135 = v253;
    v134 = v252;
    v143 = v250;
    v142 = v249;
    v149 = v247;
    v148 = v246;
    v153 = v244;
    v152 = v243;
    *&v158[3] = *&v241[3];
    *v158 = *v241;
    v159 = v77;
    v160 = v63;
    *&v161[3] = *&v239[3];
    *v161 = *v239;
    v162 = v76;
    v163 = v61;
    *v164 = *v237;
    *&v164[3] = *&v237[3];
    v165 = v75;
    v166 = v60;
    v167 = v234;
    v168 = v235;
    v169 = v74;
    v170 = v59;
    v171 = v231;
    v172 = v232;
    v173 = v73;
    v174 = v58;
    v175 = v228;
    v176 = v229;
    v177 = v72;
    v178 = v57;
    v179 = v225;
    v180 = v226;
    v181 = v71;
    v182 = v56;
    *v183 = *v223;
    *&v183[3] = *&v223[3];
    v184 = v70;
    v185 = v55;
    v186 = v220;
    v187 = v221;
    v188 = v69;
    v189 = v54;
    *v190 = *v218;
    *&v190[3] = *&v218[3];
    v191 = v68;
    v192 = v36;
    v193 = v67;
    v194 = v53;
    v195 = v215;
    v196 = v216;
    v197 = v66;
    v198 = v52;
    v199 = v212;
    v200 = v213;
    v201 = v65;
    v202 = v50;
    v203 = v209;
    v204 = v210;
    v205 = v64;
    v206 = v51;
    return outlined destroy of AvailabilityDetailedStatusEvent(v107);
  }

  v269 = v2;
  OUTLINED_FUNCTION_8_4();
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  if (!v10)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

LABEL_5:

    if (v3)
    {
      goto LABEL_12;
    }

LABEL_6:
    if (!v102)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_5;
  }

LABEL_11:
  if (!v3)
  {
    goto LABEL_6;
  }

LABEL_12:

  if ((v102 & 1) == 0)
  {
LABEL_13:
    if (v104)
    {
    }

    return result;
  }

LABEL_7:

  if (v104)
  {
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for AvailabilityDetailedStatusEvent(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent();
  result = lazy protocol witness table accessor for type AvailabilityDetailedStatusEvent and conformance AvailabilityDetailedStatusEvent();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AvailabilityDetailedStatusEvent(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 393))
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

uint64_t storeEnumTagSinglePayload for AvailabilityDetailedStatusEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 392) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 393) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 393) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AvailabilityDetailedStatusEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE0)
  {
    if (a2 + 32 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 32) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 33;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x21;
  v5 = v6 - 33;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for AvailabilityDetailedStatusEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 32 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 32) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xDF)
  {
    v6 = ((a2 - 224) >> 8) + 1;
    *result = a2 + 32;
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
          *result = a2 + 32;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_5@<X0>(char a1@<W8>)
{
  *(v1 + 832) = a1;
  result = v1 + 832;
  v4 = *(v2 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_4_4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 - 256) | (a1 << 32);

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

void OUTLINED_FUNCTION_12_3()
{
  v2 = *(v0 - 152);
  v3 = *(v0 - 144);

  JUMPOUT(0x22AAAE070);
}

uint64_t OUTLINED_FUNCTION_14_2()
{

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

void OUTLINED_FUNCTION_21_0()
{
  v2 = *(v0 - 152);
  v3 = *(v0 - 144);

  JUMPOUT(0x22AAAE070);
}

void OUTLINED_FUNCTION_22_1()
{

  JUMPOUT(0x22AAAE070);
}

void OUTLINED_FUNCTION_23_1()
{
  v2 = *(v0 - 152);
  v3 = *(v0 - 144);

  JUMPOUT(0x22AAAE070);
}

void OUTLINED_FUNCTION_25_1()
{

  JUMPOUT(0x22AAAE070);
}

void OUTLINED_FUNCTION_28_0()
{
  v1 = *(v0 - 144);
  *(v0 - 152) = *(v0 - 152);
  *(v0 - 144) = v1;
}

__n128 InvocationEvent.init(primaryUseCaseID:allUseCaseIDs:assets:fullErrorHash:sampledSubsystem:sampledSubsystemSubrequest:sampledSubsystemOverhead:sampledSubsystemSubrequestTime:sampledSubsystemTotalTime:totalGMTime:totalTime:totalUnderlyingTime:topResultErrorDomain:topResultErrorCode:bottomResultErrorDomain:bottomResultErrorCode:interResultErrorDomain:interResultErrorCode:invocationCompleted:sampledSubsystemCallCount:sampledSubsystemErrorDomain:sampledSubsystemErrorCode:sampledSubsystemErrorHash:sampledSubsystemSampleUnderlyingDomain:sampledSubsystemSampleUnderlyingCode:startTimestamp:subrequestsForSampledSubsystem:subsystemsInvolved:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, char a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, int a26, char a27, uint64_t a28, uint64_t a29, int a30, char a31, uint64_t a32, uint64_t a33, int a34, char a35, __int16 a36, char a37, int a38, int a39, char a40, uint64_t a41, uint64_t a42, int a43, char a44, int a45, char a46, uint64_t a47, uint64_t a48, int a49, char a50, int a51, char a52, __n128 a53, uint64_t a54, uint64_t a55)
{
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 52) = BYTE4(a7) & 1;
  *(a9 + 56) = a8;
  *(a9 + 80) = a11;
  *(a9 + 88) = a12;
  *(a9 + 96) = a13 & 1;
  *(a9 + 104) = a14;
  *(a9 + 112) = a15 & 1;
  *(a9 + 120) = a16;
  *(a9 + 128) = a17 & 1;
  *(a9 + 136) = a18;
  *(a9 + 144) = a19 & 1;
  *(a9 + 152) = a20;
  *(a9 + 160) = a21 & 1;
  *(a9 + 168) = a22;
  *(a9 + 176) = a23 & 1;
  *(a9 + 184) = a24;
  *(a9 + 192) = a25;
  *(a9 + 200) = a26;
  *(a9 + 204) = a27 & 1;
  *(a9 + 208) = a28;
  *(a9 + 216) = a29;
  *(a9 + 224) = a30;
  *(a9 + 228) = a31 & 1;
  *(a9 + 232) = a32;
  *(a9 + 240) = a33;
  *(a9 + 248) = a34;
  *(a9 + 252) = a35 & 1;
  *(a9 + 253) = a37;
  *(a9 + 256) = a39;
  *(a9 + 260) = a40 & 1;
  *(a9 + 264) = a41;
  *(a9 + 272) = a42;
  *(a9 + 280) = a43;
  *(a9 + 284) = a44 & 1;
  *(a9 + 288) = a45;
  *(a9 + 292) = a46 & 1;
  *(a9 + 296) = a47;
  *(a9 + 304) = a48;
  *(a9 + 312) = a49;
  *(a9 + 316) = a50 & 1;
  *(a9 + 320) = a51;
  *(a9 + 324) = a52 & 1;
  *(a9 + 344) = a54;
  *(a9 + 352) = a55;
  result = a53;
  *(a9 + 64) = a10;
  *(a9 + 328) = a53;
  return result;
}

uint64_t InvocationEvent.upload(coreAnalyticsUploader:)(void *a1)
{
  memcpy(__dst, v1, sizeof(__dst));
  type metadata accessor for CAEncoder();
  v9[3] = &type metadata for InvocationEvent;
  v9[4] = lazy protocol witness table accessor for type InvocationEvent and conformance InvocationEvent();
  v9[0] = swift_allocObject();
  memcpy((v9[0] + 16), v1, 0x168uLL);
  outlined init with copy of InvocationEvent(__dst, v8);
  v4 = static CAEncoder.toCADictionary(_:)(v9);
  result = __swift_destroy_boxed_opaque_existential_0Tm(v9);
  if (!v2)
  {
    v6 = a1[3];
    v7 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v6);
    (*(v7 + 8))(0xD00000000000002FLL, 0x8000000227FB4EE0, v4, v6, v7);
  }

  return result;
}

uint64_t InvocationEvent.primaryUseCaseID.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationEvent.allUseCaseIDs.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationEvent.assets.getter()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationEvent.sampledSubsystem.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationEvent.sampledSubsystemSubrequest.getter()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);

  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationEvent.sampledSubsystemOverhead.getter()
{
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t InvocationEvent.sampledSubsystemSubrequestTime.getter()
{
  result = *(v0 + 104);
  v2 = *(v0 + 112);
  return result;
}

uint64_t InvocationEvent.sampledSubsystemTotalTime.getter()
{
  result = *(v0 + 120);
  v2 = *(v0 + 128);
  return result;
}

uint64_t InvocationEvent.totalGMTime.getter()
{
  result = *(v0 + 136);
  v2 = *(v0 + 144);
  return result;
}

uint64_t InvocationEvent.totalTime.getter()
{
  result = *(v0 + 152);
  v2 = *(v0 + 160);
  return result;
}

uint64_t InvocationEvent.totalUnderlyingTime.getter()
{
  result = *(v0 + 168);
  v2 = *(v0 + 176);
  return result;
}

uint64_t InvocationEvent.topResultErrorDomain.getter()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);

  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationEvent.bottomResultErrorDomain.getter()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);

  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationEvent.interResultErrorDomain.getter()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);

  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationEvent.sampledSubsystemErrorDomain.getter()
{
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);

  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationEvent.sampledSubsystemSampleUnderlyingDomain.getter()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 304);

  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationEvent.subrequestsForSampledSubsystem.getter()
{
  v1 = *(v0 + 328);
  v2 = *(v0 + 336);

  return OUTLINED_FUNCTION_62();
}

uint64_t InvocationEvent.subsystemsInvolved.getter()
{
  v1 = *(v0 + 344);
  v2 = *(v0 + 352);

  return OUTLINED_FUNCTION_62();
}

AppleIntelligenceReportingProcessing::InvocationEvent::CodingKeys_optional __swiftcall InvocationEvent.CodingKeys.init(rawValue:)(Swift::String rawValue)
{
  v1 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v1 >= 0x1C)
  {
    return 28;
  }

  else
  {
    return v1;
  }
}

uint64_t InvocationEvent.CodingKeys.rawValue.getter(char a1)
{
  result = 0x61436573556C6C41;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x737465737341;
      break;
    case 3:
      result = 0x6F7272456C6C7546;
      break;
    case 5:
      OUTLINED_FUNCTION_17_2();
      result = v11 + 1;
      break;
    case 6:
      OUTLINED_FUNCTION_17_2();
      result = v13 - 1;
      break;
    case 7:
    case 26:
      OUTLINED_FUNCTION_17_2();
      result = v16 + 5;
      break;
    case 8:
      result = 0xD000000000000019;
      break;
    case 9:
      result = 0x544D476C61746F54;
      break;
    case 10:
      v6 = 0x546C61746F54;
      goto LABEL_19;
    case 11:
    case 18:
      OUTLINED_FUNCTION_17_2();
      result = v14 - 6;
      break;
    case 12:
    case 17:
      OUTLINED_FUNCTION_17_2();
      result = v9 - 5;
      break;
    case 13:
    case 27:
      OUTLINED_FUNCTION_17_2();
      result = v12 - 7;
      break;
    case 14:
      OUTLINED_FUNCTION_17_2();
      result = v4 - 2;
      break;
    case 15:
      OUTLINED_FUNCTION_17_2();
      result = v8 - 4;
      break;
    case 16:
      OUTLINED_FUNCTION_17_2();
      result = v3 - 3;
      break;
    case 19:
      result = 0xD000000000000019;
      break;
    case 20:
      OUTLINED_FUNCTION_17_2();
      result = v10 | 2;
      break;
    case 21:
      result = 0xD000000000000019;
      break;
    case 22:
      result = 0xD000000000000019;
      break;
    case 23:
      OUTLINED_FUNCTION_17_2();
      result = v15 + 13;
      break;
    case 24:
      OUTLINED_FUNCTION_17_2();
      result = v7 + 11;
      break;
    case 25:
      v6 = 0x547472617473;
LABEL_19:
      result = v6 & 0xFFFFFFFFFFFFLL | 0x6D69000000000000;
      break;
    default:
      OUTLINED_FUNCTION_17_2();
      result = v5 - 9;
      break;
  }

  return result;
}

AppleIntelligenceReportingProcessing::InvocationEvent::CodingKeys_optional protocol witness for RawRepresentable.init(rawValue:) in conformance InvocationEvent.CodingKeys@<W0>(Swift::String *a1@<X0>, AppleIntelligenceReportingProcessing::InvocationEvent::CodingKeys_optional *a2@<X8>)
{
  result.value = InvocationEvent.CodingKeys.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance InvocationEvent.CodingKeys@<X0>(uint64_t *a1@<X8>)
{
  result = InvocationEvent.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance InvocationEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance InvocationEvent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t InvocationEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing15InvocationEventV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy36AppleIntelligenceReportingProcessing15InvocationEventV10CodingKeysOGMR);
  v4 = OUTLINED_FUNCTION_0(v3);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  v10 = v42 - v9;
  v11 = *v1;
  v84[2] = v1[1];
  v85 = v11;
  v12 = v1[2];
  v84[0] = v1[3];
  v84[1] = v12;
  v13 = v1[4];
  v83[0] = v1[5];
  v83[1] = v13;
  v82[2] = *(v1 + 12);
  v87 = *(v1 + 52);
  v14 = v1[8];
  v82[0] = v1[7];
  v82[1] = v14;
  v15 = v1[10];
  v81[0] = v1[9];
  v81[1] = v15;
  v79 = v1[11];
  v80 = *(v1 + 96);
  v77 = v1[13];
  v78 = *(v1 + 112);
  v75 = v1[15];
  v76 = *(v1 + 128);
  v73 = v1[17];
  v74 = *(v1 + 144);
  v71 = v1[19];
  v72 = *(v1 + 160);
  v69 = v1[21];
  v70 = *(v1 + 176);
  v16 = v1[24];
  v67 = v1[23];
  v68 = v16;
  v66 = *(v1 + 50);
  v65 = *(v1 + 204);
  v17 = v1[27];
  v63 = v1[26];
  v64 = v17;
  v62 = *(v1 + 56);
  v61 = *(v1 + 228);
  v18 = v1[30];
  v59 = v1[29];
  v60 = v18;
  v43 = *(v1 + 62);
  v42[1] = *(v1 + 252);
  v44 = *(v1 + 253);
  v46 = *(v1 + 64);
  v45 = *(v1 + 260);
  v19 = v1[34];
  v47 = v1[33];
  v48 = v19;
  v50 = *(v1 + 70);
  v49 = *(v1 + 284);
  v52 = *(v1 + 72);
  v51 = *(v1 + 292);
  v20 = v1[38];
  v53 = v1[37];
  v54 = v20;
  v56 = *(v1 + 78);
  v55 = *(v1 + 316);
  v58 = *(v1 + 80);
  v57 = *(v1 + 324);
  v21 = v1[42];
  v82[3] = v1[41];
  v23 = v1[43];
  v22 = v1[44];
  v24 = a1[3];
  v25 = a1[4];
  v26 = a1;
  v28 = v27;
  __swift_project_boxed_opaque_existential_1(v26, v24);
  lazy protocol witness table accessor for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v89 = 0;
  v29 = v86;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v29)
  {
    v41 = *(v6 + 8);
    v39 = v10;
    v40 = v28;
  }

  else
  {
    v85 = v22;
    v86 = v21;
    OUTLINED_FUNCTION_6_2(1);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(2);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v89 = 3;
    v88 = v87;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(4);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(5);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(6);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(7);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(8);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(9);
    OUTLINED_FUNCTION_17_1();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(10);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(11);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(12);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v89 = 13;
    OUTLINED_FUNCTION_10_3(&v90 + 4);
    OUTLINED_FUNCTION_4_4(v31);
    OUTLINED_FUNCTION_6_2(14);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v89 = 15;
    OUTLINED_FUNCTION_10_3(&v86 + 4);
    OUTLINED_FUNCTION_4_4(v32);
    OUTLINED_FUNCTION_6_2(16);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v89 = 17;
    OUTLINED_FUNCTION_10_3(&v75 + 4);
    OUTLINED_FUNCTION_4_4(v33);
    v89 = 18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v89 = 19;
    OUTLINED_FUNCTION_10_3(&v77 + 4);
    OUTLINED_FUNCTION_4_4(v34);
    OUTLINED_FUNCTION_6_2(20);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v89 = 21;
    OUTLINED_FUNCTION_10_3(v81 + 4);
    OUTLINED_FUNCTION_4_4(v35);
    v89 = 22;
    OUTLINED_FUNCTION_10_3(v82 + 4);
    OUTLINED_FUNCTION_4_4(v36);
    OUTLINED_FUNCTION_6_2(23);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v89 = 24;
    OUTLINED_FUNCTION_10_3(v83 + 4);
    OUTLINED_FUNCTION_4_4(v37);
    v89 = 25;
    OUTLINED_FUNCTION_10_3(v84 + 4);
    OUTLINED_FUNCTION_4_4(v38);
    OUTLINED_FUNCTION_6_2(26);
    OUTLINED_FUNCTION_9_3();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    OUTLINED_FUNCTION_6_2(27);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v39 = OUTLINED_FUNCTION_16_2();
  }

  return v41(v39, v40);
}

unint64_t lazy protocol witness table accessor for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys()
{
  result = lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys;
  if (!lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys);
  }

  return result;
}

uint64_t InvocationEvent.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing15InvocationEventV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy36AppleIntelligenceReportingProcessing15InvocationEventV10CodingKeysOGMR);
  v6 = OUTLINED_FUNCTION_0(v5);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  v11 = a1[3];
  v12 = a1[4];
  v99 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  lazy protocol witness table accessor for type InvocationEvent.CodingKeys and conformance InvocationEvent.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v13 = a2;
    LOBYTE(v103[0]) = 0;
    v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v98 = v16;
    OUTLINED_FUNCTION_1_4(1);
    v17 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v97 = v18;
    OUTLINED_FUNCTION_1_4(2);
    v101 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v96 = v19;
    OUTLINED_FUNCTION_1_4(3);
    v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v100 = v17;
    v212 = BYTE4(v20) & 1;
    LOBYTE(v103[0]) = 4;
    v21 = v20;
    v86 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v87 = v21;
    v95 = v22;
    OUTLINED_FUNCTION_1_4(5);
    v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v94 = v24;
    OUTLINED_FUNCTION_1_4(6);
    v85 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v209 = v25 & 1;
    OUTLINED_FUNCTION_1_4(7);
    v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v207 = v26 & 1;
    OUTLINED_FUNCTION_1_4(8);
    v83 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v213 = 0;
    v205 = v27 & 1;
    OUTLINED_FUNCTION_0_6(9);
    v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v213 = 0;
    v29 = v28;
    v203 = v30 & 1;
    OUTLINED_FUNCTION_0_6(10);
    v82 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v213 = 0;
    v201 = v31 & 1;
    OUTLINED_FUNCTION_0_6(11);
    v81 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v213 = 0;
    v199 = v32 & 1;
    OUTLINED_FUNCTION_0_6(12);
    v80 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v93 = v33;
    v213 = 0;
    OUTLINED_FUNCTION_0_6(13);
    v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v213 = 0;
    v197 = BYTE4(v79) & 1;
    OUTLINED_FUNCTION_0_6(14);
    v78 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v92 = v34;
    v213 = 0;
    OUTLINED_FUNCTION_0_6(15);
    v77 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v213 = 0;
    v194 = BYTE4(v77) & 1;
    OUTLINED_FUNCTION_0_6(16);
    v76 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v91 = v35;
    v213 = 0;
    OUTLINED_FUNCTION_0_6(17);
    v75 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v213 = 0;
    v191 = BYTE4(v75) & 1;
    OUTLINED_FUNCTION_0_6(18);
    v74 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v213 = 0;
    OUTLINED_FUNCTION_0_6(19);
    v73 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v213 = 0;
    v190 = BYTE4(v73) & 1;
    OUTLINED_FUNCTION_0_6(20);
    v72 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v90 = v36;
    v213 = 0;
    OUTLINED_FUNCTION_0_6(21);
    v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v213 = 0;
    v187 = BYTE4(v71) & 1;
    OUTLINED_FUNCTION_0_6(22);
    v70 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v213 = 0;
    v184 = BYTE4(v70) & 1;
    OUTLINED_FUNCTION_0_6(23);
    v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v89 = v37;
    v213 = 0;
    OUTLINED_FUNCTION_0_6(24);
    v68 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v213 = 0;
    v181 = BYTE4(v68) & 1;
    OUTLINED_FUNCTION_0_6(25);
    v67 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v213 = 0;
    v178 = BYTE4(v67) & 1;
    OUTLINED_FUNCTION_0_6(26);
    v66 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v88 = v38;
    v213 = 0;
    v175 = 27;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v64 = v40;
    v65 = v39;
    v213 = 0;
    v41 = OUTLINED_FUNCTION_8_5();
    v42(v41);
    v102[0] = v15;
    v102[1] = v98;
    v102[2] = v100;
    v102[3] = v97;
    v102[4] = v101;
    v102[5] = v96;
    LODWORD(v102[6]) = v87;
    v58 = v212;
    BYTE4(v102[6]) = v212;
    *(&v102[6] + 5) = v210;
    HIBYTE(v102[6]) = v211;
    v102[7] = v86;
    v102[8] = v95;
    v57 = v23;
    v102[9] = v23;
    v102[10] = v94;
    v102[11] = v85;
    v56 = v209;
    LOBYTE(v102[12]) = v209;
    *(&v102[12] + 1) = *v208;
    HIDWORD(v102[12]) = *&v208[3];
    v102[13] = v84;
    v54 = v207;
    LOBYTE(v102[14]) = v207;
    *(&v102[14] + 1) = *v206;
    HIDWORD(v102[14]) = *&v206[3];
    v102[15] = v83;
    v51 = v205;
    LOBYTE(v102[16]) = v205;
    *(&v102[16] + 1) = *v204;
    HIDWORD(v102[16]) = *&v204[3];
    v50 = v29;
    v102[17] = v29;
    v49 = v203;
    LOBYTE(v102[18]) = v203;
    HIDWORD(v102[18]) = *&v202[3];
    *(&v102[18] + 1) = *v202;
    v43 = v81;
    v102[19] = v82;
    v48 = v201;
    LOBYTE(v102[20]) = v201;
    HIDWORD(v102[20]) = *&v200[3];
    *(&v102[20] + 1) = *v200;
    v102[21] = v81;
    v44 = v199;
    LOBYTE(v102[22]) = v199;
    HIDWORD(v102[22]) = *&v198[3];
    *(&v102[22] + 1) = *v198;
    LODWORD(v23) = v79;
    v45 = v80;
    v102[23] = v80;
    v46 = v93;
    v102[24] = v93;
    LODWORD(v102[25]) = v79;
    v63 = v197;
    BYTE4(v102[25]) = v197;
    HIBYTE(v102[25]) = v196;
    *(&v102[25] + 5) = v195;
    v102[26] = v78;
    v102[27] = v92;
    LODWORD(v102[28]) = v77;
    v62 = v194;
    BYTE4(v102[28]) = v194;
    HIBYTE(v102[28]) = v193;
    *(&v102[28] + 5) = v192;
    v102[29] = v76;
    v102[30] = v91;
    LODWORD(v102[31]) = v75;
    v61 = v191;
    BYTE4(v102[31]) = v191;
    BYTE5(v102[31]) = v74;
    LODWORD(v102[32]) = v73;
    v60 = v190;
    BYTE4(v102[32]) = v190;
    *(&v102[32] + 5) = v188;
    HIBYTE(v102[32]) = v189;
    v102[33] = v72;
    v102[34] = v90;
    LODWORD(v102[35]) = v71;
    v59 = v187;
    BYTE4(v102[35]) = v187;
    *(&v102[35] + 5) = v185;
    HIBYTE(v102[35]) = v186;
    LODWORD(v102[36]) = v70;
    *(&v102[36] + 5) = v182;
    *(&v102[39] + 5) = v179;
    v55 = v184;
    BYTE4(v102[36]) = v184;
    HIBYTE(v102[36]) = v183;
    v102[37] = v69;
    v102[38] = v89;
    LODWORD(v102[39]) = v68;
    *(&v102[40] + 5) = v176;
    v53 = v181;
    BYTE4(v102[39]) = v181;
    HIBYTE(v102[39]) = v180;
    LODWORD(v102[40]) = v67;
    HIBYTE(v102[40]) = v177;
    v52 = v178;
    BYTE4(v102[40]) = v178;
    v102[41] = v66;
    v102[42] = v88;
    v102[43] = v65;
    v102[44] = v64;
    memcpy(v13, v102, 0x168uLL);
    outlined init with copy of InvocationEvent(v102, v103);
    __swift_destroy_boxed_opaque_existential_0Tm(v99);
    v103[0] = v15;
    v103[1] = v98;
    v103[2] = v100;
    v103[3] = v97;
    v103[4] = v101;
    v103[5] = v96;
    v104 = v87;
    v105 = v58;
    v108 = v86;
    v109 = v95;
    v110 = v57;
    v111 = v94;
    v112 = v85;
    v113 = v56;
    v115 = v84;
    v116 = v54;
    v118 = v83;
    v119 = v51;
    v121 = v50;
    v122 = v49;
    v124 = v82;
    v125 = v48;
    v127 = v43;
    v128 = v44;
    v130 = v45;
    v131 = v46;
    v132 = v23;
    v106 = v210;
    v107 = v211;
    *&v114[3] = *&v208[3];
    *v114 = *v208;
    *v117 = *v206;
    *&v117[3] = *&v206[3];
    *v120 = *v204;
    *&v120[3] = *&v204[3];
    *&v123[3] = *&v202[3];
    *v123 = *v202;
    *&v126[3] = *&v200[3];
    *v126 = *v200;
    *&v129[3] = *&v198[3];
    *v129 = *v198;
    v133 = v63;
    v135 = v196;
    v134 = v195;
    v136 = v78;
    v137 = v92;
    v138 = v77;
    v139 = v62;
    v141 = v193;
    v140 = v192;
    v142 = v76;
    v143 = v91;
    v144 = v75;
    v145 = v61;
    v146 = v74;
    v147 = v73;
    v148 = v60;
    v149 = v188;
    v150 = v189;
    v151 = v72;
    v152 = v90;
    v153 = v71;
    v154 = v59;
    v155 = v185;
    v156 = v186;
    v157 = v70;
    v158 = v55;
    v159 = v182;
    v160 = v183;
    v161 = v69;
    v162 = v89;
    v163 = v68;
    v164 = v53;
    v165 = v179;
    v166 = v180;
    v167 = v67;
    v168 = v52;
    v169 = v176;
    v170 = v177;
    v171 = v66;
    v172 = v88;
    v173 = v65;
    v174 = v64;
    return outlined destroy of InvocationEvent(v103);
  }

  v213 = v2;
  OUTLINED_FUNCTION_7_4();
  result = __swift_destroy_boxed_opaque_existential_0Tm(v99);
  if (!v12)
  {
    if (!a2)
    {
      goto LABEL_11;
    }

LABEL_5:

    if (v10)
    {
      goto LABEL_12;
    }

LABEL_6:
    if (!v100)
    {
      goto LABEL_13;
    }

    goto LABEL_7;
  }

  if (a2)
  {
    goto LABEL_5;
  }

LABEL_11:
  if (!v10)
  {
    goto LABEL_6;
  }

LABEL_12:

  if ((v100 & 1) == 0)
  {
LABEL_13:
    if (v101)
    {
    }

    return result;
  }

LABEL_7:

  if (v101)
  {
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for InvocationEvent(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type InvocationEvent and conformance InvocationEvent();
  result = lazy protocol witness table accessor for type InvocationEvent and conformance InvocationEvent();
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for InvocationEvent(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 360))
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

uint64_t storeEnumTagSinglePayload for InvocationEvent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 360) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 360) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InvocationEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE5)
  {
    if (a2 + 27 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 27) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 28;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v5 = v6 - 28;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for InvocationEvent.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE4)
  {
    v6 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
          *result = a2 + 27;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_6@<X0>(char a1@<W8>)
{
  *(v1 + 744) = a1;
  result = v1 + 744;
  v4 = *(v2 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_4()
{
  *(v3 - 72) = v0;
  v4 = *(v2 + 8);
  return v1;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(a3 + 16);
  v6 = (a3 + 40);
  if (v5)
  {
    while (1)
    {
      v7 = *v6;
      v8[0] = *(v6 - 1);
      v8[1] = v7;

      v4(v8);
      if (v3)
      {
        break;
      }

      v6 += 2;
      if (!--v5)
      {
        return result;
      }
    }
  }

  return result;
}

void AssetDeliveryProcessor.__allocating_init(biomeReader:unifiedAssetFrameworkReporter:)(uint64_t *a1, uint64_t a2, void (*a3)(char *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = a1[3];
  v8 = a1[4];
  __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  OUTLINED_FUNCTION_27_1();
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v11);
  v13 = &v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13);
  a3(v13, a2, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  OUTLINED_FUNCTION_33_0();
}

uint64_t AssetDeliveryProcessor.computeAssetDeliveryStates(dateSinceLastProcessed:useCases:)(uint64_t a1, uint64_t a2)
{
  v3[17] = a2;
  v3[18] = v2;
  v3[16] = a1;
  v4 = type metadata accessor for Date();
  v3[19] = v4;
  OUTLINED_FUNCTION_44(v4);
  v3[20] = v5;
  v7 = *(v6 + 64);
  v3[21] = OUTLINED_FUNCTION_97();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v8);
  v10 = *(v9 + 64);
  v3[22] = OUTLINED_FUNCTION_97();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  OUTLINED_FUNCTION_13(v11);
  v13 = *(v12 + 64);
  v3[23] = OUTLINED_FUNCTION_97();
  v14 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  v3[24] = v14;
  OUTLINED_FUNCTION_44(v14);
  v3[25] = v15;
  v17 = *(v16 + 64);
  v3[26] = OUTLINED_FUNCTION_97();
  v18 = type metadata accessor for AppleIntelligenceBiomeEvent();
  v3[27] = v18;
  OUTLINED_FUNCTION_13(v18);
  v20 = *(v19 + 64) + 15;
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing0aB10BiomeEventOSgMd, &_s36AppleIntelligenceReportingProcessing0aB10BiomeEventOSgMR);
  OUTLINED_FUNCTION_13(v21);
  v23 = *(v22 + 64);
  v3[30] = OUTLINED_FUNCTION_97();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_13(v24);
  v26 = *(v25 + 64);
  v3[31] = OUTLINED_FUNCTION_97();

  return MEMORY[0x2822009F8](AssetDeliveryProcessor.computeAssetDeliveryStates(dateSinceLastProcessed:useCases:), 0, 0);
}

uint64_t AssetDeliveryProcessor.computeAssetDeliveryStates(dateSinceLastProcessed:useCases:)()
{
  v1 = v0[31];
  v3 = v0[18];
  v2 = v0[19];
  v4 = type metadata accessor for AssetDeliveryState(0);
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  swift_allocObject();
  v0[32] = AssetDeliveryState.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay36AppleIntelligenceReportingProcessing18AssetDeliveryStateCGMd, &_sSay36AppleIntelligenceReportingProcessing18AssetDeliveryStateCGMR);
  v7 = Dictionary.init(dictionaryLiteral:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6UInt64VSgMd, &_ss6UInt64VSgMR);
  v8 = Dictionary.init(dictionaryLiteral:)();
  v9 = v3[5];
  v10 = v3[6];
  __swift_project_boxed_opaque_existential_1(v3 + 2, v9);
  __swift_storeEnumTagSinglePayload(v1, 1, 1, v2);
  (*(v10 + 16))(v1, &outlined read-only object #0 of AssetDeliveryProcessor.computeAssetDeliveryStates(dateSinceLastProcessed:useCases:), v9, v10);
  outlined destroy of NSObject?(v1, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = v0[10];
  v12 = __swift_project_boxed_opaque_existential_1(v0 + 7, v11);
  OUTLINED_FUNCTION_27_1();
  v14 = v13;
  v16 = *(v15 + 64);
  v17 = OUTLINED_FUNCTION_97();
  (*(v14 + 16))(v17, v12, v11);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  dispatch thunk of AsyncSequence.makeAsyncIterator()();

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v0[36] = v8;
  v0[37] = v7;
  v0[34] = v7;
  v0[35] = 0;
  v0[33] = v8;
  v18 = v0[6];
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v19 = *(MEMORY[0x277D856D8] + 4);
  v20 = swift_task_alloc();
  v0[38] = v20;
  *v20 = v0;
  v21 = OUTLINED_FUNCTION_6_5(v20);

  return MEMORY[0x282200310](v21);
}

{
  OUTLINED_FUNCTION_63();
  v3 = v2;
  v4 = *(v2 + 304);
  v5 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v6 = v5;
  *(v3 + 312) = v0;

  if (v0)
  {
    v7 = *(v3 + 296);

    v8 = AssetDeliveryProcessor.computeAssetDeliveryStates(dateSinceLastProcessed:useCases:);
  }

  else
  {
    v8 = AssetDeliveryProcessor.computeAssetDeliveryStates(dateSinceLastProcessed:useCases:);
  }

  return MEMORY[0x2822009F8](v8, 0, 0);
}

{
  v107 = v0;
  v1 = v0[30];
  if (__swift_getEnumTagSinglePayload(v1, 1, v0[27]) == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v2 = v0[32];
    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logging.general);

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[35];
    v8 = v0[36];
    if (v6)
    {
      v9 = v0[32];
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v106 = v11;
      *v10 = 136315138;
      AssetDeliveryState.debugDescription.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v106);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_227F43000, v4, v5, "computeAssetDeliveryStates calculated state: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x22AAAF0A0](v11, -1, -1);
      MEMORY[0x22AAAF0A0](v10, -1, -1);
    }

    _sxRi_zRi0_zlySay36AppleIntelligenceReportingProcessing18AssetDeliveryStateCGIsegr_SgWOe(v7);
    v16 = v0[30];
    v15 = v0[31];
    v18 = v0[28];
    v17 = v0[29];
    v19 = v0[26];
    v21 = v0[22];
    v20 = v0[23];
    v22 = v0[21];

    v23 = v0[1];
    v24 = v0[37];
    v25 = v0[32];
    OUTLINED_FUNCTION_32_0();

    __asm { BRAA            X3, X16 }
  }

  v28 = v0[32];
  v30 = v0[28];
  v29 = v0[29];
  outlined init with take of AppleIntelligenceBiomeEvent(v1, v29, type metadata accessor for AppleIntelligenceBiomeEvent);
  (*(*v28 + 376))(v29);
  outlined init with copy of AppleIntelligenceBiomeEvent(v29, v30);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v38 = v0[28];
    outlined destroy of AppleIntelligenceBiomeEvent(v0[29], type metadata accessor for AppleIntelligenceBiomeEvent);
    v39 = v38;
LABEL_13:
    outlined destroy of AppleIntelligenceBiomeEvent(v39, type metadata accessor for AppleIntelligenceBiomeEvent);
LABEL_17:
    v45 = *(v0 + 18);
    v46 = v0[34];
    v47 = v0[35];
    v48 = v0[33];
    goto LABEL_18;
  }

  v31 = v0[22];
  (*(v0[25] + 32))(v0[26], v0[28], v0[24]);
  AppleIntelligenceReportingAvailabilityLog.event.getter();
  v32 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  if (__swift_getEnumTagSinglePayload(v31, 1, v32) == 1)
  {
    v33 = v0[29];
    v34 = v0[22];
    (*(v0[25] + 8))(v0[26], v0[24]);
    OUTLINED_FUNCTION_1_5();
    outlined destroy of AppleIntelligenceBiomeEvent(v33, v35);
    v36 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd;
    v37 = &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR;
LABEL_16:
    outlined destroy of NSObject?(v34, v36, v37);
    goto LABEL_17;
  }

  v40 = v0[22];
  v41 = v0[23];
  AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
  (*(*(v32 - 8) + 8))(v40, v32);
  v42 = type metadata accessor for AppleIntelligenceReportingUseCase();
  if (__swift_getEnumTagSinglePayload(v41, 1, v42) == 1)
  {
    v43 = v0[29];
    v34 = v0[23];
    (*(v0[25] + 8))(v0[26], v0[24]);
    OUTLINED_FUNCTION_1_5();
    outlined destroy of AppleIntelligenceBiomeEvent(v43, v44);
    v36 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd;
    v37 = &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR;
    goto LABEL_16;
  }

  v53 = v0[23];
  v54 = AppleIntelligenceReportingUseCase.useCaseIdentifier.getter();
  v56 = v55;
  (*(*(v42 - 8) + 8))(v53, v42);
  if (!v56)
  {
    v61 = v0[29];
    (*(v0[25] + 8))(v0[26], v0[24]);
LABEL_31:
    v39 = v61;
    goto LABEL_13;
  }

  v57 = v0[39];
  v58 = v0[17];
  v0[12] = v54;
  v0[13] = v56;
  v59 = swift_task_alloc();
  *(v59 + 16) = v0 + 12;
  v60 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v59, v58);

  v61 = v0[29];
  v62 = v0[26];
  if (!v60)
  {
    v76 = v0[24];
    v77 = v0[25];

    (*(v77 + 8))(v62, v76);
    goto LABEL_31;
  }

  v63 = v0[20];
  v64 = v0[21];
  v65 = v0[19];
  v66 = v0[16];
  v67 = v0[26];
  statusInteger(from:)();
  v69 = v68;
  v71 = v70;
  AppleIntelligenceBiomeEvent.writeTimestamp.getter(v64);
  v72 = static Date.> infix(_:_:)();
  (*(v63 + 8))(v64, v65);
  v105 = v69;
  v104 = v71;
  if ((v72 & 1) == 0)
  {
    goto LABEL_34;
  }

  if (!*(v0[36] + 16))
  {
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_31_0();
  v73 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v74 & 1) == 0)
  {
    goto LABEL_34;
  }

  v75 = *(v0[36] + 56) + 16 * v73;
  if (*(v75 + 8))
  {
    if ((v71 & 1) == 0)
    {
      goto LABEL_36;
    }

LABEL_34:
    v103 = v0[37];
    v46 = v0[34];
    v47 = v0[35];
LABEL_35:
    v78 = v0[33];
    v79 = v0[29];
    v80 = v0[25];
    v81 = v0[26];
    v82 = v0[24];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v106 = v78;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v105, v104 & 1, v54, v56, isUniquelyReferenced_nonNull_native);

    (*(v80 + 8))(v81, v82);
    OUTLINED_FUNCTION_1_5();
    outlined destroy of AppleIntelligenceBiomeEvent(v79, v84);
    v48 = v78;
    *&v45 = v78;
    *(&v45 + 1) = v103;
LABEL_18:
    *(v0 + 18) = v45;
    v0[34] = v46;
    v0[35] = v47;
    v0[33] = v48;
    v49 = v0[6];
    __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
    v50 = *(MEMORY[0x277D856D8] + 4);
    v51 = swift_task_alloc();
    v0[38] = v51;
    *v51 = v0;
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_32_0();

    return MEMORY[0x282200310]();
  }

  if ((v71 & 1) == 0 && *v75 == v69)
  {
    goto LABEL_34;
  }

LABEL_36:
  v86 = v0[34];
  v85 = v0[35];
  v87 = v0[32];
  OUTLINED_FUNCTION_1_2();
  (*(v88 + 368))();
  _sxRi_zRi0_zlySay36AppleIntelligenceReportingProcessing18AssetDeliveryStateCGIsegr_SgWOe(v85);
  v89 = swift_isUniquelyReferenced_nonNull_native();
  v0[15] = v86;
  OUTLINED_FUNCTION_31_0();
  v90 = specialized __RawDictionaryStorage.find<A>(_:)();
  v92 = *(v86 + 16);
  v93 = (v91 & 1) == 0;
  v94 = v92 + v93;
  if (__OFADD__(v92, v93))
  {
    __break(1u);
    return MEMORY[0x282200310]();
  }

  v95 = v90;
  v96 = v91;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSay36AppleIntelligenceReportingProcessing18AssetDeliveryStateCGGMd, &_ss17_NativeDictionaryVySSSay36AppleIntelligenceReportingProcessing18AssetDeliveryStateCGGMR);
  v97 = _NativeDictionary.ensureUnique(isUnique:capacity:)(v89, v94);
  v46 = v0[15];
  if (!v97)
  {
    goto LABEL_43;
  }

  OUTLINED_FUNCTION_31_0();
  v98 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v96 & 1) == (v99 & 1))
  {
    v95 = v98;
LABEL_43:
    if ((v96 & 1) == 0)
    {
      specialized _NativeDictionary._insert(at:key:value:)(v95, v54, v56, MEMORY[0x277D84F90], v46);
    }

    v102 = (v46[7] + 8 * v95);
    MEMORY[0x22AAAE0D0]();
    specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(*((*v102 & 0xFFFFFFFFFFFFFF8) + 0x10));
    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v47 = specialized thunk for @callee_guaranteed () -> (@owned [AssetDeliveryState]);
    v103 = v46;
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_32_0();

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

{
  v1 = v0[35];
  v2 = v0[36];
  v4 = v0[31];
  v3 = v0[32];
  v6 = v0[29];
  v5 = v0[30];
  v7 = v0[28];
  v8 = v0[26];
  v10 = v0[22];
  v9 = v0[23];
  v13 = v0[21];

  v14 = v0[14];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);

  _sxRi_zRi0_zlySay36AppleIntelligenceReportingProcessing18AssetDeliveryStateCGIsegr_SgWOe(v1);

  v11 = v0[1];

  return v11();
}

uint64_t AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  OUTLINED_FUNCTION_1_2();
  v7 = *(v6 + 104);
  v13 = v7 + *v7;
  v8 = v7[1];
  v9 = swift_task_alloc();
  v5[7] = v9;
  *v9 = v5;
  v10 = OUTLINED_FUNCTION_18_1(v9);

  return v11(v10);
}

uint64_t AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_63();
  v7 = v6;
  v8 = v6[7];
  v9 = *v3;
  OUTLINED_FUNCTION_18_0();
  *v10 = v9;
  v7[8] = v2;

  if (v2)
  {
    v11 = *(v9 + 8);

    return v11();
  }

  else
  {
    v7[9] = a2;
    v7[10] = a1;

    return MEMORY[0x2822009F8](AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:), 0, 0);
  }
}

uint64_t AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:)()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 64);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventVG_SayAA0e6ChangeH0VGtMd, &_sSay36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventVG_SayAA0e6ChangeH0VGtMR);
  v10 = *(v0 + 40);
  *(v0 + 16) = Dictionary.init(dictionaryLiteral:)();
  v6 = swift_task_alloc();
  *(v6 + 16) = v2;
  *(v6 + 24) = vextq_s8(v10, v10, 8uLL);
  *(v6 + 40) = v1;
  *(v6 + 48) = v0 + 16;
  *(v6 + 56) = v5;
  specialized Sequence.forEach(_:)(partial apply for closure #1 in AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:), v6, v4);

  v7 = *(v0 + 16);
  v8 = *(v0 + 8);

  return v8(v7);
}

void closure #1 in AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:)(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t *a6, uint64_t a7)
{
  v135 = a7;
  v136 = a6;
  v129 = a5;
  v148 = a4;
  v139 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x28223BE20](v9 - 8);
  v132 = &v117 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v122 = (&v117 - v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = *(*(v14 - 8) + 64);
  v16 = MEMORY[0x28223BE20](v14 - 8);
  v18 = &v117 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v128 = &v117 - v19;
  v20 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  v21 = *(v20 - 8);
  v137 = v20;
  v138 = v21;
  v22 = *(v21 + 64);
  v23 = MEMORY[0x28223BE20](v20);
  v140 = &v117 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v133 = &v117 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v130 = &v117 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v117 - v29;
  v142 = type metadata accessor for AssetDeliveryStateReader();
  v31 = *(*(v142 - 8) + 64);
  v32 = MEMORY[0x28223BE20](v142);
  v141 = &v117 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v117 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v39 = (&v117 - v38);
  MEMORY[0x28223BE20](v37);
  v41 = &v117 - v40;
  v43 = *a1;
  v42 = a1[1];
  v134 = a3;
  outlined init with copy of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(a3 + 56, v147);
  v44 = specialized Dictionary.subscript.getter(v43, v42, v148);
  if (v44)
  {
    v45 = v44;
  }

  else
  {
    v45 = MEMORY[0x277D84F90];
  }

  *v39 = v43;
  v39[1] = v42;
  v46 = v139;
  v39[2] = v139;

  v126 = v30;
  v143 = v43;
  v148 = v42;
  v47 = v46;
  v48 = v131;
  static AssetDeliveryStateReader.fetchAvailabilityEvent(desiredUseCaseIdentifier:state:)(v43, v42, v47);
  v49 = v48;
  if (!v48)
  {
    v121 = v45;
    v127 = v36;
    v119 = v41;
    v55 = *(v142 + 24);
    v57 = v137;
    v56 = v138;
    v58 = v126;
    v125 = *(v138 + 32);
    v126 = (v138 + 32);
    v125(v39 + v55, v58, v137);
    v123 = *(v56 + 16);
    v124 = v56 + 16;
    v123(v130, v39 + v55, v57);
    v59 = v122;
    AppleIntelligenceReportingAvailabilityLog.event.getter();
    v60 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v59, 1, v60);
    v131 = v60;
    if (EnumTagSinglePayload == 1)
    {
      outlined destroy of NSObject?(v59, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
      v62 = type metadata accessor for Date();
      v63 = v128;
      __swift_storeEnumTagSinglePayload(v128, 1, 1, v62);
    }

    else
    {
      v63 = v128;
      AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
      (*(*(v60 - 8) + 8))(v59, v60);
    }

    v67 = v148;
    v68 = v130;
    static AssetDeliveryStateReader.fetchSubscriptionEventsForCurrentSubscription(desiredUseCaseIdentifier:availabilityEvent:state:eventTimestamp:)(v143, v148, v130, v139, v63, v64, v65, v66, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
    v70 = v69;
    outlined destroy of NSObject?(v63, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    v71 = *(v138 + 8);
    v138 += 8;
    v122 = v71;
    (v71)(v68, v57);
    v72 = v142;
    v73 = v39 + *(v142 + 28);
    specialized Collection.first.getter(v70);
    specialized BidirectionalCollection.last.getter(v70, v39 + v72[8]);

    outlined init with take of UnifiedAssetFrameworkReporting(v147, v39 + v72[9]);
    *(v39 + v72[10]) = v121;
    outlined init with take of AppleIntelligenceBiomeEvent(v39, v119, type metadata accessor for AssetDeliveryStateReader);
    v74 = specialized Dictionary.subscript.getter(v143, v67, v129);
    v75 = MEMORY[0x277D84F90];
    if (v74)
    {
      v76 = v74;
    }

    else
    {
      v76 = MEMORY[0x277D84F90];
    }

    v77 = specialized Array._getCount()(v76);
    v78 = 0;
    v129 = v76 & 0xC000000000000001;
    v130 = v77;
    v120 = v131 - 8;
    v118 = v75;
    v79 = v136;
    v128 = v76;
    while (1)
    {
      v80 = v135;
      if (v130 == v78)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventVGMd, &_ss23_ContiguousArrayStorageCy36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventVGMR);
        v113 = swift_allocObject();
        *(v113 + 16) = xmmword_227FB2070;
        v114 = v119;
        AssetDeliveryStateReader.computeDetailedStatusCAEvent(now:)(v80, v113 + 32);
        v115 = *v79;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v147[0] = *v79;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v113, v118, v143, v148, isUniquelyReferenced_nonNull_native);
        *v79 = v147[0];
        outlined destroy of AppleIntelligenceBiomeEvent(v114, type metadata accessor for AssetDeliveryStateReader);
        return;
      }

      v81 = v129;
      specialized Array._checkSubscript(_:wasNativeTypeChecked:)(v78, v129 == 0, v76);
      if (v81)
      {
        v82 = MEMORY[0x22AAAE480](v78, v76);
      }

      else
      {
        v82 = *(v76 + 8 * v78 + 32);
      }

      v83 = v133;
      if (__OFADD__(v78, 1))
      {
        break;
      }

      v121 = v78 + 1;
      outlined init with copy of any Publisher<Self.Publisher.Failure == Error, Self.Publisher.Output == AppleIntelligenceBiomeEvent>(v134 + 56, v146);
      v84 = v143;
      v85 = v141;
      v86 = v148;
      *v141 = v143;
      *(v85 + 1) = v86;
      *(v85 + 2) = v82;
      swift_retain_n();

      static AssetDeliveryStateReader.fetchAvailabilityEvent(desiredUseCaseIdentifier:state:)(v84, v86, v82);
      v139 = 0;
      v87 = v18;
      v88 = v83;
      v89 = *(v142 + 24);
      v125(&v85[v89], v88, v57);
      v123(v140, &v85[v89], v57);
      v90 = v132;
      AppleIntelligenceReportingAvailabilityLog.event.getter();
      v91 = v90;
      v92 = v131;
      if (__swift_getEnumTagSinglePayload(v90, 1, v131) == 1)
      {
        outlined destroy of NSObject?(v90, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
        v93 = type metadata accessor for Date();
        v18 = v87;
        __swift_storeEnumTagSinglePayload(v87, 1, 1, v93);
      }

      else
      {
        v18 = v87;
        AppleIntelligenceReportingAssetDeliveryEvent.date.getter();
        (*(*(v92 - 8) + 8))(v91, v92);
      }

      v97 = v140;
      static AssetDeliveryStateReader.fetchSubscriptionEventsForCurrentSubscription(desiredUseCaseIdentifier:availabilityEvent:state:eventTimestamp:)(v143, v148, v140, v82, v18, v94, v95, v96, v117, v118, v119, v120, v121, v122, v123, v124, v125, v126, v127, v128);
      v99 = v98;

      outlined destroy of NSObject?(v18, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      v100 = v97;
      v57 = v137;
      (v122)(v100, v137);
      v102 = v141;
      v101 = v142;
      v103 = &v141[*(v142 + 28)];
      specialized Collection.first.getter(v99);
      specialized BidirectionalCollection.last.getter(v99, v102 + v101[8]);

      outlined init with take of UnifiedAssetFrameworkReporting(v146, v102 + v101[9]);
      *(v102 + v101[10]) = MEMORY[0x277D84F90];
      v104 = v127;
      outlined init with take of AppleIntelligenceBiomeEvent(v102, v127, type metadata accessor for AssetDeliveryStateReader);
      v105 = v139;
      AssetDeliveryStateReader.computeStatusChangeCAEvent()(v147);
      v49 = v105;
      if (v105)
      {

        outlined destroy of AppleIntelligenceBiomeEvent(v104, type metadata accessor for AssetDeliveryStateReader);
        outlined destroy of AppleIntelligenceBiomeEvent(v119, type metadata accessor for AssetDeliveryStateReader);
        goto LABEL_6;
      }

      outlined destroy of AppleIntelligenceBiomeEvent(v104, type metadata accessor for AssetDeliveryStateReader);

      memcpy(v146, v147, 0xE5uLL);
      v106 = _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventVSgWOg(v146) == 1;
      v76 = v128;
      if (v106)
      {
        memcpy(v145, v147, 0xE5uLL);
        outlined destroy of NSObject?(v145, &_s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventVSgMd, &_s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventVSgMR);
        ++v78;
        v79 = v136;
      }

      else
      {
        memcpy(v145, v147, 0xE5uLL);
        v107 = swift_isUniquelyReferenced_nonNull_native();
        v79 = v136;
        if ((v107 & 1) == 0)
        {
          v110 = *(v118 + 16);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v118 = v111;
        }

        v108 = *(v118 + 16);
        if (v108 >= *(v118 + 24) >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
          v118 = v112;
        }

        memcpy(v144, v145, sizeof(v144));
        v109 = v118;
        *(v118 + 16) = v108 + 1;
        memcpy((v109 + 232 * v108 + 32), v144, 0xE5uLL);
        v78 = v121;
      }
    }

    __break(1u);
    goto LABEL_37;
  }

  __swift_destroy_boxed_opaque_existential_0Tm(v147);

LABEL_6:

  if (one-time initialization token for general != -1)
  {
LABEL_37:
    swift_once();
  }

  v50 = type metadata accessor for Logger();
  __swift_project_value_buffer(v50, static Logging.general);

  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v147[0] = v54;
    *v53 = 136315138;
    *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v148, v147);
    _os_log_impl(&dword_227F43000, v51, v52, "Failed to process events for %s", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v54);
    MEMORY[0x22AAAF0A0](v54, -1, -1);
    MEMORY[0x22AAAF0A0](v53, -1, -1);
  }
}

uint64_t AssetDeliveryProcessor.deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  return v0;
}

uint64_t AssetDeliveryProcessor.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));

  return MEMORY[0x2821FE8D8](v0, 96, 7);
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

BOOL specialized Sequence.contains(where:)(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = *(a3 + 16);
  do
  {
    v8 = v6;
    if (v7 == v6)
    {
      break;
    }

    v9 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
    OUTLINED_FUNCTION_44(v9);
    v12 = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v11 + 72) * v8);
    if (v3)
    {
      break;
    }

    v6 = v8 + 1;
  }

  while ((v12 & 1) == 0);
  return v7 != v8;
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t a1)
{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

{
  return specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(a1, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result)
{
  v2 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x18);
  if (result + 1 > (v2 >> 1))
  {
    return MEMORY[0x2821FC280](v2 > 1);
  }

  return result;
}

uint64_t specialized Array._reserveCapacityAssumingUniqueBuffer(oldCount:)(uint64_t result, uint64_t (*a2)(BOOL))
{
  v3 = *(*v2 + 24);
  if (result + 1 > (v3 >> 1))
  {
    result = a2(v3 > 1);
    *v2 = result;
  }

  return result;
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x22AAAE610);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void specialized __RawDictionaryStorage.find<A>(_:)()
{
  OUTLINED_FUNCTION_8_6();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0]);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_20_0();
}

{
  OUTLINED_FUNCTION_8_6();
  type metadata accessor for AppleIntelligenceReportingUseCase();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AppleIntelligenceReportingUseCase and conformance AppleIntelligenceReportingUseCase, MEMORY[0x277D1F520]);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_20_0();
}

{
  OUTLINED_FUNCTION_8_6();
  type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet and conformance AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet, MEMORY[0x277D1F578]);
  OUTLINED_FUNCTION_21_1();
  OUTLINED_FUNCTION_20_0();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  OUTLINED_FUNCTION_22_2();
  OUTLINED_FUNCTION_24_2();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v0, v2);
}

{
  OUTLINED_FUNCTION_22_2();
  if (v0)
  {
    Hasher._combine(_:)(1u);
    OUTLINED_FUNCTION_24_2();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v0, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 36);
  String.hash(into:)();
  String.hash(into:)();
  if (v9 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v8);
  }

  v10 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v10);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a3 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v9 = ~v5;
    v10 = *(v3 + 48);
    do
    {
      v11 = (v10 + 16 * v6);
      v12 = v11[1];
      if (v12)
      {
        if (a2)
        {
          v13 = *v11 == a1 && v12 == a2;
          if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            return v6;
          }
        }
      }

      else if (!a2)
      {
        return v6;
      }

      v6 = (v6 + 1) & v9;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

void specialized __RawDictionaryStorage.find<A>(_:hashValue:)()
{
  OUTLINED_FUNCTION_18();
  v22 = v1;
  v23 = v2;
  v21 = v3;
  v5 = v4;
  v19 = v6;
  v8 = v7(0);
  v9 = OUTLINED_FUNCTION_0(v8);
  v11 = v10;
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v9);
  v15 = &v19 - v14;
  v24 = v0 + 64;
  v20 = v0;
  v16 = ~(-1 << *(v0 + 32));
  for (i = v5 & v16; ((1 << i) & *(v24 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v16)
  {
    (*(v11 + 16))(v15, *(v20 + 48) + *(v11 + 72) * i, v8);
    lazy protocol witness table accessor for type UUID and conformance UUID(v21, v22);
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v11 + 8))(v15, v8);
    if (v18)
    {
      break;
    }
  }

  OUTLINED_FUNCTION_19();
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v22 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v19 = *(a1 + 8);
    v20 = *(a1 + 36);
    v6 = *a1;
    v5 = a1[1];
    v7 = a1[2];
    v8 = a1[3];
    v9 = *(v2 + 48);
    do
    {
      v10 = v9 + 40 * v4;
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      v13 = *(v10 + 32);
      v14 = *(v10 + 36);
      v15 = *v10 == v6 && *(v10 + 8) == v5;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        v16 = v11 == v7 && v12 == v8;
        if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          if (v14)
          {
            if (v20)
            {
              return v4;
            }
          }

          else
          {
            v17 = v20;
            if (v13 != v19)
            {
              v17 = 1;
            }

            if ((v17 & 1) == 0)
            {
              return v4;
            }
          }
        }
      }

      v4 = (v4 + 1) & v21;
    }

    while (((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for InvocationStepMetadata.Partial(0);
  result = outlined init with take of AppleIntelligenceBiomeEvent(a3, v10 + *(*(v11 - 8) + 72) * a1, type metadata accessor for InvocationStepMetadata.Partial);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for AppleIntelligenceReportingUseCase();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a3, v11);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 32);
  v12 = *(v10 + 72) * a1;
  v11(v8 + v12, a2, v9);
  result = (v11)(a4[7] + v12, a3, v9);
  v14 = a4[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v16;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  v4 = a4[6] + 40 * result;
  v5 = *(a2 + 16);
  *v4 = *a2;
  *(v4 + 16) = v5;
  *(v4 + 29) = *(a2 + 29);
  *(a4[7] + 8 * result) = a3;
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = a6[7] + 16 * result;
  *v7 = a4;
  *(v7 + 8) = a5 & 1;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = outlined init with take of Any(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_5();
  v2 = type metadata accessor for UUID();
  v3 = OUTLINED_FUNCTION_0(v2);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_2_6();
  specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_7(v6, v7);
  if (v8)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDV36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDV36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVGMR);
  if (OUTLINED_FUNCTION_4_5())
  {
    v9 = *v0;
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_11_4();
    if (!v10)
    {
      goto LABEL_11;
    }
  }

  if (v1)
  {
    v11 = *(*v0 + 56);
    v12 = type metadata accessor for InvocationStepMetadata.Partial(0);
    OUTLINED_FUNCTION_13(v12);
    v14 = *(v13 + 72);
    OUTLINED_FUNCTION_19();

    outlined assign with take of InvocationStepMetadata.Partial(v15, v16);
  }

  else
  {
    v18 = OUTLINED_FUNCTION_12_5();
    v19(v18);
    v20 = OUTLINED_FUNCTION_5_6();
    specialized _NativeDictionary._insert(at:key:value:)(v20, v21, v22, v23);
    OUTLINED_FUNCTION_19();
  }
}

{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_5();
  v4 = type metadata accessor for AppleIntelligenceReportingUseCase();
  v5 = OUTLINED_FUNCTION_0(v4);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_2_6();
  specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_7(v8, v9);
  if (v10)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy27IntelligencePlatformLibrary05AppleC16ReportingUseCaseV0fcG10Processing18AssetDeliveryStateC11AccumulatorCy_AC0fcG15ModelCatalogLogVGGMd, &_ss17_NativeDictionaryVy27IntelligencePlatformLibrary05AppleC16ReportingUseCaseV0fcG10Processing18AssetDeliveryStateC11AccumulatorCy_AC0fcG15ModelCatalogLogVGGMR);
  if (OUTLINED_FUNCTION_4_5())
  {
    v11 = *v1;
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_11_4();
    if (!v13)
    {
      goto LABEL_12;
    }

    v2 = v12;
  }

  if (v3)
  {
    v14 = *(*v1 + 56);
    v15 = *(v14 + 8 * v2);
    *(v14 + 8 * v2) = v0;
    OUTLINED_FUNCTION_19();
  }

  else
  {
    v17 = OUTLINED_FUNCTION_12_5();
    v18(v17);
    v19 = OUTLINED_FUNCTION_5_6();
    specialized _NativeDictionary._insert(at:key:value:)(v19, v20, v21, v22);
    OUTLINED_FUNCTION_19();
  }
}

{
  v2 = OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_0_7(v2, v3);
  if (v6)
  {
    __break(1u);
LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSo8NSObjectCGMd, &_ss17_NativeDictionaryVySSSo8NSObjectCGMR);
  if (OUTLINED_FUNCTION_4_5())
  {
    OUTLINED_FUNCTION_29_0();
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_10_4();
    if (!v10)
    {
      goto LABEL_14;
    }

    v7 = v9;
  }

  if (v8)
  {
    v11 = *(*v1 + 56);
    v12 = *(v11 + 8 * v7);
    *(v11 + 8 * v7) = v0;
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_25_2();
    specialized _NativeDictionary._insert(at:key:value:)(v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_33_0();
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)()
{
  v2 = OUTLINED_FUNCTION_14_3();
  OUTLINED_FUNCTION_0_7(v2, v3);
  if (v6)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v7 = v4;
  v8 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSay27IntelligencePlatformLibrary05AppleC24ReportingAvailabilityLogVGGMd, &_ss17_NativeDictionaryVySSSay27IntelligencePlatformLibrary05AppleC24ReportingAvailabilityLogVGGMR);
  if (OUTLINED_FUNCTION_4_5())
  {
    OUTLINED_FUNCTION_29_0();
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_10_4();
    if (!v10)
    {
      goto LABEL_14;
    }

    v7 = v9;
  }

  if (v8)
  {
    v11 = *(*v1 + 56);
    v12 = *(v11 + 8 * v7);
    *(v11 + 8 * v7) = v0;
    OUTLINED_FUNCTION_33_0();
  }

  else
  {
    v15 = OUTLINED_FUNCTION_25_2();
    specialized _NativeDictionary._insert(at:key:value:)(v15, v16, v17, v18, v19);
    OUTLINED_FUNCTION_33_0();
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_7_5();
  v15 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  v16 = OUTLINED_FUNCTION_0(v15);
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_2_6();
  specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_7(v19, v20);
  if (v21)
  {
    __break(1u);
LABEL_12:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy27IntelligencePlatformLibrary05AppleC23ReportingMobileAssetLogV0hiI3SetVAEGMd, &_ss17_NativeDictionaryVy27IntelligencePlatformLibrary05AppleC23ReportingMobileAssetLogV0hiI3SetVAEGMR);
  if (OUTLINED_FUNCTION_4_5())
  {
    v22 = *v12;
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_11_4();
    if (!v24)
    {
      goto LABEL_12;
    }

    v13 = v23;
  }

  if (v14)
  {
    v25 = *(*v12 + 56);
    v26 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
    OUTLINED_FUNCTION_4(v26);
    v28 = *(v27 + 40);
    v29 = v25 + *(v27 + 72) * v13;
    OUTLINED_FUNCTION_19();

    v33(v30, v31, v32, v33, v34, v35, v36, v37, a9, a10, a11, a12);
  }

  else
  {
    v38 = OUTLINED_FUNCTION_12_5();
    v39(v38);
    v40 = OUTLINED_FUNCTION_5_6();
    specialized _NativeDictionary._insert(at:key:value:)(v40, v41, v42, v43);
    OUTLINED_FUNCTION_19();
  }
}

{
  OUTLINED_FUNCTION_18();
  v14 = type metadata accessor for UUID();
  v15 = OUTLINED_FUNCTION_0(v14);
  v41 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_2_6();
  specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_7(v19, v20);
  if (v21)
  {
    __break(1u);
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  OUTLINED_FUNCTION_28_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVAEGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVAEGMR);
  if (OUTLINED_FUNCTION_4_5())
  {
    OUTLINED_FUNCTION_29_0();
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_11_4();
    if (!v22)
    {
      goto LABEL_11;
    }
  }

  v23 = *v12;
  if (v13)
  {
    v24 = v41[5];
    v25 = *(v23 + 56);
    v26 = v41[9];
    OUTLINED_FUNCTION_19();

    v30(v27, v28, v29, v30, v31, v32, v33, v34, a9, a10, a11, a12);
  }

  else
  {
    v35 = v41[2];
    OUTLINED_FUNCTION_24_2();
    v36();
    v37 = OUTLINED_FUNCTION_5_6();
    specialized _NativeDictionary._insert(at:key:value:)(v37, v38, v39, v40);
    OUTLINED_FUNCTION_19();
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  OUTLINED_FUNCTION_0_7(v9, v10);
  if (v13)
  {
    __break(1u);
LABEL_12:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v11;
  v15 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy36AppleIntelligenceReportingProcessing15SubscriptionKeyVAC18AssetDeliveryStateC11AccumulatorCy_0D15PlatformLibrary0cde7UnifiedI12FrameworkLogVGGMd, &_ss17_NativeDictionaryVy36AppleIntelligenceReportingProcessing15SubscriptionKeyVAC18AssetDeliveryStateC11AccumulatorCy_0D15PlatformLibrary0cde7UnifiedI12FrameworkLogVGGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v8))
  {
    v16 = *v4;
    specialized __RawDictionaryStorage.find<A>(_:)(a2);
    OUTLINED_FUNCTION_10_4();
    if (!v18)
    {
      goto LABEL_12;
    }

    v14 = v17;
  }

  if (v15)
  {
    v19 = *(*v4 + 56);
    v20 = *(v19 + 8 * v14);
    *(v19 + 8 * v14) = a1;
  }

  else
  {
    v22 = OUTLINED_FUNCTION_31_0();
    specialized _NativeDictionary._insert(at:key:value:)(v22, v23, a1, v24);
    return outlined init with copy of SubscriptionKey(a2, v25);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v13;
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSs6UInt64VSgGMd, &_ss17_NativeDictionaryVySSs6UInt64VSgGMR);
  result = _NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v17);
  if ((result & 1) == 0)
  {
    goto LABEL_5;
  }

  v21 = *v6;
  result = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_11:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = result;
LABEL_5:
  v23 = *v6;
  if (v19)
  {
    v24 = v23[7] + 16 * v18;
    *v24 = a1;
    *(v24 + 8) = a2 & 1;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v18, a3, a4, a1, a2 & 1, v23);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)();
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v13;
  v19 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSSay36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventVG_SayAC0g6ChangeJ0VGtGMd, &_ss17_NativeDictionaryVySSSay36AppleIntelligenceReportingProcessing31AvailabilityDetailedStatusEventVG_SayAC0g6ChangeJ0VGtGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a5 & 1, v17))
  {
    goto LABEL_5;
  }

  v20 = *v6;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v19 & 1) != (v22 & 1))
  {
LABEL_13:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v18 = v21;
LABEL_5:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v18);
    v26 = *v24;
    v25 = v24[1];
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v18, a3, a4, a1, a2, v23);
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_0_7(v5, v6);
  if (v9)
  {
    __break(1u);
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySSypGMd, &_ss17_NativeDictionaryVySSypGMR);
  if (OUTLINED_FUNCTION_4_5())
  {
    OUTLINED_FUNCTION_29_0();
    specialized __RawDictionaryStorage.find<A>(_:)();
    OUTLINED_FUNCTION_10_4();
    if (!v13)
    {
      goto LABEL_14;
    }

    v10 = v12;
  }

  if (v11)
  {
    __swift_destroy_boxed_opaque_existential_0Tm((*(*v2 + 56) + 32 * v10));
    OUTLINED_FUNCTION_33_0();

    return outlined init with take of Any(v14, v15);
  }

  else
  {
    OUTLINED_FUNCTION_24_2();
    specialized _NativeDictionary._insert(at:key:value:)(v18, v19, v20, a1, v21);
    OUTLINED_FUNCTION_33_0();
  }
}

uint64_t *specialized AssetDeliveryProcessor.__allocating_init(biomeReader:unifiedAssetFrameworkReporter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](a1);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AssetDeliveryProcessor();
  v13 = swift_allocObject();
  (*(v9 + 16))(v12, a1, a4);
  v14 = specialized AssetDeliveryProcessor.init(biomeReader:unifiedAssetFrameworkReporter:)(v12, a2, v13, a4, a5);
  (*(v9 + 8))(a1, a4);
  return v14;
}

uint64_t *specialized AssetDeliveryProcessor.init(biomeReader:unifiedAssetFrameworkReporter:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  a3[5] = a4;
  a3[6] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3 + 2);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a1, a4);
  outlined init with take of UnifiedAssetFrameworkReporting(a2, a3 + 7);
  return a3;
}

uint64_t _sxRi_zRi0_zlySay36AppleIntelligenceReportingProcessing18AssetDeliveryStateCGIsegr_SgWOe(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t dispatch thunk of AssetDeliveryProcessor.computeAssetDeliveryStates(dateSinceLastProcessed:useCases:)()
{
  OUTLINED_FUNCTION_1_2();
  v2 = *(v1 + 104);
  v8 = v2 + *v2;
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v0 + 16) = v4;
  *v4 = v0;
  v5 = OUTLINED_FUNCTION_18_1(v4);

  return v6(v5);
}

uint64_t dispatch thunk of AssetDeliveryProcessor.computeAssetDeliveryStates(dateSinceLastProcessed:useCases:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_63();
  v6 = *(v5 + 16);
  v7 = *v2;
  OUTLINED_FUNCTION_18_0();
  *v8 = v7;

  v9 = *(v7 + 8);

  return v9(a1, a2);
}

uint64_t dispatch thunk of AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_1_2();
  v10 = *(v9 + 112);
  v14 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = dispatch thunk of AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:);

  return v14(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AssetDeliveryProcessor.computeTelemetryEvents(dateSinceLastProcessed:now:useCases:invocations:)(uint64_t a1)
{
  OUTLINED_FUNCTION_63();
  v4 = *(v3 + 16);
  v5 = *v1;
  OUTLINED_FUNCTION_18_0();
  *v6 = v5;

  v7 = *(v5 + 8);

  return v7(a1);
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t outlined assign with take of InvocationStepMetadata.Partial(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InvocationStepMetadata.Partial(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t outlined init with take of AppleIntelligenceBiomeEvent(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  OUTLINED_FUNCTION_4(v5);
  (*(v6 + 32))(a2, a1);
  return a2;
}

uint64_t outlined destroy of AppleIntelligenceBiomeEvent(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  OUTLINED_FUNCTION_4(v3);
  (*(v4 + 8))(a1);
  return a1;
}

uint64_t _s36AppleIntelligenceReportingProcessing23AvailabilityChangeEventVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 216);
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

BOOL OUTLINED_FUNCTION_4_5()
{

  return _NativeDictionary.ensureUnique(isUnique:capacity:)(v1 & 1, v0);
}

unint64_t OUTLINED_FUNCTION_14_3()
{
  v2 = *v0;

  return specialized __RawDictionaryStorage.find<A>(_:)();
}

void OUTLINED_FUNCTION_20_0()
{

  specialized __RawDictionaryStorage.find<A>(_:hashValue:)();
}

uint64_t OUTLINED_FUNCTION_21_1()
{

  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t OUTLINED_FUNCTION_22_2()
{
  v2 = *(v0 + 40);

  return Hasher.init(_seed:)();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v36 = a8;
  v45 = a1;
  v46 = a2;
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](a1);
  v47 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  v16 = *(v49 + 64);
  v17 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v19 = &v34 - v18;
  v20 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](v17);
  v43 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getAssociatedTypeWitness();
  v37 = *(v22 - 8);
  v38 = v22;
  v23 = *(v37 + 64);
  MEMORY[0x28223BE20](v22);
  v25 = &v34 - v24;
  v26 = dispatch thunk of Collection.count.getter();
  if (!v26)
  {
    return static Array._allocateUninitialized(_:)();
  }

  v48 = v26;
  v52 = ContiguousArray.init()();
  v39 = type metadata accessor for ContiguousArray();
  ContiguousArray.reserveCapacity(_:)(v48);
  result = dispatch thunk of Collection.startIndex.getter();
  if ((v48 & 0x8000000000000000) == 0)
  {
    v34 = v11;
    v35 = a5;
    v28 = 0;
    v40 = (v49 + 16);
    v41 = (v49 + 8);
    v42 = v8;
    while (!__OFADD__(v28, 1))
    {
      v49 = v28 + 1;
      v29 = dispatch thunk of Collection.subscript.read();
      v30 = v19;
      v31 = v19;
      v32 = AssociatedTypeWitness;
      (*v40)(v30);
      v29(v51, 0);
      v33 = v50;
      v45(v31, v47);
      if (v33)
      {
        (*v41)(v31, v32);
        (*(v37 + 8))(v25, v38);

        return (*(v34 + 32))(v36, v47, v35);
      }

      v50 = 0;
      (*v41)(v31, v32);
      ContiguousArray.append(_:)();
      result = dispatch thunk of Collection.formIndex(after:)();
      ++v28;
      v19 = v31;
      if (v49 == v48)
      {
        (*(v37 + 8))(v25, v38);
        return v52;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t AssetDeliveryState.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  AssetDeliveryState.init()();
  return v3;
}

uint64_t specialized Dictionary.subscript.getter@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(a1 + 56);
    v8 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_4(v8);
    (*(v9 + 16))(a2, v7 + *(v9 + 72) * v6, v8);
    OUTLINED_FUNCTION_39_0();
    v13 = v8;
  }

  else
  {
    type metadata accessor for UUID();
    OUTLINED_FUNCTION_23();
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = *(*(a2 + 56) + 8 * v3);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 8 * v4);
}

void AssetDeliveryState.debugDescription.getter()
{
  OUTLINED_FUNCTION_18();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMR);
  OUTLINED_FUNCTION_13(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_17_3(v5);
  v352 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance();
  v6 = OUTLINED_FUNCTION_0(v352);
  v350 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_7();
  v391 = v10;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMR);
  v14 = OUTLINED_FUNCTION_13(v13);
  v16 = *(v15 + 64);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_7();
  v386 = v17;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v19);
  v403 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector();
  v20 = OUTLINED_FUNCTION_0(v403);
  v395 = v21;
  v23 = *(v22 + 64);
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_38_0();
  v393 = v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetSgMR);
  v29 = OUTLINED_FUNCTION_13(v28);
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v37);
  v399 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
  v38 = OUTLINED_FUNCTION_0(v399);
  v356 = v39;
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_33_1(v43);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetSgMR);
  v45 = OUTLINED_FUNCTION_13(v44);
  v47 = *(v46 + 64);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_7();
  v381 = v48;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v49);
  OUTLINED_FUNCTION_38_0();
  v379 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  OUTLINED_FUNCTION_13(v51);
  v53 = *(v52 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_55_0();
  OUTLINED_FUNCTION_17_3(v55);
  v392 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  v56 = OUTLINED_FUNCTION_0(v392);
  v355 = v57;
  v59 = *(v58 + 64);
  MEMORY[0x28223BE20](v56);
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_9_0();
  MEMORY[0x28223BE20](v60);
  OUTLINED_FUNCTION_96();
  v387 = v61;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v62);
  OUTLINED_FUNCTION_38_0();
  OUTLINED_FUNCTION_17_3(v63);
  v400 = type metadata accessor for AppleIntelligenceReportingUseCase();
  v64 = OUTLINED_FUNCTION_0(v400);
  v362 = v65;
  v67 = *(v66 + 64);
  MEMORY[0x28223BE20](v64);
  OUTLINED_FUNCTION_2();
  v397 = v68;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetSgMR);
  v70 = OUTLINED_FUNCTION_13(v69);
  v72 = *(v71 + 64);
  MEMORY[0x28223BE20](v70);
  OUTLINED_FUNCTION_7();
  v384 = v73;
  OUTLINED_FUNCTION_10();
  MEMORY[0x28223BE20](v74);
  OUTLINED_FUNCTION_38_0();
  v377 = v75;
  OUTLINED_FUNCTION_12();
  v396 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  v76 = OUTLINED_FUNCTION_0(v396);
  v78 = v77;
  v80 = *(v79 + 64);
  MEMORY[0x28223BE20](v76);
  OUTLINED_FUNCTION_1_0();
  object = (v82 - v81);
  OUTLINED_FUNCTION_13_2();
  v406[0] = 0xD000000000000015;
  v406[1] = v84;
  OUTLINED_FUNCTION_1_2();
  v86 = (*(v85 + 152))();
  v87 = 0;
  v89 = v86 + 64;
  v88 = *(v86 + 64);
  v372 = v86;
  OUTLINED_FUNCTION_2_7(v86);
  v92 = v91 & v90;
  v94 = (v93 + 63) >> 6;
  v348 = v78;
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_13_2();
  v360 = v95;
  for (i = object; v92; object = i)
  {
    v96 = v396;
LABEL_8:
    v98 = __clz(__rbit64(v92)) | (v87 << 6);
    v99 = (*(v372 + 48) + 16 * v98);
    v100 = *v99;
    v101 = v99[1];
    v102 = *(*(v372 + 56) + 8 * v98);
    v103 = *(v102 + 16);
    if (v103)
    {
      (*(v348 + 16))(object, v102 + ((*(v348 + 80) + 32) & ~*(v348 + 80)) + *(v348 + 72) * (v103 - 1), v96);

      v105 = AppleIntelligenceReportingAvailabilityLog.json()();
      if (v104)
      {

        v106 = OUTLINED_FUNCTION_101_0();
        v107(v106);
        OUTLINED_FUNCTION_122_0();
      }

      else
      {
        countAndFlagsBits = v105._countAndFlagsBits;
        object = v105._object;
        v108 = OUTLINED_FUNCTION_101_0();
        v109(v108);
      }
    }

    else
    {

      OUTLINED_FUNCTION_122_0();
    }

    v92 &= v92 - 1;
    OUTLINED_FUNCTION_28_2();
    _StringGuts.grow(_:)(39);

    OUTLINED_FUNCTION_118();
    v404 = v110 + 1;
    v405 = v360;
    v111 = OUTLINED_FUNCTION_104_0();
    MEMORY[0x22AAAE070](v111);

    v112 = OUTLINED_FUNCTION_23_2();
    MEMORY[0x22AAAE070](v112 & 0xFFFFFFFFFFFFLL | 0x203A000000000000, 0xE800000000000000);
    MEMORY[0x22AAAE070](countAndFlagsBits, object);

    MEMORY[0x22AAAE070](10, 0xE100000000000000);
    MEMORY[0x22AAAE070](v404, v360);
  }

  v96 = v396;
  while (1)
  {
    v97 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      goto LABEL_131;
    }

    if (v97 >= v94)
    {
      break;
    }

    v92 = *(v89 + 8 * v97);
    ++v87;
    if (v92)
    {
      v87 = v97;
      goto LABEL_8;
    }
  }

  OUTLINED_FUNCTION_13_3();
  v114 = (*(v113 + 176))();
  v115 = 0;
  v116 = *(v114 + 64);
  v361 = v114;
  OUTLINED_FUNCTION_2_7(v114);
  v119 = v118 & v117;
  v121 = (v120 + 63) >> 6;
  OUTLINED_FUNCTION_13_2();
  v373 = v123;
  v368 = (v124 + 8);
  v370 = v122;
  if (!v119)
  {
    goto LABEL_17;
  }

  while (1)
  {
    v125 = v115;
LABEL_21:
    v126 = __clz(__rbit64(v119));
    v119 &= v119 - 1;
    v127 = v126 | (v125 << 6);
    (*(v362 + 16))(v397, *(v361 + 48) + *(v362 + 72) * v127, v400);
    v128 = *(*(v361 + 56) + 8 * v127);
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMR);
    v130 = *(v129 + 48);
    (*(v362 + 32))(v384, v397, v400);
    *(v384 + v130) = v128;
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v131, v132, v133, v129);

LABEL_22:
    outlined init with take of (key: AppleIntelligenceReportingUseCase, value: AssetDeliveryState.Accumulator<AppleIntelligenceReportingModelCatalogLog>)?();
    v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMR);
    v135 = OUTLINED_FUNCTION_70_0();
    OUTLINED_FUNCTION_34_0(v135, v136, v134);
    if (v137)
    {
      break;
    }

    v138 = *(v377 + *(v134 + 48));
    v139 = *(v362 + 32);
    v140 = OUTLINED_FUNCTION_85_0();
    v141(v140);
    AppleIntelligenceReportingUseCase.loggingDescription.getter();
    v143 = v142;
    v145 = v144;
    OUTLINED_FUNCTION_28_2();
    _StringGuts.grow(_:)(42);

    OUTLINED_FUNCTION_118();
    v404 = v146 + 2;
    v405 = v373;
    MEMORY[0x22AAAE070](v143, v145);

    OUTLINED_FUNCTION_69_0();
    v147 = (*(*v138 + 160))();
    OUTLINED_FUNCTION_133(v147);
    v148 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AAAE070](v148);

    OUTLINED_FUNCTION_23_2();
    OUTLINED_FUNCTION_116_0();
    MEMORY[0x22AAAE070](v404, v373);

    (*v368)(v397, v400);
    v122 = v370;
    if (!v119)
    {
LABEL_17:
      while (1)
      {
        v125 = v115 + 1;
        if (__OFADD__(v115, 1))
        {
          break;
        }

        if (v125 >= v121)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseV3key_0daE10Processing18AssetDeliveryStateC11AccumulatorCy_AA0daE15ModelCatalogLogVG5valuetMR);
          OUTLINED_FUNCTION_23();
          __swift_storeEnumTagSinglePayload(v149, v150, v151, v152);
          v119 = 0;
          goto LABEL_22;
        }

        v119 = *(v122 + 8 * v125);
        ++v115;
        if (v119)
        {
          v115 = v125;
          goto LABEL_21;
        }
      }

      __break(1u);
      goto LABEL_126;
    }
  }

  OUTLINED_FUNCTION_13_3();
  (*(v153 + 200))();
  v154 = OUTLINED_FUNCTION_70_0();
  OUTLINED_FUNCTION_34_0(v154, v155, v392);
  if (v137)
  {
    outlined destroy of NSObject?(v347, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
    v156 = v355;
  }

  else
  {
    v156 = v355;
    OUTLINED_FUNCTION_81_0();
    v157 = OUTLINED_FUNCTION_31_0();
    v158(v157);
    OUTLINED_FUNCTION_28_2();
    _StringGuts.grow(_:)(28);

    OUTLINED_FUNCTION_13_2();
    v404 = 0xD000000000000019;
    v405 = v159;
    (*(v355 + 16))(v387, v346, v392);
    v160 = String.init<A>(describing:)();
    MEMORY[0x22AAAE070](v160);

    MEMORY[0x22AAAE070](10, 0xE100000000000000);
    v134 = v406;
    MEMORY[0x22AAAE070](0xD000000000000019, v405);

    v161 = *(v355 + 8);
    v162 = OUTLINED_FUNCTION_140();
    v163(v162);
  }

  OUTLINED_FUNCTION_13_3();
  v165 = (*(v164 + 224))();
  v166 = 0;
  v168 = v165 + 64;
  v167 = *(v165 + 64);
  v369 = v165;
  OUTLINED_FUNCTION_2_7(v165);
  v171 = v170 & v169;
  v401 = (v156 + 16);
  OUTLINED_FUNCTION_13_2();
  v374 = v173;
  v371 = (v156 + 8);
  v385 = (v174 + 8);
  v363 = v168;
  v378 = v172;
  if (!v171)
  {
LABEL_31:
    v175 = v379;
    while (1)
    {
      v176 = v166 + 1;
      if (__OFADD__(v166, 1))
      {
        break;
      }

      if (v176 >= v172)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetMR);
        OUTLINED_FUNCTION_23();
        __swift_storeEnumTagSinglePayload(v202, v203, v204, v205);
        v171 = 0;
        goto LABEL_37;
      }

      v171 = *(v168 + 8 * v176);
      ++v166;
      if (v171)
      {
        v166 = v176;
        goto LABEL_36;
      }
    }

LABEL_126:
    __break(1u);
    goto LABEL_127;
  }

LABEL_36:
  while (1)
  {
    OUTLINED_FUNCTION_106_0();
    (*(v356 + 16))(v353, *(v369 + 48) + *(v356 + 72) * v134, v399);
    (*(v355 + 16))(v387, *(v369 + 56) + *(v355 + 72) * v134, v392);
    v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetV3key_AC5valuetMR);
    v178 = *(v177 + 48);
    (*(v356 + 32))();
    (*(v355 + 32))(v381 + v178, v387, v392);
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v179, v180, v181, v177);
    v175 = v379;
    v168 = v363;
LABEL_37:
    OUTLINED_FUNCTION_140();
    outlined init with take of (key: AppleIntelligenceReportingUseCase, value: AssetDeliveryState.Accumulator<AppleIntelligenceReportingModelCatalogLog>)?();
    v182 = OUTLINED_FUNCTION_67_0();
    v184 = __swift_instantiateConcreteTypeFromMangledNameV2(v182, v183);
    v185 = OUTLINED_FUNCTION_102_0();
    OUTLINED_FUNCTION_34_0(v185, v186, v184);
    if (v137)
    {
      break;
    }

    v187 = *(v184 + 48);
    v188 = *(v356 + 32);
    v189 = OUTLINED_FUNCTION_140();
    v190(v189);
    OUTLINED_FUNCTION_137();
    v191(v364, v175 + v187, v392);
    v192 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.assetSetIdentifier.getter();
    if (v193)
    {
      v194 = v192;
    }

    else
    {
      v194 = 0;
    }

    if (v193)
    {
      v195 = v193;
    }

    else
    {
      v195 = 0xE000000000000000;
    }

    _StringGuts.grow(_:)(38);

    OUTLINED_FUNCTION_118();
    v404 = v196;
    v405 = v374;
    MEMORY[0x22AAAE070](v194, v195);

    v197 = OUTLINED_FUNCTION_23_2();
    MEMORY[0x22AAAE070](v197 & 0xFFFFFFFFFFFFLL | 0x203A000000000000, 0xE800000000000000);
    (*v401)(v387, v364, v392);
    v198 = String.init<A>(describing:)();
    MEMORY[0x22AAAE070](v198);

    MEMORY[0x22AAAE070](10, 0xE100000000000000);
    v134 = v406;
    MEMORY[0x22AAAE070](v404, v374);

    (*v371)(v364, v392);
    v199 = *v385;
    v200 = OUTLINED_FUNCTION_140();
    v201(v200);
    v172 = v378;
    if (!v171)
    {
      goto LABEL_31;
    }
  }

  OUTLINED_FUNCTION_13_3();
  v207 = (*(v206 + 248))();
  v208 = 0;
  v209 = *(v207 + 64);
  v382 = v207;
  OUTLINED_FUNCTION_2_7(v207);
  v213 = v212 & v211;
  v215 = (v214 + 63) >> 6;
  v388 = v210;
  if ((v212 & v211) == 0)
  {
LABEL_49:
    v217 = v375;
    while (1)
    {
      v216 = v208 + 1;
      if (__OFADD__(v208, 1))
      {
        break;
      }

      if (v216 >= v215)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
        OUTLINED_FUNCTION_23();
        __swift_storeEnumTagSinglePayload(v240, v241, v242, v243);
        v213 = 0;
        goto LABEL_55;
      }

      v213 = *(v210 + 8 * v216);
      ++v208;
      if (v213)
      {
        v208 = v216;
        goto LABEL_54;
      }
    }

LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  while (1)
  {
    v216 = v208;
LABEL_54:
    v218 = __clz(__rbit64(v213));
    v213 &= v213 - 1;
    v219 = v218 | (v216 << 6);
    (*(v395 + 16))(v393, *(v382 + 48) + *(v395 + 72) * v219, v403);
    v171 = *(*(v382 + 56) + 8 * v219);
    v220 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
    v221 = *(v220 + 48);
    v222 = *(v395 + 32);
    v223 = OUTLINED_FUNCTION_120_0();
    v224(v223);
    *(v376 + v221) = v171;
    OUTLINED_FUNCTION_39_0();
    __swift_storeEnumTagSinglePayload(v225, v226, v227, v220);

    v217 = v375;
LABEL_55:
    OUTLINED_FUNCTION_99_0();
    outlined init with take of (key: AppleIntelligenceReportingUseCase, value: AssetDeliveryState.Accumulator<AppleIntelligenceReportingModelCatalogLog>)?();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG8SelectorV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
    v228 = OUTLINED_FUNCTION_127();
    OUTLINED_FUNCTION_19_2(v228);
    if (v137)
    {
      break;
    }

    v171 = *(v217 + *(v171 + 48));
    v229 = *(v395 + 32);
    v230 = OUTLINED_FUNCTION_99_0();
    v231(v230);
    v232 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
    if (v233)
    {
      v234 = v232;
    }

    else
    {
      v234 = 0xD000000000000019;
    }

    if (v233)
    {
      v235 = v233;
    }

    else
    {
      v235 = 0x8000000227FB5870;
    }

    OUTLINED_FUNCTION_28_2();
    _StringGuts.grow(_:)(27);

    OUTLINED_FUNCTION_113_0();
    v405 = 0xEC00000020626F4ALL;
    MEMORY[0x22AAAE070](v234, v235);

    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_4_1();
    v237 = (*(v236 + 160))();
    OUTLINED_FUNCTION_133(v237);
    v238 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x22AAAE070](v238);

    OUTLINED_FUNCTION_23_2();
    OUTLINED_FUNCTION_116_0();
    OUTLINED_FUNCTION_115_0();

    OUTLINED_FUNCTION_137();
    v239(v357, v403);
    v210 = v388;
    if (!v213)
    {
      goto LABEL_49;
    }
  }

  OUTLINED_FUNCTION_13_3();
  v245 = (*(v244 + 272))();
  v383 = OUTLINED_FUNCTION_98_0(v245);
  OUTLINED_FUNCTION_2_7(v383);
  v249 = v248 & v247;
  v251 = (v250 + 63) >> 6;
  v389 = v246;
  if ((v248 & v247) == 0)
  {
LABEL_67:
    v217 = v365;
    while (1)
    {
      v252 = v215 + 1;
      if (__OFADD__(v215, 1))
      {
        goto LABEL_128;
      }

      if (v252 >= v251)
      {
        OUTLINED_FUNCTION_23();
        __swift_storeEnumTagSinglePayload(v270, v271, v272, v171);
        v249 = 0;
        goto LABEL_73;
      }

      v249 = *(v246 + 8 * v252);
      ++v215;
      if (v249)
      {
        v215 = v252;
        break;
      }
    }
  }

  while (1)
  {
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_97_0(*(v383 + 48));
    v253(v393);
    v254 = *(*(v383 + 56) + 8 * v217);
    v255 = *(v171 + 48);
    (*(v395 + 32))(v366, v393, v403);
    *(v366 + v255) = v254;
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_143(v256, v257, v258);

    v217 = v365;
LABEL_73:
    OUTLINED_FUNCTION_123_0();
    outlined init with take of (key: AppleIntelligenceReportingUseCase, value: AssetDeliveryState.Accumulator<AppleIntelligenceReportingModelCatalogLog>)?();
    OUTLINED_FUNCTION_19_2(v217);
    if (v137)
    {
      break;
    }

    OUTLINED_FUNCTION_119_0();
    v259 = OUTLINED_FUNCTION_123_0();
    v260(v259);
    v261 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
    if (v262)
    {
      v263 = v261;
    }

    else
    {
      v263 = 0xD000000000000019;
    }

    if (v262)
    {
      v264 = v262;
    }

    else
    {
      v264 = 0x8000000227FB5870;
    }

    OUTLINED_FUNCTION_28_2();
    _StringGuts.grow(_:)(30);

    OUTLINED_FUNCTION_113_0();
    v405 = 0xEF20657461647055;
    MEMORY[0x22AAAE070](v263, v264);

    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_138();
    v266 = (*(v265 + 160))();
    OUTLINED_FUNCTION_133(v266);
    v267 = dispatch thunk of CustomStringConvertible.description.getter();
    v217 = &v404;
    MEMORY[0x22AAAE070](v267);

    OUTLINED_FUNCTION_23_2();
    OUTLINED_FUNCTION_116_0();
    OUTLINED_FUNCTION_115_0();

    OUTLINED_FUNCTION_137();
    v268 = OUTLINED_FUNCTION_103_0();
    v269(v268);
    v246 = v389;
    if (!v249)
    {
      goto LABEL_67;
    }
  }

  OUTLINED_FUNCTION_13_3();
  v274 = (*(v273 + 296))();
  v275 = OUTLINED_FUNCTION_98_0(v274);
  v276 = OUTLINED_FUNCTION_2_7(v275);
  v280 = v279 & v278;
  v282 = (v281 + 63) >> 6;
  v380 = v276;
  v390 = v277;
  if ((v279 & v278) == 0)
  {
LABEL_85:
    v283 = v386;
    v217 = v358;
    while (1)
    {
      v284 = v215 + 1;
      if (__OFADD__(v215, 1))
      {
        goto LABEL_129;
      }

      if (v284 >= v282)
      {
        OUTLINED_FUNCTION_23();
        __swift_storeEnumTagSinglePayload(v302, v303, v304, v171);
        v280 = 0;
        goto LABEL_91;
      }

      v280 = *(v277 + 8 * v284);
      ++v215;
      if (v280)
      {
        v215 = v284;
        goto LABEL_90;
      }
    }
  }

  while (1)
  {
    v283 = v386;
LABEL_90:
    OUTLINED_FUNCTION_110_0();
    OUTLINED_FUNCTION_97_0(*(v380 + 48));
    v285(v393);
    v286 = *(*(v380 + 56) + 8 * v217);
    v287 = *(v171 + 48);
    (*(v395 + 32))(v359, v393, v403);
    *(v359 + v287) = v286;
    OUTLINED_FUNCTION_39_0();
    OUTLINED_FUNCTION_143(v288, v289, v290);

    v217 = v358;
LABEL_91:
    outlined init with take of (key: AppleIntelligenceReportingUseCase, value: AssetDeliveryState.Accumulator<AppleIntelligenceReportingModelCatalogLog>)?();
    OUTLINED_FUNCTION_19_2(v217);
    if (v137)
    {
      break;
    }

    OUTLINED_FUNCTION_119_0();
    v291 = OUTLINED_FUNCTION_123_0();
    v292(v291);
    v293 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSelector.assetSpecifier.getter();
    if (v294)
    {
      v295 = v293;
    }

    else
    {
      v295 = 0xD000000000000019;
    }

    if (v294)
    {
      v296 = v294;
    }

    else
    {
      v296 = 0x8000000227FB5870;
    }

    OUTLINED_FUNCTION_28_2();
    _StringGuts.grow(_:)(36);

    v404 = 0xD000000000000015;
    v405 = 0x8000000227FB5890;
    MEMORY[0x22AAAE070](v295, v296);

    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_138();
    v298 = (*(v297 + 160))();
    OUTLINED_FUNCTION_133(v298);
    v299 = dispatch thunk of CustomStringConvertible.description.getter();
    v217 = &v404;
    MEMORY[0x22AAAE070](v299);

    OUTLINED_FUNCTION_23_2();
    OUTLINED_FUNCTION_116_0();
    OUTLINED_FUNCTION_115_0();

    OUTLINED_FUNCTION_137();
    v300 = OUTLINED_FUNCTION_103_0();
    v301(v300);
    v277 = v390;
    if (!v280)
    {
      goto LABEL_85;
    }
  }

  OUTLINED_FUNCTION_13_3();
  v306 = (*(v305 + 320))();
  v394 = OUTLINED_FUNCTION_98_0(v306);
  OUTLINED_FUNCTION_2_7(v394);
  v310 = v309 & v308;
  v312 = (v311 + 63) >> 6;
  v313 = v352;
  v402 = v307;
  v398 = v312;
  v314 = v283;
  if (v310)
  {
    while (1)
    {
      v315 = v314;
LABEL_108:
      OUTLINED_FUNCTION_106_0();
      OUTLINED_FUNCTION_97_0(*(v394 + 48));
      v318();
      v319 = *(*(v394 + 56) + 8 * v217);
      v320 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
      v321 = *(v320 + 48);
      (*(v350 + 32))(v315, v349, v313);
      *(v315 + v321) = v319;
      OUTLINED_FUNCTION_39_0();
      __swift_storeEnumTagSinglePayload(v322, v323, v324, v320);

      v316 = v354;
LABEL_109:
      outlined init with take of (key: AppleIntelligenceReportingUseCase, value: AssetDeliveryState.Accumulator<AppleIntelligenceReportingModelCatalogLog>)?();
      v325 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
      v326 = OUTLINED_FUNCTION_79_0();
      OUTLINED_FUNCTION_34_0(v326, v327, v325);
      if (v137)
      {

        OUTLINED_FUNCTION_19();
        return;
      }

      v328 = *(v351 + *(v325 + 48));
      v329 = *(v350 + 32);
      v330 = OUTLINED_FUNCTION_67_0();
      v331(v330);
      AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.assetSet.getter();
      OUTLINED_FUNCTION_34_0(v316, 1, v399);
      if (v137)
      {
        break;
      }

      AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet.assetSetIdentifier.getter();
      v333 = v332;
      (*v385)(v316, v399);
      if (!v333)
      {
        goto LABEL_114;
      }

LABEL_115:
      v334 = AppleIntelligenceReportingMobileAssetLog.MobileAssetAtomicInstance.atomicInstanceId.getter();
      if (v335)
      {
        v336 = v334;
      }

      else
      {
        v336 = 0;
      }

      if (v335)
      {
        v337 = v335;
      }

      else
      {
        v337 = 0xE000000000000000;
      }

      OUTLINED_FUNCTION_43_0();
      (*(v338 + 160))();
      v404 = 0;
      v405 = 0xE000000000000000;
      _StringGuts.grow(_:)(41);

      OUTLINED_FUNCTION_118();
      v404 = v339 - 2;
      v405 = 0x8000000227FB5850;
      v340 = OUTLINED_FUNCTION_86_0();
      MEMORY[0x22AAAE070](v340);

      MEMORY[0x22AAAE070](58, 0xE100000000000000);
      MEMORY[0x22AAAE070](v336, v337);

      OUTLINED_FUNCTION_69_0();
      v341 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x22AAAE070](v341);

      OUTLINED_FUNCTION_23_2();
      OUTLINED_FUNCTION_116_0();
      v217 = v406;
      MEMORY[0x22AAAE070](v404, v405);

      v313 = v352;
      (*(v350 + 8))(v391, v352);
      v314 = v386;
      v307 = v402;
      v312 = v398;
      if (!v310)
      {
        goto LABEL_103;
      }
    }

    outlined destroy of NSObject?(v316, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fgG3SetVSgMR);
LABEL_114:

    goto LABEL_115;
  }

LABEL_103:
  v316 = v354;
  while (1)
  {
    v317 = v215 + 1;
    if (__OFADD__(v215, 1))
    {
      break;
    }

    if (v317 >= v312)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogV0fG14AtomicInstanceV3key_0daE10Processing0G13DeliveryStateC11AccumulatorCy_ACG5valuetMR);
      OUTLINED_FUNCTION_23();
      __swift_storeEnumTagSinglePayload(v342, v343, v344, v345);
      v310 = 0;
      goto LABEL_109;
    }

    v310 = *(v307 + 8 * v317);
    ++v215;
    if (v310)
    {
      v315 = v314;
      v215 = v317;
      goto LABEL_108;
    }
  }

LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
}

uint64_t specialized Dictionary.subscript.setter()
{
  OUTLINED_FUNCTION_117();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVSgMd, &_s36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVSgMR);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  v7 = OUTLINED_FUNCTION_136();
  v8 = type metadata accessor for InvocationStepMetadata.Partial(v7);
  v9 = OUTLINED_FUNCTION_8_7(v8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_1_0();
  v14 = v13 - v12;
  OUTLINED_FUNCTION_34_0(v1, 1, v15);
  if (v16)
  {
    outlined destroy of NSObject?(v1, &_s36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVSgMd, &_s36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)();
    v17 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_4(v17);
    (*(v18 + 8))(v0);
    return outlined destroy of NSObject?(v2, &_s36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVSgMd, &_s36AppleIntelligenceReportingProcessing22InvocationStepMetadataV7PartialVSgMR);
  }

  else
  {
    outlined init with take of InvocationStepMetadata.Partial(v1, v14);
    v19 = *v1;
    swift_isUniquelyReferenced_nonNull_native();
    v23 = *v1;
    OUTLINED_FUNCTION_31_0();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    *v1 = v23;
    v20 = type metadata accessor for UUID();
    OUTLINED_FUNCTION_4(v20);
    return (*(v21 + 8))(v0);
  }
}

{
  OUTLINED_FUNCTION_117();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  OUTLINED_FUNCTION_13(v3);
  v5 = *(v4 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_59_0();
  v7 = type metadata accessor for UUID();
  v8 = OUTLINED_FUNCTION_0(v7);
  v10 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_1_0();
  v15 = v14 - v13;
  OUTLINED_FUNCTION_34_0(v1, 1, v7);
  if (v16)
  {
    outlined destroy of NSObject?(v1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)();
    (*(v10 + 8))(v0, v7);
    return outlined destroy of NSObject?(v2, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    (*(v10 + 32))(v15, v1, v7);
    v17 = *v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v15, v0, isUniquelyReferenced_nonNull_native, v19, v20, v21, v22, v23, v25, *v1, v27, v28);
    *v1 = v26;
    return (*(v10 + 8))(v0, v7);
  }
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = v25 - v8;
  v10 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v10) == 1)
  {
    outlined destroy of NSObject?(a1, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)();
    v15 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
    (*(*(v15 - 8) + 8))(a2, v15);
    return outlined destroy of NSObject?(v9, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, isUniquelyReferenced_nonNull_native, v19, v20, v21, v22, v23, v25[0], *v3, v25[2], v25[3]);
    *v3 = v25[1];
    v24 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog.MobileAssetAssetSet();
    return (*(*(v24 - 8) + 8))(a2, v24);
  }
}

uint64_t SubscriptionKey.subscriptionName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return OUTLINED_FUNCTION_62();
}

uint64_t SubscriptionKey.subscriberName.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  return OUTLINED_FUNCTION_62();
}

uint64_t static SubscriptionKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 36);
  v10 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v2 != v6 || v3 != v7)
  {
    OUTLINED_FUNCTION_62();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  if (v5)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v4 == v8)
    {
      v13 = v9;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  return 1;
}

void SubscriptionKey.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 8);
  v6 = *(v0 + 36);
  String.hash(into:)();
  OUTLINED_FUNCTION_104_0();
  String.hash(into:)();
  if (v6 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }
}

Swift::Int SubscriptionKey.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 8);
  v6 = *(v0 + 36);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v6 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
  }

  return Hasher._finalize()();
}

uint64_t SubscriptionKey.init(subscriptionName:subscriberName:userIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  *(a6 + 36) = BYTE4(a5) & 1;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SubscriptionKey()
{
  v2 = *v0;
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 8);
  v6 = *(v0 + 36);
  Hasher.init(_seed:)();
  SubscriptionKey.hash(into:)();
  return Hasher._finalize()();
}

uint64_t key path setter for AssetDeliveryState.availability : AssetDeliveryState(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 160);

  return v3(v4);
}

uint64_t AssetDeliveryState.availability.getter()
{
  OUTLINED_FUNCTION_75();
  v1 = *(v0 + 16);
}

uint64_t AssetDeliveryState.availability.setter()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_88_0();
  v2 = *(v1 + 16);
  *(v1 + 16) = v0;
}

uint64_t (*AssetDeliveryState.availability.modify())()
{
  OUTLINED_FUNCTION_126();
  OUTLINED_FUNCTION_74();
  return DataCollectorInternal.invocationProcessor.modify;
}

uint64_t key path setter for AssetDeliveryState.subscriptions : AssetDeliveryState(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 184);

  return v3(v4);
}

uint64_t key path setter for AssetDeliveryState.assetScheduler : AssetDeliveryState(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v8 - v5;
  outlined init with copy of AppleIntelligenceReportingMobileAssetLog?();
  return (*(**a2 + 208))(v6);
}

uint64_t AssetDeliveryState.assetScheduler.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC36AppleIntelligenceReportingProcessing18AssetDeliveryState_assetScheduler;
  OUTLINED_FUNCTION_10_0();
  outlined assign with take of AppleIntelligenceReportingMobileAssetLog?(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t key path setter for AssetDeliveryState.assetSetConfiguration : AssetDeliveryState(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 232);

  return v3(v4);
}

uint64_t key path setter for AssetDeliveryState.assetJob : AssetDeliveryState(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 256);

  return v3(v4);
}

uint64_t key path setter for AssetDeliveryState.assetUpdate : AssetDeliveryState(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 280);

  return v3(v4);
}

uint64_t key path setter for AssetDeliveryState.assetSecureUpdate : AssetDeliveryState(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 304);

  return v3(v4);
}

uint64_t key path setter for AssetDeliveryState.atomicInstanceState : AssetDeliveryState(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 328);

  return v3(v4);
}

uint64_t key path setter for AssetDeliveryState.uafSubscriptionState : AssetDeliveryState(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 352);

  return v3(v4);
}

uint64_t AssetDeliveryState.assetSetConfiguration.getter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_75();
  v3 = *(v1 + v2);
}

uint64_t AssetDeliveryState.assetSetConfiguration.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  OUTLINED_FUNCTION_88_0();
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
}

uint64_t AssetDeliveryState.copy()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMd, &_s27IntelligencePlatformLibrary05AppleA23ReportingMobileAssetLogVSgMR);
  OUTLINED_FUNCTION_13(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v4);
  v5 = OUTLINED_FUNCTION_136();
  v6 = type metadata accessor for AssetDeliveryState(v5);
  v7 = OUTLINED_FUNCTION_117_0(v6);
  AssetDeliveryState.init()();
  OUTLINED_FUNCTION_4_1();
  (*(v8 + 152))();
  OUTLINED_FUNCTION_43_0();
  (*(v9 + 160))();
  OUTLINED_FUNCTION_4_1();
  (*(v10 + 176))();
  OUTLINED_FUNCTION_43_0();
  (*(v11 + 184))();
  OUTLINED_FUNCTION_4_1();
  (*(v12 + 200))();
  OUTLINED_FUNCTION_43_0();
  (*(v13 + 208))(v0);
  OUTLINED_FUNCTION_4_1();
  (*(v14 + 224))();
  OUTLINED_FUNCTION_43_0();
  (*(v15 + 232))();
  OUTLINED_FUNCTION_4_1();
  (*(v16 + 248))();
  OUTLINED_FUNCTION_107_0();
  (*(v17 + 256))();
  OUTLINED_FUNCTION_141();
  (*(v18 + 272))();
  OUTLINED_FUNCTION_107_0();
  (*(v19 + 280))();
  OUTLINED_FUNCTION_141();
  (*(v20 + 296))();
  OUTLINED_FUNCTION_107_0();
  (*(v21 + 304))();
  OUTLINED_FUNCTION_141();
  (*(v22 + 320))();
  OUTLINED_FUNCTION_107_0();
  (*(v23 + 328))();
  OUTLINED_FUNCTION_141();
  (*(v24 + 344))();
  OUTLINED_FUNCTION_107_0();
  (*(v25 + 352))();
  return v7;
}

void AssetDeliveryState.handleEvent(event:)()
{
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_142();
  v2 = type metadata accessor for AppleIntelligenceReportingUnifiedAssetFrameworkLog();
  v3 = OUTLINED_FUNCTION_0(v2);
  v56 = v4;
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_1_0();
  v9 = v8 - v7;
  v10 = type metadata accessor for AppleIntelligenceReportingMobileAssetLog();
  v11 = OUTLINED_FUNCTION_0(v10);
  v54 = v12;
  v55 = v11;
  v14 = *(v13 + 64);
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1_0();
  v17 = v16 - v15;
  v18 = type metadata accessor for AppleIntelligenceReportingModelCatalogLog();
  v19 = OUTLINED_FUNCTION_0(v18);
  v53 = v20;
  v22 = *(v21 + 64);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_1_0();
  v25 = v24 - v23;
  v26 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  v27 = OUTLINED_FUNCTION_0(v26);
  v29 = v28;
  v31 = *(v30 + 64);
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_1_0();
  v34 = v33 - v32;
  v35 = type metadata accessor for AppleIntelligenceBiomeEvent();
  v36 = OUTLINED_FUNCTION_4(v35);
  v38 = *(v37 + 64);
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_134();
  outlined init with copy of AppleIntelligenceBiomeEvent(v1, v0);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_81_0();
      v39 = OUTLINED_FUNCTION_85_0();
      v40(v39);
      OUTLINED_FUNCTION_58_0();
      (*(v41 + 384))(v34);
      v42 = *(v29 + 8);
      v43 = OUTLINED_FUNCTION_86_0();
      goto LABEL_7;
    case 2u:
      OUTLINED_FUNCTION_125_0();
      v47(v17, v0, v55);
      OUTLINED_FUNCTION_58_0();
      (*(v48 + 400))(v17);
      (*(v54 + 8))(v17, v55);
      break;
    case 4u:
      OUTLINED_FUNCTION_125_0();
      v45(v25, v0, v18);
      OUTLINED_FUNCTION_58_0();
      (*(v46 + 392))(v25);
      (*(v53 + 8))(v25, v18);
      break;
    case 5u:
      OUTLINED_FUNCTION_81_0();
      v49 = OUTLINED_FUNCTION_51_0();
      v50(v49);
      OUTLINED_FUNCTION_58_0();
      (*(v51 + 416))(v9);
      v52 = *(v56 + 8);
      v43 = OUTLINED_FUNCTION_51_0();
LABEL_7:
      v44(v43);
      break;
    default:
      outlined destroy of AppleIntelligenceBiomeEvent(v0);
      break;
  }

  OUTLINED_FUNCTION_19();
}

void AssetDeliveryState.handleAvailabilityEvent(event:)()
{
  OUTLINED_FUNCTION_18();
  v96 = v0;
  v3 = v2;
  v98 = type metadata accessor for AppleIntelligenceReportingAvailabilityLog();
  v4 = OUTLINED_FUNCTION_0(v98);
  v6 = v5;
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_13_0();
  v11 = v9 - v10;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_38_0();
  v95 = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
  OUTLINED_FUNCTION_13(v14);
  v16 = *(v15 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_93_0();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
  OUTLINED_FUNCTION_13(v18);
  v20 = *(v19 + 64);
  OUTLINED_FUNCTION_16();
  MEMORY[0x28223BE20](v21);
  v23 = v94 - v22;
  v24 = type metadata accessor for AppleIntelligenceReportingUseCase();
  v25 = OUTLINED_FUNCTION_0(v24);
  v97 = v26;
  v28 = *(v27 + 64);
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_13_0();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = v94 - v33;
  AppleIntelligenceReportingAvailabilityLog.event.getter();
  v35 = type metadata accessor for AppleIntelligenceReportingAssetDeliveryEvent();
  v36 = OUTLINED_FUNCTION_102_0();
  OUTLINED_FUNCTION_34_0(v36, v37, v35);
  if (v45)
  {
    outlined destroy of NSObject?(v1, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMd, &_s27IntelligencePlatformLibrary05AppleA27ReportingAssetDeliveryEventVSgMR);
    OUTLINED_FUNCTION_23();
    __swift_storeEnumTagSinglePayload(v38, v39, v40, v24);
LABEL_6:
    outlined destroy of NSObject?(v23, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMd, &_s27IntelligencePlatformLibrary05AppleA16ReportingUseCaseVSgMR);
    goto LABEL_7;
  }

  AppleIntelligenceReportingAssetDeliveryEvent.useCase.getter();
  OUTLINED_FUNCTION_31_1(v35);
  v42 = *(v41 + 8);
  v43 = OUTLINED_FUNCTION_105_0();
  v44(v43);
  OUTLINED_FUNCTION_34_0(v23, 1, v24);
  if (v45)
  {
    goto LABEL_6;
  }

  v56 = v97;
  OUTLINED_FUNCTION_125_0();
  v57 = OUTLINED_FUNCTION_124_0();
  v58(v57);
  v59 = AppleIntelligenceReportingUseCase.useCaseIdentifier.getter();
  v94[2] = v60;
  v94[3] = v59;
  if (v60)
  {
    if (one-time initialization token for general != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v61 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_65(v61, static Logging.general);
    (*(v56 + 16))(v31, v34, v24);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = OUTLINED_FUNCTION_76_0();
      v100[0] = OUTLINED_FUNCTION_84();
      *v64 = 136315138;
      AppleIntelligenceReportingUseCase.loggingDescription.getter();
      v94[0] = v65;
      v67 = v66;
      v68 = OUTLINED_FUNCTION_129(v97);
      v69(v68);
      v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v94[0], v67, v100);

      *(v64 + 4) = v70;
      _os_log_impl(&dword_227F43000, v62, v63, "AssetDeliveryState processing AvailabilityEvent for %s", v64, 0xCu);
      OUTLINED_FUNCTION_16_3();
      OUTLINED_FUNCTION_11();
    }

    else
    {

      v78 = OUTLINED_FUNCTION_129(v56);
      v71 = v79(v78);
    }

    v81 = v95;
    v80 = v96;
    v82 = (*(*v96 + 152))(v71);
    if (*(v82 + 16) && (v83 = specialized __RawDictionaryStorage.find<A>(_:)(), (v84 & 1) != 0))
    {
      v85 = *(*(v82 + 56) + 8 * v83);
    }

    else
    {
      v85 = MEMORY[0x277D84F90];
    }

    (*(v6 + 16))(v81, v3, v98);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v91 = *(v85 + 16);
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v85 = v92;
    }

    v86 = *(v85 + 16);
    if (v86 >= *(v85 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v85 = v93;
    }

    *(v85 + 16) = v86 + 1;
    (*(v6 + 32))(v85 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v86, v81, v98);
    v87 = (*(*v80 + 168))(v100);
    v89 = v88;
    v90 = *v88;
    swift_isUniquelyReferenced_nonNull_native();
    v99 = *v89;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)();
    *v89 = v99;

    v87(v100, 0);
    (v94[1])(v34, v24);
    goto LABEL_30;
  }

  (*(v56 + 8))(v34, v24);
LABEL_7:
  v46 = v98;
  if (one-time initialization token for general != -1)
  {
    OUTLINED_FUNCTION_1();
  }

  v47 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_65(v47, static Logging.general);
  (*(v6 + 16))(v11, v3, v46);
  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = OUTLINED_FUNCTION_76_0();
    v51 = OUTLINED_FUNCTION_84();
    v100[0] = v51;
    *v50 = 136315138;
    AppleIntelligenceReportingAvailabilityLog.json()();
    if (v52)
    {

      OUTLINED_FUNCTION_128();
    }

    v72 = *(v6 + 8);
    v73 = OUTLINED_FUNCTION_86_0();
    v74(v73);
    v75 = OUTLINED_FUNCTION_99_0();
    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, v77);
    OUTLINED_FUNCTION_127();

    *(v50 + 4) = v6 + 8;
    _os_log_impl(&dword_227F43000, v48, v49, "Received availability asset log event missing asset delivery metadata: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_11();
  }

  else
  {

    v53 = *(v6 + 8);
    v54 = OUTLINED_FUNCTION_86_0();
    v55(v54);
  }

LABEL_30:
  OUTLINED_FUNCTION_19();
}

void AppleIntelligenceReportingUseCase.loggingDescription.getter()
{
  OUTLINED_FUNCTION_18();
  v38 = type metadata accessor for AppleIntelligenceReportingUseCase.Parameter();
  v0 = OUTLINED_FUNCTION_0(v38);
  v2 = v1;
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_1_0();
  v7 = v6 - v5;
  AppleIntelligenceReportingUseCase.useCaseIdentifier.getter();
  v8 = AppleIntelligenceReportingUseCase.parameters.getter();
  v9 = *(v8 + 16);
  if (v9)
  {
    v40 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    v10 = 0;
    v36 = v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v37 = v8;
    while (v10 < *(v8 + 16))
    {
      (*(v2 + 16))(v7, v36 + *(v2 + 72) * v10, v38);
      v11 = AppleIntelligenceReportingAsset.assetIdentifier.getter();
      if (v12)
      {
        v13 = v12;
      }

      else
      {
        v11 = 0x656D616E206F6E3CLL;
        v13 = 0xE90000000000003ELL;
      }

      MEMORY[0x22AAAE070](v11, v13);

      v14 = OUTLINED_FUNCTION_78();
      MEMORY[0x22AAAE070](v14);
      v15 = AppleIntelligenceReportingAsset.version.getter();
      if (v16)
      {
        v17 = v16;
      }

      else
      {
        v15 = 0x756C6176206F6E3CLL;
        v17 = 0xEA00000000003E65;
      }

      MEMORY[0x22AAAE070](v15, v17);

      v18 = *(v2 + 8);
      v19 = OUTLINED_FUNCTION_124_0();
      v20(v19);
      v21 = *(v40 + 16);
      if (v21 >= *(v40 + 24) >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      ++v10;
      *(v40 + 16) = v21 + 1;
      v22 = v40 + 16 * v21;
      *(v22 + 32) = 0;
      *(v22 + 40) = 0xE000000000000000;
      v8 = v37;
      if (v9 == v10)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    OUTLINED_FUNCTION_78();
    BidirectionalCollection<>.joined(separator:)();

    if ((AppleIntelligenceReportingUseCase.mode.getter() & 0x100000000) != 0)
    {
      v24 = 0xEE003E65646F6D20;
      v39 = 0x676E697373696D3CLL;
    }

    else
    {
      v39 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
    }

    OUTLINED_FUNCTION_13_2();
    AppleIntelligenceReportingUseCase.locale.getter();
    OUTLINED_FUNCTION_13_2();
    if (v26)
    {
      v28 = v25;
    }

    else
    {
      v28 = 0xD000000000000010;
    }

    if (v26)
    {
      v29 = v26;
    }

    else
    {
      v29 = v27;
    }

    AppleIntelligenceReportingUseCase.countryCode.getter();
    OUTLINED_FUNCTION_13_2();
    v30 = OUTLINED_FUNCTION_78();
    MEMORY[0x22AAAE070](v30);
    v31 = OUTLINED_FUNCTION_77_0();
    MEMORY[0x22AAAE070](v31);

    v32 = OUTLINED_FUNCTION_78();
    MEMORY[0x22AAAE070](v32);
    MEMORY[0x22AAAE070](v39, v24);

    v33 = OUTLINED_FUNCTION_78();
    MEMORY[0x22AAAE070](v33);
    MEMORY[0x22AAAE070](v28, v29);

    v34 = OUTLINED_FUNCTION_78();
    MEMORY[0x22AAAE070](v34);
    v35 = OUTLINED_FUNCTION_51_0();
    MEMORY[0x22AAAE070](v35);

    OUTLINED_FUNCTION_19();
  }
}