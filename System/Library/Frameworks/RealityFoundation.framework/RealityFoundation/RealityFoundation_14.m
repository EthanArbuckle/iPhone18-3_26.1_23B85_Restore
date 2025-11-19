BOOL specialized static PhysicsDistanceJoint.== infix(_:_:)(float32x4_t *a1, float32x4_t *a2)
{
  if (specialized static GeometricPin.== infix(_:_:)(a1, a2) && specialized static GeometricPin.== infix(_:_:)(a1 + 5, a2 + 5) && a1[10].u8[0] == a2[10].u8[0] && a1[10].u8[1] == a2[10].u8[1] && (a1[10].f32[1] == a2[10].f32[1] ? (v4 = a1[10].f32[2] == a2[10].f32[2]) : (v4 = 0), v4))
  {
    return a1[10].f32[3] == a2[10].f32[3];
  }

  else
  {
    return 0;
  }
}

BOOL specialized static PhysicsRevoluteJoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!specialized static GeometricPin.== infix(_:_:)(a1, a2) || !specialized static GeometricPin.== infix(_:_:)((a1 + 80), (a2 + 80)) || *(a1 + 160) != *(a2 + 160) || *(a1 + 161) != *(a2 + 161))
  {
    return 0;
  }

  v5 = *(a2 + 172);
  if ((*(a1 + 172) & 1) == 0)
  {
    if ((*(a2 + 172) & 1) == 0)
    {
      v6 = *(a1 + 164);
      v7 = *(a2 + 164);
      if (*&v6 == *&v7 && *(&v6 + 1) == *(&v7 + 1))
      {
        return 1;
      }
    }

    return 0;
  }

  return (*(a2 + 172) & 1) != 0;
}

uint64_t specialized static PhysicsSphericalJoint.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (!specialized static GeometricPin.== infix(_:_:)(a1, a2) || !specialized static GeometricPin.== infix(_:_:)((a1 + 80), (a2 + 80)) || *(a1 + 160) != *(a2 + 160) || *(a1 + 161) != *(a2 + 161))
  {
    return 0;
  }

  if (*(a1 + 172))
  {
    return *(a2 + 172);
  }

  if (*(a2 + 172))
  {
    return 0;
  }

  v5 = *(a1 + 164);
  v6 = *(a2 + 164);
  if (*&v5 != *&v6)
  {
    return 0;
  }

  return *(&v5 + 1) == *(&v6 + 1);
}

unint64_t instantiation function for generic protocol witness table for PhysicsFixedJoint(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PhysicsFixedJoint and conformance PhysicsFixedJoint();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsFixedJoint and conformance PhysicsFixedJoint()
{
  result = lazy protocol witness table cache variable for type PhysicsFixedJoint and conformance PhysicsFixedJoint;
  if (!lazy protocol witness table cache variable for type PhysicsFixedJoint and conformance PhysicsFixedJoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsFixedJoint and conformance PhysicsFixedJoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsFixedJoint and conformance PhysicsFixedJoint;
  if (!lazy protocol witness table cache variable for type PhysicsFixedJoint and conformance PhysicsFixedJoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsFixedJoint and conformance PhysicsFixedJoint);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PhysicsSphericalJoint(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PhysicsSphericalJoint and conformance PhysicsSphericalJoint();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsSphericalJoint and conformance PhysicsSphericalJoint()
{
  result = lazy protocol witness table cache variable for type PhysicsSphericalJoint and conformance PhysicsSphericalJoint;
  if (!lazy protocol witness table cache variable for type PhysicsSphericalJoint and conformance PhysicsSphericalJoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsSphericalJoint and conformance PhysicsSphericalJoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsSphericalJoint and conformance PhysicsSphericalJoint;
  if (!lazy protocol witness table cache variable for type PhysicsSphericalJoint and conformance PhysicsSphericalJoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsSphericalJoint and conformance PhysicsSphericalJoint);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PhysicsRevoluteJoint(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PhysicsRevoluteJoint and conformance PhysicsRevoluteJoint();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsRevoluteJoint and conformance PhysicsRevoluteJoint()
{
  result = lazy protocol witness table cache variable for type PhysicsRevoluteJoint and conformance PhysicsRevoluteJoint;
  if (!lazy protocol witness table cache variable for type PhysicsRevoluteJoint and conformance PhysicsRevoluteJoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsRevoluteJoint and conformance PhysicsRevoluteJoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsRevoluteJoint and conformance PhysicsRevoluteJoint;
  if (!lazy protocol witness table cache variable for type PhysicsRevoluteJoint and conformance PhysicsRevoluteJoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsRevoluteJoint and conformance PhysicsRevoluteJoint);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PhysicsPrismaticJoint(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PhysicsPrismaticJoint and conformance PhysicsPrismaticJoint();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsPrismaticJoint and conformance PhysicsPrismaticJoint()
{
  result = lazy protocol witness table cache variable for type PhysicsPrismaticJoint and conformance PhysicsPrismaticJoint;
  if (!lazy protocol witness table cache variable for type PhysicsPrismaticJoint and conformance PhysicsPrismaticJoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsPrismaticJoint and conformance PhysicsPrismaticJoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsPrismaticJoint and conformance PhysicsPrismaticJoint;
  if (!lazy protocol witness table cache variable for type PhysicsPrismaticJoint and conformance PhysicsPrismaticJoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsPrismaticJoint and conformance PhysicsPrismaticJoint);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PhysicsDistanceJoint(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PhysicsDistanceJoint and conformance PhysicsDistanceJoint();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsDistanceJoint and conformance PhysicsDistanceJoint()
{
  result = lazy protocol witness table cache variable for type PhysicsDistanceJoint and conformance PhysicsDistanceJoint;
  if (!lazy protocol witness table cache variable for type PhysicsDistanceJoint and conformance PhysicsDistanceJoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsDistanceJoint and conformance PhysicsDistanceJoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsDistanceJoint and conformance PhysicsDistanceJoint;
  if (!lazy protocol witness table cache variable for type PhysicsDistanceJoint and conformance PhysicsDistanceJoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsDistanceJoint and conformance PhysicsDistanceJoint);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for PhysicsCustomJoint(uint64_t a1)
{
  result = lazy protocol witness table accessor for type PhysicsCustomJoint and conformance PhysicsCustomJoint();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsCustomJoint and conformance PhysicsCustomJoint()
{
  result = lazy protocol witness table cache variable for type PhysicsCustomJoint and conformance PhysicsCustomJoint;
  if (!lazy protocol witness table cache variable for type PhysicsCustomJoint and conformance PhysicsCustomJoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsCustomJoint and conformance PhysicsCustomJoint);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsCustomJoint and conformance PhysicsCustomJoint;
  if (!lazy protocol witness table cache variable for type PhysicsCustomJoint and conformance PhysicsCustomJoint)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsCustomJoint and conformance PhysicsCustomJoint);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PhysicsJoints and conformance PhysicsJoints()
{
  result = lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints;
  if (!lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints;
  if (!lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints;
  if (!lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints;
  if (!lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints;
  if (!lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PhysicsJoints and conformance PhysicsJoints);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DefaultIndices<PhysicsJoints> and conformance <> DefaultIndices<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    lazy protocol witness table accessor for type PhysicsJoints and conformance PhysicsJoints();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Slice<PhysicsJoints> and conformance <> Slice<A>(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5SliceVy17RealityFoundation13PhysicsJointsVGMd, &_ss5SliceVy17RealityFoundation13PhysicsJointsVGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicsFixedJoint(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 162))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PhysicsFixedJoint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 162) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 162) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicsSphericalJoint(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 173))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PhysicsSphericalJoint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 172) = 0;
    *(result + 168) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 173) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 173) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicsDistanceJoint(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PhysicsDistanceJoint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PhysicsCustomJoint(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 233))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PhysicsCustomJoint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *(result + 232) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 233) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 233) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for PhysicsCustomJoint.MotionLimit(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t getEnumTag for PhysicsCustomJoint.MotionLimit(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t destructiveInjectEnumTag for PhysicsCustomJoint.MotionLimit(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t outlined init with copy of CollectionOfOne<PhysicsJoint>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMd, &_ss15CollectionOfOneVy17RealityFoundation12PhysicsJoint_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall __makeXfos(_:_:)(Swift::OpaquePointer a1, Swift::OpaquePointer *a2)
{
  v4 = *(a1._rawValue + 2);
  v5 = v4 / 0xA;
  rawValue = a2->_rawValue;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= rawValue[3] >> 1)
  {
    a2->_rawValue = rawValue;
    if (!v4)
    {
      return;
    }
  }

  else
  {
    if (rawValue[2] <= v5)
    {
      v16 = v4 / 0xA;
    }

    else
    {
      v16 = rawValue[2];
    }

    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 0, rawValue);
    a2->_rawValue = rawValue;
    if (!v4)
    {
      return;
    }
  }

  v17 = 0;
  v18 = a1._rawValue + 32;
  while (1)
  {
    v19 = __OFADD__(v17, 10) ? 0x7FFFFFFFFFFFFFFFLL : v17 + 10;
    if (v17 >= v4)
    {
      break;
    }

    if (v17 + 1 >= v4)
    {
      goto LABEL_30;
    }

    if (v17 + 2 >= v4)
    {
      goto LABEL_31;
    }

    if (v17 + 3 >= v4)
    {
      goto LABEL_32;
    }

    if (v17 + 4 >= v4)
    {
      goto LABEL_33;
    }

    if (v17 + 5 >= v4)
    {
      goto LABEL_34;
    }

    if (v17 + 6 >= v4)
    {
      goto LABEL_35;
    }

    if (v17 + 7 >= v4)
    {
      goto LABEL_36;
    }

    v20 = v17 + 8;
    if (v17 + 8 >= v4)
    {
      goto LABEL_37;
    }

    v21 = v17 + 9;
    if (__OFADD__(v17, 9))
    {
      goto LABEL_38;
    }

    if (v21 >= v4)
    {
      goto LABEL_39;
    }

    LODWORD(v14) = *&v18[4 * v17];
    LODWORD(v13) = *&v18[4 * v17 + 4];
    LODWORD(v10) = *&v18[4 * v17 + 8];
    LODWORD(v22) = *&v18[4 * v17 + 12];
    LODWORD(v11) = *&v18[4 * v17 + 16];
    LODWORD(v9) = *&v18[4 * v17 + 20];
    v23 = *&v18[4 * v17 + 24];
    LODWORD(v8) = *&v18[4 * v17 + 28];
    v25 = rawValue[2];
    v24 = rawValue[3];
    LODWORD(v15) = *&v18[4 * v20];
    LODWORD(v12) = *&v18[4 * v21];
    if (v25 >= v24 >> 1)
    {
      v38 = v8;
      v39 = v22;
      v36 = v9;
      v37 = v23;
      v34 = v11;
      v35 = v10;
      v32 = v13;
      v33 = v12;
      v30 = v15;
      v31 = v14;
      v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, rawValue);
      v15 = v30;
      v14 = v31;
      v13 = v32;
      v12 = v33;
      v11 = v34;
      v10 = v35;
      v9 = v36;
      v23 = v37;
      v8 = v38;
      LODWORD(v22) = v39;
      rawValue = v29;
    }

    *&v26 = __PAIR64__(v13, v14);
    *(&v26 + 1) = v10;
    DWORD1(v22) = v11;
    *(&v22 + 1) = __PAIR64__(v23, v9);
    *&v27 = __PAIR64__(v15, v8);
    *(&v27 + 1) = v12;
    rawValue[2] = v25 + 1;
    v28 = &rawValue[6 * v25];
    v28[2] = v26;
    v28[3] = v22;
    v28[4] = v27;
    v17 = v19;
    if (v19 >= v4)
    {
      a2->_rawValue = rawValue;
      return;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

void __RKEntityTagsComponent.buildTagsCache()()
{
  v1 = *v0;
  if (*v0)
  {
    v2 = *(v0 + 8);
    if (v2 < 0)
    {
      __break(1u);
    }

    else if (v2)
    {
      v11 = MEMORY[0x1E69E7CC0];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
      do
      {
        v3 = *v1;
        v4 = String.init(utf8String:)();
        if (v5)
        {
          v6 = v4;
        }

        else
        {
          v6 = 0;
        }

        if (v5)
        {
          v7 = v5;
        }

        else
        {
          v7 = 0xE000000000000000;
        }

        v9 = *(v11 + 16);
        v8 = *(v11 + 24);
        if (v9 >= v8 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v8 > 1), v9 + 1, 1);
        }

        *(v11 + 16) = v9 + 1;
        v10 = v11 + 16 * v9;
        *(v10 + 32) = v6;
        *(v10 + 40) = v7;
        ++v1;
        --v2;
      }

      while (v2);
    }
  }
}

uint64_t __RKEntityTagsComponent.tags.getter()
{
  if (!*(v0 + 2))
  {
    v4 = *v0;
    v5 = *(v0 + 3);

    __RKEntityTagsComponent.buildTagsCache()();
    v2 = v1;

    *(v0 + 2) = v2;
  }
}

uint64_t __RKEntityTagsComponent.tags.setter(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  if (!v4)
  {
    v5 = *(v2 + 24);
    *__s = *v2;
    v25 = 0;
    v26 = v5;

    __RKEntityTagsComponent.buildTagsCache()();
    v4 = v6;

    *(v2 + 16) = v4;
  }

  if (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(a1, v4))
  {
    goto LABEL_32;
  }

  v7 = *(v2 + 24);

  *(v2 + 24) = 0;

  *(v2 + 16) = a1;
  v9 = *(a1 + 16);
  *(v2 + 8) = v9;
  if (!v9)
  {
LABEL_32:
  }

  else
  {
    if (v9 >> 60)
    {
      goto LABEL_42;
    }

    result = 8 * v9;
    if ((8 * v9) < 0xFFFFFFFF80000000)
    {
LABEL_43:
      __break(1u);
    }

    else if (result <= 0x7FFFFFFF)
    {
      v10 = RECIntrospectionAlloc();
      v11 = v10;
      v12 = 0;
      for (i = (a1 + 40); ; i += 2)
      {
        v15 = *(i - 1);
        v14 = *i;
        MEMORY[0x1EEE9AC00](v10);
        if ((v14 & 0x1000000000000000) != 0)
        {
          break;
        }

        if ((v14 & 0x2000000000000000) != 0)
        {
          *__s = v15;
          *&__s[8] = v14 & 0xFFFFFFFFFFFFFFLL;

          result = strlen(__s);
          v21 = result + 1;
          if (__OFADD__(result, 1))
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
LABEL_40:
            __break(1u);
LABEL_41:
            __break(1u);
LABEL_42:
            __break(1u);
            goto LABEL_43;
          }

          if (v21 < 0xFFFFFFFF80000000)
          {
            goto LABEL_38;
          }

          if (v21 > 0x7FFFFFFF)
          {
            goto LABEL_40;
          }

          v22 = RECIntrospectionAlloc();
          v23 = v22;
          if (v22 != __s || v22 >= &__s[v21])
          {
            memmove(v22, __s, v21);
          }

          *(v11 + 8 * v12) = v23;
          goto LABEL_30;
        }

        if ((v15 & 0x1000000000000000) == 0)
        {
          break;
        }

        v16 = ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32);

        result = strlen(v16);
        v17 = result + 1;
        if (__OFADD__(result, 1))
        {
          goto LABEL_37;
        }

        if (v17 < 0xFFFFFFFF80000000)
        {
          goto LABEL_39;
        }

        if (v17 > 0x7FFFFFFF)
        {
          goto LABEL_41;
        }

        v18 = RECIntrospectionAlloc();
        v19 = v18;
        if (v18 != v16 || v18 >= &v16[v17])
        {
          memmove(v18, ((v14 & 0xFFFFFFFFFFFFFFFLL) + 32), v17);
        }

        *(v11 + 8 * v12) = v19;

LABEL_10:
        if (v9 == ++v12)
        {

          *v2 = v11;
          type metadata accessor for ArrayPointerCleanupHelper();
          result = swift_allocObject();
          *(result + 16) = v11;
          *(result + 24) = v9;
          *(v2 + 24) = result;
          return result;
        }
      }

      _StringGuts._slowWithCString<A>(_:)();
LABEL_30:

      goto LABEL_10;
    }

    __break(1u);
  }

  return result;
}

char *closure #1 in __RKEntityTagsComponent.tags.setter(const char *a1, uint64_t a2, uint64_t a3)
{
  result = strlen(a1);
  v7 = (result + 1);
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v7 < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7 > 0x7FFFFFFF)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  result = RECIntrospectionAlloc();
  v8 = result;
  if (result != a1 || result >= &a1[v7])
  {
    result = memmove(result, a1, v7);
  }

  *(a2 + 8 * a3) = v8;
  return result;
}

uint64_t (*__RKEntityTagsComponent.tags.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[1] = v1;
  v3 = *(v1 + 2);
  if (!v3)
  {
    v8 = *v1;
    v9 = *(v1 + 3);

    v4 = v1;
    __RKEntityTagsComponent.buildTagsCache()();
    v6 = v5;

    v3 = v6;
    *(v4 + 2) = v6;
  }

  *a1 = v3;

  return __RKEntityTagsComponent.tags.modify;
}

uint64_t __RKEntityTagsComponent.tags.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = a1[1];
  if ((a2 & 1) == 0)
  {
    return __RKEntityTagsComponent.tags.setter(*a1);
  }

  v4 = *a1;

  __RKEntityTagsComponent.tags.setter(v5);
}

uint64_t __RKEntityTagsComponent.Registration.init()()
{
  REStructBuilderCreate();
  String.utf8CString.getter();
  v2 = REStructBuilderInit();

  if (!v2 || (String.utf8CString.getter(), REStructBuilderAddMemberArrayWithCountDataTypeWithTag(), , (v3 = RECIntrospectionStructRegister()) == 0))
  {
    lazy protocol witness table accessor for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError();
    swift_allocError();
    swift_willThrow();
    goto LABEL_6;
  }

  *(v0 + 16) = v3;
  v4 = specialized String.withCString<A>(_:)(0x736761544552, 0xE600000000000000, v3);
  if (v1)
  {
LABEL_6:
    REStructBuilderDestroy();
    type metadata accessor for __RKEntityTagsComponent.Registration();
    swift_deallocPartialClassInstance();
    return v0;
  }

  *(v0 + 24) = v4;
  REStructBuilderDestroy();
  return v0;
}

uint64_t closure #1 in __RKEntityTagsComponent.Registration.init()@<X0>(uint64_t *a1@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  result = RECustomComponentTypeCreate();
  if (result)
  {
    *a1 = result;
  }

  else
  {
    lazy protocol witness table accessor for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError();
    swift_allocError();
    result = swift_willThrow();
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

double @objc createTagsComponentObject(componentType:)()
{
  v0 = swift_slowAlloc();
  result = 0.0;
  *v0 = 0u;
  v0[1] = 0u;
  return result;
}

void @objc destroyTagsComponentObject(componentType:rawComponentPointer:)(uint64_t a1, uint64_t a2)
{
  outlined destroy of __RKEntityTagsComponent(a2);

  JUMPOUT(0x1C6902A30);
}

uint64_t __RKEntityTagsComponent.Registration.deinit()
{
  v1 = *(v0 + 24);
  RECustomComponentTypeDestroy();
  v2 = *(v0 + 16);
  RECIntrospectionStructUnregister();
  return v0;
}

uint64_t __RKEntityTagsComponent.Registration.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  RECustomComponentTypeDestroy();
  v2 = *(v0 + 16);
  RECIntrospectionStructUnregister();

  return swift_deallocClassInstance();
}

uint64_t static __RKEntityTagsComponent.registration.setter(void *a1)
{
  swift_beginAccess();
  static __RKEntityTagsComponent.registration = a1;
}

uint64_t key path setter for static __RKEntityTagsComponent.registration : __RKEntityTagsComponent.Type(void **a1)
{
  v1 = *a1;
  swift_beginAccess();
  static __RKEntityTagsComponent.registration = v1;
}

uint64_t ArrayPointerCleanupHelper.__deallocating_deinit()
{
  v1 = *(v0 + 24);
  if (v1 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v1)
    {
      v2 = 0;
      do
      {
        v3 = v2 + 1;
        v4 = *(*(v0 + 16) + 8 * v2);
        RECIntrospectionFree();
        v2 = v3;
      }

      while (v1 != v3);
    }

    v5 = *(v0 + 16);
    RECIntrospectionFree();

    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t Entity.__tags.getter()
{
  swift_beginAccess();
  if (!static __RKEntityTagsComponent.registration)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = *(static __RKEntityTagsComponent.registration + 3);
  v2 = *(v0 + 16);
  if (!REEntityGetCustomComponent())
  {
    return MEMORY[0x1E69E7CC0];
  }

  Object = RECustomComponentGetObject();
  if (!Object)
  {
    return MEMORY[0x1E69E7CC0];
  }

  if (*(Object + 16))
  {
  }

  v9 = *Object;
  v10 = *(Object + 24);
  v4 = Object;

  __RKEntityTagsComponent.buildTagsCache()();
  v6 = v5;

  v7 = *(v4 + 16);
  *(v4 + 16) = v6;

  result = *(v4 + 16);
  if (result)
  {
  }

  __break(1u);
  return result;
}

uint64_t Entity.__tags.setter(uint64_t a1)
{
  swift_beginAccess();
  if (!static __RKEntityTagsComponent.registration)
  {
  }

  v3 = *(static __RKEntityTagsComponent.registration + 3);
  if (*(a1 + 16))
  {
    v4 = *(v1 + 16);
    if (REEntityGetCustomComponent() || (v5 = *(v1 + 16), REEntityAddComponentByClass()))
    {
      if (RECustomComponentGetObject())
      {
        return __RKEntityTagsComponent.tags.setter(a1);
      }
    }
  }

  v7 = *(v1 + 16);
  result = REEntityGetCustomComponent();
  if (result)
  {
    v8 = *(v1 + 16);
    return REEntityRemoveComponentByClass();
  }

  return result;
}

void (*Entity.__tags.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  if (!static __RKEntityTagsComponent.registration || (v5 = *(static __RKEntityTagsComponent.registration + 3), v6 = *(v1 + 16), !REEntityGetCustomComponent()) || (Object = RECustomComponentGetObject()) == 0)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_11;
  }

  if (*(Object + 16))
  {
    goto LABEL_9;
  }

  v14 = *Object;
  v15 = *(Object + 24);
  v8 = Object;

  __RKEntityTagsComponent.buildTagsCache()();
  v10 = v9;

  v11 = *(v8 + 16);
  *(v8 + 16) = v10;

  result = *(v8 + 16);
  if (result)
  {
LABEL_9:

LABEL_11:
    *(v4 + 24) = v13;
    return Entity.__tags.modify;
  }

  __break(1u);
  return result;
}

void Entity.__tags.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 24);
  v4 = *(*a1 + 32);
  if (a2)
  {

    Entity.__tags.setter(v5);
    v6 = *v3;
  }

  else
  {
    Entity.__tags.setter(*v3);
  }

  free(v2);
}

uint64_t getEnumTagSinglePayload for __RKEntityTagsComponent(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for __RKEntityTagsComponent(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError()
{
  result = lazy protocol witness table cache variable for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError;
  if (!lazy protocol witness table cache variable for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityTagsComponent.Registration.RegistrationError and conformance __RKEntityTagsComponent.Registration.RegistrationError);
  }

  return result;
}

uint64_t specialized static __RKVisibilityShowDropAnimation.createVisibilityShowDropAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:)(float32x4_t *a1, double a2, float a3, float32x4_t a4, uint64_t a5, _BYTE *a6)
{
  v54 = a1[1];
  if (*a6)
  {
    if (*a6 == 1)
    {
      v56._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 174, 0, MEMORY[0x1E69E7CC0]);
      v7 = &outlined read-only object #1 of static __RKVisibilityShowDropAnimation.createVisibilityShowDropAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }

    else
    {
      v56._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 104, 0, MEMORY[0x1E69E7CC0]);
      v7 = &outlined read-only object #2 of static __RKVisibilityShowDropAnimation.createVisibilityShowDropAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
    }
  }

  else
  {
    v56._rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 79, 0, MEMORY[0x1E69E7CC0]);
    v7 = &outlined read-only object #0 of static __RKVisibilityShowDropAnimation.createVisibilityShowDropAnimation(transform:_:localBoundingBox:variant:duration:distance:orientation:additive:);
  }

  __makeXfos(_:_:)(v7, &v56);
  rawValue = v56._rawValue;
  if (!*(v56._rawValue + 2))
  {

    return MEMORY[0x1E69E7CC0];
  }

  RESampledAnimationDefaultParameters();
  v9 = rawValue[2];
  if (v9)
  {
    v10 = &rawValue[6 * v9];
    v52 = *v10;
    v53 = *(v10 - 1);
    v51 = v10[1];
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_9;
    }
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9 + 1, 1, rawValue);
LABEL_9:
  v9 = rawValue[2];
  v11 = rawValue[3];
  v12 = v9 + 1;
  if (v9 >= v11 >> 1)
  {
    rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v9 + 1, 1, rawValue);
  }

  rawValue[2] = v12;
  v13 = rawValue + 2;
  v14 = &rawValue[6 * v9 + 4];
  *v14 = v53;
  v14[1] = v52;
  v14[2] = v51;
  v56._rawValue = rawValue;
  v15 = 0.0;
  v16 = 8;
  do
  {
    v17 = *&rawValue[v16];
    v18 = fabsf(*&v17);
    if ((LODWORD(v18) & 0x7FFFFF) != 0)
    {
      v19 = v15;
    }

    else
    {
      v19 = v18;
    }

    if ((~LODWORD(v18) & 0x7F800000) != 0)
    {
      v19 = v18;
    }

    if (v18 >= v15)
    {
      v15 = v19;
    }

    v20 = fabsf(*(&v17 + 1));
    if (v20 >= v15)
    {
      if ((LODWORD(v20) & 0x7FFFFF) == 0)
      {
        v15 = v20;
      }

      if ((~LODWORD(v20) & 0x7F800000) != 0)
      {
        v15 = v20;
      }
    }

    v21 = fabsf(*(&v17 + 2));
    if (v21 >= v15)
    {
      if ((~LODWORD(v21) & 0x7F800000) != 0)
      {
        v15 = v21;
      }

      else if ((LODWORD(v21) & 0x7FFFFF) == 0)
      {
        v15 = v21;
      }
    }

    v16 += 6;
    --v12;
  }

  while (v12);
  v22 = 0;
  v23 = a3 / v15;
  v24 = v15 <= 0.0;
  v25 = 1.0;
  if (!v24)
  {
    v25 = v23;
  }

  v26 = vmulq_f32(v54, v54);
  *v26.i8 = vadd_f32(*v26.i8, *&vextq_s8(v26, v26, 8uLL));
  v26.i32[0] = vadd_f32(*v26.i8, vdup_lane_s32(*v26.i8, 1)).u32[0];
  v27 = vrecpe_f32(v26.u32[0]);
  v28 = vmul_f32(v27, vrecps_f32(v26.u32[0], v27));
  v29 = vmulq_n_f32(vmulq_f32(v54, xmmword_1C1899C90), vmul_f32(v28, vrecps_f32(v26.u32[0], v28)).f32[0]);
  v30 = vnegq_f32(a4);
  v31 = vtrn2q_s32(a4, vtrn1q_s32(a4, v30));
  v32 = vrev64q_s32(a4);
  v32.i32[0] = v30.i32[1];
  v32.i32[3] = v30.i32[2];
  v33 = vaddq_f32(vmlaq_n_f32(vmulq_lane_f32(vextq_s8(a4, v30, 8uLL), *v29.f32, 1), vextq_s8(v31, v31, 8uLL), v29.f32[0]), vmlaq_laneq_f32(vmulq_laneq_f32(a4, v29, 3), v32, v29, 2));
  v34 = vmulq_f32(v33, xmmword_1C1899C90);
  v35 = vnegq_f32(v34);
  v36 = vtrn2q_s32(v34, vtrn1q_s32(v34, v35));
  v37 = vextq_s8(v36, v36, 8uLL);
  v38 = vrev64q_s32(v34);
  v38.i32[0] = v35.i32[1];
  v38.i32[3] = v35.i32[2];
  v39 = vdupq_lane_s32(*v33.f32, 0);
  v40 = vextq_s8(v34, v35, 8uLL);
  v41 = vdupq_laneq_s32(v33, 2);
  v42 = 8;
  do
  {
    if (v22 >= *v13)
    {
      __break(1u);
      goto LABEL_40;
    }

    v43 = vsubq_f32(*&rawValue[v42], *&v13[6 * *v13]);
    v44 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v40, vmuls_lane_f32(v25, *v43.f32, 1)), v37, v25 * v43.f32[0]), v38, vmuls_lane_f32(v25, v43, 2));
    v45 = vnegq_f32(v44);
    v46 = vtrn2q_s32(v44, vtrn1q_s32(v44, v45));
    v47 = vrev64q_s32(v44);
    v47.i32[0] = v45.i32[1];
    v47.i32[3] = v45.i32[2];
    v48 = vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v44, v33, 3), v47, v41), vmlaq_f32(vmulq_lane_f32(vextq_s8(v44, v45, 8uLL), *v33.f32, 1), vextq_s8(v46, v46, 8uLL), v39));
    v48.i32[3] = a4.i32[3];
    ++v22;
    *&rawValue[v42] = v48;
    v42 += 6;
  }

  while (v9 + 1 != v22);
  result = REAssetManagerTimelineAssetCreateSRTSampledAnimation();
  if (result)
  {
    v50 = result;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_1C1887600;
    *(result + 32) = v50;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t StateMachineCondition.init(_:_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a3;
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = v9;
  v10 = type metadata accessor for StateMachineCondition();
  v11 = *(*(a5 - 8) + 32);
  v12 = a6 + *(v10 + 40);

  return v11(v12, a4, a5);
}

uint64_t StateMachineCondition.parameterName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t StateMachineCondition.parameterName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*StateMachineCondition.testValue.modify(uint64_t a1, uint64_t a2))(void, void)
{
  result = destructiveProjectEnumData for __RKEntityInteractionsComponent.Registration.RegistrationError;
  v4 = v2 + *(a2 + 40);
  return result;
}

uint64_t StateMachineCondition.referencedParameters.getter(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1887600;
  v5 = *v1;
  v4 = v1[1];
  v10[0] = 0;
  v10[1] = 0;
  v11 = -1;
  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  *(v3 + 56) = type metadata accessor for StateMachineParameter();
  *(v3 + 64) = &protocol witness table for StateMachineParameter<A>;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v3 + 32));

  StateMachineParameter.init(name:bindTarget:)(v5, v4, v10, v7, boxed_opaque_existential_1);
  return v3;
}

Swift::Int StateMachineConditionOperator.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1C68F4C10](v1);
  return Hasher._finalize()();
}

uint64_t StateMachineConditionTrigger.parameterName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t StateMachineConditionTrigger.parameterName.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t StateMachineConditionTrigger.referencedParameters.getter()
{
  v2 = *v0;
  v1 = v0[1];

  outlined consume of BindTarget?(0, 0, 0xFFu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1887600;
  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineParameterVySbGMd, &_s17RealityFoundation21StateMachineParameterVySbGMR);
  *(v3 + 64) = &protocol witness table for StateMachineParameter<A>;
  v4 = swift_allocObject();
  *(v3 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 511;
  return v3;
}

unint64_t lazy protocol witness table accessor for type StateMachineConditionOperator and conformance StateMachineConditionOperator()
{
  result = lazy protocol witness table cache variable for type StateMachineConditionOperator and conformance StateMachineConditionOperator;
  if (!lazy protocol witness table cache variable for type StateMachineConditionOperator and conformance StateMachineConditionOperator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StateMachineConditionOperator and conformance StateMachineConditionOperator);
  }

  return result;
}

uint64_t protocol witness for StateMachineConditionProtocol.referencedParameters.getter in conformance StateMachineConditionTrigger()
{
  v2 = *v0;
  v1 = v0[1];

  outlined consume of BindTarget?(0, 0, 0xFFu);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation29StateMachineParameterProtocol_pGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C1887600;
  *(v3 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation21StateMachineParameterVySbGMd, &_s17RealityFoundation21StateMachineParameterVySbGMR);
  *(v3 + 64) = &protocol witness table for StateMachineParameter<A>;
  v4 = swift_allocObject();
  *(v3 + 32) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 48) = 511;
  return v3;
}

uint64_t type metadata completion function for StateMachineCondition(uint64_t a1)
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

uint64_t getEnumTagSinglePayload for StateMachineCondition(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

  v9 = ((v6 + 17) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
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
        return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
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

void storeEnumTagSinglePayload for StateMachineCondition(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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
  v10 = ((v9 + 17) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
    v20 = &a1[v9 + 17] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t getEnumTagSinglePayload for StateMachineConditionOperator(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for StateMachineConditionOperator(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t one-time initialization function for notificationName()
{
  result = MEMORY[0x1C68F3280](0xD00000000000001ELL, 0x80000001C18E11E0);
  static NotificationAction.notificationName = result;
  return result;
}

id static NotificationAction.notificationName.getter()
{
  if (one-time initialization token for notificationName != -1)
  {
    swift_once();
  }

  v1 = static NotificationAction.notificationName;

  return v1;
}

uint64_t NotificationAction.name.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t NotificationAction.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2[1];

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t NotificationAction.customArguments.setter(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(v1 + 16) = a1;
  return result;
}

RealityFoundation::NotificationAction __swiftcall NotificationAction.init(name:customArguments:)(Swift::String name, Swift::OpaquePointer customArguments)
{
  *v2 = name;
  *(v2 + 16) = customArguments;
  result.name = name;
  result.customArguments = customArguments;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NotificationAction.CodingKeys()
{
  if (*v0)
  {
    result = 0x72416D6F74737563;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NotificationAction.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x72416D6F74737563 && a2 == 0xEF73746E656D7567)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NotificationAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NotificationAction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NotificationAction.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation18NotificationActionV10CodingKeys33_EFEB959AF5F46945FA966D8F01E07A61LLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation18NotificationActionV10CodingKeys33_EFEB959AF5F46945FA966D8F01E07A61LLOGMR);
  v14 = *(v4 - 8);
  v5 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v13 = v1[2];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = v13;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v14 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys;
  if (!lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys);
  }

  return result;
}

uint64_t NotificationAction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation18NotificationActionV10CodingKeys33_EFEB959AF5F46945FA966D8F01E07A61LLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation18NotificationActionV10CodingKeys33_EFEB959AF5F46945FA966D8F01E07A61LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NotificationAction.CodingKeys and conformance NotificationAction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v14 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  v18 = 1;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v17[1];
  *a2 = v14;
  a2[1] = v13;
  a2[2] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t getEnumTagSinglePayload for NotificationAction(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for NotificationAction(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void specialized NotificationActionHandler.postNotification(event:)(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v4 = a1[2];
  v3 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 32) = 0xD000000000000029;
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = 0x80000001C18E1150;
  *(inited + 48) = v1;
  *(inited + 56) = v4;

  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of BodyTrackingComponent?(inited + 32, &_sSS_yptMd, &_sSS_yptMR);
  v25 = v6;
  if ((*(v2 + 40) & 1) == 0)
  {
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v8 = *(Strong + 16);
      SceneNullable = REEntityGetSceneNullable();
      if (SceneNullable)
      {
        v10 = SceneNullable;
        if (RESceneGetSwiftObject())
        {

          v11 = type metadata accessor for Scene();
          v12 = swift_dynamicCastClassUnconditional();
        }

        else
        {
          v11 = type metadata accessor for Scene();
          swift_allocObject();
          v12 = Scene.init(coreScene:)(v10);
        }

        type metadata accessor for Scene();
        v24 = v11;
        *&v23 = v12;
        outlined init with take of Any(&v23, v22);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 0xD000000000000024, 0x80000001C18E1120, isUniquelyReferenced_nonNull_native);
        v25 = v6;
        goto LABEL_8;
      }
    }
  }

  specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000024, 0x80000001C18E1120, &v23);
  outlined destroy of BodyTrackingComponent?(&v23, &_sypSgMd, &_sypSgMR);
LABEL_8:
  if ((*(v2 + 40) & 1) != 0 || (v13 = swift_weakLoadStrong()) == 0)
  {
    specialized Dictionary._Variant.removeValue(forKey:)(0xD00000000000002BLL, 0x80000001C18E1180, &v23);
    outlined destroy of BodyTrackingComponent?(&v23, &_sypSgMd, &_sypSgMR);
    v15 = v25;
  }

  else
  {
    v14 = v13;
    v24 = type metadata accessor for Entity();
    *&v23 = v14;
    outlined init with take of Any(&v23, v22);
    v15 = v25;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 0xD00000000000002BLL, 0x80000001C18E1180, v16);
  }

  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  *&v23 = v3;
  outlined init with take of Any(&v23, v22);

  v17 = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, 0xD00000000000002ELL, 0x80000001C18E11B0, v17);
  v18 = [objc_opt_self() defaultCenter];
  if (one-time initialization token for notificationName != -1)
  {
    swift_once();
  }

  v19 = static NotificationAction.notificationName;
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v15);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v18 postNotificationName:v19 object:0 userInfo:isa];
}

uint64_t __RKEntityInteractionSpecification.init(decodeContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for __RKEntityActionSpecification(0);
  v53 = *(v4 - 8);
  v54 = v4;
  v5 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v51 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v50 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v55 = &v46 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v46 - v21);
  v23 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v24 = *(v23 + 24);
  v49 = a2;
  v25 = (a2 + v24);
  *v25 = 0;
  v25[1] = 0;
  v46 = v23;
  v47 = v25;
  v26 = *a1;
  v27 = *(a1 + 8);
  v28 = *(a1 + 16);
  v60 = *(a1 + 24);
  v29 = *(a1 + 32);
  v58 = *(a1 + 40);
  v59 = v29;
  v30 = v26;
  v31 = v27;
  v56 = v28;

  outlined init with copy of [String : String](&v60, v57, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined init with copy of [String : String](&v59, v57, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined init with copy of [String : String](&v58, v57, &_sSDyS2SGMd, &_sSDyS2SGMR);
  v32 = v52;
  __RKEntityTriggerSpecification.init(decodeContext:)(a1, v22);
  if (v32)
  {

    v33 = 1;
  }

  else
  {
    v33 = 0;
  }

  (*(v8 + 56))(v22, v33, 1, v7);
  v52 = v30;
  v34 = v31;

  outlined init with copy of [String : String](&v60, v57, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined init with copy of [String : String](&v59, v57, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined init with copy of [String : String](&v58, v57, &_sSDyS2SGMd, &_sSDyS2SGMR);
  v35 = v55;
  __RKEntityActionSpecification.init(decodeContext:)(a1, v55);
  v37 = v53;
  v36 = v54;
  (*(v53 + 56))(v35, 0, 1, v54);
  outlined init with copy of [String : String](v22, v19, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
  if ((*(v8 + 48))(v19, 1, v7) == 1)
  {
    v38 = &_s10RealityKit30__RKEntityTriggerSpecificationOSgMd;
    v39 = &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR;
LABEL_8:
    outlined destroy of BodyTrackingComponent?(v19, v38, v39);
    lazy protocol witness table accessor for type __RKEntityInteractionSpecification.InteractionUSDLoadingError and conformance __RKEntityInteractionSpecification.InteractionUSDLoadingError();
    swift_allocError();
    swift_willThrow();

    outlined destroy of BodyTrackingComponent?(&v60, &_sSDyS2SGMd, &_sSDyS2SGMR);
    outlined destroy of BodyTrackingComponent?(&v59, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
    outlined destroy of BodyTrackingComponent?(&v58, &_sSDyS2SGMd, &_sSDyS2SGMR);
    outlined destroy of BodyTrackingComponent?(v35, &_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
    return outlined destroy of BodyTrackingComponent?(v22, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
  }

  v40 = v37;
  v41 = v51;
  _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v19, v51, type metadata accessor for __RKEntityTriggerSpecification);
  v19 = v50;
  outlined init with copy of [String : String](v35, v50, &_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
  if ((*(v40 + 48))(v19, 1, v36) == 1)
  {
    outlined destroy of __RKEntityTriggerSpecification(v41);
    v38 = &_s10RealityKit29__RKEntityActionSpecificationOSgMd;
    v39 = &_s10RealityKit29__RKEntityActionSpecificationOSgMR;
    goto LABEL_8;
  }

  outlined destroy of BodyTrackingComponent?(&v60, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined destroy of BodyTrackingComponent?(&v59, &_sSDySS10Foundation4UUIDVGMd, &_sSDySS10Foundation4UUIDVGMR);
  outlined destroy of BodyTrackingComponent?(&v58, &_sSDyS2SGMd, &_sSDyS2SGMR);
  outlined destroy of BodyTrackingComponent?(v35, &_s10RealityKit29__RKEntityActionSpecificationOSgMd, &_s10RealityKit29__RKEntityActionSpecificationOSgMR);
  outlined destroy of BodyTrackingComponent?(v22, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMd, &_s10RealityKit30__RKEntityTriggerSpecificationOSgMR);
  v43 = v48;
  _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v19, v48, type metadata accessor for __RKEntityActionSpecification);
  v44 = v49;
  _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v41, v49, type metadata accessor for __RKEntityTriggerSpecification);
  result = _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(v43, v44 + *(v46 + 20), type metadata accessor for __RKEntityActionSpecification);
  v45 = v47;
  *v47 = 0;
  v45[1] = 0;
  return result;
}

unint64_t lazy protocol witness table accessor for type __RKEntityInteractionSpecification.InteractionUSDLoadingError and conformance __RKEntityInteractionSpecification.InteractionUSDLoadingError()
{
  result = lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.InteractionUSDLoadingError and conformance __RKEntityInteractionSpecification.InteractionUSDLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.InteractionUSDLoadingError and conformance __RKEntityInteractionSpecification.InteractionUSDLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.InteractionUSDLoadingError and conformance __RKEntityInteractionSpecification.InteractionUSDLoadingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.InteractionUSDLoadingError and conformance __RKEntityInteractionSpecification.InteractionUSDLoadingError;
  if (!lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.InteractionUSDLoadingError and conformance __RKEntityInteractionSpecification.InteractionUSDLoadingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __RKEntityInteractionSpecification.InteractionUSDLoadingError and conformance __RKEntityInteractionSpecification.InteractionUSDLoadingError);
  }

  return result;
}

uint64_t outlined destroy of __RKEntityTriggerSpecification(uint64_t a1)
{
  v2 = type metadata accessor for __RKEntityTriggerSpecification(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _s10RealityKit30__RKEntityTriggerSpecificationOWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void MetalCapture.start(captureScope:outputURL:device:)(void *a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v17[3] = *MEMORY[0x1E69E9840];
  if (*(v3 + 16))
  {
LABEL_8:
    v15 = *MEMORY[0x1E69E9840];
    return;
  }

  *(v3 + 16) = 1;
  v7 = *(v3 + 32);
  *(v3 + 32) = a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  v8 = [objc_allocWithZone(MEMORY[0x1E6973FF8]) init];
  v9 = a1;
  if (!a1)
  {
    swift_unknownObjectRetain();
    v9 = a3;
  }

  swift_unknownObjectRetain();
  [v8 setCaptureObject_];
  swift_unknownObjectRelease();
  [v8 setDestination_];
  URL._bridgeToObjectiveC()(v10);
  v12 = v11;
  [v8 setOutputURL_];

  v13 = *(v4 + 24);
  v17[0] = 0;
  if ([v13 startCaptureWithDescriptor:v8 error:v17])
  {
    v14 = v17[0];
    if (a1)
    {
      [a1 beginScope];
    }

    goto LABEL_8;
  }

  v16 = v17[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(32);
  MEMORY[0x1C68F3410](0xD00000000000001ELL, 0x80000001C18E1370);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  _print_unlocked<A, B>(_:_:)();
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t MetalCapture.__deallocating_deinit()
{
  v1 = *(v0 + 32);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t getTriangleOpacityResults(mxiScene:)(void *a1)
{
  v3 = v1;
  v138 = *MEMORY[0x1E69E9840];
  v5 = type metadata accessor for URL();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v107 - v11;
  v13 = MTLCreateSystemDefaultDevice();
  if (!v13)
  {
    lazy protocol witness table accessor for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError();
    swift_allocError();
    swift_willThrow();
LABEL_26:
    v56 = *MEMORY[0x1E69E9840];
    return v2;
  }

  v133 = v13;
  static URL.temporaryDirectory.getter();
  URL.appendingPathComponent(_:)();
  v14 = *(v6 + 8);
  v132 = v6 + 8;
  v14(v9, v5);
  v15 = [objc_allocWithZone(MEMORY[0x1E696AC08]) init];
  v16 = URL.absoluteString.getter();
  v17 = MEMORY[0x1C68F3280](v16);

  v135 = 0;
  v131 = v15;
  LODWORD(v15) = [v15 removeItemAtPath:v17 error:&v135];

  if (v15)
  {
    v18 = v135;
  }

  else
  {
    v19 = v135;
    v20 = _convertNSErrorToError(_:)();

    swift_willThrow();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1C1887600;
    v135 = 0;
    v136.i64[0] = 0xE000000000000000;
    _StringGuts.grow(_:)(27);
    MEMORY[0x1C68F3410](0x6D657220656C6946, 0xEE00203A6C61766FLL);
    v134[0] = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1C68F3410](0x616620746F6E202CLL, 0xEB000000006C6174);
    v22 = v135;
    v23 = v136.i64[0];
    *(v21 + 56) = MEMORY[0x1E69E6158];
    *(v21 + 32) = v22;
    *(v21 + 40) = v23;
    print(_:separator:terminator:)();

    v3 = 0;
  }

  type metadata accessor for MetalCapture();
  inited = swift_initStackObject();
  *(inited + 16) = 0;
  *(inited + 24) = [objc_opt_self() sharedCaptureManager];
  *(inited + 32) = 0;
  v25 = [objc_opt_self() standardUserDefaults];
  v26 = MEMORY[0x1C68F3280](0xD000000000000026, 0x80000001C18E1250);
  v2 = [v25 BOOLForKey_];

  LODWORD(v129) = v2;
  if (v2)
  {
    MetalCapture.start(captureScope:outputURL:device:)(0, v12, v133);
  }

  v27 = [a1 triangleCount];
  if ((v27 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
LABEL_93:
    __break(1u);
LABEL_94:
    __break(1u);
    goto LABEL_95;
  }

  v28 = v27;
  v130 = v14;
  v29 = v27 >> 1;
  if (((v27 >> 1) * 11) >> 64 != (11 * (v27 >> 1)) >> 63)
  {
    goto LABEL_86;
  }

  v128 = 11 * (v27 >> 1);
  v30 = [v133 newCommandQueue];
  if (!v30)
  {
    lazy protocol witness table accessor for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_setDeallocating();

    v52 = *(inited + 32);
LABEL_23:
    swift_unknownObjectRelease();
    v54 = v12;
LABEL_24:
    v55 = v5;
LABEL_25:
    v130(v54, v55);
    goto LABEL_26;
  }

  v2 = v30;
  v125 = v29;
  v31 = [objc_allocWithZone(MEMORY[0x1E6974008]) init];
  v32 = [v2 commandBufferWithDescriptor_];
  if (!v32)
  {
    lazy protocol witness table accessor for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
LABEL_22:
    swift_unknownObjectRelease();
    swift_setDeallocating();

    v53 = *(inited + 32);
    goto LABEL_23;
  }

  v121 = v28;
  v126 = v31;
  v33 = v32;
  v34 = [objc_allocWithZone(MEMORY[0x1E6974028]) init];
  v35 = [v33 computeCommandEncoderWithDescriptor_];
  if (!v35)
  {
    lazy protocol witness table accessor for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_22;
  }

  v122 = v33;
  v119 = a1;
  v124 = v35;
  v127 = v12;
  v36 = MEMORY[0x1C68F3280](0xD00000000000001BLL, 0x80000001C18E1280);
  v37 = [objc_opt_self() bundleWithIdentifier_];

  if (!v37)
  {
    lazy protocol witness table accessor for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_setDeallocating();

    v58 = *(inited + 32);
LABEL_29:
    swift_unknownObjectRelease();
    v54 = v127;
    goto LABEL_24;
  }

  v117 = v3;
  v120 = v2;
  v135 = 0;
  v2 = v133;
  v38 = [v133 newDefaultLibraryWithBundle:v37 error:&v135];
  v39 = v37;
  if (!v38)
  {
    v59 = v34;
    v60 = v135;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_setDeallocating();

    v61 = *(inited + 32);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v40 = v38;
  v118 = v39;
  v123 = v5;
  v41 = v135;
  v42 = MEMORY[0x1C68F3280](0xD000000000000011, 0x80000001C18E12A0);
  v43 = [v40 newFunctionWithName_];

  if (!v43)
  {
    lazy protocol witness table accessor for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_setDeallocating();

    v62 = *(inited + 32);
LABEL_32:
    swift_unknownObjectRelease();
    v54 = v127;
    v55 = v123;
    goto LABEL_25;
  }

  v116 = v40;
  v135 = 0;
  v44 = [v133 newComputePipelineStateWithFunction:v43 error:&v135];
  v2 = v120;
  if (!v44)
  {
    v63 = v34;
    v64 = v135;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_unknownObjectRelease();
    swift_setDeallocating();

    v65 = *(inited + 32);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  v45 = v44;
  v115 = inited;
  v112 = v43;
  v114 = v34;
  v46 = v135;
  v47 = v124;
  [v124 setComputePipelineState_];
  v113 = v45;
  *&v48 = MTLSizeMake([v45 threadExecutionWidth], &v135).u64[0];
  v110 = v135;
  v108 = v136.i64[1];
  v109 = v136.i64[0];
  v49 = [v119 colorTexture];
  if (v129)
  {
    v50 = [objc_allocWithZone(MEMORY[0x1E69741C0]) init];
    [v50 setUsage_];
    [v50 setWidth_];
    [v50 setHeight_];
    [v50 setPixelFormat_];
    [v50 setStorageMode_];
    [v50 setDepth_];
    [v50 setMipmapLevelCount_];
    [v50 setResourceOptions_];
    [v50 setArrayLength_];
    v51 = [v133 newTextureWithDescriptor_];

    [v47 setTexture:v49 atIndex:0];
    v111 = v51;
    [v47 setTexture:v51 atIndex:1];
  }

  else
  {
    [v47 setTexture:v49 atIndex:0];
    v111 = 0;
  }

  v66 = v127;
  v67 = v126;
  v68 = v121;
  v69 = v125;
  if ((v128 - 0x2000000000000000) >> 62 != 3)
  {
LABEL_95:
    __break(1u);
    goto LABEL_96;
  }

  v2 = v133;
  v70 = [v133 newBufferWithLength:4 * v128 options:0];
  if (!v70)
  {
    lazy protocol witness table accessor for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError();
    swift_allocError();
    swift_willThrow();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v89 = v115;
    swift_setDeallocating();

    v90 = *(v89 + 32);
    swift_unknownObjectRelease();
    v130(v66, v123);
    goto LABEL_26;
  }

  v121 = v49;
  v71 = v124;
  v125 = v70;
  [v124 setBuffer:v70 offset:0 atIndex:0];
  v72 = v119;
  [v71 setBuffer:objc_msgSend(v119 offset:sel_triangleIndices) atIndex:{0, 1}];
  swift_unknownObjectRelease();
  [v71 setBuffer:objc_msgSend(v72 offset:sel_vertexUVs) atIndex:{0, 2}];
  swift_unknownObjectRelease();
  [v71 setBuffer:objc_msgSend(v72 offset:sel_vertexPositions) atIndex:{0, 3}];
  swift_unknownObjectRelease();
  [v71 setBuffer:objc_msgSend(v72 offset:sel_triangleSliceIndices) atIndex:{0, 4}];
  swift_unknownObjectRelease();
  if (v68 >> 33)
  {
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
  }

  v137 = v69;
  v73 = v133;
  v107[1] = [v133 newBufferWithBytes:&v137 length:4 options:0];
  [v71 setBuffer_offset_atIndex_];
  [v71 setBuffer:objc_msgSend(v73 offset:sel_newBufferWithBytes_length_options_ atIndex:{&unk_1F40E41D0, 4, 0)}];
  v136 = vdupq_n_s64(1uLL);
  v134[0] = v110;
  v134[1] = v109;
  v134[2] = v108;
  v135 = v69;
  [v71 dispatchThreadgroups:&v135 threadsPerThreadgroup:v134];
  [v71 endEncoding];
  v74 = v122;
  [v122 commit];
  [v74 waitUntilCompleted];
  if (v129 && *(v115 + 16) == 1)
  {
    v75 = *(v115 + 32);
    if (v75)
    {
      [v75 endScope];
    }

    [*(v115 + 24) stopCapture];
  }

  v76 = v125;
  v77 = [swift_unknownObjectRetain() contents];
  v78 = v76;
  v129 = _sSv17RealityFoundationE7toArray0C08capacitySayxGxm_SitlFs6UInt32V_Ttg5(v128, v77);
  v79 = v119;
  v80 = [v119 triangleIndices];
  v81 = [v80 contents];
  v82 = v80;
  v83 = [v79 triangleCount];
  if (!is_mul_ok(v83, 3uLL))
  {
    goto LABEL_97;
  }

  v84 = 3 * v83;
  v85 = v123;
  v86 = v127;
  if (v84 < 0)
  {
    goto LABEL_98;
  }

  v128 = _sSv17RealityFoundationE7toArray0C08capacitySayxGxm_SitlFs6UInt32V_Ttg5(v84, v81);
  if (v68 < 2)
  {
    v2 = MEMORY[0x1E69E7CC0];
LABEL_46:
    v130(v86, v85);

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v87 = v115;
    swift_setDeallocating();

    v88 = *(v87 + 32);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v91 = 0;
  v92 = v129 + 9;
  v2 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (!v69)
    {
      goto LABEL_87;
    }

    v93 = v129[2];
    if (v91 >= v93)
    {
      goto LABEL_88;
    }

    if (v91 + 1 >= v93)
    {
      goto LABEL_89;
    }

    if (v91 + 2 >= v93)
    {
      goto LABEL_90;
    }

    if (v91 + 3 >= v93)
    {
      goto LABEL_91;
    }

    if (v91 + 8 >= v93 || v91 + 7 >= v93)
    {
      goto LABEL_92;
    }

    if (v91 + 9 >= v93)
    {
      goto LABEL_93;
    }

    if (v91 + 10 >= v93)
    {
      goto LABEL_94;
    }

    if (*(v92 - 1) != 99 || *v92)
    {
      break;
    }

    v94 = v92[7];
    v95 = v92[8];
    if (v92[1])
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
      }

      v97 = *(v2 + 2);
      v96 = *(v2 + 3);
      v98 = v97 + 1;
      if (v97 >= v96 >> 1)
      {
        v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v96 > 1), v97 + 1, 1, v2);
      }

      v99 = 0;
    }

    else
    {
      v100 = v92[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (v100)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        }

        v97 = *(v2 + 2);
        v102 = *(v2 + 3);
        v98 = v97 + 1;
        if (v97 >= v102 >> 1)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v102 > 1), v97 + 1, 1, v2);
        }

        v99 = 2;
      }

      else
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
        }

        v97 = *(v2 + 2);
        v103 = *(v2 + 3);
        v98 = v97 + 1;
        v99 = 1;
        if (v97 >= v103 >> 1)
        {
          v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v103 > 1), v97 + 1, 1, v2);
        }
      }
    }

    *(v2 + 2) = v98;
    v2[v97 + 32] = v99;
    if (!v94)
    {
      v105 = *(v2 + 3);
      v106 = v98 + 1;
      if (v95)
      {
        v104 = 2;
      }

      else
      {
        v104 = 1;
      }

      if (v98 < v105 >> 1)
      {
        goto LABEL_78;
      }

LABEL_84:
      v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106, 1, v2);
      goto LABEL_78;
    }

    v104 = 0;
    v105 = *(v2 + 3);
    v106 = v98 + 1;
    if (v98 >= v105 >> 1)
    {
      goto LABEL_84;
    }

LABEL_78:
    *(v2 + 2) = v106;
    v2[v98 + 32] = v104;
    v91 += 11;
    v92 += 11;
    --v69;
    v85 = v123;
    v86 = v127;
    if (!v69)
    {
      goto LABEL_46;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError()
{
  result = lazy protocol witness table cache variable for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError;
  if (!lazy protocol witness table cache variable for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError;
  if (!lazy protocol witness table cache variable for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GetTriangleOpacityResultsError and conformance GetTriangleOpacityResultsError);
  }

  return result;
}

int64x2_t MTLSizeMake@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  result = vdupq_n_s64(1uLL);
  *(a2 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type TriangleOpacityResult and conformance TriangleOpacityResult()
{
  result = lazy protocol witness table cache variable for type TriangleOpacityResult and conformance TriangleOpacityResult;
  if (!lazy protocol witness table cache variable for type TriangleOpacityResult and conformance TriangleOpacityResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TriangleOpacityResult and conformance TriangleOpacityResult);
  }

  return result;
}

char *specialized static EmphasizeAnimations.makeTransforms(_:_:)(uint64_t a1, char **a2)
{
  v4 = *(a1 + 16);
  v5 = v4 / 0xA;
  v6 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v6 + 3) >> 1)
  {
    *a2 = v6;
    if (!v4)
    {
      return result;
    }
  }

  else
  {
    if (*(v6 + 2) <= v5)
    {
      v10 = v4 / 0xA;
    }

    else
    {
      v10 = *(v6 + 2);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v10, 0, v6);
    v6 = result;
    *a2 = result;
    if (!v4)
    {
      return result;
    }
  }

  v11 = a1 + 32;
  if (one-time initialization token for identity != -1)
  {
LABEL_41:
    result = swift_once();
  }

  v12 = 0;
  do
  {
    if (__OFADD__(v12, 10))
    {
      v13 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = v12 + 10;
    }

    if (v12 >= v4)
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

    if (v12 + 1 >= v4)
    {
      goto LABEL_31;
    }

    if (v12 + 2 >= v4)
    {
      goto LABEL_32;
    }

    if (v12 + 3 >= v4)
    {
      goto LABEL_33;
    }

    if (v12 + 4 >= v4)
    {
      goto LABEL_34;
    }

    if (v12 + 5 >= v4)
    {
      goto LABEL_35;
    }

    if (v12 + 6 >= v4)
    {
      goto LABEL_36;
    }

    if (v12 + 7 >= v4)
    {
      goto LABEL_37;
    }

    if (v12 + 8 >= v4)
    {
      goto LABEL_38;
    }

    v14 = v12 + 9;
    if (__OFADD__(v12, 9))
    {
      goto LABEL_39;
    }

    if (v14 >= v4)
    {
      goto LABEL_40;
    }

    LODWORD(v15) = *(v11 + 4 * v12);
    DWORD1(v15) = *(v11 + 4 * (v12 + 1));
    *(&v15 + 1) = *(v11 + 4 * (v12 + 2));
    LODWORD(v16) = *(v11 + 4 * (v12 + 3));
    LODWORD(v9) = *(v11 + 4 * (v12 + 4));
    *&v8 = *(v11 + 4 * (v12 + 5));
    LODWORD(v17) = *(v11 + 4 * (v12 + 7));
    DWORD1(v17) = *(v11 + 4 * (v12 + 8));
    *(&v17 + 1) = *(v11 + 4 * v14);
    v19 = *(v6 + 2);
    v18 = *(v6 + 3);
    if (v19 >= v18 >> 1)
    {
      v24 = v16;
      v25 = v15;
      v22 = v9;
      v23 = v8;
      v21 = v17;
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v6);
      v17 = v21;
      v9 = v22;
      v8 = v23;
      LODWORD(v16) = v24;
      v15 = v25;
      v6 = result;
    }

    DWORD1(v16) = v9;
    *(&v16 + 1) = v8;
    *(v6 + 2) = v19 + 1;
    v20 = &v6[48 * v19];
    *(v20 + 2) = v15;
    *(v20 + 3) = v16;
    *(v20 + 4) = v17;
    v12 = v13;
  }

  while (v13 < v4);
  *a2 = v6;
  return result;
}

char *specialized static EmphasizeAnimations.createEmphasizePulseAnimation(style:)(_BYTE *a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 107, 0, MEMORY[0x1E69E7CC0]);
      v1 = &static EmphasizeAnimations.playfulPulseAnimationData;
    }

    else
    {
      v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 99, 0, MEMORY[0x1E69E7CC0]);
      v1 = &static EmphasizeAnimations.wildPulseAnimationData;
    }
  }

  else
  {
    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 71, 0, MEMORY[0x1E69E7CC0]);
    v1 = &static EmphasizeAnimations.basicPulseAnimationData;
  }

  v2 = *v1;

  specialized static EmphasizeAnimations.makeTransforms(_:_:)(v3, &v5);

  return v5;
}

char *specialized static EmphasizeAnimations.bakeEmphasisTransforms(_:transforms:isAdditive:)(uint64_t a1, char *a2, char a3)
{
  v6 = *(a1 + 16);

  REEntityComputeMeshBounds();
  v52 = v7;
  v51 = v8;
  _s10RealityKit6EntityC12ComponentSetV5doGet_21borrowStrongReferencexSgxm_SbtAA0D0RzlFAA9TransformV_Tt0B5Tf4dn_n(a1, v53);
  if ((v54 & 1) == 0)
  {
    v48 = v53[1];
    v49 = v53[0];
    v9 = v53[2];
    goto LABEL_5;
  }

  if (one-time initialization token for identity != -1)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v48 = xmmword_1EBEB2BB0;
    v49 = static Transform.identity;
    v9 = xmmword_1EBEB2BC0;
LABEL_5:
    v47 = v9;
    v10 = *(a2 + 2);
    if (!v10)
    {
      return a2;
    }

    v11 = 0;
    v12 = 0;
    v13 = vsubq_f32(v51, v52);
    v13.f32[0] = (v13.f32[2] + (v13.f32[1] + (v13.f32[0] + 0.0))) / 3.0;
    v51 = v13;
    v50 = *(a2 + 4);
    v45 = vdupq_laneq_s32(v48, 2);
    v46 = vdupq_lane_s32(*v48.f32, 0);
    v14 = vmulq_f32(v48, xmmword_1C1899C90);
    v15 = vnegq_f32(v14);
    v16 = vtrn2q_s32(v14, vtrn1q_s32(v14, v15));
    v17 = vextq_s8(v16, v16, 8uLL);
    v18 = vrev64q_s32(v14);
    v18.i32[0] = v15.i32[1];
    v42 = vextq_s8(v14, v15, 8uLL);
    v18.i32[3] = v15.i32[2];
    v43 = v18;
    v44 = v17;
    while (v12 < *(a2 + 2))
    {
      v52 = *&a2[v11 + 64];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
      }

      v32 = vsubq_f32(v52, v50);
      *v31.f32 = vmul_n_f32(*v32.f32, v51.f32[0]);
      v33 = vmuls_lane_f32(v51.f32[0], v32, 2);
      v32.i64[0] = v31.i64[0];
      v32.i64[1] = LODWORD(v33);
      v34 = &a2[v11];
      *&a2[v11 + 64] = v32;
      if ((a3 & 1) == 0)
      {
        v35 = *(a2 + 2);
        if (v12 >= v35)
        {
          goto LABEL_21;
        }

        v36 = v34[2];
        v37 = *&a2[v11 + 48];
        if (one-time initialization token for identity == -1)
        {
          if (v12 >= v35)
          {
            goto LABEL_18;
          }
        }

        else
        {
          v52 = v31;
          v40 = *&a2[v11 + 48];
          v41 = v33;
          v39 = v34[2];
          swift_once();
          v36 = v39;
          v37 = v40;
          v33 = v41;
          v31.i64[0] = v52.i64[0];
          if (v12 >= *(a2 + 2))
          {
LABEL_18:
            __break(1u);
            return a2;
          }
        }

        v19 = vmulq_f32(v49, v36);
        v19.i32[3] = 0;
        v20 = vnegq_f32(v37);
        v21 = vtrn2q_s32(v37, vtrn1q_s32(v37, v20));
        v22 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v37, v20, 8uLL), *v48.f32, 1), vextq_s8(v21, v21, 8uLL), v46);
        v23 = vrev64q_s32(v37);
        v23.i32[0] = v20.i32[1];
        v23.i32[3] = v20.i32[2];
        v24 = vmlaq_f32(vmulq_laneq_f32(v37, v48, 3), v23, v45);
        v25 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v42, vmuls_lane_f32(v49.f32[1], *v31.f32, 1)), v44, v49.f32[0] * v31.f32[0]), v43, v49.f32[2] * v33);
        v26 = vnegq_f32(v25);
        v27 = vtrn2q_s32(v25, vtrn1q_s32(v25, v26));
        v28 = vmlaq_f32(vmulq_lane_f32(vextq_s8(v25, v26, 8uLL), *v48.f32, 1), vextq_s8(v27, v27, 8uLL), v46);
        v29 = vrev64q_s32(v25);
        v29.i32[0] = v26.i32[1];
        v29.i32[3] = v26.i32[2];
        v30 = vaddq_f32(v47, vaddq_f32(vmlaq_f32(vmulq_laneq_f32(v25, v48, 3), v29, v45), v28));
        v30.i32[3] = 0;
        v34[2] = v19;
        *&a2[v11 + 48] = vaddq_f32(v24, v22);
        v34[4] = v30;
      }

      ++v12;
      v11 += 48;
      if (v10 == v12)
      {
        return a2;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    swift_once();
  }
}

uint64_t REEncoder.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  REEncoderDestroy();

  return swift_deallocClassInstance();
}

unint64_t REEncoder.encode<A>(_:)(unint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = type metadata accessor for PrivateEncoder();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v6 + 40) = v7;
  *(v6 + 48) = 0;
  *(v6 + 16) = v4;
  *(v6 + 24) = v7;
  if (!REEncoderOpen())
  {
    v16[3] = v5;
    v16[4] = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateEncoder and conformance PrivateEncoder, type metadata accessor for PrivateEncoder);
    v16[0] = v6;

    v8 = a1;
    dispatch thunk of Encodable.encode(to:)();
    if (v2)
    {

      __swift_destroy_boxed_opaque_existential_1(v16);
      return v8;
    }

    __swift_destroy_boxed_opaque_existential_1(v16);
    PrivateDecoder.terminateContainers(_:)(0);
    if (!REEncoderClose())
    {
      v15 = REEncoderCopyToCFData();
      v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

      return v8;
    }
  }

  v8 = specialized static REEncoder.Error.getStatus(_:)();
  v10 = v9;
  v12 = v11;
  lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
  swift_allocError();
  *v13 = v8;
  *(v13 + 8) = v10;
  *(v13 + 16) = v12 & 1;
  swift_willThrow();

  return v8;
}

uint64_t PrivateEncoder.writeKey(_:)(void *a1)
{
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of CodingKey.intValue.getter();
  LOBYTE(v3) = v4;
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of CodingKey.stringValue.getter();
  if ((v3 & 1) == 0)
  {

    v9 = *(v1 + 16);
    result = REEncoderWriteInt64();
    if (!result)
    {
      return result;
    }

    goto LABEL_5;
  }

  v6 = *(v1 + 16);
  String.utf8CString.getter();

  v7 = REEncoderWriteString();

  if (v7)
  {
LABEL_5:
    v10 = specialized static REEncoder.Error.getStatus(_:)();
    v12 = v11;
    v14 = v13;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v15 = v10;
    *(v15 + 8) = v12;
    *(v15 + 16) = v14 & 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t PrivateEncoder.container<A>(keyedBy:)()
{
  v1 = v0;
  swift_beginAccess();
  PrivateDecoder.terminateContainers(_:)(*(*(v0 + 24) + 16) + 1);
  swift_beginAccess();
  v2 = *(v0 + 40);
  v3 = *(v2 + 16);
  v4 = *(v0 + 24);
  if (*(v4 + 16) >= v3)
  {
    v5 = 0;
  }

  else
  {
    outlined init with copy of [String : String](v2 + 48 * v3 - 16, &v21, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMR);
    v5 = v22[24];
    outlined init with take of ForceEffectBase(&v21, &v17);
    v20 = v5;
    outlined destroy of BodyTrackingComponent?(&v17, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMR);
    v4 = *(v0 + 24);
  }

  *(v0 + 48) = v5;
  PrivateDecoder.terminateContainers(_:)(*(v4 + 16));
  v6 = type metadata accessor for KeyedEC();
  v7 = *(v1 + 24);

  v8 = KeyedEC.__allocating_init(encoder:codingPath:)(v1, v7);
  *(v1 + 48) = 0;
  v18 = v6;
  v19 = &protocol witness table for KeyedEC<A>;
  *&v17 = v8;
  outlined init with take of ForceEffectBase(&v17, &v21);
  v22[24] = 1;
  swift_beginAccess();
  v9 = *(v1 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 40) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v9[2] + 1, 1, v9);
    *(v1 + 40) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  v13 = &v9[6 * v12];
  v14 = v21;
  v15 = *v22;
  *(v13 + 57) = *&v22[9];
  v13[2] = v14;
  v13[3] = v15;
  *(v1 + 40) = v9;
  swift_endAccess();
  *&v21 = v8;
  swift_getWitnessTable();
  return KeyedEncodingContainer.init<A>(_:)();
}

uint64_t KeyedEC.__allocating_init(encoder:codingPath:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  if ((*(a1 + 48) & 1) == 0)
  {
    v5 = *(a1 + 16);
    v6 = result;
    REEncoderBeginContainer();
    return v6;
  }

  return result;
}

uint64_t PrivateEncoder.unkeyedContainer()@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  PrivateDecoder.terminateContainers(_:)(*(*(v1 + 24) + 16) + 1);
  swift_beginAccess();
  v3 = *(v1 + 40);
  v4 = *(v3 + 16);
  v5 = *(v1 + 24);
  if (*(v5 + 16) >= v4)
  {
    v7 = 0;
  }

  else
  {
    outlined init with copy of [String : String](v3 + 48 * v4 - 16, &v24, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMR);
    v6 = v25[24];
    outlined init with take of ForceEffectBase(&v24, &v20);
    v23 = v6;
    outlined destroy of BodyTrackingComponent?(&v20, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMR);
    v7 = v6 ^ 1;
    v5 = *(v1 + 24);
  }

  *(v1 + 48) = v7;
  PrivateDecoder.terminateContainers(_:)(*(v5 + 16));
  v8 = *(v1 + 24);
  v9 = type metadata accessor for UnkeyedEC();
  v10 = swift_allocObject();
  *(v10 + 32) = 0u;
  *(v10 + 48) = 0u;
  *(v10 + 64) = 0u;
  *(v10 + 16) = v1;
  *(v10 + 24) = v8;
  if (*(v1 + 48) == 1)
  {
  }

  else
  {
    v11 = *(v1 + 16);

    REEncoderBeginContainer();
  }

  *(v1 + 48) = 0;
  v21 = v9;
  v22 = &protocol witness table for UnkeyedEC;
  *&v20 = v10;
  outlined init with take of ForceEffectBase(&v20, &v24);
  v25[24] = 0;
  swift_beginAccess();
  v12 = *(v1 + 40);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 40) = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
    *(v1 + 40) = v12;
  }

  v15 = v12[2];
  v14 = v12[3];
  if (v15 >= v14 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
  }

  v12[2] = v15 + 1;
  v16 = &v12[6 * v15];
  v17 = v24;
  v18 = *v25;
  *(v16 + 57) = *&v25[9];
  v16[2] = v17;
  v16[3] = v18;
  *(v1 + 40) = v12;
  swift_endAccess();
  a1[3] = v9;
  result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type UnkeyedEC and conformance UnkeyedEC, type metadata accessor for UnkeyedEC);
  a1[4] = result;
  *a1 = v10;
  return result;
}

uint64_t protocol witness for Encoder.singleValueContainer() in conformance PrivateEncoder@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = type metadata accessor for SingleValueEC();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  a1[3] = v5;
  a1[4] = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type SingleValueEC and conformance SingleValueEC, type metadata accessor for SingleValueEC);
  *a1 = v6;
}

uint64_t KeyedEC.encodeNil(forKey:)(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = v1[2];
  v7 = v5;
  PrivateDecoder.terminateContainers(_:)(*(v3[3] + 16) + 1);
  v19 = *(v7 + 80);
  v17 = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, a1);
  PrivateEncoder.writeKey(_:)(v18);
  result = __swift_destroy_boxed_opaque_existential_1(v18);
  if (!v2)
  {
    v10 = *(v6 + 16);
    result = REEncoderWriteNil();
    if (result)
    {
      v11 = specialized static REEncoder.Error.getStatus(_:)();
      v13 = v12;
      v15 = v14;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v16 = v11;
      *(v16 + 8) = v13;
      *(v16 + 16) = v15 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t KeyedEC.encode(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v6 = *v2;
  v7 = v2[2];
  v8 = v6;
  PrivateDecoder.terminateContainers(_:)(*(v4[3] + 16) + 1);
  v20 = *(v8 + 80);
  v18 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a2);
  PrivateEncoder.writeKey(_:)(v19);
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  if (!v3)
  {
    v11 = *(v7 + 16);
    result = REEncoderWriteBool();
    if (result)
    {
      v12 = specialized static REEncoder.Error.getStatus(_:)();
      v14 = v13;
      v16 = v15;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v17 = v12;
      *(v17 + 8) = v14;
      *(v17 + 16) = v16 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

{
  return KeyedEC.encode(_:forKey:)(a1, a2, MEMORY[0x1E69988E0]);
}

{
  v4 = v2;
  v6 = *v2;
  v7 = v2[2];
  v8 = v6;
  PrivateDecoder.terminateContainers(_:)(*(v4[3] + 16) + 1);
  v20 = *(v8 + 80);
  v18 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a2);
  PrivateEncoder.writeKey(_:)(v19);
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  if (!v3)
  {
    v11 = *(v7 + 16);
    result = REEncoderWriteInt8();
    if (result)
    {
      v12 = specialized static REEncoder.Error.getStatus(_:)();
      v14 = v13;
      v16 = v15;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v17 = v12;
      *(v17 + 8) = v14;
      *(v17 + 16) = v16 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

{
  v4 = v2;
  v6 = *v2;
  v7 = v2[2];
  v8 = v6;
  PrivateDecoder.terminateContainers(_:)(*(v4[3] + 16) + 1);
  v20 = *(v8 + 80);
  v18 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a2);
  PrivateEncoder.writeKey(_:)(v19);
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  if (!v3)
  {
    v11 = *(v7 + 16);
    result = REEncoderWriteInt16();
    if (result)
    {
      v12 = specialized static REEncoder.Error.getStatus(_:)();
      v14 = v13;
      v16 = v15;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v17 = v12;
      *(v17 + 8) = v14;
      *(v17 + 16) = v16 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

{
  return KeyedEC.encode(_:forKey:)(a1, a2, MEMORY[0x1E69988D8]);
}

{
  return KeyedEC.encode(_:forKey:)(a1, a2, MEMORY[0x1E69988F0]);
}

{
  v4 = v2;
  v6 = *v2;
  v7 = v2[2];
  v8 = v6;
  PrivateDecoder.terminateContainers(_:)(*(v4[3] + 16) + 1);
  v20 = *(v8 + 80);
  v18 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a2);
  PrivateEncoder.writeKey(_:)(v19);
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  if (!v3)
  {
    v11 = *(v7 + 16);
    result = REEncoderWriteUInt8();
    if (result)
    {
      v12 = specialized static REEncoder.Error.getStatus(_:)();
      v14 = v13;
      v16 = v15;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v17 = v12;
      *(v17 + 8) = v14;
      *(v17 + 16) = v16 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

{
  v4 = v2;
  v6 = *v2;
  v7 = v2[2];
  v8 = v6;
  PrivateDecoder.terminateContainers(_:)(*(v4[3] + 16) + 1);
  v20 = *(v8 + 80);
  v18 = v20;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v19);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a2);
  PrivateEncoder.writeKey(_:)(v19);
  result = __swift_destroy_boxed_opaque_existential_1(v19);
  if (!v3)
  {
    v11 = *(v7 + 16);
    result = REEncoderWriteUInt16();
    if (result)
    {
      v12 = specialized static REEncoder.Error.getStatus(_:)();
      v14 = v13;
      v16 = v15;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v17 = v12;
      *(v17 + 8) = v14;
      *(v17 + 16) = v16 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

{
  return KeyedEC.encode(_:forKey:)(a1, a2, MEMORY[0x1E69988E8]);
}

{
  return KeyedEC.encode(_:forKey:)(a1, a2);
}

{
  return KeyedEC.encode(_:forKey:)(a1, a2);
}

uint64_t KeyedEC.encode(_:forKey:)(uint64_t a1)
{
  v3 = v1;
  v5 = *v1;
  v6 = v1[2];
  v7 = v5;
  PrivateDecoder.terminateContainers(_:)(*(v3[3] + 16) + 1);
  v19 = *(v7 + 80);
  v17 = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, a1);
  PrivateEncoder.writeKey(_:)(v18);
  result = __swift_destroy_boxed_opaque_existential_1(v18);
  if (!v2)
  {
    v10 = *(v6 + 16);
    result = REEncoderWriteDouble();
    if (result)
    {
      v11 = specialized static REEncoder.Error.getStatus(_:)();
      v13 = v12;
      v15 = v14;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v16 = v11;
      *(v16 + 8) = v13;
      *(v16 + 16) = v15 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

{
  v3 = v1;
  v5 = *v1;
  v6 = v1[2];
  v7 = v5;
  PrivateDecoder.terminateContainers(_:)(*(v3[3] + 16) + 1);
  v19 = *(v7 + 80);
  v17 = v19;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v18);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_1, a1);
  PrivateEncoder.writeKey(_:)(v18);
  result = __swift_destroy_boxed_opaque_existential_1(v18);
  if (!v2)
  {
    v10 = *(v6 + 16);
    result = REEncoderWriteFloat();
    if (result)
    {
      v11 = specialized static REEncoder.Error.getStatus(_:)();
      v13 = v12;
      v15 = v14;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v16 = v11;
      *(v16 + 8) = v13;
      *(v16 + 16) = v15 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t KeyedEC.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = *v3;
  v8 = v3[2];
  v9 = v7;
  PrivateDecoder.terminateContainers(_:)(*(v5[3] + 16) + 1);
  v22 = *(v9 + 80);
  v20 = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, a3);
  PrivateEncoder.writeKey(_:)(v21);
  result = __swift_destroy_boxed_opaque_existential_1(v21);
  if (!v4)
  {
    v12 = *(v8 + 16);
    String.utf8CString.getter();
    v13 = REEncoderWriteString();

    if (v13)
    {
      v14 = specialized static REEncoder.Error.getStatus(_:)();
      v16 = v15;
      v18 = v17;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v19 = v14;
      *(v19 + 8) = v16;
      *(v19 + 16) = v18 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t KeyedEC.encode(_:forKey:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, const char *, uint64_t))
{
  v6 = v3;
  v9 = *v3;
  v10 = v3[2];
  v11 = v9;
  PrivateDecoder.terminateContainers(_:)(*(v6[3] + 16) + 1);
  v22 = *(v11 + 80);
  v20 = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, a2);
  PrivateEncoder.writeKey(_:)(v21);
  result = __swift_destroy_boxed_opaque_existential_1(v21);
  if (!v4)
  {
    result = a3(*(v10 + 16), "", a1);
    if (result)
    {
      v14 = specialized static REEncoder.Error.getStatus(_:)();
      v16 = v15;
      v18 = v17;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v19 = v14;
      *(v19 + 8) = v16;
      *(v19 + 16) = v18 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

{
  v6 = v3;
  v9 = *v3;
  v10 = v3[2];
  v11 = v9;
  PrivateDecoder.terminateContainers(_:)(*(v6[3] + 16) + 1);
  v22 = *(v11 + 80);
  v20 = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, a2);
  PrivateEncoder.writeKey(_:)(v21);
  result = __swift_destroy_boxed_opaque_existential_1(v21);
  if (!v4)
  {
    result = a3(*(v10 + 16), "", a1);
    if (result)
    {
      v14 = specialized static REEncoder.Error.getStatus(_:)();
      v16 = v15;
      v18 = v17;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v19 = v14;
      *(v19 + 8) = v16;
      *(v19 + 16) = v18 & 1;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t KeyedEC.encode<A>(_:forKey:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v36 = a4;
  v32 = a3;
  v26 = a1;
  v28 = *v4;
  v6 = *(v28 + 80);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - v12;
  v14 = v4[2];
  v31 = v15;
  PrivateDecoder.terminateContainers(_:)(*(*(v15 + 24) + 16) + 1);
  v27 = v7;
  v16 = *(v7 + 16);
  v29 = a2;
  v17 = v16;
  v16(v13, a2, v6);
  swift_beginAccess();
  v18 = *(v14 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v14 + 24) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
    *(v14 + 24) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
    *(v14 + 24) = v18;
  }

  v17(v10, v13, v6);
  v22 = *(v28 + 88);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v21, v10, (v14 + 24), v6, v22);
  (*(v27 + 8))(v13, v6);
  *(v14 + 24) = v18;
  swift_endAccess();
  v34 = v6;
  v35 = v22;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v33);
  v17(boxed_opaque_existential_1, v29, v6);
  v24 = v30;
  PrivateEncoder.writeKey(_:)(v33);
  if (!v24)
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
    v34 = type metadata accessor for PrivateEncoder();
    v35 = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateEncoder and conformance PrivateEncoder, type metadata accessor for PrivateEncoder);
    v33[0] = v14;

    dispatch thunk of Encodable.encode(to:)();
  }

  __swift_destroy_boxed_opaque_existential_1(v33);
  return $defer #1 <A><A1>() in KeyedEC.encode<A>(_:forKey:)(v31);
}

uint64_t KeyedEC.nestedContainer<A>(keyedBy:forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + 4);
  v4 = *v2;
  swift_beginAccess();
  outlined init with copy of [String : String]((v2 + 4), v22, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  if (v23)
  {
    outlined init with copy of __REAssetService(v22, v19);
    outlined destroy of BodyTrackingComponent?(v22, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
    v5 = v20;
    v6 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v22, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  }

  v7 = v2[2];
  v8 = v2[3];
  PrivateDecoder.terminateContainers(_:)(*(v8 + 16) + 1);
  v9 = *(v4 + 80);
  v10 = *(v4 + 88);
  v23 = v9;
  v24 = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v22);
  v12 = *(*(v9 - 8) + 16);
  v12(boxed_opaque_existential_1, a2, v9);
  PrivateEncoder.writeKey(_:)(v22);
  __swift_destroy_boxed_opaque_existential_1(v22);
  v13 = type metadata accessor for KeyedEC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = v9;
  *(inited + 64) = v10;
  v15 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  v12(v15, a2, v9);
  v22[0] = v8;

  specialized Array.append<A>(contentsOf:)(inited);
  v16 = KeyedEC.__allocating_init(encoder:codingPath:)(v7, v22[0]);
  v23 = v13;
  v24 = &protocol witness table for KeyedEC<A>;
  v22[0] = v16;
  swift_beginAccess();

  outlined assign with take of Terminatable?(v22, v3);
  swift_endAccess();
  v22[0] = v16;
  swift_getWitnessTable();
  return KeyedEncodingContainer.init<A>(_:)();
}

uint64_t KeyedEC.nestedUnkeyedContainer(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = (v2 + 4);
  v5 = *v2;
  swift_beginAccess();
  outlined init with copy of [String : String]((v2 + 4), v25, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  if (v26)
  {
    outlined init with copy of __REAssetService(v25, v22);
    outlined destroy of BodyTrackingComponent?(v25, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
    v6 = v23;
    v7 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v25, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  }

  v8 = v2[2];
  v9 = v2[3];
  PrivateDecoder.terminateContainers(_:)(*(v9 + 16) + 1);
  v11 = *(v5 + 88);
  v26 = *(v5 + 80);
  v10 = v26;
  v27 = v11;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
  v13 = *(*(v10 - 8) + 16);
  v13(boxed_opaque_existential_1, a1, v10);
  PrivateEncoder.writeKey(_:)(v25);
  __swift_destroy_boxed_opaque_existential_1(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  *(inited + 56) = v10;
  *(inited + 64) = v11;
  v15 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  v13(v15, a1, v10);
  v25[0] = v9;

  specialized Array.append<A>(contentsOf:)(inited);
  v16 = v25[0];
  v17 = type metadata accessor for UnkeyedEC();
  v18 = swift_allocObject();
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = 0u;
  *(v18 + 16) = v8;
  *(v18 + 24) = v16;
  if (*(v8 + 48) == 1)
  {
  }

  else
  {
    v19 = *(v8 + 16);

    REEncoderBeginContainer();
  }

  v26 = v17;
  v27 = &protocol witness table for UnkeyedEC;
  v25[0] = v18;
  swift_beginAccess();

  outlined assign with take of Terminatable?(v25, v4);
  swift_endAccess();
  a2[3] = v17;
  result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type UnkeyedEC and conformance UnkeyedEC, type metadata accessor for UnkeyedEC);
  a2[4] = result;
  *a2 = v18;
  return result;
}

uint64_t KeyedEC.superEncoder()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  v9 = *(v3 + 88);
  dispatch thunk of CodingKey.init(stringValue:)();
  v10 = *(v4 - 8);
  result = (*(v10 + 48))(v8, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    KeyedEC.superEncoder(forKey:)(v8, a1);
    return (*(v10 + 8))(v8, v4);
  }

  return result;
}

uint64_t KeyedEC.superEncoder(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[3];
  v7 = *(v2[2] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v9 = *(v5 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v5 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a1, v9);

  specialized Array.append<A>(contentsOf:)(inited);
  v11 = type metadata accessor for PrivateEncoder();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 40) = v13;
  *(v12 + 48) = 0;
  *(v12 + 16) = v7;
  *(v12 + 24) = v6;
  a2[3] = v11;
  result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateEncoder and conformance PrivateEncoder, type metadata accessor for PrivateEncoder);
  a2[4] = result;
  *a2 = v12;
  return result;
}

uint64_t KeyedEC.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  outlined destroy of BodyTrackingComponent?(v0 + 32, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  return v0;
}

uint64_t KeyedEC.__deallocating_deinit()
{
  KeyedEC.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedEC<A>(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  return KeyedEC.encode(_:forKey:)(a1, a2);
}

{
  v3 = *v2;
  return KeyedEC.encode(_:forKey:)(a1, a2);
}

{
  v3 = *v2;
  return KeyedEC.encode(_:forKey:)(a1, a2);
}

{
  v3 = *v2;
  return KeyedEC.encode(_:forKey:)(a1, a2);
}

{
  v3 = *v2;
  return KeyedEC.encode(_:forKey:)(a1, a2);
}

{
  v3 = *v2;
  return KeyedEC.encode(_:forKey:)(a1, a2);
}

{
  v3 = *v2;
  return KeyedEC.encode(_:forKey:)(a1, a2);
}

{
  return sub_1C136040C(a1, a2);
}

{
  return sub_1C1360430(a1, a2);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedEC<A>(uint64_t a1)
{
  v2 = *v1;
  return KeyedEC.encode(_:forKey:)(a1);
}

{
  v2 = *v1;
  return KeyedEC.encode(_:forKey:)(a1);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedEC<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E71F0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E71F8]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encode(_:forKey:) in conformance KeyedEC<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a4 + 80);
  v12 = *(a4 + 88);
  v13 = type metadata accessor for KeyedEC();
  return a6(a1, a2, a3, v13, a5);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 80);
  v4 = *(a3 + 88);
  type metadata accessor for KeyedEC();
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a4 + 80);
  v5 = *(a4 + 88);
  type metadata accessor for KeyedEC();
  return KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)();
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E7180]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E7190]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E71B8]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E7198]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, a5, MEMORY[0x1E69E71E0]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, MEMORY[0x1E69E7188]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, MEMORY[0x1E69E71B0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D8]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A0]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, MEMORY[0x1E69E71C0]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, MEMORY[0x1E69E71A8]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, MEMORY[0x1E69E71D0]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, a5, a6, MEMORY[0x1E69E71C8]);
}

{
  return protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(a1, a2, a3, a4, a5, a6, MEMORY[0x1E69E71E8]);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 80);
  v10 = *(a3 + 88);
  v11 = type metadata accessor for KeyedEC();
  return a5(a1 & 0x1FF, a2, v11, a4);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 80);
  v10 = *(a3 + 88);
  v11 = type metadata accessor for KeyedEC();
  return a5(a1 & 0x1FFFF, a2, v11, a4);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = *(a3 + 80);
  v10 = *(a3 + 88);
  v11 = type metadata accessor for KeyedEC();
  return a5(a1 | ((HIDWORD(a1) & 1) << 32), a2, v11, a4);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v11 = *(a4 + 80);
  v12 = *(a4 + 88);
  v13 = type metadata accessor for KeyedEC();
  return a6(a1, a2 & 1, a3, v13, a5);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:) in conformance KeyedEC<A>(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void, uint64_t, uint64_t, uint64_t))
{
  v13 = *(a5 + 80);
  v14 = *(a5 + 88);
  v15 = type metadata accessor for KeyedEC();
  return a7(a1, a2, a3 & 1, a4, v15, a6);
}

uint64_t protocol witness for KeyedEncodingContainerProtocol.encodeIfPresent<A>(_:forKey:) in conformance KeyedEC<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 80);
  v6 = *(a5 + 88);
  type metadata accessor for KeyedEC();
  return KeyedEncodingContainerProtocol.encodeIfPresent<A>(_:forKey:)();
}

uint64_t KeyedEC.terminate()(uint64_t (*a1)(void))
{
  swift_beginAccess();
  outlined init with copy of [String : String](v1 + 32, v10, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  if (v11)
  {
    outlined init with copy of __REAssetService(v10, v7);
    outlined destroy of BodyTrackingComponent?(v10, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
    v3 = v8;
    v4 = v9;
    __swift_project_boxed_opaque_existential_1(v7, v8);
    (*(v4 + 8))(v3, v4);
    result = __swift_destroy_boxed_opaque_existential_1(v7);
  }

  else
  {
    result = outlined destroy of BodyTrackingComponent?(v10, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  }

  v6 = *(v1 + 16);
  if ((*(v6 + 48) & 1) == 0)
  {
    return a1(*(v6 + 16));
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance UnkeyedEC.IndexedCodingKey@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  lazy protocol witness table accessor for type Int and conformance Int();
  result = BinaryInteger.description.getter();
  *a2 = a1;
  a2[1] = 0;
  a2[2] = result;
  a2[3] = v5;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UnkeyedEC.IndexedCodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UnkeyedEC.IndexedCodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEC.encodeNil()()
{
  v2 = v0 + 16;
  v1 = *(v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v2 + 8) + 16) + 1);
  v3 = *(v1 + 16);
  if (REEncoderWriteNil())
  {
    v4 = specialized static REEncoder.Error.getStatus(_:)();
    v6 = v5;
    v8 = v7;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v9 = v4;
    *(v9 + 8) = v6;
    *(v9 + 16) = v8 & 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEC.encode(_:)(Swift::Bool a1)
{
  v3 = v1 + 16;
  v2 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  if (REEncoderWriteBool())
  {
    v5 = specialized static REEncoder.Error.getStatus(_:)();
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEC.encode(_:)(Swift::Double a1)
{
  v3 = v1 + 16;
  v2 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  if (REEncoderWriteDouble())
  {
    v5 = specialized static REEncoder.Error.getStatus(_:)();
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEC.encode(_:)(Swift::Float a1)
{
  v3 = v1 + 16;
  v2 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  if (REEncoderWriteFloat())
  {
    v5 = specialized static REEncoder.Error.getStatus(_:)();
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEC.encode(_:)(Swift::Int8 a1)
{
  v3 = v1 + 16;
  v2 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  if (REEncoderWriteInt8())
  {
    v5 = specialized static REEncoder.Error.getStatus(_:)();
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEC.encode(_:)(Swift::Int16 a1)
{
  v3 = v1 + 16;
  v2 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  if (REEncoderWriteInt16())
  {
    v5 = specialized static REEncoder.Error.getStatus(_:)();
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEC.encode(_:)(Swift::UInt8 a1)
{
  v3 = v1 + 16;
  v2 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  if (REEncoderWriteUInt8())
  {
    v5 = specialized static REEncoder.Error.getStatus(_:)();
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    swift_willThrow();
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEC.encode(_:)(Swift::UInt16 a1)
{
  v3 = v1 + 16;
  v2 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  if (REEncoderWriteUInt16())
  {
    v5 = specialized static REEncoder.Error.getStatus(_:)();
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    swift_willThrow();
  }
}

uint64_t UnkeyedEC.encode(_:)(uint64_t a1, uint64_t (*a2)(void, const char *, uint64_t))
{
  v6 = v2 + 16;
  v5 = *(v2 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v6 + 8) + 16) + 1);
  result = a2(*(v5 + 16), "", a1);
  if (result)
  {
    v8 = specialized static REEncoder.Error.getStatus(_:)();
    v10 = v9;
    v12 = v11;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v13 = v8;
    *(v13 + 8) = v10;
    *(v13 + 16) = v12 & 1;
    return swift_willThrow();
  }

  return result;
}

{
  v6 = v2 + 16;
  v5 = *(v2 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v6 + 8) + 16) + 1);
  result = a2(*(v5 + 16), "", a1);
  if (result)
  {
    v8 = specialized static REEncoder.Error.getStatus(_:)();
    v10 = v9;
    v12 = v11;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v13 = v8;
    *(v13 + 8) = v10;
    *(v13 + 16) = v12 & 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t UnkeyedEC.encode<A>(_:)(void *a1)
{
  v3 = v1;
  v5 = v1[2];
  PrivateDecoder.terminateContainers(_:)(*(v1[3] + 16) + 1);
  v6 = v1[9];
  *&v18 = v6;
  lazy protocol witness table accessor for type Int and conformance Int();
  v7 = &v18;
  v8 = BinaryInteger.description.getter();
  v10 = *(v3 + 72);
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v7 = v8;
    v2 = v9;
    *(v3 + 72) = v12;
    swift_beginAccess();
    a1 = *(v5 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v5 + 24) = a1;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, a1[2] + 1, 1, a1);
  *(v5 + 24) = a1;
LABEL_3:
  v15 = a1[2];
  v14 = a1[3];
  if (v15 >= v14 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, a1);
  }

  v19 = &unk_1F40F4468;
  v20 = lazy protocol witness table accessor for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey();
  v16 = swift_allocObject();
  *&v18 = v16;
  *(v16 + 16) = v6;
  *(v16 + 24) = 0;
  *(v16 + 32) = v7;
  *(v16 + 40) = v2;
  a1[2] = v15 + 1;
  outlined init with take of ForceEffectBase(&v18, &a1[5 * v15 + 4]);
  *(v5 + 24) = a1;
  swift_endAccess();
  v19 = type metadata accessor for PrivateEncoder();
  v20 = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateEncoder and conformance PrivateEncoder, type metadata accessor for PrivateEncoder);
  *&v18 = v5;

  dispatch thunk of Encodable.encode(to:)();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  return $defer #1 <A><A1>() in KeyedEC.encode<A>(_:forKey:)(v3);
}

uint64_t UnkeyedEC.encode<A>(contentsOf:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v25[-v14];
  (*(v6 + 16))(v9, a1, a2, v13);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v25[31] == 2)
    {
      break;
    }

    v16 = *(v3 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v3 + 24) + 16) + 1);
    v17 = *(v16 + 16);
    if (REEncoderWriteBool())
    {
      v18 = specialized static REEncoder.Error.getStatus(_:)();
      v20 = v19;
      v22 = v21;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v23 = v18;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22 & 1;
      swift_willThrow();
      return (*(v11 + 8))(v15, AssociatedTypeWitness);
    }
  }

  return (*(v11 + 8))(v15, AssociatedTypeWitness);
}

{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v25[-v14];
  (*(v6 + 16))(v9, a1, a2, v13);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v25[24])
    {
      break;
    }

    v16 = *(v3 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v3 + 24) + 16) + 1);
    v17 = *(v16 + 16);
    if (REEncoderWriteDouble())
    {
      v18 = specialized static REEncoder.Error.getStatus(_:)();
      v20 = v19;
      v22 = v21;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v23 = v18;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22 & 1;
      swift_willThrow();
      return (*(v11 + 8))(v15, AssociatedTypeWitness);
    }
  }

  return (*(v11 + 8))(v15, AssociatedTypeWitness);
}

{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v25 - v14;
  (*(v6 + 16))(v9, a1, a2, v13);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v26)
    {
      break;
    }

    v16 = *(v3 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v3 + 24) + 16) + 1);
    v17 = *(v16 + 16);
    if (REEncoderWriteFloat())
    {
      v18 = specialized static REEncoder.Error.getStatus(_:)();
      v20 = v19;
      v22 = v21;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v23 = v18;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22 & 1;
      swift_willThrow();
      return (*(v11 + 8))(v15, AssociatedTypeWitness);
    }
  }

  return (*(v11 + 8))(v15, AssociatedTypeWitness);
}

{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v25[-v14];
  (*(v6 + 16))(v9, a1, a2, v13);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v25[31])
    {
      break;
    }

    v16 = *(v3 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v3 + 24) + 16) + 1);
    v17 = *(v16 + 16);
    if (REEncoderWriteInt8())
    {
      v18 = specialized static REEncoder.Error.getStatus(_:)();
      v20 = v19;
      v22 = v21;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v23 = v18;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22 & 1;
      swift_willThrow();
      return (*(v11 + 8))(v15, AssociatedTypeWitness);
    }
  }

  return (*(v11 + 8))(v15, AssociatedTypeWitness);
}

{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v25[-v14];
  (*(v6 + 16))(v9, a1, a2, v13);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v25[30])
    {
      break;
    }

    v16 = *(v3 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v3 + 24) + 16) + 1);
    v17 = *(v16 + 16);
    if (REEncoderWriteInt16())
    {
      v18 = specialized static REEncoder.Error.getStatus(_:)();
      v20 = v19;
      v22 = v21;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v23 = v18;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22 & 1;
      swift_willThrow();
      return (*(v11 + 8))(v15, AssociatedTypeWitness);
    }
  }

  return (*(v11 + 8))(v15, AssociatedTypeWitness);
}

{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v27 = *(AssociatedTypeWitness - 8);
  v11 = *(v27 + 64);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v25 - v13;
  (*(v6 + 16))(v9, a1, a2, v12);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of IteratorProtocol.next()();
  if (!v26)
  {
    return (*(v27 + 8))(v14, AssociatedTypeWitness);
  }

  while (1)
  {
    v15 = *(v3 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v3 + 24) + 16) + 1);
    v16 = *(v15 + 16);
    String.utf8CString.getter();
    v17 = REEncoderWriteString();

    if (v17)
    {
      break;
    }

    dispatch thunk of IteratorProtocol.next()();
    if (!v26)
    {
      return (*(v27 + 8))(v14, AssociatedTypeWitness);
    }
  }

  v19 = specialized static REEncoder.Error.getStatus(_:)();
  v21 = v20;
  v23 = v22;
  lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
  swift_allocError();
  *v24 = v19;
  *(v24 + 8) = v21;
  *(v24 + 16) = v23 & 1;
  swift_willThrow();
  (*(v27 + 8))(v14, AssociatedTypeWitness);
}

{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v25[-v14];
  (*(v6 + 16))(v9, a1, a2, v13);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v25[31])
    {
      break;
    }

    v16 = *(v3 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v3 + 24) + 16) + 1);
    v17 = *(v16 + 16);
    if (REEncoderWriteUInt8())
    {
      v18 = specialized static REEncoder.Error.getStatus(_:)();
      v20 = v19;
      v22 = v21;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v23 = v18;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22 & 1;
      swift_willThrow();
      return (*(v11 + 8))(v15, AssociatedTypeWitness);
    }
  }

  return (*(v11 + 8))(v15, AssociatedTypeWitness);
}

{
  v3 = v2;
  v6 = *(a2 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v25[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v25[-v14];
  (*(v6 + 16))(v9, a1, a2, v13);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v25[30])
    {
      break;
    }

    v16 = *(v3 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v3 + 24) + 16) + 1);
    v17 = *(v16 + 16);
    if (REEncoderWriteUInt16())
    {
      v18 = specialized static REEncoder.Error.getStatus(_:)();
      v20 = v19;
      v22 = v21;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v23 = v18;
      *(v23 + 8) = v20;
      *(v23 + 16) = v22 & 1;
      swift_willThrow();
      return (*(v11 + 8))(v15, AssociatedTypeWitness);
    }
  }

  return (*(v11 + 8))(v15, AssociatedTypeWitness);
}

uint64_t UnkeyedEC.encode<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3, MEMORY[0x1E69988E0]);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3, MEMORY[0x1E69988D8]);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3, MEMORY[0x1E69988F0]);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3, MEMORY[0x1E69988E8]);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3);
}

{
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3);
}

uint64_t UnkeyedEC.encode<A>(contentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int (*a4)(void, const char *, uint64_t))
{
  v6 = v4;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v28 = *(AssociatedTypeWitness - 8);
  v14 = *(v28 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = &v27 - v16;
  (*(v9 + 16))(v12, a1, a2, v15);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v30)
    {
      break;
    }

    v18 = v29;
    v19 = *(v6 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v6 + 24) + 16) + 1);
    if (a4(*(v19 + 16), "", v18))
    {
      v20 = specialized static REEncoder.Error.getStatus(_:)();
      v22 = v21;
      v24 = v23;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v25 = v20;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24 & 1;
      swift_willThrow();
      return (*(v28 + 8))(v17, AssociatedTypeWitness);
    }
  }

  return (*(v28 + 8))(v17, AssociatedTypeWitness);
}

{
  v6 = v4;
  v9 = *(a2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v29 = *(AssociatedTypeWitness - 8);
  v14 = *(v29 + 64);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = v27 - v16;
  (*(v9 + 16))(v12, a1, a2, v15);
  dispatch thunk of Sequence.makeIterator()();
  swift_getAssociatedConformanceWitness();
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (v28)
    {
      break;
    }

    v18 = v27[2];
    v19 = *(v6 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v6 + 24) + 16) + 1);
    if (a4(*(v19 + 16), "", v18))
    {
      v20 = specialized static REEncoder.Error.getStatus(_:)();
      v22 = v21;
      v24 = v23;
      lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
      swift_allocError();
      *v25 = v20;
      *(v25 + 8) = v22;
      *(v25 + 16) = v24 & 1;
      swift_willThrow();
      return (*(v29 + 8))(v17, AssociatedTypeWitness);
    }
  }

  return (*(v29 + 8))(v17, AssociatedTypeWitness);
}

uint64_t UnkeyedEC.encode<A>(contentsOf:)(uint64_t a1, uint64_t a2, char *a3, uint64_t a4)
{
  v34 = a4;
  v36 = a1;
  v35 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v30 = *(AssociatedTypeWitness - 8);
  v7 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v9 = (&v29 - v8);
  v10 = type metadata accessor for Optional();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v29 - v12;
  v14 = *(a2 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_getAssociatedTypeWitness();
  v31 = *(v19 - 8);
  v20 = *(v31 + 64);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v29 - v22;
  (*(v14 + 16))(v18, v36, a2, v21);
  dispatch thunk of Sequence.makeIterator()();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v35 = v23;
  v25 = v30;
  v36 = v19;
  v33 = AssociatedConformanceWitness;
  dispatch thunk of IteratorProtocol.next()();
  v32 = *(v25 + 48);
  if (v32(v13, 1, AssociatedTypeWitness) != 1)
  {
    v26 = *(v25 + 32);
    v27 = (v25 + 8);
    while (1)
    {
      v26(v9, v13, AssociatedTypeWitness);
      UnkeyedEC.encode<A>(_:)(v9);
      if (v4)
      {
        break;
      }

      (*v27)(v9, AssociatedTypeWitness);
      dispatch thunk of IteratorProtocol.next()();
      if (v32(v13, 1, AssociatedTypeWitness) == 1)
      {
        return (*(v31 + 8))(v35, v36);
      }
    }

    (*v27)(v9, AssociatedTypeWitness);
  }

  return (*(v31 + 8))(v35, v36);
}

uint64_t UnkeyedEC.nestedContainer<A>(keyedBy:)()
{
  v1 = v0;
  swift_beginAccess();
  outlined init with copy of [String : String]((v0 + 4), v20, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  if (v21)
  {
    outlined init with copy of __REAssetService(v20, v17);
    outlined destroy of BodyTrackingComponent?(v20, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
    v2 = v18;
    v3 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v3 + 8))(v2, v3);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v20, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  }

  v4 = v0[2];
  v5 = v0[3];
  PrivateDecoder.terminateContainers(_:)(*(v5 + 16) + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v7 = v0[9];
  v20[0] = v7;
  lazy protocol witness table accessor for type Int and conformance Int();

  result = BinaryInteger.description.getter();
  v10 = v0[9];
  v11 = v10 + 1;
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = result;
    v13 = v9;
    v14 = type metadata accessor for KeyedEC();
    v1[9] = v11;
    *(inited + 56) = &unk_1F40F4468;
    *(inited + 64) = lazy protocol witness table accessor for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = v7;
    *(v15 + 24) = 0;
    *(v15 + 32) = v12;
    *(v15 + 40) = v13;
    v20[0] = v5;
    specialized Array.append<A>(contentsOf:)(inited);
    v16 = KeyedEC.__allocating_init(encoder:codingPath:)(v4, v20[0]);
    v21 = v14;
    v22 = &protocol witness table for KeyedEC<A>;
    v20[0] = v16;
    swift_beginAccess();

    outlined assign with take of Terminatable?(v20, (v1 + 4));
    swift_endAccess();
    v20[0] = v16;
    swift_getWitnessTable();
    return KeyedEncodingContainer.init<A>(_:)();
  }

  return result;
}

uint64_t UnkeyedEC.nestedUnkeyedContainer()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  outlined init with copy of [String : String]((v1 + 4), v25, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  if (v26)
  {
    outlined init with copy of __REAssetService(v25, v22);
    outlined destroy of BodyTrackingComponent?(v25, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
    v4 = v23;
    v5 = v24;
    __swift_project_boxed_opaque_existential_1(v22, v23);
    (*(v5 + 8))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v22);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v25, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  }

  v6 = v1[2];
  v7 = v1[3];
  PrivateDecoder.terminateContainers(_:)(*(v7 + 16) + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v9 = v1[9];
  v25[0] = v9;
  lazy protocol witness table accessor for type Int and conformance Int();

  result = BinaryInteger.description.getter();
  v12 = v1[9];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    v15 = result;
    v16 = v11;
    v2[9] = v14;
    *(inited + 56) = &unk_1F40F4468;
    *(inited + 64) = lazy protocol witness table accessor for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey();
    v17 = swift_allocObject();
    *(inited + 32) = v17;
    *(v17 + 16) = v9;
    *(v17 + 24) = 0;
    *(v17 + 32) = v15;
    *(v17 + 40) = v16;
    v25[0] = v7;
    specialized Array.append<A>(contentsOf:)(inited);
    v18 = v25[0];
    v19 = type metadata accessor for UnkeyedEC();
    v20 = swift_allocObject();
    *(v20 + 32) = 0u;
    *(v20 + 48) = 0u;
    *(v20 + 64) = 0u;
    *(v20 + 16) = v6;
    *(v20 + 24) = v18;
    if (*(v6 + 48) == 1)
    {
    }

    else
    {
      v21 = *(v6 + 16);

      REEncoderBeginContainer();
    }

    v26 = v19;
    v27 = &protocol witness table for UnkeyedEC;
    v25[0] = v20;
    swift_beginAccess();

    outlined assign with take of Terminatable?(v25, (v2 + 4));
    swift_endAccess();
    a1[3] = v19;
    result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type UnkeyedEC and conformance UnkeyedEC, type metadata accessor for UnkeyedEC);
    a1[4] = result;
    *a1 = v20;
  }

  return result;
}

uint64_t UnkeyedEC.superEncoder()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = v1[3];
  v5 = *(v1[2] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v7 = v1[9];
  lazy protocol witness table accessor for type Int and conformance Int();

  result = BinaryInteger.description.getter();
  v10 = v1[9];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    v13 = result;
    v14 = v9;
    v2[9] = v12;
    *(inited + 56) = &unk_1F40F4468;
    *(inited + 64) = lazy protocol witness table accessor for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = v7;
    *(v15 + 24) = 0;
    *(v15 + 32) = v13;
    *(v15 + 40) = v14;
    specialized Array.append<A>(contentsOf:)(inited);
    v16 = v4;
    v17 = type metadata accessor for PrivateEncoder();
    v18 = swift_allocObject();
    v19 = MEMORY[0x1E69E7CC0];
    *(v18 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
    *(v18 + 40) = v19;
    *(v18 + 48) = 0;
    *(v18 + 16) = v5;
    *(v18 + 24) = v16;
    a1[3] = v17;
    result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateEncoder and conformance PrivateEncoder, type metadata accessor for PrivateEncoder);
    a1[4] = result;
    *a1 = v18;
  }

  return result;
}

uint64_t UnkeyedEC.__deallocating_deinit()
{
  return UnkeyedEC.__deallocating_deinit();
}

{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  outlined destroy of BodyTrackingComponent?(v0 + 32, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode(_:) in conformance UnkeyedEC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v1 + 24) + 16) + 1);
  v3 = *(*(v1 + 16) + 16);
  String.utf8CString.getter();
  v4 = REEncoderWriteString();

  if (v4)
  {
    v6 = specialized static REEncoder.Error.getStatus(_:)();
    v8 = v7;
    v10 = v9;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v11 = v6;
    *(v11 + 8) = v8;
    *(v11 + 16) = v10 & 1;
    return swift_willThrow();
  }

  return result;
}

{
  return UnkeyedEncodingContainer.encode(_:)();
}

{
  return UnkeyedEncodingContainer.encode(_:)();
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode<A>(contentsOf:) in conformance UnkeyedEC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2);
}

{
  v3 = *v2;
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2);
}

{
  v3 = *v2;
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2);
}

{
  v3 = *v2;
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2);
}

{
  v3 = *v2;
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2);
}

{
  v3 = *v2;
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2);
}

{
  v3 = *v2;
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2);
}

{
  v3 = *v2;
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode<A>(contentsOf:) in conformance UnkeyedEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *v3;
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3);
}

{
  v4 = *v3;
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3);
}

{
  return sub_1C13604C0(a1, a2, a3);
}

{
  return sub_1C13604E4(a1, a2, a3);
}

uint64_t protocol witness for UnkeyedEncodingContainer.encode<A>(contentsOf:) in conformance UnkeyedEC(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = *v3;
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3, MEMORY[0x1E69E7578]);
}

{
  v4 = *v3;
  return UnkeyedEC.encode<A>(contentsOf:)(a1, a2, a3, MEMORY[0x1E69E77C0]);
}

uint64_t SingleValueEC.encode<A>(_:)()
{
  v1 = *(v0 + 16);
  v3[3] = type metadata accessor for PrivateEncoder();
  v3[4] = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateEncoder and conformance PrivateEncoder, type metadata accessor for PrivateEncoder);
  v3[0] = v1;

  dispatch thunk of Encodable.encode(to:)();
  return __swift_destroy_boxed_opaque_existential_1(v3);
}

uint64_t protocol witness for SingleValueEncodingContainer.encodeNil() in conformance SingleValueEC()
{
  v1 = *(*(*v0 + 16) + 16);
  result = REEncoderWriteNil();
  if (result)
  {
    v3 = specialized static REEncoder.Error.getStatus(_:)();
    v5 = v4;
    v7 = v6;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7 & 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueEC()
{
  v1 = *(*(*v0 + 16) + 16);
  result = REEncoderWriteBool();
  if (result)
  {
    v3 = specialized static REEncoder.Error.getStatus(_:)();
    v5 = v4;
    v7 = v6;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7 & 1;
    return swift_willThrow();
  }

  return result;
}

{
  v1 = *(*(*v0 + 16) + 16);
  String.utf8CString.getter();
  v2 = REEncoderWriteString();

  if (v2)
  {
    v4 = specialized static REEncoder.Error.getStatus(_:)();
    v6 = v5;
    v8 = v7;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v9 = v4;
    *(v9 + 8) = v6;
    *(v9 + 16) = v8 & 1;
    return swift_willThrow();
  }

  return result;
}

{
  v1 = *(*(*v0 + 16) + 16);
  result = REEncoderWriteDouble();
  if (result)
  {
    v3 = specialized static REEncoder.Error.getStatus(_:)();
    v5 = v4;
    v7 = v6;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7 & 1;
    return swift_willThrow();
  }

  return result;
}

{
  v1 = *(*(*v0 + 16) + 16);
  result = REEncoderWriteFloat();
  if (result)
  {
    v3 = specialized static REEncoder.Error.getStatus(_:)();
    v5 = v4;
    v7 = v6;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7 & 1;
    return swift_willThrow();
  }

  return result;
}

{
  v1 = *(*(*v0 + 16) + 16);
  result = REEncoderWriteInt8();
  if (result)
  {
    v3 = specialized static REEncoder.Error.getStatus(_:)();
    v5 = v4;
    v7 = v6;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7 & 1;
    return swift_willThrow();
  }

  return result;
}

{
  v1 = *(*(*v0 + 16) + 16);
  result = REEncoderWriteInt16();
  if (result)
  {
    v3 = specialized static REEncoder.Error.getStatus(_:)();
    v5 = v4;
    v7 = v6;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7 & 1;
    return swift_willThrow();
  }

  return result;
}

{
  return SingleValueEncodingContainer.encode(_:)();
}

{
  v1 = *(*(*v0 + 16) + 16);
  result = REEncoderWriteUInt8();
  if (result)
  {
    v3 = specialized static REEncoder.Error.getStatus(_:)();
    v5 = v4;
    v7 = v6;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7 & 1;
    return swift_willThrow();
  }

  return result;
}

{
  v1 = *(*(*v0 + 16) + 16);
  result = REEncoderWriteUInt16();
  if (result)
  {
    v3 = specialized static REEncoder.Error.getStatus(_:)();
    v5 = v4;
    v7 = v6;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7 & 1;
    return swift_willThrow();
  }

  return result;
}

{
  return SingleValueEncodingContainer.encode(_:)();
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueEC(a1, a2, a3, MEMORY[0x1E69988D8]);
}

{
  return protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueEC(a1, a2, a3, MEMORY[0x1E69988E8]);
}

{
  return sub_1C1360508(a1, a2, a3);
}

{
  return sub_1C1360534(a1, a2, a3);
}

uint64_t protocol witness for SingleValueEncodingContainer.encode(_:) in conformance SingleValueEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, const char *, uint64_t))
{
  result = a4(*(*(*v4 + 16) + 16), "", a1);
  if (result)
  {
    v6 = specialized static REEncoder.Error.getStatus(_:)();
    v8 = v7;
    v10 = v9;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v11 = v6;
    *(v11 + 8) = v8;
    *(v11 + 16) = v10 & 1;
    return swift_willThrow();
  }

  return result;
}

{
  result = a4(*(*(*v4 + 16) + 16), "", a1);
  if (result)
  {
    v6 = specialized static REEncoder.Error.getStatus(_:)();
    v8 = v7;
    v10 = v9;
    lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error();
    swift_allocError();
    *v11 = v6;
    *(v11 + 8) = v8;
    *(v11 + 16) = v10 & 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t REDecoder.__deallocating_deinit()
{
  v1 = *(v0 + 16);
  REDecoderDestroy();

  return swift_deallocClassInstance();
}

uint64_t REDecoder.decode<A>(_:from:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  type metadata accessor for PrivateDecoder();
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v6 + 40) = v7;
  *(v6 + 48) = 0;
  *(v6 + 16) = v5;
  *(v6 + 24) = v7;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v9 = REDecoderSetFromCFData();

  if (v9 || REDecoderOpen())
  {
    v10 = specialized static REDecoder.Error.getStatus(_:)();
    v12 = v11;
    v14 = v13;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v15 = v10;
    *(v15 + 8) = v12;
    *(v15 + 16) = v14 & 1;
    swift_willThrow();
  }

  else
  {
    lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateDecoder and conformance PrivateDecoder, type metadata accessor for PrivateDecoder);

    dispatch thunk of Decodable.init(from:)();
    if (!v23)
    {
      PrivateDecoder.terminateContainers(_:)(0);
      if (REDecoderClose())
      {
        v17 = specialized static REDecoder.Error.getStatus(_:)();
        v19 = v18;
        v21 = v20;
        lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
        swift_allocError();
        *v22 = v17;
        *(v22 + 8) = v19;
        *(v22 + 16) = v21 & 1;
        swift_willThrow();

        return (*(*(a1 - 8) + 8))(a2, a1);
      }
    }
  }
}

uint64_t PrivateEncoder.terminateContainers(_:)(uint64_t a1)
{
  v2 = v1;
  result = swift_beginAccess();
  v5 = *(v1 + 40);
  v6 = v5[2];
  if (v6 > a1)
  {
    while (1)
    {
      result = swift_beginAccess();
      if (!v6)
      {
        break;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 40) = v5;
      if (result)
      {
        v7 = v5[2];
        if (!v7)
        {
          goto LABEL_8;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v5);
        v5 = result;
        v7 = *(result + 16);
        if (!v7)
        {
LABEL_8:
          __break(1u);
          return result;
        }
      }

      v5[2] = v7 - 1;
      *(v2 + 40) = v5;
      v8 = &v5[6 * v7];
      v9 = *(v8 - 1);
      v10 = *v8;
      *&v14[9] = *(v8 + 9);
      v13 = v9;
      *v14 = v10;
      swift_endAccess();
      v11 = *&v14[8];
      v12 = *&v14[16];
      __swift_project_boxed_opaque_existential_1(&v13, *&v14[8]);
      (*(v12 + 8))(v11, v12);
      result = __swift_destroy_boxed_opaque_existential_1(&v13);
      v5 = *(v2 + 40);
      v6 = v5[2];
      if (v6 <= a1)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t PrivateDecoder.decode(_:)()
{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 16);
  if (REDecoderReadString())
  {
    v2 = specialized static REDecoder.Error.getStatus(_:)();
    v4 = v3;
    v6 = v5;
  }

  else
  {
    v4 = 0x80000001C18E1640;
    v6 = 1;
    v2 = 0xD000000000000017;
  }

  lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
  swift_allocError();
  *v7 = v2;
  *(v7 + 8) = v4;
  *(v7 + 16) = v6 & 1;
  result = swift_willThrow();
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t PrivateDecoder.container<A>(keyedBy:)()
{
  v2 = v1;
  v3 = v0;
  swift_beginAccess();
  PrivateDecoder.terminateContainers(_:)(*(*(v0 + 24) + 16) + 1);
  swift_beginAccess();
  v4 = *(v0 + 40);
  v5 = *(v4 + 16);
  v6 = *(v0 + 24);
  if (*(v6 + 16) >= v5)
  {
    v7 = 0;
  }

  else
  {
    outlined init with copy of [String : String](v4 + 48 * v5 - 16, &v23, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMR);
    v7 = v24[24];
    outlined init with take of ForceEffectBase(&v23, &v19);
    v22 = v7;
    outlined destroy of BodyTrackingComponent?(&v19, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMR);
    v6 = *(v0 + 24);
  }

  *(v0 + 48) = v7;
  PrivateDecoder.terminateContainers(_:)(*(v6 + 16));
  v8 = type metadata accessor for KeyedDC();
  v9 = *(v3 + 24);

  v10 = specialized KeyedDC.__allocating_init(decoder:codingPath:)(v3, v9);

  if (!v2)
  {
    *(v3 + 48) = 0;
    v20 = v8;
    v21 = &protocol witness table for KeyedDC<A>;
    *&v19 = v10;
    outlined init with take of ForceEffectBase(&v19, &v23);
    v24[24] = 1;
    swift_beginAccess();
    v12 = *(v3 + 40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v3 + 40) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12[2] + 1, 1, v12);
      *(v3 + 40) = v12;
    }

    v15 = v12[2];
    v14 = v12[3];
    if (v15 >= v14 >> 1)
    {
      v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
    }

    v12[2] = v15 + 1;
    v16 = &v12[6 * v15];
    v17 = v23;
    v18 = *v24;
    *(v16 + 57) = *&v24[9];
    v16[2] = v17;
    v16[3] = v18;
    *(v3 + 40) = v12;
    swift_endAccess();
    *&v23 = v10;
    swift_getWitnessTable();
    return KeyedDecodingContainer.init<A>(_:)();
  }

  return result;
}

uint64_t PrivateDecoder.unkeyedContainer()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v2;
  swift_beginAccess();
  PrivateDecoder.terminateContainers(_:)(*(*(v1 + 24) + 16) + 1);
  swift_beginAccess();
  v5 = *(v1 + 40);
  v6 = *(v5 + 16);
  v7 = *(v1 + 24);
  if (*(v7 + 16) >= v6)
  {
    v9 = 0;
  }

  else
  {
    outlined init with copy of [String : String](v5 + 48 * v6 - 16, &v25, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMR);
    v8 = v26[24];
    outlined init with take of ForceEffectBase(&v25, &v21);
    v24 = v8;
    outlined destroy of BodyTrackingComponent?(&v21, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_p_Sb5keyedtMR);
    v9 = v8 ^ 1;
    v7 = *(v1 + 24);
  }

  *(v1 + 48) = v9;
  PrivateDecoder.terminateContainers(_:)(*(v7 + 16));
  v10 = *(v1 + 24);

  v11 = specialized UnkeyedDC.__allocating_init(decoder:codingPath:)(v1, v10);

  if (!v3)
  {
    *(v1 + 48) = 0;
    v13 = type metadata accessor for UnkeyedDC();
    v22 = v13;
    v23 = &protocol witness table for UnkeyedDC;
    *&v21 = v11;
    outlined init with take of ForceEffectBase(&v21, &v25);
    v26[24] = 0;
    swift_beginAccess();
    v14 = *(v1 + 40);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 40) = v14;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
      *(v1 + 40) = v14;
    }

    v17 = v14[2];
    v16 = v14[3];
    if (v17 >= v16 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
    }

    v14[2] = v17 + 1;
    v18 = &v14[6 * v17];
    v19 = v25;
    v20 = *v26;
    *(v18 + 57) = *&v26[9];
    v18[2] = v19;
    v18[3] = v20;
    *(v1 + 40) = v14;
    swift_endAccess();
    a1[3] = v13;
    result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type UnkeyedDC and conformance UnkeyedDC, type metadata accessor for UnkeyedDC);
    a1[4] = result;
    *a1 = v11;
  }

  return result;
}

uint64_t PrivateEncoder.__deallocating_deinit()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t protocol witness for Encoder.codingPath.getter in conformance PrivateEncoder()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 24);
}

uint64_t protocol witness for Decoder.singleValueContainer() in conformance PrivateDecoder@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  v5 = type metadata accessor for SingleValueDC();
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v4;
  a1[3] = v5;
  a1[4] = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type SingleValueDC and conformance SingleValueDC, type metadata accessor for SingleValueDC);
  *a1 = v6;
}

uint64_t KeyedDC.allKeys.getter()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = KeyedDC._allKeys.getter();
    v2 = *(v0 + 72);
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t KeyedDC._allKeys.getter()
{
  v1 = v0;
  v98 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  v3 = *(*v0 + 80);
  v89 = type metadata accessor for Optional();
  v4 = *(v89 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v89);
  v7 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v77 - v9;
  v10 = *(v3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v79 = &v77 - v17;
  v96 = static Array._allocateUninitialized(_:)();
  v18 = v0[2];
  v19 = *(v18 + 16);
  v20 = REDecoderContainerElementCount();
  v78 = v2;
  if (v20)
  {
    type metadata accessor for OS_os_log();
    v21 = static OS_os_log.default.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = v1;
      v24 = swift_slowAlloc();
      *v24 = 134217984;
      *(v24 + 4) = v20;
      _os_log_impl(&dword_1C1358000, v21, v22, "Warning: Dictionary contains an odd number of elements: %ld", v24, 0xCu);
      v25 = v24;
      v1 = v23;
      MEMORY[0x1C6902A30](v25, -1, -1);
    }

    v2 = v78;
  }

  v26 = v20 / 2;
  v87 = type metadata accessor for Array();
  Array.reserveCapacity(_:)(v20 / 2);
  if (v20 < -1)
  {
    goto LABEL_44;
  }

  if ((v20 + 1) < 3)
  {
LABEL_7:
    result = v96;
    v28 = *MEMORY[0x1E69E9840];
    return result;
  }

  v29 = v4;
  v30 = 0;
  v91 = v20 / 2;
  v92 = (v10 + 48);
  v85 = (v10 + 16);
  v86 = (v10 + 32);
  v81 = (v10 + 8);
  v82 = v7;
  v83 = v18;
  v84 = (v29 + 8);
  while (1)
  {
    if (v26 == v30)
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
    }

    v94 = -1;
    v95 = 0;
    v97 = 0;
    v31 = *(v18 + 16);
    REDecoderContainerGetKeyAndOffset();
    if (!v97)
    {
      v36 = *(v2 + 88);
      v37 = v80;
      dispatch thunk of CodingKey.init(intValue:)();
      if ((*v92)(v37, 1, v3) == 1)
      {
        (*v84)(v37, v89);
      }

      else
      {
        v38 = v79;
        (*v86)(v79, v37, v3);
        (*v85)(v88, v38, v3);
        Array.append(_:)();
        v39 = v94;
        v40 = v95;
        swift_beginAccess();
        v41 = v1[10];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v93 = v1[10];
        v43 = v93;
        v1[10] = 0x8000000000000000;
        v44 = specialized __RawDictionaryStorage.find<A>(_:)(v40);
        v46 = v43[2];
        v47 = (v45 & 1) == 0;
        v48 = __OFADD__(v46, v47);
        v49 = v46 + v47;
        if (v48)
        {
          goto LABEL_41;
        }

        v50 = v45;
        if (v43[3] >= v49)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v75 = v1;
            v76 = v44;
            specialized _NativeDictionary.copy()();
            v44 = v76;
            v1 = v75;
            v2 = v78;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v49, isUniquelyReferenced_nonNull_native);
          v44 = specialized __RawDictionaryStorage.find<A>(_:)(v40);
          if ((v50 & 1) != (v51 & 1))
          {
            goto LABEL_46;
          }
        }

        v18 = v83;
        v72 = v93;
        if (v50)
        {
          *(v93[7] + 8 * v44) = v39;
        }

        else
        {
          v93[(v44 >> 6) + 8] |= 1 << v44;
          *(v72[6] + 8 * v44) = v40;
          *(v72[7] + 8 * v44) = v39;
          v73 = v72[2];
          v48 = __OFADD__(v73, 1);
          v74 = v73 + 1;
          if (v48)
          {
            goto LABEL_43;
          }

          v72[2] = v74;
        }

        v1[10] = v72;
        swift_endAccess();
        (*v81)(v79, v3);
        v7 = v82;
      }

      goto LABEL_10;
    }

    v32 = String.init(cString:)();
    v34 = v33;

    v35 = *(v2 + 88);
    dispatch thunk of CodingKey.init(stringValue:)();
    if ((*v92)(v7, 1, v3) == 1)
    {

      (*v84)(v7, v89);
      goto LABEL_11;
    }

    v52 = v90;
    (*v86)(v90, v7, v3);
    (*v85)(v88, v52, v3);
    Array.append(_:)();
    v53 = v94;
    swift_beginAccess();
    v54 = v1[11];
    v55 = swift_isUniquelyReferenced_nonNull_native();
    v56 = v1;
    v57 = v55;
    v93 = v56[11];
    v58 = v93;
    v59 = v56;
    v56[11] = 0x8000000000000000;
    v61 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v34);
    v62 = v58[2];
    v63 = (v60 & 1) == 0;
    v64 = v62 + v63;
    if (__OFADD__(v62, v63))
    {
      goto LABEL_40;
    }

    v65 = v60;
    if (v58[3] >= v64)
    {
      if ((v57 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }

      goto LABEL_27;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v64, v57);
    v66 = specialized __RawDictionaryStorage.find<A>(_:)(v32, v34);
    if ((v65 & 1) != (v67 & 1))
    {
      break;
    }

    v61 = v66;
LABEL_27:
    v1 = v59;
    v2 = v78;
    if (v65)
    {

      v68 = v93;
      *(v93[7] + 8 * v61) = v53;
    }

    else
    {
      v68 = v93;
      v93[(v61 >> 6) + 8] |= 1 << v61;
      v69 = (v68[6] + 16 * v61);
      *v69 = v32;
      v69[1] = v34;
      *(v68[7] + 8 * v61) = v53;
      v70 = v68[2];
      v48 = __OFADD__(v70, 1);
      v71 = v70 + 1;
      if (v48)
      {
        goto LABEL_42;
      }

      v68[2] = v71;
    }

    v1[11] = v68;
    swift_endAccess();
    (*v81)(v90, v3);
    v7 = v82;
    v18 = v83;
LABEL_10:
    v26 = v91;
LABEL_11:
    if (v26 == ++v30)
    {
      goto LABEL_7;
    }
  }

  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_46:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t KeyedDC.contains(_:)()
{
  v1 = *v0;
  KeyedDC.allKeys.getter();

  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  v4 = dispatch thunk of CodingKey.intValue.getter();
  v6 = v5;
  v7 = dispatch thunk of CodingKey.stringValue.getter();
  v9 = v8;
  if ((v6 & 1) == 0)
  {

    swift_beginAccess();
    if (*(v0[10] + 16))
    {
      specialized __RawDictionaryStorage.find<A>(_:)(v4);
      v13 = v14;
      return v13 & 1;
    }

LABEL_7:
    v13 = 0;
    return v13 & 1;
  }

  v10 = v7;
  swift_beginAccess();
  if (!*(v0[11] + 16))
  {

    goto LABEL_7;
  }

  v11 = v0[11];

  specialized __RawDictionaryStorage.find<A>(_:)(v10, v9);
  v13 = v12;

  return v13 & 1;
}

uint64_t KeyedDC.readKey(_:)()
{
  v1 = v0;
  v2 = *v0;
  KeyedDC.allKeys.getter();

  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  v5 = dispatch thunk of CodingKey.intValue.getter();
  v7 = v6;
  v8 = dispatch thunk of CodingKey.stringValue.getter();
  v10 = v9;
  if (v7)
  {
    swift_beginAccess();
    v11 = v0[11];
    if (*(v11 + 16))
    {
      v12 = v1[11];

      v13 = specialized __RawDictionaryStorage.find<A>(_:)(v8, v10);
      if (v14)
      {
        v15 = v13;

        v16 = *(*(v11 + 56) + 8 * v15);

        v17 = *(v1[2] + 16);
        return REDecoderContainerSetOffset();
      }
    }

    type metadata accessor for OS_os_log();

    v30 = static OS_os_log.default.getter();
    v31 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v37 = v33;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v37);
      _os_log_impl(&dword_1C1358000, v30, v31, "Warning: Dictionary does not contain key: %s", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1C6902A30](v33, -1, -1);
      MEMORY[0x1C6902A30](v32, -1, -1);
    }

    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(46);

    v37 = 0xD00000000000002BLL;
    v38 = 0x80000001C18E16B0;
  }

  else
  {
    swift_beginAccess();
    v18 = v0[10];
    if (*(v18 + 16))
    {
      v19 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v20)
      {
        v21 = v19;

        v22 = *(*(v18 + 56) + 8 * v21);
        v23 = *(v1[2] + 16);
        return REDecoderContainerSetOffset();
      }
    }

    type metadata accessor for OS_os_log();
    v25 = static OS_os_log.default.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v37 = v28;
      *v27 = 134218242;
      *(v27 + 4) = v5;
      *(v27 + 12) = 2080;
      *(v27 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v37);
      _os_log_impl(&dword_1C1358000, v25, v26, "Warning: Dictionary does not contain key: %ld %s", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1C6902A30](v28, -1, -1);
      MEMORY[0x1C6902A30](v27, -1, -1);
    }

    v37 = 0;
    v38 = 0xE000000000000000;
    _StringGuts.grow(_:)(49);

    v37 = 0xD00000000000002ALL;
    v38 = 0x80000001C18E16E0;
    v29 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1C68F3410](v29);

    MEMORY[0x1C68F3410](8736, 0xE200000000000000);
  }

  MEMORY[0x1C68F3410](v8, v10);

  MEMORY[0x1C68F3410](34, 0xE100000000000000);
  v34 = v37;
  v35 = v38;
  lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
  swift_allocError();
  *v36 = v34;
  *(v36 + 8) = v35;
  *(v36 + 16) = 1;
  return swift_willThrow();
}

uint64_t KeyedDC.decodeNil(forKey:)()
{
  v2 = *(v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v0 + 24) + 16) + 1);
  Nil = KeyedDC.readKey(_:)();
  if (!v1)
  {
    v4 = *(v2 + 16);
    Nil = REDecoderTryReadNil();
  }

  return Nil & 1;
}

uint64_t KeyedDC.decode(_:forKey:)()
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v0 + 24) + 16) + 1);
  KeyedDC.readKey(_:)();
  if (!v1)
  {
    v4 = *(v2 + 16);
    if (REDecoderReadBool())
    {
      v5 = specialized static REDecoder.Error.getStatus(_:)();
      v7 = v6;
      v9 = v8;
      lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
      swift_allocError();
      *v10 = v5;
      *(v10 + 8) = v7;
      *(v10 + 16) = v9 & 1;
      swift_willThrow();
    }

    else
    {
      v3 = 0;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v3 & 1;
}

{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v0 + 24) + 16) + 1);
  result = KeyedDC.readKey(_:)();
  if (!v1)
  {
    v4 = *(v2 + 16);
    result = REDecoderReadDouble();
    if (result)
    {
      v5 = specialized static REDecoder.Error.getStatus(_:)();
      v7 = v6;
      v9 = v8;
      lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
      swift_allocError();
      *v10 = v5;
      *(v10 + 8) = v7;
      *(v10 + 16) = v9 & 1;
      result = swift_willThrow();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v0 + 24) + 16) + 1);
  result = KeyedDC.readKey(_:)();
  if (!v1)
  {
    v4 = *(v2 + 16);
    result = REDecoderReadFloat();
    if (result)
    {
      v5 = specialized static REDecoder.Error.getStatus(_:)();
      v7 = v6;
      v9 = v8;
      lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
      swift_allocError();
      *v10 = v5;
      *(v10 + 8) = v7;
      *(v10 + 16) = v9 & 1;
      result = swift_willThrow();
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v2 = *(v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v0 + 24) + 16) + 1);
  result = KeyedDC.readKey(_:)();
  if (!v1)
  {
    return PrivateDecoder.decode(_:)();
  }

  return result;
}

uint64_t KeyedDC.decode(_:forKey:)(uint64_t a1)
{
  v3 = *MEMORY[0x1E69E9840];
  result = KeyedDC.decode(_:forKey:)(a1, MEMORY[0x1E6998898]);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v3 = *MEMORY[0x1E69E9840];
  result = KeyedDC.decode(_:forKey:)(a1, MEMORY[0x1E69988A0]);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v3 = *MEMORY[0x1E69E9840];
  result = KeyedDC.decode(_:forKey:)(a1, MEMORY[0x1E6998888]);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v3 = *MEMORY[0x1E69E9840];
  result = KeyedDC.decode(_:forKey:)(a1, MEMORY[0x1E6998890]);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v3 = *MEMORY[0x1E69E9840];
  result = KeyedDC.decode(_:forKey:)(a1, MEMORY[0x1E69988B8]);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v3 = *MEMORY[0x1E69E9840];
  result = KeyedDC.decode(_:forKey:)(a1, MEMORY[0x1E69988C0]);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v3 = *MEMORY[0x1E69E9840];
  result = KeyedDC.decode(_:forKey:)(a1, MEMORY[0x1E69988A8]);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v3 = *MEMORY[0x1E69E9840];
  result = KeyedDC.decode(_:forKey:)(a1, MEMORY[0x1E69988B0]);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v3 = *MEMORY[0x1E69E9840];
  result = KeyedDC.decode(_:forKey:)(a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v3 = *MEMORY[0x1E69E9840];
  result = KeyedDC.decode(_:forKey:)(a1);
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t KeyedDC.decode(_:forKey:)(uint64_t a1, unsigned int (*a2)(void, const char *, unsigned __int8 *))
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v2 + 24) + 16) + 1);
  result = KeyedDC.readKey(_:)();
  if (!v3)
  {
    v14 = 0;
    if (a2(*(v5 + 16), "", &v14))
    {
      v7 = specialized static REDecoder.Error.getStatus(_:)();
      v9 = v8;
      v11 = v10;
      lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
      swift_allocError();
      *v12 = v7;
      *(v12 + 8) = v9;
      *(v12 + 16) = v11 & 1;
      result = swift_willThrow();
    }

    else
    {
      result = v14;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t KeyedDC.decode(_:forKey:)(uint64_t a1, unsigned int (*a2)(void, const char *, unsigned __int16 *))
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v2 + 24) + 16) + 1);
  result = KeyedDC.readKey(_:)();
  if (!v3)
  {
    v14 = 0;
    if (a2(*(v5 + 16), "", &v14))
    {
      v7 = specialized static REDecoder.Error.getStatus(_:)();
      v9 = v8;
      v11 = v10;
      lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
      swift_allocError();
      *v12 = v7;
      *(v12 + 8) = v9;
      *(v12 + 16) = v11 & 1;
      result = swift_willThrow();
    }

    else
    {
      result = v14;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t KeyedDC.decode(_:forKey:)(uint64_t a1, unsigned int (*a2)(void, const char *, unsigned int *))
{
  v15 = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v2 + 24) + 16) + 1);
  result = KeyedDC.readKey(_:)();
  if (!v3)
  {
    v14 = 0;
    if (a2(*(v5 + 16), "", &v14))
    {
      v7 = specialized static REDecoder.Error.getStatus(_:)();
      v9 = v8;
      v11 = v10;
      lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
      swift_allocError();
      *v12 = v7;
      *(v12 + 8) = v9;
      *(v12 + 16) = v11 & 1;
      result = swift_willThrow();
    }

    else
    {
      result = v14;
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t KeyedDC.decode(_:forKey:)(uint64_t a1, unsigned int (*a2)(void, const char *, void *))
{
  v14[1] = *MEMORY[0x1E69E9840];
  v5 = *(v2 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v2 + 24) + 16) + 1);
  result = KeyedDC.readKey(_:)();
  if (!v3)
  {
    v14[0] = 0;
    if (a2(*(v5 + 16), "", v14))
    {
      v7 = specialized static REDecoder.Error.getStatus(_:)();
      v9 = v8;
      v11 = v10;
      lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
      swift_allocError();
      *v12 = v7;
      *(v12 + 8) = v9;
      *(v12 + 16) = v11 & 1;
      result = swift_willThrow();
    }

    else
    {
      result = v14[0];
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t KeyedDC.decode<A>(_:forKey:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v29 = a3;
  v6 = v5;
  v33 = a4;
  v24[1] = a5;
  v26 = *v5;
  v8 = *(v26 + 80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v24 - v14;
  v16 = v5[2];
  PrivateDecoder.terminateContainers(_:)(*(v5[3] + 16) + 1);
  v17 = *(v9 + 16);
  v27 = a2;
  v25 = v17;
  v17(v15, a2, v8);
  swift_beginAccess();
  v18 = *(v16 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v16 + 24) = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1, v18);
    *(v16 + 24) = v18;
  }

  v21 = v18[2];
  v20 = v18[3];
  if (v21 >= v20 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v18);
    *(v16 + 24) = v18;
  }

  v25(v12, v15, v8);
  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(v21, v12, (v16 + 24), v8, *(v26 + 88));
  (*(v9 + 8))(v15, v8);
  *(v16 + 24) = v18;
  swift_endAccess();
  v22 = v28;
  KeyedDC.readKey(_:)();
  if (!v22)
  {
    v31 = type metadata accessor for PrivateDecoder();
    v32 = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateDecoder and conformance PrivateDecoder, type metadata accessor for PrivateDecoder);
    v30 = v16;

    dispatch thunk of Decodable.init(from:)();
  }

  return $defer #1 <A><A1>() in KeyedEC.encode<A>(_:forKey:)(v6);
}

uint64_t $defer #1 <A><A1>() in KeyedEC.encode<A>(_:forKey:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_beginAccess();
  v2 = *(v1 + 24);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v2);
    v2 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v3 = *(v1 + 24);
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v5 = v2[2];
  if (v5)
  {
LABEL_4:
    v6 = v5 - 1;
    __swift_destroy_boxed_opaque_existential_1(&v2[5 * v5 - 1]);
    v2[2] = v6;
    *(v1 + 24) = v2;
    return swift_endAccess();
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t KeyedDC.nestedContainer<A>(keyedBy:forKey:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v23 = a2;
  v5 = *v2;
  swift_beginAccess();
  v16 = (v2 + 4);
  outlined init with copy of [String : String]((v2 + 4), v20, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  if (v21)
  {
    outlined init with copy of __REAssetService(v20, v17);
    outlined destroy of BodyTrackingComponent?(v20, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
    v7 = v18;
    v6 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v6 + 8))(v7, v6);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v20, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  }

  v8 = v2[2];
  PrivateDecoder.terminateContainers(_:)(*(v2[3] + 16) + 1);
  result = KeyedDC.readKey(_:)();
  if (!v3)
  {
    v10 = type metadata accessor for KeyedDC();
    v11 = v2[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v13 = *(v5 + 80);
    *(inited + 56) = v13;
    *(inited + 64) = *(v5 + 88);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(v13 - 8) + 16))(boxed_opaque_existential_1, a1, v13);
    v20[0] = v11;

    specialized Array.append<A>(contentsOf:)(inited);
    v15 = specialized KeyedDC.__allocating_init(decoder:codingPath:)(v8, v20[0]);

    v21 = v10;
    v22 = &protocol witness table for KeyedDC<A>;
    v20[0] = v15;
    swift_beginAccess();

    outlined assign with take of Terminatable?(v20, v16);
    swift_endAccess();
    v20[0] = v15;
    swift_getWitnessTable();
    return KeyedDecodingContainer.init<A>(_:)();
  }

  return result;
}

uint64_t KeyedDC.nestedUnkeyedContainer(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = (v2 + 4);
  v7 = *v2;
  swift_beginAccess();
  outlined init with copy of [String : String]((v2 + 4), v21, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  if (v22)
  {
    outlined init with copy of __REAssetService(v21, v18);
    outlined destroy of BodyTrackingComponent?(v21, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
    v8 = v19;
    v9 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v9 + 8))(v8, v9);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v21, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  }

  v10 = v2[2];
  PrivateDecoder.terminateContainers(_:)(*(v2[3] + 16) + 1);
  result = KeyedDC.readKey(_:)();
  if (!v3)
  {
    v12 = v2[3];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1C1887600;
    v14 = *(v7 + 80);
    *(inited + 56) = v14;
    *(inited + 64) = *(v7 + 88);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, a1, v14);
    v21[0] = v12;

    specialized Array.append<A>(contentsOf:)(inited);
    v16 = specialized UnkeyedDC.__allocating_init(decoder:codingPath:)(v10, v21[0]);

    v17 = type metadata accessor for UnkeyedDC();
    v22 = v17;
    v23 = &protocol witness table for UnkeyedDC;
    v21[0] = v16;
    swift_beginAccess();

    outlined assign with take of Terminatable?(v21, v6);
    swift_endAccess();
    a2[3] = v17;
    result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type UnkeyedDC and conformance UnkeyedDC, type metadata accessor for UnkeyedDC);
    a2[4] = result;
    *a2 = v16;
  }

  return result;
}

uint64_t KeyedDC.superDecoder()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 80);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  v9 = *(v3 + 88);
  dispatch thunk of CodingKey.init(stringValue:)();
  v10 = *(v4 - 8);
  result = (*(v10 + 48))(v8, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    KeyedDC.superDecoder(forKey:)(v8, a1);
    return (*(v10 + 8))(v8, v4);
  }

  return result;
}

uint64_t KeyedDC.superDecoder(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[3];
  v7 = *(v2[2] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v9 = *(v5 + 80);
  *(inited + 56) = v9;
  *(inited + 64) = *(v5 + 88);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, a1, v9);

  specialized Array.append<A>(contentsOf:)(inited);
  v11 = type metadata accessor for PrivateDecoder();
  v12 = swift_allocObject();
  v13 = MEMORY[0x1E69E7CC0];
  *(v12 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v12 + 40) = v13;
  *(v12 + 48) = 0;
  *(v12 + 16) = v7;
  *(v12 + 24) = v6;
  a2[3] = v11;
  result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateDecoder and conformance PrivateDecoder, type metadata accessor for PrivateDecoder);
  a2[4] = result;
  *a2 = v12;
  return result;
}

void *KeyedDC.deinit()
{
  v1 = v0[2];

  v2 = v0[3];

  outlined destroy of BodyTrackingComponent?((v0 + 4), &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  v3 = v0[9];

  v4 = v0[10];

  v5 = v0[11];

  return v0;
}

uint64_t KeyedDC.__deallocating_deinit()
{
  KeyedDC.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance KeyedDC<A>()
{
  v1 = *v0;
  return KeyedDC.decode(_:forKey:)() & 1;
}

{
  v1 = *v0;
  return KeyedDC.decode(_:forKey:)();
}

{
  v1 = *v0;
  return KeyedDC.decode(_:forKey:)();
}

{
  v1 = *v0;
  return KeyedDC.decode(_:forKey:)();
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance KeyedDC<A>(uint64_t a1)
{
  v2 = *v1;
  return KeyedDC.decode(_:forKey:)(a1);
}

{
  v2 = *v1;
  return KeyedDC.decode(_:forKey:)(a1);
}

{
  v2 = *v1;
  return KeyedDC.decode(_:forKey:)(a1);
}

{
  v2 = *v1;
  return KeyedDC.decode(_:forKey:)(a1);
}

{
  v2 = *v1;
  return KeyedDC.decode(_:forKey:)(a1);
}

{
  v2 = *v1;
  return KeyedDC.decode(_:forKey:)(a1);
}

{
  return sub_1C1360570(a1);
}

{
  return sub_1C1360594(a1);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance KeyedDC<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7168]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7170]);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decode(_:forKey:) in conformance KeyedDC<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for KeyedDC();
  return a4(a1, v9, a3);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  type metadata accessor for KeyedDC();
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

{
  v3 = *(a2 + 80);
  v2 = *(a2 + 88);
  type metadata accessor for KeyedDC();
  return KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)();
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E70F8]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7100]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7108]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7118]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7120]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7128]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7130]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7140]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7110]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7138]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7148]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7150]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7158]);
}

{
  return protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(a1, a2, a3, MEMORY[0x1E69E7160]);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance KeyedDC<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for KeyedDC();
  return a4(a1, v9, a3) & 0x1FF;
}

{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for KeyedDC();
  return a4(a1, v9, a3) & 0x1FFFF;
}

{
  v8 = *(a2 + 80);
  v7 = *(a2 + 88);
  v9 = type metadata accessor for KeyedDC();
  v10 = a4(a1, v9, a3);
  return v10 | ((HIDWORD(v10) & 1) << 32);
}

{
  v9 = *(a2 + 80);
  v8 = *(a2 + 88);
  v10 = type metadata accessor for KeyedDC();
  result = a4(a1, v10, a3);
  if (v4)
  {
    return v12;
  }

  return result;
}

{
  v9 = *(a2 + 80);
  v8 = *(a2 + 88);
  v10 = type metadata accessor for KeyedDC();
  result = a4(a1, v10, a3);
  if (v4)
  {
    return v12;
  }

  return result;
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent<A>(_:forKey:) in conformance KeyedDC<A>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a5 + 80);
  v6 = *(a5 + 88);
  type metadata accessor for KeyedDC();
  return KeyedDecodingContainerProtocol.decodeIfPresent<A>(_:forKey:)();
}

uint64_t UnkeyedDC.count.getter()
{
  if (*(v0 + 81))
  {
    v1 = *(v0 + 16);
    PrivateDecoder.terminateContainers(_:)(*(*(v0 + 24) + 16) + 1);
    v2 = *(v1 + 16);
    result = REDecoderContainerElementCount();
    *(v0 + 72) = result;
    *(v0 + 80) = 0;
  }

  else
  {
    result = *(v0 + 72);
    v4 = *(v0 + 80);
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance UnkeyedDC.IndexedCodingKey@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = dispatch thunk of CustomStringConvertible.description.getter();
  *a2 = a1;
  a2[1] = 0;
  a2[2] = result;
  a2[3] = v5;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UnkeyedDC.IndexedCodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UnkeyedDC.IndexedCodingKey(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedDC.decodeNil()()
{
  v1 = v0;
  v3 = v0 + 16;
  v2 = *(v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  Nil = REDecoderTryReadNil();
  if (Nil)
  {
    v6 = *(v1 + 88);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      *(v1 + 88) = v8;
    }
  }

  return Nil;
}

uint64_t UnkeyedDC.decode(_:)()
{
  v2 = v0;
  v4 = v0 + 16;
  v3 = *(v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v4 + 8) + 16) + 1);
  result = PrivateDecoder.decode(_:)();
  if (!v1)
  {
    v6 = *(v2 + 88);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 88) = v8;
    }
  }

  return result;
}

uint64_t UnkeyedDC.decode<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28 = a3;
  v5 = v4;
  v26 = a4;
  v25 = *(a2 - 8);
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v32 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v4[2];
  PrivateDecoder.terminateContainers(_:)(*(v4[3] + 16) + 1);
  v10 = v4[11];
  *&v29 = v10;
  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v12;
  swift_beginAccess();
  v14 = *(v9 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v9 + 24) = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14[2] + 1, 1, v14);
    *(v9 + 24) = v14;
  }

  v17 = v14[2];
  v16 = v14[3];
  if (v17 >= v16 >> 1)
  {
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v14);
  }

  v30 = &unk_1F40F44E8;
  v31 = lazy protocol witness table accessor for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey();
  v18 = swift_allocObject();
  *&v29 = v18;
  *(v18 + 16) = v10;
  *(v18 + 24) = 0;
  *(v18 + 32) = v11;
  *(v18 + 40) = v13;
  v14[2] = v17 + 1;
  outlined init with take of ForceEffectBase(&v29, &v14[5 * v17 + 4]);
  *(v9 + 24) = v14;
  swift_endAccess();
  v30 = type metadata accessor for PrivateDecoder();
  v31 = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateDecoder and conformance PrivateDecoder, type metadata accessor for PrivateDecoder);
  *&v29 = v9;

  v19 = v32;
  v20 = v27;
  result = dispatch thunk of Decodable.init(from:)();
  if (v20)
  {
    return $defer #1 <A><A1>() in KeyedEC.encode<A>(_:forKey:)(v5);
  }

  v22 = *(v5 + 88);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v5 + 88) = v24;
    (*(v25 + 32))(v26, v19, a2);
    return $defer #1 <A><A1>() in KeyedEC.encode<A>(_:forKey:)(v5);
  }

  __break(1u);
  return result;
}

uint64_t UnkeyedDC.nestedContainer<A>(keyedBy:)@<X0>(uint64_t a1@<X8>)
{
  v3 = v1;
  v23 = a1;
  swift_beginAccess();
  outlined init with copy of [String : String]((v1 + 4), v20, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  if (v21)
  {
    outlined init with copy of __REAssetService(v20, v17);
    outlined destroy of BodyTrackingComponent?(v20, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
    v4 = v18;
    v5 = v19;
    __swift_project_boxed_opaque_existential_1(v17, v18);
    (*(v5 + 8))(v4, v5);
    __swift_destroy_boxed_opaque_existential_1(v17);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v20, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  }

  v6 = v1[2];
  PrivateDecoder.terminateContainers(_:)(*(v1[3] + 16) + 1);
  v7 = type metadata accessor for KeyedDC();
  v8 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v20[0] = v1[11];
  v10 = v20[0];

  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v12;
  *(inited + 56) = &unk_1F40F44E8;
  *(inited + 64) = lazy protocol witness table accessor for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey();
  v14 = swift_allocObject();
  *(inited + 32) = v14;
  *(v14 + 16) = v10;
  *(v14 + 24) = 0;
  *(v14 + 32) = v11;
  *(v14 + 40) = v13;
  v20[0] = v8;
  specialized Array.append<A>(contentsOf:)(inited);
  v15 = specialized KeyedDC.__allocating_init(decoder:codingPath:)(v6, v20[0]);

  if (!v2)
  {
    v21 = v7;
    v22 = &protocol witness table for KeyedDC<A>;
    v20[0] = v15;
    swift_beginAccess();

    outlined assign with take of Terminatable?(v20, (v3 + 4));
    swift_endAccess();
    v20[0] = v15;
    swift_getWitnessTable();
    return KeyedDecodingContainer.init<A>(_:)();
  }

  return result;
}

uint64_t UnkeyedDC.nestedUnkeyedContainer()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1;
  swift_beginAccess();
  outlined init with copy of [String : String]((v1 + 4), v21, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  if (v22)
  {
    outlined init with copy of __REAssetService(v21, v18);
    outlined destroy of BodyTrackingComponent?(v21, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
    v5 = v19;
    v6 = v20;
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v6 + 8))(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  else
  {
    outlined destroy of BodyTrackingComponent?(v21, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  }

  v7 = v1[2];
  PrivateDecoder.terminateContainers(_:)(*(v1[3] + 16) + 1);
  v8 = v1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v21[0] = v1[11];
  v10 = v21[0];

  v11 = dispatch thunk of CustomStringConvertible.description.getter();
  v13 = v12;
  *(inited + 56) = &unk_1F40F44E8;
  *(inited + 64) = lazy protocol witness table accessor for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey();
  v14 = swift_allocObject();
  *(inited + 32) = v14;
  *(v14 + 16) = v10;
  *(v14 + 24) = 0;
  *(v14 + 32) = v11;
  *(v14 + 40) = v13;
  v21[0] = v8;
  specialized Array.append<A>(contentsOf:)(inited);
  v15 = specialized UnkeyedDC.__allocating_init(decoder:codingPath:)(v7, v21[0]);

  if (!v2)
  {
    v17 = type metadata accessor for UnkeyedDC();
    v22 = v17;
    v23 = &protocol witness table for UnkeyedDC;
    v21[0] = v15;
    swift_beginAccess();

    outlined assign with take of Terminatable?(v21, (v3 + 4));
    swift_endAccess();
    a1[3] = v17;
    result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type UnkeyedDC and conformance UnkeyedDC, type metadata accessor for UnkeyedDC);
    a1[4] = result;
    *a1 = v15;
  }

  return result;
}

uint64_t UnkeyedDC.superDecoder()@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[3];
  v4 = *(v1[2] + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd, &_ss23_ContiguousArrayStorageCys9CodingKey_pGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C1887600;
  v6 = v1[11];

  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  v9 = v8;
  *(inited + 56) = &unk_1F40F44E8;
  *(inited + 64) = lazy protocol witness table accessor for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey();
  v10 = swift_allocObject();
  *(inited + 32) = v10;
  *(v10 + 16) = v6;
  *(v10 + 24) = 0;
  *(v10 + 32) = v7;
  *(v10 + 40) = v9;
  specialized Array.append<A>(contentsOf:)(inited);
  v11 = v3;
  v12 = type metadata accessor for PrivateDecoder();
  v13 = swift_allocObject();
  v14 = MEMORY[0x1E69E7CC0];
  *(v13 + 32) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs17CodingUserInfoKeyV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v13 + 40) = v14;
  *(v13 + 48) = 0;
  *(v13 + 16) = v4;
  *(v13 + 24) = v11;
  a1[3] = v12;
  result = lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateDecoder and conformance PrivateDecoder, type metadata accessor for PrivateDecoder);
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t protocol witness for UnkeyedDecodingContainer.isAtEnd.getter in conformance UnkeyedDC()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v1 + 24) + 16) + 1);
  v3 = *(*(v1 + 16) + 16);
  return REDecoderIsAtEndOfContainer();
}

uint64_t protocol witness for UnkeyedDecodingContainer.decode(_:) in conformance UnkeyedDC()
{
  v1 = *v0;
  return specialized UnkeyedDC.decode(_:)() & 1;
}

{
  v1 = *v0;
  return UnkeyedDC.decode(_:)();
}

{
  v1 = *v0;
  return specialized UnkeyedDC.decode(_:)();
}

{
  v1 = *v0;
  return specialized UnkeyedDC.decode(_:)();
}

{
  v1 = *v0;
  return specialized UnkeyedDC.decode(_:)(MEMORY[0x1E69988A0]);
}

{
  v1 = *v0;
  return specialized UnkeyedDC.decode(_:)(MEMORY[0x1E6998888]);
}

{
  v1 = *v0;
  return specialized UnkeyedDC.decode(_:)(MEMORY[0x1E6998890]);
}

{
  return UnkeyedDecodingContainer.decode(_:)();
}

{
  v1 = *v0;
  return specialized UnkeyedDC.decode(_:)(MEMORY[0x1E69988C0]);
}

{
  v1 = *v0;
  return specialized UnkeyedDC.decode(_:)(MEMORY[0x1E69988A8]);
}

{
  v1 = *v0;
  return specialized UnkeyedDC.decode(_:)(MEMORY[0x1E69988B0]);
}

{
  return UnkeyedDecodingContainer.decode(_:)();
}

{
  return sub_1C1360648();
}

{
  return sub_1C1360680();
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC()
{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  return UnkeyedDecodingContainer.decodeIfPresent(_:)();
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  result = UnkeyedDecodingContainer.decodeIfPresent(_:)();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(uint64_t a1, uint64_t a2)
{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(a1, a2, MEMORY[0x1E69E6FA8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(a1, a2, MEMORY[0x1E69E6FB0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(a1, a2, MEMORY[0x1E69E6FB8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(a1, a2, MEMORY[0x1E69E6FC0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(a1, a2, MEMORY[0x1E69E6FD0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(a1, a2, MEMORY[0x1E69E6FC8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(a1, a2, MEMORY[0x1E69E6FD8]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(a1, a2, MEMORY[0x1E69E6FE0]);
}

{
  return protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(a1, a2, MEMORY[0x1E69E6FE8]);
}

uint64_t protocol witness for UnkeyedDecodingContainer.decodeIfPresent(_:) in conformance UnkeyedDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  return a3() & 0x1FF;
}

{
  return a3() & 0x1FFFF;
}

{
  v3 = a3();
  return v3 | ((HIDWORD(v3) & 1) << 32);
}

{
  result = a3();
  if (v3)
  {
    return v5;
  }

  return result;
}

uint64_t SingleValueDC.decode<A>(_:)()
{
  v1 = *(v0 + 16);
  type metadata accessor for PrivateDecoder();
  lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(&lazy protocol witness table cache variable for type PrivateDecoder and conformance PrivateDecoder, type metadata accessor for PrivateDecoder);

  return dispatch thunk of Decodable.init(from:)();
}

uint64_t SingleValueEC.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC()
{
  v11 = *MEMORY[0x1E69E9840];
  v1 = *(*(*v0 + 16) + 16);
  if (REDecoderReadBool())
  {
    v2 = specialized static REDecoder.Error.getStatus(_:)();
    v4 = v3;
    v6 = v5;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v7 = v2;
    *(v7 + 8) = v4;
    *(v7 + 16) = v6 & 1;
    swift_willThrow();
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8 & 1;
}

{
  v1 = *(*v0 + 16);
  return PrivateDecoder.decode(_:)();
}

{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(*(*v0 + 16) + 16);
  result = REDecoderReadDouble();
  if (result)
  {
    v3 = specialized static REDecoder.Error.getStatus(_:)();
    v5 = v4;
    v7 = v6;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7 & 1;
    result = swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v10 = *MEMORY[0x1E69E9840];
  v1 = *(*(*v0 + 16) + 16);
  result = REDecoderReadFloat();
  if (result)
  {
    v3 = specialized static REDecoder.Error.getStatus(_:)();
    v5 = v4;
    v7 = v6;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v8 = v3;
    *(v8 + 8) = v5;
    *(v8 + 16) = v7 & 1;
    result = swift_willThrow();
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

{
  return SingleValueDecodingContainer.decode(_:)();
}

{
  return SingleValueDecodingContainer.decode(_:)();
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E69E9840];
  result = protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(a1, a2, MEMORY[0x1E69988A0]);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v4 = *MEMORY[0x1E69E9840];
  result = protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(a1, a2, MEMORY[0x1E6998888]);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v4 = *MEMORY[0x1E69E9840];
  result = protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(a1, a2, MEMORY[0x1E6998890]);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v4 = *MEMORY[0x1E69E9840];
  result = protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(a1, a2, MEMORY[0x1E69988C0]);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v4 = *MEMORY[0x1E69E9840];
  result = protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(a1, a2, MEMORY[0x1E69988A8]);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v4 = *MEMORY[0x1E69E9840];
  result = protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(a1, a2, MEMORY[0x1E69988B0]);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1C13606B8(a1, a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v4 = *MEMORY[0x1E69E9840];
  result = sub_1C1360718(a1, a2);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(uint64_t a1, uint64_t a2, unsigned int (*a3)(void, const char *, unsigned __int8 *))
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(*v3 + 16);
  v13 = 0;
  if (a3(*(v4 + 16), "", &v13))
  {
    v5 = specialized static REDecoder.Error.getStatus(_:)();
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    result = swift_willThrow();
  }

  else
  {
    result = v13;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(uint64_t a1, uint64_t a2, unsigned int (*a3)(void, const char *, unsigned __int16 *))
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(*v3 + 16);
  v13 = 0;
  if (a3(*(v4 + 16), "", &v13))
  {
    v5 = specialized static REDecoder.Error.getStatus(_:)();
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    result = swift_willThrow();
  }

  else
  {
    result = v13;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(uint64_t a1, uint64_t a2, unsigned int (*a3)(void, const char *, unsigned int *))
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(*v3 + 16);
  v13 = 0;
  if (a3(*(v4 + 16), "", &v13))
  {
    v5 = specialized static REDecoder.Error.getStatus(_:)();
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    result = swift_willThrow();
  }

  else
  {
    result = v13;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t protocol witness for SingleValueDecodingContainer.decode(_:) in conformance SingleValueDC(uint64_t a1, uint64_t a2, unsigned int (*a3)(void, const char *, void *))
{
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = *(*v3 + 16);
  v13[0] = 0;
  if (a3(*(v4 + 16), "", v13))
  {
    v5 = specialized static REDecoder.Error.getStatus(_:)();
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    result = swift_willThrow();
  }

  else
  {
    result = v13[0];
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return outlined init with take of ForceEffectBase(&v12, v10 + 40 * a1 + 32);
}

unint64_t specialized static REDecoder.Error.getStatus(_:)()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = 0xD000000000000017;
  v11 = 0;
  Status = REDecoderGetStatus();
  if (Status == 3)
  {
    type metadata accessor for OS_os_log();

    v3 = static OS_os_log.default.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E776F6E6B6E75, 0xE700000000000000, &v9);
      _os_log_impl(&dword_1C1358000, v3, v4, "REDecoder decoding error: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1C6902A30](v6, -1, -1);
      MEMORY[0x1C6902A30](v5, -1, -1);
    }

    v9 = 0;
    v10 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v9 = 0xD00000000000001ALL;
    v10 = 0x80000001C18E1690;
    MEMORY[0x1C68F3410](0x6E776F6E6B6E75, 0xE700000000000000);

    v0 = v9;
  }

  else
  {
    type metadata accessor for OS_os_log();
    v2 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if (Status == 1)
    {
      v0 = 0xD000000000000025;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v0;
}

uint64_t specialized KeyedDC.init(decoder:codingPath:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 32) = 0u;
  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 80) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_s5Int64VTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  *(v2 + 88) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_s5Int64VTt0g5Tf4g_n(v5);
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  if (*(a1 + 48))
  {
  }

  else
  {
    v6 = *(a1 + 16);

    if (REDecoderBeginContainer())
    {
      v7 = specialized static REDecoder.Error.getStatus(_:)();
      v9 = v8;
      v11 = v10;
      lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
      swift_allocError();
      *v12 = v7;
      *(v12 + 8) = v9;
      *(v12 + 16) = v11 & 1;
      swift_willThrow();
    }
  }

  return v2;
}

uint64_t specialized KeyedDC.__allocating_init(decoder:codingPath:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 80);
  v6 = *(v2 + 88);
  type metadata accessor for KeyedDC();
  swift_allocObject();
  return specialized KeyedDC.init(decoder:codingPath:)(a1, a2);
}

uint64_t specialized UnkeyedDC.__allocating_init(decoder:codingPath:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UnkeyedDC();
  v4 = swift_allocObject();
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 256;
  *(v4 + 88) = 0;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  if (*(a1 + 48) == 1)
  {
  }

  else
  {
    v5 = *(a1 + 16);

    if (REDecoderBeginContainer())
    {
      v6 = specialized static REDecoder.Error.getStatus(_:)();
      v8 = v7;
      v10 = v9;
      lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
      swift_allocError();
      *v11 = v6;
      *(v11 + 8) = v8;
      *(v11 + 16) = v10 & 1;
      swift_willThrow();
    }
  }

  return v4;
}

unint64_t specialized static REEncoder.Error.getStatus(_:)()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = 0xD000000000000017;
  v11 = 0;
  Status = REEncoderGetStatus();
  if (Status == 3)
  {
    type metadata accessor for OS_os_log();

    v3 = static OS_os_log.default.getter();
    v4 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v9 = v6;
      *v5 = 136315138;
      *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6E776F6E6B6E75, 0xE700000000000000, &v9);
      _os_log_impl(&dword_1C1358000, v3, v4, "REEncoder encoding error: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1C6902A30](v6, -1, -1);
      MEMORY[0x1C6902A30](v5, -1, -1);
    }

    v9 = 0;
    v10 = 0xE000000000000000;
    _StringGuts.grow(_:)(28);

    v9 = 0xD00000000000001ALL;
    v10 = 0x80000001C18E1620;
    MEMORY[0x1C68F3410](0x6E776F6E6B6E75, 0xE700000000000000);

    v0 = v9;
  }

  else
  {
    type metadata accessor for OS_os_log();
    v2 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    if (Status == 1)
    {
      v0 = 0xD000000000000025;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return v0;
}

unint64_t lazy protocol witness table accessor for type REEncoder.Error and conformance REEncoder.Error()
{
  result = lazy protocol witness table cache variable for type REEncoder.Error and conformance REEncoder.Error;
  if (!lazy protocol witness table cache variable for type REEncoder.Error and conformance REEncoder.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type REEncoder.Error and conformance REEncoder.Error);
  }

  return result;
}

uint64_t specialized UnkeyedDC.decode(_:)()
{
  v1 = v0;
  v16 = *MEMORY[0x1E69E9840];
  v3 = v0 + 16;
  v2 = *(v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  if (REDecoderReadBool())
  {
    v5 = specialized static REDecoder.Error.getStatus(_:)();
    v7 = v6;
    v9 = v8;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 16) = v9 & 1;
    swift_willThrow();
  }

  else
  {
    v12 = *(v1 + 88);
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    v11 = 0;
    *(v1 + 88) = v13;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11 & 1;
}

{
  v1 = v0;
  v16 = *MEMORY[0x1E69E9840];
  v3 = v0 + 16;
  v2 = *(v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  result = REDecoderReadDouble();
  if (result)
  {
    v6 = specialized static REDecoder.Error.getStatus(_:)();
    v8 = v7;
    v10 = v9;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v11 = v6;
    *(v11 + 8) = v8;
    *(v11 + 16) = v10 & 1;
    result = swift_willThrow();
  }

  else
  {
    v12 = *(v1 + 88);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      __break(1u);
    }

    *(v1 + 88) = v14;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

{
  v1 = v0;
  v16 = *MEMORY[0x1E69E9840];
  v3 = v0 + 16;
  v2 = *(v0 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v3 + 8) + 16) + 1);
  v4 = *(v2 + 16);
  result = REDecoderReadFloat();
  if (result)
  {
    v6 = specialized static REDecoder.Error.getStatus(_:)();
    v8 = v7;
    v10 = v9;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v11 = v6;
    *(v11 + 8) = v8;
    *(v11 + 16) = v10 & 1;
    result = swift_willThrow();
  }

  else
  {
    v12 = *(v1 + 88);
    v13 = __OFADD__(v12, 1);
    v14 = v12 + 1;
    if (v13)
    {
      __break(1u);
    }

    *(v1 + 88) = v14;
  }

  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized UnkeyedDC.decode(_:)(unsigned int (*a1)(void, const char *, unsigned __int8 *))
{
  v3 = v1;
  v18 = *MEMORY[0x1E69E9840];
  v5 = v1 + 16;
  v4 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v5 + 8) + 16) + 1);
  v17 = 0;
  if (a1(*(v4 + 16), "", &v17))
  {
    v6 = specialized static REDecoder.Error.getStatus(_:)();
    v8 = v7;
    v10 = v9;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v11 = v6;
    *(v11 + 8) = v8;
    *(v11 + 16) = v10 & 1;
    result = swift_willThrow();
  }

  else
  {
    v13 = *(v3 + 88);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      __break(1u);
    }

    result = v17;
    *(v3 + 88) = v15;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized UnkeyedDC.decode(_:)(unsigned int (*a1)(void, const char *, unsigned __int16 *))
{
  v3 = v1;
  v18 = *MEMORY[0x1E69E9840];
  v5 = v1 + 16;
  v4 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v5 + 8) + 16) + 1);
  v17 = 0;
  if (a1(*(v4 + 16), "", &v17))
  {
    v6 = specialized static REDecoder.Error.getStatus(_:)();
    v8 = v7;
    v10 = v9;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v11 = v6;
    *(v11 + 8) = v8;
    *(v11 + 16) = v10 & 1;
    result = swift_willThrow();
  }

  else
  {
    v13 = *(v3 + 88);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      __break(1u);
    }

    result = v17;
    *(v3 + 88) = v15;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized UnkeyedDC.decode(_:)(unsigned int (*a1)(void, const char *, unsigned int *))
{
  v3 = v1;
  v18 = *MEMORY[0x1E69E9840];
  v5 = v1 + 16;
  v4 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v5 + 8) + 16) + 1);
  v17 = 0;
  if (a1(*(v4 + 16), "", &v17))
  {
    v6 = specialized static REDecoder.Error.getStatus(_:)();
    v8 = v7;
    v10 = v9;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v11 = v6;
    *(v11 + 8) = v8;
    *(v11 + 16) = v10 & 1;
    result = swift_willThrow();
  }

  else
  {
    v13 = *(v3 + 88);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      __break(1u);
    }

    result = v17;
    *(v3 + 88) = v15;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized UnkeyedDC.decode(_:)(unsigned int (*a1)(void, const char *, void *))
{
  v3 = v1;
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = v1 + 16;
  v4 = *(v1 + 16);
  PrivateDecoder.terminateContainers(_:)(*(*(v5 + 8) + 16) + 1);
  v17[0] = 0;
  if (a1(*(v4 + 16), "", v17))
  {
    v6 = specialized static REDecoder.Error.getStatus(_:)();
    v8 = v7;
    v10 = v9;
    lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error();
    swift_allocError();
    *v11 = v6;
    *(v11 + 8) = v8;
    *(v11 + 16) = v10 & 1;
    result = swift_willThrow();
  }

  else
  {
    v13 = *(v3 + 88);
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      __break(1u);
    }

    result = v17[0];
    *(v3 + 88) = v15;
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t lazy protocol witness table accessor for type REDecoder.Error and conformance REDecoder.Error()
{
  result = lazy protocol witness table cache variable for type REDecoder.Error and conformance REDecoder.Error;
  if (!lazy protocol witness table cache variable for type REDecoder.Error and conformance REDecoder.Error)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type REDecoder.Error and conformance REDecoder.Error);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey()
{
  result = lazy protocol witness table cache variable for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey;
  if (!lazy protocol witness table cache variable for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey;
  if (!lazy protocol witness table cache variable for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey;
  if (!lazy protocol witness table cache variable for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnkeyedDC.IndexedCodingKey and conformance UnkeyedDC.IndexedCodingKey);
  }

  return result;
}

uint64_t outlined assign with take of Terminatable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMd, &_s17RealityFoundation12Terminatable33_423B28274EF321550525D008D560505DLL_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey()
{
  result = lazy protocol witness table cache variable for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey;
  if (!lazy protocol witness table cache variable for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey;
  if (!lazy protocol witness table cache variable for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey;
  if (!lazy protocol witness table cache variable for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnkeyedEC.IndexedCodingKey and conformance UnkeyedEC.IndexedCodingKey);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SingleValueEC and conformance SingleValueEC(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UnkeyedEC.IndexedCodingKey(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for UnkeyedEC.IndexedCodingKey(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF10RealityKit18__MaterialResourceC04CoreE8FunctionV_s5NeverOytTB504_s17c62Foundation17ShaderCacheLoaderC12loadResource6forKey0A3Kit010__e13G0Cx_tYaKFAHyv10KcfU_yAH04g2K8H6VXEfU_AF15BuildParametersVTf1cn_nTm(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *__return_ptr, _BYTE *, uint64_t))
{
  v4 = v3;
  v5 = *(a1 + 16);
  v6 = *(a1 + 16);
  if (!v6)
  {
    return v6 == 0;
  }

  v9 = *(a1 + 8);
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v14[0] = *a1;
  v15 = v9;
  v16 = v5;
  v17 = v10;
  v18 = v11;

  v12 = v11;
  a3(&v19, v14, a2);
  if (!v4)
  {

    return v6 == 0;
  }

  __break(1u);
  return result;
}

uint64_t specialized AssetServiceScopedRegistry.instance(for:)(void *a1)
{
  v2 = v1;
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  v5 = *(v4 + 32);
  v6 = v5(v3, v4);
  v7 = *(v1 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);
    type metadata accessor for __USDARReferenceProvidingPlugin();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E7CC8];
    *(v11 + 16) = MEMORY[0x1E69E7CC8];
    *(v11 + 24) = v12;
    os_unfair_lock_lock(v7 + 4);
    swift_beginAccess();

    v13 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v6, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v20;
    swift_endAccess();
    v5(v3, v4);
    v15 = swift_allocObject();
    swift_weakInit();
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    *(v16 + 24) = v6;
    v19[4] = partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:);
    v19[5] = v16;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v19[3] = &block_descriptor_34;
    v17 = _Block_copy(v19);

    REAssetManagerAddCleanupCallback();
    _Block_release(v17);
  }

  os_unfair_lock_unlock(v7 + 4);
  return v11;
}

{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = *(v1 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);
    outlined init with copy of __REAssetService(a1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11ShaderCacheCyAA14CustomMaterialV0eC10ParametersVGMd, &_s17RealityFoundation11ShaderCacheCyAA14CustomMaterialV0eC10ParametersVGMR);
    swift_allocObject();
    v11 = specialized ShaderCache.init(_:)(v20);
    os_unfair_lock_lock(v7 + 4);
    swift_beginAccess();

    v12 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v6, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v21;
    swift_endAccess();
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    (*(v15 + 32))(v14, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v6;
    v20[4] = partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:);
    v20[5] = v17;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v20[3] = &block_descriptor_99;
    v18 = _Block_copy(v20);

    REAssetManagerAddCleanupCallback();
    _Block_release(v18);
  }

  os_unfair_lock_unlock(v7 + 4);
  return v11;
}

{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = *(v1 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);
    outlined init with copy of __REAssetService(a1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11ShaderCacheCy0A3Kit13UnlitMaterialV0fC10ParametersVGMd, &_s17RealityFoundation11ShaderCacheCy0A3Kit13UnlitMaterialV0fC10ParametersVGMR);
    swift_allocObject();
    v11 = specialized ShaderCache.init(_:)(v20);
    os_unfair_lock_lock(v7 + 4);
    swift_beginAccess();

    v12 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v6, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v21;
    swift_endAccess();
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    (*(v15 + 32))(v14, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v6;
    v20[4] = partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:);
    v20[5] = v17;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v20[3] = &block_descriptor_5;
    v18 = _Block_copy(v20);

    REAssetManagerAddCleanupCallback();
    _Block_release(v18);
  }

  os_unfair_lock_unlock(v7 + 4);
  return v11;
}

{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = *(v1 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);
    outlined init with copy of __REAssetService(a1, v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11ShaderCacheCyAA23PhysicallyBasedMaterialV19PBRShaderParametersVGMd, &_s17RealityFoundation11ShaderCacheCyAA23PhysicallyBasedMaterialV19PBRShaderParametersVGMR);
    swift_allocObject();
    v11 = specialized ShaderCache.init(_:)(v20);
    os_unfair_lock_lock(v7 + 4);
    swift_beginAccess();

    v12 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v6, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v21;
    swift_endAccess();
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    (*(v15 + 32))(v14, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v6;
    v20[4] = partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:);
    v20[5] = v17;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v20[3] = &block_descriptor_71;
    v18 = _Block_copy(v20);

    REAssetManagerAddCleanupCallback();
    _Block_release(v18);
  }

  os_unfair_lock_unlock(v7 + 4);
  return v11;
}

{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = *(v1 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);
    outlined init with copy of __REAssetService(a1, v20);
    type metadata accessor for SimpleMaterial.SimpleMaterialMapping();
    swift_allocObject();
    v11 = SimpleMaterial.SimpleMaterialMapping.init(_:)(v20);
    os_unfair_lock_lock(v7 + 4);
    swift_beginAccess();

    v12 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v6, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v21;
    swift_endAccess();
    v14 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v14);
    (*(v15 + 32))(v14, v15);
    v16 = swift_allocObject();
    swift_weakInit();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = v6;
    v20[4] = partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:);
    v20[5] = v17;
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 1107296256;
    v20[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v20[3] = &block_descriptor_80;
    v18 = _Block_copy(v20);

    REAssetManagerAddCleanupCallback();
    _Block_release(v18);
  }

  os_unfair_lock_unlock(v7 + 4);
  return v11;
}

{
  v2 = v1;
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  v6 = (*(v5 + 32))(v4, v5);
  v7 = *(v1 + 16);
  os_unfair_lock_lock(v7 + 4);
  swift_beginAccess();
  v8 = *(v1 + 24);
  if (*(v8 + 16) && (v9 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    os_unfair_lock_unlock(v7 + 4);
    outlined init with copy of __REAssetService(a1, v23);
    type metadata accessor for __ARReferenceProvider();
    v11 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation26ARReferenceProvidingPlugin_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation26ARReferenceProvidingPlugin_pGMR);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1C1897FC0;
    if (one-time initialization token for instances != -1)
    {
      swift_once();
    }

    v13 = specialized AssetServiceScopedRegistry.instance(for:)(v23);

    *(v12 + 56) = type metadata accessor for __RealityFileARReferenceProvidingPlugin();
    *(v12 + 64) = &protocol witness table for __RealityFileARReferenceProvidingPlugin;
    *(v12 + 32) = v13;
    if (one-time initialization token for instances != -1)
    {
      swift_once();
    }

    v14 = specialized AssetServiceScopedRegistry.instance(for:)(v23);
    *(v12 + 96) = type metadata accessor for __USDARReferenceProvidingPlugin();
    *(v12 + 104) = &protocol witness table for __USDARReferenceProvidingPlugin;
    *(v12 + 72) = v14;
    __swift_destroy_boxed_opaque_existential_1(v23);
    *(v11 + 16) = v12;
    os_unfair_lock_lock(v7 + 4);
    swift_beginAccess();

    v15 = *(v2 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v11, v6, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v24;
    swift_endAccess();
    v17 = a1[3];
    v18 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v17);
    (*(v18 + 32))(v17, v18);
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = v6;
    v23[4] = partial apply for specialized closure #1 in AssetServiceScopedRegistry.instance(for:);
    v23[5] = v20;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 1107296256;
    v23[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    v23[3] = &block_descriptor_43;
    v21 = _Block_copy(v23);

    REAssetManagerAddCleanupCallback();
    _Block_release(v21);
  }

  os_unfair_lock_unlock(v7 + 4);
  return v11;
}