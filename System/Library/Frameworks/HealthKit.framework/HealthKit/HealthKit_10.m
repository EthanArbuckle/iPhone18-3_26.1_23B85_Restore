uint64_t sub_191C86F64()
{
  type metadata accessor for HKError(0);
  sub_191C872E8(0, &unk_1EADCD110, sub_191C3D154, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191DD4540;
  v1 = *MEMORY[0x1E696A578];
  *(inited + 32) = sub_191CC67B8();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v2;
  *(inited + 48) = 0xD000000000000034;
  *(inited + 56) = 0x8000000191D2EBA0;
  sub_191C909D0(inited);
  swift_setDeallocating();
  sub_191C40B74(inited + 32);
  sub_191BFC39C();
  sub_191CC5FA8();
  v3 = sub_191CC5FB8();

  return v3;
}

uint64_t _sSo37HKBloodPressureClassificationCategorya9HealthKitE8allCasesSayABGvgZ_0()
{
  sub_191C872E8(0, &qword_1EADCCCA8, type metadata accessor for HKBloodPressureClassificationCategory, MEMORY[0x1E69E6F90]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_191DD4750;
  *(v0 + 32) = @"AHA.Normal";
  *(v0 + 40) = @"AHA.Elevated";
  *(v0 + 48) = @"AHA.HypertensionStage1";
  *(v0 + 56) = @"AHA.HypertensionStage2";
  *(v0 + 64) = @"AHA.HypertensiveCrisis";
  *(v0 + 72) = @"ESC.NonElevated";
  *(v0 + 80) = @"ESC.Elevated";
  *(v0 + 88) = @"ESC.Hypertension";
  *(v0 + 96) = @"ESC.HypertensiveEmergency";
  *(v0 + 104) = @"FIGO.Normal";
  *(v0 + 112) = @"FIGO.MildlyElevated";
  *(v0 + 120) = @"FIGO.SeverelyElevated";
  v1 = @"AHA.Normal";
  v2 = @"AHA.Elevated";
  v3 = @"AHA.HypertensionStage1";
  v4 = @"AHA.HypertensionStage2";
  v5 = @"AHA.HypertensiveCrisis";
  v6 = @"ESC.NonElevated";
  v7 = @"ESC.Elevated";
  v8 = @"ESC.Hypertension";
  v9 = @"ESC.HypertensiveEmergency";
  v10 = @"FIGO.Normal";
  v11 = @"FIGO.MildlyElevated";
  v12 = @"FIGO.SeverelyElevated";
  return v0;
}

uint64_t sub_191C87284(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_191C872E8(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_191C872E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

id sub_191C873B8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];

  v6 = sub_191CC6778();

  return v6;
}

uint64_t sub_191C8743C(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v4 = *v2;
  v3 = v2[1];

  return v4;
}

uint64_t sub_191C8749C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_191CC67B8();
  v8 = v7;
  v9 = (a1 + *a4);
  swift_beginAccess();
  v10 = v9[1];
  *v9 = v6;
  v9[1] = v8;
}

uint64_t sub_191C87514(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = v6[1];
  *v6 = a1;
  v6[1] = a2;
}

void sub_191C87570(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = sub_191CC67B8();
  v7 = v6;

  *a3 = v5;
  a3[1] = v7;
}

id HKCloudSyncManagerRecordTaskRecord.init(ownerID:zoneID:recordID:)()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v1 = sub_191CC6778();

  v2 = sub_191CC6778();

  v3 = sub_191CC6778();

  v4 = [v0 initWithOwnerID:v1 zoneID:v2 recordID:v3];

  return v4;
}

id HKCloudSyncManagerRecordTaskRecord.init(ownerID:zoneID:recordID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = (v6 + OBJC_IVAR___HKCloudSyncManagerRecordTaskRecord_ownerID);
  *v7 = a1;
  v7[1] = a2;
  v8 = (v6 + OBJC_IVAR___HKCloudSyncManagerRecordTaskRecord_zoneID);
  *v8 = a3;
  v8[1] = a4;
  v9 = (v6 + OBJC_IVAR___HKCloudSyncManagerRecordTaskRecord_recordID);
  *v9 = a5;
  v9[1] = a6;
  v11.super_class = HKCloudSyncManagerRecordTaskRecord;
  return objc_msgSendSuper2(&v11, sel_init);
}

id HKCloudSyncManagerRecordTaskRecord.init(coder:)(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

uint64_t HKCloudSyncManagerRecordTaskRecord.init(coder:)(void *a1)
{
  sub_191BFAE6C(0, qword_1EADCCD40, 0x1E696AEC0);
  v2 = sub_191CC6D88();
  if (v2)
  {
    v3 = v2;
    sub_191CC67A8();
  }

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall HKCloudSyncManagerRecordTaskRecord.encode(with:)(NSCoder with)
{
  v3 = [v1 ownerID];
  if (!v3)
  {
    sub_191CC67B8();
    v3 = sub_191CC6778();
  }

  v4 = sub_191CC6778();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = [v1 zoneID];
  if (!v5)
  {
    sub_191CC67B8();
    v5 = sub_191CC6778();
  }

  v6 = sub_191CC6778();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = [v1 recordID];
  if (!v7)
  {
    sub_191CC67B8();
    v7 = sub_191CC6778();
  }

  v8 = sub_191CC6778();
  [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
}

id HKCloudSyncManagerRecordTaskRecord.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

void keypath_setTm(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = *a2;
  v9 = sub_191CC6778();
  [v8 *a5];
}

uint64_t CodableBox.wrappedValue.getter()
{
  sub_19198EBF4();

  return swift_unknownObjectRetain();
}

uint64_t CodableBox.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t CodableBox.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v21 = a2;
  sub_191C8A1E0(0, &qword_1EADCCCE0, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6, v10);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C8A094();
  sub_191CC7528();
  if (!v3)
  {
    v14 = v8;
    v20 = a3;
    sub_191C57508();
    sub_191CC7268();
    v15 = v7;
    v16 = v22[0];
    v17 = v22[1];
    sub_191BFAE6C(0, &qword_1EADCCCF8, 0x1E696ACD0);
    sub_191C8A0E8();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_191DD4540;
    *(v18 + 32) = v21;
    sub_191CC6CD8();

    if (v22[3])
    {
      if (swift_dynamicCast())
      {
        (*(v14 + 8))(v12, v15);
        sub_191C049D8(v16, v17);
        *v20 = v22[5];
        return __swift_destroy_boxed_opaque_existential_0(a1);
      }
    }

    else
    {
      sub_191C74400(v22);
    }

    sub_191C8A18C();
    swift_allocError();
    swift_willThrow();
    sub_191C049D8(v16, v17);
    (*(v14 + 8))(v12, v15);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t DefaultEncodable.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v31[2] = *MEMORY[0x1E69E9840];
  sub_191C8A1E0(0, &unk_1EADCCD20, MEMORY[0x1E69E6F58]);
  v30 = v6;
  v29 = *(v6 - 8);
  v7 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v29 - v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v16 = &v29 - v15;
  v17 = objc_opt_self();
  (*(a3 + 16))(a2, a3);
  v18 = sub_191CC73D8();
  (*(v12 + 8))(v16, AssociatedTypeWitness);
  v31[0] = 0;
  v19 = [v17 archivedDataWithRootObject:v18 requiringSecureCoding:1 error:v31];
  swift_unknownObjectRelease();
  v20 = v31[0];
  if (v19)
  {
    v21 = sub_191CC6048();
    v23 = v22;

    v24 = a1[4];
    __swift_project_boxed_opaque_existential_0(a1, a1[3]);
    sub_191C8A094();
    sub_191CC7548();
    v31[0] = v21;
    v31[1] = v23;
    sub_191C511C4();
    v25 = v30;
    sub_191CC7348();
    (*(v29 + 8))(v10, v25);
    result = sub_191C049D8(v21, v23);
  }

  else
  {
    v27 = v20;
    sub_191CC5FC8();

    result = swift_willThrow();
  }

  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t sub_191C88464@<X0>(uint64_t *a1@<X8>)
{
  *a1 = sub_19198EBF4();

  return swift_unknownObjectRetain();
}

void (*sub_191C884A4(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = CodableBox.wrappedValue.modify();
  return sub_191C88514;
}

uint64_t CodableBox<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v3 = *(a2 + 16);
  return sub_191CC66A8();
}

uint64_t CodableBox<>.hashValue.getter(uint64_t a1)
{
  v3 = *v1;
  sub_191CC74C8();
  v4 = *(a1 + 16);
  sub_191CC66A8();
  return sub_191CC7508();
}

uint64_t sub_191C88618(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v5 = *a1;
  v7 = *a2;
  v8 = v5;
  return a5(&v8, &v7) & 1;
}

uint64_t OptionalCodableBox.wrappedValue.getter()
{
  sub_19198EBF4();

  return swift_unknownObjectRetain();
}

uint64_t sub_191C88694@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v5 = *(a2 + a3 - 8);
  v7 = *a1;
  type metadata accessor for OptionalCodableBox();
  *a4 = sub_19198EBF4();

  return swift_unknownObjectRetain();
}

uint64_t sub_191C886F0(uint64_t *a1)
{
  v1 = *a1;
  v2 = swift_unknownObjectRetain();
  return OptionalCodableBox.wrappedValue.setter(v2);
}

uint64_t OptionalCodableBox.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t (*OptionalCodableBox.wrappedValue.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = *v1;
  a1[1] = v1;
  swift_unknownObjectRetain();
  return sub_191C88794;
}

uint64_t sub_191C88794(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (a2)
  {
    v4 = *v3;
    v5 = *a1;
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *v3 = v2;

    return swift_unknownObjectRelease();
  }

  else
  {
    v7 = *v3;
    result = swift_unknownObjectRelease();
    *v3 = v2;
  }

  return result;
}

uint64_t sub_191C88810(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x42656C6261646F63 && a2 == 0xEA0000000000786FLL)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_191CC73E8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_191C888AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  v5 = *(a3 + 16);
  result = sub_191C88810(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_191C888DC@<X0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  result = sub_191C2230C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_191C8890C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_191C88960(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t OptionalCodableBox.encode(to:)(void *a1, uint64_t a2)
{
  v12[1] = *(a2 + 16);
  type metadata accessor for OptionalCodableBox.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_191CC7378();
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = v12 - v7;
  v9 = *v2;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  swift_unknownObjectRetain();
  sub_191CC7548();
  v14 = v9;
  type metadata accessor for CodableBox();
  swift_getWitnessTable();
  sub_191CC72F8();
  swift_unknownObjectRelease();
  return (*(v13 + 8))(v8, v4);
}

uint64_t OptionalCodableBox.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v14 = a2;
  type metadata accessor for OptionalCodableBox.CodingKeys();
  swift_getWitnessTable();
  v4 = sub_191CC72A8();
  v13 = *(v4 - 8);
  v5 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v13 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191CC7528();
  if (!v2)
  {
    v11 = v13;
    v10 = v14;
    type metadata accessor for CodableBox();
    swift_getWitnessTable();
    sub_191CC7218();
    (*(v11 + 8))(v8, v4);
    *v10 = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

BOOL static OptionalCodableBox<>.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = *a2;
  if (!*a1)
  {
    if (!v2)
    {
      return 1;
    }

    v4 = *a2;
    goto LABEL_8;
  }

  if (!v2)
  {
LABEL_8:
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return 0;
  }

  swift_unknownObjectRetain_n();
  swift_unknownObjectRetain();
  v3 = sub_191CC6768();
  swift_unknownObjectRelease_n();
  swift_unknownObjectRelease();
  return (v3 & 1) != 0;
}

BOOL sub_191C88E38(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static OptionalCodableBox<>.== infix(_:_:)(a1, a2);
}

uint64_t OptionalCodableBox<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v3 = *(a2 + 16);
  type metadata accessor for CodableBox();
  sub_191CC6DD8();
  swift_unknownObjectRetain();
  swift_getWitnessTable();
  sub_191CC6DE8();
  return swift_unknownObjectRelease();
}

uint64_t OptionalCodableBox<>.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  sub_191CC74C8();
  OptionalCodableBox<>.hash(into:)(v4, a1);
  return sub_191CC7508();
}

uint64_t static OptionalCodableBox<>.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if (*a1)
  {
    v2 = *a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = *a1;
  return sub_191CC66F8() & 1;
}

uint64_t sub_191C88FD8(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static OptionalCodableBox<>.< infix(_:_:)(a1, a2);
}

uint64_t CodableBoxArray.wrappedValue.getter()
{
  sub_19198EBF4();
}

uint64_t CodableBoxArray.wrappedValue.setter(uint64_t a1)
{
  v3 = *v1;

  *v1 = a1;
  return result;
}

uint64_t CodableBoxArray.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v23 = a2;
  sub_191C8A1E0(0, &qword_1EADCCCE0, MEMORY[0x1E69E6F48]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6, v10);
  v12 = &v20 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C8A094();
  sub_191CC7528();
  if (!v3)
  {
    v14 = v8;
    v15 = v23;
    v22 = a3;
    sub_191C57508();
    sub_191CC7268();
    v16 = v24[0];
    v20 = v24[1];
    sub_191BFAE6C(0, &qword_1EADCCCF8, 0x1E696ACD0);
    sub_191C8A0E8();
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_191DD1F40;
    *(v17 + 32) = sub_191BFAE6C(0, &qword_1EADCCD30, 0x1E695DEC8);
    *(v17 + 40) = v15;
    v21 = v16;
    v18 = v20;
    sub_191CC6CD8();

    if (v24[3])
    {
      sub_191CC6978();
      if (swift_dynamicCast())
      {
        (*(v14 + 8))(v12, v7);
        sub_191C049D8(v21, v18);
        *v22 = v24[5];
        return __swift_destroy_boxed_opaque_existential_0(a1);
      }
    }

    else
    {
      sub_191C74400(v24);
    }

    sub_191C8A18C();
    swift_allocError();
    swift_willThrow();
    sub_191C049D8(v21, v18);
    (*(v14 + 8))(v12, v7);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void (*sub_191C893B0(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = CodableBoxArray.wrappedValue.modify();
  return sub_191C8A758;
}

uint64_t static CodableBoxArray<>.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  return sub_191CC69A8();
}

uint64_t sub_191C8942C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 - 8);
  v5 = *(a3 + 16);
  return static CodableBoxArray<>.== infix(_:_:)(a1, a2);
}

uint64_t CodableBoxArray<>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(a2 + 16);
  return sub_191CC6988();
}

uint64_t CodableBoxArray<>.hashValue.getter(uint64_t a1)
{
  v3 = *v1;
  sub_191CC74C8();
  v4 = *(a1 + 16);
  sub_191CC6988();
  return sub_191CC7508();
}

uint64_t CodableBoxDictionary.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X5>, void *a5@<X8>)
{
  v33 = a3;
  v34 = a4;
  v32 = a2;
  sub_191C8A1E0(0, &qword_1EADCCCE0, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8, v12);
  v14 = &v27 - v13;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C8A094();
  sub_191CC7528();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v30 = a5;
  v31 = a1;
  v17 = v10;
  v19 = v33;
  v18 = v34;
  sub_191C57508();
  sub_191CC7268();
  v20 = v35[0];
  v28 = v35[1];
  sub_191BFAE6C(0, &qword_1EADCCCF8, 0x1E696ACD0);
  sub_191C8A0E8();
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_191DD1F50;
  *(v21 + 32) = sub_191BFAE6C(0, &qword_1EADCCD38, 0x1E695DF20);
  *(v21 + 40) = sub_191BFAE6C(0, qword_1EADCCD40, 0x1E696AEC0);
  *(v21 + 48) = v19;
  v29 = v20;
  v22 = v28;
  sub_191CC6CD8();

  v23 = v18;
  v24 = v32;
  if (v35[3])
  {
    v25 = v19;
    sub_191CC6648();
    if (swift_dynamicCast())
    {
      (*(v17 + 8))(v14, v9);
      sub_191C049D8(v29, v22);
      *v30 = v35[5];
      return __swift_destroy_boxed_opaque_existential_0(v31);
    }
  }

  else
  {
    sub_191C74400(v35);
    v25 = v19;
  }

  swift_getTupleTypeMetadata2();
  v26 = sub_191CC6918();
  sub_191C89DA8(v26, v24, v25, v23);

  sub_191C8A18C();
  swift_allocError();
  swift_willThrow();
  sub_191C049D8(v29, v22);
  (*(v17 + 8))(v14, v9);
  __swift_destroy_boxed_opaque_existential_0(v31);
}

void (*sub_191C8991C(uint64_t *a1))(void *)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = CodableBoxDictionary.wrappedValue.modify();
  return sub_191C8A758;
}

uint64_t CodableBoxDictionary<>.hash(into:)(uint64_t a1, void *a2)
{
  v3 = *v2;
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[6];
  return sub_191CC6658();
}

uint64_t CodableBoxDictionary<>.hashValue.getter(void *a1)
{
  v3 = *v1;
  sub_191CC74C8();
  v4 = a1[2];
  v5 = a1[3];
  v6 = a1[6];
  sub_191CC6658();
  return sub_191CC7508();
}

uint64_t sub_191C89A58(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t, uint64_t))
{
  v6 = *(a3 - 8);
  sub_191CC74C8();
  a4(v8, a2, v6);
  return sub_191CC7508();
}

uint64_t sub_191C89AC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_191C89B4C(uint64_t a1)
{
  v2 = sub_191C8A094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C89B88(uint64_t a1)
{
  v2 = sub_191C8A094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_191C89BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_191CC6698();

  return sub_191C89C20(a1, v9, a2, a3);
}

unint64_t sub_191C89C20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v23[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v7 + 16);
    v14 = v7 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v25 + 48) + v17 * v12, a3);
      v20 = *(v24 + 8);
      v21 = sub_191CC6768();
      (*v18)(v9, a3);
      if (v21)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v23[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_191C89DA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v11);
  v13 = v24 - v12;
  if (sub_191CC6958())
  {
    sub_191CC7198();
    v14 = sub_191CC7188();
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  result = sub_191CC6958();
  if (result)
  {
    if (result >= 1)
    {
      v24[0] = v10;
      v28 = a4;
      v16 = 0;
      v17 = *(TupleTypeMetadata2 + 48);
      v26 = a3;
      v27 = (v9 + 16);
      v24[2] = a2 - 8;
      v25 = v17;
      v24[1] = a3 - 8;
      while (1)
      {
        v18 = result;
        if (sub_191CC6938())
        {
          (*(v9 + 16))(v13, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v16, TupleTypeMetadata2);
        }

        else
        {
          result = sub_191CC6FE8();
          if (v24[0] != 8)
          {
            goto LABEL_19;
          }

          v29 = result;
          (*v27)(v13, &v29, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_191C89BC4(v13, a2, v28);
        if (v19)
        {
          break;
        }

        v20 = result;
        *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v14[6] + *(*(a2 - 8) + 72) * result, v13, a2);
        result = (*(*(v26 - 8) + 32))(v14[7] + *(*(v26 - 8) + 72) * v20, &v13[v25]);
        v21 = v14[2];
        v22 = __OFADD__(v21, 1);
        v23 = v21 + 1;
        if (v22)
        {
          goto LABEL_17;
        }

        ++v16;
        v14[2] = v23;
        result = v18;
        if (v18 == v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v14;
  }

  return result;
}

unint64_t sub_191C8A094()
{
  result = qword_1EADCCCE8;
  if (!qword_1EADCCCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCCE8);
  }

  return result;
}

void sub_191C8A0E8()
{
  if (!qword_1EADCCD00)
  {
    sub_191C8A140();
    v0 = sub_191CC73A8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCCD00);
    }
  }
}

unint64_t sub_191C8A140()
{
  result = qword_1EADCCD08;
  if (!qword_1EADCCD08)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EADCCD08);
  }

  return result;
}

unint64_t sub_191C8A18C()
{
  result = qword_1EADCCD18;
  if (!qword_1EADCCD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCD18);
  }

  return result;
}

void sub_191C8A1E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_191C8A094();
    v7 = a3(a1, &type metadata for CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_191C8A31C()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_191C8A358()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_191C8A394(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_191C8A3F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_191C8A440()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_191C8A494()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_191C8A578()
{
  result = qword_1EADCCFC8;
  if (!qword_1EADCCFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCFC8);
  }

  return result;
}

unint64_t sub_191C8A5D0()
{
  result = qword_1EADCCFD0;
  if (!qword_1EADCCFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCFD0);
  }

  return result;
}

unint64_t sub_191C8A67C()
{
  result = qword_1EADCCFD8;
  if (!qword_1EADCCFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCFD8);
  }

  return result;
}

unint64_t sub_191C8A6D4()
{
  result = qword_1EADCCFE0;
  if (!qword_1EADCCFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCCFE0);
  }

  return result;
}

uint64_t sub_191C8A7B0(uint64_t a1, uint64_t *a2)
{
  v3 = sub_191CC6348();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return sub_191CC6338();
}

uint64_t sub_191C8A8D0(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_191CC6348();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  v6 = a3();
  return sub_191CC6358();
}

uint64_t sub_191C8A95C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = sub_191CC6348();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

void sub_191C8A9F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_191CC5FB8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_191C8AA64()
{
  sub_191CC74C8();
  sub_191CC61A8();
  sub_191C90168(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
  sub_191CC66A8();
  return sub_191CC7508();
}

uint64_t sub_191C8AAEC()
{
  sub_191CC61A8();
  sub_191C90168(&qword_1EADCAC70, MEMORY[0x1E69695A8]);

  return sub_191CC66A8();
}

uint64_t sub_191C8AB70()
{
  sub_191CC74C8();
  sub_191CC61A8();
  sub_191C90168(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
  sub_191CC66A8();
  return sub_191CC7508();
}

NSObject *sub_191C8ABF8()
{
  v1 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper____lazy_storage____queue;
  v2 = *&v0[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper____lazy_storage____queue];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper____lazy_storage____queue];
  }

  else
  {
    swift_getObjectType();
    v4 = [swift_getObjCClassFromMetadata() description];
    if (!v4)
    {
      sub_191CC67B8();
      v4 = sub_191CC6778();
    }

    v5 = HKCreateSerialDispatchQueue(v0, v4);

    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

char *DatabaseAccessibilityAssertionStoreKeeper.init(healthStore:)(void *a1)
{
  ObjectType = swift_getObjectType();
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__dbAccessibilityAssertionsLock;
  sub_191C8AEF0();
  v5 = swift_allocObject();
  *&v1[v4] = v5;
  v6 = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__dbAccessibilityAssertions] = MEMORY[0x1E69E7CD0];
  *&v1[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__pendingRequestsTimer] = 0;
  *(v5 + 16) = 0;
  *&v1[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__pendingRequests] = v6;
  *&v1[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__healthdRequests] = v6;
  *&v1[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__didBecomeAvailableNotificationToken] = -1;
  *&v1[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper____lazy_storage____queue] = 0;
  swift_unknownObjectWeakAssign();
  v15.receiver = v1;
  v15.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v15, sel_init);
  v8 = sub_191C8ABF8();
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14[4] = sub_191C8AFAC;
  v14[5] = v9;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_191C8B87C;
  v14[3] = &block_descriptor_22;
  v10 = _Block_copy(v14);
  v11 = v8;

  v12 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__didBecomeAvailableNotificationToken;
  swift_beginAccess();
  notify_register_dispatch("HKProtectedHealthDatabaseDidBecomeAvailableNotification", &v7[v12], v11, v10);
  swift_endAccess();
  _Block_release(v10);

  return v7;
}

void sub_191C8AEF0()
{
  if (!qword_1ED5F0030)
  {
    type metadata accessor for os_unfair_lock_s(255);
    v0 = sub_191CC7048();
    if (!v1)
    {
      atomic_store(v0, &qword_1ED5F0030);
    }
  }
}

void sub_191C8AF54()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_191C8AFB4(0);
  }
}

void sub_191C8AFB4(char a1)
{
  v2 = v1;
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord();
  v87 = *(DatabaseAccessibilityAssertionsRecord - 8);
  v4 = *(v87 + 64);
  v6 = MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord, v5);
  v80 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6, v8);
  v89 = &v72 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9, v11);
  v14 = &v72 - v13;
  v81 = v15;
  MEMORY[0x1EEE9AC00](v12, v16);
  v85 = &v72 - v17;
  v18 = sub_191CC63D8();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18, v21);
  v23 = (&v72 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v23 = sub_191C8ABF8();
  (*(v19 + 104))(v23, *MEMORY[0x1E69E8020], v18);
  v24 = sub_191CC63F8();
  (*(v19 + 8))(v23, v18);
  if ((v24 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v26 = Strong;
    v27 = objc_allocWithZone(type metadata accessor for DatabaseAccessibilityAssertionStore());
    v83 = DatabaseAccessibilityAssertionStore.init(healthStore:)(v26);
    if (v83)
    {
      v28 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__pendingRequests;
      swift_beginAccess();
      v29 = *&v2[v28];
      v30 = v29 + 56;
      v31 = 1 << *(v29 + 32);
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v33 = v32 & *(v29 + 56);
      v79 = v2;
      v34 = &v2[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__healthdRequests];
      v76 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStore____lazy_storage____proxyProvider;
      v84 = v29;

      v86 = v34;
      swift_beginAccess();
      v35 = 0;
      v36 = (v31 + 63) >> 6;
      v75 = &v92;
      v74 = a1 & 1;
      v78 = v30;
      v77 = v36;
      v73 = v14;
      if (!v33)
      {
LABEL_8:
        while (1)
        {
          v37 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          if (v37 >= v36)
          {

            sub_191C8DDBC();

            return;
          }

          v33 = *(v30 + 8 * v37);
          ++v35;
          if (v33)
          {
            v35 = v37;
            goto LABEL_12;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

      while (1)
      {
LABEL_12:
        v38 = *(v84 + 48);
        v88 = *(v87 + 72);
        v39 = v85;
        sub_191C90BAC(v38 + v88 * (__clz(__rbit64(v33)) | (v35 << 6)), v85, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
        sub_191C7B978(v39, v14);
        v40 = *v86;
        if (*(*v86 + 16))
        {
          v41 = *(v40 + 40);
          sub_191CC74C8();
          sub_191CC61A8();
          sub_191C90168(&qword_1EADCAC70, MEMORY[0x1E69695A8]);

          v42 = v14;
          sub_191CC66A8();
          v43 = sub_191CC7508();
          v44 = -1 << *(v40 + 32);
          v45 = v43 & ~v44;
          if ((*(v40 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45))
          {
            v46 = ~v44;
            while (1)
            {
              v47 = v89;
              sub_191C90BAC(*(v40 + 48) + v45 * v88, v89, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
              v48 = sub_191CC6178();
              sub_191C90AE8(v47, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
              if (v48)
              {
                break;
              }

              v45 = (v45 + 1) & v46;
              if (((*(v40 + 56 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
              {
                goto LABEL_17;
              }
            }

            v14 = v42;
            goto LABEL_19;
          }

LABEL_17:

          v14 = v42;
        }

        v49 = v80;
        sub_191C90BAC(v14, v80, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
        swift_beginAccess();
        v50 = v89;
        sub_191C78CB4(v89, v49);
        swift_endAccess();
        sub_191C90AE8(v50, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
        v51 = *(DatabaseAccessibilityAssertionsRecord + 24);
        v52 = &v14[*(DatabaseAccessibilityAssertionsRecord + 20)];
        v53 = *(v52 + 1);
        v88 = *v52;
        v54 = *&v14[v51];
        sub_191C90BAC(v14, v50, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
        v55 = (*(v87 + 80) + 24) & ~*(v87 + 80);
        v56 = swift_allocObject();
        v57 = v79;
        *(v56 + 16) = v79;
        sub_191C7B978(v50, v56 + v55);
        v58 = v57;
        v59 = v83;
        v60 = sub_191C70884();
        v61 = swift_allocObject();
        v61[2] = sub_191C907CC;
        v61[3] = v56;
        v61[4] = v59;
        v94 = sub_191C71000;
        v95 = v61;
        aBlock = MEMORY[0x1E69E9820];
        v91 = 1107296256;
        v92 = sub_191C7100C;
        v93 = &block_descriptor_47;
        v62 = _Block_copy(&aBlock);

        v63 = v59;

        v64 = [v60 clientQueueObjectHandlerWithCompletion_];
        _Block_release(v62);

        v65 = swift_allocObject();
        *(v65 + 16) = v64;
        v66 = *&v59[v76];
        v67 = swift_allocObject();
        *(v67 + 16) = v88;
        *(v67 + 24) = v53;
        *(v67 + 32) = v54;
        *(v67 + 40) = v74;
        *(v67 + 48) = sub_191C7123C;
        *(v67 + 56) = v65;
        v94 = sub_191C90850;
        v95 = v67;
        aBlock = MEMORY[0x1E69E9820];
        v91 = 1107296256;
        v92 = sub_191C707AC;
        v93 = &block_descriptor_56;
        v68 = _Block_copy(&aBlock);
        v69 = v66;

        v70 = swift_allocObject();
        *(v70 + 16) = sub_191C7123C;
        *(v70 + 24) = v65;
        v94 = sub_191C715DC;
        v95 = v70;
        aBlock = MEMORY[0x1E69E9820];
        v91 = 1107296256;
        v92 = sub_191C7081C;
        v93 = &block_descriptor_62;
        v71 = _Block_copy(&aBlock);

        [v69 fetchProxyWithHandler:v68 errorHandler:v71];
        _Block_release(v71);
        _Block_release(v68);

        v14 = v73;
LABEL_19:
        v33 &= v33 - 1;
        sub_191C90AE8(v14, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
        v30 = v78;
        v36 = v77;
        if (!v33)
        {
          goto LABEL_8;
        }
      }
    }
  }
}

uint64_t sub_191C8B87C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id DatabaseAccessibilityAssertionStoreKeeper.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__didBecomeAvailableNotificationToken;
  swift_beginAccess();
  notify_cancel(*&v0[v2]);
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t DatabaseAccessibilityAssertionStoreKeeper.fetchDatabaseAccessibilityAssertionFor(ownerIdentifier:contextType:isRecovery:timeout:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, double a7)
{
  v50 = a5;
  v51 = a6;
  v48 = a4;
  v47 = a3;
  v46 = a2;
  v45 = a1;
  v55 = sub_191CC6378();
  v58 = *(v55 - 8);
  v9 = *(v58 + 64);
  MEMORY[0x1EEE9AC00](v55, v10);
  v54 = &v43 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_191CC63A8();
  v56 = *(v12 - 8);
  v57 = v12;
  v13 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v44 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_191CC6148();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20, v22);
  v24 = &v43 - v23;
  v53 = &v43 - v23;
  sub_191CC6138();
  v52 = sub_191C8ABF8();
  v25 = *(v17 + 16);
  v49 = v16;
  v25(v21, v24, v16);
  v26 = (*(v17 + 80) + 24) & ~*(v17 + 80);
  v27 = (v18 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 39) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 16) = v7;
  (*(v17 + 32))(v29 + v26, v21, v16);
  v30 = (v29 + v27);
  v31 = v46;
  *v30 = v45;
  v30[1] = v31;
  v32 = v29 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v32 = v47;
  *(v32 + 8) = v48;
  *(v29 + v28) = a7;
  v33 = (v29 + ((v28 + 15) & 0xFFFFFFFFFFFFFFF8));
  v34 = v51;
  *v33 = v50;
  v33[1] = v34;
  aBlock[4] = sub_191C8C56C;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191C910B0;
  aBlock[3] = &block_descriptor_6_0;
  v35 = _Block_copy(aBlock);
  v36 = v7;

  v37 = v44;
  sub_191CC6388();
  v59 = MEMORY[0x1E69E7CC0];
  sub_191C90168(&qword_1EADCD088, MEMORY[0x1E69E7F60]);
  v38 = MEMORY[0x1E69E7F60];
  sub_191C90E78(0, &qword_1EADCD090, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_191C8CD14(&qword_1EADCD098, &qword_1EADCD090, v38);
  v40 = v54;
  v39 = v55;
  sub_191CC6E58();
  v41 = v52;
  MEMORY[0x193B024A0](0, v37, v40, v35);
  _Block_release(v35);

  (*(v58 + 8))(v40, v39);
  (*(v56 + 8))(v37, v57);
  (*(v17 + 8))(v53, v49);
}

void sub_191C8BF34(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, double a9)
{
  v76 = a8;
  v77 = a7;
  v74 = a6;
  v75 = a5;
  v72 = a4;
  v73 = a3;
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord();
  v12 = *(*(DatabaseAccessibilityAssertionsRecord - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord, v13);
  v70 = &DatabaseAccessibilityAssertionsRecord - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v71 = &DatabaseAccessibilityAssertionsRecord - v18;
  MEMORY[0x1EEE9AC00](v17, v19);
  v69 = &DatabaseAccessibilityAssertionsRecord - v20;
  v21 = sub_191CC6148();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  v25 = &DatabaseAccessibilityAssertionsRecord - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v25, a2, v21);
  v26 = (*(v22 + 80) + 24) & ~*(v22 + 80);
  v27 = (v23 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (v27 + 39) & 0xFFFFFFFFFFFFFFF8;
  v29 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 16) = a1;
  v31 = v30 + v26;
  v32 = v72;
  v33 = v25;
  v34 = v74;
  (*(v22 + 32))(v31, v33, v21);
  v35 = v73;
  v36 = (v30 + v27);
  *v36 = v73;
  v36[1] = v32;
  v37 = v30 + ((v27 + 23) & 0xFFFFFFFFFFFFFFF8);
  v38 = v75;
  *v37 = v75;
  *(v37 + 8) = v34;
  *(v30 + v28) = a9;
  v39 = v76;
  v40 = (v30 + v29);
  *v40 = v77;
  v40[1] = v39;
  if (a9 > 0.0)
  {
    v41 = DatabaseAccessibilityAssertionsRecord;
    v42 = *(DatabaseAccessibilityAssertionsRecord + 28);
    swift_bridgeObjectRetain_n();
    a1;

    v43 = v69;
    sub_191CC60C8();
    sub_191CC6198();
    v44 = (v43 + v41[5]);
    *v44 = v35;
    v44[1] = v32;
    *(v43 + v41[6]) = v38;
    v45 = (v43 + v41[8]);
    *v45 = sub_191C90D14;
    v45[1] = v30;
    v46 = v70;
    sub_191C90BAC(v43, v70, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
    swift_beginAccess();
    v47 = v71;
    sub_191C78CB4(v71, v46);
    swift_endAccess();
    sub_191C90AE8(v47, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
    sub_191C8AFB4(0);
    sub_191C90AE8(v43, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
    return;
  }

  v48 = a1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v50 = Strong;
    v51 = v35;
    objc_allocWithZone(type metadata accessor for DatabaseAccessibilityAssertionStore());

    v52 = v48;

    v53 = DatabaseAccessibilityAssertionStore.init(healthStore:)(v50);
    if (v53)
    {
      LODWORD(v77) = v34 & 1;
      v54 = v53;
      v55 = sub_191C70884();
      v56 = swift_allocObject();
      v56[2] = sub_191C90D14;
      v56[3] = v30;
      v56[4] = v54;
      v82 = sub_191C910BC;
      v83 = v56;
      aBlock = MEMORY[0x1E69E9820];
      v79 = 1107296256;
      v80 = sub_191C7100C;
      v81 = &block_descriptor_90;
      v57 = _Block_copy(&aBlock);
      v58 = v54;

      v59 = [v55 clientQueueObjectHandlerWithCompletion_];
      _Block_release(v57);

      v60 = swift_allocObject();
      *(v60 + 16) = v59;
      v61 = *&v58[OBJC_IVAR___HKDatabaseAccessibilityAssertionStore____lazy_storage____proxyProvider];
      v62 = swift_allocObject();
      *(v62 + 16) = v51;
      *(v62 + 24) = v32;
      *(v62 + 32) = v38;
      *(v62 + 40) = v77;
      *(v62 + 48) = sub_191C910B8;
      *(v62 + 56) = v60;
      v82 = sub_191C910FC;
      v83 = v62;
      aBlock = MEMORY[0x1E69E9820];
      v79 = 1107296256;
      v80 = sub_191C707AC;
      v81 = &block_descriptor_101_0;
      v63 = _Block_copy(&aBlock);

      v64 = v61;

      v65 = swift_allocObject();
      *(v65 + 16) = sub_191C910B8;
      *(v65 + 24) = v60;
      v82 = sub_191C91100;
      v83 = v65;
      aBlock = MEMORY[0x1E69E9820];
      v79 = 1107296256;
      v80 = sub_191C7081C;
      v81 = &block_descriptor_108;
      v66 = _Block_copy(&aBlock);

      [v64 fetchProxyWithHandler:v63 errorHandler:v66];
      _Block_release(v66);
      _Block_release(v63);

      return;
    }
  }

  else
  {

    v67 = a1;
  }
}

uint64_t sub_191C8C570(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void *a7, int a8, uint64_t (*a9)(void *, void *), uint64_t a10)
{
  v72 = a10;
  v73 = a9;
  v70 = sub_191CC6008();
  v17 = *(v70 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v70, v19);
  v71 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_191CC6148();
  v22 = *(*(v21 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v21, v23);
  v27 = &v61 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v28 = a1;
    sub_191C8CC50(v28);

    return v73(a1, a2);
  }

  v62 = v24;
  v63 = a4;
  v68 = a5;
  v69 = a6;
  v67 = a7;
  v66 = a8;
  v64 = v25;
  if (qword_1EADCA170 != -1)
  {
    swift_once();
  }

  v29 = sub_191CC6348();
  __swift_project_value_buffer(v29, qword_1EADE70B0);
  v30 = a2;
  v31 = sub_191CC6328();
  v32 = sub_191CC6C98();

  v33 = os_log_type_enabled(v31, v32);
  v65 = v17;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v74 = a2;
    v75[0] = v61;
    *v34 = 136315138;
    v35 = a2;
    sub_191C90E78(0, &unk_1EADCD130, sub_191BF92E0, MEMORY[0x1E69E6720]);
    v36 = sub_191CC67C8();
    v38 = sub_191C3B288(v36, v37, v75);

    *(v34 + 4) = v38;
    _os_log_impl(&dword_19197B000, v31, v32, "Received a nil database accessibility assertion: %s", v34, 0xCu);
    v39 = v61;
    __swift_destroy_boxed_opaque_existential_0(v61);
    MEMORY[0x193B047C0](v39, -1, -1);
    MEMORY[0x193B047C0](v34, -1, -1);
  }

  v40 = v66;
  v41 = v67;
  v42 = v68;
  v43 = v69;
  if (a2)
  {
    return v73(a1, a2);
  }

  sub_191CC6138();
  v69 = v27;
  sub_191CC6088();
  v45 = sub_191CC6328();
  v46 = sub_191CC6CA8();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_19197B000, v45, v46, "Received a nil assertion error with a nil error", v47, 2u);
    MEMORY[0x193B047C0](v47, -1, -1);
  }

  v75[0] = 0;
  v75[1] = 0xE000000000000000;
  sub_191CC6FC8();
  MEMORY[0x193B01F90](0xD000000000000051, 0x8000000191D2EE40);
  MEMORY[0x193B01F90](v42, v43);
  MEMORY[0x193B01F90](8236, 0xE200000000000000);
  v74 = v41;
  type metadata accessor for HKDatabaseAssertionContextType(0);
  sub_191CC70F8();
  MEMORY[0x193B01F90](8236, 0xE200000000000000);
  if (v40)
  {
    v48 = 1702195828;
  }

  else
  {
    v48 = 0x65736C6166;
  }

  if (v40)
  {
    v49 = 0xE400000000000000;
  }

  else
  {
    v49 = 0xE500000000000000;
  }

  MEMORY[0x193B01F90](v48, v49);

  MEMORY[0x193B01F90](8236, 0xE200000000000000);
  sub_191CC6B18();
  MEMORY[0x193B01F90](8236, 0xE200000000000000);
  sub_191C90168(&qword_1EADCB860, MEMORY[0x1E6969530]);
  v50 = v62;
  v51 = sub_191CC7398();
  MEMORY[0x193B01F90](v51);

  MEMORY[0x193B01F90](8236, 0xE200000000000000);
  sub_191CC6B18();
  v52 = objc_opt_self();
  v53 = sub_191CC6778();
  v54 = sub_191CC6778();

  v55 = [v52 hk:v53 tapToHealthRadarURLWithTitle:v54 description:2 classification:6 reproducibility:0 keywords:3 autoDiagnostics:0 attachments:?];

  sub_191CC5FF8();
  v56 = [objc_opt_self() defaultWorkspace];
  if (v56)
  {
    v57 = v56;
    v58 = sub_191CC5FD8();
    sub_191C909D0(MEMORY[0x1E69E7CC0]);
    v59 = sub_191CC6638();

    [v57 openSensitiveURL:v58 withOptions:v59];
  }

  v60 = [objc_opt_self() hk:100 error:0 userInfo:?];
  v73(0, v60);

  (*(v65 + 8))(v71, v70);
  return (*(v64 + 8))(v69, v50);
}

void sub_191C8CC50(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__dbAccessibilityAssertionsLock);
  os_unfair_lock_lock(v3 + 4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [a1 configureAssertion_];
    swift_beginAccess();
    sub_191C78EC4(&v6, a1);
    swift_endAccess();
  }

  os_unfair_lock_unlock(v3 + 4);
}

uint64_t sub_191C8CD14(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_191C90E78(255, a2, a3, MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t DatabaseAccessibilityAssertionStoreKeeper.fetchDatabaseAccessibilityAssertionFor(ownerIdentifier:isRecovery:timeout:completion:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, double a6)
{
  v48 = a5;
  v46 = a4;
  v45 = a3;
  v43 = a2;
  v42 = a1;
  v52 = sub_191CC6378();
  v55 = *(v52 - 8);
  v8 = *(v55 + 64);
  MEMORY[0x1EEE9AC00](v52, v9);
  v51 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_191CC63A8();
  v53 = *(v11 - 8);
  v54 = v11;
  v12 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v11, v13);
  v44 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_191CC6148();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v23 = &v42 - v22;
  v50 = &v42 - v22;
  sub_191CC6138();
  v49 = sub_191C8ABF8();
  v24 = *(v16 + 16);
  v47 = v15;
  v24(v20, v23, v15);
  v25 = (*(v16 + 80) + 24) & ~*(v16 + 80);
  v26 = (v17 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = (v26 + 39) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = v6;
  (*(v16 + 32))(v28 + v25, v20, v15);
  v29 = (v28 + v26);
  v30 = v43;
  *v29 = v42;
  v29[1] = v30;
  v31 = v28 + ((v26 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v31 = 1;
  *(v31 + 8) = v45;
  *(v28 + v27) = a6;
  v32 = (v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8));
  v33 = v48;
  *v32 = v46;
  v32[1] = v33;
  aBlock[4] = sub_191C910AC;
  aBlock[5] = v28;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191C910B0;
  aBlock[3] = &block_descriptor_13;
  v34 = _Block_copy(aBlock);
  v35 = v6;

  v36 = v44;
  sub_191CC6388();
  v56 = MEMORY[0x1E69E7CC0];
  sub_191C90168(&qword_1EADCD088, MEMORY[0x1E69E7F60]);
  v37 = MEMORY[0x1E69E7F60];
  sub_191C90E78(0, &qword_1EADCD090, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_191C8CD14(&qword_1EADCD098, &qword_1EADCD090, v37);
  v39 = v51;
  v38 = v52;
  sub_191CC6E58();
  v40 = v49;
  MEMORY[0x193B024A0](0, v36, v39, v34);
  _Block_release(v34);

  (*(v55 + 8))(v39, v38);
  (*(v53 + 8))(v36, v54);
  (*(v16 + 8))(v50, v47);
}

void sub_191C8D2F4()
{
  v1 = *(sub_191CC6148() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v3 + 39) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = (v0 + v3);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v4);
  v11 = *(v0 + v4 + 8);
  v12 = *(v0 + v5);
  v13 = (v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];

  sub_191C8BF34(v6, v0 + v2, v8, v9, v10, v11, v14, v15, v12);
}

uint64_t sub_191C8D48C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v33 = a1;
  v7 = sub_191CC6378();
  v37 = *(v7 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_191CC63A8();
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord();
  v18 = *(DatabaseAccessibilityAssertionsRecord - 8);
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord - 8, v20);
  v21 = &v33 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_191C8ABF8();
  sub_191C90BAC(a4, v21, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
  v22 = (*(v18 + 80) + 24) & ~*(v18 + 80);
  v23 = (v19 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = a3;
  sub_191C7B978(v21, v24 + v22);
  *(v24 + v23) = a2;
  v25 = v33;
  *(v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8)) = v33;
  aBlock[4] = sub_191C90934;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191C910B0;
  aBlock[3] = &block_descriptor_80;
  v26 = _Block_copy(aBlock);
  v27 = a3;
  v28 = a2;
  v29 = v25;
  sub_191CC6388();
  v38 = MEMORY[0x1E69E7CC0];
  sub_191C90168(&qword_1EADCD088, MEMORY[0x1E69E7F60]);
  v30 = MEMORY[0x1E69E7F60];
  sub_191C90E78(0, &qword_1EADCD090, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_191C8CD14(&qword_1EADCD098, &qword_1EADCD090, v30);
  sub_191CC6E58();
  v31 = v34;
  MEMORY[0x193B024A0](0, v16, v11, v26);
  _Block_release(v26);

  (*(v37 + 8))(v11, v7);
  (*(v35 + 8))(v16, v36);
}

uint64_t sub_191C8D850(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v38 = a4;
  v6 = sub_191CC6148();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C90E78(0, &unk_1EADCD0F0, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord, MEMORY[0x1E69E6720]);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8, v14);
  v16 = &v37 - v15;
  swift_beginAccess();
  sub_191C8FB5C(v16);
  swift_endAccess();
  sub_191C90854(v16, &unk_1EADCD0F0, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
  if (a3 && (v40 = a3, v17 = a3, sub_191BF92E0(), type metadata accessor for HKError(0), (swift_dynamicCast() & 1) != 0))
  {
    v18 = v39;
    v40 = v39;
    sub_191C90168(&qword_1EADCD100, type metadata accessor for HKError);
    sub_191CC5F78();

    v19 = v39;
    DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord();
    v21 = *(DatabaseAccessibilityAssertionsRecord + 28);
    sub_191CC6108();
    sub_191C90168(&qword_1EADCAE28, MEMORY[0x1E6969530]);
    LOBYTE(v21) = sub_191CC6718();
    (*(v7 + 8))(v11, v6);
    if (v21)
    {
      swift_beginAccess();
      sub_191C8FB5C(v16);
      swift_endAccess();
      sub_191C90854(v16, &unk_1EADCD0F0, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
      v22 = a2 + *(DatabaseAccessibilityAssertionsRecord + 32);
      v24 = *v22;
      v23 = *(v22 + 8);
      sub_191C90E78(0, &unk_1EADCD110, sub_191C3D154, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_191DD4540;
      v26 = *MEMORY[0x1E696A578];
      *(inited + 32) = sub_191CC67B8();
      *(inited + 72) = MEMORY[0x1E69E6158];
      *(inited + 40) = v27;
      *(inited + 48) = 0x2074736575716572;
      *(inited + 56) = 0xEF74756F656D6974;
      v28 = @"com.apple.healthkit";
      sub_191C909D0(inited);
      swift_setDeallocating();
      sub_191C90AE8(inited + 32, sub_191C3D154);
      v29 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
      v30 = sub_191CC6638();

      v31 = [v29 initWithDomain:v28 code:103 userInfo:v30];

      v24(0, v31);
    }

    else if (v19 != 1 && v19 != 6)
    {
      swift_beginAccess();
      sub_191C8FB5C(v16);
      swift_endAccess();
      sub_191C90854(v16, &unk_1EADCD0F0, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
      v35 = a2 + *(DatabaseAccessibilityAssertionsRecord + 32);
      v36 = *(v35 + 8);
      (*v35)(0, a3);
    }
  }

  else
  {
    swift_beginAccess();
    sub_191C8FB5C(v16);
    swift_endAccess();
    sub_191C90854(v16, &unk_1EADCD0F0, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
    v32 = a2 + *(type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord() + 32);
    v33 = *(v32 + 8);
    (*v32)(v38, 0);
  }

  return sub_191C8DDBC();
}

uint64_t sub_191C8DDBC()
{
  v1 = v0;
  v2 = sub_191CC6378();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2, v5);
  v127 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_191CC63A8();
  v126 = *(v7 - 8);
  v8 = *(v126 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v125 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_191CC6368();
  v123 = *(v124 - 8);
  v11 = *(v123 + 64);
  v13 = MEMORY[0x1EEE9AC00](v124, v12);
  v122 = (&v109 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13, v15);
  v121 = &v109 - v16;
  v120 = sub_191CC63C8();
  v119 = *(v120 - 8);
  v17 = *(v119 + 64);
  v19 = MEMORY[0x1EEE9AC00](v120, v18);
  v117 = &v109 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v21);
  v118 = &v109 - v22;
  v116 = sub_191CC6D28();
  v115 = *(v116 - 8);
  v23 = *(v115 + 64);
  MEMORY[0x1EEE9AC00](v116, v24);
  v114 = &v109 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_191CC6148();
  v131 = *(v26 - 8);
  v27 = v131[8];
  MEMORY[0x1EEE9AC00](v26, v28);
  v128 = &v109 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord();
  v139 = *(DatabaseAccessibilityAssertionsRecord - 8);
  v30 = *(v139 + 64);
  v32 = MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord, v31);
  v133 = &v109 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32, v34);
  v138 = (&v109 - v35);
  sub_191C90E78(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v37 = *(*(v36 - 8) + 64);
  v39 = MEMORY[0x1EEE9AC00](v36 - 8, v38);
  v130 = &v109 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v39, v41);
  v129 = &v109 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42, v44);
  v137 = &v109 - v46;
  MEMORY[0x1EEE9AC00](v45, v47);
  v49 = &v109 - v48;
  v50 = sub_191CC63D8();
  v51 = *(v50 - 8);
  v52 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v50, v53);
  v55 = (&v109 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v55 = sub_191C8ABF8();
  (*(v51 + 104))(v55, *MEMORY[0x1E69E8020], v50);
  v56 = sub_191CC63F8();
  result = (*(v51 + 8))(v55, v50);
  if (v56)
  {
    v58 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__pendingRequestsTimer;
    v59 = *&v1[OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__pendingRequestsTimer];
    v112 = v2;
    v111 = v3;
    v110 = v7;
    if (v59)
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_191CC6D58();
      swift_unknownObjectRelease();
      v60 = *&v1[v58];
    }

    v109 = v58;
    *&v1[v58] = 0;
    swift_unknownObjectRelease();
    v61 = v131 + 7;
    v62 = v26;
    v135 = v131[7];
    v135(v49, 1, 1, v26);
    v63 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__pendingRequests;
    swift_beginAccess();
    v113 = v1;
    v64 = *&v1[v63];
    v65 = v64 + 56;
    v66 = 1 << *(v64 + 32);
    v67 = -1;
    if (v66 < 64)
    {
      v67 = ~(-1 << v66);
    }

    v68 = v67 & *(v64 + 56);
    v69 = (v66 + 63) >> 6;
    v142 = (v61 - 1);
    v132 = (v61 - 6);
    v136 = v61;
    v134 = (v61 - 5);
    v140 = v64;

    v70 = 0;
    v71 = v133;
    v72 = v137;
    if (v68)
    {
      while (1)
      {
LABEL_13:
        v74 = __clz(__rbit64(v68));
        v68 &= v68 - 1;
        v75 = v138;
        sub_191C90BAC(*(v140 + 48) + *(v139 + 72) * (v74 | (v70 << 6)), v138, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
        sub_191C7B978(v75, v71);
        sub_191C18FCC(v49, v72);
        v76 = *v142;
        v77 = v62;
        v78 = (*v142)(v72, 1, v62);
        sub_191C90854(v72, &unk_1ED5EFFF0, MEMORY[0x1E6969530]);
        if (v78 == 1)
        {
          goto LABEL_8;
        }

        v79 = v49;
        v80 = v49;
        v81 = v130;
        sub_191C18FCC(v80, v130);
        result = v76(v81, 1, v77);
        if (result == 1)
        {
          goto LABEL_24;
        }

        v82 = *(DatabaseAccessibilityAssertionsRecord + 28);
        v83 = v133;
        v84 = sub_191CC60B8();
        (*v132)(v81, v77);
        v49 = v79;
        v71 = v83;
        if (v84)
        {
LABEL_8:
          sub_191C90854(v49, &unk_1ED5EFFF0, MEMORY[0x1E6969530]);
          (*v134)(v49, v71 + *(DatabaseAccessibilityAssertionsRecord + 28), v77);
          sub_191C90AE8(v71, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
          result = (v135)(v49, 0, 1, v77);
          v62 = v77;
          if (!v68)
          {
            goto LABEL_9;
          }
        }

        else
        {
          result = sub_191C90AE8(v83, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
          v62 = v77;
          if (!v68)
          {
            goto LABEL_9;
          }
        }
      }
    }

    while (1)
    {
LABEL_9:
      v73 = v70 + 1;
      if (__OFADD__(v70, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v73 >= v69)
      {
        break;
      }

      v68 = *(v65 + 8 * v73);
      ++v70;
      if (v68)
      {
        v70 = v73;
        goto LABEL_13;
      }
    }

    v85 = v129;
    sub_191C18FCC(v49, v129);
    if ((*v142)(v85, 1, v62) == 1)
    {
      sub_191C90854(v49, &unk_1ED5EFFF0, MEMORY[0x1E6969530]);
    }

    else
    {
      v86 = v131[4];
      v131 += 4;
      v86(v128, v85, v62);
      sub_191BFAE6C(0, &qword_1EADCD0D0, 0x1E69E9630);
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_191C90168(&qword_1EADCD0D8, MEMORY[0x1E69E80B0]);
      v87 = MEMORY[0x1E69E80B0];
      sub_191C90E78(0, &qword_1EADCD0E0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E62F8]);
      v140 = v62;
      sub_191C8CD14(&qword_1EADCD0E8, &qword_1EADCD0E0, v87);
      v88 = v114;
      v89 = v116;
      sub_191CC6E58();
      v142 = sub_191CC6D38();
      (*(v115 + 8))(v88, v89);
      sub_191CC60D8();
      ObjectType = swift_getObjectType();
      v139 = ObjectType;
      v91 = v117;
      sub_191CC63B8();
      v92 = v118;
      sub_191CC63E8();
      v138 = *(v119 + 8);
      DatabaseAccessibilityAssertionsRecord = v49;
      v93 = v120;
      (v138)(v91, v120);
      v94 = v123;
      v95 = *(v123 + 104);
      v96 = v121;
      v97 = v124;
      v95(v121, *MEMORY[0x1E69E7F40], v124);
      v98 = v122;
      *v122 = 0;
      v95(v98, *MEMORY[0x1E69E7F28], v97);
      MEMORY[0x193B02510](v92, v96, v98, ObjectType);
      v99 = *(v94 + 8);
      v99(v98, v97);
      v99(v96, v97);
      v100 = v92;
      v85 = DatabaseAccessibilityAssertionsRecord;
      (v138)(v100, v93);
      v101 = swift_allocObject();
      v102 = v113;
      *(v101 + 16) = v113;
      aBlock[4] = sub_191C908C4;
      aBlock[5] = v101;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_191C910B0;
      aBlock[3] = &block_descriptor_68;
      v103 = _Block_copy(aBlock);
      v104 = v102;
      v105 = v125;
      sub_191CC6388();
      v106 = v127;
      sub_191C8EC04();
      v107 = v142;
      sub_191CC6D48();
      _Block_release(v103);
      (*(v111 + 8))(v106, v112);
      (*(v126 + 8))(v105, v110);

      v108 = *&v102[v109];
      *&v102[v109] = v107;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      sub_191CC6D68();
      swift_unknownObjectRelease();
      (*(v131 - 3))(v128, v140);
    }

    return sub_191C90854(v85, &unk_1ED5EFFF0, MEMORY[0x1E6969530]);
  }

  else
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_191C8EBC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_191C8EC04()
{
  sub_191CC6378();
  sub_191C90168(&qword_1EADCD088, MEMORY[0x1E69E7F60]);
  v0 = MEMORY[0x1E69E7F60];
  sub_191C90E78(0, &qword_1EADCD090, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_191C8CD14(&qword_1EADCD098, &qword_1EADCD090, v0);
  return sub_191CC6E58();
}

uint64_t sub_191C8ED28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_191CC6378();
  v24 = *(v6 - 8);
  v7 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_191CC63A8();
  v11 = *(v23 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v23, v13);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_191C8ABF8();
  v17 = swift_allocObject();
  *(v17 + 16) = v3;
  aBlock[4] = a2;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191C910B0;
  aBlock[3] = a3;
  v18 = _Block_copy(aBlock);
  v19 = v3;
  sub_191CC6388();
  v25 = MEMORY[0x1E69E7CC0];
  sub_191C90168(&qword_1EADCD088, MEMORY[0x1E69E7F60]);
  v20 = MEMORY[0x1E69E7F60];
  sub_191C90E78(0, &qword_1EADCD090, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_191C8CD14(&qword_1EADCD098, &qword_1EADCD090, v20);
  sub_191CC6E58();
  MEMORY[0x193B024A0](0, v15, v10, v18);
  _Block_release(v18);

  (*(v24 + 8))(v10, v6);
  (*(v11 + 8))(v15, v23);
}

void sub_191C8EFF8()
{
  if (qword_1EADCA170 != -1)
  {
    swift_once();
  }

  v0 = sub_191CC6348();
  __swift_project_value_buffer(v0, qword_1EADE70B0);
  v1 = sub_191CC6328();
  v2 = sub_191CC6CB8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_19197B000, v1, v2, "Connection Configured. Attempting to process pending requests", v3, 2u);
    MEMORY[0x193B047C0](v3, -1, -1);
  }

  sub_191C8AFB4(1);
}

Swift::Void __swiftcall DatabaseAccessibilityAssertionStoreKeeper.invalidateAllDatabaseAccessibilityAssertions()()
{
  v15 = *(v0 + OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__dbAccessibilityAssertionsLock);
  os_unfair_lock_lock(v15 + 4);
  v1 = OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__dbAccessibilityAssertions;
  swift_beginAccess();
  v2 = *(v0 + v1);
  if ((v2 & 0xC000000000000001) != 0)
  {

    sub_191CC6EA8();
    sub_191BFAE6C(0, &unk_1EADCD0A0, off_1E7374DD0);
    sub_191C3E29C(&qword_1EADCC800, &unk_1EADCD0A0, off_1E7374DD0);
    sub_191CC6B78();
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v7 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(v2 + 56);

    v5 = 0;
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v14)
    {
LABEL_18:
      sub_191C8F378();
      os_unfair_lock_unlock(v15 + 4);
      return;
    }

    while (1)
    {
      [v14 markInvalid];

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_191CC6F18())
      {
        sub_191BFAE6C(0, &unk_1EADCD0A0, off_1E7374DD0);
        swift_dynamicCast();
        v14 = v16;
        v12 = v5;
        v13 = v6;
        if (v16)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

Swift::Void __swiftcall DatabaseAccessibilityAssertionStoreKeeper.invalidateDatabaseAccessibilityAssertion(assertion:)(HKDatabaseAccessibilityAssertion *assertion)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = objc_allocWithZone(type metadata accessor for DatabaseAccessibilityAssertionStore());
    Strong = DatabaseAccessibilityAssertionStore.init(healthStore:)(Strong);
  }

  v5 = *(v1 + OBJC_IVAR___HKDatabaseAccessibilityAssertionStoreKeeper__dbAccessibilityAssertionsLock);
  os_unfair_lock_lock(v5 + 4);
  swift_beginAccess();
  v6 = sub_191C8FDB8(assertion);
  swift_endAccess();

  [(HKDatabaseAccessibilityAssertion *)assertion markInvalid];
  if (Strong)
  {
    v7 = Strong;
    v8 = sub_191C70884();
    v9 = swift_allocObject();
    *(v9 + 16) = assertion;
    v17 = sub_191C718D4;
    v18 = v9;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_191C707AC;
    v16 = &block_descriptor_25;
    v10 = _Block_copy(&v13);
    v11 = assertion;

    v17 = sub_191C718DC;
    v18 = 0;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_191C7081C;
    v16 = &block_descriptor_28_0;
    v12 = _Block_copy(&v13);
    [v8 fetchProxyWithHandler:v10 errorHandler:v12];
    _Block_release(v12);
    _Block_release(v10);
  }

  os_unfair_lock_unlock(v5 + 4);
}

id DatabaseAccessibilityAssertionStoreKeeper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_191C8F6D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_191C7B7F4(0, &qword_1EADCC818, &qword_1EADCD140, 0x1E696AD98, &qword_1EADCC7E0);
    v2 = sub_191CC6F88();
    v16 = v2;
    sub_191CC6EA8();
    if (sub_191CC6F18())
    {
      sub_191BFAE6C(0, &qword_1EADCD140, 0x1E696AD98);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_191C79380(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_191CC6D98();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_191CC6F18());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_191C8F8D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_191C7B7F4(0, &unk_1EADCD0C0, &unk_1EADCD0A0, off_1E7374DD0, &qword_1EADCC800);
    v2 = sub_191CC6F88();
    v16 = v2;
    sub_191CC6EA8();
    if (sub_191CC6F18())
    {
      sub_191BFAE6C(0, &unk_1EADCD0A0, off_1E7374DD0);
      do
      {
        swift_dynamicCast();
        v10 = *(v2 + 16);
        if (*(v2 + 24) <= v10)
        {
          sub_191C796C4(v10 + 1);
        }

        v2 = v16;
        v3 = *(v16 + 40);
        result = sub_191CC6D98();
        v5 = v16 + 56;
        v6 = -1 << *(v16 + 32);
        v7 = result & ~v6;
        v8 = v7 >> 6;
        if (((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6))) != 0)
        {
          v9 = __clz(__rbit64((-1 << v7) & ~*(v16 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v11 = 0;
          v12 = (63 - v6) >> 6;
          do
          {
            if (++v8 == v12 && (v11 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v13 = v8 == v12;
            if (v8 == v12)
            {
              v8 = 0;
            }

            v11 |= v13;
            v14 = *(v5 + 8 * v8);
          }

          while (v14 == -1);
          v9 = __clz(__rbit64(~v14)) + (v8 << 6);
        }

        *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
        *(*(v16 + 48) + 8 * v9) = v15;
        ++*(v16 + 16);
      }

      while (sub_191CC6F18());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

unint64_t sub_191C8FAD8(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  sub_191CC6D98();
  v5 = -1 << *(a2 + 32);
  result = sub_191CC6E88();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_191C8FB5C@<X0>(uint64_t a1@<X8>)
{
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord();
  v4 = *(DatabaseAccessibilityAssertionsRecord - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord, v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *(*v1 + 40);
  sub_191CC74C8();
  sub_191CC61A8();
  sub_191C90168(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
  sub_191CC66A8();
  v11 = sub_191CC7508();
  v12 = -1 << *(v9 + 32);
  v13 = v11 & ~v12;
  if ((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v24 = v1;
    v25 = v4;
    v26 = DatabaseAccessibilityAssertionsRecord;
    v27 = a1;
    v14 = ~v12;
    v15 = *(v4 + 72);
    while (1)
    {
      sub_191C90BAC(*(v9 + 48) + v15 * v13, v8, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
      v16 = sub_191CC6178();
      sub_191C90AE8(v8, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
      if (v16)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v9 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v17 = 1;
        a1 = v27;
        goto LABEL_10;
      }
    }

    v18 = v24;
    v19 = *v24;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v18;
    v28 = *v18;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_191C7A468();
      v21 = v28;
    }

    a1 = v27;
    sub_191C7B978(*(v21 + 48) + v15 * v13, v27);
    sub_191C90318(v13);
    v17 = 0;
    *v18 = v28;
LABEL_10:
    v4 = v25;
    DatabaseAccessibilityAssertionsRecord = v26;
  }

  else
  {
    v17 = 1;
  }

  return (*(v4 + 56))(a1, v17, 1, DatabaseAccessibilityAssertionsRecord);
}

uint64_t sub_191C8FDB8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    v5 = *v1;

    v6 = a1;
    v7 = sub_191CC6F28();

    if (v7)
    {
      v8 = sub_191C901B0();

      return v8;
    }

    return 0;
  }

  v10 = v1;
  sub_191BFAE6C(0, &unk_1EADCD0A0, off_1E7374DD0);
  v11 = *(v3 + 40);
  v12 = sub_191CC6D98();
  v13 = -1 << *(v3 + 32);
  v14 = v12 & ~v13;
  if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
  {
    return 0;
  }

  v15 = ~v13;
  while (1)
  {
    v16 = *(*(v3 + 48) + 8 * v14);
    v17 = sub_191CC6DA8();

    if (v17)
    {
      break;
    }

    v14 = (v14 + 1) & v15;
    if (((*(v3 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *v10;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v10;
  v22 = *v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_191C7A63C();
    v20 = v22;
  }

  v21 = *(*(v20 + 48) + 8 * v14);
  sub_191C9062C(v14);
  result = v21;
  *v10 = v22;
  return result;
}

uint64_t type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord()
{
  result = qword_1ED5F00C0;
  if (!qword_1ED5F00C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_191C90014()
{
  sub_191CC61A8();
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKDatabaseAssertionContextType(319);
    if (v1 <= 0x3F)
    {
      sub_191CC6148();
      if (v2 <= 0x3F)
      {
        sub_191C900D0();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_191C900D0()
{
  result = qword_1ED5F00D0;
  if (!qword_1ED5F00D0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1ED5F00D0);
  }

  return result;
}

uint64_t sub_191C90168(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_191C901B0()
{
  v1 = v0;
  v2 = *v0;

  v3 = sub_191CC6EE8();
  v4 = swift_unknownObjectRetain();
  v5 = sub_191C8F8D8(v4, v3);
  v15 = v5;
  v6 = *(v5 + 40);

  v7 = sub_191CC6D98();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_191BFAE6C(0, &unk_1EADCD0A0, off_1E7374DD0);
    while (1)
    {
      v11 = *(*(v5 + 48) + 8 * v9);
      v12 = sub_191CC6DA8();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v5 + 48) + 8 * v9);
  sub_191C9062C(v9);
  result = sub_191CC6DA8();
  if (result)
  {
    *v1 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_191C90318(int64_t a1)
{
  DatabaseAccessibilityAssertionsRecord = type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord();
  v3 = *(DatabaseAccessibilityAssertionsRecord - 8);
  v4 = *(v3 + 64);
  result = MEMORY[0x1EEE9AC00](DatabaseAccessibilityAssertionsRecord, v5);
  v32 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;
    v13 = *v1;

    v14 = sub_191CC6E78();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v15 = (v14 + 1) & v12;
      v16 = *(v3 + 72);
      v30 = v16;
      v31 = v9;
      do
      {
        v17 = v16 * v11;
        v18 = v32;
        sub_191C90BAC(*(v8 + 48) + v16 * v11, v32, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
        v19 = v8;
        v20 = *(v8 + 40);
        sub_191CC74C8();
        sub_191CC61A8();
        sub_191C90168(&qword_1EADCAC70, MEMORY[0x1E69695A8]);
        v21 = v15;
        sub_191CC66A8();
        v22 = sub_191CC7508();
        sub_191C90AE8(v18, type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord);
        v23 = v22 & v12;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v23 < v21)
          {
            v8 = v19;
          }

          else
          {
            v8 = v19;
            if (a1 >= v23)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v8 = v19;
          if (v23 >= v15 || a1 >= v23)
          {
LABEL_13:
            v16 = v30;
            v24 = v30 * a1;
            if (v30 * a1 < v17 || *(v8 + 48) + v30 * a1 >= (*(v8 + 48) + v17 + v30))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v24 != v17)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_6;
          }
        }

        v16 = v30;
LABEL_6:
        v11 = (v11 + 1) & v12;
        v9 = v31;
      }

      while (((*(v31 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v25 = *(v8 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v27;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_191C9062C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;
    v8 = *v1;

    v9 = sub_191CC6E78();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v10 = (v9 + 1) & v7;
      do
      {
        v11 = *(v3 + 40);
        v12 = *(*(v3 + 48) + 8 * v6);
        v13 = sub_191CC6D98();

        v14 = v13 & v7;
        if (v2 >= v10)
        {
          if (v14 >= v10 && v2 >= v14)
          {
LABEL_16:
            v17 = *(v3 + 48);
            v18 = (v17 + 8 * v2);
            v19 = (v17 + 8 * v6);
            if (v2 != v6 || v18 >= v19 + 1)
            {
              *v18 = *v19;
              v2 = v6;
            }
          }
        }

        else if (v14 >= v10 || v2 >= v14)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v20 = *(v3 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v22;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_191C907CC(void *a1, void *a2)
{
  v5 = *(type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord() - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 24) & ~*(v5 + 80));

  return sub_191C8D48C(a1, a2, v6, v7);
}

uint64_t sub_191C90854(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_191C90E78(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_191C90934()
{
  v1 = *(type metadata accessor for PendingFetchDatabaseAccessibilityAssertionsRecord() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_191C8D850(v4, v0 + v2, v5, v6);
}

unint64_t sub_191C909D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_191C90B48();
    v3 = sub_191CC7188();
    v4 = a1 + 32;

    while (1)
    {
      sub_191C90BAC(v4, &v13, sub_191C3D154);
      v5 = v13;
      v6 = v14;
      result = sub_191C40248(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_191C0B190(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_191C90AE8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_191C90B48()
{
  if (!qword_1EADCD120)
  {
    v0 = sub_191CC7198();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCD120);
    }
  }
}

uint64_t sub_191C90BAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_2Tm()
{
  v1 = sub_191CC6148();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((v5 + 39) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  v7 = *(v0 + v5 + 8);

  v8 = *(v0 + v6 + 8);

  return MEMORY[0x1EEE6BDD0](v0, v6 + 16, v3 | 7);
}

uint64_t sub_191C90D14(void *a1, void *a2)
{
  v5 = *(sub_191CC6148() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 39) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v8);
  return sub_191C8C570(a1, a2, *(v2 + 16), v2 + v6, *(v2 + v7), *(v2 + v7 + 8), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_43Tm()
{
  v1 = *(v0 + 24);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_52Tm()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

void sub_191C90E78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_191C90EDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_191C90FC8();
    v3 = sub_191CC7188();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_191C402C0(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_191C90FC8()
{
  if (!qword_1EADCD150)
  {
    type metadata accessor for HKBloodPressureClassificationCategory(255);
    type metadata accessor for HKBloodPressureClassificationCategoryData();
    sub_191C90168(&qword_1EADCA520, type metadata accessor for HKBloodPressureClassificationCategory);
    v0 = sub_191CC7198();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCD150);
    }
  }
}

id SecureCodableObject.__allocating_init(wrapped:)(uint64_t a1)
{
  v3 = sub_191C91F74(a1);
  (*(*(*(v1 + 80) - 8) + 8))(a1);
  return v3;
}

id SecureCodableObject.init(wrapped:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *MEMORY[0x1E69E7D40];
  v5 = sub_191C91EBC(a1);
  (*(*(*((v4 & v3) + 0x50) - 8) + 8))(a1);
  return v5;
}

uint64_t SecureCodableObject.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  v3 = MEMORY[0x1E69E7D40];
  v4 = *MEMORY[0x1E69E7D40] & *v1;
  sub_191C0DAF0(a1, v12);
  if (!v13)
  {
    sub_191C74400(v12);
    goto LABEL_6;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v9 = 0;
    return v9 & 1;
  }

  if (v11 == v1)
  {

    v9 = 1;
  }

  else
  {
    v5 = *((*v3 & *v1) + 0x70);
    v6 = *((*v11 & *v3) + 0x70);
    v7 = *(*(v4 + 104) + 8);
    v8 = *(v4 + 80);
    v9 = sub_191CC6768();
  }

  return v9 & 1;
}

uint64_t sub_191C913A8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = a1;
    swift_unknownObjectRetain();
    sub_191CC6E18();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    v5 = a1;
  }

  v6 = SecureCodableObject.isEqual(_:)(v8);

  sub_191C74400(v8);
  return v6 & 1;
}

uint64_t sub_191C91420(void *a1)
{
  v1 = a1;
  v2 = SecureCodableObject.hash.getter();

  return v2;
}

uint64_t SecureCodableObject.hash.getter()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v3 = v0 + *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  return sub_191CC66B8();
}

id sub_191C914C4(void *a1)
{
  v1 = a1;
  SecureCodableObject.description.getter();

  v2 = sub_191CC6778();

  return v2;
}

uint64_t SecureCodableObject.description.getter()
{
  ObjectType = swift_getObjectType();
  v2 = MEMORY[0x1E69E7D40];
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](ObjectType, v6);
  v8 = v12 - v7;
  v12[0] = 60;
  v12[1] = 0xE100000000000000;
  v9 = sub_191CC76A8();
  MEMORY[0x193B01F90](v9);

  MEMORY[0x193B01F90](32, 0xE100000000000000);
  (*(v4 + 16))(v8, &v0[*((*v2 & *v0) + 0x70)], v3);
  v10 = sub_191CC67C8();
  MEMORY[0x193B01F90](v10);

  MEMORY[0x193B01F90](62, 0xE100000000000000);
  return v12[0];
}

id SecureCodableObject.copy(with:)@<X0>(void *a1@<X8>)
{
  a1[3] = swift_getObjectType();
  *a1 = v3;

  return v3;
}

uint64_t sub_191C916E8()
{
  SecureCodableObject.copy(with:)(v2);
  __swift_project_boxed_opaque_existential_0(v2, v2[3]);
  v0 = sub_191CC73D8();
  __swift_destroy_boxed_opaque_existential_0(v2);
  return v0;
}

id SecureCodableObject.init(coder:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = MEMORY[0x1E69E7D40];
  v6 = *MEMORY[0x1E69E7D40] & *v2;
  v7 = *(v6 + 0x50);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](a1, a2);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v13);
  v15 = v32 - v14;
  sub_191C802D8();
  v16 = sub_191CC6D88();
  if (v16 && (v33 = xmmword_191DD1380, v17 = v16, sub_191CC6038(), v17, v18 = *(&v33 + 1), *(&v33 + 1) >> 60 != 15))
  {
    v32[0] = v8;
    v19 = v33;
    v20 = sub_191CC5EF8();
    v21 = *(v20 + 48);
    v22 = *(v20 + 52);
    swift_allocObject();
    sub_191CC5EE8();
    v23 = *(v6 + 88);
    sub_191CC5ED8();
    v27 = v32[0];
    (*(v32[0] + 32))(v15, v12, v7);
    v28 = objc_allocWithZone(swift_getObjectType());
    v29 = sub_191C91EBC(v15);

    sub_191C049C4(v19, v18);

    (*(v27 + 8))(v15, v7);
    v30 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x30);
    v31 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return v29;
  }

  else
  {

    swift_getObjectType();
    v24 = *((*v5 & *v3) + 0x30);
    v25 = *((*v5 & *v3) + 0x34);
    swift_deallocPartialClassInstance();
    return 0;
  }
}

Swift::Void __swiftcall SecureCodableObject.encode(with:)(NSCoder with)
{
  swift_getObjectType();
  v3 = *v1;
  v4 = MEMORY[0x1E69E7D40];
  v5 = *MEMORY[0x1E69E7D40];
  v6 = sub_191CC5F28();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  sub_191CC5F18();
  v9 = *((*v4 & *v1) + 0x70);
  v10 = *((v5 & v3) + 0x50);
  v11 = *((v5 & v3) + 0x60);
  v12 = sub_191CC5F08();
  v14 = v13;
  v15 = sub_191CC6028();
  v16 = sub_191CC6778();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];

  sub_191C049D8(v12, v14);
}

void sub_191C91CB8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  SecureCodableObject.encode(with:)(v4);
}

id SecureCodableObject.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void SecureCodableObject.init()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  sub_191C91FA8();
}

void sub_191C91DB8(void *a1)
{
  v1 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x68);
  sub_191C91FA8();
}

id SecureCodableObject.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_191C91EBC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  (*(*(*((*MEMORY[0x1E69E7D40] & *v1) + 0x50) - 8) + 16))(&v1[*((*MEMORY[0x1E69E7D40] & *v1) + 0x70)], a1);
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_191C91FD8(uint64_t a1)
{
  v1 = *(a1 + 80);
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

uint64_t ConfigurableQueryDescriptor<>.limit(_:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = *(AssociatedTypeWitness - 8);
  v14 = *(v13 + 64);
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v15);
  v18 = &v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v19);
  v21 = &v23 - v20;
  (*(*(a3 - 8) + 16))(a6, v6, a3);
  (*(a4 + 24))(a3, a4);
  (*(a5 + 8))(v24, a2 & 1, AssociatedTypeWitness, a5);
  (*(v13 + 8))(v18, AssociatedTypeWitness);
  return (*(a4 + 32))(v21, a3, a4);
}

uint64_t ConfigurableQueryDescriptor<>.filter(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v22 - v19;
  (*(*(a2 - 8) + 16))(a5, v5, a2);
  (*(a3 + 24))(a2, a3);
  (*(a4 + 16))(a1, AssociatedTypeWitness, a4);
  (*(v12 + 8))(v17, AssociatedTypeWitness);
  return (*(a3 + 32))(v20, a2, a3);
}

uint64_t ConfigurableQueryDescriptor<>.sort(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v22 - v19;
  (*(*(a2 - 8) + 16))(a5, v5, a2);
  (*(a3 + 24))(a2, a3);
  (*(a4 + 16))(a1, AssociatedTypeWitness, a4);
  (*(v12 + 8))(v17, AssociatedTypeWitness);
  return (*(a3 + 32))(v20, a2, a3);
}

uint64_t ConfigurableQueryDescriptor<>.within(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v22 - v19;
  (*(*(a2 - 8) + 16))(a5, v5, a2);
  (*(a3 + 24))(a2, a3);
  (*(a4 + 8))(a1, AssociatedTypeWitness, a4);
  (*(v12 + 8))(v17, AssociatedTypeWitness);
  return (*(a3 + 32))(v20, a2, a3);
}

uint64_t ConfigurableQueryDescriptor<>.sortAscending()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v20 - v17;
  (*(*(a1 - 8) + 16))(a4, v4, a1);
  (*(a2 + 24))(a1, a2);
  (*(a3 + 8))(AssociatedTypeWitness, a3);
  (*(v10 + 8))(v15, AssociatedTypeWitness);
  return (*(a2 + 32))(v18, a1, a2);
}

uint64_t ConfigurableQueryDescriptor<>.sortDescending()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v12);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13, v16);
  v18 = &v20 - v17;
  (*(*(a1 - 8) + 16))(a4, v4, a1);
  (*(a2 + 24))(a1, a2);
  (*(a3 + 16))(AssociatedTypeWitness, a3);
  (*(v10 + 8))(v15, AssociatedTypeWitness);
  return (*(a2 + 32))(v18, a1, a2);
}

uint64_t ConfigurableQueryDescriptor<>.withOptions(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v14);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v18);
  v20 = &v22 - v19;
  (*(*(a2 - 8) + 16))(a5, v5, a2);
  (*(a3 + 24))(a2, a3);
  (*(a4 + 24))(a1, AssociatedTypeWitness, a4);
  (*(v12 + 8))(v17, AssociatedTypeWitness);
  return (*(a3 + 32))(v20, a2, a3);
}

id sub_191C92D2C(SEL *a1)
{
  result = [v1 *a1];
  v3 = result;
  if (result)
  {
    [result doubleValue];
    v5 = v4;

    return v5;
  }

  return result;
}

id HKMedicationDoseEvent.init(logOrigin:scheduleItemIdentifier:medicationIdentifier:scheduledDoseQuantity:doseQuantity:scheduledDate:start:logStatus:doseUnitString:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8, char a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v45 = a1;
  sub_191C47DA4(0);
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8, v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v44 = sub_191CC6778();
  }

  else
  {
    v44 = 0;
  }

  v42 = sub_191CC6778();

  if (a7)
  {
    v41 = 0;
    v22 = a11;
    if ((a9 & 1) == 0)
    {
LABEL_6:
      v40 = sub_191CC6B08();
      goto LABEL_9;
    }
  }

  else
  {
    v41 = sub_191CC6B08();
    v22 = a11;
    if ((a9 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v40 = 0;
LABEL_9:
  v46 = a10;
  sub_191C18FCC(a10, v21);
  v23 = sub_191CC6148();
  v24 = *(v23 - 8);
  v25 = 0;
  if ((*(v24 + 48))(v21, 1, v23) != 1)
  {
    v25 = sub_191CC60A8();
    (*(v24 + 8))(v21, v23);
  }

  v39 = v23;
  v43 = v22;
  v26 = sub_191CC60A8();
  if (!a14)
  {
    v27 = 0;
    v28 = a12;
    if (a15)
    {
      goto LABEL_13;
    }

LABEL_15:
    v29 = 0;
    goto LABEL_16;
  }

  v27 = sub_191CC6778();

  v28 = a12;
  if (!a15)
  {
    goto LABEL_15;
  }

LABEL_13:
  v29 = sub_191CC6638();

LABEL_16:
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v37 = v28;
  v31 = v44;
  v33 = v41;
  v32 = v42;
  v34 = v40;
  v35 = [ObjCClassFromMetadata medicationDoseEventWithLogOrigin:v45 scheduleItemIdentifier:v44 medicationIdentifier:v42 scheduledDoseQuantity:v41 doseQuantity:v40 scheduledDate:v25 startDate:v26 logStatus:v37 doseUnitString:v27 metadata:v29];

  (*(v24 + 8))(v43, v39);
  sub_191C2CC84(v46);
  return v35;
}

id HKSourceQueryDescriptor.predicate.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 8);
  v5 = *v1;
  *a1 = *v1;
  a1[1] = v2;
  v3 = v2;

  return v5;
}

void HKSourceQueryDescriptor.predicate.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(v1 + 8);

  *v1 = v2;
  *(v1 + 8) = v3;
}

uint64_t HKSourceQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 16);
  *(a1 + 8) = *(v1 + 24);
}

__n128 HKSourceQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1[1].n128_u64[1];

  result = v5;
  v1[1] = v5;
  v1[2].n128_u64[0] = v2;
  return result;
}

uint64_t *HKSourceQueryDescriptor.init(predicate:)@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  a2[2] = 0;
  a2[3] = 0;
  a2[4] = -1;
  *a2 = v2;
  a2[1] = v3;
  return result;
}

uint64_t HKSourceQueryDescriptor.result(for:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 128) = a1;
  *(v3 + 136) = a2;
  v4 = *(v2 + 16);
  *(v3 + 80) = *v2;
  *(v3 + 96) = v4;
  *(v3 + 112) = *(v2 + 32);
  v5 = *(v3 + 88);
  *(v3 + 144) = *(v3 + 80);
  *(v3 + 152) = v5;
  return MEMORY[0x1EEE6DFA0](sub_191C931C8, 0, 0);
}

uint64_t sub_191C931C8()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v0[2] = v0;
  v0[7] = v0 + 15;
  v0[3] = sub_191C9328C;
  v5 = swift_continuation_init();
  v6 = *(v4 + 16);
  sub_191C933CC(v5, v2, v1, v3, (v0 + 10));

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_191C9328C()
{
  v1 = *v0;
  if (*(*v0 + 48))
  {
    v2 = *(*v0 + 48);
    swift_willThrow();
    v3 = *(v1 + 8);

    return v3();
  }

  else
  {
    v5 = *(*v0 + 120);
    v6 = *(v1 + 8);
    v7 = *v0;

    return v6(v5);
  }
}

void sub_191C933CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a4;
  *(v10 + 24) = a1;
  v11 = objc_allocWithZone(HKSourceQuery);
  v21 = sub_191C9381C;
  v22 = v10;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v19 = sub_191C93824;
  v20 = &block_descriptor_23;
  v12 = _Block_copy(&aBlock);
  v13 = a4;
  v14 = [v11 initWithSampleType:a2 samplePredicate:a3 completionHandler:v12];
  _Block_release(v12);

  aBlock = *(a5 + 16);
  v19 = *(a5 + 32);
  v15 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    sub_191BFC340(&aBlock, v17);
    v15 = sub_191CC6778();
  }

  v16 = v19;
  [v14 setDebugIdentifier_];

  [v14 setQualityOfService_];
  sub_191BFC2EC(&aBlock);
  [v13 executeQuery_];
}

uint64_t sub_191C93570(uint64_t a1, unint64_t a2, void *a3, id a4, uint64_t a5)
{
  [a4 stopQuery_];
  if (a2)
  {
    **(*(a5 + 64) + 40) = sub_191C93ACC(a2);

    return swift_continuation_throwingResume();
  }

  else
  {
    if (a3)
    {
      v9 = a3;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191BFC39C();
      sub_191CC5FA8();
      v9 = v12;
    }

    sub_191BF92E0();
    swift_allocError();
    *v10 = v9;
    v11 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_191C93690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_191BFBFE4;

  return HKSourceQueryDescriptor.result(for:)(a2, a3);
}

uint64_t sub_191C93738()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_191C93774(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_191C937BC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_191C93824(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_191BFAE6C(0, &qword_1EADCAA30, off_1E7375580);
    sub_191C93900();
    v5 = sub_191CC6B38();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_191C93900()
{
  result = qword_1EADCAA38;
  if (!qword_1EADCAA38)
  {
    sub_191BFAE6C(255, &qword_1EADCAA30, off_1E7375580);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAA38);
  }

  return result;
}

void *sub_191C93968(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  sub_191C93B7C();
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void sub_191C939E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_191C93B7C();
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 25;
      }

      v7[2] = v5;
      v7[3] = (2 * (v9 >> 3)) | 1;
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void *sub_191C93ACC(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_191CC6EE8();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_191C93968(v2, 0);

    v1 = sub_191C03564(&v5, v3 + 4, v2, v1);
    sub_191C8F378();
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = v1[2];
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_191C93B7C()
{
  if (!qword_1EADCD520[0])
  {
    v0 = sub_191CC73A8();
    if (!v1)
    {
      atomic_store(v0, qword_1EADCD520);
    }
  }
}

uint64_t TypeDomain.init(rawValue:)@<X0>(BOOL *a1@<X8>)
{
  v2 = sub_191CC71B8();

  *a1 = v2 != 0;
  return result;
}

uint64_t sub_191C93C44@<X0>(uint64_t *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = sub_191CC71B8();

  *a2 = v5 != 0;
  return result;
}

uint64_t sub_191C93CB8()
{
  sub_191CC74C8();
  sub_191CC67E8();
  return sub_191CC7508();
}

uint64_t sub_191C93D2C()
{
  sub_191CC74C8();
  sub_191CC67E8();
  return sub_191CC7508();
}

BOOL static TypeIdentifier.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_191CC73E8();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_191C93E8C()
{
  if (*v0)
  {
    result = 1701080931;
  }

  else
  {
    result = 0x6E69616D6F64;
  }

  *v0;
  return result;
}

uint64_t sub_191C93EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000;
  if (v6 || (sub_191CC73E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701080931 && a2 == 0xE400000000000000)
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

uint64_t sub_191C93F94(uint64_t a1)
{
  v2 = sub_191C9418C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C93FD0(uint64_t a1)
{
  v2 = sub_191C9418C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TypeIdentifier.encode(to:)(void *a1)
{
  sub_191C945C0(0, &qword_1EADCD2C0, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3, v7);
  v9 = v15 - v8;
  v10 = *v1;
  v11 = v1[1];
  v15[0] = v1[2];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C9418C();
  sub_191CC7548();
  v17 = 0;
  v13 = v15[1];
  sub_191CC7308();
  if (!v13)
  {
    v16 = 1;
    sub_191CC7338();
  }

  return (*(v5 + 8))(v9, v4);
}

unint64_t sub_191C9418C()
{
  result = qword_1EADCD2C8;
  if (!qword_1EADCD2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD2C8);
  }

  return result;
}

uint64_t TypeIdentifier.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_191CC67E8();
  return MEMORY[0x193B02C70](v3);
}

uint64_t TypeIdentifier.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_191CC74C8();
  sub_191CC67E8();
  MEMORY[0x193B02C70](v3);
  return sub_191CC7508();
}

uint64_t TypeIdentifier.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_191C945C0(0, &qword_1EADCD2D0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5, v9);
  v11 = &v19 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C9418C();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = 0;
  v13 = sub_191CC7228();
  v15 = v14;
  v16 = v13;
  v20 = 1;
  v17 = sub_191CC7258();
  (*(v7 + 8))(v11, v6);
  *a2 = v16;
  a2[1] = v15;
  a2[2] = v17;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

BOOL sub_191C94468(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return v2 == v3;
  }

  v5 = sub_191CC73E8();
  result = 0;
  if (v5)
  {
    return v2 == v3;
  }

  return result;
}

uint64_t sub_191C944C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_191CC74C8();
  sub_191CC67E8();
  MEMORY[0x193B02C70](v3);
  return sub_191CC7508();
}

uint64_t sub_191C94528()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_191CC67E8();
  return MEMORY[0x193B02C70](v3);
}

uint64_t sub_191C94560()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  sub_191CC74C8();
  sub_191CC67E8();
  MEMORY[0x193B02C70](v3);
  return sub_191CC7508();
}

void sub_191C945C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_191C9418C();
    v7 = a3(a1, &type metadata for TypeIdentifier.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_191C94628()
{
  result = qword_1EADCD2D8;
  if (!qword_1EADCD2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD2D8);
  }

  return result;
}

unint64_t sub_191C94680()
{
  result = qword_1EADCD2E0;
  if (!qword_1EADCD2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD2E0);
  }

  return result;
}

unint64_t sub_191C94738()
{
  result = qword_1EADCD2E8;
  if (!qword_1EADCD2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD2E8);
  }

  return result;
}

unint64_t sub_191C94790()
{
  result = qword_1EADCD2F0;
  if (!qword_1EADCD2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD2F0);
  }

  return result;
}

unint64_t sub_191C947E8()
{
  result = qword_1EADCD2F8;
  if (!qword_1EADCD2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD2F8);
  }

  return result;
}

unint64_t sub_191C9483C()
{
  result = qword_1EADCD300;
  if (!qword_1EADCD300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD300);
  }

  return result;
}

id static HKSamplePredicate.gad7Assessment(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(HKScoredAssessmentType) initWithIdentifier_];
  if (result)
  {
    *a2 = result;
    a2[1] = a1;

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKGAD7Assessment.init(date:answers:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_191CC60A8();
  v7 = *(a2 + 16);
  if (v7)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_191CC7098();
    v8 = 32;
    do
    {
      v9 = *(a2 + v8);
      sub_191CC6B98();
      sub_191CC7068();
      v10 = *(v16 + 16);
      sub_191CC70A8();
      sub_191CC70B8();
      sub_191CC7078();
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  sub_191C94AC4();
  v11 = sub_191CC68D8();

  if (a3)
  {
    v12 = sub_191CC6638();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDate:v6 answers:v11 metadata:v12];

  v14 = sub_191CC6148();
  (*(*(v14 - 8) + 8))(a1, v14);
  return v13;
}

unint64_t sub_191C94AC4()
{
  result = qword_1EADCD140;
  if (!qword_1EADCD140)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCD140);
  }

  return result;
}

char *HKGAD7Assessment.answers.getter()
{
  v1 = [v0 answers];
  sub_191C94AC4();
  v2 = sub_191CC68E8();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_191CC6EE8())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x193B02790](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 integerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_191C07C78(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_191C07C78((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      *&v5[8 * v11 + 32] = v9;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_19:

  return v5;
}

void HKObjectType.hk_pinnedContentIdentifier.getter()
{
  v1 = [objc_opt_self() sharedBehavior];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 features];

    if (v3)
    {
      v4 = [v3 sleepDetails];

      if (v4)
      {
        v5 = [v0 code];
        if (v5 == 341)
        {
          strcpy(v7, "HKObjectType_");
          v7[7] = -4864;
          goto LABEL_7;
        }

        if (v5 == 63)
        {
          return;
        }
      }

      strcpy(v7, "HKObjectType_");
      v7[7] = -4864;
      [v0 code];
LABEL_7:
      v6 = sub_191CC7398();
      MEMORY[0x193B01F90](v6);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t DateInterval.hk_union(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37[3] = a1;
  v39 = a2;
  v2 = sub_191CC6148();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v6 = MEMORY[0x1EEE9AC00](v2, v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v6, v9);
  v12 = v37 - v11;
  v14 = MEMORY[0x1EEE9AC00](v10, v13);
  v38 = v37 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = v37 - v18;
  v21 = MEMORY[0x1EEE9AC00](v17, v20);
  v23 = v37 - v22;
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = v37 - v25;
  v37[1] = v37 - v25;
  sub_191CC5CE8();
  sub_191CC5CE8();
  sub_191C95070();
  v27 = sub_191CC66F8();
  v28 = v3[1];
  v29 = (v27 & 1) == 0;
  if (v27)
  {
    v30 = v23;
  }

  else
  {
    v30 = v19;
  }

  if (!v29)
  {
    v23 = v19;
  }

  v28(v30, v2);
  v31 = v3[4];
  v31(v26, v23, v2);
  sub_191CC5CB8();
  sub_191CC5CB8();
  v32 = sub_191CC6708();
  v33 = (v32 & 1) == 0;
  if (v32)
  {
    v34 = v12;
  }

  else
  {
    v34 = v8;
  }

  if (v33)
  {
    v35 = v12;
  }

  else
  {
    v35 = v8;
  }

  v28(v34, v2);
  v31(v38, v35, v2);
  return sub_191CC5CC8();
}

unint64_t sub_191C95070()
{
  result = qword_1EADCAE28;
  if (!qword_1EADCAE28)
  {
    sub_191CC6148();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCAE28);
  }

  return result;
}

id HKWorkoutMetricsDataSourceConfiguration.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

uint64_t HKWorkoutMetricsDataSourceConfiguration.init(coder:)(void *a1)
{
  v2 = v1;
  sub_191C95298();
  result = sub_191CC6D88();
  if (result)
  {
    *&v2[OBJC_IVAR____TtC9HealthKit39HKWorkoutMetricsDataSourceConfiguration_workoutConfiguration] = result;
    v6.receiver = v2;
    v6.super_class = type metadata accessor for HKWorkoutMetricsDataSourceConfiguration();
    v5 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

    if (v5)
    {
    }

    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_191C95298()
{
  result = qword_1EADCD310;
  if (!qword_1EADCD310)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCD310);
  }

  return result;
}

id HKWorkoutMetricsDataSourceConfiguration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HKWorkoutMetricsDataSourceConfiguration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HKWorkoutMetricsDataSourceConfiguration();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_191C953FC(uint64_t a1)
{
  v29 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_191CC6EE8();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_191C07F84(0, v2 & ~(v2 >> 63), 0);
    v30 = v35;
    if (v29)
    {
      v3 = sub_191CC6E98();
    }

    else
    {
      v5 = -1 << *(a1 + 32);
      v3 = sub_191CC6E68();
      v4 = *(a1 + 36);
    }

    v32 = v3;
    v33 = v4;
    v34 = v29 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      v28 = v2;
      while (v6 < v2)
      {
        if (__OFADD__(v6++, 1))
        {
          goto LABEL_35;
        }

        v9 = v32;
        v10 = v33;
        v11 = v34;
        sub_191C95804(v32, v33, v34, a1);
        v13 = v12;
        v14 = [v12 integerValue];

        v15 = v30;
        v35 = v30;
        v17 = *(v30 + 16);
        v16 = *(v30 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_191C07F84((v16 > 1), v17 + 1, 1);
          v15 = v35;
        }

        *(v15 + 16) = v17 + 1;
        *(v15 + 8 * v17 + 32) = v14;
        v30 = v15;
        if (v29)
        {
          if (!v11)
          {
            goto LABEL_40;
          }

          if (sub_191CC6EB8())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v28;
          sub_191C96310();
          v7 = sub_191CC6B58();
          sub_191CC6F38();
          v7(v31, 0);
          if (v6 == v28)
          {
LABEL_32:
            sub_19198D53C(v32, v33, v34);
            return;
          }
        }

        else
        {
          if (v11)
          {
            goto LABEL_41;
          }

          if ((v9 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v18 = 1 << *(a1 + 32);
          if (v9 >= v18)
          {
            goto LABEL_36;
          }

          v19 = v9 >> 6;
          v20 = *(a1 + 56 + 8 * (v9 >> 6));
          if (((v20 >> v9) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(a1 + 36) != v10)
          {
            goto LABEL_38;
          }

          v21 = v20 & (-2 << (v9 & 0x3F));
          if (v21)
          {
            v18 = __clz(__rbit64(v21)) | v9 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v22 = v19 << 6;
            v23 = v19 + 1;
            v24 = (a1 + 64 + 8 * v19);
            while (v23 < (v18 + 63) >> 6)
            {
              v26 = *v24++;
              v25 = v26;
              v22 += 64;
              ++v23;
              if (v26)
              {
                sub_19198D53C(v9, v10, 0);
                v18 = __clz(__rbit64(v25)) + v22;
                goto LABEL_31;
              }
            }

            sub_19198D53C(v9, v10, 0);
          }

LABEL_31:
          v27 = *(a1 + 36);
          v32 = v18;
          v33 = v27;
          v34 = 0;
          v2 = v28;
          if (v6 == v28)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t static HKCategoryValueSleepAnalysis.allAsleepValues.getter()
{
  v0 = HKCategoryValueSleepAnalysisAsleepValues();
  sub_191C94AC4();
  sub_191C962C8(&qword_1EADCC7E0, sub_191C94AC4);
  v1 = sub_191CC6B38();

  sub_191C953FC(v1);
  v3 = v2;

  v4 = sub_191C7B4D8(v3);

  return v4;
}

void sub_191C95804(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x193B026A0](a1, a2, v7);
      sub_191C94AC4();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_191C94AC4();
    if (sub_191CC6EC8() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_191CC6ED8();
    swift_dynamicCast();
    v4 = v16;
    v8 = *(a4 + 40);
    v9 = sub_191CC6D98();
    v10 = -1 << *(a4 + 32);
    v6 = v9 & ~v10;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v11 = ~v10;
      do
      {
        v12 = *(*(a4 + 48) + 8 * v6);
        v13 = sub_191CC6DA8();

        if (v13)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v11;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v14 = *(*(a4 + 48) + 8 * v6);

  v15 = v14;
}

uint64_t sub_191C95A04(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD318, type metadata accessor for HKCategoryValue);
  result = sub_191C962C8(&qword_1EADCD320, type metadata accessor for HKCategoryValue);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95A88(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD328, type metadata accessor for HKCategoryValueAppetiteChanges);
  result = sub_191C962C8(&qword_1EADCD330, type metadata accessor for HKCategoryValueAppetiteChanges);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95B0C(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD338, type metadata accessor for HKCategoryValueAppleStandHour);
  result = sub_191C962C8(&qword_1EADCD340, type metadata accessor for HKCategoryValueAppleStandHour);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95B90(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD348, type metadata accessor for HKCategoryValueAppleWalkingSteadinessEvent);
  result = sub_191C962C8(&qword_1EADCD350, type metadata accessor for HKCategoryValueAppleWalkingSteadinessEvent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95C14(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD358, type metadata accessor for HKCategoryValueCervicalMucusQuality);
  result = sub_191C962C8(&qword_1EADCD360, type metadata accessor for HKCategoryValueCervicalMucusQuality);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95C98(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD368, type metadata accessor for HKCategoryValueContraceptive);
  result = sub_191C962C8(&qword_1EADCD370, type metadata accessor for HKCategoryValueContraceptive);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95D1C(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD378, type metadata accessor for HKCategoryValueEnvironmentalAudioExposureEvent);
  result = sub_191C962C8(&qword_1EADCD380, type metadata accessor for HKCategoryValueEnvironmentalAudioExposureEvent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95DA0(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD388, type metadata accessor for HKCategoryValueHeadphoneAudioExposureEvent);
  result = sub_191C962C8(&qword_1EADCD390, type metadata accessor for HKCategoryValueHeadphoneAudioExposureEvent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95E24(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD398, type metadata accessor for HKCategoryValueLowCardioFitnessEvent);
  result = sub_191C962C8(&qword_1EADCD3A0, type metadata accessor for HKCategoryValueLowCardioFitnessEvent);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95EA8(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD3A8, type metadata accessor for HKCategoryValueMenstrualFlow);
  result = sub_191C962C8(&qword_1EADCD3B0, type metadata accessor for HKCategoryValueMenstrualFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95F2C(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD3B8, type metadata accessor for HKCategoryValueOvulationTestResult);
  result = sub_191C962C8(&qword_1EADCD3C0, type metadata accessor for HKCategoryValueOvulationTestResult);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C95FB0(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD3C8, type metadata accessor for HKCategoryValuePregnancyTestResult);
  result = sub_191C962C8(&qword_1EADCD3D0, type metadata accessor for HKCategoryValuePregnancyTestResult);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C96034(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD3D8, type metadata accessor for HKCategoryValuePresence);
  result = sub_191C962C8(&qword_1EADCD3E0, type metadata accessor for HKCategoryValuePresence);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C960B8(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD3E8, type metadata accessor for HKCategoryValueProgesteroneTestResult);
  result = sub_191C962C8(&qword_1EADCD3F0, type metadata accessor for HKCategoryValueProgesteroneTestResult);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C9613C(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD3F8, type metadata accessor for HKCategoryValueSeverity);
  result = sub_191C962C8(&qword_1EADCD400, type metadata accessor for HKCategoryValueSeverity);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C961C0(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCC7F0, type metadata accessor for HKCategoryValueSleepAnalysis);
  result = sub_191C962C8(&qword_1EADCD408, type metadata accessor for HKCategoryValueSleepAnalysis);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C96244(uint64_t a1)
{
  *(a1 + 8) = sub_191C962C8(&qword_1EADCD410, type metadata accessor for HKCategoryValueVaginalBleeding);
  result = sub_191C962C8(&qword_1EADCD418, type metadata accessor for HKCategoryValueVaginalBleeding);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C962C8(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_191C96310()
{
  if (!qword_1EADCD420[0])
  {
    sub_191C94AC4();
    sub_191C962C8(&qword_1EADCC7E0, sub_191C94AC4);
    v0 = sub_191CC6B68();
    if (!v1)
    {
      atomic_store(v0, qword_1EADCD420);
    }
  }
}

uint64_t HKQueryAsyncStream.makeAsyncIterator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_191BF92E0();
  sub_191CC6AE8();

  return sub_191CC6AB8();
}

uint64_t HKQueryAsyncStream.init(healthStore:queryBuilder:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_191BF92E0();
  v8 = sub_191CC6A78();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v14 = a4;
  v15 = a2;
  v16 = a3;
  v17 = a1;
  sub_191C965EC(&v13[-v11]);
  sub_191CC6AF8();
}

void sub_191C964F0(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void *a4, uint64_t a5)
{
  v7 = a2();
  v8 = swift_allocObject();
  v8[2] = a5;
  v8[3] = a4;
  v8[4] = v7;
  sub_191BF92E0();
  sub_191CC6AA8();
  v9 = a4;
  v10 = v7;
  sub_191CC6A68();
  [v9 executeQuery_];
}

uint64_t sub_191C965EC@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8790];
  sub_191BF92E0();
  v3 = sub_191CC6A78();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_191C966A0(uint64_t a1)
{
  HKQueryAsyncStream.makeAsyncIterator()(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t sub_191C96700(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_191BF92E0();
  result = sub_191CC6AE8();
  if (v3 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

Swift::Bool_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HKKeyValueDomain.BOOL(for:)(Swift::String a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_191CC6778();
  v11[0] = 0;
  v3 = [v1 _numberWithErrorNoDataForKey_error_];

  if (v3)
  {
    v4 = v11[0];
    LOBYTE(v5) = [v3 BOOLValue];
  }

  else
  {
    v6 = v11[0];
    v7 = sub_191CC5FC8();

    swift_willThrow();
    v8 = sub_191CC5FB8();
    v5 = [v8 hk:11 isHealthKitErrorWithCode:?];

    if (v5)
    {

      LOBYTE(v5) = 2;
    }

    else
    {
      swift_willThrow();
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v5;
}

void *HKKeyValueDomain.data(for:)()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v1 = sub_191CC6778();
  v10[0] = 0;
  v2 = [v0 _dataWithErrorNoDataForKey_error_];

  v3 = v10[0];
  if (v2)
  {
    v4 = sub_191CC6048();
  }

  else
  {
    v5 = v3;
    v6 = sub_191CC5FC8();

    swift_willThrow();
    v4 = sub_191CC5FB8();
    v7 = [v4 hk:11 isHealthKitErrorWithCode:?];

    if (v7)
    {

      v4 = 0;
    }

    else
    {
      swift_willThrow();
    }
  }

  v8 = *MEMORY[0x1E69E9840];
  return v4;
}

void HKKeyValueDomain.date(for:)(uint64_t a1@<X8>)
{
  v2 = v1;
  v15[1] = *MEMORY[0x1E69E9840];
  v4 = sub_191CC6778();
  v15[0] = 0;
  v5 = [v2 _dateWithErrorNoDataForKey_error_];

  v6 = v15[0];
  if (v5)
  {
    sub_191CC60F8();
    v7 = v6;

    v8 = sub_191CC6148();
    (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
  }

  else
  {
    v9 = v15[0];
    v10 = sub_191CC5FC8();

    swift_willThrow();
    v11 = sub_191CC5FB8();
    v12 = [v11 hk:11 isHealthKitErrorWithCode:?];

    if (v12)
    {
      v13 = sub_191CC6148();
      (*(*(v13 - 8) + 56))(a1, 1, 1, v13);
    }

    else
    {
      swift_willThrow();
    }
  }

  v14 = *MEMORY[0x1E69E9840];
}

Swift::Int_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HKKeyValueDomain.integer(for:)(Swift::String a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_191CC6778();
  v11[0] = 0;
  v3 = [v1 _numberWithErrorNoDataForKey_error_];

  if (v3)
  {
    v4 = v11[0];
    v5 = [v3 integerValue];
  }

  else
  {
    v6 = v11[0];
    v7 = sub_191CC5FC8();

    swift_willThrow();
    v5 = sub_191CC5FB8();
    LODWORD(v6) = [v5 hk:11 isHealthKitErrorWithCode:?];

    if (!v6)
    {
      swift_willThrow();
      goto LABEL_6;
    }

    v5 = 0;
  }

  v8 = v3 == 0;
LABEL_6:
  v9 = *MEMORY[0x1E69E9840];
  v10 = v5;
  result.value = v10;
  result.is_nil = v8;
  return result;
}

NSNumber_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HKKeyValueDomain.number(for:)(Swift::String a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v2 = sub_191CC6778();
  v12[0] = 0;
  v3 = [v1 _numberWithErrorNoDataForKey_error_];

  v4 = v12[0];
  if (!v3)
  {
    v6 = v4;
    v7 = sub_191CC5FC8();

    swift_willThrow();
    v8 = sub_191CC5FB8();
    v9 = [v8 hk:11 isHealthKitErrorWithCode:?];

    if (v9)
    {

      v3 = 0;
    }

    else
    {
      swift_willThrow();
    }
  }

  v10 = *MEMORY[0x1E69E9840];
  v11 = v3;
  result.value.super.super.isa = v11;
  result.is_nil = v5;
  return result;
}

void HKKeyValueDomain.propertyListValue(for:)(_OWORD *a1@<X8>)
{
  v2 = v1;
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = sub_191CC6778();
  v12[0] = 0;
  v5 = [v2 _propertyListValueWithErrorNoDataForKey_error_];

  v6 = v12[0];
  if (v5)
  {
    sub_191CC6E18();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = v6;
    v8 = sub_191CC5FC8();

    swift_willThrow();
    v9 = sub_191CC5FB8();
    v10 = [v9 hk:11 isHealthKitErrorWithCode:?];

    if (v10)
    {
      *a1 = 0u;
      a1[1] = 0u;
    }

    else
    {
      swift_willThrow();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

Swift::String_optional __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HKKeyValueDomain.string(for:)(Swift::String a1)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v2 = sub_191CC6778();
  v15[0] = 0;
  v3 = [v1 _stringWithErrorNoDataForKey_error_];

  v4 = v15[0];
  if (v3)
  {
    v5 = sub_191CC67B8();
    v7 = v6;
    v8 = v4;
  }

  else
  {
    v9 = v15[0];
    v10 = sub_191CC5FC8();

    swift_willThrow();
    v5 = sub_191CC5FB8();
    v7 = [v5 hk:11 isHealthKitErrorWithCode:?];

    if (v7)
    {

      v5 = 0;
      v7 = 0;
    }

    else
    {
      swift_willThrow();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  v12 = v5;
  v13 = v7;
  result.value._object = v13;
  result.value._countAndFlagsBits = v12;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HKKeyValueDomain.setBool(_:forKey:)(Swift::Bool_optional _, Swift::String forKey)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (_.value == 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  v4 = sub_191CC6778();
  v9[0] = 0;
  v5 = [v2 setNumber:v3 forKey:v4 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_191CC5FC8();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void HKKeyValueDomain.setBool(_:forKey:completion:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  }

  v9 = sub_191CC6778();
  v11[4] = a4;
  v11[5] = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_191C97268;
  v11[3] = &block_descriptor_24;
  v10 = _Block_copy(v11);

  [v5 setNumber:v8 forKey:v9 completion:v10];
  _Block_release(v10);
}

void sub_191C97268(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v7 = a3;
  v6(a2, a3);
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HKKeyValueDomain.setInteger(_:forKey:)(Swift::Int_optional _, Swift::String forKey)
{
  v9[1] = *MEMORY[0x1E69E9840];
  if (_.is_nil)
  {
    v3 = 0;
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  v4 = sub_191CC6778();
  v9[0] = 0;
  v5 = [v2 setNumber:v3 forKey:v4 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_191CC5FC8();

    swift_willThrow();
  }

  v8 = *MEMORY[0x1E69E9840];
}

void HKKeyValueDomain.setInteger(_:forKey:completion:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    v9 = 0;
  }

  else
  {
    v9 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  }

  v10 = sub_191CC6778();
  v12[4] = a5;
  v12[5] = a6;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_191C97268;
  v12[3] = &block_descriptor_3_1;
  v11 = _Block_copy(v12);

  [v6 setNumber:v9 forKey:v10 completion:v11];
  _Block_release(v11);
}

id HKUserAnnotatedMedicationQueryDescriptor.predicate.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

uint64_t HKUserAnnotatedMedicationQueryDescriptor.limit.getter()
{
  result = *(v0 + 8);
  v2 = *(v0 + 16);
  return result;
}

uint64_t HKUserAnnotatedMedicationQueryDescriptor.limit.setter(uint64_t result, char a2)
{
  *(v2 + 8) = result;
  *(v2 + 16) = a2 & 1;
  return result;
}

uint64_t HKUserAnnotatedMedicationQueryDescriptor.init(predicate:limit:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

uint64_t HKUserAnnotatedMedicationQueryDescriptor.result(for:)(uint64_t a1)
{
  *(v2 + 136) = a1;
  *(v2 + 144) = *v1;
  *(v2 + 160) = *(v1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_191C97614, 0, 0);
}

uint64_t sub_191C97614()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = *(v0 + 136);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 128;
  *(v0 + 24) = sub_191BFFBF4;
  v5 = swift_continuation_init();
  v6 = swift_allocObject();
  *(v6 + 16) = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3;
  }

  v8 = swift_allocObject();
  *(v8 + 16) = v5;
  *(v8 + 24) = v6;
  v9 = objc_allocWithZone(HKUserAnnotatedMedicationQuery);
  *(v0 + 112) = sub_191C97950;
  *(v0 + 120) = v8;
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_191C69AD0;
  *(v0 + 104) = &block_descriptor_25;
  v10 = _Block_copy((v0 + 80));

  v11 = [v9 initWithPredicate:v2 limit:v7 resultsHandler:v10];
  _Block_release(v10);
  v12 = *(v0 + 120);

  [v4 executeQuery_];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

void sub_191C977E8(uint64_t a1, void *a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    sub_191BF92E0();
    swift_allocError();
    *v8 = a4;
    v9 = a4;

    swift_continuation_throwingResumeWithError();
  }

  else
  {
    if (a2)
    {
      v11 = a3;
      swift_beginAccess();
      v13 = a2;
      MEMORY[0x193B02060]();
      if (*((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v14 = *((*(a6 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_191CC6908();
      }

      sub_191CC6948();
      swift_endAccess();
      a3 = v11;
    }

    if (a3)
    {
      swift_beginAccess();
      **(*(a5 + 64) + 40) = *(a6 + 16);

      swift_continuation_throwingResume();
    }
  }
}

uint64_t sub_191C97958(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_191BFBFE4;

  return HKUserAnnotatedMedicationQueryDescriptor.result(for:)(a2);
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_191C97A08(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 17))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_191C97A64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_191C97DF8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t HKSleepDaySummaryQueryOptions.init(from:)(uint64_t *a1)
{
  v3 = a1[4];
  OptionsFromStringRepresentation = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191CC7518();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_0(v7, v7[3]);
    sub_191CC73F8();
    v6 = sub_191CC6778();

    OptionsFromStringRepresentation = HKMakeSleepDaySummaryQueryOptionsFromStringRepresentation(v6);

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return OptionsFromStringRepresentation;
}

uint64_t HKSleepDaySummaryQueryOptions.encode(to:)(void *a1, char a2)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191CC7538();
  v4 = HKSleepDaySummaryQueryOptionsStringRepresentation(a2);
  sub_191CC67B8();

  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_191CC7408();

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

uint64_t sub_191C98038@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191CC7518();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_0(v9, v9[3]);
  sub_191CC73F8();
  v6 = sub_191CC6778();

  OptionsFromStringRepresentation = HKMakeSleepDaySummaryQueryOptionsFromStringRepresentation(v6);

  __swift_destroy_boxed_opaque_existential_0(v9);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = OptionsFromStringRepresentation;
  return result;
}

uint64_t sub_191C98120(void *a1)
{
  v2 = *v1;
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191CC7538();
  v4 = HKSleepDaySummaryQueryOptionsStringRepresentation(v2);
  sub_191CC67B8();

  __swift_mutable_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_191CC7408();

  return __swift_destroy_boxed_opaque_existential_0(v6);
}

uint64_t HKWorkoutMetricsDataSource.delegate.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock);
  os_unfair_lock_lock(v1 + 4);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v1 + 4);
  return Strong;
}

uint64_t HKWorkoutMetricsDataSource.delegate.setter()
{
  v1 = *(v0 + OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock);
  os_unfair_lock_lock(v1 + 4);
  swift_unknownObjectWeakAssign();
  os_unfair_lock_unlock(v1 + 4);

  return swift_unknownObjectRelease();
}

void sub_191C983B4(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock;
  os_unfair_lock_lock((*(*a1 + OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock) + 16));
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock((*(v3 + v4) + 16));
  *a2 = Strong;
}

void sub_191C98418(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock;
  os_unfair_lock_lock((*(*a2 + OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock) + 16));
  swift_unknownObjectWeakAssign();
  v5 = (*(v3 + v4) + 16);

  os_unfair_lock_unlock(v5);
}

uint64_t (*HKWorkoutMetricsDataSource.delegate.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock);
  a1[1] = v1;
  a1[2] = v3;
  os_unfair_lock_lock(v3 + 4);
  a1[3] = OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource__delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v3 + 4);
  *a1 = Strong;
  return sub_191C98504;
}

uint64_t sub_191C98504(uint64_t *a1, char a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *a1;
  v5 = a1[1];
  if (a2)
  {
    v6 = *a1;
    swift_unknownObjectRetain();
    os_unfair_lock_lock(v2 + 4);
    swift_unknownObjectWeakAssign();
    os_unfair_lock_unlock(v2 + 4);
    swift_unknownObjectRelease();
  }

  else
  {
    os_unfair_lock_lock(v2 + 4);
    swift_unknownObjectWeakAssign();
    os_unfair_lock_unlock(v2 + 4);
  }

  return swift_unknownObjectRelease();
}

id sub_191C98594()
{
  v1 = OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource____lazy_storage___proxyProvider;
  v2 = *&v0[OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource____lazy_storage___proxyProvider];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource____lazy_storage___proxyProvider];
  }

  else
  {
    swift_getObjectType();
    v4 = *&v0[OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_healthStore];
    sub_191CC76A8();
    v5 = objc_allocWithZone(HKTaskServerProxyProvider);
    v6 = v0;
    v7 = sub_191CC6778();

    v8 = v0;
    v9 = sub_191CC6168();
    v10 = [v5 initWithHealthStore:v4 taskIdentifier:v7 exportedObject:v6 taskUUID:v9];

    v11 = *&v8[v1];
    *&v8[v1] = v10;
    v3 = v10;

    v2 = 0;
  }

  v12 = v2;
  return v3;
}

char *HKWorkoutMetricsDataSource.init(healthStore:configuration:)(void *a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_191CC61A8();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock;
  sub_191C8AEF0();
  v14 = swift_allocObject();
  *(v14 + 16) = 0;
  *&v3[v13] = v14;
  *&v3[OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource____lazy_storage___proxyProvider] = 0;
  sub_191CC6198();
  (*(v8 + 32))(&v3[OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_uuid], v12, v7);
  *&v3[OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_healthStore] = a1;
  *&v3[OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_workoutConfiguration] = a2;
  v37.receiver = v3;
  v37.super_class = ObjectType;
  v15 = a1;
  v16 = a2;
  v17 = objc_msgSendSuper2(&v37, sel_init);
  v18 = sub_191C98594();
  v19 = type metadata accessor for HKWorkoutMetricsDataSourceConfiguration();
  v20 = objc_allocWithZone(v19);
  *&v20[OBJC_IVAR____TtC9HealthKit39HKWorkoutMetricsDataSourceConfiguration_workoutConfiguration] = v16;
  v36.receiver = v20;
  v36.super_class = v19;
  v21 = v16;
  v22 = objc_msgSendSuper2(&v36, sel_init);
  [v18 setTaskConfiguration_];

  v23 = *&v17[OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource____lazy_storage___proxyProvider];
  v24 = swift_allocObject();
  *(v24 + 16) = ObjectType;
  v34 = sub_191C98A4C;
  v35 = v24;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_191C707AC;
  v33 = &block_descriptor_26;
  v25 = _Block_copy(&aBlock);
  v26 = v23;

  v27 = swift_allocObject();
  *(v27 + 16) = ObjectType;
  v34 = sub_191C98A84;
  v35 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v31 = 1107296256;
  v32 = sub_191C7081C;
  v33 = &block_descriptor_6_1;
  v28 = _Block_copy(&aBlock);

  [v26 fetchProxyWithHandler:v25 errorHandler:v28];
  _Block_release(v28);
  _Block_release(v25);

  return v17;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::Void __swiftcall HKWorkoutMetricsDataSource.clientRemote_didReceiveMetrics(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_191CC6378();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_191CC63A8();
  v34 = *(v9 - 8);
  v35 = v9;
  v10 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EADCA190 != -1)
  {
    swift_once();
  }

  v14 = sub_191CC6348();
  __swift_project_value_buffer(v14, qword_1EADCD020);

  v15 = sub_191CC6328();
  v16 = sub_191CC6CB8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    aBlock[0] = v19;
    *v18 = 136446466;
    v20 = sub_191CC76A8();
    v22 = sub_191C3B288(v20, v21, aBlock);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = type metadata accessor for HKWorkoutMetric();
    v24 = MEMORY[0x193B02090](a1._rawValue, v23);
    v26 = sub_191C3B288(v24, v25, aBlock);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_19197B000, v15, v16, "%{public}s Sending metrics to client %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B047C0](v19, -1, -1);
    v27 = v18;
    v4 = v33;
    MEMORY[0x193B047C0](v27, -1, -1);
  }

  v28 = [*&v2[OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_healthStore] clientQueue];
  v29 = swift_allocObject();
  v29[2]._rawValue = v2;
  v29[3]._rawValue = a1._rawValue;
  aBlock[4] = sub_191C98FD4;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191C910B0;
  aBlock[3] = &block_descriptor_12;
  v30 = _Block_copy(aBlock);

  v31 = v2;
  sub_191CC6388();
  v37 = MEMORY[0x1E69E7CC0];
  sub_191C98FDC();
  sub_191C9A1AC(0, &qword_1EADCD090, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
  sub_191C99034();
  sub_191CC6E58();
  MEMORY[0x193B024A0](0, v13, v8, v30);
  _Block_release(v30);

  (*(v36 + 8))(v8, v4);
  (*(v34 + 8))(v13, v35);
}

void sub_191C98F20(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_lock);
  os_unfair_lock_lock(v1 + 4);
  Strong = swift_unknownObjectWeakLoadStrong();
  os_unfair_lock_unlock(v1 + 4);
  if (Strong)
  {
    type metadata accessor for HKWorkoutMetric();
    v3 = sub_191CC68D8();
    [Strong metricsDidUpdate_];

    swift_unknownObjectRelease();
  }
}

unint64_t sub_191C98FDC()
{
  result = qword_1EADCD088;
  if (!qword_1EADCD088)
  {
    sub_191CC6378();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD088);
  }

  return result;
}

unint64_t sub_191C99034()
{
  result = qword_1EADCD098;
  if (!qword_1EADCD098)
  {
    sub_191C9A1AC(255, &qword_1EADCD090, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCD098);
  }

  return result;
}

id static HKWorkoutMetricsDataSource.serverInterface.getter()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

uint64_t HKWorkoutMetricsDataSource.identifier()@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9HealthKit26HKWorkoutMetricsDataSource_uuid;
  v4 = sub_191CC61A8();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

NSXPCInterface_optional __swiftcall HKWorkoutMetricsDataSource.remoteInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  v1 = v0;
  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

id sub_191C993A0()
{
  v0 = [objc_opt_self() interfaceWithProtocol_];

  return v0;
}

Swift::Void __swiftcall HKWorkoutMetricsDataSource.connectionInterrupted()()
{
  ObjectType = swift_getObjectType();
  v1 = sub_191C98594();
  v2 = swift_allocObject();
  *(v2 + 16) = ObjectType;
  v10 = sub_191C99EE8;
  v11 = v2;
  v6 = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = sub_191C707AC;
  v9 = &block_descriptor_18;
  v3 = _Block_copy(&v6);

  v4 = swift_allocObject();
  *(v4 + 16) = ObjectType;
  v10 = sub_191C9A290;
  v11 = v4;
  v6 = MEMORY[0x1E69E9820];
  v7 = 1107296256;
  v8 = sub_191C7081C;
  v9 = &block_descriptor_24_0;
  v5 = _Block_copy(&v6);

  [v1 fetchProxyWithHandler:v3 errorHandler:v5];
  _Block_release(v5);
  _Block_release(v3);
}

uint64_t sub_191C99574(void *a1)
{
  sub_191C00E88(a1, &v11);
  sub_191C9A070();
  if (swift_dynamicCast())
  {
    [v10[1] remote_registerSession];
    return swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0;
    v12 = 0xE000000000000000;
    sub_191CC6FC8();

    v11 = 91;
    v12 = 0xE100000000000000;
    v3 = sub_191CC76A8();
    MEMORY[0x193B01F90](v3);

    MEMORY[0x193B01F90](0xD00000000000001FLL, 0x8000000191D2F240);
    v4 = a1[3];
    v5 = __swift_project_boxed_opaque_existential_0(a1, v4);
    v6 = *(*(v4 - 8) + 64);
    MEMORY[0x1EEE9AC00](v5, v5);
    (*(v8 + 16))(v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = sub_191CC67C8();
    MEMORY[0x193B01F90](v9);

    result = sub_191CC7118();
    __break(1u);
  }

  return result;
}

void sub_191C99758(void *a1)
{
  if (qword_1EADCA190 != -1)
  {
    swift_once();
  }

  v2 = sub_191CC6348();
  __swift_project_value_buffer(v2, qword_1EADCD020);
  v3 = a1;
  oslog = sub_191CC6328();
  v4 = sub_191CC6CB8();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v5 = 136446466;
    v8 = sub_191CC76A8();
    v10 = sub_191C3B288(v8, v9, &v14);

    *(v5 + 4) = v10;
    *(v5 + 12) = 2112;
    v11 = a1;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v12;
    *v6 = v12;
    _os_log_impl(&dword_19197B000, oslog, v4, "%{public}s Error fetching proxy %@", v5, 0x16u);
    sub_191C6E5A8(v6);
    MEMORY[0x193B047C0](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x193B047C0](v7, -1, -1);
    MEMORY[0x193B047C0](v5, -1, -1);
  }
}

id HKWorkoutMetricsDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HKWorkoutMetricsDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_191C99AE4()
{
  v0 = sub_191C9A154();
  if (swift_isClassType() && v0)
  {
    sub_191C9A210(0, qword_1EADCD520, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  }

  else
  {
    sub_191C9A1AC(0, &qword_1EADCD518, sub_191C9A154, MEMORY[0x1E69E6F90]);
  }
}

id _s9HealthKit26HKWorkoutMetricsDataSourceC15clientInterfaceSo14NSXPCInterfaceCvgZ_0()
{
  v16 = [objc_opt_self() interfaceWithProtocol_];
  sub_191C99AE4();
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191DD1F40;
  *(inited + 32) = type metadata accessor for HKWorkoutMetric();
  *(inited + 40) = sub_191BFAE6C(0, &qword_1EADCCD30, 0x1E695DEC8);
  *&v20 = MEMORY[0x1E69E7CC0];
  MEMORY[0x193B02060]();
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_24;
  }

  while (1)
  {
    swift_getObjCClassFromMetadata();
    sub_191CC6948();

    MEMORY[0x193B02060](v1);
    if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_191CC6908();
    }

    swift_getObjCClassFromMetadata();
    sub_191CC6948();
    v2 = v20;
    if (!(v20 >> 62))
    {
      v3 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        break;
      }

      goto LABEL_6;
    }

    v3 = sub_191CC6EE8();
    if (!v3)
    {
      break;
    }

LABEL_6:
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x193B02790](v4, v2);
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_22;
      }

LABEL_13:
      *&v20 = v7;
      if (swift_dynamicCast())
      {
        if (*(&v18 + 1))
        {
          v20 = v17;
          v21 = v18;
          v22 = v19;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_191C07C98(0, *(v5 + 2) + 1, 1, v5);
          }

          v10 = *(v5 + 2);
          v9 = *(v5 + 3);
          if (v10 >= v9 >> 1)
          {
            v5 = sub_191C07C98((v9 > 1), v10 + 1, 1, v5);
          }

          *(v5 + 2) = v10 + 1;
          v11 = &v5[40 * v10];
          v12 = v20;
          v13 = v21;
          *(v11 + 8) = v22;
          *(v11 + 2) = v12;
          *(v11 + 3) = v13;
          goto LABEL_9;
        }
      }

      else
      {
        v19 = 0;
        v17 = 0u;
        v18 = 0u;
      }

      sub_191C9A0D4(&v17);
LABEL_9:
      ++v4;
      if (v8 == v3)
      {
        goto LABEL_27;
      }
    }

    if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_23;
    }

    v6 = *(v2 + 8 * v4 + 32);
    v7 = swift_unknownObjectRetain();
    v8 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_13;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    sub_191CC6908();
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_27:

  sub_191C7B584(v5);

  v14 = sub_191CC6B28();

  [v16 setClasses:v14 forSelector:sel_clientRemote_didReceiveMetrics_ argumentIndex:0 ofReply:0];

  return v16;
}

uint64_t type metadata accessor for HKWorkoutMetricsDataSource()
{
  result = qword_1EADCD4E8;
  if (!qword_1EADCD4E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_191C99F5C()
{
  result = sub_191CC61A8();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_191C9A070()
{
  result = qword_1EADCD4F8;
  if (!qword_1EADCD4F8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EADCD4F8);
  }

  return result;
}

uint64_t sub_191C9A0D4(uint64_t a1)
{
  sub_191C9A210(0, &qword_1EADCD508, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_191C9A154()
{
  result = qword_1EADCD510;
  if (!qword_1EADCD510)
  {
    sub_191BFAE6C(255, &qword_1EADCC5C0, 0x1E69E58C0);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EADCD510);
  }

  return result;
}

void sub_191C9A1AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_191C9A210(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t static QuantityThresholds.Edge.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a1;
  v65 = a2;
  v62 = *(a3 - 8);
  v3 = *(v62 + 64);
  v4 = MEMORY[0x1EEE9AC00](a1, a2);
  v59 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4, v6);
  v58 = &v56 - v8;
  MEMORY[0x1EEE9AC00](v7, v9);
  v57 = &v56 - v10;
  v63 = v11;
  v66 = v11;
  v67 = v12;
  v68 = v13;
  v69 = v14;
  v60 = v14;
  v15 = type metadata accessor for QuantityThresholds.Edge();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v19 = MEMORY[0x1EEE9AC00](v15, v18);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v19, v22);
  v25 = &v56 - v24;
  MEMORY[0x1EEE9AC00](v23, v26);
  v28 = &v56 - v27;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v30 = *(TupleTypeMetadata2 - 8);
  v31 = *(v30 + 64);
  v33 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v32);
  v35 = &v56 - v34;
  v36 = *(v33 + 48);
  v61 = v16;
  v37 = *(v16 + 16);
  v37(&v56 - v34, v64, v15);
  v37(&v35[v36], v65, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v37(v25, v35, v15);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v21 = v25;
        goto LABEL_13;
      }

      v46 = v62;
      v45 = v63;
      v47 = v58;
      (*(v62 + 32))(v58, &v35[v36], v63);
      v48 = *(v60 + 8);
      v43 = sub_191CC6768();
      v49 = *(v46 + 8);
      v49(v47, v45);
      v49(v25, v45);
    }

    else
    {
      v37(v28, v35, v15);
      if (swift_getEnumCaseMultiPayload())
      {
        v21 = v28;
LABEL_13:
        (*(v62 + 8))(v21, v63);
        goto LABEL_14;
      }

      v51 = v62;
      v50 = v63;
      v52 = v57;
      (*(v62 + 32))(v57, &v35[v36], v63);
      v53 = *(v60 + 8);
      v43 = sub_191CC6768();
      v54 = *(v51 + 8);
      v54(v52, v50);
      v54(v28, v50);
    }

LABEL_17:
    v30 = v61;
    goto LABEL_18;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v37(v21, v35, v15);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_13;
    }

    v40 = v62;
    v39 = v63;
    v41 = v59;
    (*(v62 + 32))(v59, &v35[v36], v63);
    v42 = *(v60 + 8);
    v43 = sub_191CC6768();
    v44 = *(v40 + 8);
    v44(v41, v39);
    v44(v21, v39);
    goto LABEL_17;
  }

  if (swift_getEnumCaseMultiPayload() == 3)
  {
    v43 = 1;
    goto LABEL_17;
  }

LABEL_14:
  v43 = 0;
  v15 = TupleTypeMetadata2;
LABEL_18:
  (*(v30 + 8))(v35, v15);
  return v43 & 1;
}

uint64_t sub_191C9A798(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6F6C66 && a2 == 0xE500000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000191D2F320 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000191D2F340 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696C696563 && a2 == 0xE700000000000000)
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

uint64_t sub_191C9A940(unsigned __int8 a1)
{
  sub_191CC74C8();
  MEMORY[0x193B02C70](a1);
  return sub_191CC7508();
}

unint64_t sub_191C9A988(unsigned __int8 a1)
{
  v1 = 0x726F6F6C66;
  v2 = 0xD000000000000013;
  if (a1 != 2)
  {
    v2 = 0x676E696C696563;
  }

  if (a1)
  {
    v1 = 0xD000000000000013;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_191C9AA08(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_191CC73E8();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_191C9AA90(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_191C9AAE4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

BOOL sub_191C9AB38(char *a1, char *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return sub_191C9A908(*a1, *a2);
}

uint64_t sub_191C9AB50(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_191C9A940(*v1);
}

uint64_t sub_191C9AB60(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  return sub_191C9A918(a1, *v2);
}

uint64_t sub_191C9AB70(uint64_t a1, void *a2)
{
  sub_191CC74C8();
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  sub_191C9A918(v9, *v2);
  return sub_191CC7508();
}

unint64_t sub_191C9ABBC(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_191C9A988(*v1);
}

uint64_t sub_191C9ABFC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_191C9AC50(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_191C9ACA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, _BYTE *a4@<X8>)
{
  v6 = a3[2];
  v5 = a3[3];
  v7 = a3[4];
  v8 = a3[5];
  result = sub_191C9AA08(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t sub_191C9ACDC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_191C9AD30(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_191C9AD84@<X0>(void *a1@<X2>, _BYTE *a2@<X8>)
{
  v3 = a1[2];
  v4 = a1[3];
  v6 = a1[4];
  v5 = a1[5];
  v7 = sub_191C2230C();

  *a2 = v7 & 1;
  return result;
}

uint64_t sub_191C9ADD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_191C9AE28(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t sub_191C9AE7C@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result & 1;
  return result;
}

uint64_t sub_191C9AEBC(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_191C9AF10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t QuantityThresholds.Edge.encode(to:)(void *a1, void *a2)
{
  v85 = a1;
  v3 = a2[3];
  v6 = a2[4];
  v5 = a2[5];
  v89 = a2[2];
  v4 = v89;
  v90 = v3;
  v91 = v6;
  v92 = v5;
  v79 = type metadata accessor for QuantityThresholds.Edge.CeilingCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_191CC7378();
  v80 = *(v7 - 8);
  v81 = v7;
  v8 = *(v80 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v78 = &v60 - v10;
  v90 = v3;
  v91 = v6;
  v92 = v5;
  v11 = type metadata accessor for QuantityThresholds.Edge.InclusiveUpperBoundCodingKeys();
  v12 = swift_getWitnessTable();
  v74 = v11;
  v72 = v12;
  v13 = sub_191CC7378();
  v75 = *(v13 - 8);
  v76 = v13;
  v14 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v13, v15);
  v73 = &v60 - v16;
  v89 = v4;
  v90 = v3;
  v91 = v6;
  v92 = v5;
  v17 = type metadata accessor for QuantityThresholds.Edge.ExclusiveUpperBoundCodingKeys();
  v18 = swift_getWitnessTable();
  v69 = v17;
  v67 = v18;
  v71 = sub_191CC7378();
  v70 = *(v71 - 8);
  v19 = *(v70 + 64);
  v21 = MEMORY[0x1EEE9AC00](v71, v20);
  v68 = &v60 - v22;
  v83 = *(v4 - 8);
  v23 = *(v83 + 64);
  v25 = MEMORY[0x1EEE9AC00](v21, v24);
  v66 = &v60 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25, v27);
  v64 = &v60 - v29;
  MEMORY[0x1EEE9AC00](v28, v30);
  v65 = &v60 - v31;
  v89 = v4;
  v90 = v3;
  v91 = v6;
  v92 = v5;
  type metadata accessor for QuantityThresholds.Edge.FloorCodingKeys();
  v62 = swift_getWitnessTable();
  v63 = sub_191CC7378();
  v61 = *(v63 - 8);
  v32 = *(v61 + 64);
  v34 = MEMORY[0x1EEE9AC00](v63, v33);
  v60 = &v60 - v35;
  v36 = *(a2 - 1);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34, v38);
  v40 = &v60 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v4;
  v89 = v4;
  v90 = v3;
  v84 = v6;
  v91 = v6;
  v92 = v5;
  type metadata accessor for QuantityThresholds.Edge.CodingKeys();
  swift_getWitnessTable();
  v41 = sub_191CC7378();
  v87 = *(v41 - 8);
  v88 = v41;
  v42 = *(v87 + 64);
  MEMORY[0x1EEE9AC00](v41, v43);
  v45 = (&v60 - v44);
  v46 = v85[4];
  __swift_project_boxed_opaque_existential_0(v85, v85[3]);
  v85 = v45;
  sub_191CC7548();
  (*(v36 + 16))(v40, v86, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v48 = v82;
    v49 = v83;
    if (EnumCaseMultiPayload)
    {
      v50 = v64;
      (*(v83 + 32))(v64, v40, v82);
      LOBYTE(v89) = 2;
      v51 = v73;
      v52 = v88;
      v53 = v85;
      sub_191CC72B8();
      v54 = v76;
      sub_191CC7348();
      v55 = v75;
    }

    else
    {
      v50 = v65;
      (*(v83 + 32))(v65, v40, v82);
      LOBYTE(v89) = 1;
      v51 = v68;
      v52 = v88;
      v53 = v85;
      sub_191CC72B8();
      v54 = v71;
      sub_191CC7348();
      v55 = v70;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v48 = v82;
    v49 = v83;
    v50 = v66;
    (*(v83 + 32))(v66, v40, v82);
    LOBYTE(v89) = 3;
    v51 = v78;
    v52 = v88;
    v53 = v85;
    sub_191CC72B8();
    v54 = v81;
    sub_191CC7348();
    v55 = v80;
LABEL_7:
    (*(v55 + 8))(v51, v54);
    (*(v49 + 8))(v50, v48);
    return (*(v87 + 8))(v53, v52);
  }

  LOBYTE(v89) = 0;
  v57 = v60;
  v58 = v88;
  v59 = v85;
  sub_191CC72B8();
  (*(v61 + 8))(v57, v63);
  return (*(v87 + 8))(v59, v58);
}

uint64_t QuantityThresholds.Edge.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](a1, a2);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6, v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12, v14, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v4 + 32))(v8, v12, v3);
      v16 = 2;
    }

    else
    {
      (*(v4 + 32))(v8, v12, v3);
      v16 = 1;
    }

    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (*(v4 + 32))(v8, v12, v3);
    v16 = 3;
LABEL_7:
    MEMORY[0x193B02C70](v16);
    v17 = *(a2 + 40);
    sub_191CC66A8();
    return (*(v4 + 8))(v8, v3);
  }

  return MEMORY[0x193B02C70](0);
}

uint64_t QuantityThresholds.Edge.hashValue.getter(uint64_t a1)
{
  sub_191CC74C8();
  QuantityThresholds.Edge.hash(into:)(v3, a1);
  return sub_191CC7508();
}

uint64_t QuantityThresholds.Edge.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v114 = a6;
  *&v123 = a2;
  *(&v123 + 1) = a3;
  *&v124 = a4;
  *(&v124 + 1) = a5;
  v11 = type metadata accessor for QuantityThresholds.Edge.CeilingCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v111 = v11;
  v99 = sub_191CC72A8();
  v98 = *(v99 - 8);
  v12 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99, v13);
  v112 = &v89 - v14;
  *&v123 = a2;
  *(&v123 + 1) = a3;
  *&v124 = a4;
  *(&v124 + 1) = a5;
  v15 = type metadata accessor for QuantityThresholds.Edge.InclusiveUpperBoundCodingKeys();
  v16 = swift_getWitnessTable();
  v108 = v15;
  v107 = v16;
  v97 = sub_191CC72A8();
  v96 = *(v97 - 8);
  v17 = *(v96 + 64);
  MEMORY[0x1EEE9AC00](v97, v18);
  v109 = &v89 - v19;
  *&v123 = a2;
  *(&v123 + 1) = a3;
  *&v124 = a4;
  *(&v124 + 1) = a5;
  v20 = type metadata accessor for QuantityThresholds.Edge.ExclusiveUpperBoundCodingKeys();
  v21 = swift_getWitnessTable();
  v105 = v20;
  v104 = v21;
  v95 = sub_191CC72A8();
  v94 = *(v95 - 8);
  v22 = *(v94 + 64);
  MEMORY[0x1EEE9AC00](v95, v23);
  v106 = &v89 - v24;
  *&v123 = a2;
  *(&v123 + 1) = a3;
  *&v124 = a4;
  *(&v124 + 1) = a5;
  v25 = type metadata accessor for QuantityThresholds.Edge.FloorCodingKeys();
  v26 = swift_getWitnessTable();
  v103 = v25;
  v102 = v26;
  v93 = sub_191CC72A8();
  v92 = *(v93 - 8);
  v27 = *(v92 + 64);
  MEMORY[0x1EEE9AC00](v93, v28);
  v101 = &v89 - v29;
  *&v123 = a2;
  *(&v123 + 1) = a3;
  *&v124 = a4;
  *(&v124 + 1) = a5;
  type metadata accessor for QuantityThresholds.Edge.CodingKeys();
  v119 = swift_getWitnessTable();
  v30 = sub_191CC72A8();
  v117 = *(v30 - 8);
  v118 = v30;
  v31 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v30, v32);
  v34 = &v89 - v33;
  v113 = a2;
  *&v123 = a2;
  *(&v123 + 1) = a3;
  v115 = a3;
  *&v124 = a4;
  *(&v124 + 1) = a5;
  v116 = type metadata accessor for QuantityThresholds.Edge();
  v100 = *(v116 - 8);
  v35 = *(v100 + 64);
  v37 = MEMORY[0x1EEE9AC00](v116, v36);
  v39 = &v89 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x1EEE9AC00](v37, v40);
  v43 = &v89 - v42;
  v45 = MEMORY[0x1EEE9AC00](v41, v44);
  v47 = &v89 - v46;
  MEMORY[0x1EEE9AC00](v45, v48);
  v50 = &v89 - v49;
  v51 = a1;
  v52 = a1[3];
  v53 = a1[4];
  v125 = v51;
  __swift_project_boxed_opaque_existential_0(v51, v52);
  v54 = v120;
  sub_191CC7528();
  if (!v54)
  {
    v90 = v47;
    v91 = v43;
    v119 = v39;
    v120 = v50;
    v56 = v117;
    v55 = v118;
    v57 = v34;
    *&v121 = sub_191CC7298();
    sub_191CC6978();
    swift_getWitnessTable();
    *&v123 = sub_191CC6E38();
    *(&v123 + 1) = v58;
    *&v124 = v59;
    *(&v124 + 1) = v60;
    sub_191CC6E28();
    swift_getWitnessTable();
    sub_191CC6C08();
    v61 = v121;
    v62 = v55;
    if (v121 == 4 || (v89 = v123, v121 = v123, v122 = v124, (sub_191CC6C38() & 1) == 0))
    {
      v67 = sub_191CC7028();
      swift_allocError();
      v69 = v68;
      sub_191C2CAB4();
      v71 = *(v70 + 48);
      *v69 = v116;
      sub_191CC71D8();
      sub_191CC7008();
      (*(*(v67 - 8) + 104))(v69, *MEMORY[0x1E69E6AF8], v67);
      swift_willThrow();
      (*(v56 + 8))(v57, v62);
      swift_unknownObjectRelease();
    }

    else if (v61 > 1)
    {
      v72 = v57;
      if (v61 == 2)
      {
        LOBYTE(v121) = 2;
        v73 = v109;
        sub_191CC71C8();
        v74 = v114;
        v75 = v97;
        sub_191CC7268();
        (*(v96 + 8))(v73, v75);
        (*(v56 + 8))(v72, v62);
        swift_unknownObjectRelease();
        v76 = v91;
      }

      else
      {
        LOBYTE(v121) = 3;
        v81 = v112;
        sub_191CC71C8();
        v74 = v114;
        v82 = v99;
        sub_191CC7268();
        (*(v98 + 8))(v81, v82);
        (*(v56 + 8))(v72, v62);
        swift_unknownObjectRelease();
        v76 = v119;
      }

      v77 = v116;
      swift_storeEnumTagMultiPayload();
      v87 = *(v100 + 32);
      v88 = v120;
      v87(v120, v76, v77);
      v87(v74, v88, v77);
    }

    else
    {
      v63 = v57;
      if (v61)
      {
        LOBYTE(v121) = 1;
        v78 = v106;
        sub_191CC71C8();
        v79 = v90;
        v80 = v95;
        sub_191CC7268();
        (*(v94 + 8))(v78, v80);
        (*(v56 + 8))(v63, v62);
        swift_unknownObjectRelease();
        v84 = v116;
        swift_storeEnumTagMultiPayload();
        v85 = *(v100 + 32);
        v86 = v120;
        v85(v120, v79, v84);
        v85(v114, v86, v84);
      }

      else
      {
        LOBYTE(v121) = 0;
        v64 = v101;
        sub_191CC71C8();
        (*(v92 + 8))(v64, v93);
        (*(v56 + 8))(v57, v55);
        swift_unknownObjectRelease();
        v65 = v120;
        v66 = v116;
        swift_storeEnumTagMultiPayload();
        (*(v100 + 32))(v114, v65, v66);
      }
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v125);
}

uint64_t sub_191C9C60C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[3];
  v4 = a3[4];
  v5 = a3[5];
  return static QuantityThresholds.Edge.== infix(_:_:)(a1, a2, a3[2]);
}

double QuantityThresholds.Bucket.range.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 52);
  result = *v2;
  v4 = *(v2 + 8);
  return result;
}

uint64_t QuantityThresholds.Bucket.range.setter(uint64_t result, double a2, double a3)
{
  v4 = (v3 + *(result + 52));
  *v4 = a2;
  v4[1] = a3;
  return result;
}

uint64_t (*QuantityThresholds.Bucket.range.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

BOOL static QuantityThresholds.Bucket.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(a6 + 8);
  if ((sub_191CC6768() & 1) == 0)
  {
    return 0;
  }

  v9 = *(type metadata accessor for QuantityThresholds.Bucket() + 52);
  v10 = *(a1 + v9);
  v11 = *(a1 + v9 + 8);
  v12 = (a2 + v9);
  v13 = v12[1];
  v14 = v10 == *v12;
  return v11 == v13 && v14;
}

uint64_t QuantityThresholds.Bucket.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 40);
  sub_191CC66A8();
  v6 = (v2 + *(a2 + 52));
  v7 = *v6;
  v8 = v6[1];
  if (*v6 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x193B02C90](*&v7);
  if (v8 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = v8;
  }

  return MEMORY[0x193B02C90](*&v9);
}

uint64_t QuantityThresholds.Threshold.edge.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v7 = *(a1 + 16);
  v8 = *(a1 + 32);
  v5 = type metadata accessor for QuantityThresholds.Edge();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t QuantityThresholds.Threshold.edge.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 52);
  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v5 = type metadata accessor for QuantityThresholds.Edge();
  return (*(*(v5 - 8) + 40))(v2 + v4, a1, v5);
}

uint64_t (*QuantityThresholds.Threshold.edge.modify(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 52);
  return result;
}

uint64_t QuantityThresholds.Threshold.init(value:edge:)@<X0>(uint64_t a1@<X0>, double *a2@<X8>, double a3@<D0>)
{
  *a2 = a3;
  v5 = *(type metadata accessor for QuantityThresholds.Threshold() + 52);
  v6 = type metadata accessor for QuantityThresholds.Edge();
  return (*(*(v6 - 8) + 32))(a2 + v5, a1, v6);
}

uint64_t static QuantityThresholds.Threshold.== infix(_:_:)(double *a1, double *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v6 = type metadata accessor for QuantityThresholds.Threshold();
  return static QuantityThresholds.Edge.== infix(_:_:)(a1 + *(v6 + 52), a2 + *(v6 + 52), a3) & 1;
}

uint64_t sub_191C9CAFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701274725 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_191C9CBC4(char a1)
{
  if (a1)
  {
    return 1701274725;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t sub_191C9CC80(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_191C9CCD4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t QuantityThresholds.Threshold.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 32);
  v6 = *(a2 + 40);
  v21 = *(a2 + 24);
  v22 = v4;
  v25 = v4;
  v26 = v21;
  v19 = v6;
  v20 = v5;
  v27 = v5;
  v28 = v6;
  type metadata accessor for QuantityThresholds.Threshold.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_191CC7378();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = &v19 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v14 = v23;
  sub_191CC7548();
  v15 = *v14;
  LOBYTE(v25) = 0;
  v16 = v24;
  sub_191CC7328();
  if (!v16)
  {
    v17 = *(a2 + 52);
    v29 = 1;
    v25 = v22;
    v26 = v21;
    v27 = v20;
    v28 = v19;
    type metadata accessor for QuantityThresholds.Edge();
    swift_getWitnessTable();
    sub_191CC7348();
  }

  return (*(v8 + 8))(v12, v7);
}

uint64_t QuantityThresholds.Threshold.hash(into:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  if (*v2 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x193B02C90](*&v5);
  v6 = *(a2 + 52);
  v9 = *(a2 + 16);
  v10 = *(a2 + 32);
  v7 = type metadata accessor for QuantityThresholds.Edge();
  return QuantityThresholds.Edge.hash(into:)(a1, v7);
}

uint64_t sub_191C9CFB0(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  sub_191CC74C8();
  a2(v5, a1);
  return sub_191CC7508();
}

uint64_t QuantityThresholds.Threshold.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v33 = a6;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v36 = type metadata accessor for QuantityThresholds.Edge();
  v32 = *(v36 - 8);
  v11 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v36, v12);
  v35 = &v30 - v13;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  type metadata accessor for QuantityThresholds.Threshold.CodingKeys();
  swift_getWitnessTable();
  v37 = sub_191CC72A8();
  v34 = *(v37 - 8);
  v14 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v37, v15);
  v17 = &v30 - v16;
  v38 = a2;
  v39 = a3;
  v40 = a4;
  v41 = a5;
  v18 = type metadata accessor for QuantityThresholds.Threshold();
  v31 = *(v18 - 8);
  v19 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v18, v20);
  v22 = &v30 - v21;
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v24 = v42;
  sub_191CC7528();
  if (!v24)
  {
    v26 = v34;
    v25 = v35;
    v27 = v36;
    LOBYTE(v38) = 0;
    sub_191CC7248();
    *v22 = v28;
    LOBYTE(v38) = 1;
    swift_getWitnessTable();
    sub_191CC7268();
    (*(v26 + 8))(v17, v37);
    (*(v32 + 32))(&v22[*(v18 + 52)], v25, v27);
    (*(v31 + 32))(v33, v22, v18);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_191C9D378(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  sub_191CC74C8();
  a4(v7, a2);
  return sub_191CC7508();
}

uint64_t sub_191C9D408(double *a1, double *a2, uint64_t *a3)
{
  v3 = a3[3];
  v4 = a3[4];
  v5 = a3[5];
  return static QuantityThresholds.Threshold.== infix(_:_:)(a1, a2, a3[2]);
}

id QuantityThresholds.unit.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = sub_191CC6778();
  v4 = [objc_opt_self() unitFromString_];

  return v4;
}

uint64_t QuantityThresholds.boundaries.getter(void *a1)
{
  v2 = *v1;
  v3 = v1[1];
  v24 = v1[2];
  v4 = a1[3];
  v13 = a1[2];
  v14 = v4;
  v5 = a1[5];
  v15 = a1[4];
  v16 = v5;
  v17 = v2;
  v18 = v3;
  v19 = v24;

  v20 = v13;
  v21 = v4;
  v22 = v15;
  v23 = v5;
  type metadata accessor for QuantityThresholds.Threshold();
  v6 = sub_191CC6978();
  v7 = sub_191CA0268();
  WitnessTable = swift_getWitnessTable();
  v10 = sub_191C69C84(sub_191CA0230, &v12, v6, v7, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v9);

  return v10;
}

void sub_191C9D574(double *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for QuantityThresholds();
  v4 = QuantityThresholds.unit.getter();
  v5 = [objc_opt_self() quantityWithUnit:v4 doubleValue:*a1];

  *a2 = v5;
}

uint64_t QuantityThresholds.buckets.getter(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  *&v31 = v2;
  *(&v31 + 1) = v3;
  *&v32 = v4;
  *(&v32 + 1) = v5;
  v6 = type metadata accessor for QuantityThresholds.Threshold();
  v7 = sub_191CC6DD8();
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8, v9);
  v11 = (&v23 - v10);
  v12 = *(v1 + 16);
  *&v31 = v12;
  sub_191CC6978();
  swift_getWitnessTable();
  sub_191CC6C28();
  v13 = *(v6 - 8);
  result = (*(v13 + 48))(v11, 1, v6);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v15 = *v11;
    (*(v13 + 8))(v11, v6);
    v30 = v15;
    *&v28 = v12;

    v16 = sub_191CC6C48();
    v23 = v31;
    v28 = v31;
    v29 = v32;
    MEMORY[0x1EEE9AC00](v16, v17);
    *(&v23 - 6) = v2;
    *(&v23 - 5) = v3;
    *(&v23 - 4) = v4;
    *(&v23 - 3) = v5;
    *(&v23 - 2) = &v30;
    v18 = sub_191CC6E28();
    v24 = v2;
    v25 = v3;
    v26 = v4;
    v27 = v5;
    v19 = type metadata accessor for QuantityThresholds.Bucket();
    WitnessTable = swift_getWitnessTable();
    v22 = sub_191C69C84(sub_191CA02B4, (&v23 - 4), v18, v19, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v21);
    swift_unknownObjectRelease();
    return v22;
  }

  return result;
}

uint64_t sub_191C9D884@<X0>(double *a1@<X0>, double *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v43 = a1;
  v45 = a2;
  v46 = a3;
  v42 = a7;
  v47 = a4;
  v48 = a5;
  v49 = a6;
  v11 = type metadata accessor for QuantityThresholds.Edge();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v11, v14);
  v17 = &v39 - v16;
  v18 = *(a3 - 8);
  v19 = *(v18 + 64);
  v21 = MEMORY[0x1EEE9AC00](v15, v20);
  v23 = &v39 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v24);
  v44 = &v39 - v25;
  v46 = a3;
  v47 = a4;
  v39 = a4;
  v40 = a5;
  v26 = v43;
  v48 = a5;
  v49 = a6;
  v41 = a6;
  v27 = type metadata accessor for QuantityThresholds.Threshold();
  (*(v12 + 16))(v17, v26 + *(v27 + 52), v11);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 1) >= 2)
  {
    if (EnumCaseMultiPayload)
    {
      goto LABEL_12;
    }

    v29 = *(v18 + 32);
    v32 = v44;
    v29(v44, v17, a3);
    v31 = *v26;
    v33 = 0.0 - *v26;
    if (v33 != INFINITY)
    {
      *&v33 += (*&v33 >> 63) | 1;
    }

    v30 = -v33;
  }

  else
  {
    v29 = *(v18 + 32);
    v29(v23, v17, a3);
    v30 = *v26;
    v31 = *v26 + 0.0;
    if (*v26 != INFINITY)
    {
      *&v31 += (*&v31 >> 63) | 1;
    }

    v32 = v44;
    v29(v44, v23, a3);
  }

  v34 = v45;
  v35 = *v45;
  if (*v45 <= v30)
  {
    v36 = v42;
    v29(v42, v32, a3);
    v46 = a3;
    v47 = v39;
    v48 = v40;
    v49 = v41;
    result = type metadata accessor for QuantityThresholds.Bucket();
    v38 = &v36[*(result + 52)];
    *v38 = v35;
    v38[1] = v30;
    *v34 = v31;
    return result;
  }

  __break(1u);
LABEL_12:
  result = sub_191CC7118();
  __break(1u);
  return result;
}

uint64_t QuantityThresholds.bucket(for:)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v49 = a3;
  v6 = a2[2];
  v7 = a2[4];
  v8 = a2[5];
  v46 = a2[3];
  v47 = v6;
  v50 = v6;
  v51 = v46;
  v44 = v8;
  v45 = v7;
  v52 = v7;
  v53 = v8;
  v9 = type metadata accessor for QuantityThresholds.Bucket();
  v10 = sub_191CC6DD8();
  v41 = *(v10 - 8);
  v42 = v10;
  v11 = *(v41 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10, v12);
  v43 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13, v15);
  v48 = &v41 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16, v18);
  v21 = &v41 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v41 - v23;
  v26 = v3[1];
  v27 = v3[2];
  v50 = *v3;
  v25 = v50;
  v51 = v26;
  v52 = v27;
  v28 = QuantityThresholds.buckets.getter(a2);
  v50 = v25;
  v51 = v26;
  v52 = v27;
  v29 = QuantityThresholds.unit.getter();
  [a1 doubleValueForUnit_];
  v31 = v30;

  v50 = v28;
  sub_191CC6978();
  swift_getWitnessTable();
  sub_191CC6C28();
  v32 = *(v9 - 8);
  v33 = *(v32 + 48);
  result = v33(v24, 1, v9);
  if (result == 1)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v35 = *&v24[*(v9 + 52)];
  v36 = (*(v32 + 8))(v24, v9);
  if (v31 < v35)
  {
    v50 = v28;
    sub_191CC6C28();
    result = v33(v21, 1, v9);
    if (result != 1)
    {

      return (*(v32 + 32))(v49, v21, v9);
    }

    goto LABEL_9;
  }

  v50 = v28;
  MEMORY[0x1EEE9AC00](v36, v37);
  v38 = v46;
  *(&v41 - 6) = v47;
  *(&v41 - 5) = v38;
  v39 = v44;
  *(&v41 - 4) = v45;
  *(&v41 - 3) = v39;
  *(&v41 - 2) = v31;
  swift_getWitnessTable();
  v40 = v48;
  sub_191CC6858();
  if (v33(v40, 1, v9) != 1 || ((*(v41 + 8))(v40, v42), v50 = v28, swift_getWitnessTable(), v40 = v43, sub_191CC66C8(), result = v33(v40, 1, v9), result != 1))
  {

    return (*(v32 + 32))(v49, v40, v9);
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t QuantityThresholds.standardRange.getter(uint64_t a1)
{
  v2 = *(a1 + 32);
  v21 = *(a1 + 16);
  v22 = v2;
  v3 = type metadata accessor for QuantityThresholds.Threshold();
  v4 = sub_191CC6DD8();
  v5 = *(*(v4 - 8) + 64);
  v7 = MEMORY[0x1EEE9AC00](v4 - 8, v6);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7, v10);
  v12 = (v20 - v11);
  v13 = *(v1 + 16);
  *&v21 = v13;
  sub_191CC6978();
  swift_getWitnessTable();
  sub_191CC6C28();
  v14 = *(v3 - 8);
  v15 = *(v14 + 48);
  result = v15(v12, 1, v3);
  if (result == 1)
  {
LABEL_5:
    __break(1u);
    goto LABEL_6;
  }

  v17 = *v12;
  v18 = *(v14 + 8);
  v18(v12, v3);
  v20[1] = v13;
  swift_getWitnessTable();
  sub_191CC66C8();
  result = v15(v9, 1, v3);
  if (result != 1)
  {
    v19 = *v9;
    result = (v18)(v9, v3);
    if (v17 <= v19)
    {
      return result;
    }

    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  __break(1u);
  return result;
}

Swift::Double __swiftcall QuantityThresholds.linearScore(for:)(HKQuantity a1)
{
  isa = a1.super.isa;
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  QuantityThresholds.standardRange.getter(a1._unit);
  v7 = v6;
  v9 = v8;
  v10 = QuantityThresholds.unit.getter();
  [(objc_class *)isa doubleValueForUnit:v10];
  v12 = v11;

  result = 0.0;
  if (v12 >= v7)
  {
    result = 1.0;
    if (v9 >= v12)
    {
      return (v12 - v7) / (v9 - v7);
    }
  }

  return result;
}

uint64_t QuantityThresholds.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  v23 = v8[1];
  v24 = *v8;
  v40 = v8[2];
  v14 = a3[3];
  v26 = a3[2];
  v27 = a4;
  v16 = a3[4];
  v15 = a3[5];
  v28 = v14;
  v29 = v16;
  v30 = v15;
  v31 = a5;
  v32 = a6;
  v33 = a7;
  v34 = a1;
  v35 = a2;

  type metadata accessor for QuantityThresholds.Threshold();
  v17 = sub_191CC6978();
  v36 = a4;
  v37 = a5;
  v38 = a6;
  v39 = a7;
  v18 = type metadata accessor for QuantityThresholds.Threshold();
  WitnessTable = swift_getWitnessTable();
  v21 = sub_191C69C84(sub_191CA0348, v25, v17, v18, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v20);

  *a8 = v24;
  a8[1] = v23;
  a8[2] = v21;
  return result;
}

uint64_t sub_191C9E3F4@<X0>(double *a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, double *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v49 = a7;
  v50 = a8;
  v47 = a3;
  v48 = a2;
  v60 = a1;
  v53 = a9;
  v46 = *(a4 - 8);
  v15 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v45 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v17;
  v57 = v18;
  v58 = v19;
  v59 = v20;
  v21 = type metadata accessor for QuantityThresholds.Edge();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  MEMORY[0x1EEE9AC00](v21, v24);
  v26 = &v43 - v25;
  v54 = a12;
  v55 = a5;
  v56 = a5;
  v57 = a10;
  v51 = a10;
  v52 = a11;
  v58 = a11;
  v59 = a12;
  v27 = type metadata accessor for QuantityThresholds.Edge();
  v28 = *(v27 - 8);
  v29 = *(v28 + 64);
  v31 = MEMORY[0x1EEE9AC00](v27, v30);
  v33 = &v43 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v31, v34);
  v36 = &v43 - v35;
  v44 = a4;
  v56 = a4;
  v57 = a6;
  v58 = v49;
  v59 = v50;
  v37 = type metadata accessor for QuantityThresholds.Threshold();
  (*(v22 + 16))(v26, v60 + *(v37 + 52), v21);
  if (swift_getEnumCaseMultiPayload() <= 2)
  {
    v39 = v45;
    v38 = v46;
    v40 = v26;
    v41 = v44;
    (*(v46 + 32))(v45, v40, v44);
    v48(v39);
    (*(v38 + 8))(v39, v41);
  }

  swift_storeEnumTagMultiPayload();
  (*(v28 + 32))(v36, v33, v27);
  return QuantityThresholds.Threshold.init(value:edge:)(v36, v53, *v60);
}

uint64_t static QuantityThresholds.== infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = sub_191CC73E8(), v6 = 0, (v5 & 1) != 0))
  {
    type metadata accessor for QuantityThresholds.Threshold();
    swift_getWitnessTable();
    v6 = sub_191CC69A8();
  }

  return v6 & 1;
}

uint64_t sub_191C9E7BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6972745374696E75 && a2 == 0xEA0000000000676ELL;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C6F687365726874 && a2 == 0xEA00000000007364)
  {

    return 1;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_191C9E894(char a1)
{
  if (a1)
  {
    return 0x6C6F687365726874;
  }

  else
  {
    return 0x6972745374696E75;
  }
}

uint64_t sub_191C9E8F0(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a1[5];
  return sub_191C1C97C(*v1);
}

uint64_t sub_191C9E934(uint64_t a1, void *a2, uint64_t a3, void (*a4)(_BYTE *, void, void, void, void, void))
{
  sub_191CC74C8();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return sub_191CC7508();
}

uint64_t sub_191C9E9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_191C9EA18@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t sub_191C9EA54(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t sub_191C9EAA8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t QuantityThresholds.encode(to:)(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[4];
  v6 = a2[5];
  v26 = a2[3];
  v27 = v4;
  v32 = v4;
  v33 = v26;
  v24 = v6;
  v25 = v5;
  v34 = v5;
  v35 = v6;
  type metadata accessor for QuantityThresholds.CodingKeys();
  swift_getWitnessTable();
  v7 = sub_191CC7378();
  v28 = *(v7 - 8);
  v8 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v22 - v10;
  v12 = *v2;
  v13 = v2[1];
  v23 = v2[2];
  v15 = a1[3];
  v14 = a1[4];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_0(v16, v15);
  sub_191CC7548();
  LOBYTE(v32) = 0;
  v19 = v29;
  sub_191CC7308();
  if (v19)
  {
    return (*(v28 + 8))(v11, v18);
  }

  v36 = v23;
  v31 = 1;
  v21 = v28;
  v32 = v27;
  v33 = v26;
  v34 = v25;
  v35 = v24;
  type metadata accessor for QuantityThresholds.Threshold();
  sub_191CC6978();
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_191CC7348();
  return (*(v21 + 8))(v11, v18);
}

uint64_t QuantityThresholds.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = v2[2];
  sub_191CC67E8();
  v8 = *(a2 + 16);
  v9 = *(a2 + 32);
  type metadata accessor for QuantityThresholds.Threshold();
  swift_getWitnessTable();
  return sub_191CC6988();
}

uint64_t QuantityThresholds.hashValue.getter(uint64_t a1)
{
  v4[9] = *v1;
  v5 = *(v1 + 8);
  sub_191CC74C8();
  QuantityThresholds.hash(into:)(v4, a1);
  return sub_191CC7508();
}

uint64_t QuantityThresholds.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v28 = a6;
  v34 = a2;
  v35 = a3;
  v30 = a4;
  v31 = a5;
  v36 = a4;
  v37 = a5;
  type metadata accessor for QuantityThresholds.CodingKeys();
  swift_getWitnessTable();
  v32 = sub_191CC72A8();
  v29 = *(v32 - 8);
  v10 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v32, v11);
  v13 = &v24 - v12;
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191CC7528();
  if (v6)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v27 = a1;
  v16 = v30;
  v15 = v31;
  v17 = v29;
  LOBYTE(v34) = 0;
  v18 = v32;
  v25 = sub_191CC7228();
  v26 = v19;
  v34 = a2;
  v35 = a3;
  v36 = v16;
  v37 = v15;
  type metadata accessor for QuantityThresholds.Threshold();
  sub_191CC6978();
  LOBYTE(v34) = 1;
  WitnessTable = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_191CC7268();
  (*(v17 + 8))(v13, v18);
  v20 = v38;
  v21 = v28;
  v22 = v26;
  *v28 = v25;
  v21[1] = v22;
  v21[2] = v20;

  __swift_destroy_boxed_opaque_existential_0(v27);
}

uint64_t sub_191C9F10C(uint64_t a1, uint64_t a2)
{
  sub_191CC74C8();
  QuantityThresholds.hash(into:)(v4, a2);
  return sub_191CC7508();
}

uint64_t sub_191C9F18C(void *a1, void *a2, void *a3)
{
  v4 = a3[2];
  v3 = a3[3];
  v5 = a3[4];
  v6 = a3[5];
  return static QuantityThresholds.== infix(_:_:)(a1, a2);
}

void QuantityThresholds.init(unit:thresholds:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  if (static QuantityThresholds.areThresholdValid(_:)(a2, a3, a4, a5, a6))
  {
    v14 = [a1 unitString];
    v15 = sub_191CC67B8();
    v26 = v16;
    v27 = v15;

    v32 = a2;
    MEMORY[0x1EEE9AC00](v17, v18);
    v25[2] = a3;
    v25[3] = a4;
    v25[4] = a5;
    v25[5] = a6;
    type metadata accessor for QuantityThresholds.Edge();
    v19 = sub_191CC7038();
    v28 = a3;
    v29 = a4;
    v30 = a5;
    v31 = a6;
    v20 = type metadata accessor for QuantityThresholds.Threshold();
    WitnessTable = swift_getWitnessTable();
    v23 = sub_191C69C84(sub_191CA03A4, v25, v19, v20, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v22);

    v24 = v26;
    *a7 = v27;
    a7[1] = v24;
    a7[2] = v23;
  }

  else
  {
    sub_191CC7118();
    __break(1u);
  }
}

uint64_t static QuantityThresholds.areThresholdValid(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v71 = a2;
  v72 = a3;
  v73 = a4;
  v74 = a5;
  v10 = type metadata accessor for QuantityThresholds.Edge();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10, v13);
  v67 = v56 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_191CC6DD8();
  v17 = *(*(v16 - 8) + 64);
  v19 = MEMORY[0x1EEE9AC00](v16 - 8, v18);
  v21 = v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19, v22);
  v69 = v56 - v23;
  v70 = v10;
  v71 = a1;
  v24 = sub_191CC7038();
  WitnessTable = swift_getWitnessTable();
  v25 = sub_191CC6C18();
  if (v25 < 2)
  {
    return 0;
  }

  v60 = v21;
  v65 = v11;
  v66 = TupleTypeMetadata2;
  v71 = a1;
  MEMORY[0x1EEE9AC00](v25, v26);
  v56[-4] = a2;
  v56[-3] = a3;
  v56[-2] = a4;
  v56[-1] = a5;
  KeyPath = swift_getKeyPath();
  v29 = MEMORY[0x1EEE9AC00](KeyPath, v28);
  v61 = a2;
  v62 = a3;
  v56[-6] = a2;
  v56[-5] = a3;
  v63 = a4;
  v64 = a5;
  v56[-4] = a4;
  v56[-3] = a5;
  v56[-2] = v29;
  v30 = swift_getWitnessTable();
  v32 = sub_191C9FAF0(sub_191CA1178, &v56[-8], v24, MEMORY[0x1E69E73E0], v30, MEMORY[0x1E69E7410], v31);

  if (v32 != 1)
  {
    return 0;
  }

  v57 = v30;
  v58 = v24;
  v59 = a1;
  v71 = a1;
  v33 = v69;
  sub_191CC6C28();
  v34 = *(v66 - 8);
  WitnessTable = *(v34 + 48);
  v56[1] = v34 + 48;
  result = WitnessTable(v33, 1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v36 = v67;
    v37 = v70;
    swift_storeEnumTagMultiPayload();
    v38 = v61;
    v39 = v62;
    v40 = v63;
    v41 = v64;
    v42 = static QuantityThresholds.Edge.== infix(_:_:)(v33, v36, v61);
    v43 = v36;
    v44 = *(v65 + 8);
    v44(v43, v37);
    v45 = (v44)(v33, v37);
    if ((v42 & 1) == 0)
    {
      return 0;
    }

    v71 = v59;
    MEMORY[0x1EEE9AC00](v45, v46);
    v56[-4] = v38;
    v56[-3] = v39;
    v56[-2] = v40;
    v56[-1] = v41;
    v47 = swift_getKeyPath();
    v49 = MEMORY[0x1EEE9AC00](v47, v48);
    v56[-6] = v50;
    v56[-5] = v39;
    v56[-4] = v40;
    v56[-3] = v41;
    v56[-2] = v49;
    v52 = sub_191C9FAF0(sub_191CA03C8, &v56[-8], v58, MEMORY[0x1E69E73E0], v57, MEMORY[0x1E69E7410], v51);

    if (v52 > 1)
    {
      return 0;
    }

    if (v52 != 1)
    {
      return 1;
    }

    v71 = v59;
    swift_getWitnessTable();
    v53 = v60;
    sub_191CC66C8();
    result = (WitnessTable)(v53, 1, v66);
    if (result != 1)
    {
      v54 = v70;
      v55 = sub_191C9FF10(v70);
      v44(v53, v54);
      return v55;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_191C9F88C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, double *a6@<X8>)
{
  v17[0] = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  type metadata accessor for QuantityThresholds.Edge();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(*(TupleTypeMetadata2 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v10);
  v13 = v17 - v12;
  v14 = *(a1 + *(v11 + 48));
  (*(v15 + 16))(v17 - v12, a1);
  return QuantityThresholds.Threshold.init(value:edge:)(v13, a6, v14);
}

uint64_t static QuantityThresholds._init(unitString:thresholds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  a4[2] = a3;
}

uint64_t sub_191C9FA14(uint64_t *a1, uint64_t a2)
{
  v4 = *(a1 - 1);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  v8 = a1[3];
  v9 = a1[4];
  v10 = a1[5];
  v11 = static QuantityThresholds.Edge.== infix(_:_:)(v2, v7, a1[2]);
  (*(v4 + 8))(v7, a1);
  return v11 & 1;
}

uint64_t sub_191C9FAF0(uint64_t (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v43 = a4;
  v44 = a7;
  v8 = v7;
  v47 = a1;
  v48 = a2;
  v42 = *(a4 - 8);
  v11 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](a1, a2);
  v49 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedConformanceWitness = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v14 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness, v15);
  v17 = &v42 - v16;
  v18 = sub_191CC6DD8();
  v19 = *(*(v18 - 8) + 64);
  v21 = MEMORY[0x1EEE9AC00](v18 - 8, v20);
  v23 = &v42 - v22;
  v24 = *(a3 - 8);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v21, v26);
  v28 = &v42 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = swift_getAssociatedTypeWitness();
  v45 = *(v29 - 8);
  v30 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v29, v31);
  v33 = &v42 - v32;
  (*(v24 + 16))(v28, v52, a3);
  v51 = v33;
  sub_191CC6838();
  v52 = v29;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = 0;
  v35 = (v46 + 48);
  v36 = (v46 + 32);
  v37 = (v46 + 8);
  while (1)
  {
    sub_191CC6DF8();
    if ((*v35)(v23, 1, AssociatedTypeWitness) == 1)
    {
      goto LABEL_7;
    }

    (*v36)(v17, v23, AssociatedTypeWitness);
    v38 = v47(v17, v49);
    if (v8)
    {
      break;
    }

    v39 = v38;
    v8 = 0;
    (*v37)(v17, AssociatedTypeWitness);
    v40 = __OFADD__(v34, v39 & 1);
    v34 += v39 & 1;
    if (v40)
    {
      __break(1u);
LABEL_7:
      (*(v45 + 8))(v51, v52);
      return v34;
    }
  }

  (*v37)(v17, AssociatedTypeWitness);
  (*(v45 + 8))(v51, v52);
  (*(v42 + 32))(v44, v49, v43);
  return v34;
}

BOOL sub_191C9FF10(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1, v1);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6);
  v7 = swift_getEnumCaseMultiPayload() == 2;
  (*(v3 + 8))(v6, a1);
  return v7;
}

uint64_t sub_191C9FFF8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t)@<X3>, _BYTE *a4@<X8>)
{
  v8 = *(a1 + a2 - 32);
  v9 = *(a1 + a2 - 16);
  v6 = type metadata accessor for QuantityThresholds.Edge();
  result = a3(v6);
  *a4 = result & 1;
  return result;
}

uint64_t sub_191CA0058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v21[0] = a3;
  v21[1] = a4;
  v21[2] = a5;
  v21[3] = a6;
  v7 = type metadata accessor for QuantityThresholds.Edge();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  v12 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2, v11);
  v14 = v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v15);
  v17 = v21 - v16;
  (*(v9 + 16))(v21 - v16, a1, TupleTypeMetadata2);
  v18 = *(TupleTypeMetadata2 + 48);
  v19 = *&v17[v18];
  (*(*(v7 - 8) + 32))(v14, v17, v7);
  *&v14[v18] = v19;
  swift_getAtKeyPath();
  (*(v9 + 8))(v14, TupleTypeMetadata2);
  return LOBYTE(v21[0]);
}

void sub_191CA0230(double *a1@<X0>, void *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  v6 = v2[5];
  v8 = v2[6];
  v7 = v2[7];
  v9 = v2[8];
  sub_191C9D574(a1, a2);
}

unint64_t sub_191CA0268()
{
  result = qword_1EADCC788;
  if (!qword_1EADCC788)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCC788);
  }

  return result;
}

BOOL sub_191CA02DC(uint64_t a1)
{
  v2 = *(v1 + 48);
  v7 = *(v1 + 16);
  v8 = *(v1 + 32);
  v3 = (a1 + *(type metadata accessor for QuantityThresholds.Bucket() + 52));
  v4 = v3[1];
  v5 = *v3 <= v2;
  return v4 >= v2 && v5;
}

uint64_t sub_191CA0480()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_191CA04D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_191CA053C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 252) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 4)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 253;
}

void sub_191CA0648(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  v6 = v5 + 1;
  if (a3 < 0xFD)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 252) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFC)
  {
    v8 = a2 - 253;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_37:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

void sub_191CA07F4(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_191CA0B04();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_191CA087C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))();
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))();
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_191CA0980(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

void sub_191CA0B04()
{
  if (!qword_1EADCD6B0[0])
  {
    v0 = sub_191CC6758();
    if (!v1)
    {
      atomic_store(v0, qword_1EADCD6B0);
    }
  }
}

uint64_t sub_191CA0B5C(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  result = type metadata accessor for QuantityThresholds.Edge();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_191CA0BE4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 64);
  if (!a2)
  {
    return 0;
  }

  v5 = *(v3 + 80);
  if (a2 < 0xFD)
  {
    goto LABEL_25;
  }

  v6 = v4 + ((v5 + 8) & ~v5) + 1;
  v7 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 252) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

    if (v10 < 2)
    {
LABEL_25:
      v14 = *(((a1 + v5 + 8) & ~v5) + v4);
      if (v14 >= 4)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_25;
  }

LABEL_12:
  v11 = (v8 - 1) << v7;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 <= 3)
    {
      v12 = v6;
    }

    else
    {
      v12 = 4;
    }

    if (v12 > 2)
    {
      if (v12 == 3)
      {
        v13 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v13 = *a1;
      }
    }

    else if (v12 == 1)
    {
      v13 = *a1;
    }

    else
    {
      v13 = *a1;
    }
  }

  else
  {
    v13 = 0;
  }

  return (v13 | v11) + 253;
}

void sub_191CA0D44(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 64);
  v7 = *(v5 + 80);
  v8 = v6 + ((v7 + 8) & ~v7) + 1;
  if (a3 < 0xFD)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 252) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
      }

      else
      {
        v9 = 0;
      }
    }
  }

  else
  {
    v9 = 1;
  }

  if (a2 > 0xFC)
  {
    v10 = a2 - 253;
    if (v8 >= 4)
    {
      bzero(a1, v6 + ((v7 + 8) & ~v7) + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v6 + ((v7 + 8) & ~v7) != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_37:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_37;
          }
        }

LABEL_34:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_23:
      *((&a1[v7 + 8] & ~v7) + v6) = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_22;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

id static HKSamplePredicate.phq9Assessment(_:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  result = [objc_allocWithZone(HKScoredAssessmentType) initWithIdentifier_];
  if (result)
  {
    *a2 = result;
    a2[1] = a1;

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id HKPHQ9Assessment.init(date:answers:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_191CC60A8();
  v7 = *(a2 + 16);
  if (v7)
  {
    v16 = MEMORY[0x1E69E7CC0];
    sub_191CC7098();
    v8 = 32;
    do
    {
      v9 = *(a2 + v8);
      sub_191CC6B98();
      sub_191CC7068();
      v10 = *(v16 + 16);
      sub_191CC70A8();
      sub_191CC70B8();
      sub_191CC7078();
      v8 += 8;
      --v7;
    }

    while (v7);
  }

  sub_191C94AC4();
  v11 = sub_191CC68D8();

  if (a3)
  {
    v12 = sub_191CC6638();
  }

  else
  {
    v12 = 0;
  }

  v13 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDate:v6 answers:v11 metadata:v12];

  v14 = sub_191CC6148();
  (*(*(v14 - 8) + 8))(a1, v14);
  return v13;
}

char *HKPHQ9Assessment.answers.getter()
{
  v1 = [v0 answers];
  sub_191C94AC4();
  v2 = sub_191CC68E8();

  if (v2 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_191CC6EE8())
  {
    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x193B02790](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v2 + 8 * v4 + 32);
      }

      v7 = v6;
      v8 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v9 = [v6 integerValue];

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_191C07DBC(0, *(v5 + 2) + 1, 1, v5);
      }

      v11 = *(v5 + 2);
      v10 = *(v5 + 3);
      if (v11 >= v10 >> 1)
      {
        v5 = sub_191C07DBC((v10 > 1), v11 + 1, 1, v5);
      }

      *(v5 + 2) = v11 + 1;
      *&v5[8 * v11 + 32] = v9;
      ++v4;
      if (v8 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_19:

  return v5;
}

uint64_t HKSleepDaySummaryQueryDescriptor.morningIndexRange.getter()
{
  result = *v0;
  v2 = v0[1];
  return result;
}

uint64_t HKSleepDaySummaryQueryDescriptor.limit.getter()
{
  result = *(v0 + 32);
  v2 = *(v0 + 40);
  return result;
}

uint64_t HKSleepDaySummaryQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 48);
  *(a1 + 8) = *(v1 + 56);
}

__n128 HKSleepDaySummaryQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v5 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = v1[3].n128_u64[1];

  result = v5;
  v1[3] = v5;
  v1[4].n128_u64[0] = v2;
  return result;
}

void *HKSleepDaySummaryQueryDescriptor.cacheSettings.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

uint64_t type metadata accessor for HKSleepDaySummaryQueryDescriptor()
{
  result = qword_1EADCDAB8;
  if (!qword_1EADCDAB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_191CA171C()
{
  if (!qword_1EADCADE0)
  {
    sub_191CC62A8();
    v0 = sub_191CC6DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCADE0);
    }
  }
}

uint64_t HKSleepDaySummaryQueryDescriptor.calendarOverrides.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HKSleepDaySummaryQueryDescriptor() + 40);

  return sub_191CA17B8(a1, v3);
}

uint64_t sub_191CA17B8(uint64_t a1, uint64_t a2)
{
  sub_191CA171C();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t HKSleepDaySummaryQueryDescriptor.init(morningIndexRange:options:ascending:limit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X8>)
{
  *(a7 + 48) = 0;
  *(a7 + 56) = 0;
  *(a7 + 64) = xmmword_191DDB910;
  v14 = *(type metadata accessor for HKSleepDaySummaryQueryDescriptor() + 40);
  v15 = sub_191CC62A8();
  result = (*(*(v15 - 8) + 56))(a7 + v14, 1, 1, v15);
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  *(a7 + 40) = a6 & 1;
  *(a7 + 16) = a3;
  return result;
}

uint64_t HKSleepDaySummaryQueryDescriptor.result(for:)(uint64_t a1)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = v1;
  return MEMORY[0x1EEE6DFA0](sub_191CA1948, 0, 0);
}

uint64_t sub_191CA1948()
{
  v2 = v0[11];
  v1 = v0[12];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_191BFD16C;
  v3 = swift_continuation_init();
  sub_191CA19F4(v3, v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

void sub_191CA19F4(uint64_t a1, uint64_t *a2, void *a3)
{
  sub_191CA171C();
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8, v8);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = a2[1];
  v13 = *(a2 + 24);
  v14 = a2[4];
  if (*(a2 + 40))
  {
    v15 = 0;
  }

  else
  {
    v15 = a2[4];
  }

  v16 = a2[2];
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  v18 = objc_allocWithZone(HKSleepDaySummaryQuery);
  aBlock[4] = sub_191CA2054;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191CA205C;
  aBlock[3] = &block_descriptor_27;
  v19 = _Block_copy(aBlock);
  v20 = [v18 initWithMorningIndexRange:v11 ascending:v12 limit:v13 options:v15 resultsHandler:{v16, v19}];
  _Block_release(v19);

  v21 = a2[8];
  if (a2[7])
  {
    v22 = a2[6];
    v23 = a2[7];

    v24 = sub_191CC6778();
  }

  else
  {
    v24 = 0;
  }

  [v20 setDebugIdentifier_];

  [v20 setQualityOfService_];

  [v20 setCacheSettings_];
  Descriptor = type metadata accessor for HKSleepDaySummaryQueryDescriptor();
  sub_191CA2244(a2 + *(Descriptor + 40), v10, sub_191CA171C);
  v26 = sub_191CC62A8();
  v27 = *(v26 - 8);
  v28 = 0;
  if ((*(v27 + 48))(v10, 1, v26) != 1)
  {
    v28 = sub_191CC6228();
    (*(v27 + 8))(v10, v26);
  }

  [v20 setCalendarOverrides_];

  [a3 executeQuery_];
}

uint64_t sub_191CA1CC0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    **(*(a4 + 64) + 40) = a2;

    return swift_continuation_throwingResume();
  }

  else
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
      v6 = v9;
    }

    sub_191BF92E0();
    swift_allocError();
    *v7 = v6;
    v8 = a3;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_191CA1DC8(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_191CA1DEC, 0, 0);
}

uint64_t sub_191CA1DEC()
{
  v2 = v0[12];
  v1 = v0[13];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_191BFD72C;
  v3 = swift_continuation_init();
  sub_191CA19F4(v3, v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

void sub_191CA1EC0()
{
  type metadata accessor for HKDayIndexRange(319);
  if (v0 <= 0x3F)
  {
    type metadata accessor for HKSleepDaySummaryQueryOptions(319);
    if (v1 <= 0x3F)
    {
      sub_191CA1F9C();
      if (v2 <= 0x3F)
      {
        sub_191CA1FEC();
        if (v3 <= 0x3F)
        {
          sub_191CA171C();
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_191CA1F9C()
{
  if (!qword_1EADCB5C0)
  {
    v0 = sub_191CC6DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCB5C0);
    }
  }
}

void sub_191CA1FEC()
{
  if (!qword_1EADCDAC8)
  {
    sub_191BFAE6C(255, &unk_1EADCDAD0, off_1E7375510);
    v0 = sub_191CC6DD8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCDAC8);
    }
  }
}

uint64_t sub_191CA205C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  if (a3)
  {
    sub_191BFAE6C(0, &qword_1EADCC4C0, off_1E7375508);
    v5 = sub_191CC68E8();
  }

  v9 = a2;
  v10 = a4;
  v8(v9, v5, a4);
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_191CA212C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_191C90B48();
    v3 = sub_191CC7188();
    v4 = a1 + 32;

    while (1)
    {
      sub_191CA2244(v4, &v13, sub_191C3D154);
      v5 = v13;
      v6 = v14;
      result = sub_191C40248(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_191C0B190(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_191CA2244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void _HKLogDroppedError_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Dropping error because caller did not provide an errorOut pointer: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void _HKLogDroppedErrorWithReason_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "%{public}@: %{public}@ (Dropping error because caller did not provide an errorOut pointer)", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void HKDescriptionForAnalyticsFileWithName_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = *(*a1 + 40);
  *&v4[12] = 2114;
  *&v4[14] = *(*a2 + 40);
  OUTLINED_FUNCTION_1(&dword_19197B000, a2, a3, "Error reading analytics file at '%{public}@': %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void HKDescriptionForAnalyticsFileWithName_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v4 = 138543618;
  *&v4[4] = a1;
  *&v4[12] = 2114;
  *&v4[14] = *(*a2 + 40);
  OUTLINED_FUNCTION_1(&dword_19197B000, a2, a3, "Error fetching URL for analytics file with name '%{public}@': %{public}@", *v4, *&v4[8], *&v4[16], *MEMORY[0x1E69E9840]);
  v3 = *MEMORY[0x1E69E9840];
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKWatchAppInstallationManager.m" lineNumber:25 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKWatchAppInstallationManager.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

void __getgetSleepFeatureAvailabilityProvidingSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SleepLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKFeatureAvailabilityHealthDataSource.m" lineNumber:25 description:{@"%s", *a1}];

  __break(1u);
}

void HKWithUnfairLock_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void HKWithUnfairLock(os_unfair_lock_t _Nonnull, void (^ _Nonnull __strong)(void))"}];
  [OUTLINED_FUNCTION_0_7(v0 v1];
}

void HKWithUnfairLock_cold_2()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void HKWithUnfairLock(os_unfair_lock_t _Nonnull, void (^ _Nonnull __strong)(void))"}];
  [OUTLINED_FUNCTION_0_7(v0 v1];
}

void HKCompareDoublesWithAccuracy_cold_1()
{
  v7 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSComparisonResult HKCompareDoublesWithAccuracy(double, double, double)"}];
  [OUTLINED_FUNCTION_0_7(v0 v1];
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKNanoRegistryPairingAndSwitchingNotificationDataSource.m" lineNumber:21 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1_0(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKNanoRegistryPairingAndSwitchingNotificationDataSource.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void HKAppleWalkingSteadinessClassificationForQuantity_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL HKAppleWalkingSteadinessClassificationForQuantity(HKQuantity *__strong _Nonnull, HKAppleWalkingSteadinessClassification * _Nonnull, NSError *__autoreleasing * _Nullable)"}];
  [v1 handleFailureInFunction:v0 file:@"HKAppleWalkingSteadinessClassification.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"classificationOut != NULL"}];
}

void getNRDevicePropertyProductType_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyProductType(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKNanoRegistryDeviceUtility.m" lineNumber:28 description:{@"%s", dlerror()}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKNanoRegistryDeviceUtility.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKNanoRegistryDeviceUtility.m" lineNumber:22 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void getNRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotification(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKFeatureAvailabilityRequirementEvaluationDataSource+NanoRegistry.m" lineNumber:23 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getNRPairedDeviceRegistryPairedDeviceDidChangeCapabilitiesDarwinNotificationSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKFeatureAvailabilityRequirementEvaluationDataSource+NanoRegistry.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void HKIsFitnessTrackingEnabledWithUserDefaults_cold_1(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "HKIsFitnessTrackingEnabledWithUserDefaults";
  _os_log_debug_impl(&dword_19197B000, log, OS_LOG_TYPE_DEBUG, "[%s]: Checking TCC authorization for bundle", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void HKIsFitnessTrackingEnabledWithUserDefaults_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 136315138;
  v3 = "HKIsFitnessTrackingEnabledWithUserDefaults";
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "[%s]: TCCAccessGetOverride for motion failed", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void HKIsFitnessTrackingEnabledWithUserDefaults_cold_3(void *a1, NSObject *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = [a1 BOOLValue];
  v4 = @" NOT";
  if (v3)
  {
    v4 = &stru_1F05FF230;
  }

  v6 = 136315394;
  v7 = "HKIsFitnessTrackingEnabledWithUserDefaults";
  v8 = 2112;
  v9 = v4;
  _os_log_debug_impl(&dword_19197B000, a2, OS_LOG_TYPE_DEBUG, "[%s]: is%@ granted permission by TCC", &v6, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void _HKCreateRecalibrateEstimatesPresentationController_cold_1(uint64_t a1, Protocol *proto, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = NSStringFromProtocol(proto);
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_error_impl(&dword_19197B000, a3, OS_LOG_TYPE_ERROR, "Error: %{public}@ does not conform to %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void _HKCreateRecalibrateEstimatesPresentationController_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = @"HKRecalibrateEstimatesPresentationController";
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "Error: Failed to find class %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void _HKCreateRecalibrateEstimatesPresentationController_cold_3(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *HealthUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_HKRecalibrateEstimatesPresentationController.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void _HKCreateAuthorizationPresentationController_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = @"HKAuthorizationPresentationController";
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "Error: Failed to find class %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void _HKCreateAuthorizationPresentationController_cold_3(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *HealthUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_HKAuthorizationPresentationController.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void HKOntologyShardSchemaTypeForShardIdentifier_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Error: cannot determine schema for unknown shard identifier: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void HKCurrentSchemaVersionForShardIdentifier_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Error: cannot determine current schema version for unknown shard identifier: %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void getNRDevicePropertySystemBuildVersion_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertySystemBuildVersion(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKActiveWatchRemoteFeatureAvailabilityDataSource.m" lineNumber:34 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1_2()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKActiveWatchRemoteFeatureAvailabilityDataSource.m" lineNumber:27 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKActiveWatchRemoteFeatureAvailabilityDataSource.m" lineNumber:26 description:{@"%s", *a1}];

  __break(1u);
}

void HKCurrentOptInVersionOnDiskForOnBoardingBundle_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger HKCurrentOptInVersionOnDiskForOnBoardingBundle(NSString * _Nonnull __strong, NSString * _Nonnull __strong)"}];
  [v1 handleFailureInFunction:v0 file:@"HKAnalytics.m" lineNumber:34 description:@"bundleName cannot be empty"];
}

void HKCurrentOptInVersionOnDiskForOnBoardingBundle_cold_2()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSInteger HKCurrentOptInVersionOnDiskForOnBoardingBundle(NSString * _Nonnull __strong, NSString * _Nonnull __strong)"}];
  [v1 handleFailureInFunction:v0 file:@"HKAnalytics.m" lineNumber:35 description:@"plistName cannot be empty"];
}

void HKCurrentOptInVersionOnDiskForOnBoardingBundle_cold_3(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 138543618;
  v5 = a1;
  v6 = 2114;
  v7 = a2;
  _os_log_fault_impl(&dword_19197B000, log, OS_LOG_TYPE_FAULT, "Failed to read %{public}@ OnBoardingBundle: %{public}@", &v4, 0x16u);
  v3 = *MEMORY[0x1E69E9840];
}

void _HKCreateObjectPickerPresentationController_cold_2(os_log_t log)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138543362;
  v3 = @"HKObjectPickerPresentationController";
  _os_log_error_impl(&dword_19197B000, log, OS_LOG_TYPE_ERROR, "Error: Failed to find class %{public}@", &v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void _HKCreateObjectPickerPresentationController_cold_3(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *HealthUILibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_HKObjectPickerPresentationController.m" lineNumber:15 description:{@"%s", *a1}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1_3(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKImportExclusionDeviceDataSource.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1_3()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKImportExclusionDeviceDataSource.m" lineNumber:22 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void _HKDerivedCacheIndexAndDateComponents_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int64_t _HKDerivedCacheIndexAndDateComponents(const NSCalendar *const __strong, NSDateComponents *const __strong, NSDateComponents * _Nullable __autoreleasing * _Nullable)"}];
  [v1 handleFailureInFunction:v0 file:@"HKActivityCache.m" lineNumber:1782 description:{@"Invalid parameter not satisfying: %@", @"[gregorianCalendar.calendarIdentifier isEqualToString:NSCalendarIdentifierGregorian]"}];
}

void _HKDerivedCacheIndexAndDateComponents_cold_2(void *a1)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"int64_t _HKDerivedCacheIndexAndDateComponents(const NSCalendar *const __strong, NSDateComponents *const __strong, NSDateComponents * _Nullable __autoreleasing * _Nullable)"}];
  v3 = [a1 timeZone];
  [v4 handleFailureInFunction:v2 file:@"HKActivityCache.m" lineNumber:1783 description:{@"%@ is not a UTC time zone", v3}];
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1_4()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKWristDetectionSettingManager.m" lineNumber:25 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1_4(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKWristDetectionSettingManager.m" lineNumber:24 description:{@"%s", *a1}];

  __break(1u);
}

void __getASDAppQueryClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getASDAppQueryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKWatchAppAvailability.m" lineNumber:22 description:{@"Unable to find class %s", "ASDAppQuery"}];

  __break(1u);
}

void __getASDAppQueryClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppStoreDaemonLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKWatchAppAvailability.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void getNRRawVersionFromString_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"uint32_t getNRRawVersionFromString(NSString *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"HKHeartRhythmAvailability.m" lineNumber:77 description:{@"%s", dlerror()}];

  __break(1u);
}

void getNRDevicePropertyName_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyName(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKHeartRhythmAvailability.m" lineNumber:67 description:{@"%s", dlerror()}];

  __break(1u);
}

void getNRDevicePropertyIsAltAccount_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertyIsAltAccount(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKHeartRhythmAvailability.m" lineNumber:82 description:{@"%s", dlerror()}];

  __break(1u);
}

void getNRDevicePropertySystemVersion_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *getNRDevicePropertySystemVersion(void)"];
  [v0 handleFailureInFunction:v1 file:@"HKHeartRhythmAvailability.m" lineNumber:73 description:{@"%s", dlerror()}];

  __break(1u);
}

void getNRVersionIsGreaterThanOrEqual_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL getNRVersionIsGreaterThanOrEqual(uint32_t, uint32_t)"}];
  [v0 handleFailureInFunction:v1 file:@"HKHeartRhythmAvailability.m" lineNumber:78 description:{@"%s", dlerror()}];

  __break(1u);
}

void NanoRegistryLibrary_cold_1_5(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKHeartRhythmAvailability.m" lineNumber:63 description:{@"%s", *a1}];

  __break(1u);
}

void __getNRPairedDeviceRegistryClass_block_invoke_cold_1_5()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getNRPairedDeviceRegistryClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKHeartRhythmAvailability.m" lineNumber:75 description:{@"Unable to find class %s", "NRPairedDeviceRegistry"}];

  __break(1u);
}

void __getASDSystemAppMetadataClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getASDSystemAppMetadataClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKHeartRhythmAvailability.m" lineNumber:94 description:{@"Unable to find class %s", "ASDSystemAppMetadata"}];

  __break(1u);
}

void AppStoreDaemonLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AppStoreDaemonLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKHeartRhythmAvailability.m" lineNumber:92 description:{@"%s", *a1}];

  __break(1u);
}

void __getASDInstallAppsClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getASDInstallAppsClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKHeartRhythmAvailability.m" lineNumber:93 description:{@"Unable to find class %s", "ASDInstallApps"}];

  __break(1u);
}

void _HKMedicalIDSimNumberForContact_cold_2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138543362;
  v4 = a1;
  _os_log_error_impl(&dword_19197B000, a2, OS_LOG_TYPE_ERROR, "Failed to get sim Phone Number with error, %{public}@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void __getGEOLocationShifterClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class  _Nonnull getGEOLocationShifterClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"_HKLocationShifter.m" lineNumber:21 description:{@"Unable to find class %s", "GEOLocationShifter"}];

  __break(1u);
}

void __getGEOLocationShifterClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void * _Nonnull GeoServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"_HKLocationShifter.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getSOSManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getSOSManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKHealthChecklistUtilities.m" lineNumber:22 description:{@"Unable to find class %s", "SOSManager"}];

  __break(1u);
}

void __getSOSManagerClass_block_invoke_cold_2(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *SOSLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKHealthChecklistUtilities.m" lineNumber:21 description:{@"%s", *a1}];

  __break(1u);
}

void _HKEnumerateActiveWorkoutIntervalsStartingPaused_cold_1()
{
  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v0 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _HKEnumerateActiveWorkoutIntervalsStartingPaused(NSDate *__strong, NSDate *__strong, NSArray<HKWorkoutEvent *> *__strong, BOOL, void (^__strong)(NSDate *__strong, NSDate *__strong))"}];
  [v1 handleFailureInFunction:v0 file:@"HKWorkout.m" lineNumber:1946 description:@"enumeration block must not be nil"];
}

void getNRVersionIsGreaterThanOrEqual_cold_1_0()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL getNRVersionIsGreaterThanOrEqual(uint32_t, uint32_t)"}];
  [v0 handleFailureInFunction:v1 file:@"HKRegulatoryRegions.m" lineNumber:21 description:{@"%s", dlerror()}];

  __break(1u);
}

void __getNRVersionIsGreaterThanOrEqualSymbolLoc_block_invoke_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *NanoRegistryLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKRegulatoryRegions.m" lineNumber:20 description:{@"%s", *a1}];

  __break(1u);
}

void __getAADeviceManagerClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAADeviceManagerClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKHealthServicesManager.m" lineNumber:34 description:{@"Unable to find class %s", "AADeviceManager"}];

  __break(1u);
}

void AudioAccessoryServicesLibrary_cold_1(void *a1)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *AudioAccessoryServicesLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"HKHealthServicesManager.m" lineNumber:33 description:{@"%s", *a1}];

  __break(1u);
}

void __getAASystemStateMonitorClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAASystemStateMonitorClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKHealthServicesManager.m" lineNumber:35 description:{@"Unable to find class %s", "AASystemStateMonitor"}];

  __break(1u);
}

void __getAADeviceConfigClass_block_invoke_cold_1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getAADeviceConfigClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"HKHealthServicesManager.m" lineNumber:36 description:{@"Unable to find class %s", "AADeviceConfig"}];

  __break(1u);
}

CLLocationCoordinate2D CLLocationCoordinate2DMake(CLLocationDegrees latitude, CLLocationDegrees longitude)
{
  MEMORY[0x1EEDE89C8](latitude, longitude);
  result.longitude = v3;
  result.latitude = v2;
  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = MEMORY[0x1EEDC7160](range1.location, range1.length, range2.location, range2.length);
  result.length = v3;
  result.location = v2;
  return result;
}

uint64_t PB::TextFormatter::format(PB::TextFormatter *this, const char *a2)
{
  return MEMORY[0x1EEE30A70](this, a2);
}

{
  return MEMORY[0x1EEE30A78](this, a2);
}

uint64_t PB::Writer::writeVarInt(PB::Writer *this)
{
  return MEMORY[0x1EEE30B08](this);
}

{
  return MEMORY[0x1EEE30B10](this);
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void operator new()
{
    ;
  }
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}