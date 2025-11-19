id BridgedRawDataEvent.init(name:dictionary:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = &v3[OBJC_IVAR___AARawDataEvent_name];
  *v8 = a1;
  v8[1] = a2;
  *&v3[OBJC_IVAR___AARawDataEvent_dictionary] = a3;
  v3[OBJC_IVAR___AARawDataEvent_requiresDiagnosticsConsent] = 0;
  v3[OBJC_IVAR___AARawDataEvent_requiresTrackingConsent] = 1;
  v10.receiver = v3;
  v10.super_class = ObjectType;
  return objc_msgSendSuper2(&v10, sel_init);
}

id BridgedRawDataEvent.__allocating_init(name:dictionary:requiresDiagnosticsConsent:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v9 = objc_allocWithZone(v4);
  v10 = &v9[OBJC_IVAR___AARawDataEvent_name];
  *v10 = a1;
  v10[1] = a2;
  *&v9[OBJC_IVAR___AARawDataEvent_dictionary] = a3;
  v9[OBJC_IVAR___AARawDataEvent_requiresDiagnosticsConsent] = a4;
  v9[OBJC_IVAR___AARawDataEvent_requiresTrackingConsent] = 1;
  v12.receiver = v9;
  v12.super_class = v4;
  return objc_msgSendSuper2(&v12, sel_init);
}

id BridgedRawDataEvent.init(name:dictionary:requiresDiagnosticsConsent:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  ObjectType = swift_getObjectType();
  v10 = &v4[OBJC_IVAR___AARawDataEvent_name];
  *v10 = a1;
  v10[1] = a2;
  *&v4[OBJC_IVAR___AARawDataEvent_dictionary] = a3;
  v4[OBJC_IVAR___AARawDataEvent_requiresDiagnosticsConsent] = a4;
  v4[OBJC_IVAR___AARawDataEvent_requiresTrackingConsent] = 1;
  v12.receiver = v4;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id BridgedRawDataEvent.__allocating_init(name:dictionary:requiresDiagnosticsConsent:requiresTrackingConsent:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR___AARawDataEvent_name];
  *v12 = a1;
  v12[1] = a2;
  *&v11[OBJC_IVAR___AARawDataEvent_dictionary] = a3;
  v11[OBJC_IVAR___AARawDataEvent_requiresDiagnosticsConsent] = a4;
  v11[OBJC_IVAR___AARawDataEvent_requiresTrackingConsent] = a5;
  v14.receiver = v11;
  v14.super_class = v5;
  return objc_msgSendSuper2(&v14, sel_init);
}

id BridgedRawDataEvent.init(name:dictionary:requiresDiagnosticsConsent:requiresTrackingConsent:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  ObjectType = swift_getObjectType();
  v12 = &v5[OBJC_IVAR___AARawDataEvent_name];
  *v12 = a1;
  v12[1] = a2;
  *&v5[OBJC_IVAR___AARawDataEvent_dictionary] = a3;
  v5[OBJC_IVAR___AARawDataEvent_requiresDiagnosticsConsent] = a4;
  v5[OBJC_IVAR___AARawDataEvent_requiresTrackingConsent] = a5;
  v14.receiver = v5;
  v14.super_class = ObjectType;
  return objc_msgSendSuper2(&v14, sel_init);
}

id BridgedRawDataEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedRawDataEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B69D7C9C()
{
  v1 = OBJC_IVAR___AADataEventTraits_onlyOnce;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B69D7D34(char a1)
{
  v3 = OBJC_IVAR___AADataEventTraits_onlyOnce;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B69D7E2C()
{
  v1 = OBJC_IVAR___AADataEventTraits_unique;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B69D7EC4(char a1)
{
  v3 = OBJC_IVAR___AADataEventTraits_unique;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1B69D7FBC()
{
  v1 = OBJC_IVAR___AADataEventTraits_discardWhenPresent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1B69D8054(char a1)
{
  v3 = OBJC_IVAR___AADataEventTraits_discardWhenPresent;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

id BridgedDataEventTraits.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedDataEventTraits.init()()
{
  v0[OBJC_IVAR___AADataEventTraits_onlyOnce] = 0;
  v0[OBJC_IVAR___AADataEventTraits_unique] = 0;
  v0[OBJC_IVAR___AADataEventTraits_discardWhenPresent] = 0;
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedDataEventTraits();
  return objc_msgSendSuper2(&v2, sel_init);
}

char *sub_1B69D821C()
{
  v1 = OBJC_IVAR___AADataEventTraits_onlyOnce;
  swift_beginAccess();
  if (*(v0 + v1) == 1)
  {
    v2 = sub_1B69E37D8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_1B69E37D8((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v2[v4 + 32] = 0;
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC0];
  }

  v5 = OBJC_IVAR___AADataEventTraits_unique;
  swift_beginAccess();
  if (*(v0 + v5) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B69E37D8(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_1B69E37D8((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v2[v7 + 32] = 1;
  }

  v8 = OBJC_IVAR___AADataEventTraits_discardWhenPresent;
  swift_beginAccess();
  if (*(v0 + v8) == 1)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1B69E37D8(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_1B69E37D8((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v2[v10 + 32] = 2;
  }

  return v2;
}

id BridgedDataEventTraits.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BridgedDataEventTraits();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  result = swift_beginAccess();
  *a3 = *(v4 + v5);
  return result;
}

uint64_t keypath_setTm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  result = swift_beginAccess();
  *(v6 + v7) = v5;
  return result;
}

id sub_1B69D86C8()
{
  v0 = type metadata accessor for BridgedTimestampJitter();
  v1 = objc_allocWithZone(v0);
  v1[OBJC_IVAR___AATimestampJitter_enabled] = 0;
  *&v1[OBJC_IVAR___AATimestampJitter_lowerBound] = 0xC082C00000000000;
  *&v1[OBJC_IVAR___AATimestampJitter_upperBound] = 0x4082C00000000000;
  v3.receiver = v1;
  v3.super_class = v0;
  result = objc_msgSendSuper2(&v3, sel_init);
  qword_1EDBC8A38 = result;
  return result;
}

id static BridgedTimestampJitter.default.getter()
{
  if (qword_1EDBC8A30 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDBC8A38;

  return v1;
}

id BridgedTimestampJitter.with(enabled:)(char a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___AATimestampJitter_lowerBound);
  v5 = *(v1 + OBJC_IVAR___AATimestampJitter_upperBound);
  v6 = objc_allocWithZone(ObjectType);
  v6[OBJC_IVAR___AATimestampJitter_enabled] = a1;
  *&v6[OBJC_IVAR___AATimestampJitter_lowerBound] = v4;
  *&v6[OBJC_IVAR___AATimestampJitter_upperBound] = v5;
  v8.receiver = v6;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id BridgedTimestampJitter.with(lowerBound:)(double a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___AATimestampJitter_enabled);
  v5 = *(v1 + OBJC_IVAR___AATimestampJitter_upperBound);
  v6 = objc_allocWithZone(ObjectType);
  v6[OBJC_IVAR___AATimestampJitter_enabled] = v4;
  *&v6[OBJC_IVAR___AATimestampJitter_lowerBound] = a1;
  *&v6[OBJC_IVAR___AATimestampJitter_upperBound] = v5;
  v8.receiver = v6;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id BridgedTimestampJitter.with(upperBound:)(double a1)
{
  ObjectType = swift_getObjectType();
  v4 = *(v1 + OBJC_IVAR___AATimestampJitter_enabled);
  v5 = *(v1 + OBJC_IVAR___AATimestampJitter_lowerBound);
  v6 = objc_allocWithZone(ObjectType);
  v6[OBJC_IVAR___AATimestampJitter_enabled] = v4;
  *&v6[OBJC_IVAR___AATimestampJitter_lowerBound] = v5;
  *&v6[OBJC_IVAR___AATimestampJitter_upperBound] = a1;
  v8.receiver = v6;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, sel_init);
}

id BridgedTimestampJitter.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BridgedTimestampJitter.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1B69D8D5C()
{
  v2 = *v0;
  sub_1B6ABA1F0();
  sub_1B6AB9260();
  return sub_1B6ABA230();
}

uint64_t sub_1B69D8DC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B69E0E14();

  return MEMORY[0x1EEDC2D70](a1, a2, v4);
}

uint64_t sub_1B69D8E0C()
{
  v2 = *v0;
  sub_1B6ABA1F0();
  sub_1B6AB9260();
  return sub_1B6ABA230();
}

void *sub_1B69D8E6C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != 0;
  *a2 = 0;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1B69D8E84(uint64_t a1)
{
  v2 = sub_1B69E0E14();

  return MEMORY[0x1EEDC2D80](a1, v2);
}

uint64_t sub_1B69D8EC0(uint64_t a1)
{
  v2 = sub_1B69E0E14();

  return MEMORY[0x1EEDC2D78](a1, v2);
}

uint64_t sub_1B69D8F18(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B69E0E14();

  return MEMORY[0x1EEDC2D68](a1, a2, v4);
}

id JSON.__allocating_init(_:)(uint64_t a1, unint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = sub_1B69E03A4();
  sub_1B6993C94(a1, a2);
  return v6;
}

id JSON.init(_:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_1B69E03A4();
  sub_1B6993C94(a1, a2);
  return v4;
}

id sub_1B69D90E4(uint64_t a1, uint64_t a2)
{
  sub_1B69C1678(v2 + OBJC_IVAR___AAJSON_value, &v17);
  if (!*(&v18 + 1))
  {
    sub_1B6981634(&v17);
    goto LABEL_7;
  }

  sub_1B69881C8(0, &qword_1EDBCCC60, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v7 = type metadata accessor for JSON();
    v17 = 0u;
    v18 = 0u;
    v8 = objc_allocWithZone(v7);
    sub_1B69C1678(&v17, v8 + OBJC_IVAR___AAJSON_value);
    v16.receiver = v8;
    v16.super_class = v7;
    v9 = objc_msgSendSuper2(&v16, sel_init);
    goto LABEL_10;
  }

  if (*(v15 + 16) && (v5 = sub_1B6993940(a1, a2), (v6 & 1) != 0))
  {
    sub_1B698FE74(*(v15 + 56) + 32 * v5, &v17);
  }

  else
  {

    v17 = 0u;
    v18 = 0u;
  }

  v10 = type metadata accessor for JSON();
  v11 = objc_allocWithZone(v10);
  sub_1B69C1678(&v17, v11 + OBJC_IVAR___AAJSON_value);
  v14.receiver = v11;
  v14.super_class = v10;
  v9 = objc_msgSendSuper2(&v14, sel_init);
LABEL_10:
  v12 = v9;
  sub_1B6981634(&v17);
  return v12;
}

id sub_1B69D92A8(unint64_t a1)
{
  sub_1B69C1678(v1 + OBJC_IVAR___AAJSON_value, &v16);
  if (!*(&v17 + 1))
  {
    sub_1B6981634(&v16);
    goto LABEL_7;
  }

  sub_1B6980954(0, &qword_1EDBC96D8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v6 = type metadata accessor for JSON();
    v16 = 0u;
    v17 = 0u;
    v7 = objc_allocWithZone(v6);
    sub_1B69C1678(&v16, v7 + OBJC_IVAR___AAJSON_value);
    v15.receiver = v7;
    v15.super_class = v6;
    v5 = objc_msgSendSuper2(&v15, sel_init);
    goto LABEL_9;
  }

  if ((a1 & 0x8000000000000000) != 0 || *(v14 + 16) <= a1)
  {

    v8 = type metadata accessor for JSON();
    v16 = 0u;
    v17 = 0u;
    v9 = objc_allocWithZone(v8);
    sub_1B69C1678(&v16, v9 + OBJC_IVAR___AAJSON_value);
    v13.receiver = v9;
    v13.super_class = v8;
    v5 = objc_msgSendSuper2(&v13, sel_init);
  }

  else
  {
    sub_1B698FE74(v14 + 32 * a1 + 32, &v16);

    v3 = type metadata accessor for JSON();
    v4 = objc_allocWithZone(v3);
    sub_1B69C1678(&v16, v4 + OBJC_IVAR___AAJSON_value);
    v12.receiver = v4;
    v12.super_class = v3;
    v5 = objc_msgSendSuper2(&v12, sel_init);
  }

LABEL_9:
  v10 = v5;
  sub_1B6981634(&v16);
  return v10;
}

BOOL sub_1B69D9488()
{
  sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, v3);
  v1 = v3[3] != 0;
  sub_1B6981634(v3);
  return v1;
}

uint64_t sub_1B69D96CC()
{
  sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B6981634(v3);
    return 0;
  }
}

uint64_t sub_1B69D9764()
{
  sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B6981634(v3);
    return 0;
  }
}

uint64_t sub_1B69D97F0()
{
  sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1B6981634(v3);
    return 0;
  }
}

uint64_t sub_1B69D9874()
{
  sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, v3);
  if (v4)
  {
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_1B6981634(v3);
    return 2;
  }
}

uint64_t sub_1B69D995C()
{
  sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, v10);
  if (!v10[3])
  {
    sub_1B6981634(v10);
    return 0;
  }

  sub_1B6980954(0, &qword_1EDBC96D8, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E62F8]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = *(v8[0] + 16);
  if (v1)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_1B6AB9D80();
    v2 = v8[0] + 32;
    do
    {
      sub_1B698FE74(v2, v10);
      sub_1B698FE74(v10, v8);
      v3 = type metadata accessor for JSON();
      v4 = objc_allocWithZone(v3);
      sub_1B69C1678(v8, v4 + OBJC_IVAR___AAJSON_value);
      v7.receiver = v4;
      v7.super_class = v3;
      objc_msgSendSuper2(&v7, sel_init);
      sub_1B6981634(v8);
      __swift_destroy_boxed_opaque_existential_1(v10);
      sub_1B6AB9D50();
      v5 = *(v9 + 16);
      sub_1B6AB9D90();
      sub_1B6AB9DA0();
      sub_1B6AB9D60();
      v2 += 32;
      --v1;
    }

    while (v1);

    return v9;
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }
}

uint64_t sub_1B69D9B74()
{
  sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, &v46);
  if (!*(&v47[0] + 1))
  {
    sub_1B6981634(&v46);
    return 0;
  }

  sub_1B69881C8(0, &qword_1EDBCCC60, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v1 = 0;
  v3 = v43 + 64;
  v2 = *(v43 + 64);
  v40 = v43;
  v4 = 1 << *(v43 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2;
  v7 = (v4 + 63) >> 6;
  v8 = MEMORY[0x1E69E7CC8];
  if ((v5 & v2) == 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v12 = v1;
LABEL_16:
    v15 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v16 = v15 | (v12 << 6);
    v17 = (*(v40 + 48) + 16 * v16);
    v19 = *v17;
    v18 = v17[1];
    sub_1B698FE74(*(v40 + 56) + 32 * v16, v42);
    *&v43 = v19;
    *(&v43 + 1) = v18;
    sub_1B69979CC(v42, &v44);

    v14 = v12;
LABEL_17:
    v46 = v43;
    v47[0] = v44;
    v47[1] = v45;
    v20 = *(&v43 + 1);
    if (!*(&v43 + 1))
    {

      return v8;
    }

    v21 = v46;
    sub_1B69979CC(v47, &v43);
    v22 = type metadata accessor for JSON();
    v23 = objc_allocWithZone(v22);
    sub_1B69C1678(&v43, v23 + OBJC_IVAR___AAJSON_value);
    v41.receiver = v23;
    v41.super_class = v22;
    v24 = objc_msgSendSuper2(&v41, sel_init);
    sub_1B6981634(&v43);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v43 = v8;
    v26 = sub_1B6993940(v21, v20);
    v29 = v8[2];
    v30 = (v27 & 1) == 0;
    v31 = __OFADD__(v29, v30);
    v32 = v29 + v30;
    if (v31)
    {
      break;
    }

    v33 = v27;
    if (v8[3] >= v32)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_23;
      }

      v38 = v26;
      sub_1B69DDFC8(v26, v27, v28);
      v26 = v38;
      if ((v33 & 1) == 0)
      {
        goto LABEL_24;
      }

LABEL_7:
      v9 = v26;

      v8 = v43;
      v10 = *(v43 + 56);
      v11 = *(v10 + 8 * v9);
      *(v10 + 8 * v9) = v24;

      v1 = v14;
      if (!v6)
      {
        goto LABEL_9;
      }
    }

    else
    {
      sub_1B69DAA04(v32, isUniquelyReferenced_nonNull_native, v28);
      v26 = sub_1B6993940(v21, v20);
      if ((v33 & 1) != (v34 & 1))
      {
        goto LABEL_37;
      }

LABEL_23:
      if (v33)
      {
        goto LABEL_7;
      }

LABEL_24:
      v8 = v43;
      *(v43 + 8 * (v26 >> 6) + 64) |= 1 << v26;
      v35 = (v8[6] + 16 * v26);
      *v35 = v21;
      v35[1] = v20;
      *(v8[7] + 8 * v26) = v24;
      v36 = v8[2];
      v31 = __OFADD__(v36, 1);
      v37 = v36 + 1;
      if (v31)
      {
        goto LABEL_36;
      }

      v8[2] = v37;
      v1 = v14;
      if (!v6)
      {
LABEL_9:
        if (v7 <= v1 + 1)
        {
          v13 = v1 + 1;
        }

        else
        {
          v13 = v7;
        }

        v14 = v13 - 1;
        while (1)
        {
          v12 = v1 + 1;
          if (__OFADD__(v1, 1))
          {
            break;
          }

          if (v12 >= v7)
          {
            v6 = 0;
            v44 = 0u;
            v45 = 0u;
            v43 = 0u;
            goto LABEL_17;
          }

          v6 = *(v3 + 8 * v12);
          ++v1;
          if (v6)
          {
            goto LABEL_16;
          }
        }

        __break(1u);
        break;
      }
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  result = sub_1B6ABA190();
  __break(1u);
  return result;
}

id sub_1B69D9EFC()
{
  v1 = OBJC_IVAR___AAJSON_value;
  sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    }
  }

  else
  {
    sub_1B6981634(v4);
  }

  sub_1B69C1678(v0 + v1, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    }
  }

  else
  {
    sub_1B6981634(v4);
  }

  sub_1B69C1678(v0 + v1, v4);
  if (v5)
  {
    if (swift_dynamicCast())
    {
      return [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
    }
  }

  else
  {
    sub_1B6981634(v4);
  }

  return 0;
}

void *sub_1B69DA064(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!sub_1B69D9B74() && !sub_1B69D995C())
  {
    sub_1B69E04CC();
    swift_allocError();
    *v8 = 0;
    goto LABEL_11;
  }

  sub_1B69C1678(v1 + OBJC_IVAR___AAJSON_value, &v11);
  if (v12)
  {
    sub_1B69979CC(&v11, v13);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v14 = sub_1B69E0520();
    v13[0] = v3;
    if (v12)
    {
      sub_1B6981634(&v11);
    }
  }

  v4 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v5 = sub_1B6ABA0E0();
  __swift_destroy_boxed_opaque_existential_1(v13);
  v13[0] = 0;
  v6 = [v4 dataWithJSONObject:v5 options:a1 error:v13];
  swift_unknownObjectRelease();
  v7 = v13[0];
  if (!v6)
  {
    v1 = v7;
    sub_1B6AB8A70();

LABEL_11:
    swift_willThrow();
    goto LABEL_12;
  }

  v1 = sub_1B6AB8C80();

LABEL_12:
  v9 = *MEMORY[0x1E69E9840];
  return v1;
}

id JSON.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id JSON.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for JSON();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t JSON.payload()()
{
  if (sub_1B69D9B74())
  {

    sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, v4);
    if (v5)
    {
      sub_1B69881C8(0, &qword_1EDBCCC60, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E5E28]);
      if (swift_dynamicCast())
      {
        return v3;
      }
    }

    else
    {
      sub_1B6981634(v4);
    }
  }

  sub_1B69E04CC();
  swift_allocError();
  *v2 = 0;
  return swift_willThrow();
}

unint64_t JSON.description.getter()
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = sub_1B6AB9320();
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1B69C1678(v0 + OBJC_IVAR___AAJSON_value, &v18);
  if (v19)
  {
    sub_1B69979CC(&v18, &v20);
  }

  else
  {
    v3 = [objc_allocWithZone(MEMORY[0x1E695DFB0]) init];
    v21 = sub_1B69E0520();
    *&v20 = v3;
    if (v19)
    {
      sub_1B6981634(&v18);
    }
  }

  v4 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(&v20, v21);
  v5 = sub_1B6ABA0E0();
  __swift_destroy_boxed_opaque_existential_1(&v20);
  *&v20 = 0;
  v6 = [v4 dataWithJSONObject:v5 options:4 error:&v20];
  swift_unknownObjectRelease();
  v7 = v20;
  if (v6)
  {
    v8 = sub_1B6AB8C80();
    v10 = v9;

    sub_1B6AB9310();
    v11 = sub_1B6AB92F0();
    v13 = v12;
    sub_1B6993C94(v8, v10);
    if (v13)
    {
      result = v11;
    }

    else
    {
      result = 0xD00000000000001ELL;
    }
  }

  else
  {
    v15 = v7;
    v16 = sub_1B6AB8A70();

    swift_willThrow();
    *&v20 = 0;
    *(&v20 + 1) = 0xE000000000000000;
    *&v18 = v16;
    sub_1B697ED90(0, &qword_1EDBCBB00);
    sub_1B6AB9DF0();

    result = v20;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B69DA770(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1B6ABA1F0();
  type metadata accessor for CFString(0);
  sub_1B69E0D68(&qword_1EB95AD68, type metadata accessor for CFString);
  sub_1B6AB8F50();
  v4 = sub_1B6ABA230();

  return sub_1B69DD504(a1, v4);
}

unint64_t sub_1B69DA824(uint64_t a1, unint64_t a2)
{
  v5 = *(v2 + 40);
  sub_1B6ABA1F0();
  switch(a2)
  {
    case 0uLL:
      v6 = 0;
      goto LABEL_7;
    case 1uLL:
      v6 = 1;
      goto LABEL_7;
    case 2uLL:
      v6 = 2;
LABEL_7:
      MEMORY[0x1B8C98A40](v6);
      goto LABEL_9;
  }

  MEMORY[0x1B8C98A40](3);
  sub_1B6AB9380();
LABEL_9:
  v7 = sub_1B6ABA230();

  return sub_1B69DD610(a1, a2, v7);
}

unint64_t sub_1B69DA8D8(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  sub_1B6AB8E40();
  sub_1B69E0D68(&qword_1EDBC95A0, MEMORY[0x1E69695A8]);
  v5 = sub_1B6AB9250();

  return sub_1B69DD80C(a1, v5);
}

unint64_t sub_1B69DA970(uint64_t a1)
{
  v3 = *(v1 + 40);
  sub_1B6AB92E0();
  sub_1B6ABA1F0();
  sub_1B6AB9380();
  v4 = sub_1B6ABA230();

  return sub_1B69DD9CC(a1, v4);
}

uint64_t sub_1B69DAA04(uint64_t a1, char a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v7 = *(*v3 + 24);
  }

  sub_1B69E0DB0(0, &qword_1EDBCAFD8, a3, type metadata accessor for JSON);
  v40 = a2;
  result = sub_1B6AB9E80();
  v9 = result;
  if (*(v6 + 16))
  {
    v38 = v4;
    v39 = v6;
    v10 = 0;
    v11 = (v6 + 64);
    v12 = 1 << *(v6 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v6 + 64);
    v15 = (v12 + 63) >> 6;
    v16 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_17:
      v22 = v19 | (v10 << 6);
      v23 = (*(v6 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v6 + 56) + 8 * v22);
      if ((v40 & 1) == 0)
      {
        v27 = v23[1];

        v28 = v26;
      }

      v29 = *(v9 + 40);
      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v30 = -1 << *(v9 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v16 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v16 + 8 * v32);
          if (v36 != -1)
          {
            v17 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v31) & ~*(v16 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v6 = v39;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v4 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v6 + 32);
    v4 = v38;
    if (v37 >= 64)
    {
      bzero(v11, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v37;
    }

    *(v6 + 16) = 0;
  }

LABEL_35:
  *v4 = v9;
  return result;
}

uint64_t sub_1B69DACB8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B69C11A0(0, &qword_1EDBCB630, sub_1B69E0E68);
  v40 = a2;
  result = sub_1B6AB9E80();
  v8 = result;
  if (*(v5 + 16))
  {
    v39 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v41 = (v13 - 1) & v13;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(v5 + 56);
      v24 = *(v5 + 48) + 40 * v22;
      v25 = *v24;
      v26 = *(v24 + 8);
      v44 = *(v24 + 16);
      v27 = *(v24 + 32);
      v28 = (v23 + 16 * v22);
      v29 = v28[1];
      v42 = *v28;
      v43 = *(v24 + 24);
      if ((v40 & 1) == 0)
      {
        sub_1B69E0EBC(v25, v26, v44, v43, v27);
      }

      v30 = *(v8 + 40);
      sub_1B6ABA1F0();
      if (v27)
      {
        MEMORY[0x1B8C98A40](1);
        sub_1B6AB9380();
      }

      else
      {
        MEMORY[0x1B8C98A40](0);
      }

      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v31 = -1 << *(v8 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v15 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v15 + 8 * v33);
          if (v37 != -1)
          {
            v16 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_40:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v32) & ~*(v15 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v8 + 48) + 40 * v16;
      *v17 = v25;
      *(v17 + 8) = v26;
      *(v17 + 16) = v44;
      *(v17 + 24) = v43;
      *(v17 + 32) = v27;
      v18 = (*(v8 + 56) + 16 * v16);
      v13 = v41;
      *v18 = v42;
      v18[1] = v29;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_40;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v41 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_38;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero(v10, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_38:
  *v3 = v8;
  return result;
}

uint64_t sub_1B69DB000(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B69E0B1C();
  result = sub_1B6AB9E80();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = *(*(v5 + 48) + 8 * v22);
      v24 = (*(v5 + 56) + 32 * v22);
      if (a2)
      {
        v25 = v24[1];
        v37 = *v24;
        v38 = v25;
      }

      else
      {
        sub_1B69C1678(v24, &v37);
        v26 = v23;
      }

      v27 = *(v8 + 40);
      sub_1B6ABA1F0();
      type metadata accessor for CFString(0);
      sub_1B69E0D68(&qword_1EB95AD68, type metadata accessor for CFString);
      sub_1B6AB8F50();
      result = sub_1B6ABA230();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v23;
      v17 = (*(v8 + 56) + 32 * v16);
      v18 = v38;
      *v17 = v37;
      v17[1] = v18;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_36;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero((v5 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1B69DB2D8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B69E0A7C();
  result = sub_1B6AB9E80();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = (*(v5 + 56) + 32 * v20);
      if (a2)
      {
        sub_1B69979CC(v22, v34);
      }

      else
      {
        sub_1B698FE74(v22, v34);
        v23 = v21;
      }

      v24 = *(v8 + 40);
      sub_1B6ABA1F0();
      type metadata accessor for CFString(0);
      sub_1B69E0D68(&qword_1EB95AD68, type metadata accessor for CFString);
      sub_1B6AB8F50();
      result = sub_1B6ABA230();
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      result = sub_1B69979CC(v34, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_36;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1B69DB5AC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B69C11A0(0, &qword_1EB95AE18, sub_1B69811C4);
  result = sub_1B6AB9E80();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (1)
    {
      if (!v13)
      {
        v22 = v9;
        while (1)
        {
          v9 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v9 >= v14)
          {
            break;
          }

          v23 = v10[v9];
          ++v22;
          if (v23)
          {
            v21 = __clz(__rbit64(v23));
            v13 = (v23 - 1) & v23;
            goto LABEL_17;
          }
        }

        if ((a2 & 1) == 0)
        {

          v3 = v40;
          goto LABEL_44;
        }

        v39 = 1 << *(v5 + 32);
        v3 = v40;
        if (v39 >= 64)
        {
          bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v10 = -1 << v39;
        }

        *(v5 + 16) = 0;
        goto LABEL_43;
      }

      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = *(v5 + 48);
      v26 = (*(v5 + 56) + 48 * v24);
      v27 = *(v25 + 16 * v24 + 8);
      v41 = *(v25 + 16 * v24);
      if (a2)
      {
        v28 = *v26;
        v29 = v26[2];
        v43 = v26[1];
        v44 = v29;
        v42 = v28;
      }

      else
      {
        sub_1B69E12F0(v26, &v42);
        sub_1B6992E2C(v41, v27);
      }

      v30 = *(v8 + 40);
      sub_1B6ABA1F0();
      if (!v27)
      {
        v31 = 0;
        goto LABEL_26;
      }

      if (v27 == 1)
      {
        break;
      }

      if (v27 == 2)
      {
        v31 = 2;
LABEL_26:
        MEMORY[0x1B8C98A40](v31);
        goto LABEL_28;
      }

      MEMORY[0x1B8C98A40](3);
      sub_1B6AB9380();
LABEL_28:
      result = sub_1B6ABA230();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v17 = v41;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v17 = v41;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 16 * v16) = v17;
      v18 = (*(v8 + 56) + 48 * v16);
      v19 = v42;
      v20 = v44;
      v18[1] = v43;
      v18[2] = v20;
      *v18 = v19;
      ++*(v8 + 16);
    }

    v31 = 1;
    goto LABEL_26;
  }

LABEL_43:

LABEL_44:
  *v3 = v8;
  return result;
}

uint64_t sub_1B69DB8E0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B69E0DB0(0, &qword_1EB95ADC8, 255, sub_1B69E1084);
  v38 = a2;
  result = sub_1B6AB9E80();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B69DBB9C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B69881C8(0, &qword_1EB95ADC0, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6EC8]);
  v41 = a2;
  result = sub_1B6AB9E80();
  v8 = result;
  if (*(v5 + 16))
  {
    v40 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v21 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v24 = v21 | (v9 << 6);
      v25 = (*(v5 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v5 + 56) + 40 * v24;
      if (v41)
      {
        v29 = *v28;
        v30 = *(v28 + 16);
        v44 = *(v28 + 32);
        v42 = v29;
        v43 = v30;
      }

      else
      {
        sub_1B69E1028(v28, &v42);
      }

      v31 = *(v8 + 40);
      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v32 = -1 << *(v8 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v15 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v15 + 8 * v34);
          if (v38 != -1)
          {
            v16 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v33) & ~*(v15 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v26;
      v17[1] = v27;
      v18 = *(v8 + 56) + 40 * v16;
      v19 = v42;
      v20 = v43;
      *(v18 + 32) = v44;
      *v18 = v19;
      *(v18 + 16) = v20;
      ++*(v8 + 16);
    }

    v22 = v9;
    while (1)
    {
      v9 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v23 = v10[v9];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v13 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v5 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero((v5 + 64), ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v39;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1B69DBE84(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B69E1100();
  v43 = a2;
  result = sub_1B6AB9E80();
  v8 = result;
  if (*(v5 + 16))
  {
    v42 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v22 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v25 = v22 | (v9 << 6);
      v26 = (*(v5 + 48) + 16 * v25);
      v27 = *v26;
      v28 = v26[1];
      v29 = *(v5 + 56) + 56 * v25;
      if (v43)
      {
        v30 = *v29;
        v31 = *(v29 + 16);
        v32 = *(v29 + 32);
        v47 = *(v29 + 48);
        v45 = v31;
        v46 = v32;
        v44 = v30;
      }

      else
      {
        sub_1B69E11D4(v29, &v44);
      }

      v33 = *(v8 + 40);
      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v34 = -1 << *(v8 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v15 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v15 + 8 * v36);
          if (v40 != -1)
          {
            v16 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v35) & ~*(v15 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v27;
      v17[1] = v28;
      v18 = *(v8 + 56) + 56 * v16;
      v19 = v44;
      v20 = v45;
      v21 = v46;
      *(v18 + 48) = v47;
      *(v18 + 16) = v20;
      *(v18 + 32) = v21;
      *v18 = v19;
      ++*(v8 + 16);
    }

    v23 = v9;
    while (1)
    {
      v9 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v24 = v10[v9];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v13 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v42;
      goto LABEL_36;
    }

    v41 = 1 << *(v5 + 32);
    v3 = v42;
    if (v41 >= 64)
    {
      bzero((v5 + 64), ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v41;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1B69DC1F4(uint64_t a1, int a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t))
{
  v8 = v5;
  v61 = a3(0);
  v11 = *(v61 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v49 - v13;
  v14 = sub_1B6AB8E40();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v62 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *v8;
  if (*(*v8 + 24) > a1)
  {
    v19 = *(*v8 + 24);
  }

  sub_1B69E0CBC(0, a4, a5);
  v56 = a2;
  result = sub_1B6AB9E80();
  v21 = result;
  if (*(v18 + 16))
  {
    v22 = 0;
    v23 = (v18 + 64);
    v24 = 1 << *(v18 + 32);
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v26 = v15;
    v27 = v25 & *(v18 + 64);
    v28 = (v24 + 63) >> 6;
    v52 = (v26 + 16);
    v53 = v26;
    v50 = v8;
    v51 = v11 + 16;
    v54 = v18;
    v55 = v11;
    v57 = (v11 + 32);
    v58 = (v26 + 32);
    v29 = result + 64;
    while (v27)
    {
      v31 = __clz(__rbit64(v27));
      v27 &= v27 - 1;
LABEL_17:
      v34 = v31 | (v22 << 6);
      v35 = *(v18 + 48);
      v59 = *(v26 + 72);
      v36 = v35 + v59 * v34;
      if (v56)
      {
        (*v58)(v62, v36, v14);
        v37 = *(v18 + 56);
        v38 = *(v55 + 72);
        (*(v55 + 32))(v60, v37 + v38 * v34, v61);
      }

      else
      {
        (*v52)(v62, v36, v14);
        v39 = *(v18 + 56);
        v38 = *(v55 + 72);
        (*(v55 + 16))(v60, v39 + v38 * v34, v61);
      }

      v40 = *(v21 + 40);
      sub_1B69E0D68(&qword_1EDBC95A0, MEMORY[0x1E69695A8]);
      result = sub_1B6AB9250();
      v41 = -1 << *(v21 + 32);
      v42 = result & ~v41;
      v43 = v42 >> 6;
      if (((-1 << v42) & ~*(v29 + 8 * (v42 >> 6))) == 0)
      {
        v44 = 0;
        v45 = (63 - v41) >> 6;
        while (++v43 != v45 || (v44 & 1) == 0)
        {
          v46 = v43 == v45;
          if (v43 == v45)
          {
            v43 = 0;
          }

          v44 |= v46;
          v47 = *(v29 + 8 * v43);
          if (v47 != -1)
          {
            v30 = __clz(__rbit64(~v47)) + (v43 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v30 = __clz(__rbit64((-1 << v42) & ~*(v29 + 8 * (v42 >> 6)))) | v42 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v29 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v30;
      (*v58)((*(v21 + 48) + v59 * v30), v62, v14);
      result = (*v57)(*(v21 + 56) + v38 * v30, v60, v61);
      ++*(v21 + 16);
      v26 = v53;
      v18 = v54;
    }

    v32 = v22;
    while (1)
    {
      v22 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v22 >= v28)
      {
        break;
      }

      v33 = v23[v22];
      ++v32;
      if (v33)
      {
        v31 = __clz(__rbit64(v33));
        v27 = (v33 - 1) & v33;
        goto LABEL_17;
      }
    }

    if ((v56 & 1) == 0)
    {

      v8 = v50;
      goto LABEL_36;
    }

    v48 = 1 << *(v18 + 32);
    v8 = v50;
    if (v48 >= 64)
    {
      bzero(v23, ((v48 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v23 = -1 << v48;
    }

    *(v18 + 16) = 0;
  }

LABEL_36:
  *v8 = v21;
  return result;
}

uint64_t sub_1B69DC6CC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for Tracker.DelayedEvent(0);
  v47 = *(v6 - 8);
  v7 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1B6AB8E40();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_1B69E0CBC(0, &qword_1EB95AD90, type metadata accessor for Tracker.DelayedEvent);
  v48 = a2;
  result = sub_1B6AB9E80();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1B69E0FC0(v31 + v32 * v28, v52, type metadata accessor for Tracker.DelayedEvent);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_1B69E0F58(v33 + v32 * v28, v52, type metadata accessor for Tracker.DelayedEvent);
      }

      v34 = *(v16 + 40);
      sub_1B69E0D68(&qword_1EDBC95A0, MEMORY[0x1E69695A8]);
      result = sub_1B6AB9250();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_1B69E0FC0(v52, *(v16 + 56) + v32 * v24, type metadata accessor for Tracker.DelayedEvent);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_1B69DCB7C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B69E0DB0(0, &qword_1EB95AD78, 255, sub_1B69E0BF0);
  v38 = a2;
  result = sub_1B6AB9E80();
  v8 = result;
  if (*(v5 + 16))
  {
    v36 = v3;
    v37 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(*(v5 + 56) + 8 * v21);
      if ((v38 & 1) == 0)
      {
        v26 = v22[1];
      }

      v27 = *(v8 + 40);
      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v28 = -1 << *(v8 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v15 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v15 + 8 * v30);
          if (v34 != -1)
          {
            v16 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v29) & ~*(v15 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v8 + 56) + 8 * v16) = v25;
      ++*(v8 + 16);
      v5 = v37;
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v38 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v36;
    if (v35 >= 64)
    {
      bzero(v10, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B69DCE54(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_1B69881C8(0, &qword_1EB95AD98, &type metadata for SummaryEventDatabaseEntity, MEMORY[0x1E69E6EC8]);
  v39 = a2;
  result = sub_1B6AB9E80();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + 32 * v22;
      v27 = *(v26 + 8);
      v40 = *v26;
      v41 = *(v26 + 16);
      if ((v39 & 1) == 0)
      {
      }

      v28 = *(v8 + 40);
      sub_1B6ABA1F0();
      sub_1B6AB9380();
      result = sub_1B6ABA230();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 32 * v16;
      *v18 = v40;
      *(v18 + 8) = v27;
      *(v18 + 16) = v41;
      ++*(v8 + 16);
      v5 = v38;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_1B69DD134(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UserIDComponents();
  v40 = *(v6 - 8);
  v7 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_1B6981418(0, &qword_1EB95ADA8, MEMORY[0x1E69E6EC8]);
  v41 = a2;
  result = sub_1B6AB9E80();
  v12 = result;
  if (*(v9 + 16))
  {
    v39 = v3;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (1)
    {
      if (!v17)
      {
        v23 = v13;
        while (1)
        {
          v13 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            __break(1u);
            goto LABEL_46;
          }

          if (v13 >= v18)
          {
            break;
          }

          v24 = v14[v13];
          ++v23;
          if (v24)
          {
            v22 = __clz(__rbit64(v24));
            v17 = (v24 - 1) & v24;
            goto LABEL_17;
          }
        }

        if ((v41 & 1) == 0)
        {

          v3 = v39;
          goto LABEL_44;
        }

        v38 = 1 << *(v9 + 32);
        v3 = v39;
        if (v38 >= 64)
        {
          bzero((v9 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v14 = -1 << v38;
        }

        *(v9 + 16) = 0;
        goto LABEL_43;
      }

      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v40 + 72);
      v27 = *(v9 + 56) + v26 * v25;
      v28 = *(*(v9 + 48) + 16 * v25 + 8);
      v43 = *(*(v9 + 48) + 16 * v25);
      if (v41)
      {
        sub_1B69E0FC0(v27, v42, type metadata accessor for UserIDComponents);
      }

      else
      {
        sub_1B69E0F58(v27, v42, type metadata accessor for UserIDComponents);
        sub_1B6992E2C(v43, v28);
      }

      v29 = *(v12 + 40);
      sub_1B6ABA1F0();
      if (!v28)
      {
        v30 = 0;
        goto LABEL_26;
      }

      if (v28 == 1)
      {
        break;
      }

      if (v28 == 2)
      {
        v30 = 2;
LABEL_26:
        MEMORY[0x1B8C98A40](v30);
        goto LABEL_28;
      }

      MEMORY[0x1B8C98A40](3);
      sub_1B6AB9380();
LABEL_28:
      result = sub_1B6ABA230();
      v31 = -1 << *(v12 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v19 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v21 = v43;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v19 + 8 * v33);
          if (v37 != -1)
          {
            v20 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_46:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v32) & ~*(v19 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v21 = v43;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v12 + 48) + 16 * v20) = v21;
      result = sub_1B69E0FC0(v42, *(v12 + 56) + v26 * v20, type metadata accessor for UserIDComponents);
      ++*(v12 + 16);
    }

    v30 = 1;
    goto LABEL_26;
  }

LABEL_43:

LABEL_44:
  *v3 = v12;
  return result;
}

unint64_t sub_1B69DD504(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1B69E0D68(&qword_1EB95AD68, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B6AB8F40();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1B69DD610(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v8 = ~v4;
  while (1)
  {
    v9 = (*(v3 + 48) + 16 * v5);
    v10 = *v9;
    v11 = v9[1];
    switch(v11)
    {
      case 0uLL:
        if (!a2)
        {
          v17 = *v9;
          v18 = 0;
          goto LABEL_28;
        }

        sub_1B6992E2C(a1, a2);
        v12 = 0;
        goto LABEL_14;
      case 1uLL:
        if (a2 == 1)
        {
          v17 = *v9;
          v18 = 1;
          goto LABEL_28;
        }

        sub_1B6992E2C(a1, a2);
        v12 = 1;
        goto LABEL_14;
      case 2uLL:
        if (a2 == 2)
        {
          v17 = *v9;
          v18 = 2;
          goto LABEL_28;
        }

        sub_1B6992E2C(a1, a2);
        v12 = 2;
        goto LABEL_14;
    }

    if (a2 < 3)
    {
      sub_1B6992E2C(a1, a2);
      sub_1B6992E2C(v10, v11);
      v12 = v11;
LABEL_14:
      sub_1B69C2E8C(v10, v12);
      sub_1B69C2E8C(a1, a2);
      goto LABEL_15;
    }

    if (v10 == a1 && v11 == a2)
    {
      break;
    }

    v14 = *v9;
    v15 = v9[1];
    v16 = sub_1B6ABA0F0();
    sub_1B6992E2C(a1, a2);
    sub_1B6992E2C(v10, v11);
    sub_1B69C2E8C(v10, v11);
    sub_1B69C2E8C(a1, a2);
    if (v16)
    {
      return v5;
    }

LABEL_15:
    v5 = (v5 + 1) & v8;
    if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  sub_1B6992E2C(a1, a2);
  sub_1B6992E2C(a1, a2);
  v17 = a1;
  v18 = a2;
LABEL_28:
  sub_1B69C2E8C(v17, v18);
  sub_1B69C2E8C(a1, a2);
  return v5;
}

unint64_t sub_1B69DD80C(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = sub_1B6AB8E40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4);
      sub_1B69E0D68(&qword_1EDBCA470, MEMORY[0x1E69695A8]);
      v16 = sub_1B6AB92A0();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1B69DD9CC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1B6AB92E0();
      v9 = v8;
      if (v7 == sub_1B6AB92E0() && v9 == v10)
      {
        break;
      }

      v12 = sub_1B6ABA0F0();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

void *sub_1B69DDAD0()
{
  v1 = v0;
  sub_1B69C11A0(0, &qword_1EDBC8978, sub_1B69C156C);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 32 * v17;
        v19 = (*(v2 + 48) + 32 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = v19[2];
        v23 = v19[3];
        v17 *= 16;
        v24 = (*(v2 + 56) + v17);
        v25 = *v24;
        v26 = v24[1];
        v27 = (*(v4 + 48) + v18);
        *v27 = v21;
        v27[1] = v20;
        v27[2] = v22;
        v27[3] = v23;
        v28 = (*(v4 + 56) + v17);
        *v28 = v25;
        v28[1] = v26;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B69DDC84()
{
  v1 = v0;
  sub_1B69881C8(0, &qword_1EDBCBB10, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1B698FE74(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B69979CC(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1B69DDE44()
{
  v1 = v0;
  sub_1B69E0DB0(0, &qword_1EDBCAFE0, 255, type metadata accessor for UploadDropboxFile);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1B69DDFC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  sub_1B69E0DB0(0, &qword_1EDBCAFD8, a3, type metadata accessor for JSON);
  v5 = *v3;
  v6 = sub_1B6AB9E70();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;

        result = v23;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

void *sub_1B69DE144()
{
  v1 = v0;
  sub_1B69C11A0(0, &qword_1EDBCB630, sub_1B69E0E68);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        v19 = *(v2 + 48) + 40 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 16);
        v23 = *(v19 + 24);
        v24 = *(v19 + 32);
        v17 *= 16;
        v25 = (*(v2 + 56) + v17);
        v26 = *v25;
        v27 = v25[1];
        v28 = *(v4 + 48) + v18;
        *v28 = v20;
        *(v28 + 8) = v21;
        *(v28 + 16) = v22;
        *(v28 + 24) = v23;
        *(v28 + 32) = v24;
        v29 = (*(v4 + 56) + v17);
        *v29 = v26;
        v29[1] = v27;
        sub_1B69E0EBC(v20, v21, v22, v23, v24);
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1B69DE2F4()
{
  v1 = v0;
  sub_1B69E0B1C();
  v2 = *v0;
  v3 = sub_1B6AB9E70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1B69C1678(*(v2 + 56) + 32 * v17, v21);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = (*(v4 + 56) + 32 * v17);
        v20 = v21[1];
        *v19 = v21[0];
        v19[1] = v20;
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_1B69DE468()
{
  v1 = v0;
  sub_1B69E0A7C();
  v2 = *v0;
  v3 = sub_1B6AB9E70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_1B698FE74(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1B69979CC(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B69DE5F8()
{
  v1 = v0;
  sub_1B69C11A0(0, &qword_1EB95AE18, sub_1B69811C4);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        v22 = 48 * v17;
        sub_1B69E12F0(*(v2 + 56) + 48 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v20;
        v23[1] = v21;
        v24 = (*(v4 + 56) + v22);
        v26 = v28[1];
        v25 = v28[2];
        *v24 = v28[0];
        v24[1] = v26;
        v24[2] = v25;
        result = sub_1B6992E2C(v20, v21);
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

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1B69DE7CC()
{
  v1 = v0;
  v27 = sub_1B6AB9E10();
  v29 = *(v27 - 8);
  v2 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v27);
  v26 = v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69A52FC();
  v4 = *v0;
  v5 = sub_1B6AB9E70();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25[0] = v1;
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v25[1] = v29 + 32;
    v25[2] = v29 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v30 = (v14 - 1) & v14;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = v29;
        v21 = *(v29 + 72) * v19;
        v22 = v26;
        v23 = v27;
        (*(v29 + 16))(v26, *(v4 + 48) + v21, v27);
        v19 *= 32;
        sub_1B698FE74(*(v4 + 56) + v19, v31);
        v24 = v28;
        (*(v20 + 32))(*(v28 + 48) + v21, v22, v23);
        result = sub_1B69979CC(v31, (*(v24 + 56) + v19));
        v14 = v30;
      }

      while (v30);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v25[0];
        v6 = v28;
        goto LABEL_21;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v30 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v6;
  }

  return result;
}

void *sub_1B69DEA70()
{
  v1 = v0;
  sub_1B69E0DB0(0, &qword_1EB95ADC8, 255, sub_1B69E1084);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B69DEBF4()
{
  v1 = v0;
  sub_1B69881C8(0, &qword_1EB95ADC0, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1B69E1028(*(v2 + 56) + 40 * v17, v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v29;
        v26 = v28[1];
        *v24 = v28[0];
        *(v24 + 16) = v26;
        *(v24 + 32) = v25;
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

        v1 = v27;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1B69DEDC0()
{
  v1 = v0;
  sub_1B69E1100();
  v2 = *v0;
  v3 = sub_1B6AB9E70();
  v4 = v3;
  if (*(v2 + 16))
  {
    v28 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 56 * v17;
        sub_1B69E11D4(*(v2 + 56) + 56 * v17, v29);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = *(v4 + 56) + v22;
        v25 = v30;
        v26 = v29[2];
        v27 = v29[1];
        *v24 = v29[0];
        *(v24 + 16) = v27;
        *(v24 + 32) = v26;
        *(v24 + 48) = v25;
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

        v1 = v28;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

char *sub_1B69DF00C(uint64_t (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  v6 = v3;
  v48 = a1(0);
  v51 = *(v48 - 8);
  v7 = *(v51 + 64);
  MEMORY[0x1EEE9AC00](v48);
  v47 = &v37 - v8;
  v46 = sub_1B6AB8E40();
  v50 = *(v46 - 8);
  v9 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69E0CBC(0, a2, a3);
  v11 = *v3;
  v12 = sub_1B6AB9E70();
  v13 = v12;
  if (*(v11 + 16))
  {
    result = (v12 + 64);
    v15 = (v11 + 64);
    v16 = ((1 << *(v13 + 32)) + 63) >> 6;
    v37 = v6;
    v38 = v11 + 64;
    if (v13 != v11 || result >= &v15[8 * v16])
    {
      result = memmove(result, v15, 8 * v16);
    }

    v17 = 0;
    v18 = *(v11 + 16);
    v49 = v13;
    *(v13 + 16) = v18;
    v19 = 1 << *(v11 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v11 + 64);
    v22 = (v19 + 63) >> 6;
    v42 = v50 + 16;
    v43 = v22;
    v40 = v50 + 32;
    v41 = v51 + 16;
    v39 = v51 + 32;
    v44 = v11;
    v24 = v45;
    v23 = v46;
    if (v21)
    {
      do
      {
        v25 = __clz(__rbit64(v21));
        v52 = (v21 - 1) & v21;
LABEL_14:
        v28 = v25 | (v17 << 6);
        v29 = v50;
        v30 = *(v50 + 72) * v28;
        (*(v50 + 16))(v24, *(v11 + 48) + v30, v23);
        v31 = v51;
        v32 = *(v51 + 72) * v28;
        v33 = v47;
        v34 = v48;
        (*(v51 + 16))(v47, *(v11 + 56) + v32, v48);
        v35 = v49;
        (*(v29 + 32))(*(v49 + 48) + v30, v24, v23);
        v36 = *(v35 + 56);
        v11 = v44;
        result = (*(v31 + 32))(v36 + v32, v33, v34);
        v22 = v43;
        v21 = v52;
      }

      while (v52);
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v17 >= v22)
      {

        v6 = v37;
        v13 = v49;
        goto LABEL_18;
      }

      v27 = *(v38 + 8 * v17);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v52 = (v27 - 1) & v27;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v6 = v13;
  }

  return result;
}

void *sub_1B69DF398(unint64_t *a1, unint64_t *a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v5 = v4;
  sub_1B699A1D4(0, a1, a2);
  v6 = *v4;
  v7 = sub_1B6AB9E70();
  v8 = v7;
  if (*(v6 + 16))
  {
    v28 = v5;
    result = (v7 + 64);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 64 + 8 * v10)
    {
      result = memmove(result, (v6 + 64), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = *(v6 + 64);
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
        v22 = 16 * v21;
        v23 = (*(v6 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = 40 * v21;
        sub_1B6982544(*(v6 + 56) + 40 * v21, v30);
        v27 = (*(v8 + 48) + v22);
        *v27 = v24;
        v27[1] = v25;
        a4(v30, *(v8 + 56) + v26);
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

        v5 = v28;
        goto LABEL_21;
      }

      v20 = *(v6 + 64 + 8 * v12);
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

LABEL_21:
    *v5 = v8;
  }

  return result;
}

void *sub_1B69DF54C()
{
  v1 = v0;
  v2 = type metadata accessor for Tracker.Timer(0);
  v34 = *(v2 - 8);
  v3 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69E0DB0(0, &unk_1EDBCAA30, 255, type metadata accessor for Tracker.Timer);
  v5 = *v0;
  v6 = sub_1B6AB9E70();
  v7 = v6;
  if (*(v5 + 16))
  {
    v32 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v35 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v36 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = *(v5 + 56);
        v23 = (*(v5 + 48) + 16 * v20);
        v24 = v5;
        v25 = *v23;
        v26 = v23[1];
        v27 = v33;
        v28 = *(v34 + 72) * v20;
        sub_1B69E0F58(v22 + v28, v33, type metadata accessor for Tracker.Timer);
        v29 = v35;
        v30 = (*(v35 + 48) + v21);
        *v30 = v25;
        v30[1] = v26;
        v5 = v24;
        sub_1B69E0FC0(v27, *(v29 + 56) + v28, type metadata accessor for Tracker.Timer);

        v15 = v36;
      }

      while (v36);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v32;
        v7 = v35;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v36 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_1B69DF7C0()
{
  v1 = v0;
  v2 = type metadata accessor for Tracker.DelayedEvent(0);
  v40 = *(v2 - 8);
  v3 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v39 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1B6AB8E40();
  v42 = *(v38 - 8);
  v5 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69E0CBC(0, &qword_1EB95AD90, type metadata accessor for Tracker.DelayedEvent);
  v7 = *v0;
  v8 = sub_1B6AB9E70();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v41 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v34 = v42 + 32;
    v35 = v42 + 16;
    v36 = v7;
    v19 = v42;
    v20 = v9;
    if (v17)
    {
      do
      {
        v21 = __clz(__rbit64(v17));
        v43 = (v17 - 1) & v17;
LABEL_14:
        v24 = v21 | (v13 << 6);
        v25 = *(v19 + 72) * v24;
        v27 = v37;
        v26 = v38;
        (*(v19 + 16))(v37, *(v7 + 48) + v25, v38);
        v28 = *(v7 + 56);
        v29 = v39;
        v30 = *(v40 + 72) * v24;
        sub_1B69E0F58(v28 + v30, v39, type metadata accessor for Tracker.DelayedEvent);
        (*(v19 + 32))(*(v20 + 48) + v25, v27, v26);
        v31 = v29;
        v7 = v36;
        result = sub_1B69E0FC0(v31, *(v20 + 56) + v30, type metadata accessor for Tracker.DelayedEvent);
        v17 = v43;
      }

      while (v43);
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

        v1 = v32;
        v9 = v41;
        goto LABEL_18;
      }

      v23 = *(v33 + 8 * v13);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v43 = (v23 - 1) & v23;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

void *sub_1B69DFAF4()
{
  v1 = v0;
  sub_1B69E0DB0(0, &qword_1EB95AD78, 255, sub_1B69E0BF0);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B69DFC78()
{
  v1 = v0;
  sub_1B69881C8(0, &qword_1EDBC7B68, &type metadata for DataProvider, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + v17);
        v22 = (*(v4 + 48) + v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B69DFE2C(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  v4 = v3;
  sub_1B69BE2AC(0, a1, a2, a3);
  v5 = *v3;
  v6 = sub_1B6AB9E70();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = (*(v5 + 48) + 16 * v20);
        v22 = v21[1];
        v23 = *(*(v5 + 56) + 8 * v20);
        v24 = (*(v7 + 48) + 16 * v20);
        *v24 = *v21;
        v24[1] = v22;
        *(*(v7 + 56) + 8 * v20) = v23;
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {
        goto LABEL_19;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v4 = v7;
  }

  return result;
}

void *sub_1B69DFF9C()
{
  v1 = v0;
  sub_1B69881C8(0, &qword_1EB95AD98, &type metadata for SummaryEventDatabaseEntity, MEMORY[0x1E69E6EC8]);
  v2 = *v0;
  v3 = sub_1B6AB9E70();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = *(v22 + 8);
        v25 = (*(v4 + 48) + v18);
        v26 = *(v22 + 16);
        *v25 = v21;
        v25[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v24;
        *(v27 + 16) = v26;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B69E0138()
{
  v1 = v0;
  v2 = type metadata accessor for UserIDComponents();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v31 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B6981418(0, &qword_1EB95ADA8, MEMORY[0x1E69E6EC8]);
  v5 = *v0;
  v6 = sub_1B6AB9E70();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v34 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v31;
        v26 = *(v32 + 72) * v20;
        sub_1B69E0F58(*(v5 + 56) + v26, v31, type metadata accessor for UserIDComponents);
        v27 = v33;
        v28 = (*(v33 + 48) + v21);
        *v28 = v23;
        v28[1] = v24;
        sub_1B69E0FC0(v25, *(v27 + 56) + v26, type metadata accessor for UserIDComponents);
        result = sub_1B6992E2C(v23, v24);
        v15 = v34;
      }

      while (v34);
    }

    v18 = v11;
    v7 = v33;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v30;
        goto LABEL_18;
      }

      v19 = *(v9 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v34 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

id sub_1B69E03A4()
{
  v14 = *MEMORY[0x1E69E9840];
  v1 = objc_opt_self();
  v2 = sub_1B6AB8C60();
  *&v12 = 0;
  v3 = [v1 JSONObjectWithData:v2 options:4 error:&v12];

  v4 = v12;
  if (v3)
  {
    sub_1B6AB9BC0();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = v4;
    v6 = sub_1B6AB8A70();

    swift_willThrow();
    v12 = 0u;
    v13 = 0u;
  }

  v7 = &v0[OBJC_IVAR___AAJSON_value];
  v8 = v13;
  *v7 = v12;
  *(v7 + 1) = v8;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for JSON();
  result = objc_msgSendSuper2(&v11, sel_init);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t sub_1B69E04CC()
{
  result = qword_1EB95AD38;
  if (!qword_1EB95AD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AD38);
  }

  return result;
}

unint64_t sub_1B69E0520()
{
  result = qword_1EDBC8048;
  if (!qword_1EDBC8048)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDBC8048);
  }

  return result;
}

unint64_t sub_1B69E0570()
{
  result = qword_1EB95AD40;
  if (!qword_1EB95AD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AD40);
  }

  return result;
}

unint64_t sub_1B69E05C8()
{
  result = qword_1EB95AD48;
  if (!qword_1EB95AD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AD48);
  }

  return result;
}

unint64_t sub_1B69E0620()
{
  result = qword_1EB95AD50;
  if (!qword_1EB95AD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AD50);
  }

  return result;
}

unint64_t sub_1B69E0678()
{
  result = qword_1EB95AD58;
  if (!qword_1EB95AD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AD58);
  }

  return result;
}

unint64_t sub_1B69E06D0()
{
  result = qword_1EDBCA4E0;
  if (!qword_1EDBCA4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCA4E0);
  }

  return result;
}

uint64_t dispatch thunk of JSON.subscript.getter()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x68))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x70))();
}

void sub_1B69E0A7C()
{
  if (!qword_1EB95AD60)
  {
    type metadata accessor for CFString(255);
    sub_1B69E0D68(&qword_1EB95AAF0, type metadata accessor for CFString);
    v0 = sub_1B6AB9EA0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95AD60);
    }
  }
}

void sub_1B69E0B1C()
{
  if (!qword_1EB95AD70)
  {
    type metadata accessor for CFString(255);
    sub_1B6980954(255, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720]);
    sub_1B69E0D68(&qword_1EB95AAF0, type metadata accessor for CFString);
    v0 = sub_1B6AB9EA0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95AD70);
    }
  }
}

void sub_1B69E0C58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1B69E0CBC(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    sub_1B6AB8E40();
    a3(255);
    sub_1B69E0D68(&qword_1EDBC95A0, MEMORY[0x1E69695A8]);
    v5 = sub_1B6AB9EA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1B69E0D68(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1B69E0DB0(uint64_t a1, unint64_t *a2, uint64_t a3, void (*a4)(uint64_t))
{
  if (!*a2)
  {
    a4(a3);
    v5 = sub_1B6AB9EA0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_1B69E0E14()
{
  result = qword_1EB95ADA0;
  if (!qword_1EB95ADA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95ADA0);
  }

  return result;
}

unint64_t sub_1B69E0E68()
{
  result = qword_1EDBCB810;
  if (!qword_1EDBCB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDBCB810);
  }

  return result;
}

uint64_t sub_1B69E0EBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {

    v5 = vars8;
  }
}

uint64_t sub_1B69E0F58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B69E0FC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1B69E1084()
{
  if (!qword_1EB95ADD0)
  {
    sub_1B697ED90(255, &qword_1EDBCBB00);
    v0 = sub_1B6AB9720();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95ADD0);
    }
  }
}

void sub_1B69E1100()
{
  if (!qword_1EB95ADD8)
  {
    sub_1B69E1254(255, &qword_1EB95ADE0, sub_1B69E1184);
    v0 = sub_1B6AB9EA0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB95ADD8);
    }
  }
}

unint64_t sub_1B69E1184()
{
  result = qword_1EB95ADE8;
  if (!qword_1EB95ADE8)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EB95ADE8);
  }

  return result;
}

uint64_t sub_1B69E11D4(uint64_t a1, uint64_t a2)
{
  sub_1B69E1254(0, &qword_1EB95ADF8, sub_1B697E288);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1B69E1254(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1B6980954(255, &qword_1EB95ADF0, MEMORY[0x1E69E69B8], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1B69E1350()
{
  v1 = v0;
  v2 = sub_1B6ABA330();
  v4 = v3;
  swift_beginAccess();
  v5 = *(v0 + 16);
  if (*(v5 + 16))
  {

    v6 = sub_1B6993940(v2, v4);
    if (v7)
    {
      v8 = v6;

      v9 = *(*(v5 + 56) + 8 * v8);

      return;
    }
  }

  v32 = v2;
  v33 = v4;
  v34 = v1;
  v10 = [objc_msgSend(objc_allocWithZone(swift_getObjCClassFromMetadata()) init)];
  type metadata accessor for BridgedEventProperty();
  v11 = sub_1B6AB9210();

  v12 = 0;
  v14 = v11 + 64;
  v13 = *(v11 + 64);
  v35 = v11;
  v15 = 1 << *(v11 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & v13;
  v18 = MEMORY[0x1E69E7CC0];
  v19 = (v15 + 63) >> 6;
  if ((v16 & v13) != 0)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v20 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      swift_beginAccess();

      v30 = *(v34 + 16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *(v34 + 16);
      *(v34 + 16) = 0x8000000000000000;
      sub_1B69BDFBC(v18, v32, v33, isUniquelyReferenced_nonNull_native);

      *(v34 + 16) = v36;
      swift_endAccess();
      swift_unknownObjectRelease();
      return;
    }

    v17 = *(v14 + 8 * v20);
    ++v12;
    if (v17)
    {
      v12 = v20;
      do
      {
LABEL_12:
        v21 = __clz(__rbit64(v17)) | (v12 << 6);
        v22 = (*(v35 + 48) + 16 * v21);
        v23 = *v22;
        v24 = v22[1];
        v25 = *(*(v35 + 56) + 8 * v21);

        v26 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1B69BDE7C(0, *(v18 + 2) + 1, 1, v18);
        }

        v28 = *(v18 + 2);
        v27 = *(v18 + 3);
        if (v28 >= v27 >> 1)
        {
          v18 = sub_1B69BDE7C((v27 > 1), v28 + 1, 1, v18);
        }

        v17 &= v17 - 1;
        *(v18 + 2) = v28 + 1;
        v29 = &v18[56 * v28];
        *(v29 + 4) = v23;
        *(v29 + 5) = v24;
        *(v29 + 6) = v26;
        *(v29 + 56) = v37;
        *(v29 + 9) = &type metadata for BridgedEventMirrorProperty;
        *(v29 + 10) = &off_1F2E7AD28;
      }

      while (v17);
    }
  }

  __break(1u);
}

uint64_t sub_1B69E1654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1B69979CC(a1, v12);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    sub_1B69A18C4(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v11;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CA0];
    v10 = MEMORY[0x1E69E6720];
    sub_1B69E8690(a1, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B69809A4);
    sub_1B69A3110(a2, a3, v12);

    return sub_1B69E8690(v12, &qword_1EDBCBAF0, v9 + 8, v10, sub_1B69809A4);
  }

  return result;
}

uint64_t sub_1B69E1764(uint64_t a1, uint64_t a2)
{
  sub_1B69E8EF8(0, &qword_1EB95AEE8, sub_1B69844CC, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  sub_1B69844CC(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1B69E8244(a1, &qword_1EB95AEE8, sub_1B69844CC);
    sub_1B6A96BB4(a2, v8);
    v15 = sub_1B6AB8E40();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_1B69E8244(v8, &qword_1EB95AEE8, sub_1B69844CC);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_1B69E7420(v14, a2, isUniquelyReferenced_nonNull_native, sub_1B69DEF70, sub_1B69DC158, sub_1B69844CC, sub_1B69844CC);
    v19 = sub_1B6AB8E40();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_1B69E1A00(uint64_t a1, uint64_t a2)
{
  sub_1B69E8D9C();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B69E8E20(0, &qword_1EDBC8E18, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E8660]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - v13;
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1B69E8E9C(a1);
    sub_1B6A96BFC(a2, v8);
    v15 = sub_1B6AB8E40();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_1B69E8E9C(v8);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_1B69E71F0(v14, a2, isUniquelyReferenced_nonNull_native);
    v19 = sub_1B6AB8E40();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_1B69E1C2C(uint64_t a1, uint64_t a2)
{
  sub_1B69E8EF8(0, &qword_1EB95AF20, sub_1B6984CE4, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - v7;
  sub_1B6984CE4(0);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v11 + 48))(a1, 1, v10) == 1)
  {
    sub_1B69E8244(a1, &qword_1EB95AF20, sub_1B6984CE4);
    sub_1B6A96E48(a2, v8);
    v15 = sub_1B6AB8E40();
    (*(*(v15 - 8) + 8))(a2, v15);
    return sub_1B69E8244(v8, &qword_1EB95AF20, sub_1B6984CE4);
  }

  else
  {
    (*(v11 + 32))(v14, a1, v10);
    v17 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    sub_1B69E7420(v14, a2, isUniquelyReferenced_nonNull_native, sub_1B69DEFD8, sub_1B69DC1C0, sub_1B6984CE4, sub_1B6984CE4);
    v19 = sub_1B6AB8E40();
    result = (*(*(v19 - 8) + 8))(a2, v19);
    *v2 = v21;
  }

  return result;
}

uint64_t sub_1B69E1EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_1B6980E70(a1, v10);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v3;
    sub_1B699A5C4(v10, a2, a3, isUniquelyReferenced_nonNull_native, sub_1B69DF368, sub_1B69DC69C, sub_1B699A784, sub_1B699A784);

    *v3 = v9;
  }

  else
  {
    sub_1B69E8690(a1, &qword_1EDBCAD20, qword_1EDBCB828, &protocol descriptor for RestartTimerType, sub_1B6994418);
    sub_1B6A96E90(a2, a3, v10);

    return sub_1B69E8690(v10, &qword_1EDBCAD20, qword_1EDBCB828, &protocol descriptor for RestartTimerType, sub_1B6994418);
  }

  return result;
}

uint64_t sub_1B69E200C(uint64_t a1, uint64_t a2)
{
  sub_1B69E8EF8(0, &qword_1EB95AE30, type metadata accessor for Tracker.DelayedEvent, MEMORY[0x1E69E6720]);
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - v7;
  v9 = type metadata accessor for Tracker.DelayedEvent(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v13 + 48))(a1, 1) == 1)
  {
    sub_1B69E8244(a1, &qword_1EB95AE30, type metadata accessor for Tracker.DelayedEvent);
    sub_1B6A97110(a2, v8);
    v14 = sub_1B6AB8E40();
    (*(*(v14 - 8) + 8))(a2, v14);
    return sub_1B69E8244(v8, &qword_1EB95AE30, type metadata accessor for Tracker.DelayedEvent);
  }

  else
  {
    sub_1B69E86F0(a1, v12, type metadata accessor for Tracker.DelayedEvent);
    v16 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    sub_1B69E764C(v12, a2, isUniquelyReferenced_nonNull_native);
    v18 = sub_1B6AB8E40();
    result = (*(*(v18 - 8) + 8))(a2, v18);
    *v2 = v20;
  }

  return result;
}

uint64_t sub_1B69E225C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  if (a1)
  {
    v8 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v3;
    sub_1B69E784C(a1, a2, a3, isUniquelyReferenced_nonNull_native, sub_1B69DFAF4, sub_1B69DCB7C);

    *v3 = v19;
  }

  else
  {
    v11 = *v3;
    v12 = sub_1B6993940(a2, a3);
    LOBYTE(v11) = v13;

    if (v11)
    {
      v14 = *v4;
      v15 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v4;
      v20 = *v4;
      if (!v15)
      {
        sub_1B69DFAF4();
        v16 = v20;
      }

      v17 = *(*(v16 + 48) + 16 * v12 + 8);

      v18 = *(*(v16 + 56) + 8 * v12);

      result = sub_1B69AD900(v12, v16);
      *v4 = v16;
    }
  }

  return result;
}

uint64_t sub_1B69E237C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  sub_1B69E8EF8(0, &qword_1EB95AE78, type metadata accessor for UserIDComponents, MEMORY[0x1E69E6720]);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for UserIDComponents();
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v15 + 48))(a1, 1) == 1)
  {
    sub_1B69E8244(a1, &qword_1EB95AE78, type metadata accessor for UserIDComponents);
    sub_1B6A972AC(a2, a3, v10);
    sub_1B69C2E8C(a2, a3);
    return sub_1B69E8244(v10, &qword_1EB95AE78, type metadata accessor for UserIDComponents);
  }

  else
  {
    sub_1B69E86F0(a1, v14, type metadata accessor for UserIDComponents);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1B69E7B84(v14, a2, a3, isUniquelyReferenced_nonNull_native);
    result = sub_1B69C2E8C(a2, a3);
    *v3 = v20;
  }

  return result;
}

id NSNull.toJsonValue()@<X0>(void *a1@<X8>)
{
  a1[3] = sub_1B6986438(0, &qword_1EDBC8048, 0x1E695DFB0);
  *a1 = v1;
  return v1;
}

id NSString.toJsonValue()@<X0>(void *a1@<X8>)
{
  a1[3] = sub_1B6986438(0, &qword_1EDBC8038, 0x1E696AEC0);
  *a1 = v1;
  return v1;
}

id NSNumber.toJsonValue()@<X0>(void *a1@<X8>)
{
  a1[3] = sub_1B6986438(0, &qword_1EDBC8040, 0x1E696AD98);
  *a1 = v1;
  return v1;
}

id NSDate.toJsonValue()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  result = [v2 timeIntervalSince1970];
  v6 = v5 * 1000.0;
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v6 < 9.22337204e18)
  {
    a1[3] = MEMORY[0x1E69E7360];
    *a1 = v6;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1B69E270C(void *a1)
{
  result = [a1 timeIntervalSince1970];
  v3 = v2 * 1000.0;
  if ((*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v3 <= -9.22337204e18)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  v4 = sub_1B6ABA170();

  return v4;
}

void NSArray.toJsonValue()(char **a1@<X8>)
{
  v3 = v2;
  v26 = a1;
  v4 = sub_1B6AB8A90();
  v27 = *(v4 - 8);
  v5 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 count];
  *&v28[0] = MEMORY[0x1E69E7CC0];
  sub_1B69E4C8C(0, v8 & ~(v8 >> 63), 0);
  v9 = *&v28[0];
  sub_1B6AB9AE0();
  if (v8 < 0)
  {
    __break(1u);
LABEL_31:
    __break(1u);
    return;
  }

  if (v8)
  {
    sub_1B69E831C(&qword_1EDBCAF58, MEMORY[0x1E6968EB0]);
    do
    {
      sub_1B6AB9B80();
      if (!*(&v30 + 1))
      {
        goto LABEL_31;
      }

      sub_1B69E2C7C(&v29, &v33);
      if (v3)
      {
        (*(v27 + 8))(v7, v4);

        __swift_destroy_boxed_opaque_existential_1(&v29);
        return;
      }

      v3 = 0;
      __swift_destroy_boxed_opaque_existential_1(&v29);
      *&v28[0] = v9;
      v11 = *(v9 + 16);
      v10 = *(v9 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1B69E4C8C((v10 > 1), v11 + 1, 1);
        v9 = *&v28[0];
      }

      *(v9 + 16) = v11 + 1;
      v12 = v9 + 32 * v11;
      v13 = v32;
      *(v12 + 32) = v31;
      *(v12 + 48) = v13;
    }

    while (--v8);
  }

  sub_1B69E831C(&qword_1EDBCAF58, MEMORY[0x1E6968EB0]);
  while (1)
  {
    sub_1B6AB9B80();
    if (!*(&v30 + 1))
    {
      break;
    }

    sub_1B69979CC(&v29, &v31);
    sub_1B69E2C7C(&v31, &v33);
    if (v3)
    {
      __swift_destroy_boxed_opaque_existential_1(&v31);
      (*(v27 + 8))(v7, v4);

      return;
    }

    v3 = 0;
    __swift_destroy_boxed_opaque_existential_1(&v31);
    *&v28[0] = v9;
    v15 = *(v9 + 16);
    v14 = *(v9 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1B69E4C8C((v14 > 1), v15 + 1, 1);
      v9 = *&v28[0];
    }

    *(v9 + 16) = v15 + 1;
    v16 = v9 + 32 * v15;
    v17 = v30;
    *(v16 + 32) = v29;
    *(v16 + 48) = v17;
  }

  (*(v27 + 8))(v7, v4);
  v18 = MEMORY[0x1E69E7CA0];
  sub_1B69E8690(&v29, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], sub_1B69809A4);
  v19 = *(v9 + 16);
  if (v19)
  {
    v20 = v9 + 32;
    v21 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1B69C1678(v20, &v31);
      v28[0] = v31;
      v28[1] = v32;
      if (*(&v32 + 1))
      {
        sub_1B69979CC(v28, &v29);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = sub_1B69E37EC(0, *(v21 + 2) + 1, 1, v21);
        }

        v23 = *(v21 + 2);
        v22 = *(v21 + 3);
        if (v23 >= v22 >> 1)
        {
          v21 = sub_1B69E37EC((v22 > 1), v23 + 1, 1, v21);
        }

        *(v21 + 2) = v23 + 1;
        sub_1B69979CC(&v29, &v21[32 * v23 + 32]);
      }

      else
      {
        sub_1B69E8690(v28, &qword_1EDBCBAF0, v18 + 8, MEMORY[0x1E69E6720], sub_1B69809A4);
      }

      v20 += 32;
      --v19;
    }

    while (v19);
  }

  else
  {

    v21 = MEMORY[0x1E69E7CC0];
  }

  sub_1B69809A4(0, &qword_1EDBC96D8, v18 + 8, MEMORY[0x1E69E62F8]);
  v24 = v26;
  v26[3] = v25;
  *v24 = v21;
}

void sub_1B69E2C7C(uint64_t a1, uint64_t *a2)
{
  v15[4] = *MEMORY[0x1E69E9840];
  sub_1B698FE74(a1, v15);
  sub_1B69E6A48(0, &qword_1EDBC9868, &protocolRef_AADataEventType);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1B698FE74(a1, v15);
    sub_1B69E6A48(0, qword_1EDBCA298, &protocolRef_AADataType);
    if (swift_dynamicCast())
    {
      v15[0] = 0;
      v7 = [v14 toJsonValueAndReturnError_];
      v8 = v15[0];
      if (v7)
      {
        sub_1B6AB9BC0();
        swift_unknownObjectRelease();
        goto LABEL_7;
      }

      v12 = v8;
      v9 = sub_1B6AB8A70();

      swift_willThrow();
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1B69E69F4();
      v9 = swift_allocError();
      *v10 = 3;
      swift_willThrow();
    }

LABEL_11:
    *a2 = v9;
    goto LABEL_12;
  }

  v4 = [v14 toDict];
  v15[0] = 0;
  v5 = [v4 toJsonValueAndReturnError_];
  v6 = v15[0];
  if (!v5)
  {
    v11 = v6;
    v9 = sub_1B6AB8A70();

    swift_willThrow();
    swift_unknownObjectRelease();

    goto LABEL_11;
  }

  sub_1B6AB9BC0();
  swift_unknownObjectRelease();

LABEL_7:
  swift_unknownObjectRelease();
LABEL_12:
  v13 = *MEMORY[0x1E69E9840];
}

void NSDictionary.toJsonValue()()
{
  v3 = *MEMORY[0x1E69E9840];
  *&v2 = 0;
  sub_1B6AB9200();
  sub_1B69E69F4();
  swift_allocError();
  *v0 = 4;
  swift_willThrow();
  v1 = *MEMORY[0x1E69E9840];
}

id sub_1B69E35E8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *__return_ptr))
{
  v5 = a1;
  a4(v8);

  __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  v6 = sub_1B6ABA0E0();
  __swift_destroy_boxed_opaque_existential_1(v8);

  return v6;
}

char *sub_1B69E36B0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B69E8EF8(0, &qword_1EB95AE68, sub_1B69E83F8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1B69E37EC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B69809A4(0, &qword_1EDBC96B0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B69E3960(char *result, int64_t a2, char a3, char *a4, unint64_t *a5, uint64_t a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1B69809A4(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_1B69E3A64(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B69E8EF8(0, &qword_1EB95AEF0, sub_1B69E8C14, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 168);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[21 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 168 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B69E8C14();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B69E3BD0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B69E8EF8(0, &qword_1EB95AEC0, sub_1B69E8A88, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B69E8A88();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B69E3D8C(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1B69E8EF8(0, a5, a6, MEMORY[0x1E69E6F90]);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    v12[2] = v10;
    v12[3] = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || v12 + 4 >= &a4[2 * v10 + 4])
    {
      memmove(v12 + 4, a4 + 4, 16 * v10);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B697E288();
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1B69E3EC4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B69809A4(0, &qword_1EDBC96C8, &type metadata for TrackerError.MissingData, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B69E4030(void *result, int64_t a2, char a3, void *a4, unint64_t *a5, uint64_t (*a6)(uint64_t), void (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    sub_1B69E8EF8(0, a5, a6, MEMORY[0x1E69E6F90]);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 25;
    }

    v14[2] = v12;
    v14[3] = 2 * (v16 >> 3);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  if (v9)
  {
    if (v14 < a4 || v14 + 4 >= &a4[v12 + 4])
    {
      a7(0);
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v14 != a4)
    {
      a7(0);
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    a7(0);
    swift_arrayInitWithCopy();
  }

  return v14;
}

void *sub_1B69E41B4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B69E896C();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B69E8CE0(0, &qword_1EDBC82F8, sub_1B69E85A4, &type metadata for BridgedDataEvent, type metadata accessor for DataEventStack.Entry);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B69E4350(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B69809A4(0, &qword_1EB95AEA8, &type metadata for TrackerWillSubmitObserver, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B69E4488(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B69809A4(0, &qword_1EB95AE58, &type metadata for AnyDataEventEntry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B69E45C0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B69E8758();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B69E87CC(0, &qword_1EB95AE88, type metadata accessor for SnapshotLevel);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B69E46F8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B69E8EF8(0, &qword_1EB95AE90, sub_1B69E8850, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B69E8850(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B69E4844(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B69E87CC(0, &qword_1EB95AE60, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B69809A4(0, &qword_1EB95ADB8, &type metadata for AnyDataEventEntry, MEMORY[0x1E69E62F8]);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B69E49A0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B69809A4(0, &qword_1EB95AE50, &type metadata for SnapshotEntry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 112);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[112 * v8])
    {
      memmove(v12, v13, 112 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B69E4AE0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B69E8EF8(0, &unk_1EDBC8000, sub_1B69E84D8, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B69E84D8();
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B69E4C4C(void *a1, int64_t a2, char a3)
{
  result = sub_1B69E4DCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B69E4C6C(char *a1, int64_t a2, char a3)
{
  result = sub_1B69E4EFC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B69E4C8C(void *a1, int64_t a2, char a3)
{
  result = sub_1B69E5034(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1B69E4CAC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B699D33C(a1, a2, a3, *v3, &qword_1EDBC8950, type metadata accessor for BatchRepair, type metadata accessor for BatchRepair);
  *v3 = result;
  return result;
}

size_t sub_1B69E4CFC(size_t a1, int64_t a2, char a3)
{
  result = sub_1B699D33C(a1, a2, a3, *v3, &qword_1EDBCB620, type metadata accessor for SequenceEntry, type metadata accessor for SequenceEntry);
  *v3 = result;
  return result;
}

char *sub_1B69E4D4C(char *a1, int64_t a2, char a3)
{
  result = sub_1B69E51A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B69E4D6C(char *a1, int64_t a2, char a3)
{
  result = sub_1B69E52E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B69E4D8C(char *a1, int64_t a2, char a3)
{
  result = sub_1B69E5418(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B69E4DAC(char *a1, int64_t a2, char a3)
{
  result = sub_1B69E5550(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B69E4DCC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B698E6B4();
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B69E8910(0, &qword_1EDBCCDA8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B69E4EFC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B69809A4(0, &qword_1EDBC7FF8, &type metadata for DenylistDescriptor, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1B69E5034(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  v10 = MEMORY[0x1E69E7CA0];
  if (v9)
  {
    sub_1B69E8E20(0, &qword_1EDBC9B60, &qword_1EDBCBAF0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6F90]);
    v11 = swift_allocObject();
    v12 = _swift_stdlib_malloc_size(v11);
    v13 = v12 - 32;
    if (v12 < 32)
    {
      v13 = v12 - 1;
    }

    v11[2] = v8;
    v11[3] = 2 * (v13 >> 5);
  }

  else
  {
    v11 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v11 != a4 || v11 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v11 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1B69809A4(0, &qword_1EDBCBAF0, v10 + 8, MEMORY[0x1E69E6720]);
    swift_arrayInitWithCopy();
  }

  return v11;
}

char *sub_1B69E51A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B69809A4(0, &qword_1EDBC8DD8, &type metadata for TrackerError.FoundData, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B69E52E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B69809A4(0, &qword_1EB95AE48, &type metadata for SummaryEventDataItem, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B69E5418(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B69809A4(0, &qword_1EDBC7FF0, &type metadata for Action.Entry, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B69E5550(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1B69809A4(0, &qword_1EDBC7FE8, &type metadata for Action, MEMORY[0x1E69E6F90]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1B69E5684(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B6AB9C00() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 40);
      v11 = (*(a2 + 48) + 16 * v6);
      v12 = *v11;
      v13 = v11[1];
      sub_1B6ABA1F0();

      sub_1B6AB9380();
      v14 = sub_1B6ABA230();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = (v16 + 16 * v3);
        v18 = (v16 + 16 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
        }

        v19 = *(a2 + 56);
        v20 = (v19 + 32 * v3);
        v21 = (v19 + 32 * v6);
        if (v3 != v6 || v20 >= v21 + 2)
        {
          v9 = v21[1];
          *v20 = *v21;
          v20[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B69E5834(uint64_t result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v31 = a2 + 64;
    v29 = (sub_1B6AB9C00() + 1) & ~v5;
    do
    {
      v8 = 40 * v6;
      v9 = *(v2 + 40);
      v10 = *(v2 + 48) + 40 * v6;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v15 = *(v10 + 32);
      sub_1B6ABA1F0();
      if (v15)
      {
        MEMORY[0x1B8C98A40](1);

        sub_1B6AB9380();
      }

      else
      {
        MEMORY[0x1B8C98A40](0);
      }

      sub_1B6AB9380();
      v16 = sub_1B6ABA230();
      result = sub_1B69B47D4(v11, v12, v13, v14, v15);
      v17 = v16 & v7;
      if (v3 >= v29)
      {
        v2 = a2;
        v4 = v31;
        if (v17 < v29)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v2 = a2;
        v4 = v31;
        if (v17 >= v29)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v17)
      {
LABEL_13:
        v18 = *(v2 + 48);
        v19 = v18 + 40 * v3;
        v20 = (v18 + v8);
        if (40 * v3 < v8 || v19 >= v20 + 40 || v3 != v6)
        {
          v21 = *v20;
          v22 = v20[1];
          *(v19 + 32) = *(v20 + 4);
          *v19 = v21;
          *(v19 + 16) = v22;
        }

        v23 = *(v2 + 56);
        v24 = (v23 + 16 * v3);
        v25 = (v23 + 16 * v6);
        if (v3 != v6 || v24 >= v25 + 1)
        {
          *v24 = *v25;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v26 = *(v2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v28;
    ++*(v2 + 36);
  }

  return result;
}

unint64_t sub_1B69E5A7C(int64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB9E10();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1B6AB9C00();
    v15 = v13;
    v40 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v41 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = v17;
    do
    {
      v18 = v10;
      v19 = v41 * v12;
      v20 = v15;
      v21 = v16;
      v39(v9, *(a2 + 48) + v41 * v12, v4);
      v22 = *(a2 + 40);
      v23 = sub_1B6AB9250();
      result = (*v38)(v9, v4);
      v15 = v20;
      v24 = v23 & v20;
      if (a1 >= v40)
      {
        if (v24 >= v40 && a1 >= v24)
        {
LABEL_15:
          v27 = *(a2 + 48);
          result = v27 + v41 * a1;
          v28 = v27 + v19 + v41;
          v29 = v41 * a1 < v19 || result >= v28;
          v16 = v21;
          if (v29)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v15 = v20;
            v10 = v18;
          }

          else
          {
            v30 = v41 * a1 == v19;
            v10 = v18;
            if (!v30)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v20;
            }
          }

          v31 = *(a2 + 56);
          v32 = (v31 + 32 * a1);
          v33 = (v31 + 32 * v12);
          if (a1 != v12 || v32 >= v33 + 2)
          {
            v34 = v33[1];
            *v32 = *v33;
            v32[1] = v34;
            a1 = v12;
          }

          goto LABEL_4;
        }
      }

      else if (v24 >= v40 || a1 >= v24)
      {
        goto LABEL_15;
      }

      v16 = v21;
      v10 = v18;
LABEL_4:
      v12 = (v12 + 1) & v15;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1B69E5D30(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B6AB9C00() + 1) & ~v5;
    do
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v6);
      v13 = *v12;
      v14 = v12[1];
      sub_1B6ABA1F0();

      sub_1B6AB9380();
      v15 = sub_1B6ABA230();

      v16 = v15 & v7;
      if (v3 >= v8)
      {
        if (v16 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v16 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v16)
      {
LABEL_10:
        v17 = *(a2 + 48);
        v18 = (v17 + 16 * v3);
        v19 = (v17 + 16 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
        }

        v20 = *(a2 + 56);
        v21 = v20 + 40 * v3;
        v22 = (v20 + 40 * v6);
        if (v3 != v6 || v21 >= v22 + 40)
        {
          v9 = *v22;
          v10 = v22[1];
          *(v21 + 32) = *(v22 + 4);
          *v21 = v9;
          *(v21 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B69E5F04(int64_t a1, uint64_t a2)
{
  v4 = sub_1B6AB8E40();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = MEMORY[0x1EEE9AC00](v4);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = sub_1B6AB9C00();
    v15 = v13;
    v42 = (v14 + 1) & v13;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = a2 + 64;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_1B69E831C(&qword_1EDBC95A0, MEMORY[0x1E69695A8]);
      v24 = sub_1B6AB9250();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          if (v19 * a1 < v20 || *(a2 + 48) + v19 * a1 >= (*(a2 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v28 = *(a2 + 56);
          sub_1B69E8E20(0, &qword_1EDBC8E18, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E8660]);
          v30 = *(*(v29 - 8) + 72);
          v31 = v30 * a1;
          result = v28 + v30 * a1;
          v32 = v30 * v12;
          v33 = v28 + v30 * v12 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v16 = v22;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v35 = v31 == v32;
            v16 = v22;
            v15 = v21;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v10 = v40;
      v18 = v19;
    }

    while (((*(v40 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B69E6274(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B6AB9C00() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1B6ABA1F0();

      sub_1B6AB9380();
      v13 = sub_1B6ABA230();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        break;
      }

      if (v14 < v8)
      {
        goto LABEL_10;
      }

LABEL_11:
      v15 = *(a2 + 48);
      v16 = (v15 + 16 * v3);
      v17 = (v15 + 16 * v6);
      if (v3 != v6 || v16 >= v17 + 1)
      {
        *v16 = *v17;
      }

      v18 = *(a2 + 56);
      v19 = *(*(type metadata accessor for Tracker.Timer(0) - 8) + 72);
      v20 = v19 * v3;
      result = v18 + v19 * v3;
      v21 = v19 * v6;
      v22 = v18 + v19 * v6 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v14 < v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v3 < v14)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B69E6478(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = sub_1B6AB8E40();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = MEMORY[0x1EEE9AC00](v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = sub_1B6AB9C00();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_1B69E831C(&qword_1EDBC95A0, MEMORY[0x1E69695A8]);
      v25 = sub_1B6AB9250();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B69E67C8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1B6AB9C00() + 1) & ~v5;
    while (1)
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      sub_1B6ABA1F0();
      if (!v12)
      {
        v13 = 0;
        goto LABEL_12;
      }

      if (v12 == 1)
      {
        break;
      }

      if (v12 == 2)
      {
        v13 = 2;
LABEL_12:
        MEMORY[0x1B8C98A40](v13);
        goto LABEL_14;
      }

      MEMORY[0x1B8C98A40](3);

      sub_1B6AB9380();
LABEL_14:
      v14 = sub_1B6ABA230();
      result = sub_1B69C2E8C(v11, v12);
      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_5;
        }

LABEL_18:
        if (v3 < v15)
        {
          goto LABEL_5;
        }

        goto LABEL_19;
      }

      if (v15 < v8)
      {
        goto LABEL_18;
      }

LABEL_19:
      v16 = *(a2 + 48);
      v17 = (v16 + 16 * v3);
      v18 = (v16 + 16 * v6);
      if (v3 != v6 || v17 >= v18 + 1)
      {
        *v17 = *v18;
      }

      v19 = *(a2 + 56);
      v20 = *(*(type metadata accessor for UserIDComponents() - 8) + 72);
      v21 = v20 * v3;
      result = v19 + v20 * v3;
      v22 = v20 * v6;
      v23 = v19 + v20 * v6 + v20;
      if (v21 < v22 || result >= v23)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v21 == v22)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
      if (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v13 = 1;
    goto LABEL_12;
  }

LABEL_28:
  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1B69E69F4()
{
  result = qword_1EB95AE20;
  if (!qword_1EB95AE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB95AE20);
  }

  return result;
}

uint64_t sub_1B69E6A48(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3 | 1;
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1B69E6AA8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B69B3B58(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B69DACB8(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1B69B3B58(a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_16:
        result = sub_1B6ABA190();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1B69DE144();
      v11 = v19;
    }
  }

  v22 = *v5;
  if ((v17 & 1) == 0)
  {
    v22[(v11 >> 6) + 8] |= 1 << v11;
    v26 = v22[6] + 40 * v11;
    v27 = *a3;
    v28 = *(a3 + 16);
    *(v26 + 32) = *(a3 + 32);
    *v26 = v27;
    *(v26 + 16) = v28;
    v29 = (v22[7] + 16 * v11);
    *v29 = a1;
    v29[1] = a2;
    v30 = v22[2];
    v15 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (!v15)
    {
      v22[2] = v31;
      return sub_1B69E0EFC(a3, v32);
    }

    goto LABEL_15;
  }

  v23 = (v22[7] + 16 * v11);
  v24 = v23[1];
  *v23 = a1;
  v23[1] = a2;
}

id sub_1B69E6C34(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1B69DA770(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1B69DB000(v13, a3 & 1);
      v17 = *v4;
      v8 = sub_1B69DA770(a2);
      if ((v14 & 1) != (v18 & 1))
      {
LABEL_18:
        type metadata accessor for CFString(0);
        result = sub_1B6ABA190();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      sub_1B69DE2F4();
      v8 = v16;
    }
  }

  v19 = *v4;
  if (v14)
  {
    v20 = v19[7] + 32 * v8;

    return sub_1B69E81B8(a1, v20);
  }

  v19[(v8 >> 6) + 8] |= 1 << v8;
  *(v19[6] + 8 * v8) = a2;
  v22 = (v19[7] + 32 * v8);
  v23 = a1[1];
  *v22 = *a1;
  v22[1] = v23;
  v24 = v19[2];
  v12 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19[2] = v25;

  return a2;
}

_OWORD *sub_1B69E6DA4(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1B69DA770(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_1B69DE468();
      v8 = v16;
      goto LABEL_8;
    }

    sub_1B69DB2D8(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_1B69DA770(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = sub_1B6ABA190();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v20);

    return sub_1B69979CC(a1, v20);
  }

  else
  {
    sub_1B69E7CF4(v8, a2, a1, v19);

    return a2;
  }
}

uint64_t sub_1B69E6EE4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B6993940(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B69DB8E0(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1B6993940(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1B6ABA190();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1B69DEA70();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7];
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v26 = (v22[6] + 16 * v11);
  *v26 = a2;
  v26[1] = a3;
  *(v22[7] + 8 * v11) = a1;
  v27 = v22[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v28;
}

uint64_t sub_1B69E7060(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1B6993940(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_1B69DBB9C(v16, a4 & 1);
      v20 = *v5;
      v11 = sub_1B6993940(a2, a3);
      if ((v17 & 1) != (v21 & 1))
      {
LABEL_18:
        result = sub_1B6ABA190();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = v11;
      sub_1B69DEBF4();
      v11 = v19;
    }
  }

  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return sub_1B69E8F5C(a1, v23);
  }

  v22[(v11 >> 6) + 8] |= 1 << v11;
  v25 = (v22[6] + 16 * v11);
  *v25 = a2;
  v25[1] = a3;
  v26 = v22[7] + 40 * v11;
  v27 = *a1;
  v28 = *(a1 + 16);
  *(v26 + 32) = *(a1 + 32);
  *v26 = v27;
  *(v26 + 16) = v28;
  v29 = v22[2];
  v15 = __OFADD__(v29, 1);
  v30 = v29 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v30;
}

uint64_t sub_1B69E71F0(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B6AB8E40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1B69DA8D8(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_1B69DEFA4();
      goto LABEL_7;
    }

    sub_1B69DC18C(v18, a3 & 1);
    v29 = *v4;
    v30 = sub_1B69DA8D8(a2);
    if ((v19 & 1) == (v31 & 1))
    {
      v15 = v30;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1B69E7DB8(v15, v12, a1, v21);
    }

LABEL_15:
    result = sub_1B6ABA190();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  sub_1B69E8E20(0, &qword_1EDBC8E18, &qword_1EDBCAA50, MEMORY[0x1E69E6158], MEMORY[0x1E69E8660]);
  v24 = *(v23 - 8);
  v25 = *(v24 + 40);
  v26 = v23;
  v27 = v22 + *(v24 + 72) * v15;

  return v25(v27, a1, v26);
}

uint64_t sub_1B69E7420(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v38 = a6;
  v39 = a7;
  v36 = a4;
  v37 = a5;
  v8 = v7;
  v12 = sub_1B6AB8E40();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v7;
  v19 = sub_1B69DA8D8(a2);
  v20 = *(v17 + 16);
  v21 = (v18 & 1) == 0;
  v22 = v20 + v21;
  if (__OFADD__(v20, v21))
  {
    __break(1u);
    goto LABEL_15;
  }

  v23 = v18;
  v24 = *(v17 + 24);
  if (v24 < v22 || (a3 & 1) == 0)
  {
    if (v24 >= v22 && (a3 & 1) == 0)
    {
      v36();
      goto LABEL_7;
    }

    v37();
    v33 = *v8;
    v34 = sub_1B69DA8D8(a2);
    if ((v23 & 1) == (v35 & 1))
    {
      v19 = v34;
      v25 = *v8;
      if (v23)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v13 + 16))(v16, a2, v12);
      return sub_1B69E7ED8(v19, v16, a1, v25, v39);
    }

LABEL_15:
    result = sub_1B6ABA190();
    __break(1u);
    return result;
  }

LABEL_7:
  v25 = *v8;
  if ((v23 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v26 = v25[7];
  v27 = v38(0);
  v28 = *(v27 - 8);
  v29 = *(v28 + 40);
  v30 = v27;
  v31 = v26 + *(v28 + 72) * v19;

  return v29(v31, a1, v30);
}

uint64_t sub_1B69E764C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1B6AB8E40();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_1B69DA8D8(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for Tracker.DelayedEvent(0);
      return sub_1B69E82B4(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for Tracker.DelayedEvent);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_1B69DF7C0();
    goto LABEL_7;
  }

  sub_1B69DC6CC(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_1B69DA8D8(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = sub_1B6ABA190();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1B69E7FD4(v15, v12, a1, v21);
}

uint64_t sub_1B69E784C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void))
{
  v9 = v6;
  v14 = *v6;
  v15 = sub_1B6993940(a2, a3);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_17;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a4 & 1) == 0)
  {
    if (v22 < v20 || (a4 & 1) != 0)
    {
      a6(v20, a4 & 1);
      v24 = *v9;
      v15 = sub_1B6993940(a2, a3);
      if ((v21 & 1) != (v25 & 1))
      {
LABEL_18:
        result = sub_1B6ABA190();
        __break(1u);
        return result;
      }
    }

    else
    {
      v23 = v15;
      a5();
      v15 = v23;
    }
  }

  v26 = *v9;
  if (v21)
  {
    v27 = v26[7];
    v28 = *(v27 + 8 * v15);
    *(v27 + 8 * v15) = a1;
  }

  v26[(v15 >> 6) + 8] |= 1 << v15;
  v30 = (v26[6] + 16 * v15);
  *v30 = a2;
  v30[1] = a3;
  *(v26[7] + 8 * v15) = a1;
  v31 = v26[2];
  v19 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v19)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v26[2] = v32;
}

uint64_t sub_1B69E79E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  v8 = v7;
  v16 = *v7;
  v17 = sub_1B6993940(a5, a6);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_17;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a7 & 1) == 0)
  {
    if (v24 < v22 || (a7 & 1) != 0)
    {
      sub_1B69DCE54(v22, a7 & 1);
      v26 = *v8;
      v17 = sub_1B6993940(a5, a6);
      if ((v23 & 1) != (v27 & 1))
      {
LABEL_18:
        result = sub_1B6ABA190();
        __break(1u);
        return result;
      }
    }

    else
    {
      v25 = v17;
      sub_1B69DFF9C();
      v17 = v25;
    }
  }

  v28 = *v8;
  if (v23)
  {
    v29 = (v28[7] + 32 * v17);
    v30 = v29[1];
    *v29 = a1;
    v29[1] = a2;
    v29[2] = a3;
    v29[3] = a4;
  }

  v28[(v17 >> 6) + 8] |= 1 << v17;
  v32 = (v28[6] + 16 * v17);
  *v32 = a5;
  v32[1] = a6;
  v33 = (v28[7] + 32 * v17);
  *v33 = a1;
  v33[1] = a2;
  v33[2] = a3;
  v33[3] = a4;
  v34 = v28[2];
  v21 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (v21)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v28[2] = v35;
}

uint64_t sub_1B69E7B84(uint64_t a1, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v12 = sub_1B69DA824(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for UserIDComponents();
      return sub_1B69E82B4(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for UserIDComponents);
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    sub_1B69E0138();
    goto LABEL_7;
  }

  sub_1B69DD134(v15, a4 & 1);
  v22 = *v5;
  v23 = sub_1B69DA824(a2, a3);
  if ((v16 & 1) != (v24 & 1))
  {
LABEL_15:
    result = sub_1B6ABA190();
    __break(1u);
    return result;
  }

  v12 = v23;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  sub_1B69E810C(v12, a2, a3, a1, v18);

  return sub_1B6992E2C(a2, a3);
}