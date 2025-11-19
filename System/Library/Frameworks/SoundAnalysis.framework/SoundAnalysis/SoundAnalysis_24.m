uint64_t sub_1C999AC18(void *a1)
{
  v2 = sub_1C9A913D8();
  MEMORY[0x1EEE9AC00](v2);
  v3 = [a1 count];
  v28 = MEMORY[0x1E69E7CC0];
  sub_1C97B7B08(0, v3 & ~(v3 >> 63), 0);
  v4 = v28;
  result = sub_1C9A92F78();
  if (v3 < 0)
  {
    __break(1u);
LABEL_20:
    __break(1u);
    return result;
  }

  if (v3)
  {
    sub_1C999C224();
    sub_1C999C0D4(v6, v7);
    do
    {
      result = sub_1C9A93298();
      if (!v27)
      {
        goto LABEL_20;
      }

      sub_1C97BD360(&v26, &v24);
      if (!swift_dynamicCast())
      {
        sub_1C999BCD0();
        swift_allocError();
        swift_willThrow();
        v20 = sub_1C999C254();
        v21(v20);

        sub_1C97A592C(&v26);
        return v4;
      }

      sub_1C97A592C(&v26);
      v28 = v4;
      v9 = *(v4 + 16);
      v8 = *(v4 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1C97B7B08(v8 > 1, v9 + 1, 1);
        v4 = v28;
      }

      *(v4 + 16) = v9 + 1;
      v10 = v4 + 16 * v9;
      *(v10 + 32) = v22;
      *(v10 + 40) = v23;
    }

    while (--v3);
  }

  sub_1C999C224();
  sub_1C999C0D4(v11, v12);
  while (1)
  {
    sub_1C9A93298();
    if (!v25)
    {
      v16 = sub_1C999C254();
      v17(v16);
      sub_1C97A59D0(&v24);
      return v4;
    }

    sub_1C97A2D34(&v24, &v26);
    sub_1C97BD360(&v26, &v24);
    if (!swift_dynamicCast())
    {
      break;
    }

    sub_1C97A592C(&v26);
    v28 = v4;
    v14 = *(v4 + 16);
    v13 = *(v4 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1C97B7B08(v13 > 1, v14 + 1, 1);
      v4 = v28;
    }

    *(v4 + 16) = v14 + 1;
    v15 = v4 + 16 * v14;
    *(v15 + 32) = v22;
    *(v15 + 40) = v23;
  }

  sub_1C999BCD0();
  swift_allocError();
  swift_willThrow();
  sub_1C97A592C(&v26);
  v18 = sub_1C999C254();
  v19(v18);

  return v4;
}

void sub_1C999AFD0(SEL *a1)
{
  v3 = [v1 *a1];
  v4 = sub_1C999AC18(v3);

  if (!v2)
  {
    sub_1C9A3C12C(v4);
  }
}

void *sub_1C999B034(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v2[5] = MEMORY[0x1E69E7CC8];
  v2[2] = a1;
  v2[3] = a2;
  ObjectType = swift_getObjectType();
  v6 = *(a2 + 16);
  swift_unknownObjectRetain();
  v7 = v6(ObjectType, a2);
  v8 = sub_1C999B12C(v7);

  v3[4] = v8;
  type metadata accessor for SNModelMetadataUtils();
  v9 = v6(ObjectType, a2);
  v10 = sub_1C9A3C5D4(v9, MEMORY[0x1E69E7CD0]);

  v11 = sub_1C9A0EF10(v10);

  swift_unknownObjectRelease();
  v3[6] = v11;
  return v3;
}

id sub_1C999B12C(void *a1)
{
  type metadata accessor for SNModelMetadataUtils();
  v2 = sub_1C9A3C5D4(a1, MEMORY[0x1E69E7CD0]);
  sub_1C999A5F8(v2);
  v4 = v3;
  sub_1C999A908(v2);
  v6 = v5;

  v7 = [a1 inputDescriptionsByName];
  sub_1C97BD318(0, &qword_1EC3C54D0);
  v8 = sub_1C9A92328();

  v43[2] = v4;
  v41 = sub_1C999BD44(v8, sub_1C999BD24, v43);

  v9 = [a1 outputDescriptionsByName];
  v10 = sub_1C9A92328();

  v42[2] = v6;
  v40 = sub_1C999BD44(v10, sub_1C999C220, v42);

  v12 = 0;
  v13 = *(v6 + 16);
  for (i = (v6 + 40); ; i += 2)
  {
    if (v13 == v12)
    {
      result = sub_1C984099C(a1, &selRef_predictedFeatureName);
      v39 = result;
      v22 = v21;
      goto LABEL_16;
    }

    if (v12 >= *(v6 + 16))
    {
      __break(1u);
LABEL_33:
      __break(1u);
      return result;
    }

    v16 = *(i - 1);
    v15 = *i;

    v17 = sub_1C984099C(a1, &selRef_predictedFeatureName);
    if (!v18)
    {

      goto LABEL_12;
    }

    if (v16 == v17 && v18 == v15)
    {
      break;
    }

    v20 = sub_1C9A93B18();

    if (v20)
    {
      goto LABEL_15;
    }

LABEL_12:
    ++v12;
  }

LABEL_15:
  v39 = 0;
  v22 = 0;
LABEL_16:
  v23 = 0;
  v24 = (v6 + 40);
  while (2)
  {
    if (v13 == v23)
    {

      v31 = sub_1C984099C(a1, &selRef_predictedProbabilitiesName);
      v33 = v32;
      goto LABEL_31;
    }

    if (v23 >= *(v6 + 16))
    {
      goto LABEL_33;
    }

    v26 = *(v24 - 1);
    v25 = *v24;

    v27 = sub_1C984099C(a1, &selRef_predictedProbabilitiesName);
    if (!v28)
    {

LABEL_27:
      v24 += 2;
      ++v23;
      continue;
    }

    break;
  }

  if (v26 != v27 || v28 != v25)
  {
    v30 = sub_1C9A93B18();

    if (v30)
    {
      goto LABEL_30;
    }

    goto LABEL_27;
  }

LABEL_30:

  v31 = 0;
  v33 = 0;
LABEL_31:
  v34 = [a1 metadata];
  type metadata accessor for MLModelMetadataKey(0);
  sub_1C999C23C();
  sub_1C999C0D4(v35, v36);
  v37 = sub_1C9A92328();

  v38 = objc_allocWithZone(MEMORY[0x1E695FEC0]);
  return sub_1C999BB18(v41, v40, v39, v22, v31, v33, v37);
}

uint64_t sub_1C999B510(uint64_t a1, uint64_t a2)
{

  sub_1C9878610();

  v6 = objc_allocWithZone(MEMORY[0x1E695FE48]);
  result = sub_1C98B6EC8();
  if (!v3)
  {
    v8 = result;
    v9 = [objc_opt_self() lazyProviderWithFeaturesProvidedBy:result addedToFeaturesProvidedBy:a1];
    v10 = *(v2 + 24);
    ObjectType = swift_getObjectType();
    v41 = (*(v10 + 24))(v9, a2, ObjectType, v10);
    v39 = v2;
    v40 = v8;
    v12 = *(v2 + 48);
    v42 = sub_1C97BDEE0(v12);
    v13 = 0;
    v14 = MEMORY[0x1E69E7CC8];
LABEL_3:
    for (i = v13; ; ++i)
    {
      if (v42 == i)
      {
        *(v39 + 40) = v14;

        sub_1C999AFD0(&selRef_outputFeatureNames);
        v36 = objc_allocWithZone(MEMORY[0x1E695FE48]);
        v37 = sub_1C999BA9C(v41);
        swift_unknownObjectRelease();

        return v37;
      }

      if ((v12 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1CCA912B0](i, v12);
      }

      else
      {
        if (i >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v16 = *(v12 + 8 * i + 32);
      }

      v17 = v16;
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      v18 = *&v16[OBJC_IVAR___SNModelFeatureConnection_impl + 16];
      v19 = *&v16[OBJC_IVAR___SNModelFeatureConnection_impl + 24];

      v20 = sub_1C9A92478();

      v21 = [v41 featureValueForName_];

      if (v21)
      {
        swift_isUniquelyReferenced_nonNull_native();
        v25 = sub_1C9A32230(v18, v19);
        v38 = v26;
        if (__OFADD__(v14[2], (v26 & 1) == 0))
        {
          goto LABEL_26;
        }

        v27 = v25;
        sub_1C97A2CEC(&qword_1EC3CD360);
        if (sub_1C9A93748())
        {
          v28 = sub_1C9A32230(v18, v19);
          if ((v38 & 1) != (v29 & 1))
          {
            goto LABEL_28;
          }

          v27 = v28;
          if ((v38 & 1) == 0)
          {
LABEL_17:
            v14[(v27 >> 6) + 8] |= 1 << v27;
            v30 = (v14[6] + 16 * v27);
            *v30 = v18;
            v30[1] = v19;
            *(v14[7] + 8 * v27) = v21;

            v31 = v14[2];
            v32 = __OFADD__(v31, 1);
            v33 = v31 + 1;
            if (!v32)
            {
              v14[2] = v33;
              goto LABEL_3;
            }

            goto LABEL_27;
          }
        }

        else if ((v38 & 1) == 0)
        {
          goto LABEL_17;
        }

        v34 = v14[7];
        v35 = *(v34 + 8 * v27);
        *(v34 + 8 * v27) = v21;

        goto LABEL_3;
      }

      v22 = sub_1C9A32230(v18, v19);
      v24 = v23;

      if (v24)
      {
        swift_isUniquelyReferenced_nonNull_native();
        sub_1C97A2CEC(&qword_1EC3CD360);
        sub_1C9A93748();

        sub_1C97BD318(0, &qword_1EC3C54F8);
        sub_1C9A93768();

        goto LABEL_3;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = sub_1C9A93BF8();
    __break(1u);
  }

  return result;
}

BOOL sub_1C999B97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = (a4 + 40);
  v7 = *(a4 + 16) + 1;
  do
  {
    if (!--v7)
    {
      break;
    }

    if (*(v6 - 1) == a1 && *v6 == a2)
    {
      break;
    }

    v6 += 2;
  }

  while ((sub_1C9A93B18() & 1) == 0);
  return v7 == 0;
}

uint64_t sub_1C999B9EC()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C999BA24()
{
  sub_1C999B9EC();

  return swift_deallocClassInstance();
}

id sub_1C999BA9C(uint64_t a1)
{
  v3 = sub_1C9A92B18();

  v4 = [v1 initWithFeatureProvider:a1 featureNames:v3];
  swift_unknownObjectRelease();

  return v4;
}

id sub_1C999BB18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1C97BD318(0, &qword_1EC3C54D0);
  v10 = sub_1C9A922F8();

  v11 = sub_1C9A922F8();

  if (a4)
  {
    v12 = sub_1C9A92478();

    if (a6)
    {
      goto LABEL_3;
    }

LABEL_6:
    v13 = 0;
    if (a7)
    {
      goto LABEL_4;
    }

LABEL_7:
    v16 = 0;
    goto LABEL_8;
  }

  v12 = 0;
  if (!a6)
  {
    goto LABEL_6;
  }

LABEL_3:
  v13 = sub_1C9A92478();

  if (!a7)
  {
    goto LABEL_7;
  }

LABEL_4:
  type metadata accessor for MLModelMetadataKey(0);
  sub_1C999C23C();
  sub_1C999C0D4(v14, v15);
  v16 = sub_1C9A922F8();

LABEL_8:
  v17 = [v20 initWithInputDescriptions:v10 outputDescriptions:v11 predictedFeatureName:v12 predictedProbabilitiesName:v13 metadata:{v16, a5}];

  return v17;
}

unint64_t sub_1C999BCD0()
{
  result = qword_1EC3CEFF8;
  if (!qword_1EC3CEFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CEFF8);
  }

  return result;
}

unint64_t *sub_1C999BD44(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, id), unint64_t *a3)
{
  v6 = a1;
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      a3 = sub_1C999C038(v12, v8, v6, a2);
      MEMORY[0x1CCA93280](v12, -1, -1);
      return a3;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v9 = (v13 - ((8 * v8 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_1C99F14F0(0, v8, v9);
  sub_1C999BEC8(v9, v8, v6, a2);
  if (!v3)
  {
    return v10;
  }

  swift_willThrow();
  return a3;
}

void sub_1C999BEC8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = v17;
    LOBYTE(v15) = a4(v15, v16, v18);

    if (v15)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_1C9938DD0(a1, a2, v22, a3);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1C999C038(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1C999BEC8(v7, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_1C999C0D4(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *_s11DomainErrorOwst(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C999C1CC()
{
  result = qword_1EC3CF000[0];
  if (!qword_1EC3CF000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CF000);
  }

  return result;
}

void sub_1C999C264()
{
  sub_1C993AF0C();
  sub_1C97CDE50(v1);
  v3 = v2;
  v4 = sub_1C999CA94([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInt_]);

  if ((v4 & 1) == 0)
  {
    type metadata accessor for SNError();
    sub_1C999CA44();
    sub_1C9A935B8();

    sub_1C999CAD8();
    v5 = [v0 description];
    sub_1C9A924A8();
    sub_1C999CAFC();
    sub_1C999CA78();

    sub_1C999CA58(0xD000000000000017, 0x80000001C9AD4AA0, v6, v7, 0xD000000000000014);
    sub_1C999CAE4();
    swift_willThrow();
  }
}

void sub_1C999C360()
{
  sub_1C993AF0C();
  sub_1C9A180B0(v1);
  v3 = v2;
  v4 = sub_1C999CA94([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInt_]);

  if ((v4 & 1) == 0)
  {
    type metadata accessor for SNError();
    sub_1C999CA44();
    sub_1C9A935B8();

    sub_1C999CAD8();
    v5 = [v0 description];
    sub_1C9A924A8();
    sub_1C999CAFC();
    sub_1C999CA78();

    sub_1C999CA58(0xD000000000000017, 0x80000001C9AD4AA0, v6, v7, 0xD000000000000015);
    sub_1C999CAE4();
    swift_willThrow();
  }
}

void sub_1C999C45C()
{
  sub_1C993AF0C();
  v1 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v2 = [v0 compare_];

  if (v2 != 1)
  {
    type metadata accessor for SNError();
    sub_1C999CA44();
    sub_1C9A935B8();

    sub_1C999CAD8();
    v3 = [v0 description];
    sub_1C9A924A8();
    sub_1C999CAFC();
    sub_1C999CA78();

    sub_1C999CA58(0xD000000000000017, 0x80000001C9AD4AA0, v4, v5, 0xD00000000000001ELL);
    sub_1C999CAE4();
    swift_willThrow();
  }
}

id sub_1C999C568(void *a1, void *a2)
{
  v4 = [a1 longLongValue];
  if (v4 == [a2 longLongValue] && (objc_msgSend(a1, sel_doubleValue), v6 = v5, objc_msgSend(a2, sel_doubleValue), v6 == v7))
  {
    return [a1 isEqual_];
  }

  else
  {
    return 0;
  }
}

void sub_1C999C604()
{
  sub_1C993AF0C();
  [v2 doubleValue];
  v4 = sub_1C999CA94([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_]);

  if ((v4 & 1) == 0)
  {
    type metadata accessor for SNError();
    sub_1C999CA44();
    sub_1C9A935B8();

    sub_1C999CAD8();
    v5 = [v1 description];
    sub_1C9A924A8();
    sub_1C999CAFC();
    sub_1C999CA78();

    sub_1C999CA58(0xD000000000000017, 0x80000001C9AD4AA0, v6, v7, 0xD000000000000015);
    sub_1C999CAE4();
    swift_willThrow();
  }
}

void sub_1C999C710()
{
  sub_1C993AF0C();
  v2 = sub_1C97CDF38(v1);
  v3 = sub_1C999CA94([objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_]);

  if ((v3 & 1) == 0)
  {
    type metadata accessor for SNError();
    sub_1C999CA44();
    sub_1C9A935B8();

    sub_1C999CAD8();
    v4 = [v0 description];
    sub_1C9A924A8();
    sub_1C999CAFC();
    sub_1C999CA78();

    sub_1C999CA58(0xD000000000000017, 0x80000001C9AD4AA0, v5, v6, 0xD00000000000001FLL);
    sub_1C999CAE4();
    swift_willThrow();
  }
}

unint64_t sub_1C999C80C(unint64_t a1, unint64_t a2)
{
  if (sub_1C9A92538() == 4)
  {
    v2 = 0;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v5 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v5 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v6 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v6) = 1;
    }

    v7 = 4 << v6;
    v19 = a2 & 0xFFFFFFFFFFFFFFLL;
    v8 = 15;
    while (1)
    {
      if (4 * v5 == v8 >> 14)
      {
        return v2;
      }

      result = v8;
      if ((v8 & 0xC) == v7)
      {
        v12 = sub_1C999CAB0();
        result = sub_1C999C9E8(v12, v13, v14);
      }

      v10 = result >> 16;
      if (result >> 16 >= v5)
      {
        __break(1u);
LABEL_29:
        __break(1u);
        return result;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = sub_1C9A925D8();
        v11 = result;
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v18[0] = a1;
        v18[1] = v19;
        v11 = *(v18 + v10);
      }

      else
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if ((a1 & 0x1000000000000000) == 0)
        {
          result = sub_1C9A93658();
        }

        v11 = *(result + v10);
      }

      if ((v8 & 0xC) == v7)
      {
        v15 = sub_1C999CAB0();
        result = sub_1C999C9E8(v15, v16, v17);
        v8 = result;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_20:
          v8 = (v8 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_25;
        }
      }

      else if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_20;
      }

      if (v5 <= v8 >> 16)
      {
        goto LABEL_29;
      }

      sub_1C999CAB0();
      v8 = sub_1C9A925B8();
LABEL_25:
      v2 = v11 | (v2 << 8);
    }
  }

  type metadata accessor for SNError();
  sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000025, 0x80000001C9ADC150);
  swift_willThrow();
  return v2;
}

uint64_t sub_1C999C9E8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v6 = sub_1C9A925E8();
    sub_1C999CAC0(v6);
    return v7 | 4;
  }

  else
  {
    v3 = MEMORY[0x1CCA90270](15, a1 >> 16);
    sub_1C999CAC0(v3);
    return v4 | 8;
  }
}

id sub_1C999CA58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return sub_1C9929478(a1, a2, 1, 0, a5, v5);
}

void sub_1C999CA78()
{

  JUMPOUT(0x1CCA90230);
}

id sub_1C999CA94(void *a1)
{

  return sub_1C999C568(v1, a1);
}

uint64_t sub_1C999CAE4()
{
}

void sub_1C999CAFC()
{
}

uint64_t sub_1C999CB78()
{
  sub_1C9890968();

  return swift_deallocClassInstance();
}

uint64_t sub_1C999CBAC()
{

  return v0;
}

uint64_t sub_1C999CBD4()
{
  sub_1C999CBAC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C999CC90()
{
  if (qword_1EC3C5BA8 != -1)
  {
    swift_once();
  }

  v0 = [qword_1EC3C5BB0 dictionaryRepresentation];
  sub_1C9A92328();

  v1 = sub_1C99B590C();
  LODWORD(v0) = v2;

  return (v1 != 0) & ~v0;
}

uint64_t sub_1C999D1EC(void *a1)
{
  v2 = v1;
  *(v1 + 16) = MEMORY[0x1E69E7CC0];
  sub_1C97A2CEC(&qword_1EC3CF110);
  swift_allocObject();
  v4 = sub_1C9A91E28();
  *(v2 + 24) = v4;

  sub_1C999D7D0(a1, v4, v8);

  v5 = v8[1];
  *(v2 + 32) = v8[0];
  *(v2 + 48) = v5;
  v6 = v8[3];
  *(v2 + 64) = v8[2];
  *(v2 + 80) = v6;
  return v2;
}

id sub_1C999D290@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a1;
  v40 = a2;
  v2 = sub_1C97A2CEC(&qword_1EC3CF198);
  sub_1C97AE9C8();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v40 - v6;
  v41 = sub_1C97A2CEC(&unk_1EC3CF1A0);
  sub_1C97AE9C8();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v40 - v11;
  sub_1C97A2CEC(&qword_1EC3C8D18);
  sub_1C97A2CEC(&unk_1EC3CF128);
  sub_1C97AE67C(&qword_1EC3CF1B0, &qword_1EC3C8D18);
  sub_1C9A92048();
  sub_1C97A2CEC(&unk_1EC3CF138);
  sub_1C9A91C98();
  (*(v4 + 8))(v7, v2);
  sub_1C97AE67C(&qword_1EC3CF1B8, &unk_1EC3CF1A0);
  v13 = v41;
  sub_1C9A92008();
  sub_1C97A2CEC(&qword_1EC3CF1C0);
  sub_1C97AA878();
  swift_allocObject();
  v14 = sub_1C97DA814();
  v15 = sub_1C98E3778(v14);
  (*(v9 + 8))(v12, v13);
  v43 = v15;
  sub_1C97AE67C(&qword_1EC3CF1C8, &qword_1EC3CF1C0);
  v16 = sub_1C9A91F28();

  v17 = v42;
  v18 = [v42 channelCount];
  result = [v17 sampleRate];
  if ((*&v20 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v20 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v20 < 9.22337204e18)
  {
    v21 = v18;
    v22 = v20;
    sub_1C97A2CEC(&qword_1EC3C8580);
    v23 = sub_1C97DAAF8();
    v24 = objc_opt_self();
    *(v23 + 16) = sub_1C97DA978(v24);
    sub_1C97A2CEC(&unk_1EC3CF150);
    sub_1C97AA878();
    swift_allocObject();
    v25 = sub_1C97DA814();
    v26 = sub_1C9A37FC8(v25);
    sub_1C97A2CEC(&qword_1EC3C8588);
    sub_1C97DAAF8();
    v27 = sub_1C999E49C();
    *(v23 + 16) = sub_1C97DA978(v27);
    sub_1C97A2CEC(&unk_1EC3CF160);
    sub_1C97AA878();
    swift_allocObject();
    v28 = sub_1C97DA814();
    v29 = sub_1C9A37FC8(v28);
    sub_1C97A2CEC(&qword_1EC3C8590);
    sub_1C97DAAF8();
    v30 = sub_1C999E49C();
    *(v23 + 16) = sub_1C97DA978(v30);
    sub_1C97A2CEC(&unk_1EC3CF170);
    sub_1C97AA878();
    swift_allocObject();
    v31 = sub_1C97DA814();
    v32 = sub_1C9A37FC8(v31);
    sub_1C97A2CEC(&qword_1EC3C8598);
    sub_1C97DAAF8();
    v33 = sub_1C999E49C();
    *(v23 + 16) = sub_1C97DA978(v33);
    sub_1C97A2CEC(&unk_1EC3CF180);
    sub_1C97AA878();
    swift_allocObject();
    v34 = sub_1C97DA814();
    v35 = sub_1C9A37FC8(v34);
    sub_1C97A2CEC(&qword_1EC3C85A0);
    sub_1C97DAAF8();
    v36 = sub_1C999E49C();
    *(v23 + 16) = sub_1C97DA978(v36);
    sub_1C97A2CEC(&qword_1EC3CF190);
    sub_1C97AA878();
    swift_allocObject();
    v37 = sub_1C97DA814();
    v38 = sub_1C9A37FC8(v37);

    v39 = v40;
    *v40 = v16;
    v39[1] = v21;
    v39[2] = v22;
    v39[3] = v26;
    v39[4] = v29;
    v39[5] = v32;
    v39[6] = v35;
    v39[7] = v38;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

id sub_1C999D7D0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v33 = a1;
  v5 = sub_1C97A2CEC(&qword_1EC3CF118);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - v7;
  v9 = sub_1C97A2CEC(&qword_1EC3CF120);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - v11;
  v35 = a2;
  sub_1C97A2CEC(&unk_1EC3CF128);
  sub_1C97AE67C(&unk_1EC3C56F0, &qword_1EC3CF110);
  sub_1C9A92048();
  sub_1C97A2CEC(&unk_1EC3CF138);
  sub_1C9A91C98();
  (*(v6 + 8))(v8, v5);
  sub_1C97AE67C(qword_1EC3C5700, &qword_1EC3CF120);
  v13 = sub_1C9A92008();
  sub_1C97A2CEC(&qword_1EC3CF148);
  swift_allocObject();
  v14 = sub_1C98E3778(v13);
  (*(v10 + 8))(v12, v9);
  v34 = v14;
  sub_1C97AE67C(qword_1EC3C5950, &qword_1EC3CF148);
  v15 = sub_1C9A91F28();

  v16 = v33;
  v17 = [v33 channelCount];
  result = [v16 sampleRate];
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v19 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v19 < 9.22337204e18)
  {
    v33 = v17;
    v20 = v19;
    sub_1C97A2CEC(&qword_1EC3C8580);
    v21 = swift_allocObject();
    *(v21 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
    sub_1C97A2CEC(&unk_1EC3CF150);
    swift_allocObject();
    v22 = sub_1C9A37FC8(v21);
    sub_1C97A2CEC(&qword_1EC3C8588);
    v23 = swift_allocObject();
    *(v23 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
    sub_1C97A2CEC(&unk_1EC3CF160);
    swift_allocObject();
    v24 = sub_1C9A37FC8(v23);
    sub_1C97A2CEC(&qword_1EC3C8590);
    v25 = swift_allocObject();
    *(v25 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
    sub_1C97A2CEC(&unk_1EC3CF170);
    swift_allocObject();
    v26 = sub_1C9A37FC8(v25);
    sub_1C97A2CEC(&qword_1EC3C8598);
    v27 = swift_allocObject();
    *(v27 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
    sub_1C97A2CEC(&unk_1EC3CF180);
    swift_allocObject();
    v28 = sub_1C9A37FC8(v27);
    sub_1C97A2CEC(&qword_1EC3C85A0);
    v29 = swift_allocObject();
    *(v29 + 16) = [objc_opt_self() mapTableWithKeyOptions:0x10000 valueOptions:5];
    sub_1C97A2CEC(&qword_1EC3CF190);
    swift_allocObject();
    v30 = sub_1C9A37FC8(v29);

    v31 = v33;
    *a3 = v15;
    a3[1] = v31;
    a3[2] = v20;
    a3[3] = v22;
    a3[4] = v24;
    a3[5] = v26;
    a3[6] = v28;
    a3[7] = v30;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1C999DE0C(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C999E048(a1);
  ObjectType = swift_getObjectType();
  v15 = v6[3];
  v23[0] = v6[2];
  v23[1] = v15;
  v16 = v6[5];
  v23[2] = v6[4];
  v23[3] = v16;
  v17 = (*(a2 + 16))(v23, ObjectType, a2);
  if (v7)
  {
    v18 = v7;
    a3(v7);
  }

  else
  {
    v24 = v17;
    sub_1C97AA878();
    v19 = swift_allocObject();
    *(v19 + 16) = a3;
    *(v19 + 24) = a4;
    sub_1C97AA878();
    v20 = swift_allocObject();
    *(v20 + 16) = a5;
    *(v20 + 24) = a6;

    sub_1C97A2CEC(&unk_1EC3D0A80);
    sub_1C97AE67C(&unk_1EC3C4A80, &unk_1EC3D0A80);
    v21 = sub_1C9A91FB8();

    sub_1C97A2CEC(&unk_1EC3C7850);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C9A9EDD0;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    *(inited + 48) = v21;
    sub_1C999E488();
    swift_beginAccess();

    swift_unknownObjectRetain();
    sub_1C98CFDF4(inited);
    swift_endAccess();
  }
}

uint64_t sub_1C999E048(uint64_t a1)
{
  v2 = v1;
  result = swift_beginAccess();
  v5 = 0;
  v6 = *(v2 + 16);
  v7 = *(v6 + 16);
  v8 = v6 + 48;
  while (v7 != v5)
  {
    if (*(v8 - 16) == a1)
    {

      sub_1C9A91DD8();
      sub_1C999E488();
      swift_beginAccess();
      sub_1C994612C(v5);
      swift_endAccess();

      return swift_unknownObjectRelease();
    }

    ++v5;
    v8 += 24;
  }

  return result;
}

uint64_t sub_1C999E110()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  v4 = 0;
  for (i = v1 + 48; ; i += 24)
  {
    if (v2 == v4)
    {
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    ++v4;
    v6 = *(i - 16);
    swift_unknownObjectRetain();

    sub_1C999E048(v6);

    result = swift_unknownObjectRelease();
  }

  __break(1u);
  return result;
}

void sub_1C999E1D4(void *a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v2 = a1;
    sub_1C9A91E08();
  }

  else
  {
    sub_1C98066EC();
    swift_allocError();
    swift_willThrow();
  }
}

uint64_t sub_1C999E2A8()
{

  return v0;
}

uint64_t sub_1C999E324()
{
  sub_1C999E2A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C999E388@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for AudioStreamAnalyzer();
  result = sub_1C9A935C8();
  *a1 = result;
  return result;
}

uint64_t sub_1C999E49C()
{

  return objc_opt_self();
}

uint64_t sub_1C999E4B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E756F66 && a2 == 0xE500000000000000;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953722220 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C9A93B18();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C999E578(char a1)
{
  if (a1)
  {
    return 1953722220;
  }

  else
  {
    return 0x646E756F66;
  }
}

uint64_t sub_1C999E5A4(void *a1, int a2)
{
  v24 = a2;
  sub_1C97A2CEC(&qword_1EC3CF230);
  sub_1C97AE9C8();
  v22 = v4;
  v23 = v3;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v21 = sub_1C97A2CEC(&qword_1EC3CF238);
  sub_1C97AE9C8();
  v9 = v8;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - v11;
  v13 = sub_1C97A2CEC(&qword_1EC3CF240);
  sub_1C97AE9C8();
  v15 = v14;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v21 - v17;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C999F260();
  sub_1C9A93DD8();
  v19 = (v15 + 8);
  if (v24)
  {
    v26 = 1;
    sub_1C999F2B4();
    sub_1C9A93988();
    (*(v22 + 8))(v7, v23);
  }

  else
  {
    v25 = 0;
    sub_1C999F308();
    sub_1C9A93988();
    (*(v9 + 8))(v12, v21);
  }

  return (*v19)(v18, v13);
}

uint64_t sub_1C999E830(uint64_t a1)
{
  v41 = sub_1C97A2CEC(&qword_1EC3CF1F8);
  sub_1C97AE9C8();
  v39 = v2;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v35 - v4;
  v6 = sub_1C97A2CEC(&qword_1EC3CF200);
  sub_1C97AE9C8();
  v38 = v7;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v35 - v9;
  v11 = sub_1C97A2CEC(&qword_1EC3CF208);
  sub_1C97AE9C8();
  v40 = v12;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v35 - v14;
  sub_1C97A5A8C(a1, *(a1 + 24));
  sub_1C999F260();
  v16 = v42;
  sub_1C9A93DB8();
  if (v16)
  {
    goto LABEL_8;
  }

  v36 = v6;
  v37 = v10;
  v42 = a1;
  v17 = v41;
  v18 = sub_1C9A93958();
  result = sub_1C98EE524(v18, 0);
  if (v21 == v22 >> 1)
  {
LABEL_7:
    v27 = sub_1C9A93648();
    swift_allocError();
    v29 = v28;
    sub_1C97A2CEC(&qword_1EC3C6F20);
    *v29 = &type metadata for FileServerDiscoveryState;
    sub_1C9A93868();
    sub_1C9A93638();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
    swift_willThrow();
    swift_unknownObjectRelease();
    (*(v40 + 8))(v15, v11);
    a1 = v42;
LABEL_8:
    sub_1C97A592C(a1);
    return a1;
  }

  v35 = 0;
  if (v21 < (v22 >> 1))
  {
    a1 = *(v20 + v21);
    sub_1C98EE520(v21 + 1);
    v24 = v23;
    v26 = v25;
    swift_unknownObjectRelease();
    if (v24 == v26 >> 1)
    {
      if (a1)
      {
        LODWORD(v38) = a1;
        v44 = 1;
        sub_1C999F2B4();
        sub_1C988A520();
        swift_unknownObjectRelease();
        (*(v39 + 8))(v5, v17);
        v31 = sub_1C988A4F0();
        v32(v31);
        a1 = v38;
      }

      else
      {
        v43 = 0;
        sub_1C999F308();
        v30 = v37;
        sub_1C988A520();
        swift_unknownObjectRelease();
        (*(v38 + 8))(v30, v36);
        v33 = sub_1C988A4F0();
        v34(v33);
      }

      sub_1C97A592C(v42);
      return a1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C999ECD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C999E4B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C999ECFC(uint64_t a1)
{
  v2 = sub_1C999F260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C999ED38(uint64_t a1)
{
  v2 = sub_1C999F260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C999ED74(uint64_t a1)
{
  v2 = sub_1C999F308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C999EDB0(uint64_t a1)
{
  v2 = sub_1C999F308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C999EDEC(uint64_t a1)
{
  v2 = sub_1C999F2B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C999EE28(uint64_t a1)
{
  v2 = sub_1C999F2B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C999EE64@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C999E830(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1C999EEC8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  sub_1C9A93CC8();
  a4(v8, v6);
  return sub_1C9A93D18();
}

id sub_1C999EF68()
{
  v1 = *(v0 + OBJC_IVAR___SNFileServerDiscoveryResult_impl + 16);
  v12 = *(v0 + OBJC_IVAR___SNFileServerDiscoveryResult_impl);
  v13 = v1;
  v2 = *(v0 + OBJC_IVAR___SNFileServerDiscoveryResult_impl + 48);
  v14 = *(v0 + OBJC_IVAR___SNFileServerDiscoveryResult_impl + 32);
  v15 = v2;
  v3 = type metadata accessor for SNFileServerInfo();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___SNFileServerInfo_impl];
  v7 = v14;
  v6 = v15;
  v8 = v13;
  *v5 = v12;
  *(v5 + 1) = v8;
  *(v5 + 2) = v7;
  *(v5 + 3) = v6;
  sub_1C9840AC4(&v12, v11);
  v10.receiver = v4;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id SNFileServerDiscoveryResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SNFileServerDiscoveryResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SNFileServerDiscoveryResult();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C999F1A4()
{
  result = qword_1EC3CF1E0;
  if (!qword_1EC3CF1E0)
  {
    sub_1C97AA4F0(&qword_1EC3CF1E8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF1E0);
  }

  return result;
}

unint64_t sub_1C999F20C()
{
  result = qword_1EC3CF1F0;
  if (!qword_1EC3CF1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF1F0);
  }

  return result;
}

unint64_t sub_1C999F260()
{
  result = qword_1EC3CF210;
  if (!qword_1EC3CF210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF210);
  }

  return result;
}

unint64_t sub_1C999F2B4()
{
  result = qword_1EC3CF220;
  if (!qword_1EC3CF220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF220);
  }

  return result;
}

unint64_t sub_1C999F308()
{
  result = qword_1EC3CF228;
  if (!qword_1EC3CF228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF228);
  }

  return result;
}

_BYTE *sub_1C999F35C(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C999F45C()
{
  result = qword_1EC3CF248;
  if (!qword_1EC3CF248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF248);
  }

  return result;
}

unint64_t sub_1C999F4B4()
{
  result = qword_1EC3CF250;
  if (!qword_1EC3CF250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF250);
  }

  return result;
}

unint64_t sub_1C999F50C()
{
  result = qword_1EC3CF258;
  if (!qword_1EC3CF258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF258);
  }

  return result;
}

unint64_t sub_1C999F564()
{
  result = qword_1EC3CF260;
  if (!qword_1EC3CF260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF260);
  }

  return result;
}

unint64_t sub_1C999F5BC()
{
  result = qword_1EC3CF268;
  if (!qword_1EC3CF268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF268);
  }

  return result;
}

unint64_t sub_1C999F614()
{
  result = qword_1EC3CF270;
  if (!qword_1EC3CF270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF270);
  }

  return result;
}

unint64_t sub_1C999F66C()
{
  result = qword_1EC3CF278;
  if (!qword_1EC3CF278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF278);
  }

  return result;
}

uint64_t sub_1C999F6F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a3, v3);
  }

  (*(*(*(a1 + 24) - 8) + 32))(a2, v3, *(a1 + 24));
  return swift_willThrowTypedImpl();
}

uint64_t sub_1C999F7C0()
{
  sub_1C97AA884();
  v0[7] = v1;
  v0[8] = v2;
  v0[5] = v3;
  v0[6] = v4;
  v0[3] = v5;
  v0[4] = v6;
  sub_1C97AA4F0(&unk_1EC3CA040);
  v0[9] = sub_1C9A93D88();
  v0[10] = sub_1C9A93258();
  sub_1C97AE9C8();
  v0[11] = v7;
  v0[12] = swift_task_alloc();
  v8 = sub_1C9A93258();
  v0[13] = v8;
  sub_1C97BE2AC(v8);
  v0[14] = v9;
  v0[15] = sub_1C99A4AE0();
  v0[16] = swift_task_alloc();
  v10 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v10, v11, v12);
}

uint64_t sub_1C999F90C()
{
  sub_1C97DAA1C();
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[4];
  swift_getFunctionTypeMetadata0();
  sub_1C9A93AA8();
  swift_allocObject();
  v6 = sub_1C9A927C8();
  v8 = v7;
  v0[17] = v6;
  sub_1C97DAA28();
  v9 = swift_allocObject();
  v9[2] = v2;
  v9[3] = v5;
  v9[4] = v3;
  *v8 = &unk_1C9AC0C08;
  v8[1] = v9;
  sub_1C97DAA28();
  v10 = swift_allocObject();
  v10[2] = v2;
  v10[3] = v4;
  v10[4] = v1;
  v8[2] = &unk_1C9AC0C18;
  v8[3] = v10;
  sub_1C9A928B8();
  v11 = swift_task_alloc();
  v0[18] = v11;
  *(v11 + 16) = v2;

  swift_task_alloc();
  sub_1C97DA928();
  v0[19] = v12;
  *v12 = v13;
  v12[1] = sub_1C999FA9C;
  sub_1C98ADFC0();

  return sub_1C99A15A4(v14, v15, v16, v17, v18);
}

uint64_t sub_1C999FA9C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C999FBB8()
{
  sub_1C99A4A98();
  v1 = v0 + 15;
  v2 = v0 + 13;
  (*(v0[14] + 16))(v0[15], v0[16], v0[13]);
  if (sub_1C99A4A44() == 1)
  {
    v3 = *(v0[14] + 8);
    v3(v0[16], v0[13]);
LABEL_5:
    v5 = v0[8];
    v3(*v1, *v2);
    sub_1C9855060();
    v9 = v5;
    goto LABEL_6;
  }

  (*(v0[11] + 32))(v0[12], v0[15], v0[10]);
  if (sub_1C99A4A44() == 1)
  {
    v4 = v0[11];
    (*(v0[14] + 8))(v0[16], v0[13]);
    v3 = *(v4 + 8);
    v2 = v0 + 10;
    v1 = v0 + 12;
    goto LABEL_5;
  }

  sub_1C999F6F0(v0[9], (v0 + 2), v0[3]);
  v12 = v0[8];
  v13 = v0[3];
  (*(v0[14] + 8))(v0[16], v0[13]);
  v6 = v13;
  v7 = 0;
  v8 = 1;
  v9 = v12;
LABEL_6:
  sub_1C97ACC50(v6, v7, v8, v9);

  sub_1C97DA8DC();

  return v10();
}

uint64_t static AsyncUtils.sleepUntilCancelled()()
{
  sub_1C97AA884();
  v1 = sub_1C9A936C8();
  v0[7] = v1;
  sub_1C97BE2AC(v1);
  v0[8] = v2;
  v0[9] = sub_1C99A4AE0();
  v0[10] = swift_task_alloc();
  v3 = sub_1C9A936D8();
  v0[11] = v3;
  sub_1C97BE2AC(v3);
  v0[12] = v4;
  v0[13] = swift_task_alloc();
  v5 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C999FEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C99A4AA4();
  sub_1C99A4A98();
  if (sub_1C9A92A48())
  {

    sub_1C97DA91C();
    sub_1C99A4A1C();

    return v15(v14, v15, v16, v17, v18, v19, v20, v21, a9, a10, a11, a12);
  }

  else
  {
    sub_1C99A4A84();
    sub_1C9A93DE8();
    sub_1C9A93C28();
    sub_1C99A49EC();
    sub_1C99A4954();
    sub_1C99A3B30(v23, v24);
    sub_1C99A4AC0();
    sub_1C99A496C();
    sub_1C99A3B30(v25, v26);
    sub_1C99A4A60();
    v27 = sub_1C99A49C8(*(v13 + 8));
    v28(v27);
    v29 = swift_task_alloc();
    *(v12 + 128) = v29;
    *v29 = v12;
    sub_1C99A4984(v29);
    sub_1C99A4A38(v30);
    sub_1C99A4A1C();

    return MEMORY[0x1EEE6DE58](v31, v32, v33, v34, v35, v36, v37, v38, a9, a10, a11, a12);
  }
}

uint64_t sub_1C99A0020()
{
  sub_1C97DA934();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v6 = v5[14];
  v7 = v5[10];
  v8 = v5[7];
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v3[17] = v0;

  v6(v7, v8);
  if (!v0)
  {
    (*(v3[12] + 8))(v3[13], v3[11]);
  }

  sub_1C97AA8AC();
  sub_1C981E404();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C99A019C()
{
  sub_1C97DAA1C();
  v1 = *(v0 + 136);
  (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

  if (sub_1C9A92A48())
  {

    sub_1C97DA91C();
    sub_1C98ADFC0();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 64);
  v5 = sub_1C9A93DE8();
  v7 = v6;
  sub_1C9A93C28();
  *(v0 + 40) = v5;
  *(v0 + 48) = v7;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 1;
  sub_1C99A4954();
  sub_1C99A3B30(v8, v9);
  sub_1C9A93C08();
  sub_1C99A496C();
  sub_1C99A3B30(v10, v11);
  sub_1C9A936E8();
  v12 = sub_1C99A49C8(*(v4 + 8));
  v13(v12);
  v14 = swift_task_alloc();
  *(v0 + 128) = v14;
  *v14 = v0;
  sub_1C99A4984();
  sub_1C99A4A38(v15);
  sub_1C98ADFC0();

  return MEMORY[0x1EEE6DE58]();
}

uint64_t sub_1C99A0368@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x1E69E8650];
  v3 = sub_1C9A929A8();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_1C99A03E0(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v61 = a2;
  v62 = a1;
  v4 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  v5 = sub_1C97DACE4(v4);
  MEMORY[0x1EEE9AC00](v5);
  v57 = &v51 - v6;
  v7 = sub_1C9A929D8();
  sub_1C97AE9C8();
  v9 = v8;
  v11 = *(v10 + 64);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v55 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v51 - v14;
  v15 = sub_1C9A929A8();
  v16 = sub_1C97DACE4(v15);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  sub_1C9A92A08();
  sub_1C97AE9C8();
  v59 = v20;
  v60 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v51 - v21;
  v23 = sub_1C9A93258();
  sub_1C97AE9C8();
  v25 = v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v51 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v51 - v30;
  sub_1C9855060();
  sub_1C97ACC50(v32, v33, v34, v7);
  v63 = a3;
  v64 = v31;
  sub_1C99A0368(v18);
  v54 = v22;
  sub_1C9A92A18();
  v56 = v25;
  v35 = *(v25 + 16);
  v53 = v31;
  v58 = v23;
  v35(v29, v31, v23);
  if (sub_1C97ABF20(v29, 1, v7) == 1)
  {
    (*(v56 + 8))(v29, v58);
    result = sub_1C9A93778();
    __break(1u);
  }

  else
  {
    v36 = *(v9 + 32);
    v37 = v52;
    v36(v52, v29, v7);
    sub_1C9A92988();
    sub_1C9855060();
    sub_1C97ACC50(v38, v39, v40, v41);
    v42 = v55;
    (*(v9 + 16))(v55, v37, v7);
    v43 = (*(v9 + 80) + 48) & ~*(v9 + 80);
    v44 = swift_allocObject();
    *(v44 + 2) = 0;
    *(v44 + 3) = 0;
    *(v44 + 4) = a3;
    *(v44 + 5) = v61;
    v36(&v44[v43], v42, v7);

    sub_1C99A9128();
    v46 = v45;
    v47 = v60;
    WitnessTable = swift_getWitnessTable();
    v49 = v54;
    AsyncSequence.toAnyAsyncSequence()(v47, WitnessTable);
    (*(v9 + 8))(v37, v7);
    (*(v59 + 8))(v49, v47);
    *v62 = v65;
    (*(v56 + 8))(v53, v58);
    return v46;
  }

  return result;
}

uint64_t sub_1C99A08C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C9A929D8();
  v5 = sub_1C9A93258();
  (*(*(v5 - 8) + 8))(a2, v5);
  (*(*(v4 - 8) + 16))(a2, a1, v4);

  return sub_1C97ACC50(a2, 0, 1, v4);
}

uint64_t sub_1C99A098C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1C99A09B0, 0, 0);
}

uint64_t sub_1C99A09B0()
{
  sub_1C97AA884();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_1C99A0A98;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1C99A0A98()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C99A0B98()
{
  sub_1C97AA884();
  sub_1C9A929D8();
  sub_1C9A929C8();
  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C99A0BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[9] = a2;
  v5[10] = a3;
  v6 = sub_1C9A929D8();
  v5[13] = v6;
  v7 = *(v6 - 8);
  v5[14] = v7;
  v5[15] = *(v7 + 64);
  v5[16] = swift_task_alloc();
  sub_1C97A2CEC(&qword_1EC3CA8D0);
  v5[17] = swift_task_alloc();
  v5[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C99A0D0C, 0, 0);
}

uint64_t sub_1C99A0D0C()
{
  swift_getFunctionTypeMetadata0();
  sub_1C98550EC();
  v1 = sub_1C9A927A8();
  v34 = v1;
  sub_1C98550EC();
  if (v1 == sub_1C9A92878())
  {
LABEL_13:
    v21 = swift_task_alloc();
    *(v0 + 152) = v21;
    v22 = sub_1C97A2CEC(&qword_1EC3C8988);
    *v21 = v0;
    v21[1] = sub_1C99A1144;
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v27 = *(v0 + 80) + 32;
    v28 = **(v0 + 72);
    v26 = *(v0 + 120) + 7;
    v29 = *(v0 + 112);
    while (1)
    {
      sub_1C98550EC();
      v2 = sub_1C9A92858();
      sub_1C9A927D8();
      if ((v2 & 1) == 0)
      {
        break;
      }

      v30 = *(v0 + 144);
      v33 = *(v0 + 136);
      v3 = *(v0 + 128);
      v4 = *(v0 + 104);
      v31 = *(v0 + 96);
      v5 = *(v0 + 88);
      v32 = *(v27 + 16 * v1);

      sub_1C9A928A8();
      v6 = sub_1C9A92988();
      sub_1C9855060();
      sub_1C97ACC50(v7, v8, v9, v6);
      (*(v29 + 16))(v3, v5, v4);
      v10 = (*(v29 + 80) + 40) & ~*(v29 + 80);
      v11 = swift_allocObject();
      *(v11 + 2) = 0;
      *(v11 + 3) = 0;
      *(v11 + 4) = v31;
      (*(v29 + 32))(&v11[v10], v3, v4);
      *&v11[(v26 + v10) & 0xFFFFFFFFFFFFFFF8] = v32;
      sub_1C99A4644(v30, v33, &qword_1EC3CA8D0);
      v12 = sub_1C97ABF20(v33, 1, v6);

      v13 = *(v0 + 136);
      if (v12 == 1)
      {
        sub_1C97AE434(*(v0 + 136), &qword_1EC3CA8D0);
      }

      else
      {
        sub_1C9A92978();
        sub_1C97AEB3C();
        (*(v14 + 8))(v13, v6);
      }

      if (*(v11 + 2))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v15 = sub_1C9A92928();
        v17 = v16;
        swift_unknownObjectRelease();
      }

      else
      {
        v15 = 0;
        v17 = 0;
      }

      v18 = swift_allocObject();
      *(v18 + 16) = &unk_1C9AC0C68;
      *(v18 + 24) = v11;
      v19 = v17 | v15;
      if (v17 | v15)
      {
        v19 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v15;
        *(v0 + 40) = v17;
      }

      v20 = *(v0 + 144);
      *(v0 + 48) = 1;
      *(v0 + 56) = v19;
      *(v0 + 64) = v28;
      swift_task_create();

      sub_1C97AE434(v20, &qword_1EC3CA8D0);
      sub_1C98550EC();
      v1 = v34;
      if (v34 == sub_1C9A92878())
      {
        goto LABEL_13;
      }
    }

    v23 = sub_1C9A935F8();
    __break(1u);
  }

  return MEMORY[0x1EEE6D898](v23, v24, v22);
}

uint64_t sub_1C99A1144()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97DA91C();

  return v3();
}

uint64_t sub_1C99A1280(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a4;
  v7[3] = a7;
  v9 = swift_task_alloc();
  v7[4] = v9;
  v10 = sub_1C9A92998();
  v7[5] = v10;
  v7[6] = *(v10 - 8);
  v7[7] = swift_task_alloc();
  v13 = (a5 + *a5);
  v11 = swift_task_alloc();
  v7[8] = v11;
  *v11 = v7;
  v11[1] = sub_1C99A1414;

  return v13(v9);
}

uint64_t sub_1C99A1414()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C99A14F8()
{
  sub_1C97DA934();
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1C9A929D8();
  sub_1C9A929B8();
  (*(v2 + 8))(v1, v3);

  sub_1C97DA91C();

  return v4();
}

uint64_t sub_1C99A15A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  v6 = sub_1C982F8C0();
  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1C99A15D4()
{
  sub_1C97DAA1C();
  v12 = v0;
  v1 = *(v0 + 64);
  v10 = *(v0 + 48);
  v2 = sub_1C99A03E0(&v11, *(v0 + 40), v1);
  v3 = v11;
  *(v0 + 72) = v2;
  *(v0 + 80) = *(&v3 + 1);
  *(v0 + 16) = v3;
  v4 = swift_task_alloc();
  *(v0 + 88) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v10;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  v6 = type metadata accessor for AnyAsyncSequence();
  WitnessTable = swift_getWitnessTable();
  *v5 = v0;
  v5[1] = sub_1C99A1710;
  v8 = *(v0 + 32);

  return MEMORY[0x1EEE6DB20](v8, &unk_1C9AC0C30, v4, v6, WitnessTable);
}

uint64_t sub_1C99A1710()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C99A1814()
{
  sub_1C97AA884();
  sub_1C9A92A28();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C99A189C()
{
  sub_1C97AA884();

  return swift_unexpectedError();
}

uint64_t sub_1C99A1904(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v4 = *(v2 + 8);
  v5 = v3 & 1;

  return v4(v5);
}

uint64_t sub_1C99A1970(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a1;
  v4[4] = a4;
  v7 = (a2 + *a2);
  v5 = swift_task_alloc();
  v4[5] = v5;
  *v5 = v4;
  v5[1] = sub_1C99A1A5C;

  return v7();
}

uint64_t sub_1C99A1A5C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 48) = v3;

  v4 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1C99A1B48()
{
  sub_1C97DAA1C();
  v1 = v0[6];
  v2 = v0[3];
  v3 = v0[4];
  v0[2] = v1;
  *(swift_task_alloc() + 16) = v3;
  sub_1C97A2CEC(&qword_1EC3C89D0);
  sub_1C97AA4F0(&unk_1EC3CA040);
  v4 = sub_1C9A93D88();
  sub_1C984EF50(sub_1C99A4624, v4, v5, v2);

  sub_1C97DA91C();

  return v6();
}

id sub_1C99A1C60@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  sub_1C97AA4F0(&unk_1EC3CA040);
  sub_1C9A93D88();
  swift_storeEnumTagMultiPayload();
  return v2;
}

uint64_t sub_1C99A1CE0(uint64_t a1, int *a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1C99A1D9C;

  return sub_1C9996560(a1, a2);
}

uint64_t sub_1C99A1D9C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C99A1E80()
{
  sub_1C97AA884();
  v1 = *(v0 + 16);
  sub_1C97AA4F0(&unk_1EC3CA040);
  v2 = sub_1C9A93D88();
  sub_1C97ACC50(v1, 0, 1, v2);
  sub_1C97DA91C();

  return v3();
}

BOOL sub_1C99A1F14(uint64_t a1)
{
  sub_1C97AA4F0(&unk_1EC3CA040);
  v2 = sub_1C9A93D88();
  return sub_1C97ABF20(a1, 1, v2) != 1;
}

uint64_t sub_1C99A1F7C()
{
  sub_1C97AA884();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[2] = v5;
  v6 = sub_1C97A2CEC(&unk_1EC3CF2A0);
  sub_1C97BE2AC(v6);
  v0[7] = v7;
  v0[8] = *(v8 + 64);
  v0[9] = swift_task_alloc();
  v9 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1C99A2040()
{
  sub_1C97DA934();
  v1 = v0[9];
  v3 = v0[6];
  v2 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  sub_1C99A4644(v0[3], v1, &unk_1EC3CF2A0);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  v0[10] = v7;
  sub_1C99A46A8(v1, v7 + v6);
  sub_1C97DAA28();
  v8 = swift_allocObject();
  v0[11] = v8;
  v8[2] = v3;
  v8[3] = v5;
  v8[4] = v4;

  swift_task_alloc();
  sub_1C97DA928();
  v0[12] = v9;
  *v9 = v10;
  v9[1] = sub_1C99A2194;
  sub_1C981E404();

  return sub_1C999F7C0();
}

uint64_t sub_1C99A2194()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v5 = *v1;
  sub_1C97AA83C();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    sub_1C97DA8DC();

    return v10();
  }
}

uint64_t sub_1C99A22C8()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C99A2338(uint64_t a1)
{
  v1[5] = a1;
  v2 = sub_1C9A936D8();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  sub_1C97A2CEC(&unk_1EC3CF2A0);
  v1[9] = swift_task_alloc();
  v3 = sub_1C9A936C8();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C99A248C, 0, 0);
}

uint64_t sub_1C99A248C()
{
  sub_1C97AA95C();
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  sub_1C99A4644(*(v0 + 40), v1, &unk_1EC3CF2A0);
  if (sub_1C97ABF20(v1, 1, v2) == 1)
  {
    sub_1C97AE434(*(v0 + 72), &unk_1EC3CF2A0);
    v3 = swift_task_alloc();
    *(v0 + 104) = v3;
    *v3 = v0;
    v3[1] = sub_1C99A264C;

    return static AsyncUtils.sleepUntilCancelled()();
  }

  else
  {
    (*(*(v0 + 88) + 32))(*(v0 + 96), *(v0 + 72), *(v0 + 80));
    *(v0 + 24) = 0;
    *(v0 + 16) = 0;
    *(v0 + 32) = 1;
    sub_1C9A93C28();
    v5 = swift_task_alloc();
    *(v0 + 112) = v5;
    sub_1C99A4954();
    v8 = sub_1C99A3B30(v6, v7);
    *v5 = v0;
    v5[1] = sub_1C99A2794;
    v9 = *(v0 + 96);
    v10 = *(v0 + 64);
    v11 = *(v0 + 48);

    return MEMORY[0x1EEE6DA68](v9, v0 + 16, v10, v11, v8);
  }
}

uint64_t sub_1C99A264C()
{
  sub_1C97AA95C();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3(0);
}

uint64_t sub_1C99A2794()
{
  sub_1C97AA95C();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v5 = v4[8];
  v6 = v4[7];
  v7 = v4[6];
  v8 = *v1;
  sub_1C97AA83C();
  *v9 = v8;
  *(v10 + 120) = v0;

  (*(v6 + 8))(v5, v7);
  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C99A28EC()
{
  sub_1C97AA95C();
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_1C99A3B78();
  v4 = swift_allocError();
  *v5 = 0;
  (*(v2 + 8))(v1, v3);

  sub_1C9840CC0();

  return v6(v4);
}

uint64_t sub_1C99A29A8()
{
  sub_1C97AA884();
  v1 = v0[15];
  (*(v0[11] + 8))(v0[12], v0[10]);

  sub_1C9840CC0();

  return v2(0);
}

uint64_t sub_1C99A2A3C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C97D9C3C;

  return v6(a1);
}

uint64_t static AsyncUtils.failAfterTimeoutNoCancel<A>(deadline:_:)()
{
  sub_1C97DA934();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1C9A93258();
  v0[4] = v3;
  sub_1C97BE2AC(v3);
  v0[5] = v4;
  v0[6] = swift_task_alloc();
  v0[7] = swift_task_alloc();
  swift_task_alloc();
  sub_1C97DA928();
  v0[8] = v5;
  *v5 = v6;
  v5[1] = sub_1C99A2C5C;

  return sub_1C99A1F7C();
}

uint64_t sub_1C99A2C5C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 72) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C99A2D58()
{
  sub_1C97DAA1C();
  v1 = v0[5];
  (*(v1 + 16))(v0[6], v0[7], v0[4]);
  v2 = sub_1C99A4A44();
  v3 = *(v1 + 8);
  if (v2 == 1)
  {
    v4 = v0[7];
    v5 = v0[4];
    v3(v0[6], v5);
    sub_1C99A3B78();
    swift_allocError();
    *v6 = 1;
    swift_willThrow();
    v3(v4, v5);

    sub_1C97DA91C();
  }

  else
  {
    v8 = v0[6];
    v9 = v0[3];
    v10 = v0[2];
    v3(v0[7], v0[4]);
    sub_1C97AEB3C();
    (*(v11 + 32))(v10, v8, v9);

    sub_1C97DA8DC();
  }

  return v7();
}

uint64_t sub_1C99A2EC8()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t static AsyncUtils.failAfterTimeoutNoCancel<A>(deadline:mutating:_:)()
{
  sub_1C97AA884();
  v0[5] = v1;
  v0[6] = v2;
  v0[3] = v3;
  v0[4] = v4;
  v0[2] = v5;
  v6 = *(v2 - 8);
  v0[7] = v6;
  v0[8] = *(v6 + 64);
  v0[9] = sub_1C99A4AE0();
  v0[10] = swift_task_alloc();
  v0[11] = swift_task_alloc();
  v7 = sub_1C982F8C0();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C99A2FF0()
{
  sub_1C99A4AA4();
  sub_1C99A4A98();
  v1 = v0[11];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[6];
  v5 = v0[7];
  v7 = v0[4];
  v6 = v0[5];
  v8 = *(v5 + 16);
  v8(v1, v0[3], v4);
  v8(v2, v1, v4);
  v9 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v10 = swift_allocObject();
  v0[12] = v10;
  *(v10 + 16) = v4;
  v11 = *(v5 + 32);
  v0[13] = v11;
  v0[14] = (v5 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v10 + v9, v2, v4);
  v12 = (v10 + ((v3 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v12 = v7;
  v12[1] = v6;

  swift_task_alloc();
  sub_1C97DA928();
  v0[15] = v13;
  *v13 = v14;
  v13[1] = sub_1C99A3160;
  sub_1C99A4A1C();

  return static AsyncUtils.failAfterTimeoutNoCancel<A>(deadline:_:)();
}

uint64_t sub_1C99A3160()
{
  sub_1C97AA95C();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;
  *v3 = *v1;
  v2[16] = v0;

  if (!v0)
  {
    v4 = v2[6];
    v5 = v2[7];
    v6 = v2[3];
    v7 = *(v5 + 8);
    v2[17] = v7;
    v2[18] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v6, v4);
  }

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C99A32B4()
{
  sub_1C97DAA1C();
  v1 = *(v0 + 104);
  v2 = *(v0 + 80);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  (*(v0 + 136))(*(v0 + 88), v3);
  v1(v4, v2, v3);

  sub_1C97DA8DC();

  return v5();
}

uint64_t sub_1C99A3368()
{
  sub_1C97AA95C();
  (*(v0[7] + 8))(v0[11], v0[6]);

  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C99A33FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C99A3424, 0, 0);
}

uint64_t sub_1C99A3424()
{
  sub_1C97AA884();
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[2];
  v4 = *(v0[6] - 8);
  v0[7] = v4;
  (*(v4 + 16))(v3, v1);
  v8 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1C99A356C;
  v6 = sub_1C99A4A38(v0[2]);

  return v8(v6);
}

uint64_t sub_1C99A356C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 72) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C99A3684()
{
  sub_1C97AA884();
  (*(v0[7] + 8))(v0[2], v0[6]);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C99A36F0()
{
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  *(v1 + 56) = v0;
  v12 = sub_1C9A936C8();
  *(v1 + 64) = v12;
  sub_1C97BE2AC(v12);
  *(v1 + 72) = v13;
  *(v1 + 80) = sub_1C99A4AE0();
  *(v1 + 88) = swift_task_alloc();
  *(v1 + 40) = v11;
  *(v1 + 48) = v9;
  *(v1 + 16) = v7;
  *(v1 + 24) = v5;
  *(v1 + 32) = v3 & 1;
  sub_1C982F8C0();
  sub_1C981E404();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C99A37D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  sub_1C97DAA1C();
  v13 = v12[10];
  v14 = v12[8];
  v15 = v12[9];
  v16 = sub_1C9A936D8();
  sub_1C99A4954();
  v19 = sub_1C99A3B30(v17, v18);
  sub_1C9A93C08();
  sub_1C99A496C();
  sub_1C99A3B30(v20, v21);
  sub_1C9A936E8();
  v22 = *(v15 + 8);
  v12[12] = v22;
  v12[13] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v22(v13, v14);
  v23 = swift_task_alloc();
  v12[14] = v23;
  *v23 = v12;
  v23[1] = sub_1C99A3938;
  v24 = sub_1C99A4A38(v12[11]);

  return MEMORY[0x1EEE6DE58](v24, v25, v16, v19, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1C99A3938()
{
  sub_1C97DA934();
  sub_1C97AA890();
  v3 = v2;
  sub_1C97AA84C();
  *v4 = v3;
  v6 = v5[12];
  v7 = v5[11];
  v8 = v5[8];
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  *(v3 + 120) = v0;

  v6(v7, v8);
  if (!v0)
  {

    sub_1C97DA8DC();
    sub_1C981E404();

    __asm { BRAA            X1, X16 }
  }

  sub_1C97AA8AC();
  sub_1C981E404();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C99A3ACC()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C99A3B30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1C99A3B78()
{
  result = qword_1EC3CF290;
  if (!qword_1EC3CF290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF290);
  }

  return result;
}

uint64_t sub_1C99A3BCC()
{
  sub_1C97DA934();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C99A4A10();
  sub_1C981E404();

  return sub_1C99A33FC(v3, v4, v5, v6, v7);
}

_BYTE *storeEnumTagSinglePayload for AsyncUtils(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for AsyncUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C99A3E64()
{
  result = qword_1EC3CF298;
  if (!qword_1EC3CF298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF298);
  }

  return result;
}

uint64_t sub_1C99A3EB8()
{
  sub_1C97AA95C();
  v6 = (v0 + *v0);
  v1 = swift_task_alloc();
  v2 = sub_1C97AA858(v1);
  *v2 = v3;
  v2[1] = sub_1C99A3FA0;
  v4 = sub_1C99A4A10();

  return v6(v4);
}

uint64_t sub_1C99A3FA0()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v1 = *v0;
  sub_1C97AA83C();
  *v2 = v1;

  sub_1C97DA8DC();

  return v3();
}

uint64_t sub_1C99A4080()
{
  sub_1C97AA95C();
  sub_1C99A49DC();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C99A49AC(v1);

  return sub_1C99A1970(v3, v4, v5, v6);
}

uint64_t sub_1C99A410C()
{
  sub_1C97AA95C();
  sub_1C99A49DC();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C99A49AC(v1);

  return sub_1C99A1CE0(v3, v4, v5, v6);
}

uint64_t sub_1C99A41A0()
{
  sub_1C97DA934();
  sub_1C99A49DC();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C99A4258;

  return sub_1C99A1904(v0, v2);
}

uint64_t sub_1C99A4258()
{
  sub_1C97AA884();
  v2 = v1;
  sub_1C97AA890();
  v3 = *v0;
  sub_1C97AA83C();
  *v4 = v3;

  sub_1C9840CC0();

  return v5(v2);
}

uint64_t sub_1C99A4348()
{
  sub_1C97DAA1C();
  v1 = v0[4];
  v2 = sub_1C9A929D8();
  sub_1C97DACE4(v2);
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[5];
  v6 = swift_task_alloc();
  v7 = sub_1C97AA858(v6);
  *v7 = v8;
  v7[1] = sub_1C97D9C3C;
  v9 = sub_1C99A4A10();

  return sub_1C99A098C(v9, v3, v4, v5, v10, v1);
}

uint64_t sub_1C99A4440()
{
  sub_1C97DA934();
  v2 = v1;
  v4 = v3;
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = swift_task_alloc();
  v9 = sub_1C97AA858(v8);
  *v9 = v10;
  v9[1] = sub_1C97DA5D0;

  return sub_1C99A0BF8(v4, v2, v6, v7, v5);
}

uint64_t sub_1C99A44F8()
{
  sub_1C97DAA1C();
  v1 = sub_1C9A929D8();
  sub_1C97BE2AC(v1);
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_1C97DA5D0;
  sub_1C98ADFC0();

  return sub_1C99A1280(v3, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1C99A4644(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1C97A2CEC(a3);
  sub_1C97AEB3C();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C99A46A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C97A2CEC(&unk_1EC3CF2A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C99A4718()
{
  sub_1C97AA884();
  v1 = sub_1C97A2CEC(&unk_1EC3CF2A0);
  sub_1C97DACE4(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  v5 = sub_1C97AA858(v4);
  *v5 = v6;
  v5[1] = sub_1C99A47E0;

  return sub_1C99A2338(v0 + v3);
}

uint64_t sub_1C99A47E0()
{
  sub_1C97AA884();
  v2 = v1;
  sub_1C97AA890();
  v3 = *v0;
  sub_1C97AA83C();
  *v4 = v3;

  sub_1C9840CC0();

  return v5(v2);
}

uint64_t sub_1C99A48C8()
{
  sub_1C97AA95C();
  sub_1C99A49DC();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C99A49AC(v1);

  return sub_1C99A2A3C(v3, v4);
}

uint64_t sub_1C99A49C8@<X0>(uint64_t a1@<X8>)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = v1 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  return v2;
}

void sub_1C99A49EC()
{
  *(v1 + 40) = v0;
  *(v1 + 48) = v2;
  *(v1 + 24) = 0;
  *(v1 + 16) = 0;
  *(v1 + 32) = 1;
}

uint64_t sub_1C99A4A44()
{

  return sub_1C97ABF20(v1, 1, v0);
}

uint64_t sub_1C99A4A60()
{

  return sub_1C9A936E8();
}

uint64_t sub_1C99A4AC0()
{

  return sub_1C9A93C08();
}

uint64_t sub_1C99A4AE0()
{

  return swift_task_alloc();
}

void sub_1C99A4AF8()
{
  v9[1] = *MEMORY[0x1E69E9840];
  v0 = objc_opt_self();
  v1 = [v0 defaultManager];
  sub_1C9A91518();
  v2 = sub_1C9A92478();

  v3 = [v1 fileExistsAtPath_];

  if (v3)
  {
    v4 = [v0 defaultManager];
    v5 = sub_1C9A91488();
    v9[0] = 0;
    v6 = [v4 removeItemAtURL:v5 error:v9];

    if (v6)
    {
      v7 = v9[0];
    }

    else
    {
      v8 = v9[0];
      sub_1C9A913C8();

      swift_willThrow();
    }
  }
}

uint64_t sub_1C99A4C48()
{
  v0 = sub_1C9A91408();
  sub_1C97AE9C8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEAD8();
  v6 = v5 - v4;
  (*(v2 + 104))(v5 - v4, *MEMORY[0x1E6968F70], v0);
  sub_1C98449A8();
  sub_1C9A91538();
  return (*(v2 + 8))(v6, v0);
}

id sub_1C99A4D94()
{
  v0 = sub_1C9A91558();
  sub_1C97AE9C8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C97AEAD8();
  v6 = v5 - v4;
  v7 = [objc_opt_self() defaultManager];
  sub_1C9A913F8();
  sub_1C9A91518();
  (*(v2 + 8))(v6, v0);
  v8 = sub_1C9A92478();

  v9 = [v7 fileExistsAtPath_];

  return v9;
}

id sub_1C99A4EE4@<X0>(char a1@<W1>, uint64_t a2@<X8>)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1C9A91558();
  sub_1C97AE9C8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C97AEAD8();
  v10 = v9 - v8;
  sub_1C9A914D8();
  v11 = [objc_opt_self() defaultManager];
  v12 = sub_1C9A91488();
  v17[0] = 0;
  v13 = [v11 createDirectoryAtURL:v12 withIntermediateDirectories:a1 & 1 attributes:0 error:v17];

  v14 = v17[0];
  if (v13)
  {
    (*(v6 + 32))(a2, v10, v4);
    return v14;
  }

  else
  {
    v16 = v17[0];
    sub_1C9A913C8();

    swift_willThrow();
    return (*(v6 + 8))(v10, v4);
  }
}

uint64_t sub_1C99A5090()
{
  v0 = sub_1C9A91B58();
  sub_1C9922D38(v0, qword_1EC3D3108);
  sub_1C97BFF6C(v0, qword_1EC3D3108);
  return sub_1C9A91B48();
}

double SNFeaturePrint.timeRange.setter(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = v1 + OBJC_IVAR___SNFeaturePrint_impl;
  *v3 = *a1;
  *(v3 + 8) = *(a1 + 8);
  *(v3 + 16) = *(a1 + 16);
  result = *(a1 + 32);
  *(v3 + 32) = result;
  *(v3 + 40) = v2;
  return result;
}

uint64_t sub_1C99A5134(void *a1, void *a2)
{
  v5 = type metadata accessor for ShapedArray();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C97AEAD8();
  v8 = v7 - v6;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A93DC8();
  sub_1C9990138(a2);
  if (!v2)
  {
    sub_1C97BDE74(v10, v11);
    sub_1C99A78F4(&unk_1EC3CF320);
    sub_1C9A93B58();
    sub_1C9991530(v8);
  }

  return sub_1C97A592C(v10);
}

uint64_t sub_1C99A5264(void *a1)
{
  v2 = type metadata accessor for ShapedArray();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C97AEAD8();
  v5 = v4 - v3;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C9A93DA8();
  sub_1C97A5A8C(v8, v8[3]);
  sub_1C99A78F4(&qword_1EC3CF318);
  sub_1C9A93B38();
  v6 = sub_1C99906C0(v5);
  sub_1C9991530(v5);
  sub_1C97A592C(v8);
  sub_1C97A592C(a1);
  return v6;
}

uint64_t sub_1C99A541C()
{
  sub_1C9A93CC8();
  sub_1C9A931F8();
  return sub_1C9A93D18();
}

uint64_t sub_1C99A5460(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v2;
  v8[2] = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v4;
  v7[2] = *(a2 + 32);
  v5 = *(a2 + 48);
  if (!static TimeRange.== infix(_:_:)(v8, v7) || v3 != v5)
  {
    return 0;
  }

  sub_1C97BD318(0, &qword_1EC3C54A0);
  return sub_1C9A931E8() & 1;
}

uint64_t sub_1C99A5504(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x676E6152656D6974 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C9A93B18() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000010 && 0x80000001C9ADB350 == a2;
    if (v6 || (sub_1C9A93B18() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x5665727574616566 && a2 == 0xED0000726F746365)
    {

      return 2;
    }

    else
    {
      v8 = sub_1C9A93B18();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

uint64_t sub_1C99A562C(char a1)
{
  if (!a1)
  {
    return 0x676E6152656D6974;
  }

  if (a1 == 1)
  {
    return 0xD000000000000010;
  }

  return 0x5665727574616566;
}

uint64_t sub_1C99A5698(void *a1)
{
  v3 = v1;
  v5 = sub_1C97A2CEC(&qword_1EC3CF2E0);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - v9;
  v11 = *(v3 + 7);
  v15 = *(v3 + 6);
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99A7568();
  sub_1C9A93DD8();
  v12 = v3[1];
  v16 = *v3;
  v17 = v12;
  v18 = v3[2];
  v19 = 0;
  sub_1C97BD12C();
  sub_1C99A7934();
  sub_1C9A93A18();
  if (!v2)
  {
    *&v16 = v15;
    v19 = 1;
    sub_1C97A2CEC(&qword_1EC3CE930);
    sub_1C9980128(&unk_1EC3CE940);
    sub_1C99A7934();
    sub_1C9A93A18();
    *&v16 = v11;
    v19 = 2;
    sub_1C99A7610();
    sub_1C99A7934();
    sub_1C9A93A18();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C99A5894()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = v0[6];
  MEMORY[0x1CCA919B0](*v0);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v1);
  MEMORY[0x1CCA919B0](v2);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v3);
  MEMORY[0x1CCA91980](v4);
  return sub_1C9A931F8();
}

uint64_t sub_1C99A594C()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = v0[6];
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](v1);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v2);
  MEMORY[0x1CCA919B0](v3);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v4);
  MEMORY[0x1CCA91980](v5);
  sub_1C9A931F8();
  return sub_1C9A93D18();
}

uint64_t sub_1C99A5A38@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CF2C0);
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15 - v9;
  sub_1C97A5A8C(a1, a1[3]);
  sub_1C99A7568();
  sub_1C9A93DB8();
  if (!v2)
  {
    v24 = 0;
    sub_1C97BD0D8();
    sub_1C9802184();
    v20 = v17;
    v21 = v18;
    v22 = v19;
    sub_1C97A2CEC(&qword_1EC3CE930);
    v23 = 1;
    sub_1C9980128(&qword_1EC3CF2D0);
    sub_1C9A938F8();
    v12 = v16;
    v23 = 2;
    sub_1C99A75BC();
    sub_1C9802184();
    (*(v7 + 8))(v10, v5);
    v13 = v16;
    v14 = v21;
    *a2 = v20;
    *(a2 + 16) = v14;
    *(a2 + 32) = v22;
    *(a2 + 48) = v12;
    *(a2 + 56) = v13;
  }

  return sub_1C97A592C(a1);
}

uint64_t sub_1C99A5C7C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C99A5264(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1C99A5CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C99A5504(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C99A5D00(uint64_t a1)
{
  v2 = sub_1C99A7568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C99A5D3C(uint64_t a1)
{
  v2 = sub_1C99A7568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C99A5D80()
{
  sub_1C9A93CC8();
  sub_1C99A5894();
  return sub_1C9A93D18();
}

double SNFeaturePrint.timeRange.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR___SNFeaturePrint_impl;
  v3 = *(v1 + OBJC_IVAR___SNFeaturePrint_impl + 40);
  *a1 = *(v1 + OBJC_IVAR___SNFeaturePrint_impl);
  *(a1 + 8) = *(v2 + 8);
  *(a1 + 16) = *(v2 + 16);
  result = *(v2 + 32);
  *(a1 + 32) = result;
  *(a1 + 40) = v3;
  return result;
}

double sub_1C99A5EDC@<D0>(_OWORD *a1@<X8>)
{
  SNFeaturePrint.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

void (*SNFeaturePrint.timeRange.modify(void *a1))(void **a1)
{
  v3 = sub_1C97A2C48(0x38uLL);
  *a1 = v3;
  *v3 = v1;
  SNFeaturePrint.timeRange.getter((v3 + 1));
  return sub_1C99A5F84;
}

void sub_1C99A5F84(void **a1)
{
  v1 = *a1;
  SNFeaturePrint.timeRange.setter(*a1 + 8);

  free(v1);
}

void *(*SNFeaturePrint.featurePrintType.modify(void *a1))(void *result)
{
  v2 = OBJC_IVAR___SNFeaturePrint_impl;
  a1[1] = v1;
  a1[2] = v2;
  *a1 = *(v1 + v2 + 48);
  return sub_1C99A6070;
}

void (*SNFeaturePrint.featureVector.modify(void *a1))(uint64_t *a1)
{
  v2 = OBJC_IVAR___SNFeaturePrint_impl;
  a1[1] = v1;
  a1[2] = v2;
  v3 = *(v1 + v2 + 56);
  *a1 = v3;
  v4 = v3;
  return sub_1C99A61C8;
}

void sub_1C99A61C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1] + a1[2];
  v3 = *(v2 + 56);
  *(v2 + 56) = v1;
}

id sub_1C99A61E0()
{
  ObjectType = swift_getObjectType();
  sub_1C97A2CEC(&unk_1EC3C6E20);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1C9A9DF30;
  sub_1C97BD318(0, &qword_1EC3C54B0);
  *(v2 + 32) = sub_1C9A931C8();
  v3 = objc_allocWithZone(MEMORY[0x1E695FED0]);
  v4 = sub_1C9A1AED4(v2, 65568);
  v5 = *(MEMORY[0x1E6960C98] + 8);
  v6 = *(MEMORY[0x1E6960C98] + 16);
  v7 = *(MEMORY[0x1E6960C98] + 24);
  v8 = *(MEMORY[0x1E6960C98] + 32);
  v9 = *(MEMORY[0x1E6960C98] + 40);
  v10 = &v0[OBJC_IVAR___SNFeaturePrint_impl];
  *v10 = *MEMORY[0x1E6960C98];
  *(v10 + 1) = v5;
  *(v10 + 2) = v6;
  *(v10 + 3) = v7;
  *(v10 + 4) = v8;
  *(v10 + 5) = v9;
  *(v10 + 6) = 0;
  *(v10 + 7) = v4;
  v12.receiver = v0;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, sel_init);
}

id SNFeaturePrint.copy(with:)@<X0>(void *a1@<X8>)
{
  ObjectType = swift_getObjectType();
  sub_1C9841D88(OBJC_IVAR___SNFeaturePrint_impl);
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR___SNFeaturePrint_impl];
  v6 = v12[3];
  v8 = v12[0];
  v7 = v12[1];
  *(v5 + 2) = v12[2];
  *(v5 + 3) = v6;
  *v5 = v8;
  *(v5 + 1) = v7;
  sub_1C97A5F68(v12, v11);
  v10.receiver = v4;
  v10.super_class = ObjectType;
  result = objc_msgSendSuper2(&v10, sel_init);
  a1[3] = ObjectType;
  *a1 = result;
  return result;
}

uint64_t SNFeaturePrint.hash.getter()
{
  v1 = *(v0 + OBJC_IVAR___SNFeaturePrint_impl + 16);
  v6 = *(v0 + OBJC_IVAR___SNFeaturePrint_impl);
  v7 = v1;
  v2 = *(v0 + OBJC_IVAR___SNFeaturePrint_impl + 48);
  v8 = *(v0 + OBJC_IVAR___SNFeaturePrint_impl + 32);
  v9 = v2;
  sub_1C9A93CC8();
  MEMORY[0x1CCA919B0](v6);
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](v7);
  MEMORY[0x1CCA919B0](*(&v7 + 1));
  sub_1C9A93CF8();
  sub_1C9A93CF8();
  MEMORY[0x1CCA919B0](*(&v8 + 1));
  MEMORY[0x1CCA91980](v9);
  sub_1C97A5F68(&v6, v5);
  sub_1C9A931F8();
  v3 = sub_1C9A93D18();
  sub_1C99A7494(&v6);
  return v3;
}

uint64_t SNFeaturePrint.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_1C97A2C7C(a1, &v24);
  if (v25)
  {
    sub_1C97A2D34(&v24, v23);
    sub_1C97BD360(v23, v22);
    if (swift_dynamicCast())
    {
      v3 = v21;
      v4 = *(v1 + OBJC_IVAR___SNFeaturePrint_impl + 16);
      v16[0] = *(v1 + OBJC_IVAR___SNFeaturePrint_impl);
      v16[1] = v4;
      v5 = *(v1 + OBJC_IVAR___SNFeaturePrint_impl + 48);
      v7 = *(v1 + OBJC_IVAR___SNFeaturePrint_impl);
      v6 = *(v1 + OBJC_IVAR___SNFeaturePrint_impl + 16);
      v17 = *(v1 + OBJC_IVAR___SNFeaturePrint_impl + 32);
      v18 = v5;
      v9 = *&v21[OBJC_IVAR___SNFeaturePrint_impl + 32];
      v8 = *&v21[OBJC_IVAR___SNFeaturePrint_impl + 48];
      v10 = *&v21[OBJC_IVAR___SNFeaturePrint_impl + 16];
      v19[0] = *&v21[OBJC_IVAR___SNFeaturePrint_impl];
      v19[1] = v10;
      v19[2] = v9;
      v20 = v8;
      v14[0] = v7;
      v14[1] = v6;
      v14[2] = v17;
      v11 = *&v21[OBJC_IVAR___SNFeaturePrint_impl + 16];
      v15[0] = *&v21[OBJC_IVAR___SNFeaturePrint_impl];
      v15[1] = v11;
      v15[2] = *&v21[OBJC_IVAR___SNFeaturePrint_impl + 32];
      if (static TimeRange.== infix(_:_:)(v14, v15) && v18 == v20)
      {
        sub_1C97BD318(0, &qword_1EC3C54A0);
        sub_1C97A5F68(v16, v14);
        sub_1C97A5F68(v19, v14);
        v12 = sub_1C9A931E8();
        sub_1C99A7494(v19);
        sub_1C99A7494(v16);

LABEL_9:
        sub_1C97A592C(v23);
        return v12 & 1;
      }
    }

    v12 = 0;
    goto LABEL_9;
  }

  v12 = 0;
  return v12 & 1;
}

id SNFeaturePrint.init(coder:)(void *a1)
{
  ObjectType = swift_getObjectType();
  sub_1C97A23AC();
  v3 = objc_allocWithZone(ObjectType);
  v4 = &v3[OBJC_IVAR___SNFeaturePrint_impl];
  v5 = v11;
  *v4 = v10;
  *(v4 + 1) = v5;
  v6 = v13;
  *(v4 + 2) = v12;
  *(v4 + 3) = v6;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v9, sel_init);

  swift_getObjectType();
  sub_1C97FB318();
  swift_deallocPartialClassInstance();
  return v7;
}

Swift::Void __swiftcall SNFeaturePrint.encode(with:)(NSCoder with)
{
  sub_1C9841D88(OBJC_IVAR___SNFeaturePrint_impl);
  sub_1C97A5F68(v3, v2);
  sub_1C97A0594(v3, 1819307369, 0xE400000000000000, with.super.isa);
  sub_1C99A7494(v3);
}

id sub_1C99A69D4(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for ShapedArray();
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1C97AEAD8();
  v9 = v8 - v7;
  sub_1C9990138(a2);
  v10 = sub_1C99906C0(v9);
  sub_1C9991530(v9);
  v11 = MEMORY[0x1E6960C98];
  v12 = *(MEMORY[0x1E6960C98] + 40);
  v13 = &v2[OBJC_IVAR___SNFeaturePrint_impl];
  *v13 = *MEMORY[0x1E6960C98];
  *(v13 + 1) = *(v11 + 8);
  *(v13 + 1) = *(v11 + 16);
  *(v13 + 4) = *(v11 + 32);
  *(v13 + 5) = v12;
  *(v13 + 6) = a1;
  *(v13 + 7) = v10;
  v16.receiver = v2;
  v16.super_class = ObjectType;
  v14 = objc_msgSendSuper2(&v16, sel_init);

  return v14;
}

id sub_1C99A6B4C(const float *a1, const float *a2, vDSP_Length a3)
{
  v6 = sub_1C989DBCC(a1, a2, a3);
  v7 = sub_1C989DBCC(a1, a1, a3);
  v8 = sub_1C989DBCC(a2, a2, a3);
  v9 = sqrt(v7 * v8);
  v10 = v6 / v9;
  v11 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v12 = v10;
  return [v11 initWithFloat_];
}

void sub_1C99A6C30(void *a1, void *a2)
{
  v4 = [a1 shape];
  sub_1C97BD318(0, &qword_1EC3C54B0);
  v5 = sub_1C9A92798();

  v6 = [a2 shape];
  v7 = sub_1C9A92798();

  v26 = sub_1C980937C(v5, v7);

  v8 = [a1 dataType];
  v9 = v8 != [a2 dataType] || objc_msgSend(a1, sel_dataType) != 65568;
  type metadata accessor for SNUtils();
  v10 = [a1 shape];
  v11 = sub_1C9A92798();

  sub_1C9A17104(v11);
  v13 = v12;

  v14 = [a1 shape];
  v15 = sub_1C9A92798();

  v16 = sub_1C9A931C8();
  v27 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v25[2] = &v27;
  sub_1C989AA8C(sub_1C99A7688, v25, v15);
  v18 = v17;

  if ((sub_1C998F684(a1) & 1) != 0 && (v19 = sub_1C998F684(a2), !((v13 > 1 || (v26 & 1) == 0 || (v19 & 1) == 0) | (v18 | v9) & 1)))
  {
    v20 = [a1 dataPointer];
    v21 = [a2 dataPointer];
    v22 = [a1 count];
    sub_1C989DBCC(v20, v21, v22);
    v23 = sub_1C989DBCC(v20, v20, v22);
    v24 = sub_1C989DBCC(v21, v21, v22);
    sqrt(v23 * v24);
  }

  else
  {
    type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000022, 0x80000001C9ADC330);
    swift_willThrow();
  }
}

void sub_1C99A6F6C(void *a1, void *a2)
{
  sub_1C99A6C30(a1, a2);
  if (!v2)
  {
    v4 = v3;
    v5 = objc_allocWithZone(MEMORY[0x1E696AD98]);
    LODWORD(v6) = v4;
    [v5 initWithFloat_];
  }
}

void SNFeaturePrint.description.getter()
{
  ObjectType = swift_getObjectType();
  *&v29[0] = 0;
  *(&v29[0] + 1) = 0xE000000000000000;
  sub_1C9A935B8();
  v30.receiver = v0;
  v30.super_class = ObjectType;
  v2 = &off_1E8348000;
  v3 = objc_msgSendSuper2(&v30, sel_description);
  v4 = sub_1C9A924A8();
  v6 = v5;

  v31 = v4;
  v32 = v6;
  MEMORY[0x1CCA90230](0x203A65707954203BLL, 0xE800000000000000);
  v7 = &v0[OBJC_IVAR___SNFeaturePrint_impl];
  *&v29[0] = *&v0[OBJC_IVAR___SNFeaturePrint_impl + 48];
  v8 = sub_1C9A93A98();
  MEMORY[0x1CCA90230](v8);

  MEMORY[0x1CCA90230](0xD000000000000011, 0x80000001C9ADC290);
  v9 = [v7[7] shape];
  sub_1C97BD318(0, &qword_1EC3C54B0);
  sub_1C97FB318();
  v10 = sub_1C9A92798();

  v11 = sub_1C97BDEE0(v10);
  if (!v11)
  {

    v14 = MEMORY[0x1E69E7CC0];
LABEL_12:
    v19 = MEMORY[0x1CCA90460](v14, MEMORY[0x1E69E6530]);
    v21 = v20;

    MEMORY[0x1CCA90230](v19, v21);

    MEMORY[0x1CCA90230](0x203A656D6954203BLL, 0xE800000000000000);
    SNFeaturePrint.timeRange.getter(v29);
    v22 = objc_opt_self();
    v28[0] = v29[0];
    v28[1] = v29[1];
    v28[2] = v29[2];
    v23 = [v22 valueWithCMTimeRange_];
    v24 = [v23 v2[368]];
    v25 = sub_1C9A924A8();
    v27 = v26;

    MEMORY[0x1CCA90230](v25, v27);

    return;
  }

  v12 = v11;
  *&v29[0] = MEMORY[0x1E69E7CC0];
  sub_1C97B7C28();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v13 = 0;
    v14 = *&v29[0];
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1CCA912B0](v13, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = [v15 integerValue];

      *&v29[0] = v14;
      v18 = *(v14 + 16);
      if (v18 >= *(v14 + 24) >> 1)
      {
        sub_1C97B7C28();
        v14 = *&v29[0];
      }

      ++v13;
      *(v14 + 16) = v18 + 1;
      *(v14 + 8 * v18 + 32) = v17;
    }

    while (v12 != v13);

    v2 = &off_1E8348000;
    goto LABEL_12;
  }

  __break(1u);
}

id SNFeaturePrint.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1C99A7450@<D0>(_OWORD *a1@<X8>)
{
  SNFeaturePrint.timeRange.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

unint64_t sub_1C99A7514()
{
  result = qword_1EC3CF2B8;
  if (!qword_1EC3CF2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF2B8);
  }

  return result;
}

unint64_t sub_1C99A7568()
{
  result = qword_1EC3CF2C8;
  if (!qword_1EC3CF2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF2C8);
  }

  return result;
}

unint64_t sub_1C99A75BC()
{
  result = qword_1EC3CF2D8;
  if (!qword_1EC3CF2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF2D8);
  }

  return result;
}

unint64_t sub_1C99A7610()
{
  result = qword_1EC3CF2E8;
  if (!qword_1EC3CF2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF2E8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for FeaturePrint.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C99A7798()
{
  result = qword_1EC3CF2F8;
  if (!qword_1EC3CF2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF2F8);
  }

  return result;
}

unint64_t sub_1C99A77F0()
{
  result = qword_1EC3CF300;
  if (!qword_1EC3CF300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF300);
  }

  return result;
}

unint64_t sub_1C99A7848()
{
  result = qword_1EC3CF308;
  if (!qword_1EC3CF308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF308);
  }

  return result;
}

unint64_t sub_1C99A78A0()
{
  result = qword_1EC3CF310;
  if (!qword_1EC3CF310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF310);
  }

  return result;
}

uint64_t sub_1C99A78F4(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ShapedArray();
    sub_1C97FB318();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1C99A7954(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    for (i = result + 32; ; i += 32)
    {
      sub_1C97BD360(i, v14);
      sub_1C97A2D34(v14, &v13);
      sub_1C97A2CEC(&qword_1EC3CF330);
      v3 = swift_dynamicCast();
      if ((v3 & 1) == 0)
      {
        break;
      }

      result = sub_1C99A7C38(v11);
      if (!--v1)
      {
        return result;
      }
    }

    sub_1C99A7CA0(v3, v4, v5, v6, v7, v8, v9, v10, v11[0], v11[1], v12);
    type metadata accessor for SNError();
    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000028, 0x80000001C9ADC360);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1C99A7A68(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1C9A93698();
    v5 = a1 + 32;
    while (1)
    {
      sub_1C97BD360(v5, v22);
      sub_1C97BD360(v22, v20);
      sub_1C97A2CEC(&qword_1EC3CF330);
      v6 = swift_dynamicCast();
      if (!v6)
      {
        sub_1C99A7CA0(v6, v7, v8, v9, v10, v11, v12, v13, v17, v18, v19);
        sub_1C98066EC();
        swift_allocError();
        swift_willThrow();
        v15 = v22;
        goto LABEL_10;
      }

      sub_1C979B054(&v17, v21);
      sub_1C97A5A8C(v21, v21[3]);
      sub_1C99D9680(&v17);
      if (v1)
      {
        break;
      }

      sub_1C97A5A8C(&v17, *(&v18 + 1));
      sub_1C9A93B08();
      sub_1C97A592C(v22);
      sub_1C97A592C(&v17);
      sub_1C97A592C(v21);
      sub_1C9A93678();
      sub_1C9A936A8();
      sub_1C9A936B8();
      sub_1C9A93688();
      v5 += 32;
      if (!--v2)
      {
        v3 = v23;
        goto LABEL_7;
      }
    }

    sub_1C97A592C(v22);
    v15 = v21;
LABEL_10:
    sub_1C97A592C(v15);
  }

  else
  {
LABEL_7:
    sub_1C97E9434(v3);
    v2 = v14;
  }

  return v2;
}

uint64_t sub_1C99A7C38(uint64_t a1)
{
  v2 = sub_1C97A2CEC(&qword_1EC3CF338);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C99A7CA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, uint64_t a11)
{
  a11 = 0;
  a9 = 0u;
  a10 = 0u;

  return sub_1C99A7C38(&a9);
}

uint64_t sub_1C99A7CC0(const void *a1)
{
  __dst[3] = &unk_1F492EC60;
  __dst[4] = &off_1F492E680;
  v4 = swift_allocObject();
  __dst[0] = v4;
  v5 = *(v1 + 32);
  v6 = *(v1 + 16);
  *(v4 + 16) = *v1;
  *(v4 + 32) = v6;
  *(v4 + 48) = v5;

  v7 = sub_1C99A7FC0(__dst, 0xD00000000000003CLL, 0x80000001C9ADC390);
  if (v2)
  {
    return sub_1C97A592C(__dst);
  }

  v9 = v7;
  sub_1C97A592C(__dst);
  memcpy(__dst, a1, 0x41uLL);
  type metadata accessor for SNSystemAudioAnalyzerLocal();
  swift_allocObject();
  sub_1C97A6264(a1, &v10);
  return sub_1C99462E0(v9 & 1, __dst);
}

uint64_t sub_1C99A7DD8(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1C9911468(a1, a2, a3, a4, a5, a6, a7, a8, v9, v10);
  sub_1C97AEA5C();
  return sub_1C99A7E08();
}

uint64_t sub_1C99A7E08()
{
  v1 = swift_allocObject();
  v2 = *(v0 + 16);
  *(v1 + 16) = *v0;
  *(v1 + 32) = v2;
  *(v1 + 48) = *(v0 + 32);

  v3 = sub_1C97DB4B0();

  return v3;
}

uint64_t sub_1C99A7ECC(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  sub_1C9911468(a1, a2, a3, a4, a5, a6, a7, a8, v9, v10);
  sub_1C97AEA5C();
  return sub_1C99A7EFC();
}

uint64_t sub_1C99A7EFC()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = swift_allocObject();
  v6[2] = v2;
  v6[3] = v1;
  v6[4] = v4;
  v6[5] = v3;
  v6[6] = v5;

  v7 = sub_1C97DB4B0();

  return v7;
}

uint64_t sub_1C99A7FC0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_1C97A5A8C(a1, v6);
  result = (*(v7 + 8))(&v9, a2, a3, v6, v7);
  if (!v3)
  {
    if (v10)
    {
      sub_1C97A2D34(&v9, v11);
      sub_1C97BD360(v11, &v9);
      if (swift_dynamicCast())
      {
        sub_1C97A592C(v11);
        return v12;
      }

      else
      {
        sub_1C99A8198();
        swift_allocError();
        swift_willThrow();
        return sub_1C97A592C(v11);
      }
    }

    else
    {
      sub_1C97A59D0(&v9);
      return 2;
    }
  }

  return result;
}

uint64_t sub_1C99A810C@<X0>(void *__src@<X0>, __int128 *a2@<X1>, void *a3@<X8>)
{
  memcpy(__dst, __src, 0x41uLL);
  v6 = a2[1];
  v9 = *a2;
  v10 = v6;
  v11 = *(a2 + 4);
  result = sub_1C99A80E8(__dst);
  if (!v3)
  {
    *a3 = result;
  }

  return result;
}

unint64_t sub_1C99A8198()
{
  result = qword_1EC3CF340;
  if (!qword_1EC3CF340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF340);
  }

  return result;
}

uint64_t sub_1C99A81EC()
{

  return swift_deallocObject();
}

id sub_1C99A824C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  v6 = *(v5 + 16);
  v6(&v12, a3, v5);
  v7 = v12;
  v6(&v11, a3, v5);
  v8 = v11;
  v9 = [v7 isEqual_];

  return v9;
}

uint64_t sub_1C99A8300(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(*(a3 + 8) + 16))(&v6, a2);
  v3 = v6;
  v4 = [v6 hash];

  return MEMORY[0x1CCA91980](v4);
}

uint64_t sub_1C99A837C(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  switch(a4 >> 62)
  {
    case 1uLL:
      v5 = a3 >> 32;
      if (a3 >> 32 >= a3)
      {
        v4 = a3;
        goto LABEL_6;
      }

      __break(1u);
      break;
    case 2uLL:
      v4 = *(a3 + 16);
      v5 = *(a3 + 24);
LABEL_6:
      result = sub_1C9901FA0(v4, v5, sub_1C99A8FB8);
      break;
    default:
      sub_1C99A910C();
      result = sub_1C9886B10();
      break;
  }

  return result;
}

uint64_t sub_1C99A842C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = MEMORY[0x1CCA8F2D0](a3);
  v8 = v4;
  sub_1C99A8B54(sub_1C99A8F74);
  result = sub_1C97A5978(v7, v8);
  if (!v3)
  {
    return v6;
  }

  return result;
}

void *sub_1C99A84BC(uint64_t a1, void *(*a2)(void *__return_ptr, uint64_t *, uint64_t *))
{
  v6[2] = *MEMORY[0x1E69E9840];
  v5 = a1;
  result = a2(v6, &v5, &v4);
  if (!v2)
  {
    return v6[0];
  }

  return result;
}

uint64_t sub_1C99A853C(uint64_t a1, uint64_t a2, void *a3, unsigned int a4)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = a4;
  v6 = a3[3];
  v7 = a3[4];
  sub_1C97A5A8C(a3, v6);
  return (*(v7 + 8))(1, v9, 1, a1, a2, 0, 0, 0, 0, v6, v7);
}

unint64_t sub_1C99A8608@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X8>)
{
  v12 = a2[3];
  v13 = a2[4];
  sub_1C97A5A8C(a2, v12);
  result = (*(v13 + 8))(2, a1, 1, 0, 0, 0, 0, a3, a4, v12, v13);
  v15 = v6;
  if (!v6)
  {
    v16 = HIDWORD(result);
    if (a3)
    {
      if (a4 - a3 >= v16)
      {
        v17 = v16 + a3;
LABEL_6:
        *a6 = a3;
        a6[1] = v17;
        return result;
      }
    }

    else
    {
      v17 = 0;
      if (!v16)
      {
        goto LABEL_6;
      }
    }

    sub_1C9A935B8();

    type metadata accessor for SNError();
    v18 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v18);

    MEMORY[0x1CCA90230](0x20746F67202CLL, 0xE600000000000000);
    v19 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v19);

    v15 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0xD000000000000028, 0x80000001C9ADC400);

    result = swift_willThrow();
  }

  *a5 = v15;
  return result;
}

unint64_t sub_1C99A87FC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, void *a8@<X8>)
{
  v16 = a2[3];
  v15 = a2[4];
  sub_1C97A5A8C(a2, v16);
  result = (*(v15 + 8))(3, a1, 1, a3, a4, 0, 0, a5, a6, v16, v15);
  v18 = v8;
  if (!v8)
  {
    v19 = HIDWORD(result);
    if (a5)
    {
      if (a6 - a5 >= v19)
      {
        v20 = v19 + a5;
LABEL_6:
        *a8 = a5;
        a8[1] = v20;
        return result;
      }
    }

    else
    {
      v20 = 0;
      if (!v19)
      {
        goto LABEL_6;
      }
    }

    sub_1C9A935B8();
    MEMORY[0x1CCA90230](0xD00000000000002BLL, 0x80000001C9ADC3D0);
    type metadata accessor for SNError();
    v21 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v21);

    MEMORY[0x1CCA90230](0x20746F67202CLL, 0xE600000000000000);
    v22 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v22);

    v18 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, 0, 0, 0xE000000000000000);

    result = swift_willThrow();
  }

  *a7 = v18;
  return result;
}

uint64_t sub_1C99A8A60@<X0>(unsigned int a1@<W3>, uint64_t *a2@<X8>)
{
  result = sub_1C99A84BC(a1, sub_1C99A8F4C);
  if (!v2)
  {
    result = sub_1C98FBBC4(result, v5);
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_1C99A8AEC@<X0>(unsigned int a1@<W3>, uint64_t *a2@<X8>)
{
  result = sub_1C99A84BC(a1, sub_1C99A8F94);
  if (!v2)
  {
    result = sub_1C98FBBC4(result, v5);
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t sub_1C99A8B54(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v14 = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v3 = v1[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v9 = v3 & 0x3FFFFFFFFFFFFFFFLL;

      sub_1C97A5978(v4, v3);
      *v2 = xmmword_1C9AA9A40;
      sub_1C97A5978(0, 0xC000000000000000);
      v10 = v4 >> 32;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_10;
      }

      if (v10 < v4)
      {
        goto LABEL_14;
      }

      if (sub_1C9A91308() && __OFSUB__(v4, sub_1C9A91338()))
      {
        goto LABEL_15;
      }

      sub_1C9A91348();
      swift_allocObject();
      v11 = sub_1C9A912F8();

      v9 = v11;
LABEL_10:
      if (v10 < v4)
      {
        __break(1u);
LABEL_14:
        __break(1u);
LABEL_15:
        __break(1u);
      }

      sub_1C99A8EA4(v4, v4 >> 32, a1);

      *v2 = v4;
      v2[1] = v9 | 0x4000000000000000;
      return result;
    case 2uLL:

      sub_1C97A5978(v4, v3);
      *&v13 = v4;
      *(&v13 + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_1C9AA9A40;
      sub_1C97A5978(0, 0xC000000000000000);
      sub_1C9A91588();
      v8 = *(&v13 + 1);
      result = sub_1C99A8EA4(*(v13 + 16), *(v13 + 24), a1);
      *v2 = v13;
      v2[1] = v8 | 0x8000000000000000;
      return result;
    case 3uLL:
      *(&v13 + 7) = 0;
      *&v13 = 0;
      return a1(&v13, &v13);
    default:
      sub_1C97A5978(v4, v3);
      *&v13 = v4;
      WORD4(v13) = v3;
      BYTE10(v13) = BYTE2(v3);
      BYTE11(v13) = BYTE3(v3);
      BYTE12(v13) = BYTE4(v3);
      BYTE13(v13) = BYTE5(v3);
      BYTE14(v13) = BYTE6(v3);
      result = a1(&v13, &v13 + BYTE6(v3));
      v7 = DWORD2(v13) | ((WORD6(v13) | (BYTE14(v13) << 16)) << 32);
      *v2 = v13;
      v2[1] = v7;
      return result;
  }
}

uint64_t sub_1C99A8EA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = sub_1C9A91308();
  if (!result)
  {
    goto LABEL_10;
  }

  v7 = result;
  result = sub_1C9A91338();
  v8 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v11 = sub_1C9A91328();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  return a3(v7 + v8, v7 + v8 + v12);
}

_BYTE *storeEnumTagSinglePayload for SPUServiceUtils.DomainError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C99A90B8()
{
  result = qword_1EC3CF348;
  if (!qword_1EC3CF348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF348);
  }

  return result;
}

void sub_1C99A9128()
{
  sub_1C97BE460();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  sub_1C97DACE4(v9);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C99ACFF0(v11, v18);
  v12 = sub_1C9A92988();
  v13 = sub_1C97ABF20(v0, 1, v12);

  if (v13 == 1)
  {
    sub_1C97AE434(v0, &qword_1EC3CA8D0);
  }

  else
  {
    sub_1C9A92978();
    sub_1C97AEB3C();
    (*(v14 + 8))(v0, v12);
  }

  v15 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C97AE434(v6, &qword_1EC3CA8D0);
    sub_1C97AA878();
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v2;
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1C9A92928();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C9A92508();
  sub_1C97AA878();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v2;

  swift_task_create();

  sub_1C97AE434(v6, &qword_1EC3CA8D0);

LABEL_9:
  sub_1C97BE478();
}

void sub_1C99A93C4()
{
  sub_1C97BE460();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  sub_1C97DACE4(v9);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v10);
  sub_1C99ACFF0(v11, v18);
  v12 = sub_1C9A92988();
  v13 = sub_1C97ABF20(v0, 1, v12);

  if (v13 == 1)
  {
    sub_1C97AE434(v0, &qword_1EC3CA8D0);
  }

  else
  {
    sub_1C9A92978();
    sub_1C97AEB3C();
    (*(v14 + 8))(v0, v12);
  }

  v15 = *(v2 + 16);
  swift_unknownObjectRetain();

  if (!v15)
  {
    if (v8)
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1C97AE434(v6, &qword_1EC3CA8D0);
    sub_1C97AA878();
    v17 = swift_allocObject();
    *(v17 + 16) = v4;
    *(v17 + 24) = v2;
    sub_1C97A2CEC(&qword_1EC3C89D0);
    swift_task_create();
    goto LABEL_9;
  }

  swift_getObjectType();
  sub_1C9A92928();
  swift_unknownObjectRelease();
  if (!v8)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1C9A92508();
  sub_1C97AA878();
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = v2;

  sub_1C97A2CEC(&qword_1EC3C89D0);
  swift_task_create();

  sub_1C97AE434(v6, &qword_1EC3CA8D0);

LABEL_9:
  sub_1C97BE478();
}

uint64_t sub_1C99A9674()
{
  v57 = *MEMORY[0x1E69E9840];
  if (*(v0 + 96) == 1)
  {
    if (qword_1EC3C5520 != -1)
    {
LABEL_33:
      sub_1C97DAA64();
    }

    v1 = sub_1C9A91B58();
    sub_1C9887EC4(v1, qword_1EC3D3108);
    v2 = sub_1C9A91B38();
    v3 = sub_1C9A92F88();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1C9788000, v2, v3, "Queue already running", v4, 2u);
      sub_1C9840CEC();
    }

    return 1;
  }

  else
  {
    v6 = v0;
    sub_1C99AD040();
    swift_beginAccess();
    *(v0 + 104) = 0;
    v7 = *(v0 + 72);
    v8 = *(v6 + 80);
    v9 = *(v6 + 88);
    v10 = *(v6 + 56);
    v11 = *(v6 + 64);
    v12 = *(v6 + 16);
    type metadata accessor for SNAudioRecordingQueueScheduler();
    v13 = swift_allocObject();

    v14 = v10;
    v15 = v12;
    sub_1C99A9D10(v11, v7, v8, v9, v14, v15);
    *(v6 + 112) = v13;

    [v15 streamDescription];
    v16 = *(v6 + 48);
    [v16 opaqueSessionID];
    swift_beginAccess();
    LODWORD(v8) = AudioQueueNewInputWithAudioSession();
    swift_endAccess();
    sub_1C9A3B558(v8);
    v17 = *(v6 + 104);
    if (v17)
    {
      (*(v6 + 32))(*(v6 + 104), v16);
      v18 = 5;
      do
      {
        LODWORD(v19) = *([v15 streamDescription] + 6);
        v20 = v19 * 0.512;
        [v15 sampleRate];
        v22 = v20 * v21;
        outBuffer = 0;
        if ((*&v22 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        if (v22 <= -1.0)
        {
          goto LABEL_31;
        }

        if (v22 >= 4294967300.0)
        {
          goto LABEL_32;
        }

        v23 = v22;
        v24 = AudioQueueAllocateBuffer(v17, v22, &outBuffer);
        if (v24 != sub_1C9A91BF8())
        {
          goto LABEL_21;
        }

        v25 = outBuffer;
        if (!outBuffer)
        {
          type metadata accessor for SNError();
          sub_1C98573F8();
          v37 = v45 + 2;
          goto LABEL_23;
        }

        outBuffer->mAudioDataByteSize = v23;
        v24 = AudioQueueEnqueueBuffer(v17, v25, 0, 0);
        if (v24 != sub_1C9A91BF8())
        {
LABEL_21:
          type metadata accessor for SNError();
          v38 = sub_1C9A924A8();
          v40 = v39;
          v41 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v42 = sub_1C9A3B688(v38, v40, v24, 0);
          v55 = 0;
          v56 = 0xE000000000000000;
          sub_1C9A935B8();

          v55 = 0xD00000000000001FLL;
          v56 = 0x80000001C9AD7D50;
          v43 = sub_1C9A93A98();
          MEMORY[0x1CCA90230](v43);

          v44 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 1, v42, v55, v56);

          goto LABEL_24;
        }

        --v18;
      }

      while (v18);
      v26 = sub_1C99ACF50();
      AudioQueueAddPropertyListener(v26, v27, v28, v13);
      if (qword_1EC3C5520 != -1)
      {
        sub_1C97DAA64();
      }

      v29 = sub_1C9A91B58();
      sub_1C9887EC4(v29, qword_1EC3D3108);
      v30 = sub_1C9A91B38();
      v31 = sub_1C9A92FC8();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_1C9788000, v30, v31, "Starting audio queue", v32, 2u);
        sub_1C9840CEC();
      }

      v33 = AudioQueueStart(v17, 0);
      sub_1C9A3B558(v33);

      result = 1;
      *(v6 + 96) = 1;
    }

    else
    {
      type metadata accessor for SNError();
      sub_1C98573F8();
      v37 = v36 + 5;
LABEL_23:
      v44 = sub_1C9820900(v34, v37, v35);
LABEL_24:
      swift_willThrow();

      if (qword_1EC3C5520 != -1)
      {
        sub_1C97DAA64();
      }

      v46 = sub_1C9A91B58();
      sub_1C9887EC4(v46, qword_1EC3D3108);
      v47 = v44;
      v48 = sub_1C9A91B38();
      v49 = sub_1C9A92FA8();

      if (os_log_type_enabled(v48, v49))
      {
        v50 = sub_1C99AD08C();
        v51 = sub_1C99AD014();
        *v50 = 138412290;
        v52 = v44;
        v53 = _swift_stdlib_bridgeErrorToNSError();
        *(v50 + 4) = v53;
        *v51 = v53;
        _os_log_impl(&dword_1C9788000, v48, v49, "failed to start audio %@", v50, 0xCu);
        sub_1C97AE434(v51, &unk_1EC3C86A0);
        sub_1C99ACF88();
        sub_1C9840CEC();
      }

      else
      {
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99A9D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_1C9A91738();
  v13 = (v6 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_bufferHandler);
  *v13 = a1;
  v13[1] = a2;
  v14 = (v6 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_interruptionHandler);
  *v14 = a3;
  v14[1] = a4;
  *(v6 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_recordFormat) = a6;

  v15 = a6;
  result = os_transaction_create();
  if (!result)
  {
    goto LABEL_9;
  }

  *(v6 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_transaction) = result;
  sub_1C99AD058(*(MEMORY[0x1E6960CC0] + 16));
  sub_1C99AD058(v17);
  v18 = *[v15 streamDescription];

  v19 = v18 * 45.0;
  *(v6 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueue) = a5;
  sub_1C97A2CEC(&qword_1EC3CF368);
  sub_1C97F07FC();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v6 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueueFundsSpent) = result;
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else if (v19 > -9.22337204e18)
  {
    if (v19 < 9.22337204e18)
    {
      sub_1C97F07FC();
      v20 = swift_allocObject();
      *(v20 + 16) = v19;
      *(v6 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueueFundsEarned) = v20;
      sub_1C97A2CEC(qword_1EC3CF370);
      v21 = swift_allocObject();
      *(v6 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueueStopped) = v21;
      *(v21 + 16) = 0;
      *(v6 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_unhealthyBufferCount) = 0;
      return v6;
    }

    goto LABEL_8;
  }

  __break(1u);
LABEL_8:
  __break(1u);
LABEL_9:
  __break(1u);
  return result;
}

void sub_1C99A9F14(uint64_t a1, unint64_t a2, uint64_t *a3, const char *a4)
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64();
  }

  v8 = sub_1C9A91B58();
  sub_1C9887EC4(v8, qword_1EC3D3108);

  oslog = sub_1C9A91B38();
  v9 = sub_1C9A92FC8();

  if (os_log_type_enabled(oslog, v9))
  {
    v10 = sub_1C99AD0A4();
    v11 = swift_slowAlloc();
    v12 = sub_1C99AD0A4();
    v24 = v12;
    *v10 = 136446722;
    *(v10 + 4) = sub_1C9849140(a1, a2, &v24);
    *(v10 + 12) = 2114;
    v13 = *a3;
    v14 = a3[2];
    v15 = objc_opt_self();
    v21 = v13;
    v22 = a3[1];
    v23 = v14;
    v16 = [v15 valueWithCMTime_];
    *(v10 + 14) = v16;
    *v11 = v16;
    *(v10 + 22) = 2114;
    v21 = sub_1C9A92F08();
    v22 = v17;
    v23 = v18;
    v19 = [v15 valueWithCMTime_];
    *(v10 + 24) = v19;
    v11[1] = v19;
    _os_log_impl(&dword_1C9788000, oslog, v9, a4, v10, 0x20u);
    sub_1C97A2CEC(&unk_1EC3C86A0);
    swift_arrayDestroy();
    sub_1C9840CEC();
    sub_1C97A592C(v12);
    sub_1C9840CEC();
    sub_1C9840CEC();
  }

  else
  {
  }
}

void sub_1C99AA138(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9)
{
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64();
  }

  v16 = sub_1C9A91B58();
  sub_1C9887EC4(v16, qword_1EC3D3108);

  oslog = sub_1C9A91B38();
  v17 = sub_1C9A92FC8();

  if (os_log_type_enabled(oslog, v17))
  {
    v18 = sub_1C99AD0A4();
    v19 = swift_slowAlloc();
    v20 = sub_1C99AD0A4();
    v21 = a1;
    v22 = v20;
    v31 = v20;
    *v18 = 136446722;
    *(v18 + 4) = sub_1C9849140(v21, a2, &v31);
    *(v18 + 12) = 2114;
    v23 = objc_opt_self();
    v28 = a3;
    v29 = a4;
    v30 = a5;
    v24 = [v23 valueWithCMTime_];
    *(v18 + 14) = v24;
    *v19 = v24;
    *(v18 + 22) = 2114;
    v28 = a6;
    v29 = a7;
    v30 = a8;
    v25 = [v23 valueWithCMTime_];
    *(v18 + 24) = v25;
    v19[1] = v25;
    _os_log_impl(&dword_1C9788000, oslog, v17, a9, v18, 0x20u);
    sub_1C97A2CEC(&unk_1EC3C86A0);
    swift_arrayDestroy();
    sub_1C9840CEC();
    sub_1C97A592C(v22);
    sub_1C9840CEC();
    sub_1C9840CEC();
  }

  else
  {
  }
}

uint64_t sub_1C99AA37C(uint64_t a1, void *a2)
{
  v4 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  sub_1C97DACE4(v4);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v5);
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64();
  }

  v6 = sub_1C9A91B58();
  sub_1C9887EC4(v6, qword_1EC3D3108);
  v7 = a2;
  v8 = sub_1C9A91B38();
  v9 = sub_1C9A92FA8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = sub_1C99AD014();
    *v10 = 134349314;
    *(v10 + 4) = a1;
    *(v10 + 12) = 2112;
    v12 = a2;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&dword_1C9788000, v8, v9, "%{public}ld consecutive audio heartbeats detected unhealthy buffers. Error: %@.", v10, 0x16u);
    sub_1C97AE434(v11, &unk_1EC3C86A0);
    sub_1C9840CEC();
    sub_1C9840CEC();
  }

  v14 = sub_1C9A92988();
  sub_1C98B1074(v14);
  sub_1C97AA878();
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  sub_1C99AD06C();
}

uint64_t sub_1C99AA554()
{
  sub_1C97AA95C();
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 processName];

  sub_1C9A924A8();
  sub_1C99ACF08();
  v0[5] = v3;
  v0[6] = 0x65746E6F43646142;
  sub_1C99ACFC4(v4, 0xEA0000000000746ELL);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v10 = sub_1C99ACFA4(v5);

  return sub_1C987A75C(v6, v7, v8, v9, v10);
}

uint64_t sub_1C99AA65C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;
  *(v4 + 216) = v0;

  if (v0)
  {
    v5 = sub_1C99AA7B8;
  }

  else
  {
    v5 = sub_1C99AA760;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C99AA760()
{
  sub_1C97AA884();
  sub_1C987B04C(v0 + 16);
  sub_1C97DA91C();

  return v1();
}

uint64_t sub_1C99AA7B8()
{
  sub_1C987B04C(v0 + 16);
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64();
  }

  v1 = *(v0 + 216);
  v2 = sub_1C9A91B58();
  sub_1C9887EC4(v2, qword_1EC3D3108);
  v3 = v1;
  v4 = sub_1C9A91B38();
  v5 = sub_1C9A92FA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 216);
  if (v6)
  {
    v8 = sub_1C99AD08C();
    v9 = sub_1C99AD014();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    sub_1C99AD04C();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_1C97AE434(v9, &unk_1EC3C86A0);
    sub_1C9840CEC();
    sub_1C99ACF88();
  }

  else
  {
  }

  sub_1C97DA91C();

  return v17();
}

uint64_t sub_1C99AA924(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C97A2CEC(&qword_1EC3CA8D0);
  sub_1C97DACE4(v5);
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C9831528();
  v8 = *(*(v7 + 136))();
  v9 = *(*(*a3 + 136))();
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64();
  }

  v10 = sub_1C9A91B58();
  sub_1C9887EC4(v10, qword_1EC3D3108);
  v11 = a1;
  v12 = sub_1C9A91B38();
  v13 = sub_1C9A92FA8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134218496;
    *(v14 + 4) = v8;
    *(v14 + 12) = 2048;
    *(v14 + 14) = v9;
    *(v14 + 22) = 1024;
    *(v14 + 24) = [v11 frameLength];

    sub_1C99AD04C();
    _os_log_impl(v15, v16, v17, v18, v19, 0x1Cu);
    sub_1C99ACF88();
  }

  else
  {

    v12 = v11;
  }

  v20 = sub_1C9A92988();
  sub_1C98B1074(v20);
  sub_1C97AA878();
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  sub_1C99AD06C();
}

uint64_t sub_1C99AAB30()
{
  sub_1C97AA95C();
  v1 = [objc_opt_self() processInfo];
  v2 = [v1 processName];

  sub_1C9A924A8();
  sub_1C99ACF08();
  v0[5] = v3;
  v0[6] = 0x776F6C667265764FLL;
  sub_1C99ACFC4(v4, 0xE800000000000000);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v10 = sub_1C99ACFA4(v5);

  return sub_1C987A75C(v6, v7, v8, v9, v10);
}

uint64_t sub_1C99AAC34()
{
  sub_1C97AA884();
  sub_1C97AA890();
  v2 = *v1;
  sub_1C97AA83C();
  *v3 = v2;
  *(v4 + 216) = v0;

  if (v0)
  {
    v5 = sub_1C99AAD38;
  }

  else
  {
    v5 = sub_1C99ACEE4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1C99AAD38()
{
  sub_1C987B04C(v0 + 16);
  if (qword_1EC3C5520 != -1)
  {
    sub_1C97DAA64();
  }

  v1 = *(v0 + 216);
  v2 = sub_1C9A91B58();
  sub_1C9887EC4(v2, qword_1EC3D3108);
  v3 = v1;
  v4 = sub_1C9A91B38();
  v5 = sub_1C9A92FA8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 216);
  if (v6)
  {
    v8 = sub_1C99AD08C();
    v9 = sub_1C99AD014();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    sub_1C99AD04C();
    _os_log_impl(v12, v13, v14, v15, v16, 0xCu);
    sub_1C97AE434(v9, &unk_1EC3C86A0);
    sub_1C9840CEC();
    sub_1C99ACF88();
  }

  else
  {
  }

  sub_1C97DA91C();

  return v17();
}

void sub_1C99AAEA4()
{
  sub_1C97BE460();
  v1 = sub_1C9A92128();
  sub_1C97AE9C8();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  sub_1C97AEAD8();
  v7 = v6 - v5;
  v8 = sub_1C9A92158();
  sub_1C97AE9C8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C97AEAD8();
  v14 = v13 - v12;
  sub_1C9831528();
  v16 = *(v15 + 136);
  if ((*v16() & 1) == 0)
  {
    v17 = v16();
    v18 = 0;
    atomic_compare_exchange_strong_explicit(v17, &v18, 1u, memory_order_relaxed, memory_order_relaxed);
    if (!v18)
    {
      v20 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_interruptionHandler);
      v19 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_interruptionHandler + 8);
      sub_1C97AA878();
      v21 = swift_allocObject();
      *(v21 + 16) = v20;
      *(v21 + 24) = v19;
      v26[4] = sub_1C97EFF90;
      v26[5] = v21;
      sub_1C994A090();
      sub_1C97F083C(COERCE_DOUBLE(1107296256));
      v26[2] = v22;
      v26[3] = &unk_1F4946F80;
      v23 = _Block_copy(v26);

      sub_1C9A92148();
      sub_1C99ACEF0();
      sub_1C99ACACC(v24, v25);
      sub_1C97A2CEC(&unk_1EC3C8660);
      sub_1C99AC8F8();
      sub_1C9A93428();
      MEMORY[0x1CCA90CE0](0, v14, v7, v23);
      _Block_release(v23);
      (*(v3 + 8))(v7, v1);
      (*(v10 + 8))(v14, v8);
    }
  }

  sub_1C97BE478();
}

void sub_1C99AB13C(uint64_t a1, void *a2)
{
  sub_1C99AA37C(*(v2 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_unhealthyBufferCount), a2);

  sub_1C99AAEA4();
}

void sub_1C99AB170(void *a1)
{
  sub_1C99AA924(a1, *(v1 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueueFundsSpent), *(v1 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueueFundsEarned));

  sub_1C99AAEA4();
}

void sub_1C99AB1B0(void *a1)
{
  v3 = OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_unhealthyBufferCount;
  sub_1C9996C30(a1);
  sub_1C9996D74(a1);
  sub_1C9996E90(a1);
  *(v1 + v3) = 0;
}

uint64_t sub_1C99AB274(void *a1, void *a2, void *a3, const char *a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = v5;
  v9 = v5 + *a3;
  v10 = *v9;
  v11 = *(v9 + 2);
  v12 = *(v9 + 3);
  v13 = *(v9 + 2);
  v48 = *v5;
  type metadata accessor for SNTimeUtils();

  v49 = a1;
  v14 = sub_1C97CC704(a2);
  v16 = v15;
  v18 = v17;
  v19 = HIDWORD(v15);
  CMTimeMakeWithSeconds(&time1, 10.0, 1000);
  time1.value = v10;
  time1.timescale = v11;
  time1.flags = v12;
  time1.epoch = v13;
  time2.value = v14;
  time2.timescale = v16;
  time2.flags = v19;
  time2.epoch = v18;
  if (CMTimeCompare(&time1, &time2) < 1 || (sub_1C99AD02C(), sub_1C99AB4D4(v20, v21, v22, v23, v24, v25, v6, v48, a4), (sub_1C9A93178() & 1) != 0))
  {

    v45 = v49;
    sub_1C99AD02C();
    v38 = a5(v26, v27, v28, v29, v30, v31);
    v40 = v39;
    v42 = v41;

    v44 = HIDWORD(v40);
  }

  else
  {
    type metadata accessor for SNError();
    sub_1C99AD040();
    v37 = sub_1C9929478(v32, v33, v34, v35, 0xD000000000000012, v36);
    swift_willThrow();

    v38 = *MEMORY[0x1E6960C70];
    LODWORD(v40) = *(MEMORY[0x1E6960C70] + 8);
    LODWORD(v44) = *(MEMORY[0x1E6960C70] + 12);
    v42 = *(MEMORY[0x1E6960C70] + 16);
  }

  *v9 = v38;
  *(v9 + 2) = v40;
  *(v9 + 3) = v44;
  *(v9 + 2) = v42;
  return result;
}

uint64_t sub_1C99AB4D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const char *a9)
{
  sub_1C9A91748();
  sub_1C99ACF70();
  sub_1C99ACACC(v15, v16);
  v17 = sub_1C9A93A98();
  sub_1C99AA138(v17, v18, a1, a2, a3, a4, a5, a6, a9);

  return a4;
}

void sub_1C99AB5C4(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4, const char *a5)
{
  sub_1C9A91748();
  sub_1C99ACF70();
  sub_1C99ACACC(v8, v9);
  v10 = sub_1C9A93A98();
  sub_1C99A9F14(v10, v11, a1, a5);

  sub_1C99AB1B0(a3);
}

void sub_1C99AB66C(OpaqueAudioQueue *a1, AudioQueueBuffer *a2, uint64_t a3)
{
  v7 = objc_autoreleasePoolPush();
  sub_1C99AB6E0(v3, a2, a3, a1);

  objc_autoreleasePoolPop(v7);
}

void sub_1C99AB6E0(uint64_t a1, AudioQueueBuffer *a2, uint64_t a3, OpaqueAudioQueue *a4)
{
  if ((*(*(**(a1 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueueStopped) + 136))() & 1) == 0)
  {
    mAudioDataByteSize = a2->mAudioDataByteSize;
    if (mAudioDataByteSize)
    {
      v9 = *(a1 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_recordFormat);
      v10 = *([v9 streamDescription] + 6);
      if (v10)
      {
        v11 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v9 frameCapacity:mAudioDataByteSize / v10];
        if (v11)
        {
          v12 = v11;
          [v11 setFrameLength:[v11 frameCapacity]];
          v13 = [v12 mutableAudioBufferList];
          if (*v13 == 1)
          {
            memcpy(v13[2], a2->mAudioData, a2->mAudioDataByteSize);
            [v9 sampleRate];
            v15 = [objc_allocWithZone(MEMORY[0x1E69584A0]) initWithAudioTimeStamp:a3 sampleRate:v14];
            sub_1C99AB274(v12, v15, &OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_lastAudioHeartbeatTime, "Audio Heartbeat Reanchor (%{public}s); time changed from %{public}@ to %{public}@", sub_1C97CCC50);
            sub_1C99ABA18(v12, v15);
            AudioQueueEnqueueBuffer(a4, a2, 0, 0);

            v12 = v15;
          }

          else
          {
            if (qword_1EC3C5520 != -1)
            {
              swift_once();
            }

            v19 = sub_1C9A91B58();
            sub_1C97BFF6C(v19, qword_1EC3D3108);
            v20 = sub_1C9A91B38();
            v21 = sub_1C9A92FA8();
            if (os_log_type_enabled(v20, v21))
            {
              v22 = swift_slowAlloc();
              *v22 = 0;
              _os_log_impl(&dword_1C9788000, v20, v21, "could not handle non-unary buffer count", v22, 2u);
              MEMORY[0x1CCA93280](v22, -1, -1);
            }
          }

LABEL_15:

          return;
        }

        if (qword_1EC3C5520 == -1)
        {
LABEL_8:
          v16 = sub_1C9A91B58();
          sub_1C97BFF6C(v16, qword_1EC3D3108);
          v12 = sub_1C9A91B38();
          v17 = sub_1C9A92FA8();
          if (os_log_type_enabled(v12, v17))
          {
            v18 = swift_slowAlloc();
            *v18 = 0;
            _os_log_impl(&dword_1C9788000, v12, v17, "could not allocate avaudiobuffer", v18, 2u);
            MEMORY[0x1CCA93280](v18, -1, -1);
          }

          goto LABEL_15;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_8;
    }
  }
}

uint64_t sub_1C99ABA18(void *a1, void *a2)
{
  v6 = *(v2 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_bufferHandler);
  v5 = *(v2 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_bufferHandler + 8);
  sub_1C97F07FC();
  v7 = swift_allocObject();
  swift_weakInit();
  sub_1C98137F8();
  v8 = swift_allocObject();
  v8[2] = v6;
  v8[3] = v5;
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = v7;

  v9 = a1;
  v10 = a2;
  [v9 frameLength];
  sub_1C99ABBC8();
  v12 = v11;
  if ((v11 & 1) == 0)
  {
    sub_1C99AB170(v9);
  }

  return v12 & 1;
}

void sub_1C99ABB04(void (*a1)(void *, void *), uint64_t a2, void *a3, void *a4)
{
  v7 = objc_autoreleasePoolPush();
  a1(a3, a4);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1C99AB274(a3, a4, &OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_lastProcessingHeartbeatTime, "Audio Processed Reanchor (%{public}s); time changed from %{public}@ to %{public}@", sub_1C97CCC84);
  }

  objc_autoreleasePoolPop(v7);
}

void sub_1C99ABBC8()
{
  sub_1C97BE460();
  v1 = v0;
  v3 = v2;
  v42 = v4;
  v43 = v5;
  v6 = sub_1C9A92128();
  sub_1C97AE9C8();
  v46 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  v11 = v10 - v9;
  v45 = sub_1C9A92158();
  v44 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45 - 8);
  sub_1C97AEAD8();
  v14 = v13 - v12;
  v15 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueueFundsSpent);
  v16 = *(v0 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueueFundsEarned);
  v17 = *(v1 + OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_eventHandlerQueueStopped);
  sub_1C9831528();
  v41 = v16;
  v19 = *(*(v18 + 136))();
  v20 = v14;
  v21 = &unk_1C9A9C000;
  if (*(*(*v17 + 136))())
  {
    goto LABEL_10;
  }

  v40 = v1;
  v22 = v11;
  if (!v3)
  {
    goto LABEL_9;
  }

  v23 = *(*v15 + 136);
  do
  {
    v24 = *v23();
    if (v19 - v24 >= v3)
    {
      v25 = v3;
    }

    else
    {
      v25 = 0;
    }

    v26 = v25 + v24;
    v27 = v23();
    v28 = v24;
    atomic_compare_exchange_strong_explicit(v27, &v28, v26, memory_order_relaxed, memory_order_relaxed);
  }

  while (v28 != v24);
  v22 = v11;
  if (v19 - v24 >= v3)
  {
LABEL_9:
    sub_1C98137F8();
    v29 = swift_allocObject();
    v29[2] = v17;
    v29[3] = v42;
    v29[4] = v43;
    v29[5] = v41;
    v29[6] = v3;
    v50 = sub_1C99ACA9C;
    v51 = v29;
    sub_1C994A090();
    v21 = &unk_1C9A9C000;
    sub_1C97F083C(COERCE_DOUBLE(1107296256));
    v48 = v30;
    v49 = &unk_1F4947110;
    v31 = _Block_copy(v47);

    sub_1C9A92148();
    sub_1C99ACEF0();
    sub_1C99ACACC(v32, v33);
    sub_1C97A2CEC(&unk_1EC3C8660);
    sub_1C99AC8F8();
    sub_1C9A93428();
    MEMORY[0x1CCA90CE0](0, v20, v22, v31);
    _Block_release(v31);
    (*(v46 + 8))(v22, v6);
    (*(v44 + 8))(v20, v45);

    v11 = v22;
    v1 = v40;
LABEL_10:
    sub_1C97F07FC();
    v34 = swift_allocObject();
    *(v34 + 16) = v1;
    sub_1C97AA878();
    v35 = swift_allocObject();
    *(v35 + 16) = sub_1C99ACA94;
    *(v35 + 24) = v34;
    v50 = sub_1C97F075C;
    v51 = v35;
    sub_1C994A090();
    sub_1C97F083C(v21[309]);
    v48 = v36;
    v49 = &unk_1F49470C0;
    v37 = _Block_copy(v47);

    swift_retain_n();
    sub_1C9A92148();
    sub_1C99ACEF0();
    sub_1C99ACACC(v38, v39);
    sub_1C97A2CEC(&unk_1EC3C8660);
    sub_1C99AC8F8();
    sub_1C9A93428();
    MEMORY[0x1CCA90CE0](0, v20, v11, v37);
    _Block_release(v37);

    (*(v46 + 8))(v11, v6);
    (*(v44 + 8))(v20, v45);
  }

  sub_1C97BE478();
}

void sub_1C99AC0D4(OpaqueAudioQueue *a1, int a2)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2 == 1634824814)
  {
    ioDataSize = 4;
    outData = 0;
    Property = AudioQueueGetProperty(a1, 0x6171726Eu, &outData, &ioDataSize);
    sub_1C9A3B558(Property);
    if (ioDataSize == 4)
    {
      if (!outData)
      {
        sub_1C99AAEA4();
      }
    }

    else
    {
      type metadata accessor for SNError();
      sub_1C98573F8();
      v6 = sub_1C9820900(v4, v3 + 3, v5);
      swift_willThrow();
      if (qword_1EC3C5520 != -1)
      {
        sub_1C97DAA64();
      }

      v7 = sub_1C9A91B58();
      sub_1C9887EC4(v7, qword_1EC3D3108);
      v8 = v6;
      v9 = sub_1C9A91B38();
      v10 = sub_1C9A92FA8();

      if (os_log_type_enabled(v9, v10))
      {
        v11 = sub_1C99AD08C();
        v12 = sub_1C99AD014();
        *v11 = 138412290;
        v13 = v6;
        v14 = _swift_stdlib_bridgeErrorToNSError();
        *(v11 + 4) = v14;
        *v12 = v14;
        _os_log_impl(&dword_1C9788000, v9, v10, "error checking running status %@", v11, 0xCu);
        sub_1C97AE434(v12, &unk_1EC3C86A0);
        sub_1C99ACF88();
        sub_1C9840CEC();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_1C99AC2C0(uint64_t a1)
{
  result = swift_beginAccess();
  if (*(a1 + 16))
  {
    swift_beginAccess();
    *(a1 + 16) = 0;
  }

  return result;
}

uint64_t sub_1C99AC324()
{
  v1 = OBJC_IVAR____TtC13SoundAnalysis30SNAudioRecordingQueueScheduler_id;
  sub_1C9A91748();
  sub_1C97AEB3C();
  (*(v2 + 8))(v0 + v1);

  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_1C99AC408()
{
  sub_1C99AC324();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SNAudioRecordingQueueScheduler()
{
  result = qword_1EC3CF358;
  if (!qword_1EC3CF358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C99AC4B4()
{
  result = sub_1C9A91748();
  if (v1 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t sub_1C99AC594(uint64_t result, OpaqueAudioQueue *a2, AudioQueueBuffer *a3, uint64_t a4)
{
  if (result)
  {

    sub_1C99AB66C(a2, a3, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C99AC5F8(uint64_t result, OpaqueAudioQueue *a2, int a3)
{
  if (result)
  {

    sub_1C99AC0D4(a2, a3);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C99AC654(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 104) = 0;
  *(v10 + 112) = 0;
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  *(v10 + 48) = a5;
  *(v10 + 56) = a6;
  *(v10 + 64) = a7;
  *(v10 + 72) = a8;
  *(v10 + 80) = a9;
  *(v10 + 88) = a10;
  *(v10 + 96) = 0;
  sub_1C99AD040();
  swift_beginAccess();
  *(v10 + 112) = 0;
  *(v10 + 104) = 0;
  return v10;
}

id *sub_1C99AC6C0()
{
  sub_1C99AC714();

  return v0;
}

void sub_1C99AC714()
{
  if (*(v0 + 96) == 1)
  {
    v1 = v0;
    sub_1C99AD040();
    swift_beginAccess();
    v2 = *(v0 + 104);
    if (v2)
    {
      v3 = *(v0 + 112);
      if (v3)
      {
        sub_1C9831528();
        v5 = *(v4 + 136);

        *v5(v6) = 1;
        v7 = sub_1C99ACF50();
        AudioQueueRemovePropertyListener(v7, v8, v9, v3);
      }

      if (qword_1EC3C5520 != -1)
      {
        sub_1C97DAA64();
      }

      v10 = sub_1C9A91B58();
      sub_1C9887EC4(v10, qword_1EC3D3108);
      v11 = sub_1C9A91B38();
      v12 = sub_1C9A92FC8();
      if (os_log_type_enabled(v11, v12))
      {
        *swift_slowAlloc() = 0;
        sub_1C99AD04C();
        _os_log_impl(v13, v14, v15, v16, v17, 2u);
        sub_1C99ACF88();
      }

      AudioQueueStop(v2, 1u);
      AudioQueueDispose(v2, 1u);
    }

    *(v1 + 104) = 0;
    *(v1 + 112) = 0;

    *(v1 + 96) = 0;
  }
}

uint64_t sub_1C99AC880()
{
  sub_1C99AC6C0();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99AC8E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1C99AC8F8()
{
  result = qword_1EC3C7AE0;
  if (!qword_1EC3C7AE0)
  {
    sub_1C97AA4F0(&unk_1EC3C8660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3C7AE0);
  }

  return result;
}

uint64_t sub_1C99AC974()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97DA5D0;
  sub_1C97AA934();

  return sub_1C99AAB14();
}

uint64_t sub_1C99ACA04()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98E01EC(v1);

  return v4(v3);
}

uint64_t sub_1C99ACACC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1C99ACB14()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v1[1] = sub_1C97D9C3C;
  sub_1C97AA934();

  return sub_1C99AA538();
}

uint64_t sub_1C99ACBA4(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1C99ACC98;

  return v5(v2 + 16);
}

uint64_t sub_1C99ACC98()
{
  sub_1C97AA95C();
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *v0;
  sub_1C97AA83C();
  *v4 = v3;

  *v2 = *(v1 + 16);
  v5 = *(v3 + 8);

  return v5();
}

uint64_t sub_1C99ACDBC()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98E01EC(v1);

  return v4(v3);
}

uint64_t sub_1C99ACE4C()
{
  sub_1C97AA95C();
  sub_1C982F948();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C98E01EC(v1);

  return v4(v3);
}

void sub_1C99ACF08()
{
  strcpy((v0 + 16), "SoundAnalysis");
  *(v0 + 30) = -4864;
  *(v0 + 32) = 0x6E6964726F636552;
}

void sub_1C99ACF88()
{

  JUMPOUT(0x1CCA93280);
}

void *sub_1C99ACFC4@<X0>(const void *a1@<X1>, uint64_t a2@<X8>)
{
  v4[7] = a2;
  v4[8] = 0;
  v4[9] = 0xE000000000000000;
  v4[10] = v2;
  v4[12] = 0;
  v4[13] = 0;
  v4[11] = v3;

  return memcpy(v4 + 14, a1, 0x60uLL);
}

uint64_t sub_1C99ACFF0@<X0>(uint64_t a1@<X8>, uint64_t a2)
{

  return sub_1C9921854(v2, &a2 - a1);
}

uint64_t sub_1C99AD014()
{

  return swift_slowAlloc();
}

void sub_1C99AD058(uint64_t a1@<X8>)
{
  v6 = v5 + v4;
  *v6 = v1;
  *(v6 + 8) = v2;
  *(v6 + 12) = v3;
  *(v6 + 16) = a1;
}

void sub_1C99AD06C()
{

  sub_1C99A9128();
}

uint64_t sub_1C99AD08C()
{

  return swift_slowAlloc();
}

uint64_t sub_1C99AD0A4()
{

  return swift_slowAlloc();
}

uint64_t sub_1C99AD0BC()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99AD160@<X0>(uint64_t a1@<X1>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  sub_1C97AEB3C();
  (*(v6 + 32))(a3);
  v7 = type metadata accessor for TimestampedValue();
  v8 = *(*(a2 - 8) + 32);
  v9 = a3 + *(v7 + 36);

  return v8(v9, a1, a2);
}

uint64_t sub_1C99AD214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v91 = a3;
  v92 = a4;
  v86 = a1;
  sub_1C97AE9DC();
  v84 = v6;
  v85 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v82 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v89 = *(v10 + 32);
  v12 = v89;
  swift_getAssociatedTypeWitness();
  v95 = v11;
  v98 = v12;
  *&v94 = a2 + 56;
  *&v93 = a2 + 72;
  v74 = *(a2 + 48);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = AssociatedTypeWitness;
  v14 = swift_getAssociatedTypeWitness();
  v96 = AssociatedTypeWitness;
  v97 = v14;
  v76 = type metadata accessor for StatefulTryMap();
  sub_1C97AE9DC();
  v78 = v15;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v16);
  v73 = &v67 - v17;
  v18 = *(a2 + 24);
  sub_1C97AE9DC();
  v83 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v90 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = *(a2 + 40);
  v22 = v68;
  swift_getAssociatedTypeWitness();
  v79 = type metadata accessor for TimestampedValue();
  v95 = v18;
  v96 = v79;
  v97 = v14;
  v98 = v22;
  v80 = type metadata accessor for StatefulTryMap();
  sub_1C97AE9DC();
  v81 = v23;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v24);
  v77 = &v67 - v25;
  sub_1C97AEB3C();
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v67 - v27;
  type metadata accessor for Locked();
  v72 = a2;
  v29 = *(a2 + 64);
  v88 = v14;
  sub_1C9A937C8();
  v30 = sub_1C99AD90C(v28);
  v31 = v4;
  v32 = (v4 + *(a2 + 88));
  v34 = *v32;
  v33 = v32[1];
  v71 = v34;
  v70 = v33;
  v35 = swift_allocObject();
  *(v35 + 16) = v11;
  *(v35 + 24) = v18;
  v69 = v18;
  v37 = v91;
  v36 = v92;
  v38 = v89;
  *(v35 + 32) = v91;
  *(v35 + 40) = v38;
  v39 = v68;
  *(v35 + 48) = v68;
  *(v35 + 56) = v36;
  *&v40 = v74;
  *(&v40 + 1) = *v94;
  *&v41 = v29;
  *(&v41 + 1) = *v93;
  v93 = v41;
  v94 = v40;
  *(v35 + 64) = v40;
  *(v35 + 80) = v41;
  *(v35 + 96) = v30;
  v87 = v30;
  v42 = swift_allocObject();
  *(v42 + 16) = v11;
  *(v42 + 24) = v18;
  *(v42 + 32) = v37;
  *(v42 + 40) = v38;
  *(v42 + 48) = v39;
  *(v42 + 56) = v36;
  v43 = v93;
  *(v42 + 64) = v94;
  *(v42 + 80) = v43;
  v44 = v73;
  v45 = v38;
  sub_1C99C6814(sub_1C99AF07C, v35, sub_1C99AF0BC, v42, v11, v88, v73);

  v75 = &unk_1C9AC4ED0;
  v46 = v76;
  swift_getWitnessTable();
  v47 = sub_1C9A91F28();
  (*(v78 + 8))(v44, v46);
  v71(v47);

  v48 = v84;
  v49 = v82;
  v50 = v72;
  (*(v84 + 16))(v82, v31, v72);
  v51 = v48;
  v52 = (*(v48 + 80) + 104) & ~*(v48 + 80);
  v53 = swift_allocObject();
  v54 = v11;
  v55 = v69;
  *(v53 + 16) = v11;
  *(v53 + 24) = v55;
  v56 = v91;
  *(v53 + 32) = v91;
  *(v53 + 40) = v45;
  v57 = v92;
  *(v53 + 48) = v39;
  *(v53 + 56) = v57;
  v58 = v93;
  *(v53 + 64) = v94;
  *(v53 + 80) = v58;
  *(v53 + 96) = v87;
  (*(v51 + 32))(v53 + v52, v49, v50);
  v59 = swift_allocObject();
  *(v59 + 16) = v54;
  *(v59 + 24) = v55;
  v60 = v88;
  v61 = v89;
  *(v59 + 32) = v56;
  *(v59 + 40) = v61;
  *(v59 + 48) = v39;
  *(v59 + 56) = v57;
  v62 = v93;
  *(v59 + 64) = v94;
  *(v59 + 80) = v62;
  v63 = v77;
  v64 = v90;
  sub_1C99C6814(sub_1C99AF0D4, v53, sub_1C99AF3A8, v59, v55, v60, v77);

  (*(v83 + 8))(v64, v55);
  v65 = v80;
  swift_getWitnessTable();
  sub_1C9A920B8();

  return (*(v81 + 8))(v63, v65);
}

uint64_t sub_1C99AD90C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1C99AE634(a1);
  return v2;
}

uint64_t sub_1C99AD94C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a4;
  v56 = a9;
  v62 = a6;
  v63 = a1;
  v11 = *a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = swift_getAssociatedTypeWitness();
  v53 = *(v12 - 8);
  v54 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v52 = &v42 - v13;
  v14 = *(v11 + 80);
  v15 = sub_1C9A93258();
  v46 = *(v15 - 8);
  v47 = v15;
  v16 = MEMORY[0x1EEE9AC00](v15);
  v55 = &v42 - v17;
  v18 = *(v14 - 8);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v45 = &v42 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v43 = &v42 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v42 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v42 - v26;
  v48 = a3;
  sub_1C99AE444(v25);
  v57 = a8;
  v58 = a2;
  v28 = *(a8 + 8);
  sub_1C9A93798();
  v44 = v18;
  v29 = *(v18 + 8);
  v29(v25, v14);
  v30 = v62;
  v50 = *(v62 + 32);
  AssociatedTypeWitness = swift_checkMetadataState();
  v31 = v30;
  v32 = v50;
  v50(AssociatedTypeWitness, v31);
  v51 = v28;
  LOBYTE(v11) = sub_1C9A92438();
  v59 = v18 + 8;
  v60 = v29;
  v29(v25, v14);
  if ((v11 & 1) == 0)
  {
    v33 = v43;
    v32(AssociatedTypeWitness, v62);
    sub_1C9A937A8();
    v60(v33, v14);
    sub_1C99AE4F0(v25);
  }

  v34 = *(v62 + 24);
  v35 = v52;
  v34(AssociatedTypeWitness);
  v36 = v54;
  v37 = sub_1C9A92C08();
  (*(v53 + 8))(v35, v36);
  v64 = v37;
  sub_1C99AF1FC();
  v38 = v55;
  sub_1C9A92BA8();
  if (sub_1C97ABF20(v38, 1, v14) == 1)
  {
    (*(v46 + 8))(v38, v47);
    sub_1C99AF250();
    swift_allocError();
    swift_willThrow();
    return (v60)(v27, v14);
  }

  else
  {
    v40 = v45;
    (*(v44 + 32))(v45, v38, v14);
    sub_1C9A937B8();
    (v34)(AssociatedTypeWitness, v62);
    v41 = v60;
    v60(v40, v14);
    return v41(v27, v14);
  }
}

uint64_t sub_1C99ADE6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v41 = a6;
  v52 = a7;
  v53 = a8;
  v50 = a4;
  v51 = a5;
  v54 = a2;
  v43 = a1;
  v45 = a9;
  v47 = a13;
  v48 = a12;
  v46 = a15;
  v15 = *(*a3 + 80);
  v49 = a11;
  v42 = a10;
  v16 = sub_1C9A93258();
  v39 = *(v16 - 8);
  v40 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v44 = v36 - v18;
  v19 = *(v15 - 8);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v38 = v36 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = v36 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v26 = v36 - v25;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  (*(v29 + 16))(v36 - v28, v43, AssociatedTypeWitness);
  sub_1C99AE444(v24);
  v36[1] = *(a14 + 8);
  sub_1C9A93798();
  v37 = v19;
  v30 = v24;
  v31 = v45;
  v36[0] = *(v19 + 8);
  (v36[0])(v30, v15);
  sub_1C99AD160(v26, v15, v31);
  v32 = v44;
  v55 = sub_1C99AE290(v50);
  sub_1C99AF1FC();
  sub_1C9A92BA8();
  if (sub_1C97ABF20(v32, 1, v15) == 1)
  {
    (*(v39 + 8))(v32, v40);
    sub_1C99AF250();
    swift_allocError();
    swift_willThrow();
    v33 = type metadata accessor for TimestampedValue();
    return (*(*(v33 - 8) + 8))(v31, v33);
  }

  else
  {
    v35 = v38;
    (*(v37 + 32))(v38, v32, v15);
    sub_1C9A937B8();
    return (v36[0])(v35, v15);
  }
}

uint64_t sub_1C99AE290(uint64_t a1)
{
  v1 = a1 + *(_s21CollectionTimestamperVMa() + 84);
  v2 = *v1;
  if (!*(v1 + 16))
  {
    return v2;
  }

  if (*(v1 + 16) != 1)
  {
    swift_getAssociatedTypeWitness();
    return sub_1C9A92C08();
  }

  v3 = *(v1 + 8);
  swift_getAssociatedTypeWitness();
  result = sub_1C9A92C08();
  v5 = result * v3;
  if ((result * v3) >> 64 != (result * v3) >> 63)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!v2)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v5 != 0x8000000000000000 || v2 != -1)
  {
    return v5 / v2;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1C99AE3A8()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  return sub_1C9A937C8();
}

void sub_1C99AE444(uint64_t a1@<X8>)
{
  os_unfair_lock_lock(*(*(v1 + 16) + 16));
  sub_1C9831528();
  v4 = *(v3 + 96);
  swift_beginAccess();
  sub_1C97AEB3C();
  (*(v5 + 16))(a1, v1 + v4);
  sub_1C97969D4(v1);
}

uint64_t sub_1C99AE4F0(uint64_t a1)
{
  v2 = v1;
  sub_1C9831528();
  v5 = *(v4 + 80);
  sub_1C97AE9DC();
  v7 = v6;
  sub_1C97ABFF0();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  os_unfair_lock_lock(*(*(v2 + 2) + 16));
  (*(v7 + 16))(v10, a1, v5);
  v11 = *(*v2 + 96);
  swift_beginAccess();
  (*(v7 + 40))(&v2[v11], v10, v5);
  swift_endAccess();
  sub_1C97969D4(v2);
  return (*(v7 + 8))(a1, v5);
}

char *sub_1C99AE634(uint64_t a1)
{
  v3 = *v1;
  type metadata accessor for SafeLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *v5 = 0;
  *(v4 + 16) = v5;
  *(v1 + 2) = v4;
  sub_1C9831528();
  (*(*(*(v3 + 80) - 8) + 32))(&v1[*(v6 + 96)], a1);
  return v1;
}

char *sub_1C99AE6E8()
{
  v1 = *v0;

  sub_1C9831528();
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(v2 + 96)]);
  return v0;
}

uint64_t sub_1C99AE764()
{
  sub_1C99AE6E8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99AE7D4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(*(v5 - 8) + 84);
  v7 = *(a3 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v8 + 80);
  if (v9 <= v6)
  {
    v11 = *(*(v5 - 8) + 84);
  }

  else
  {
    v11 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v12 = *(*(v5 - 8) + 64) + v10;
  v13 = a2 - v11;
  if (a2 <= v11)
  {
LABEL_25:
    if (v6 < v9)
    {
      a1 = ((a1 + v12) & ~v10);
      v6 = *(v8 + 84);
      v5 = v7;
    }

    return sub_1C97ABF20(a1, v6, v5);
  }

  v14 = (v12 & ~v10) + *(*(v7 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((v13 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_24;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_24:
      if (v11)
      {
        goto LABEL_25;
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_24;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    switch(v19)
    {
      case 2:
        v20 = *a1;
        break;
      case 3:
        v20 = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        v20 = *a1;
        break;
      default:
        v20 = *a1;
        break;
    }
  }

  else
  {
    v20 = 0;
  }

  return v11 + (v20 | v18) + 1;
}

void sub_1C99AE99C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = a1;
  v7 = *(a4 + 16);
  v8 = *(a4 + 24);
  v9 = *(*(v7 - 8) + 84);
  v10 = *(v8 - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = *(*(v7 - 8) + 84);
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(*(v7 - 8) + 64) + v13;
  v15 = (v14 & ~v13) + *(*(v8 - 8) + 64);
  v16 = 8 * v15;
  v17 = a3 >= v12;
  v18 = a3 - v12;
  if (v18 != 0 && v17)
  {
    if (v15 <= 3)
    {
      v22 = ((v18 + ~(-1 << v16)) >> v16) + 1;
      if (HIWORD(v22))
      {
        v19 = 4;
      }

      else
      {
        if (v22 < 0x100)
        {
          v23 = 1;
        }

        else
        {
          v23 = 2;
        }

        if (v22 >= 2)
        {
          v19 = v23;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  else
  {
    v19 = 0;
  }

  if (v12 >= a2)
  {
    switch(v19)
    {
      case 1:
        a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 2:
        *&a1[v15] = 0;
        if (a2)
        {
          goto LABEL_27;
        }

        break;
      case 3:
LABEL_42:
        __break(1u);
        break;
      case 4:
        *&a1[v15] = 0;
        goto LABEL_26;
      default:
LABEL_26:
        if (a2)
        {
LABEL_27:
          if (v9 < v11)
          {
            a1 = (&a1[v14] & ~v13);
            v9 = v11;
            v7 = v8;
          }

          sub_1C97ACC50(a1, a2, v9, v7);
        }

        break;
    }
  }

  else
  {
    v20 = ~v12 + a2;
    if (v15 < 4)
    {
      v21 = (v20 >> v16) + 1;
      if (v15)
      {
        v24 = v20 & ~(-1 << v16);
        bzero(a1, v15);
        if (v15 == 3)
        {
          *v6 = v24;
          v6[2] = BYTE2(v24);
        }

        else if (v15 == 2)
        {
          *v6 = v24;
        }

        else
        {
          *v6 = v20;
        }
      }
    }

    else
    {
      bzero(a1, v15);
      *v6 = v20;
      v21 = 1;
    }

    switch(v19)
    {
      case 1:
        v6[v15] = v21;
        break;
      case 2:
        *&v6[v15] = v21;
        break;
      case 3:
        goto LABEL_42;
      case 4:
        *&v6[v15] = v21;
        break;
      default:
        return;
    }
  }
}

unint64_t sub_1C99AEC48()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = _s21CollectionTimestamperV18TimestampingPolicyOMa();
    if (v2 <= 0x3F)
    {
      result = sub_1C983DB24();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C99AED10(uint64_t result, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(*(v4 - 8) + 84);
  v6 = *(*(v4 - 8) + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(*(v4 - 8) + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
LABEL_26:
    if (v5 < 0x7FFFFFFF)
    {
      v16 = *((result + v6 + 31) & 0xFFFFFFFFFFFFFFF8);
      if (v16 >= 0xFFFFFFFF)
      {
        LODWORD(v16) = -1;
      }

      return (v16 + 1);
    }

    else
    {
      return sub_1C97ABF20(result, v5, v4);
    }
  }

  else
  {
    v8 = ((v6 + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
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

    switch(v13)
    {
      case 1:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 2:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

        goto LABEL_22;
      case 3:
        __break(1u);
        return result;
      case 4:
        v14 = *(result + v8);
        if (!v14)
        {
          goto LABEL_26;
        }

LABEL_22:
        v15 = v14 - 1;
        if (v10)
        {
          v15 = 0;
          LODWORD(v10) = *result;
        }

        result = v7 + (v10 | v15) + 1;
        break;
      default:
        goto LABEL_26;
    }
  }

  return result;
}

void sub_1C99AEE4C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(*(v6 - 8) + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(*(v6 - 8) + 84);
  }

  v9 = *(*(v6 - 8) + 64);
  v10 = ((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v9 + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v11 = a3 - v8 + 1;
  }

  else
  {
    v11 = 2;
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

  if (v8 < a3)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  if (a2 <= v8)
  {
    switch(v14)
    {
      case 1:
        a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 2:
        *&a1[v10] = 0;
        if (a2)
        {
          goto LABEL_33;
        }

        break;
      case 3:
LABEL_44:
        __break(1u);
        break;
      case 4:
        *&a1[v10] = 0;
        goto LABEL_32;
      default:
LABEL_32:
        if (a2)
        {
LABEL_33:
          if (v7 < 0x7FFFFFFF)
          {
            v17 = (&a1[v9 + 31] & 0xFFFFFFFFFFFFFFF8);
            if ((a2 & 0x80000000) != 0)
            {
              v18 = a2 & 0x7FFFFFFF;
              v17[1] = 0;
            }

            else
            {
              v18 = (a2 - 1);
            }

            *v17 = v18;
          }

          else
          {

            sub_1C97ACC50(a1, a2, v7, v6);
          }
        }

        break;
    }
  }

  else
  {
    if (((v9 + 31) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v15 = a2 - v8;
    }

    else
    {
      v15 = 1;
    }

    if (((v9 + 31) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v16 = ~v8 + a2;
      bzero(a1, ((v9 + 31) & 0xFFFFFFFFFFFFFFF8) + 16);
      *a1 = v16;
    }

    switch(v14)
    {
      case 1:
        a1[v10] = v15;
        break;
      case 2:
        *&a1[v10] = v15;
        break;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v10] = v15;
        break;
      default:
        return;
    }
  }
}

uint64_t sub_1C99AF04C(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1C99AF064(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1C99AF0D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v16 = *(v3 + 32);
  v14 = *(v3 + 16);
  v15 = *(v3 + 40);
  v7 = *(v3 + 56);
  v8 = *(v3 + 64);
  v10 = *(v3 + 72);
  v9 = *(v3 + 80);
  v11 = *(v3 + 88);
  v12 = *(_s21CollectionTimestamperVMa() - 8);
  return sub_1C99ADE6C(a1, a2, *(v3 + 96), v3 + ((*(v12 + 80) + 104) & ~*(v12 + 80)), v14, *(&v14 + 1), v16, v15, a3, *(&v15 + 1), v7, v8, v10, v9, v11);
}

unint64_t sub_1C99AF1FC()
{
  result = qword_1EC3CF3F8;
  if (!qword_1EC3CF3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF3F8);
  }

  return result;
}

unint64_t sub_1C99AF250()
{
  result = qword_1EC3CF400;
  if (!qword_1EC3CF400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF400);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for TimestampingError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C99AF354()
{
  result = qword_1EC3CF408;
  if (!qword_1EC3CF408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF408);
  }

  return result;
}

id sub_1C99AF3C0(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_1C97A2CEC(&qword_1EC3C7FE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21[-v6];
  v8 = sub_1C9A91558();
  sub_1C97AE9C8();
  v10 = v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v21[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21[-v15];
  sub_1C97A2C7C(a1, v21);
  if (!v22)
  {
    sub_1C97F9D3C(v21, &unk_1EC3C5E60);
    sub_1C97ACC50(v7, 1, 1, v8);
    goto LABEL_6;
  }

  v17 = swift_dynamicCast();
  sub_1C97ACC50(v7, v17 ^ 1u, 1, v8);
  if (sub_1C97ABF20(v7, 1, v8) == 1)
  {
LABEL_6:
    sub_1C97F9D3C(v7, &qword_1EC3C7FE0);
    sub_1C99B0F94();
    swift_allocError();
    swift_willThrow();
    sub_1C97F9D3C(a1, &unk_1EC3C5E60);
    goto LABEL_7;
  }

  (*(v10 + 32))(v16, v7, v8);
  (*(v10 + 16))(v14, v16, v8);
  v18 = objc_allocWithZone(ObjectType);
  v19 = sub_1C99AF778(v14);
  if (!v1)
  {
    v2 = v19;
    sub_1C97F9D3C(a1, &unk_1EC3C5E60);
    (*(v10 + 8))(v16, v8);
    swift_getObjectType();
    sub_1C99B11E4();
    return v2;
  }

  sub_1C97F9D3C(a1, &unk_1EC3C5E60);
  (*(v10 + 8))(v16, v8);
LABEL_7:
  swift_getObjectType();
  sub_1C99B11E4();
  return v2;
}

id sub_1C99AF778(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v32 = sub_1C9A93008();
  MEMORY[0x1EEE9AC00](v32);
  sub_1C97AEAD8();
  v3 = sub_1C9A92158();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1C97AEAD8();
  v4 = sub_1C9A93018();
  sub_1C97AE9C8();
  v31 = v5;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C97AEAD8();
  v9 = v8 - v7;
  v10 = sub_1C9A91558();
  sub_1C97AE9C8();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C97AEAD8();
  v16 = v15 - v14;
  (*(v12 + 16))(v15 - v14, a1, v10);
  v17 = objc_allocWithZone(MEMORY[0x1E6958408]);
  v18 = sub_1C99CA154(v16, 1, 0);
  if (v1)
  {
    type metadata accessor for SNError();
    v19 = sub_1C9A913B8();
    sub_1C9A935B8();

    v35 = 0xD000000000000019;
    v36 = 0x80000001C9ADC780;
    sub_1C99B1098(&qword_1EC3C9830, MEMORY[0x1E6968FB0]);
    v20 = sub_1C9A93A98();
    MEMORY[0x1CCA90230](v20);

    sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 5, v19, 0xD000000000000019, 0x80000001C9ADC780);

    swift_willThrow();

    v22 = *(v12 + 8);
    v21 = (v12 + 8);
    v22(a1, v10);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v29 = v12;
    v30 = a1;
    v23 = OBJC_IVAR____SNAudioFileAnalyzer_audioFile;
    *&v37[OBJC_IVAR____SNAudioFileAnalyzer_audioFile] = v18;
    v24 = [v18 processingFormat];
    sub_1C99CCED8(v24);

    v26 = v37;
    v27 = [*&v37[v23] processingFormat];
    v28 = [objc_allocWithZone(SNAudioStreamAnalyzer) initWithFormat_];

    *&v37[OBJC_IVAR____SNAudioFileAnalyzer_streamAnalyzer] = v28;
    v26[OBJC_IVAR____SNAudioFileAnalyzer_wasCancelled] = 0;
    sub_1C9921A0C();
    (*(v31 + 104))(v9, *MEMORY[0x1E69E8098], v4);
    sub_1C9A92148();
    v35 = MEMORY[0x1E69E7CC0];
    sub_1C99B1098(&qword_1EC3C56C0, MEMORY[0x1E69E8030]);
    sub_1C97A2CEC(&unk_1EC3CDC60);
    sub_1C97F0490(&qword_1EC3C56E0, &unk_1EC3CDC60);
    sub_1C9A93428();
    *&v26[OBJC_IVAR____SNAudioFileAnalyzer_queue] = sub_1C9A93048();
    v34.receiver = v26;
    v34.super_class = ObjectType;
    v21 = objc_msgSendSuper2(&v34, sel_init);
    (*(v29 + 8))(v30, v10);
  }

  return v21;
}

uint64_t sub_1C99AFCC0(int a1, _BYTE *a2, char *a3, uint64_t *a4)
{
  LODWORD(v6) = a1;
  v43 = *MEMORY[0x1E69E9840];
  v7 = *&a2[OBJC_IVAR____SNAudioFileAnalyzer_audioFile];
  v8 = [v7 processingFormat];
  v9 = [objc_allocWithZone(MEMORY[0x1E6958440]) initWithPCMFormat:v8 frameCapacity:0x2000];

  if (!v9)
  {
    goto LABEL_26;
  }

  v36 = OBJC_IVAR____SNAudioFileAnalyzer_wasCancelled;
  v37 = OBJC_IVAR____SNAudioFileAnalyzer_streamAnalyzer;
  while (1)
  {
    v10 = [v7 length];
    v11 = [v7 framePosition];
    v12 = v10 - v11;
    if (__OFSUB__(v10, v11))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_22;
    }

    if (HIDWORD(v12))
    {
      goto LABEL_23;
    }

    HIDWORD(v39) = v6;
    if (v12 >= v6)
    {
      LODWORD(v12) = v6;
    }

    v13 = v12 >= 0x2000 ? 0x2000 : v12;
    v42 = 0;
    v14 = v9;
    if (![v7 readIntoBuffer:v9 frameCount:v13 error:&v42])
    {
      break;
    }

    v15 = a3;
    v16 = *&a3[v37];
    v17 = *a4;
    v18 = v42;
    [v16 analyzeAudioBuffer:v14 atAudioFramePosition:v17];
    v19 = [v14 frameLength];
    if (__OFADD__(*a4, v19))
    {
      goto LABEL_24;
    }

    v9 = v14;
    *a4 += v19;
    v6 = (HIDWORD(v39) - v13);
    if (HIDWORD(v39) < v13)
    {
      goto LABEL_25;
    }

    v20 = [v7 length];
    if (v20 != [v7 framePosition])
    {
      a3 = v15;
      if ((a2[v36] & 1) == 0)
      {
        if (v6)
        {
          continue;
        }
      }
    }

    a3 = v9;
    goto LABEL_20;
  }

  v21 = v42;
  v22 = sub_1C9A913C8();

  swift_willThrow();
  type metadata accessor for SNError();
  v23 = sub_1C9A913B8();
  v24 = sub_1C9929478(0xD000000000000017, 0x80000001C9AD4AA0, 2, v23, 0xD00000000000001FLL, 0x80000001C9ADC760);

  v25 = sub_1C97EDFB0();
  v26 = v24;
  sub_1C97ED800(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, a2, v39, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51);

  v6 = v40;
LABEL_20:

  return v6;
}

void sub_1C99AFFB0(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____SNAudioFileAnalyzer_audioFile);
  v4 = [v3 fileFormat];
  [v4 sampleRate];
  v6 = v5;
  v7 = v5;

  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 <= -2147483650.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v6 < 2147483650.0)
  {
    v8 = sub_1C9A93168();
    v10 = v9;
    v12 = v11;
    v13 = HIDWORD(v9);
    [v3 length];
    v14 = sub_1C9A93168();
    *a1 = v8;
    *(a1 + 8) = v10;
    *(a1 + 12) = v13;
    *(a1 + 16) = v12;
    *(a1 + 24) = v14;
    *(a1 + 32) = v15;
    *(a1 + 36) = v16;
    *(a1 + 40) = v17;
    return;
  }

LABEL_7:
  __break(1u);
}

void sub_1C99B00BC(CMTimeValue *a1)
{
  v2 = v1;
  v4 = *&v2[OBJC_IVAR____SNAudioFileAnalyzer_audioFile];
  v5 = [v4 framePosition];
  if (v5 < [v4 length])
  {
    v6 = [v4 fileFormat];
    [v6 sampleRate];
    v8 = v7;
    v9 = v7;

    if ((*&v9 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v8 > -2147483650.0)
    {
      if (v8 < 2147483650.0)
      {
        v10 = a1[1];
        v11 = a1[2];
        time.value = *a1;
        *&time.timescale = v10;
        time.epoch = v11;
        CMTimeConvertScale(&v20, &time, v8, kCMTimeRoundingMethod_RoundAwayFromZero);
        value = v20.value;
        time.value = sub_1C9A92F08();
        time.timescale = v13;
        time.flags = v14;
        time.epoch = v15;
        CMTimeConvertScale(&v20, &time, v8, kCMTimeRoundingMethod_RoundTowardZero);
        v16 = v20.value;
        [v4 setFramePosition_];
        time.value = [v4 framePosition];
        v17 = __OFSUB__(v16, value);
        v18 = v16 - value;
        if (!v17)
        {
          if ((v18 & 0x8000000000000000) == 0)
          {
            if (!HIDWORD(v18))
            {
              v19 = v2;
              sub_1C99AFCC0(v18, v19, v19, &time.value);
              [v4 setFramePosition_];
              [*&v19[OBJC_IVAR____SNAudioFileAnalyzer_streamAnalyzer] completeAnalysis];
              return;
            }

LABEL_15:
            __break(1u);
            return;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_12;
  }
}

uint64_t sub_1C99B0390(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
    v5 = sub_1C99B1048;
  }

  else
  {
    v5 = nullsub_1;
    v4 = 0;
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  sub_1C99B1038(a1);
  sub_1C99B046C(sub_1C99B1000, v6);
}

uint64_t sub_1C99B046C(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C9A92128();
  sub_1C97AE9C8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C97AEAD8();
  v11 = v10 - v9;
  v22 = sub_1C9A92158();
  sub_1C97AE9C8();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  sub_1C97AEAD8();
  v17 = v16 - v15;
  v18 = swift_allocObject();
  v18[2] = v2;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = sub_1C99B1074;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C98E5C5C;
  aBlock[3] = &unk_1F4947598;
  v19 = _Block_copy(aBlock);
  v20 = v2;

  sub_1C9A92148();
  sub_1C99B1098(&unk_1EC3C7AD0, MEMORY[0x1E69E7F60]);
  sub_1C97A2CEC(&unk_1EC3C8660);
  sub_1C97F0490(&qword_1EC3C7AE0, &unk_1EC3C8660);
  sub_1C9A93428();
  MEMORY[0x1CCA90CE0](0, v17, v11, v19);
  _Block_release(v19);
  (*(v7 + 8))(v11, v5);
  (*(v13 + 8))(v17, v22);
}

uint64_t sub_1C99B07CC(uint64_t a1, uint64_t (*a2)(BOOL))
{
  sub_1C99AFFB0(v5);
  sub_1C99B00BC(v5);
  return a2((*(a1 + OBJC_IVAR____SNAudioFileAnalyzer_wasCancelled) & 1) == 0);
}

uint64_t sub_1C99B086C(uint64_t a1, uint64_t a2)
{
  sub_1C97A2C7C(a1, v5);
  if (!v6)
  {
    goto LABEL_7;
  }

  sub_1C97A2CEC(&qword_1EC3CB9D0);
  if ((sub_1C99B1204() & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_1C97A2C7C(a2, v5);
  if (!v6)
  {
    swift_unknownObjectRelease();
LABEL_7:
    sub_1C97F9D3C(v5, &unk_1EC3C5E60);
    goto LABEL_8;
  }

  sub_1C97A2CEC(&unk_1EC3CF440);
  if (sub_1C99B1204())
  {
    sub_1C99B0994(v4, v4);
    swift_unknownObjectRelease();
    return swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
LABEL_8:
  sub_1C99B0F94();
  swift_allocError();
  return swift_willThrow();
}

id sub_1C99B0994(uint64_t a1, uint64_t a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v4 = *(v2 + OBJC_IVAR____SNAudioFileAnalyzer_streamAnalyzer);
  v7[0] = 0;
  if ([v4 addRequest:a1 withObserver:a2 error:v7])
  {
    return v7[0];
  }

  v6 = v7[0];
  sub_1C9A913C8();

  return swift_willThrow();
}

uint64_t sub_1C99B0B80(uint64_t a1)
{
  sub_1C97A2C7C(a1, v4);
  if (!v5)
  {
    return sub_1C97F9D3C(v4, &unk_1EC3C5E60);
  }

  sub_1C97A2CEC(&qword_1EC3CB9D0);
  result = swift_dynamicCast();
  if (result)
  {
    [*(v1 + OBJC_IVAR____SNAudioFileAnalyzer_streamAnalyzer) removeRequest_];
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1C99B0D94()
{
  v0 = sub_1C97EDFB0();
  v1 = sub_1C97EDD94();

  return v1;
}

id _SNAudioFileAnalyzer.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _SNAudioFileAnalyzer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1C99B0F94()
{
  result = qword_1EC3CF438;
  if (!qword_1EC3CF438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC3CF438);
  }

  return result;
}

uint64_t sub_1C99B1000(char a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_1C99B1038(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C99B1080(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C99B1098(unint64_t *a1, void (*a2)(uint64_t))
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

_BYTE *storeEnumTagSinglePayload for _SNAudioFileAnalyzer.DomainError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C99B1190()
{
  result = qword_1EC3CF450[0];
  if (!qword_1EC3CF450[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC3CF450);
  }

  return result;
}

uint64_t sub_1C99B11E4()
{

  return swift_deallocPartialClassInstance();
}

uint64_t sub_1C99B1204()
{

  return swift_dynamicCast();
}

uint64_t sub_1C99B1224()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C99B12DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1C99B2228(a1, a2, a3);
  return v6;
}

uint64_t sub_1C99B1334()
{
  sub_1C97A8010();
  v3 = *v0;
  v2 = v0[1];
  sub_1C97AA878();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  sub_1C97AA878();
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_1C9AC19D8;
  *(v5 + 24) = v4;
  v17 = sub_1C97A2CEC(&qword_1EC3CF4E8);
  v18 = sub_1C994E218(&qword_1EC3CF4F0, &qword_1EC3CF4E8);
  v15 = &unk_1C9AC19E8;
  v16 = v5;

  sub_1C97A8954();
  if (!v1)
  {

    sub_1C97A592C(&v15);
    v7 = v0[2];
    v6 = v0[3];
    sub_1C97AA878();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = v6;
    sub_1C97AA878();
    v9 = swift_allocObject();
    *(v9 + 16) = &unk_1C9AC1A00;
    *(v9 + 24) = v8;
    v17 = sub_1C97A2CEC(&qword_1EC3CF4F8);
    v18 = sub_1C994E218(&qword_1EC3CF500, &qword_1EC3CF4F8);
    v15 = &unk_1C9AC1A10;
    v16 = v9;

    sub_1C97A8954();

    sub_1C97A592C(&v15);
    v11 = v0[4];
    v10 = v0[5];
    sub_1C97AA878();
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    *(v12 + 24) = v10;
    sub_1C97AA878();
    v13 = swift_allocObject();
    *(v13 + 16) = &unk_1C9AC1A28;
    *(v13 + 24) = v12;
    v17 = sub_1C97A2CEC(&qword_1EC3CF508);
    v18 = sub_1C99B45B4();
    v15 = &unk_1C9AC1A38;
    v16 = v13;

    sub_1C97A8954();
  }

  return sub_1C97A592C(&v15);
}

uint64_t sub_1C99B15D0(_OWORD *a1, int *a2)
{
  v3 = a1[1];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v3;
  *(v2 + 48) = a1[2];
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_1C981D1F4;

  return v6(v2 + 16);
}

uint64_t sub_1C99B16D0(uint64_t *a1, int *a2)
{
  v3 = *a1;
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C97DA5D0;

  return v6(v3);
}

uint64_t sub_1C99B17C4()
{
  sub_1C97AA884();
  *(v0 + 64) = v1;

  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  sub_1C994E5AC(v2);

  return sub_1C99B1860();
}

uint64_t sub_1C99B1860()
{
  sub_1C97AA884();
  v0[2] = v1;
  v0[3] = v2;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  sub_1C97DA950(v3);

  return sub_1C987B80C();
}

uint64_t sub_1C99B18EC()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 40) = v4;
  *(v2 + 48) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C99B19F0()
{
  sub_1C97AA884();

  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  sub_1C994E580(v1);

  return sub_1C981BF84();
}

uint64_t sub_1C99B1A94()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97AA84C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v7[8] = v0;

  if (!v0)
  {
    v7[9] = v3;
    v7[10] = v5;
  }

  sub_1C97AA8AC();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C99B1BA8()
{
  sub_1C97AA95C();
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C99B4838(v1, *(v0 + 72));

  sub_1C97AA878();
  v2 = swift_allocObject();
  *(v0 + 88) = v2;
  *(v2 + 16) = &unk_1C9AC1978;
  *(v2 + 24) = v1;
  sub_1C98ADEF4();
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *v3 = v0;
  sub_1C994E580(v3);

  return v5();
}

uint64_t sub_1C99B1C88()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97AA84C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v7[13] = v0;

  if (!v0)
  {
    v7[14] = v3;
    v7[15] = v5;
  }

  sub_1C97AA8AC();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C99B1D9C()
{
  sub_1C97AA95C();
  sub_1C97AA878();
  v1 = swift_allocObject();
  sub_1C99B4838(v1, v0[7]);

  sub_1C97AA878();
  v2 = swift_allocObject();
  v0[8].i64[0] = v2;
  *(v2 + 16) = &unk_1C9AC1998;
  *(v2 + 24) = v1;
  sub_1C98ADEF4();
  v3 = swift_task_alloc();
  v0[8].i64[1] = v3;
  *v3 = v0;
  sub_1C994E580(v3);

  return v5();
}

uint64_t sub_1C99B1E7C()
{
  sub_1C97DABC4();
  sub_1C97DA934();
  v3 = v2;
  v5 = v4;
  sub_1C97AA890();
  v7 = v6;
  sub_1C97AA84C();
  *v8 = v7;
  v9 = *v1;
  sub_1C97AA83C();
  *v10 = v9;
  v7[18] = v0;

  if (!v0)
  {
    v7[19] = v3;
    v7[20] = v5;
  }

  sub_1C97AA8AC();
  sub_1C97DABB0();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C99B1F90()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C99B2004()
{
  sub_1C97DA934();
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v3 = *(v0 + 16);
  sub_1C97AA878();
  v4 = swift_allocObject();
  sub_1C99B4838(v4, *(v0 + 152));

  sub_1C97AA878();
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_1C9AC19B8;
  *(v5 + 24) = v4;
  *v3 = &unk_1C9AC1988;
  v3[1] = v2;
  v3[2] = &unk_1C9AC19A8;
  v3[3] = v1;
  v3[4] = &unk_1C9AC19C8;
  v3[5] = v5;
  sub_1C97DA8DC();

  return v6();
}

uint64_t sub_1C99B2100()
{
  sub_1C97AA884();

  sub_1C97DA91C();

  return v0();
}

uint64_t sub_1C99B2180()
{
  sub_1C97AA884();
  *(v0 + 64) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  sub_1C994E5AC(v2);

  return sub_1C99B17C4();
}

uint64_t *sub_1C99B2228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  swift_defaultActor_initialize();
  swift_weakInit();
  (*(*(*(v7 + 80) - 8) + 32))(v3 + *(*v3 + 104), a1);
  v8 = (v3 + *(*v3 + 112));
  *v8 = a2;
  v8[1] = a3;
  return v3;
}

uint64_t sub_1C99B2304(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = *v1;
  return sub_1C991A5D4(sub_1C99B2348, v1);
}

uint64_t sub_1C99B2348()
{
  sub_1C97AA884();
  v1 = *(v0 + 64);
  v3 = v1[1];
  v2 = v1[2];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = sub_1C9A91D28();
  if (swift_weakLoadStrong())
  {
    sub_1C994D1FC(v4);
  }

  sub_1C97DA8DC();

  return v5();
}

uint64_t sub_1C99B2410()
{
  sub_1C97AA884();
  v1[7] = v2;
  v1[8] = v0;
  v1[9] = *v0;
  v3 = *v0;
  v1[10] = *v0;
  v4 = *(v3 + 80);
  v1[11] = v4;
  v5 = *(v4 - 8);
  v1[12] = v5;
  v1[13] = *(v5 + 64);
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C99B2530, v0, 0);
}

uint64_t sub_1C99B2530()
{
  v1 = v0[13];
  v2 = v0[14];
  v4 = v0[11];
  v3 = v0[12];
  v5 = v0[10];
  v15 = v0[9];
  v6 = v0[7];
  v7 = v0[8];
  v8 = (v7 + *(*v7 + 112));
  v17 = *v8;
  v16 = v8[1];
  (*(v3 + 16))(v2, v7 + *(*v7 + 104), v4);
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *(v10 + 24) = *(v5 + 88);
  (*(v3 + 32))(v10 + v9, v2, v4);
  *(v10 + ((v1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v15;
  v11 = type metadata accessor for CombineSubscriptionFromXPCAdapter();
  swift_allocObject();

  v12 = sub_1C994C5C0(v6, v17, v16, &unk_1C9AC1A58, v10);
  swift_weakAssign();
  v0[5] = v11;
  v0[6] = sub_1C99B47C8(&qword_1EC3CF528, 255, type metadata accessor for CombineSubscriptionFromXPCAdapter);
  v0[2] = v12;

  sub_1C9A91D18();

  sub_1C97A592C((v0 + 2));

  sub_1C97DA8DC();

  return v13();
}

uint64_t sub_1C99B27A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1C99B27C4, 0, 0);
}

uint64_t sub_1C99B27C4()
{
  sub_1C97AA884();
  sub_1C99B2820();
  sub_1C97DA8DC();

  return v0();
}

uint64_t sub_1C99B2868(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return sub_1C991A5D4(sub_1C99B28AC, v1);
}

uint64_t sub_1C99B28AC()
{
  sub_1C97AA884();
  sub_1C99B2820();
  sub_1C97DA8DC();

  return v0();
}

uint64_t sub_1C99B2920()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 104));

  swift_weakDestroy();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1C99B29D4()
{
  sub_1C99B2920();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C99B2A18(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1[1];
  *(v3 + 16) = *a1;
  *(v3 + 32) = v4;
  *(v3 + 48) = a1[2];
  *(v3 + 64) = a2;
  *(v3 + 72) = a3;
  type metadata accessor for AsyncDispatchQueue();
  swift_allocObject();
  *(v3 + 80) = sub_1C9928384();
  return v3;
}

uint64_t sub_1C99B2A70(uint64_t a1)
{
  v2 = v1;
  sub_1C97D9AF8(a1, v10);
  v3 = *(v1 + 64);
  v4 = *(v1 + 72);
  type metadata accessor for CombineSubscriptionToXPCAdapterImpl();
  swift_allocObject();

  v5 = sub_1C994BD70(v10, v3, v4);
  v6 = *(v2 + 16);
  v7 = *(v2 + 56);
  sub_1C99B4848();
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  *(v8 + 24) = *(v2 + 24);
  *(v8 + 40) = *(v2 + 40);
  *(v8 + 56) = v7;
  *(v8 + 64) = &unk_1C9AC1928;
  *(v8 + 72) = v5;
  *(v8 + 80) = &unk_1C9AC1938;
  *(v8 + 88) = v5;
  *(v8 + 96) = &unk_1C9AC1948;
  *(v8 + 104) = v5;
  swift_retain_n();

  sub_1C9928254(&unk_1C9AC1958, v8);
}

uint64_t sub_1C99B2BC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1C97DA5D0;

  return sub_1C994C448(a1);
}

uint64_t sub_1C99B2C5C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97DA5D0;

  return sub_1C994C4F0();
}

uint64_t sub_1C99B2D0C()
{
  sub_1C97AA884();
  sub_1C97A5A8C((*(v0 + 16) + 112), *(*(v0 + 16) + 136));
  sub_1C9A91D38();
  sub_1C97DA8DC();

  return v1();
}

uint64_t sub_1C99B2D80(uint64_t a1, uint64_t a2)
{
  v6 = (*(a1 + 16) + **(a1 + 16));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C99B2E74;

  return v6(a2);
}

uint64_t sub_1C99B2E74()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C99B2F8C()
{
  sub_1C99B4868();
  sub_1C99B4848();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = *(v1 + 24);
  *(v4 + 40) = *(v1 + 40);
  *(v4 + 56) = v2;
  v5 = v0[1];
  *(v4 + 64) = *v0;
  *(v4 + 80) = v5;
  *(v4 + 96) = v0[2];

  sub_1C99B385C(v0, v7);
  sub_1C9928254(&unk_1C9AC1918, v4);

  return sub_1C9A91D78();
}

uint64_t sub_1C99B3058(void *a1, uint64_t a2)
{
  v6 = (*a1 + **a1);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1C99B314C;

  return v6(a2);
}

uint64_t sub_1C99B314C()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    sub_1C97AA8AC();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    sub_1C97DA91C();

    return v10();
  }
}

uint64_t sub_1C99B3264()
{
  sub_1C99B4868();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = *(v1 + 24);
  *(v4 + 40) = *(v1 + 40);
  *(v4 + 56) = v2;
  *(v4 + 64) = v0;
  v5 = v0;
  v6 = v0;

  sub_1C9928254(&unk_1C9AC1908, v4);
}

uint64_t sub_1C99B3340(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1C99B3360, 0, 0);
}

uint64_t sub_1C99B3360()
{
  sub_1C97AA95C();
  v1 = *(*(v0 + 16) + 32);
  v2 = *(v0 + 24);
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1C99B3458;
  v4 = *(v0 + 24);

  return v6(v4);
}

uint64_t sub_1C99B3458()
{
  sub_1C97AA884();
  sub_1C97AA890();
  sub_1C97AA84C();
  *v3 = v2;
  v4 = *v1;
  sub_1C97AA83C();
  *v5 = v4;
  *(v6 + 40) = v0;

  sub_1C97AA8AC();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1C99B3554()
{
  sub_1C97AA884();
  v1 = *(v0 + 40);

  sub_1C97DA91C();

  return v2();
}

uint64_t sub_1C99B35B8()
{

  return v0;
}

uint64_t sub_1C99B3610()
{
  sub_1C99B35B8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C99B374C()
{
  sub_1C97AA884();
  v1 = *(v0 + 64);
  v2 = swift_task_alloc();
  v3 = sub_1C97AA858(v2);
  *v3 = v4;
  v3[1] = sub_1C97D9C3C;

  return sub_1C99B3340(v0 + 16, v1);
}

uint64_t sub_1C99B37DC()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C99B4854(v1);

  return sub_1C99B3058(v3, v4);
}

uint64_t sub_1C99B38B8()
{
  sub_1C97AA884();
  v1 = v0;
  v2 = swift_task_alloc();
  v3 = sub_1C981E178(v2);
  *v3 = v4;
  sub_1C97DA950(v3);

  return sub_1C99B2BC4(v1);
}

uint64_t sub_1C99B3944()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C981E178(v0);
  *v1 = v2;
  sub_1C97DA950(v1);

  return sub_1C99B2C5C();
}

uint64_t sub_1C99B39C8()
{
  sub_1C97AA884();
  v1 = swift_task_alloc();
  v2 = sub_1C981E178(v1);
  *v2 = v3;
  sub_1C97DA950(v2);

  return sub_1C99B2CEC(v0);
}

uint64_t sub_1C99B3A4C()
{
  sub_1C97AA884();
  v0 = swift_task_alloc();
  v1 = sub_1C97AA858(v0);
  *v1 = v2;
  v3 = sub_1C99B4854(v1);

  return sub_1C99B2D80(v3, v4);
}

uint64_t sub_1C99B3ACC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C97D9C3C;

  return sub_1C9A21B54();
}

uint64_t sub_1C99B3B78(uint64_t a1, _OWORD *a2)
{
  v3 = a2[1];
  *(v2 + 16) = *a2;
  *(v2 + 32) = v3;
  *(v2 + 48) = a2[2];
  v4 = swift_task_alloc();
  *(v2 + 64) = v4;
  *v4 = v2;
  v4[1] = sub_1C981DF28;

  return sub_1C9A21A90();
}