void *sub_1884881D0(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = (*(a5 + 48) + 16 * a2);
    v6 = *v5;
    v7 = v5[1];
    *result = *(*(a5 + 56) + 8 * a2);

    return sub_1883F7EE0();
  }

LABEL_8:
  __break(1u);
  return result;
}

unint64_t sub_188488260()
{
  result = qword_1EA90DB50;
  if (!qword_1EA90DB50)
  {
    sub_18844E798(&qword_1EA90D8E0, &qword_1886F8A18);
    sub_188488470(&qword_1EA90D8E8, &unk_1EA90DB60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DB50);
  }

  return result;
}

unint64_t sub_188488310()
{
  result = qword_1EA90D8F0;
  if (!qword_1EA90D8F0)
  {
    sub_18844E798(&unk_1EA90DB20, &qword_1886F8A28);
    sub_188488470(&unk_1EA90DB30, &unk_1EA90D8F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D8F0);
  }

  return result;
}

unint64_t sub_1884883C0()
{
  result = qword_1EA90DB00;
  if (!qword_1EA90DB00)
  {
    sub_18844E798(&qword_1EA90D900, &qword_1886F8A38);
    sub_188488470(&qword_1EA90D908, &unk_1EA90DB10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DB00);
  }

  return result;
}

uint64_t sub_188488470(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    v4 = sub_1884056BC(0, a2);
    sub_18844E798(v4, v5);
    sub_1883F9598();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1884884B0(uint64_t a1)
{
  result = sub_1884884D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1884884D8()
{
  result = qword_1EA90D910;
  if (!qword_1EA90D910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D910);
  }

  return result;
}

unint64_t sub_18848852C()
{
  result = qword_1EA90D918;
  if (!qword_1EA90D918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D918);
  }

  return result;
}

unint64_t sub_188488580(uint64_t a1)
{
  result = sub_1884885A8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1884885A8()
{
  result = qword_1EA90D920;
  if (!qword_1EA90D920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D920);
  }

  return result;
}

unint64_t sub_1884885FC()
{
  result = qword_1EA90D928;
  if (!qword_1EA90D928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D928);
  }

  return result;
}

unint64_t sub_188488650(uint64_t a1)
{
  result = sub_188488678();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_188488678()
{
  result = qword_1EA90D930;
  if (!qword_1EA90D930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D930);
  }

  return result;
}

unint64_t sub_1884886CC()
{
  result = qword_1EA90D938;
  if (!qword_1EA90D938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90D938);
  }

  return result;
}

unint64_t sub_18848875C()
{
  result = qword_1EA90D940[0];
  if (!qword_1EA90D940[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA90D940);
  }

  return result;
}

__n128 sub_1884887EC(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1884887F8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188488838(uint64_t result, int a2, int a3)
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

uint64_t sub_188488878()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1884888B4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1884888FC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_188488910(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188488950(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_188488A18(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_188488A64(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    sub_1883F9598();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_188488AA8()
{
  result = qword_1EA90DAE0;
  if (!qword_1EA90DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DAE0);
  }

  return result;
}

unint64_t sub_188488AFC()
{
  result = qword_1EA90DA50;
  if (!qword_1EA90DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DA50);
  }

  return result;
}

unint64_t sub_188488B50()
{
  result = qword_1EA90DA58;
  if (!qword_1EA90DA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DA58);
  }

  return result;
}

uint64_t sub_188488BA4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  sub_188405D30();

  return MEMORY[0x1EEE6BDD0](v3, v4, v5);
}

uint64_t sub_188488C14@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_1883FEE54();
  result = v3(v2);
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t sub_188488D1C()
{
}

uint64_t sub_188488D70()
{
  sub_1883FE2C8();
  v4 = _typeName(_:qualified:)();
  MEMORY[0x18CFD5140](v4);

  MEMORY[0x18CFD5140](2629690, 0xE300000000000000);

  MEMORY[0x18CFD5140](v3, v2);

  MEMORY[0x18CFD5140](2112032, 0xE300000000000000);

  MEMORY[0x18CFD5140](v1, v0);

  MEMORY[0x18CFD5140](15913, 0xE200000000000000);
  return 60;
}

uint64_t sub_188488E50@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___CKRequiredFeatureSet__wrapped);
  v3 = *(v1 + OBJC_IVAR___CKRequiredFeatureSet__wrapped + 8);
  v4 = *(v1 + OBJC_IVAR___CKRequiredFeatureSet__wrapped + 16);
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
}

char *sub_188488EA8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4 = &v3[OBJC_IVAR___CKRequiredFeatureSet__wrapped];
  v5 = *&v3[OBJC_IVAR___CKRequiredFeatureSet__wrapped];
  v6 = *&v3[OBJC_IVAR___CKRequiredFeatureSet__wrapped + 8];
  v7 = *&v3[OBJC_IVAR___CKRequiredFeatureSet__wrapped + 16];
  *v4 = *a1;
  *(v4 + 2) = v2;

  return v3;
}

void sub_188488F30(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1884056BC(a1, a2);
  v9 = MEMORY[0x18CFD5010](v8);
  v10 = MEMORY[0x18CFD5010](1701667182, 0xE400000000000000);
  [a1 encodeObject:v9 forKey:v10];

  v11 = MEMORY[0x18CFD5010](a4, a5);
  v12 = MEMORY[0x18CFD5010](0x65756C6176, 0xE500000000000000);
  [a1 encodeObject:v11 forKey:v12];
}

id sub_1884890A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = MEMORY[0x18CFD5010](v3);

  return v4;
}

uint64_t sub_18848911C(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&qword_1EA90DD10, &qword_1886F8770);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_188489340(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = a1[3];
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v8 = &v7[*a2];
  v9 = *v8;
  v10 = v8[1];
  v11 = v8[2];
  v12 = v8[3];
  *v8 = v3;
  v8[1] = v4;
  v8[2] = v5;
  v8[3] = v6;
  v13 = v7;
  sub_188489F58(v9, v10);

  return v13;
}

uint64_t sub_1884893F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return a5(v6, v8, v9, v10);
}

uint64_t sub_1884894CC(uint64_t a1, void (*a2)(uint64_t), uint64_t *a3)
{
  v6 = sub_18848911C(a1, v67);
  if (!v68)
  {
    sub_18840E89C(v67, &qword_1EA90DD10);
    goto LABEL_20;
  }

  a2(v6);
  if ((sub_188404218() & 1) == 0)
  {
LABEL_20:
    v23 = 0;
    return v23 & 1;
  }

  v7 = *a3;
  v8 = (v3 + *a3);
  v9 = v8[1];
  v11 = v8[2];
  v10 = v8[3];
  v12 = &v66[v7];
  v14 = *v12;
  v13 = v12[1];
  v16 = v12[2];
  v15 = v12[3];
  if (!v9)
  {
    v32 = *v8;
    sub_1883FF114();
    sub_188489F14(v33, v34);
    v35 = sub_1883F91D0();
    sub_188489F14(v35, v36);

    if (!v13)
    {
      sub_1883FF114();
      sub_188489F58(v37, v38);
      v23 = 1;
      return v23 & 1;
    }

    goto LABEL_19;
  }

  if (!v13)
  {
    v39 = sub_1883F9C38();
    sub_188489F14(v39, v40);
    sub_188489F14(v14, 0);
    v41 = sub_1883F9C38();
    sub_188489F14(v41, v42);

LABEL_19:
    v43 = sub_1883F9C38();
    sub_188489F58(v43, v44);
    v45 = sub_1883F91D0();
    sub_188489F58(v45, v46);
    goto LABEL_20;
  }

  v17 = *v8 == v14 && v9 == v13;
  if (v17 || (v18 = *v8, v19 = v8[1], v20 = *v12, v21 = v12[1], (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    if (v11 == v16 && v10 == v15)
    {
      v48 = sub_1883F9C38();
      sub_188489F14(v48, v49);
      sub_1883FD9C4();
      sub_1883FF114();
      sub_188489F14(v50, v51);
      v52 = sub_1883F9C38();
      sub_188489F14(v52, v53);

      sub_1883FD9C4();
      sub_1883FF114();
      sub_188489F58(v54, v55);
      v23 = 1;
    }

    else
    {
      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v24 = sub_1883F9C38();
      sub_188489F14(v24, v25);
      v26 = sub_1883F91D0();
      sub_188489F14(v26, v27);
      v28 = sub_1883F9C38();
      sub_188489F14(v28, v29);

      v30 = sub_1883F91D0();
      sub_188489F58(v30, v31);
    }
  }

  else
  {
    v56 = sub_1883F9C38();
    sub_188489F14(v56, v57);
    v58 = sub_1883F91D0();
    sub_188489F14(v58, v59);
    v60 = sub_1883F9C38();
    sub_188489F14(v60, v61);

    v62 = sub_1883F91D0();
    sub_188489F58(v62, v63);
    v23 = 0;
  }

  v64 = sub_1883F9C38();
  sub_188489F58(v64, v65);
  return v23 & 1;
}

uint64_t sub_1884897B0(void *a1)
{
  sub_188404F8C(a1);
  if (v3[1])
  {
    v5 = v3[2];
    v4 = v3[3];
    v6 = *v3;
    v7 = *v2;
    v23.receiver = v1;
    v23.super_class = v7;

    v8 = objc_msgSendSuper2(&v23, sel_description);
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v25 = v9;
    v26 = v11;
    MEMORY[0x18CFD5140](8250, 0xE200000000000000);
    sub_18840AD44();
    v12 = sub_188488D70();
    v14 = v13;
    v15 = sub_18840AD44();
    sub_188489F58(v15, v16);
    MEMORY[0x18CFD5140](v12, v14);
  }

  else
  {
    v17 = *v2;
    v24.receiver = v1;
    v24.super_class = v17;
    v18 = objc_msgSendSuper2(&v24, sel_description);
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v21 = v20;

    v25 = v19;
    v26 = v21;
    MEMORY[0x18CFD5140](0x6C696E203ALL, 0xE500000000000000);
  }

  return v25;
}

uint64_t sub_188489904(uint64_t result, void *a2)
{
  v3 = (v2 + *a2);
  v4 = v3[1];
  if (v4)
  {
    v5 = result;
    v7 = v3[2];
    v6 = v3[3];
    v8 = *v3;
    v9 = v3[1];

    sub_188488F30(v5, v8, v4, v7, v6);
    return sub_188489F58(v8, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

char *sub_188489A08(void *a1, void *a2, objc_class **a3)
{
  v5 = v3;
  v7 = &v5[*a2];
  *v7 = 0u;
  *(v7 + 1) = 0u;
  v8 = *a3;
  v28.receiver = v5;
  v28.super_class = v8;
  v9 = objc_msgSendSuper2(&v28, sel_init);
  sub_1883F4C5C(0, &qword_1EA90DAB0, 0x1E696AEC0);
  v10 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v10)
  {
    v11 = v10;
    v12 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v12)
    {
      v13 = v12;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      sub_188440388();
      v15 = v14;
      v17 = v16;

      sub_188440388();
      v19 = v18;
      v21 = v20;

      goto LABEL_6;
    }
  }

  v17 = 0;
  v15 = 0;
  v19 = 0;
  v21 = 0;
LABEL_6:
  v22 = &v9[*a2];
  v23 = *v22;
  v24 = v22[1];
  v25 = v22[2];
  v26 = v22[3];
  *v22 = v15;
  v22[1] = v17;
  v22[2] = v19;
  v22[3] = v21;
  sub_188489F58(v23, v24);
  if (!v22[1])
  {

    return 0;
  }

  return v9;
}

uint64_t sub_188489BCC(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = v3[2];
  v5 = v3[3];
  return sub_188489F58(*v3, v3[1]);
}

id sub_188489BF4(void *a1)
{
  sub_188404F8C(a1);
  *v2 = 0u;
  v2[1] = 0u;
  v4 = *v3;
  v6.receiver = v1;
  v6.super_class = v4;
  return objc_msgSendSuper2(&v6, sel_init);
}

id _sSo13CKZoneFeatureC8CloudKitE4name5valueABSS_SStcfC_0()
{
  sub_1883FE2C8();
  v4 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v5 = MEMORY[0x18CFD5010](v3, v2);

  MEMORY[0x18CFD5010](v1, v0);
  sub_1884052A0();
  v6 = [v4 initWithName:v5 value:v1];

  return v6;
}

char *sub_188489D08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  sub_1883FE028();
  sub_1883FE028();
  sub_188440388();
  v7 = v6;
  v9 = v8;

  sub_188440388();
  v11 = v10;
  v13 = v12;

  swift_getObjectType();
  v16[0] = v7;
  v16[1] = v9;
  v16[2] = v11;
  v16[3] = v13;
  v14 = sub_188489340(v16, a5);
  swift_deallocPartialClassInstance();
  return v14;
}

void *sub_188489E50(void *a1)
{
  result = sub_188404F8C(a1);
  if (v2[1])
  {
    v3 = *v2;
    v4 = v2[1];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_188489EB4(void *a1)
{
  result = sub_188404F8C(a1);
  if (v2[1])
  {
    v3 = v2[2];
    v4 = v2[3];

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_188489F14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_188489F58(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_18848A018(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = sub_188404F8C(a1);
  v15 = *v6;
  v16 = v6[1];
  v8 = sub_1884056BC(v5, v7);
  v10 = sub_18844E6FC(v8, v9);
  a4(v10, v11, v12, v13);
  return Optional<A>.hashValue.getter();
}

id sub_18848A174()
{
  v1 = (v0 + OBJC_IVAR___CKRequiredFeatureSet__wrapped);
  v2 = MEMORY[0x1E69E7CC8];
  *v1 = MEMORY[0x1E69E7CC8];
  v1[1] = v2;
  v1[2] = v2;
  v4.super_class = CKRequiredFeatureSet;
  return objc_msgSendSuper2(&v4, sel_init);
}

void __swiftcall CKRequiredFeatureSet.init(zoneFeatures:recordFeatures:fieldFeatures:)(CKRequiredFeatureSet *__return_ptr retstr, Swift::OpaquePointer zoneFeatures, Swift::OpaquePointer recordFeatures, Swift::OpaquePointer fieldFeatures)
{
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for CKZoneFeature(v5);
  isa = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for CKRecordFeature(v7);
  v8 = Array._bridgeToObjectiveC()().super.isa;

  type metadata accessor for CKFieldFeature(v9);
  sub_1883FC750();
  sub_1884052A0();
  [v5 initWithZoneFeatures:isa recordFeatures:v8 fieldFeatures:recordFeatures._rawValue];
}

Swift::Void __swiftcall CKRequiredFeatureSet.encode(with:)(NSCoder with)
{
  v3 = [v1 zoneFeatures];
  v4 = NSStringFromSelector(sel_zoneFeatures);
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x18CFD5010](v5);
  }

  sub_188405D58();

  v6 = [v1 recordFeatures];
  v7 = NSStringFromSelector(sel_recordFeatures);
  if (!v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = MEMORY[0x18CFD5010](v8);
  }

  sub_188405D58();

  v9 = [v1 fieldFeatures];
  v10 = NSStringFromSelector(sel_fieldFeatures);
  if (!v10)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = MEMORY[0x18CFD5010](v11);

    v10 = v12;
  }

  v13 = v10;
  [(objc_class *)with.super.isa encodeObject:v9 forKey:?];
}

id _sSo13CKZoneFeatureC8CloudKitE5coderABSgSo7NSCoderC_tcfC_0(void *a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithCoder_];

  return v2;
}

id CKRequiredFeatureSet.init(coder:)(void *a1)
{
  v3 = (v1 + OBJC_IVAR___CKRequiredFeatureSet__wrapped);
  v4 = MEMORY[0x1E69E7CC8];
  *v3 = MEMORY[0x1E69E7CC8];
  v3[1] = v4;
  v3[2] = v4;
  v19.super_class = CKRequiredFeatureSet;
  v5 = objc_msgSendSuper2(&v19, sel_init);
  sub_18844E6FC(&unk_1EA90DB68, &qword_1886F9158);
  v6 = NSStringFromSelector(sel_zoneFeatures);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = NSCoder.decodeObject<A>(of:forKey:)();

  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = NSStringFromSelector(sel_recordFeatures);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1883FD9C4();
  v9 = NSCoder.decodeObject<A>(of:forKey:)();

  if (!v9)
  {

LABEL_7:
    return 0;
  }

  v10 = NSStringFromSelector(sel_fieldFeatures);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = NSCoder.decodeObject<A>(of:forKey:)();

  if (!v11)
  {

    goto LABEL_7;
  }

  v12 = [v7 features];
  type metadata accessor for CKZoneFeature(v12);
  v13 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v14 = [v9 features];
  type metadata accessor for CKRecordFeature(v14);
  v15 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v16 = [v11 features];
  type metadata accessor for CKFieldFeature(v16);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1883F2D94(v13, v15, v17);

  return v5;
}

char *CKRequiredFeatureSet.copy(with:)@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v4 = type metadata accessor for CKRequiredFeatureSet(a1);
  v5 = v2 + OBJC_IVAR___CKRequiredFeatureSet__wrapped;
  v6 = *(v2 + OBJC_IVAR___CKRequiredFeatureSet__wrapped);
  v7 = *(v2 + OBJC_IVAR___CKRequiredFeatureSet__wrapped + 8);
  v8 = *(v5 + 16);
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = v8;

  result = sub_188488EA8(v10);
  a2[3] = v4;
  *a2 = result;
  return result;
}

uint64_t CKRequiredFeatureSet.isEqual(_:)(uint64_t a1)
{
  v2 = sub_18848911C(a1, v15);
  if (!v16)
  {
    sub_18840E89C(v15, &qword_1EA90DD10);
    goto LABEL_8;
  }

  type metadata accessor for CKRequiredFeatureSet(v2);
  if ((sub_188404218() & 1) == 0)
  {
LABEL_8:
    v12 = 0;
    return v12 & 1;
  }

  v3 = *(v1 + OBJC_IVAR___CKRequiredFeatureSet__wrapped);
  v4 = *(v1 + OBJC_IVAR___CKRequiredFeatureSet__wrapped + 8);
  v5 = *(v1 + OBJC_IVAR___CKRequiredFeatureSet__wrapped + 16);
  v6 = *&v14[OBJC_IVAR___CKRequiredFeatureSet__wrapped];
  v7 = *&v14[OBJC_IVAR___CKRequiredFeatureSet__wrapped + 8];
  v8 = *&v14[OBJC_IVAR___CKRequiredFeatureSet__wrapped + 16];

  sub_1884831BC();
  if ((v9 & 1) == 0 || (sub_1884831BC(), (v10 & 1) == 0))
  {

    goto LABEL_8;
  }

  sub_1884831BC();
  v12 = v11;

  return v12 & 1;
}

uint64_t sub_18848B338(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(_OWORD *))
{
  if (a3)
  {
    v6 = a1;
    swift_unknownObjectRetain();
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v7 = a1;
  }

  v8 = a4(v10);

  sub_18840E89C(v10, &qword_1EA90DD10);
  return v8 & 1;
}

Swift::Int CKRequiredFeatureSet.hash.getter()
{
  v1 = v0 + OBJC_IVAR___CKRequiredFeatureSet__wrapped;
  v2 = *(v0 + OBJC_IVAR___CKRequiredFeatureSet__wrapped);
  v3 = *(v0 + OBJC_IVAR___CKRequiredFeatureSet__wrapped + 8);
  v4 = *(v1 + 16);
  Hasher.init(_seed:)();
  sub_188483B90(v6, v2);
  sub_188483A58(v6);
  sub_188483920(v6);
  return Hasher._finalize()();
}

id sub_18848B494(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a3();
  v7 = v6;

  v8 = MEMORY[0x18CFD5010](v5, v7);

  return v8;
}

uint64_t CKRequiredFeatureSet.description.getter()
{
  v1 = v0;
  v12.super_class = CKRequiredFeatureSet;
  v2 = objc_msgSendSuper2(&v12, sel_description);
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v13 = v3;
  v14 = v5;
  MEMORY[0x18CFD5140](8250, 0xE200000000000000);
  v10 = *(v1 + OBJC_IVAR___CKRequiredFeatureSet__wrapped);
  v11 = *(v1 + OBJC_IVAR___CKRequiredFeatureSet__wrapped + 16);
  CKRequiredFeatureSet.description.getter();
  MEMORY[0x18CFD5140](v6, v7, v8);

  return v13;
}

uint64_t sub_18848B5EC(void *a1)
{
  v1 = [a1 subscriptionID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

CKQuery __swiftcall CKQuery.init(recordType:predicate:)(Swift::String recordType, NSPredicate *predicate)
{
  object = recordType._object;
  countAndFlagsBits = recordType._countAndFlagsBits;
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = MEMORY[0x18CFD5010](countAndFlagsBits, object);

  v7 = [v5 initWithRecordType:v6 predicate:predicate];

  v11 = v7;
  result._recordType = v10;
  result._sortDescriptors = v9;
  result._predicate = v8;
  result.super.isa = v11;
  return result;
}

uint64_t CKQuery.recordType.getter()
{
  v1 = [v0 recordType];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void __swiftcall CKQuerySubscription.init(recordType:predicate:subscriptionID:options:)(CKQuerySubscription *__return_ptr retstr, Swift::String recordType, NSPredicate *predicate, Swift::String subscriptionID, CKQuerySubscriptionOptions options)
{
  object = subscriptionID._object;
  countAndFlagsBits = subscriptionID._countAndFlagsBits;
  v9 = recordType._object;
  v10 = recordType._countAndFlagsBits;
  v11 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v12 = MEMORY[0x18CFD5010](v10, v9);

  v13 = MEMORY[0x18CFD5010](countAndFlagsBits, object);

  [v11 initWithRecordType:v12 predicate:predicate subscriptionID:v13 options:options];
}

uint64_t CKQuerySubscription.recordType.getter()
{
  v1 = [v0 recordType];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void CKRecordKeyValueIterator.next()(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *v1 + 32;
  while (1)
  {
    v5 = v1[2];
    if (v5 >= v3)
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
      return;
    }

    if ((v5 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v5 >= *(v2 + 16))
    {
      goto LABEL_11;
    }

    v6 = (v4 + 16 * v5);
    v8 = *v6;
    v7 = v6[1];
    v9 = v1[1];
    swift_bridgeObjectRetain_n();
    v10 = MEMORY[0x18CFD5010](v8, v7);

    v11 = [v9 objectForKey_];

    v1[2] = v5 + 1;
    if (v11)
    {
      swift_getObjectType();
      CKRecordValue.CKToSwiftNativeValue()();
      swift_unknownObjectRelease();
      *a1 = v8;
      *(a1 + 8) = v7;
      sub_18843E080(&v13, a1 + 16);
      return;
    }
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void CKRecord.makeIterator()(uint64_t *a1@<X8>)
{
  a1[1] = v1;
  v3 = [v1 allKeys];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  *a1 = v4;
  a1[2] = 0;
}

void sub_18848B9E0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  CKRecord.makeIterator()(a1);
}

uint64_t sub_18848BAEC()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90C548 = result;
  unk_1EA90C550 = v1;
  return result;
}

uint64_t sub_18848BB3C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90C0F0 = result;
  *algn_1EA90C0F8 = v1;
  return result;
}

uint64_t sub_18848BBDC()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DBD8 = result;
  unk_1EA90DBE0 = v1;
  return result;
}

uint64_t sub_18848BC2C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DBE8 = result;
  unk_1EA90DBF0 = v1;
  return result;
}

void __swiftcall CKRecord.init(recordType:zoneID:)(CKRecord *__return_ptr retstr, Swift::String recordType, CKRecordZoneID *zoneID)
{
  object = recordType._object;
  countAndFlagsBits = recordType._countAndFlagsBits;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1883F4C5C(0, &qword_1EA90CA70, off_1E70BA618);
  v11 = zoneID;
  UUID.init()();
  v12 = UUID.uuidString.getter();
  v14 = v13;
  (*(v7 + 8))(v10, v6);
  v15._countAndFlagsBits = v12;
  v15._object = v14;
  v19.super.isa = CKRecordID.init(recordName:zoneID:)(v15, v11);
  v16._countAndFlagsBits = countAndFlagsBits;
  v16._object = object;
  CKRecord.init(recordType:recordID:)(v17, v16, v19);
}

void __swiftcall CKRecord.init(recordType:recordID:)(CKRecord *__return_ptr retstr, Swift::String recordType, CKRecordID recordID)
{
  isa = recordID.super.isa;
  object = recordType._object;
  countAndFlagsBits = recordType._countAndFlagsBits;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x18CFD5010](countAndFlagsBits, object);

  [v6 initWithRecordType:v7 recordID:isa];
}

uint64_t CKRecord.recordType.getter()
{
  v1 = [v0 recordType];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void CKRecord.setObject(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x18CFD5010](a2, a3);
  [v3 setObject:a1 forKey:v5];
}

uint64_t sub_18848BF08@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  result = CKRecord.object(forKey:)(*a2, a2[1]);
  *a3 = result;
  return result;
}

void sub_18848BF38(uint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = *a2;
  swift_unknownObjectRetain();

  CKRecord.subscript.setter(v5, v3, v4);
}

void CKRecord.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x18CFD5010](a2, a3);

  [v3 setObject:a1 forKey:v5];
  swift_unknownObjectRelease();
}

void (*CKRecord.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  v5 = MEMORY[0x18CFD5010](a2, a3);
  v6 = [v3 objectForKey_];

  *a1 = v6;
  return sub_18848C08C;
}

void sub_18848C08C(uint64_t *a1, char a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v4 = *a1;
  v5 = a1[1];
  if (a2)
  {
    v6 = *a1;
    swift_unknownObjectRetain();

    CKRecord.subscript.setter(v4, v5, v3);

    swift_unknownObjectRelease();
  }

  else
  {
    v7 = a1[2];

    CKRecord.subscript.setter(v4, v5, v3);
  }
}

uint64_t sub_18848C124(SEL *a1)
{
  v2 = [v1 *a1];
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_18848C170()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DBF8 = result;
  unk_1EA90DC00 = v1;
  return result;
}

uint64_t sub_18848C1C0()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DC08 = result;
  unk_1EA90DC10 = v1;
  return result;
}

uint64_t sub_18848C210()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DC18 = result;
  unk_1EA90DC20 = v1;
  return result;
}

uint64_t sub_18848C260(void *a1, uint64_t *a2, uint64_t *a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = *a2;
  v6 = *a3;

  return v5;
}

unint64_t sub_18848C2B8()
{
  result = qword_1EA90DC28;
  if (!qword_1EA90DC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DC28);
  }

  return result;
}

_BYTE *sub_18848C32C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

CKRecordID __swiftcall CKRecordID.init(recordName:zoneID:)(Swift::String recordName, CKRecordZoneID *zoneID)
{
  object = recordName._object;
  countAndFlagsBits = recordName._countAndFlagsBits;
  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v6 = MEMORY[0x18CFD5010](countAndFlagsBits, object);

  v7 = [v5 initWithRecordName:v6 zoneID:zoneID];

  v10 = v7;
  result._zoneID = v9;
  result._recordName = v8;
  result.super.isa = v10;
  return result;
}

uint64_t sub_18848C460(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&unk_1EFA25960, v2);

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_18848C4D8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18848C460(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_18848C508@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18844A030(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_18848C53C@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_18848C460(a1);
  *a2 = result;
  return result;
}

uint64_t sub_18848C564(uint64_t a1)
{
  v2 = sub_18848C7E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18848C5A0(uint64_t a1)
{
  v2 = sub_18848C7E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CKRecordID.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_18844E6FC(&qword_1EA90DC30, &qword_1886F9278);
  v6 = sub_1883F70DC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v17[-v11];
  v13 = a1[4];
  sub_188400B68(a1, a1[3]);
  sub_18848C7E8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = [v3 recordName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    (*(v8 + 8))(v12, v5);
  }

  else
  {

    v16 = [v3 zoneID];
    v18 = v16;
    v17[15] = 1;
    sub_18848C83C();
    sub_18848CA80(&qword_1EA90C190);
    KeyedEncodingContainer.encode<A>(_:forKey:)();

    return (*(v8 + 8))(v12, v5);
  }
}

unint64_t sub_18848C7E8()
{
  result = qword_1EA90C1D8;
  if (!qword_1EA90C1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C1D8);
  }

  return result;
}

unint64_t sub_18848C83C()
{
  result = qword_1ED4B5CC8;
  if (!qword_1ED4B5CC8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED4B5CC8);
  }

  return result;
}

void *CKRecordID.init(from:)(uint64_t *a1)
{
  v3 = sub_18844E6FC(&qword_1EA90DC38, &unk_1886F9280);
  v4 = sub_1883F70DC(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = a1[4];
  v8 = sub_188400B68(a1, a1[3]);
  sub_18848C7E8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    sub_18848C83C();
    sub_18848CA80(&qword_1EA90C188);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13._countAndFlagsBits = v9;
    v13._object = v11;
    v8 = CKRecordID.init(recordName:zoneID:)(v13, v16);
    v14 = sub_1883F7254();
    v15(v14);
  }

  sub_1883FE944(a1);
  return v8;
}

uint64_t sub_18848CA80(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_18848C83C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void *sub_18848CAC4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = CKRecordID.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

_BYTE *_s10CodingKeysOwst(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_18848CBF4()
{
  result = qword_1EA90DC40;
  if (!qword_1EA90DC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DC40);
  }

  return result;
}

unint64_t sub_18848CC4C()
{
  result = qword_1EA90C1C8;
  if (!qword_1EA90C1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C1C8);
  }

  return result;
}

unint64_t sub_18848CCA4()
{
  result = qword_1EA90C1D0;
  if (!qword_1EA90C1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C1D0);
  }

  return result;
}

uint64_t sub_18848CD04()
{
  sub_18848EEC8();
  v2 = v1;

  return v2;
}

uint64_t sub_18848CD34()
{
  sub_18848F114();
  v2 = v1;

  return v2;
}

uint64_t CKRecordValue.CKToSwiftNativeValue()()
{
  swift_getObjectType();
  if (sub_1884049C0(v0))
  {
    v2 = v1;
    ObjectType = swift_getObjectType();
    v4 = *(v2 + 8);
    swift_unknownObjectRetain();
    v4(ObjectType, v2);

    return swift_unknownObjectRelease();
  }

  else
  {
    swift_unknownObjectRetain();
    sub_18844E6FC(&qword_1EA90DC50, &qword_1886F9440);
    return swift_dynamicCast();
  }
}

uint64_t sub_18848CE70(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_18848CED4(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(a2 + a3 - 16);
  v4 = *a1;
  v5 = *a2;
  v6 = a2[1];
  CKRecordKeyValueSetting.subscript.getter();
}

void CKRecordKeyValueSetting.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1883F8AF0();
  a19 = v21;
  a20 = v22;
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = type metadata accessor for Optional();
  v33 = sub_1883F70DC(v32);
  v35 = v34;
  v37 = *(v36 + 64);
  v38 = MEMORY[0x1EEE9AC00](v33);
  v40 = &a9 - v39;
  (*(v35 + 16))(&a9 - v39, v31, v32, v38);
  sub_1884054F4(v40);
  if (v41)
  {
    (*(v35 + 8))(v40, v32);
    v42 = 0;
  }

  else
  {
    v42 = CKRecordValueProtocol.CKToObjCRecordValue()(v25);
    sub_1883F7930(v25);
    (*(v43 + 8))(v40, v25);
  }

  v44 = MEMORY[0x18CFD5010](v29, v27);

  [v23 setObject:v42 forKeyedSubscript:v44];
  swift_unknownObjectRelease();

  (*(v35 + 8))(v31, v32);
  sub_1883F8178();
}

uint64_t (*CKRecordKeyValueSetting.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6))(int, int, int, int, int, int, int, int, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t)
{
  v13 = sub_188470D2C(0x50uLL);
  *a1 = v13;
  v13[4] = a6;
  v13[5] = v6;
  v13[2] = a4;
  v13[3] = a5;
  *v13 = a2;
  v13[1] = a3;
  v14 = type metadata accessor for Optional();
  v13[6] = v14;
  v15 = *(v14 - 8);
  v13[7] = v15;
  v16 = *(v15 + 64);
  v13[8] = sub_188470D2C(v16);
  v13[9] = sub_188470D2C(v16);
  CKRecordKeyValueSetting.subscript.getter();
  return sub_18848D298;
}

double CKRecordKeyValueSetting.subscript.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x18CFD5010]();
  v4 = [v1 objectForKey_];

  if (v4)
  {
    swift_getObjectType();
    CKRecordValue.CKToSwiftNativeValue()();

    swift_unknownObjectRelease();
  }

  else
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

double sub_18848D41C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *a2;
  v5 = a2[1];
  return CKRecordKeyValueSetting.subscript.getter(a3);
}

uint64_t sub_18848D444(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = *a3;
  v4 = a3[1];
  sub_18847E0A0(a1, v8, &qword_1EA90DC78, &qword_1886F9470);
  v6 = *a2;

  return CKRecordKeyValueSetting.subscript.setter(v8, v5, v4);
}

void (*CKRecordKeyValueSetting.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  v9 = sub_188470D2C(0x70uLL);
  *a1 = v9;
  v9[12] = a4;
  v9[13] = v4;
  v9[10] = a2;
  v9[11] = a3;
  CKRecordKeyValueSetting.subscript.getter(v9);
  return sub_18848D530;
}

void sub_18848D530(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 104);
  v5 = *(*a1 + 80);
  v4 = *(*a1 + 88);
  if (a2)
  {
    sub_18847E0A0(*a1, v2 + 40, &qword_1EA90DC78, &qword_1886F9470);

    CKRecordKeyValueSetting.subscript.setter(v2 + 40, v5, v4);
    sub_18840E840(v2, &qword_1EA90DC78, &qword_1886F9470);
  }

  else
  {

    CKRecordKeyValueSetting.subscript.setter(v2, v5, v4);
  }

  free(v2);
}

double sub_18848D5F0@<D0>(__int128 *a1@<X8>)
{
  swift_unknownObjectRetain();
  sub_18844E6FC(&qword_1EA90DC68, &unk_1886F9460);
  if (swift_dynamicCast())
  {
    if (*(&v9 + 1) >> 60 != 15)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v9 = xmmword_1886F9430;
  }

  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1883FDE5C(v2, qword_1ED4B5C70);
  swift_unknownObjectRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138412290;
    objc_opt_self();
    v7 = swift_dynamicCastObjCClassUnconditional();
    *(v5 + 4) = v7;
    *v6 = v7;
    swift_unknownObjectRetain();
    _os_log_impl(&dword_1883EA000, v3, v4, "Error converting record value %@ to requested type", v5, 0xCu);
    sub_18840E840(v6, &qword_1EA90DC70, &unk_1886FA190);
    MEMORY[0x18CFD7E80](v6, -1, -1);
    MEMORY[0x18CFD7E80](v5, -1, -1);
  }

LABEL_10:
  result = *&v9;
  *a1 = v9;
  return result;
}

void sub_18848D7C8(uint64_t a1@<X8>)
{
  swift_unknownObjectRetain();
  sub_18844E6FC(&qword_1EA90DC68, &unk_1886F9460);
  v2 = type metadata accessor for Date();
  v3 = swift_dynamicCast();
  sub_1883F90F4(a1, v3 ^ 1u, 1, v2);
  if (sub_1883F971C(a1, 1, v2) == 1)
  {
    if (qword_1ED4B5C68 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1883FDE5C(v4, qword_1ED4B5C70);
    swift_unknownObjectRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      objc_opt_self();
      v9 = swift_dynamicCastObjCClassUnconditional();
      *(v7 + 4) = v9;
      *v8 = v9;
      swift_unknownObjectRetain();
      _os_log_impl(&dword_1883EA000, v5, v6, "Error converting record value %@ to requested type", v7, 0xCu);
      sub_18840E840(v8, &qword_1EA90DC70, &unk_1886FA190);
      MEMORY[0x18CFD7E80](v8, -1, -1);
      MEMORY[0x18CFD7E80](v7, -1, -1);
    }
  }
}

uint64_t sub_18848D9AC()
{
  swift_unknownObjectRetain();
  sub_18844E6FC(&qword_1EA90DC68, &unk_1886F9460);
  if (swift_dynamicCast())
  {
    if (v8)
    {
      return v7;
    }
  }

  else
  {
    v7 = 0;
  }

  if (qword_1ED4B5C68 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1883FDE5C(v0, qword_1ED4B5C70);
  swift_unknownObjectRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    objc_opt_self();
    v5 = swift_dynamicCastObjCClassUnconditional();
    *(v3 + 4) = v5;
    *v4 = v5;
    swift_unknownObjectRetain();
    _os_log_impl(&dword_1883EA000, v1, v2, "Error converting record value %@ to requested type", v3, 0xCu);
    sub_18840E840(v4, &qword_1EA90DC70, &unk_1886FA190);
    MEMORY[0x18CFD7E80](v4, -1, -1);
    MEMORY[0x18CFD7E80](v3, -1, -1);
  }

  return v7;
}

void sub_18848DB6C(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  swift_unknownObjectRetain();
  sub_18844E6FC(&qword_1EA90DC68, &unk_1886F9460);
  v4 = swift_dynamicCast();
  sub_1883F90F4(a2, v4 ^ 1u, 1, a1);
  if (sub_1883F971C(a2, 1, a1) == 1)
  {
    if (qword_1ED4B5C68 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1883FDE5C(v5, qword_1ED4B5C70);
    swift_unknownObjectRetain();
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      objc_opt_self();
      v10 = swift_dynamicCastObjCClassUnconditional();
      *(v8 + 4) = v10;
      *v9 = v10;
      swift_unknownObjectRetain();
      _os_log_impl(&dword_1883EA000, v6, v7, "Error converting record value %@ to requested type", v8, 0xCu);
      sub_18840E840(v9, &qword_1EA90DC70, &unk_1886FA190);
      MEMORY[0x18CFD7E80](v9, -1, -1);
      MEMORY[0x18CFD7E80](v8, -1, -1);
    }
  }
}

uint64_t sub_18848DD50@<X0>(uint64_t *a1@<X8>)
{
  result = sub_18848D9AC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

id sub_18848DD88(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithBool_];
}

uint64_t sub_18848DDD0()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    return [v0 BOOLValue];
  }

  else
  {
    return 2;
  }
}

uint64_t sub_18848DE28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18848DDD0();
  *a1 = result;
  return result;
}

id sub_18848DE50(double a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithDouble_];
}

double sub_18848DE98()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    [v0 doubleValue];
  }

  return result;
}

void sub_18848DEFC(uint64_t a1@<X8>)
{
  sub_18848DE98();
  *a1 = v2;
  *(a1 + 8) = v3 & 1;
}

id sub_18848DF2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18848E5E4(a1, &selRef_integerValue);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_18848DF64(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedInteger_];
}

id sub_18848DFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18848E5E4(a1, &selRef_unsignedIntegerValue);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_18848DFEC(char a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithChar_];
}

uint64_t sub_18848E034()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  v1 = v0;
  if (v0)
  {
    LOBYTE(v0) = [v0 charValue];
  }

  return v0 | ((v1 == 0) << 8);
}

uint64_t sub_18848E0A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18848E034();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

id sub_18848E0D4(unsigned __int8 a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedChar_];
}

uint64_t sub_18848E11C()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  v1 = v0;
  if (v0)
  {
    LODWORD(v0) = [v0 unsignedCharValue];
  }

  return v0 | ((v1 == 0) << 8);
}

uint64_t sub_18848E188@<X0>(_BYTE *a1@<X8>)
{
  result = sub_18848E11C();
  *a1 = result;
  a1[1] = BYTE1(result) & 1;
  return result;
}

id sub_18848E1B8(__int16 a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithShort_];
}

uint64_t sub_18848E200()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 shortValue];
  }

  else
  {
    v2 = 0;
  }

  return v2 | ((v1 == 0) << 16);
}

uint64_t sub_18848E278@<X0>(uint64_t a1@<X8>)
{
  result = sub_18848E200();
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

id sub_18848E2A8(unsigned __int16 a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedShort_];
}

uint64_t sub_18848E2F0()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  v1 = v0;
  if (v0)
  {
    LODWORD(v0) = [v0 unsignedShortValue];
  }

  return v0 | ((v1 == 0) << 16);
}

uint64_t sub_18848E35C@<X0>(uint64_t a1@<X8>)
{
  result = sub_18848E2F0();
  *a1 = result;
  *(a1 + 2) = BYTE2(result) & 1;
  return result;
}

id sub_18848E38C(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithInt_];
}

unint64_t sub_18848E3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18848E45C(a1, &selRef_intValue);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

id sub_18848E414(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedInt_];
}

unint64_t sub_18848E45C(uint64_t a1, SEL *a2)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v4 = v3;
  if (v3)
  {
    v5 = [v3 *a2];
  }

  else
  {
    v5 = 0;
  }

  return v5 | ((v4 == 0) << 32);
}

unint64_t sub_18848E4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18848E45C(a1, &selRef_unsignedIntValue);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

id sub_18848E514(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithLongLong_];
}

id sub_18848E564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18848E5E4(a1, &selRef_longLongValue);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_18848E59C(uint64_t a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithUnsignedLongLong_];
}

id sub_18848E5E4(uint64_t a1, SEL *a2)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    return [result *a2];
  }

  return result;
}

id sub_18848E644@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_18848E5E4(a1, &selRef_unsignedLongLongValue);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

id sub_18848E67C(float a1)
{
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v3 = a1;

  return [v2 initWithFloat_];
}

unint64_t sub_18848E6C4()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  v1 = v0;
  if (v0)
  {
    [v0 floatValue];
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  return v3 | ((v1 == 0) << 32);
}

unint64_t sub_18848E744@<X0>(uint64_t a1@<X8>)
{
  result = sub_18848E6C4();
  *a1 = result;
  *(a1 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_18848E7B4@<X0>(uint64_t *a1@<X8>)
{
  a1[3] = type metadata accessor for Date();
  a1[4] = &protocol witness table for Date;
  sub_188403664(a1);
  return static Date._unconditionallyBridgeFromObjectiveC(_:)();
}

uint64_t sub_18848E800@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = v4;
  result = a1(v8);
  a4[3] = a2;
  a4[4] = a3;
  *a4 = result;
  a4[1] = v11;
  return result;
}

id sub_18848E884@<X0>(void *a1@<X8>)
{
  if (CFNumberIsFloatType(v1))
  {
    result = [v1 doubleValue];
    v5 = &protocol witness table for Double;
    v6 = MEMORY[0x1E69E63B0];
  }

  else
  {
    result = [v1 longLongValue];
    v4 = result;
    v5 = &protocol witness table for Int64;
    v6 = MEMORY[0x1E69E7360];
  }

  a1[3] = v6;
  a1[4] = v5;
  *a1 = v4;
  return result;
}

void sub_18848E904()
{
  sub_1883F8AF0();
  v17 = v0;
  v16 = type metadata accessor for NSFastEnumerationIterator();
  v1 = sub_1883F70DC(v16);
  v3 = v2;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSArray.makeIterator()();
  for (i = MEMORY[0x1E69E7CC0]; ; sub_18843E080(v18, i + 40 * v9 + 32))
  {
    NSFastEnumerationIterator.next()();
    if (!v21)
    {
      break;
    }

    sub_188419138(&v20, v19);
    sub_18844E6FC(&qword_1EA90DC68, &unk_1886F9460);
    swift_dynamicCast();
    swift_getObjectType();
    CKRecordValue.CKToSwiftNativeValue()();
    sub_18848CE70(v19, v18);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = *(i + 16);
      sub_188476CB0();
      i = v11;
    }

    v9 = *(i + 16);
    if (v9 >= *(i + 24) >> 1)
    {
      sub_188476CB0();
      i = v12;
    }

    swift_unknownObjectRelease();
    sub_1883FE944(v19);
    *(i + 16) = v9 + 1;
  }

  (*(v3 + 8))(v7, v16);
  sub_18844E6FC(&qword_1EA90DC50, &qword_1886F9440);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v14 = sub_1883F4C5C(0, &qword_1EA90DC98, 0x1E695DEC8);
  v15 = v17;
  v17[3] = v14;
  v15[4] = &protocol witness table for NSArray;
  *v15 = isa;
  sub_1883F8178();
}

uint64_t CKRecordValueStoreIterator.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
  v3 = [swift_unknownObjectRetain() allKeys];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  result = swift_unknownObjectRelease();
  a2[1] = v4;
  a2[2] = 0;
  return result;
}

void CKRecordValueStoreIterator.next()(uint64_t a1@<X8>)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  if (v4 >= *(v3 + 16))
  {
    *(a1 + 48) = 0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
  }

  else
  {
    if (v4 < 0)
    {
      __break(1u);
    }

    else
    {
      v5 = v1;
      v6 = v3 + 16 * v4;
      v7 = *(v6 + 32);
      v8 = *(v6 + 40);
      v9 = *v1;

      v10 = MEMORY[0x18CFD5010](v7, v8);
      v11 = [v9 objectForKey_];

      if (v11)
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        CKRecordValue.CKToSwiftNativeValue()();
        swift_unknownObjectRelease_n();
        *(v5 + 16) = v4 + 1;
        *a1 = v7;
        *(a1 + 8) = v8;
        sub_18843E080(&v12, a1 + 16);
        return;
      }
    }

    __break(1u);
  }
}

void CKRecordValueStore.makeIterator()(void *a1@<X8>)
{
  *a1 = v1;
  v3 = [v1 allKeys];
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  a1[1] = v4;
  a1[2] = 0;
}

void sub_18848ED04(void *a1@<X8>)
{
  v2 = *v1;
  CKRecordValueStore.makeIterator()(a1);
}

uint64_t sub_18848EE10(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = *a3;
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_18848EE64()
{
  result = qword_1EA90DC80;
  if (!qword_1EA90DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DC80);
  }

  return result;
}

void sub_18848EEC8()
{
  CKRecordValueStore.makeIterator()(v35);
  v0 = 0;
  v1 = v35[1];
  v2 = MEMORY[0x1E69E7CC0];
  for (i = MEMORY[0x1E69E7CC0] + 32; ; i += 56)
  {
    v4 = v36;
    if (v36 >= *(v1 + 16))
    {
      break;
    }

    if (v36 < 0)
    {
      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v5 = (v1 + 32 + 16 * v36);
    v6 = *v5;
    v7 = v5[1];
    v8 = v35[0];

    v9 = MEMORY[0x18CFD5010](v6, v7);
    v10 = [v8 objectForKey_];

    if (!v10)
    {
      goto LABEL_29;
    }

    swift_getObjectType();
    swift_unknownObjectRetain();
    CKRecordValue.CKToSwiftNativeValue()();
    swift_unknownObjectRelease_n();
    v36 = v4 + 1;
    *&v28 = v6;
    *(&v28 + 1) = v7;
    sub_18843E080(&v27, v29);
    v31 = v28;
    v32 = v29[0];
    v33 = v29[1];
    v34 = v30;
    if (!v0)
    {
      v11 = v2[3];
      if (((v11 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_27;
      }

      v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
      if (v12 <= 1)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      sub_18844E6FC(&qword_1EA90DC90, &qword_1886F9A08);
      v14 = swift_allocObject();
      v15 = (j__malloc_size(v14) - 32) / 56;
      v14[2] = v13;
      v14[3] = 2 * v15;
      v16 = (v14 + 4);
      v17 = v2[3];
      v18 = v17 >> 1;
      if (v2[2])
      {
        if (v14 != v2 || v16 >= &v2[7 * v18 + 4])
        {
          memmove(v14 + 4, v2 + 4, 56 * v18);
        }

        v2[2] = 0;
      }

      i = v16 + 56 * v18;
      v0 = (v15 & 0x7FFFFFFFFFFFFFFFLL) - (v17 >> 1);

      v2 = v14;
    }

    v20 = __OFSUB__(v0--, 1);
    if (v20)
    {
      goto LABEL_26;
    }

    v21 = v31;
    v22 = v32;
    v23 = v33;
    *(i + 48) = v34;
    *(i + 16) = v22;
    *(i + 32) = v23;
    *i = v21;
  }

  swift_unknownObjectRelease();
  v24 = v2[3];
  if (v24 < 2)
  {
    return;
  }

  v25 = v24 >> 1;
  v20 = __OFSUB__(v25, v0);
  v26 = v25 - v0;
  if (!v20)
  {
    v2[2] = v26;
    return;
  }

LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
}

void sub_18848F114()
{
  CKRecord.makeIterator()(v35);
  v29 = 0;
  v30 = MEMORY[0x1E69E7CC0];
  v0 = v35[0];
  v1 = v35[1];
  v2 = v35[0] + 40;
  v27 = v35[0] + 40;
  v28 = MEMORY[0x1E69E7CC0] + 32;
LABEL_2:
  v3 = *(v0 + 16);
  v4 = v36;
  v5 = (v2 + 16 * v36);
  for (i = v36; i < v3; ++i)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    if (i >= *(v0 + 16))
    {
      goto LABEL_30;
    }

    v8 = *(v5 - 1);
    v7 = *v5;
    swift_bridgeObjectRetain_n();
    v9 = MEMORY[0x18CFD5010](v8, v7);

    v10 = [v1 objectForKey_];

    if (v10)
    {
      v36 = i + 1;
      swift_getObjectType();
      CKRecordValue.CKToSwiftNativeValue()();
      swift_unknownObjectRelease();
      *&v31 = v8;
      *(&v31 + 1) = v7;
      v11 = v29;
      if (v29)
      {
        v12 = v30;
        v2 = v27;
        v13 = v28;
      }

      else
      {
        v14 = v30[3];
        if (((v14 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_33;
        }

        v15 = v14 & 0xFFFFFFFFFFFFFFFELL;
        if (v15 <= 1)
        {
          v16 = 1;
        }

        else
        {
          v16 = v15;
        }

        sub_18844E6FC(&qword_1EA90DC90, &qword_1886F9A08);
        v12 = swift_allocObject();
        v17 = (j__malloc_size(v12) - 32) / 56;
        v12[2] = v16;
        v12[3] = 2 * v17;
        v18 = (v12 + 4);
        v19 = v30[3];
        v20 = v19 >> 1;
        if (v30[2])
        {
          if (v12 != v30 || v18 >= &v30[7 * v20 + 4])
          {
            memmove(v12 + 4, v30 + 4, 56 * v20);
          }

          v30[2] = 0;
        }

        v13 = v18 + 56 * v20;
        v11 = (v17 & 0x7FFFFFFFFFFFFFFFLL) - (v19 >> 1);

        v2 = v27;
      }

      v22 = __OFSUB__(v11, 1);
      v23 = v11 - 1;
      if (!v22)
      {
        v29 = v23;
        v30 = v12;
        *(v13 + 48) = v34;
        *(v13 + 16) = v32;
        *(v13 + 32) = v33;
        *v13 = v31;
        v28 = v13 + 56;
        goto LABEL_2;
      }

      goto LABEL_31;
    }

    v5 += 2;
  }

  v24 = v30[3];
  if (v24 < 2)
  {
    return;
  }

  v25 = v24 >> 1;
  v22 = __OFSUB__(v25, v29);
  v26 = v25 - v29;
  if (!v22)
  {
    v30[2] = v26;
    return;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

uint64_t sub_18848F3D4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v45 = -1 << *(a1 + 32);
  v10 = (63 - v7) >> 6;

  v12 = 0;
  v13 = 0;
  v43 = 0;
  v14 = 0;
  v15 = MEMORY[0x1E69E7CC0];
  v42 = (MEMORY[0x1E69E7CC0] + 32);
  while (1)
  {
    while (v12)
    {
      v16 = *(v12 + 16);
      if (v13 == v16)
      {
        break;
      }

      if (v13 >= v16)
      {
        goto LABEL_39;
      }

      v23 = (v12 + 32 * v13);
      result = v23[5];
      v36 = v23[6];
      v37 = v23[4];
      v38 = v23[7];
      v39 = result;
      if (v43)
      {

        v24 = v15;
      }

      else
      {
        v25 = v15[3];
        if (((v25 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_41;
        }

        v26 = v25 & 0xFFFFFFFFFFFFFFFELL;
        if (v26 <= 1)
        {
          v27 = 1;
        }

        else
        {
          v27 = v26;
        }

        v44 = v27;
        sub_18844E6FC(a4, a5);
        v24 = swift_allocObject();
        v28 = (j__malloc_size(v24) - 32) / 32;
        v24[2] = v44;
        v24[3] = 2 * v28;
        v29 = v24 + 4;
        v30 = v15[3] >> 1;
        v42 = &v24[4 * v30 + 4];
        v43 = (v28 & 0x7FFFFFFFFFFFFFFFLL) - v30;
        if (v15[2])
        {
          if (v24 != v15 || v29 >= &v15[4 * v30 + 4])
          {
            memmove(v29, v15 + 4, 32 * v30);
          }

          v15[2] = 0;
        }

        else
        {
        }
      }

      v32 = __OFSUB__(v43--, 1);
      if (v32)
      {
        goto LABEL_40;
      }

      ++v13;
      *v42 = v37;
      v42[1] = v39;
      v42[2] = v36;
      v42[3] = v38;
      v42 += 4;
      v15 = v24;
    }

    if (!v9)
    {
      break;
    }

    v17 = v14;
LABEL_13:
    v18 = __clz(__rbit64(v9)) | (v17 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = *(*(a1 + 56) + 8 * v18);
    v21 = v19[1];
    v9 &= v9 - 1;
    v48[0] = *v19;
    v48[1] = v21;
    v48[2] = v20;

    a2(&v47, v48);

    v22 = v47;

    v13 = 0;
    v12 = v22;
  }

  while (1)
  {
    v17 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_38;
    }

    if (v17 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v17);
    ++v14;
    if (v9)
    {
      v14 = v17;
      goto LABEL_13;
    }
  }

  sub_1883F70C4();

  v33 = v15[3];
  if (v33 < 2)
  {
    return v15;
  }

  v34 = v33 >> 1;
  v32 = __OFSUB__(v34, v43);
  v35 = v34 - v43;
  if (!v32)
  {
    v15[2] = v35;
    return v15;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
  return result;
}

id static CKRecordZoneID.default.getter()
{
  if (qword_1EA90C198 != -1)
  {
    swift_once();
  }

  v1 = qword_1EA90C1A0;

  return v1;
}

uint64_t static CKRecordZoneID.defaultZoneName.getter()
{
  if (qword_1EA90C1B0 != -1)
  {
    sub_1883F9C4C();
  }

  v0 = qword_1EA90C1B8;

  return v0;
}

void __swiftcall CKRecordZoneID.init(zoneName:ownerName:)(CKRecordZoneID *__return_ptr retstr, Swift::String zoneName, Swift::String ownerName)
{
  object = ownerName._object;
  countAndFlagsBits = ownerName._countAndFlagsBits;
  v5 = zoneName._object;
  v6 = zoneName._countAndFlagsBits;
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = MEMORY[0x18CFD5010](v6, v5);

  v9 = MEMORY[0x18CFD5010](countAndFlagsBits, object);

  [v7 initWithZoneName:v8 ownerName:v9];
}

void sub_18848F830()
{
  sub_18848C83C();
  if (qword_1EA90C1B0 != -1)
  {
    sub_1883F9C4C();
  }

  v0 = qword_1EA90C1B8;
  v1 = unk_1EA90C1C0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  v5._countAndFlagsBits = v0;
  v5._object = v1;
  v6._countAndFlagsBits = v2;
  v6._object = v4;
  CKRecordZoneID.init(zoneName:ownerName:)(v7, v5, v6);
  qword_1EA90C1A0 = v8;
}

uint64_t sub_18848F8D0()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90C1B8 = result;
  unk_1EA90C1C0 = v1;
  return result;
}

uint64_t sub_18848F900()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DCC0 = result;
  *algn_1EA90DCC8 = v1;
  return result;
}

uint64_t CKRecordZoneDefaultName.getter()
{
  if (qword_1EA90CB48 != -1)
  {
    swift_once();
  }

  v0 = qword_1EA90DCC0;

  return v0;
}

unint64_t sub_18848F9BC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_18844A0D8(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_18848F9EC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_18844A124(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_18848FA20@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_18844A0D8(a1);
  *a2 = result;
  return result;
}

uint64_t sub_18848FA48(uint64_t a1)
{
  v2 = sub_18848FDD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_18848FA84(uint64_t a1)
{
  v2 = sub_18848FDD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *CKRecordZoneID.init(from:)(uint64_t *a1)
{
  v3 = sub_18844E6FC(&qword_1EA90DCD0, &qword_1886F9A28);
  v4 = sub_1883F70DC(v3);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = a1[4];
  v8 = sub_188400B68(a1, a1[3]);
  sub_18848FDD0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_1883FE944(a1);
  }

  else
  {
    v9 = sub_188405514();
    v11 = v10;
    LOBYTE(v21) = 1;
    v19 = sub_188405514();
    v20 = v12;
    sub_18844E6FC(&qword_1EA90E230, &qword_1886F9A30);
    sub_188490154(&qword_1EA90C3A8);
    sub_1883F87FC();
    type metadata accessor for Scope(0);
    sub_1884901C0(&qword_1EA90C368);
    sub_1883F87FC();
    v18 = MEMORY[0x18CFD5010](v9, v11);

    v14 = MEMORY[0x18CFD5010](v19, v20);

    if (v22)
    {
      v15 = MEMORY[0x18CFD5010](v21);
    }

    else
    {
      v15 = 0;
    }

    v8 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithZoneName:v18 ownerName:v14 anonymousCKUserID:v15 databaseScope:v21];

    v16 = sub_1883F70CC();
    v17(v16);
    sub_1883FE944(a1);
  }

  return v8;
}

unint64_t sub_18848FDD0()
{
  result = qword_1EA90C390;
  if (!qword_1EA90C390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C390);
  }

  return result;
}

uint64_t CKRecordZoneID.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_18844E6FC(&qword_1EA90DCD8, qword_1886F9A38);
  v6 = sub_1883F70DC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v12 = &v18 - v11;
  v13 = a1[4];
  sub_188400B68(a1, a1[3]);
  sub_18848FDD0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = [v3 zoneName];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  LOBYTE(v20) = 0;
  sub_1883FA0B8();
  if (v2)
  {
    (*(v8 + 8))(v12, v5);
  }

  else
  {

    v15 = [v3 ownerName];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    LOBYTE(v20) = 1;
    sub_1883FA0B8();

    v20 = sub_1884900F0(v3);
    v21 = v16;
    v19 = 2;
    sub_18844E6FC(&qword_1EA90E230, &qword_1886F9A30);
    sub_188490154(&qword_1EA90C3B0);
    sub_1883F91E4();

    v20 = [v3 databaseScope];
    v19 = 3;
    type metadata accessor for Scope(0);
    sub_1884901C0(&qword_1EA90C378);
    sub_1883F91E4();
    return (*(v8 + 8))(v12, v5);
  }
}

void *sub_1884900A0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = CKRecordZoneID.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1884900F0(void *a1)
{
  v1 = [a1 anonymousCKUserID];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t sub_188490154(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_18844E798(&qword_1EA90E230, &qword_1886F9A30);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1884901C0(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Scope(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *_s10CodingKeysOwst_0(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1884902E4()
{
  result = qword_1EA90DCE0;
  if (!qword_1EA90DCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DCE0);
  }

  return result;
}

unint64_t sub_18849033C()
{
  result = qword_1EA90C380;
  if (!qword_1EA90C380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C380);
  }

  return result;
}

unint64_t sub_188490394()
{
  result = qword_1EA90C388;
  if (!qword_1EA90C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90C388);
  }

  return result;
}

unint64_t CKRecordZone.Reference.Action.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_18849041C@<X0>(uint64_t *a1@<X8>)
{
  result = CKRecordZone.Reference.Action.rawValue.getter();
  *a1 = result;
  return result;
}

id CKRecordZone.Reference.init(zoneID:action:)()
{
  sub_1883F7284();
  ObjectType = swift_getObjectType();
  v4 = *v0;
  *&v1[OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_zoneID] = v2;
  v1[OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_action] = v4;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_init);
}

id CKRecordZone.Reference.init(zone:action:)()
{
  sub_1883F7284();
  ObjectType = swift_getObjectType();
  v4 = *v0;
  v5 = [v2 zoneID];
  *&v1[OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_zoneID] = v5;
  v1[OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_action] = v4;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_init);

  return v6;
}

uint64_t CKRecordZone.Reference.description.getter()
{
  v1 = v0;
  BYTE8(v7) = 0;
  _StringGuts.grow(_:)(35);
  MEMORY[0x18CFD5140](0xD000000000000013, 0x8000000188700010);
  v2 = [*(v0 + OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_zoneID) description];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  MEMORY[0x18CFD5140](v3, v5);

  MEMORY[0x18CFD5140](0x6E6F697463612022, 0xEA0000000000223DLL);
  *&v7 = *(v1 + OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_action);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x18CFD5140](23842, 0xE200000000000000);
  return *(&v7 + 1);
}

id CKRecordZone.Reference.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_zoneID);
  v8 = *(v1 + OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_action);
  v5 = objc_allocWithZone(ObjectType);
  v6 = v4;
  result = CKRecordZone.Reference.init(zoneID:action:)();
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

BOOL CKRecordZone.Reference.isEqual(_:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  sub_18848911C(a1, v11);
  if (v12)
  {
    if (swift_dynamicCast())
    {
      sub_188490CD4();
      v4 = *(v1 + OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_zoneID);
      v5 = *&v10[OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_zoneID];
      v6 = static NSObject.== infix(_:_:)();

      if (v6)
      {
        v7 = *(v2 + OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_action);
        v8 = v10[OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_action];

        return v7 == v8;
      }
    }
  }

  else
  {
    sub_18847EBC8(v11);
  }

  return 0;
}

uint64_t CKRecordZone.Reference.hash.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_zoneID) hash];
  v2 = *(v0 + OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_action);
  return Int.hashValue.getter() ^ v1;
}

id CKRecordZone.Reference.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *CKRecordZone.parent.getter()
{
  v1 = [v0 parent];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = *&v1[OBJC_IVAR___CKRecordZoneReference__wrapped];
  v4 = v3;

  return v3;
}

void sub_188490B3C(id *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1;
  CKRecordZone.parent.setter(v2);
}

void CKRecordZone.parent.setter(void *a1)
{
  v2 = v1;
  if (a1)
  {
    type metadata accessor for CKRecordZoneReference(0);
    v4 = a1;
    v5 = CKRecordZoneReference.init(_:)(v4);
    [v2 setParent_];
  }

  else
  {

    [v1 setParent_];
  }
}

void (*CKRecordZone.parent.modify(void **a1))(uint64_t a1, char a2)
{
  a1[1] = v1;
  *a1 = CKRecordZone.parent.getter();
  return sub_188490C6C;
}

void sub_188490C6C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  if (a2)
  {
    v4 = v2;
    CKRecordZone.parent.setter(v2);
  }

  else
  {
    CKRecordZone.parent.setter(*a1);
  }
}

unint64_t sub_188490CD4()
{
  result = qword_1EA90CA80;
  if (!qword_1EA90CA80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90CA80);
  }

  return result;
}

unint64_t sub_188490D1C()
{
  result = qword_1EA90DCF8;
  if (!qword_1EA90DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DCF8);
  }

  return result;
}

_BYTE *_s9ReferenceC6ActionOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

void *CKRecordZoneReference.wrapped.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKRecordZoneReference__wrapped);
  v2 = v1;
  return v1;
}

char *CKRecordZoneReference.init(_:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v3 = *&v2[OBJC_IVAR___CKRecordZoneReference__wrapped];
  *&v2[OBJC_IVAR___CKRecordZoneReference__wrapped] = a1;

  return v2;
}

id sub_188490F34()
{
  *(v0 + OBJC_IVAR___CKRecordZoneReference__wrapped) = 0;
  v2.super_class = CKRecordZoneReference;
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_188491000(void *a1, uint64_t a2, SEL *a3)
{
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) *a3];

  return v4;
}

uint64_t sub_188491074(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, char *))
{
  v5 = v3;
  v8 = [v5 init];
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (a2 <= 2)
  {
    v9 = v8;
    v14 = a2;
    objc_allocWithZone(type metadata accessor for CKRecordZone.Reference());
    v10 = v9;
    v11 = a3(a1, &v14);
    v12 = *&v10[OBJC_IVAR___CKRecordZoneReference__wrapped];
    *&v10[OBJC_IVAR___CKRecordZoneReference__wrapped] = v11;

    return v10;
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

id CKRecordZoneReference.zoneID.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKRecordZoneReference__wrapped);
  if (v1)
  {
    return *(v1 + OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_zoneID);
  }

  __break(1u);
  return result;
}

uint64_t CKRecordZoneReference.referenceAction.getter()
{
  v1 = *(v0 + OBJC_IVAR___CKRecordZoneReference__wrapped);
  if (v1)
  {
    return *(v1 + OBJC_IVAR____TtCE8CloudKitCSo12CKRecordZone9Reference_action);
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall CKRecordZoneReference.encode(with:)(NSCoder with)
{
  v3 = [v1 zoneID];
  v4 = NSStringFromSelector(sel_zoneID);
  if (!v4)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v4 = MEMORY[0x18CFD5010](v5);
  }

  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  [v1 referenceAction];
  v6.super.super.isa = UInt._bridgeToObjectiveC()().super.super.isa;
  v7 = NSStringFromSelector(sel_referenceAction);
  if (!v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = MEMORY[0x18CFD5010](v8);

    v7 = v9;
  }

  v10 = v7;
  [(objc_class *)with.super.isa encodeObject:v6.super.super.isa forKey:?];
}

id CKRecordZoneReference.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___CKRecordZoneReference__wrapped;
  *&v1[OBJC_IVAR___CKRecordZoneReference__wrapped] = 0;
  sub_1883F4C5C(0, &qword_1ED4B5CC8, off_1E70BA650);
  v5 = NSStringFromSelector(sel_zoneID);
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = NSCoder.decodeObject<A>(of:forKey:)();

  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = NSStringFromSelector(sel_referenceAction);
  if (!v7)
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = MEMORY[0x18CFD5010](v8);
  }

  v9 = [a1 decodeIntegerForKey_];

  if (v9 >= 3)
  {

    a1 = v6;
LABEL_7:

    type metadata accessor for CKRecordZoneReference(v14);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v17 = v9;
  v10 = objc_allocWithZone(type metadata accessor for CKRecordZone.Reference());
  v11 = CKRecordZone.Reference.init(zoneID:action:)();
  v12 = *&v2[v4];
  *&v2[v4] = v11;

  v16.receiver = v2;
  v16.super_class = CKRecordZoneReference;
  v13 = objc_msgSendSuper2(&v16, sel_init);

  return v13;
}

char *CKRecordZoneReference.copy(with:)@<X0>(char *result@<X0>, char **a2@<X8>)
{
  v4 = *(v2 + OBJC_IVAR___CKRecordZoneReference__wrapped);
  if (v4)
  {
    v5 = type metadata accessor for CKRecordZoneReference(result);
    result = CKRecordZoneReference.init(_:)(v4);
    a2[3] = v5;
    *a2 = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CKRecordZoneReference.isEqual(_:)(uint64_t a1)
{
  v2 = sub_18848911C(a1, v11);
  if (!v12)
  {
    sub_18847EBC8(v11);
    goto LABEL_7;
  }

  type metadata accessor for CKRecordZoneReference(v2);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v7 = 0;
    return v7 & 1;
  }

  v3 = *(v1 + OBJC_IVAR___CKRecordZoneReference__wrapped);
  v4 = *&v10[OBJC_IVAR___CKRecordZoneReference__wrapped];
  if (!v3)
  {
    v9 = v4;

    if (!v4)
    {
      v7 = 1;
      return v7 & 1;
    }

    goto LABEL_7;
  }

  if (!v4)
  {

    goto LABEL_7;
  }

  type metadata accessor for CKRecordZone.Reference();
  v5 = v4;
  v6 = v3;
  v7 = static NSObject.== infix(_:_:)();

  return v7 & 1;
}

uint64_t CKRecordZoneReference.hash.getter()
{
  v2 = *(v0 + OBJC_IVAR___CKRecordZoneReference__wrapped);
  sub_18844E6FC(&qword_1EA90DD18, &qword_1886F9CC8);
  sub_1884918BC();
  return Optional<A>.hashValue.getter();
}

unint64_t sub_1884918BC()
{
  result = qword_1EA90DD20;
  if (!qword_1EA90DD20)
  {
    type metadata accessor for CKRecordZone.Reference();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90DD20);
  }

  return result;
}

uint64_t CKRecordZoneReference.description.getter()
{
  v1 = *&v0[OBJC_IVAR___CKRecordZoneReference__wrapped];
  if (v1)
  {
    v2 = v1;
    v3 = objc_msgSendSuper2(&v14, sel_description);
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    v16 = v4;
    v17 = v6;
    MEMORY[0x18CFD5140](8250, 0xE200000000000000);
    type metadata accessor for CKRecordZone.Reference();
    v7 = v2;
    v8 = String.init<A>(reflecting:)();
    MEMORY[0x18CFD5140](v8);
  }

  else
  {
    v15.receiver = v0;
    v15.super_class = CKRecordZoneReference;
    v9 = objc_msgSendSuper2(&v15, sel_description);
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v16 = v10;
    v17 = v12;
    MEMORY[0x18CFD5140](0x6C696E203ALL, 0xE500000000000000);
  }

  return v16;
}

void __swiftcall CKRecordZoneSubscription.init(zoneID:subscriptionID:)(CKRecordZoneSubscription *__return_ptr retstr, CKRecordZoneID *zoneID, Swift::String subscriptionID)
{
  object = subscriptionID._object;
  countAndFlagsBits = subscriptionID._countAndFlagsBits;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x18CFD5010](countAndFlagsBits, object);

  [v6 initWithZoneID:zoneID subscriptionID:v7];
}

void sub_188491B40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;

  CKRecordZoneSubscription.recordType.setter(v2, v3);
}

void CKRecordZoneSubscription.recordType.setter(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x18CFD5010]();
  }

  else
  {
    v3 = 0;
  }

  [v2 setRecordType_];
}

void (*CKRecordZoneSubscription.recordType.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = sub_188470A78(v1);
  a1[1] = v3;
  return sub_188491C38;
}

void sub_188491C38(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  if (a2)
  {
    v5 = a1[1];

    CKRecordZoneSubscription.recordType.setter(v3, v2);
  }

  else
  {
    CKRecordZoneSubscription.recordType.setter(*a1, v2);
  }
}

uint64_t sub_188491CAC()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DD98 = result;
  unk_1EA90DDA0 = v1;
  return result;
}

uint64_t sub_188491CFC()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DDA8 = result;
  unk_1EA90DDB0 = v1;
  return result;
}

uint64_t sub_188491D4C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DDB8 = result;
  unk_1EA90DDC0 = v1;
  return result;
}

uint64_t sub_188491D9C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DDC8 = result;
  unk_1EA90DDD0 = v1;
  return result;
}

uint64_t sub_188491DEC()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DDD8 = result;
  unk_1EA90DDE0 = v1;
  return result;
}

uint64_t sub_188491E3C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DDE8 = result;
  unk_1EA90DDF0 = v1;
  return result;
}

uint64_t sub_188491E8C()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  qword_1EA90DDF8 = result;
  unk_1EA90DE00 = v1;
  return result;
}

uint64_t CKShare.oneTimeURL(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = MEMORY[0x18CFD5010]();
  v4 = [v1 oneTimeURLForParticipantID_];

  if (v4)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for URL();

  return sub_1883F90F4(a1, v5, 1, v6);
}

_BYTE *_s14SystemFieldKeyOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t CKShareParticipant.participantID.getter()
{
  v1 = [v0 participantID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

uint64_t CKShareTransferRepresentation.init(exporter:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t CKShareTransferRepresentation.body.getter@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v23 = *(a1 + 16);
  v4 = type metadata accessor for CKShareTransferRepresentation.ExportedShare();
  sub_1883F9C6C();
  v26 = *(&v23 + 1);
  v24 = v23;
  v25 = v4;
  WitnessTable = swift_getWitnessTable();
  v5 = type metadata accessor for ProxyRepresentation();
  v6 = sub_1883F70DC(v5);
  v8 = v7;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1883F8844();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - v15;
  v22 = *v2;
  v17 = swift_allocObject();
  v18 = v22;
  *(v17 + 16) = v23;
  *(v17 + 32) = v18;

  ProxyRepresentation.init(exporting:)();
  sub_1883FA0E0();
  swift_getWitnessTable();
  v19 = *(v8 + 16);
  v19(v16, v13, v5);
  v20 = *(v8 + 8);
  v20(v13, v5);
  v19(a2, v16, v5);
  return (v20)(v16, v5);
}

uint64_t sub_188492348@<X0>(uint64_t a1@<X8>)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  return sub_1884922F4(a1);
}

uint64_t sub_188492368@<X0>(void (*a1)(__int128 *__return_ptr)@<X0>, uint64_t a2@<X8>)
{
  a1(&v7);

  result = sub_1883F5BA0(0);
  v4 = v8;
  v5 = v9;
  v6 = v10;
  *a2 = v7;
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  *(a2 + 40) = v6;
  return result;
}

void static CKShareTransferRepresentation.ExportedShare.prepareShare(container:allowedSharingOptions:preparationHandler:)(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{

  v10 = a2;
  v11 = a1;

  sub_188492498(a1, a2, 0, 0, a3, a4, a5);
}

void sub_188492498(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  if (a1)
  {
    v13 = a1;
    v14 = CKContainerSetupInfoWithBundleIDOverridesForOOPUIFromContainer(v13);
    v15 = [v13 containerID];
    v18 = CKSharingContainerSupportsAdminParticipants(v15, v16, v17);

    if (v18)
    {
      if (!a2)
      {

        if (a4)
        {
          goto LABEL_13;
        }

LABEL_10:

        goto LABEL_14;
      }

      v19 = a2;
      [v19 setSupportAllowingAddedParticipantsToInviteOthers_];
    }

    if (a4)
    {
      goto LABEL_6;
    }

LABEL_9:
    v13 = a1;
    goto LABEL_10;
  }

  v14 = 0;
  if (!a4)
  {
    goto LABEL_9;
  }

LABEL_6:
  if (!a2)
  {
    v13 = a1;
LABEL_13:

    a2 = 0;
    goto LABEL_14;
  }

  v20 = [objc_opt_self() resolvedOptionsFromOptions:a2 forExistingShare:a4];

  a2 = v20;
LABEL_14:
  *a7 = v14;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
}

void static CKShareTransferRepresentation.ExportedShare.existing(_:container:allowedSharingOptions:)(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v8 = a1;
  v9 = a3;
  v10 = a2;

  sub_188492498(a2, a3, 0, a1, 0, 0, a4);
}

id sub_188492668()
{
  if (*v0)
  {
    return *v0;
  }

  type metadata accessor for CKError(0);
  sub_188498E9C(MEMORY[0x1E69E7CC0]);
  sub_18847A4EC();
  _BridgedStoredNSError.init(_:userInfo:)();
  return swift_willThrow();
}

id sub_1884926F0()
{
  v1 = *(v0 + 8);
  if (v1)
  {
    return v1;
  }

  type metadata accessor for CKError(0);
  sub_188498E9C(MEMORY[0x1E69E7CC0]);
  sub_18847A4EC();
  _BridgedStoredNSError.init(_:userInfo:)();
  return swift_willThrow();
}

uint64_t sub_188492778()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 40);
  }

  else
  {
    type metadata accessor for CKError(0);
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18847A4EC();
    _BridgedStoredNSError.init(_:userInfo:)();
    v1 = v4;
    swift_willThrow();
  }

  return v1;
}

id sub_188492810()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    return v1;
  }

  type metadata accessor for CKError(0);
  sub_188498E9C(MEMORY[0x1E69E7CC0]);
  sub_18847A4EC();
  _BridgedStoredNSError.init(_:userInfo:)();
  return swift_willThrow();
}

id sub_188492898()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = *(v0 + 16);
    swift_willThrow();
    return v1;
  }

  if (!*(v0 + 8) || *(v0 + 24) == 0)
  {
    type metadata accessor for CKError(0);
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18847A4EC();
    _BridgedStoredNSError.init(_:userInfo:)();
    swift_willThrow();
    return v1;
  }

  return result;
}

uint64_t static CKShareTransferRepresentation.ExportedShare.transferRepresentation.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a3;
  v98 = a2;
  v4 = type metadata accessor for CKShareTransferRepresentation.ExportedShare();
  sub_1883F9C6C();
  WitnessTable = swift_getWitnessTable();
  v5 = type metadata accessor for DataRepresentation();
  sub_1883F7C40();
  v91 = swift_getWitnessTable();
  v83 = type metadata accessor for _ConditionalTransferRepresentation();
  v6 = sub_1883F70DC(v83);
  v96 = v7;
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v6);
  sub_1883F8844();
  v86 = (v10 - v11);
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v79 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v92 = &v79 - v15;
  v16 = type metadata accessor for UTType();
  v17 = sub_1883F70DC(v16);
  v19 = v18;
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v17);
  v23 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = v5;
  v24 = *(v5 - 8);
  v25 = v24[8];
  MEMORY[0x1EEE9AC00](v26);
  sub_1883F8844();
  v29 = (v27 - v28);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v79 - v31;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v79 - v34;
  if (qword_1EA90CBA8 != -1)
  {
    swift_once();
  }

  v36 = sub_1883FDE5C(v16, qword_1EA90DE48);
  v37 = *(v19 + 16);
  v95 = v19 + 16;
  v93 = v37;
  v37(v23, v36, v16);
  v38 = sub_1883FDA5C();
  v39 = v98;
  *(v38 + 16) = a1;
  *(v38 + 24) = v39;
  DataRepresentation.init(exportedContentType:exporting:)();
  v94 = a1;
  v40 = v24[2];
  v84 = v35;
  v41 = v97;
  v40(v35, v32, v97);
  v44 = v24[1];
  v43 = v24 + 1;
  v42 = v44;
  v44(v32, v41);
  if (qword_1EA90CBB0 != -1)
  {
    swift_once();
  }

  sub_1883FDE5C(v16, qword_1EA90DE60);
  v45 = sub_1883FF120();
  v46(v45);
  v47 = sub_1883FDA5C();
  v48 = v98;
  *(v47 + 16) = v94;
  *(v47 + 24) = v48;
  DataRepresentation.init(exportedContentType:exporting:)();
  v85 = v32;
  v49 = v97;
  v40(v32, v29, v97);
  v42(v29, v49);
  v88 = v42;
  v50 = v4;
  if (qword_1EA90CB98 != -1)
  {
    swift_once();
  }

  sub_1883FDE5C(v16, qword_1EA90DE18);
  v51 = sub_1883FF120();
  v52(v51);
  v53 = sub_1883FDA5C();
  v54 = v94;
  v55 = v98;
  *(v53 + 16) = v94;
  *(v53 + 24) = v55;
  DataRepresentation.init(exportedContentType:exporting:)();
  v56 = sub_1883FDA5C();
  *(v56 + 16) = v54;
  *(v56 + 24) = v55;
  v57 = v90;
  v58 = v97;
  v59 = v16;
  v60 = v29;
  TransferRepresentation.exportingCondition(_:)();

  v88(v29, v58);
  v61 = v83;
  v81 = swift_getWitnessTable();
  v89 = v43;
  v62 = v96;
  v63 = v50;
  v80 = *(v96 + 16);
  v80(v92, v57, v61);
  v82 = *(v62 + 8);
  v96 = v62 + 8;
  v82(v57, v61);
  if (qword_1EA90CBA0 != -1)
  {
    swift_once();
  }

  v64 = sub_1883FDE5C(v59, qword_1EA90DE30);
  v93(v23, v64, v59);
  v65 = sub_1883FDA5C();
  v66 = v94;
  v67 = v98;
  *(v65 + 16) = v94;
  *(v65 + 24) = v67;
  DataRepresentation.init(exportedContentType:exporting:)();
  v68 = sub_1883FDA5C();
  *(v68 + 16) = v66;
  *(v68 + 24) = v67;
  v69 = v86;
  v70 = v97;
  v71 = v91;
  TransferRepresentation.exportingCondition(_:)();

  WitnessTable = v63;
  v72 = v88;
  v88(v60, v70);
  v73 = v90;
  v80(v90, v69, v61);
  v74 = v82;
  v82(v69, v61);
  v76 = v84;
  v75 = v85;
  v77 = v92;
  sub_188493EC0(v84, v85, v92, v73, WitnessTable, v70, v70, v61, v87, v61, v71);
  v74(v73, v61);
  v74(v77, v61);
  v72(v75, v70);
  return (v72)(v76, v70);
}

uint64_t sub_1884930B4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  *(v3 + 40) = *a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 56) = v4;
  *(v3 + 72) = a1[2];
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_188493158, 0, 0);
}

uint64_t sub_188493158()
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1883F7294();
  type metadata accessor for CKShareTransferRepresentation.ExportedShare();
  sub_18840AFB0();
  sub_188492898();
  if (!v0)
  {
    sub_1883F7294();
    v7 = sub_188492668();
    v8 = objc_opt_self();
    *(v1 + 16) = 0;
    v9 = sub_1883F7984(v8, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
    v10 = *(v1 + 16);
    if (v9)
    {
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      sub_1883F7904();
      v15 = *MEMORY[0x1E69E9840];

      return v14(v11, v13);
    }

    v16 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1883F816C();
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

uint64_t sub_1884932F4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  *(v3 + 40) = *a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 56) = v4;
  *(v3 + 72) = a1[2];
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_188493398, 0, 0);
}

uint64_t sub_188493398()
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1883F7294();
  type metadata accessor for CKShareTransferRepresentation.ExportedShare();
  sub_18840AFB0();
  sub_188492898();
  if (!v0)
  {
    sub_1883F7294();
    v7 = sub_1884926F0();
    v8 = objc_opt_self();
    *(v1 + 16) = 0;
    v9 = sub_1883F7984(v8, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
    v10 = *(v1 + 16);
    if (v9)
    {
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      sub_1883F7904();
      v15 = *MEMORY[0x1E69E9840];

      return v14(v11, v13);
    }

    v16 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1883F816C();
  v5 = *MEMORY[0x1E69E9840];

  return v4();
}

uint64_t sub_188493534(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  *(v3 + 88) = *a1;
  *(v3 + 72) = a2;
  *(v3 + 80) = a3;
  *(v3 + 104) = v4;
  *(v3 + 120) = a1[2];
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_1884935D8, 0, 0);
}

uint64_t sub_1884935D8()
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 72);
  v3 = *(v1 + 80);
  sub_1883F9210();
  *(v1 + 136) = type metadata accessor for CKShareTransferRepresentation.ExportedShare();
  sub_18840AFB0();
  sub_188492898();
  if (v0)
  {
    sub_1883F816C();
    v8 = *MEMORY[0x1E69E9840];

    return v7();
  }

  else
  {
    v4 = *(v1 + 104);
    *(v1 + 16) = *(v1 + 88);
    *(v1 + 32) = v4;
    *(v1 + 48) = *(v1 + 120);
    v5 = sub_188492778();
    *(v1 + 144) = v6;
    v13 = (v5 + *v5);
    v10 = v5[1];
    v11 = swift_task_alloc();
    *(v1 + 152) = v11;
    *v11 = v1;
    v11[1] = sub_18849378C;
    v12 = *MEMORY[0x1E69E9840];

    return v13();
  }
}

uint64_t sub_18849378C()
{
  sub_1883F78E0();
  v9 = *MEMORY[0x1E69E9840];
  v2 = *v1;
  v3 = *(*v1 + 152);
  v10 = *v1;
  v2[20] = v4;
  v2[21] = v0;

  if (v0)
  {
    v5 = sub_188493AF8;
  }

  else
  {
    v6 = v2[18];

    v5 = sub_1884938D8;
  }

  v7 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

void sub_1884938D8()
{
  v24 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 168);
  v2 = *(v0 + 136);
  sub_1883F9210();
  v3 = sub_188492668();
  if (v1)
  {
  }

  else
  {
    v4 = v3;
    v5 = *(v0 + 136);
    sub_1883F9210();
    v6 = sub_1884926F0();
    v7 = *(v0 + 160);
    v11 = v6;
    sub_1883F4C5C(0, &unk_1EA90DFA0, off_1E70BA588);
    v12 = v7;
    v13 = v4;
    v14 = v11;
    v15 = sub_188493E58(v12, v13, v14);
    v16 = objc_opt_self();
    *(v0 + 64) = 0;
    v17 = [v16 archivedDataWithRootObject:v15 requiringSecureCoding:1 error:v0 + 64];
    v18 = *(v0 + 64);
    v19 = *(v0 + 160);
    if (v17)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1883F7904();
      v20 = *MEMORY[0x1E69E9840];
      sub_1883F97A8();

      __asm { BRAA            X3, X16 }
    }

    v23 = v18;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1883F816C();
  v8 = *MEMORY[0x1E69E9840];
  sub_1883F97A8();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_188493AF8()
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 144);

  v2 = *(v0 + 168);
  sub_1883F816C();
  v4 = *MEMORY[0x1E69E9840];

  return v3();
}

uint64_t sub_188493B84(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = a1[1];
  *(v3 + 40) = *a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  *(v3 + 56) = v4;
  *(v3 + 72) = a1[2];
  v5 = *MEMORY[0x1E69E9840];

  return MEMORY[0x1EEE6DFA0](sub_188493C28, 0, 0);
}

void sub_188493C28()
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_1883F7294();
  type metadata accessor for CKShareTransferRepresentation.ExportedShare();
  sub_18840AFB0();
  v4 = sub_188492810();
  if (!v0)
  {
    v5 = v4;
    sub_1883F7294();
    v6 = sub_188492668();
    sub_1883F7294();
    v10 = sub_1884926F0();
    sub_1883F4C5C(0, &qword_1EA90DF78, off_1E70BA580);
    v11 = v5;
    v12 = v6;
    v13 = v10;
    v14 = sub_188493E58(v11, v12, v13);
    v15 = objc_opt_self();
    *(v1 + 16) = 0;
    v16 = sub_1883F7984(v15, sel_archivedDataWithRootObject_requiringSecureCoding_error_);
    v17 = *(v1 + 16);
    if (v16)
    {
      static Data._unconditionallyBridgeFromObjectiveC(_:)();

      sub_1883F7904();
      v18 = *MEMORY[0x1E69E9840];
      sub_1883F97A8();

      __asm { BRAA            X3, X16 }
    }

    v21 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  sub_1883F816C();
  v7 = *MEMORY[0x1E69E9840];
  sub_1883F97A8();

  __asm { BRAA            X1, X16 }
}

id sub_188493E58(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithShare:a1 containerSetupInfo:a2 allowedOptions:a3];

  return v6;
}

uint64_t sub_188493EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v29 = a5;
  v30 = a9;
  v26 = a3;
  v27 = a4;
  v25 = a2;
  v28 = a11;
  v31 = a6;
  v32 = a7;
  v33 = a8;
  v34 = a10;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v16 = *(*(TupleTypeMetadata - 8) + 64);
  v17 = MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v19 = &v25 - v18;
  v21 = v20[12];
  v22 = v20[16];
  v23 = v20[20];
  (*(*(a6 - 8) + 16))(&v25 - v18, a1, a6, v17);
  (*(*(a7 - 8) + 16))(&v19[v21], v25, a7);
  (*(*(a8 - 8) + 16))(&v19[v22], v26, a8);
  (*(*(a10 - 8) + 16))(&v19[v23], v27, a10);
  swift_getAssociatedConformanceWitness();
  return TupleTransferRepresentation.init(_:)();
}

uint64_t sub_1884940EC()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883FDA74(v0);
  *v1 = v2;
  v3 = sub_1883F882C(v1);

  return sub_1884930B4(v3, v4, v5);
}

uint64_t sub_18849418C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = sub_18844E6FC(&unk_1EA90DF80, &qword_1886F9EC8);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  v9 = type metadata accessor for UTType();
  sub_188420F44(v9, a2);
  sub_1883FDE5C(v9, a2);
  v10 = *a3;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1883F90F4(v8, 1, 1, v9);
  return UTType.init(exportedAs:conformingTo:)();
}

uint64_t sub_18849426C()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883FDA74(v0);
  *v1 = v2;
  v3 = sub_1883F882C(v1);

  return sub_1884932F4(v3, v4, v5);
}

uint64_t sub_1884942F8()
{
  sub_1883F78E0();
  v2 = v1;
  v4 = v3;
  v5 = *(*v0 + 16);
  v8 = *v0;

  sub_1883F7904();

  return v6(v4, v2);
}

uint64_t sub_1884943FC()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883FDA74(v0);
  *v1 = v2;
  v3 = sub_1883F882C(v1);

  return sub_188493534(v3, v4, v5);
}

uint64_t sub_188494498()
{
  sub_1883F78E0();
  sub_1883F8190();
  v0 = swift_task_alloc();
  v1 = sub_1883FDA74(v0);
  *v1 = v2;
  v3 = sub_1883F882C(v1);

  return sub_188493B84(v3, v4, v5);
}

uint64_t sub_1884945C4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_188494600(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_188494640(uint64_t result, int a2, int a3)
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

uint64_t sub_188494694()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1884946D0(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1884946E8(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_18849473C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t CKSubscription.subscriptionID.getter()
{
  v1 = [v0 subscriptionID];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

void sub_18849484C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CKNotificationInfo.alertLocalizationArgs.setter(v4);
}

uint64_t CKNotificationInfo.alertLocalizationArgs.modify(uint64_t a1)
{
  sub_1883F72AC(a1);
  *v1 = sub_188494F98(v2, &selRef_alertLocalizationArgs);
  return sub_1883F7BCC();
}

void sub_18849490C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CKNotificationInfo.titleLocalizationArgs.setter(v4);
}

uint64_t CKNotificationInfo.titleLocalizationArgs.modify(uint64_t a1)
{
  sub_1883F72AC(a1);
  *v1 = sub_188494F98(v2, &selRef_titleLocalizationArgs);
  return sub_1883F7BCC();
}

uint64_t sub_1884949A8(uint64_t *a1, char a2, uint64_t (*a3)(uint64_t))
{
  v5 = *a1;
  v4 = a1[1];
  if ((a2 & 1) == 0)
  {
    return a3(*a1);
  }

  v6 = *a1;

  a3(v7);
}

void sub_188494A3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CKNotificationInfo.subtitleLocalizationArgs.setter(v4);
}

uint64_t CKNotificationInfo.subtitleLocalizationArgs.modify(uint64_t a1)
{
  sub_1883F72AC(a1);
  *v1 = sub_188494F98(v2, &selRef_subtitleLocalizationArgs);
  return sub_1883F7BCC();
}

void sub_188494AFC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;

  CKNotificationInfo.desiredKeys.setter(v4);
}

void sub_188494B34(uint64_t a1, SEL *a2)
{
  if (a1)
  {
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    isa = 0;
  }

  [v2 *a2];
}

uint64_t CKNotificationInfo.desiredKeys.modify(uint64_t a1)
{
  sub_1883F72AC(a1);
  *v1 = sub_188494F98(v2, &selRef_desiredKeys);
  return sub_1883F7BCC();
}

uint64_t sub_188494F98(void *a1, SEL *a2)
{
  v2 = [a1 *a2];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v4;
}

uint64_t (*CKSystemSharingUIObserver.systemSharingUIDidSaveShareBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 systemSharingUIDidSaveShareBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_188495208;
    *(v4 + 24) = v3;
    return sub_188495210;
  }

  return result;
}

uint64_t sub_188495088@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = CKSystemSharingUIObserver.systemSharingUIDidSaveShareBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_188495AA8;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884950F8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_188495A5C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKSystemSharingUIObserver.systemSharingUIDidSaveShareBlock.setter(v6, v5);
}

void sub_188495188(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    v7 = _convertErrorToNSError(_:)();
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  (*(a4 + 16))(a4, a1, a2);
}

uint64_t sub_188495210(uint64_t a1, uint64_t a2, char a3)
{
  v4 = a2;
  v5 = *(v3 + 16);
  v6 = *(v3 + 24);
  if (a3)
  {
    a2 = 0;
    v7 = v4;
  }

  else
  {
    v7 = 0;
  }

  return v5(a1, a2, v7);
}

void sub_188495254(uint64_t a1, void *a2, id a3, void (*a4)(uint64_t, id, uint64_t))
{
  if (a3)
  {
    v7 = a3;
    a4(a1, a3, 1);
    v8 = a3;

LABEL_4:

    return;
  }

  if (a2)
  {
    v10 = a2;
    a4(a1, a2, 0);
    v8 = v10;

    goto LABEL_4;
  }

  type metadata accessor for CKError(0);
  sub_188498E9C(MEMORY[0x1E69E7CC0]);
  sub_18847A4EC();
  _BridgedStoredNSError.init(_:userInfo:)();
  a4(a1, v11, 1);
}

void sub_1884953A4(uint64_t a1, void *a2, void *a3, void *a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  v11 = a2;
  v9 = a3;
  v10 = a4;
  v8(v11, a3, a4);
}

uint64_t (*CKSystemSharingUIObserver.systemSharingUIDidSaveShareBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKSystemSharingUIObserver.systemSharingUIDidSaveShareBlock.getter();
  a1[1] = v3;
  return sub_18849548C;
}

uint64_t (*CKSystemSharingUIObserver.systemSharingUIDidStopSharingBlock.getter())(uint64_t a1, uint64_t a2, char a3)
{
  result = [v0 systemSharingUIDidStopSharingBlock];
  if (result)
  {
    v2 = result;
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    sub_1883F8708();
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1884957EC;
    *(v4 + 24) = v3;
    return sub_1884957F4;
  }

  return result;
}

uint64_t sub_188495568@<X0>(uint64_t *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = *a1;
  result = CKSystemSharingUIObserver.systemSharingUIDidStopSharingBlock.getter();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v6;
    *(result + 24) = v7;
    v8 = sub_188495AEC;
  }

  else
  {
    v8 = 0;
  }

  *a2 = v8;
  a2[1] = result;
  return result;
}

id sub_1884955D8(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_188495AE8;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = *a2;
  sub_1883F5CC0(v3);
  return CKSystemSharingUIObserver.systemSharingUIDidStopSharingBlock.setter(v6, v5);
}

id CKSystemSharingUIObserver.systemSharingUIDidStopSharingBlock.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    sub_1883F8708();
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    sub_1883F71C0();
    v9[1] = 1107296256;
    v9[2] = sub_1884958B4;
    v9[3] = &unk_1EFA28BC0;
    v7 = _Block_copy(v9);

    [v3 setSystemSharingUIDidStopSharingBlock_];
    _Block_release(v7);
    return sub_1883F5BA0(a1);
  }

  else
  {

    return [v2 setSystemSharingUIDidStopSharingBlock_];
  }
}

void sub_18849577C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = _convertErrorToNSError(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

uint64_t sub_1884957F4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  if ((a3 & 1) == 0)
  {
    a2 = 0;
  }

  return v4(a1, a2);
}

void sub_188495824(uint64_t a1, id a2, void (*a3)(uint64_t, id, uint64_t))
{
  if (a2)
  {
    v6 = a2;
    a3(a1, a2, 1);
  }

  else
  {
    a3(a1, 0, 0);
  }
}

void sub_1884958B4(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(v8, a3);
}

uint64_t (*CKSystemSharingUIObserver.systemSharingUIDidStopSharingBlock.modify(uint64_t (**a1)(uint64_t a1, uint64_t a2, char a3)))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = CKSystemSharingUIObserver.systemSharingUIDidStopSharingBlock.getter();
  a1[1] = v3;
  return sub_188495988;
}

uint64_t sub_1884959C8(uint64_t *a1, char a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  if (a2)
  {
    v7 = sub_1883F7BC0();
    v14 = v8;
    v9(v7);
    v10 = sub_1883F7BC0();
    a3(v10);
    v11 = sub_1883F7BC0();

    return v14(v11);
  }

  else
  {
    v13 = sub_1883F7BC0();
    return (a3)(v13);
  }
}

uint64_t sub_188495A60(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v9 = a1;
  v7 = a2;
  v8 = a3 & 1;
  return v4(&v9, &v7);
}

uint64_t sub_188495AAC(void *a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2, *(a2 + 8));
}

void NSItemProvider.registerCKShare(container:allowedSharingOptions:preparationHandler:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = [a1 containerID];
  v10 = CKSharingContainerSupportsAdminParticipants(v7, v8, v9);

  if (v10)
  {
    [a2 setSupportAllowingAddedParticipantsToInviteOthers_];
  }

  v11 = CKContainerSetupInfoWithBundleIDOverridesForOOPUIFromContainer(a1);
  sub_1883F4C5C(0, &qword_1EA90DF90, off_1E70B9FC0);
  swift_getObjCClassFromMetadata();
  sub_1883F7B88();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  v34 = sub_188496644;
  v35 = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  v32 = sub_188495DC8;
  v33 = &unk_1EFA28CB0;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  v15 = sub_1883F9C90();
  [v15 v16];
  _Block_release(v13);
  sub_1883F4C5C(0, &qword_1EA90DF98, off_1E70BA0C0);
  swift_getObjCClassFromMetadata();
  sub_1883F7B88();
  v17 = swift_allocObject();
  *(v17 + 16) = v11;
  v34 = sub_188495E68;
  v35 = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  sub_1883F72B8();
  v32 = v18;
  v33 = &unk_1EFA28D00;
  v19 = _Block_copy(aBlock);
  v20 = v11;

  v21 = sub_1883F9C90();
  [v21 v22];
  _Block_release(v19);
  sub_1883F4C5C(0, &unk_1EA90DFA0, off_1E70BA588);
  swift_getObjCClassFromMetadata();
  v23 = swift_allocObject();
  v23[2] = a3;
  v23[3] = a4;
  v23[4] = v20;
  v23[5] = v14;
  v34 = sub_18849602C;
  v35 = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  sub_1883F72B8();
  v32 = v24;
  v33 = &unk_1EFA28D50;
  v25 = _Block_copy(aBlock);
  v26 = v14;
  v27 = v20;

  v28 = sub_1883F9C90();
  [v28 v29];
  _Block_release(v25);
}

id sub_188495DC8(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v6 = v3(sub_1884957EC, v5);

  return v6;
}

uint64_t sub_188495EA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v12 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v23 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_18844E6FC(&unk_1EA90E010, &qword_1886F9EE0);
  swift_allocObject();
  v17 = sub_18850105C(sub_18849643C, v16);
  v18 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v17;
  v19[5] = a3;
  v19[6] = a4;
  v19[7] = a5;
  v19[8] = a6;

  v20 = a5;
  v21 = a6;
  sub_188453610();

  return 0;
}

uint64_t sub_188496038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_188496060, 0, 0);
}

uint64_t sub_188496060()
{
  v2 = v0[2];
  v1 = v0[3];
  v0[7] = sub_1884FB764();
  v0[8] = v3;
  v8 = (v1 + *v1);
  v4 = v1[1];
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_188496158;
  v6 = v0[4];

  return v8();
}

uint64_t sub_188496158(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 72);
  v6 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v7 = sub_188496368;
  }

  else
  {
    *(v4 + 88) = a1;
    v7 = sub_188496280;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_188496280()
{
  v12 = v0;
  v1 = v0[11];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v5 = v0[6];
  sub_1883F4C5C(0, &unk_1EA90DFA0, off_1E70BA588);
  v6 = v1;
  v7 = sub_188493E58(v6, v4, v5);
  v10 = v7;
  v11 = 0;
  v3(&v10, &v11);

  v8 = v0[1];

  return v8();
}

uint64_t sub_188496368()
{
  v10 = v0;
  v1 = v0[10];
  v3 = v0[7];
  v2 = v0[8];
  v4 = _convertErrorToNSError(_:)();
  v5 = CKXPCSuitableError(v4);

  v8 = 0;
  v9 = v5;
  v3(&v8, &v9);

  v6 = v0[1];

  return v6();
}

uint64_t sub_18849643C(void *a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(*a1, *a2);
}

uint64_t sub_18849646C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_188496548;

  return sub_188496038(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_188496548()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t AuthenticatedSession.ResolvedUser.userRecordID.getter()
{
  v0 = type metadata accessor for AuthenticatedSession.ResolvedUser.ID();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = AuthenticatedSession.ResolvedUser.id.getter();
  v6 = MEMORY[0x18CFD4960](v5);
  v8 = v7;
  (*(v1 + 8))(v4, v0);
  sub_188496784();
  if (qword_1EA90C198 != -1)
  {
    swift_once();
  }

  v9 = qword_1EA90C1A0;
  v10._countAndFlagsBits = v6;
  v10._object = v8;
  return CKRecordID.init(recordName:zoneID:)(v10, v9);
}

unint64_t sub_188496784()
{
  result = qword_1EA90CA70;
  if (!qword_1EA90CA70)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90CA70);
  }

  return result;
}

id Session.codeService(configuration:)(void *a1)
{
  v2 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15 - v4;
  v6 = sub_1884A6844();
  v7 = MEMORY[0x18CFD5010](*a1, a1[1]);
  v8 = type metadata accessor for CKCodeServiceConfiguration();
  sub_188496924(a1 + *(v8 + 20), v5);
  v9 = type metadata accessor for URL();
  v11 = 0;
  if (sub_1883F971C(v5, 1, v9) != 1)
  {
    URL._bridgeToObjectiveC()(v10);
    v11 = v12;
    (*(*(v9 - 8) + 8))(v5, v9);
  }

  v13 = [v6 codeServiceWithName:v7 serviceInstanceURL:v11];

  return v13;
}

uint64_t sub_188496924(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CKCodeServiceConfiguration.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t CKCodeServiceConfiguration.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t CKCodeServiceConfiguration.serviceInstanceURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CKCodeServiceConfiguration() + 20);

  return sub_188496924(v3, a1);
}

uint64_t type metadata accessor for CKCodeServiceConfiguration()
{
  result = qword_1EA90E028;
  if (!qword_1EA90E028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t CKCodeServiceConfiguration.serviceInstanceURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for CKCodeServiceConfiguration() + 20);

  return sub_188496AF0(a1, v3);
}

uint64_t sub_188496AF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static CKCodeServiceConfiguration.standard(name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(type metadata accessor for CKCodeServiceConfiguration() + 20);
  v7 = type metadata accessor for URL();
  sub_1883F90F4(a3 + v6, 1, 1, v7);
  *a3 = a1;
  a3[1] = a2;
}

uint64_t sub_188496C18(uint64_t a1)
{
  v2 = sub_1884970F4(&qword_1EA90E040);

  return MEMORY[0x1EEDF4148](a1, v2);
}

uint64_t CKCodeServiceConfiguration.propertyDescriptions.getter()
{
  v28 = type metadata accessor for PropertyDescription();
  v1 = *(v28 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v28);
  sub_1883F7100();
  v27 = v5 - v4;
  v6 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v27 - v8;
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1883F7100();
  v15 = v14 - v13;
  v16 = type metadata accessor for OSLogPrivacy();
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  sub_1883F7100();
  sub_18844E6FC(&qword_1EA90E340, &qword_1886F9FF0);
  v18 = ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v1 + 72);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1886F7400;
  v21 = *v0;
  v20 = v0[1];
  v30 = MEMORY[0x1E69E6158];
  v29[0] = v21;
  v29[1] = v20;

  static OSLogPrivacy.public.getter();
  PropertyDescription.init(_:_:privacy:)();
  v22 = type metadata accessor for CKCodeServiceConfiguration();
  sub_188496924(v0 + *(v22 + 20), v9);
  if (sub_1883F971C(v9, 1, v10) == 1)
  {
    sub_18845C260(v9);
  }

  else
  {
    (*(v11 + 32))(v15, v9, v10);
    v30 = v10;
    v23 = sub_188403664(v29);
    (*(v11 + 16))(v23, v15, v10);
    static OSLogPrivacy.auto.getter();
    v24 = v27;
    PropertyDescription.init(_:_:privacy:)();
    sub_1884772EC();
    v19 = v25;
    (*(v11 + 8))(v15, v10);
    *(v19 + 16) = 2;
    (*(v2 + 32))(v19 + v18, v24, v28);
  }

  return v19;
}

void sub_188497020()
{
  sub_18849709C();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_18849709C()
{
  if (!qword_1EA90E038)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA90E038);
    }
  }
}

uint64_t sub_1884970F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CKCodeServiceConfiguration();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1884971A0(unint64_t *a1, void (*a2)(uint64_t))
{
  v3 = *v2;
  sub_188498AF0(a1, a2);
  dispatch thunk of Session.anyContainer.getter();
  type metadata accessor for CloudCoreContainer();
  return swift_dynamicCastClassUnconditional();
}

uint64_t Session.shareParticipant(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_188497240()
{
  sub_1883F78E0();
  v1 = v0[3];
  sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
  v2 = swift_allocObject();
  v0[7] = v2;
  *(v2 + 16) = xmmword_1886F79A0;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  sub_18840376C(v4);

  return Session.shareParticipants(for:)(v2, v5, v6);
}

uint64_t sub_188497314()
{
  sub_1883F78E0();
  sub_1883F8740();
  v4 = v3;
  sub_1883F7B78();
  *v5 = v4;
  v7 = *(v6 + 64);
  v8 = *v2;
  sub_1883F7110();
  *v9 = v8;
  v4[9] = v0;

  if (!v0)
  {
    v10 = v4[7];

    v4[10] = v1;
  }

  sub_1883F9BB4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_188497420()
{
  sub_1883F653C();
  v4 = v2[10];
  v5 = sub_1883F8230();
  sub_18847E4C4(v5, v6);
  sub_1883FECC4();
  if (v3)
  {
    if ((v0 & 1) == 0)
    {
      sub_18840AFBC();
      sub_1883FA3A0();

      __asm { BRAA            X2, X16 }
    }

    v2[2] = v1;
    sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    swift_willThrowTypedImpl();
  }

  else
  {
    v7 = v2[3];
    sub_1883F79A0();

    sub_1883F7C58();
    v8 = [v7 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1883FEA58();

    sub_18841477C(v9, v10, v11, v12, v13, v14, v15, v16, v21, v22, v23);
    sub_188400810();
  }

  sub_1883F816C();
  sub_1883FA3A0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_188497550()
{
  sub_1883F7120();
  v1 = *(v0 + 56);

  v2 = *(v0 + 72);
  sub_1883F816C();

  return v3();
}

uint64_t Session.shareParticipants(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1883F7178();
}

uint64_t sub_1884975C4()
{
  sub_1883F7120();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v0[6] = sub_1884A6844();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v5 = sub_1883FE628(v4);

  return CKContainer.shareParticipants(for:)(v5);
}

uint64_t sub_188497660()
{
  sub_1883F78E0();
  sub_1883F8740();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_1883F9BB4();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = sub_188405534();

    return v13(v12);
  }
}

uint64_t Session.shareMetadata(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  return sub_1883F7178();
}

uint64_t sub_1884977A0()
{
  v1 = v0[3];
  sub_18844E6FC(&qword_1EA90E048, &qword_1886F9FA8);
  v2 = type metadata accessor for URL();
  v0[7] = v2;
  v3 = *(v2 - 8);
  v4 = *(v3 + 72);
  v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[8] = v6;
  *(v6 + 16) = xmmword_1886F7400;
  (*(v3 + 16))(v6 + v5, v1, v2);
  v7 = swift_task_alloc();
  v0[9] = v7;
  *v7 = v0;
  sub_18840376C(v7);

  return Session.shareMetadatas(for:)(v6, v8, v9);
}

uint64_t sub_1884978F8()
{
  sub_1883F78E0();
  sub_1883F8740();
  v4 = v3;
  sub_1883F7B78();
  *v5 = v4;
  v7 = *(v6 + 72);
  v8 = *v2;
  sub_1883F7110();
  *v9 = v8;
  v4[10] = v0;

  if (!v0)
  {
    v10 = v4[8];

    v4[11] = v1;
  }

  sub_1883F9BB4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_188497A04()
{
  sub_1883F653C();
  v4 = v2[11];
  v5 = sub_1883F8230();
  sub_18847E4F0(v5, v6);
  sub_1883FECC4();
  if (v3)
  {
    if ((v0 & 1) == 0)
    {
      sub_18840AFBC();
      sub_1883FA3A0();

      __asm { BRAA            X2, X16 }
    }

    v2[2] = v1;
    sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    swift_willThrowTypedImpl();
  }

  else
  {
    v7 = v2[7];
    v8 = v2[3];
    sub_1883F79A0();

    sub_1883F7C58();
    sub_188498AF0(&qword_1EA90E050, MEMORY[0x1E6968FB0]);
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x18CFD5140](v9);

    sub_18841477C(v10, v11, v12, v13, v14, v15, v16, v17, v22, v23, v24);
    sub_188400810();
  }

  sub_1883F816C();
  sub_1883FA3A0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_188497B58()
{
  sub_1883F7120();
  v1 = *(v0 + 64);

  v2 = *(v0 + 80);
  sub_1883F816C();

  return v3();
}

uint64_t Session.shareMetadatas(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return sub_1883F7178();
}

uint64_t sub_188497BCC()
{
  sub_1883F7120();
  v1 = v0[4];
  v2 = v0[5];
  v3 = v0[3];
  v0[6] = sub_1884A6844();
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v5 = sub_1883FE628(v4);

  return CKContainer.shareMetadatas(for:)(v5);
}

uint64_t sub_188497C68()
{
  sub_1883F78E0();
  sub_1883F8740();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 56);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 64) = v0;

  if (v0)
  {
    sub_1883F9BB4();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = sub_188405534();

    return v13(v12);
  }
}

uint64_t sub_188497D90()
{
  sub_1883F7120();

  sub_1883F816C();
  v2 = *(v0 + 64);

  return v1();
}

uint64_t Session.shareMetadatas(for:invitationTokensByShareURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return sub_1883F7178();
}

uint64_t sub_188497E08()
{
  sub_1883F7120();
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v0[7] = sub_1884A6844();
  v4 = swift_task_alloc();
  v0[8] = v4;
  *v4 = v0;
  v4[1] = sub_188497EB0;
  v6 = v0[2];
  v5 = v0[3];

  return CKContainer.shareMetadatas(for:invitationTokensByShareURL:)(v6, v5);
}

uint64_t sub_188497EB0()
{
  sub_1883F78E0();
  sub_1883F8740();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 64);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 72) = v0;

  if (v0)
  {
    sub_1883F9BB4();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = sub_188405534();

    return v13(v12);
  }
}

uint64_t sub_188497FD8()
{
  sub_1883F7120();

  sub_1883F816C();
  v2 = *(v0 + 72);

  return v1();
}

uint64_t AuthenticatedSession.accept(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return sub_1883F7178();
}

{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_188498048()
{
  sub_1883F78E0();
  v1 = v0[3];
  sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_1886F79A0;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v5 = sub_1883F97C0(v4);

  return AuthenticatedSession.accept(_:)(v5);
}

uint64_t sub_188498118()
{
  sub_1883F78E0();
  sub_1883F8740();
  v4 = v3;
  sub_1883F7B78();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *v2;
  sub_1883F7110();
  *v9 = v8;
  v4[7] = v0;

  if (!v0)
  {
    v10 = v4[5];

    v4[8] = v1;
  }

  sub_1883F9BB4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_188498224()
{
  sub_1883F653C();
  v4 = v2[8];
  v5 = sub_1883F8230();
  sub_18847E53C(v5, v6);
  sub_1883FECC4();
  if (v3)
  {
    if ((v0 & 1) == 0)
    {
      sub_18840AFBC();
      sub_1883FA3A0();

      __asm { BRAA            X2, X16 }
    }

    v2[2] = v1;
    sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
    swift_willThrowTypedImpl();
  }

  else
  {
    v7 = v2[3];
    sub_1883F79A0();

    sub_1883F7C58();
    v8 = [v7 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1883FEA58();

    sub_18841477C(v9, v10, v11, v12, v13, v14, v15, v16, v21, v22, v23);
    sub_188400810();
  }

  sub_1883F816C();
  sub_1883FA3A0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_188498354()
{
  sub_1883F7120();
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);
  sub_1883F816C();

  return v3();
}

uint64_t sub_1884983C4()
{
  sub_1883F7120();
  v1 = v0[3];
  sub_1883F8E54();
  v0[4] = sub_1884971A0(v2, v3);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v5 = sub_1883FE628(v4);

  return CKContainer.accept(_:)(v5);
}

uint64_t sub_18849847C()
{
  sub_1883F78E0();
  sub_1883F8740();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_1883F9BB4();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = sub_188405534();

    return v13(v12);
  }
}

uint64_t sub_1884985A4()
{
  sub_1883F7120();

  sub_1883F816C();
  v2 = *(v0 + 48);

  return v1();
}

uint64_t AuthenticatedSession.decline(_:)(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return sub_1883F7178();
}

{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return sub_1883F7178();
}

uint64_t sub_188498614()
{
  sub_1883F78E0();
  v1 = v0[3];
  sub_18844E6FC(&qword_1EA90D4F8, &qword_1886F7F20);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = xmmword_1886F79A0;
  *(v2 + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v5 = sub_1883F97C0(v4);

  return AuthenticatedSession.decline(_:)(v5);
}

uint64_t sub_1884986E4()
{
  sub_1883F78E0();
  sub_1883F8740();
  v4 = v3;
  sub_1883F7B78();
  *v5 = v4;
  v7 = *(v6 + 48);
  v8 = *v2;
  sub_1883F7110();
  *v9 = v8;
  v4[7] = v0;

  if (!v0)
  {
    v10 = v4[5];

    v4[8] = v1;
  }

  sub_1883F9BB4();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

void sub_1884987F0()
{
  sub_1883F653C();
  v4 = v2[8];
  v5 = sub_1883F8230();
  sub_18847E568(v5, v6);
  sub_1883FECC4();
  if (v3)
  {
    if (v0)
    {
      v2[2] = v1;
      sub_18844E6FC(&qword_1EA90E3D0, &qword_1886F75C0);
      swift_willThrowTypedImpl();
    }
  }

  else
  {
    v7 = v2[3];
    sub_1883F79A0();

    sub_1883F7C58();
    v8 = [v7 description];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    sub_1883FEA58();

    sub_18841477C(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20, v21);
    sub_188400810();
  }

  sub_1883F816C();
  sub_1883FA3A0();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_188498910()
{
  sub_1883F7120();
  v1 = v0[3];
  sub_1883F8E54();
  v0[4] = sub_1884971A0(v2, v3);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v5 = sub_1883FE628(v4);

  return CKContainer.decline(_:)(v5);
}

uint64_t sub_1884989C8()
{
  sub_1883F78E0();
  sub_1883F8740();
  v3 = v2;
  sub_1883F7B78();
  *v4 = v3;
  v6 = *(v5 + 40);
  v7 = *v1;
  sub_1883F7110();
  *v8 = v7;
  *(v3 + 48) = v0;

  if (v0)
  {
    sub_1883F9BB4();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = sub_188405534();

    return v13(v12);
  }
}

uint64_t sub_188498AF0(unint64_t *a1, void (*a2)(uint64_t))
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

id AnonymousSession.publicCloudDatabase.getter()
{
  v0 = sub_18849716C();
  v1 = [v0 publicCloudDatabase];

  return v1;
}

id AuthenticatedSession.database(configuration:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_188497138();
  v3 = [v2 options];

  [v3 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_188498C74();
  swift_dynamicCast();
  v4 = sub_188497138();
  v5 = sub_1884A6888(v8);

  v6 = [v5 databaseWithDatabaseScope_];
  return v6;
}

unint64_t sub_188498C74()
{
  result = qword_1EA90C180;
  if (!qword_1EA90C180)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA90C180);
  }

  return result;
}

uint64_t CKDatabase.codeService(configuration:)(void *a1)
{
  v2 = v1;
  v4 = sub_18844E6FC(&qword_1EA90D240, &qword_1886F70B0);
  v5 = *(*(v4 - 8) + 64);
  *&v6 = MEMORY[0x1EEE9AC00](v4 - 8).n128_u64[0];
  v8 = v20 - v7;
  v9 = [v2 container];
  if (v9)
  {
    v10 = v9;
    v11 = MEMORY[0x18CFD5010](*a1, a1[1]);
    v12 = [v2 databaseScope];
    v13 = type metadata accessor for CKCodeServiceConfiguration();
    sub_188499068(a1 + *(v13 + 20), v8, &qword_1EA90D240, &qword_1886F70B0);
    v14 = type metadata accessor for URL();
    v16 = 0;
    if (sub_1883F971C(v8, 1, v14) != 1)
    {
      URL._bridgeToObjectiveC()(v15);
      v16 = v17;
      (*(*(v14 - 8) + 8))(v8, v14);
    }

    v18 = [v10 codeServiceWithName:v11 databaseScope:v12 serviceInstanceURL:v16];

    return v18;
  }

  else
  {
    type metadata accessor for CKError(0);
    v20[1] = 170;
    sub_188498E9C(MEMORY[0x1E69E7CC0]);
    sub_18847A4EC();
    _BridgedStoredNSError.init(_:userInfo:)();
    return swift_willThrow();
  }
}

unint64_t sub_188498E9C(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CC8];
LABEL_9:

    return v3;
  }

  sub_18844E6FC(&qword_1EA90D888, &unk_1886F89D0);
  v2 = static _DictionaryStorage.allocate(capacity:)();
  v3 = v2;
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_9;
  }

  v5 = v2 + 64;
  v6 = a1 + 32;

  while (1)
  {
    sub_188499068(v6, &v15, &qword_1EA90E060, &qword_1886F9FE8);
    v7 = v15;
    v8 = v16;
    result = sub_188498FF0(v15, v16);
    if (v10)
    {
      break;
    }

    *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    v11 = (v3[6] + 16 * result);
    *v11 = v7;
    v11[1] = v8;
    result = sub_188419138(&v17, (v3[7] + 32 * result));
    v12 = v3[2];
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      goto LABEL_12;
    }

    v3[2] = v14;
    v6 += 48;
    if (!--v4)
    {

      return v3;
    }
  }

  __break(1u);
LABEL_12:
  __break(1u);
  return result;
}

unint64_t sub_188498FF0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_1884191CC(a1, a2, v6);
}

uint64_t sub_188499068(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_18844E6FC(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_188499108(uint64_t a1)
{
  v2 = sub_188499334();

  return MEMORY[0x1EEDF4148](a1, v2);
}

uint64_t CKDatabaseConfiguration.propertyDescriptions.getter()
{
  v1 = type metadata accessor for OSLogPrivacy();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = *v0;
  sub_18844E6FC(&qword_1EA90E340, &qword_1886F9FF0);
  v4 = *(type metadata accessor for PropertyDescription() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1886F7400;
  type metadata accessor for Scope(0);
  static OSLogPrivacy.public.getter();
  PropertyDescription.init(_:_:privacy:)();
  return v7;
}

unint64_t sub_188499284()
{
  result = qword_1EA90E068;
  if (!qword_1EA90E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E068);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CKDatabaseConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CKDatabaseConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

unint64_t sub_188499334()
{
  result = qword_1EA90E070;
  if (!qword_1EA90E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E070);
  }

  return result;
}

uint64_t CKSessionAcquiredInfo.anySessionAcquiredInfo.getter()
{
  v1 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_188445B70(v0 + v1, v3);
  sub_18844E6FC(&unk_1EA90E078, &unk_1886FA090);
  type metadata accessor for AnySessionAcquiredInfo();
  return swift_dynamicCast();
}

uint64_t sub_18849941C(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for AnySessionAcquiredInfo();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, a1, v6);
  v10 = *a2;
  return CKSessionAcquiredInfo.anySessionAcquiredInfo.setter(v8);
}

uint64_t CKSessionAcquiredInfo.anySessionAcquiredInfo.setter(uint64_t a1)
{
  v6 = type metadata accessor for AnySessionAcquiredInfo();
  v7 = sub_1883F7C70(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = sub_1883F9240(v12, v18);
  v4(v13);
  v20 = v2;
  v21 = sub_1883F8854(&qword_1EA90C4C0);
  v22 = sub_1883F9CA4(&qword_1EA90C4D0);
  v23 = sub_1883F72CC(&qword_1EA90C4C8);
  v14 = sub_188403664(&v19);
  (v4)(v14, v3, v2);
  v15 = *(v9 + 8);
  v15(a1, v2);
  v15(v3, v2);
  v16 = OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped;
  swift_beginAccess();
  sub_1883FE944((v1 + v16));
  sub_188499B68(&v19, v1 + v16);
  return swift_endAccess();
}

void (*CKSessionAcquiredInfo.anySessionAcquiredInfo.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = sub_188470D2C(0x28uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = type metadata accessor for AnySessionAcquiredInfo();
  v3[1] = v4;
  v5 = *(v4 - 8);
  v3[2] = v5;
  v6 = *(v5 + 64);
  v3[3] = sub_188470D2C(v6);
  v3[4] = sub_188470D2C(v6);
  CKSessionAcquiredInfo.anySessionAcquiredInfo.getter();
  return sub_188499718;
}

void sub_188499718(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  if (a2)
  {
    v5 = v2[1];
    v6 = v2[2];
    v7 = *v2;
    (*(v6 + 16))((*a1)[3], v4, v5);
    CKSessionAcquiredInfo.anySessionAcquiredInfo.setter(v3);
    (*(v6 + 8))(v4, v5);
  }

  else
  {
    v8 = *v2;
    CKSessionAcquiredInfo.anySessionAcquiredInfo.setter((*a1)[4]);
  }

  free(v4);
  free(v3);

  free(v2);
}

id CKSessionAcquiredInfo.init(_:)(uint64_t a1)
{
  v6 = type metadata accessor for AnySessionAcquiredInfo();
  v7 = sub_1883F7C70(v6);
  v9 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v13 = sub_1883F9240(v12, v18);
  v4(v13);
  v21 = v2;
  v22 = sub_1883F8854(&qword_1EA90C4C0);
  v23 = sub_1883F9CA4(&qword_1EA90C4D0);
  v24 = sub_1883F72CC(&qword_1EA90C4C8);
  v14 = sub_188403664(v20);
  (v4)(v14, v3, v2);
  sub_188445B70(v20, v1 + OBJC_IVAR____TtC8CloudKit17CKSecureCodingBox_wrapped);
  v19.receiver = v1;
  v19.super_class = type metadata accessor for CKSecureCodingBox();
  v15 = objc_msgSendSuper2(&v19, sel_init);
  sub_1883FE944(v20);
  v16 = *(v9 + 8);
  v16(a1, v2);
  v16(v3, v2);
  return v15;
}

id CKSessionAcquiredInfo.init(coder:)(void *a1)
{
  v2 = type metadata accessor for AnySessionAcquiredInfo();
  v3 = sub_1883F8854(&qword_1EA90C4C0);
  v4 = sub_1883F9CA4(&qword_1EA90C4D0);
  v5 = sub_1883F72CC(&qword_1EA90C4C8);

  return CKSecureCodingBox.init(coder:wrappedType:)(a1, v2, v3, v4, v5);
}

id CKSessionAcquiredInfo.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_188499B68(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  *(a2 + 48) = *(a1 + 6);
  *(a2 + 16) = v3;
  *(a2 + 32) = v4;
  *a2 = v2;
  return a2;
}

void sub_188499C08()
{
  sub_1883F8AF0();
  v1 = v0;
  v3 = v2;
  v120 = v5;
  v121 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_18844E6FC(&qword_1EA90E0D0, &qword_1886FA1A0);
  sub_1883F8AE4(v10);
  v12 = *(v11 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v13);
  sub_188403780();
  v102 = v14;
  sub_1883FEC2C();
  v113 = type metadata accessor for UUID();
  v15 = sub_1883F70DC(v113);
  v103 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1883F7100();
  v101 = v20 - v19;
  sub_1883FEC2C();
  v21 = type metadata accessor for SessionID();
  v22 = sub_1883F70DC(v21);
  v24 = v23;
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v22);
  sub_1883F7100();
  v99 = v28 - v27;
  sub_1883FEC2C();
  v29 = type metadata accessor for Logger();
  v30 = sub_1883F70DC(v29);
  v106 = v31;
  v107 = v30;
  v33 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v30);
  sub_1883F7100();
  v104 = v35 - v34;
  v36 = sub_1883FEC2C();
  v37 = _s5StateOMa(v36);
  v38 = sub_1883F7158(v37);
  v40 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v38);
  sub_1883F926C();
  v111 = v41;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v97 - v43;
  v45 = (v0 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex);
  v119 = v46;
  swift_storeEnumTagMultiPayload();
  *v45 = 0;
  v105 = sub_18844E6FC(&qword_1EA90E090, &qword_1886FA110);
  v47 = *(v105 + 28);
  v48 = sub_18844E6FC(&qword_1EA90E0D8, &qword_1886FA1A8);
  sub_1883F8AE4(v48);
  bzero(v45 + v47, *(v49 + 64));
  v100 = v44;
  sub_18849DF54(v44, v45 + v47);
  v50 = OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_acquisitionStreamContinuation;
  v51 = sub_18844E6FC(&qword_1EA90E0C8, &unk_1886FA6C0);
  v110 = *(v51 - 8);
  (*(v110 + 16))(v1 + v50, v121, v51);
  v118 = v24;
  v98 = *(v24 + 16);
  v98(v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionID, v9, v21);
  v52 = OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionConfiguration;
  v53 = type metadata accessor for AnySessionConfiguration();
  v108 = *(v53 - 8);
  v109 = v53;
  v54 = *(v108 + 16);
  v115 = v7;
  v54(v1 + v52, v7);
  sub_18847E0A0(v120, v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_previousInvalidationContext, &unk_1EA90E170, &qword_1886FA450);
  *(v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_testDeviceReferenceProtocol) = v3;
  sub_18844E6FC(&unk_1EA90E0E0, &unk_1886FA1B0);
  v122 = 0;
  v123 = 0xE000000000000000;
  v114 = v3;
  swift_unknownObjectRetain();
  _StringGuts.grow(_:)(23);
  sub_1883F7C88();
  sub_18849DEB0(v55, v56);
  v116 = v9;
  v117 = v21;
  v57 = dispatch thunk of CustomStringConvertible.description.getter();
  v59 = v58;

  v122 = v57;
  v123 = v59;
  MEMORY[0x18CFD5140](0xD000000000000015, 0x8000000188700460);
  *(v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_daemonErrorBackoff) = ExponentialBackoff<>.init(label:backoffCountBeforeDelay:initialEnforcedDelay:maximumEnforcedDelay:tolerance:)();
  swift_allocObject();
  swift_weakInit();
  v112 = v51;
  v60 = v104;
  CloudCoreThrowingStream.Continuation.onTermination.setter();
  CCLog.getter();

  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v122 = v64;
    *v63 = 136315138;
    v65 = v99;
    v66 = v117;
    v98(v99, v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionID, v117);
    v67 = dispatch thunk of CustomStringConvertible.description.getter();
    v69 = v68;
    (*(v118 + 8))(v65, v66);
    v70 = sub_1883FE340(v67, v69, &v122);

    *(v63 + 4) = v70;
    _os_log_impl(&dword_1883EA000, v61, v62, "%s: starting acquisition", v63, 0xCu);
    sub_1883FE944(v64);
    sub_1883F7B60();
    sub_1883F7B60();

    (*(v106 + 8))(v60, v107);
  }

  else
  {

    (*(v106 + 8))(v60, v107);
    v66 = v117;
  }

  v71 = (v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex));
  v72 = *(v105 + 28);
  v73 = v111;
  sub_18849DDF8(v71 + v72, v111);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v75 = v118;
  if (EnumCaseMultiPayload == 3)
  {
    goto LABEL_7;
  }

  v106 = v72;
  v107 = v71;
  if (EnumCaseMultiPayload == 2)
  {

    v76 = v101;
    UUID.init()();
    sub_18849A920();
    v78 = v77;
    v79 = _s5StateO17ListeningToDaemonVMa(0);
    v80 = v103;
    v81 = v100;
    (*(v103 + 16))(v100 + v79[5], v76, v113);
    type metadata accessor for SessionReadinessError();
    v82 = v102;
    sub_1883F9A2C();
    sub_1883F90F4(v83, v84, v85, v86);
    v87 = v79[6];
    sub_1883F9A2C();
    sub_1883F90F4(v88, v89, v90, v91);
    v92 = v79[7];
    *v81 = v78;

    sub_18849DFC0(v82, v81 + v87);
    *(v81 + v92) = 0;
    swift_storeEnumTagMultiPayload();
    v71 = v107;
    sub_1884A0838(v81);

    (*(v80 + 8))(v76, v113);
    sub_18849DEF8(v81);

    v66 = v117;
LABEL_7:
    os_unfair_lock_unlock(v71);
    swift_unknownObjectRelease();
    sub_18845B1B0(v120, &unk_1EA90E170, &qword_1886FA450);
    (*(v108 + 8))(v115, v109);
    (*(v75 + 8))(v116, v66);
    (*(v110 + 8))(v121, v112);
    sub_1883F8178();
    return;
  }

  v122 = 0;
  v123 = 0xE000000000000000;

  _StringGuts.grow(_:)(36);
  sub_1883FF5E4();
  MEMORY[0x18CFD5140](0xD00000000000002DLL, 0x80000001887004A0);
  sub_1883FF5E4();
  v93 = v107;
  _print_unlocked<A, B>(_:_:)();
  v94 = v122;
  v95 = v123;
  sub_18849DE5C();
  swift_willThrowTypedImpl();
  sub_18849DEF8(v73);
  swift_allocError();
  *v96 = v94;
  v96[1] = v95;

  os_unfair_lock_unlock(v93);
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_18849A554()
{
  v0 = _s5StateOMa(0);
  v1 = *(*(v0 - 8) + 64);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v28[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = type metadata accessor for SessionID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v28[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    v33 = v5;
    v34 = v10;
    CCLog.getter();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v30 = v18;
      v32 = swift_slowAlloc();
      v35 = v32;
      *v18 = 136315138;
      v19 = v33;
      (*(v33 + 16))(v8, v15 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionID, v4);
      sub_18849DEB0(&qword_1EA90C2E0, MEMORY[0x1E69948C8]);
      v29 = v17;
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      v31 = v9;
      v22 = v21;
      (*(v19 + 8))(v8, v4);
      v23 = sub_1883FE340(v20, v22, &v35);

      v24 = v30;
      *(v30 + 1) = v23;
      _os_log_impl(&dword_1883EA000, v16, v29, "%s: cancelling acquisition due to continuation termination", v24, 0xCu);
      v25 = v32;
      sub_1883FE944(v32);
      MEMORY[0x18CFD7E80](v25, -1, -1);
      MEMORY[0x18CFD7E80](v24, -1, -1);

      (*(v34 + 8))(v13, v31);
    }

    else
    {

      (*(v34 + 8))(v13, v9);
    }

    v26 = (v15 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex);
    os_unfair_lock_lock((v15 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex));
    v27 = *(sub_18844E6FC(&qword_1EA90E090, &qword_1886FA110) + 28);
    swift_storeEnumTagMultiPayload();
    sub_1884A0838(v3);
    sub_18849DEF8(v3);
    os_unfair_lock_unlock(v26);
  }

  return result;
}

void sub_18849A920()
{
  sub_1883F8AF0();
  v1 = v0;
  v66 = v2;
  v3 = type metadata accessor for UUID();
  v4 = sub_1883F70DC(v3);
  v69 = v5;
  v70 = v4;
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v65 = v8;
  v68 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_18844E6FC(&qword_1EA90E6A0, &qword_1886F7030);
  sub_1883F8AE4(v9);
  v11 = *(v10 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v12);
  sub_188403780();
  v67 = v13;
  sub_1883FEC2C();
  v64 = type metadata accessor for AnySessionConfiguration();
  v14 = sub_1883F70DC(v64);
  v62 = v15;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v14);
  sub_1883F7100();
  v63 = v19 - v18;
  sub_1883FEC2C();
  v61 = type metadata accessor for SessionID();
  v20 = sub_1883F70DC(v61);
  v22 = v21;
  v24 = *(v23 + 64);
  MEMORY[0x1EEE9AC00](v20);
  sub_1883F7100();
  v27 = v26 - v25;
  v28 = sub_18844E6FC(&unk_1EA90E170, &qword_1886FA450);
  sub_1883F8AE4(v28);
  v30 = *(v29 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v61 - v32;
  v34 = type metadata accessor for SessionInvalidationContext();
  v35 = sub_1883F70DC(v34);
  v37 = v36;
  v39 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v35);
  v41 = &v61 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v61 - v43;
  sub_18847E0A0(v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_previousInvalidationContext, v33, &unk_1EA90E170, &qword_1886FA450);
  if (sub_1883F971C(v33, 1, v34) == 1)
  {
    sub_18845B1B0(v33, &unk_1EA90E170, &qword_1886FA450);
    v45 = 0;
  }

  else
  {
    (*(v37 + 32))(v44, v33, v34);
    (*(v37 + 16))(v41, v44, v34);
    v46 = objc_allocWithZone(type metadata accessor for CKSessionInvalidationContext());
    v45 = CKSessionInvalidationContext.init(_:)(v41);
    (*(v37 + 8))(v44, v34);
  }

  (*(v22 + 16))(v27, v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionID, v61);
  v47 = objc_allocWithZone(type metadata accessor for CKSessionID());
  v48 = CKSessionID.init(_:)(v27);
  v49 = v63;
  (*(v62 + 16))(v63, v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionConfiguration, v64);
  v50 = objc_allocWithZone(type metadata accessor for CKSessionConfiguration());
  v51 = CKSessionConfiguration.init(_:)(v49);
  v52 = [objc_allocWithZone(CKSessionAcquisitionSetupInfo) initWithCKSessionID:v48 ckSessionConfiguration:v51 ckPreviousSessionInvalidationContext:v45 testDeviceReferenceProtocol:*(v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_testDeviceReferenceProtocol)];

  v53 = type metadata accessor for TaskPriority();
  sub_1883F90F4(v67, 1, 1, v53);
  v55 = v68;
  v54 = v69;
  v56 = v70;
  (*(v69 + 16))(v68, v66, v70);
  v57 = (*(v54 + 80) + 40) & ~*(v54 + 80);
  v58 = (v65 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  *(v59 + 2) = 0;
  *(v59 + 3) = 0;
  *(v59 + 4) = v1;
  (*(v54 + 32))(&v59[v57], v55, v56);
  *&v59[v58] = v52;

  v60 = v52;
  sub_188453610();

  sub_1883F8178();
}

uint64_t sub_18849AE24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_18849AE48, 0, 0);
}

uint64_t sub_18849AE48()
{
  sub_1883F78E0();
  v1 = *(v0 + 32);
  v2 = OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_daemonErrorBackoff;
  v3 = swift_task_alloc();
  v4 = *(v0 + 16);
  v5 = *(*(v0 + 16) + v2);
  *(v0 + 40) = v3;
  *(v3 + 16) = v4;
  *(v3 + 32) = v1;
  v6 = *(MEMORY[0x1E69947D8] + 4);
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  v8 = sub_18844E6FC(&qword_1EA90E0F0, &qword_1886F7090);
  *v7 = v0;
  v7[1] = sub_18849AF4C;

  return MEMORY[0x1EEDF4130](v0 + 56, 0, 0, &unk_1886FA1D8, v3, v8);
}

uint64_t sub_18849AF4C()
{
  sub_1883F78E0();
  v2 = *v1;
  v3 = *(*v1 + 48);
  v4 = *v1;
  sub_1883F7110();
  *v5 = v4;

  v6 = *(v2 + 40);
  if (v0)
  {

    v7 = sub_18849E5BC;
  }

  else
  {

    v7 = sub_1883F9CC8;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_18849B088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_18849B0AC, 0, 0);
}

uint64_t sub_18849B0AC()
{
  sub_1883F78E0();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v1;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  v5 = sub_18844E6FC(&qword_1EA90E0F0, &qword_1886F7090);
  *v4 = v0;
  v4[1] = sub_18849B1B8;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0xD00000000000001ALL, 0x80000001887004F0, sub_18849E2DC, v2, v5);
}

uint64_t sub_18849B1B8()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *v0;
  sub_1883F7110();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5();
}

void sub_18849B2C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v63 = a4;
  v55 = a1;
  v59 = sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  v66 = *(v59 - 8);
  v65 = *(v66 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v46 = &v45 - v9;
  v11 = type metadata accessor for UUID();
  v67 = *(v11 - 8);
  v64 = *(v67 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v60 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v45 - v15;
  v19 = v17 + 16;
  v18 = *(v17 + 16);
  v53 = a3;
  v47 = v11;
  v18(&v45 - v15, a3, v11, v14);
  v54 = v18;
  v56 = v19;
  v20 = objc_allocWithZone(type metadata accessor for CKSessionAcquirerXPCProxy());

  v57 = a2;
  v48 = v16;
  v61 = sub_1884A15F0(v21, v16);
  v51 = swift_allocObject();
  swift_weakInit();
  v22 = v66;
  v52 = *(v66 + 16);
  v23 = a1;
  v24 = v59;
  v52(v10, v23, v59);
  (v18)(v16, a3, v11);
  v25 = *(v22 + 80);
  v26 = v22;
  v27 = (v25 + 16) & ~v25;
  v28 = (v65 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v67 + 80);
  v30 = (v29 + v28 + 8) & ~v29;
  v50 = v25 | v29;
  v31 = swift_allocObject();
  v49 = *(v26 + 32);
  v66 = v26 + 32;
  v49(v31 + v27, v46, v24);
  v58 = v31;
  *(v31 + v28) = v51;
  v32 = *(v67 + 32);
  v67 += 32;
  v33 = v47;
  v32(v31 + v30, v48, v47);
  v34 = v62;
  v52(v62, v55, v24);
  v35 = v60;
  v54(v60, v53, v33);
  v36 = (v25 + 24) & ~v25;
  v37 = (v65 + v29 + v36) & ~v29;
  v38 = swift_allocObject();
  *(v38 + 16) = v57;
  v49(v38 + v36, v34, v24);
  v32(v38 + v37, v35, v33);
  v39 = objc_opt_self();

  v40 = v61;

  v41 = [v39 sharedXPCConnection];
  v42 = swift_allocObject();
  v43 = v58;
  *(v42 + 16) = sub_18849E2E8;
  *(v42 + 24) = v43;
  *(v42 + 32) = 0;
  *(v42 + 40) = sub_18849E3BC;
  *(v42 + 48) = v38;
  aBlock[4] = sub_18849E494;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18849CCDC;
  aBlock[3] = &unk_1EFA28F38;
  v44 = _Block_copy(aBlock);

  [v41 getSessionAcquisitionDaemonProxyCreatorForSessionAcquisitionSetupInfo:v63 exportedProxy:v40 synchronous:0 completionHandler:v44];
  _Block_release(v44);
}

uint64_t sub_18849B830(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for SessionID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Logger();
  v43 = *(v12 - 8);
  v13 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static Task<>.isCancelled.getter() & 1) != 0 || (swift_beginAccess(), (Strong = swift_weakLoadStrong()) == 0))
  {
    LOBYTE(v44) = 0;
    sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  }

  else
  {
    v17 = Strong;
    v42 = a2;
    CCLog.getter();

    v18 = a1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v41 = a4;
      v22 = v21;
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v44 = v40;
      *v22 = 136315394;
      (*(v8 + 16))(v11, v17 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionID, v7);
      sub_18849DEB0(&qword_1EA90C2E0, MEMORY[0x1E69948C8]);
      v38 = v20;
      v23 = dispatch thunk of CustomStringConvertible.description.getter();
      v37 = v19;
      v25 = v24;
      (*(v8 + 8))(v11, v7);
      v26 = sub_1883FE340(v23, v25, &v44);

      *(v22 + 4) = v26;
      *(v22 + 12) = 2112;
      v27 = a1;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v22 + 14) = v28;
      v29 = v39;
      *v39 = v28;
      v30 = v37;
      _os_log_impl(&dword_1883EA000, v37, v38, "%s: daemon error while acquiring session: %@", v22, 0x16u);
      sub_18845B1B0(v29, &qword_1EA90DC70, &unk_1886FA190);
      MEMORY[0x18CFD7E80](v29, -1, -1);
      v31 = v40;
      sub_1883FE944(v40);
      MEMORY[0x18CFD7E80](v31, -1, -1);
      v32 = v22;
      a4 = v41;
      MEMORY[0x18CFD7E80](v32, -1, -1);
    }

    else
    {
    }

    (*(v43 + 8))(v15, v12);
    v33 = *(v17 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_daemonErrorBackoff);

    ExponentialBackoff.incrementBackoffCount()();

    v34 = (v17 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex);
    os_unfair_lock_lock((v17 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex));
    v35 = *(sub_18844E6FC(&qword_1EA90E090, &qword_1886FA110) + 28);
    swift_retain_n();
    sub_18849E8C0(a1, a4, v34 + v35, v17);

    os_unfair_lock_unlock(v34);

    LOBYTE(v44) = 0;
    sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  }

  return CheckedContinuation.resume(returning:)();
}

void sub_18849BCEC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a3;
  v24 = a4;
  v25 = a1;
  v4 = type metadata accessor for UUID();
  v21 = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v22 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v20 - v10;
  v12 = swift_allocObject();
  swift_weakInit();
  (*(v8 + 16))(v11, v23, v7);
  (*(v5 + 16))(&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v24, v4);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = (v9 + v13 + 7) & 0xFFFFFFFFFFFFFFF8;
  v15 = (*(v5 + 80) + v14 + 8) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  (*(v8 + 32))(v17 + v13, v11, v7);
  *(v17 + v14) = v12;
  (*(v5 + 32))(v17 + v15, v22, v21);
  v18 = v25;
  *(v17 + v16) = v25;
  aBlock[4] = sub_18849E4A4;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_18849C9D8;
  aBlock[3] = &unk_1EFA28FD8;
  v19 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v18 acquireSessionWithCompletionHandler_];
  _Block_release(v19);
}

uint64_t sub_18849BFC8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t), uint64_t a5)
{
  v88 = a5;
  v86 = a4;
  v91 = a2;
  v6 = sub_18844E6FC(&qword_1EA90E118, &qword_1886FA218);
  v7 = *(*(v6 - 8) + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v83 = &v70 - v8;
  v80 = sub_18844E6FC(&qword_1EA90E088, &unk_1886FA520);
  v9 = *(*(v80 - 8) + 64);
  MEMORY[0x1EEE9AC00](v80);
  v82 = &v70 - v10;
  v81 = sub_18844E6FC(&qword_1EA90E0B0, &qword_1886FA178);
  v79 = *(v81 - 8);
  v11 = *(v79 + 64);
  MEMORY[0x1EEE9AC00](v81);
  v13 = &v70 - v12;
  v89 = type metadata accessor for AnySessionAcquiredInfo();
  v85 = *(v89 - 8);
  v14 = *(v85 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v78 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v70 - v17;
  v19 = sub_18844E6FC(&unk_1EA90E120, &unk_1886FA220);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v84 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v87 = &v70 - v23;
  v24 = type metadata accessor for SessionID();
  v25 = *(v24 - 8);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for Logger();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((static Task<>.isCancelled.getter() & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v73 = v25;
      v76 = v18;
      v90 = Strong;
      v35 = *(Strong + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_daemonErrorBackoff);

      ExponentialBackoff.reset()();

      CCLog.getter();

      v36 = a1;
      v37 = Logger.logObject.getter();
      v38 = v90;
      v39 = v37;
      LODWORD(v35) = static os_log_type_t.default.getter();

      v74 = v35;
      v77 = v39;
      v40 = os_log_type_enabled(v39, v35);
      v75 = v13;
      if (v40)
      {
        v41 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v72 = swift_slowAlloc();
        v92 = v72;
        *v41 = 136315394;
        v42 = v73;
        (*(v73 + 16))(v28, v38 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionID, v24);
        sub_18849DEB0(&qword_1EA90C2E0, MEMORY[0x1E69948C8]);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v71 = v30;
        v44 = v36;
        v46 = v45;
        (*(v42 + 8))(v28, v24);
        v47 = sub_1883FE340(v43, v46, &v92);

        *(v41 + 4) = v47;
        v38 = v90;
        *(v41 + 12) = 2112;
        *(v41 + 14) = v44;
        v48 = v70;
        *v70 = v44;
        v49 = v44;
        v50 = v77;
        _os_log_impl(&dword_1883EA000, v77, v74, "%s: acquired info: %@", v41, 0x16u);
        sub_18845B1B0(v48, &qword_1EA90DC70, &unk_1886FA190);
        MEMORY[0x18CFD7E80](v48, -1, -1);
        v51 = v72;
        sub_1883FE944(v72);
        MEMORY[0x18CFD7E80](v51, -1, -1);
        MEMORY[0x18CFD7E80](v41, -1, -1);

        (*(v71 + 8))(v33, v29);
      }

      else
      {

        (*(v30 + 8))(v33, v29);
      }

      v52 = v89;
      v53 = v76;
      v54 = (v38 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex);
      os_unfair_lock_lock((v38 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex));
      v55 = *(sub_18844E6FC(&qword_1EA90E090, &qword_1886FA110) + 28);
      CKSessionAcquiredInfo.anySessionAcquiredInfo.getter();
      v56 = v87;
      sub_18849EF68(v53, v86, &v93, v87);
      v57 = v85;
      v58 = *(v85 + 8);
      v58(v53, v52);
      os_unfair_lock_unlock(v54);
      v59 = v84;
      sub_18847E0A0(v56, v84, &unk_1EA90E120, &unk_1886FA220);
      v60 = _s5StateO22NoteAcquiredInfoActionOMa(0);
      if (sub_1883F971C(v59, 1, v60) != 1)
      {
        v61 = *(v57 + 32);
        v86 = v58;
        v62 = v78;
        v61(v78, v59, v52);
        (*(v57 + 16))(v82, v62, v52);
        swift_storeEnumTagMultiPayload();
        sub_18844E6FC(&qword_1EA90E0C8, &unk_1886FA6C0);
        v63 = v75;
        CloudCoreThrowingStream.Continuation.yield(_:)();
        (*(v79 + 8))(v63, v81);
        v64 = type metadata accessor for CloudCoreError();
        v65 = v83;
        sub_1883F90F4(v83, 1, 1, v64);
        CloudCoreThrowingStream.Continuation.finish(throwing:)();
        sub_18845B1B0(v65, &qword_1EA90E118, &qword_1886FA218);
        v86(v62, v89);
      }

      v66 = v88;
      ObjectType = swift_getObjectType();
      v92 = v66;
      sub_18849C900(&v92, nullsub_4, 0, ObjectType, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v68);

      sub_18845B1B0(v56, &unk_1EA90E120, &unk_1886FA220);
    }
  }

  LOBYTE(v92) = 0;
  sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_18849C900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a5 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00]();
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v15(v14);
  if (v8)
  {
    return (*(v11 + 32))(a8, v14, a5);
  }

  return result;
}

void sub_18849C9E0(uint64_t a1, id a2, void (*a3)(id), uint64_t a4, char a5, void (*a6)(void *))
{
  if (a2)
  {
    v9 = a2;
    a3(a2);
  }

  else
  {
    sub_18847E0A0(a1, &v22, &qword_1EA90DD10, &qword_1886F8770);
    if (v23)
    {
      sub_188419138(&v22, &aBlock);
      sub_18844E6FC(&qword_1EA90E108, &qword_1886FA208);
      swift_dynamicCast();
      v12 = v21;
      if (a5)
      {
        v19 = a3;
        v20 = a4;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v17 = sub_18849E5B8;
        v18 = &unk_1EFA28F88;
        v13 = _Block_copy(&aBlock);

        v14 = [v12 synchronousRemoteObjectProxyWithErrorHandler_];
      }

      else
      {
        v19 = a3;
        v20 = a4;
        *&aBlock = MEMORY[0x1E69E9820];
        *(&aBlock + 1) = 1107296256;
        v17 = sub_18849E5B8;
        v18 = &unk_1EFA28F60;
        v13 = _Block_copy(&aBlock);

        v14 = [v12 remoteObjectProxyWithErrorHandler_];
      }

      v15 = v14;
      _Block_release(v13);
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_188405DF8(&aBlock, &v22);
      sub_18844E6FC(&qword_1EA90E110, &qword_1886FA210);
      swift_dynamicCast();
      a6(v21);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      sub_1883FE944(&aBlock);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_18849CC70(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_18849CCDC(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (a2)
  {
    ObjectType = swift_getObjectType();
    *&v9 = a2;
    sub_188419138(&v9, v11);
  }

  else
  {
    memset(v11, 0, sizeof(v11));
  }

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v11, a3);

  return sub_18845B1B0(v11, &qword_1EA90DD10, &qword_1886F8770);
}

void sub_18849CD8C()
{
  sub_1883F8AF0();
  v1 = v0;
  v89 = v2;
  v4 = v3;
  v79 = sub_18844E6FC(&qword_1EA90E088, &unk_1886FA520);
  sub_1883F7930(v79);
  v6 = *(v5 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v7);
  sub_188403780();
  v81 = v8;
  v80 = sub_18844E6FC(&qword_1EA90E0B0, &qword_1886FA178);
  sub_1883F70DC(v80);
  v78 = v9;
  v11 = *(v10 + 64);
  sub_1883F78F8();
  MEMORY[0x1EEE9AC00](v12);
  sub_188403780();
  v77 = v13;
  v14 = sub_18844E6FC(&qword_1EA90E0B8, &unk_1886FA180);
  v15 = sub_1883F8AE4(v14);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1883F926C();
  v87 = v18;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v70[-v20];
  v22 = type metadata accessor for SessionReadinessError();
  v23 = sub_1883F70DC(v22);
  v25 = v24;
  v27 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1883F926C();
  v76 = v28;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v70[-v30];
  v32 = type metadata accessor for Logger();
  v33 = sub_1883F70DC(v32);
  v83 = v34;
  v84 = v33;
  v36 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1883F7100();
  v39 = v38 - v37;
  v40 = *(v0 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_daemonErrorBackoff);
  ExponentialBackoff.reset()();
  CCLog.getter();
  v41 = *(v25 + 16);
  v88 = v4;
  v41(v31, v4, v22);

  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.default.getter();

  v44 = os_log_type_enabled(v42, v43);
  v90 = v25;
  v85 = v25 + 16;
  v86 = v41;
  if (v44)
  {
    v45 = swift_slowAlloc();
    v82 = v1;
    v46 = v45;
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v91 = v73;
    *v46 = 136315394;
    v71 = v43;
    type metadata accessor for SessionID();
    v74 = v21;
    sub_1883F7C88();
    sub_18849DEB0(v47, v48);
    v49 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = sub_1883FE340(v49, v50, &v91);

    *(v46 + 4) = v51;
    *(v46 + 12) = 2112;
    sub_18849DEB0(&qword_1EA90C2F8, MEMORY[0x1E6994830]);
    swift_allocError();
    v41(v52, v31, v22);
    v53 = _swift_stdlib_bridgeErrorToNSError();
    v54 = sub_1883F8BA4();
    v55(v54);
    *(v46 + 14) = v53;
    v56 = v72;
    *v72 = v53;
    v21 = v74;
    _os_log_impl(&dword_1883EA000, v42, v71, "%s: noting session readiness error %@", v46, 0x16u);
    sub_18845B1B0(v56, &qword_1EA90DC70, &unk_1886FA190);
    sub_1883F7B60();
    sub_1883FE944(v73);
    sub_1883F7B60();
    v1 = v82;
    sub_1883F7B60();
  }

  else
  {

    v57 = sub_1883F8BA4();
    v58(v57);
  }

  (*(v83 + 8))(v39, v84);
  v59 = v22;
  v60 = (v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex));
  v61 = v60 + *(sub_18844E6FC(&qword_1EA90E090, &qword_1886FA110) + 28);
  sub_18849F584(v88, v89, &v92, v21);
  os_unfair_lock_unlock(v60);
  v62 = v87;
  sub_18847E0A0(v21, v87, &qword_1EA90E0B8, &unk_1886FA180);
  v63 = _s5StateO31NoteSessionReadinessErrorActionOMa(0);
  v64 = sub_1883F971C(v62, 1, v63);
  v65 = v86;
  if (v64 != 1)
  {
    v66 = v76;
    (*(v90 + 32))(v76, v62, v59);
    v67 = v21;
    v65(v81, v66, v59);
    swift_storeEnumTagMultiPayload();
    sub_18844E6FC(&qword_1EA90E0C8, &unk_1886FA6C0);
    v68 = v77;
    CloudCoreThrowingStream.Continuation.yield(_:)();
    v69 = v68;
    v21 = v67;
    (*(v78 + 8))(v69, v80);
    v75(v66, v59);
  }

  sub_18845B1B0(v21, &qword_1EA90E0B8, &unk_1886FA180);
  sub_1883F8178();
}

uint64_t sub_18849D404()
{
  v1 = OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_acquisitionStreamContinuation;
  v2 = sub_18844E6FC(&qword_1EA90E0C8, &unk_1886FA6C0);
  sub_1883F7158(v2);
  (*(v3 + 8))(v0 + v1);
  v4 = OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionID;
  v5 = type metadata accessor for SessionID();
  sub_1883F7158(v5);
  (*(v6 + 8))(v0 + v4);
  v7 = OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_sessionConfiguration;
  v8 = type metadata accessor for AnySessionConfiguration();
  sub_1883F7158(v8);
  (*(v9 + 8))(v0 + v7);
  sub_18845B1B0(v0 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_previousInvalidationContext, &unk_1EA90E170, &qword_1886FA450);
  v10 = *(v0 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_testDeviceReferenceProtocol);
  swift_unknownObjectRelease();
  v11 = *(v0 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_daemonErrorBackoff);

  v12 = v0 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex;
  v13 = sub_18844E6FC(&qword_1EA90E090, &qword_1886FA110);
  sub_18849DEF8(v12 + *(v13 + 28));
  return v0;
}

uint64_t sub_18849D538()
{
  sub_18849D404();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for CKSessionAcquirer()
{
  result = qword_1EA90C3E0;
  if (!qword_1EA90C3E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_18849D5E4()
{
  sub_18849D7D8();
  if (v1 <= 0x3F)
  {
    v10 = *(v0 - 8) + 64;
    v2 = type metadata accessor for SessionID();
    if (v3 <= 0x3F)
    {
      v11 = *(v2 - 8) + 64;
      v4 = type metadata accessor for AnySessionConfiguration();
      if (v5 <= 0x3F)
      {
        v12 = *(v4 - 8) + 64;
        sub_18849D890(319, &qword_1EA90C488, MEMORY[0x1E6994898], MEMORY[0x1E69E6720]);
        if (v7 <= 0x3F)
        {
          v13 = *(v6 - 8) + 64;
          sub_18849D890(319, &qword_1EA90C530, _s5StateOMa, MEMORY[0x1E69E8300]);
          if (v9 <= 0x3F)
          {
            v14 = *(v8 - 8) + 64;
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

void sub_18849D7D8()
{
  if (!qword_1EA90C520)
  {
    sub_18844E798(&qword_1EA90E088, &unk_1886FA520);
    type metadata accessor for CloudCoreError();
    sub_18849DEB0(&qword_1EA90C500, MEMORY[0x1E6994790]);
    v0 = type metadata accessor for CloudCoreThrowingStream.Continuation();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA90C520);
    }
  }
}

void sub_18849D890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_18849D93C()
{
  v1 = *v0;
  sub_18849DEB0(&unk_1EA90E0A0, type metadata accessor for CKSessionAcquirer);
  return PropertyDescribable<>.description.getter();
}

void sub_18849D9A0()
{
  sub_1883F8AF0();
  v33 = type metadata accessor for PropertyDescription();
  v1 = *(v33 - 8);
  v2 = v1;
  v3 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v33);
  sub_1883F926C();
  v35 = v4;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v32 - v6;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v7);
  v32 = &v32 - v8;
  sub_1883FEC2C();
  v9 = type metadata accessor for OSLogPrivacy();
  v10 = sub_1883F8AE4(v9);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  sub_1883F7100();
  sub_18844E6FC(&qword_1EA90E340, &qword_1886F9FF0);
  v13 = *(v1 + 72);
  v14 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1886F8960;
  v16 = type metadata accessor for SessionID();
  ObjectType = v16;
  sub_188403664(v36);
  sub_1883F7930(v16);
  (*(v17 + 16))();
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v18 = type metadata accessor for AnySessionConfiguration();
  ObjectType = v18;
  sub_188403664(v36);
  sub_1883F7930(v18);
  (*(v19 + 16))();
  static OSLogPrivacy.auto.getter();
  PropertyDescription.init(_:_:privacy:)();
  v20 = *(v0 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_testDeviceReferenceProtocol);
  if (v20)
  {
    v21 = *(v0 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_testDeviceReferenceProtocol);
    ObjectType = swift_getObjectType();
    v36[0] = v20;
    swift_unknownObjectRetain_n();
    static OSLogPrivacy.auto.getter();
    v22 = v32;
    PropertyDescription.init(_:_:privacy:)();
    sub_1883F9A2C();
    sub_1884772EC();
    v15 = v23;
    swift_unknownObjectRelease();
    *(v15 + 16) = 3;
    v24 = v33;
    (*(v2 + 32))(v15 + v14 + 2 * v13, v22, v33);
  }

  else
  {
    v24 = v33;
  }

  v25 = (v0 + OBJC_IVAR____TtC8CloudKit17CKSessionAcquirer_stateMutex);
  os_unfair_lock_lock(v25);
  v26 = *(sub_18844E6FC(&qword_1EA90E090, &qword_1886FA110) + 28);
  ObjectType = _s5StateOMa(0);
  v27 = sub_188403664(v36);
  sub_18849DDF8(v25 + v26, v27);
  static OSLogPrivacy.auto.getter();
  v28 = v34;
  PropertyDescription.init(_:_:privacy:)();
  os_unfair_lock_unlock(v25);
  v29 = v35;
  (*(v2 + 16))(v35, v28, v24);
  v30 = *(v15 + 16);
  if (v30 >= *(v15 + 24) >> 1)
  {
    sub_1883F9A2C();
    sub_1884772EC();
    v15 = v31;
  }

  (*(v2 + 8))(v28, v24);
  *(v15 + 16) = v30 + 1;
  (*(v2 + 32))(v15 + v14 + v30 * v13, v29, v24);
  sub_1883F8178();
}

uint64_t sub_18849DDF8(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateOMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_18849DE5C()
{
  result = qword_1EA90E0C0;
  if (!qword_1EA90E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA90E0C0);
  }

  return result;
}

uint64_t sub_18849DEB0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_18849DEF8(uint64_t a1)
{
  v2 = _s5StateOMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18849DF54(uint64_t a1, uint64_t a2)
{
  v4 = _s5StateOMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_18849DFC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_18844E6FC(&qword_1EA90E0D0, &qword_1886FA1A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_18849E030()
{
  v2 = type metadata accessor for UUID();
  sub_1883F8620(v2);
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = *(v0 + ((*(v4 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_18849E14C;
  v10 = sub_1883F97D4();

  return sub_18849AE24(v10, v11, v12, v7, v13, v8);
}

uint64_t sub_18849E14C()
{
  v1 = *(*v0 + 16);
  v2 = *v0;
  sub_1883F7110();
  *v3 = v2;

  v4 = *(v2 + 8);

  return v4();
}

uint64_t sub_18849E238()
{
  sub_1883F78E0();
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_18849E14C;
  v6 = sub_1883F97D4();

  return sub_18849B088(v6, v7, v8, v4);
}

uint64_t sub_18849E2E8(void *a1)
{
  v4 = sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  sub_1883F8620(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = sub_188400828();
  sub_1883F8AE4(v9);
  v11 = *(v1 + v2);
  v12 = v1 + ((v2 + *(v10 + 80) + 8) & ~*(v10 + 80));

  return sub_18849B830(a1, v1 + v6, v11, v12);
}

void sub_18849E3BC(void *a1)
{
  v3 = sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  sub_1883F8620(v3);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v7 = *(v6 + 64);
  v8 = type metadata accessor for UUID();
  sub_1883F8AE4(v8);
  v10 = *(v1 + 16);
  v11 = v1 + ((v5 + v7 + *(v9 + 80)) & ~*(v9 + 80));

  sub_18849BCEC(a1, v10, v1 + v5, v11);
}

uint64_t sub_18849E4A4(void *a1)
{
  v4 = sub_18844E6FC(&unk_1EA90E0F8, qword_1886FA1E8);
  sub_1883F8620(v4);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v8 = *(v7 + 64);
  v9 = sub_188400828();
  sub_1883F8620(v9);
  v11 = v10;
  v13 = v12;
  v14 = (v2 + *(v11 + 80) + 8) & ~*(v11 + 80);
  v15 = *(v1 + v2);
  v16 = *(v1 + ((*(v13 + 64) + v14 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_18849BFC8(a1, v1 + v6, v15, (v1 + v14), v16);
}

uint64_t sub_18849E5E8()
{
  result = _s5StateO17ListeningToDaemonVMa(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AnySessionAcquiredInfo();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_18849E6A4()
{
  sub_18849E758();
  if (v0 <= 0x3F)
  {
    type metadata accessor for UUID();
    if (v1 <= 0x3F)
    {
      sub_18849E7BC();
      if (v2 <= 0x3F)
      {
        sub_18849E814();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_18849E758()
{
  if (!qword_1EA90C3A0)
  {
    v0 = type metadata accessor for Task();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA90C3A0);
    }
  }
}

void sub_18849E7BC()
{
  if (!qword_1EA90C4D8)
  {
    type metadata accessor for SessionReadinessError();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA90C4D8);
    }
  }
}

void sub_18849E814()
{
  if (!qword_1EA90C310)
  {
    sub_18844E798(&qword_1EA90E3D0, &qword_1886F75C0);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA90C310);
    }
  }
}

uint64_t sub_18849E8C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v96 = a2;
  v98 = a4;
  v88 = a1;
  v8 = type metadata accessor for Logger();
  v9 = sub_1883F70DC(v8);
  v91 = v10;
  v92 = v9;
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  sub_1883F7100();
  v97 = v14 - v13;
  sub_1883FEC2C();
  v15 = type metadata accessor for UUID();
  v16 = sub_1883F70DC(v15);
  v94 = v17;
  v95 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v16);
  sub_1883F8844();
  sub_1883FA3D4();
  MEMORY[0x1EEE9AC00](v20);
  sub_1883F8BB8();
  v86 = v21;
  v22 = sub_1883FEC2C();
  v23 = _s5StateO17ListeningToDaemonVMa(v22);
  v24 = sub_1883F7B50(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1883F8844();
  v29 = (v27 - v28);
  MEMORY[0x1EEE9AC00](v30);
  sub_188400848();
  MEMORY[0x1EEE9AC00](v31);
  sub_1883F8BB8();
  v87 = v32;
  v33 = sub_1883FEC2C();
  v34 = _s5StateOMa(v33);
  v35 = sub_1883F7B50(v34);
  v37 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1883F8844();
  v40 = v38 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v90 = &v86 - v42;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v43);
  sub_1883F823C();
  MEMORY[0x1EEE9AC00](v44);
  sub_1883FE63C();
  v46 = v45;
  v100 = v47;
  sub_1884A11A0(a3, v47, v45);
  v89 = a3;
  sub_1884A11A0(a3, v6, v46);
  v93 = v34;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      goto LABEL_6;
    case 2u:
      sub_1884052B8();
      sub_1883FDA90();
      MEMORY[0x18CFD5140](v4 | 0x26, 0x80000001887005F0);
      sub_1883F97E8();
      _print_unlocked<A, B>(_:_:)();
      sub_18849DE5C();
      swift_willThrowTypedImpl();
      sub_1884A11FC(v100, _s5StateOMa);
      sub_1884A11FC(v6, _s5StateOMa);

      return sub_1883F7EE0();
    case 3u:
      goto LABEL_7;
    default:
      v48 = sub_1883F79C0();
      sub_1884A11A0(v48, v4, v49);
      v50 = *(v23 + 20);
      if (static UUID.== infix(_:_:)())
      {
        v51 = v87;
        sub_1884A1254(v4, v87);
        sub_18840AFD0();
        sub_1884A11FC(v6, v52);
        sub_1884A11A0(v51, v29, v4);
        v53 = v86;
        UUID.init()();
        (*(v94 + 40))(&v29[*(v23 + 20)], v53, v95);
        sub_18849A920();
        v55 = v54;
        v56 = *v29;

        *v29 = v55;
        v57 = *(v23 + 28);
        v58 = *&v29[v57];
        v59 = v88;
        v60 = v88;

        *&v29[v57] = v59;
        v61 = v90;
        sub_1884A11A0(v29, v90, v4);
        swift_storeEnumTagMultiPayload();
        v62 = v89;
        sub_1884A0838(v61);
        sub_1883F72F0();
        sub_1884A11FC(v61, v63);
        sub_1884A11FC(v51, v4);
        sub_1884A11FC(v100, v62);
        v64 = sub_1883F8418();
        sub_1884A11FC(v64, v65);
      }

      else
      {
        v46 = _s5StateO17ListeningToDaemonVMa;
        sub_1884A11FC(v4, _s5StateO17ListeningToDaemonVMa);
LABEL_6:
        sub_1884A11FC(v6, v46);
LABEL_7:
        v66 = v97;
        CCLog.getter();
        v68 = v94;
        v67 = v95;
        (*(v94 + 16))(v5, v96, v95);
        sub_1883FA0F8();
        v69 = v100;
        sub_1884A11A0(v100, v40, v70);
        v71 = Logger.logObject.getter();
        v72 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v71, v72))
        {
          sub_1883FD778();
          v73 = v67;
          v74 = swift_slowAlloc();
          sub_1883FB53C();
          v96 = swift_slowAlloc();
          v99 = v96;
          *v74 = 136315394;
          sub_1883F9280();
          sub_1884A05C8(v75, v76);
          dispatch thunk of CustomStringConvertible.description.getter();
          (*(v68 + 8))(v5, v73);
          v77 = sub_1883F7EE0();
          v4 = sub_1883FE340(v77, v78, v79);

          *(v74 + 4) = v4;
          *(v74 + 12) = 2080;
          sub_1883F8878();
          v80 = v90;
          sub_1884A11A0(v40, v90, v81);
          String.init<A>(describing:)();
          sub_1883FE2DC();
          v82 = sub_1883FE340(v80, v5, &v99);

          *(v74 + 14) = v82;
          _os_log_impl(&dword_1883EA000, v71, v72, "CKSessionAcquirer.State: dropping acquired info event from outdated task %s vs. %s", v74, 0x16u);
          sub_18840AD58();
          sub_1883FECE8();
          MEMORY[0x18CFD7E80]();
          sub_1883FECE8();
          MEMORY[0x18CFD7E80]();

          (*(v91 + 8))(v97, v92);
          v83 = v100;
        }

        else
        {

          sub_1883F8878();
          sub_1884A11FC(v40, v84);
          (*(v68 + 8))(v5, v67);
          (*(v91 + 8))(v66, v92);
          v83 = v69;
        }

        sub_1884A11FC(v83, v4);
      }

      return sub_1883F7EE0();
  }
}

uint64_t sub_18849EF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v74 = a1;
  v75 = a3;
  v81 = a2;
  v6 = v5;
  v80 = a4;
  v7 = type metadata accessor for Logger();
  v8 = sub_1883F70DC(v7);
  v77 = v9;
  v78 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F7100();
  v82 = v13 - v12;
  sub_1883FEC2C();
  v14 = type metadata accessor for UUID();
  v15 = sub_1883F70DC(v14);
  v17 = v16;
  v19 = *(v18 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1883F8844();
  sub_188400848();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v74 - v21;
  v23 = _s5StateOMa(0);
  v24 = sub_1883F7B50(v23);
  v26 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v24);
  sub_1883F926C();
  v76 = v27;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v74 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v74 - v32;
  MEMORY[0x1EEE9AC00](v34);
  sub_1883F72F0();
  v84 = v35;
  sub_1884A11A0(v5, v35, v36);
  sub_1884A11A0(v5, v33, v5);
  v79 = v23;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1883F9CDC();
      sub_1884A11FC(v33, v48);
      goto LABEL_5;
    case 2u:
      sub_1884052B8();
      sub_1883FDA90();
      MEMORY[0x18CFD5140](v4 | 0xD, 0x80000001887005D0);
      sub_1883F97E8();
      _print_unlocked<A, B>(_:_:)();
      v68 = v83[0];
      v69 = v83[1];
      sub_18849DE5C();
      swift_willThrowTypedImpl();
      sub_1883F8878();
      sub_1884A11FC(v84, v70);
      v71 = sub_1883F8418();
      result = sub_1884A11FC(v71, v72);
      v73 = v75;
      *v75 = v68;
      v73[1] = v69;
      return result;
    case 3u:
      goto LABEL_5;
    default:
      v37 = _s5StateO17ListeningToDaemonVMa(0);
      (*(v17 + 16))(v22, &v33[*(v37 + 20)], v14);
      v38 = static UUID.== infix(_:_:)();
      (*(v17 + 8))(v22, v14);
      sub_1883FF138();
      sub_1884A11FC(v33, v39);
      if (v38)
      {
        v40 = type metadata accessor for AnySessionAcquiredInfo();
        sub_1883F7B50(v40);
        v42 = *(v41 + 16);
        v43 = v76;
        v44 = v74;
        v42(v76, v74, v40);
        swift_storeEnumTagMultiPayload();
        sub_1884A0838(v43);
        sub_1883F72F0();
        sub_1884A11FC(v43, v45);
        sub_1884A11FC(v84, v6);
        v46 = v80;
        v42(v80, v44, v40);
        v47 = 0;
      }

      else
      {
LABEL_5:
        v49 = v82;
        CCLog.getter();
        (*(v17 + 16))(v4, v81, v14);
        sub_1883FA0F8();
        v50 = v84;
        sub_1884A11A0(v84, v30, v51);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v52, v53))
        {
          sub_1883FD778();
          v54 = swift_slowAlloc();
          sub_1883FB53C();
          v83[0] = swift_slowAlloc();
          *v54 = 136315394;
          sub_1883F9280();
          sub_1884A05C8(v55, v56);
          LODWORD(v81) = v53;
          dispatch thunk of CustomStringConvertible.description.getter();
          v57 = sub_1884056C8();
          v58(v57, v14);
          v59 = sub_1883FE340(v4, v50, v83);

          *(v54 + 4) = v59;
          *(v54 + 12) = 2080;
          sub_1883F8878();
          v60 = v76;
          sub_1884A11A0(v30, v76, v61);
          String.init<A>(describing:)();
          sub_1883FE2DC();
          v62 = sub_1883FE340(v60, v14, v83);

          *(v54 + 14) = v62;
          _os_log_impl(&dword_1883EA000, v52, v81, "CKSessionAcquirer.State: dropping acquired info event from outdated task %s vs. %s", v54, 0x16u);
          swift_arrayDestroy();
          sub_1883FECE8();
          MEMORY[0x18CFD7E80]();
          sub_1883FECE8();
          MEMORY[0x18CFD7E80]();

          (*(v77 + 8))(v82, v78);
          v63 = v84;
          v64 = v59;
        }

        else
        {

          sub_1883F72F0();
          sub_1884A11FC(v30, v65);
          (*(v17 + 8))(v4, v14);
          (*(v77 + 8))(v49, v78);
          v63 = v50;
          v64 = v53;
        }

        sub_1884A11FC(v63, v64);
        v47 = 1;
        v46 = v80;
      }

      v66 = _s5StateO22NoteAcquiredInfoActionOMa(0);
      return sub_1883F90F4(v46, v47, 1, v66);
  }
}

uint64_t sub_18849F584@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v154 = a1;
  v155 = a3;
  v164 = a2;
  v163 = a4;
  v7 = type metadata accessor for SessionReadinessError();
  v8 = sub_1883F70DC(v7);
  v151 = v9;
  v152 = v8;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v8);
  sub_1883F7100();
  v146 = v13 - v12;
  v149 = sub_18844E6FC(&qword_1EA90E130, &qword_1886FA2C0);
  v14 = sub_1883F7B50(v149);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v150 = &v146 - v17;
  v18 = sub_18844E6FC(&qword_1EA90E0D0, &qword_1886FA1A0);
  v19 = sub_1883F8AE4(v18);
  v21 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v19);
  sub_1883F926C();
  v147 = v22;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v23);
  sub_1883F8BB8();
  v153 = v24;
  sub_1883FEC2C();
  v25 = type metadata accessor for UUID();
  v26 = sub_1883F70DC(v25);
  v28 = v27;
  v30 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1883F7100();
  v33 = (v32 - v31);
  v34 = type metadata accessor for Logger();
  v35 = sub_1883F70DC(v34);
  v160 = v36;
  v161 = v35;
  v38 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v35);
  sub_1883F7100();
  v165 = (v40 - v39);
  v41 = sub_1883FEC2C();
  v157 = _s5StateO17ListeningToDaemonVMa(v41);
  v42 = sub_1883F7B50(v157);
  v44 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v42);
  sub_1883F926C();
  v148 = v45;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v146 - v47;
  MEMORY[0x1EEE9AC00](v49);
  sub_1883F8BB8();
  v156 = v50;
  v51 = sub_1883FEC2C();
  v52 = _s5StateOMa(v51);
  v53 = sub_1883F7B50(v52);
  v55 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v53);
  sub_1883F926C();
  v159 = v56;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v57);
  sub_1883FA3D4();
  MEMORY[0x1EEE9AC00](v58);
  sub_1883F823C();
  MEMORY[0x1EEE9AC00](v59);
  sub_1883FE63C();
  v61 = v60;
  v168 = v62;
  sub_1884A11A0(v4, v62, v60);
  v158 = v4;
  sub_1884A11A0(v4, v6, v61);
  v162 = v52;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      goto LABEL_8;
    case 2u:
      v166 = 0;
      v167 = 0xE000000000000000;
      _StringGuts.grow(_:)(36);
      sub_1883FDA90();
      MEMORY[0x18CFD5140](v33 + 22, 0x80000001887005A0);
      sub_1883F97E8();
      _print_unlocked<A, B>(_:_:)();
      v92 = v166;
      v93 = v167;
      sub_18849DE5C();
      swift_willThrowTypedImpl();
      sub_1883F8878();
      sub_1884A11FC(v168, v94);
      result = sub_1884A11FC(v6, v33);
      v96 = v155;
      *v155 = v92;
      v96[1] = v93;
      return result;
    case 3u:
      goto LABEL_9;
    default:
      v63 = sub_1883F79C0();
      sub_1884A11A0(v63, v48, v64);
      v65 = v157;
      v66 = *(v157 + 20);
      if ((static UUID.== infix(_:_:)() & 1) == 0)
      {
        v61 = _s5StateO17ListeningToDaemonVMa;
        sub_1884A11FC(v48, _s5StateO17ListeningToDaemonVMa);
LABEL_8:
        sub_1884A11FC(v6, v61);
LABEL_9:
        v97 = v165;
        CCLog.getter();
        (*(v28 + 16))(v33, v164, v25);
        sub_1883FA0F8();
        v98 = v168;
        sub_1884A11A0(v168, v5, v99);
        v100 = Logger.logObject.getter();
        v101 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v100, v101))
        {
          sub_1883FD778();
          v102 = swift_slowAlloc();
          sub_1883FB53C();
          v164 = swift_slowAlloc();
          v166 = v164;
          *v102 = 136315394;
          sub_1883F9280();
          sub_1884A05C8(v103, v104);
          dispatch thunk of CustomStringConvertible.description.getter();
          v105 = sub_1884056C8();
          v106(v105, v25);
          v107 = sub_1883FE340(v33, v98, &v166);

          *(v102 + 4) = v107;
          *(v102 + 12) = 2080;
          sub_1883F8878();
          sub_1884A11A0(v5, v159, v108);
          v109 = String.init<A>(describing:)();
          v111 = v110;
          sub_1884A11FC(v5, v107);
          v112 = sub_1883FE340(v109, v111, &v166);

          *(v102 + 14) = v112;
          _os_log_impl(&dword_1883EA000, v100, v101, "CKSessionAcquirer.State: dropping acquired info event from outdated task %s vs. %s", v102, 0x16u);
          sub_18840AD58();
          sub_1883FECE8();
          MEMORY[0x18CFD7E80]();
          sub_1883FECE8();
          MEMORY[0x18CFD7E80]();

          (*(v160 + 8))(v165, v161);
          v113 = v168;
          v114 = v107;
        }

        else
        {

          sub_1883F72F0();
          sub_1884A11FC(v5, v115);
          (*(v28 + 8))(v33, v25);
          (*(v160 + 8))(v97, v161);
          v113 = v98;
          v114 = v97;
        }

        goto LABEL_12;
      }

      sub_1884A1254(v48, v156);
      sub_1883FF138();
      sub_1884A11FC(v6, v67);
      v68 = *(v65 + 24);
      v70 = v151;
      v69 = v152;
      v71 = v153;
      v165 = *(v151 + 16);
      (v165)(v153, v154, v152);
      sub_18840AE70();
      sub_1883F90F4(v72, v73, v74, v69);
      v75 = *(v149 + 48);
      v76 = &qword_1EA90E0D0;
      v77 = v150;
      sub_188404F98();
      sub_188442C30(v78, v79, v80, v81);
      sub_188404F98();
      sub_188442C30(v82, v83, v84, v85);
      sub_1883F9A38();
      if (sub_1883F971C(v86, v87, v88) == 1)
      {
        sub_1883F9FEC(v71, &qword_1EA90E0D0, &qword_1886FA1A0);
        sub_1883F9A38();
        if (sub_1883F971C(v89, v90, v91) == 1)
        {
          sub_1883F9FEC(v77, &qword_1EA90E0D0, &qword_1886FA1A0);
LABEL_19:
          sub_1883FF138();
          sub_1884A11FC(v156, v145);
          sub_1883F9CDC();
          v113 = v168;
LABEL_12:
          sub_1884A11FC(v113, v114);
          v116 = _s5StateO31NoteSessionReadinessErrorActionOMa(0);
          return sub_1883F90F4(v163, 1, 1, v116);
        }

        goto LABEL_16;
      }

      v117 = v147;
      sub_188442C30(v77, v147, &qword_1EA90E0D0, &qword_1886FA1A0);
      sub_1883F9A38();
      if (sub_1883F971C(v118, v119, v120) == 1)
      {
        sub_1883F9FEC(v153, &qword_1EA90E0D0, &qword_1886FA1A0);
        (*(v70 + 8))(v117, v69);
LABEL_16:
        sub_1883F9FEC(v77, &qword_1EA90E130, &qword_1886FA2C0);
        goto LABEL_17;
      }

      v139 = v77 + v75;
      v140 = v146;
      (*(v70 + 32))(v146, v139, v69);
      sub_1884A05C8(&qword_1EA90C300, MEMORY[0x1E6994830]);
      v141 = dispatch thunk of static Equatable.== infix(_:_:)();
      v76 = v77;
      v142 = *(v70 + 8);
      v142(v140, v69);
      sub_1883F9FEC(v153, &qword_1EA90E0D0, &qword_1886FA1A0);
      v142(v117, v69);
      v143 = sub_1883F7EE0();
      sub_1883F9FEC(v143, v144, &qword_1886FA1A0);
      if (v141)
      {
        goto LABEL_19;
      }

LABEL_17:
      sub_18840AFD0();
      v121 = v156;
      v122 = v148;
      sub_1884A11A0(v156, v148, v123);
      v124 = *(v157 + 24);
      sub_1883F9FEC(v122 + v124, &qword_1EA90E0D0, &qword_1886FA1A0);
      v125 = v154;
      v126 = v165;
      (v165)(v122 + v124, v154, v69);
      sub_18840AE70();
      sub_1883F90F4(v127, v128, v129, v69);
      v130 = v159;
      sub_1884A11A0(v122, v159, v76);
      swift_storeEnumTagMultiPayload();
      v131 = v158;
      sub_1884A0838(v130);
      sub_1883F72F0();
      sub_1884A11FC(v130, v132);
      sub_1884A11FC(v121, v76);
      sub_1884A11FC(v168, v131);
      v126(v163, v125, v69);
      _s5StateO31NoteSessionReadinessErrorActionOMa(0);
      sub_18840AE70();
      sub_1883F90F4(v133, v134, v135, v136);
      v137 = sub_1883F8418();
      return sub_1884A11FC(v137, v138);
  }
}

uint64_t sub_18849FFA0()
{
  v62 = type metadata accessor for PropertyDescription();
  v1 = *(v62 - 8);
  v2 = *(v1 + 64);
  MEMORY[0x1EEE9AC00](v62);
  sub_1883F926C();
  v66 = v3;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v57 - v5;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v6);
  sub_1883F8BB8();
  v60 = v7;
  v8 = sub_18844E6FC(&qword_1EA90E0D0, &qword_1886FA1A0);
  v9 = sub_1883F8AE4(v8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v57 - v12;
  v14 = type metadata accessor for SessionReadinessError();
  v15 = sub_1883F70DC(v14);
  v59 = v16;
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v15);
  sub_1883F7100();
  v21 = v20 - v19;
  v22 = type metadata accessor for OSLogPrivacy();
  v23 = sub_1883F8AE4(v22);
  v25 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v23);
  sub_1883F7100();
  sub_18844E6FC(&qword_1EA90E340, &qword_1886F9FF0);
  v26 = *(v1 + 72);
  v61 = v1;
  v27 = (*(v61 + 80) + 32) & ~*(v61 + 80);
  v64 = v26;
  v58 = v27 + v26;
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1886F7400;
  v29 = _s5StateO17ListeningToDaemonVMa(0);
  v30 = v29[5];
  v31 = type metadata accessor for UUID();
  v70 = v31;
  v32 = sub_188403664(v69);
  (*(*(v31 - 8) + 16))(v32, &v0[v30], v31);
  static OSLogPrivacy.auto.getter();
  v63 = v27;
  PropertyDescription.init(_:_:privacy:)();
  v33 = v0;
  sub_188442C30(&v0[v29[6]], v13, &qword_1EA90E0D0, &qword_1886FA1A0);
  if (sub_1883F971C(v13, 1, v14) == 1)
  {
    sub_1883F9FEC(v13, &qword_1EA90E0D0, &qword_1886FA1A0);
    v35 = v61;
    v34 = v62;
  }

  else
  {
    v36 = v59;
    (*(v59 + 32))(v21, v13, v14);
    v70 = v14;
    v37 = sub_188403664(v69);
    (*(v36 + 16))(v37, v21, v14);
    static OSLogPrivacy.auto.getter();
    v38 = v60;
    PropertyDescription.init(_:_:privacy:)();
    sub_1884772EC();
    v28 = v39;
    (*(v36 + 8))(v21, v14);
    *(v28 + 16) = 2;
    v35 = v61;
    v34 = v62;
    (*(v61 + 32))(v28 + v58, v38, v62);
  }

  v40 = v29[7];
  v41 = v33;
  v42 = *(v33 + v40);
  v43 = v65;
  v44 = v63;
  if (v42)
  {
    v45 = *(v33 + v40);
    swift_getErrorValue();
    v46 = v67;
    v47 = v68;
    v70 = v68;
    v48 = sub_188403664(v69);
    (*(*(v47 - 8) + 16))(v48, v46, v47);
    v49 = v42;
    static OSLogPrivacy.auto.getter();
    PropertyDescription.init(_:_:privacy:)();
    v50 = *(v28 + 16);
    if (v50 >= *(v28 + 24) >> 1)
    {
      sub_1884772EC();
      v28 = v55;
    }

    *(v28 + 16) = v50 + 1;
    v51 = v64;
    (*(v35 + 32))(v28 + v44 + v50 * v64, v43, v34);
  }

  else
  {
    v51 = v64;
  }

  v52 = *v41;
  if (swift_task_isCancelled())
  {
    v70 = MEMORY[0x1E69E6370];
    LOBYTE(v69[0]) = 1;
    static OSLogPrivacy.auto.getter();
    PropertyDescription.init(_:_:privacy:)();
    v53 = *(v28 + 16);
    if (v53 >= *(v28 + 24) >> 1)
    {
      sub_1884772EC();
      v28 = v56;
    }

    *(v28 + 16) = v53 + 1;
    (*(v35 + 32))(v28 + v44 + v53 * v51, v66, v34);
  }

  return v28;
}

uint64_t sub_1884A0558(uint64_t a1)
{
  v2 = sub_1884A05C8(&qword_1EA90C2B8, _s5StateO17ListeningToDaemonVMa);

  return MEMORY[0x1EEDF4148](a1, v2);
}

uint64_t sub_1884A05C8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1884A0610()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t sub_1884A0640@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = _s5StateO17ListeningToDaemonVMa(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s5StateOMa(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1884A11A0(v2, v11, _s5StateOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if ((EnumCaseMultiPayload - 2) < 2)
  {
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1884A11FC(v11, _s5StateOMa);
LABEL_5:
    v19 = sub_18844E6FC(&qword_1EA90E150, &unk_1886FA2E0);
    v17 = a1;
    v18 = 1;
    return sub_1883F90F4(v17, v18, 1, v19);
  }

  sub_1884A1254(v11, v7);
  v13 = sub_18844E6FC(&qword_1EA90E150, &unk_1886FA2E0);
  v14 = *(v13 + 48);
  *a1 = *v7;
  v15 = *(v4 + 20);
  v16 = type metadata accessor for UUID();
  (*(*(v16 - 8) + 16))(&a1[v14], &v7[v15], v16);

  sub_1884A11FC(v7, _s5StateO17ListeningToDaemonVMa);
  v17 = a1;
  v18 = 0;
  v19 = v13;
  return sub_1883F90F4(v17, v18, 1, v19);
}

uint64_t sub_1884A0838(uint64_t a1)
{
  v5 = v2;
  v143 = type metadata accessor for UUID();
  v7 = sub_1883F70DC(v143);
  v132 = v8;
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  sub_1883F7100();
  v127 = v12 - v11;
  v131 = sub_18844E6FC(&qword_1EA90E138, &qword_1886FA2C8);
  v13 = sub_1883F7B50(v131);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v141 = &v124[-v16];
  v17 = sub_18844E6FC(&qword_1EA90E140, &qword_1886FA2D0);
  v18 = sub_1883F8AE4(v17);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  sub_1883F926C();
  v128 = v21;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v22);
  sub_1883F823C();
  MEMORY[0x1EEE9AC00](v23);
  sub_1883F8BB8();
  v140 = v24;
  v25 = sub_18844E6FC(&qword_1EA90E148, &qword_1886FA2D8);
  v26 = sub_1883F8AE4(v25);
  v28 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v26);
  sub_1883F926C();
  v130 = v29;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v30);
  sub_1883F8BB8();
  v136 = v31;
  v137 = sub_18844E6FC(&qword_1EA90E150, &unk_1886FA2E0);
  v32 = sub_1883F7B50(v137);
  v34 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v32);
  sub_1883F926C();
  v129 = v35;
  sub_1883FEA74();
  MEMORY[0x1EEE9AC00](v36);
  sub_1883F8BB8();
  v139 = v37;
  sub_1883FEC2C();
  v38 = type metadata accessor for Logger();
  v39 = sub_1883F70DC(v38);
  v134 = v40;
  v135 = v39;
  v42 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v39);
  sub_1883F7100();
  v45 = v44 - v43;
  v46 = _s5StateOMa(0);
  v47 = sub_1883F7B50(v46);
  v49 = *(v48 + 64);
  MEMORY[0x1EEE9AC00](v47);
  sub_1883F8844();
  v52 = v50 - v51;
  MEMORY[0x1EEE9AC00](v53);
  sub_1883FA3D4();
  MEMORY[0x1EEE9AC00](v54);
  sub_188400848();
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v124[-v56];
  v144 = v5;
  sub_1884A11A0(v5, &v124[-v56], _s5StateOMa);
  CCLog.getter();
  v138 = v57;
  v58 = sub_1883F8418();
  sub_1884A11A0(v58, v59, _s5StateOMa);
  v142 = a1;
  sub_1884A11A0(a1, v3, _s5StateOMa);
  v133 = v45;
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v60, v61))
  {
    sub_1883FD778();
    v62 = swift_slowAlloc();
    sub_1883FB53C();
    v126 = swift_slowAlloc();
    v145[0] = v126;
    *v62 = 136315394;
    sub_1884A11A0(v1, v52, _s5StateOMa);
    v63 = String.init<A>(describing:)();
    v125 = v61;
    v64 = v4;
    v65 = v63;
    v67 = v66;
    sub_1884A11FC(v1, _s5StateOMa);
    v68 = v65;
    v69 = v64;
    v70 = sub_1883FE340(v68, v67, v145);

    *(v62 + 4) = v70;
    *(v62 + 12) = 2080;
    sub_1884A11A0(v3, v52, _s5StateOMa);
    v71 = String.init<A>(describing:)();
    v73 = v72;
    sub_1884A11FC(v3, _s5StateOMa);
    v74 = sub_1883FE340(v71, v73, v145);

    *(v62 + 14) = v74;
    _os_log_impl(&dword_1883EA000, v60, v125, "CKSessionAcquirer.State: %s -> %s", v62, 0x16u);
    swift_arrayDestroy();
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();
    sub_1883FECE8();
    MEMORY[0x18CFD7E80]();

    (*(v134 + 8))(v133, v135);
  }

  else
  {

    sub_1884A11FC(v3, _s5StateOMa);
    sub_1884A11FC(v1, _s5StateOMa);
    (*(v134 + 8))(v133, v135);
    v69 = v4;
  }

  v75 = v136;
  v76 = v144;
  sub_1884A0640(v136);
  sub_1883F9CDC();
  sub_1884A11FC(v76, v77);
  v78 = v137;
  if (sub_1883F971C(v75, 1, v137) != 1)
  {
    v82 = v75;
    v83 = v139;
    sub_1884A12B8(v82, v139);
    v84 = v83;
    v85 = v129;
    sub_188442C30(v84, v129, &qword_1EA90E150, &unk_1886FA2E0);
    v86 = *v85;

    v87 = *(v132 + 32);
    v88 = v143;
    v87(v140, v85 + *(v78 + 48), v143);
    sub_18840AE70();
    sub_1883F90F4(v89, v90, v91, v88);
    v92 = v130;
    sub_1884A0640(v130);
    if (sub_1883F971C(v92, 1, v78) == 1)
    {
      sub_1883F9FEC(v92, &qword_1EA90E148, &qword_1886FA2D8);
      v93 = 1;
    }

    else
    {
      v94 = *v92;

      v87(v69, &v92[*(v78 + 48)], v143);
      v93 = 0;
    }

    sub_1883F90F4(v69, v93, 1, v143);
    v95 = *(v131 + 48);
    sub_188404F98();
    sub_188442C30(v96, v97, v98, v99);
    sub_188404F98();
    sub_188442C30(v100, v101, v102, v103);
    sub_1883F9A38();
    if (sub_1883F971C(v104, v105, v106) == 1)
    {
      sub_1883F9FEC(v69, &qword_1EA90E140, &qword_1886FA2D0);
      v107 = sub_1883F8418();
      sub_1883F9FEC(v107, v108, &qword_1886FA2D0);
      if (sub_1883F971C(&v141[v95], 1, v143) == 1)
      {
        sub_1883F9FEC(v141, &qword_1EA90E140, &qword_1886FA2D0);
LABEL_19:
        sub_1883F9CDC();
        sub_1884A11FC(v138, v123);
        v80 = &qword_1EA90E150;
        v81 = &unk_1886FA2E0;
        v112 = v139;
        goto LABEL_17;
      }
    }

    else
    {
      v137 = v69;
      v109 = v141;
      v110 = v128;
      sub_188442C30(v141, v128, &qword_1EA90E140, &qword_1886FA2D0);
      if (sub_1883F971C(&v109[v95], 1, v143) != 1)
      {
        v115 = v141;
        v116 = &v141[v95];
        v117 = v127;
        v118 = v143;
        v87(v127, v116, v143);
        sub_1883F9280();
        sub_1884A05C8(v119, v120);
        v121 = dispatch thunk of static Equatable.== infix(_:_:)();
        v122 = *(v132 + 8);
        v122(v117, v118);
        sub_1883F9FEC(v137, &qword_1EA90E140, &qword_1886FA2D0);
        sub_1883F9FEC(v140, &qword_1EA90E140, &qword_1886FA2D0);
        v122(v110, v118);
        sub_1883F9FEC(v115, &qword_1EA90E140, &qword_1886FA2D0);
        if (v121)
        {
          goto LABEL_19;
        }

LABEL_15:
        v75 = v139;
        MEMORY[0x18CFD54D0](*v139, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7410]);
        sub_1883F9CDC();
        sub_1884A11FC(v138, v111);
        v80 = &qword_1EA90E150;
        v81 = &unk_1886FA2E0;
        goto LABEL_16;
      }

      sub_1883F9FEC(v137, &qword_1EA90E140, &qword_1886FA2D0);
      sub_1883F9FEC(v140, &qword_1EA90E140, &qword_1886FA2D0);
      (*(v132 + 8))(v110, v143);
    }

    sub_1883F9FEC(v141, &qword_1EA90E138, &qword_1886FA2C8);
    goto LABEL_15;
  }

  sub_1883F9CDC();
  sub_1884A11FC(v138, v79);
  v80 = &qword_1EA90E148;
  v81 = &qword_1886FA2D8;
LABEL_16:
  v112 = v75;
LABEL_17:
  sub_1883F9FEC(v112, v80, v81);
  sub_1883FA0F8();
  return sub_1884A11A0(v142, v144, v113);
}