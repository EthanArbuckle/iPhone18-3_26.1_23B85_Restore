uint64_t sub_1B6A91CFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B6A91D64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B6A91DC4@<X0>(const void *a1@<X0>, size_t a2@<X5>, unint64_t a3@<X6>, int *a4@<X8>)
{
  result = sub_1B6AB8B80();
  v9 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v9 != 2)
    {
      a2 = 0;
      goto LABEL_11;
    }

    v11 = *(a2 + 16);
    v10 = *(a2 + 24);
    a2 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v9)
  {
    a2 = BYTE6(a3);
LABEL_11:
    v12 = sub_1B6AB9350();

    v13 = sub_1B6AB9350();
    v14 = setxattr((v12 + 32), (v13 + 32), a1, a2, 0, 0);

    *a4 = v14;
    return result;
  }

  if (!__OFSUB__(HIDWORD(a2), a2))
  {
    a2 = HIDWORD(a2) - a2;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B6A91EC8@<X0>(const void *a1@<X0>, int *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_1B6A91DC4(a1, v2[5], v2[6], a2);
}

void *sub_1B6A91EEC(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, char *))
{
  result = sub_1B6AB8900();
  v8 = result;
  if (result)
  {
    result = sub_1B6AB8930();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v8 = (v8 + a1 - result);
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_15;
  }

  v11 = sub_1B6AB8920();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = v8 + v12;
  if (v8)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  result = a3(&v15, v8, v14);
  if (!v3)
  {
    return v15;
  }

  return result;
}

void sub_1B6A91F9C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1B6ABA090();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1B6A91FF0(uint64_t a1)
{
  sub_1B69B4824();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B6A9204C()
{
  result = qword_1EDBCBA90;
  if (!qword_1EDBCBA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCBA90);
  }

  return result;
}

uint64_t sub_1B6A920A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B6A920F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1B6A92148(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1B6A92160(void *result, int a2)
{
  if (a2 < 0)
  {
    result[1] = 0;
    result[2] = 0;
    *result = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[2] = (a2 - 1);
  }

  return result;
}

uint64_t sub_1B6A92194(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!(a2 >> 62))
  {
    return (*(a4 + 24))(a3, a4) & 1;
  }

  if (a2 >> 62 != 1)
  {
    return *(a1 + OBJC_IVAR___AARawEvent_requiresTrackingConsent);
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if ([ObjCClassFromMetadata respondsToSelector_])
  {
    return [ObjCClassFromMetadata requiresTrackingConsent];
  }

  else
  {
    return 1;
  }
}

uint64_t sub_1B6A92230()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_1B6A9227C(void *result, uint64_t a2)
{
  v2 = result[1] & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  *result &= 0xFFFFFFFFFFFFFF8uLL;
  result[1] = v2;
  return result;
}

uint64_t type metadata accessor for SummaryEventData()
{
  result = qword_1EDBC91E8;
  if (!qword_1EDBC91E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B6A92320()
{
  type metadata accessor for SummaryEventMetaData();
  if (v0 <= 0x3F)
  {
    sub_1B6A923AC();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B6A923AC()
{
  if (!qword_1EB95C5C8)
  {
    v0 = sub_1B6AB95D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95C5C8);
    }
  }
}

uint64_t sub_1B6A923FC(void *a1)
{
  v3 = v1;
  sub_1B6A92D90(0, &qword_1EB95C5F8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v15[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A92BC0();
  sub_1B6ABA2D0();
  v17 = 0;
  type metadata accessor for SummaryEventMetaData();
  sub_1B6A92DF4(&qword_1EB95BA10, type metadata accessor for SummaryEventMetaData);
  sub_1B6ABA040();
  if (!v2)
  {
    v12 = type metadata accessor for SummaryEventData();
    v16 = *(v3 + *(v12 + 20));
    v15[15] = 1;
    sub_1B6A923AC();
    sub_1B6A92E3C(&qword_1EB95C600, sub_1B6A47128);
    sub_1B6ABA040();
    v13 = *(v3 + *(v12 + 24));
    v15[14] = 2;
    sub_1B6ABA020();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1B6A92644@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for SummaryEventMetaData();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6A92D90(0, &qword_1EB95C5D0, MEMORY[0x1E69E6F48]);
  v24 = *(v7 - 8);
  v25 = v7;
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - v9;
  v11 = type metadata accessor for SummaryEventData();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A92BC0();
  sub_1B6ABA2A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v24;
  v17 = v14;
  v30 = 0;
  sub_1B6A92DF4(&qword_1EB95C5E0, type metadata accessor for SummaryEventMetaData);
  v18 = v25;
  sub_1B6AB9F90();
  sub_1B6A92C14(v26, v17);
  sub_1B6A923AC();
  v28 = 1;
  sub_1B6A92E3C(&qword_1EB95C5E8, sub_1B6A92C78);
  sub_1B6AB9F90();
  *(v17 + *(v11 + 20)) = v29;
  v27 = 2;
  sub_1B6AB9F70();
  v20 = v19;
  (*(v16 + 8))(v10, v18);
  *(v17 + *(v11 + 24)) = v20;
  sub_1B6A92CCC(v17, v23);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B6A92D30(v17, type metadata accessor for SummaryEventData);
}

uint64_t sub_1B6A92A10()
{
  v1 = 0x736D657469;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1B6A92A6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B6A92FC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B6A92A94(uint64_t a1)
{
  v2 = sub_1B6A92BC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A92AD0(uint64_t a1)
{
  v2 = sub_1B6A92BC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6A92B3C(uint64_t a1)
{
  *(a1 + 8) = sub_1B6A92DF4(&qword_1EDBC9200, type metadata accessor for SummaryEventData);
  result = sub_1B6A92DF4(qword_1EDBC9208, type metadata accessor for SummaryEventData);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1B6A92BC0()
{
  result = qword_1EB95C5D8;
  if (!qword_1EB95C5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C5D8);
  }

  return result;
}

uint64_t sub_1B6A92C14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryEventMetaData();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B6A92C78()
{
  result = qword_1EB95C5F0;
  if (!qword_1EB95C5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C5F0);
  }

  return result;
}

uint64_t sub_1B6A92CCC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryEventData();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B6A92D30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1B6A92D90(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A92BC0();
    v7 = a3(a1, &type metadata for SummaryEventData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B6A92DF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1B6A92E3C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1B6A923AC();
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B6A92EBC()
{
  result = qword_1EB95C608;
  if (!qword_1EB95C608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C608);
  }

  return result;
}

unint64_t sub_1B6A92F14()
{
  result = qword_1EB95C610;
  if (!qword_1EB95C610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C610);
  }

  return result;
}

unint64_t sub_1B6A92F6C()
{
  result = qword_1EB95C618;
  if (!qword_1EB95C618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C618);
  }

  return result;
}

uint64_t sub_1B6A92FC0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v4 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1B6ABA0F0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001B6ACE500 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B6ABA0F0();

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

void sub_1B6A930EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v38 = MEMORY[0x1E69E7CC0];
    sub_1B69E4C6C(0, v1, 0);
    v3 = v38;
    v4 = a1 + 56;
    v5 = -1 << *(a1 + 32);
    v6 = sub_1B6AB9BF0();
    v7 = 0;
    v34 = v1;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
    {
      v9 = v6 >> 6;
      if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      v35 = v7;
      v36 = *(a1 + 36);
      v10 = (*(a1 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];

      v13._countAndFlagsBits = v11;
      v13._object = v12;
      DenylistDescriptor.init(value:)(&v37, v13);
      countAndFlagsBits = v37.eventName._countAndFlagsBits;
      object = v37.eventName._object;
      v16 = v37.dataName._countAndFlagsBits;
      v17 = v37.dataName._object;
      v18 = v37.propertyName._countAndFlagsBits;
      v19 = v37.propertyName._object;
      v38 = v3;
      v21 = *(v3 + 16);
      v20 = *(v3 + 24);
      if (v21 >= v20 >> 1)
      {
        v32 = v37.dataName._countAndFlagsBits;
        v33 = v37.eventName._countAndFlagsBits;
        v30 = v37.propertyName._object;
        v31 = v37.propertyName._countAndFlagsBits;
        sub_1B69E4C6C((v20 > 1), v21 + 1, 1);
        v19 = v30;
        v18 = v31;
        v16 = v32;
        countAndFlagsBits = v33;
        v3 = v38;
      }

      *(v3 + 16) = v21 + 1;
      v22 = (v3 + 48 * v21);
      v22[4] = countAndFlagsBits;
      v22[5] = object;
      v22[6] = v16;
      v22[7] = v17;
      v22[8] = v18;
      v22[9] = v19;
      v8 = 1 << *(a1 + 32);
      if (v6 >= v8)
      {
        goto LABEL_22;
      }

      v4 = a1 + 56;
      v23 = *(a1 + 56 + 8 * v9);
      if ((v23 & (1 << v6)) == 0)
      {
        goto LABEL_23;
      }

      if (v36 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v24 = v23 & (-2 << (v6 & 0x3F));
      if (v24)
      {
        v8 = __clz(__rbit64(v24)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v9 << 6;
        v26 = v9 + 1;
        v27 = (a1 + 64 + 8 * v9);
        while (v26 < (v8 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_1B6A8A5B4(v6, v36, 0);
            v8 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_1B6A8A5B4(v6, v36, 0);
      }

LABEL_4:
      v7 = v35 + 1;
      v6 = v8;
      if (v35 + 1 == v34)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

uint64_t DisabledPrivacyValidationProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  return result;
}

id BridgedPrivacyValidationProvider.bridgedPrivacyValidation.getter()
{
  v1 = OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

id BridgedPrivacyValidationProvider.__allocating_init(bridgedPrivacyValidation:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id BridgedPrivacyValidationProvider.init(bridgedPrivacyValidation:)(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation] = a1;
  v5.receiver = v1;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t BridgedPrivacyValidationProvider.privacyValidation.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation;
  result = swift_beginAccess();
  v5 = 0;
  v6 = *(v1 + v3);
  if (v6[OBJC_IVAR___AAPrivacyValidation_enabled] == 1)
  {
    v7 = *&v6[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors];
    v8 = v6;
    sub_1B6A930EC(v7);
    v5 = sub_1B6A94B10(v9);
  }

  *a1 = v5;
  return result;
}

id BridgedPrivacyValidationProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedPrivacyValidationProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t DisabledPrivacyValidationProvider.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t DisabledPrivacyValidationProvider.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A93750(void *a1, void *a2)
{
  v4 = *v2;
  v5 = *(*v2 + 40);
  sub_1B6ABA1F0();
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  v38 = a2;
  v11 = a2[4];
  v10 = a2[5];
  sub_1B6AB9380();
  v42 = v9;
  v43 = v8;
  sub_1B6AB9380();
  v40 = v10;
  v41 = v11;
  sub_1B6AB9380();
  v12 = sub_1B6ABA230();
  v13 = v4 + 56;
  v14 = -1 << *(v4 + 32);
  v15 = v12 & ~v14;
  if ((*(v4 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    v36 = v4;
    v17 = *(v4 + 48);
    while (1)
    {
      v18 = (v17 + 48 * v15);
      v19 = v18[2];
      v20 = v18[3];
      v22 = v18[4];
      v21 = v18[5];
      v23 = *v18 == v6 && v18[1] == v7;
      if (v23 || (sub_1B6ABA0F0() & 1) != 0)
      {
        v24 = v19 == v43 && v20 == v42;
        if (v24 || (sub_1B6ABA0F0() & 1) != 0)
        {
          v25 = v22 == v41 && v21 == v40;
          if (v25 || (sub_1B6ABA0F0() & 1) != 0)
          {
            break;
          }
        }
      }

      v15 = (v15 + 1) & v16;
      if (((*(v13 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    sub_1B6A94CB0(v38);
    v26 = (*(v36 + 48) + 48 * v15);
    v27 = v26[1];
    v28 = v26[2];
    v29 = v26[3];
    v30 = v26[4];
    v31 = v26[5];
    *a1 = *v26;
    a1[1] = v27;
    a1[2] = v28;
    a1[3] = v29;
    a1[4] = v30;
    a1[5] = v31;

    return 0;
  }

  else
  {
LABEL_20:
    v33 = *v37;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = *v37;
    sub_1B6A94C54(v38, v45);
    sub_1B6A93FC8(v38, v15, isUniquelyReferenced_nonNull_native);
    *v37 = v44;
    v35 = v38[1];
    *a1 = *v38;
    *(a1 + 1) = v35;
    *(a1 + 2) = v38[2];
    return 1;
  }
}

uint64_t sub_1B6A93984(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(*v3 + 40);
  sub_1B6ABA1F0();
  sub_1B6AB9380();
  v9 = sub_1B6ABA230();
  v10 = -1 << *(v7 + 32);
  v11 = v9 & ~v10;
  if ((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    while (1)
    {
      v13 = (*(v7 + 48) + 16 * v11);
      v14 = *v13 == a2 && v13[1] == a3;
      if (v14 || (sub_1B6ABA0F0() & 1) != 0)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v18 = (*(v7 + 48) + 16 * v11);
    v19 = v18[1];
    *a1 = *v18;
    a1[1] = v19;

    return 0;
  }

  else
  {
LABEL_9:
    v15 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;

    sub_1B6A941F0(a2, a3, v11, isUniquelyReferenced_nonNull_native);
    *v3 = v20;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B6A93AD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B69C287C();
  v5 = sub_1B6AB9C50();
  v6 = v5;
  if (*(v3 + 16))
  {
    v35 = v1;
    v7 = 0;
    v36 = (v3 + 56);
    v37 = v3;
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
    v12 = v5 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v38 = (v10 - 1) & v10;
LABEL_17:
      v19 = (*(v3 + 48) + 48 * (v15 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v25 = v19[4];
      v24 = v19[5];
      v26 = *(v6 + 40);
      sub_1B6ABA1F0();
      sub_1B6AB9380();
      sub_1B6AB9380();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v27 = -1 << *(v6 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v12 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v12 + 8 * v29);
          if (v33 != -1)
          {
            v13 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v28) & ~*(v12 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 48 * v13);
      *v14 = v20;
      v14[1] = v21;
      v14[2] = v22;
      v14[3] = v23;
      v14[4] = v25;
      v14[5] = v24;
      ++*(v6 + 16);
      v3 = v37;
      v10 = v38;
    }

    v16 = v7;
    result = v36;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v11)
      {
        break;
      }

      v18 = v36[v7];
      ++v16;
      if (v18)
      {
        v15 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    v34 = 1 << *(v3 + 32);
    if (v34 >= 64)
    {
      bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v34;
    }

    v2 = v35;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B6A93D74(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B6A94D04();
  result = sub_1B6AB9C50();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
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
      v19 = (*(v3 + 48) + 16 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = *(v6 + 40);
      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v13 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v13 + 8 * v25);
          if (v29 != -1)
          {
            v14 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v24) & ~*(v13 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 16 * v14);
      *v15 = v20;
      v15[1] = v21;
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

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero((v3 + 56), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1B6A93FC8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v35 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_27;
  }

  if (a3)
  {
    sub_1B6A93AD4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1B6A94370();
      goto LABEL_27;
    }

    sub_1B6A9463C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1B6ABA1F0();
  v10 = *v5;
  v11 = v5[1];
  v12 = v5[2];
  v13 = v5[3];
  v15 = v5[4];
  v14 = v5[5];
  sub_1B6AB9380();
  v38 = v13;
  v39 = v12;
  sub_1B6AB9380();
  v36 = v14;
  v37 = v15;
  sub_1B6AB9380();
  result = sub_1B6ABA230();
  v16 = -1 << *(v8 + 32);
  a2 = result & ~v16;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = v8 + 56;
    v18 = ~v16;
    v19 = *(v8 + 48);
    while (1)
    {
      v20 = (v19 + 48 * a2);
      v21 = v20[2];
      v22 = v20[3];
      v23 = v20[4];
      v24 = v20[5];
      v25 = *v20 == v10 && v20[1] == v11;
      if (v25 || (result = sub_1B6ABA0F0(), (result & 1) != 0))
      {
        v26 = v21 == v39 && v22 == v38;
        if (v26 || (result = sub_1B6ABA0F0(), (result & 1) != 0))
        {
          if (v23 == v37 && v24 == v36)
          {
            break;
          }

          result = sub_1B6ABA0F0();
          if (result)
          {
            break;
          }
        }
      }

      a2 = (a2 + 1) & v18;
      if (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    result = sub_1B6ABA180();
    __break(1u);
  }

LABEL_27:
  v28 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v29 = (*(v28 + 48) + 48 * a2);
  v30 = v35[1];
  *v29 = *v35;
  v29[1] = v30;
  v29[2] = v35[2];
  v31 = *(v28 + 16);
  v32 = __OFADD__(v31, 1);
  v33 = v31 + 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v33;
  }

  return result;
}

uint64_t sub_1B6A941F0(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1B6A93D74(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B6A944EC();
      goto LABEL_16;
    }

    sub_1B6A948E4(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  sub_1B6ABA1F0();
  sub_1B6AB9380();
  result = sub_1B6ABA230();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1B6ABA0F0();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1B6ABA180();
  __break(1u);
  return result;
}

void *sub_1B6A94370()
{
  v1 = v0;
  sub_1B69C287C();
  v2 = *v0;
  v3 = sub_1B6AB9C40();
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
        v17 = 48 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = v18[4];
        v23 = v18[5];
        v24 = (*(v4 + 48) + v17);
        *v24 = *v18;
        v24[1] = v19;
        v24[2] = v20;
        v24[3] = v21;
        v24[4] = v22;
        v24[5] = v23;
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

void *sub_1B6A944EC()
{
  v1 = v0;
  sub_1B6A94D04();
  v2 = *v0;
  v3 = sub_1B6AB9C40();
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

uint64_t sub_1B6A9463C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B69C287C();
  result = sub_1B6AB9C50();
  v6 = result;
  if (*(v3 + 16))
  {
    v35 = v2;
    v36 = v3;
    v7 = 0;
    v8 = v3 + 56;
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
    v37 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v38 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 48 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = v19[3];
      v25 = v19[4];
      v24 = v19[5];
      v26 = *(v6 + 40);
      sub_1B6ABA1F0();

      sub_1B6AB9380();
      sub_1B6AB9380();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v6 = v37;
      v27 = -1 << *(v37 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v37 + 48) + 48 * v14);
      *v15 = v20;
      v15[1] = v21;
      v11 = v38;
      v15[2] = v22;
      v15[3] = v23;
      v15[4] = v25;
      v15[5] = v24;
      ++*(v37 + 16);
      v3 = v36;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {
        v34 = v6;

        v2 = v35;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v38 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {
    v34 = result;

LABEL_28:
    *v2 = v34;
  }

  return result;
}

uint64_t sub_1B6A948E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1B6A94D04();
  result = sub_1B6AB9C50();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      sub_1B6ABA1F0();

      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_1B6A94B10(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1B69C28D8();
  result = MEMORY[0x1B8C98010](v2, &type metadata for DenylistDescriptor, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = v5[1];
      v9[0] = *v5;
      v9[1] = v6;
      v9[2] = v5[2];
      sub_1B6A94C54(v9, &v7);
      sub_1B6A93750(&v7, v9);

      v5 += 3;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_1B6A94D04()
{
  if (!qword_1EB95C628)
  {
    v0 = sub_1B6AB9C70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95C628);
    }
  }
}

uint64_t sub_1B6A94D5C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1B8C98010](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1B6A93984(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1B6A94E04(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[1] = a4;
  sub_1B6A953E8(0, &qword_1EB95C640, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v11 = v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A95394();
  sub_1B6ABA2D0();
  v16 = 0;
  sub_1B6ABA000();
  if (!v4)
  {
    v15 = 1;
    sub_1B6ABA030();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1B6A94F84()
{
  if (*v0)
  {
    result = 0x756F43746E657665;
  }

  else
  {
    result = 0x6D614E746E657665;
  }

  *v0;
  return result;
}

uint64_t sub_1B6A94FC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D614E746E657665 && a2 == 0xE900000000000065;
  if (v6 || (sub_1B6ABA0F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x756F43746E657665 && a2 == 0xEA0000000000746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();

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

uint64_t sub_1B6A950B4(uint64_t a1)
{
  v2 = sub_1B6A95394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A950F0(uint64_t a1)
{
  v2 = sub_1B6A95394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B6A9512C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1B6A951AC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1B6A9517C(uint64_t a1)
{
  *(a1 + 8) = sub_1B6A92C78();
  result = sub_1B6A47128();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B6A951AC(uint64_t *a1)
{
  sub_1B6A953E8(0, &qword_1EB95C630, MEMORY[0x1E69E6F48]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v8 = &v11[-v7];
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A95394();
  sub_1B6ABA2A0();
  if (!v1)
  {
    v11[15] = 0;
    v9 = sub_1B6AB9F50();
    v11[14] = 1;
    sub_1B6AB9F80();
    (*(v5 + 8))(v8, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1B6A95394()
{
  result = qword_1EB95C638;
  if (!qword_1EB95C638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C638);
  }

  return result;
}

void sub_1B6A953E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A95394();
    v7 = a3(a1, &type metadata for SummaryEventDataItem.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B6A95460()
{
  result = qword_1EB95C648;
  if (!qword_1EB95C648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C648);
  }

  return result;
}

unint64_t sub_1B6A954B8()
{
  result = qword_1EB95C650;
  if (!qword_1EB95C650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C650);
  }

  return result;
}

unint64_t sub_1B6A95510()
{
  result = qword_1EB95C658;
  if (!qword_1EB95C658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C658);
  }

  return result;
}

uint64_t UploadBatchEventProcessor.Errors.hashValue.getter()
{
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](0);
  return sub_1B6ABA230();
}

uint64_t UploadBatchEventProcessor.deinit()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  sub_1B6A97418(v0 + OBJC_IVAR____TtC12AppAnalytics25UploadBatchEventProcessor_currentSession);
  return v0;
}

uint64_t UploadBatchEventProcessor.__deallocating_deinit()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  sub_1B6A97418(v0 + OBJC_IVAR____TtC12AppAnalytics25UploadBatchEventProcessor_currentSession);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void UploadBatchEventProcessor.process<A>(processEvent:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B6AB8E40();
  v76 = *(v4 - 8);
  v77 = v4;
  v5 = *(v76 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v65[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B697F08C(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v65[-v10];
  v12 = type metadata accessor for Session();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v65[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = OBJC_IVAR____TtC12AppAnalytics25UploadBatchEventProcessor_currentSession;
  swift_beginAccess();
  sub_1B69B596C(v2 + v17, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1B6A97418(v11);
    sub_1B6A974A4();
    v18 = swift_allocError();
    swift_willThrow();
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB98F0();
    sub_1B698C7EC(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1B6ABD890;
    v80 = 0;
    v81 = 0xE000000000000000;
    v79[0] = v18;
    sub_1B697ED90(0, &qword_1EDBCBB00);
    sub_1B6AB9DF0();
    v23 = v80;
    v24 = v81;
    *(v22 + 56) = MEMORY[0x1E69E6158];
    *(v22 + 64) = sub_1B698CEC0();
    *(v22 + 32) = v23;
    *(v22 + 40) = v24;
    sub_1B6AB8F70();
  }

  else
  {
    sub_1B69B6C5C(v11, v16, type metadata accessor for Session);
    v19 = type metadata accessor for ProcessEvent();
    v20 = ProcessEventType.payload()(v19, &protocol witness table for ProcessEvent<A>);
    v21 = v16;
    v25 = *(v2 + 16);
    v26 = (a1 + v19[12]);
    v28 = *v26;
    v27 = v26[1];
    v29 = a1 + v19[13];
    v70 = *v29;
    v71 = v20;
    v69 = *(v29 + 8);
    v30 = (a1 + v19[15]);
    v32 = *v30;
    v31 = v30[1];
    v68 = v32;
    v67 = v31;
    v33 = *v21;
    v34 = v21[1];
    if (v27)
    {
      v35 = v28;
    }

    else
    {
      v35 = 0;
    }

    v73 = v35;
    v74 = v33;
    v80 = v33;
    v81 = v34;
    v82 = v35;
    v83 = v27;
    v84 = v27 != 0;
    v36 = v25[11];
    v37 = *(v36 + 16);
    v38 = *(v36 + 24);

    v75 = v34;

    os_unfair_lock_lock_with_options();
    swift_beginAccess();
    v39 = v25[10];
    v40 = *(v39 + 16);
    v72 = v21;
    if (v40 && (v41 = sub_1B69B3B58(&v80), (v42 & 1) != 0))
    {
      v43 = (*(v39 + 56) + 16 * v41);
      v44 = *v43;
      v45 = v43[1];
      swift_endAccess();
    }

    else
    {
      v66 = v27 != 0;
      swift_endAccess();
      sub_1B6AB8E30();
      v46 = sub_1B6AB8DD0();
      v45 = v47;
      (*(v76 + 8))(v7, v77);
      swift_beginAccess();
      v49 = v74;
      v48 = v75;
      v77 = v28;
      v50 = v73;
      sub_1B69E0EBC(v74, v75, v73, v27, v27 != 0);

      v51 = v25[10];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = v25[10];
      v25[10] = 0x8000000000000000;
      sub_1B69E6AA8(v46, v45, &v80, isUniquelyReferenced_nonNull_native);
      v53 = v50;
      v28 = v77;
      v44 = v46;
      sub_1B69B47D4(v49, v48, v53, v27, v66);
      v25[10] = v78;
      swift_endAccess();
    }

    os_unfair_lock_unlock(*(v25[11] + 16));
    v54 = __swift_project_boxed_opaque_existential_1(v25 + 4, v25[7]);
    v79[0] = v68;
    v79[1] = v67;
    v55 = *v54;
    v56 = v72;
    LOBYTE(v55) = sub_1B6A5D130(v71, v44, v45, v28, v27, v70, v69, v72, v27 == 0, v79);

    if (v55)
    {
      v57 = v25[11];
      v58 = *(v57 + 16);
      v59 = *(v57 + 24);
      os_unfair_lock_lock_with_options();
      swift_beginAccess();
      sub_1B69B3AA0(&v80);
      swift_endAccess();
      os_unfair_lock_unlock(*(v25[11] + 16));

      v60 = v74;
      v61 = v75;
      v62 = v73;
      v63 = v27;
      v64 = v27 != 0;
    }

    else
    {
      v64 = v27 != 0;
      v60 = v74;
      v61 = v75;
      v62 = v73;
      v63 = v27;
    }

    sub_1B69B47D4(v60, v61, v62, v63, v64);
    sub_1B6A974F8(v56);
  }
}

uint64_t UploadBatchEventProcessor.didLeaveGroup(_:)(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC12AppAnalytics25UploadBatchEventProcessor_currentSession);
  swift_beginAccess();
  v4 = type metadata accessor for Session();
  if ((*(*(v4 - 8) + 48))(v3, 1, v4))
  {
    if (qword_1EDBCCEE0 != -1)
    {
      swift_once();
    }

    sub_1B6AB98E0();
    sub_1B698C7EC(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1B6ABD890;
    v7 = *(a1 + OBJC_IVAR___AAGroup_name);
    v6 = *(a1 + OBJC_IVAR___AAGroup_name + 8);
    *(v5 + 56) = MEMORY[0x1E69E6158];
    *(v5 + 64) = sub_1B698CEC0();
    *(v5 + 32) = v7;
    *(v5 + 40) = v6;

    sub_1B6AB8F70();
  }

  else
  {
    v9 = v3[1];
    v10 = *(v1 + 16);
    v12 = *(a1 + OBJC_IVAR___AAGroup_name);
    v11 = *(a1 + OBJC_IVAR___AAGroup_name + 8);
    v13[0] = *v3;
    v13[1] = v9;
    v13[2] = v12;
    v13[3] = v11;
    v14 = 1;
    swift_bridgeObjectRetain_n();

    sub_1B6A6CF6C(v13);

    return swift_bridgeObjectRelease_n();
  }
}

uint64_t UploadBatchEventProcessor.didUpdateSession(_:)(uint64_t *a1)
{
  v2 = v1;
  sub_1B697F08C(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v8 = &v25[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25[-v9];
  v11 = type metadata accessor for Session();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = OBJC_IVAR____TtC12AppAnalytics25UploadBatchEventProcessor_currentSession;
  swift_beginAccess();
  sub_1B69B596C(v2 + v16, v10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1B6A97418(v10);
LABEL_9:
    v22 = *__swift_project_boxed_opaque_existential_1((*(v2 + 16) + 32), *(*(v2 + 16) + 56));
    sub_1B6A5EC3C(*(a1 + *(v11 + 32)));
    sub_1B69B6D84(a1, v8);
    (*(v12 + 56))(v8, 0, 1, v11);
    swift_beginAccess();
    sub_1B69B6B60(v8, v2 + v16);
    return swift_endAccess();
  }

  sub_1B69B6C5C(v10, v15, type metadata accessor for Session);
  v18 = *a1;
  v17 = a1[1];
  v19 = *v15 == *a1 && v15[1] == v17;
  if (v19 || (v20 = *a1, v21 = a1[1], (sub_1B6ABA0F0() & 1) != 0))
  {
    sub_1B6A974F8(v15);
    goto LABEL_9;
  }

  if (qword_1EDBCCEE0 != -1)
  {
    swift_once();
  }

  sub_1B6AB98F0();
  sub_1B698C7EC(0, &qword_1EDBCCC50, &qword_1EDBCBAF8, MEMORY[0x1E69E7740], MEMORY[0x1E69E6F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1B6ABD890;
  *(v24 + 56) = MEMORY[0x1E69E6158];
  *(v24 + 64) = sub_1B698CEC0();
  *(v24 + 32) = v18;
  *(v24 + 40) = v17;

  sub_1B6AB8F70();

  return sub_1B6A974F8(v15);
}

uint64_t UploadBatchEventProcessor.didEndSession(_:endDate:)()
{
  sub_1B697F08C(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v9 - v3;
  v5 = type metadata accessor for Session();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtC12AppAnalytics25UploadBatchEventProcessor_currentSession;
  swift_beginAccess();
  sub_1B69B6B60(v4, v0 + v6);
  swift_endAccess();
  v7 = *(v0 + 16);
  return sub_1B69B4E4C();
}

void UploadBatchEventProcessor.flush(callbackQueue:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  if (a2)
  {
    v7[4] = a2;
    v7[5] = a3;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_1B698E534;
    v7[3] = &block_descriptor_12;
    v6 = _Block_copy(v7);
  }

  else
  {
    v6 = 0;
  }

  [v5 flushWithCallbackQueue:a1 completion:v6];
  _Block_release(v6);
}

double sub_1B6A96A98@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1B69A5E70(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B69DE7CC();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = sub_1B6AB9E10();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_1B69979CC((*(v11 + 56) + 32 * v8), a2);
    sub_1B69E5A7C(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_1B6A96C44@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X1>, uint64_t (*a3)(uint64_t)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_1B69DA8D8(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v33 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v19 = v33;
    }

    v20 = *(v19 + 48);
    v21 = sub_1B6AB8E40();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    sub_1B697F08C(0, a2, a3, MEMORY[0x1E69E8660]);
    v25 = v24;
    v32 = *(v24 - 8);
    (*(v32 + 32))(a6, v23 + *(v32 + 72) * v22, v24);
    a4(v22, v19);
    *v11 = v19;
    v26 = *(v32 + 56);
    v27 = a6;
    v28 = 0;
    v29 = v25;
  }

  else
  {
    sub_1B697F08C(0, a2, a3, MEMORY[0x1E69E8660]);
    v26 = *(*(v30 - 8) + 56);
    v29 = v30;
    v27 = a6;
    v28 = 1;
  }

  return v26(v27, v28, 1, v29);
}

double sub_1B6A96ED0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(unint64_t, uint64_t)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v10 = v6;
  v12 = *v6;
  v13 = sub_1B6993940(a1, a2);
  if (v14)
  {
    v15 = v13;
    v16 = *v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v10;
    v21 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v18 = v21;
    }

    v19 = *(*(v18 + 48) + 16 * v15 + 8);

    a3(*(v18 + 56) + 40 * v15, a6);
    a4(v15, v18);
    *v10 = v18;
  }

  else
  {
    *(a6 + 32) = 0;
    result = 0.0;
    *a6 = 0u;
    *(a6 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B6A96FA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1B6993940(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B69DF54C();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for Tracker.Timer(0);
    v22 = *(v15 - 8);
    sub_1B69B6C5C(v14 + *(v22 + 72) * v9, a3, type metadata accessor for Tracker.Timer);
    sub_1B69E6274(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Tracker.Timer(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1B6A97110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_1B69DA8D8(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v23 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B69DF7C0();
      v11 = v23;
    }

    v12 = *(v11 + 48);
    v13 = sub_1B6AB8E40();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    v14 = *(v11 + 56);
    v15 = type metadata accessor for Tracker.DelayedEvent(0);
    v22 = *(v15 - 8);
    sub_1B69B6C5C(v14 + *(v22 + 72) * v8, a2, type metadata accessor for Tracker.DelayedEvent);
    sub_1B69E6460(v8, v11);
    *v3 = v11;
    v16 = *(v22 + 56);
    v17 = a2;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for Tracker.DelayedEvent(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a2;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

uint64_t sub_1B6A972AC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_1B69DA824(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v22 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B69E0138();
      v12 = v22;
    }

    sub_1B69C2E8C(*(*(v12 + 48) + 16 * v9), *(*(v12 + 48) + 16 * v9 + 8));
    v13 = *(v12 + 56);
    v14 = type metadata accessor for UserIDComponents();
    v21 = *(v14 - 8);
    sub_1B69B6C5C(v13 + *(v21 + 72) * v9, a3, type metadata accessor for UserIDComponents);
    sub_1B69E67C8(v9, v12);
    *v4 = v12;
    v15 = *(v21 + 56);
    v16 = a3;
    v17 = 0;
    v18 = v14;
  }

  else
  {
    v19 = type metadata accessor for UserIDComponents();
    v15 = *(*(v19 - 8) + 56);
    v18 = v19;
    v16 = a3;
    v17 = 1;
  }

  return v15(v16, v17, 1, v18);
}

uint64_t sub_1B6A97418(uint64_t a1)
{
  sub_1B697F08C(0, qword_1EDBCCC78, type metadata accessor for Session, MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B6A974A4()
{
  result = qword_1EB95C660;
  if (!qword_1EB95C660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C660);
  }

  return result;
}

uint64_t sub_1B6A974F8(uint64_t a1)
{
  v2 = type metadata accessor for Session();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B6A97558()
{
  result = qword_1EB95C668;
  if (!qword_1EB95C668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C668);
  }

  return result;
}

unint64_t sub_1B6A975DC()
{
  result = qword_1EDBCBB48;
  if (!qword_1EDBCBB48)
  {
    sub_1B6AB9950();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCBB48);
  }

  return result;
}

uint64_t _s12AppAnalytics0B5ActorC14assumeIsolated_4file4linexxyKACYcYTXE_s12StaticStringVSutKlFZ(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_1B6AB90F0();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = (&v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1EDBCAA20 != -1)
  {
    swift_once();
  }

  v16 = qword_1EDBCFDA0;
  *v15 = qword_1EDBCFDA0;
  (*(v12 + 104))(v15, *MEMORY[0x1E69E8020], v11);
  v17 = v16;
  LOBYTE(v16) = sub_1B6AB9110();
  result = (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v19 = swift_allocObject();
  v19[2] = a7;
  v19[3] = a1;
  v19[4] = a2;

  sub_1B6A979BC();

  if (v7)
  {
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  v21 = swift_isEscapingClosureAtFileLocation();

  if (v21)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t static AnalyticsActor.shared.getter()
{
  type metadata accessor for AnalyticsActor();

  return swift_initStaticObject();
}

uint64_t sub_1B6A9786C()
{
  if (qword_1EDBCAA20 != -1)
  {
    swift_once();
  }

  return sub_1B6AB9AD0();
}

uint64_t _s12AppAnalytics0B5ActorC3run10resultType_xxm_xyYaKACYcYTXEtYaKlFZ(uint64_t a1, uint64_t a2, int *a3)
{
  v8 = (a3 + *a3);
  v5 = a3[1];
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B69AD75C;

  return v8(a1);
}

uint64_t sub_1B6A979BC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_1B6A97A20()
{
  type metadata accessor for AnalyticsActor();

  return swift_initStaticObject();
}

uint64_t sub_1B6A97A50(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnalyticsActor();

  return MEMORY[0x1EEE6DBF0](v3, a2);
}

id static BridgedAnalyticsActor.underlyingQueue.getter()
{
  if (qword_1EDBCAA20 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBCFDA0;

  return v1;
}

id BridgedAnalyticsActor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedAnalyticsActor.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id BridgedAnalyticsActor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6A97CCC@<X0>(uint64_t a1@<X8>)
{
  v2 = unk_1F2E74258;
  if ((unk_1F2E74258 & ~qword_1F2E74250) == 0)
  {
    v2 = 0;
  }

  v3 = qword_1F2E74260;
  if ((qword_1F2E74260 & ~(v2 | qword_1F2E74250)) == 0)
  {
    v3 = 0;
  }

  v4 = v3 | v2 | qword_1F2E74250;
  type metadata accessor for FlushProcessor();
  v5 = swift_allocObject();
  swift_weakInit();
  v5[4] = v4;
  v5[5] = 0x404E000000000000;
  v5[6] = 0;
  v5[3] = dispatch_group_create();
  *(a1 + 40) = &type metadata for TimestampJitter;
  *(a1 + 48) = &protocol witness table for TimestampJitter;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 1;
  type metadata accessor for DisabledPrivacyValidationProvider();
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 56) = v6;
  *(a1 + 64) = &protocol witness table for DisabledPrivacyValidationProvider;
  v7 = type metadata accessor for SessionManagerConfiguration();
  *(a1 + *(v7 + 36)) = 0;
  v8 = *(v7 + 32);
  v9 = type metadata accessor for DiagnosticsConsentProvider(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(a1 + v8, 1, 1, v9);
}

id BridgedAppSessionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedAppSessionManager.init()()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for SummaryEventConfiguration(0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBCB498 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDBCADE0;
  v7 = qword_1EDBCB4A0;
  if (v6 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v8 = qword_1EDBCADE8;
  v9 = qword_1EDBCAC70;
  swift_retain_n();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_1EDBCA728);
  sub_1B6980548(v10, v5, type metadata accessor for SummaryEventConfiguration);
  v11 = sub_1B6A9968C(v7, v8, v5);

  *&v0[OBJC_IVAR___AAAppSessionManager_appSessionManager] = v11;
  v14.receiver = v0;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

id BridgedAppSessionManager.__allocating_init(trackingConsent:)(void *a1)
{
  v3 = type metadata accessor for SummaryEventConfiguration(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  v8 = qword_1EDBCAC70;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v3, qword_1EDBCA728);
  sub_1B6980548(v10, v6, type metadata accessor for SummaryEventConfiguration);
  if (qword_1EDBCADE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = qword_1EDBCADE8;

  v12 = sub_1B6A9968C(v9, v11, v6);

  *&v7[OBJC_IVAR___AAAppSessionManager_appSessionManager] = v12;
  v16.receiver = v7;
  v16.super_class = v1;
  v13 = objc_msgSendSuper2(&v16, sel_init);

  return v13;
}

id BridgedAppSessionManager.init(trackingConsent:)(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for SummaryEventConfiguration(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = qword_1EDBCAC70;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_1EDBCA728);
  sub_1B6980548(v10, v7, type metadata accessor for SummaryEventConfiguration);
  if (qword_1EDBCADE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v11 = qword_1EDBCADE8;

  v12 = sub_1B6A9968C(v9, v11, v7);

  *&v1[OBJC_IVAR___AAAppSessionManager_appSessionManager] = v12;
  v16.receiver = v1;
  v16.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v16, sel_init);

  return v13;
}

id BridgedAppSessionManager.__allocating_init(trackingConsent:userDataConfiguration:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1B6A99B38(a1, a2);

  return v6;
}

id BridgedAppSessionManager.init(trackingConsent:userDataConfiguration:)(void *a1, void *a2)
{
  v4 = sub_1B6A99B38(a1, a2);

  return v4;
}

id BridgedAppSessionManager.createBridgedSessionManager()()
{
  v1 = type metadata accessor for SessionManagerConfiguration();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(v0 + OBJC_IVAR___AAAppSessionManager_appSessionManager);
  sub_1B6A97CCC(v4);
  v6 = AppSessionManager.createSessionManager(with:)(v4);
  sub_1B6A9A254(v4, type metadata accessor for SessionManagerConfiguration);
  v7 = objc_allocWithZone(type metadata accessor for BridgedSessionManager());
  v8 = sub_1B6AA700C(v6);

  return v8;
}

Swift::Void __swiftcall BridgedAppSessionManager.startAppSession()()
{
  v1 = *(v0 + OBJC_IVAR___AAAppSessionManager_appSessionManager);
  v3 = *(v1 + 24);
  v2 = *(v1 + 32);
  v4 = swift_allocObject();
  *(v4 + 16) = 1;
  *(v4 + 24) = v1;

  sub_1B69877A4(v3, sub_1B69949DC, v4);
}

Swift::Void __swiftcall BridgedAppSessionManager.startAppSession(shouldCorrelateSceneSessions:)(Swift::Bool shouldCorrelateSceneSessions)
{
  v3 = *(v1 + OBJC_IVAR___AAAppSessionManager_appSessionManager);
  v5 = *(v3 + 24);
  v4 = *(v3 + 32);
  v6 = swift_allocObject();
  *(v6 + 16) = shouldCorrelateSceneSessions;
  *(v6 + 24) = v3;

  sub_1B69877A4(v5, sub_1B6A90A48, v6);
}

uint64_t BridgedAppSessionManager.endAppSession(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___AAAppSessionManager_appSessionManager);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;

  AppSessionManager.endAppSession(_:)(sub_1B69BDB14, v6);
}

Swift::Void __swiftcall BridgedAppSessionManager.appSessionDidTerminate()()
{
  v1 = sub_1B6AB9030();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v65 = &v53 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1B6AB8DB0();
  v66 = *(v72 - 8);
  v4 = *(v66 + 64);
  v5 = MEMORY[0x1EEE9AC00](v72);
  v64 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v53 - v6;
  v75 = sub_1B6AB90C0();
  v8 = *(v75 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v75);
  v63 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v68 = &v53 - v12;
  v13 = sub_1B6AB9090();
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v67 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + OBJC_IVAR___AAAppSessionManager_appSessionManager);
  v17 = *(v16 + 24);
  sub_1B6A2ACC8();
  v18 = *(*(v16 + 24) + OBJC_IVAR___AAAccessQueue_queue);
  sub_1B6A9A194(0, &qword_1EDBC8050, type metadata accessor for WeakSessionManager, MEMORY[0x1E69E62F8]);
  v54 = v16;
  sub_1B6AB99A0();
  v19 = aBlock[0];
  if (aBlock[0] >> 62)
  {
    v20 = sub_1B6AB9E60();
    v21 = v68;
    if (!v20)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v20 = *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    v21 = v68;
    if (!v20)
    {
      goto LABEL_22;
    }
  }

  if (v20 < 1)
  {
    __break(1u);
    return;
  }

  v22 = 0;
  v76 = v19 & 0xC000000000000001;
  v23 = (v8 + 8);
  v60 = v78;
  v59 = v66 + 16;
  v58 = v4 + 7;
  v57 = v66 + 32;
  v56 = (v66 + 8);
  v71 = (v8 + 8);
  v62 = v19;
  v61 = v20;
  v55 = v7;
  do
  {
    if (v76)
    {
      MEMORY[0x1B8C98510](v22, v19);
    }

    else
    {
      v24 = *(v19 + 8 * v22 + 32);
    }

    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v26 = Strong;
      v27 = *(Strong + 56);
      sub_1B6AB90B0();
      v73 = v27;
      sub_1B6AB9910();
      v74 = *v23;
      v74(v21, v75);
      if (sub_1B6AB9010())
      {
        sub_1B6AB8DA0();
        v70 = dispatch_group_create();
        dispatch_group_enter(v70);
        v28 = *(v26 + 48);
        v29 = v67;
        sub_1B6AB9070();
        v69 = v28;
        sub_1B6A2AED0(v29);
        sub_1B6AB9070();
        sub_1B6AB9020();
        v78[2] = nullsub_1;
        v78[3] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        v78[0] = sub_1B698E534;
        v78[1] = &block_descriptor_13;
        _Block_copy(aBlock);
        v30 = sub_1B6AB90E0();
        v31 = *(v30 + 48);
        v32 = *(v30 + 52);
        swift_allocObject();
        sub_1B6AB90D0();
        v33 = *(v28 + OBJC_IVAR___AAAccessQueue_queue);
        sub_1B6AB99C0();

        v34 = v66;
        v35 = v7;
        v36 = v64;
        v37 = v72;
        (*(v66 + 16))(v64, v35, v72);
        v38 = (*(v34 + 80) + 24) & ~*(v34 + 80);
        v39 = (v58 + v38) & 0xFFFFFFFFFFFFFFF8;
        v40 = swift_allocObject();
        *(v40 + 16) = v26;
        v41 = *(v34 + 32);
        v42 = v75;
        v41(v40 + v38, v36, v37);
        v43 = v70;
        *(v40 + v39) = v70;
        v44 = v43;

        sub_1B69877A4(v69, sub_1B6A0A35C, v40);
        v21 = v68;

        v45 = v63;
        sub_1B6AB90B0();
        sub_1B6AB9100();
        v46 = v45;
        v47 = v74;
        v74(v46, v42);
        LOBYTE(v38) = sub_1B6AB9910();
        v47(v21, v42);
        if (v38)
        {
          v7 = v55;
          v48 = v72;
          if (qword_1EDBCCEE0 != -1)
          {
            swift_once();
          }

          sub_1B6AB98E0();
          sub_1B6AB8F70();

          (*v56)(v7, v48);
        }

        else
        {
          v7 = v55;
          (*v56)(v55, v72);
        }

        v19 = v62;
        v20 = v61;
        v23 = v71;
      }

      else
      {
        if (qword_1EDBCCEE0 != -1)
        {
          swift_once();
        }

        sub_1B6AB98E0();
        sub_1B6AB8F70();

        v23 = v71;
      }
    }

    else
    {
    }

    ++v22;
  }

  while (v20 != v22);
LABEL_22:

  v49 = v54;
  v50 = *(v54 + 24);
  v51 = v67;
  sub_1B6AB9050();
  sub_1B6A2AED0(v51);
  v52 = OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks;
  swift_beginAccess();
  if (*(v49 + v52))
  {

    sub_1B6AB9710();
  }
}

uint64_t BridgedAppSessionManager.userEventsID()@<X0>(uint64_t a1@<X8>)
{
  if (*(*(v1 + OBJC_IVAR___AAAppSessionManager_appSessionManager) + 40))
  {
    sub_1B6A81954(a1);
    v3 = 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = sub_1B6AB8E40();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, v3, 1, v4);
}

id BridgedAppSessionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1B6A9968C(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DiagnosticsConsentProvider(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v39 - v11;
  v13 = type metadata accessor for SummaryEventConfiguration(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42[3] = type metadata accessor for CrashDetector();
  v42[4] = &protocol witness table for CrashDetector;
  v42[0] = a2;
  if (qword_1EDBCB568 != -1)
  {
    swift_once();
  }

  v17 = qword_1EDBCB570;
  sub_1B6982544(v42, v41);
  sub_1B6980548(a3, v16, type metadata accessor for SummaryEventConfiguration);
  memset(v40, 0, sizeof(v40));
  sub_1B6AB8E30();
  v18 = &v12[*(v6 + 20)];
  *v18 = sub_1B69A3378;
  *(v18 + 1) = 0;
  v19 = type metadata accessor for AppSessionManager();
  v20 = *(v19 + 48);
  v21 = *(v19 + 52);
  v22 = swift_allocObject();
  v23 = v22;
  v22[2] = 0;
  v22[7] = 0;
  v22[8] = 0;
  v22[9] = MEMORY[0x1E69E7CC0];
  *(v22 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks) = 0;
  v22[3] = v17;
  if (a1)
  {
    v24 = *&a1[OBJC_IVAR___AATrackingConsent_accessGroup];
    v22[4] = v24;
    v25 = v17;
    v26 = a1;
  }

  else
  {
    v27 = v17;
    v23[4] = dispatch_group_create();
    if (qword_1EDBCB498 != -1)
    {
      swift_once();
    }

    v24 = qword_1EDBCB4A0;
    v26 = qword_1EDBCB4A0;
  }

  v28 = v24;
  v23[6] = v26;
  sub_1B6982544(v41, (v23 + 10));
  sub_1B6980548(v16, v23 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_summaryEventConfiguration, type metadata accessor for SummaryEventConfiguration);
  sub_1B6980548(v40, v39, sub_1B6A8FF44);
  sub_1B6980548(v12, v10, type metadata accessor for DiagnosticsConsentProvider);
  if (a1)
  {
    v29 = a1;
  }

  else
  {
    if (qword_1EB95A990 != -1)
    {
      swift_once();
    }

    v29 = qword_1EB967220;
  }

  v30 = type metadata accessor for UserDataManager();
  v31 = *(v30 + 48);
  v32 = *(v30 + 52);
  swift_allocObject();
  v33 = a1;
  v23[5] = sub_1B6A7D3E8(v39, v10, v29);
  sub_1B6980548(v12, v23 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  v34 = v23[4];
  v35 = qword_1EDBCAA18;

  if (v35 != -1)
  {
    swift_once();
  }

  v36 = qword_1EDBCFD78;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1B6A90A44;
  *(v37 + 24) = v23;

  sub_1B69877A4(v36, sub_1B6A402B8, v37);

  sub_1B6A9A254(a3, type metadata accessor for SummaryEventConfiguration);
  sub_1B6A9A254(v12, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6A9A254(v40, sub_1B6A8FF44);
  sub_1B6A9A254(v16, type metadata accessor for SummaryEventConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v41);
  __swift_destroy_boxed_opaque_existential_1(v42);
  return v23;
}

id sub_1B6A99B38(void *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DiagnosticsConsentProvider(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v46 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v45 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v45 - v11;
  v12 = type metadata accessor for SummaryEventConfiguration(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v45 - v17;
  v19 = qword_1EDBCAC70;
  v20 = a1;
  if (v19 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v12, qword_1EDBCA728);
  sub_1B6980548(v21, v18, type metadata accessor for SummaryEventConfiguration);
  sub_1B6A9A1F8(a2 + OBJC_IVAR___AAUserDataConfiguration_userDataConfiguration, v55);
  if (qword_1EDBCADE0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v22 = qword_1EDBCADE8;
  v54[3] = type metadata accessor for CrashDetector();
  v54[4] = &protocol witness table for CrashDetector;
  v54[0] = v22;

  v23 = v49;
  sub_1B6AB8E30();
  v24 = (v23 + *(v4 + 20));
  *v24 = sub_1B69A3378;
  v24[1] = 0;
  if (v55[0])
  {
    if (qword_1EB95A9E8 != -1)
    {
      swift_once();
    }

    v25 = qword_1EB967240;
    os_unfair_lock_lock((qword_1EB967240 + 24));
    sub_1B6A8DCFC((v25 + 16));
    os_unfair_lock_unlock((v25 + 24));
  }

  if (qword_1EDBCB568 != -1)
  {
    swift_once();
  }

  v26 = qword_1EDBCB570;
  sub_1B6982544(v54, v53);
  sub_1B6980548(v18, v16, type metadata accessor for SummaryEventConfiguration);
  sub_1B6980548(v55, v52, sub_1B6A8FF44);
  sub_1B6980548(v49, v10, type metadata accessor for DiagnosticsConsentProvider);
  v27 = type metadata accessor for AppSessionManager();
  v28 = *(v27 + 48);
  v29 = *(v27 + 52);
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[7] = 0;
  v30[8] = 0;
  v30[9] = MEMORY[0x1E69E7CC0];
  *(v30 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_userDataManagerTasks) = 0;
  v30[3] = v26;
  v45 = v18;
  v31 = *&v20[OBJC_IVAR___AATrackingConsent_accessGroup];
  v30[4] = v31;
  v30[6] = v20;
  sub_1B6982544(v53, (v30 + 10));
  sub_1B6980548(v16, v30 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_summaryEventConfiguration, type metadata accessor for SummaryEventConfiguration);
  sub_1B6980548(v52, v51, sub_1B6A8FF44);
  v32 = v46;
  sub_1B6980548(v10, v46, type metadata accessor for DiagnosticsConsentProvider);
  v33 = type metadata accessor for UserDataManager();
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  swift_allocObject();
  v36 = v20;
  v37 = v26;
  v38 = v31;
  v30[5] = sub_1B6A7D3E8(v51, v32, v36);
  sub_1B6980548(v10, v30 + OBJC_IVAR____TtC12AppAnalytics17AppSessionManager_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  v39 = v30[4];
  v40 = qword_1EDBCAA18;

  if (v40 != -1)
  {
    swift_once();
  }

  v41 = qword_1EDBCFD78;
  v42 = swift_allocObject();
  *(v42 + 16) = sub_1B6A8FF94;
  *(v42 + 24) = v30;

  sub_1B69877A4(v41, sub_1B69B6F90, v42);

  sub_1B6A9A254(v10, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6A9A254(v52, sub_1B6A8FF44);
  sub_1B6A9A254(v16, type metadata accessor for SummaryEventConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v53);
  sub_1B6A9A254(v49, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6A9A254(v45, type metadata accessor for SummaryEventConfiguration);
  __swift_destroy_boxed_opaque_existential_1(v54);
  sub_1B6A9A254(v55, sub_1B6A8FF44);
  v43 = v48;
  *&v48[OBJC_IVAR___AAAppSessionManager_appSessionManager] = v30;
  v50.receiver = v43;
  v50.super_class = ObjectType;
  return objc_msgSendSuper2(&v50, sel_init);
}

void sub_1B6A9A194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1B6A9A254(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FlushProcessor.__allocating_init(flushEvents:flushInterval:)(uint64_t *a1, double a2)
{
  v4 = swift_allocObject();
  v5 = *a1;
  swift_weakInit();
  *(v4 + 48) = 0;
  *(v4 + 32) = v5;
  *(v4 + 40) = a2;
  *(v4 + 24) = dispatch_group_create();
  return v4;
}

uint64_t sub_1B6A9A370()
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_1B6A9A3C0(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_1B6A9A450;
}

void sub_1B6A9A450(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 24);
  v5 = *(*a1 + 32);
  swift_weakAssign();
  if (a2)
  {
    v6 = v3[3];

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t FlushProcessor.deinit()
{
  if (*(v0 + 48))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B6AB9A30();
    swift_unknownObjectRelease();
    v1 = *(v0 + 48);
    *(v0 + 48) = 0;
    swift_unknownObjectRelease();
  }

  swift_weakDestroy();

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();
  return v0;
}

uint64_t FlushProcessor.__deallocating_deinit()
{
  if (*(v0 + 48))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B6AB9A30();
    swift_unknownObjectRelease();
    v1 = *(v0 + 48);
    *(v0 + 48) = 0;
    swift_unknownObjectRelease();
  }

  swift_weakDestroy();

  v2 = *(v0 + 48);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A9A5E0()
{
  sub_1B69A214C(0, &unk_1EDBCAA60, MEMORY[0x1E69E7FA8], MEMORY[0x1E69E6720]);
  v2 = *(*(v1 - 8) + 64);
  result = MEMORY[0x1EEE9AC00](v1 - 8);
  v5 = &v19 - v4;
  if (*(v0 + 48))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1B6AB9A30();
    swift_unknownObjectRelease();
    v6 = *(v0 + 48);
    *(v0 + 48) = 0;
    result = swift_unknownObjectRelease();
  }

  if ((*(v0 + 32) & 4) != 0)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = result;
      v8 = *(v0 + 24);
      dispatch_group_enter(v8);
      v9 = sub_1B6AB9040();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      v10 = _s12AppAnalytics11AccessQueueC6globalyAC8Dispatch0F3QoSV0G6SClassOSgFZ_0(v5);
      sub_1B69BD428(v5);
      v11 = swift_allocObject();
      *(v11 + 16) = v8;
      v13 = v7[6];
      v12 = v7[7];
      v14 = swift_allocObject();
      v15 = v7[3];
      swift_weakInit();
      v16 = swift_allocObject();
      v16[2] = v14;
      v16[3] = v10;
      v16[4] = sub_1B69C8DA0;
      v16[5] = v11;
      v17 = v8;

      v18 = v10;

      sub_1B69877A4(v13, sub_1B69A4190, v16);
    }
  }

  return result;
}

void sub_1B6A9A828()
{
  if ((*(v0 + 32) & 8) != 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (qword_1EDBCAF40 != -1)
      {
        v2 = Strong;
        swift_once();
        Strong = v2;
      }

      [Strong flushWithCallbackQueue:qword_1EDBCAA10 completion:0];
    }
  }
}

void sub_1B6A9A8D4(void *a1, double a2)
{
  if (qword_1EDBCAA78 != -1)
  {
    swift_once();
  }

  v4 = sub_1B6AB8F90();
  __swift_project_value_buffer(v4, qword_1EDBCFDA8);
  v5 = sub_1B6AB8F80();
  v6 = sub_1B6AB98D0();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a2;
    _os_log_impl(&dword_1B697C000, v5, v6, "Flushing analytics data based on %g-second flush interval", v7, 0xCu);
    MEMORY[0x1B8C99550](v7, -1, -1);
  }

  if (a1)
  {
    if (qword_1EDBCAF40 != -1)
    {
      swift_once();
    }

    v8 = qword_1EDBCAA10;

    [a1 flushWithCallbackQueue:v8 completion:0];
  }
}

unint64_t sub_1B6A9AA40()
{
  result = qword_1EB95C678;
  if (!qword_1EB95C678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C678);
  }

  return result;
}

unint64_t sub_1B6A9AA98()
{
  result = qword_1EB95C680;
  if (!qword_1EB95C680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C680);
  }

  return result;
}

unint64_t sub_1B6A9AC68()
{
  result = qword_1EB95C688;
  if (!qword_1EB95C688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C688);
  }

  return result;
}

uint64_t sub_1B6A9ACCC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B6A9AF04();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  swift_unknownObjectRetain();
  if (v10)
  {
    v11 = [v9 endpointURLWithContentType_];
    if (v11)
    {
      v12 = v11;
      sub_1B6AB8B60();
      swift_unknownObjectRelease();

      v13 = sub_1B6AB8BB0();
      (*(*(v13 - 8) + 56))(v8, 0, 1, v13);
    }

    else
    {
      swift_unknownObjectRelease();
      v18 = sub_1B6AB8BB0();
      (*(*(v18 - 8) + 56))(v8, 1, 1, v18);
    }

    return sub_1B6A9AF5C(v8, a2);
  }

  else
  {
    v14 = [v9 url];
    sub_1B6AB8B60();
    swift_unknownObjectRelease();

    v15 = sub_1B6AB8BB0();
    v16 = *(*(v15 - 8) + 56);

    return v16(a2, 0, 1, v15);
  }
}

uint64_t sub_1B6A9AEB0()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1B6A9AF04()
{
  if (!qword_1EDBCCC40)
  {
    sub_1B6AB8BB0();
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBCCC40);
    }
  }
}

uint64_t sub_1B6A9AF5C(uint64_t a1, uint64_t a2)
{
  sub_1B6A9AF04();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id BridgedSessionObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedSessionObserver.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedSessionObserver();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6A9B138(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 24);
  v8 = *(v3 + 32);
  ObjectType = swift_getObjectType();
  return (*(v8 + 8))(a1, a2, a3, ObjectType, v8);
}

uint64_t sub_1B6A9B1A8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 24);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A9B210(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(v4 + 16))(a1, ObjectType, v4);
}

uint64_t sub_1B6A9B268(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(v4 + 24))(a1, ObjectType, v4);
}

uint64_t sub_1B6A9B2C0(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  return (*(v4 + 32))(a1, ObjectType, v4);
}

uint64_t sub_1B6A9B318(uint64_t a1)
{
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  ObjectType = swift_getObjectType();
  (*(v4 + 40))(a1, ObjectType, v4);
  return (*(v4 + 56))(a1, 0, ObjectType, v4);
}

uint64_t sub_1B6A9B3A0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  ObjectType = swift_getObjectType();
  return (*(v6 + 48))(a1, a2, ObjectType, v6);
}

uint64_t sub_1B6A9B408()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 32);
  return swift_unknownObjectRetain();
}

uint64_t sub_1B6A9B434(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v7 = *(v3 + 24);
  aBlock[6] = &unk_1F2E868A0;
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v9 = result;
    if (a2)
    {
      aBlock[4] = a2;
      aBlock[5] = a3;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1B698E534;
      aBlock[3] = &block_descriptor_15;
      v10 = _Block_copy(aBlock);
      swift_unknownObjectRetain();
      sub_1B69A18C0(a2);
    }

    else
    {
      swift_unknownObjectRetain();
      v10 = 0;
    }

    [v9 flushWithCallbackQueue:a1 completion:v10];
    _Block_release(v10);
    return swift_unknownObjectRelease();
  }

  else if (a2)
  {
    return a2();
  }

  return result;
}

uint64_t sub_1B6A9B648@<X0>(uint64_t a1@<X8>)
{
  sub_1B6988078(0, &qword_1EDBCCC40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider____lazy_storage___debugBaseURL;
  swift_beginAccess();
  sub_1B699AA2C(v1 + v10, v9);
  v11 = sub_1B6AB8BB0();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v9, 1, v11) != 1)
  {
    return (*(v12 + 32))(a1, v9, v11);
  }

  sub_1B699AAC0(v9);
  v13 = *(v1 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider_staticPathProvider + 24);
  v14 = *(v1 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider_staticPathProvider + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider_staticPathProvider), v13);
  (*(v14 + 16))(v13, v14);
  (*(v12 + 16))(v7, a1, v11);
  (*(v12 + 56))(v7, 0, 1, v11);
  swift_beginAccess();
  sub_1B699AD30(v7, v1 + v10);
  return swift_endAccess();
}

uint64_t sub_1B6A9B884()
{
  sub_1B699AAC0(v0 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider____lazy_storage___baseURL);
  sub_1B699AAC0(v0 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider____lazy_storage___debugBaseURL);
  v1 = *(v0 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider_environmentName + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider_fileManager));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12AppAnalytics42DocumentDirectoryUploadDropboxPathProvider_staticPathProvider));
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A9B958()
{
  v1 = OBJC_IVAR____TtC12AppAnalytics46BaseDocumentDirectoryUploadDropboxPathProvider_baseURL;
  v2 = sub_1B6AB8BB0();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC12AppAnalytics46BaseDocumentDirectoryUploadDropboxPathProvider_debugBaseURL, v2);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A9BA44@<X0>(uint64_t *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *a1;
  v6 = sub_1B6AB8BB0();
  v7 = *(*(v6 - 8) + 16);

  return v7(a2, v4 + v5, v6);
}

uint64_t sub_1B6A9BADC()
{
  sub_1B699AAC0(v0 + OBJC_IVAR____TtC12AppAnalytics31StaticUploadDropboxPathProvider____lazy_storage___baseURL);
  sub_1B699AAC0(v0 + OBJC_IVAR____TtC12AppAnalytics31StaticUploadDropboxPathProvider____lazy_storage___debugBaseURL);
  v1 = *(v0 + OBJC_IVAR____TtC12AppAnalytics31StaticUploadDropboxPathProvider_baseURLProvider + 8);

  v2 = *(v0 + OBJC_IVAR____TtC12AppAnalytics31StaticUploadDropboxPathProvider_debugURLProvider + 8);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC12AppAnalytics31StaticUploadDropboxPathProvider_fileManager));
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A9BBB4()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1B6A9BC3C()
{
  if (*v0)
  {
    return 0x6E6F6973726576;
  }

  else
  {
    return 0x65636E65646163;
  }
}

uint64_t sub_1B6A9BC70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636E65646163 && a2 == 0xE700000000000000;
  if (v6 || (sub_1B6ABA0F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();

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

uint64_t sub_1B6A9BD4C(uint64_t a1)
{
  v2 = sub_1B6A9BF3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6A9BD88(uint64_t a1)
{
  v2 = sub_1B6A9BF3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RotationPeriod.encode(to:)(void *a1)
{
  sub_1B6A9C140(0, &qword_1EB95C698, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v9 = v13 - v8;
  v10 = *v1;
  v13[1] = v1[1];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A9BF3C();
  sub_1B6ABA2D0();
  v15 = 0;
  sub_1B6ABA030();
  if (!v2)
  {
    v14 = 1;
    sub_1B6ABA030();
  }

  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_1B6A9BF3C()
{
  result = qword_1EB95C6A0;
  if (!qword_1EB95C6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C6A0);
  }

  return result;
}

uint64_t RotationPeriod.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1B6A9C140(0, &qword_1EB95C6A8, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v15 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6A9BF3C();
  sub_1B6ABA2A0();
  if (!v2)
  {
    v17 = 0;
    v12 = sub_1B6AB9F80();
    v16 = 1;
    v14 = sub_1B6AB9F80();
    (*(v7 + 8))(v10, v6);
    *a2 = v12;
    a2[1] = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1B6A9C140(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6A9BF3C();
    v7 = a3(a1, &type metadata for RotationPeriod.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for RotationPeriod(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for RotationPeriod(uint64_t result, int a2, int a3)
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

unint64_t sub_1B6A9C26C()
{
  result = qword_1EB95C6B0;
  if (!qword_1EB95C6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C6B0);
  }

  return result;
}

unint64_t sub_1B6A9C2C4()
{
  result = qword_1EB95C6B8;
  if (!qword_1EB95C6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C6B8);
  }

  return result;
}

unint64_t sub_1B6A9C31C()
{
  result = qword_1EB95C6C0;
  if (!qword_1EB95C6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C6C0);
  }

  return result;
}

uint64_t DataEventTrait.hashValue.getter()
{
  v1 = *v0;
  sub_1B6ABA1F0();
  MEMORY[0x1B8C98A40](v1);
  return sub_1B6ABA230();
}

unint64_t sub_1B6A9C3FC()
{
  result = qword_1EB95C6C8;
  if (!qword_1EB95C6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C6C8);
  }

  return result;
}

void sub_1B6A9C450(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_1B6A9C508(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_DWORD *sub_1B6A9C644(_DWORD *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *v18 = v19;
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t sub_1B6A9C7F8()
{
  v1 = *(v0 + 16);
  sub_1B6AB96D0();
  return sub_1B6AB96C0();
}

unint64_t sub_1B6A9C83C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(v4 + 40);
  v9 = sub_1B6AB9250();

  return sub_1B6A9C898(a1, v9, a2, a3);
}

unint64_t sub_1B6A9C898(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a1;
  v24 = a4;
  v6 = *(*(a3 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
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
      v21 = sub_1B6AB92A0();
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

id DefaultUserIDStorage.init(accessGroup:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 24) = &type metadata for DefaultKeyValueStore;
  *(a3 + 32) = &off_1F2E74C50;
  *a3 = a1;
  *(a3 + 8) = a2;
  result = [objc_opt_self() standardUserDefaults];
  *(a3 + 40) = 0xD000000000000017;
  *(a3 + 48) = 0x80000001B6AC94D0;
  *(a3 + 72) = 2;
  *(a3 + 56) = 2;
  *(a3 + 64) = result;
  return result;
}

id DefaultUserIDStorage.init(accessGroup:syncRequirements:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = *a3;
  *(a4 + 24) = &type metadata for DefaultKeyValueStore;
  *(a4 + 32) = &off_1F2E74C50;
  *a4 = a1;
  *(a4 + 8) = a2;
  result = [objc_opt_self() standardUserDefaults];
  *(a4 + 40) = 0xD000000000000017;
  *(a4 + 48) = 0x80000001B6AC94D0;
  *(a4 + 72) = 2;
  *(a4 + 56) = v5;
  *(a4 + 64) = result;
  return result;
}

void DefaultUserIDStorage.store(userIDComponents:for:isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)(uint64_t a1, uint64_t *a2, char a3, char a4)
{
  v115 = a1;
  v5 = v4;
  v9 = type metadata accessor for StoredUserIDComponents();
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v107[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v112 = &v107[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v111 = &v107[-v16];
  v17 = *a2;
  v18 = a2[1];
  v19 = *(v5 + 56);
  if ((v19 & 1) == 0 || (a4) && ((v19 & 2) == 0 || (a3))
  {
    v20 = *(v5 + 72);
    if (v20 == 2)
    {
      v73 = a2[1];
      v74 = v17;
      v75 = [objc_opt_self() defaultManager];
      v76 = [v75 ubiquityIdentityToken];

      if (v76)
      {
        swift_unknownObjectRelease();
        LOBYTE(v20) = 1;
      }

      else
      {
        LOBYTE(v20) = 0;
      }

      v17 = v74;
      v18 = v73;
    }
  }

  else
  {
    LOBYTE(v20) = 0;
  }

  v22 = *(v5 + 40);
  v21 = *(v5 + 48);
  v118 = 0;
  v119 = 0xE000000000000000;
  v23 = 0xE900000000000079;
  v24 = 0x7274656D656C6574;
  v25 = 0xE800000000000000;
  v26 = 0x656D69746C616572;
  if (v18 != 2)
  {
    v26 = v17;
    v25 = v18;
  }

  if (v18 != 1)
  {
    v24 = v26;
    v23 = v25;
  }

  if (v18)
  {
    v27 = v24;
  }

  else
  {
    v27 = 0x6E65764572657375;
  }

  if (v18)
  {
    v28 = v23;
  }

  else
  {
    v28 = 0xEA00000000007374;
  }

  sub_1B6992E2C(v17, v18);
  MEMORY[0x1B8C97BE0](v27, v28);

  v29 = v118;
  v30 = v119;
  v118 = v22;
  v119 = v21;

  MEMORY[0x1B8C97BE0](v29, v30);

  v32 = v118;
  v31 = v119;
  v118 = 59;
  v119 = 0xE100000000000000;
  if (v20)
  {
    v33 = 0x646572616873;
  }

  else
  {
    v33 = 0x6C61636F6CLL;
  }

  if (v20)
  {
    v34 = 0xE600000000000000;
  }

  else
  {
    v34 = 0xE500000000000000;
  }

  MEMORY[0x1B8C97BE0](v33, v34);

  v35 = v118;
  v36 = v119;
  v118 = v32;
  v119 = v31;

  MEMORY[0x1B8C97BE0](v35, v36);

  v38 = v118;
  v37 = v119;
  if (v20)
  {
    v39 = *(v5 + 24);
    v40 = *(v5 + 32);
    __swift_project_boxed_opaque_existential_1(v5, v39);
    v110 = *(v40 + 16);
    v41 = v38;
    v42 = sub_1B6A9E86C(&qword_1EB95C6D8);
    v43 = sub_1B6A9E86C(&qword_1EB95C6E0);
    v44 = sub_1B6A9E86C(&qword_1EB95C6D0);
    v45 = v114;
    (v110)(v115, v41, v37, 1, v9, v42, v43, v44, v39, v40);
    if (v45)
    {

      return;
    }

    v110 = v9;
    v113 = v41;
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v77 = sub_1B6AB8F90();
    __swift_project_value_buffer(v77, qword_1EDBCFD80);
    v78 = v111;
    sub_1B6A9E908(v115, v111, type metadata accessor for StoredUserIDComponents);

    v79 = sub_1B6AB8F80();
    v80 = sub_1B6AB98D0();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v117 = v115;
      *v81 = 136315394;
      v82 = v112;
      sub_1B6A9E908(v78, v112, type metadata accessor for StoredUserIDComponents);
      v118 = 0;
      v119 = 0xE000000000000000;
      LODWORD(v114) = v80;
      sub_1B6AB9CA0();
      MEMORY[0x1B8C97BE0](0xD00000000000001DLL, 0x80000001B6ACEE10);
      type metadata accessor for RotationMode();
      sub_1B6AB9DF0();
      MEMORY[0x1B8C97BE0](0xD000000000000012, 0x80000001B6ACEE30);
      v116 = *&v82[*(v110 + 20)];
      sub_1B6AB9DF0();
      MEMORY[0x1B8C97BE0](41, 0xE100000000000000);
      v83 = v118;
      v84 = v119;
      sub_1B6A9E970(v82, type metadata accessor for StoredUserIDComponents);
      sub_1B6A9E970(v78, type metadata accessor for StoredUserIDComponents);
      v85 = sub_1B698F63C(v83, v84, &v117);

      *(v81 + 4) = v85;
      *(v81 + 12) = 2080;
      v86 = sub_1B698F63C(v113, v37, &v117);

      *(v81 + 14) = v86;
      _os_log_impl(&dword_1B697C000, v79, v114, "Stored ID components for sync in keychain: %s, with key: %s", v81, 0x16u);
      v87 = v115;
      swift_arrayDestroy();
      MEMORY[0x1B8C99550](v87, -1, -1);
      MEMORY[0x1B8C99550](v81, -1, -1);

      return;
    }

    v106 = v78;
LABEL_47:
    sub_1B6A9E970(v106, type metadata accessor for StoredUserIDComponents);
    return;
  }

  v46 = v13;
  v47 = sub_1B6AB88A0();
  v48 = *(v47 + 48);
  v49 = *(v47 + 52);
  swift_allocObject();
  sub_1B6AB8890();
  sub_1B6A9E86C(&qword_1EB95C6D0);
  v50 = v114;
  v51 = sub_1B6AB8870();
  v113 = v38;
  if (!v50)
  {
    v88 = v51;
    v110 = v9;
    v89 = v52;

    v90 = *(v5 + 64);
    v111 = v89;
    v91 = sub_1B6AB8C60();
    v92 = sub_1B6AB92B0();
    [v90 setObject:v91 forKey:v92];

    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v93 = sub_1B6AB8F90();
    __swift_project_value_buffer(v93, qword_1EDBCFD80);
    v94 = v46;
    sub_1B6A9E908(v115, v46, type metadata accessor for StoredUserIDComponents);

    v95 = sub_1B6AB8F80();
    v96 = sub_1B6AB98D0();

    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v117 = v115;
      *v97 = 136315394;
      v98 = v46;
      v99 = v112;
      sub_1B6A9E908(v98, v112, type metadata accessor for StoredUserIDComponents);
      v118 = 0;
      v119 = 0xE000000000000000;
      v109 = v95;
      sub_1B6AB9CA0();
      MEMORY[0x1B8C97BE0](0xD00000000000001DLL, 0x80000001B6ACEE10);
      type metadata accessor for RotationMode();
      v108 = v96;
      sub_1B6AB9DF0();
      MEMORY[0x1B8C97BE0](0xD000000000000012, 0x80000001B6ACEE30);
      v116 = *&v99[*(v110 + 20)];
      sub_1B6AB9DF0();
      MEMORY[0x1B8C97BE0](41, 0xE100000000000000);
      v100 = v118;
      v101 = v119;
      sub_1B6A9E970(v99, type metadata accessor for StoredUserIDComponents);
      sub_1B6A9E970(v94, type metadata accessor for StoredUserIDComponents);
      v102 = sub_1B698F63C(v100, v101, &v117);

      *(v97 + 4) = v102;
      *(v97 + 12) = 2080;
      v103 = sub_1B698F63C(v113, v37, &v117);

      *(v97 + 14) = v103;
      v104 = v109;
      _os_log_impl(&dword_1B697C000, v109, v108, "Stored ID components in UserDefaults: %s, with key: %s", v97, 0x16u);
      v105 = v115;
      swift_arrayDestroy();
      MEMORY[0x1B8C99550](v105, -1, -1);
      MEMORY[0x1B8C99550](v97, -1, -1);
      sub_1B6993C94(v88, v111);

      return;
    }

    sub_1B6993C94(v88, v111);

    v106 = v46;
    goto LABEL_47;
  }

  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v53 = sub_1B6AB8F90();
  v54 = __swift_project_value_buffer(v53, qword_1EDBCFD80);
  v55 = v50;
  v56 = sub_1B6AB8F80();
  v57 = sub_1B6AB98E0();

  v58 = os_log_type_enabled(v56, v57);
  v114 = v50;
  if (v58)
  {
    v59 = swift_slowAlloc();
    v115 = v54;
    v60 = v59;
    v61 = swift_slowAlloc();
    v118 = v61;
    *v60 = 136315138;
    swift_getErrorValue();
    v62 = sub_1B6ABA1A0();
    v64 = sub_1B698F63C(v62, v63, &v118);

    *(v60 + 4) = v64;
    _os_log_impl(&dword_1B697C000, v56, v57, "Failed to encode userIDComponents for UserDefaults. Error: %s", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v61);
    MEMORY[0x1B8C99550](v61, -1, -1);
    MEMORY[0x1B8C99550](v60, -1, -1);
  }

  v65 = *(v5 + 64);
  v66 = v113;
  v67 = sub_1B6AB92B0();
  [v65 removeObjectForKey_];

  v68 = sub_1B6AB8F80();
  v69 = sub_1B6AB98E0();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v118 = v71;
    *v70 = 136315138;
    v72 = sub_1B698F63C(v66, v37, &v118);

    *(v70 + 4) = v72;
    _os_log_impl(&dword_1B697C000, v68, v69, "Removed potentially stale value for key: %s due to encoding failure.", v70, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v71);
    MEMORY[0x1B8C99550](v71, -1, -1);
    MEMORY[0x1B8C99550](v70, -1, -1);
  }

  else
  {
  }

  swift_willThrow();
}

uint64_t DefaultUserIDStorage.userIDComponents(for:isDiagnosticSubmissionAllowed:isTrackingConsentAllowed:)@<X0>(uint64_t *a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = v5;
  v7 = v4;
  v12 = type metadata accessor for StoredUserIDComponents();
  v135 = *(v12 - 8);
  v13 = *(v135 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v130 = &v124[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v131 = &v124[-v17];
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v124[-v18];
  sub_1B6A9E8B0();
  v21 = *(*(v20 - 8) + 64);
  v22 = MEMORY[0x1EEE9AC00](v20 - 8);
  v132 = &v124[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = MEMORY[0x1EEE9AC00](v22);
  v134 = &v124[-v25];
  MEMORY[0x1EEE9AC00](v24);
  v136 = &v124[-v26];
  v137 = v12;
  v27 = *a1;
  v28 = a1[1];
  v29 = *(v7 + 56);
  v133 = v19;
  if ((v29 & 1) == 0 || (a3) && ((v29 & 2) == 0 || (a2))
  {
    v30 = *(v7 + 72);
    if (v30 == 2)
    {
      v58 = v28;
      v59 = v27;
      v60 = [objc_opt_self() defaultManager];
      v61 = [v60 ubiquityIdentityToken];

      if (v61)
      {
        swift_unknownObjectRelease();
        LOBYTE(v30) = 1;
      }

      else
      {
        LOBYTE(v30) = 0;
      }

      v27 = v59;
      v28 = v58;
    }
  }

  else
  {
    LOBYTE(v30) = 0;
  }

  v31 = *(v7 + 40);
  v32 = *(v7 + 48);
  *&v141[0] = 0;
  *(&v141[0] + 1) = 0xE000000000000000;
  v33 = 0xE900000000000079;
  v34 = 0x7274656D656C6574;
  v35 = 0xE800000000000000;
  v36 = 0x656D69746C616572;
  if (v28 != 2)
  {
    v36 = v27;
    v35 = v28;
  }

  if (v28 != 1)
  {
    v34 = v36;
    v33 = v35;
  }

  if (v28)
  {
    v37 = v34;
  }

  else
  {
    v37 = 0x6E65764572657375;
  }

  if (v28)
  {
    v38 = v33;
  }

  else
  {
    v38 = 0xEA00000000007374;
  }

  sub_1B6992E2C(v27, v28);
  MEMORY[0x1B8C97BE0](v37, v38);

  v39 = v141[0];
  *&v141[0] = v31;
  *(&v141[0] + 1) = v32;

  MEMORY[0x1B8C97BE0](v39, *(&v39 + 1));

  v40 = v141[0];
  *&v141[0] = 59;
  *(&v141[0] + 1) = 0xE100000000000000;
  if (v30)
  {
    v41 = 0x646572616873;
  }

  else
  {
    v41 = 0x6C61636F6CLL;
  }

  if (v30)
  {
    v42 = 0xE600000000000000;
  }

  else
  {
    v42 = 0xE500000000000000;
  }

  MEMORY[0x1B8C97BE0](v41, v42);

  v44 = *(&v141[0] + 1);
  v43 = *&v141[0];
  v141[0] = v40;

  MEMORY[0x1B8C97BE0](v43, v44);

  v45 = *(&v141[0] + 1);
  v46 = *&v141[0];
  if (v30)
  {
    v129 = a4;
    v48 = *(v7 + 24);
    v47 = *(v7 + 32);
    __swift_project_boxed_opaque_existential_1(v7, v48);
    v133 = *(v47 + 8);
    v49 = sub_1B6A9E86C(&qword_1EB95C6D8);
    v50 = v46;
    v51 = sub_1B6A9E86C(&qword_1EB95C6E0);
    v52 = sub_1B6A9E86C(&qword_1EB95C6D0);
    v123 = v47;
    v53 = v137;
    v133(v50, v45, 1, v137, v49, v51, v52, v48, v123);
    if (v6)
    {
    }

    v128 = v50;
    v62 = v129;
    if (qword_1EDBCAA70 != -1)
    {
      swift_once();
    }

    v63 = sub_1B6AB8F90();
    __swift_project_value_buffer(v63, qword_1EDBCFD80);
    v64 = v136;
    v65 = v134;
    sub_1B6A9E908(v136, v134, sub_1B6A9E8B0);

    v66 = sub_1B6AB8F80();
    v67 = sub_1B6AB98D0();

    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v138[0] = v133;
      *v68 = 136315394;
      v69 = v132;
      sub_1B6A9E908(v65, v132, sub_1B6A9E8B0);
      v70 = (*(v135 + 48))(v69, 1, v53);
      v71 = 0xE000000000000000;
      v72 = sub_1B6A9E8B0;
      if (v70 == 1)
      {
        v73 = 0;
      }

      else
      {
        *&v141[0] = 0;
        *(&v141[0] + 1) = 0xE000000000000000;
        sub_1B6AB9CA0();
        MEMORY[0x1B8C97BE0](0xD00000000000001DLL, 0x80000001B6ACEE10);
        type metadata accessor for RotationMode();
        sub_1B6AB9DF0();
        MEMORY[0x1B8C97BE0](0xD000000000000012, 0x80000001B6ACEE30);
        v139 = *&v69[*(v53 + 20)];
        sub_1B6AB9DF0();
        MEMORY[0x1B8C97BE0](41, 0xE100000000000000);
        v71 = *(&v141[0] + 1);
        v73 = *&v141[0];
        v72 = type metadata accessor for StoredUserIDComponents;
      }

      sub_1B6A9E970(v69, v72);
      sub_1B6A9E970(v134, sub_1B6A9E8B0);
      v120 = sub_1B698F63C(v73, v71, v138);

      *(v68 + 4) = v120;
      *(v68 + 12) = 2080;
      v121 = sub_1B698F63C(v128, v45, v138);

      *(v68 + 14) = v121;
      _os_log_impl(&dword_1B697C000, v66, v67, "Retrieved user ID components: %s, from keychain, with key: %s", v68, 0x16u);
      v122 = v133;
      swift_arrayDestroy();
      MEMORY[0x1B8C99550](v122, -1, -1);
      MEMORY[0x1B8C99550](v68, -1, -1);

      v64 = v136;
      v62 = v129;
    }

    else
    {

      sub_1B6A9E970(v65, sub_1B6A9E8B0);
    }

    return sub_1B6984EC0(v64, v62, sub_1B6A9E8B0);
  }

  v55 = *(v7 + 64);
  v56 = sub_1B6AB92B0();
  v57 = [v55 valueForKey_];

  if (v57)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
  }

  else
  {
    v139 = 0u;
    v140 = 0u;
  }

  v141[0] = v139;
  v141[1] = v140;
  if (*(&v140 + 1))
  {
    if (swift_dynamicCast())
    {
      v74 = v138[0];
      v75 = v138[1];
      v76 = sub_1B6AB8840();
      v77 = *(v76 + 48);
      v78 = *(v76 + 52);
      swift_allocObject();
      sub_1B6AB8830();
      sub_1B6A9E86C(&qword_1EB95C6E0);
      v79 = v137;
      v134 = v74;
      v80 = v6;
      sub_1B6AB8820();
      v136 = v6;
      if (v6)
      {

        if (qword_1EDBCAA70 != -1)
        {
          swift_once();
        }

        v81 = sub_1B6AB8F90();
        __swift_project_value_buffer(v81, qword_1EDBCFD80);
        v82 = v6;
        v83 = sub_1B6AB8F80();
        v84 = sub_1B6AB98E0();

        if (os_log_type_enabled(v83, v84))
        {
          v85 = swift_slowAlloc();
          v128 = v46;
          v86 = v85;
          v87 = swift_slowAlloc();
          v132 = v75;
          v88 = v87;
          *&v141[0] = v87;
          *v86 = 136315138;
          swift_getErrorValue();
          v89 = sub_1B6ABA1A0();
          v91 = sub_1B698F63C(v89, v90, v141);

          *(v86 + 4) = v91;
          _os_log_impl(&dword_1B697C000, v83, v84, "Failed to decode userIDComponents for UserDefaults. Error: %s", v86, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v88);
          v92 = v88;
          v75 = v132;
          MEMORY[0x1B8C99550](v92, -1, -1);
          v93 = v86;
          v46 = v128;
          MEMORY[0x1B8C99550](v93, -1, -1);
        }

        v94 = sub_1B6AB92B0();
        [v55 removeObjectForKey_];

        v95 = sub_1B6AB8F80();
        v96 = sub_1B6AB98E0();

        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          *&v141[0] = v98;
          *v97 = 136315138;
          v99 = sub_1B698F63C(v46, v45, v141);

          *(v97 + 4) = v99;
          _os_log_impl(&dword_1B697C000, v95, v96, "Removed potentially stale value for key: %s due to decoding failure.", v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v98);
          MEMORY[0x1B8C99550](v98, -1, -1);
          MEMORY[0x1B8C99550](v97, -1, -1);
        }

        else
        {
        }

        swift_willThrow();
        return sub_1B6993C94(v134, v75);
      }

      else
      {
        v106 = v45;
        v107 = v79;

        if (qword_1EDBCAA70 != -1)
        {
          swift_once();
        }

        v108 = sub_1B6AB8F90();
        __swift_project_value_buffer(v108, qword_1EDBCFD80);
        v109 = v131;
        sub_1B6A9E908(v133, v131, type metadata accessor for StoredUserIDComponents);
        v110 = v106;

        v111 = sub_1B6AB8F80();
        v112 = sub_1B6AB98D0();

        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          v127 = swift_slowAlloc();
          v138[0] = v127;
          *v113 = 136315394;
          v126 = v111;
          v114 = v130;
          sub_1B6A9E908(v109, v130, type metadata accessor for StoredUserIDComponents);
          *&v141[0] = 0;
          *(&v141[0] + 1) = 0xE000000000000000;
          v125 = v112;
          sub_1B6AB9CA0();
          MEMORY[0x1B8C97BE0](0xD00000000000001DLL, 0x80000001B6ACEE10);
          type metadata accessor for RotationMode();
          v128 = v46;
          v132 = v75;
          sub_1B6AB9DF0();
          MEMORY[0x1B8C97BE0](0xD000000000000012, 0x80000001B6ACEE30);
          v139 = *&v114[*(v107 + 20)];
          sub_1B6AB9DF0();
          MEMORY[0x1B8C97BE0](41, 0xE100000000000000);
          v115 = v141[0];
          sub_1B6A9E970(v114, type metadata accessor for StoredUserIDComponents);
          sub_1B6A9E970(v109, type metadata accessor for StoredUserIDComponents);
          v116 = sub_1B698F63C(v115, *(&v115 + 1), v138);

          *(v113 + 4) = v116;
          *(v113 + 12) = 2080;
          v117 = sub_1B698F63C(v128, v110, v138);

          *(v113 + 14) = v117;
          v118 = v126;
          _os_log_impl(&dword_1B697C000, v126, v125, "Retrieved user ID components: %s, from UserDefaults, with key: %s", v113, 0x16u);
          v119 = v127;
          swift_arrayDestroy();
          MEMORY[0x1B8C99550](v119, -1, -1);
          MEMORY[0x1B8C99550](v113, -1, -1);
          sub_1B6993C94(v134, v132);
        }

        else
        {

          sub_1B6993C94(v134, v75);

          sub_1B6A9E970(v109, type metadata accessor for StoredUserIDComponents);
        }

        sub_1B6984EC0(v133, a4, type metadata accessor for StoredUserIDComponents);
        return (*(v135 + 56))(a4, 0, 1, v107);
      }
    }
  }

  else
  {
    sub_1B6A9E970(v141, sub_1B69FA1E4);
  }

  if (qword_1EDBCAA70 != -1)
  {
    swift_once();
  }

  v100 = sub_1B6AB8F90();
  __swift_project_value_buffer(v100, qword_1EDBCFD80);

  v101 = sub_1B6AB8F80();
  v102 = sub_1B6AB98D0();

  if (os_log_type_enabled(v101, v102))
  {
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    *&v141[0] = v104;
    *v103 = 136315138;
    v105 = sub_1B698F63C(v46, v45, v141);

    *(v103 + 4) = v105;
    _os_log_impl(&dword_1B697C000, v101, v102, "No ID components found in UserDefaults for key: %s.", v103, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v104);
    MEMORY[0x1B8C99550](v104, -1, -1);
    MEMORY[0x1B8C99550](v103, -1, -1);
  }

  else
  {
  }

  return (*(v135 + 56))(a4, 1, 1, v137);
}

uint64_t sub_1B6A9E86C(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for StoredUserIDComponents();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B6A9E8B0()
{
  if (!qword_1EB95B258[0])
  {
    type metadata accessor for StoredUserIDComponents();
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, qword_1EB95B258);
    }
  }
}

uint64_t sub_1B6A9E908(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B6A9E970(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id BridgedSessionData.__allocating_init(key:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR___AASessionData_key];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR___AASessionData_data] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id BridgedSessionData.init(key:data:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR___AASessionData_key];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v3[OBJC_IVAR___AASessionData_data] = a3;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id BridgedSessionData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedSessionData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1B6A9ED50(uint64_t a1, __int128 *a2, char a3)
{
  v4 = *v3;
  v5 = *a2;
  sub_1B6AABFA0(a1, &v5, a3, v4);
}

uint64_t sub_1B6A9ED80@<X0>(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v12 = *a1;
  v7 = sub_1B6A41D24();
  v8 = [v6 userIDComponentsWithKind:v7 isDiagnosticSubmissionAllowed:{a2 & 1, v12}];

  if (v8)
  {
    sub_1B69F4778(v8 + OBJC_IVAR___AAStoredUserIDComponents_storedUserIDComponents, a3);

    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  v10 = type metadata accessor for StoredUserIDComponents();
  return (*(*(v10 - 8) + 56))(a3, v9, 1, v10);
}

id BridgedEventProperty.__allocating_init(dataType:requirement:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___AAEventProperty_dataType] = a1;
  *&v5[OBJC_IVAR___AAEventProperty_requirement] = a2;
  v6 = [swift_getObjCClassFromMetadata() dataName];
  v7 = sub_1B6AB92E0();
  v9 = v8;

  v10 = &v5[OBJC_IVAR___AAEventProperty_dataKey];
  *v10 = v7;
  v10[1] = v9;
  v12.receiver = v5;
  v12.super_class = v2;
  return objc_msgSendSuper2(&v12, sel_init);
}

id BridgedEventProperty.init(dataType:requirement:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___AAEventProperty_dataType] = a1;
  *&v2[OBJC_IVAR___AAEventProperty_requirement] = a2;
  v3 = [swift_getObjCClassFromMetadata() dataName];
  v4 = sub_1B6AB92E0();
  v6 = v5;

  v7 = &v2[OBJC_IVAR___AAEventProperty_dataKey];
  *v7 = v4;
  v7[1] = v6;
  v9.receiver = v2;
  v9.super_class = type metadata accessor for BridgedEventProperty();
  return objc_msgSendSuper2(&v9, sel_init);
}

id BridgedEventProperty.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedEventProperty.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedEventProperty();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B6A9F26C()
{
  v28 = type metadata accessor for SequenceEntry.Kind(0);
  v1 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v3 = (&v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = type metadata accessor for SequenceEntry(0);
  v4 = *(v27 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v0 + *(type metadata accessor for Sequence(0) + 28));
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1B69E4D4C(0, v9, 0);
    v10 = v35;
    v11 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_1B69BFCF0(v11, v7, type metadata accessor for SequenceEntry);
      v13 = *v7;
      v14 = v7[1];
      sub_1B69BFCF0(v7 + *(v27 + 20), v3, type metadata accessor for SequenceEntry.Kind);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          sub_1B699A784(v3, v29);
          goto LABEL_9;
        }

        v30 = type metadata accessor for EventData();
        v31 = sub_1B69BFD58(&qword_1EDBCAAC0, type metadata accessor for EventData);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
        v17 = type metadata accessor for EventData;
      }

      else
      {
        v30 = type metadata accessor for TimedData();
        v31 = sub_1B69BFD58(&qword_1EDBCB008, type metadata accessor for TimedData);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v29);
        v17 = type metadata accessor for TimedData;
      }

      sub_1B69BFE08(v3, boxed_opaque_existential_1, v17);
LABEL_9:
      v18 = v30;
      v19 = __swift_project_boxed_opaque_existential_1(v29, v30);
      *(&v34 + 1) = v18;
      v20 = __swift_allocate_boxed_opaque_existential_1(&v33);
      (*(*(v18 - 8) + 16))(v20, v19, v18);

      sub_1B69C1618(v7, type metadata accessor for SequenceEntry);
      *&v32 = v13;
      *(&v32 + 1) = v14;
      __swift_destroy_boxed_opaque_existential_1(v29);
      v35 = v10;
      v22 = *(v10 + 16);
      v21 = *(v10 + 24);
      if (v22 >= v21 >> 1)
      {
        sub_1B69E4D4C((v21 > 1), v22 + 1, 1);
        v10 = v35;
      }

      *(v10 + 16) = v22 + 1;
      v23 = (v10 + 48 * v22);
      v24 = v32;
      v25 = v34;
      v23[3] = v33;
      v23[4] = v25;
      v23[2] = v24;
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_1B6A9F5F4(uint64_t a1)
{
  v73 = type metadata accessor for SequenceEntry.Kind(0);
  v3 = *(*(v73 - 8) + 64);
  MEMORY[0x1EEE9AC00](v73);
  v84 = (&v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v81 = type metadata accessor for SequenceEntry(0);
  v5 = *(v81 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v8 = (&v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = type metadata accessor for Sequence(0);
  v9 = *(v1 + *(v72 + 28));
  v79 = *(v9 + 16);
  if (v79)
  {
    v10 = 0;
    v78 = v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v80 = MEMORY[0x1E69E7CC8];
    v11 = v1[1];
    v70 = *v1;
    v71 = v1;
    v69 = v11;
    v74 = a1;
    v77 = *(a1 + 16);
    v68 = xmmword_1B6ABD530;
    v67 = xmmword_1B6ABF500;
    v82 = v8;
    v83 = v5;
    v76 = v9;
    while (v10 < *(v9 + 16))
    {
      sub_1B69BFCF0(v78 + *(v5 + 72) * v10, v8, type metadata accessor for SequenceEntry);
      v13 = v8[1];
      v86 = *v8;
      if (!v77)
      {
        goto LABEL_11;
      }

      v14 = *(v74 + 24);
      sub_1B6980A90(0, &qword_1EDBC7FF8, &type metadata for DenylistDescriptor, MEMORY[0x1E69E6F90]);
      inited = swift_initStackObject();
      *(inited + 16) = v68;
      if (qword_1EDBC8130 != -1)
      {
        swift_once();
      }

      v16 = unk_1EDBC8140;
      v17 = qword_1EDBC8148;
      v18 = unk_1EDBC8150;
      v19 = qword_1EDBC8158;
      v20 = unk_1EDBC8160;
      *(inited + 32) = qword_1EDBC8138;
      *(inited + 40) = v16;
      *(inited + 48) = v17;
      *(inited + 56) = v18;
      *(inited + 64) = v19;
      *(inited + 72) = v20;
      v21 = v69;
      v22 = v70;
      *(inited + 80) = v70;
      *(inited + 88) = v21;
      *(inited + 96) = 42;
      *(inited + 104) = 0xE100000000000000;
      *(inited + 112) = 42;
      *(inited + 120) = 0xE100000000000000;
      *(inited + 128) = v22;
      *(inited + 136) = v21;
      *(inited + 144) = v86;
      *(inited + 152) = v13;
      *(inited + 160) = 42;
      *(inited + 168) = 0xE100000000000000;
      swift_bridgeObjectRetain_n();

      v23 = sub_1B69C2608(inited);
      swift_setDeallocating();
      swift_arrayDestroy();
      v24 = sub_1B69C292C(v23, *(v14 + 16));

      v8 = v82;
      v5 = v83;
      if (v24)
      {
LABEL_11:
        sub_1B69BFCF0(v8 + *(v81 + 20), v84, type metadata accessor for SequenceEntry.Kind);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload)
        {
          v26 = v85;
          if (EnumCaseMultiPayload == 1)
          {
            v92 = type metadata accessor for EventData();
            v93 = sub_1B69BFD58(&qword_1EDBCAAC0, type metadata accessor for EventData);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v91);
            sub_1B69BFE08(v84, boxed_opaque_existential_1, type metadata accessor for EventData);
          }

          else
          {
            sub_1B699A784(v84, &v91);
          }
        }

        else
        {
          v92 = type metadata accessor for TimedData();
          v93 = sub_1B69BFD58(&qword_1EDBCB008, type metadata accessor for TimedData);
          v28 = __swift_allocate_boxed_opaque_existential_1(&v91);
          sub_1B69BFE08(v84, v28, type metadata accessor for TimedData);
          v26 = v85;
        }

        v29 = v92;
        v30 = v93;
        __swift_project_boxed_opaque_existential_1(&v91, v92);
        v31 = v71;
        v32 = v71 + *(v72 + 24);
        v33 = *v32;
        v34 = *(v32 + 1);
        v35 = v32[16];
        LOBYTE(v32) = v32[17];
        LOBYTE(v87) = v33;
        *(&v87 + 1) = v34;
        v88 = v35;
        v89 = v32;
        v36 = (*(v30 + 56))(&v87, v29, v30);
        if (v26)
        {
          v86 = v10;
          __swift_destroy_boxed_opaque_existential_1(&v91);
          if (qword_1EDBCCEE0 != -1)
          {
            swift_once();
          }

          v85 = qword_1EDBCCB28;
          v75 = sub_1B6AB98F0();
          sub_1B69990B4();
          v37 = swift_allocObject();
          *(v37 + 16) = v67;
          *&v91 = 0;
          *(&v91 + 1) = 0xE000000000000000;
          *&v87 = v26;
          sub_1B697ED90(0, &qword_1EDBCBB00);
          sub_1B6AB9DF0();
          v38 = v91;
          v39 = MEMORY[0x1E69E6158];
          *(v37 + 56) = MEMORY[0x1E69E6158];
          v40 = sub_1B698CEC0();
          *(v37 + 64) = v40;
          *(v37 + 32) = v38;
          *&v91 = 0;
          *(&v91 + 1) = 0xE000000000000000;
          v41 = v82;
          sub_1B6AB9DF0();
          v42 = v91;
          *(v37 + 96) = v39;
          *(v37 + 104) = v40;
          v8 = v41;
          *(v37 + 72) = v42;
          sub_1B6AB8F70();

          v85 = 0;
          v5 = v83;
          v10 = v86;
        }

        else
        {
          v43 = v36;
          v44 = __swift_destroy_boxed_opaque_existential_1(&v91);
          MEMORY[0x1EEE9AC00](v44);
          *(&v67 - 4) = v74;
          *(&v67 - 3) = v8;
          *(&v67 - 2) = v31;
          v45 = sub_1B69C0EB0(v43, sub_1B6AA00E8);

          sub_1B697EFC4();
          v92 = v46;
          *&v91 = v45;
          sub_1B69979CC(&v91, &v87);
          v47 = v80;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v94 = v47;
          v50 = sub_1B6993940(v86, v13);
          v51 = v47[2];
          v52 = (v49 & 1) == 0;
          v53 = v51 + v52;
          if (__OFADD__(v51, v52))
          {
            goto LABEL_32;
          }

          v54 = v49;
          v55 = v47[3];
          v85 = 0;
          if (v55 >= v53)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_1B69DDC84();
            }
          }

          else
          {
            sub_1B69976F8(v53, isUniquelyReferenced_nonNull_native);
            v56 = sub_1B6993940(v86, v13);
            if ((v54 & 1) != (v57 & 1))
            {
              goto LABEL_34;
            }

            v50 = v56;
          }

          v80 = v94;
          if (v54)
          {
            v12 = (v94[7] + 32 * v50);
            __swift_destroy_boxed_opaque_existential_1(v12);
            sub_1B69979CC(&v87, v12);
          }

          else
          {
            v94[(v50 >> 6) + 8] |= 1 << v50;
            v58 = (v80[6] + 16 * v50);
            *v58 = v86;
            v58[1] = v13;
            sub_1B69979CC(&v87, (v80[7] + 32 * v50));
            v59 = v80[2];
            v60 = __OFADD__(v59, 1);
            v61 = v59 + 1;
            if (v60)
            {
              goto LABEL_33;
            }

            v80[2] = v61;
          }

          v8 = v82;
          v5 = v83;
        }
      }

      ++v10;
      sub_1B69C1618(v8, type metadata accessor for SequenceEntry);
      v9 = v76;
      if (v79 == v10)
      {
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    result = sub_1B6ABA190();
    __break(1u);
  }

  else
  {
    v80 = MEMORY[0x1E69E7CC8];
LABEL_30:
    sub_1B697EFC4();
    v92 = v62;
    *&v91 = v80;
    v63 = type metadata accessor for JSON();
    v64 = objc_allocWithZone(v63);
    sub_1B69C1678(&v91, v64 + OBJC_IVAR___AAJSON_value);
    v90.receiver = v64;
    v90.super_class = v63;
    v65 = objc_msgSendSuper2(&v90, sel_init);
    sub_1B6981634(&v91);
    return v65;
  }

  return result;
}

uint64_t sub_1B6A9FE70@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = type metadata accessor for TimedData();
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EventData();
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SequenceEntry.Kind(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for SequenceEntry(0);
  sub_1B69BFCF0(a1 + *(v20 + 20), v19, type metadata accessor for SequenceEntry.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      sub_1B69BFCF0(a1, a4, type metadata accessor for SequenceEntry);
      return sub_1B69C1618(v19, type metadata accessor for SequenceEntry.Kind);
    }

    v23 = *a1;
    v22 = a1[1];
    sub_1B69BFCF0(a2, v15, type metadata accessor for EventData);
    *a4 = v23;
    a4[1] = v22;
    sub_1B69BFE08(v15, a4 + *(v20 + 20), type metadata accessor for EventData);
  }

  else
  {
    v25 = *a1;
    v24 = a1[1];
    sub_1B69BFCF0(a3, v11, type metadata accessor for TimedData);
    *a4 = v25;
    a4[1] = v24;
    sub_1B69BFE08(v11, a4 + *(v20 + 20), type metadata accessor for TimedData);
  }

  swift_storeEnumTagMultiPayload();

  return sub_1B69C1618(v19, type metadata accessor for SequenceEntry.Kind);
}

BOOL sub_1B6AA00E8(uint64_t a1, uint64_t a2)
{
  v3 = v2[2];
  if (*(v3 + 16) == 1)
  {
    v4 = v2[3];
    v5 = v2[4];
    v6 = *(v3 + 24);
    return !sub_1B69C2C38(*v5, v5[1], *v4, v4[1], a1, a2);
  }

  else
  {
    return 1;
  }
}

void *sub_1B6AA0140(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_1B69C1030(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1B6AA01D0(uint64_t a1)
{
  v2 = sub_1B6AB8EE0();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = MEMORY[0x1EEE9AC00](v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1B6AA0760();
    v10 = sub_1B6AB9C60();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_1B69BFD58(&qword_1EB95C718, MEMORY[0x1E6969AD0]);
      v18 = sub_1B6AB9250();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_1B69BFD58(&qword_1EB95C720, MEMORY[0x1E6969AD0]);
          v25 = sub_1B6AB92A0();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B6AA04E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1B6AA06CC();
    v3 = sub_1B6AB9C60();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      sub_1B6AB92E0();
      sub_1B6ABA1F0();
      v29 = v7;
      sub_1B6AB9380();
      v9 = sub_1B6ABA230();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = sub_1B6AB92E0();
        v20 = v19;
        if (v18 == sub_1B6AB92E0() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = sub_1B6ABA0F0();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

void sub_1B6AA06CC()
{
  if (!qword_1EDBC8CC8)
  {
    type metadata accessor for URLResourceKey(255);
    sub_1B69BFD58(&qword_1EDBC8CD0, type metadata accessor for URLResourceKey);
    v0 = sub_1B6AB9C70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC8CC8);
    }
  }
}

void sub_1B6AA0760()
{
  if (!qword_1EB95C710)
  {
    sub_1B6AB8EE0();
    sub_1B69BFD58(&qword_1EB95C718, MEMORY[0x1E6969AD0]);
    v0 = sub_1B6AB9C70();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95C710);
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_indexTm_0(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_1B6AA099C(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v79 = a4;
  v80 = a5;
  v77 = a2;
  *&v78 = a3;
  v71 = type metadata accessor for Session();
  v8 = *(*(v71 - 8) + 64);
  MEMORY[0x1EEE9AC00](v71);
  v10 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for SessionManager.SessionState(0);
  v11 = *(*(v76 - 8) + 64);
  MEMORY[0x1EEE9AC00](v76);
  v13 = &v70 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B6AB90F0();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(*(v6 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v20 = v19;
  v21 = sub_1B6AB9110();
  (*(v15 + 8))(v18, v14);
  if (v21)
  {
    v22 = *(a1 + 16);
    v21 = *(a1 + 17);
    v23 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks;
    swift_beginAccess();
    v24 = *(v6 + v23);
    if (*(v24 + 16) && (v25 = sub_1B6993940(v22, v21), (v26 & 1) != 0))
    {
      sub_1B6982544(*(v24 + 56) + 40 * v25, &v107);
    }

    else
    {
      *&v109 = 0;
      v107 = 0u;
      v108 = 0u;
    }

    swift_endAccess();
    v74 = v22;
    v75 = v13;
    if (*(&v108 + 1))
    {
      sub_1B6A3FE48();
      sub_1B6AA9A94();
      if (swift_dynamicCast())
      {
        v14 = v82;
        v72 = v83;
        v73 = *(&v82 + 1);
        goto LABEL_11;
      }
    }

    else
    {
      sub_1B699835C(&v107);
    }

    v14 = MEMORY[0x1E69E7CC0];
    v72 = v21;
    v73 = v22;
LABEL_11:
    v27 = a1[5];
    v28 = a1[3];
    v121 = a1[4];
    v122 = v27;
    v29 = a1[5];
    v123[0] = a1[6];
    *(v123 + 9) = *(a1 + 105);
    v30 = a1[1];
    v118[0] = *a1;
    v118[1] = v30;
    v31 = a1[3];
    v33 = *a1;
    v32 = a1[1];
    v119 = a1[2];
    v120 = v31;
    *(v106 + 9) = *(a1 + 105);
    v34 = a1[6];
    v105 = v29;
    v106[0] = v34;
    LOBYTE(v18) = *(a1 + 144);
    LOBYTE(v13) = *(a1 + 145);
    v103 = v28;
    v104 = v121;
    v100 = v33;
    v101 = v32;
    v102 = v119;
    v107 = v33;
    v108 = v32;
    v109 = v119;
    v110 = v28;
    v113 = v34;
    v114 = v106[1];
    v111 = v121;
    v112 = v29;
    *&v115 = v77;
    BYTE8(v115) = v18;
    BYTE9(v115) = v13;
    *&v116 = v78;
    *(&v116 + 1) = v79;
    v117 = v80;
    sub_1B6AA9804(v118, &v82, &qword_1EB95AF00, sub_1B69E8D48);

    sub_1B69805B0(&v107, &v82, sub_1B69E8C14);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = v10;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_21:
  v14 = sub_1B69E3A64(0, v14[2] + 1, 1, v14);
LABEL_12:
  v37 = v14[2];
  v36 = v14[3];
  if (v37 >= v36 >> 1)
  {
    v14 = sub_1B69E3A64((v36 > 1), v37 + 1, 1, v14);
  }

  v86 = v104;
  v87 = v105;
  v88 = v106[0];
  v89 = v106[1];
  v82 = v100;
  v83 = v101;
  v84 = v102;
  v85 = v103;
  v90 = v77;
  v91 = v18;
  v92 = v13;
  v94 = v99;
  v93 = v98;
  v95 = v78;
  v96 = v79;
  v97 = v80;
  sub_1B698C78C(&v82, sub_1B69E8C14);
  v14[2] = v37 + 1;
  v38 = &v14[21 * v37];
  v40 = v108;
  v39 = v109;
  *(v38 + 2) = v107;
  *(v38 + 3) = v40;
  *(v38 + 4) = v39;
  v41 = v113;
  v43 = v110;
  v42 = v111;
  *(v38 + 7) = v112;
  *(v38 + 8) = v41;
  *(v38 + 5) = v43;
  *(v38 + 6) = v42;
  v45 = v115;
  v44 = v116;
  v46 = v114;
  v38[24] = v117;
  *(v38 + 10) = v45;
  *(v38 + 11) = v44;
  *(v38 + 9) = v46;
  sub_1B6AA9A94();
  v81[3] = v47;
  v81[4] = &off_1F2E77398;
  v81[0] = v14;
  v81[1] = v73;
  v81[2] = v72;
  swift_beginAccess();

  sub_1B699A480(v81, v74, v21);
  swift_endAccess();
  v48 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  v49 = v6 + v48;
  v50 = v75;
  sub_1B69805B0(v49, v75, type metadata accessor for SessionManager.SessionState);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v53 = type metadata accessor for SessionManager.SessionState;
    v54 = v50;
  }

  else
  {
    v55 = *v50;
    v56 = *(v6 + 24);
    v57 = *(*v50 + 24);
    v79 = *(*v50 + 16);
    v80 = v56;
    v77 = v57;
    v58 = *&v55[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8];
    v59 = *(v55 + 4);
    v60 = *(v55 + 5);
    v61 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate;
    v62 = v71;
    v63 = *(v71 + 28);
    *&v52 = *&v55[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier];
    v78 = v52;
    v64 = sub_1B6AB8DB0();
    v65 = v70;
    (*(*(v64 - 8) + 16))(&v70[v63], &v55[v61], v64);

    v66 = v77;

    sub_1B6992E2C(v59, v60);
    v67 = sub_1B699696C(v55);
    *&v68 = v78;
    *(&v68 + 1) = v58;
    *&v69 = v59;
    *(&v69 + 1) = v60;
    *v65 = v79;
    *(v65 + 8) = v66;
    *(v65 + 16) = v68;
    *(v65 + 32) = v69;
    *(v65 + *(v62 + 32)) = v67;
    sub_1B69A5404(v65);

    v53 = type metadata accessor for Session;
    v54 = v65;
  }

  return sub_1B698C78C(v54, v53);
}

uint64_t sub_1B6AA1014(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v68 = a4;
  v69 = a5;
  *&v67 = a3;
  v61 = type metadata accessor for Session();
  v9 = *(*(v61 - 8) + 64);
  MEMORY[0x1EEE9AC00](v61);
  v11 = &v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for SessionManager.SessionState(0);
  v12 = *(*(v65 - 8) + 64);
  MEMORY[0x1EEE9AC00](v65);
  v66 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B6AB90F0();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(*(v6 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v20 = v19;
  v21 = sub_1B6AB9110();
  (*(v15 + 8))(v18, v14);
  if (v21)
  {
    v22 = *(a1 + 4);
    v21 = *(a1 + 5);
    v23 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks;
    swift_beginAccess();
    v24 = *(v6 + v23);
    if (*(v24 + 16) && (v25 = sub_1B6993940(v22, v21), (v26 & 1) != 0))
    {
      sub_1B6982544(*(v24 + 56) + 40 * v25, &v85);
    }

    else
    {
      *&v87 = 0;
      v85 = 0u;
      v86 = 0u;
    }

    swift_endAccess();
    v64 = v22;
    if (*(&v86 + 1))
    {
      sub_1B6A3FE48();
      sub_1B6AA997C();
      if (swift_dynamicCast())
      {
        v14 = v71;
        v62 = v72;
        v63 = *(&v71 + 1);
        goto LABEL_11;
      }
    }

    else
    {
      sub_1B699835C(&v85);
    }

    v14 = MEMORY[0x1E69E7CC0];
    v62 = v21;
    v63 = v22;
LABEL_11:
    LOBYTE(v18) = *(a1 + 48);
    LOBYTE(v19) = *(a1 + 49);
    v27 = a1[1];
    v90[0] = *a1;
    v90[1] = v27;
    v28 = a1[1];
    v83 = *a1;
    v84 = v28;
    v85 = v83;
    v86 = v28;
    *&v87 = a2;
    BYTE8(v87) = v18;
    BYTE9(v87) = v19;
    *&v88 = v67;
    *(&v88 + 1) = v68;
    v89 = v69;
    sub_1B6AA9804(v90, &v71, &qword_1EB95AED0, sub_1B69E8B54);

    sub_1B69805B0(&v85, &v71, sub_1B69E8A88);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v60 = v11;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_21:
  v14 = sub_1B69E3BD0(0, v14[2] + 1, 1, v14);
LABEL_12:
  v31 = v14[2];
  v30 = v14[3];
  if (v31 >= v30 >> 1)
  {
    v14 = sub_1B69E3BD0((v30 > 1), v31 + 1, 1, v14);
  }

  v71 = v83;
  v72 = v84;
  v73 = a2;
  v74 = v18;
  v75 = v19;
  v76 = v81;
  v77 = v82;
  v78 = v67;
  v79 = v68;
  v80 = v69;
  sub_1B698C78C(&v71, sub_1B69E8A88);
  v14[2] = v31 + 1;
  v32 = &v14[9 * v31];
  *(v32 + 2) = v85;
  v34 = v87;
  v33 = v88;
  v35 = v86;
  v32[12] = v89;
  *(v32 + 4) = v34;
  *(v32 + 5) = v33;
  *(v32 + 3) = v35;
  sub_1B6AA997C();
  v70[3] = v36;
  v70[4] = &off_1F2E77398;
  v70[0] = v14;
  v70[1] = v63;
  v70[2] = v62;
  swift_beginAccess();

  sub_1B699A480(v70, v64, v21);
  swift_endAccess();
  v37 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  v38 = v6 + v37;
  v39 = v66;
  sub_1B69805B0(v38, v66, type metadata accessor for SessionManager.SessionState);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v42 = type metadata accessor for SessionManager.SessionState;
    v43 = v39;
  }

  else
  {
    v44 = *v39;
    v45 = *(v6 + 24);
    v46 = *(*v39 + 24);
    v68 = *(*v39 + 16);
    v69 = v45;
    v66 = v46;
    v47 = *&v44[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8];
    v48 = *(v44 + 4);
    v49 = *(v44 + 5);
    v50 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate;
    v51 = v61;
    v52 = *(v61 + 28);
    *&v41 = *&v44[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier];
    v67 = v41;
    v53 = sub_1B6AB8DB0();
    v54 = v60;
    (*(*(v53 - 8) + 16))(&v60[v52], &v44[v50], v53);

    v55 = v66;

    sub_1B6992E2C(v48, v49);
    v56 = sub_1B699696C(v44);
    *&v57 = v67;
    *(&v57 + 1) = v47;
    *&v58 = v48;
    *(&v58 + 1) = v49;
    *v54 = v68;
    *(v54 + 8) = v55;
    *(v54 + 16) = v57;
    *(v54 + 32) = v58;
    *(v54 + *(v51 + 32)) = v56;
    sub_1B69A5404(v54);

    v42 = type metadata accessor for Session;
    v43 = v54;
  }

  return sub_1B698C78C(v43, v42);
}

uint64_t sub_1B6AA1608(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *&v66 = a4;
  *(&v66 + 1) = a5;
  *&v65 = a3;
  v59 = type metadata accessor for Session();
  v9 = *(*(v59 - 8) + 64);
  MEMORY[0x1EEE9AC00](v59);
  v11 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for SessionManager.SessionState(0);
  v12 = *(*(v63 - 8) + 64);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1B6AB90F0();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = (&v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(*(v6 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v18 = v19;
  (*(v15 + 104))(v18, *MEMORY[0x1E69E8020], v14);
  v20 = v19;
  v21 = sub_1B6AB9110();
  (*(v15 + 8))(v18, v14);
  if (v21)
  {
    v22 = *(a1 + 3);
    v21 = *(a1 + 4);
    v23 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks;
    swift_beginAccess();
    v24 = *(v6 + v23);
    if (*(v24 + 16) && (v25 = sub_1B6993940(v22, v21), (v26 & 1) != 0))
    {
      sub_1B6982544(*(v24 + 56) + 40 * v25, &v81);
    }

    else
    {
      *&v83 = 0;
      v81 = 0u;
      v82 = 0u;
    }

    swift_endAccess();
    v62 = v22;
    if (*(&v82 + 1))
    {
      sub_1B6A3FE48();
      sub_1B6AA9874();
      if (swift_dynamicCast())
      {
        v14 = v68;
        v60 = v69;
        v61 = *(&v68 + 1);
        goto LABEL_11;
      }
    }

    else
    {
      sub_1B699835C(&v81);
    }

    v14 = MEMORY[0x1E69E7CC0];
    v60 = v21;
    v61 = v22;
LABEL_11:
    LOBYTE(v18) = *(a1 + 40);
    LOBYTE(v19) = *(a1 + 41);
    v85 = *a1;
    v86 = *(a1 + 2);
    v79 = *a1;
    v80 = *(a1 + 2);
    v81 = v79;
    *&v82 = v80;
    *(&v82 + 1) = a2;
    LOBYTE(v83) = v18;
    BYTE1(v83) = v19;
    *(&v83 + 1) = v65;
    v84 = v66;

    sub_1B6AA9804(&v85, &v68, &qword_1EDBC9970, sub_1B69E85A4);
    sub_1B69805B0(&v81, &v68, sub_1B69E84D8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v58 = v11;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_12;
    }

    goto LABEL_21;
  }

  __break(1u);
LABEL_21:
  v14 = sub_1B69E4AE0(0, v14[2] + 1, 1, v14);
LABEL_12:
  v29 = v14[2];
  v28 = v14[3];
  if (v29 >= v28 >> 1)
  {
    v14 = sub_1B69E4AE0((v28 > 1), v29 + 1, 1, v14);
  }

  v68 = v79;
  v69 = v80;
  v70 = a2;
  v71 = v18;
  v72 = v19;
  v73 = v77;
  v74 = v78;
  v75 = v65;
  v76 = v66;
  sub_1B698C78C(&v68, sub_1B69E84D8);
  v14[2] = v29 + 1;
  v30 = &v14[8 * v29];
  v31 = v84;
  v32 = v81;
  v33 = v82;
  v30[4] = v83;
  v30[5] = v31;
  v30[2] = v32;
  v30[3] = v33;
  sub_1B6AA9874();
  v67[3] = v34;
  v67[4] = &off_1F2E77398;
  v67[0] = v14;
  v67[1] = v61;
  v67[2] = v60;
  swift_beginAccess();

  sub_1B699A480(v67, v62, v21);
  swift_endAccess();
  v35 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
  swift_beginAccess();
  v36 = v6 + v35;
  v37 = v64;
  sub_1B69805B0(v36, v64, type metadata accessor for SessionManager.SessionState);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result != 1)
    {
      return result;
    }

    v40 = type metadata accessor for SessionManager.SessionState;
    v41 = v37;
  }

  else
  {
    v42 = *v37;
    v43 = *(v6 + 24);
    v44 = *(*v37 + 24);
    *&v66 = *(*v37 + 16);
    *(&v66 + 1) = v43;
    v64 = v44;
    v45 = *&v42[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier + 8];
    v46 = *(v42 + 4);
    v47 = *(v42 + 5);
    v48 = OBJC_IVAR____TtC12AppAnalytics13ActiveSession_startDate;
    v49 = v59;
    v50 = *(v59 + 28);
    *&v39 = *&v42[OBJC_IVAR____TtC12AppAnalytics13ActiveSession_appSessionIdentifier];
    v65 = v39;
    v51 = sub_1B6AB8DB0();
    v52 = v58;
    (*(*(v51 - 8) + 16))(&v58[v50], &v42[v48], v51);

    v53 = v64;

    sub_1B6992E2C(v46, v47);
    v54 = sub_1B699696C(v42);
    *&v55 = v65;
    *(&v55 + 1) = v45;
    *&v56 = v46;
    *(&v56 + 1) = v47;
    *v52 = v66;
    *(v52 + 8) = v53;
    *(v52 + 16) = v55;
    *(v52 + 32) = v56;
    *(v52 + *(v49 + 32)) = v54;
    sub_1B69A5404(v52);

    v40 = type metadata accessor for Session;
    v41 = v52;
  }

  return sub_1B698C78C(v41, v40);
}

id BridgedSessionManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedSessionManager.init()()
{
  v1 = type metadata accessor for SummaryEventConfiguration(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DiagnosticsConsentProvider(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBCB568 != -1)
  {
    swift_once();
  }

  v9 = qword_1EDBCB570;
  type metadata accessor for SessionGroupManager();
  v10 = swift_allocObject();
  v11 = v9;
  v12 = MEMORY[0x1E69E7CC0];
  v10[3] = sub_1B6987D80(MEMORY[0x1E69E7CC0]);
  v10[4] = sub_1B6987D80(v12);
  v10[2] = v11;
  if (qword_1EDBC8A18 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDBC8A20;
  v14 = type metadata accessor for BridgedPrivacyValidationProvider();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation] = v13;
  v37.receiver = v15;
  v37.super_class = v14;
  v16 = v13;
  v17 = objc_msgSendSuper2(&v37, sel_init);
  v18 = dispatch_group_create();
  type metadata accessor for FlushProcessor();
  v19 = swift_allocObject();
  swift_weakInit();
  v19[4] = 13;
  v19[5] = 0x404E000000000000;
  v19[6] = 0;
  v19[3] = dispatch_group_create();
  sub_1B6AB8E30();
  v20 = &v8[*(v5 + 20)];
  *v20 = sub_1B69A3378;
  *(v20 + 1) = 0;
  if (qword_1EDBCAC70 != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v1, qword_1EDBCA728);
  sub_1B69805B0(v21, v4, type metadata accessor for SummaryEventConfiguration);
  v22 = sub_1B6AA70FC(v18, v10, 0, v19, 0, 0, 1, v17, v8, v4);

  *&v0[OBJC_IVAR___AASessionManager_sessionManager] = v22;
  v23 = v22[2];

  v25 = sub_1B6A3FD68(v24);
  *&v0[OBJC_IVAR___AASessionManager_tracker] = v25;
  v26 = v22[3];
  v27 = type metadata accessor for BridgedProcessorManager();
  v28 = objc_allocWithZone(v27);
  *&v28[OBJC_IVAR___AAProcessorManager_processorManager] = v26;
  v36.receiver = v28;
  v36.super_class = v27;
  v29 = v25;

  v30 = objc_msgSendSuper2(&v36, sel_init);
  *&v0[OBJC_IVAR___AASessionManager_processorManager] = v30;
  v31 = type metadata accessor for BridgedSessionManager();
  v35.receiver = v0;
  v35.super_class = v31;
  v32 = v30;
  v33 = objc_msgSendSuper2(&v35, sel_init);

  return v33;
}

id BridgedSessionManager.init(privacyValidationProvider:)(void *a1)
{
  v3 = type metadata accessor for SummaryEventConfiguration(0);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DiagnosticsConsentProvider(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBCB568 != -1)
  {
    swift_once();
  }

  v11 = qword_1EDBCB570;
  type metadata accessor for SessionGroupManager();
  v12 = swift_allocObject();
  v13 = v11;
  v14 = MEMORY[0x1E69E7CC0];
  v12[3] = sub_1B6987D80(MEMORY[0x1E69E7CC0]);
  v12[4] = sub_1B6987D80(v14);
  v12[2] = v13;
  v15 = dispatch_group_create();
  type metadata accessor for FlushProcessor();
  v16 = swift_allocObject();
  swift_weakInit();
  v16[4] = 13;
  v16[5] = 0x404E000000000000;
  v16[6] = 0;
  v16[3] = dispatch_group_create();
  sub_1B6AB8E30();
  v17 = &v10[*(v7 + 20)];
  *v17 = sub_1B69A3378;
  *(v17 + 1) = 0;
  if (qword_1EDBCAC70 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v3, qword_1EDBCA728);
  sub_1B69805B0(v18, v6, type metadata accessor for SummaryEventConfiguration);
  v19 = a1;
  v20 = sub_1B6AA70FC(v15, v12, 0, v16, 0, 0, 1, v19, v10, v6);

  *&v1[OBJC_IVAR___AASessionManager_sessionManager] = v20;
  v21 = v20[2];

  v23 = sub_1B6A3FD68(v22);
  *&v1[OBJC_IVAR___AASessionManager_tracker] = v23;
  v24 = v20[3];
  v25 = type metadata accessor for BridgedProcessorManager();
  v26 = objc_allocWithZone(v25);
  *&v26[OBJC_IVAR___AAProcessorManager_processorManager] = v24;
  v34.receiver = v26;
  v34.super_class = v25;
  v27 = v23;

  v28 = objc_msgSendSuper2(&v34, sel_init);
  *&v1[OBJC_IVAR___AASessionManager_processorManager] = v28;
  v29 = type metadata accessor for BridgedSessionManager();
  v33.receiver = v1;
  v33.super_class = v29;
  v30 = v28;
  v31 = objc_msgSendSuper2(&v33, sel_init);

  return v31;
}

id BridgedSessionManager.init(accessQueue:)(void *a1)
{
  v2 = type metadata accessor for SummaryEventDatabaseManager.StorageOptions(0);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v135 = &v133 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v139 = &v133 - v6;
  v137 = type metadata accessor for SummaryEventConfiguration(0);
  v7 = *(*(v137 - 1) + 64);
  v8 = MEMORY[0x1EEE9AC00](v137);
  v134 = &v133 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v144 = &v133 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v146 = &v133 - v12;
  v13 = type metadata accessor for DiagnosticsConsentProvider(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v142 = &v133 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v143 = &v133 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v147 = &v133 - v19;
  v20 = sub_1B6AB9090();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v133 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v133 - v26;
  v28 = type metadata accessor for AccessQueue();
  v29 = objc_allocWithZone(v28);
  *&v29[OBJC_IVAR___AAAccessQueue_queue] = a1;
  v140 = a1;
  sub_1B6AB9050();
  v30 = OBJC_IVAR___AAAccessQueue__qos;
  swift_beginAccess();
  (*(v21 + 16))(v25, v27, v20);
  sub_1B698E4D0(0, qword_1EDBCB0E0, MEMORY[0x1E69E7FB0], type metadata accessor for Atomic);
  v32 = *(v31 + 48);
  v33 = *(v31 + 52);
  v34 = swift_allocObject();
  v138 = type metadata accessor for UnfairLock();
  v35 = swift_allocObject();
  v36 = swift_slowAlloc();
  *(v35 + 16) = v36;
  *v36 = 0;
  *(v35 + 24) = 0x10000;
  (*(v21 + 8))(v27, v20);
  *(v34 + 2) = v35;
  (*(v21 + 32))(&v34[*(*v34 + 96)], v25, v20);
  *&v29[v30] = v34;
  swift_endAccess();
  v156.receiver = v29;
  v156.super_class = v28;
  v37 = objc_msgSendSuper2(&v156, sel_init);
  type metadata accessor for SessionGroupManager();
  v38 = swift_allocObject();
  v39 = v37;
  v40 = MEMORY[0x1E69E7CC0];
  v38[3] = sub_1B6987D80(MEMORY[0x1E69E7CC0]);
  v38[4] = sub_1B6987D80(v40);
  v145 = v38;
  v38[2] = v39;
  if (qword_1EDBC8A18 != -1)
  {
    swift_once();
  }

  v41 = qword_1EDBC8A20;
  v42 = type metadata accessor for BridgedPrivacyValidationProvider();
  v43 = objc_allocWithZone(v42);
  *&v43[OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation] = v41;
  v155.receiver = v43;
  v155.super_class = v42;
  v44 = v41;
  v136 = objc_msgSendSuper2(&v155, sel_init);
  v45 = dispatch_group_create();
  type metadata accessor for FlushProcessor();
  v46 = swift_allocObject();
  swift_weakInit();
  v46[4] = 13;
  v46[5] = 0x404E000000000000;
  v46[6] = 0;
  v46[3] = dispatch_group_create();
  v47 = v147;
  sub_1B6AB8E30();
  v48 = (v47 + *(v13 + 20));
  *v48 = sub_1B69A3378;
  v48[1] = 0;
  if (qword_1EDBCAC70 != -1)
  {
    swift_once();
  }

  v49 = __swift_project_value_buffer(v137, qword_1EDBCA728);
  v50 = v146;
  sub_1B69805B0(v49, v146, type metadata accessor for SummaryEventConfiguration);
  v51 = type metadata accessor for SessionManager(0);
  v52 = *(v51 + 48);
  v53 = *(v51 + 52);
  v54 = swift_allocObject();
  v153 = &type metadata for TimestampJitter;
  v154 = &protocol witness table for TimestampJitter;
  v151[0] = 0;
  v151[1] = 0;
  v152 = 1;
  v54[5] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for SessionManager.SessionState(0);
  swift_storeEnumTagMultiPayload();
  *(v54 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks) = MEMORY[0x1E69E7CC8];
  *(v54 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers) = v40;
  v55 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
  v56 = v39;
  *(v54 + v55) = sub_1B6987EC8(v40);
  v57 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey;
  *(v54 + v57) = sub_1B69F76A4(v40);
  v58 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey;
  *(v54 + v58) = sub_1B69F77E8(v40);
  *(v54 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind) = xmmword_1B6ABF700;
  v54[6] = v56;
  v54[7] = v45;
  v54[8] = v145;
  type metadata accessor for ProcessorManager();
  v59 = swift_allocObject();
  v59[3] = 0;
  swift_unknownObjectWeakInit();
  v59[5] = v45;
  v59[6] = v40;
  v59[4] = v56;
  v54[3] = v59;
  v60 = v143;
  sub_1B69805B0(v147, v143, type metadata accessor for DiagnosticsConsentProvider);
  v61 = v144;
  sub_1B69805B0(v50, v144, type metadata accessor for SummaryEventConfiguration);
  v62 = qword_1EDBCB498;
  v63 = v56;
  v64 = v45;
  v65 = v63;
  v66 = v64;
  v67 = v65;
  v68 = v66;

  v137 = v136;
  if (v62 != -1)
  {
    swift_once();
  }

  v69 = qword_1EDBCB4A0;
  type metadata accessor for EventMirrorStore();
  v70 = swift_allocObject();
  *(v70 + 16) = MEMORY[0x1E69E7CC8];
  sub_1B69805B0(v60, v142, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6987BC4();
  v72 = v71;
  v73 = *(v71 + 48);
  v74 = sub_1B6AB8BB0();
  v75 = v139;
  (*(*(v74 - 8) + 56))(v139, 1, 1, v74);
  *(v75 + v73) = 0;
  (*(*(v72 - 8) + 56))(v75, 0, 1, v72);
  if (*(v61 + 8))
  {
    v76 = type metadata accessor for DisabledSummaryEventManager();
    v77 = swift_allocObject();
    v78 = &off_1F2E7D3E0;
  }

  else
  {
    v79 = v61;
    v80 = v134;
    sub_1B69805B0(v79, v134, type metadata accessor for SummaryEventConfiguration);
    v81 = v135;
    sub_1B69805B0(v75, v135, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
    v76 = type metadata accessor for SummaryEventManager();
    v82 = *(v76 + 48);
    v83 = *(v76 + 52);
    v84 = swift_allocObject();
    v77 = sub_1B698A71C(v80, v81, v84);
    v78 = &off_1F2E7C028;
  }

  v150[3] = v76;
  v150[4] = v78;
  v150[0] = v77;
  sub_1B698C78C(v75, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
  v85 = type metadata accessor for Tracker(0);
  v86 = *(v85 + 48);
  v87 = *(v85 + 52);
  v88 = swift_allocObject();
  *(v88 + 80) = 0;
  *(v88 + 56) = 0;
  *(v88 + 64) = 0;
  swift_unknownObjectWeakInit();
  v89 = MEMORY[0x1E69E7CC8];
  *(v88 + 112) = MEMORY[0x1E69E7CC8];
  *(v88 + 120) = v89;
  *(v88 + 128) = v89;
  *(v88 + 136) = v89;
  *(v88 + 144) = v89;
  *(v88 + 160) = v89;
  v90 = MEMORY[0x1E69E7CC0];
  *(v88 + 168) = MEMORY[0x1E69E7CC0];
  *(v88 + 176) = v90;
  *(v88 + 192) = v90;
  *(v88 + 200) = 0;
  v91 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
  v92 = swift_allocObject();
  v93 = swift_slowAlloc();
  *(v92 + 16) = v93;
  *v93 = 0;
  *(v92 + 24) = 0x10000;
  *(v88 + v91) = v92;
  *(v88 + 16) = xmmword_1B6ABF710;
  *(v88 + 201) = 0;
  *(v88 + 96) = v68;
  *(v88 + 104) = v70;
  *(v88 + 152) = 0;
  *(v88 + 80) = 0;
  *(v88 + 88) = v67;
  swift_unknownObjectWeakAssign();
  *(v88 + 184) = v90;
  *(v88 + 40) = 0;
  *(v88 + 48) = 0;
  v94 = *(v88 + 64);
  *(v88 + 56) = 0;
  *(v88 + 64) = 0;
  v95 = v67;
  v96 = v68;

  v97 = v137;
  *(v88 + 208) = v137;
  *(v88 + 216) = &protocol witness table for BridgedPrivacyValidationProvider;
  v98 = v142;
  sub_1B69805B0(v142, v88 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v150, v88 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
  *(v88 + 32) = v69;
  v99 = v97;
  v137 = v69;
  sub_1B6989974();
  Strong = swift_unknownObjectWeakLoadStrong();
  v139 = v95;
  v138 = v96;
  if (Strong)
  {
    swift_unknownObjectRelease();
    v101 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v101);

    sub_1B698C78C(v98, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B698C78C(v144, type metadata accessor for SummaryEventConfiguration);
    sub_1B698C78C(v143, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v150);
  }

  else
  {

    sub_1B698C78C(v98, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B698C78C(v144, type metadata accessor for SummaryEventConfiguration);
    sub_1B698C78C(v143, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v150);
  }

  v102 = v147;
  v54[2] = v88;
  *(v54 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options) = 0;
  *(v54 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_flushProcessor) = v46;
  sub_1B6982544(v151, v54 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider);
  *(v54 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timeDurationGranularity) = 0;
  v103 = OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation;
  swift_beginAccess();
  v104 = *&v99[v103];
  if (v104[OBJC_IVAR___AAPrivacyValidation_enabled] == 1)
  {
    v105 = *&v104[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors];

    v106 = v104;
    sub_1B6A930EC(v105);
    v108 = sub_1B6A94B10(v107);

    type metadata accessor for PrivacyValidator();
    v109 = swift_allocObject();
    *(v109 + 16) = 1;
  }

  else
  {
    type metadata accessor for PrivacyValidator();
    v109 = swift_allocObject();
    *(v109 + 16) = 0;

    v108 = MEMORY[0x1E69E7CD0];
  }

  v110 = v139;
  v111 = v138;
  type metadata accessor for DenylistDescriptorMatcher();
  v112 = swift_allocObject();
  *(v112 + 16) = v108;
  *(v109 + 24) = v112;
  *(v54 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_privacyValidator) = v109;
  v113 = v137;
  *(v54 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_trackingConsent) = v137;
  *(v54 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager) = 0;
  swift_beginAccess();
  swift_weakAssign();
  *(v54[2] + 80) = &off_1F2E76000;
  swift_unknownObjectWeakAssign();
  v114 = v113;

  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v115 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE1C, v115);
  }

  *(v54[3] + 24) = &off_1F2E76070;
  swift_unknownObjectWeakAssign();
  v116 = v54[3];
  v118 = *(v116 + 32);
  v117 = *(v116 + 40);
  v119 = swift_allocObject();
  v119[2] = v116;
  v119[3] = v46;
  v119[4] = &protocol witness table for FlushProcessor;
  swift_retain_n();

  sub_1B69877A4(v118, sub_1B698E578, v119);

  sub_1B698C78C(v146, type metadata accessor for SummaryEventConfiguration);
  sub_1B698C78C(v102, type metadata accessor for DiagnosticsConsentProvider);
  __swift_destroy_boxed_opaque_existential_1(v151);
  v120 = v141;
  *&v141[OBJC_IVAR___AASessionManager_sessionManager] = v54;
  v121 = v54[2];

  v123 = sub_1B6A3FD68(v122);
  *&v120[OBJC_IVAR___AASessionManager_tracker] = v123;
  v124 = v54[3];
  v125 = type metadata accessor for BridgedProcessorManager();
  v126 = objc_allocWithZone(v125);
  *&v126[OBJC_IVAR___AAProcessorManager_processorManager] = v124;
  v149.receiver = v126;
  v149.super_class = v125;
  v127 = v123;

  v128 = objc_msgSendSuper2(&v149, sel_init);
  *&v120[OBJC_IVAR___AASessionManager_processorManager] = v128;
  v129 = type metadata accessor for BridgedSessionManager();
  v148.receiver = v120;
  v148.super_class = v129;
  v130 = v128;
  v131 = objc_msgSendSuper2(&v148, sel_init);

  return v131;
}

id BridgedSessionManager.init(accessQueue:privacyValidationProvider:)(void *a1, void *a2)
{
  v137 = a2;
  v3 = type metadata accessor for SummaryEventDatabaseManager.StorageOptions(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v131 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v136 = &v130 - v7;
  v133 = type metadata accessor for SummaryEventConfiguration(0);
  v8 = *(*(v133 - 1) + 64);
  v9 = MEMORY[0x1EEE9AC00](v133);
  v130 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v144 = &v130 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v142 = &v130 - v13;
  v14 = type metadata accessor for DiagnosticsConsentProvider(0);
  v15 = v14 - 8;
  v16 = *(*(v14 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v140 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v143 = &v130 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v141 = &v130 - v21;
  v22 = sub_1B6AB9090();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v130 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v130 - v28;
  v30 = type metadata accessor for AccessQueue();
  v31 = objc_allocWithZone(v30);
  *&v31[OBJC_IVAR___AAAccessQueue_queue] = a1;
  v138 = a1;
  sub_1B6AB9050();
  v32 = OBJC_IVAR___AAAccessQueue__qos;
  swift_beginAccess();
  (*(v23 + 16))(v27, v29, v22);
  sub_1B698E4D0(0, qword_1EDBCB0E0, MEMORY[0x1E69E7FB0], type metadata accessor for Atomic);
  v34 = *(v33 + 48);
  v35 = *(v33 + 52);
  v36 = swift_allocObject();
  v135 = type metadata accessor for UnfairLock();
  v37 = swift_allocObject();
  v38 = swift_slowAlloc();
  *(v37 + 16) = v38;
  *v38 = 0;
  *(v37 + 24) = 0x10000;
  (*(v23 + 8))(v29, v22);
  *(v36 + 2) = v37;
  (*(v23 + 32))(&v36[*(*v36 + 96)], v27, v22);
  *&v31[v32] = v36;
  v39 = v141;
  swift_endAccess();
  v152.receiver = v31;
  v152.super_class = v30;
  v40 = objc_msgSendSuper2(&v152, sel_init);
  type metadata accessor for SessionGroupManager();
  v41 = swift_allocObject();
  v42 = v40;
  v43 = MEMORY[0x1E69E7CC0];
  v41[3] = sub_1B6987D80(MEMORY[0x1E69E7CC0]);
  v41[4] = sub_1B6987D80(v43);
  v41[2] = v42;
  v44 = dispatch_group_create();
  type metadata accessor for FlushProcessor();
  v45 = swift_allocObject();
  swift_weakInit();
  v45[4] = 13;
  v45[5] = 0x404E000000000000;
  v45[6] = 0;
  v46 = dispatch_group_create();
  v134 = v45;
  v45[3] = v46;
  sub_1B6AB8E30();
  v47 = (v39 + *(v15 + 28));
  *v47 = sub_1B69A3378;
  v47[1] = 0;
  if (qword_1EDBCAC70 != -1)
  {
    swift_once();
  }

  v48 = __swift_project_value_buffer(v133, qword_1EDBCA728);
  v49 = v142;
  sub_1B69805B0(v48, v142, type metadata accessor for SummaryEventConfiguration);
  v50 = type metadata accessor for SessionManager(0);
  v51 = *(v50 + 48);
  v52 = *(v50 + 52);
  v53 = swift_allocObject();
  v150 = &type metadata for TimestampJitter;
  v151 = &protocol witness table for TimestampJitter;
  v148[0] = 0;
  v148[1] = 0;
  v149 = 1;
  v53[5] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for SessionManager.SessionState(0);
  swift_storeEnumTagMultiPayload();
  *(v53 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks) = MEMORY[0x1E69E7CC8];
  *(v53 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers) = v43;
  v54 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
  v55 = v42;
  v56 = v137;
  *(v53 + v54) = sub_1B6987EC8(v43);
  v57 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey;
  *(v53 + v57) = sub_1B69F76A4(v43);
  v58 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey;
  *(v53 + v58) = sub_1B69F77E8(v43);
  *(v53 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind) = xmmword_1B6ABF700;
  v53[6] = v55;
  v53[7] = v44;
  v53[8] = v41;
  type metadata accessor for ProcessorManager();
  v59 = swift_allocObject();
  v59[3] = 0;
  swift_unknownObjectWeakInit();
  v59[5] = v44;
  v59[6] = v43;
  v59[4] = v55;
  v53[3] = v59;
  sub_1B69805B0(v39, v143, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B69805B0(v49, v144, type metadata accessor for SummaryEventConfiguration);
  v60 = qword_1EDBCB498;
  v61 = v55;
  v62 = v44;
  v63 = v61;
  v64 = v62;
  v65 = v63;
  v133 = v56;
  v66 = v64;
  v137 = v41;

  if (v60 != -1)
  {
    swift_once();
  }

  v132 = qword_1EDBCB4A0;
  type metadata accessor for EventMirrorStore();
  v67 = swift_allocObject();
  v68 = MEMORY[0x1E69E7CC8];
  *(v67 + 16) = MEMORY[0x1E69E7CC8];
  sub_1B69805B0(v143, v140, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6987BC4();
  v70 = v69;
  v71 = *(v69 + 48);
  v72 = sub_1B6AB8BB0();
  v73 = v136;
  (*(*(v72 - 8) + 56))(v136, 1, 1, v72);
  *&v73[v71] = 0;
  (*(*(v70 - 8) + 56))(v73, 0, 1, v70);
  if (*(v144 + 8))
  {
    v74 = type metadata accessor for DisabledSummaryEventManager();
    v75 = swift_allocObject();
    v76 = &off_1F2E7D3E0;
  }

  else
  {
    v77 = v130;
    sub_1B69805B0(v144, v130, type metadata accessor for SummaryEventConfiguration);
    v78 = v131;
    sub_1B69805B0(v73, v131, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
    v74 = type metadata accessor for SummaryEventManager();
    v79 = *(v74 + 48);
    v80 = *(v74 + 52);
    v81 = swift_allocObject();
    v75 = sub_1B698A71C(v77, v78, v81);
    v76 = &off_1F2E7C028;
    v43 = MEMORY[0x1E69E7CC0];
  }

  v82 = v134;
  v147[3] = v74;
  v147[4] = v76;
  v147[0] = v75;
  sub_1B698C78C(v73, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
  v83 = type metadata accessor for Tracker(0);
  v84 = *(v83 + 48);
  v85 = *(v83 + 52);
  v86 = swift_allocObject();
  *(v86 + 80) = 0;
  *(v86 + 56) = 0;
  *(v86 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v86 + 112) = v68;
  *(v86 + 120) = v68;
  *(v86 + 128) = v68;
  *(v86 + 136) = v68;
  *(v86 + 144) = v68;
  *(v86 + 160) = v68;
  *(v86 + 168) = v43;
  *(v86 + 176) = v43;
  *(v86 + 192) = v43;
  *(v86 + 200) = 0;
  v87 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
  v88 = swift_allocObject();
  v89 = swift_slowAlloc();
  *(v88 + 16) = v89;
  *v89 = 0;
  *(v88 + 24) = 0x10000;
  *(v86 + v87) = v88;
  *(v86 + 16) = xmmword_1B6ABF710;
  *(v86 + 201) = 0;
  *(v86 + 96) = v66;
  *(v86 + 104) = v67;
  *(v86 + 152) = 0;
  *(v86 + 80) = 0;
  *(v86 + 88) = v65;
  swift_unknownObjectWeakAssign();
  *(v86 + 184) = v43;
  *(v86 + 40) = 0;
  *(v86 + 48) = 0;
  v90 = *(v86 + 64);
  *(v86 + 56) = 0;
  *(v86 + 64) = 0;
  v91 = v65;
  v92 = v66;

  v93 = v133;
  *(v86 + 208) = v133;
  *(v86 + 216) = &protocol witness table for BridgedPrivacyValidationProvider;
  v94 = v140;
  sub_1B69805B0(v140, v86 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v147, v86 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
  v95 = v132;
  *(v86 + 32) = v132;
  v96 = v93;
  v134 = v95;
  sub_1B6989974();
  Strong = swift_unknownObjectWeakLoadStrong();
  v136 = v92;
  v135 = v91;
  if (Strong)
  {
    swift_unknownObjectRelease();
    v98 = v92;
    v99 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v99);

    sub_1B698C78C(v94, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B698C78C(v144, type metadata accessor for SummaryEventConfiguration);
    sub_1B698C78C(v143, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v147);
  }

  else
  {

    sub_1B698C78C(v94, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B698C78C(v144, type metadata accessor for SummaryEventConfiguration);
    sub_1B698C78C(v143, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v147);
  }

  v53[2] = v86;
  *(v53 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options) = 0;
  *(v53 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_flushProcessor) = v82;
  sub_1B6982544(v148, v53 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider);
  *(v53 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timeDurationGranularity) = 0;
  v100 = OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation;
  swift_beginAccess();
  v101 = *&v96[v100];
  v102 = v142;
  if (v101[OBJC_IVAR___AAPrivacyValidation_enabled] == 1)
  {
    v103 = *&v101[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors];

    v104 = v101;
    sub_1B6A930EC(v103);
    v107 = sub_1B6A94B10(v105);

    type metadata accessor for PrivacyValidator();
    v106 = swift_allocObject();
    *(v106 + 16) = 1;
  }

  else
  {
    type metadata accessor for PrivacyValidator();
    v106 = swift_allocObject();
    *(v106 + 16) = 0;

    v107 = MEMORY[0x1E69E7CD0];
  }

  v108 = v135;
  type metadata accessor for DenylistDescriptorMatcher();
  v109 = swift_allocObject();
  *(v109 + 16) = v107;
  *(v106 + 24) = v109;
  *(v53 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_privacyValidator) = v106;
  v110 = v134;
  *(v53 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_trackingConsent) = v134;
  *(v53 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager) = 0;
  swift_beginAccess();
  swift_weakAssign();
  *(v53[2] + 80) = &off_1F2E76000;
  swift_unknownObjectWeakAssign();
  v111 = v110;

  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v112 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v112);
  }

  *(v53[3] + 24) = &off_1F2E76070;
  swift_unknownObjectWeakAssign();
  v113 = v53[3];
  v115 = *(v113 + 32);
  v114 = *(v113 + 40);
  v116 = swift_allocObject();
  v116[2] = v113;
  v116[3] = v82;
  v116[4] = &protocol witness table for FlushProcessor;
  swift_retain_n();

  sub_1B69877A4(v115, sub_1B69916A8, v116);

  sub_1B698C78C(v102, type metadata accessor for SummaryEventConfiguration);
  sub_1B698C78C(v141, type metadata accessor for DiagnosticsConsentProvider);
  __swift_destroy_boxed_opaque_existential_1(v148);
  v117 = v139;
  *&v139[OBJC_IVAR___AASessionManager_sessionManager] = v53;
  v118 = v53[2];

  v120 = sub_1B6A3FD68(v119);
  *&v117[OBJC_IVAR___AASessionManager_tracker] = v120;
  v121 = v53[3];
  v122 = type metadata accessor for BridgedProcessorManager();
  v123 = objc_allocWithZone(v122);
  *&v123[OBJC_IVAR___AAProcessorManager_processorManager] = v121;
  v146.receiver = v123;
  v146.super_class = v122;
  v124 = v120;

  v125 = objc_msgSendSuper2(&v146, sel_init);
  *&v117[OBJC_IVAR___AASessionManager_processorManager] = v125;
  v126 = type metadata accessor for BridgedSessionManager();
  v145.receiver = v117;
  v145.super_class = v126;
  v127 = v125;
  v128 = objc_msgSendSuper2(&v145, sel_init);

  return v128;
}

id BridgedSessionManager.__allocating_init(accessQueue:privacyValidationProvider:diagnosticsConsentProvider:)(void *a1, void *a2, void *a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = sub_1B6AA8300(a1, a2, a3);

  return v8;
}

id BridgedSessionManager.init(accessQueue:privacyValidationProvider:diagnosticsConsentProvider:)(void *a1, void *a2, void *a3)
{
  v4 = sub_1B6AA8300(a1, a2, a3);

  return v4;
}

id BridgedSessionManager.__allocating_init(privacyValidationProvider:diagnosticsConsentProvider:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1B6AA92C0(a1, a2);

  return v6;
}

id BridgedSessionManager.init(privacyValidationProvider:diagnosticsConsentProvider:)(void *a1, void *a2)
{
  v3 = sub_1B6AA92C0(a1, a2);

  return v3;
}

id BridgedSessionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedSessionManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void BridgedSessionManager.push(_:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(type metadata accessor for BridgedDataEventTraits()) init];
  [v1 pushSessionData:a1 traits:v3];
}

uint64_t BridgedSessionManager.push(_:traits:)(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + OBJC_IVAR___AASessionData_key + 8);
  v20 = *(a1 + OBJC_IVAR___AASessionData_key);
  v4 = *(a1 + OBJC_IVAR___AASessionData_data);
  swift_getObjectType();

  swift_unknownObjectRetain();
  v19 = sub_1B6A46A3C();
  v6 = v5;
  sub_1B6A46A3C();
  v8 = v7;

  sub_1B6A46A3C();
  v10 = v9;

  v11 = v8 & 1;
  v12 = (v10 >> 8) & 1;
  v13 = *(v2 + OBJC_IVAR___AASessionManager_sessionManager);
  v14 = sub_1B69D821C();
  v15 = *(v13 + 48);
  v18 = *(v13 + 56);
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  *(v16 + 24) = v20;
  *(v16 + 32) = v3;
  *(v16 + 40) = v4;
  *(v16 + 48) = v19;
  *(v16 + 56) = v6;
  *(v16 + 64) = v11;
  *(v16 + 65) = v12;
  *(v16 + 72) = v14;
  *(v16 + 80) = 0xD00000000000006ALL;
  *(v16 + 88) = 0x80000001B6ACEF80;
  *(v16 + 96) = 194;

  swift_unknownObjectRetain();

  sub_1B69877A4(v15, sub_1B6AA95F8, v16);

  swift_unknownObjectRelease();
}

void BridgedSessionManager.push(_:submitEventQueues:)(uint64_t a1)
{
  v3 = [objc_allocWithZone(type metadata accessor for BridgedDataEventTraits()) init];
  [v1 pushSessionData:a1 traits:v3];
}

uint64_t BridgedSessionManager.transaction(block:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___AASessionManager_sessionManager);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8 = *(v5 + 48);
  v7 = *(v5 + 56);
  v9 = swift_allocObject();
  v9[2] = v5;
  v9[3] = sub_1B6AA9648;
  v9[4] = v6;

  sub_1B69877A4(v8, sub_1B6998560, v9);
}

void sub_1B6AA4BFC(uint64_t a1, void (*a2)(id, uint64_t))
{
  v4 = type metadata accessor for BridgedAccessSessionManager();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___AAAccessSessionManager_accessSessionManager] = a1;
  v8.receiver = v5;
  v8.super_class = v4;

  v6 = objc_msgSendSuper2(&v8, sel_init);
  a2(v6, v7);
}

void BridgedSessionManager.start(for:name:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1B6AB8DB0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B6AB8E40();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v15 = sub_1B6AB92B0();
  }

  else
  {
    v15 = 0;
  }

  sub_1B6AB8E30();
  sub_1B6AB8DD0();
  (*(v11 + 8))(v14, v10);
  v16 = sub_1B6AB92B0();

  sub_1B6AB8DA0();
  v17 = sub_1B6AB8D20();
  (*(v6 + 8))(v9, v5);
  [v18[1] startSessionForKind:a1 withName:v15 identifier:v16 startDate:v17];
}

void BridgedSessionManager.start(for:name:identifier:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v7 = sub_1B6AB8DB0();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    a3 = sub_1B6AB92B0();
  }

  v12 = sub_1B6AB92B0();
  sub_1B6AB8DA0();
  v13 = sub_1B6AB8D20();
  (*(v8 + 8))(v11, v7);
  [v4 startSessionForKind:a1 withName:a3 identifier:v12 startDate:v13];
}

void BridgedSessionManager.start(for:name:startDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = sub_1B6AB8E40();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v12 = sub_1B6AB92B0();
  }

  else
  {
    v12 = 0;
  }

  sub_1B6AB8E30();
  sub_1B6AB8DD0();
  (*(v8 + 8))(v11, v7);
  v13 = sub_1B6AB92B0();

  v14 = sub_1B6AB8D20();
  [v4 startSessionForKind:a1 withName:v12 identifier:v13 startDate:v14];
}

void BridgedSessionManager.start(for:name:identifier:startDate:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v5 = sub_1B6AB92B0();
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1B6AB92B0();
  v7 = sub_1B6AB8D20();
  if (qword_1EDBC8A30 != -1)
  {
    swift_once();
  }

  [v3 startSessionForKind:a1 withName:v5 identifier:v6 startDate:? timestampJitter:?];
}

void BridgedSessionManager.start(for:name:identifier:startDate:timestampJitter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
    v10 = sub_1B6AB92B0();
  }

  else
  {
    v10 = 0;
  }

  v11 = sub_1B6AB92B0();
  v12 = sub_1B6AB8D20();
  [v7 startSessionForKind:a1 withName:v10 identifier:v11 startDate:v12 timestampJitter:a7 timeDurationGranularity:0];
}

uint64_t BridgedSessionManager.start(for:name:identifier:startDate:timestampJitter:timeDurationGranularity:)(int64_t a1, uint64_t a2, int64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8)
{
  v29 = a6;
  v30 = a4;
  v31 = a8;
  v13 = sub_1B6AB8DB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a7;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      goto LABEL_11;
    }

    if (a1 == 3)
    {
      if (a3)
      {
        a1 = a3;
      }

      else
      {
        a2 = 0;
        a1 = 0xE000000000000000;
      }

      goto LABEL_12;
    }
  }

  else
  {
    if (!a1)
    {
      a2 = 0;
LABEL_12:
      v17 = *(v28 + OBJC_IVAR___AASessionManager_sessionManager);
      v18 = *(v17 + 56);
      v27 = *(v17 + 48);
      v28 = v18;
      (*(v14 + 16))(&v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), v29, v13);
      v19 = (*(v14 + 80) + 73) & ~*(v14 + 80);
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      *(v20 + 24) = a2;
      v22 = v30;
      v21 = v31;
      *(v20 + 32) = a1;
      *(v20 + 40) = v22;
      v23 = v32;
      *(v20 + 48) = a5;
      *(v20 + 56) = v23;
      *(v20 + 64) = v21;
      *(v20 + 72) = 0;
      (*(v14 + 32))(v20 + v19, v16, v13);

      sub_1B6992E2C(a2, a1);

      v24 = v23;
      sub_1B69877A4(v27, sub_1B69944F4, v20);
      sub_1B69C2E8C(a2, a1);
    }

    if (a1 == 1)
    {
LABEL_11:
      a2 = 0;
      goto LABEL_12;
    }
  }

  v33 = a1;
  result = sub_1B6ABA160();
  __break(1u);
  return result;
}

Swift::Void __swiftcall BridgedSessionManager.end()()
{
  v1 = sub_1B6AB8DB0();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v8 = *(v0 + OBJC_IVAR___AASessionManager_sessionManager);
  sub_1B6AB8DA0();
  v9 = *(v8 + 48);
  sub_1B6A2ACC8();
  v11 = *(v8 + 48);
  v10 = *(v8 + 56);
  (*(v2 + 16))(v5, v7, v1);
  v12 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v13 = (v3 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = v8;
  (*(v2 + 32))(v14 + v12, v5, v1);
  v15 = (v14 + v13);
  *v15 = 0;
  v15[1] = 0;

  sub_1B69877A4(v11, sub_1B6AA9650, v14);

  (*(v2 + 8))(v7, v1);
}

uint64_t BridgedSessionManager.end(completion:)(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v21 = a2;
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v20 - v8;
  v10 = *(v2 + OBJC_IVAR___AASessionManager_sessionManager);
  sub_1B6AB8DA0();
  v11 = *(v10 + 48);
  sub_1B6A2ACC8();
  v13 = *(v10 + 48);
  v12 = *(v10 + 56);
  (*(v4 + 16))(v7, v9, v3);
  v14 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v15 = (v5 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 16) = v10;
  (*(v4 + 32))(v16 + v14, v7, v3);
  v17 = (v16 + v15);
  v18 = v21;
  *v17 = v20;
  v17[1] = v18;

  sub_1B69877A4(v13, sub_1B6AA9B4C, v16);

  return (*(v4 + 8))(v9, v3);
}

uint64_t BridgedSessionManager.end(endDate:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v6 = sub_1B6AB8DB0();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = *(v3 + OBJC_IVAR___AASessionManager_sessionManager);
  v10 = *(v9 + 48);
  sub_1B6A2ACC8();
  v12 = *(v9 + 48);
  v11 = *(v9 + 56);
  (*(v7 + 16))(&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v6);
  v13 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v9;
  (*(v7 + 32))(v14 + v13, &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  v15 = (v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v15 = v18;
  v15[1] = a3;

  sub_1B69877A4(v12, sub_1B6AA9B4C, v14);
}

uint64_t BridgedSessionManager.flush(callbackQueue:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___AASessionManager_sessionManager);
  v9 = v7[6];
  v8 = v7[7];
  v10 = swift_allocObject();
  v11 = v7[3];
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v10;
  v12[3] = a1;
  v12[4] = a2;
  v12[5] = a3;

  v13 = a1;
  sub_1B69A18C0(a2);
  sub_1B69877A4(v9, sub_1B69A4190, v12);
}

uint64_t BridgedAccessSessionManager.isActive.getter()
{
  v1 = type metadata accessor for SessionManager.SessionState(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1);
  v4 = (&v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1B6AB90F0();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = (&v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(*(v0 + OBJC_IVAR___AAAccessSessionManager_accessSessionManager) + 16);
  v11 = *(*(v10 + 48) + OBJC_IVAR___AAAccessQueue_queue);
  *v9 = v11;
  (*(v6 + 104))(v9, *MEMORY[0x1E69E8020], v5);
  v12 = v11;
  LOBYTE(v11) = sub_1B6AB9110();
  result = (*(v6 + 8))(v9, v5);
  if (v11)
  {
    v14 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_state;
    swift_beginAccess();
    sub_1B69805B0(v10 + v14, v4, type metadata accessor for SessionManager.SessionState);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1B698C78C(v4, type metadata accessor for SessionManager.SessionState);
      }

      return 0;
    }

    else
    {
      v16 = *v4;

      return 1;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void BridgedAccessSessionManager.push(_:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for BridgedDataEventTraits()) init];
  BridgedAccessSessionManager.push(_:traits:)(a1);
}

uint64_t BridgedAccessSessionManager.push(_:traits:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + OBJC_IVAR___AASessionData_key);
  v3 = *(a1 + OBJC_IVAR___AASessionData_key + 8);
  v5 = *(a1 + OBJC_IVAR___AASessionData_data);
  swift_getObjectType();

  swift_unknownObjectRetain();
  v6 = sub_1B6A46A3C();
  v8 = v7;
  sub_1B6A46A3C();
  v10 = v9;

  sub_1B6A46A3C();
  v12 = v11;

  *&v17 = v4;
  *(&v17 + 1) = v3;
  v18 = v5;
  v19 = v6;
  v20 = v8;
  v21 = v10 & 1;
  v22 = v12 & 1;
  v13 = *(v2 + OBJC_IVAR___AAAccessSessionManager_accessSessionManager);
  v14 = sub_1B69D821C();
  v15 = *(v13 + 16);
  sub_1B6AA1608(&v17, v14, 0xD00000000000006ALL, 0x80000001B6ACEF80, 407);

  return sub_1B698C78C(&v17, sub_1B6AA9654);
}

void BridgedAccessSessionManager.push(_:submitEventQueues:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(type metadata accessor for BridgedDataEventTraits()) init];
  BridgedAccessSessionManager.push(_:traits:)(a1);
}

id BridgedAccessSessionManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1B6AA700C(uint64_t a1)
{
  *&v1[OBJC_IVAR___AASessionManager_sessionManager] = a1;
  v3 = *(a1 + 16);

  v5 = sub_1B6A3FD68(v4);
  *&v1[OBJC_IVAR___AASessionManager_tracker] = v5;
  v6 = *(a1 + 24);
  v7 = type metadata accessor for BridgedProcessorManager();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR___AAProcessorManager_processorManager] = v6;
  v15.receiver = v8;
  v15.super_class = v7;
  v9 = v5;

  v10 = objc_msgSendSuper2(&v15, sel_init);
  *&v1[OBJC_IVAR___AASessionManager_processorManager] = v10;
  v14.receiver = v1;
  v14.super_class = type metadata accessor for BridgedSessionManager();
  v11 = v10;
  v12 = objc_msgSendSuper2(&v14, sel_init);

  return v12;
}

void *sub_1B6AA70FC(unint64_t a1, uint64_t a2, void (**a3)(char *, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, char a7, void *a8, uint64_t a9, uint64_t a10)
{
  v153 = a8;
  v150 = a4;
  v149 = a3;
  v17 = sub_1B6AB9030();
  v18 = *(*(v17 - 8) + 64);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v156 = &v140 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = sub_1B6AB9090();
  v143 = *(v155 - 8);
  v20 = *(v143 + 64);
  MEMORY[0x1EEE9AC00](v155);
  v154 = &v140 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for SummaryEventDatabaseManager.StorageOptions(0);
  v23 = *(*(v22 - 8) + 64);
  v24 = MEMORY[0x1EEE9AC00](v22 - 8);
  v142 = &v140 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v27 = (&v140 - v26);
  v28 = type metadata accessor for SummaryEventConfiguration(0);
  v29 = *(*(v28 - 8) + 64);
  v30 = MEMORY[0x1EEE9AC00](v28 - 8);
  v141 = &v140 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  *&v160 = &v140 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v140 - v34;
  v36 = type metadata accessor for DiagnosticsConsentProvider(0);
  v37 = *(*(v36 - 8) + 64);
  v38 = MEMORY[0x1EEE9AC00](v36 - 8);
  v152 = &v140 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v158 = &v140 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v43 = (&v140 - v42);
  v169 = &type metadata for TimestampJitter;
  v170 = &protocol witness table for TimestampJitter;
  v167[0] = a5;
  v167[1] = a6;
  v168 = a7 & 1;
  if (qword_1EDBCB568 != -1)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v147 = v27;
    v44 = qword_1EDBCB570;
    sub_1B6982544(v167, &v166);
    v145 = a9;
    sub_1B69805B0(a9, v43, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B69805B0(a10, v35, type metadata accessor for SummaryEventConfiguration);
    v45 = v43;
    if (qword_1EDBCB498 != -1)
    {
      swift_once();
    }

    v148 = qword_1EDBCB4A0;
    v46 = type metadata accessor for SessionManager(0);
    v47 = *(v46 + 48);
    v48 = *(v46 + 52);
    v49 = swift_allocObject();
    v49[5] = 0;
    swift_unknownObjectWeakInit();
    type metadata accessor for SessionManager.SessionState(0);
    swift_storeEnumTagMultiPayload();
    v50 = MEMORY[0x1E69E7CC8];
    *(v49 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks) = MEMORY[0x1E69E7CC8];
    v51 = MEMORY[0x1E69E7CC0];
    *(v49 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers) = MEMORY[0x1E69E7CC0];
    v52 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
    *(v49 + v52) = sub_1B6987EC8(v51);
    v53 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey;
    *(v49 + v53) = sub_1B69F76A4(v51);
    v54 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey;
    *(v49 + v54) = sub_1B69F77E8(v51);
    *(v49 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind) = xmmword_1B6ABF700;
    v49[6] = v44;
    v49[7] = a1;
    v146 = a2;
    v49[8] = a2;
    type metadata accessor for ProcessorManager();
    v55 = v44;
    v56 = swift_allocObject();
    v56[3] = 0;
    swift_unknownObjectWeakInit();
    v56[5] = a1;
    v56[6] = v51;
    v57 = v50;
    v56[4] = v55;
    v159 = v49;
    v49[3] = v56;
    v144 = v45;
    v58 = v158;
    sub_1B69805B0(v45, v158, type metadata accessor for DiagnosticsConsentProvider);
    v157 = v35;
    v59 = v160;
    sub_1B69805B0(v35, v160, type metadata accessor for SummaryEventConfiguration);
    type metadata accessor for EventMirrorStore();
    v35 = swift_allocObject();
    *(v35 + 2) = v50;
    sub_1B69805B0(v58, v152, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B6987BC4();
    v61 = v60;
    v62 = *(v60 + 48);
    v63 = sub_1B6AB8BB0();
    v64 = v147;
    (*(*(v63 - 8) + 56))(v147, 1, 1, v63);
    *(v64 + v62) = 0;
    (*(*(v61 - 8) + 56))(v64, 0, 1, v61);
    if (*(v59 + 8))
    {
      v65 = type metadata accessor for DisabledSummaryEventManager();
      v66 = swift_allocObject();
      v67 = a1;
      v68 = v55;
      v69 = v67;
      v70 = v68;

      v71 = v153;
      v72 = v153;
      v73 = &off_1F2E7D3E0;
    }

    else
    {
      v74 = v141;
      sub_1B69805B0(v59, v141, type metadata accessor for SummaryEventConfiguration);
      v140 = v35;
      v75 = v142;
      sub_1B69805B0(v64, v142, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
      v65 = type metadata accessor for SummaryEventManager();
      v76 = *(v65 + 48);
      v77 = *(v65 + 52);
      v78 = swift_allocObject();
      v79 = a1;
      v80 = v55;
      v81 = v79;
      v82 = v80;

      v71 = v153;
      v83 = v153;
      v84 = v74;
      v57 = MEMORY[0x1E69E7CC8];
      v85 = v75;
      v35 = v140;
      v66 = sub_1B698A71C(v84, v85, v78);
      v73 = &off_1F2E7C028;
    }

    v164 = v73;
    v163 = v65;
    aBlock[0] = v66;
    sub_1B698C78C(v64, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
    v86 = type metadata accessor for Tracker(0);
    v87 = *(v86 + 48);
    v88 = *(v86 + 52);
    v89 = swift_allocObject();
    *(v89 + 80) = 0;
    *(v89 + 56) = 0;
    *(v89 + 64) = 0;
    swift_unknownObjectWeakInit();
    *(v89 + 112) = v57;
    *(v89 + 120) = v57;
    *(v89 + 128) = v57;
    *(v89 + 136) = v57;
    *(v89 + 144) = v57;
    *(v89 + 160) = v57;
    v90 = MEMORY[0x1E69E7CC0];
    *(v89 + 168) = MEMORY[0x1E69E7CC0];
    *(v89 + 176) = v90;
    *(v89 + 192) = v90;
    *(v89 + 200) = 0;
    v91 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
    type metadata accessor for UnfairLock();
    v92 = swift_allocObject();
    v93 = swift_slowAlloc();
    *(v92 + 16) = v93;
    *v93 = 0;
    *(v92 + 24) = 0x10000;
    *(v89 + v91) = v92;
    *(v89 + 16) = xmmword_1B6ABF710;
    v94 = v149;
    *(v89 + 201) = (v149 & 2) != 0;
    *(v89 + 96) = a1;
    *(v89 + 104) = v35;
    *(v89 + 152) = 0;
    *(v89 + 80) = 0;
    *(v89 + 88) = v55;
    swift_unknownObjectWeakAssign();
    *(v89 + 184) = v90;
    *(v89 + 40) = 0;
    *(v89 + 48) = 0;
    v95 = *(v89 + 64);
    *(v89 + 56) = 0;
    *(v89 + 64) = 0;
    v96 = a1;
    v97 = v55;

    *(v89 + 208) = v71;
    *(v89 + 216) = &protocol witness table for BridgedPrivacyValidationProvider;
    a2 = v152;
    sub_1B69805B0(v152, v89 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B6982544(aBlock, v89 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
    v98 = v148;
    *(v89 + 32) = v148;
    v27 = v71;
    v148 = v98;
    sub_1B6989974();
    Strong = swift_unknownObjectWeakLoadStrong();
    v100 = v150;
    v153 = v96;
    if (Strong)
    {
      swift_unknownObjectRelease();
      v101 = v96;
      v102 = swift_allocObject();
      swift_weakInit();

      Tracker.onSessionChange(block:)(sub_1B6A0BE30, v102);

      sub_1B698C78C(a2, type metadata accessor for DiagnosticsConsentProvider);
      sub_1B698C78C(v160, type metadata accessor for SummaryEventConfiguration);
      sub_1B698C78C(v158, type metadata accessor for DiagnosticsConsentProvider);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
    }

    else
    {

      sub_1B698C78C(a2, type metadata accessor for DiagnosticsConsentProvider);
      sub_1B698C78C(v160, type metadata accessor for SummaryEventConfiguration);
      sub_1B698C78C(v158, type metadata accessor for DiagnosticsConsentProvider);
      __swift_destroy_boxed_opaque_existential_1(aBlock);
    }

    v103 = v159;
    v159[2] = v89;
    *(v103 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options) = v94;
    *(v103 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_flushProcessor) = v100;
    sub_1B6982544(&v166, v103 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider);
    *(v103 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timeDurationGranularity) = 0;
    v104 = OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation;
    swift_beginAccess();
    v105 = *(v27 + v104);
    v106 = v157;
    if (v105[OBJC_IVAR___AAPrivacyValidation_enabled] == 1)
    {
      v107 = *&v105[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors];

      v108 = v105;
      sub_1B6A930EC(v107);
      v111 = sub_1B6A94B10(v109);

      type metadata accessor for PrivacyValidator();
      v110 = swift_allocObject();
      *(v110 + 16) = 1;
    }

    else
    {
      type metadata accessor for PrivacyValidator();
      v110 = swift_allocObject();
      *(v110 + 16) = 0;

      v111 = MEMORY[0x1E69E7CD0];
    }

    v112 = v148;
    type metadata accessor for DenylistDescriptorMatcher();
    v113 = swift_allocObject();
    *(v113 + 16) = v111;
    *(v110 + 24) = v113;
    v114 = v159;
    *(v159 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_privacyValidator) = v110;
    *(v114 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_trackingConsent) = v112;
    *(v114 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager) = 0;
    swift_beginAccess();
    swift_weakAssign();
    *(v114[2] + 80) = &off_1F2E76000;
    swift_unknownObjectWeakAssign();
    v115 = v112;

    sub_1B6989974();
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_unknownObjectRelease();
      v116 = swift_allocObject();
      swift_weakInit();

      Tracker.onSessionChange(block:)(sub_1B6A0BE30, v116);
    }

    v117 = v159;

    *(v117[3] + 24) = &off_1F2E76070;
    swift_unknownObjectWeakAssign();
    v118 = v117[3];
    v43 = *(v118 + 32);
    v119 = *(v118 + 40);
    v120 = swift_allocObject();
    v120[2] = v118;
    v120[3] = v100;
    v120[4] = &protocol witness table for FlushProcessor;
    swift_retain_n();
    swift_retain_n();
    sub_1B69877A4(v43, sub_1B69916A8, v120);

    if (qword_1EDBC9580 != -1)
    {
      swift_once();
    }

    a9 = qword_1EDBCFD18;
    os_unfair_lock_lock((qword_1EDBCFD18 + 32));
    v121 = *(a9 + 24);

    os_unfair_lock_unlock((a9 + 32));

    v158 = v121;
    v152 = *(v121 + 16);
    if (!v152)
    {
      break;
    }

    a1 = 0;
    v150 = v158 + 32;
    v149 = (v143 + 16);
    v148 = &v162;
    v151 = a10;
    while (a1 < *(v158 + 16))
    {
      v122 = swift_allocObject();
      v160 = *(v150 + 16 * a1);
      *(v122 + 16) = v160;
      type metadata accessor for AccessSessionManager();
      v123 = swift_allocObject();
      v124 = v159;
      *(v123 + 16) = v159;
      v125 = v124[2];
      type metadata accessor for AccessTracker();
      v43 = swift_allocObject();
      swift_weakInit();
      swift_weakAssign();
      v43[3] = 0;
      v43[4] = 0;
      v43[5] = sub_1B6A55214;
      v43[6] = 0;
      v126 = swift_allocObject();
      v126[2] = v124;
      v126[3] = sub_1B6A0BE04;
      v126[4] = v122;
      v126[5] = v123;
      v126[6] = v43;
      v127 = qword_1EDBCAA18;
      swift_retain_n();
      *&v160 = *(&v160 + 1);
      swift_retain_n();

      if (v127 != -1)
      {
        swift_once();
      }

      ++a1;
      v128 = qword_1EDBCFD78;
      v27 = swift_allocObject();
      v27[2] = sub_1B6A0BE0C;
      v27[3] = v126;
      v129 = OBJC_IVAR___AAAccessQueue__qos;
      swift_beginAccess();
      v130 = *(v128 + v129);
      v131 = *(v130 + 2);
      v132 = *(v131 + 16);
      v133 = *(v131 + 24);

      os_unfair_lock_lock_with_options();
      v134 = *(*v130 + 96);
      swift_beginAccess();
      (*v149)(v154, &v130[v134], v155);
      os_unfair_lock_unlock(*(*(v130 + 2) + 16));

      a2 = v156;
      sub_1B6AB9020();
      v164 = sub_1B69B6F90;
      v165 = v27;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      v162 = sub_1B698E534;
      v163 = &block_descriptor_16;
      _Block_copy(aBlock);
      v135 = sub_1B6AB90E0();
      v136 = *(v135 + 48);
      v137 = *(v135 + 52);
      swift_allocObject();

      v35 = sub_1B6AB90D0();

      v138 = *(v128 + OBJC_IVAR___AAAccessQueue_queue);
      a9 = v153;
      sub_1B6AB9940();

      a10 = v151;
      v106 = v157;
      if (v152 == a1)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_25:
    swift_once();
  }

LABEL_23:

  sub_1B698C78C(a10, type metadata accessor for SummaryEventConfiguration);
  sub_1B698C78C(v145, type metadata accessor for DiagnosticsConsentProvider);
  __swift_destroy_boxed_opaque_existential_1(v167);
  sub_1B698C78C(v106, type metadata accessor for SummaryEventConfiguration);
  sub_1B698C78C(v144, type metadata accessor for DiagnosticsConsentProvider);
  __swift_destroy_boxed_opaque_existential_1(&v166);
  return v159;
}

id sub_1B6AA8300(void *a1, void *a2, uint64_t a3)
{
  v144 = a3;
  v140 = a2;
  v4 = type metadata accessor for SummaryEventDatabaseManager.StorageOptions(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4 - 8);
  v136 = &v133 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v139 = &v133 - v8;
  v137 = type metadata accessor for SummaryEventConfiguration(0);
  v9 = *(*(v137 - 1) + 64);
  v10 = MEMORY[0x1EEE9AC00](v137);
  v135 = &v133 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v147 = &v133 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v145 = &v133 - v14;
  v15 = type metadata accessor for DiagnosticsConsentProvider(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](v15 - 8);
  v143 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v146 = &v133 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v133 - v21;
  v23 = sub_1B6AB9090();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v133 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v133 - v29;
  v31 = type metadata accessor for AccessQueue();
  v32 = objc_allocWithZone(v31);
  *&v32[OBJC_IVAR___AAAccessQueue_queue] = a1;
  v141 = a1;
  sub_1B6AB9050();
  v33 = OBJC_IVAR___AAAccessQueue__qos;
  swift_beginAccess();
  (*(v24 + 16))(v28, v30, v23);
  sub_1B698E4D0(0, qword_1EDBCB0E0, MEMORY[0x1E69E7FB0], type metadata accessor for Atomic);
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  v37 = swift_allocObject();
  v138 = type metadata accessor for UnfairLock();
  v38 = swift_allocObject();
  v39 = swift_slowAlloc();
  *(v38 + 16) = v39;
  *v39 = 0;
  *(v38 + 24) = 0x10000;
  (*(v24 + 8))(v30, v23);
  *(v37 + 2) = v38;
  (*(v24 + 32))(&v37[*(*v37 + 96)], v28, v23);
  *&v32[v33] = v37;
  swift_endAccess();
  v155.receiver = v32;
  v155.super_class = v31;
  v40 = objc_msgSendSuper2(&v155, sel_init);
  type metadata accessor for SessionGroupManager();
  v41 = swift_allocObject();
  v42 = v40;
  v43 = MEMORY[0x1E69E7CC0];
  v41[3] = sub_1B6987D80(MEMORY[0x1E69E7CC0]);
  v41[4] = sub_1B6987D80(v43);
  v41[2] = v42;
  v44 = &v144[OBJC_IVAR___AADiagnosticsConsentProvider_provider];
  v144 = v22;
  sub_1B69805B0(v44, v22, type metadata accessor for DiagnosticsConsentProvider);
  v45 = dispatch_group_create();
  type metadata accessor for FlushProcessor();
  v46 = swift_allocObject();
  swift_weakInit();
  v46[4] = 13;
  v46[5] = 0x404E000000000000;
  v46[6] = 0;
  v46[3] = dispatch_group_create();
  if (qword_1EDBCAC70 != -1)
  {
    swift_once();
  }

  v47 = __swift_project_value_buffer(v137, qword_1EDBCA728);
  v48 = v145;
  sub_1B69805B0(v47, v145, type metadata accessor for SummaryEventConfiguration);
  v49 = type metadata accessor for SessionManager(0);
  v50 = *(v49 + 48);
  v51 = *(v49 + 52);
  v52 = swift_allocObject();
  v153 = &type metadata for TimestampJitter;
  v154 = &protocol witness table for TimestampJitter;
  v151[0] = 0;
  v151[1] = 0;
  v152 = 1;
  v52[5] = 0;
  swift_unknownObjectWeakInit();
  type metadata accessor for SessionManager.SessionState(0);
  swift_storeEnumTagMultiPayload();
  *(v52 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_dataStacks) = MEMORY[0x1E69E7CC8];
  *(v52 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_observers) = v43;
  v53 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_sessionDataRegistrationTasks;
  v54 = v42;
  v55 = v140;
  *(v52 + v53) = sub_1B6987EC8(v43);
  v56 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pinnedVersionTokenByKey;
  *(v52 + v56) = sub_1B69F76A4(v43);
  v57 = OBJC_IVAR____TtC12AppAnalytics14SessionManager_pendingSessionDataByKey;
  *(v52 + v57) = sub_1B69F77E8(v43);
  *(v52 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_lockedKind) = xmmword_1B6ABF700;
  v52[6] = v54;
  v52[7] = v45;
  v52[8] = v41;
  type metadata accessor for ProcessorManager();
  v58 = swift_allocObject();
  v58[3] = 0;
  swift_unknownObjectWeakInit();
  v58[5] = v45;
  v58[6] = v43;
  v58[4] = v54;
  v52[3] = v58;
  sub_1B69805B0(v144, v146, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B69805B0(v48, v147, type metadata accessor for SummaryEventConfiguration);
  v59 = qword_1EDBCB498;
  v60 = v54;
  v61 = v45;
  v62 = v60;
  v63 = v61;
  v64 = v62;
  v65 = v55;
  v66 = v63;
  v140 = v41;

  if (v59 != -1)
  {
    swift_once();
  }

  v137 = qword_1EDBCB4A0;
  type metadata accessor for EventMirrorStore();
  v67 = swift_allocObject();
  v68 = MEMORY[0x1E69E7CC8];
  *(v67 + 16) = MEMORY[0x1E69E7CC8];
  sub_1B69805B0(v146, v143, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6987BC4();
  v70 = v69;
  v71 = *(v69 + 48);
  v72 = sub_1B6AB8BB0();
  v73 = v139;
  (*(*(v72 - 8) + 56))(v139, 1, 1, v72);
  *&v73[v71] = 0;
  (*(*(v70 - 8) + 56))(v73, 0, 1, v70);
  if (*(v147 + 8))
  {
    v74 = type metadata accessor for DisabledSummaryEventManager();
    v75 = swift_allocObject();
    v76 = &off_1F2E7D3E0;
  }

  else
  {
    v134 = v67;
    v77 = v46;
    v78 = v66;
    v79 = v64;
    v80 = v65;
    v81 = v135;
    sub_1B69805B0(v147, v135, type metadata accessor for SummaryEventConfiguration);
    v82 = v136;
    sub_1B69805B0(v73, v136, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
    v74 = type metadata accessor for SummaryEventManager();
    v83 = *(v74 + 48);
    v84 = *(v74 + 52);
    v85 = swift_allocObject();
    v86 = v81;
    v65 = v80;
    v64 = v79;
    v66 = v78;
    v46 = v77;
    v67 = v134;
    v75 = sub_1B698A71C(v86, v82, v85);
    v76 = &off_1F2E7C028;
  }

  v150[3] = v74;
  v150[4] = v76;
  v150[0] = v75;
  sub_1B698C78C(v73, type metadata accessor for SummaryEventDatabaseManager.StorageOptions);
  v87 = type metadata accessor for Tracker(0);
  v88 = *(v87 + 48);
  v89 = *(v87 + 52);
  v90 = swift_allocObject();
  *(v90 + 80) = 0;
  *(v90 + 56) = 0;
  *(v90 + 64) = 0;
  swift_unknownObjectWeakInit();
  *(v90 + 112) = v68;
  *(v90 + 120) = v68;
  *(v90 + 128) = v68;
  *(v90 + 136) = v68;
  *(v90 + 144) = v68;
  *(v90 + 160) = v68;
  v91 = MEMORY[0x1E69E7CC0];
  *(v90 + 168) = MEMORY[0x1E69E7CC0];
  *(v90 + 176) = v91;
  *(v90 + 192) = v91;
  *(v90 + 200) = 0;
  v92 = OBJC_IVAR____TtC12AppAnalytics7Tracker_actionsLock;
  v93 = swift_allocObject();
  v94 = swift_slowAlloc();
  *(v93 + 16) = v94;
  *v94 = 0;
  *(v93 + 24) = 0x10000;
  *(v90 + v92) = v93;
  *(v90 + 16) = xmmword_1B6ABF710;
  *(v90 + 201) = 0;
  *(v90 + 96) = v66;
  *(v90 + 104) = v67;
  *(v90 + 152) = 0;
  *(v90 + 80) = 0;
  *(v90 + 88) = v64;
  swift_unknownObjectWeakAssign();
  *(v90 + 184) = v91;
  *(v90 + 40) = 0;
  *(v90 + 48) = 0;
  v95 = *(v90 + 64);
  *(v90 + 56) = 0;
  *(v90 + 64) = 0;
  v96 = v64;
  v97 = v66;

  *(v90 + 208) = v65;
  *(v90 + 216) = &protocol witness table for BridgedPrivacyValidationProvider;
  v98 = v143;
  sub_1B69805B0(v143, v90 + OBJC_IVAR____TtC12AppAnalytics7Tracker_diagnosticsConsentProvider, type metadata accessor for DiagnosticsConsentProvider);
  sub_1B6982544(v150, v90 + OBJC_IVAR____TtC12AppAnalytics7Tracker_summaryEventManager);
  v99 = v137;
  *(v90 + 32) = v137;
  v100 = v65;
  v101 = v99;
  sub_1B6989974();
  Strong = swift_unknownObjectWeakLoadStrong();
  v139 = v97;
  v138 = v96;
  if (Strong)
  {
    swift_unknownObjectRelease();
    v103 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v103);

    sub_1B698C78C(v98, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B698C78C(v147, type metadata accessor for SummaryEventConfiguration);
    sub_1B698C78C(v146, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v150);
  }

  else
  {

    sub_1B698C78C(v98, type metadata accessor for DiagnosticsConsentProvider);
    sub_1B698C78C(v147, type metadata accessor for SummaryEventConfiguration);
    sub_1B698C78C(v146, type metadata accessor for DiagnosticsConsentProvider);
    __swift_destroy_boxed_opaque_existential_1(v150);
  }

  v104 = v144;
  v52[2] = v90;
  *(v52 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_options) = 0;
  *(v52 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_flushProcessor) = v46;
  sub_1B6982544(v151, v52 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timestampConfigurationProvider);
  *(v52 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_timeDurationGranularity) = 0;
  v105 = OBJC_IVAR___AAPrivacyValidationProvider_bridgedPrivacyValidation;
  swift_beginAccess();
  v106 = *&v100[v105];
  if (v106[OBJC_IVAR___AAPrivacyValidation_enabled] == 1)
  {
    v107 = *&v106[OBJC_IVAR___AAPrivacyValidation_denylistDescriptors];

    v108 = v106;
    sub_1B6A930EC(v107);
    v111 = sub_1B6A94B10(v109);

    type metadata accessor for PrivacyValidator();
    v110 = swift_allocObject();
    *(v110 + 16) = 1;
  }

  else
  {
    type metadata accessor for PrivacyValidator();
    v110 = swift_allocObject();
    *(v110 + 16) = 0;

    v111 = MEMORY[0x1E69E7CD0];
  }

  v112 = v138;
  type metadata accessor for DenylistDescriptorMatcher();
  v113 = swift_allocObject();
  *(v113 + 16) = v111;
  *(v110 + 24) = v113;
  *(v52 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_privacyValidator) = v110;
  *(v52 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_trackingConsent) = v101;
  *(v52 + OBJC_IVAR____TtC12AppAnalytics14SessionManager_userDataManager) = 0;
  swift_beginAccess();
  swift_weakAssign();
  *(v52[2] + 80) = &off_1F2E76000;
  swift_unknownObjectWeakAssign();
  v114 = v101;

  sub_1B6989974();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_unknownObjectRelease();
    v115 = swift_allocObject();
    swift_weakInit();

    Tracker.onSessionChange(block:)(sub_1B6A0BE30, v115);
  }

  *(v52[3] + 24) = &off_1F2E76070;
  swift_unknownObjectWeakAssign();
  v116 = v52[3];
  v118 = *(v116 + 32);
  v117 = *(v116 + 40);
  v119 = swift_allocObject();
  v119[2] = v116;
  v119[3] = v46;
  v119[4] = &protocol witness table for FlushProcessor;
  swift_retain_n();

  sub_1B69877A4(v118, sub_1B69916A8, v119);

  sub_1B698C78C(v145, type metadata accessor for SummaryEventConfiguration);
  sub_1B698C78C(v104, type metadata accessor for DiagnosticsConsentProvider);
  __swift_destroy_boxed_opaque_existential_1(v151);
  v120 = v142;
  *&v142[OBJC_IVAR___AASessionManager_sessionManager] = v52;
  v121 = v52[2];

  v123 = sub_1B6A3FD68(v122);
  *&v120[OBJC_IVAR___AASessionManager_tracker] = v123;
  v124 = v52[3];
  v125 = type metadata accessor for BridgedProcessorManager();
  v126 = objc_allocWithZone(v125);
  *&v126[OBJC_IVAR___AAProcessorManager_processorManager] = v124;
  v149.receiver = v126;
  v149.super_class = v125;
  v127 = v123;

  v128 = objc_msgSendSuper2(&v149, sel_init);
  *&v120[OBJC_IVAR___AASessionManager_processorManager] = v128;
  v129 = type metadata accessor for BridgedSessionManager();
  v148.receiver = v120;
  v148.super_class = v129;
  v130 = v128;
  v131 = objc_msgSendSuper2(&v148, sel_init);

  return v131;
}

id sub_1B6AA92C0(void *a1, uint64_t a2)
{
  v5 = type metadata accessor for SummaryEventConfiguration(0);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DiagnosticsConsentProvider(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDBCB568 != -1)
  {
    swift_once();
  }

  v13 = qword_1EDBCB570;
  type metadata accessor for SessionGroupManager();
  v14 = swift_allocObject();
  v15 = v13;
  v16 = MEMORY[0x1E69E7CC0];
  v14[3] = sub_1B6987D80(MEMORY[0x1E69E7CC0]);
  v14[4] = sub_1B6987D80(v16);
  v14[2] = v15;
  sub_1B69805B0(a2 + OBJC_IVAR___AADiagnosticsConsentProvider_provider, v12, type metadata accessor for DiagnosticsConsentProvider);
  v17 = dispatch_group_create();
  type metadata accessor for FlushProcessor();
  v18 = swift_allocObject();
  swift_weakInit();
  v18[4] = 13;
  v18[5] = 0x404E000000000000;
  v18[6] = 0;
  v18[3] = dispatch_group_create();
  if (qword_1EDBCAC70 != -1)
  {
    swift_once();
  }

  v19 = __swift_project_value_buffer(v5, qword_1EDBCA728);
  sub_1B69805B0(v19, v8, type metadata accessor for SummaryEventConfiguration);
  v20 = a1;
  v21 = sub_1B6AA70FC(v17, v14, 0, v18, 0, 0, 1, v20, v12, v8);

  *&v2[OBJC_IVAR___AASessionManager_sessionManager] = v21;
  v22 = v21[2];

  v24 = sub_1B6A3FD68(v23);
  *&v2[OBJC_IVAR___AASessionManager_tracker] = v24;
  v25 = v21[3];
  v26 = type metadata accessor for BridgedProcessorManager();
  v27 = objc_allocWithZone(v26);
  *&v27[OBJC_IVAR___AAProcessorManager_processorManager] = v25;
  v35.receiver = v27;
  v35.super_class = v26;
  v28 = v24;

  v29 = objc_msgSendSuper2(&v35, sel_init);
  *&v2[OBJC_IVAR___AASessionManager_processorManager] = v29;
  v30 = type metadata accessor for BridgedSessionManager();
  v34.receiver = v2;
  v34.super_class = v30;
  v31 = v29;
  v32 = objc_msgSendSuper2(&v34, sel_init);

  return v32;
}

uint64_t sub_1B6AA95F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 88);
  v5 = *(v0 + 96);
  v6 = *(v0 + 40);
  v8 = *(v0 + 24);
  v9[0] = v6;
  *(v9 + 10) = *(v0 + 50);
  return sub_1B6AA1608(&v8, v2, v3, v4, v5);
}

void sub_1B6AA9654()
{
  if (!qword_1EB95C748)
  {
    sub_1B6AA9A34(255, &qword_1EDBC9970, sub_1B69E85A4);
    sub_1B6AA992C(qword_1EDBC9978, &qword_1EDBC9970, sub_1B69E85A4);
    v0 = type metadata accessor for PushEvent();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95C748);
    }
  }
}

uint64_t objectdestroy_21Tm()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B6AA9804(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(void))
{
  sub_1B6AA9A34(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

void sub_1B6AA9874()
{
  if (!qword_1EDBC98D8)
  {
    sub_1B6AA9A34(255, &qword_1EDBC9970, sub_1B69E85A4);
    sub_1B6AA992C(qword_1EDBC9978, &qword_1EDBC9970, sub_1B69E85A4);
    v0 = type metadata accessor for DataEventStack();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDBC98D8);
    }
  }
}

uint64_t sub_1B6AA992C(unint64_t *a1, unint64_t *a2, void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1B6AA9A34(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1B6AA997C()
{
  if (!qword_1EB95C750)
  {
    sub_1B6AA9A34(255, &qword_1EB95AED0, sub_1B69E8B54);
    sub_1B6AA992C(&qword_1EB95AEE0, &qword_1EB95AED0, sub_1B69E8B54);
    v0 = type metadata accessor for DataEventStack();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95C750);
    }
  }
}

void sub_1B6AA9A34(uint64_t a1, unint64_t *a2, void (*a3)(void))
{
  if (!*a2)
  {
    a3();
    v4 = type metadata accessor for SessionData();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1B6AA9A94()
{
  if (!qword_1EB95C758)
  {
    sub_1B6AA9A34(255, &qword_1EB95AF00, sub_1B69E8D48);
    sub_1B6AA992C(&qword_1EB95AF10, &qword_1EB95AF00, sub_1B69E8D48);
    v0 = type metadata accessor for DataEventStack();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95C758);
    }
  }
}

uint64_t sub_1B6AA9B74()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1B6AA9BB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RotationMode();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LegacyStoredUserIDComponents();
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v8) == 1)
  {
    sub_1B6AAAC3C(a1, sub_1B6AAAB7C);
    v13 = type metadata accessor for StoredUserIDComponents();
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }

  else
  {
    sub_1B6AAABD4(a1, v11, type metadata accessor for LegacyStoredUserIDComponents);
    sub_1B698114C();
    v17 = *(v16 + 48);
    v26 = *(v16 + 64);
    v18 = sub_1B6AB8E40();
    (*(*(v18 - 8) + 16))(v7, v11, v18);
    v19 = v8[6];
    v20 = sub_1B6AB8DB0();
    v21 = *(*(v20 - 8) + 16);
    v21(&v7[v17], &v11[v19], v20);
    v21(&v7[v26], &v11[v8[7]], v20);
    swift_storeEnumTagMultiPayload();
    v22 = *&v11[v8[5]];
    sub_1B6AAAC3C(v11, type metadata accessor for LegacyStoredUserIDComponents);
    sub_1B6AAABD4(v7, a2, type metadata accessor for RotationMode);
    v23 = type metadata accessor for StoredUserIDComponents();
    v24 = (a2 + *(v23 + 20));
    *v24 = v22;
    v24[1] = 0;
    return (*(*(v23 - 8) + 56))(a2, 0, 1, v23);
  }
}

uint64_t StoredUserIDComponents.description.getter()
{
  sub_1B6AB9CA0();
  MEMORY[0x1B8C97BE0](0xD00000000000001DLL, 0x80000001B6ACEE10);
  type metadata accessor for RotationMode();
  sub_1B6AB9DF0();
  MEMORY[0x1B8C97BE0](0xD000000000000012, 0x80000001B6ACEE30);
  v2 = *(v0 + *(type metadata accessor for StoredUserIDComponents() + 20));
  sub_1B6AB9DF0();
  MEMORY[0x1B8C97BE0](41, 0xE100000000000000);
  return 0;
}

uint64_t type metadata accessor for StoredUserIDComponents()
{
  result = qword_1EB95C798;
  if (!qword_1EB95C798)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

__n128 StoredUserIDComponents.rotationPeriod.getter@<Q0>(__n128 *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for StoredUserIDComponents() + 20));
  *a1 = result;
  return result;
}

BOOL static StoredUserIDComponents.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s12AppAnalytics12RotationModeO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for StoredUserIDComponents() + 20);
  v6 = *(a1 + v4);
  v5 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v9 = *v7;
  v8 = v7[1];
  return v6 == v9 && v5 == v8;
}

uint64_t sub_1B6AAA0F4()
{
  if (*v0)
  {
    result = 0x6E6F697461746F72;
  }

  else
  {
    result = 1701080941;
  }

  *v0;
  return result;
}

uint64_t sub_1B6AAA134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701080941 && a2 == 0xE400000000000000;
  if (v5 || (sub_1B6ABA0F0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xEE00646F69726550)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B6ABA0F0();

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

uint64_t sub_1B6AAA218(uint64_t a1)
{
  v2 = sub_1B6AAA824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B6AAA254(uint64_t a1)
{
  v2 = sub_1B6AAA824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StoredUserIDComponents.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1B6AAA8CC(0, &qword_1EB95C760, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v13[-v9];
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6AAA824();
  sub_1B6ABA2D0();
  LOBYTE(v14) = 0;
  type metadata accessor for RotationMode();
  sub_1B6AAA930(&qword_1EB95C770);
  sub_1B6ABA040();
  if (!v2)
  {
    v14 = *(v3 + *(type metadata accessor for StoredUserIDComponents() + 20));
    v13[15] = 1;
    sub_1B6AAA878();
    sub_1B6ABA040();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t StoredUserIDComponents.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for RotationMode();
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6AAA8CC(0, &qword_1EB95C780, MEMORY[0x1E69E6F48]);
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = type metadata accessor for StoredUserIDComponents();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B6AAA824();
  sub_1B6ABA2A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v21;
  LOBYTE(v24) = 0;
  sub_1B6AAA930(&qword_1EB95C788);
  v18 = v22;
  sub_1B6AB9F90();
  sub_1B6AAABD4(v23, v16, type metadata accessor for RotationMode);
  v25 = 1;
  sub_1B6AAA974();
  sub_1B6AB9F90();
  (*(v17 + 8))(v10, v18);
  *(v16 + *(v11 + 20)) = v24;
  sub_1B6A91A18(v16, v20, type metadata accessor for StoredUserIDComponents);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1B6AAAC3C(v16, type metadata accessor for StoredUserIDComponents);
}

BOOL sub_1B6AAA7C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s12AppAnalytics12RotationModeO2eeoiySbAC_ACtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v8 = *(a1 + v6);
  v7 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v11 = *v9;
  v10 = v9[1];
  return v8 == v11 && v7 == v10;
}

unint64_t sub_1B6AAA824()
{
  result = qword_1EB95C768;
  if (!qword_1EB95C768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C768);
  }

  return result;
}

unint64_t sub_1B6AAA878()
{
  result = qword_1EB95C778;
  if (!qword_1EB95C778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C778);
  }

  return result;
}

void sub_1B6AAA8CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B6AAA824();
    v7 = a3(a1, &type metadata for StoredUserIDComponents.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1B6AAA930(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for RotationMode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B6AAA974()
{
  result = qword_1EB95C790;
  if (!qword_1EB95C790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C790);
  }

  return result;
}

uint64_t sub_1B6AAA9F0()
{
  result = type metadata accessor for RotationMode();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B6AAAA78()
{
  result = qword_1EB95C7A8;
  if (!qword_1EB95C7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C7A8);
  }

  return result;
}

unint64_t sub_1B6AAAAD0()
{
  result = qword_1EB95C7B0;
  if (!qword_1EB95C7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C7B0);
  }

  return result;
}

unint64_t sub_1B6AAAB28()
{
  result = qword_1EB95C7B8;
  if (!qword_1EB95C7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95C7B8);
  }

  return result;
}

void sub_1B6AAAB7C()
{
  if (!qword_1EB95B250)
  {
    type metadata accessor for LegacyStoredUserIDComponents();
    v0 = sub_1B6AB9B30();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95B250);
    }
  }
}

uint64_t sub_1B6AAABD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B6AAAC3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id BridgedUserIDResetFlag.__allocating_init(suiteName:userDataIDsResetKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___AAUserIDResetFlag_userIDResetFlag];
  *v10 = a1;
  *(v10 + 1) = a2;
  *(v10 + 2) = a3;
  *(v10 + 3) = a4;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}