void sub_191C71244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  sub_191C00E88(a1, aBlock);
  sub_191C71C64();
  if (swift_dynamicCast())
  {
    v11 = aBlock[6];
    v12 = sub_191CC6778();
    v13 = swift_allocObject();
    *(v13 + 16) = a6;
    *(v13 + 24) = a7;
    aBlock[4] = sub_191C71D28;
    aBlock[5] = v13;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_191C006E0;
    aBlock[3] = &block_descriptor_36;
    v14 = _Block_copy(aBlock);

    [v11 remote:v12 requestDatabaseAccessibilityAssertionForOwnerIdentifier:a4 contextType:a5 & 1 isRecovery:v14 completion:?];
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_191CC7118();
    __break(1u);
  }
}

uint64_t sub_191C71404(void *a1, uint64_t a2, void (*a3)(__int128 *, uint64_t))
{
  if (a1)
  {
    *(&v13 + 1) = sub_191BFAE6C(0, &unk_1EADCD0A0, off_1E7374DD0);
    *&v12 = a1;
  }

  else
  {
    if (qword_1EADCA170 != -1)
    {
      swift_once();
    }

    v6 = sub_191CC6348();
    __swift_project_value_buffer(v6, qword_1EADE70B0);
    v7 = sub_191CC6328();
    v8 = sub_191CC6C98();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_19197B000, v7, v8, "remote_requestDatabaseAccessibilityAssertion resultHandler called with nil assertion", v9, 2u);
      MEMORY[0x193B047C0](v9, -1, -1);
    }

    v12 = 0u;
    v13 = 0u;
  }

  v10 = a1;
  a3(&v12, a2);
  return sub_191C71CC8(&v12, sub_191C0B13C);
}

uint64_t sub_191C71568(uint64_t a1, void (*a2)(_OWORD *, uint64_t))
{
  memset(v5, 0, sizeof(v5));
  a2(v5, a1);
  return sub_191C71CC8(v5, sub_191C0B13C);
}

Swift::Void __swiftcall DatabaseAccessibilityAssertionStore.invalidateDatabaseAccessibilityAssertion(assertion:)(HKDatabaseAccessibilityAssertion *assertion)
{
  v2 = sub_191C70884();
  v3 = swift_allocObject();
  *(v3 + 16) = assertion;
  v11 = sub_191C718D4;
  v12 = v3;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_191C707AC;
  v10 = &block_descriptor_21_0;
  v4 = _Block_copy(&v7);
  v5 = assertion;

  v11 = sub_191C718DC;
  v12 = 0;
  v7 = MEMORY[0x1E69E9820];
  v8 = 1107296256;
  v9 = sub_191C7081C;
  v10 = &block_descriptor_24;
  v6 = _Block_copy(&v7);
  [v2 fetchProxyWithHandler:v4 errorHandler:v6];
  _Block_release(v6);
  _Block_release(v4);
}

uint64_t sub_191C7180C(uint64_t a1, uint64_t a2)
{
  sub_191C00E88(a1, v5);
  sub_191C71C64();
  if (swift_dynamicCast())
  {
    [v4 remote:a2 invalidateDatabaseAccessibilityAssertion:?];
    return swift_unknownObjectRelease();
  }

  else
  {
    result = sub_191CC7118();
    __break(1u);
  }

  return result;
}

void sub_191C718DC(void *a1)
{
  if (qword_1EADCA170 != -1)
  {
    swift_once();
  }

  v2 = sub_191CC6348();
  __swift_project_value_buffer(v2, qword_1EADE70B0);
  v3 = a1;
  oslog = sub_191CC6328();
  v4 = sub_191CC6C98();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = a1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_19197B000, oslog, v4, "Unable to invalidate DatabaseAccessibility Assertion due to  %{public}@", v5, 0xCu);
    sub_191C71CC8(v6, sub_191C6E604);
    MEMORY[0x193B047C0](v6, -1, -1);
    MEMORY[0x193B047C0](v5, -1, -1);
  }
}

NSXPCInterface_optional __swiftcall DatabaseAccessibilityAssertionStore.exportedInterface()()
{
  v0 = sub_191C6A2D4(&protocolRef_HKDatabaseAccessibilityAssertionClientInterface);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

NSXPCInterface_optional __swiftcall DatabaseAccessibilityAssertionStore.remoteInterface()()
{
  v0 = sub_191C6A2D4(&protocolRef_HKDatabaseAccessibilityAssertionServerInterface);
  result.value.super.isa = v0;
  result.is_nil = v1;
  return result;
}

id DatabaseAccessibilityAssertionStore.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DatabaseAccessibilityAssertionStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_191C71C64()
{
  result = qword_1EADCC5C8;
  if (!qword_1EADCC5C8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EADCC5C8);
  }

  return result;
}

uint64_t sub_191C71CC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void SleepingWristTemperatureBaselineCalculationState.SampleCountProgress.remainingSamplesRequired.getter()
{
  v1 = *v0;
  v2 = [objc_allocWithZone(HKQuantityType) initWithIdentifier_];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = [v2 _rollingBaselineConfiguration];

  if (!v4)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v5 = [v4 minimumSampleCount];

  if (__OFSUB__(v5, v1 + 1))
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }
}

HealthKit::SleepingWristTemperatureBaselineCalculationState::SampleCountProgress_optional __swiftcall SleepingWristTemperatureBaselineCalculationState.SampleCountProgress.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 0x302010004uLL >> (8 * rawValue);
  if (rawValue >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_191C71E34()
{
  v1 = *v0;
  sub_191CC74C8();
  MEMORY[0x193B02C70](v1 + 1);
  return sub_191CC7508();
}

uint64_t sub_191C71EAC()
{
  v1 = *v0;
  sub_191CC74C8();
  MEMORY[0x193B02C70](v1 + 1);
  return sub_191CC7508();
}

unint64_t SleepingWristTemperatureBaselineCalculationState.init(sampleCount:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x302010004uLL >> (8 * result);
  if (result >= 5)
  {
    LOBYTE(v2) = 5;
  }

  *a2 = v2;
  return result;
}

BOOL static SleepingWristTemperatureBaselineCalculationState.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 6:
      return v3 == 6;
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 4) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

uint64_t sub_191C72050()
{
  v1 = 0x7472617453746F6ELL;
  v2 = 0x6574656C706D6F63;
  if (*v0 != 2)
  {
    v2 = 0x616C696176616E75;
  }

  if (*v0)
  {
    v1 = 0x6572676F72506E69;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_191C720D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C73E00(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C72100(uint64_t a1)
{
  v2 = sub_191C72A04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C7213C(uint64_t a1)
{
  v2 = sub_191C72A04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C72178(uint64_t a1)
{
  v2 = sub_191C72908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C721B4(uint64_t a1)
{
  v2 = sub_191C72908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C721F0(uint64_t a1)
{
  v2 = sub_191C7295C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C7222C(uint64_t a1)
{
  v2 = sub_191C7295C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C72268(uint64_t a1)
{
  v2 = sub_191C729B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C722A4(uint64_t a1)
{
  v2 = sub_191C729B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C722E0(uint64_t a1)
{
  v2 = sub_191C728B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C7231C(uint64_t a1)
{
  v2 = sub_191C728B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SleepingWristTemperatureBaselineCalculationState.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_191C73240(0, &qword_1EADCC5D8, sub_191C728B4, &type metadata for SleepingWristTemperatureBaselineCalculationState.UnavailableCodingKeys, MEMORY[0x1E69E6F58]);
  v44 = *(v4 - 8);
  v45 = v4;
  v5 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v43 = &v34 - v7;
  sub_191C73240(0, &qword_1EADCC5E8, sub_191C72908, &type metadata for SleepingWristTemperatureBaselineCalculationState.CompleteCodingKeys, v3);
  v41 = v8;
  v39 = *(v8 - 8);
  v9 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v37 = &v34 - v11;
  sub_191C73240(0, &qword_1EADCC5F8, sub_191C7295C, &type metadata for SleepingWristTemperatureBaselineCalculationState.InProgressCodingKeys, v3);
  v42 = v12;
  v40 = *(v12 - 8);
  v13 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v38 = &v34 - v15;
  sub_191C73240(0, &qword_1EADCC608, sub_191C729B0, &type metadata for SleepingWristTemperatureBaselineCalculationState.NotStartedCodingKeys, v3);
  v35 = *(v16 - 8);
  v36 = v16;
  v17 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v34 - v19;
  sub_191C73240(0, &qword_1EADCC618, sub_191C72A04, &type metadata for SleepingWristTemperatureBaselineCalculationState.CodingKeys, v3);
  v22 = v21;
  v46 = *(v21 - 8);
  v23 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v34 - v25;
  v27 = *v1;
  v28 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C72A04();
  sub_191CC7548();
  switch(v27)
  {
    case 6:
      v51 = 3;
      sub_191C728B4();
      v30 = v43;
      sub_191CC72B8();
      (*(v44 + 8))(v30, v45);
      break;
    case 5:
      v50 = 2;
      sub_191C72908();
      v29 = v37;
      sub_191CC72B8();
      (*(v39 + 8))(v29, v41);
      break;
    case 4:
      v47 = 0;
      sub_191C729B0();
      sub_191CC72B8();
      (*(v35 + 8))(v20, v36);
      break;
    default:
      v49 = 1;
      sub_191C7295C();
      v31 = v38;
      sub_191CC72B8();
      v48 = v27;
      sub_191C72A58();
      v32 = v42;
      sub_191CC7348();
      (*(v40 + 8))(v31, v32);
      break;
  }

  return (*(v46 + 8))(v26, v22);
}

unint64_t sub_191C728B4()
{
  result = qword_1EADCC5E0;
  if (!qword_1EADCC5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC5E0);
  }

  return result;
}

unint64_t sub_191C72908()
{
  result = qword_1EADCC5F0;
  if (!qword_1EADCC5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC5F0);
  }

  return result;
}

unint64_t sub_191C7295C()
{
  result = qword_1EADCC600;
  if (!qword_1EADCC600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC600);
  }

  return result;
}

unint64_t sub_191C729B0()
{
  result = qword_1EADCC610;
  if (!qword_1EADCC610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC610);
  }

  return result;
}

unint64_t sub_191C72A04()
{
  result = qword_1EADCC620;
  if (!qword_1EADCC620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC620);
  }

  return result;
}

unint64_t sub_191C72A58()
{
  result = qword_1EADCC628;
  if (!qword_1EADCC628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC628);
  }

  return result;
}

uint64_t SleepingWristTemperatureBaselineCalculationState.init(from:)@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v57 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_191C73240(0, &qword_1EADCC630, sub_191C728B4, &type metadata for SleepingWristTemperatureBaselineCalculationState.UnavailableCodingKeys, MEMORY[0x1E69E6F48]);
  v54 = v4;
  v52 = *(v4 - 8);
  v5 = *(v52 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v61 = &v50 - v7;
  sub_191C73240(0, &qword_1EADCC638, sub_191C72908, &type metadata for SleepingWristTemperatureBaselineCalculationState.CompleteCodingKeys, v3);
  v56 = v8;
  v51 = *(v8 - 8);
  v9 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v60 = &v50 - v11;
  sub_191C73240(0, &qword_1EADCC640, sub_191C7295C, &type metadata for SleepingWristTemperatureBaselineCalculationState.InProgressCodingKeys, v3);
  v55 = v12;
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v59 = &v50 - v15;
  sub_191C73240(0, &qword_1EADCC648, sub_191C729B0, &type metadata for SleepingWristTemperatureBaselineCalculationState.NotStartedCodingKeys, v3);
  v17 = v16;
  v50 = *(v16 - 8);
  v18 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v50 - v20;
  sub_191C73240(0, &qword_1EADCC650, sub_191C72A04, &type metadata for SleepingWristTemperatureBaselineCalculationState.CodingKeys, v3);
  v23 = v22;
  v58 = *(v22 - 8);
  v24 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v22, v25);
  v27 = &v50 - v26;
  v28 = a1[3];
  v29 = a1[4];
  v63 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v28);
  sub_191C72A04();
  v30 = v62;
  sub_191CC7528();
  if (!v30)
  {
    v62 = v17;
    v31 = v59;
    v32 = v60;
    v33 = v61;
    v34 = v58;
    v35 = sub_191CC7298();
    v36 = (2 * *(v35 + 16)) | 1;
    v64 = v35;
    v65 = v35 + 32;
    v66 = 0;
    v67 = v36;
    v37 = sub_191C23F94();
    if (v37 == 4 || v66 != v67 >> 1)
    {
      v40 = sub_191CC7028();
      swift_allocError();
      v42 = v41;
      sub_191C2CAB4();
      v44 = *(v43 + 48);
      *v42 = &type metadata for SleepingWristTemperatureBaselineCalculationState;
      sub_191CC71D8();
      sub_191CC7008();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
      swift_willThrow();
      (*(v34 + 8))(v27, v23);
      swift_unknownObjectRelease();
    }

    else if (v37 > 1u)
    {
      if (v37 == 2)
      {
        v68 = 2;
        sub_191C72908();
        sub_191CC71C8();
        v46 = v57;
        (*(v51 + 8))(v32, v56);
        (*(v34 + 8))(v27, v23);
        swift_unknownObjectRelease();
        *v46 = 5;
      }

      else
      {
        v68 = 3;
        sub_191C728B4();
        sub_191CC71C8();
        v49 = v57;
        (*(v52 + 8))(v33, v54);
        (*(v34 + 8))(v27, v23);
        swift_unknownObjectRelease();
        *v49 = 6;
      }
    }

    else
    {
      v38 = v34;
      if (v37)
      {
        v68 = 1;
        sub_191C7295C();
        v47 = v31;
        sub_191CC71C8();
        sub_191C732A8();
        v48 = v55;
        sub_191CC7268();
        (*(v53 + 8))(v47, v48);
        (*(v38 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v39 = v68;
      }

      else
      {
        v68 = 0;
        sub_191C729B0();
        sub_191CC71C8();
        (*(v50 + 8))(v21, v62);
        (*(v34 + 8))(v27, v23);
        swift_unknownObjectRelease();
        v39 = 4;
      }

      *v57 = v39;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v63);
}

void sub_191C73240(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_191C732A8()
{
  result = qword_1EADCC658;
  if (!qword_1EADCC658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC658);
  }

  return result;
}

BOOL sub_191C732FC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  switch(v2)
  {
    case 6:
      return v3 == 6;
    case 5:
      return v3 == 5;
    case 4:
      return v3 == 4;
  }

  if ((v3 - 4) < 3)
  {
    return 0;
  }

  return v2 == v3;
}

id HKRollingBaselineConfiguration.baselineInclusionIntervalForNextExpectedSample(after:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v42 = a1;
  v5 = sub_191CC6288();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_191CC62A8();
  v38 = *(v11 - 8);
  v39 = v11;
  v12 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C47DA4(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v20 = v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_191CC6148();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v40 = v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v30 = v36 - v29;
  MEMORY[0x1EEE9AC00](v28, v31);
  v37 = v36 - v32;
  v41 = v3;
  result = [v3 minimumSampleCount];
  if (__OFSUB__(result, 1))
  {
    __break(1u);
  }

  else
  {
    v36[1] = a2;
    sub_191CC6258();
    (*(v6 + 104))(v10, *MEMORY[0x1E6969A48], v5);
    sub_191CC5CE8();
    sub_191CC6248();
    v36[0] = *(v22 + 8);
    (v36[0])(v30, v21);
    (*(v6 + 8))(v10, v5);
    (*(v38 + 8))(v15, v39);
    v34 = *(v22 + 48);
    if (v34(v20, 1, v21) == 1)
    {
      v35 = v37;
      sub_191CC5CE8();
      if (v34(v20, 1, v21) != 1)
      {
        sub_191C2CC84(v20);
      }
    }

    else
    {
      v35 = v37;
      (*(v22 + 32))(v37, v20, v21);
    }

    [v41 maximumWindowDuration];
    sub_191CC6098();
    (*(v22 + 16))(v40, v35, v21);
    sub_191CC5CC8();
    return (v36[0])(v35, v21);
  }

  return result;
}

unint64_t sub_191C737A0()
{
  result = qword_1EADCC660;
  if (!qword_1EADCC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC660);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepingWristTemperatureBaselineCalculationState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 4)
  {
    v8 = v7 - 3;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SleepingWristTemperatureBaselineCalculationState(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 6;
  if (a3 + 6 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFA)
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_191C7394C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_191C73960(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 3;
  }

  return result;
}

unint64_t sub_191C739E4()
{
  result = qword_1EADCC668;
  if (!qword_1EADCC668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC668);
  }

  return result;
}

unint64_t sub_191C73A3C()
{
  result = qword_1EADCC670;
  if (!qword_1EADCC670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC670);
  }

  return result;
}

unint64_t sub_191C73A94()
{
  result = qword_1EADCC678;
  if (!qword_1EADCC678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC678);
  }

  return result;
}

unint64_t sub_191C73AEC()
{
  result = qword_1EADCC680;
  if (!qword_1EADCC680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC680);
  }

  return result;
}

unint64_t sub_191C73B44()
{
  result = qword_1EADCC688;
  if (!qword_1EADCC688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC688);
  }

  return result;
}

unint64_t sub_191C73B9C()
{
  result = qword_1EADCC690;
  if (!qword_1EADCC690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC690);
  }

  return result;
}

unint64_t sub_191C73BF4()
{
  result = qword_1EADCC698;
  if (!qword_1EADCC698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC698);
  }

  return result;
}

unint64_t sub_191C73C4C()
{
  result = qword_1EADCC6A0;
  if (!qword_1EADCC6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC6A0);
  }

  return result;
}

unint64_t sub_191C73CA4()
{
  result = qword_1EADCC6A8;
  if (!qword_1EADCC6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC6A8);
  }

  return result;
}

unint64_t sub_191C73CFC()
{
  result = qword_1EADCC6B0;
  if (!qword_1EADCC6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC6B0);
  }

  return result;
}

unint64_t sub_191C73D54()
{
  result = qword_1EADCC6B8;
  if (!qword_1EADCC6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC6B8);
  }

  return result;
}

unint64_t sub_191C73DAC()
{
  result = qword_1EADCC6C0;
  if (!qword_1EADCC6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC6C0);
  }

  return result;
}

uint64_t sub_191C73E00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7472617453746F6ELL && a2 == 0xEA00000000006465;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572676F72506E69 && a2 == 0xEA00000000007373 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE800000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616C696176616E75 && a2 == 0xEB00000000656C62)
  {

    return 3;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_191C73F74()
{
  result = qword_1EADCC6C8;
  if (!qword_1EADCC6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC6C8);
  }

  return result;
}

id HKSleepDaySummaryCollection.init(sleepDaySummaries:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);
  v1 = sub_191CC68D8();

  v2 = [v0 initWithSleepDaySummaries_];

  return v2;
}

unint64_t HKSleepDaySummaryCollection.init(sleepDaySummaries:)(unint64_t result)
{
  v2 = result;
  if (result >> 62)
  {
    result = sub_191CC6EE8();
    if (result)
    {
      goto LABEL_3;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    *&v1[OBJC_IVAR___HKSleepDaySummaryCollection_sleepDaySummaries] = v2;
    v3 = objc_opt_self();
    sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);

    v4 = sub_191CC68D8();

    v5 = [v3 sleepMetricsForDaySummaries_];

    *&v1[OBJC_IVAR___HKSleepDaySummaryCollection_metrics] = v5;
    v6.receiver = v1;
    v6.super_class = HKSleepDaySummaryCollection;
    return objc_msgSendSuper2(&v6, sel_init);
  }

  __break(1u);
  return result;
}

uint64_t HKSleepDaySummaryCollection.isEqual(_:)(uint64_t a1)
{
  v2 = sub_191C0DAF0(a1, v10);
  if (!v11)
  {
    sub_191C74400(v10);
    goto LABEL_5;
  }

  type metadata accessor for HKSleepDaySummaryCollection(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v3 = [v9 sleepDaySummaries];
  sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);
  v4 = sub_191CC68E8();

  v5 = [v1 sleepDaySummaries];
  v6 = sub_191CC68E8();

  v7 = sub_191C74470(v4, v6);

  return v7 & 1;
}

uint64_t sub_191C74400(uint64_t a1)
{
  sub_191C0B13C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_191C74470(unint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if (a2 < 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x193B02790](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x193B02790](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_191CC6DA8();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_191CC6DA8();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_191CC6EE8();
  }

  result = sub_191CC6EE8();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t HKSleepDaySummaryCollection.hash.getter()
{
  v1 = [v0 sleepDaySummaries];
  sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);
  sub_191CC68E8();

  sub_191C74868();
  v2 = sub_191CC6998();

  return v2;
}

unint64_t sub_191C74868()
{
  result = qword_1EADCC6E0;
  if (!qword_1EADCC6E0)
  {
    sub_191BFAE6C(255, &qword_1EADCC4C0, off_1E7375508);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC6E0);
  }

  return result;
}

id HKSleepDaySummaryCollection.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

HealthKit::SleepClockTime __swiftcall SleepClockTime.init(hour:minute:seconds:)(Swift::Int hour, Swift::Int minute, Swift::Int seconds)
{
  *v3 = hour;
  v3[1] = minute;
  v3[2] = seconds;
  result.seconds = seconds;
  result.minute = minute;
  result.hour = hour;
  return result;
}

id sub_191C74A38@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_191CC6288();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_191CC62A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 8);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_191CC5CF8();
  v61 = *(v16 - 8);
  v62 = v16;
  v17 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_191CC6148();
  v63 = *(v21 - 8);
  v22 = *(v63 + 64);
  MEMORY[0x1EEE9AC00](v21, v23);
  v65 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 primarySleepPeriod];
  if (result)
  {
    v54 = v21;
    v55 = v11;
    v59 = v2;
    v26 = result;
    v27 = [result segments];

    sub_191BFAE6C(0, &qword_1EADCC6F0, off_1E7375570);
    v28 = sub_191CC68E8();

    v60 = a1;
    v57 = v5;
    v58 = v4;
    v56 = v9;
    v64 = v10;
    if (v28 >> 62)
    {
      goto LABEL_18;
    }

    for (i = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_191CC6EE8())
    {
      v30 = 0;
      while (1)
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v31 = MEMORY[0x193B02790](v30, v28);
        }

        else
        {
          if (v30 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_17;
          }

          v31 = *(v28 + 8 * v30 + 32);
        }

        v32 = v31;
        v33 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if ([v31 category] != 2 || objc_msgSend(v32, sel_category))
        {

          v34 = [v32 dateInterval];
          sub_191CC5CA8();

          sub_191CC5CE8();
          (*(v61 + 8))(v20, v62);
          v35 = v59;
          v36 = [v59 calendar];
          sub_191CC6238();

          v37 = *MEMORY[0x1E6969A58];
          v39 = v56;
          v38 = v57;
          v53 = *(v57 + 104);
          v40 = v58;
          v53(v56, v37, v58);
          v41 = sub_191CC6298();
          v42 = *(v38 + 8);
          v61 = v41;
          v62 = v42;
          v42(v39, v40);
          v43 = *(v55 + 1);
          v43(v15, v64);
          v55 = v43;
          v44 = [v35 calendar];
          sub_191CC6238();

          v45 = v53;
          v53(v39, *MEMORY[0x1E6969A88], v40);
          v57 = sub_191CC6298();
          v62(v39, v40);
          v43(v15, v64);
          v46 = [v59 calendar];
          sub_191CC6238();

          v45(v39, *MEMORY[0x1E6969A98], v40);
          v47 = v65;
          v48 = sub_191CC6298();

          v62(v39, v40);
          v55(v15, v64);
          result = (*(v63 + 8))(v47, v54);
          v49 = v60;
          v50 = v57;
          *v60 = v61;
          v49[1] = v50;
          v49[2] = v48;
          *(v49 + 24) = 0;
          return result;
        }

        ++v30;
        if (v33 == i)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      ;
    }

LABEL_19:

    v51 = v60;
    *v60 = 0;
    v51[1] = 0;
    v51[2] = 0;
    *(v51 + 24) = 1;
  }

  else
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
  }

  return result;
}

id sub_191C7501C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_191CC6288();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4, v7);
  v9 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_191CC62A8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v67 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_191CC5CF8();
  v66 = *(v15 - 8);
  v16 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v15, v17);
  v65 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_191CC6148();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v69 = &v56 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [v2 primarySleepPeriod];
  if (!result)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 1;
    return result;
  }

  v58 = v15;
  v59 = v20;
  v62 = v5;
  v25 = result;
  v26 = [result segments];

  sub_191BFAE6C(0, &qword_1EADCC6F0, off_1E7375570);
  v27 = sub_191CC68E8();

  v70 = v27;
  v63 = v4;
  v64 = a1;
  v68 = v10;
  v60 = v19;
  v61 = v11;
  if (v27 >> 62)
  {
    goto LABEL_25;
  }

  v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    while (1)
    {
      if (!v28)
      {
        v35 = 0;
        goto LABEL_18;
      }

      if (__OFSUB__(v28--, 1))
      {
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if ((v27 & 0xC000000000000001) != 0)
      {
        break;
      }

      if ((v28 & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      if (v28 < *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v30 = *(v27 + 32 + 8 * v28);
        goto LABEL_10;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      v28 = sub_191CC6EE8();
    }

    v30 = MEMORY[0x193B02790](v28, v27);
LABEL_10:
    v31 = v30;
    if ([v30 category] != 2)
    {
      break;
    }

    v32 = [v31 category];

    if (v32)
    {
      goto LABEL_17;
    }
  }

LABEL_17:
  MEMORY[0x1EEE9AC00](v33, v34);
  *(&v56 - 2) = &v70;
  v71 = v28;
  sub_191C7595C(&v71, &v72);
  v35 = v72;
LABEL_18:

  if (v35)
  {
    v36 = [v35 dateInterval];
    v57 = v35;
    v37 = v36;
    v38 = v65;
    sub_191CC5CA8();

    sub_191CC5CB8();
    (*(v66 + 8))(v38, v58);
    v39 = [v2 calendar];
    v40 = v67;
    sub_191CC6238();

    v41 = *MEMORY[0x1E6969A58];
    v43 = v62;
    v42 = v63;
    v58 = *(v62 + 104);
    v58(v9, v41, v63);
    v66 = sub_191CC6298();
    v44 = *(v43 + 8);
    v44(v9, v42);
    v56 = v2;
    v62 = *(v61 + 8);
    v45 = v68;
    (v62)(v40, v68);
    v46 = [v2 calendar];
    sub_191CC6238();

    v47 = v58;
    v58(v9, *MEMORY[0x1E6969A88], v42);
    v65 = sub_191CC6298();
    v44(v9, v42);
    v48 = v45;
    v49 = v62;
    (v62)(v40, v48);
    v50 = [v56 calendar];
    sub_191CC6238();

    v47(v9, *MEMORY[0x1E6969A98], v42);
    v51 = v69;
    v52 = sub_191CC6298();

    v44(v9, v42);
    v49(v40, v68);
    result = (*(v59 + 8))(v51, v60);
    v53 = v64;
    v54 = v65;
    *v64 = v66;
    v53[1] = v54;
    v53[2] = v52;
    *(v53 + 24) = 0;
  }

  else
  {
    v55 = v64;
    *v64 = 0;
    v55[1] = 0;
    v55[2] = 0;
    *(v55 + 24) = 1;
  }

  return result;
}

uint64_t sub_191C75698@<X0>(void (*a1)(void *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  v5 = [v2 sleepDaySummaries];
  sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);
  v6 = sub_191CC68E8();

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_22:
    v9 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

LABEL_21:
  v7 = sub_191CC6EE8();
  if (!v7)
  {
    goto LABEL_22;
  }

LABEL_3:
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  do
  {
    v10 = v8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x193B02790](v10, v6);
      }

      else
      {
        if (v10 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v11 = *(v6 + 8 * v10 + 32);
      }

      v12 = v11;
      v8 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      a1(v21);

      if ((v22 & 1) == 0)
      {
        break;
      }

      ++v10;
      if (v8 == v7)
      {
        goto LABEL_23;
      }
    }

    v13 = v21[0];
    v18 = v21[2];
    v19 = v21[1];
    v20 = a2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_191C07970(0, *(v9 + 2) + 1, 1, v9);
    }

    v15 = *(v9 + 2);
    v14 = *(v9 + 3);
    if (v15 >= v14 >> 1)
    {
      v9 = sub_191C07970((v14 > 1), v15 + 1, 1, v9);
    }

    *(v9 + 2) = v15 + 1;
    v16 = &v9[24 * v15];
    *(v16 + 4) = v13;
    *(v16 + 5) = v19;
    *(v16 + 6) = v18;
    a2 = v20;
  }

  while (v8 != v7);
LABEL_23:

  static HKSleepClockTimeAveraging.averageClockTimeAsleep(for:)(v9, a2);
}

uint64_t getEnumTagSinglePayload for SleepClockTime(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SleepClockTime(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

unint64_t sub_191C758F0@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X1>, unint64_t *a3@<X8>)
{
  result = *a1;
  v5 = *a2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x193B02790](result);
    goto LABEL_5;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result < *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v5 + 8 * result + 32);
LABEL_5:
    *a3 = result;
    return result;
  }

  __break(1u);
  return result;
}

id HKAppleSleepingBreathingDisturbancesClassification.init(classifying:)(void *a1)
{
  v1 = a1;
  v2 = HKAppleSleepingBreathingDisturbancesClassificationForQuantity(a1);
  v3 = v2;
  if (v2)
  {
    v4 = [v2 integerValue];

    v1 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

unint64_t sub_191C75A10()
{
  result = qword_1EADCC6F8;
  if (!qword_1EADCC6F8)
  {
    sub_191C75A68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC6F8);
  }

  return result;
}

void sub_191C75A68()
{
  if (!qword_1EADCC700)
  {
    type metadata accessor for HKAppleSleepingBreathingDisturbancesClassification(255);
    v0 = sub_191CC6978();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCC700);
    }
  }
}

BOOL HKAppleWalkingSteadinessClassification.init(for:)(HKQuantity *a1)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = swift_slowAlloc();
  v9[0] = 0;
  result = HKAppleWalkingSteadinessClassificationForQuantity(a1, v3, v9);
  v5 = v9[0];
  if (result)
  {
    v1 = *v3;
    v6 = v9[0];
    MEMORY[0x193B047C0](v3, -1, -1);

LABEL_5:
    v8 = *MEMORY[0x1E69E9840];
    return v1;
  }

  if (v9[0])
  {
    swift_willThrow();
    v7 = v5;
    MEMORY[0x193B047C0](v3, -1, -1);

    goto LABEL_5;
  }

  __break(1u);
  return result;
}

HKQuantity *HKAppleWalkingSteadinessClassification.minimum.getter(HKAppleWalkingSteadinessClassification a1)
{
  v1 = HKAppleWalkingSteadinessMinimumQuantityForClassification(a1);

  return v1;
}

HKQuantity *HKAppleWalkingSteadinessClassification.maximum.getter(HKAppleWalkingSteadinessClassification a1)
{
  v1 = HKAppleWalkingSteadinessMaximumQuantityForClassification(a1);

  return v1;
}

unint64_t sub_191C75C30()
{
  result = qword_1EADCC708;
  if (!qword_1EADCC708)
  {
    sub_191C75C88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC708);
  }

  return result;
}

void sub_191C75C88()
{
  if (!qword_1EADCC710)
  {
    type metadata accessor for HKAppleWalkingSteadinessClassification(255);
    v0 = sub_191CC6978();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCC710);
    }
  }
}

id HKQuantitySeriesSampleQueryDescriptor.predicate.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  *a1 = *v1;
  a1[1] = v2;
  v3 = v2;

  return v5;
}

void HKQuantitySeriesSampleQueryDescriptor.predicate.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 24);
  *(a1 + 8) = *(v1 + 32);
}

__n128 HKQuantitySeriesSampleQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = *(v1 + 32);

  result = v5;
  *(v1 + 24) = v5;
  *(v1 + 40) = v2;
  return result;
}

uint64_t *HKQuantitySeriesSampleQueryDescriptor.init(predicate:options:)@<X0>(uint64_t *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  v4 = result[1];
  v5 = *a2;
  a3[4] = 0;
  a3[5] = -1;
  *a3 = v3;
  a3[1] = v4;
  a3[2] = v5;
  a3[3] = 0;
  return result;
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.Result.dateInterval.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0) + 20);
  v4 = sub_191CC5CF8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *HKQuantitySeriesSampleQueryDescriptor.Result.sample.getter()
{
  v1 = *(v0 + *(type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0) + 24));
  v2 = v1;
  return v1;
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.Result.init(quantity:dateInterval:sample:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  v7 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
  v8 = *(v7 + 20);
  v9 = sub_191CC5CF8();
  result = (*(*(v9 - 8) + 32))(&a4[v8], a2, v9);
  *&a4[*(v7 + 24)] = a3;
  return result;
}

void HKQuantitySeriesSampleQueryDescriptor.Result.hash(into:)()
{
  v1 = v0;
  v2 = *v0;
  sub_191CC6DB8();
  v3 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
  v4 = *(v3 + 20);
  sub_191CC5CF8();
  sub_191C78158(&qword_1EADCC718, MEMORY[0x1E6968130]);
  sub_191CC66A8();
  v5 = *(v1 + *(v3 + 24));
  if (v5)
  {
    sub_191CC74E8();
    v6 = v5;
    sub_191CC6DB8();
  }

  else
  {
    sub_191CC74E8();
  }
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.Result.hashValue.getter()
{
  v1 = v0;
  sub_191CC74C8();
  v2 = *v0;
  sub_191CC6DB8();
  v3 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
  v4 = *(v3 + 20);
  sub_191CC5CF8();
  sub_191C78158(&qword_1EADCC718, MEMORY[0x1E6968130]);
  sub_191CC66A8();
  v5 = *(v1 + *(v3 + 24));
  sub_191CC74E8();
  if (v5)
  {
    v6 = v5;
    sub_191CC6DB8();
  }

  return sub_191CC7508();
}

uint64_t sub_191C761F4(uint64_t a1)
{
  v3 = v1;
  sub_191CC74C8();
  v4 = *v1;
  sub_191CC6DB8();
  v5 = *(a1 + 20);
  sub_191CC5CF8();
  sub_191C78158(&qword_1EADCC718, MEMORY[0x1E6968130]);
  sub_191CC66A8();
  v6 = *(v3 + *(a1 + 24));
  sub_191CC74E8();
  if (v6)
  {
    v7 = v6;
    sub_191CC6DB8();
  }

  return sub_191CC7508();
}

void sub_191C762DC(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v2;
  sub_191CC6DB8();
  v6 = *(a2 + 20);
  sub_191CC5CF8();
  sub_191C78158(&qword_1EADCC718, MEMORY[0x1E6968130]);
  sub_191CC66A8();
  v7 = *(v4 + *(a2 + 24));
  if (v7)
  {
    sub_191CC74E8();
    v8 = v7;
    sub_191CC6DB8();
  }

  else
  {
    sub_191CC74E8();
  }
}

uint64_t sub_191C763E4(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  sub_191CC74C8();
  v5 = *v2;
  sub_191CC6DB8();
  v6 = *(a2 + 20);
  sub_191CC5CF8();
  sub_191C78158(&qword_1EADCC718, MEMORY[0x1E6968130]);
  sub_191CC66A8();
  v7 = *(v4 + *(a2 + 24));
  sub_191CC74E8();
  if (v7)
  {
    v8 = v7;
    sub_191CC6DB8();
  }

  return sub_191CC7508();
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.Results.Iterator.resultIterator.getter()
{
  v1 = (v0 + *(type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Results.Iterator(0) + 20));
  v2 = *v1;
  v3 = v1[1];
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.Results.Iterator.resultIterator.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Results.Iterator(0) + 20));
  v6 = *v5;

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.Results.Iterator.next()(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  sub_191C77D64(0);
  v4 = *(*(v3 - 8) + 64) + 15;
  v2[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191C76620, 0, 0);
}

uint64_t sub_191C76620()
{
  v1 = v0[12];
  v2 = HKQuantitySeriesSampleQueryDescriptor.Results.Iterator.resultIterator.modify();
  v4 = v2;
  v5 = *v3;
  if (!*v3)
  {
    v10 = v0[13];
    (v2)(v0 + 2, 0);
    v11 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
    goto LABEL_8;
  }

  v6 = *(v5 + 16);
  v7 = v3[1];
  if (v7 == v6)
  {
    v8 = v0[13];
    v9 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  else
  {
    if (v7 >= v6)
    {
      __break(1u);
      return MEMORY[0x1EEE6DB98](v2, v3);
    }

    v12 = v0[13];
    v13 = v3;
    v9 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
    v14 = *(v9 - 8);
    sub_191C77D98(v5 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v7, v12);
    v13[1] = v7 + 1;
    (*(v14 + 56))(v12, 0, 1, v9);
  }

  v15 = v0[13];
  (v4)(v0 + 2, 0);
  type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
  v16 = *(v9 - 8);
  if ((*(v16 + 48))(v15, 1, v9) == 1)
  {
LABEL_8:
    sub_191C78654(v0[13], sub_191C77D64);
    v17 = *(MEMORY[0x1E69E87B0] + 4);
    v18 = swift_task_alloc();
    v0[14] = v18;
    sub_191C77EC4(0, &qword_1EADCC728, MEMORY[0x1E69E87B8]);
    v3 = v19;
    *v18 = v0;
    v18[1] = sub_191C76988;
    v20 = v0[12];
    v2 = (v0 + 10);

    return MEMORY[0x1EEE6DB98](v2, v3);
  }

  v21 = v0[11];
  sub_191C77E60(v0[13], v21);
  (*(v16 + 56))(v21, 0, 1, v9);
  v22 = v0[13];

  v23 = v0[1];

  return v23();
}

uint64_t sub_191C76988()
{
  v2 = *(*v1 + 112);
  v5 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = sub_191BFB724;
  }

  else
  {
    v3 = sub_191C76A9C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t (*sub_191C76A9C())()
{
  v1 = v0[12];
  v2 = v0[10];
  v3 = (v1 + *(type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Results.Iterator(0) + 20));
  v4 = *v3;

  *v3 = v2;
  v3[1] = 0;
  result = HKQuantitySeriesSampleQueryDescriptor.Results.Iterator.resultIterator.modify();
  v7 = result;
  v8 = *v6;
  if (*v6)
  {
    v9 = *(v8 + 16);
    v10 = v6[1];
    if (v10 == v9)
    {
      v11 = v0[11];
      v12 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
      (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
    }

    else
    {
      if (v10 >= v9)
      {
        __break(1u);
        return result;
      }

      v15 = v0[11];
      v16 = v6;
      v17 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
      v18 = *(v17 - 8);
      sub_191C77D98(v8 + ((*(v18 + 80) + 32) & ~*(v18 + 80)) + *(v18 + 72) * v10, v15);
      v16[1] = v10 + 1;
      (*(v18 + 56))(v15, 0, 1, v17);
    }

    (v7)(v0 + 6, 0);
  }

  else
  {
    v13 = v0[11];
    (result)(v0 + 6, 0);
    v14 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
    (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  }

  v19 = v0[13];

  v20 = v0[1];

  return v20();
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.Results.Iterator.nextResultIterator()()
{
  v1 = *(MEMORY[0x1E69E87B0] + 4);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  sub_191C77EC4(0, &qword_1EADCC728, MEMORY[0x1E69E87B8]);
  *v2 = v0;
  v2[1] = sub_191C012B8;

  return MEMORY[0x1EEE6DB98](v0 + 16, v3);
}

uint64_t sub_191C76D80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_191BFD978;

  return HKQuantitySeriesSampleQueryDescriptor.Results.Iterator.next()(a1);
}

uint64_t sub_191C76E18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_191BFDBF4;

  return HKQuantitySeriesSampleQueryDescriptor.Results.Iterator.next()(a1);
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.Results.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  sub_191C77EC4(0, &qword_1EADCC730, MEMORY[0x1E69E87C8]);
  sub_191CC6AB8();
  result = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Results.Iterator(0);
  v3 = (a1 + *(result + 20));
  *v3 = 0;
  v3[1] = 0;
  return result;
}

uint64_t sub_191C76F18@<X0>(uint64_t a1@<X8>)
{
  sub_191C77EC4(0, &qword_1EADCC730, MEMORY[0x1E69E87C8]);
  sub_191CC6AB8();
  sub_191C78654(v1, type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Results);
  result = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Results.Iterator(0);
  v4 = (a1 + *(result + 20));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t sub_191C76F94(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8, v8);
  v10 = &v19[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (!*(v2 + 16))
  {
    v11 = sub_191C07A90(0, a2 & ~(a2 >> 63), 0, MEMORY[0x1E69E7CC0]);
    v12 = *(v2 + 16);
    *(v2 + 16) = v11;
  }

  sub_191C77D98(a1, v10);
  result = swift_beginAccess();
  v14 = *(v2 + 16);
  if (v14)
  {
    v15 = *(v2 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + 16) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = sub_191C07A90(0, v14[2] + 1, 1, v14);
      *(v2 + 16) = v14;
    }

    v18 = v14[2];
    v17 = v14[3];
    if (v18 >= v17 >> 1)
    {
      v14 = sub_191C07A90(v17 > 1, v18 + 1, 1, v14);
    }

    v14[2] = v18 + 1;
    sub_191C77E60(v10, v14 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18);
    *(v2 + 16) = v14;
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_191C77144()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t HKQuantitySeriesSampleQueryDescriptor.results(for:)(void *a1)
{
  sub_191C77EC4(0, &qword_1EADCC738, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v16[-v8];
  v10 = v1[1];
  v21[0] = *v1;
  v21[1] = v10;
  v21[2] = v1[2];
  type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.ResultBatch();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  v13 = v1[1];
  *(v12 + 16) = *v1;
  *(v12 + 32) = v13;
  *(v12 + 48) = v1[2];
  *(v12 + 64) = v11;
  *(v12 + 72) = a1;
  v17 = sub_191C77F60;
  v18 = v12;
  v19 = a1;
  sub_191BFAD0C();
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8790], v4);
  sub_191C77F78(v21, v20);

  v14 = a1;
  sub_191CC6AF8();
}

id sub_191C77344(uint64_t a1, uint64_t *a2, uint64_t a3, void *a4)
{
  sub_191C77EC4(0, &qword_1EADCA7C8, MEMORY[0x1E69E87A0]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8, v12);
  v14 = &v30[-v13 - 8];
  v15 = *a2;
  v29 = a2[1];
  objc_opt_self();
  v16 = swift_dynamicCastObjCClassUnconditional();
  (*(v10 + 16))(v14, a1, v9);
  v17 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a3;
  (*(v10 + 32))(v18 + v17, v14, v9);
  *(v18 + ((v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
  v19 = objc_allocWithZone(HKQuantitySeriesSampleQuery);
  v34 = sub_191C786B4;
  v35 = v18;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v32 = sub_191C77B78;
  v33 = &block_descriptor_19;
  v20 = _Block_copy(&aBlock);

  v21 = a4;
  v22 = [v19 initWithQuantityType:v16 predicate:v29 quantityBatchHandler:v20];
  _Block_release(v20);

  v23 = a2[2];
  [v22 setIncludeSample_];
  [v22 setOrderByQuantitySampleStartDate_];
  aBlock = *(a2 + 3);
  v32 = a2[5];
  v24 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    v25 = v22;
    sub_191BFC340(&aBlock, v30);
    v24 = sub_191CC6778();
  }

  else
  {
    v26 = v22;
  }

  v27 = v32;
  [v22 setDebugIdentifier_];

  [v22 setQualityOfService_];
  sub_191BFC2EC(&aBlock);
  return v22;
}

uint64_t sub_191C77634(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, void *a6, uint64_t a7, uint64_t a8, id a9)
{
  v46 = a8;
  v41 = a1;
  v42 = a6;
  v47 = a5;
  sub_191C77EC4(0, &qword_1EADCC7D8, MEMORY[0x1E69E8780]);
  v44 = *(v13 - 8);
  v45 = v13;
  v14 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v43 = &v40 - v16;
  v17 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17, v19);
  v21 = (&v40 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = sub_191CC6148();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v26 = MEMORY[0x1EEE9AC00](v22, v25);
  v28 = &v40 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v26, v29);
  v32 = &v40 - v31;
  if (a2)
  {
    v33 = a2;
    sub_191CC6058();
    (*(v23 + 16))(v28, v32, v22);
    v34 = v21 + *(v17 + 20);
    sub_191CC5CD8();
    *v21 = v33;
    *(v21 + *(v17 + 24)) = a3;
    v35 = a3;
    sub_191C76F94(v21, a4);
    sub_191C78654(v21, type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result);
    result = (*(v23 + 8))(v32, v22);
  }

  v36 = v47;
  if (!a4 || (v47 & 1) != 0)
  {
    swift_beginAccess();
    if (*(a7 + 16))
    {
      v48 = *(a7 + 16);
      sub_191C77EC4(0, &qword_1EADCA7C8, MEMORY[0x1E69E87A0]);

      v37 = v43;
      sub_191CC6A88();
      (*(v44 + 8))(v37, v45);
      v38 = *(a7 + 16);
    }

    *(a7 + 16) = 0;

    if (v36)
    {
      [a9 stopQuery_];
      v48 = v42;
      v39 = v42;
      sub_191C77EC4(0, &qword_1EADCA7C8, MEMORY[0x1E69E87A0]);
      return sub_191CC6A98();
    }
  }

  return result;
}

uint64_t sub_191C779B0(void *a1)
{
  sub_191C77EC4(0, &qword_1EADCC738, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v16[-v8];
  v10 = v1[1];
  v21[0] = *v1;
  v21[1] = v10;
  v21[2] = v1[2];
  type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.ResultBatch();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = swift_allocObject();
  v13 = v1[1];
  *(v12 + 16) = *v1;
  *(v12 + 32) = v13;
  *(v12 + 48) = v1[2];
  *(v12 + 64) = v11;
  *(v12 + 72) = a1;
  v17 = sub_191C787E0;
  v18 = v12;
  v19 = a1;
  sub_191BFAD0C();
  (*(v5 + 104))(v9, *MEMORY[0x1E69E8790], v4);
  sub_191C77F78(v21, v20);

  v14 = a1;
  sub_191CC6AF8();
}

void sub_191C77B78(uint64_t a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6, void *a7, double a8, double a9)
{
  v18 = *(a1 + 32);
  v17 = *(a1 + 40);

  v22 = a2;
  v19 = a3;
  v20 = a4;
  v21 = a7;
  v18(v22, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t _s9HealthKit37HKQuantitySeriesSampleQueryDescriptorV6ResultV2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t *a2)
{
  sub_191BFAE6C(0, &qword_1EADCC5C0, 0x1E69E58C0);
  v4 = *a1;
  v5 = *a2;
  if (sub_191CC6DA8())
  {
    v6 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
    v7 = *(v6 + 20);
    if (sub_191CC5C98())
    {
      v8 = *(v6 + 24);
      v9 = *(a1 + v8);
      v10 = *(a2 + v8);
      if (v9)
      {
        if (v10)
        {
          sub_191BFAE6C(0, &qword_1EADCA928, off_1E7375390);
          v11 = v10;
          v12 = v9;
          v13 = sub_191CC6DA8();

          if (v13)
          {
            return 1;
          }
        }
      }

      else if (!v10)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_191C77D98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_191C77DFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_191C77E60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HKQuantitySeriesSampleQueryDescriptor.Result(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_191C77EC4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    sub_191BFAD0C();
    v7 = v6;
    v8 = sub_191BF92E0();
    v9 = a3(a1, v7, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_191C77FB4()
{
  result = qword_1EADCC740;
  if (!qword_1EADCC740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC740);
  }

  return result;
}

unint64_t sub_191C7800C()
{
  result = qword_1EADCC748;
  if (!qword_1EADCC748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC748);
  }

  return result;
}

unint64_t sub_191C78064()
{
  result = qword_1EADCC750;
  if (!qword_1EADCC750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC750);
  }

  return result;
}

unint64_t sub_191C780BC()
{
  result = qword_1EADCC758;
  if (!qword_1EADCC758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC758);
  }

  return result;
}

uint64_t sub_191C78158(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_191C78298()
{
  sub_191BFAE6C(319, &qword_1EADCC788, off_1E7375378);
  if (v0 <= 0x3F)
  {
    sub_191CC5CF8();
    if (v1 <= 0x3F)
    {
      sub_191C78344();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_191C78344()
{
  if (!qword_1EADCC790)
  {
    sub_191BFAE6C(255, &qword_1EADCA928, off_1E7375390);
    v0 = sub_191CC6DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCC790);
    }
  }
}

void sub_191C783D4()
{
  sub_191C77DFC(319, &qword_1EADCC798, sub_191BFAD0C, type metadata accessor for HKQueryAsyncStream);
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_191C78498()
{
  sub_191C77EC4(319, &qword_1EADCC728, MEMORY[0x1E69E87B8]);
  if (v0 <= 0x3F)
  {
    sub_191C77DFC(319, &qword_1EADCC7C0, sub_191C78568, MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_191C78568()
{
  if (!qword_1EADCC7C8)
  {
    sub_191BFAD0C();
    sub_191C78158(&qword_1EADCC7D0, sub_191BFAD0C);
    v0 = sub_191CC7108();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCC7C8);
    }
  }
}

uint64_t objectdestroyTm_2()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_191C78654(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_191C786B4(uint64_t a1, void *a2, void *a3, uint64_t a4, int a5, void *a6)
{
  sub_191C77EC4(0, &qword_1EADCA7C8, MEMORY[0x1E69E87A0]);
  v14 = (*(*(v13 - 8) + 80) + 24) & ~*(*(v13 - 8) + 80);
  return sub_191C77634(a1, a2, a3, a4, a5, a6, *(v6 + 16), v6 + v14, *(v6 + ((*(*(v13 - 8) + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id static HKCategoryValuePredicateProviding<>.predicateForSamples(_:value:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = objc_opt_self();
  v7 = *(a4 + 16);
  sub_191CC6878();
  v8 = [v6 predicateForCategorySamplesWithOperatorType:a1 value:v10];

  return v8;
}

id static HKCategoryValuePredicateProviding<>.predicateForSamples(equalTo:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_opt_self();
  v16[5] = a1;
  v16[2] = a2;
  v16[3] = a3;
  v7 = *(a3 + 8);
  v8 = sub_191CC6B88();
  v9 = sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_191C69C84(sub_191C789D0, v16, v8, v9, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v11);
  sub_191C7B380(v12);

  sub_191C3E29C(&qword_1EADCC7E0, &qword_1EADCD140, 0x1E696AD98);
  v13 = sub_191CC6B28();

  v14 = [v6 predicateForCategorySamplesEqualToValues_];

  return v14;
}

id sub_191C789D0@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(*(v1 + 24) + 16);
  sub_191CC6878();
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *a1 = result;
  return result;
}

uint64_t sub_191C78A3C(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_191CC6EF8();

    if (v9)
    {

      sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_191CC6EE8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_191C8F6D8(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_191C796E8(v22 + 1, &qword_1EADCC818, &qword_1EADCD140, 0x1E696AD98, &qword_1EADCC7E0);
    }

    v20 = v8;
    sub_191C910F8();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
  v11 = *(v6 + 40);
  v12 = sub_191CC6D98();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_191C79FEC(v20, v14, isUniquelyReferenced_nonNull_native, &qword_1EADCC818, &qword_1EADCD140, 0x1E696AD98, &qword_1EADCC7E0);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_191CC6DA8();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_191C78CB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a1;
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord();
  v6 = *(DatabaseAccessibilityAssertionsRecord - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord - 8, v8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v2;
  v12 = *(*v2 + 40);
  sub_191CC74C8();
  sub_191CC61A8();
  sub_191C7B718(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
  sub_191CC66A8();
  v13 = sub_191CC7508();
  v14 = -1 << *(v11 + 32);
  v15 = v13 & ~v14;
  if ((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v17 = *(v6 + 72);
    while (1)
    {
      sub_191C7B914(*(v11 + 48) + v17 * v15, v10);
      v18 = sub_191CC6178();
      sub_191C7B9DC(v10);
      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v11 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_191C7B9DC(a2);
    sub_191C7B914(*(v11 + 48) + v17 * v15, v23);
    return 0;
  }

  else
  {
LABEL_5:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_191C7B914(a2, v10);
    v24 = *v3;
    sub_191C79D9C(v10, v15, isUniquelyReferenced_nonNull_native);
    v21 = v23;
    *v3 = v24;
    sub_191C7B978(a2, v21);
    return 1;
  }
}

uint64_t sub_191C78EC4(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_191CC6EF8();

    if (v9)
    {

      sub_191BFAE6C(0, &unk_1EADCD0A0, off_1E7374DD0);
      swift_dynamicCast();
      result = 0;
      *a1 = v25;
      return result;
    }

    result = sub_191CC6EE8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v21 = sub_191C8F8D8(v7, result + 1);
    v22 = *(v21 + 16);
    if (*(v21 + 24) <= v22)
    {
      sub_191C796E8(v22 + 1, &unk_1EADCD0C0, &unk_1EADCD0A0, off_1E7374DD0, &qword_1EADCC800);
    }

    v20 = v8;
    sub_191C910F8();

    *v3 = v21;
    goto LABEL_16;
  }

  sub_191BFAE6C(0, &unk_1EADCD0A0, off_1E7374DD0);
  v11 = *(v6 + 40);
  v12 = sub_191CC6D98();
  v13 = -1 << *(v6 + 32);
  v14 = v12 & ~v13;
  if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
LABEL_11:
    v18 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v3;
    v20 = a2;
    sub_191C79FEC(v20, v14, isUniquelyReferenced_nonNull_native, &unk_1EADCD0C0, &unk_1EADCD0A0, off_1E7374DD0, &qword_1EADCC800);
    *v3 = v26;
LABEL_16:
    *a1 = v20;
    return 1;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v6 + 48) + 8 * v14);
    v17 = sub_191CC6DA8();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v6 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v23 = *(*(v6 + 48) + 8 * v14);
  *a1 = v23;
  v24 = v23;
  return 0;
}

uint64_t sub_191C7913C(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  sub_191CC74C8();
  MEMORY[0x193B02C70](a2);
  v7 = sub_191CC7508();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_191C7A194(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_191C79234(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  v8 = sub_191CC6F48();
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      sub_191C7B610(*(v6 + 48) + 40 * v10, v18);
      v12 = MEMORY[0x193B026F0](v18, a2);
      sub_191C7B66C(v18);
      if (v12)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_191C7B66C(a2);
    sub_191C7B610(*(v6 + 48) + 40 * v10, a1);
    return 0;
  }

  else
  {
LABEL_5:
    v13 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_191C7B610(a2, v18);
    v17 = *v3;
    sub_191C7A2F0(v18, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v17;
    v15 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v15;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_191C793A4(uint64_t a1)
{
  v2 = v1;
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord();
  v37 = *(DatabaseAccessibilityAssertionsRecord - 8);
  v5 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord - 8, v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_191C7B880();
  result = sub_191CC6F78();
  v12 = result;
  if (*(v9 + 16))
  {
    v35 = v2;
    v36 = v9;
    v13 = 0;
    v14 = (v9 + 56);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v9 + 48);
      v25 = *(v37 + 72);
      sub_191C7B978(v24 + v25 * (v21 | (v13 << 6)), v8);
      v26 = *(v12 + 40);
      sub_191CC74C8();
      sub_191CC61A8();
      sub_191C7B718(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
      sub_191CC66A8();
      result = sub_191CC7508();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_191C7B978(v8, *(v12 + 48) + v20 * v25);
      ++*(v12 + 16);
      v9 = v36;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v9 + 32);
    if (v34 >= 64)
    {
      bzero(v14, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v34;
    }

    v2 = v35;
    *(v9 + 16) = 0;
  }

  *v2 = v12;
  return result;
}

uint64_t sub_191C796E8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_191C7B7F4(0, a2, a3, a4, a5);
  result = sub_191CC6F78();
  v10 = result;
  if (*(v7 + 16))
  {
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = *(*(v7 + 48) + 8 * (v19 | (v11 << 6)));
      v23 = *(v10 + 40);
      result = sub_191CC6D98();
      v24 = -1 << *(v10 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v17 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v17 + 8 * v26);
          if (v30 != -1)
          {
            v18 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v25) & ~*(v17 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v22;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v31 = 1 << *(v7 + 32);
    if (v31 >= 64)
    {
      bzero((v7 + 56), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v31;
    }

    *(v7 + 16) = 0;
  }

  *v6 = v10;
  return result;
}

uint64_t sub_191C79904(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_191C7B760();
  result = sub_191CC6F78();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      sub_191CC74C8();
      MEMORY[0x193B02C70](v18);
      result = sub_191CC7508();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    v2 = v28;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_191C79B48(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_191C7B6C0();
  result = sub_191CC6F78();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 40 * (v16 | (v7 << 6));
      v30 = *v19;
      v31 = *(v19 + 16);
      v32 = *(v19 + 32);
      v20 = *(v6 + 40);
      result = sub_191CC6F48();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 40 * v14;
      *v15 = v30;
      *(v15 + 16) = v31;
      *(v15 + 32) = v32;
      ++*(v6 + 16);
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v18 = v8[v7];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_191C79D9C(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord();
  v9 = *(DatabaseAccessibilityAssertionsRecord - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord, v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*v4 + 16);
  v16 = *(*v4 + 24);
  if (v16 > v15 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v29 = v12;
    sub_191C793A4(v15 + 1);
  }

  else
  {
    if (v16 > v15)
    {
      sub_191C7A468();
      goto LABEL_12;
    }

    v29 = v12;
    sub_191C7AA54(v15 + 1);
  }

  v17 = *v4;
  v18 = *(*v4 + 40);
  sub_191CC74C8();
  sub_191CC61A8();
  sub_191C7B718(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
  sub_191CC66A8();
  v19 = sub_191CC7508();
  v20 = -1 << *(v17 + 32);
  a2 = v19 & ~v20;
  if ((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v21 = ~v20;
    v22 = *(v9 + 72);
    do
    {
      sub_191C7B914(*(v17 + 48) + v22 * a2, v14);
      v23 = sub_191CC6178();
      sub_191C7B9DC(v14);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v21;
    }

    while (((*(v17 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_191C7B978(a1, *(v24 + 48) + *(v9 + 72) * a2);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_191CC7438();
  __break(1u);
  return result;
}

void sub_191C79FEC(uint64_t a1, unint64_t a2, char a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, unint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a5;
    v13 = a6;
    sub_191C796E8(v10 + 1, a4, a5, a6, a7);
  }

  else
  {
    if (v11 > v10)
    {
      sub_191C7A660(a4, a5, a6, a7);
      goto LABEL_12;
    }

    v12 = a5;
    v13 = a6;
    sub_191C7AD44(v10 + 1, a4, a5, a6, a7);
  }

  v14 = *v7;
  v15 = *(*v7 + 40);
  v16 = sub_191CC6D98();
  v17 = -1 << *(v14 + 32);
  a2 = v16 & ~v17;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    sub_191BFAE6C(0, v12, v13);
    do
    {
      v19 = *(*(v14 + 48) + 8 * a2);
      v20 = sub_191CC6DA8();

      if (v20)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v21 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = a1;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return;
  }

  __break(1u);
LABEL_15:
  sub_191CC7438();
  __break(1u);
}

void sub_191C7A194(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_191C79904(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_191C7A7B4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_191C7AF4C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_191CC74C8();
  MEMORY[0x193B02C70](a1);
  v10 = sub_191CC7508();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    v13 = v10 & ~v11;
    type metadata accessor for HKCategoryValueSleepAnalysis(0);
    a2 = v13;
    while (*(*(v8 + 48) + 8 * a2) != a1)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_191CC7438();
  __break(1u);
}

uint64_t sub_191C7A2F0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_191C79B48(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_191C7A8E8();
      goto LABEL_12;
    }

    sub_191C7B160(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  result = sub_191CC6F48();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      sub_191C7B610(*(v9 + 48) + 40 * a2, v20);
      v13 = MEMORY[0x193B026F0](v20, v6);
      result = sub_191C7B66C(v20);
      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v15 = *(v14 + 48) + 40 * a2;
  v16 = *(v6 + 16);
  *v15 = *v6;
  *(v15 + 16) = v16;
  *(v15 + 32) = *(v6 + 32);
  v17 = *(v14 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v14 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_191CC7438();
  __break(1u);
  return result;
}

void *sub_191C7A468()
{
  v1 = v0;
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord();
  v3 = *(DatabaseAccessibilityAssertionsRecord - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord - 8, v5);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C7B880();
  v8 = *v0;
  v9 = sub_191CC6F68();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 56);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    if (v10 != v8 || result >= v8 + 56 + 8 * v12)
    {
      result = memmove(result, (v8 + 56), 8 * v12);
    }

    v14 = 0;
    *(v10 + 16) = *(v8 + 16);
    v15 = 1 << *(v8 + 32);
    v16 = *(v8 + 56);
    v17 = -1;
    if (v15 < 64)
    {
      v17 = ~(-1 << v15);
    }

    v18 = v17 & v16;
    v19 = (v15 + 63) >> 6;
    if ((v17 & v16) != 0)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v18 &= v18 - 1;
LABEL_17:
        v23 = *(v3 + 72) * (v20 | (v14 << 6));
        sub_191C7B914(*(v8 + 48) + v23, v7);
        result = sub_191C7B978(v7, *(v10 + 48) + v23);
      }

      while (v18);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {
        goto LABEL_19;
      }

      v22 = *(v8 + 56 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v10;
  }

  return result;
}

id sub_191C7A660(unint64_t *a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v5 = v4;
  sub_191C7B7F4(0, a1, a2, a3, a4);
  v6 = *v4;
  v7 = sub_191CC6F68();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 56);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_17:
        v21 = v18 | (v12 << 6);
        v22 = *(*(v6 + 48) + 8 * v21);
        *(*(v8 + 48) + 8 * v21) = v22;
        result = v22;
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {
        goto LABEL_19;
      }

      v20 = *(v6 + 56 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v5 = v8;
  }

  return result;
}

void *sub_191C7A7B4()
{
  v1 = v0;
  sub_191C7B760();
  v2 = *v0;
  v3 = sub_191CC6F68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_191C7A8E8()
{
  v1 = v0;
  sub_191C7B6C0();
  v2 = *v0;
  v3 = sub_191CC6F68();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_191C7B610(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_191C7AA54(uint64_t a1)
{
  v2 = v1;
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord();
  v36 = *(DatabaseAccessibilityAssertionsRecord - 8);
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord - 8, v6);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_191C7B880();
  result = sub_191CC6F78();
  v12 = result;
  if (*(v9 + 16))
  {
    v34 = v2;
    v35 = v9;
    v13 = 0;
    v14 = v9 + 56;
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 56);
    v18 = (v15 + 63) >> 6;
    v19 = result + 56;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v24 = *(v9 + 48);
      v25 = *(v36 + 72);
      sub_191C7B914(v24 + v25 * (v21 | (v13 << 6)), v8);
      v26 = *(v12 + 40);
      sub_191CC74C8();
      sub_191CC61A8();
      sub_191C7B718(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
      sub_191CC66A8();
      result = sub_191CC7508();
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v19 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v19 + 8 * v29);
          if (v33 != -1)
          {
            v20 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v20 = __clz(__rbit64((-1 << v28) & ~*(v19 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = sub_191C7B978(v8, *(v12 + 48) + v20 * v25);
      ++*(v12 + 16);
      v9 = v35;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v2 = v34;
        goto LABEL_28;
      }

      v23 = *(v14 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v12;
  }

  return result;
}

uint64_t sub_191C7AD44(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v6 = v5;
  v7 = *v5;
  if (*(*v5 + 24) > a1)
  {
    v8 = *(*v5 + 24);
  }

  sub_191C7B7F4(0, a2, a3, a4, a5);
  result = sub_191CC6F78();
  v10 = result;
  if (*(v7 + 16))
  {
    v30 = v6;
    v11 = 0;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    v16 = result + 56;
    while (v14)
    {
      v18 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v21 = *(v10 + 40);
      v22 = *(*(v7 + 48) + 8 * (v18 | (v11 << 6)));
      result = sub_191CC6D98();
      v23 = -1 << *(v10 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v16 + 8 * v25);
          if (v29 != -1)
          {
            v17 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      *(*(v10 + 48) + 8 * v17) = v22;
      ++*(v10 + 16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v6 = v30;
        goto LABEL_28;
      }

      v20 = *(v7 + 56 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v14 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v6 = v10;
  }

  return result;
}

uint64_t sub_191C7AF4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_191C7B760();
  result = sub_191CC6F78();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      sub_191CC74C8();
      MEMORY[0x193B02C70](v17);
      result = sub_191CC7508();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_28;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_191C7B160(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_191C7B6C0();
  result = sub_191CC6F78();
  v6 = result;
  if (*(v3 + 16))
  {
    v28 = v2;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      sub_191C7B610(*(v3 + 48) + 40 * (v17 | (v7 << 6)), v29);
      v20 = *(v6 + 40);
      result = sub_191CC6F48();
      v21 = -1 << *(v6 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v6 + 48) + 40 * v13;
      v15 = v29[0];
      v16 = v29[1];
      *(v14 + 32) = v30;
      *v14 = v15;
      *(v14 + 16) = v16;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v28;
        goto LABEL_28;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_191C7B380(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_191CC6EE8())
  {
    v4 = sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
    v5 = sub_191C3E29C(&qword_1EADCC7E0, &qword_1EADCD140, 0x1E696AD98);
    result = MEMORY[0x193B022E0](i, v4, v5);
    v13 = result;
    if (v2)
    {
      break;
    }

    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return result;
    }

LABEL_7:
    v9 = 0;
    v2 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x193B02790](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      sub_191C78A3C(&v12, v10);

      ++v9;
      if (v11 == v7)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v8 = result;
  v7 = sub_191CC6EE8();
  result = v8;
  if (v7)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_191C7B4D8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for HKCategoryValueSleepAnalysis(0);
  v4 = v3;
  v5 = sub_191C7B718(&qword_1EADCC7F0, type metadata accessor for HKCategoryValueSleepAnalysis);
  result = MEMORY[0x193B022E0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_191C7913C(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_191C7B584(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x193B022E0](v2, MEMORY[0x1E69E69B8], MEMORY[0x1E69E69C0]);
  v7 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      sub_191C7B610(v4, v5);
      sub_191C79234(v6, v5);
      sub_191C7B66C(v6);
      v4 += 40;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

void sub_191C7B6C0()
{
  if (!qword_1EADCC7E8)
  {
    v0 = sub_191CC6FA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCC7E8);
    }
  }
}

uint64_t sub_191C7B718(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_191C7B760()
{
  if (!qword_1EADCC7F8)
  {
    type metadata accessor for HKCategoryValueSleepAnalysis(255);
    sub_191C7B718(&qword_1EADCC7F0, type metadata accessor for HKCategoryValueSleepAnalysis);
    v0 = sub_191CC6FA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCC7F8);
    }
  }
}

void sub_191C7B7F4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    sub_191BFAE6C(255, a3, a4);
    sub_191C3E29C(a5, a3, a4);
    v9 = sub_191CC6FA8();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_191C7B880()
{
  if (!qword_1EADCC808)
  {
    type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord();
    sub_191C7B718(&qword_1EADCC810, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
    v0 = sub_191CC6FA8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCC808);
    }
  }
}

uint64_t sub_191C7B914(uint64_t a1, uint64_t a2)
{
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord();
  (*(*(DatabaseAccessibilityAssertionsRecord - 8) + 16))(a2, a1, DatabaseAccessibilityAssertionsRecord);
  return a2;
}

uint64_t sub_191C7B978(uint64_t a1, uint64_t a2)
{
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord();
  (*(*(DatabaseAccessibilityAssertionsRecord - 8) + 32))(a2, a1, DatabaseAccessibilityAssertionsRecord);
  return a2;
}

uint64_t sub_191C7B9DC(uint64_t a1)
{
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord();
  (*(*(DatabaseAccessibilityAssertionsRecord - 8) + 8))(a1, DatabaseAccessibilityAssertionsRecord);
  return a1;
}

void sub_191C7BA38(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *(v3 + 24) = v2;
  v5 = v2;
}

id sub_191C7BA90()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

void sub_191C7BAD4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;
  v5 = v2;
}

id sub_191C7BB2C()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_191C7BB90()
{
  v1 = v0 + 2;
  v2 = v0[21];
  v0[2] = v0;
  v0[7] = v0 + 19;
  v0[3] = sub_191C7BD28;
  v3 = swift_continuation_init();
  v4 = *(v2 + 16);
  swift_beginAccess();
  v5 = *(v2 + 24);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  v0[14] = sub_191C7BF7C;
  v0[15] = v6;
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_191C7BF84;
  v0[13] = &block_descriptor_20;
  v7 = _Block_copy(v0 + 10);
  v8 = v0[15];
  v9 = v4;
  v10 = v5;

  v11 = [v9 getDataForAttachment:v10 completion:v7];
  _Block_release(v7);

  return MEMORY[0x1EEE6DEC8](v1);
}

uint64_t sub_191C7BD28()
{
  v1 = *v0;
  v2 = *v0;
  if (*(*v0 + 48))
  {
    v3 = *(*v0 + 48);
    swift_willThrow();
    v4 = *(v2 + 8);

    return v4();
  }

  else
  {
    v6 = *(v1 + 152);
    v7 = *(v1 + 160);
    v8 = *(v2 + 8);
    v9 = *v0;

    return v8(v6, v7);
  }
}

uint64_t sub_191C7BE68(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    if (a3)
    {
      v6 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191BFC39C();
      sub_191CC5FA8();
      v6 = v13;
    }

    sub_191BF92E0();
    swift_allocError();
    *v11 = v6;
    v12 = a3;
    return swift_continuation_throwingResumeWithError();
  }

  else
  {
    sub_191C0492C(a1, a2);
    v9 = *(*(a4 + 64) + 40);
    *v9 = a1;
    v9[1] = a2;

    return swift_continuation_throwingResume();
  }
}

uint64_t sub_191C7BF84(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {

    v7 = v4;
    v4 = sub_191CC6048();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v10 = a3;
  v6(v4, v9, a3);

  sub_191C049C4(v4, v9);
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_191C7C048@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v5 = v1 + 16;
  v4 = *(v1 + 16);
  v3 = *(v5 + 8);
  swift_unknownObjectUnownedInit();
  result = swift_unknownObjectUnownedInit();
  *(a1 + 16) = 10485760;
  return result;
}

uint64_t HKAttachmentDataReader.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t HKAttachmentDataReader.unitTest_bytesWithChunkSize(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  swift_beginAccess();
  v7 = v2 + 16;
  v6 = *(v2 + 16);
  v5 = *(v7 + 8);
  swift_unknownObjectUnownedInit();
  result = swift_unknownObjectUnownedInit();
  *(a2 + 16) = a1;
  return result;
}

uint64_t dispatch thunk of HKAttachmentDataReader.data.getter()
{
  v2 = *(*v0 + 184);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_191C7C314;

  return v6();
}

uint64_t sub_191C7C314(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);

  return v6(a1, a2);
}

uint64_t HKTypeError.hashValue.getter()
{
  v1 = *v0;
  sub_191CC74C8();
  MEMORY[0x193B02C70](v1);
  return sub_191CC7508();
}

unint64_t sub_191C7C4D4()
{
  result = qword_1EADCC820;
  if (!qword_1EADCC820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC820);
  }

  return result;
}

id sub_191C7C53C(void *a1)
{
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier_];
  if (result)
  {
    v3 = result;

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void static HKSleepClockTimeAveraging.averageClockTimeAsleep(for:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 1;
    return;
  }

  if (v3 < 4)
  {
    v4 = 0;
    v5 = 0.0;
    v6 = 0.0;
LABEL_8:
    v21 = v3 - v4;
    v22 = (a1 + 24 * v4 + 48);
    do
    {
      v23 = vaddvq_f64(vmulq_f64(vcvtq_f64_s64(v22[-1]), xmmword_191DD8980));
      v24 = v22->i64[0];
      v22 = (v22 + 24);
      v25 = __sincos_stret((v23 + v24 * 0.00416666667) * 0.0174532925);
      v6 = v6 + v25.__sinval;
      v5 = v5 + v25.__cosval;
      --v21;
    }

    while (v21);
    goto LABEL_10;
  }

  v4 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  v7 = a1;
  v8 = (a1 + 80);
  v5 = 0.0;
  __asm { FMOV            V1.2D, #15.0 }

  v36 = vdupq_n_s64(0x3F71111111111111uLL);
  v37 = _Q1;
  __asm { FMOV            V1.2D, #0.25 }

  v34 = vdupq_n_s64(0x3F91DF46A2529D39uLL);
  v35 = _Q1;
  v15 = v3 & 0x7FFFFFFFFFFFFFFCLL;
  v6 = 0.0;
  do
  {
    v16 = v8 - 6;
    v40 = vld3q_f64(v16);
    v41 = vld3q_f64(v8);
    v38 = vmulq_f64(vaddq_f64(vaddq_f64(vmulq_f64(vcvtq_f64_s64(v40.val[0]), v37), vmulq_f64(vcvtq_f64_s64(v40.val[1]), v35)), vmulq_f64(vcvtq_f64_s64(v40.val[2]), v36)), v34);
    v39 = vmulq_f64(vaddq_f64(vaddq_f64(vmulq_f64(vcvtq_f64_s64(v41.val[0]), v37), vmulq_f64(vcvtq_f64_s64(v41.val[1]), v35)), vmulq_f64(vcvtq_f64_s64(v41.val[2]), v36)), v34);
    v17 = __sincos_stret(v38.f64[1]);
    v18 = __sincos_stret(v38.f64[0]);
    v19 = __sincos_stret(v39.f64[1]);
    v20 = __sincos_stret(v39.f64[0]);
    v5 = v5 + v18.__cosval + v17.__cosval + v20.__cosval + v19.__cosval;
    v6 = v6 + v18.__sinval + v17.__sinval + v20.__sinval + v19.__sinval;
    v8 += 12;
    v15 -= 4;
  }

  while (v15);
  a1 = v7;
  if (v3 != v4)
  {
    goto LABEL_8;
  }

LABEL_10:
  v26 = atan2(v6 / v3, v5 / v3) * 57.2957795;
  if (v26 < 0.0)
  {
    v26 = v26 + 360.0;
  }

  v27 = round(v26 * 240.0);
  v28 = v27 / 3600.0;
  if (v27 / 3600.0 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v28 >= 9.22337204e18)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v29 = COERCE_UNSIGNED_INT64(fabs(v27 / 3600.0)) > 0x7FEFFFFFFFFFFFFFLL;
  if ((*&v27 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || v29)
  {
    goto LABEL_24;
  }

  if (v27 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v27 >= 9.22337204e18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v30 = 3600 * v28;
  if ((v28 * 3600) >> 64 != v30 >> 63)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  _VF = __OFSUB__(v27, v30);
  v31 = v27 - v30;
  if (_VF)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v32 = v31 / 60;
  _VF = __OFSUB__(v31, 60 * (v31 / 60));
  v33 = v31 % 60;
  if (!_VF)
  {
    *a2 = v28;
    *(a2 + 8) = v32;
    *(a2 + 16) = v33;
    *(a2 + 24) = 0;
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_191C7C90C(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191C7C930, 0, 0);
}

uint64_t sub_191C7C930()
{
  v1 = v0[5];
  v2 = *(v1 + 8);
  if (v2 == *(v1 + 16))
  {
    v6 = swift_task_alloc();
    v0[6] = v6;
    *v6 = v0;
    v6[1] = sub_191C7CA0C;
    v7 = v0[5];

    return _AsyncBytesBuffer.reloadBufferAndNext()();
  }

  else
  {
    v3 = *v2;
    *(v1 + 8) = v2 + 1;
    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_191C7CA0C(__int16 a1)
{
  v4 = *(*v2 + 48);
  v5 = *v2;
  v5[7] = v1;

  if (v1)
  {
    if (v5[3])
    {
      v6 = v5[4];
      swift_getObjectType();
      v7 = sub_191CC69B8();
      v9 = v8;
    }

    else
    {
      v7 = 0;
      v9 = 0;
    }

    return MEMORY[0x1EEE6DFA0](sub_191C7CB80, v7, v9);
  }

  else
  {
    v10 = v5[1];

    return v10(a1 & 0x1FF);
  }
}

uint64_t sub_191C7CB80()
{
  v0[2] = v0[7];
  sub_191BF92E0();
  swift_willThrowTypedImpl();
  v1 = v0[1];
  v2 = v0[7];

  return v1();
}

uint64_t sub_191C7CC04()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    MEMORY[0x193B047C0](v1, -1, -1);
  }

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

void sub_191C7CCD4()
{
  if (*v0[2])
  {
    type metadata accessor for _AsyncBytesBuffer.Storage();
    swift_unknownObjectRetain();
    v1 = swift_dynamicCastClassUnconditional();
    v0[3] = v1;
    if (*(v1 + 48) == 1)
    {

      v2 = v0[1];

      v2(256);
    }

    else
    {
      v3 = v1;
      sub_191CC6A48();
      v4 = v0[2];
      v5 = v3;
      v6 = v3[2];
      v0[4] = v5[3];
      v7 = v5[4];
      v8 = v5[5];
      v9 = *(v4 + 24);
      v0[5] = v9;

      v12 = (v6 + *v6);
      v10 = v6[1];
      v11 = swift_task_alloc();
      v0[6] = v11;
      *v11 = v0;
      v11[1] = sub_191C7CEDC;

      v12(v7, v8, v9);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_191C7CEDC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 48);
  v8 = *v2;
  v3[7] = a1;
  v3[8] = v1;

  if (v1)
  {
    v5 = sub_191C7D150;
  }

  else
  {
    v6 = v3[4];

    v5 = sub_191C7CFF8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_191C7CFF8(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 56);
  v5 = *(v3 + 40);
  v6 = __OFADD__(v5, v4);
  v7 = v5 + v4;
  if (v6)
  {
    __break(1u);
    goto LABEL_11;
  }

  *(*(v3 + 16) + 24) = v7;
  a1 = *(v3 + 24);
  if (v4)
  {
    v8 = *(a1 + 4);
    if (v8)
    {
      v9 = *(v3 + 16);
      v10 = &v8[*(v3 + 56)];
      *(v9 + 8) = v8;
      *(v9 + 16) = v10;
      *(v3 + 72) = *v8;
      *(v9 + 8) = v8 + 1;
      a1 = sub_191C7D0E8;
      a2 = 0;
      a3 = 0;

      return MEMORY[0x1EEE6DFA0](a1, a2, a3);
    }

LABEL_11:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  *(a1 + 48) = 1;

  v11 = *(v3 + 8);

  return v11(256);
}

uint64_t sub_191C7D0E8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_191C7D150()
{
  v1 = v0[8];
  v3 = v0[3];
  v2 = v0[4];

  *(v3 + 48) = 1;
  swift_willThrow();
  v4 = v0[8];
  v5 = v0[3];

  v6 = v0[1];

  return v6();
}

uint64_t sub_191C7D1F4()
{
  v1 = v0[2];
  v2 = *(v1 + 8);
  if (v2 == *(v1 + 16))
  {
    v6 = swift_task_alloc();
    v0[3] = v6;
    *v6 = v0;
    v6[1] = sub_191C7D2D0;
    v7 = v0[2];

    return _AsyncBytesBuffer.reloadBufferAndNext()();
  }

  else
  {
    v3 = *v2;
    *(v1 + 8) = v2 + 1;
    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_191C7D2D0(__int16 a1)
{
  v4 = *(*v2 + 24);
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    v8 = *(v5 + 8);

    return v8(a1 & 0x1FF);
  }
}

uint64_t BufferedAsyncByteIterator.buffer.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  return swift_unknownObjectRetain();
}

uint64_t BufferedAsyncByteIterator.buffer.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = swift_unknownObjectRelease();
  *v4 = a1;
  v4[1] = a2;
  v4[2] = a3;
  v4[3] = a4;
  return result;
}

uint64_t sub_191C7D4D4()
{
  v1 = v0[2];
  v2 = *(v1 + 8);
  if (v2 == *(v1 + 16))
  {
    v6 = swift_task_alloc();
    v0[3] = v6;
    *v6 = v0;
    v6[1] = sub_191C7DA84;
    v7 = v0[2];

    return _AsyncBytesBuffer.reloadBufferAndNext()();
  }

  else
  {
    v3 = *v2;
    *(v1 + 8) = v2 + 1;
    v4 = v0[1];

    return v4(v3);
  }
}

uint64_t sub_191C7D5B0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_191C7D5D0, 0, 0);
}

uint64_t sub_191C7D5D0()
{
  v1 = v0[3];
  v2 = *(v1 + 8);
  if (v2 == *(v1 + 16))
  {
    v7 = swift_task_alloc();
    v0[4] = v7;
    *v7 = v0;
    v7[1] = sub_191C7D6B8;
    v8 = v0[3];

    return _AsyncBytesBuffer.reloadBufferAndNext()();
  }

  else
  {
    v3 = *v2;
    *(v1 + 8) = v2 + 1;
    v4 = v0[2];
    *v4 = v3;
    v4[1] = 0;
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_191C7D6B8(__int16 a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (!v1)
  {
    v7 = *(v4 + 16);
    *v7 = a1;
    v7[1] = HIBYTE(a1) & 1;
  }

  v8 = *(v6 + 8);

  return v8();
}

uint64_t sub_191C7D7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_191C7D88C;

  return sub_191C7C90C(a2, a3);
}

uint64_t sub_191C7D88C(__int16 a1)
{
  v4 = *v2;
  v5 = *(*v2 + 32);
  v6 = *v2;

  if (v1)
  {
    **(v4 + 24) = v1;
  }

  else
  {
    v8 = *(v4 + 16);
    *v8 = a1;
    v8[1] = HIBYTE(a1) & 1;
  }

  v7 = *(v6 + 8);

  return v7();
}

uint64_t _s9HealthKit17_AsyncBytesBufferV8capacity12readFunctionACSi_SiSw_SitYaKctcfC_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for _AsyncBytesBuffer.Storage();
  result = swift_allocObject();
  *(result + 48) = 0;
  if (a1 < 1)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = a2;
    *(result + 24) = a3;
    v7 = result;
    v8 = swift_slowAlloc();
    *(v7 + 32) = v8;
    *(v7 + 40) = v8 + a1;
    return v7;
  }

  return result;
}

uint64_t HKHealthRecordsStore.isImproveHealthRecordsDataSubmissionAllowed()()
{
  v1[19] = v0;
  v1[20] = swift_getObjectType();
  sub_191C7E044();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191C7DB58, 0, 0);
}

uint64_t sub_191C7DB58()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191C7DD1C;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
  sub_191BF92E0();
  sub_191CC69C8();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C7E0C4;
  v1[13] = &block_descriptor_21;
  [v11 fetchIsImproveHealthRecordsDataSubmissionAllowedWithCompletion_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C7DD1C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_191C7DE2C;
  }

  else
  {
    v3 = sub_191C7EE00;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_191C7DE2C()
{
  v22 = v0;
  v1 = v0[24];
  swift_willThrow();
  if (qword_1EADCA158 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = sub_191CC6348();
  __swift_project_value_buffer(v3, qword_1EADE7078);
  v4 = v2;
  v5 = sub_191CC6328();
  v6 = sub_191CC6C98();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  if (v7)
  {
    v9 = v0[20];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v10 = 136315394;
    v13 = sub_191CC76A8();
    v15 = sub_191C3B288(v13, v14, &v21);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_19197B000, v5, v6, "%s failed to fetch Improve Health Records (IHR) status: %@", v10, 0x16u);
    sub_191C6E5A8(v11);
    MEMORY[0x193B047C0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x193B047C0](v12, -1, -1);
    MEMORY[0x193B047C0](v10, -1, -1);
  }

  else
  {
  }

  v18 = v0[23];

  v19 = v0[1];

  return v19(0);
}

void sub_191C7E044()
{
  if (!qword_1EADCC828)
  {
    sub_191BFAE6C(255, &qword_1EADCD140, 0x1E696AD98);
    sub_191BF92E0();
    v0 = sub_191CC69F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCC828);
    }
  }
}

void sub_191C7E0C4(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_191C7E044();
    v5 = a3;
    sub_191CC69D8();
  }

  else if (a2)
  {
    sub_191C7E044();
    v6 = a2;
    sub_191CC69E8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t HKHealthRecordsStore.shouldPromptForImproveHealthRecordsDataSubmission()()
{
  v1[19] = v0;
  v1[20] = swift_getObjectType();
  sub_191C7E044();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191C7E248, 0, 0);
}

uint64_t sub_191C7E248()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191C7E40C;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
  sub_191BF92E0();
  sub_191CC69C8();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C7E0C4;
  v1[13] = &block_descriptor_3_0;
  [v11 fetchShouldPromptForImproveHealthRecordsDataSubmissionWithCompletion_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C7E40C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_191C7E59C;
  }

  else
  {
    v3 = sub_191C7E51C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_191C7E51C()
{
  v1 = v0[18];
  v2 = [v1 BOOLValue];

  v3 = v0[23];

  v4 = v0[1];

  return v4(v2);
}

uint64_t sub_191C7E59C()
{
  v22 = v0;
  v1 = v0[24];
  swift_willThrow();
  if (qword_1EADCA158 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = sub_191CC6348();
  __swift_project_value_buffer(v3, qword_1EADE7078);
  v4 = v2;
  v5 = sub_191CC6328();
  v6 = sub_191CC6C98();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  if (v7)
  {
    v9 = v0[20];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v10 = 136315394;
    v13 = sub_191CC76A8();
    v15 = sub_191C3B288(v13, v14, &v21);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_19197B000, v5, v6, "%s failed to fetch whether we should prompt for Improve Health Records (IHR): %@", v10, 0x16u);
    sub_191C6E5A8(v11);
    MEMORY[0x193B047C0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x193B047C0](v12, -1, -1);
    MEMORY[0x193B047C0](v10, -1, -1);
  }

  else
  {
  }

  v18 = v0[23];

  v19 = v0[1];

  return v19(0);
}

uint64_t HKHealthRecordsStore.currentDeviceSupportsImproveHealthRecordsDataSubmissionOption()()
{
  v1[19] = v0;
  v1[20] = swift_getObjectType();
  sub_191C7E044();
  v1[21] = v2;
  v3 = *(v2 - 8);
  v1[22] = v3;
  v4 = *(v3 + 64) + 15;
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191C7E880, 0, 0);
}

uint64_t sub_191C7E880()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 18;
  v7 = v0[22];
  v6 = v0[23];
  v8 = v0[21];
  v11 = v1[19];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191C7EA44;
  swift_continuation_init();
  v1[17] = v8;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
  sub_191BF92E0();
  sub_191CC69C8();
  (*(v7 + 32))(boxed_opaque_existential_0, v6, v8);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C7E0C4;
  v1[13] = &block_descriptor_6;
  [v11 fetchCurrentDeviceSupportsImproveHealthRecordsDataSubmissionOptionWithCompletion_];
  (*(v7 + 8))(boxed_opaque_existential_0, v8);

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C7EA44()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 192) = v2;
  if (v2)
  {
    v3 = sub_191C7EB54;
  }

  else
  {
    v3 = sub_191C7E51C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_191C7EB54()
{
  v22 = v0;
  v1 = v0[24];
  swift_willThrow();
  if (qword_1EADCA158 != -1)
  {
    swift_once();
  }

  v2 = v0[24];
  v3 = sub_191CC6348();
  __swift_project_value_buffer(v3, qword_1EADE7078);
  v4 = v2;
  v5 = sub_191CC6328();
  v6 = sub_191CC6C98();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[24];
  if (v7)
  {
    v9 = v0[20];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v21 = v12;
    *v10 = 136315394;
    v13 = sub_191CC76A8();
    v15 = sub_191C3B288(v13, v14, &v21);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2112;
    v16 = v8;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v17;
    *v11 = v17;
    _os_log_impl(&dword_19197B000, v5, v6, "%s failed to fetch whether current device supports prompting for Improve Health Records (IHR): %@", v10, 0x16u);
    sub_191C6E5A8(v11);
    MEMORY[0x193B047C0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x193B047C0](v12, -1, -1);
    MEMORY[0x193B047C0](v10, -1, -1);
  }

  else
  {
  }

  v18 = v0[23];

  v19 = v0[1];

  return v19(2);
}

uint64_t sub_191C7ED6C()
{
  v0 = sub_191CC6348();
  __swift_allocate_value_buffer(v0, qword_1EADE7078);
  __swift_project_value_buffer(v0, qword_1EADE7078);
  return sub_191CC6338();
}

uint64_t AnySecureCoding.decoded<A>(_:)()
{
  if (*(v0 + OBJC_IVAR___HKAnySecureCoding_encodedObjectType) == 1)
  {
    v1 = sub_191CC5C18();
    v2 = *(v1 + 48);
    v3 = *(v1 + 52);
    swift_allocObject();
    sub_191CC5C08();
    v4 = *(v0 + OBJC_IVAR___HKAnySecureCoding_payload);
    v5 = *(v0 + OBJC_IVAR___HKAnySecureCoding_payload + 8);
    sub_191CC5BF8();
  }

  else
  {
    sub_191C6D438();
    swift_allocError();
    return swift_willThrow();
  }
}

id AnyCodable.decoded<A>(_:)(uint64_t a1, id a2)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
  sub_191C0492C(v5, v6);
  v8 = sub_191C800EC();
  sub_191C049D8(v5, v6);
  if (!v3)
  {
    a2 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v9 = v8;
    v10 = [a2 initWithCoder_];
    if (v10)
    {
      a2 = v10;
    }

    else
    {
      v12 = [v9 error];

      if (!v12)
      {
        [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:4866 userInfo:0];
      }

      swift_willThrow();
    }
  }

  return a2;
}

id AnySecureCoding.__allocating_init<A>(_:)(void *a1)
{
  v1 = sub_191C8028C(a1);
  swift_unknownObjectRelease();
  return v1;
}

id AnySecureCoding.init<A>(_:)(void *a1)
{
  v1 = sub_191C801AC(a1);
  swift_unknownObjectRelease();
  return v1;
}

uint64_t sub_191C7F100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = a5();
  (*(*(a2 - 8) + 8))(a1, a2);
  return v7;
}

uint64_t AnySecureCoding.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_191CC6778();
  v3 = [a1 containsValueForKey_];

  if (v3 && (v4 = sub_191CC6778(), v5 = [a1 containsValueForKey_], v4, v5))
  {
    v6 = sub_191CC6778();
    v7 = [a1 decodeIntegerForKey_];

    if (v7 <= 1)
    {
      sub_191C802D8();
      v8 = sub_191CC6D88();
      if (v8)
      {
        v9 = v8;
        sub_191CC6038();
      }
    }

    v10 = 4866;
  }

  else
  {
    v10 = 4865;
  }

  v11 = [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:v10 userInfo:0];
  v12 = sub_191CC5FB8();

  [a1 failWithError_];
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall AnySecureCoding.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR___HKAnySecureCoding_encodedObjectType);
  v4 = sub_191CC6778();
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR___HKAnySecureCoding_payload);
  v6 = *(v1 + OBJC_IVAR___HKAnySecureCoding_payload + 8);
  v7 = sub_191CC6028();
  v8 = sub_191CC6778();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
}

id AnySecureCoding.decoded<A>(_:)(uint64_t a1, void *a2)
{
  if (*(v2 + OBJC_IVAR___HKAnySecureCoding_encodedObjectType))
  {
    sub_191C6D438();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v4 = a2;
    v5 = *(v2 + OBJC_IVAR___HKAnySecureCoding_payload);
    v6 = *(v2 + OBJC_IVAR___HKAnySecureCoding_payload + 8);
    v7 = objc_allocWithZone(MEMORY[0x1E696ACD0]);
    sub_191C0492C(v5, v6);
    v8 = sub_191C800EC();
    sub_191C049D8(v5, v6);
    if (!v3)
    {
      v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v10 = v8;
      v11 = [v4 initWithCoder_];
      if (v11)
      {
        v4 = v11;
      }

      else
      {
        v12 = [v10 error];

        if (!v12)
        {
          [objc_allocWithZone(MEMORY[0x1E696ABC0]) initWithDomain:*MEMORY[0x1E696A250] code:4866 userInfo:0];
        }

        swift_willThrow();
      }
    }
  }

  return v4;
}

id AnySecureCoding.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnySecureCoding.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id AnySecureCodingCompatible<>.toAnySecureCoding()()
{
  v0 = objc_allocWithZone(type metadata accessor for AnySecureCoding());
  return sub_191C7FF8C();
}

{
  v1 = type metadata accessor for AnySecureCoding();
  swift_unknownObjectRetain();
  v2 = objc_allocWithZone(v1);
  v3 = sub_191C801AC(v0);
  swift_unknownObjectRelease();
  return v3;
}

void AnyCodable.init<A>(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  [a1 encodeWithCoder_];
  v5 = [v4 encodedData];
  v6 = sub_191CC6048();
  v8 = v7;

  swift_unknownObjectRelease();
  *a2 = v6;
  a2[1] = v8;
}

uint64_t AnyCodable.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = sub_191CC5C48();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  sub_191CC5C38();
  v10 = sub_191CC5C28();
  if (v3)
  {
    (*(*(a2 - 8) + 8))(a1, a2);
  }

  else
  {
    v13 = v10;
    v14 = v11;
    (*(*(a2 - 8) + 8))(a1, a2);

    *a3 = v13;
    a3[1] = v14;
  }

  return result;
}

uint64_t AnyCodable.decoded<A>(_:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_191CC5C18();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_191CC5C08();
  sub_191CC5BF8();
}

uint64_t sub_191C7FB4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_191CC73E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_191C7FBD4(uint64_t a1)
{
  v2 = sub_191C80348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C7FC10(uint64_t a1)
{
  v2 = sub_191C80348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnyCodable.encode(to:)(void *a1)
{
  sub_191C8039C(0, &qword_1EADCC850, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = &v14 - v8;
  v10 = *v1;
  v11 = v1[1];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C0492C(v10, v11);
  sub_191C80348();
  sub_191CC7548();
  v14 = v10;
  v15 = v11;
  sub_191C511C4();
  sub_191CC7348();
  sub_191C049D8(v14, v15);
  return (*(v5 + 8))(v9, v4);
}

uint64_t AnyCodable.init(from:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_191C8039C(0, &qword_1EADCC868, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C80348();
  sub_191CC7528();
  if (!v2)
  {
    sub_191C57508();
    sub_191CC7268();
    (*(v7 + 8))(v11, v6);
    *a2 = v14;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

id sub_191C7FF8C()
{
  ObjectType = swift_getObjectType();
  v0[OBJC_IVAR___HKAnySecureCoding_encodedObjectType] = 1;
  v3 = sub_191CC5C48();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  sub_191CC5C38();
  v6 = sub_191CC5C28();
  v8 = v7;

  if (v1)
  {
    return swift_deallocPartialClassInstance();
  }

  v10 = &v0[OBJC_IVAR___HKAnySecureCoding_payload];
  *v10 = v6;
  v10[1] = v8;
  v11.receiver = v0;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

id sub_191C800EC()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = sub_191CC6028();
  v7[0] = 0;
  v2 = [v0 initForReadingFromData:v1 error:v7];

  if (v2)
  {
    v3 = v7[0];
  }

  else
  {
    v4 = v7[0];
    sub_191CC5FC8();

    swift_willThrow();
  }

  v5 = *MEMORY[0x1E69E9840];
  return v2;
}

id sub_191C801AC(void *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___HKAnySecureCoding_encodedObjectType] = 0;
  v4 = [objc_allocWithZone(MEMORY[0x1E696ACC8]) initRequiringSecureCoding_];
  [a1 encodeWithCoder_];
  v5 = [v4 encodedData];
  v6 = sub_191CC6048();
  v8 = v7;

  v9 = &v1[OBJC_IVAR___HKAnySecureCoding_payload];
  *v9 = v6;
  v9[1] = v8;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_191C802D8()
{
  result = qword_1EADCC848;
  if (!qword_1EADCC848)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCC848);
  }

  return result;
}

unint64_t sub_191C80348()
{
  result = qword_1EADCC858;
  if (!qword_1EADCC858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC858);
  }

  return result;
}

void sub_191C8039C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_191C80348();
    v7 = a3(a1, &type metadata for AnyCodable.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_191C80404()
{
  result = qword_1EADCC878;
  if (!qword_1EADCC878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC878);
  }

  return result;
}

unint64_t sub_191C8045C()
{
  result = qword_1EADCC880;
  if (!qword_1EADCC880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC880);
  }

  return result;
}

uint64_t dispatch thunk of AnySecureCoding.__allocating_init<A>(_:)()
{
  return (*(v0 + 96))();
}

{
  return (*(v0 + 104))();
}

uint64_t sub_191C8058C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_191C805E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_191C80670()
{
  result = qword_1EADCC890;
  if (!qword_1EADCC890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC890);
  }

  return result;
}

unint64_t sub_191C806C8()
{
  result = qword_1EADCC898;
  if (!qword_1EADCC898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC898);
  }

  return result;
}

unint64_t sub_191C80720()
{
  result = qword_1EADCC8A0;
  if (!qword_1EADCC8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCC8A0);
  }

  return result;
}

unint64_t sub_191C80778()
{
  result = qword_1EADCC8A8[0];
  if (!qword_1EADCC8A8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADCC8A8);
  }

  return result;
}

uint64_t sub_191C8088C(uint64_t a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  (*(*(*(*v5 + 152) - 8) + 32))(v5 + *(*v5 + 168), a1);
  return v5;
}

uint64_t sub_191C80920()
{
  v1 = *(*(*v0 + 160) + 48);
  v2 = *(*v0 + 152);
  v3 = v0 + *(*v0 + 168);
  return v1(v2);
}

uint64_t sub_191C80994(uint64_t a1)
{
  v2 = *(*(*v1 + 160) + 56);
  v3 = *(*v1 + 152);
  v4 = v1 + *(*v1 + 168);
  return v2(a1, v3);
}

uint64_t sub_191C80A60()
{
  (*(*(*(*v0 + 152) - 8) + 8))(v0 + *(*v0 + 168));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t AnyObjectType.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v7 = *(a3 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v10 = v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[0] = v11;
  v17[1] = v12;
  v17[2] = v13;
  v17[3] = v14;
  type metadata accessor for AnyObjectType.Box();
  (*(v7 + 16))(v10, a1, a3);
  v15 = sub_191C8088C(v10);
  result = (*(v7 + 8))(a1, a3);
  *a4 = v15;
  return result;
}

uint64_t AnyObjectType.hashValue.getter(uint64_t a1)
{
  v5[9] = *v1;
  sub_191CC74C8();
  WitnessTable = swift_getWitnessTable();
  ObjectType.hash(into:)(v5, a1, WitnessTable);
  return sub_191CC7508();
}

BOOL static ObjectType.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 48);
  v6(v15, a3, a4);
  v8 = v15[0];
  v7 = v15[1];
  v9 = v15[2];
  v6(v14, a3, a4);
  v10 = v14[2];
  if (v8 == v14[0] && v7 == v14[1])
  {

    return v9 == v10;
  }

  v12 = sub_191CC73E8();

  result = 0;
  if (v12)
  {
    return v9 == v10;
  }

  return result;
}

uint64_t sub_191C80EA8(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return ObjectType.hash(into:)(a1, a2, WitnessTable);
}

uint64_t ObjectType.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a3 + 48))(v5, a2, a3);
  v3 = v5[2];
  sub_191CC67E8();
  MEMORY[0x193B02C70](v3);
}

uint64_t sub_191C80F8C(uint64_t a1, uint64_t a2)
{
  sub_191CC74C8();
  WitnessTable = swift_getWitnessTable();
  ObjectType.hash(into:)(v5, a2, WitnessTable);
  return sub_191CC7508();
}

uint64_t ObjectType.query(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v11);
  v13 = &v15 - v12;
  (*(a3 + 48))(&v17, a2, a3);
  v15 = v17;
  v16 = v18;
  (*(v9 + 16))(v13, a1, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  return sub_191C81C88(&v15, v13, AssociatedTypeWitness, a4);
}

uint64_t ObjectType.eraseToAnyObjectType()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(*(a1 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7, v9, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  return AnyObjectType.init<A>(_:)(v7, AssociatedTypeWitness, a1, a3);
}

uint64_t ObjectType<>.query()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v9);
  v11 = &v13 - v10;
  (*(a3 + 8))();
  (*(a2 + 56))(v11, a1, a2);
  return (*(v7 + 8))(v11, AssociatedTypeWitness);
}

uint64_t sub_191C813FC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_191C8145C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C814D0(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_191C81520(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_191C81570()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_191C81654(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_191C8169C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_191C81740(uint64_t a1)
{
  v1 = *(a1 + 152);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_191C81844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, void *)@<X6>, uint64_t a8@<X8>)
{
  (*(*(a3 - 8) + 32))(a8, a1);
  v17[0] = a3;
  v17[1] = a4;
  v17[2] = a5;
  v17[3] = a6;
  v15 = a7(0, v17);
  return (*(*(a4 - 8) + 32))(a8 + *(v15 + 52), a2, a4);
}

double BaseQueryDescriptor.encode()@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = v4;
  v8 = a1[2];
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  v13 = *(v3 + 1);
  v15 = *(v3 + 2);
  (*(v16 + 16))(v12, &v3[*(v10 + 52)], v8);
  v18 = a1[4];
  v17 = a1[5];

  AnyCodable.init<A>(_:)(v12, v8, &v20);
  if (v5)
  {
  }

  else
  {
    *a3 = v14;
    *(a3 + 8) = v13;
    *(a3 + 16) = v15;
    result = *&v20;
    *(a3 + 24) = v20;
  }

  return result;
}

double sub_191C81A70@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a2 - 8);
  WitnessTable = swift_getWitnessTable();
  return TypeQueryDescriptor.encode()(a1, WitnessTable, a3);
}

double TypeQueryDescriptor.encode()@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v8);
  v10 = &v16 - v9;
  (*(v5 + 48))(v19, a1, v5);
  v11 = v19[1];
  v16 = v19[2];
  v17 = v19[0];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  v13 = v19[4];
  AnyCodable.init<A>(_:)(v10, AssociatedTypeWitness, v18);
  if (v13)
  {
  }

  else
  {
    v15 = v16;
    *a3 = v17;
    *(a3 + 8) = v11;
    *(a3 + 16) = v15;
    result = v18[0];
    *(a3 + 24) = *v18;
  }

  return result;
}

uint64_t sub_191C81C88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 16);
  *a4 = *a1;
  *(a4 + 16) = v7;
  Descriptor = type metadata accessor for BaseQueryDescriptor();
  return (*(*(a3 - 8) + 32))(a4 + *(Descriptor + 52), a2, a3);
}

uint64_t BaseQueryDescriptor.typeIdentifier.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;
}

__n128 BaseQueryDescriptor.typeIdentifier.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1->n128_u64[1];

  result = v5;
  *v1 = v5;
  v1[1].n128_u64[0] = v2;
  return result;
}

uint64_t (*BaseQueryDescriptor.configuration.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

void (*sub_191C81E34(uint64_t *a1, uint64_t a2))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  *(v4 + 32) = BaseQueryDescriptor.configuration.modify(v4, a2);
  return sub_191C81EAC;
}

void sub_191C81EAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t BaseQueryDescriptor<>.evaluate(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191C81F34, 0, 0);
}

uint64_t sub_191C81F34()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = objc_allocWithZone(type metadata accessor for QueryStore());
  v0[7] = QueryStore.init(healthStore:)(v2);
  v4 = swift_task_alloc();
  v0[8] = v4;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  *v4 = v0;
  v4[1] = sub_191C82004;
  v9 = v0[5];
  v10 = v0[6];
  v11 = v0[4];

  return QueryStore.evaluate<A, B>(_:)(v10, v5, v6, v7, v8, v11, v9);
}

uint64_t sub_191C82004(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_191C8215C, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_191C8215C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1();
}

uint64_t BaseQueryDescriptor<>.evaluate(in:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191C821E4, 0, 0);
}

uint64_t sub_191C821E4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = objc_allocWithZone(type metadata accessor for QueryStore());
  v0[5] = QueryStore.init(healthStore:)(v2);
  v4 = swift_task_alloc();
  v0[6] = v4;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  *v4 = v0;
  v4[1] = sub_191C822B0;
  v9 = v0[4];

  return QueryStore.evaluate<A, B>(_:)(v9, v5, v6, v7, v8);
}

uint64_t sub_191C822B0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 48);
  v6 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_191C82408, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1);
  }
}

uint64_t sub_191C82408()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 56);

  return v1();
}

uint64_t sub_191C8246C(uint64_t a1)
{
  v2 = sub_191C82EC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C824A8(uint64_t a1)
{
  v2 = sub_191C82EC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C824E4()
{
  v1 = 0x6E657461636E6F63;
  if (*v0 != 1)
  {
    v1 = 0x656772656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702060386;
  }
}

uint64_t sub_191C8253C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_191C86928(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_191C82564(uint64_t a1)
{
  v2 = sub_191C82F1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C825A0(uint64_t a1)
{
  v2 = sub_191C82F1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C825DC(uint64_t a1)
{
  v2 = sub_191C82E74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C82618(uint64_t a1)
{
  v2 = sub_191C82E74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_191C82654@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_191CC73E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_191CC73E8();

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

uint64_t sub_191C82720(uint64_t a1)
{
  v2 = sub_191C82E20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C8275C(uint64_t a1)
{
  v2 = sub_191C82E20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t EncodedQueryDescriptor.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_191C83954(0, &qword_1EADCCA30, sub_191C82E20, &type metadata for EncodedQueryDescriptor.MergeCodingKeys, MEMORY[0x1E69E6F58]);
  *&v61 = v4;
  *&v60 = *(v4 - 8);
  v5 = *(v60 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  *&v59 = &v51 - v7;
  sub_191C83954(0, &qword_1EADCCA40, sub_191C82E74, &type metadata for EncodedQueryDescriptor.ConcatenateCodingKeys, v3);
  *&v58 = v8;
  *&v57 = *(v8 - 8);
  v9 = *(v57 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  *&v56 = &v51 - v11;
  sub_191C83954(0, &qword_1EADCCA50, sub_191C82EC8, &type metadata for EncodedQueryDescriptor.BaseCodingKeys, v3);
  *&v55 = v12;
  v53 = *(v12 - 8);
  v13 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v54 = &v51 - v15;
  sub_191C83954(0, &qword_1EADCCA60, sub_191C82F1C, &type metadata for EncodedQueryDescriptor.CodingKeys, v3);
  v17 = *(v16 - 8);
  v63 = v16;
  v64 = v17;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v51 - v20;
  v22 = *v1;
  v52 = v1[1];
  v23 = v1[3];
  v51 = v1[2];
  v24 = v1[4];
  v25 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C82F1C();
  v26 = v21;
  sub_191CC7548();
  v27 = (v24 >> 60) & 3;
  if (v27)
  {
    if (v27 == 1)
    {
      v28 = *(v22 + 48);
      v55 = *(v22 + 72);
      v59 = *(v22 + 56);
      v29 = *(v22 + 88);
      LOBYTE(v65) = 1;
      sub_191C82E74();
      v30 = *(v22 + 16);
      v60 = *(v22 + 32);
      v61 = v30;
      v31 = v56;
      v32 = v63;
      v33 = v21;
      sub_191CC72B8();
      v65 = v61;
      v66 = v60;
      v67 = v28;
      v68 = 0;
      sub_191C6D8B4();
      v34 = v58;
      v35 = v62;
      sub_191CC7348();
      if (!v35)
      {
        v65 = v59;
        v66 = v55;
        v67 = v29;
        v68 = 1;
        sub_191CC7348();
      }

      (*(v57 + 8))(v31, v34);
      v36 = *(v64 + 8);
      v37 = v33;
    }

    else
    {
      v45 = *(v22 + 48);
      v55 = *(v22 + 72);
      v56 = *(v22 + 56);
      v46 = *(v22 + 88);
      LOBYTE(v65) = 2;
      sub_191C82E20();
      v47 = *(v22 + 16);
      v57 = *(v22 + 32);
      v58 = v47;
      v48 = v59;
      v32 = v63;
      sub_191CC72B8();
      v65 = v58;
      v66 = v57;
      v67 = v45;
      v68 = 0;
      sub_191C6D8B4();
      v49 = v61;
      v50 = v62;
      sub_191CC7348();
      if (!v50)
      {
        v65 = v56;
        v66 = v55;
        v67 = v46;
        v68 = 1;
        sub_191CC7348();
      }

      (*(v60 + 8))(v48, v49);
      v36 = *(v64 + 8);
      v37 = v26;
    }

    return v36(v37, v32);
  }

  else
  {
    v38 = v23;
    v39 = v53;
    LOBYTE(v65) = 0;
    sub_191C82EC8();
    v40 = v54;
    v41 = v63;
    sub_191CC72B8();
    *&v65 = v22;
    *(&v65 + 1) = v52;
    *&v66 = v51;
    v68 = 0;
    sub_191C82F70();
    v42 = v55;
    v43 = v62;
    sub_191CC7348();
    if (!v43)
    {
      *&v65 = v38;
      *(&v65 + 1) = v24;
      v68 = 1;
      sub_191C6D2C4();
      sub_191CC7348();
    }

    (*(v39 + 8))(v40, v42);
    return (*(v64 + 8))(v26, v41);
  }
}

unint64_t sub_191C82E20()
{
  result = qword_1EADCCA38;
  if (!qword_1EADCCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCA38);
  }

  return result;
}

unint64_t sub_191C82E74()
{
  result = qword_1EADCCA48;
  if (!qword_1EADCCA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCA48);
  }

  return result;
}

unint64_t sub_191C82EC8()
{
  result = qword_1EADCCA58;
  if (!qword_1EADCCA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCA58);
  }

  return result;
}

unint64_t sub_191C82F1C()
{
  result = qword_1EADCCA68;
  if (!qword_1EADCCA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCA68);
  }

  return result;
}

unint64_t sub_191C82F70()
{
  result = qword_1EADCCA70;
  if (!qword_1EADCCA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCA70);
  }

  return result;
}

uint64_t EncodedQueryDescriptor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = MEMORY[0x1E69E6F48];
  sub_191C83954(0, &qword_1EADCCA78, sub_191C82E20, &type metadata for EncodedQueryDescriptor.MergeCodingKeys, MEMORY[0x1E69E6F48]);
  v67 = v4;
  v64 = *(v4 - 8);
  v5 = *(v64 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v66 = &v59 - v7;
  sub_191C83954(0, &qword_1EADCCA80, sub_191C82E74, &type metadata for EncodedQueryDescriptor.ConcatenateCodingKeys, v3);
  v9 = *(v8 - 8);
  v62 = v8;
  v63 = v9;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v11);
  v65 = &v59 - v12;
  sub_191C83954(0, &qword_1EADCCA88, sub_191C82EC8, &type metadata for EncodedQueryDescriptor.BaseCodingKeys, v3);
  v14 = v13;
  v61 = *(v13 - 8);
  v15 = *(v61 + 64);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v59 - v17;
  sub_191C83954(0, &qword_1EADCCA90, sub_191C82F1C, &type metadata for EncodedQueryDescriptor.CodingKeys, v3);
  v20 = v19;
  v68 = *(v19 - 8);
  v21 = *(v68 + 64);
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v59 - v23;
  v26 = a1[3];
  v25 = a1[4];
  v70 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v26);
  sub_191C82F1C();
  v27 = v69;
  sub_191CC7528();
  if (!v27)
  {
    v28 = v14;
    v30 = v65;
    v29 = v66;
    v31 = v67;
    v32 = sub_191CC7298();
    v33 = (2 * *(v32 + 16)) | 1;
    v75 = v32;
    v76 = v32 + 32;
    v77 = 0;
    v78 = v33;
    v34 = sub_191C23FC8();
    if (v34 == 3 || v77 != v78 >> 1)
    {
      v36 = sub_191CC7028();
      swift_allocError();
      v37 = v20;
      v39 = v38;
      sub_191C2CAB4();
      v40 = v24;
      v42 = *(v41 + 48);
      *v39 = &type metadata for EncodedQueryDescriptor;
      sub_191CC71D8();
      sub_191CC7008();
      (*(*(v36 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v36);
      swift_willThrow();
      (*(v68 + 8))(v40, v37);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34)
      {
        if (v34 == 1)
        {
          LOBYTE(v72) = 1;
          sub_191C82E74();
          sub_191CC71C8();
          v35 = v68;
          v47 = v20;
          v48 = swift_allocObject();
          LOBYTE(v72) = 0;
          sub_191C839BC();
          v49 = v62;
          sub_191CC7268();
          LOBYTE(v72) = 1;
          sub_191CC7268();
          (*(v63 + 8))(v30, v49);
          (*(v35 + 8))(v24, v47);
          swift_unknownObjectRelease();
          v55 = 0;
          v56 = 0;
          v57 = xmmword_191DD91A0;
        }

        else
        {
          LOBYTE(v72) = 2;
          sub_191C82E20();
          v44 = v20;
          v45 = v29;
          sub_191CC71C8();
          v46 = v68;
          v50 = v44;
          v51 = swift_allocObject();
          LOBYTE(v72) = 0;
          sub_191C839BC();
          sub_191CC7268();
          LOBYTE(v72) = 1;
          sub_191CC7268();
          (*(v64 + 8))(v45, v31);
          (*(v46 + 8))(v24, v50);
          swift_unknownObjectRelease();
          v55 = 0;
          v56 = 0;
          v57 = xmmword_191DD9190;
          v48 = v51;
        }

        v58 = v60;
      }

      else
      {
        LOBYTE(v72) = 0;
        sub_191C82EC8();
        sub_191CC71C8();
        LOBYTE(v71) = 0;
        sub_191C83A10();
        sub_191CC7268();
        v52 = v20;
        v53 = v24;
        v54 = v72;
        v55 = v73;
        v56 = v74;
        v79 = 1;
        sub_191C6D270();
        sub_191CC7268();
        (*(v61 + 8))(v18, v28);
        (*(v68 + 8))(v53, v52);
        swift_unknownObjectRelease();
        v57 = v71;
        v58 = v60;
        v48 = v54;
      }

      *v58 = v48;
      *(v58 + 8) = v55;
      *(v58 + 16) = v56;
      *(v58 + 24) = v57;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v70);
}

void sub_191C83954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_191C839BC()
{
  result = qword_1EADCCA98;
  if (!qword_1EADCCA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCA98);
  }

  return result;
}

unint64_t sub_191C83A10()
{
  result = qword_1EADCCAA0[0];
  if (!qword_1EADCCAA0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EADCCAA0);
  }

  return result;
}

uint64_t TypeQueryDescriptor<>.limit(_:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v32 = a2;
  *&v33 = a1;
  v34 = a6;
  v9 = *(a4 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v16 = &v31[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v31[-v18];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a5 + 8))(v33, v32 & 1, AssociatedTypeWitness, a5);
  (*(v11 + 8))(v19, AssociatedTypeWitness);
  v21 = *(v11 + 32);
  v21(v19, v16, AssociatedTypeWitness);
  (*(v9 + 48))(&v35, a3, v9);
  v33 = v35;
  v22 = v36;
  v23 = *(*(a4 + 8) + 8);
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v27 = v34;
  *v34 = v33;
  *(v27 + 2) = v22;
  v28 = v27;
  v37 = AssociatedTypeWitness;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  Descriptor = type metadata accessor for BaseQueryDescriptor();
  return v21(&v28[*(Descriptor + 52)], v19, AssociatedTypeWitness);
}

uint64_t TypeQueryDescriptor<>.filter(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v32 = a5;
  v9 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v31 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a4 + 16))(a1, AssociatedTypeWitness, a4);
  (*(v11 + 8))(v19, AssociatedTypeWitness);
  v21 = *(v11 + 32);
  v21(v19, v16, AssociatedTypeWitness);
  (*(v9 + 48))(&v33, a2, v9);
  v31 = v33;
  v22 = v34;
  v23 = *(*(a3 + 8) + 8);
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v27 = v32;
  *v32 = v31;
  *(v27 + 2) = v22;
  v28 = v27;
  v35 = AssociatedTypeWitness;
  v36 = v24;
  v37 = v25;
  v38 = v26;
  Descriptor = type metadata accessor for BaseQueryDescriptor();
  return (v21)(v28 + *(Descriptor + 52), v19, AssociatedTypeWitness);
}

uint64_t TypeQueryDescriptor<>.sort(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v32 = a5;
  v9 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v31 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a4 + 16))(a1, AssociatedTypeWitness, a4);
  (*(v11 + 8))(v19, AssociatedTypeWitness);
  v21 = *(v11 + 32);
  v21(v19, v16, AssociatedTypeWitness);
  (*(v9 + 48))(&v33, a2, v9);
  v31 = v33;
  v22 = v34;
  v23 = *(*(a3 + 8) + 8);
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v27 = v32;
  *v32 = v31;
  *(v27 + 2) = v22;
  v28 = v27;
  v35 = AssociatedTypeWitness;
  v36 = v24;
  v37 = v25;
  v38 = v26;
  Descriptor = type metadata accessor for BaseQueryDescriptor();
  return (v21)(v28 + *(Descriptor + 52), v19, AssociatedTypeWitness);
}

uint64_t TypeQueryDescriptor<>.within(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v32 = a5;
  v9 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v31 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a4 + 8))(a1, AssociatedTypeWitness, a4);
  (*(v11 + 8))(v19, AssociatedTypeWitness);
  v21 = *(v11 + 32);
  v21(v19, v16, AssociatedTypeWitness);
  (*(v9 + 48))(&v33, a2, v9);
  v31 = v33;
  v22 = v34;
  v23 = *(*(a3 + 8) + 8);
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v27 = v32;
  *v32 = v31;
  *(v27 + 2) = v22;
  v28 = v27;
  v35 = AssociatedTypeWitness;
  v36 = v24;
  v37 = v25;
  v38 = v26;
  Descriptor = type metadata accessor for BaseQueryDescriptor();
  return (v21)(v28 + *(Descriptor + 52), v19, AssociatedTypeWitness);
}

uint64_t TypeQueryDescriptor<>.sortAscending()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v30 = a4;
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v29 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a3 + 8))(AssociatedTypeWitness, a3);
  (*(v9 + 8))(v17, AssociatedTypeWitness);
  v19 = *(v9 + 32);
  v19(v17, v14, AssociatedTypeWitness);
  (*(v7 + 48))(&v31, a1, v7);
  v29 = v31;
  v20 = v32;
  v21 = *(*(a2 + 8) + 8);
  v22 = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  v25 = v30;
  *v30 = v29;
  *(v25 + 2) = v20;
  v26 = v25;
  v33 = AssociatedTypeWitness;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  Descriptor = type metadata accessor for BaseQueryDescriptor();
  return (v19)(v26 + *(Descriptor + 52), v17, AssociatedTypeWitness);
}

uint64_t TypeQueryDescriptor<>.sortDescending()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v30 = a4;
  v7 = *(a2 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = &v29 - v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a3 + 16))(AssociatedTypeWitness, a3);
  (*(v9 + 8))(v17, AssociatedTypeWitness);
  v19 = *(v9 + 32);
  v19(v17, v14, AssociatedTypeWitness);
  (*(v7 + 48))(&v31, a1, v7);
  v29 = v31;
  v20 = v32;
  v21 = *(*(a2 + 8) + 8);
  v22 = swift_getAssociatedTypeWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  v25 = v30;
  *v30 = v29;
  *(v25 + 2) = v20;
  v26 = v25;
  v33 = AssociatedTypeWitness;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  Descriptor = type metadata accessor for BaseQueryDescriptor();
  return (v19)(v26 + *(Descriptor + 52), v17, AssociatedTypeWitness);
}

uint64_t TypeQueryDescriptor<>.withOptions(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v32 = a5;
  v9 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v14 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v13);
  v16 = &v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v17);
  v19 = &v31 - v18;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 8))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a4 + 24))(a1, AssociatedTypeWitness, a4);
  (*(v11 + 8))(v19, AssociatedTypeWitness);
  v21 = *(v11 + 32);
  v21(v19, v16, AssociatedTypeWitness);
  (*(v9 + 48))(&v33, a2, v9);
  v31 = v33;
  v22 = v34;
  v23 = *(*(a3 + 8) + 8);
  v24 = swift_getAssociatedTypeWitness();
  v25 = swift_getAssociatedConformanceWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v27 = v32;
  *v32 = v31;
  *(v27 + 2) = v22;
  v28 = v27;
  v35 = AssociatedTypeWitness;
  v36 = v24;
  v37 = v25;
  v38 = v26;
  Descriptor = type metadata accessor for BaseQueryDescriptor();
  return (v21)(v28 + *(Descriptor + 52), v19, AssociatedTypeWitness);
}

uint64_t (*MergeQueryDescriptor.queryDescriptor2.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t MergeQueryDescriptor<>.evaluate(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_191C84D14, 0, 0);
}

uint64_t sub_191C84D14()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = objc_allocWithZone(type metadata accessor for QueryStore());
  v0[10] = QueryStore.init(healthStore:)(v2);
  v4 = swift_task_alloc();
  v0[11] = v4;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  *v4 = v0;
  v4[1] = sub_191C84DF4;
  v9 = v0[9];
  v10 = v0[6];
  v11 = v0[5];
  v12 = v0[2];
  v15 = v0[7];
  v16 = v0[8];

  return QueryStore.evaluate<A, B>(_:)(v12, v9, v5, v6, v7, v8, v11, v10);
}

uint64_t sub_191C84DF4()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(v3 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_191C84F30, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_191C84F30()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 96);

  return v1();
}

uint64_t MergeQueryDescriptor<>.evaluate(in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_191C84FBC, 0, 0);
}

{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_191C851F4, 0, 0);
}

uint64_t sub_191C84FBC()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = objc_allocWithZone(type metadata accessor for QueryStore());
  v0[8] = QueryStore.init(healthStore:)(v2);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  *v4 = v0;
  v4[1] = sub_191C85090;
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  v12 = v0[2];

  return QueryStore.evaluate<A, B>(_:)(v12, v9, v5, v6, v7, v8, v11, v10);
}

uint64_t sub_191C85090()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_191C86A6C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_191C851F4()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = objc_allocWithZone(type metadata accessor for QueryStore());
  v0[8] = QueryStore.init(healthStore:)(v2);
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  *v4 = v0;
  v4[1] = sub_191C852C8;
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  v12 = v0[2];

  return QueryStore.evaluate<A, B>(_:)(v12, v9, v5, v6, v7, v8, v11, v10);
}

uint64_t sub_191C852C8()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_191C85404, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_191C85404()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1();
}

uint64_t MergeQueryDescriptor<>.evaluate(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_191C8548C, 0, 0);
}

uint64_t sub_191C8548C()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = objc_allocWithZone(type metadata accessor for QueryStore());
  v0[6] = QueryStore.init(healthStore:)(v2);
  v4 = swift_task_alloc();
  v0[7] = v4;
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  *v4 = v0;
  v4[1] = sub_191C8555C;
  v9 = v0[5];
  v10 = v0[2];

  return QueryStore.evaluate<A, B>(_:)(v10, v9, v5, v6, v7, v8);
}

uint64_t sub_191C8555C()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_191C85698, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_191C85698()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1();
}

uint64_t (*ConcatenateQueryDescriptor.queryDescriptor2.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t sub_191C8583C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = swift_allocObject();
  (*(*(*(*(a1 + 32) + 8) + 8) + 16))(*(a1 + 16));
  if (v4)
  {
    return swift_deallocUninitializedObject();
  }

  v9 = v3 + *(a1 + 52);
  result = (*(*(*(*(a1 + 40) + 8) + 8) + 16))(*(a1 + 24));
  *a3 = v8;
  a3[1] = 0;
  a3[2] = 0;
  a3[3] = 0;
  a3[4] = a2;
  return result;
}

uint64_t sub_191C85934(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_191C85970(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_191C859AC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_191C85A00(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_191C85A80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 24) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 24) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_191C85C04(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 24) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 24] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *(a1 + 1) = 0;
    *(a1 + 2) = 0;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_191C85EA4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 != 1 && *(a1 + 40))
  {
    return (*a1 + 2);
  }

  if ((~*(a1 + 32) & 0x3000000000000000) != 0)
  {
    v3 = -1;
  }

  else
  {
    v3 = 0;
  }

  return (v3 + 1);
}

uint64_t sub_191C85EEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 1)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 2;
    if (a3 >= 2)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 2)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 32) = 0x3000000000000000;
    }
  }

  return result;
}

uint64_t sub_191C85F8C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_191C86018(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_191C861F4(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

unint64_t sub_191C8650C()
{
  result = qword_1EADCCC28;
  if (!qword_1EADCCC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC28);
  }

  return result;
}

unint64_t sub_191C86564()
{
  result = qword_1EADCCC30;
  if (!qword_1EADCCC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC30);
  }

  return result;
}

unint64_t sub_191C865BC()
{
  result = qword_1EADCCC38;
  if (!qword_1EADCCC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC38);
  }

  return result;
}

unint64_t sub_191C86614()
{
  result = qword_1EADCCC40;
  if (!qword_1EADCCC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC40);
  }

  return result;
}

unint64_t sub_191C8666C()
{
  result = qword_1EADCCC48;
  if (!qword_1EADCCC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC48);
  }

  return result;
}

unint64_t sub_191C866C4()
{
  result = qword_1EADCCC50;
  if (!qword_1EADCCC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC50);
  }

  return result;
}

unint64_t sub_191C8671C()
{
  result = qword_1EADCCC58;
  if (!qword_1EADCCC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC58);
  }

  return result;
}

unint64_t sub_191C86774()
{
  result = qword_1EADCCC60;
  if (!qword_1EADCCC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC60);
  }

  return result;
}

unint64_t sub_191C867CC()
{
  result = qword_1EADCCC68;
  if (!qword_1EADCCC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC68);
  }

  return result;
}

unint64_t sub_191C86824()
{
  result = qword_1EADCCC70;
  if (!qword_1EADCCC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC70);
  }

  return result;
}

unint64_t sub_191C8687C()
{
  result = qword_1EADCCC78;
  if (!qword_1EADCCC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC78);
  }

  return result;
}

unint64_t sub_191C868D4()
{
  result = qword_1EADCCC80;
  if (!qword_1EADCCC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCC80);
  }

  return result;
}

uint64_t sub_191C86928(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702060386 && a2 == 0xE400000000000000;
  if (v3 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E657461636E6F63 && a2 == 0xEB00000000657461 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656772656DLL && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_191CC73E8();

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

void sub_191C86A70()
{
  v1 = v0;
  v2 = [v0 minimum];
  v3 = objc_opt_self();
  v4 = [v3 millimeterOfMercuryUnit];
  [v2 doubleValueForUnit_];
  v6 = v5;

  v7 = [v1 maximum];
  v8 = [v3 millimeterOfMercuryUnit];
  [v7 doubleValueForUnit_];
  v10 = v9;

  v11 = 1.79769313e308 - fabs(v10);
  if (1.79769313e308 - fabs(v6) > 2.22044605e-16)
  {
    if (v11 <= 2.22044605e-16)
    {
      v12 = [v1 isMinimumInclusive];
      v13 = v12 == 0;
      if (v12)
      {
        v14 = 61;
      }

      else
      {
        v14 = 0;
      }

      if (v13)
      {
        v15 = 0xE000000000000000;
      }

      else
      {
        v15 = 0xE100000000000000;
      }

      MEMORY[0x193B01F90](v14, v15);

      if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v6 > -9.22337204e18)
        {
          if (v6 < 9.22337204e18)
          {
            goto LABEL_34;
          }

          goto LABEL_41;
        }

        goto LABEL_38;
      }

      __break(1u);
      goto LABEL_36;
    }

    if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v6 <= -9.22337204e18)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (v6 >= 9.22337204e18)
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    sub_191CC7398();
    MEMORY[0x193B01F90](11822, 0xE200000000000000);
    if ([v1 isMaximumInclusive])
    {
      v16 = 46;
    }

    else
    {
      v16 = 60;
    }

    MEMORY[0x193B01F90](v16, 0xE100000000000000);

    if ((~*&v10 & 0x7FF0000000000000) == 0)
    {
      goto LABEL_44;
    }

    if (v10 <= -9.22337204e18)
    {
LABEL_45:
      __break(1u);
      return;
    }

    if (v10 < 9.22337204e18)
    {
LABEL_34:
      v21 = sub_191CC7398();
      MEMORY[0x193B01F90](v21);

      return;
    }

    __break(1u);
LABEL_25:
    v17 = [v1 isMaximumInclusive];
    v18 = v17 == 0;
    if (v17)
    {
      v19 = 61;
    }

    else
    {
      v19 = 0;
    }

    if (v18)
    {
      v20 = 0xE000000000000000;
    }

    else
    {
      v20 = 0xE100000000000000;
    }

    MEMORY[0x193B01F90](v19, v20);

    if ((~*&v10 & 0x7FF0000000000000) == 0)
    {
      goto LABEL_37;
    }

    if (v10 <= -9.22337204e18)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    if (v10 >= 9.22337204e18)
    {
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    goto LABEL_34;
  }

  if (v11 > 2.22044605e-16)
  {
    goto LABEL_25;
  }
}

unint64_t HKBloodPressureClassificationGuidelines.description.getter(uint64_t a1)
{
  v1 = 0x6E776F6E6B6E55;
  if (!a1)
  {
    v1 = 0xD000000000000020;
  }

  if (a1 == 1)
  {
    v1 = 0xD000000000000024;
  }

  if (a1 == 2)
  {
    return 0xD00000000000003CLL;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_191C86EAC@<X0>(uint64_t *a1@<X8>)
{
  result = _sSo37HKBloodPressureClassificationCategorya9HealthKitE8allCasesSayABGvgZ_0();
  *a1 = result;
  return result;
}

uint64_t sub_191C86ED4()
{
  v0 = sub_191CC6348();
  __swift_allocate_value_buffer(v0, qword_1EADE7090);
  __swift_project_value_buffer(v0, qword_1EADE7090);
  return sub_191CC6338();
}