uint64_t sub_1B7453BEC(uint64_t a1)
{
  v37 = sub_1B72020F4(MEMORY[0x1E69E7CC0]);
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (!v4)
    {
      break;
    }

    v8 = v6;
LABEL_13:
    v10 = __clz(__rbit64(v4));
    v4 &= v4 - 1;
    v11 = v10 | (v8 << 6);
    v12 = (*(a1 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    sub_1B719BDE4(*(a1 + 56) + 32 * v11, v39);
    *&v43 = v14;
    *(&v43 + 1) = v13;
    sub_1B72051F0(v39, &v44);

    v6 = v8;
LABEL_14:
    v46 = v43;
    v47[0] = v44;
    v47[1] = v45;
    v15 = *(&v43 + 1);
    if (!*(&v43 + 1))
    {

      return v37;
    }

    v16 = v46;
    sub_1B72051F0(v47, v42);
    sub_1B719BDE4(v42, v41);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994F08);
    if (swift_dynamicCast())
    {
      sub_1B71E4C44(v39, &v43);
      __swift_project_boxed_opaque_existential_1(&v43, *(&v44 + 1));
      v36 = sub_1B7802068();
      v18 = v17;

      __swift_destroy_boxed_opaque_existential_1(&v43);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v43 = v37;
      v21 = sub_1B724548C(v16, v15);
      v22 = v37[2];
      v23 = (v20 & 1) == 0;
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_30;
      }

      if (v37[3] >= v24)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v34 = v20;
          sub_1B725CA84();
          v20 = v34;
        }
      }

      else
      {
        v38 = v20;
        sub_1B7249794(v24, isUniquelyReferenced_nonNull_native);
        v25 = sub_1B724548C(v16, v15);
        v27 = v26 & 1;
        v20 = v38;
        if ((v38 & 1) != v27)
        {
          goto LABEL_32;
        }

        v21 = v25;
      }

      v37 = v43;
      if (v20)
      {
        v28 = (*(v43 + 56) + 16 * v21);
        *v28 = v36;
        v28[1] = v18;

        __swift_destroy_boxed_opaque_existential_1(v42);
      }

      else
      {
        *(v43 + 8 * (v21 >> 6) + 64) |= 1 << v21;
        v29 = (v37[6] + 16 * v21);
        *v29 = v16;
        v29[1] = v15;
        v30 = (v37[7] + 16 * v21);
        *v30 = v36;
        v30[1] = v18;

        __swift_destroy_boxed_opaque_existential_1(v42);

        v31 = v37[2];
        v32 = __OFADD__(v31, 1);
        v33 = v31 + 1;
        if (v32)
        {
          goto LABEL_31;
        }

        v37[2] = v33;
      }
    }

    else
    {
      v40 = 0;
      memset(v39, 0, sizeof(v39));
      sub_1B7205418(v39, &qword_1EB994F10);
      __swift_destroy_boxed_opaque_existential_1(v42);
    }
  }

  if (v5 <= v6 + 1)
  {
    v9 = v6 + 1;
  }

  else
  {
    v9 = v5;
  }

  v6 = v9 - 1;
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {
      v4 = 0;
      v44 = 0u;
      v45 = 0u;
      v43 = 0u;
      goto LABEL_14;
    }

    v4 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  result = sub_1B78021C8();
  __break(1u);
  return result;
}

uint64_t sub_1B7453F94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7453FFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B7454064(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B74540C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MapsTransactionInsightResult(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id ManagedOrderApplePayTransactionIdentifier.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderApplePayTransactionIdentifier.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderApplePayTransactionIdentifier.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedOrderApplePayTransactionIdentifier.__allocating_init(_:context:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [objc_allocWithZone(v3) initWithContext_];
  v6 = sub_1B7800838();

  [v5 setValue_];

  return v5;
}

FinanceKit::RawOrderReturnStatus_optional __swiftcall RawOrderReturnStatus.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B7801D18();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t RawOrderReturnStatus.rawValue.getter()
{
  v1 = *v0;
  v2 = 1852141679;
  v3 = 0x6575737369;
  v4 = 0x6574656C706D6F63;
  if (v1 != 4)
  {
    v4 = 0x656C6C65636E6163;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7961576568546E6FLL;
  if (v1 != 1)
  {
    v5 = 0x69737365636F7270;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B7454470()
{
  sub_1B7800798();
}

void sub_1B7454574(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1852141679;
  v5 = 0xE500000000000000;
  v6 = 0x6575737369;
  v7 = 0x6574656C706D6F63;
  if (v2 != 4)
  {
    v7 = 0x656C6C65636E6163;
  }

  if (v2 != 3)
  {
    v6 = v7;
    v5 = 0xE900000000000064;
  }

  v8 = 0xE800000000000000;
  v9 = 0x7961576568546E6FLL;
  if (v2 != 1)
  {
    v9 = 0x69737365636F7270;
    v8 = 0xEA0000000000676ELL;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t RawOrderReturn.lineItems.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t RawOrderReturn.statusDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RawOrderReturn.statusDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RawOrderReturn.notes.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RawOrderReturn.notes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t type metadata accessor for RawOrderReturn()
{
  result = qword_1EDAF8B00;
  if (!qword_1EDAF8B00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t RawOrderReturn.returnNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawOrderReturn() + 44));

  return v1;
}

uint64_t RawOrderReturn.returnNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawOrderReturn() + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawOrderReturn.carrier.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawOrderReturn() + 48));

  return v1;
}

uint64_t RawOrderReturn.carrier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawOrderReturn() + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawOrderReturn.trackingNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawOrderReturn() + 52));

  return v1;
}

uint64_t RawOrderReturn.trackingNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawOrderReturn() + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawOrderReturn.returnLabel.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawOrderReturn() + 56));

  return v1;
}

uint64_t RawOrderReturn.returnLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawOrderReturn() + 56));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawOrderReturn.returnIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for RawOrderReturn() + 64));

  return v1;
}

uint64_t RawOrderReturn.returnIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for RawOrderReturn() + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t RawOrderReturn.init(status:returnIdentifier:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for RawOrderReturn();
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  v9 = v8[8];
  v10 = sub_1B77FF988();
  v11 = *(*(v10 - 8) + 56);
  v11(a4 + v9, 1, 1, v10);
  v11(a4 + v8[9], 1, 1, v10);
  v11(a4 + v8[10], 1, 1, v10);
  v12 = (a4 + v8[11]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a4 + v8[12]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a4 + v8[13]);
  *v14 = 0;
  v14[1] = 0;
  v15 = (a4 + v8[14]);
  *v15 = 0;
  v15[1] = 0;
  v16 = v8[15];
  v17 = sub_1B77FF4F8();
  result = (*(*(v17 - 8) + 56))(a4 + v16, 1, 1, v17);
  *a4 = MEMORY[0x1E69E7CC0];
  *(a4 + 8) = v7;
  v19 = (a4 + v8[16]);
  *v19 = a2;
  v19[1] = a3;
  return result;
}

unint64_t sub_1B74551C8(char a1)
{
  result = 0x6D657449656E696CLL;
  switch(a1)
  {
    case 1:
      result = 0x737574617473;
      break;
    case 2:
      result = 0xD000000000000011;
      break;
    case 3:
      result = 0x7365746F6ELL;
      break;
    case 4:
      result = 0x6574616974696E69;
      break;
    case 5:
      result = 0x4266664F706F7264;
      break;
    case 6:
      result = 0x64656E7275746572;
      break;
    case 7:
      result = 0x754E6E7275746572;
      break;
    case 8:
      result = 0x72656972726163;
      break;
    case 9:
      result = 0x676E696B63617274;
      break;
    case 10:
      result = 0x614C6E7275746572;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B7455364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B7457898(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B745538C(uint64_t a1)
{
  v2 = sub_1B74571B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B74553C8(uint64_t a1)
{
  v2 = sub_1B74571B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RawOrderReturn.DecodingConfiguration.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t RawOrderReturn.DecodingConfiguration.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x1E69E7CD0];
  return result;
}

uint64_t RawOrderReturn.DecodingConfiguration.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t RawOrderReturn.init(from:configuration:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v77[4] = a2;
  v62 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v63 = v59 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v64 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v65 = v59 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v66 = v59 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994F18);
  v67 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v59 - v13;
  v15 = type metadata accessor for RawOrderReturn();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v16 + 32);
  v20 = sub_1B77FF988();
  v21 = *(*(v20 - 8) + 56);
  v75 = v19;
  v21(&v18[v19], 1, 1, v20);
  v74 = v15[9];
  v21(&v18[v74], 1, 1, v20);
  v72 = v15[10];
  v21(&v18[v72], 1, 1, v20);
  v22 = &v18[v15[13]];
  *v22 = 0;
  *(v22 + 1) = 0;
  v68 = v15;
  v23 = v15[15];
  v24 = v14;
  v25 = sub_1B77FF4F8();
  v26 = *(*(v25 - 8) + 56);
  v70 = v23;
  v71 = v18;
  v26(&v18[v23], 1, 1, v25);
  v27 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v27);
  sub_1B74571B4();
  v28 = v73;
  sub_1B78023C8();
  if (v28)
  {
    v73 = v28;

    v29 = 0;
    v30 = v71;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v69);
    swift_bridgeObjectRelease_n();
    goto LABEL_5;
  }

  v61 = v25;
  LOBYTE(v76) = 12;
  v32 = sub_1B7801DF8();
  v34 = v33;
  v60 = v24;
  swift_beginAccess();

  v35 = sub_1B724E408(v77, v32, v34);
  swift_endAccess();

  v30 = v71;
  if ((v35 & 1) == 0)
  {

    LOBYTE(v76) = 12;
    sub_1B7801B18();
    v37 = swift_allocError();
    sub_1B728216C(&qword_1EB994F28, &qword_1EB994F18);
    v38 = v60;
    sub_1B7801AD8();
    v73 = v37;
    swift_willThrow();

    (*(v67 + 8))(v38, v12);
    v29 = 0;
    goto LABEL_4;
  }

  v36 = &v71[v68[16]];
  *v36 = v32;
  v36[1] = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994F30);
  LOBYTE(v77[0]) = 0;
  sub_1B7457370(&qword_1EB994F38, sub_1B7457208);
  sub_1B7801DB8();
  v39 = MEMORY[0x1E69E7CC0];
  if (v76)
  {
    v39 = v76;
  }

  *v30 = v39;
  LOBYTE(v77[0]) = 1;
  sub_1B745725C();
  sub_1B7801E48();
  v30[8] = v76;
  LOBYTE(v76) = 2;
  *(v30 + 2) = sub_1B7801D78();
  *(v30 + 3) = v40;
  LOBYTE(v76) = 3;
  *(v30 + 4) = sub_1B7801D78();
  *(v30 + 5) = v41;
  v59[1] = v41;
  LOBYTE(v76) = 4;
  v42 = sub_1B71A70B8(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  v43 = v66;
  v73 = v42;
  sub_1B7801DB8();
  sub_1B7213740(v43, &v30[v75], &qword_1EB98EBD0);
  LOBYTE(v76) = 5;
  v44 = v65;
  sub_1B7801DB8();
  sub_1B7213740(v44, &v30[v74], &qword_1EB98EBD0);
  LOBYTE(v76) = 6;
  v45 = v64;
  sub_1B7801DB8();
  sub_1B7213740(v45, &v30[v72], &qword_1EB98EBD0);
  LOBYTE(v76) = 7;
  v46 = sub_1B7801D78();
  v73 = 0;
  v47 = &v30[v68[11]];
  *v47 = v46;
  v47[1] = v48;
  LOBYTE(v76) = 8;
  v49 = v73;
  v50 = sub_1B7801D78();
  v73 = v49;
  if (!v49)
  {
    v52 = &v71[v68[12]];
    *v52 = v50;
    v52[1] = v51;
    LOBYTE(v76) = 10;
    v53 = v73;
    v54 = sub_1B7801D78();
    v73 = v53;
    if (!v53)
    {
      v56 = &v71[v68[14]];
      *v56 = v54;
      v56[1] = v55;
      LOBYTE(v76) = 11;
      sub_1B71A70B8(&qword_1EB98F730, MEMORY[0x1E6968FB0]);
      v57 = v73;
      sub_1B7801DB8();
      v73 = v57;
      if (!v57)
      {
        (*(v67 + 8))(v60, v12);

        v58 = v71;
        sub_1B7213740(v63, &v71[v70], &unk_1EB994C70);
        sub_1B74572B0(v58, v62);
        __swift_destroy_boxed_opaque_existential_1(v69);
        return sub_1B7457314(v58);
      }
    }
  }

  (*(v67 + 8))(v60, v12);

  __swift_destroy_boxed_opaque_existential_1(v69);
  v30 = v71;

  v29 = 1;
LABEL_5:
  sub_1B7205418(&v30[v75], &qword_1EB98EBD0);
  sub_1B7205418(&v30[v74], &qword_1EB98EBD0);
  sub_1B7205418(&v30[v72], &qword_1EB98EBD0);

  result = sub_1B7205418(&v30[v70], &unk_1EB994C70);
  if (v29)
  {
  }

  return result;
}

uint64_t RawOrderReturn.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994F50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74571B4();
  sub_1B78023F8();
  v12 = *v3;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994F30);
  sub_1B7457370(&qword_1EB994F58, sub_1B74573E8);
  sub_1B7801FC8();
  if (!v2)
  {
    LOBYTE(v12) = *(v3 + 8);
    v11 = 1;
    sub_1B745743C();
    sub_1B7801FC8();
    LOBYTE(v12) = 2;
    sub_1B7801EF8();
    LOBYTE(v12) = 3;
    sub_1B7801EF8();
    type metadata accessor for RawOrderReturn();
    LOBYTE(v12) = 4;
    sub_1B77FF988();
    sub_1B71A70B8(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
    LOBYTE(v12) = 5;
    sub_1B7801F38();
    LOBYTE(v12) = 6;
    sub_1B7801F38();
    LOBYTE(v12) = 7;
    sub_1B7801EF8();
    LOBYTE(v12) = 8;
    sub_1B7801EF8();
    LOBYTE(v12) = 9;
    sub_1B7801EF8();
    LOBYTE(v12) = 10;
    sub_1B7801EF8();
    LOBYTE(v12) = 11;
    sub_1B77FF4F8();
    sub_1B71A70B8(&qword_1EB98F700, MEMORY[0x1E6968FB0]);
    sub_1B7801F38();
    LOBYTE(v12) = 12;
    sub_1B7801F78();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t _s10FinanceKit14RawOrderReturnV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B77FF4F8();
  v108 = *(v4 - 8);
  v109 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v105 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v107 = &v99 - v7;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991C30);
  MEMORY[0x1EEE9AC00](v106);
  v110 = &v99 - v8;
  v9 = sub_1B77FF988();
  v112 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v111 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v99 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v99 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98FCE0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v99 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v99 - v27;
  if ((sub_1B731D48C(*a1, *a2) & 1) == 0 || (sub_1B72C1410(*(a1 + 8), *(a2 + 8)) & 1) == 0)
  {
    goto LABEL_38;
  }

  v29 = *(a1 + 24);
  v30 = *(a2 + 24);
  if (v29)
  {
    if (!v30 || (*(a1 + 16) != *(a2 + 16) || v29 != v30) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v30)
  {
    goto LABEL_38;
  }

  v31 = *(a1 + 40);
  v32 = *(a2 + 40);
  if (v31)
  {
    if (!v32)
    {
      goto LABEL_38;
    }

    v104 = a1;
    if ((*(a1 + 32) != *(a2 + 32) || v31 != v32) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else
  {
    v104 = a1;
    if (v32)
    {
      goto LABEL_38;
    }
  }

  v33 = type metadata accessor for RawOrderReturn();
  v102 = a2;
  v100 = v33;
  v34 = *(v33 + 32);
  v35 = *(v20 + 48);
  sub_1B7205588(v104 + v34, v28, &qword_1EB98EBD0);
  v101 = v35;
  sub_1B7205588(v102 + v34, &v28[v35], &qword_1EB98EBD0);
  v36 = *(v112 + 48);
  v103 = v112 + 48;
  if (v36(v28, 1, v9) == 1)
  {
    if (v36(&v28[v101], 1, v9) == 1)
    {
      v99 = v36;
      sub_1B7205418(v28, &qword_1EB98EBD0);
      goto LABEL_24;
    }

LABEL_22:
    v37 = &qword_1EB98FCE0;
    v38 = v28;
LABEL_37:
    sub_1B7205418(v38, v37);
    goto LABEL_38;
  }

  sub_1B7205588(v28, v19, &qword_1EB98EBD0);
  if (v36(&v28[v101], 1, v9) == 1)
  {
    (*(v112 + 8))(v19, v9);
    goto LABEL_22;
  }

  v99 = v36;
  v39 = v112;
  (*(v112 + 32))(v111, &v28[v101], v9);
  sub_1B71A70B8(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  LODWORD(v101) = sub_1B7800828();
  v40 = *(v39 + 8);
  v40(v111, v9);
  v40(v19, v9);
  sub_1B7205418(v28, &qword_1EB98EBD0);
  if ((v101 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_24:
  v41 = v100[9];
  v42 = *(v20 + 48);
  sub_1B7205588(v104 + v41, v26, &qword_1EB98EBD0);
  sub_1B7205588(v102 + v41, &v26[v42], &qword_1EB98EBD0);
  v43 = v99;
  if (v99(v26, 1, v9) == 1)
  {
    if (v43(&v26[v42], 1, v9) == 1)
    {
      v99 = v43;
      sub_1B7205418(v26, &qword_1EB98EBD0);
      goto LABEL_31;
    }

    goto LABEL_29;
  }

  sub_1B7205588(v26, v17, &qword_1EB98EBD0);
  if (v43(&v26[v42], 1, v9) == 1)
  {
    (*(v112 + 8))(v17, v9);
LABEL_29:
    v37 = &qword_1EB98FCE0;
    v38 = v26;
    goto LABEL_37;
  }

  v99 = v43;
  v44 = v112;
  v45 = &v26[v42];
  v46 = v111;
  (*(v112 + 32))(v111, v45, v9);
  sub_1B71A70B8(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v47 = sub_1B7800828();
  v48 = *(v44 + 8);
  v48(v46, v9);
  v48(v17, v9);
  sub_1B7205418(v26, &qword_1EB98EBD0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_31:
  v49 = v100[10];
  v50 = *(v20 + 48);
  sub_1B7205588(v104 + v49, v23, &qword_1EB98EBD0);
  v51 = v102 + v49;
  v52 = v102;
  sub_1B7205588(v51, &v23[v50], &qword_1EB98EBD0);
  v53 = v99;
  if (v99(v23, 1, v9) == 1)
  {
    if (v53(&v23[v50], 1, v9) == 1)
    {
      sub_1B7205418(v23, &qword_1EB98EBD0);
      goto LABEL_41;
    }

    goto LABEL_36;
  }

  sub_1B7205588(v23, v14, &qword_1EB98EBD0);
  if (v53(&v23[v50], 1, v9) == 1)
  {
    (*(v112 + 8))(v14, v9);
LABEL_36:
    v37 = &qword_1EB98FCE0;
    v38 = v23;
    goto LABEL_37;
  }

  v56 = v112;
  v57 = &v23[v50];
  v58 = v111;
  (*(v112 + 32))(v111, v57, v9);
  sub_1B71A70B8(&qword_1EB98FAC0, MEMORY[0x1E6969530]);
  v59 = sub_1B7800828();
  v60 = *(v56 + 8);
  v60(v58, v9);
  v60(v14, v9);
  v52 = v102;
  sub_1B7205418(v23, &qword_1EB98EBD0);
  if ((v59 & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_41:
  v61 = v100[11];
  v62 = v104;
  v63 = (v104 + v61);
  v64 = *(v104 + v61 + 8);
  v65 = (v52 + v61);
  v66 = v65[1];
  if (v64)
  {
    if (!v66 || (*v63 != *v65 || v64 != v66) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v66)
  {
    goto LABEL_38;
  }

  v67 = v100[12];
  v68 = (v62 + v67);
  v69 = *(v62 + v67 + 8);
  v70 = (v52 + v67);
  v71 = v70[1];
  if (v69)
  {
    if (!v71 || (*v68 != *v70 || v69 != v71) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v71)
  {
    goto LABEL_38;
  }

  v72 = v100[13];
  v73 = (v62 + v72);
  v74 = *(v62 + v72 + 8);
  v75 = (v52 + v72);
  v76 = v75[1];
  if (v74)
  {
    if (!v76 || (*v73 != *v75 || v74 != v76) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v76)
  {
    goto LABEL_38;
  }

  v77 = v100[14];
  v78 = (v62 + v77);
  v79 = *(v62 + v77 + 8);
  v80 = (v52 + v77);
  v81 = v80[1];
  if (v79)
  {
    if (!v81 || (*v78 != *v80 || v79 != v81) && (sub_1B78020F8() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v81)
  {
    goto LABEL_38;
  }

  v82 = v100[15];
  v83 = *(v106 + 48);
  v84 = v110;
  sub_1B7205588(v62 + v82, v110, &unk_1EB994C70);
  sub_1B7205588(v102 + v82, v84 + v83, &unk_1EB994C70);
  v85 = v109;
  v86 = *(v108 + 48);
  if (v86(v84, 1, v109) != 1)
  {
    sub_1B7205588(v84, v107, &unk_1EB994C70);
    if (v86(v84 + v83, 1, v85) == 1)
    {
      (*(v108 + 8))(v107, v109);
      goto LABEL_74;
    }

    v88 = v108;
    v87 = v109;
    v89 = v110;
    v90 = v110 + v83;
    v91 = v105;
    (*(v108 + 32))(v105, v90, v109);
    sub_1B71A70B8(&qword_1EB990310, MEMORY[0x1E6968FB0]);
    v92 = v107;
    v93 = sub_1B7800828();
    v94 = *(v88 + 8);
    v94(v91, v87);
    v94(v92, v87);
    sub_1B7205418(v89, &unk_1EB994C70);
    if (v93)
    {
      goto LABEL_76;
    }

LABEL_38:
    v54 = 0;
    return v54 & 1;
  }

  if (v86(v84 + v83, 1, v85) != 1)
  {
LABEL_74:
    v37 = &qword_1EB991C30;
    v38 = v110;
    goto LABEL_37;
  }

  sub_1B7205418(v110, &unk_1EB994C70);
LABEL_76:
  v95 = v100[16];
  v96 = *(v62 + v95);
  v97 = *(v62 + v95 + 8);
  v98 = (v102 + v95);
  if (v96 == *v98 && v97 == v98[1])
  {
    v54 = 1;
  }

  else
  {
    v54 = sub_1B78020F8();
  }

  return v54 & 1;
}

unint64_t sub_1B74571B4()
{
  result = qword_1EB994F20;
  if (!qword_1EB994F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994F20);
  }

  return result;
}

unint64_t sub_1B7457208()
{
  result = qword_1EB994F40;
  if (!qword_1EB994F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994F40);
  }

  return result;
}

unint64_t sub_1B745725C()
{
  result = qword_1EB994F48;
  if (!qword_1EB994F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994F48);
  }

  return result;
}

uint64_t sub_1B74572B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RawOrderReturn();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B7457314(uint64_t a1)
{
  v2 = type metadata accessor for RawOrderReturn();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B7457370(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB994F30);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B74573E8()
{
  result = qword_1EB994F60;
  if (!qword_1EB994F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994F60);
  }

  return result;
}

unint64_t sub_1B745743C()
{
  result = qword_1EB994F68;
  if (!qword_1EB994F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994F68);
  }

  return result;
}

unint64_t sub_1B7457494()
{
  result = qword_1EB994F70;
  if (!qword_1EB994F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994F70);
  }

  return result;
}

void sub_1B7457564()
{
  sub_1B742CDCC(319, &qword_1EDAF64E8, &type metadata for RawOrderLineItem, MEMORY[0x1E69E62F8]);
  if (v0 <= 0x3F)
  {
    sub_1B742CDCC(319, &qword_1EDAFD2C0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v1 <= 0x3F)
    {
      sub_1B742CE1C(319, qword_1EDAFD2F8, MEMORY[0x1E6969530]);
      if (v2 <= 0x3F)
      {
        sub_1B742CE1C(319, &qword_1EDAFC648, MEMORY[0x1E6968FB0]);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_1B7457794()
{
  result = qword_1EB994F88;
  if (!qword_1EB994F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994F88);
  }

  return result;
}

unint64_t sub_1B74577EC()
{
  result = qword_1EB994F90;
  if (!qword_1EB994F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994F90);
  }

  return result;
}

unint64_t sub_1B7457844()
{
  result = qword_1EB994F98;
  if (!qword_1EB994F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994F98);
  }

  return result;
}

uint64_t sub_1B7457898(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D657449656E696CLL && a2 == 0xE900000000000073;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001B78749D0 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7365746F6ELL && a2 == 0xE500000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574616974696E69 && a2 == 0xEB00000000744164 || (sub_1B78020F8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4266664F706F7264 && a2 == 0xE900000000000079 || (sub_1B78020F8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x64656E7275746572 && a2 == 0xEA00000000007441 || (sub_1B78020F8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x754E6E7275746572 && a2 == 0xEC0000007265626DLL || (sub_1B78020F8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x72656972726163 && a2 == 0xE700000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676E696B63617274 && a2 == 0xEE007265626D754ELL || (sub_1B78020F8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x614C6E7275746572 && a2 == 0xEB000000006C6562 || (sub_1B78020F8() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B7879410 == a2 || (sub_1B78020F8() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B787E960 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1B78020F8();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

unint64_t sub_1B7457CCC()
{
  result = qword_1EB994FA0;
  if (!qword_1EB994FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994FA0);
  }

  return result;
}

uint64_t sub_1B7457D34(uint64_t a1)
{
  v2 = sub_1B74585B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7457D70(uint64_t a1)
{
  v2 = sub_1B74585B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7457DAC(uint64_t a1)
{
  v2 = sub_1B74584B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7457DE8(uint64_t a1)
{
  v2 = sub_1B74584B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1B7457E24()
{
  v1 = 0x776F6C6C61;
  v2 = 0x776F4E746F6ELL;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x776569766572;
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

uint64_t sub_1B7457E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B74595A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7457EC0(uint64_t a1)
{
  v2 = sub_1B7458460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7457EFC(uint64_t a1)
{
  v2 = sub_1B7458460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7457F38(uint64_t a1)
{
  v2 = sub_1B7458508();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7457F74(uint64_t a1)
{
  v2 = sub_1B7458508();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7457FB0(uint64_t a1)
{
  v2 = sub_1B745855C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7457FEC(uint64_t a1)
{
  v2 = sub_1B745855C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BackgroundRefreshAlertResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994FB0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994FB8);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994FC0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994FC8);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994FD0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7458460();
  sub_1B78023F8();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1B7458508();
      v18 = v27;
      sub_1B7801ED8();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1B74584B4();
      v18 = v30;
      sub_1B7801ED8();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1B745855C();
    v18 = v24;
    sub_1B7801ED8();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1B74585B0();
  sub_1B7801ED8();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1B7458460()
{
  result = qword_1EB994FD8;
  if (!qword_1EB994FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994FD8);
  }

  return result;
}

unint64_t sub_1B74584B4()
{
  result = qword_1EB994FE0;
  if (!qword_1EB994FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994FE0);
  }

  return result;
}

unint64_t sub_1B7458508()
{
  result = qword_1EB994FE8;
  if (!qword_1EB994FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994FE8);
  }

  return result;
}

unint64_t sub_1B745855C()
{
  result = qword_1EB994FF0;
  if (!qword_1EB994FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994FF0);
  }

  return result;
}

unint64_t sub_1B74585B0()
{
  result = qword_1EB994FF8;
  if (!qword_1EB994FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB994FF8);
  }

  return result;
}

uint64_t BackgroundRefreshAlertResult.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

uint64_t BackgroundRefreshAlertResult.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995000);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995008);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995010);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995018);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB995020);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B7458460();
  v15 = v46;
  sub_1B78023C8();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1B7801E98();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1B721CE50();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1B7801B18();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
      *v28 = &type metadata for BackgroundRefreshAlertResult;
      sub_1B7801D68();
      sub_1B7801AE8();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1B745855C();
        v32 = v35;
        sub_1B7801D38();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1B74585B0();
        v25 = v35;
        sub_1B7801D38();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1B7458508();
      v31 = v35;
      sub_1B7801D38();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1B74584B4();
      v33 = v35;
      sub_1B7801D38();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

id BackgroundRefreshAlertResult.XPC.__allocating_init(value:)(_BYTE *a1)
{
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___XPCBackgroundRefreshAlertResult_value] = *a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id BackgroundRefreshAlertResult.XPC.init(value:)(_BYTE *a1)
{
  ObjectType = swift_getObjectType();
  v1[OBJC_IVAR___XPCBackgroundRefreshAlertResult_value] = *a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id BackgroundRefreshAlertResult.XPC.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  swift_getObjectType();
  v4 = sub_1B720860C(a1);
  swift_deallocPartialClassInstance();
  return v4;
}

id BackgroundRefreshAlertResult.XPC.init(coder:)(void *a1)
{
  swift_getObjectType();
  v2 = sub_1B720860C(a1);
  swift_deallocPartialClassInstance();
  return v2;
}

id BackgroundRefreshAlertResult.XPC.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BackgroundRefreshAlertResult.XPC.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B745902C(char *a1)
{
  v2 = *a1;
  v3 = objc_allocWithZone(v1);
  v3[OBJC_IVAR___XPCBackgroundRefreshAlertResult_value] = v2;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id BackgroundRefreshAlertResult.xpcValue.getter()
{
  v1 = *v0;
  refreshed = type metadata accessor for BackgroundRefreshAlertResult.XPC();
  v3 = objc_allocWithZone(refreshed);
  v3[OBJC_IVAR___XPCBackgroundRefreshAlertResult_value] = v1;
  v5.receiver = v3;
  v5.super_class = refreshed;
  return objc_msgSendSuper2(&v5, sel_init);
}

unint64_t sub_1B74590F8()
{
  result = qword_1EB995038;
  if (!qword_1EB995038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995038);
  }

  return result;
}

unint64_t sub_1B74591DC()
{
  result = qword_1EB995048;
  if (!qword_1EB995048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995048);
  }

  return result;
}

unint64_t sub_1B7459234()
{
  result = qword_1EB995050;
  if (!qword_1EB995050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995050);
  }

  return result;
}

unint64_t sub_1B745928C()
{
  result = qword_1EB995058;
  if (!qword_1EB995058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995058);
  }

  return result;
}

unint64_t sub_1B74592E4()
{
  result = qword_1EB995060;
  if (!qword_1EB995060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995060);
  }

  return result;
}

unint64_t sub_1B745933C()
{
  result = qword_1EB995068;
  if (!qword_1EB995068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995068);
  }

  return result;
}

unint64_t sub_1B7459394()
{
  result = qword_1EB995070;
  if (!qword_1EB995070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995070);
  }

  return result;
}

unint64_t sub_1B74593EC()
{
  result = qword_1EB995078;
  if (!qword_1EB995078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995078);
  }

  return result;
}

unint64_t sub_1B7459444()
{
  result = qword_1EB995080;
  if (!qword_1EB995080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995080);
  }

  return result;
}

unint64_t sub_1B745949C()
{
  result = qword_1EB995088;
  if (!qword_1EB995088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995088);
  }

  return result;
}

unint64_t sub_1B74594F4()
{
  result = qword_1EB995090;
  if (!qword_1EB995090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995090);
  }

  return result;
}

unint64_t sub_1B745954C()
{
  result = qword_1EB995098;
  if (!qword_1EB995098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995098);
  }

  return result;
}

uint64_t sub_1B74595A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x776F6C6C61 && a2 == 0xE500000000000000;
  if (v4 || (sub_1B78020F8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x776569766572 && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x776F4E746F6ELL && a2 == 0xE600000000000000 || (sub_1B78020F8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B787FBF0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B78020F8();

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

uint64_t BankConnectConsentStoring.getAuthorizedConsent(grantingAccessTo:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 2);
  v6 = *(a1 + 3);
  v9 = *a1;
  v10 = v5;
  v11 = v6;
  result = (*(a2 + 16))(&v9);
  if (!v3)
  {
    result = type metadata accessor for BankConnectConsent();
    if (*(a3 + *(result + 44)))
    {
      sub_1B74599EC();
      swift_allocError();
      *v8 = 0;
      swift_willThrow();
      return sub_1B7459A40(a3);
    }
  }

  return result;
}

uint64_t BankConnectConsentStoring.updateConsent(_:consentStatus:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1B77FF988();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  sub_1B77FF938();
  (*(a4 + 40))(a1, &v14, v11, a3, a4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t BankConnectConsentStoring.getAuthorizedConsent(forConsentID:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  result = (*(a1 + 8))();
  if (!v2)
  {
    result = type metadata accessor for BankConnectConsent();
    if (*(a2 + *(result + 44)))
    {
      sub_1B74599EC();
      swift_allocError();
      *v5 = 0;
      swift_willThrow();
      return sub_1B7459A40(a2);
    }
  }

  return result;
}

uint64_t BankConnectConsentStoringError.hashValue.getter()
{
  v1 = *v0;
  sub_1B78022F8();
  MEMORY[0x1B8CA6620](v1);
  return sub_1B7802368();
}

unint64_t sub_1B74599EC()
{
  result = qword_1EB9950A0;
  if (!qword_1EB9950A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9950A0);
  }

  return result;
}

uint64_t sub_1B7459A40(uint64_t a1)
{
  v2 = type metadata accessor for BankConnectConsent();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B7459AA0()
{
  result = qword_1EB9950A8;
  if (!qword_1EB9950A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9950A8);
  }

  return result;
}

void sub_1B7459C1C(id *a1)
{
  v1 = [*a1 lastUpdatedAt];
  sub_1B77FF928();
}

void sub_1B7459C7C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 logo];
  v4 = sub_1B77FF5B8();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

id ManagedBusinessConnectBrand.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedBusinessConnectBrand.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedBusinessConnectBrand.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall ManagedBusinessConnectBrand.willSave()()
{
  v11.receiver = v0;
  v11.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v11, sel_willSave);
  if (([v0 isDeleted] & 1) == 0)
  {
    v1 = sub_1B7800838();
    v2 = [v0 objectIDsForRelationshipNamed_];

    sub_1B7205540(0, &qword_1EB98F930);
    v3 = sub_1B7800C38();

    v4 = v3 >> 62 ? sub_1B7801958() : *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v4)
    {
      v5 = sub_1B7800838();
      v6 = [v0 objectIDsForRelationshipNamed_];

      v7 = sub_1B7800C38();
      if (!(v7 >> 62))
      {
        v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);

        if (v8)
        {
          return;
        }

        goto LABEL_7;
      }

      v10 = sub_1B7801958();

      if (!v10)
      {
LABEL_7:
        v9 = [v0 managedObjectContext];
        [v9 deleteObject_];
      }
    }
  }
}

id static ManagedBusinessConnectBrand.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit27ManagedBusinessConnectBrand;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedBusinessConnectBrand.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

unint64_t static ManagedBusinessConnectBrand.existingBrand(withBusinessID:companyID:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v16.receiver = swift_getObjCClassFromMetadata();
  v16.super_class = &OBJC_METACLASS____TtC10FinanceKit27ManagedBusinessConnectBrand;
  v10 = objc_msgSendSuper2(&v16, sel_fetchRequest);
  v11 = sub_1B745A2F8(a1, a2, a3, a4);
  [v10 setPredicate_];

  [v10 setReturnsObjectsAsFaults_];
  result = sub_1B7801498();
  if (v4)
  {

    return v5;
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

  v14 = result;
  v15 = sub_1B7801958();
  result = v14;
  if (!v15)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(result + 32);
LABEL_8:
    v5 = v13;

    return v5;
  }

  __break(1u);
  return result;
}

id sub_1B745A2F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B780C060;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1B7807CD0;
  v10 = MEMORY[0x1E69E6158];
  *(v9 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1B721FF04();
  *(v9 + 64) = v11;
  *(v9 + 32) = a1;
  *(v9 + 40) = a2;

  *(v8 + 32) = sub_1B78010E8();
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B7807CD0;
  *(v12 + 56) = v10;
  *(v12 + 64) = v11;
  *(v12 + 32) = a3;
  *(v12 + 40) = a4;

  *(v8 + 40) = sub_1B78010E8();
  v13 = sub_1B7800C18();

  v14 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v14;
}

uint64_t sub_1B745A52C()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1B722A5E0;

  return (sub_1B7229558)();
}

uint64_t sub_1B745A60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  v4[13] = type metadata accessor for FinanceStore.Message();
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B745A6A4, 0, 0);
}

uint64_t sub_1B745A6A4()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v0[15] = *(v0[10] + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9950C0) + 48);
  sub_1B72A6B68(v3, v1);
  *(v1 + v4) = v2;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B745A76C, 0, 0);
}

uint64_t sub_1B745A76C()
{
  v1 = v0[15];
  v0[2] = v0;
  v0[3] = sub_1B745A810;
  v2 = swift_continuation_init();
  sub_1B7236838(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B745A810()
{
  v1 = *(*v0 + 48);
  *(*v0 + 128) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B745A99C;
  }

  else
  {
    v2 = sub_1B745A92C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B745A92C()
{
  sub_1B72A820C(*(v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B745A99C()
{
  sub_1B72A820C(*(v0 + 112));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B745AA0C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B723838C;

  return sub_1B745A60C(a1, v4, v5, v6);
}

uint64_t FinanceStore.deletePredictedTransaction(withID:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B745AAE0, 0, 0);
}

uint64_t sub_1B745AAE0()
{
  v1 = swift_task_alloc();
  v0[2].i64[0] = v1;
  v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
  v2 = swift_task_alloc();
  v0[2].i64[1] = v2;
  *v2 = v0;
  v2[1] = sub_1B722AC98;

  return (sub_1B7229558)();
}

uint64_t sub_1B745ABBC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[12] = type metadata accessor for FinanceStore.Message();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B745AC50, 0, 0);
}

uint64_t sub_1B745AC50()
{
  v1 = v0[13];
  v2 = v0[11];
  v0[14] = *(v0[10] + 24);
  v3 = sub_1B77FFA18();
  (*(*(v3 - 8) + 16))(v1, v2, v3);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B745AD14, 0, 0);
}

uint64_t sub_1B745AD14()
{
  v1 = v0[14];
  v0[2] = v0;
  v0[3] = sub_1B745ADB8;
  v2 = swift_continuation_init();
  sub_1B7236838(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B745ADB8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 120) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B745AED4;
  }

  else
  {
    v2 = sub_1B72C6454;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B745AED4()
{
  sub_1B72A820C(*(v0 + 104));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B745AF44(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B723838C;

  return sub_1B745ABBC(a1, v5, v4);
}

uint64_t sub_1B745B010()
{

  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B722C198;
  v2 = *(v0 + 16);

  return sub_1B7229098(sub_1B7229098, v2, v2);
}

uint64_t sub_1B745B0C4(uint64_t a1, uint64_t a2)
{
  v2[10] = a2;
  v2[11] = type metadata accessor for FinanceStore.Message();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B745B158, 0, 0);
}

uint64_t sub_1B745B158()
{
  *(v0 + 104) = *(*(v0 + 80) + 24);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B745B1D0, 0, 0);
}

uint64_t sub_1B745B1D0()
{
  v1 = v0[13];
  v0[2] = v0;
  v0[3] = sub_1B745B274;
  v2 = swift_continuation_init();
  sub_1B7236838(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B745B274()
{
  v1 = *(*v0 + 48);
  *(*v0 + 112) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B745B390;
  }

  else
  {
    v2 = sub_1B7396D08;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B745B390()
{
  sub_1B72A820C(*(v0 + 96));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t FinanceStore.setUserSuppressedNotifications(_:forAccountID:)(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 56) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B745B424, 0, 0);
}

uint64_t sub_1B745B424()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1B722BC90;

  return (sub_1B7229558)();
}

uint64_t sub_1B745B510(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 128) = a3;
  *(v4 + 80) = a2;
  *(v4 + 88) = a4;
  *(v4 + 96) = type metadata accessor for FinanceStore.Message();
  *(v4 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B745B5A8, 0, 0);
}

uint64_t sub_1B745B5A8()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 128);
  v3 = *(v0 + 88);
  *(v0 + 112) = *(*(v0 + 80) + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9950B8) + 48);
  *v1 = v2;
  v5 = sub_1B77FFA18();
  (*(*(v5 - 8) + 16))(&v1[v4], v3, v5);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B745AD14, 0, 0);
}

uint64_t sub_1B745B694(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B723838C;

  return sub_1B745B510(a1, v4, v5, v6);
}

uint64_t FinanceStore.setUserSuppressedPredictedTransaction(_:forPredictedTransactionID:)(char a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 56) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B745B770, 0, 0);
}

uint64_t sub_1B745B770()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v0 + 32) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;
  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  *v5 = v0;
  v5[1] = sub_1B722BC90;

  return (sub_1B7229558)();
}

uint64_t sub_1B745B85C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  *(v4 + 128) = a3;
  *(v4 + 80) = a2;
  *(v4 + 88) = a4;
  *(v4 + 96) = type metadata accessor for FinanceStore.Message();
  *(v4 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B745B8F4, 0, 0);
}

uint64_t sub_1B745B8F4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 128);
  v3 = *(v0 + 88);
  *(v0 + 112) = *(*(v0 + 80) + 24);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9950B0) + 48);
  *v1 = v2;
  v5 = sub_1B77FFA18();
  (*(*(v5 - 8) + 16))(&v1[v4], v3, v5);
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DFA0](sub_1B745B9E0, 0, 0);
}

uint64_t sub_1B745B9E0()
{
  v1 = v0[14];
  v0[2] = v0;
  v0[3] = sub_1B745BA84;
  v2 = swift_continuation_init();
  sub_1B7236838(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B745BA84()
{
  v1 = *(*v0 + 48);
  *(*v0 + 120) = v1;
  if (v1)
  {
    swift_willThrow();
    v2 = sub_1B745C0F0;
  }

  else
  {
    v2 = sub_1B745C0EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B745BBA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B723838C;

  return sub_1B745B85C(a1, v4, v5, v6);
}

uint64_t FinanceStore.stylingMetadata(forPredictedTransactionIDs:)()
{
  static DeviceInfo.deviceType.getter(&v2);
  if (!v2)
  {
    return sub_1B75F7E44();
  }

  sub_1B7201CA4();
  swift_allocError();
  *v0 = 3;
  return swift_willThrow();
}

uint64_t FinanceStore.predictedTransactions(query:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B745BD14, 0, 0);
}

void sub_1B745BD14()
{
  v4 = v0;
  static DeviceInfo.deviceType.getter(&v3);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v1 = swift_task_alloc();
    v0[2].i64[0] = v1;
    v1[1] = vextq_s8(v0[1], v0[1], 8uLL);
    v2 = swift_task_alloc();
    v0[2].i64[1] = v2;
    *v2 = v0;
    v2[1] = sub_1B7228830;

    sub_1B7237C2C(&unk_1B782D1C8, v1);
  }
}

uint64_t sub_1B745BDFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[5] = a2;
  v3[6] = a3;
  v3[4] = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B745BE90, 0, 0);
}

uint64_t sub_1B745BE90()
{
  v9 = v0;
  v8[2] = *MEMORY[0x1E69E9840];
  LOBYTE(v8[0]) = 2;
  if (FinanceStore.isDataRestricted(for:)(v8))
  {
    sub_1B7201CA4();
    swift_allocError();
    *v1 = 2;
    swift_willThrow();
    v5 = v0->opaque[1];
  }

  else
  {
    v2 = *(v0[2].opaque[1] + 16);
    v0[1].opaque[0] = 0;
    v0[1].opaque[1] = 0;
    if (qword_1EDAFA648 != -1)
    {
      swift_once();
    }

    v3 = v0[3].opaque[0];
    v4 = _os_activity_create(&dword_1B7198000, "financeStore/PredictedTransaction", qword_1EDAFA650, OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v4, v0 + 1);
    sub_1B73A7C90(v3, v2, v8);
    v7 = v0[2].opaque[0];
    os_activity_scope_leave(v0 + 1);
    swift_unknownObjectRelease();
    *v7 = v8[0];
    v5 = v0->opaque[1];
  }

  return v5();
}

uint64_t sub_1B745C040(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1B7201BB0;

  return sub_1B745BDFC(a1, v5, v4);
}

void sub_1B745C0F4(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 entityClassName];
  v4 = sub_1B7800868();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void sub_1B745C14C(id *a1)
{
  v1 = [*a1 objectIDURL];
  sub_1B77FF478();
}

id ManagedInsertionHistory.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedInsertionHistory.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for ManagedInsertionHistory();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedInsertionHistory.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedInsertionHistory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedInsertionHistory.__allocating_init(index:entityClassName:objectIDURL:transactionNumber:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v7 = v6;
  v12 = [objc_allocWithZone(v7) initWithContext_];
  [v12 setId_];
  v13 = sub_1B7800838();

  [v12 setEntityClassName_];

  v14 = sub_1B77FF3F8();
  [v12 setObjectIDURL_];

  [v12 setTransactionNumber_];
  v15 = sub_1B77FF4F8();
  (*(*(v15 - 8) + 8))(a4, v15);
  return v12;
}

id static ManagedInsertionHistory.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit23ManagedInsertionHistory;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

uint64_t static ManagedInsertionHistory.predicateForInsertedEntities(withEntityNames:)(uint64_t a1)
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1B7807CD0;
  *(v2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991D80);
  *(v2 + 64) = sub_1B745C964(&qword_1EDAF6490, &qword_1EB991D80);
  *(v2 + 32) = a1;

  return sub_1B78010E8();
}

uint64_t static ManagedInsertionHistory.predicateForInsertedEntities(before:)(uint64_t a1)
{
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7360];
  *(v2 + 16) = xmmword_1B7807CD0;
  v4 = MEMORY[0x1E69E73D8];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = a1;
  return sub_1B78010E8();
}

id static ManagedInsertionHistory.predicateForInsertedEntities(after:)(uint64_t *a1)
{
  if (a1[1])
  {
    v1 = [objc_opt_self() predicateWithValue_];

    return v1;
  }

  else
  {
    v3 = *a1;
    sub_1B7205540(0, &qword_1EDAFAF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1B7807CD0;
    v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
    *(v4 + 56) = sub_1B7205540(0, &qword_1EDAFC4C8);
    *(v4 + 64) = sub_1B7451BE4();
    *(v4 + 32) = v5;
    return sub_1B78010E8();
  }
}

void static ManagedInsertionHistory.deleteInsertionHistoryForObjectsWith(objectIDURIs:in:)(uint64_t a1, void *a2)
{
  type metadata accessor for ManagedInsertionHistory();
  v14.receiver = swift_getObjCClassFromMetadata();
  v14.super_class = &OBJC_METACLASS____TtC10FinanceKit23ManagedInsertionHistory;
  v4 = objc_msgSendSuper2(&v14, sel_fetchRequest);
  [v4 setReturnsObjectsAsFaults_];
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  *(v5 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9950C8);
  *(v5 + 64) = sub_1B745C964(&qword_1EB9950D0, &qword_1EB9950C8);
  *(v5 + 32) = a1;

  v6 = sub_1B78010E8();
  [v4 setPredicate_];

  v7 = v15;
  v8 = sub_1B7801498();
  if (v7)
  {

    return;
  }

  v9 = v8;
  if (v8 >> 62)
  {
    v10 = sub_1B7801958();
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_12;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v10; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v12 = MEMORY[0x1B8CA5DC0](i, v9);
    }

    else
    {
      v12 = *(v9 + 8 * i + 32);
    }

    v13 = v12;
    [a2 deleteObject_];
  }

LABEL_12:
}

uint64_t sub_1B745C964(unint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void MapsMerchant.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v106 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v90 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v90 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v90 - v13;
  v15 = a1;
  v116 = [v15 muid];
  v16 = [v15 placeIdentifier];
  if (v16)
  {
    v17 = v16;
    v18 = sub_1B7800868();
    v114 = v19;
    v115 = v18;
  }

  else
  {
    v114 = 0;
    v115 = 0;
  }

  v20 = [v15 resultProviderIdentifierValue];
  v21 = v20;
  if (v20)
  {
    v113 = [v20 intValue];
  }

  else
  {
    v113 = 0;
  }

  v22 = [v15 name];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1B7800868();
    v111 = v25;
    v112 = v24;
  }

  else
  {
    v111 = 0;
    v112 = 0;
  }

  v26 = [v15 phoneNumber];
  if (v26)
  {
    v27 = v26;
    v28 = sub_1B7800868();
    v109 = v29;
    v110 = v28;
  }

  else
  {
    v109 = 0;
    v110 = 0;
  }

  v30 = [v15 url];
  if (v30)
  {
    v31 = v30;
    sub_1B77FF478();

    v32 = sub_1B77FF4F8();
    (*(*(v32 - 8) + 56))(v14, 0, 1, v32);
  }

  else
  {
    v33 = sub_1B77FF4F8();
    (*(*(v33 - 8) + 56))(v14, 1, 1, v33);
  }

  v34 = [v15 heroImageURL];
  if (v34)
  {
    v35 = v34;
    sub_1B77FF478();

    v36 = 0;
  }

  else
  {
    v36 = 1;
  }

  v37 = sub_1B77FF4F8();
  v38 = *(v37 - 8);
  v39 = *(v38 + 56);
  v40 = v38 + 56;
  v39(v12, v36, 1, v37);
  v41 = [v15 heroImageAttributionName];
  if (v41)
  {
    v42 = v41;
    v43 = sub_1B7800868();
    v107 = v44;
    v108 = v43;
  }

  else
  {
    v107 = 0;
    v108 = 0;
  }

  v118 = v12;
  v45 = [v15 walletCategoryValue];
  if (v45)
  {
    v46 = v45;
    v47 = [v45 shortValue];

    MapsCategory.init(rawValue:)(v47);
    v104 = v121;
  }

  else
  {
    v104 = 8;
    v121 = 8;
  }

  v48 = [v15 mapsCategoryIdentifier];
  if (v48)
  {
    v49 = v48;
    v103 = sub_1B7800868();
    v102 = v50;
  }

  else
  {
    v103 = 0;
    v102 = 0;
  }

  v51 = [v15 encodedStylingInfo];
  if (v51)
  {
    v52 = v51;
    v101 = sub_1B77FF5B8();
    v100 = v53;
  }

  else
  {
    v101 = 0;
    v100 = 0xF000000000000000;
  }

  v54 = [v15 businessChatURL];
  if (v54)
  {
    v55 = v54;
    sub_1B77FF478();

    v56 = 0;
  }

  else
  {
    v56 = 1;
  }

  v57 = 1;
  v105 = v40;
  v39(v9, v56, 1, v37);
  v58 = [v15 lastProcessedDate];

  v119 = v9;
  v117 = v14;
  v59 = v39;
  if (v58)
  {
    sub_1B77FF928();

    v57 = 0;
  }

  v60 = sub_1B77FF988();
  v61 = *(v60 - 8);
  v62 = *(v61 + 56);
  v99 = v60;
  v98 = v62;
  v97 = v61 + 56;
  (v62)(v5, v57, 1);
  v63 = [v15 locationLatitudeValue];
  v64 = v63;
  v65 = 0;
  v66 = 0;
  if (v63)
  {
    [v63 doubleValue];
    v66 = v67;
  }

  v68 = [v15 locationLongitudeValue];
  v69 = v68;
  if (v68)
  {
    [v68 doubleValue];
    v65 = v70;
  }

  v120 = v5;
  v96 = [v15 postalAddress];
  v71 = [v15 brandObject];

  if (v71)
  {
  }

  v95 = v71 != 0;
  v94 = v69 == 0;
  v93 = v64 == 0;
  v72 = v21 == 0;
  v73 = type metadata accessor for MapsMerchant();
  v92 = v73[9];
  v74 = v106;
  v75 = v59;
  v59(v106 + v92, 1, 1, v37);
  v91 = v73[10];
  v59(v74 + v91, 1, 1, v37);
  v76 = v74;
  v77 = v73[12];
  v78 = (v76 + v73[11]);
  *(v76 + v77) = 8;
  v79 = (v76 + v73[13]);
  v80 = v76 + v73[14];
  *v80 = xmmword_1B7810080;
  v90 = v73[15];
  v75(v76 + v90, 1, 1, v37);
  v105 = v73[16];
  v98(v76 + v105, 1, 1, v99);
  v81 = v76 + v73[18];
  v99 = (v76 + v73[19]);
  v82 = v73[20];
  *(v76 + v82) = 0;
  v83 = v115;
  *v76 = v116;
  *(v76 + 8) = v83;
  *(v76 + 16) = v114;
  *(v76 + 24) = v113;
  *(v76 + 28) = v72;
  v84 = v111;
  *(v76 + 32) = v112;
  *(v76 + 40) = v84;
  v85 = v109;
  *(v76 + 48) = v110;
  *(v76 + 56) = v85;
  sub_1B7213740(v117, v76 + v92, &unk_1EB994C70);
  sub_1B7213740(v118, v76 + v91, &unk_1EB994C70);
  v86 = v107;
  *v78 = v108;
  v78[1] = v86;
  *(v76 + v77) = v104;
  v87 = v102;
  *v79 = v103;
  v79[1] = v87;
  sub_1B72380B8(*v80, *(v80 + 8));
  v88 = v100;
  *v80 = v101;
  *(v80 + 8) = v88;
  sub_1B7213740(v119, v76 + v90, &unk_1EB994C70);
  sub_1B7213740(v120, v76 + v105, &qword_1EB98EBD0);
  *v81 = v66;
  *(v81 + 8) = v93;
  v89 = v99;
  *v99 = v65;
  *(v89 + 8) = v94;
  *(v76 + v73[17]) = v95;

  *(v76 + v82) = v96;
}

id ManagedMapsMerchant.__allocating_init(merchant:context:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for MapsMerchant();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v15 - v9;
  v11 = objc_allocWithZone(v2);
  sub_1B745E71C(a1, v10, type metadata accessor for MapsMerchant);
  sub_1B745E71C(v10, v8, type metadata accessor for MapsMerchant);
  v12 = sub_1B77BF7C8(v8, a2, v11);
  sub_1B745E784(v10, type metadata accessor for MapsMerchant);
  v13 = v12;
  sub_1B745D4F8(a1);

  sub_1B745E784(a1, type metadata accessor for MapsMerchant);
  return v13;
}

id ManagedMapsMerchant.init(merchant:context:)(uint64_t a1, void *a2)
{
  v5 = type metadata accessor for MapsMerchant();
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v14 - v9;
  sub_1B745E71C(a1, &v14 - v9, type metadata accessor for MapsMerchant);
  sub_1B745E71C(v10, v8, type metadata accessor for MapsMerchant);
  v11 = sub_1B77BF7C8(v8, a2, v2);
  sub_1B745E784(v10, type metadata accessor for MapsMerchant);
  v12 = v11;
  sub_1B745D4F8(a1);

  sub_1B745E784(a1, type metadata accessor for MapsMerchant);
  return v12;
}

id sub_1B745D4F8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v3 = sub_1B7800838();
  }

  else
  {
    v3 = 0;
  }

  [v1 setPlaceIdentifier_];

  v4 = type metadata accessor for MapsMerchant();
  v5 = 0;
  v6 = a1 + v4[18];
  if ((*(v6 + 8) & 1) == 0)
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  [v1 setLocationLatitudeValue_];

  v7 = a1 + v4[19];
  if (*(v7 + 8))
  {
    v8 = 0;
  }

  else
  {
    v8 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  [v1 setLocationLongitudeValue_];

  v9 = *(a1 + v4[20]);

  return [v1 setPostalAddress_];
}

id ManagedMapsMerchant.__allocating_init(muid:rawMerchant:encodedStylingInfo:context:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = v5;
  v12 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for WPCClassificationMapsItem();
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v18 = (&v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v26 - v19;
  v21 = objc_allocWithZone(v6);
  sub_1B745E71C(a2, v14, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
  sub_1B7228588(a3, a4);
  WPCClassificationMapsItem.init(muid:rawMerchant:encodedStylingInfo:)(a1, v14, a3, a4, v20);
  sub_1B745E71C(v20, v18, type metadata accessor for WPCClassificationMapsItem);
  v22 = a5;
  v23 = sub_1B77BF62C(v18, v22, v21);

  sub_1B745E784(v20, type metadata accessor for WPCClassificationMapsItem);
  v24 = v23;
  sub_1B745DA00(a2);

  sub_1B72380B8(a3, a4);
  sub_1B745E784(a2, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
  return v24;
}

id ManagedMapsMerchant.init(muid:rawMerchant:encodedStylingInfo:context:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v11 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for WPCClassificationMapsItem();
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = (&v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v24 - v18;
  sub_1B745E71C(a2, v13, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
  sub_1B7228588(a3, a4);
  WPCClassificationMapsItem.init(muid:rawMerchant:encodedStylingInfo:)(a1, v13, a3, a4, v19);
  sub_1B745E71C(v19, v17, type metadata accessor for WPCClassificationMapsItem);
  v20 = a5;
  v21 = sub_1B77BF62C(v17, v20, v5);

  sub_1B745E784(v19, type metadata accessor for WPCClassificationMapsItem);
  v22 = v21;
  sub_1B745DA00(a2);

  sub_1B72380B8(a3, a4);
  sub_1B745E784(a2, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
  return v22;
}

void sub_1B745DA00(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  v5 = a1 + *(v4 + 32);
  if (*(v5 + 16))
  {
    [v2 setLocationLatitudeValue_];
    v6 = 0;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    [v2 setLocationLatitudeValue_];

    v6 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  [v2 setLocationLongitudeValue_];

  v8 = (a1 + *(v4 + 44));
  v9 = v8[5];
  v25[4] = v8[4];
  v25[5] = v9;
  v10 = v8[7];
  v25[6] = v8[6];
  v25[7] = v10;
  v11 = v8[1];
  v25[0] = *v8;
  v25[1] = v11;
  v12 = v8[3];
  v25[2] = v8[2];
  v25[3] = v12;
  if (get_enum_tag_for_layout_string_10FinanceKit14ExtractedOrderV7PaymentV11TransactionV0E6MethodVSg_0(v25) == 1)
  {
    v13 = 0;
  }

  else
  {
    v14 = v8[5];
    v23[4] = v8[4];
    v23[5] = v14;
    v15 = v8[7];
    v23[6] = v8[6];
    v23[7] = v15;
    v16 = v8[1];
    v23[0] = *v8;
    v23[1] = v16;
    v17 = v8[3];
    v23[2] = v8[2];
    v23[3] = v17;
    sub_1B7205540(0, &qword_1EB990D70);
    v18 = v8[5];
    v24[4] = v8[4];
    v24[5] = v18;
    v19 = v8[7];
    v24[6] = v8[6];
    v24[7] = v19;
    v20 = v8[1];
    v24[0] = *v8;
    v24[1] = v20;
    v21 = v8[3];
    v24[2] = v8[2];
    v24[3] = v21;
    sub_1B745E8C0(v24, &v22);
    v13 = sub_1B745DE54(v23);
  }

  [v2 setPostalAddress_];
}

id ManagedMapsMerchant.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedMapsMerchant.update(with:)(uint64_t a1)
{
  sub_1B77BEDC0(a1, v1);

  return sub_1B745D4F8(a1);
}

void ManagedMapsMerchant.update(with:encodedStylingInfo:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WPCClassificationMapsItem();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v3 muid];
  sub_1B745E71C(a1, v9, type metadata accessor for RawBankConnectData.TransactionClassificationResult.Merchant);
  sub_1B7228588(a2, a3);
  WPCClassificationMapsItem.init(muid:rawMerchant:encodedStylingInfo:)(v13, v9, a2, a3, v12);
  sub_1B77BE794(v12, v3);
  sub_1B745E784(v12, type metadata accessor for WPCClassificationMapsItem);
  sub_1B745DA00(a1);
}

void sub_1B745DDD0(uint64_t a1, char a2, SEL *a3)
{
  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  v6 = v5;
  [v3 *a3];
}

id sub_1B745DE54(__int128 *a1)
{
  v1 = a1[5];
  v19 = a1[4];
  v20 = v1;
  v2 = a1[7];
  v21 = a1[6];
  v22 = v2;
  v3 = a1[1];
  v15 = *a1;
  v16 = v3;
  v4 = a1[3];
  v17 = a1[2];
  v18 = v4;
  v5 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  if (*(&v15 + 1))
  {

    v6 = sub_1B7800838();

    [v5 setCity_];
  }

  if (*(&v16 + 1))
  {

    v7 = sub_1B7800838();

    [v5 setCountry_];
  }

  if (*(&v17 + 1))
  {

    v8 = sub_1B7800838();

    [v5 setISOCountryCode_];
  }

  if (*(&v18 + 1))
  {

    v9 = sub_1B7800838();

    [v5 setPostalCode_];
  }

  if (*(&v19 + 1))
  {

    v10 = sub_1B7800838();

    [v5 setState_];
  }

  if (*(&v20 + 1))
  {

    v11 = sub_1B7800838();

    [v5 setStreet_];
  }

  if (*(&v21 + 1))
  {

    v12 = sub_1B7800838();

    [v5 setSubAdministrativeArea_];
  }

  if (*(&v22 + 1))
  {

    sub_1B745E86C(&v15);
    v13 = sub_1B7800838();

    [v5 setSubLocality_];
  }

  else
  {
    sub_1B745E86C(&v15);
  }

  return v5;
}

void (*ManagedMapsMerchant.locationLatitude.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = v1;
  v3 = [v1 locationLatitudeValue];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v4 == 0;
  return sub_1B745E198;
}

id sub_1B745E1B0(SEL *a1)
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

void sub_1B745E214(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = [*a1 *a2];
  v5 = v4;
  if (v4)
  {
    [v4 doubleValue];
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  *a3 = v7;
  *(a3 + 8) = v5 == 0;
}

void sub_1B745E288(uint64_t a1, void **a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a2;
  if (*(a1 + 8))
  {
    v7 = 0;
  }

  else
  {
    v7 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  v8 = v7;
  [v6 *a5];
}

void (*ManagedMapsMerchant.locationLongitude.modify(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  *(a1 + 16) = v1;
  v3 = [v1 locationLongitudeValue];
  v4 = v3;
  if (v3)
  {
    [v3 doubleValue];
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  *(a1 + 8) = v4 == 0;
  return sub_1B745E3AC;
}

void sub_1B745E3B8(uint64_t a1, uint64_t a2, SEL *a3)
{
  if (*(a1 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  }

  v6 = v5;
  [*(a1 + 16) *a3];
}

id ManagedMapsMerchant.location.getter()
{
  result = [v0 locationLatitudeValue];
  if (result)
  {
    v2 = result;
    [result doubleValue];
    v4 = v3;

    result = [v0 locationLongitudeValue];
    if (result)
    {
      v5 = result;
      [result doubleValue];
      v7 = v6;

      return [objc_allocWithZone(MEMORY[0x1E6985C40]) initWithLatitude:v4 longitude:v7];
    }
  }

  return result;
}

unint64_t static ManagedMapsMerchant.merchant(withMUID:in:)(uint64_t a1)
{
  v2 = v1;
  v13.receiver = swift_getObjCClassFromMetadata();
  v13.super_class = &OBJC_METACLASS____TtC10FinanceKit19ManagedMapsMerchant;
  v4 = objc_msgSendSuper2(&v13, sel_fetchRequest);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E76D8];
  *(v5 + 16) = xmmword_1B7807CD0;
  v7 = MEMORY[0x1E69E7738];
  *(v5 + 56) = v6;
  *(v5 + 64) = v7;
  *(v5 + 32) = a1;
  v8 = sub_1B78010E8();
  [v4 setPredicate_];

  result = sub_1B7801498();
  if (v1)
  {

    return v2;
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

  v11 = result;
  v12 = sub_1B7801958();
  result = v11;
  if (!v12)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(result + 32);
LABEL_8:
    v2 = v10;

    return v2;
  }

  __break(1u);
  return result;
}

id static ManagedMapsMerchant.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit19ManagedMapsMerchant;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

uint64_t sub_1B745E71C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B745E784(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FraudAssessmentAdditionalAttribute.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  if (v3 <= 4)
  {
    if (*(v0 + 16) <= 1u)
    {
      if (*(v0 + 16))
      {
        v6 = 0x3220746565727453;
      }

      else
      {
        v6 = 0x3120746565727453;
      }

      v7 = 0xEA0000000000203ALL;
      goto LABEL_24;
    }

    if (v3 == 2)
    {
      v6 = 0x63206C6174736F50;
      v7 = 0xED0000203A65646FLL;
    }

    else
    {
      if (v3 == 3)
      {
        v4 = 1952543827;
        goto LABEL_10;
      }

      v6 = 0x203A79746943;
      v7 = 0xE600000000000000;
    }
  }

  else
  {
    if (*(v0 + 16) <= 7u)
    {
      if (v3 != 5)
      {
        if (v3 != 6)
        {
          v5 = 0x3A6C69616D45;
          goto LABEL_23;
        }

        v4 = 1852794960;
LABEL_10:
        v5 = v4 & 0xFFFF0000FFFFFFFFLL | 0x3A6500000000;
LABEL_23:
        v6 = v5 & 0xFFFFFFFFFFFFLL | 0x20000000000000;
        v7 = 0xE700000000000000;
        goto LABEL_24;
      }

      v8 = *v0;
      v9 = v0[1];
      sub_1B7801A78();

      strcpy(v11, "Country code: ");
      HIBYTE(v11[1]) = -18;
LABEL_27:
      v1 = v8;
      v2 = v9;
      goto LABEL_25;
    }

    if (v3 == 8)
    {
      v6 = 0x616E206E65766947;
      v7 = 0xEC000000203A656DLL;
    }

    else
    {
      if (v3 != 9)
      {
        v8 = *v0;
        v9 = v0[1];
        sub_1B7801A78();

        v11[0] = 0xD000000000000011;
        v11[1] = 0x80000001B787FEF0;
        goto LABEL_27;
      }

      v6 = 0x6E20796C696D6146;
      v7 = 0xED0000203A656D61;
    }
  }

LABEL_24:
  v11[0] = v6;
  v11[1] = v7;
LABEL_25:
  MEMORY[0x1B8CA4D30](v1, v2);
  return v11[0];
}

uint64_t sub_1B745EB48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF6 && *(a1 + 17))
  {
    return (*a1 + 246);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xA)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B745EB90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF5)
  {
    *(result + 16) = 0;
    *result = a2 - 246;
    *(result + 8) = 0;
    if (a3 >= 0xF6)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF6)
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

uint64_t ManagedBackgroundDeliveryRegistration.dataType.getter@<X0>(char *a1@<X8>)
{
  v3 = [v1 dataTypeValue];
  v4 = sub_1B7800868();
  v6 = v5;

  return FinanceStore.BackgroundDataType.init(from:)(v4, v6, a1);
}

id ManagedBackgroundDeliveryRegistration.updateFrequency.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = v1;
  result = [v2 updateFrequencyValue];
  if (result > 3)
  {
    sub_1B7801A78();

    [v2 updateFrequencyValue];
    v5 = sub_1B7802068();
    MEMORY[0x1B8CA4D30](v5);

    result = sub_1B7801C88();
    __break(1u);
  }

  else
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1B745ED50@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = [*a1 dataTypeValue];
  v4 = sub_1B7800868();
  v6 = v5;

  result = FinanceStore.BackgroundDataType.init(from:)(v4, v6, &v8);
  *a2 = v8;
  return result;
}

void sub_1B745EDC4(uint64_t a1, void **a2)
{
  v2 = *a2;
  v3 = sub_1B7800838();

  [v2 setDataTypeValue_];
}

void ManagedBackgroundDeliveryRegistration.dataType.setter()
{
  v1 = sub_1B7800838();

  [v0 setDataTypeValue_];
}

void (*ManagedBackgroundDeliveryRegistration.dataType.modify(void *a1))(void **a1)
{
  *a1 = v1;
  v2 = (a1 + 1);
  v3 = [v1 dataTypeValue];
  v4 = sub_1B7800868();
  v6 = v5;

  FinanceStore.BackgroundDataType.init(from:)(v4, v6, v2);
  return sub_1B745EFB8;
}

void sub_1B745EFB8(void **a1)
{
  v1 = *a1;
  v2 = sub_1B7800838();

  [v1 setDataTypeValue_];
}

FinanceKit::ManagedBackgroundDeliveryRegistration::UpdateFrequency_optional __swiftcall ManagedBackgroundDeliveryRegistration.UpdateFrequency.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if ((rawValue & 0xFFFC) != 0)
  {
    v2 = 4;
  }

  *v1 = v2;
  return rawValue;
}

id (*ManagedBackgroundDeliveryRegistration.updateFrequency.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  ManagedBackgroundDeliveryRegistration.updateFrequency.getter((a1 + 8));
  return sub_1B745F138;
}

id ManagedBackgroundDeliveryRegistration.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedBackgroundDeliveryRegistration.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedBackgroundDeliveryRegistration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id ManagedBackgroundDeliveryRegistration.__allocating_init(dataType:createdDate:updateFrequency:application:context:)(uint64_t a1, uint64_t a2, unsigned __int8 *a3, void *a4, void *a5)
{
  v6 = v5;
  v10 = *a3;
  v11 = [objc_allocWithZone(v6) initWithContext_];
  v12 = sub_1B7800838();

  [v11 setDataTypeValue_];

  v13 = sub_1B77FF8B8();
  [v11 setLastDeliveryDate_];

  v14 = sub_1B77FF8B8();
  [v11 setCreationDate_];

  v15 = sub_1B77FF8B8();
  [v11 setModificationDate_];

  [v11 setUpdateFrequencyValue_];
  [v11 setDeliverySequenceNumber_];
  [v11 setScheduleSequenceNumber_];
  [v11 setApplication_];

  v16 = sub_1B77FF988();
  (*(*(v16 - 8) + 8))(a2, v16);
  return v11;
}

id static ManagedBackgroundDeliveryRegistration.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit37ManagedBackgroundDeliveryRegistration;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedBackgroundDeliveryRegistration.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

unint64_t static ManagedBackgroundDeliveryRegistration.existingRegistration(for:bundleIdentifier:context:)(unsigned __int8 *a1, uint64_t *a2)
{
  v3 = *a1;
  v5 = *a2;
  v4 = a2[1];
  v20.receiver = swift_getObjCClassFromMetadata();
  v20.super_class = &OBJC_METACLASS____TtC10FinanceKit37ManagedBackgroundDeliveryRegistration;
  v6 = objc_msgSendSuper2(&v20, sel_fetchRequest);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1B7808C50;
  v21 = v6;
  v8 = v5;
  if (v3)
  {
    if (v3 == 1)
    {
      v9 = "FinancialData.transaction";
      v10 = 0xD00000000000001CLL;
    }

    else
    {
      v9 = "FinanceKit.XPCArray";
      v10 = 0xD000000000000019;
    }
  }

  else
  {
    v9 = "FinancialData.accountBalance";
    v10 = 0xD000000000000015;
  }

  v11 = v9 | 0x8000000000000000;
  sub_1B7205540(0, &qword_1EDAFAF30);
  v12 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v13 = sub_1B721FF04();
  *(v7 + 32) = v10;
  *(v7 + 40) = v11;
  *(v7 + 96) = v12;
  *(v7 + 104) = v13;
  *(v7 + 64) = v13;
  *(v7 + 72) = v8;
  *(v7 + 80) = v4;

  v14 = sub_1B78010E8();
  v15 = v21;
  [v21 setPredicate_];

  result = sub_1B7801498();
  if (v2)
  {

    return v11;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_10;
    }

LABEL_15:

    return 0;
  }

  v18 = result;
  v19 = sub_1B7801958();
  result = v18;
  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_10:
  if ((result & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1B8CA5DC0](0);
    goto LABEL_13;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v17 = *(result + 32);
LABEL_13:
    v11 = v17;

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t static ManagedBackgroundDeliveryRegistration.predicateFor(dataType:bundleIdentifier:)(unsigned __int8 *a1, uint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v3 = a2[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7808C50;
  v6 = "FinancialData.accountBalance";
  v7 = "FinancialData.transaction";
  v8 = 0xD00000000000001CLL;
  if (v2 != 1)
  {
    v8 = 0xD000000000000019;
    v7 = "FinanceKit.XPCArray";
  }

  if (v2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0xD000000000000015;
  }

  if (v2)
  {
    v6 = v7;
  }

  v10 = v5;
  v11 = v6 | 0x8000000000000000;
  sub_1B7205540(0, &qword_1EDAFAF30);
  v12 = MEMORY[0x1E69E6158];
  v10[7] = MEMORY[0x1E69E6158];
  v13 = sub_1B721FF04();
  v10[4] = v9;
  v10[5] = v11;
  v10[12] = v12;
  v10[13] = v13;
  v10[8] = v13;
  v10[9] = v4;
  v10[10] = v3;

  return sub_1B78010E8();
}

uint64_t static ManagedBackgroundDeliveryRegistration.fetchAllRegistrations(context:)()
{
  v3.receiver = swift_getObjCClassFromMetadata();
  v3.super_class = &OBJC_METACLASS____TtC10FinanceKit37ManagedBackgroundDeliveryRegistration;
  v0 = objc_msgSendSuper2(&v3, sel_fetchRequest);
  v1 = sub_1B7801498();

  return v1;
}

uint64_t static ManagedBackgroundDeliveryRegistration.fetchAllRegistrations(for:context:)(uint64_t a1)
{
  v6.receiver = swift_getObjCClassFromMetadata();
  v6.super_class = &OBJC_METACLASS____TtC10FinanceKit37ManagedBackgroundDeliveryRegistration;
  v2 = objc_msgSendSuper2(&v6, sel_fetchRequest);
  v3 = _s10FinanceKit37ManagedBackgroundDeliveryRegistrationC12predicateFor9dataTypesSo11NSPredicateCSayAA0A5StoreC0D8DataTypeOG_tFZ_0(a1);
  [v2 setPredicate_];

  v4 = sub_1B7801498();
  return v4;
}

uint64_t static ManagedBackgroundDeliveryRegistration.fetchPendingRegistrations(for:newestDeliveryDate:context:)(unsigned __int8 *a1)
{
  v1 = *a1;
  v11.receiver = swift_getObjCClassFromMetadata();
  v11.super_class = &OBJC_METACLASS____TtC10FinanceKit37ManagedBackgroundDeliveryRegistration;
  v2 = objc_msgSendSuper2(&v11, sel_fetchRequest);
  if (v1)
  {
    v10 = v1;
    updated = _s10FinanceKit37ManagedBackgroundDeliveryRegistrationC32predicateForPendingRegistrations15updateFrequency06newestE4DateSo11NSPredicateCAA0A5StoreC06UpdateL0O_10Foundation0N0VtFZ_0(&v10);
  }

  else
  {
    sub_1B7205540(0, &qword_1EDAFAF30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
    v4 = swift_allocObject();
    v5 = MEMORY[0x1E69E7290];
    *(v4 + 16) = xmmword_1B7807CD0;
    v6 = MEMORY[0x1E69E72E8];
    *(v4 + 56) = v5;
    *(v4 + 64) = v6;
    *(v4 + 32) = 0;
    updated = sub_1B78010E8();
  }

  v7 = updated;
  [v2 setPredicate_];

  v8 = sub_1B7801498();
  return v8;
}

uint64_t static ManagedBackgroundDeliveryRegistration.predicateFor(updateFrequency:)(unsigned __int8 *a1)
{
  v1 = *a1;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7290];
  *(v2 + 16) = xmmword_1B7807CD0;
  v4 = MEMORY[0x1E69E72E8];
  *(v2 + 56) = v3;
  *(v2 + 64) = v4;
  *(v2 + 32) = v1;
  return sub_1B78010E8();
}

uint64_t static ManagedBackgroundDeliveryRegistration.fetchAllPendingRegistrations(until:context:)()
{
  v4.receiver = swift_getObjCClassFromMetadata();
  v4.super_class = &OBJC_METACLASS____TtC10FinanceKit37ManagedBackgroundDeliveryRegistration;
  v0 = objc_msgSendSuper2(&v4, sel_fetchRequest);
  v1 = _s10FinanceKit37ManagedBackgroundDeliveryRegistrationC32predicateForPendingRegistrations06newestE4DateSo11NSPredicateC10Foundation0L0V_tFZ_0();
  [v0 setPredicate_];

  v2 = sub_1B7801498();
  return v2;
}

uint64_t static ManagedBackgroundDeliveryRegistration.fetchUpcomingRegistrations(for:after:context:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7.receiver = swift_getObjCClassFromMetadata();
  v7.super_class = &OBJC_METACLASS____TtC10FinanceKit37ManagedBackgroundDeliveryRegistration;
  v2 = objc_msgSendSuper2(&v7, sel_fetchRequest);
  v6 = v1;
  updated = _s10FinanceKit37ManagedBackgroundDeliveryRegistrationC33predicateForUpcomingRegistrations15updateFrequency5afterSo11NSPredicateCAA0A5StoreC06UpdateL0O_10Foundation4DateVtFZ_0(&v6);
  [v2 setPredicate_];

  v4 = sub_1B7801498();
  return v4;
}

id static ManagedBackgroundDeliveryRegistration.createOrUpdate(dataType:creationDate:updateFrequency:application:context:)(unsigned __int8 *a1, uint64_t a2, unsigned __int8 *a3, void *a4, uint64_t a5)
{
  v44 = a5;
  v41 = a2;
  v9 = sub_1B77FF988();
  v43 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v40 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - v16;
  v18 = *a1;
  v47 = *a3;
  v48 = v18;
  v42 = a4;
  v19 = [a4 identifier];
  v20 = sub_1B7800868();
  v22 = v21;

  v46[0] = v20;
  v46[1] = v22;
  v23 = v44;
  v24 = v45;
  v25 = static ManagedBackgroundDeliveryRegistration.existingRegistration(for:bundleIdentifier:context:)(&v48, v46);
  if (v24)
  {
  }

  else
  {
    v19 = v25;
    v40 = v15;
    v45 = 0;

    if (v19)
    {
      v26 = [v19 lastDeliveryDate];
      v27 = v17;
      sub_1B77FF928();

      v28 = [v19 deliverySequenceNumber];
      v29 = [v19 scheduleSequenceNumber];
      v30 = sub_1B77FF8B8();
      [v19 setLastDeliveryDate_];

      v31 = v40;
      sub_1B77FF938();
      v32 = sub_1B77FF8B8();
      v33 = *(v43 + 8);
      v33(v31, v9);
      [v19 setModificationDate_];

      [v19 setUpdateFrequencyValue_];
      [v19 setDeliverySequenceNumber_];
      [v19 setScheduleSequenceNumber_];
      v33(v27, v9);
    }

    else
    {
      v34 = v43;
      (*(v43 + 16))(v12, v41, v9);
      v19 = [objc_allocWithZone(v5) initWithContext_];
      v35 = sub_1B7800838();

      [v19 setDataTypeValue_];

      v36 = sub_1B77FF8B8();
      [v19 setLastDeliveryDate_];

      v37 = sub_1B77FF8B8();
      [v19 setCreationDate_];

      v38 = sub_1B77FF8B8();
      [v19 setModificationDate_];

      [v19 setUpdateFrequencyValue_];
      [v19 setDeliverySequenceNumber_];
      [v19 setScheduleSequenceNumber_];
      [v19 setApplication_];

      (*(v34 + 8))(v12, v9);
    }
  }

  return v19;
}

void static ManagedBackgroundDeliveryRegistration.updateIfExists(dataType:lastDeliveryDate:deliverySequenceNumber:bundleIdentifier:context:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = a3;
  v7 = sub_1B77FF988();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a4;
  v12 = a4[1];
  v22 = *a1;
  v21[0] = v11;
  v21[1] = v12;
  v13 = static ManagedBackgroundDeliveryRegistration.existingRegistration(for:bundleIdentifier:context:)(&v22, v21);
  if (!v4)
  {
    if (v13)
    {
      v14 = v13;
      ManagedBackgroundDeliveryRegistration.updateFrequency.getter(v21);
      v15 = LOBYTE(v21[0]);
      v16 = [v14 scheduleSequenceNumber];
      v17 = sub_1B77FF8B8();
      [v14 setLastDeliveryDate_];

      sub_1B77FF938();
      v18 = sub_1B77FF8B8();
      (*(v8 + 8))(v10, v7);
      [v14 setModificationDate_];

      [v14 setUpdateFrequencyValue_];
      [v14 setDeliverySequenceNumber_];
      [v14 setScheduleSequenceNumber_];
    }
  }
}

void static ManagedBackgroundDeliveryRegistration.updateIfExists(dataType:lastDeliveryDate:scheduleSequenceNumber:bundleIdentifier:context:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v20 = a3;
  v7 = sub_1B77FF988();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a4;
  v12 = a4[1];
  v22 = *a1;
  v21[0] = v11;
  v21[1] = v12;
  v13 = static ManagedBackgroundDeliveryRegistration.existingRegistration(for:bundleIdentifier:context:)(&v22, v21);
  if (!v4)
  {
    if (v13)
    {
      v14 = v13;
      ManagedBackgroundDeliveryRegistration.updateFrequency.getter(v21);
      v15 = LOBYTE(v21[0]);
      v16 = [v14 deliverySequenceNumber];
      v17 = sub_1B77FF8B8();
      [v14 setLastDeliveryDate_];

      sub_1B77FF938();
      v18 = sub_1B77FF8B8();
      (*(v8 + 8))(v10, v7);
      [v14 setModificationDate_];

      [v14 setUpdateFrequencyValue_];
      [v14 setDeliverySequenceNumber_];
      [v14 setScheduleSequenceNumber_];
    }
  }
}

Swift::Void __swiftcall ManagedBackgroundDeliveryRegistration.update(scheduleSequenceNumber:)(Swift::Int64 scheduleSequenceNumber)
{
  v2 = v1;
  v4 = sub_1B77FF988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v17[-v9];
  v11 = [v1 lastDeliveryDate];
  sub_1B77FF928();

  ManagedBackgroundDeliveryRegistration.updateFrequency.getter(&v18);
  v12 = v18;
  v13 = [v2 deliverySequenceNumber];
  v14 = sub_1B77FF8B8();
  [v2 setLastDeliveryDate_];

  sub_1B77FF938();
  v15 = sub_1B77FF8B8();
  v16 = *(v5 + 8);
  v16(v8, v4);
  [v2 setModificationDate_];

  [v2 setUpdateFrequencyValue_];
  [v2 setDeliverySequenceNumber_];
  [v2 setScheduleSequenceNumber_];
  v16(v10, v4);
}

uint64_t static ManagedBackgroundDeliveryRegistration.deleteRegistration(for:bundleIdentifier:context:)(unsigned __int8 *a1, uint64_t *a2, void *a3)
{
  v5 = *a2;
  v6 = a2[1];
  v12 = *a1;
  v11[0] = v5;
  v11[1] = v6;
  v7 = static ManagedBackgroundDeliveryRegistration.existingRegistration(for:bundleIdentifier:context:)(&v12, v11);
  if (!v3)
  {
    if (v7)
    {
      v9 = v7;
      [a3 deleteObject_];

      v8 = 1;
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

void ManagedBackgroundDeliveryRegistration.model.getter(char *a1@<X8>)
{
  v3 = [v1 dataTypeValue];
  v4 = sub_1B7800868();
  v6 = v5;

  FinanceStore.BackgroundDataType.init(from:)(v4, v6, &v20);
  v7 = v20;
  v8 = [v1 lastDeliveryDate];
  v9 = type metadata accessor for BackgroundDeliveryRegistration();
  sub_1B77FF928();

  ManagedBackgroundDeliveryRegistration.updateFrequency.getter(&v19);
  v10 = v19;
  v11 = [v1 deliverySequenceNumber];
  v12 = [v1 scheduleSequenceNumber];
  v13 = [v1 application];
  v14 = [v13 identifier];

  v15 = sub_1B7800868();
  v17 = v16;

  *a1 = v7;
  a1[v9[6]] = v10;
  *&a1[v9[7]] = v11;
  *&a1[v9[8]] = v12;
  v18 = &a1[v9[9]];
  *v18 = v15;
  v18[1] = v17;
}

uint64_t _s10FinanceKit37ManagedBackgroundDeliveryRegistrationC12predicateFor9dataTypesSo11NSPredicateCSayAA0A5StoreC0D8DataTypeOG_tFZ_0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1B71FDB50(0, v1, 0);
    v2 = v20;
    v4 = (a1 + 32);
    v5 = "FinancialData.accountBalance";
    v6 = "FinancialData.transaction";
    do
    {
      v8 = *v4++;
      v7 = v8;
      v9 = 0xD00000000000001CLL;
      if (v8 == 1)
      {
        v10 = v6;
      }

      else
      {
        v9 = 0xD000000000000019;
        v10 = "FinanceKit.XPCArray";
      }

      if (v7)
      {
        v11 = v9;
      }

      else
      {
        v11 = 0xD000000000000015;
      }

      if (v7)
      {
        v12 = v10;
      }

      else
      {
        v12 = v5;
      }

      v21 = v2;
      v14 = *(v2 + 16);
      v13 = *(v2 + 24);
      if (v14 >= v13 >> 1)
      {
        v19 = v5;
        v16 = v6;
        sub_1B71FDB50((v13 > 1), v14 + 1, 1);
        v6 = v16;
        v5 = v19;
        v2 = v21;
      }

      *(v2 + 16) = v14 + 1;
      v15 = v2 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12 | 0x8000000000000000;
      --v1;
    }

    while (v1);
  }

  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1B7807CD0;
  *(v17 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A670);
  *(v17 + 64) = sub_1B7220068();
  *(v17 + 32) = v2;
  return sub_1B78010E8();
}

id _s10FinanceKit37ManagedBackgroundDeliveryRegistrationC32predicateForPendingRegistrations15updateFrequency06newestE4DateSo11NSPredicateCAA0A5StoreC06UpdateL0O_10Foundation0N0VtFZ_0(unsigned __int8 *a1)
{
  v2 = sub_1B77FF988();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_1B77FF8F8();
  v7 = sub_1B77FF8B8();
  (*(v3 + 8))(v5, v2);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v8 = swift_allocObject();
  v19 = xmmword_1B7807CD0;
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = sub_1B7205540(0, &qword_1EDAF93C8);
  *(v8 + 64) = sub_1B71B592C();
  *(v8 + 32) = v7;
  v9 = v7;
  v10 = sub_1B78010E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B781E650;
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7290];
  *(v12 + 16) = v19;
  v14 = MEMORY[0x1E69E72E8];
  *(v12 + 56) = v13;
  *(v12 + 64) = v14;
  *(v12 + 32) = v6;
  *(v11 + 32) = sub_1B78010E8();
  *(v11 + 40) = sub_1B78010E8();
  *(v11 + 48) = v10;
  v15 = v10;
  v16 = sub_1B7800C18();

  v17 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v17;
}

id _s10FinanceKit37ManagedBackgroundDeliveryRegistrationC32predicateForPendingRegistrations06newestE4DateSo11NSPredicateC10Foundation0L0V_tFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B782D420;
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v1 = swift_allocObject();
  v2 = MEMORY[0x1E69E7290];
  *(v1 + 16) = xmmword_1B7807CD0;
  v3 = MEMORY[0x1E69E72E8];
  *(v1 + 56) = v2;
  *(v1 + 64) = v3;
  *(v1 + 32) = 0;
  *(v0 + 32) = sub_1B78010E8();
  v9 = 1;
  *(v0 + 40) = _s10FinanceKit37ManagedBackgroundDeliveryRegistrationC32predicateForPendingRegistrations15updateFrequency06newestE4DateSo11NSPredicateCAA0A5StoreC06UpdateL0O_10Foundation0N0VtFZ_0(&v9);
  v8 = 2;
  *(v0 + 48) = _s10FinanceKit37ManagedBackgroundDeliveryRegistrationC32predicateForPendingRegistrations15updateFrequency06newestE4DateSo11NSPredicateCAA0A5StoreC06UpdateL0O_10Foundation0N0VtFZ_0(&v8);
  v7 = 3;
  *(v0 + 56) = _s10FinanceKit37ManagedBackgroundDeliveryRegistrationC32predicateForPendingRegistrations15updateFrequency06newestE4DateSo11NSPredicateCAA0A5StoreC06UpdateL0O_10Foundation0N0VtFZ_0(&v7);
  v4 = sub_1B7800C18();

  v5 = [objc_opt_self() orPredicateWithSubpredicates_];

  return v5;
}

id _s10FinanceKit37ManagedBackgroundDeliveryRegistrationC33predicateForUpcomingRegistrations15updateFrequency5afterSo11NSPredicateCAA0A5StoreC06UpdateL0O_10Foundation4DateVtFZ_0(unsigned __int8 *a1)
{
  v2 = sub_1B77FF988();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_1B77FF8F8();
  v7 = sub_1B77FF8B8();
  (*(v3 + 8))(v5, v2);
  sub_1B7205540(0, &qword_1EDAFAF30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v8 = swift_allocObject();
  v19 = xmmword_1B7807CD0;
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = sub_1B7205540(0, &qword_1EDAF93C8);
  *(v8 + 64) = sub_1B71B592C();
  *(v8 + 32) = v7;
  v9 = v7;
  v10 = sub_1B78010E8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1B781E650;
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7290];
  *(v12 + 16) = v19;
  v14 = MEMORY[0x1E69E72E8];
  *(v12 + 56) = v13;
  *(v12 + 64) = v14;
  *(v12 + 32) = v6;
  *(v11 + 32) = sub_1B78010E8();
  *(v11 + 40) = sub_1B78010E8();
  *(v11 + 48) = v10;
  v15 = v10;
  v16 = sub_1B7800C18();

  v17 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v17;
}

unint64_t sub_1B74612DC()
{
  result = qword_1EB9950D8;
  if (!qword_1EB9950D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9950D8);
  }

  return result;
}

uint64_t sub_1B7461394@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 launchURL];
  if (v3)
  {
    v4 = v3;
    sub_1B77FF478();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1B77FF4F8();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_1B7461438(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1B7228664(a1, &v11 - v5);
  v7 = *a2;
  v8 = sub_1B77FF4F8();
  v9 = *(v8 - 8);
  v10 = 0;
  if ((*(v9 + 48))(v6, 1, v8) != 1)
  {
    v10 = sub_1B77FF3F8();
    (*(v9 + 8))(v6, v8);
  }

  [v7 setLaunchURL_];
}

void sub_1B7461564(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 customProductPageIdentifier];
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

void sub_1B74615CC(uint64_t a1, void **a2)
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
  [v2 setCustomProductPageIdentifier_];
}

id ManagedOrderApplication.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id ManagedOrderApplication.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = swift_getObjectType();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id ManagedOrderApplication.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id static ManagedOrderApplication.fetchRequest()()
{
  v2.receiver = swift_getObjCClassFromMetadata();
  v2.super_class = &OBJC_METACLASS____TtC10FinanceKit23ManagedOrderApplication;
  v0 = objc_msgSendSuper2(&v2, sel_fetchRequest);

  return v0;
}

id static ManagedOrderApplication.existingObject(with:in:)(uint64_t a1, id a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  v2 = [a2 existingObjectWithID:a1 error:v7];
  v3 = v7[0];
  if (v2)
  {
    v4 = swift_dynamicCastClassUnconditional();
    v5 = v3;
  }

  else
  {
    v4 = v7[0];
    sub_1B77FF318();

    swift_willThrow();
  }

  return v4;
}

id ManagedOrderApplication.__allocating_init(_:context:)(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  v9 = [objc_allocWithZone(v3) initWithContext_];
  v10 = *a1;
  v11 = v9;
  [v11 setStoreIdentifier_];
  v12 = type metadata accessor for RawOrderApplication();
  sub_1B7228664(a1 + *(v12 + 20), v8);
  v13 = sub_1B77FF4F8();
  v14 = *(v13 - 8);
  v15 = 0;
  if ((*(v14 + 48))(v8, 1, v13) != 1)
  {
    v15 = sub_1B77FF3F8();
    (*(v14 + 8))(v8, v13);
  }

  [v11 setLaunchURL_];

  if (*(a1 + *(v12 + 24) + 8))
  {
    v16 = sub_1B7800838();
  }

  else
  {
    v16 = 0;
  }

  [v11 setCustomProductPageIdentifier_];

  sub_1B7461A7C(a1);
  return v11;
}

uint64_t sub_1B7461A7C(uint64_t a1)
{
  v2 = type metadata accessor for RawOrderApplication();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ManagedOrderApplication.rawOrderApplication.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = [v2 storeIdentifier];
  v8 = [v2 launchURL];
  if (v8)
  {
    v9 = v8;
    sub_1B77FF478();

    v10 = sub_1B77FF4F8();
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  }

  else
  {
    v11 = sub_1B77FF4F8();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  v12 = [v2 customProductPageIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1B7800868();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = type metadata accessor for RawOrderApplication();
  v18 = *(v17 + 20);
  v19 = sub_1B77FF4F8();
  (*(*(v19 - 8) + 56))(&a1[v18], 1, 1, v19);
  v20 = &a1[*(v17 + 24)];
  *a1 = v7;
  result = sub_1B727CBBC(v6, &a1[v18]);
  *v20 = v14;
  v20[1] = v16;
  return result;
}

uint64_t ManagedOrderApplication.model.getter@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C70);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v20 - v5;
  v7 = [v2 storeIdentifier];
  v8 = [v2 launchURL];
  if (v8)
  {
    v9 = v8;
    sub_1B77FF478();

    v10 = sub_1B77FF4F8();
    (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  }

  else
  {
    v11 = sub_1B77FF4F8();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
  }

  v12 = [v2 customProductPageIdentifier];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1B7800868();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *a1 = v7;
  v17 = type metadata accessor for Order.Application();
  result = sub_1B726A728(v6, a1 + *(v17 + 20));
  v19 = (a1 + *(v17 + 24));
  *v19 = v14;
  v19[1] = v16;
  return result;
}

uint64_t BankConnectWebServiceInstitutionsRequest.countryCodes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t BankConnectWebServiceInstitutionsRequest.passTypeIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t BankConnectWebServiceInstitutionsRequest.passTypeIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t BankConnectWebServiceInstitutionsRequest.serialNumber.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t BankConnectWebServiceInstitutionsRequest.serialNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t BankConnectWebServiceInstitutionsRequest.associatedApplicationIdentifiers.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t BankConnectWebServiceInstitutionsRequest.associatedAdamIdentifiers.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t BankConnectWebServiceInstitutionsRequest.paymentType.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t BankConnectWebServiceInstitutionsRequest.paymentType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t BankConnectWebServiceInstitutionsRequest.organizationName.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t BankConnectWebServiceInstitutionsRequest.organizationName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

void __swiftcall BankConnectWebServiceInstitutionsRequest.init(countryCodes:passTypeIdentifier:serialNumber:associatedApplicationIdentifiers:associatedAdamIdentifiers:paymentType:organizationName:)(FinanceKit::BankConnectWebServiceInstitutionsRequest *__return_ptr retstr, Swift::OpaquePointer countryCodes, Swift::String passTypeIdentifier, Swift::String serialNumber, Swift::OpaquePointer associatedApplicationIdentifiers, Swift::OpaquePointer associatedAdamIdentifiers, Swift::String paymentType, Swift::String organizationName)
{
  retstr->countryCodes = countryCodes;
  retstr->passTypeIdentifier = passTypeIdentifier;
  retstr->serialNumber = serialNumber;
  retstr->associatedApplicationIdentifiers = associatedApplicationIdentifiers;
  retstr->associatedAdamIdentifiers = associatedAdamIdentifiers;
  retstr->paymentType._countAndFlagsBits = paymentType._countAndFlagsBits;
  *&retstr->paymentType._object = *&paymentType._object;
  retstr->organizationName._object = organizationName._object;
}

uint64_t BankConnectWebServiceInstitutionsRequest.jsonBody.getter@<X0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = v1[10];
  *a1 = 13142;
  a1[1] = 0xE200000000000000;
  a1[2] = v2;
  a1[3] = v7;
  a1[4] = v9;
  a1[5] = v10;
  a1[6] = v12;
  a1[7] = v3;
  a1[8] = v5;
  a1[9] = v8;
  a1[10] = v11;
  a1[11] = v4;
  a1[12] = v6;
}

void sub_1B74622BC(void *a1@<X2>, void *a2@<X8>)
{
  v5 = sub_1B77FE8B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v24 = a1;
    v11 = [v10 statusCode];
    if (v11 == 404)
    {
      v18 = type metadata accessor for RawBankConnectData.InstitutionsResponseWithExpiration(0);
      sub_1B746267C(a2 + *(v18 + 20));

      *a2 = 0;
    }

    else if (v11 == 200)
    {
      sub_1B77FE8F8();
      swift_allocObject();
      sub_1B77FE8E8();
      if (qword_1EB98E9B0 != -1)
      {
        swift_once();
      }

      v12 = __swift_project_value_buffer(v5, qword_1EB991BC8);
      (*(v6 + 16))(v8, v12, v5);
      sub_1B77FE8C8();
      sub_1B72CFDBC();
      sub_1B77FE8D8();

      if (v2)
      {
        type metadata accessor for FinanceNetworkError();
        sub_1B7465A54(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        swift_allocError();
        *v13 = v2;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        v21 = v25;
        v22 = type metadata accessor for RawBankConnectData.InstitutionsResponseWithExpiration(0);
        sub_1B746267C(a2 + *(v22 + 20));

        *a2 = v21;
      }
    }

    else
    {
      v19 = v11;
      type metadata accessor for FinanceNetworkError();
      sub_1B7465A54(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      swift_allocError();
      *v20 = v19;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B7465A54(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v15 = v14;
    v16 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v15 = v16;
    v15[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t sub_1B746267C@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995190);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995198);
  v38 = *(v6 - 8);
  v39 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - v10;
  v12 = sub_1B77FF988();
  v43 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v42 = &v37 - v16;
  v17 = sub_1B7800838();
  v18 = [v1 valueForHTTPHeaderField_];

  if (v18 && (sub_1B7800868(), v41 = a1, v18, v19 = sub_1B740602C(), v40 = v11, v20 = v19, v21 = sub_1B7800838(), a1 = v41, , v22 = [v20 dateFromString_], v20, v23 = v40, v21, v22))
  {
    sub_1B77FF928();

    v24 = v42;
    (*(v43 + 32))(v42, v15, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9951A0);
    sub_1B77FFE58();
    v25 = sub_1B7800838();
    v26 = [v1 valueForHTTPHeaderField_];

    if (v26)
    {
      sub_1B7800868();

      sub_1B7800AC8();

      sub_1B74658D4();
      v27 = v39;
      sub_1B77FFE48();
      sub_1B77FFE68();
      v30 = *(v38 + 8);
      v30(v9, v27);

      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9951B0);
      v32 = *(v31 - 8);
      v33 = (*(v32 + 48))(v5, 1, v31);
      if (v33 == 1)
      {
        v30(v40, v39);
        (*(v43 + 8))(v42, v12);
        sub_1B7465938(v5);
      }

      else
      {
        swift_getKeyPath();
        sub_1B77FFE98();

        (*(v32 + 8))(v5, v31);
        sub_1B7800F68();
        if ((v34 & 1) == 0)
        {
          v35 = v41;
          v36 = v42;
          sub_1B77FF828();
          v30(v40, v39);
          (*(v43 + 8))(v36, v12);
          return (*(v43 + 56))(v35, 0, 1, v12);
        }

        v30(v40, v39);
        (*(v43 + 8))(v42, v12);
      }

      a1 = v41;
    }

    else
    {
      (*(v38 + 8))(v23, v39);
      (*(v43 + 8))(v24, v12);
    }

    return (*(v43 + 56))(a1, 1, 1, v12);
  }

  else
  {
    v28 = *(v43 + 56);

    return v28(a1, 1, 1, v12);
  }
}

uint64_t BankConnectWebServiceInstitutionsForPassesRequest.Pass.passTypeIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BankConnectWebServiceInstitutionsForPassesRequest.Pass.passTypeIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BankConnectWebServiceInstitutionsForPassesRequest.Pass.serialNumber.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t BankConnectWebServiceInstitutionsForPassesRequest.Pass.serialNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t BankConnectWebServiceInstitutionsForPassesRequest.Pass.associatedApplicationIdentifiers.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t BankConnectWebServiceInstitutionsForPassesRequest.Pass.associatedAdamIdentifiers.setter(uint64_t a1)
{

  *(v1 + 40) = a1;
  return result;
}

uint64_t BankConnectWebServiceInstitutionsForPassesRequest.Pass.paymentType.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t BankConnectWebServiceInstitutionsForPassesRequest.Pass.paymentType.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t BankConnectWebServiceInstitutionsForPassesRequest.Pass.organizationName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t BankConnectWebServiceInstitutionsForPassesRequest.Pass.organizationName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

void __swiftcall BankConnectWebServiceInstitutionsForPassesRequest.Pass.init(passTypeIdentifier:serialNumber:associatedApplicationIdentifiers:associatedAdamIdentifiers:paymentType:organizationName:)(FinanceKit::BankConnectWebServiceInstitutionsForPassesRequest::Pass *__return_ptr retstr, Swift::String passTypeIdentifier, Swift::String serialNumber, Swift::OpaquePointer associatedApplicationIdentifiers, Swift::OpaquePointer associatedAdamIdentifiers, Swift::String paymentType, Swift::String organizationName)
{
  retstr->passTypeIdentifier = passTypeIdentifier;
  retstr->serialNumber = serialNumber;
  retstr->associatedApplicationIdentifiers = associatedApplicationIdentifiers;
  retstr->associatedAdamIdentifiers = associatedAdamIdentifiers;
  retstr->paymentType = paymentType;
  retstr->organizationName = organizationName;
}

uint64_t BankConnectWebServiceInstitutionsForPassesRequest.countryCodes.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t BankConnectWebServiceInstitutionsForPassesRequest.passes.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

FinanceKit::BankConnectWebServiceInstitutionsForPassesRequest __swiftcall BankConnectWebServiceInstitutionsForPassesRequest.init(countryCodes:passes:)(Swift::OpaquePointer countryCodes, Swift::OpaquePointer passes)
{
  v2->_rawValue = countryCodes._rawValue;
  v2[1]._rawValue = passes._rawValue;
  result.passes = passes;
  result.countryCodes = countryCodes;
  return result;
}

uint64_t BankConnectWebServiceInstitutionsForPassesRequest.jsonBody.getter@<X0>(void *a1@<X8>)
{
  v2 = a1;
  v3 = v1[1];
  v4 = *(v3 + 16);
  if (v4)
  {
    v23 = MEMORY[0x1E69E7CC0];
    v15 = *v1;

    sub_1B71FDB00(0, v4, 0);
    v5 = v23;
    v6 = (v3 + 56);
    do
    {
      v7 = *v6;
      v21 = *(v6 - 2);
      v22 = *(v6 - 1);
      v8 = v6[1];
      v9 = v6[2];
      v10 = v6[4];
      v19 = v6[3];
      v20 = *(v6 - 3);
      v11 = v6[6];
      v12 = *(v23 + 16);
      v17 = *(v23 + 24);
      v18 = v6[5];

      if (v12 >= v17 >> 1)
      {
        sub_1B71FDB00((v17 > 1), v12 + 1, 1);
      }

      v6 += 10;
      *(v23 + 16) = v12 + 1;
      v13 = (v23 + 80 * v12);
      v13[4] = v8;
      v13[5] = v9;
      v13[6] = v18;
      v13[7] = v11;
      v13[8] = v20;
      v13[9] = v21;
      v13[10] = v19;
      v13[11] = v10;
      v13[12] = v22;
      v13[13] = v7;
      --v4;
    }

    while (v4);
    result = v15;
    v2 = a1;
  }

  else
  {

    v5 = MEMORY[0x1E69E7CC0];
  }

  *v2 = 13142;
  v2[1] = 0xE200000000000000;
  v2[2] = result;
  v2[3] = v5;
  return result;
}

void sub_1B7463268(void *a1@<X2>, void *a2@<X8>)
{
  v5 = sub_1B77FE8B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v24 = a1;
    v11 = [v10 statusCode];
    if (v11 == 404)
    {
      v18 = type metadata accessor for RawBankConnectData.InstitutionsForPassesResponseWithExpiration(0);
      sub_1B746267C(a2 + *(v18 + 20));

      *a2 = MEMORY[0x1E69E7CC0];
    }

    else if (v11 == 200)
    {
      sub_1B77FE8F8();
      swift_allocObject();
      sub_1B77FE8E8();
      if (qword_1EB98E9B0 != -1)
      {
        swift_once();
      }

      v12 = __swift_project_value_buffer(v5, qword_1EB991BC8);
      (*(v6 + 16))(v8, v12, v5);
      sub_1B77FE8C8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9951B8);
      sub_1B74659A0();
      sub_1B77FE8D8();

      if (v2)
      {
        type metadata accessor for FinanceNetworkError();
        sub_1B7465A54(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        swift_allocError();
        *v13 = v2;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
        v21 = v25;
        v22 = type metadata accessor for RawBankConnectData.InstitutionsForPassesResponseWithExpiration(0);
        sub_1B746267C(a2 + *(v22 + 20));

        *a2 = v21;
      }
    }

    else
    {
      v19 = v11;
      type metadata accessor for FinanceNetworkError();
      sub_1B7465A54(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      swift_allocError();
      *v20 = v19;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B7465A54(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v15 = v14;
    v16 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v15 = v16;
    v15[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t BankConnectWebServiceInstitutionLogoRequest.init(assetURL:etag:timeoutSeconds:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v10 = sub_1B77FF4F8();
  (*(*(v10 - 8) + 32))(a4, a1, v10);
  result = type metadata accessor for BankConnectWebServiceInstitutionLogoRequest();
  v12 = (a4 + *(result + 20));
  *v12 = a2;
  v12[1] = a3;
  *(a4 + *(result + 24)) = a5;
  return result;
}

uint64_t BankConnectWebServiceInstitutionLogoRequest.makeHTTPHeaderFields()()
{
  v1 = (v0 + *(type metadata accessor for BankConnectWebServiceInstitutionLogoRequest() + 20));
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1B7807CD0;
    strcpy((v4 + 32), "If-None-Match");
    *(v4 + 46) = -4864;
    *(v4 + 48) = v3;
    *(v4 + 56) = v2;
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  return v4;
}

uint64_t BankConnectWebServiceInstitutionLogoRequest.makeURL(relativeTo:)@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FF4F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1B7463808(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  v3 = v2[1];
  if (v3)
  {
    v4 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB994C60);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1B7807CD0;
    strcpy((v5 + 32), "If-None-Match");
    *(v5 + 46) = -4864;
    *(v5 + 48) = v4;
    *(v5 + 56) = v3;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  return v5;
}

uint64_t sub_1B74638B8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B77FF4F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1B7463924()
{
  if (*v0)
  {
    return 0x6669646F4D746F6ELL;
  }

  else
  {
    return 0x6465696669646F6DLL;
  }
}

uint64_t sub_1B7463968@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6465696669646F6DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6669646F4D746F6ELL && a2 == 0xEB00000000646569)
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

uint64_t sub_1B7463A48(uint64_t a1)
{
  v2 = sub_1B7465104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7463A84(uint64_t a1)
{
  v2 = sub_1B7465104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7463AC0()
{
  if (*v0)
  {
    return 1734440037;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1B7463AE8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1B78020F8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1734440037 && a2 == 0xE400000000000000)
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

uint64_t sub_1B7463BBC(uint64_t a1)
{
  v2 = sub_1B74651AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7463BF8(uint64_t a1)
{
  v2 = sub_1B74651AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B7463C34(uint64_t a1)
{
  v2 = sub_1B7465158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7463C70(uint64_t a1)
{
  v2 = sub_1B7465158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BankConnectWebServiceInstitutionLogoResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9950E0);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9950E8);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9950F0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - v11;
  v13 = *v1;
  v22 = v1[1];
  v23 = v13;
  v14 = v1[3];
  v21 = v1[2];
  v15 = a1[3];
  v16 = a1;
  v17 = v14;
  __swift_project_boxed_opaque_existential_1(v16, v15);
  sub_1B7465104();
  sub_1B78023F8();
  if (v17 == 1)
  {
    LOBYTE(v29) = 1;
    sub_1B7465158();
    sub_1B7801ED8();
    (*(v24 + 8))(v5, v25);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    LOBYTE(v29) = 0;
    sub_1B74651AC();
    sub_1B7801ED8();
    v29 = v23;
    v30 = v22;
    v31 = 0;
    sub_1B727A60C();
    v20 = v27;
    v19 = v28;
    sub_1B7801FC8();
    if (!v19)
    {
      LOBYTE(v29) = 1;
      sub_1B7801EF8();
    }

    (*(v26 + 8))(v8, v20);
    return (*(v10 + 8))(v12, v9);
  }
}

uint64_t BankConnectWebServiceInstitutionLogoResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995110);
  v4 = *(v3 - 8);
  v35 = v3;
  v36 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v35 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995118);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995120);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - v12;
  v14 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1B7465104();
  v15 = v39;
  sub_1B78023C8();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  v39 = v11;
  v16 = v38;
  v17 = sub_1B7801E98();
  v18 = (2 * *(v17 + 16)) | 1;
  v43 = v17;
  v44 = v17 + 32;
  v45 = 0;
  v46 = v18;
  v19 = sub_1B721CE4C();
  v20 = v10;
  if (v19 == 2 || v45 != v46 >> 1)
  {
    v26 = sub_1B7801B18();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB991050);
    *v28 = &type metadata for BankConnectWebServiceInstitutionLogoResponse;
    sub_1B7801D68();
    sub_1B7801AE8();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
    swift_willThrow();
    (*(v39 + 8))(v13, v10);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }

  if (v19)
  {
    LOBYTE(v41) = 1;
    sub_1B7465158();
    sub_1B7801D38();
    v21 = 0;
    (*(v36 + 8))(v6, v35);
    (*(v39 + 8))(v13, v10);
    swift_unknownObjectRelease();
    v22 = 0;
    v23 = 0;
    v24 = 1;
  }

  else
  {
    LOBYTE(v41) = 0;
    sub_1B74651AC();
    v29 = v9;
    sub_1B7801D38();
    v47 = 0;
    sub_1B727A53C();
    sub_1B7801E48();
    v30 = v39;
    v23 = v42;
    v35 = v41;
    v36 = v20;
    v47 = 1;
    v31 = sub_1B7801D78();
    v32 = v30;
    v24 = v33;
    v34 = (v32 + 8);
    v21 = v31;
    (*(v37 + 8))(v29, v7);
    (*v34)(v13, v36);
    swift_unknownObjectRelease();
    v22 = v35;
  }

  *v16 = v22;
  v16[1] = v23;
  v16[2] = v21;
  v16[3] = v24;
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

void sub_1B74645D8(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = a3;
    v11 = [v9 statusCode];
    if (v11 == 304)
    {

      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
      a4[3] = 1;
    }

    else if (v11 == 200)
    {
      v12 = sub_1B7800838();
      v13 = [v9 valueForHTTPHeaderField_];

      if (v13)
      {
        v14 = sub_1B7800868();
        v16 = v15;
      }

      else
      {

        v14 = 0;
        v16 = 0;
      }

      *a4 = a1;
      a4[1] = a2;
      a4[2] = v14;
      a4[3] = v16;
      sub_1B720ABEC(a1, a2);
    }

    else
    {
      type metadata accessor for FinanceNetworkError();
      sub_1B7465A54(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      swift_allocError();
      *v21 = [v9 statusCode];
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B7465A54(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v18 = v17;
    v19 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v18 = v19;
    v18[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t BankConnectWebServiceInstitutionRequest.pathComponents.getter()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B780D870;
  *(v3 + 32) = 12662;
  *(v3 + 40) = 0xE200000000000000;
  strcpy((v3 + 48), "institutions");
  *(v3 + 61) = 0;
  *(v3 + 62) = -5120;
  *(v3 + 64) = v2;
  *(v3 + 72) = v1;

  return v3;
}

uint64_t BankConnectWebServiceInstitutionRequest.queryItems.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A660);
  sub_1B77FEAC8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  sub_1B77FEAB8();
  return v0;
}

uint64_t sub_1B7464980()
{
  v2 = *v0;
  v1 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB994C80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B780D870;
  *(v3 + 32) = 12662;
  *(v3 + 40) = 0xE200000000000000;
  strcpy((v3 + 48), "institutions");
  *(v3 + 61) = 0;
  *(v3 + 62) = -5120;
  *(v3 + 64) = v2;
  *(v3 + 72) = v1;

  return v3;
}

uint64_t sub_1B7464A14()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A660);
  sub_1B77FEAC8();
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1B7807CD0;
  sub_1B77FEAB8();
  return v0;
}

void sub_1B7464AE8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1B77FE8B8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v9 = swift_dynamicCastObjCClass();
  if (v9)
  {
    v10 = v9;
    v23 = v3;
    v11 = a3;
    v12 = [v10 statusCode];
    if (v12 == 200)
    {
      sub_1B77FE8F8();
      swift_allocObject();
      sub_1B77FE8E8();
      if (qword_1EB98E9B0 != -1)
      {
        swift_once();
      }

      v13 = __swift_project_value_buffer(v5, qword_1EB991BC8);
      (*(v6 + 16))(v8, v13, v5);
      sub_1B77FE8C8();
      type metadata accessor for RawBankConnectData.Institution(0);
      sub_1B7465A54(&qword_1EB995188, type metadata accessor for RawBankConnectData.Institution);
      v14 = v23;
      sub_1B77FE8D8();
      if (v14)
      {

        type metadata accessor for FinanceNetworkError();
        sub_1B7465A54(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
        swift_allocError();
        *v15 = v14;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
      }

      else
      {
      }
    }

    else
    {
      v20 = v12;
      type metadata accessor for FinanceNetworkError();
      sub_1B7465A54(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
      swift_allocError();
      *v21 = v20;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    type metadata accessor for FinanceNetworkError();
    sub_1B7465A54(&qword_1EB994C00, type metadata accessor for FinanceNetworkError);
    swift_allocError();
    v17 = v16;
    v18 = sub_1B72806BC();
    ObjectType = swift_getObjectType();
    *v17 = v18;
    v17[1] = ObjectType;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }
}

uint64_t type metadata accessor for BankConnectWebServiceInstitutionLogoRequest()
{
  result = qword_1EB995138;
  if (!qword_1EB995138)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s10FinanceKit44BankConnectWebServiceInstitutionLogoResponseO2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v7 = *a2;
  v6 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if (v5 != 1)
  {
    if (v9 != 1)
    {
      sub_1B7465A9C(*a2, a2[1], v8, v9);
      sub_1B7465A9C(v3, v2, v4, v5);
      if (sub_1B73FC434(v3, v2, v7, v6))
      {
        if (v5)
        {
          if (!v9)
          {
            sub_1B7465AE0(v3, v2, v4, v5);
            v10 = v7;
            v11 = v6;
            v12 = v8;
            v13 = 0;
            goto LABEL_7;
          }

          if (v4 == v8 && v5 == v9)
          {
            sub_1B7465AE0(v3, v2, v4, v5);
            sub_1B7465AE0(v7, v6, v4, v5);
            return 1;
          }

          v15 = sub_1B78020F8();
          sub_1B7465AE0(v3, v2, v4, v5);
          sub_1B7465AE0(v7, v6, v8, v9);
          if ((v15 & 1) == 0)
          {
            return 0;
          }
        }

        else
        {

          sub_1B7465AE0(v3, v2, v4, 0);
          sub_1B7465AE0(v7, v6, v8, v9);
          if (v9)
          {

            return 0;
          }
        }

        return 1;
      }

LABEL_6:
      sub_1B7465AE0(v3, v2, v4, v5);
      v10 = v7;
      v11 = v6;
      v12 = v8;
      v13 = v9;
LABEL_7:
      sub_1B7465AE0(v10, v11, v12, v13);
      return 0;
    }

LABEL_5:
    sub_1B7465A9C(*a2, a2[1], v8, v9);
    sub_1B7465A9C(v3, v2, v4, v5);
    goto LABEL_6;
  }

  if (v9 != 1)
  {
    goto LABEL_5;
  }

  sub_1B7465AE0(*a1, v2, v4, 1);
  sub_1B7465AE0(v7, v6, v8, 1);
  return v9;
}

unint64_t sub_1B7465104()
{
  result = qword_1EB9950F8;
  if (!qword_1EB9950F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9950F8);
  }

  return result;
}

unint64_t sub_1B7465158()
{
  result = qword_1EB995100;
  if (!qword_1EB995100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995100);
  }

  return result;
}

unint64_t sub_1B74651AC()
{
  result = qword_1EB995108;
  if (!qword_1EB995108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995108);
  }

  return result;
}

unint64_t sub_1B7465204()
{
  result = qword_1EB995128;
  if (!qword_1EB995128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995128);
  }

  return result;
}

unint64_t sub_1B746525C()
{
  result = qword_1EB995130;
  if (!qword_1EB995130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995130);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OrderBundleValidator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for OrderBundleValidator(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1B7465354(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_1B746539C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B7465428()
{
  sub_1B77FF4F8();
  if (v0 <= 0x3F)
  {
    sub_1B7280028();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_10FinanceKit44BankConnectWebServiceInstitutionLogoResponseO(uint64_t a1)
{
  v1 = *(a1 + 24);
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

uint64_t sub_1B74654D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 32))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  if ((v4 + 1) >= 2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B7465534(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

void *sub_1B7465594(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 - 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[3] = a2;
  }

  return result;
}

unint64_t sub_1B7465618()
{
  result = qword_1EB995148;
  if (!qword_1EB995148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995148);
  }

  return result;
}

unint64_t sub_1B7465670()
{
  result = qword_1EB995150;
  if (!qword_1EB995150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995150);
  }

  return result;
}

unint64_t sub_1B74656C8()
{
  result = qword_1EB995158;
  if (!qword_1EB995158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995158);
  }

  return result;
}

unint64_t sub_1B7465720()
{
  result = qword_1EB995160;
  if (!qword_1EB995160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995160);
  }

  return result;
}

unint64_t sub_1B7465778()
{
  result = qword_1EB995168;
  if (!qword_1EB995168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995168);
  }

  return result;
}

unint64_t sub_1B74657D0()
{
  result = qword_1EB995170;
  if (!qword_1EB995170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995170);
  }

  return result;
}

unint64_t sub_1B7465828()
{
  result = qword_1EB995178;
  if (!qword_1EB995178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995178);
  }

  return result;
}

unint64_t sub_1B7465880()
{
  result = qword_1EB995180;
  if (!qword_1EB995180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB995180);
  }

  return result;
}

unint64_t sub_1B74658D4()
{
  result = qword_1EB9951A8;
  if (!qword_1EB9951A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB995198);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9951A8);
  }

  return result;
}

uint64_t sub_1B7465938(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995190);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B74659A0()
{
  result = qword_1EB9951C0;
  if (!qword_1EB9951C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB9951B8);
    sub_1B7465A54(&qword_1EB9951C8, type metadata accessor for RawBankConnectData.InstitutionForPassResponse);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB9951C0);
  }

  return result;
}

uint64_t sub_1B7465A54(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B7465A9C(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_1B720ABEC(result, a2);
  }

  return result;
}

uint64_t sub_1B7465AE0(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_1B720A388(result, a2);
  }

  return result;
}

uint64_t FinancePerformWithActivity<A>(named:block:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 56) = a5;
  *(v6 + 64) = a6;
  *(v6 + 96) = a4;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B7465BC4, 0, 0);
}

uint64_t sub_1B7465BC4(uint64_t a1, int a2)
{
  v3 = v2;
  v4 = *(v2 + 56);
  v5 = *(v2 + 40);
  *(v2 + 24) = 0;
  *(v2 + 16) = 0;
  v6 = FinanceActivityCreate(named:dso:detached:)(v5, a2, *(v2 + 96), &dword_1B7198000, 0);
  *(v2 + 72) = v6;
  os_activity_scope_enter(v6, (v2 + 16));
  v10 = (v4 + *v4);
  v7 = swift_task_alloc();
  *(v3 + 80) = v7;
  *v7 = v3;
  v7[1] = sub_1B7465D18;
  v8 = *(v3 + 32);

  return v10(v8);
}

uint64_t sub_1B7465D18()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B7465EF4;
  }

  else
  {
    v2 = sub_1B7465E58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B7465E58()
{
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  v1 = v0->opaque[1];

  return v1();
}

uint64_t sub_1B7465EF4()
{
  os_activity_scope_leave(v0 + 1);
  swift_unknownObjectRelease();
  v1 = v0->opaque[1];

  return v1();
}

uint64_t sub_1B7465F90()
{
  qword_1EDAFA650 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

id ManagedPreauthorizedPayment.init(id:paymentIdentifier:statusValue:schedulingTypeValue:paymentDescription:mandateName:mandateReason:classificationCode:purposeCode:accountObject:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, void *a16, void *a17)
{
  v19 = sub_1B746635C(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17);

  return v19;
}

id ManagedPreauthorizedPayment.__allocating_init(id:paymentIdentifier:statusValue:schedulingTypeValue:paymentDescription:mandateName:mandateReason:classificationCode:purposeCode:accountObject:context:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, void *a13, void *a14)
{
  v21 = objc_allocWithZone(v14);
  v22 = sub_1B746635C(a1, a2, a3, a4, a5, a6, a7, a8, a9, *(&a9 + 1), a10, *(&a10 + 1), a11, *(&a11 + 1), a12, a13, a14);

  return v22;
}

id ManagedPreauthorizedPayment.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedPreauthorizedPayment();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id _s10FinanceKit27ManagedPreauthorizedPaymentC19predicateForAccount4withSo11NSPredicateCAA014FullyQualifiedH10IdentifierV_tFZ_0(uint64_t *a1)
{
  v1 = a1[1];
  v12 = *a1;
  v3 = a1[2];
  v2 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB99A9F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B780C060;
  sub_1B729D790();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB996990);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1B7807CD0;
  v6 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v7 = sub_1B721FF04();
  *(v5 + 64) = v7;
  *(v5 + 32) = v3;
  *(v5 + 40) = v2;

  *(v4 + 32) = sub_1B78010E8();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1B7807CD0;
  *(v8 + 56) = v6;
  *(v8 + 64) = v7;
  *(v8 + 32) = v12;
  *(v8 + 40) = v1;
  *(v4 + 40) = sub_1B78010E8();
  v9 = sub_1B7800C18();

  v10 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v10;
}

id sub_1B746635C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  swift_getObjectType();
  v20 = [swift_getObjCClassFromMetadata() entity];
  v33.receiver = v17;
  v33.super_class = type metadata accessor for ManagedPreauthorizedPayment();
  v21 = objc_msgSendSuper2(&v33, sel_initWithEntity_insertIntoManagedObjectContext_, v20, a17);

  v22 = v21;
  v23 = sub_1B77FF9B8();
  [v22 setId_];

  v24 = sub_1B7800838();

  [v22 setPaymentIdentifier_];

  [v22 setStatusValue_];
  [v22 setSchedulingTypeValue_];
  v25 = sub_1B7800838();

  [v22 setPaymentDescription_];

  if (a9)
  {
    v26 = sub_1B7800838();
  }

  else
  {
    v26 = 0;
  }

  [v22 setMandateName_];

  if (a11)
  {
    v27 = sub_1B7800838();
  }

  else
  {
    v27 = 0;
  }

  [v22 setMandateReason_];

  if (a13)
  {
    v28 = sub_1B7800838();
  }

  else
  {
    v28 = 0;
  }

  [v22 setClassificationCode_];

  if (a15)
  {
    v29 = sub_1B7800838();
  }

  else
  {
    v29 = 0;
  }

  [v22 setPurposeCode_];

  [v22 setAccountObject_];
  v30 = sub_1B77FFA18();
  (*(*(v30 - 8) + 8))(a1, v30);
  return v22;
}

FinanceKit::CascadeExtractedOrder::OrderStatus_optional __swiftcall CascadeExtractedOrder.OrderStatus.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 5u)
  {
    v2 = 5;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t CascadeExtractedOrder.sanitizedOrderNumber.getter()
{
  v1 = (v0 + *(type metadata accessor for CascadeExtractedOrder(0) + 32));
  result = *v1;
  v3 = v1[1];
  if (v3)
  {
    return _s10FinanceKit12TrackedOrderO0D15NumberSanitizerO8sanitizeyS2SFZ_0(result, v3);
  }

  return result;
}

CNMutablePostalAddress_optional __swiftcall CNMutablePostalAddress.init(cascadeExtractedOrderAddress:)(FinanceKit::CascadeExtractedOrder::Address *cascadeExtractedOrderAddress)
{
  object = cascadeExtractedOrderAddress->country.value._object;
  if (cascadeExtractedOrderAddress->street.value._object)
  {
    v2 = 0;
  }

  else
  {
    v2 = cascadeExtractedOrderAddress->city.value._object == 0;
  }

  if (v2 && cascadeExtractedOrderAddress->state.value._object == 0 && cascadeExtractedOrderAddress->postalCode.value._object == 0 && object == 0)
  {
    swift_bridgeObjectRelease_n();
    v6 = 0;
  }

  else
  {
    v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

    v7 = sub_1B7800838();

    [v6 setStreet_];

    v8 = sub_1B7800838();

    [v6 setCity_];

    v9 = sub_1B7800838();

    [v6 setState_];

    v10 = sub_1B7800838();

    [v6 setPostalCode_];

    if (!object)
    {
    }

    v12 = sub_1B7800838();

    [v6 setCountry_];
  }

  v13 = v6;
  result.value.super.super.isa = v13;
  result.is_nil = v11;
  return result;
}

FinanceKit::CascadeExtractedOrder::OrderEmail::EmailType_optional __swiftcall CascadeExtractedOrder.OrderEmail.EmailType.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 9u)
  {
    v2 = 9;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.Merchant.displayName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.Merchant.displayName.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

FinanceKit::CascadeExtractedOrder::OrderEmail::OrderDetails::Merchant __swiftcall CascadeExtractedOrder.OrderEmail.OrderDetails.Merchant.init(displayName:)(Swift::String_optional displayName)
{
  object = displayName.value._object;
  countAndFlagsBits = displayName.value._countAndFlagsBits;
  v4 = v1;

  *v4 = countAndFlagsBits;
  v4[1] = object;
  result.displayName.value._object = v6;
  result.displayName.value._countAndFlagsBits = v5;
  return result;
}

uint64_t static CascadeExtractedOrder.OrderEmail.OrderDetails.Merchant.== infix(_:_:)(void *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (sub_1B78020F8() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1B7466C64(uint64_t a1)
{
  v2 = sub_1B7477988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7466CA0(uint64_t a1)
{
  v2 = sub_1B7477988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.Merchant.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9951D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7477988();
  sub_1B78023F8();
  sub_1B7801EF8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.Merchant.hash(into:)()
{
  if (!*(v0 + 8))
  {
    return sub_1B7802318();
  }

  sub_1B7802318();

  return sub_1B7800798();
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.Merchant.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1B78022F8();
  sub_1B7802318();
  if (v1)
  {
    sub_1B7800798();
  }

  return sub_1B7802368();
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.Merchant.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9951E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7477988();
  sub_1B78023C8();
  if (!v2)
  {
    v9 = sub_1B7801D78();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1B746708C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9951D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7477988();
  sub_1B78023F8();
  sub_1B7801EF8();
  return (*(v3 + 8))(v5, v2);
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.ShippingDetails.trackingNumber.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.ShippingDetails.trackingNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.ShippingDetails.carrierName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.ShippingDetails.carrierName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall CascadeExtractedOrder.OrderEmail.OrderDetails.ShippingDetails.init(shippingStatus:trackingNumber:carrierName:)(FinanceKit::CascadeExtractedOrder::OrderEmail::OrderDetails::ShippingDetails *__return_ptr retstr, FinanceKit::CascadeExtractedOrder::ShippingFulfillment::Status shippingStatus, Swift::String_optional trackingNumber, Swift::String_optional carrierName)
{
  retstr->shippingStatus = *shippingStatus;
  retstr->trackingNumber = trackingNumber;
  retstr->carrierName = carrierName;
}

uint64_t sub_1B7467328(uint64_t a1)
{
  v2 = sub_1B74779DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7467364(uint64_t a1)
{
  v2 = sub_1B74779DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.ShippingDetails.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9951E8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v12[2] = *(v1 + 2);
  v12[3] = v9;
  v10 = *(v1 + 3);
  v12[0] = *(v1 + 4);
  v12[1] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74779DC();
  sub_1B78023F8();
  v16 = v8;
  v15 = 0;
  sub_1B7477A30();
  sub_1B7801FC8();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v14 = 1;
  sub_1B7801EF8();
  v13 = 2;
  sub_1B7801EF8();
  return (*(v5 + 8))(v7, v4);
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.ShippingDetails.hash(into:)()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  sub_1B7802328();
  if (!v1)
  {
    sub_1B7802318();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_1B7802318();
  }

  sub_1B7802318();
  sub_1B7800798();
  if (!v2)
  {
    return sub_1B7802318();
  }

LABEL_3:
  sub_1B7802318();

  return sub_1B7800798();
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.ShippingDetails.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  sub_1B78022F8();
  sub_1B7802328();
  if (!v1)
  {
    sub_1B7802318();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_1B7802318();
    return sub_1B7802368();
  }

  sub_1B7802318();
  sub_1B7800798();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1B7802318();
  sub_1B7800798();
  return sub_1B7802368();
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.ShippingDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995200);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74779DC();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v23 = 0;
    sub_1B7477A84();
    sub_1B7801E48();
    v9 = v24;
    v22 = 1;
    v10 = sub_1B7801D78();
    v13 = v12;
    v20 = v10;
    v21 = 2;
    v14 = sub_1B7801D78();
    v16 = v15;
    v17 = *(v6 + 8);
    v19 = v14;
    v17(v8, v5);
    *a2 = v9;
    v18 = v19;
    *(a2 + 8) = v20;
    *(a2 + 16) = v13;
    *(a2 + 24) = v18;
    *(a2 + 32) = v16;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

FinanceKit::CascadeExtractedOrder::OrderEmail::OrderDetails::OrderContentType_optional __swiftcall CascadeExtractedOrder.OrderEmail.OrderDetails.OrderContentType.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 3u)
  {
    v2 = 3;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.orderNumber.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.orderNumber.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.merchant.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.merchant.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];

  *(v1 + 16) = v2;
  *(v1 + 24) = v3;
  return result;
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.shippingDetails.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 64);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + 48);
  *(a1 + 32) = v3;
}

__n128 CascadeExtractedOrder.OrderEmail.OrderDetails.shippingDetails.setter(char *a1)
{
  v3 = *a1;

  *(v1 + 32) = v3;
  result = *(a1 + 8);
  *(v1 + 56) = *(a1 + 24);
  *(v1 + 40) = result;
  return result;
}

void __swiftcall CascadeExtractedOrder.OrderEmail.OrderDetails.init(orderNumber:merchant:shippingDetails:orderContentType:)(FinanceKit::CascadeExtractedOrder::OrderEmail::OrderDetails *__return_ptr retstr, Swift::String_optional orderNumber, FinanceKit::CascadeExtractedOrder::OrderEmail::OrderDetails::Merchant merchant, FinanceKit::CascadeExtractedOrder::OrderEmail::OrderDetails::ShippingDetails *shippingDetails, FinanceKit::CascadeExtractedOrder::OrderEmail::OrderDetails::OrderContentType orderContentType)
{
  v5 = *merchant.displayName.value._object;
  shippingStatus = shippingDetails->shippingStatus;
  retstr->orderNumber = orderNumber;
  retstr->merchant = *merchant.displayName.value._countAndFlagsBits;
  retstr->shippingDetails.shippingStatus = v5;
  retstr->shippingDetails.trackingNumber = *(merchant.displayName.value._object + 8);
  retstr->shippingDetails.carrierName = *(merchant.displayName.value._object + 24);
  retstr->orderContentType = shippingStatus;
}

unint64_t sub_1B7467C50()
{
  v1 = 0x6D754E726564726FLL;
  v2 = 0x676E697070696873;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x746E61686372656DLL;
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

uint64_t sub_1B7467CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B747AA28(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7467D0C(uint64_t a1)
{
  v2 = sub_1B7477AD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7467D48(uint64_t a1)
{
  v2 = sub_1B7477AD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995210);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - v5;
  v7 = *(v1 + 24);
  v22 = *(v1 + 16);
  v23 = v7;
  v30 = *(v1 + 32);
  v8 = *(v1 + 40);
  v20 = *(v1 + 48);
  v21 = v8;
  v9 = *(v1 + 56);
  v18 = *(v1 + 64);
  v19 = v9;
  v17 = *(v1 + 72);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7477AD8();
  sub_1B78023F8();
  LOBYTE(v25) = 0;
  v10 = v24;
  sub_1B7801EF8();
  if (!v10)
  {
    v11 = v19;
    v12 = v20;
    v13 = v21;
    v14 = v30;
    v25 = v22;
    v26 = v23;
    v31 = 1;
    sub_1B7477B2C();

    sub_1B7801FC8();

    LOBYTE(v25) = v14;
    v26 = v13;
    v27 = v12;
    v28 = v11;
    v29 = v18;
    v31 = 2;
    sub_1B7477B80();

    sub_1B7801FC8();

    LOBYTE(v25) = v17;
    v31 = 3;
    sub_1B7477BD4();
    sub_1B7801FC8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.hash(into:)()
{
  v1 = v0[3];
  v2 = v0[6];
  v3 = v0[8];
  if (v0[1])
  {
    sub_1B7802318();
    sub_1B7800798();
    if (v1)
    {
LABEL_3:
      sub_1B7802318();
      sub_1B7800798();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1B7802318();
    if (v1)
    {
      goto LABEL_3;
    }
  }

  sub_1B7802318();
LABEL_6:
  sub_1B7802328();
  if (!v2)
  {
    sub_1B7802318();
    if (v3)
    {
      goto LABEL_8;
    }

LABEL_10:
    sub_1B7802318();
    return sub_1B7802328();
  }

  sub_1B7802318();
  sub_1B7800798();
  if (!v3)
  {
    goto LABEL_10;
  }

LABEL_8:
  sub_1B7802318();
  sub_1B7800798();
  return sub_1B7802328();
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.hashValue.getter()
{
  sub_1B78022F8();
  CascadeExtractedOrder.OrderEmail.OrderDetails.hash(into:)();
  return sub_1B7802368();
}

uint64_t CascadeExtractedOrder.OrderEmail.OrderDetails.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995238);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7477AD8();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v30) = 0;
    v9 = sub_1B7801D78();
    v11 = v10;
    v12 = v9;
    LOBYTE(v26) = 1;
    sub_1B7477C28();
    sub_1B7801E48();
    v25 = v30;
    LOBYTE(v26) = 2;
    sub_1B7477C7C();
    sub_1B7801E48();
    v21 = v12;
    v38 = v30;
    v23 = *(&v30 + 1);
    v24 = v31;
    v13 = v32;
    v22 = *(&v31 + 1);
    v39 = 3;
    sub_1B7477CD0();
    sub_1B7801E48();
    (*(v6 + 8))(v8, v5);
    HIDWORD(v20) = v40;
    v14 = v21;
    *&v26 = v21;
    *(&v26 + 1) = v11;
    v15 = v25;
    v27 = v25;
    LOBYTE(v28) = v38;
    v16 = v24;
    *(&v28 + 1) = v23;
    *v29 = v24;
    *&v29[8] = v22;
    *&v29[16] = v13;
    v29[24] = v40;
    v17 = *v29;
    a2[2] = v28;
    a2[3] = v17;
    v18 = v27;
    *a2 = v26;
    a2[1] = v18;
    *(a2 + 57) = *&v29[9];
    sub_1B7477D24(&v26, &v30);
    __swift_destroy_boxed_opaque_existential_1(a1);
    *&v30 = v14;
    *(&v30 + 1) = v11;
    v31 = v15;
    LOBYTE(v32) = v38;
    v33 = v23;
    v34 = v16;
    v35 = v22;
    v36 = v13;
    v37 = BYTE4(v20);
    return sub_1B7477D5C(&v30);
  }
}

uint64_t sub_1B7468548()
{
  sub_1B78022F8();
  CascadeExtractedOrder.OrderEmail.OrderDetails.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B746858C()
{
  sub_1B78022F8();
  CascadeExtractedOrder.OrderEmail.OrderDetails.hash(into:)();
  return sub_1B7802368();
}

uint64_t CascadeExtractedOrder.OrderEmail.messageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CascadeExtractedOrder.OrderEmail.messageID.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CascadeExtractedOrder.OrderEmail.messageIDHash.getter()
{
  v1 = sub_1B78006D8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1B78008E8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B7800478();
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v0;
  if (!v0[1])
  {
    return v13;
  }

  v22 = v2;
  v23 = v10;
  sub_1B78008C8();
  v14 = sub_1B7800878();
  v16 = v15;
  result = (*(v6 + 8))(v8, v5);
  if (v16 >> 60 != 15)
  {
    sub_1B7477D8C(&qword_1EB99ED20, MEMORY[0x1E6966620]);
    sub_1B7800468();
    sub_1B720ABEC(v14, v16);
    sub_1B72B82D4(v14, v16);
    sub_1B72380B8(v14, v16);
    sub_1B7800448();
    sub_1B72380B8(v14, v16);
    (*(v22 + 8))(v4, v1);
    v27 = v9;
    v28 = sub_1B7477D8C(&qword_1EB98F940, MEMORY[0x1E69663E0]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
    v19 = v23;
    (*(v23 + 16))(boxed_opaque_existential_1, v12, v9);
    __swift_project_boxed_opaque_existential_1(v26, v27);
    sub_1B77FEDA8();
    v20 = v24;
    v21 = v25;
    __swift_destroy_boxed_opaque_existential_1(v26);
    v13 = sub_1B72B71E4(v20, v21);
    sub_1B720A388(v20, v21);
    (*(v19 + 8))(v12, v9);
    return v13;
  }

  __break(1u);
  return result;
}

uint64_t CascadeExtractedOrder.OrderEmail.fromDisplayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for CascadeExtractedOrder.OrderEmail(0) + 36));

  return v1;
}

uint64_t CascadeExtractedOrder.OrderEmail.fromDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CascadeExtractedOrder.OrderEmail(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CascadeExtractedOrder.OrderEmail.toDisplayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for CascadeExtractedOrder.OrderEmail(0) + 44));

  return v1;
}

uint64_t CascadeExtractedOrder.OrderEmail.toDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CascadeExtractedOrder.OrderEmail(0) + 44));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CascadeExtractedOrder.OrderEmail.replyToEmailAddress.getter()
{
  v1 = *(v0 + *(type metadata accessor for CascadeExtractedOrder.OrderEmail(0) + 48));

  return v1;
}

uint64_t CascadeExtractedOrder.OrderEmail.replyToEmailAddress.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CascadeExtractedOrder.OrderEmail(0) + 48));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CascadeExtractedOrder.OrderEmail.replyToDisplayName.getter()
{
  v1 = *(v0 + *(type metadata accessor for CascadeExtractedOrder.OrderEmail(0) + 52));

  return v1;
}

uint64_t CascadeExtractedOrder.OrderEmail.replyToDisplayName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CascadeExtractedOrder.OrderEmail(0) + 52));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CascadeExtractedOrder.OrderEmail.emailType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t CascadeExtractedOrder.OrderEmail.emailType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t CascadeExtractedOrder.OrderEmail.spotlightUniqueIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for CascadeExtractedOrder.OrderEmail(0) + 60));

  return v1;
}

uint64_t CascadeExtractedOrder.OrderEmail.spotlightUniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for CascadeExtractedOrder.OrderEmail(0) + 60));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t CascadeExtractedOrder.OrderEmail.orderDetails.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CascadeExtractedOrder.OrderEmail(0) + 68));
  *&v12[9] = *(v3 + 57);
  v4 = *&v12[9];
  v5 = v3[3];
  v11 = v3[2];
  *v12 = v5;
  v6 = v3[1];
  v10[0] = *v3;
  v7 = v10[0];
  v10[1] = v6;
  a1[2] = v11;
  a1[3] = v5;
  *(a1 + 57) = v4;
  *a1 = v7;
  a1[1] = v6;
  return sub_1B7477D24(v10, &v9);
}

__n128 CascadeExtractedOrder.OrderEmail.orderDetails.setter(uint64_t a1)
{
  v3 = (v1 + *(type metadata accessor for CascadeExtractedOrder.OrderEmail(0) + 68));
  *&v9[9] = *(v3 + 57);
  v4 = v3[3];
  v8[2] = v3[2];
  *v9 = v4;
  v5 = v3[1];
  v8[0] = *v3;
  v8[1] = v5;
  sub_1B7477D5C(v8);
  v6 = *(a1 + 48);
  v3[2] = *(a1 + 32);
  v3[3] = v6;
  *(v3 + 57) = *(a1 + 57);
  result = *(a1 + 16);
  *v3 = *a1;
  v3[1] = result;
  return result;
}

__n128 CascadeExtractedOrder.OrderEmail.init(messageID:dateSent:subject:senderDomain:fromEmailAddress:fromDisplayName:toEmailAddress:toDisplayName:replyToEmailAddress:replyToDisplayName:emailType:spotlightUniqueIdentifier:spotlightDomainIdentifier:orderDetails:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26)
{
  v46 = *a21;
  v27 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  v28 = v27[5];
  v43 = v28;
  v29 = sub_1B77FF988();
  (*(*(v29 - 8) + 56))(&a9[v28], 1, 1, v29);
  v41 = &a9[v27[6]];
  v42 = &a9[v27[7]];
  v30 = &a9[v27[8]];
  v31 = &a9[v27[9]];
  v32 = &a9[v27[10]];
  v33 = &a9[v27[11]];
  v34 = &a9[v27[12]];
  v35 = &a9[v27[13]];
  v36 = &a9[v27[15]];
  v37 = &a9[v27[16]];
  *a9 = a1;
  *(a9 + 1) = a2;
  sub_1B72DFF88(a3, &a9[v43]);
  *v41 = a4;
  *(v41 + 1) = a5;
  *v42 = a6;
  *(v42 + 1) = a7;
  *v30 = a8;
  *(v30 + 1) = a10;
  *v31 = a11;
  *(v31 + 1) = a12;
  *v32 = a13;
  *(v32 + 1) = a14;
  *v33 = a15;
  *(v33 + 1) = a16;
  *v34 = a17;
  *(v34 + 1) = a18;
  *v35 = a19;
  *(v35 + 1) = a20;
  a9[v27[14]] = v46;
  *v36 = a22;
  *(v36 + 1) = a23;
  *v37 = a24;
  *(v37 + 1) = a25;
  v38 = &a9[v27[17]];
  v39 = *(a26 + 48);
  *(v38 + 2) = *(a26 + 32);
  *(v38 + 3) = v39;
  *(v38 + 57) = *(a26 + 57);
  result = *(a26 + 16);
  *v38 = *a26;
  *(v38 + 1) = result;
  return result;
}

unint64_t sub_1B7469510(char a1)
{
  result = 0x496567617373656DLL;
  switch(a1)
  {
    case 1:
      result = 0x746E655365746164;
      break;
    case 2:
      result = 0x7463656A627573;
      break;
    case 3:
      result = 0x6F447265646E6573;
      break;
    case 4:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x707369446D6F7266;
      break;
    case 6:
      result = 0x416C69616D456F74;
      break;
    case 7:
      result = 0x616C707369446F74;
      break;
    case 8:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x7079546C69616D65;
      break;
    case 11:
      result = 0xD000000000000019;
      break;
    case 12:
      result = 0xD000000000000019;
      break;
    case 13:
      result = 0x746544726564726FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B74696DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B747ABA0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B7469704(uint64_t a1)
{
  v2 = sub_1B7477DF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B7469740(uint64_t a1)
{
  v2 = sub_1B7477DF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CascadeExtractedOrder.OrderEmail.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995258);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7477DF4();
  sub_1B78023F8();
  LOBYTE(v23[0]) = 0;
  sub_1B7801EF8();
  if (!v2)
  {
    v9 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
    LOBYTE(v23[0]) = 1;
    sub_1B77FF988();
    sub_1B7477D8C(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
    LOBYTE(v23[0]) = 2;
    sub_1B7801EF8();
    LOBYTE(v23[0]) = 3;
    sub_1B7801EF8();
    LOBYTE(v23[0]) = 4;
    sub_1B7801EF8();
    LOBYTE(v23[0]) = 5;
    sub_1B7801EF8();
    LOBYTE(v23[0]) = 6;
    sub_1B7801EF8();
    LOBYTE(v23[0]) = 7;
    sub_1B7801EF8();
    LOBYTE(v23[0]) = 8;
    sub_1B7801EF8();
    LOBYTE(v23[0]) = 9;
    sub_1B7801EF8();
    LOBYTE(v23[0]) = *(v3 + *(v9 + 56));
    LOBYTE(v19) = 10;
    sub_1B7477E48();
    sub_1B7801FC8();
    LOBYTE(v23[0]) = 11;
    sub_1B7801EF8();
    v26 = 12;
    sub_1B7801EF8();
    v10 = (v3 + *(v9 + 68));
    v11 = v10[1];
    v12 = v10[3];
    v24 = v10[2];
    *v25 = v12;
    *&v25[9] = *(v10 + 57);
    v13 = v10[1];
    v23[0] = *v10;
    v23[1] = v13;
    v14 = v10[3];
    v21 = v24;
    v22[0] = v14;
    *(v22 + 9) = *(v10 + 57);
    v19 = v23[0];
    v20 = v11;
    v18 = 13;
    sub_1B7477D24(v23, v16);
    sub_1B7477E9C();
    sub_1B7801FC8();
    v16[2] = v21;
    *v17 = v22[0];
    *&v17[9] = *(v22 + 9);
    v16[1] = v20;
    v16[0] = v19;
    sub_1B7477D5C(v16);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CascadeExtractedOrder.OrderEmail.hash(into:)()
{
  v1 = sub_1B77FF988();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  if (*(v0 + 8))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  v8 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  sub_1B7280900(v0 + v8[5], v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1B7802318();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1B7802318();
    sub_1B7477D8C(&qword_1EB98EBB8, MEMORY[0x1E6969530]);
    sub_1B7800768();
    (*(v2 + 8))(v4, v1);
  }

  if (*(v0 + v8[6] + 8))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  if (*(v0 + v8[7] + 8))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  if (*(v0 + v8[8] + 8))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  if (*(v0 + v8[9] + 8))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  if (*(v0 + v8[10] + 8))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  if (*(v0 + v8[11] + 8))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  if (*(v0 + v8[12] + 8))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  if (*(v0 + v8[13] + 8))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  sub_1B7802328();
  if (*(v0 + v8[15] + 8))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  if (*(v0 + v8[16] + 8))
  {
    sub_1B7802318();
    sub_1B7800798();
  }

  else
  {
    sub_1B7802318();
  }

  v9 = (v0 + v8[17]);
  v10 = v9[3];
  v13[2] = v9[2];
  v14[0] = v10;
  *(v14 + 9) = *(v9 + 57);
  v11 = v9[1];
  v13[0] = *v9;
  v13[1] = v11;
  return CascadeExtractedOrder.OrderEmail.OrderDetails.hash(into:)();
}

uint64_t CascadeExtractedOrder.OrderEmail.hashValue.getter()
{
  sub_1B78022F8();
  CascadeExtractedOrder.OrderEmail.hash(into:)();
  return sub_1B7802368();
}

uint64_t CascadeExtractedOrder.OrderEmail.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v73 - v5;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995278);
  v75 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v8 = v73 - v7;
  v9 = type metadata accessor for CascadeExtractedOrder.OrderEmail(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(v10 + 20);
  v14 = sub_1B77FF988();
  v15 = *(*(v14 - 8) + 56);
  v83 = v12;
  v84 = v13;
  v15(v12 + v13, 1, 1, v14);
  v16 = a1[3];
  v79 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1B7477DF4();
  v76 = v8;
  sub_1B78023C8();
  if (v2)
  {
    v85 = v2;
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v78 = 0;
    v24 = v83;
    v25 = v84;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v79);

    sub_1B7205418(v24 + v25, &qword_1EB98EBD0);
  }

  v17 = v6;
  v18 = v9;
  v19 = v74;
  LOBYTE(v86) = 0;
  v21 = v76;
  v20 = v77;
  v22 = sub_1B7801D78();
  v85 = 0;
  v24 = v83;
  *v83 = v22;
  v24[1] = v23;
  v73[4] = v23;
  LOBYTE(v86) = 1;
  sub_1B7477D8C(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
  v27 = v85;
  sub_1B7801DB8();
  v85 = v27;
  v25 = v84;
  if (v27)
  {
    (*(v75 + 8))(v21, v20);
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v78 = 0;
    goto LABEL_4;
  }

  sub_1B72DFF88(v17, v24 + v84);
  LOBYTE(v86) = 2;
  v28 = v85;
  v29 = sub_1B7801D78();
  if (v28)
  {
    v85 = v28;
    (*(v75 + 8))(v21, v20);
    v80 = 0;
    v81 = 0;
    v82 = 0;
    v78 = 0;
    v25 = v84;
    goto LABEL_4;
  }

  v31 = (v24 + v18[6]);
  *v31 = v29;
  v31[1] = v30;
  v73[3] = v30;
  LOBYTE(v86) = 3;
  v32 = sub_1B7801D78();
  v33 = (v24 + v18[7]);
  *v33 = v32;
  v33[1] = v34;
  v73[2] = v34;
  LOBYTE(v86) = 4;
  v35 = sub_1B7801D78();
  v36 = (v24 + v18[8]);
  *v36 = v35;
  v36[1] = v37;
  v73[1] = v37;
  LOBYTE(v86) = 5;
  v38 = sub_1B7801D78();
  v39 = (v24 + v18[9]);
  *v39 = v38;
  v39[1] = v40;
  LOBYTE(v86) = 6;
  v41 = sub_1B7801D78();
  v42 = (v24 + v18[10]);
  *v42 = v41;
  v42[1] = v43;
  LOBYTE(v86) = 7;
  v44 = sub_1B7801D78();
  v45 = (v24 + v18[11]);
  *v45 = v44;
  v45[1] = v46;
  v73[0] = v46;
  LOBYTE(v86) = 8;
  v47 = sub_1B7801D78();
  v85 = 0;
  v48 = (v83 + v18[12]);
  *v48 = v47;
  v48[1] = v49;
  v78 = v49;
  LOBYTE(v86) = 9;
  v50 = v85;
  v51 = sub_1B7801D78();
  v82 = v52;
  v85 = v50;
  if (v50)
  {
    (*(v75 + 8))(v76, v77);
    v80 = 0;
    v81 = 0;
    v82 = 0;
LABEL_14:
    v24 = v83;
    v25 = v84;
    goto LABEL_4;
  }

  v53 = v82;
  v54 = (v83 + v18[13]);
  *v54 = v51;
  v54[1] = v53;
  v90 = 10;
  sub_1B7477EF0();
  v55 = v85;
  sub_1B7801E48();
  v85 = v55;
  if (v55 || (*(v83 + v18[14]) = v86, LOBYTE(v86) = 11, v56 = v85, v57 = sub_1B7801D78(), v81 = v58, (v85 = v56) != 0))
  {
    (*(v75 + 8))(v76, v77);
    v80 = 0;
    v81 = 0;
    goto LABEL_14;
  }

  v59 = (v83 + v18[15]);
  v60 = v81;
  *v59 = v57;
  v59[1] = v60;
  LOBYTE(v86) = 12;
  v61 = v85;
  v62 = sub_1B7801D78();
  v80 = v63;
  v85 = v61;
  if (v61)
  {
    (*(v75 + 8))(v76, v77);
    v80 = 0;
    goto LABEL_14;
  }

  v64 = (v83 + v18[16]);
  v65 = v80;
  *v64 = v62;
  v64[1] = v65;
  v90 = 13;
  sub_1B7477F44();
  v66 = v76;
  v67 = v77;
  v68 = v85;
  sub_1B7801E48();
  (*(v75 + 8))(v66, v67);
  v85 = v68;
  if (v68)
  {
    goto LABEL_14;
  }

  v69 = v83;
  v70 = (v83 + v18[17]);
  v71 = v89[0];
  v70[2] = v88;
  v70[3] = v71;
  *(v70 + 57) = *(v89 + 9);
  v72 = v87;
  *v70 = v86;
  v70[1] = v72;
  sub_1B747806C(v69, v19, type metadata accessor for CascadeExtractedOrder.OrderEmail);
  __swift_destroy_boxed_opaque_existential_1(v79);
  return sub_1B747800C(v69, type metadata accessor for CascadeExtractedOrder.OrderEmail);
}

uint64_t sub_1B746AAC4()
{
  sub_1B78022F8();
  CascadeExtractedOrder.OrderEmail.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B746AB08()
{
  sub_1B78022F8();
  CascadeExtractedOrder.OrderEmail.hash(into:)();
  return sub_1B7802368();
}

uint64_t sub_1B746ABAC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 20);

  return sub_1B7280900(v4, a2);
}

uint64_t sub_1B746AC10(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2 + *(a2(0) + 20);

  return sub_1B72DFF88(a1, v4);
}

uint64_t sub_1B746ACB8(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));

  return v2;
}

uint64_t sub_1B746AD18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t CascadeExtractedOrder.Merchant.init(displayName:displayNameUpdateDate:domainName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v12 = type metadata accessor for CascadeExtractedOrder.Merchant(0);
  v13 = *(v12 + 20);
  v14 = sub_1B77FF988();
  (*(*(v14 - 8) + 56))(&a6[v13], 1, 1, v14);
  v15 = &a6[*(v12 + 24)];
  *a6 = a1;
  *(a6 + 1) = a2;
  result = sub_1B72DFF88(a3, &a6[v13]);
  *v15 = a4;
  *(v15 + 1) = a5;
  return result;
}

uint64_t sub_1B746AE68()
{
  v1 = 0xD000000000000015;
  if (*v0 != 1)
  {
    v1 = 0x614E6E69616D6F64;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x4E79616C70736964;
  }
}

uint64_t sub_1B746AED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B747B024(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B746AEFC(uint64_t a1)
{
  v2 = sub_1B7477FB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B746AF38(uint64_t a1)
{
  v2 = sub_1B7477FB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CascadeExtractedOrder.Merchant.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995290);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7477FB8();
  sub_1B78023F8();
  v8[15] = 0;
  sub_1B7801EF8();
  if (!v1)
  {
    type metadata accessor for CascadeExtractedOrder.Merchant(0);
    v8[14] = 1;
    sub_1B77FF988();
    sub_1B7477D8C(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
    v8[13] = 2;
    sub_1B7801EF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CascadeExtractedOrder.Merchant.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v24 - v4;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9952A0);
  v27 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v24 - v5;
  v7 = type metadata accessor for CascadeExtractedOrder.Merchant(0);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v10 = 0;
  v10[1] = 0;
  v11 = *(v8 + 28);
  v12 = sub_1B77FF988();
  (*(*(v12 - 8) + 56))(v10 + v11, 1, 1, v12);
  v13 = (v10 + *(v8 + 32));
  *v13 = 0;
  v13[1] = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7477FB8();
  v28 = v6;
  v14 = v31;
  sub_1B78023C8();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v24 = v13;
    v25 = v11;
    v31 = a1;
    v15 = v29;
    v16 = v27;
    v17 = v28;
    v34 = 0;
    *v10 = sub_1B7801D78();
    v10[1] = v18;
    v33 = 1;
    sub_1B7477D8C(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
    sub_1B7801DB8();
    sub_1B72DFF88(v15, v10 + v25);
    v32 = 2;
    v20 = sub_1B7801D78();
    v22 = v21;
    (*(v16 + 8))(v17, v30);
    v23 = v24;
    *v24 = v20;
    v23[1] = v22;
    sub_1B747806C(v10, v26, type metadata accessor for CascadeExtractedOrder.Merchant);
    __swift_destroy_boxed_opaque_existential_1(v31);
  }

  return sub_1B747800C(v10, type metadata accessor for CascadeExtractedOrder.Merchant);
}

uint64_t CascadeExtractedOrder.Address.street.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t CascadeExtractedOrder.Address.street.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CascadeExtractedOrder.Address.city.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t CascadeExtractedOrder.Address.city.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t CascadeExtractedOrder.Address.state.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t CascadeExtractedOrder.Address.state.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t CascadeExtractedOrder.Address.postalCode.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t CascadeExtractedOrder.Address.postalCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t CascadeExtractedOrder.Address.country.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t CascadeExtractedOrder.Address.country.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return result;
}

void __swiftcall CascadeExtractedOrder.Address.init(street:city:state:postalCode:country:)(FinanceKit::CascadeExtractedOrder::Address *__return_ptr retstr, Swift::String_optional street, Swift::String_optional city, Swift::String_optional state, Swift::String_optional postalCode, Swift::String_optional country)
{
  retstr->street = street;
  retstr->city = city;
  retstr->state = state;
  retstr->postalCode = postalCode;
  retstr->country = country;
}

uint64_t sub_1B746B7DC()
{
  v1 = *v0;
  v2 = 0x746565727473;
  v3 = 0x6574617473;
  v4 = 0x6F436C6174736F70;
  if (v1 != 3)
  {
    v4 = 0x7972746E756F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 2037672291;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B746B86C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B747B150(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B746B894(uint64_t a1)
{
  v2 = sub_1B74780D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B746B8D0(uint64_t a1)
{
  v2 = sub_1B74780D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CascadeExtractedOrder.Address.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9952A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = v1[2];
  v13[7] = v1[3];
  v13[8] = v7;
  v8 = v1[4];
  v13[5] = v1[5];
  v13[6] = v8;
  v9 = v1[6];
  v13[3] = v1[7];
  v13[4] = v9;
  v10 = v1[8];
  v13[1] = v1[9];
  v13[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74780D4();
  sub_1B78023F8();
  v18 = 0;
  v11 = v13[9];
  sub_1B7801EF8();
  if (v11)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v17 = 1;
  sub_1B7801EF8();
  v16 = 2;
  sub_1B7801EF8();
  v15 = 3;
  sub_1B7801EF8();
  v14 = 4;
  sub_1B7801EF8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t CascadeExtractedOrder.Address.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9952B8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v29 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74780D4();
  sub_1B78023C8();
  if (v2)
  {
    v34 = v2;
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = 0uLL;
    v41 = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
  }

  else
  {
    LOBYTE(v40) = 0;
    *&v33 = sub_1B7801D78();
    *(&v33 + 1) = v10;
    LOBYTE(v40) = 1;
    v11 = sub_1B7801D78();
    v30 = a2;
    v32 = v11;
    v31 = v12;
    LOBYTE(v40) = 2;
    v13 = sub_1B7801D78();
    v15 = v14;
    LOBYTE(v40) = 3;
    v16 = sub_1B7801D78();
    v18 = v17;
    v49 = 4;
    v19 = sub_1B7801D78();
    v34 = 0;
    v20 = v19;
    v21 = v8;
    v23 = v22;
    (*(v6 + 8))(v21, v5);
    v24 = v33;
    v35 = v33;
    v25 = v31;
    *&v36 = v32;
    *(&v36 + 1) = v31;
    *&v37 = v13;
    *(&v37 + 1) = v15;
    *&v38 = v16;
    *(&v38 + 1) = v18;
    *&v39 = v20;
    *(&v39 + 1) = v23;
    v26 = v38;
    v27 = v30;
    v30[2] = v37;
    v27[3] = v26;
    v27[4] = v39;
    v28 = v36;
    *v27 = v35;
    v27[1] = v28;
    sub_1B72B1DD8(&v35, &v40);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v40 = __PAIR128__(*(&v33 + 1), v24);
    v41 = v32;
    v42 = v25;
    v43 = v13;
    v44 = v15;
    v45 = v16;
    v46 = v18;
    v47 = v20;
    v48 = v23;
  }

  return sub_1B7478128(&v40);
}

FinanceKit::CascadeExtractedOrder::ShippingFulfillment::Status_optional __swiftcall CascadeExtractedOrder.ShippingFulfillment.Status.init(rawValue:)(Swift::Int16 rawValue)
{
  v2 = rawValue;
  if (rawValue >= 0xAu)
  {
    v2 = 10;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.trackingNumber.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.trackingNumber.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.carrierName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.carrierName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.shippingMethod.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.shippingMethod.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.shippingDate.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.shippingDate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.shippingTime.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.shippingTime.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  return result;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.estimatedDeliveryStartDate.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.estimatedDeliveryStartDate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.estimatedDeliveryStartTime.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.estimatedDeliveryStartTime.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 104) = a1;
  *(v2 + 112) = a2;
  return result;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.estimatedDeliveryEndDate.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.estimatedDeliveryEndDate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 120) = a1;
  *(v2 + 128) = a2;
  return result;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.estimatedDeliveryEndTime.getter()
{
  v1 = *(v0 + 136);

  return v1;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.estimatedDeliveryEndTime.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 136) = a1;
  *(v2 + 144) = a2;
  return result;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.deliveryDate.getter()
{
  v1 = *(v0 + 152);

  return v1;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.deliveryDate.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return result;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.deliveryTime.getter()
{
  v1 = *(v0 + 168);

  return v1;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.deliveryTime.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return result;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.shippingRecipient.getter@<X0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 248);
  v3 = *(v1 + 200);
  v11[0] = *(v1 + 184);
  v11[1] = v3;
  v5 = *(v1 + 232);
  v12 = *(v1 + 216);
  v4 = v12;
  v13 = v5;
  v6 = *(v1 + 264);
  v7 = *(v1 + 280);
  v14 = v2;
  v15 = v6;
  v8 = *(v1 + 296);
  v16 = v7;
  v17 = v8;
  *a1 = v11[0];
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v2;
  a1[5] = v6;
  a1[6] = v7;
  a1[7] = v8;
  return sub_1B7478158(v11, &v10);
}

__n128 CascadeExtractedOrder.ShippingFulfillment.shippingRecipient.setter(uint64_t a1)
{
  v3 = *(v1 + 248);
  v4 = *(v1 + 200);
  v15[0] = *(v1 + 184);
  v15[1] = v4;
  v5 = *(v1 + 232);
  v15[2] = *(v1 + 216);
  v15[3] = v5;
  v6 = *(v1 + 264);
  v7 = *(v1 + 280);
  v15[4] = v3;
  v15[5] = v6;
  v8 = *(v1 + 296);
  v15[6] = v7;
  v15[7] = v8;
  sub_1B7478190(v15);
  v9 = *(a1 + 80);
  *(v1 + 248) = *(a1 + 64);
  v10 = *(a1 + 96);
  v11 = *(a1 + 112);
  *(v1 + 264) = v9;
  *(v1 + 280) = v10;
  *(v1 + 296) = v11;
  v12 = *(a1 + 16);
  *(v1 + 184) = *a1;
  *(v1 + 200) = v12;
  result = *(a1 + 32);
  v14 = *(a1 + 48);
  *(v1 + 216) = result;
  *(v1 + 232) = v14;
  return result;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.fulfillmentUpdateDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CascadeExtractedOrder.ShippingFulfillment(0) + 68);

  return sub_1B7280900(v3, a1);
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.fulfillmentUpdateDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CascadeExtractedOrder.ShippingFulfillment(0) + 68);

  return sub_1B72DFF88(a1, v3);
}

void __swiftcall CascadeExtractedOrder.ShippingRecipient.init(fullName:phoneNumber:emailAddress:address:)(FinanceKit::CascadeExtractedOrder::ShippingRecipient *__return_ptr retstr, Swift::String_optional fullName, Swift::String_optional phoneNumber, Swift::String_optional emailAddress, FinanceKit::CascadeExtractedOrder::Address *address)
{
  retstr->fullName = fullName;
  retstr->phoneNumber = phoneNumber;
  retstr->emailAddress = emailAddress;
  postalCode = address->postalCode;
  retstr->address.state = address->state;
  retstr->address.postalCode = postalCode;
  retstr->address.country = address->country;
  city = address->city;
  retstr->address.street = address->street;
  retstr->address.city = city;
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.init(status:trackingNumber:carrierName:shippingMethod:shippingDate:shippingTime:estimatedDeliveryStartDate:estimatedDeliveryStartTime:estimatedDeliveryEndDate:estimatedDeliveryEndTime:deliveryDate:deliveryTime:shippingRecipient:fulfillmentUpdateDate:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __int128 a16, uint64_t a17, __int128 *a18, uint64_t a19)
{
  v25 = *a1;
  v26 = *(type metadata accessor for CascadeExtractedOrder.ShippingFulfillment(0) + 68);
  v27 = sub_1B77FF988();
  (*(*(v27 - 8) + 56))(a9 + v26, 1, 1, v27);
  *a9 = v25;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 160) = a16;
  *(a9 + 176) = a17;
  v28 = *a18;
  v29 = a18[1];
  v30 = a18[2];
  *(a9 + 232) = a18[3];
  *(a9 + 216) = v30;
  *(a9 + 200) = v29;
  *(a9 + 184) = v28;
  v31 = a18[4];
  v32 = a18[5];
  v33 = a18[7];
  *(a9 + 280) = a18[6];
  *(a9 + 296) = v33;
  *(a9 + 264) = v32;
  *(a9 + 248) = v31;

  return sub_1B72DFF88(a19, a9 + v26);
}

unint64_t sub_1B746C9B0(char a1)
{
  result = 0x737574617473;
  switch(a1)
  {
    case 1:
      result = 0x676E696B63617274;
      break;
    case 2:
      result = 0x4E72656972726163;
      break;
    case 3:
      result = 0x676E697070696873;
      break;
    case 4:
      result = 0x676E697070696873;
      break;
    case 5:
      result = 0x676E697070696873;
      break;
    case 6:
    case 7:
      result = 0xD00000000000001ALL;
      break;
    case 8:
      result = 0xD000000000000018;
      break;
    case 9:
      result = 0xD000000000000018;
      break;
    case 10:
      result = 0x79726576696C6564;
      break;
    case 11:
      result = 0x79726576696C6564;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B746CB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B747B300(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B746CB84(uint64_t a1)
{
  v2 = sub_1B74781E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B746CBC0(uint64_t a1)
{
  v2 = sub_1B74781E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9952C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74781E0();
  sub_1B78023F8();
  LOBYTE(v31[0]) = *v3;
  LOBYTE(v23) = 0;
  sub_1B7477A30();
  sub_1B7801FC8();
  if (!v2)
  {
    LOBYTE(v31[0]) = 1;
    sub_1B7801EF8();
    LOBYTE(v31[0]) = 2;
    sub_1B7801EF8();
    LOBYTE(v31[0]) = 3;
    sub_1B7801EF8();
    LOBYTE(v31[0]) = 4;
    sub_1B7801EF8();
    LOBYTE(v31[0]) = 5;
    sub_1B7801EF8();
    LOBYTE(v31[0]) = 6;
    sub_1B7801EF8();
    LOBYTE(v31[0]) = 7;
    sub_1B7801EF8();
    LOBYTE(v31[0]) = 8;
    sub_1B7801EF8();
    LOBYTE(v31[0]) = 9;
    sub_1B7801EF8();
    LOBYTE(v31[0]) = 10;
    sub_1B7801EF8();
    v32 = 11;
    sub_1B7801EF8();
    v9 = *(v3 + 248);
    v10 = *(v3 + 200);
    v31[0] = *(v3 + 184);
    v31[1] = v10;
    v11 = *(v3 + 232);
    v31[2] = *(v3 + 216);
    v31[3] = v11;
    v12 = *(v3 + 264);
    v13 = *(v3 + 280);
    v31[4] = v9;
    v31[5] = v12;
    v14 = *(v3 + 264);
    v15 = *(v3 + 296);
    v31[6] = *(v3 + 280);
    v31[7] = v15;
    v27 = *(v3 + 248);
    v28 = v14;
    v16 = *(v3 + 296);
    v29 = v13;
    v30 = v16;
    v17 = *(v3 + 200);
    v23 = *(v3 + 184);
    v24 = v17;
    v18 = *(v3 + 232);
    v25 = *(v3 + 216);
    v26 = v18;
    v22 = 12;
    sub_1B7478158(v31, v21);
    sub_1B7478234();
    sub_1B7801FC8();
    v21[4] = v27;
    v21[5] = v28;
    v21[6] = v29;
    v21[7] = v30;
    v21[0] = v23;
    v21[1] = v24;
    v21[2] = v25;
    v21[3] = v26;
    sub_1B7478190(v21);
    type metadata accessor for CascadeExtractedOrder.ShippingFulfillment(0);
    v20[15] = 13;
    sub_1B77FF988();
    sub_1B7477D8C(&qword_1EDAF65F0, MEMORY[0x1E6969530]);
    sub_1B7801F38();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CascadeExtractedOrder.ShippingFulfillment.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB98EBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v58 - v5;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB9952D8);
  v7 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v9 = &v58 - v8;
  v10 = type metadata accessor for CascadeExtractedOrder.ShippingFulfillment(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 76);
  v15 = sub_1B77FF988();
  v16 = *(*(v15 - 8) + 56);
  v71 = v14;
  v75 = v13;
  v16(&v13[v14], 1, 1, v15);
  v17 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1B74781E0();
  v68 = v9;
  sub_1B78023C8();
  if (v2)
  {
    v74 = v2;
    LODWORD(v69) = 0;
    v72 = 0;
    v73 = 0;
  }

  else
  {
    v18 = v67;
    v66 = v7;
    v85 = 0;
    sub_1B7477A84();
    sub_1B7801E48();
    v19 = v75;
    *v75 = v76;
    LOBYTE(v76) = 1;
    v19[1] = sub_1B7801D78();
    v19[2] = v28;
    v65 = v28;
    LOBYTE(v76) = 2;
    v19[3] = sub_1B7801D78();
    v19[4] = v29;
    v64 = v29;
    LOBYTE(v76) = 3;
    v19[5] = sub_1B7801D78();
    v19[6] = v30;
    v63 = v30;
    LOBYTE(v76) = 4;
    v19[7] = sub_1B7801D78();
    v19[8] = v31;
    v62 = v31;
    LOBYTE(v76) = 5;
    v19[9] = sub_1B7801D78();
    v19[10] = v32;
    v61 = v32;
    LOBYTE(v76) = 6;
    v19[11] = sub_1B7801D78();
    v19[12] = v33;
    LOBYTE(v76) = 7;
    v19[13] = sub_1B7801D78();
    v19[14] = v34;
    LOBYTE(v76) = 8;
    v35 = sub_1B7801D78();
    v74 = 0;
    v37 = v75;
    *(v75 + 15) = v35;
    *(v37 + 16) = v36;
    v60 = v36;
    LOBYTE(v76) = 9;
    v38 = v74;
    v39 = sub_1B7801D78();
    v59 = v40;
    v74 = v38;
    if (v38)
    {
      (*(v66 + 8))(v68, v69);
      LODWORD(v69) = 0;
      v72 = 0;
      v73 = 0;
    }

    else
    {
      v41 = v75;
      v42 = v59;
      *(v75 + 17) = v39;
      *(v41 + 18) = v42;
      LOBYTE(v76) = 10;
      v43 = sub_1B7801D78();
      v73 = v44;
      v74 = 0;
      v45 = v75;
      *(v75 + 19) = v43;
      *(v45 + 20) = v44;
      LOBYTE(v76) = 11;
      v46 = sub_1B7801D78();
      v72 = v47;
      v74 = 0;
      v48 = v75;
      *(v75 + 21) = v46;
      *(v48 + 22) = v47;
      v85 = 12;
      sub_1B7478288();
      v49 = v74;
      sub_1B7801E48();
      v74 = v49;
      if (v49)
      {
        (*(v66 + 8))(v68, v69);
        LODWORD(v69) = 0;
      }

      else
      {
        v50 = v75;
        v51 = v81;
        *(v75 + 248) = v80;
        v52 = v77;
        *(v50 + 184) = v76;
        *(v50 + 200) = v52;
        v53 = v79;
        *(v50 + 216) = v78;
        *(v50 + 232) = v53;
        v54 = v82;
        v55 = v83;
        *(v50 + 264) = v51;
        *(v50 + 280) = v54;
        *(v50 + 296) = v55;
        v84 = 13;
        sub_1B7477D8C(&unk_1EDAF65E0, MEMORY[0x1E6969530]);
        v56 = v74;
        sub_1B7801DB8();
        v74 = v56;
        if (!v56)
        {
          (*(v66 + 8))(v68, v69);
          v57 = v75;
          sub_1B72DFF88(v6, &v75[v71]);
          sub_1B747806C(v57, v18, type metadata accessor for CascadeExtractedOrder.ShippingFulfillment);
          __swift_destroy_boxed_opaque_existential_1(v70);
          return sub_1B747800C(v57, type metadata accessor for CascadeExtractedOrder.ShippingFulfillment);
        }

        (*(v66 + 8))(v68, v69);
        LODWORD(v69) = 1;
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v70);

  v20 = v75;
  if (v69)
  {
    v21 = *(v75 + 248);
    v22 = *(v75 + 200);
    v76 = *(v75 + 184);
    v77 = v22;
    v23 = *(v75 + 232);
    v78 = *(v75 + 216);
    v79 = v23;
    v24 = *(v75 + 264);
    v25 = *(v75 + 280);
    v80 = v21;
    v81 = v24;
    v26 = *(v75 + 296);
    v82 = v25;
    v83 = v26;
    sub_1B7478190(&v76);
  }

  return sub_1B7205418(&v20[v71], &qword_1EB98EBD0);
}

uint64_t sub_1B746DBB8()
{
  v1 = 0x656D614E6C6C7566;
  v2 = 0x6464416C69616D65;
  if (*v0 != 2)
  {
    v2 = 0x41676E696C6C6962;
  }

  if (*v0)
  {
    v1 = 0x6D754E656E6F6870;
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

uint64_t sub_1B746DC50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B747B76C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B746DC78(uint64_t a1)
{
  v2 = sub_1B74782DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B746DCB4(uint64_t a1)
{
  v2 = sub_1B74782DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CascadeExtractedOrder.Customer.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB995300);
  v5 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v7 = &v26 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B74782DC();
  sub_1B78023C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v30 = v5;
    LOBYTE(v39[0]) = 0;
    v8 = sub_1B7801D78();
    v10 = v9;
    v11 = v8;
    LOBYTE(v39[0]) = 1;
    v12 = sub_1B7801D78();
    v14 = v13;
    v27 = v12;
    v28 = v11;
    v29 = a2;
    LOBYTE(v39[0]) = 2;
    v15 = sub_1B7801D78();
    v17 = v16;
    v26 = v15;
    v45 = 3;
    sub_1B7478384();
    sub_1B7801E48();
    (*(v30 + 8))(v7, v56);
    v53 = v48;
    v54 = v49;
    v55 = v50;
    v51 = v46;
    v52 = v47;
    v19 = v27;
    v18 = v28;
    *&v31 = v28;
    *(&v31 + 1) = v10;
    *&v32 = v27;
    *(&v32 + 1) = v14;
    *&v33 = v26;
    *(&v33 + 1) = v17;
    v38 = v50;
    v37 = v49;
    v36 = v48;
    v35 = v47;
    v34 = v46;
    v20 = v32;
    v21 = v29;
    *v29 = v31;
    v21[1] = v20;
    v22 = v38;
    v21[6] = v37;
    v21[7] = v22;
    v23 = v36;
    v21[4] = v35;
    v21[5] = v23;
    v24 = v34;
    v21[2] = v33;
    v21[3] = v24;
    sub_1B74783D8(&v31, v39);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v39[0] = v18;
    v39[1] = v10;
    v39[2] = v19;
    v39[3] = v14;
    v39[4] = v26;
    v39[5] = v17;
    v42 = v53;
    v43 = v54;
    v44 = v55;
    v41 = v52;
    v40 = v51;
    return sub_1B7478410(v39);
  }
}