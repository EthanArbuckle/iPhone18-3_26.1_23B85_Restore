void type metadata accessor for KeyedDecodingContainer<CodableAXChartDescriptor.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type CodableAXChartDescriptor.CodingKeys and conformance CodableAXChartDescriptor.CodingKeys();
    v7 = a3(a1, &unk_1F006DDC8, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

AXChartDescriptor __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> AccessibilitySpecificChartDescriptorStorage.resolve()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if ((v2 & 0x2000000000000000) != 0)
  {
    return v1;
  }

  outlined copy of Data._Representation(*(v0 + 16), *(v0 + 24));
  isa = Data._bridgeToObjectiveC()().super.isa;
  v4 = _AXSwiftUIUnarchiveChartDescriptor(isa);

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v14[0] = v12;
  v14[1] = v13;
  if (!*(&v13 + 1))
  {
    outlined destroy of Any?(v14);
    goto LABEL_11;
  }

  type metadata accessor for [AnyHashable : Any]();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    lazy protocol witness table accessor for type AccessibilitySpecificChartDescriptorStorage.ChartDescriptorArchiveError and conformance AccessibilitySpecificChartDescriptorStorage.ChartDescriptorArchiveError();
    swift_allocError();
    swift_willThrow();
    outlined consume of AccessibilitySpecificChartDescriptorStorage.Storage(v1, v2);
    return result;
  }

  v6 = objc_allocWithZone(MEMORY[0x1E6959550]);
  v7 = Dictionary._bridgeToObjectiveC()().super.isa;

  v8 = [v6 initWithDictionary_];

  outlined consume of AccessibilitySpecificChartDescriptorStorage.Storage(v1, v2);
  v9 = *(v0 + 16);
  v10 = *(v0 + 24);
  *(v0 + 16) = v8;
  *(v0 + 24) = 0x2000000000000000;
  v11 = v8;
  outlined consume of AccessibilitySpecificChartDescriptorStorage.Storage(v9, v10);
  return v11;
}

uint64_t AccessibilitySpecificChartDescriptorStorage.isEqual(to:)()
{
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = *(v0 + 16);
    v3 = *(v0 + 24);
    v5 = *(v1 + 16);
    v4 = *(v1 + 24);
    if (((v3 | v4) & 0x2000000000000000) == 0)
    {
      outlined copy of AccessibilitySpecificChartDescriptorStorage.Storage(*(v1 + 16), v4);
      outlined copy of AccessibilitySpecificChartDescriptorStorage.Storage(v2, v3);
      outlined copy of AccessibilitySpecificChartDescriptorStorage.Storage(v2, v3);
      outlined copy of AccessibilitySpecificChartDescriptorStorage.Storage(v5, v4);

      v6 = specialized static Data.== infix(_:_:)(v2, v3, v5, v4);
      outlined consume of AccessibilitySpecificChartDescriptorStorage.Storage(v5, v4);
      outlined consume of AccessibilitySpecificChartDescriptorStorage.Storage(v2, v3);
      outlined consume of AccessibilitySpecificChartDescriptorStorage.Storage(v2, v3);
      outlined consume of AccessibilitySpecificChartDescriptorStorage.Storage(v5, v4);

      return v6 & 1;
    }

    outlined copy of AccessibilitySpecificChartDescriptorStorage.Storage(*(v0 + 16), *(v0 + 24));
    outlined copy of AccessibilitySpecificChartDescriptorStorage.Storage(v5, v4);

    outlined consume of AccessibilitySpecificChartDescriptorStorage.Storage(v2, v3);
    outlined consume of AccessibilitySpecificChartDescriptorStorage.Storage(v5, v4);
    v8.super.isa = AccessibilitySpecificChartDescriptorStorage.resolve()().super.isa;
    if (v9.super.isa)
    {
    }

    else
    {
      isa = v8.super.isa;
      v11.super.isa = AccessibilitySpecificChartDescriptorStorage.resolve()().super.isa;
      if (!v12.super.isa)
      {
        v13 = v11.super.isa;
        v14 = [(objc_class *)isa dictionaryRepresentation];
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v15 = [(objc_class *)v13 dictionaryRepresentation];
        static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        type metadata accessor for NSObject();
        v16 = Dictionary._bridgeToObjectiveC()().super.isa;

        v17 = Dictionary._bridgeToObjectiveC()().super.isa;

        v6 = static NSObject.== infix(_:_:)();

        return v6 & 1;
      }
    }
  }

  return 0;
}

uint64_t AccessibilitySpecificChartDescriptorStorage.__deallocating_deinit()
{
  outlined consume of AccessibilitySpecificChartDescriptorStorage.Storage(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

id outlined copy of AccessibilitySpecificChartDescriptorStorage.Storage(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return a1;
  }

  else
  {
    return outlined copy of Data._Representation(a1, a2);
  }
}

void outlined consume of AccessibilitySpecificChartDescriptorStorage.Storage(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
  }

  else
  {
    outlined consume of Data._Representation(a1, a2);
  }
}

uint64_t *assignWithCopy for AccessibilitySpecificChartDescriptorStorage.Storage(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  outlined copy of AccessibilitySpecificChartDescriptorStorage.Storage(*a2, v4);
  v5 = *a1;
  v6 = a1[1];
  *a1 = v3;
  a1[1] = v4;
  outlined consume of AccessibilitySpecificChartDescriptorStorage.Storage(v5, v6);
  return a1;
}

uint64_t *assignWithTake for AccessibilitySpecificChartDescriptorStorage.Storage(uint64_t *a1, _OWORD *a2)
{
  v3 = *a1;
  v4 = a1[1];
  *a1 = *a2;
  outlined consume of AccessibilitySpecificChartDescriptorStorage.Storage(v3, v4);
  return a1;
}

uint64_t getEnumTagSinglePayload for AccessibilitySpecificChartDescriptorStorage.Storage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 3 && *(a1 + 16))
  {
    return (*a1 + 3);
  }

  v3 = ((2 * ((*(a1 + 8) & 0x1000000000000000) != 0)) | ((*(a1 + 8) >> 60) >> 1) & 1) ^ 3;
  if (v3 >= 2)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for AccessibilitySpecificChartDescriptorStorage.Storage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 2)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    if (a3 >= 3)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 3)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((2 * a2) & 2 | 1u) << 60;
    }
  }

  return result;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = MEMORY[0x193ABC2C0]();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = MEMORY[0x193ABC2C0]();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    outlined consume of Data._Representation(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v13, a3, a4, &v12);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  MEMORY[0x193ABC2C0]();
  closure #1 in static Data.== infix(_:_:)(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t specialized static Data.== infix(_:_:)(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilitySpecificChartDescriptorStorage.ChartDescriptorArchiveError and conformance AccessibilitySpecificChartDescriptorStorage.ChartDescriptorArchiveError()
{
  result = lazy protocol witness table cache variable for type AccessibilitySpecificChartDescriptorStorage.ChartDescriptorArchiveError and conformance AccessibilitySpecificChartDescriptorStorage.ChartDescriptorArchiveError;
  if (!lazy protocol witness table cache variable for type AccessibilitySpecificChartDescriptorStorage.ChartDescriptorArchiveError and conformance AccessibilitySpecificChartDescriptorStorage.ChartDescriptorArchiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySpecificChartDescriptorStorage.ChartDescriptorArchiveError and conformance AccessibilitySpecificChartDescriptorStorage.ChartDescriptorArchiveError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilitySpecificChartDescriptorStorage.ChartDescriptorArchiveError and conformance AccessibilitySpecificChartDescriptorStorage.ChartDescriptorArchiveError;
  if (!lazy protocol witness table cache variable for type AccessibilitySpecificChartDescriptorStorage.ChartDescriptorArchiveError and conformance AccessibilitySpecificChartDescriptorStorage.ChartDescriptorArchiveError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilitySpecificChartDescriptorStorage.ChartDescriptorArchiveError and conformance AccessibilitySpecificChartDescriptorStorage.ChartDescriptorArchiveError);
  }

  return result;
}

uint64_t Text.LineStyle.color.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t (*Text.LineStyle.nsUnderlineStyle.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Text.LineStyle.nsUnderlineStyle.modify;
}

void *Text.LineStyle.init(pattern:color:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = *result | 1;
  a3[1] = a2;
  return result;
}

double one-time initialization function for single()
{
  *&result = 1;
  static Text.LineStyle.single = xmmword_18DD85500;
  return result;
}

uint64_t static Text.LineStyle.single.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for single != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v2 = *(&static Text.LineStyle.single + 1);
  *a1 = static Text.LineStyle.single;
  a1[1] = v2;
}

uint64_t Text.LineStyle.init(_nsUnderlineStyle:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = (~result & 9) == 0 || result == 0 || (result & 0x8002) != 0;
  if (v3)
  {
    v4 = 0;
  }

  else
  {
    v4 = result;
  }

  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t Text.LineStyle.init(_nsUnderlineStyleForTextEditing:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = result;
  a2[1] = result == 0;
  return result;
}

uint64_t Text.LineStyle.Resolved.color.setter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(v3 + 8) = result;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 28) = BYTE4(a3) & 1;
  return result;
}

void Text.LineStyle.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = v2[1];
  MEMORY[0x193AC11A0](*v2);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    (*(*v4 + 152))(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int Text.LineStyle.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v2);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    (*(*v1 + 152))(v4);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Text.LineStyle()
{
  v2 = *v0;
  v1 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v2);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    (*(*v1 + 152))(v4);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance Text.LineStyle(uint64_t a1)
{
  v2 = v1;
  v4 = v2[1];
  MEMORY[0x193AC11A0](*v2);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    (*(*v4 + 152))(a1);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Text.LineStyle()
{
  Hasher.init(_seed:)();
  v1 = v0[1];
  MEMORY[0x193AC11A0](*v0);
  if (v1)
  {
    Hasher._combine(_:)(1u);
    (*(*v1 + 152))(v3);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t EnvironmentValues.underlineStyle.getter(void (*a1)(uint64_t), uint64_t (*a2)(uint64_t, uint64_t *))
{
  v3 = *v2;
  if (!v2[1])
  {
    return a2(v3, &v6);
  }

  a1(v3);
}

double key path getter for EnvironmentValues.underlineStyle : EnvironmentValues@<D0>(void *a1@<X0>, void (*a2)(__int128 *__return_ptr, uint64_t)@<X3>, void (*a3)(__int128 *__return_ptr, void, uint64_t *)@<X4>, _OWORD *a4@<X8>)
{
  v5 = *a1;
  if (a1[1])
  {

    a2(&v9, v5);
  }

  else
  {
    a3(&v9, *a1, &v8);
  }

  result = *&v9;
  *a4 = v9;
  return result;
}

uint64_t key path setter for EnvironmentValues.underlineStyle : EnvironmentValues(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, uint64_t *), void (*a6)(uint64_t, void))
{
  v9 = *a1;
  v10 = a1[1];
  v11 = *a2;
  swift_retain_n();
  outlined copy of Text.LineStyle?(v9, v10);
  a5(a2, v9, v10, &v13);

  outlined consume of Text.LineStyle?(v9, v10);
  if (a2[1])
  {
    a6(v11, *a2);
  }
}

uint64_t Text.LineStyle.codingProxy.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t Text.LineStyle.CodingProxy.base.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1 | 1;
  a1[1] = v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Text.LineStyle.CodingProxy.CodingKeys()
{
  if (*v0)
  {
    return 0x726F6C6F63;
  }

  else
  {
    return 0x656C797473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Text.LineStyle.CodingProxy.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F6C6F63 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Text.LineStyle.CodingProxy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.LineStyle.CodingProxy.CodingKeys and conformance Text.LineStyle.CodingProxy.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Text.LineStyle.CodingProxy.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Text.LineStyle.CodingProxy.CodingKeys and conformance Text.LineStyle.CodingProxy.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Text.LineStyle.CodingProxy.encode(to:)(void *a1)
{
  type metadata accessor for KeyedEncodingContainer<Text.LineStyle.CodingProxy.CodingKeys>(0, &lazy cache variable for type metadata for KeyedEncodingContainer<Text.LineStyle.CodingProxy.CodingKeys>, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  v9 = *v1;
  v11 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Text.LineStyle.CodingProxy.CodingKeys and conformance Text.LineStyle.CodingProxy.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = v9;
  v12 = 0;
  type metadata accessor for CodableRawRepresentable<NSUnderlineStyle>();
  lazy protocol witness table accessor for type NSUnderlineStyle and conformance NSUnderlineStyle(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSUnderlineStyle> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSUnderlineStyle>);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v13 = v11;
    v12 = 1;
    type metadata accessor for ProxyCodable<Color>();
    lazy protocol witness table accessor for type NSUnderlineStyle and conformance NSUnderlineStyle(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>);

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t Text.LineStyle.CodingProxy.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for KeyedEncodingContainer<Text.LineStyle.CodingProxy.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<Text.LineStyle.CodingProxy.CodingKeys>, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Text.LineStyle.CodingProxy.CodingKeys and conformance Text.LineStyle.CodingProxy.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  type metadata accessor for CodableRawRepresentable<NSUnderlineStyle>();
  v14 = 0;
  lazy protocol witness table accessor for type NSUnderlineStyle and conformance NSUnderlineStyle(&lazy protocol witness table cache variable for type CodableRawRepresentable<NSUnderlineStyle> and conformance CodableRawRepresentable<A>, type metadata accessor for CodableRawRepresentable<NSUnderlineStyle>);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v15;
  type metadata accessor for ProxyCodable<Color>();
  v14 = 1;
  lazy protocol witness table accessor for type NSUnderlineStyle and conformance NSUnderlineStyle(&lazy protocol witness table cache variable for type ProxyCodable<Color> and conformance ProxyCodable<A>, type metadata accessor for ProxyCodable<Color>);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v7 + 8))(v9, v6);
  v11 = v15;
  *a2 = v10;
  a2[1] = v11;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CodableProxy.base.getter in conformance Text.LineStyle.CodingProxy@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1 | 1;
  a1[1] = v2;
}

uint64_t protocol witness for CodableByProxy.codingProxy.getter in conformance Text.LineStyle@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t specialized static Text.LineStyle.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[1];
  v3 = a2[1];
  if (v2)
  {
    if (v3)
    {
      if (v2 == v3)
      {
        return 1;
      }

      v4 = *(*v2 + 88);

      v6 = v4(v5);

      if (v6)
      {
        return 1;
      }
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type Text.LineStyle.CodingProxy.CodingKeys and conformance Text.LineStyle.CodingProxy.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Text.LineStyle.CodingProxy.CodingKeys and conformance Text.LineStyle.CodingProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.LineStyle.CodingProxy.CodingKeys and conformance Text.LineStyle.CodingProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.LineStyle.CodingProxy.CodingKeys and conformance Text.LineStyle.CodingProxy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.LineStyle.CodingProxy.CodingKeys and conformance Text.LineStyle.CodingProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.LineStyle.CodingProxy.CodingKeys and conformance Text.LineStyle.CodingProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.LineStyle.CodingProxy.CodingKeys and conformance Text.LineStyle.CodingProxy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.LineStyle.CodingProxy.CodingKeys and conformance Text.LineStyle.CodingProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.LineStyle.CodingProxy.CodingKeys and conformance Text.LineStyle.CodingProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.LineStyle.CodingProxy.CodingKeys and conformance Text.LineStyle.CodingProxy.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.LineStyle.CodingProxy.CodingKeys and conformance Text.LineStyle.CodingProxy.CodingKeys;
  if (!lazy protocol witness table cache variable for type Text.LineStyle.CodingProxy.CodingKeys and conformance Text.LineStyle.CodingProxy.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.LineStyle.CodingProxy.CodingKeys and conformance Text.LineStyle.CodingProxy.CodingKeys);
  }

  return result;
}

void type metadata accessor for CodableRawRepresentable<NSUnderlineStyle>()
{
  if (!lazy cache variable for type metadata for CodableRawRepresentable<NSUnderlineStyle>)
  {
    type metadata accessor for NSUnderlineStyle(255);
    lazy protocol witness table accessor for type NSUnderlineStyle and conformance NSUnderlineStyle(&lazy protocol witness table cache variable for type NSUnderlineStyle and conformance NSUnderlineStyle, type metadata accessor for NSUnderlineStyle);
    v0 = type metadata accessor for CodableRawRepresentable();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CodableRawRepresentable<NSUnderlineStyle>);
    }
  }
}

void type metadata accessor for KeyedEncodingContainer<Text.LineStyle.CodingProxy.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type Text.LineStyle.CodingProxy.CodingKeys and conformance Text.LineStyle.CodingProxy.CodingKeys();
    v7 = a3(a1, &unk_1F006E100, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type NSUnderlineStyle and conformance NSUnderlineStyle(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Text.LineStyle and conformance Text.LineStyle()
{
  result = lazy protocol witness table cache variable for type Text.LineStyle and conformance Text.LineStyle;
  if (!lazy protocol witness table cache variable for type Text.LineStyle and conformance Text.LineStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.LineStyle and conformance Text.LineStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.LineStyle and conformance Text.LineStyle;
  if (!lazy protocol witness table cache variable for type Text.LineStyle and conformance Text.LineStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.LineStyle and conformance Text.LineStyle);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Text.LineStyle.CodingProxy(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type Text.LineStyle.CodingProxy and conformance Text.LineStyle.CodingProxy();
  result = lazy protocol witness table accessor for type Text.LineStyle.CodingProxy and conformance Text.LineStyle.CodingProxy();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type Text.LineStyle.CodingProxy and conformance Text.LineStyle.CodingProxy()
{
  result = lazy protocol witness table cache variable for type Text.LineStyle.CodingProxy and conformance Text.LineStyle.CodingProxy;
  if (!lazy protocol witness table cache variable for type Text.LineStyle.CodingProxy and conformance Text.LineStyle.CodingProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.LineStyle.CodingProxy and conformance Text.LineStyle.CodingProxy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Text.LineStyle.CodingProxy and conformance Text.LineStyle.CodingProxy;
  if (!lazy protocol witness table cache variable for type Text.LineStyle.CodingProxy and conformance Text.LineStyle.CodingProxy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Text.LineStyle.CodingProxy and conformance Text.LineStyle.CodingProxy);
  }

  return result;
}

__n128 __swift_memcpy29_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

void *assignWithCopy for Text.LineStyle(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];

  return a1;
}

void type metadata accessor for _EnvironmentKeyWritingModifier<Text.LineStyle?>()
{
  if (!lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.LineStyle?>)
  {
    type metadata accessor for Text.LineStyle?();
    v0 = type metadata accessor for _EnvironmentKeyWritingModifier();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _EnvironmentKeyWritingModifier<Text.LineStyle?>);
    }
  }
}

void type metadata accessor for Text.LineStyle?()
{
  if (!lazy cache variable for type metadata for Text.LineStyle?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for Text.LineStyle?);
    }
  }
}

uint64_t _GraphValue.subscript.getter@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = *v2;
  v7 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  if (v8)
  {
    v16 = v6;
    v17 = a1;
    MEMORY[0x1EEE9AC00](v7);
    v12[2] = *(v5 + *MEMORY[0x1E69E77B0] + 8);
    v13 = type metadata accessor for Focus();
    WitnessTable = swift_getWitnessTable();
    v9 = type metadata accessor for Attribute();

    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(&v16, closure #1 in Attribute.init<A>(_:)partial apply, v12, v13, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v10);

    result = v15;
  }

  else
  {
    result = AGGraphCreateOffsetAttribute2();
  }

  *a2 = result;
  return result;
}

unint64_t EnvironmentValues.isPresentingContextMenu.getter()
{
  v1 = *v0;
  if (!*(v0 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021PresentingContextMenuF033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt2g5(v1) & 1;
  }

  v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021PresentingContextMenuI033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt1g5(v1);

  return v2 & 1;
}

uint64_t key path getter for EnvironmentValues.isPresentingContextMenu : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021PresentingContextMenuI033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021PresentingContextMenuF033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt2g5(*a1);
    v4 = result;
  }

  *a2 = v4 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.isPresentingContextMenu : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021PresentingContextMenuF033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA021PresentingContextMenuK033_582793BC0A30BEC55316E8383E1A8442LLVG_Ttg5(v4, *a2);
  }
}

uint64_t EnvironmentValues.isPresentingContextMenu.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021PresentingContextMenuF033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA021PresentingContextMenuK033_582793BC0A30BEC55316E8383E1A8442LLVG_Ttg5(v4, *v2);
  }
}

void (*EnvironmentValues.isPresentingContextMenu.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021PresentingContextMenuI033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt1g5(v5);
  }

  else
  {
    v7 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021PresentingContextMenuF033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt2g5(v5);
  }

  v4[5] = 0;
  *(v4 + 48) = v7 & 1;
  return EnvironmentValues.isPresentingContextMenu.modify;
}

void EnvironmentValues.isPresentingContextMenu.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 48);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA021PresentingContextMenuF033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA021PresentingContextMenuK033_582793BC0A30BEC55316E8383E1A8442LLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t one-time initialization function for isPresentingContextMenu()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.isPresentingContextMenu = result;
  return result;
}

uint64_t static CachedEnvironment.ID.isPresentingContextMenu.getter@<X0>(void *a1@<X8>)
{
  if (one-time initialization token for isPresentingContextMenu != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = static CachedEnvironment.ID.isPresentingContextMenu;
  return result;
}

uint64_t _GraphInputs.isPresentingContextMenu.getter()
{
  if (one-time initialization token for isPresentingContextMenu != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.isPresentingContextMenu;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0);
  swift_endAccess();
  return v1;
}

uint64_t specialized implicit closure #1 in _GraphInputs.isPresentingContextMenu.getter@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    swift_retain_n();
    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA021PresentingContextMenuI033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt1g5(v3);
  }

  else
  {

    v4 = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA021PresentingContextMenuF033_582793BC0A30BEC55316E8383E1A8442LLVG_Tt2g5(v6);
  }

  *a2 = v4 & 1;
  return result;
}

uint64_t static TransactionKey<>._valuesEqual(_:_:)()
{
  swift_getAssociatedTypeWitness();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

{
  swift_getAssociatedTypeWitness();
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t protocol witness for static TransactionKey._valuesEqual(_:_:) in conformance Transaction.GlassContainerSettingsOverrideKey(void *__src, const void *a2)
{
  memcpy(__dst, __src, 0x149uLL);
  memcpy(v4, a2, 0x149uLL);
  return specialized static GlassContainer.SettingsOverride.== infix(_:_:)(__dst, v4) & 1;
}

uint64_t static TransactionKey._valuesEqual(_:_:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = a2;
  v9 = 3;
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, partial apply for closure #1 in compareValues<A>(_:_:options:), &v6, AssociatedTypeWitness, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v4);
  return v10;
}

{
  return static TransactionKey._valuesEqual(_:_:)(a1, a2) & 1;
}

uint64_t Transaction.plist.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

Swift::Int Transaction.ID.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t static Transaction.id.getter@<X0>(_DWORD *a1@<X8>)
{
  result = _threadTransactionID();
  *a1 = result;
  return result;
}

void (*Transaction.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char a2)
{
  v9 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x40uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a4;
  v10[3] = v4;
  *v10 = a2;
  v10[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11[4] = AssociatedTypeWitness;
  v13 = *(AssociatedTypeWitness - 8);
  v11[5] = v13;
  v14 = *(v13 + 64);
  if (v9)
  {
    v11[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v11[6] = malloc(*(v13 + 64));
    v15 = malloc(v14);
  }

  v11[7] = v15;
  Transaction.subscript.getter(v15, *v4);
  return Transaction.subscript.modify;
}

void Transaction.subscript.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  v4 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 48), v4, v5);
    specialized Transaction.subscript.setter(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    specialized Transaction.subscript.setter(*(*a1 + 56));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

BOOL Transaction.mayConcatenate(with:)(unint64_t a1, unint64_t a2)
{
  v2 = (a2 | a1) == 0;
  if (a2 && a1)
  {
    v6 = MEMORY[0x1E69E7CC0];

    v2 = compareLists(_:_:ignoredTypes:)(a2, a1, &v6);
  }

  return v2;
}

uint64_t _s7SwiftUI11TransactionV7forEach7keyType_yxm_y5ValueQz_SbztXEtAA0C3KeyRzlFAA09AnimationI033_D98E9A1069CEEADA58829ED440E36F30LLV_Ttg503_s7a4UI11c38V32animationIgnoringTransitionPhaseAA9J18VSgvgyAG_SbztXEfU_AA0J0VSgTf1cn_n(uint64_t result, uint64_t *a2)
{
  v8[2] = a2;
  if (result)
  {
    v3 = result;
    type metadata accessor for TypedElement<EmptyKey>(0, &lazy cache variable for type metadata for TransactionPropertyKey<AnimationKey>, &type metadata for AnimationKey, &protocol witness table for AnimationKey, type metadata accessor for TransactionPropertyKey);
    v5 = v4;
    result = BloomFilter.init(hashValue:)(v4).value;
    v6 = v9;
    do
    {
      while ((v6 & ~v3[7]) != 0)
      {
        v3 = v3[5];
        if (!v3)
        {
          return result;
        }
      }

      v7 = v3[3];
      if (v7)
      {
        v9 = v6;
        result = _s7SwiftUI12PropertyListV7ElementC7forEach6filter_SbAA11BloomFilterV_ys9UnmanagedVyAEG_SbztXEtF03_s7a4UI12cd55V7forEach7keyType_Sbxm_y5ValueQz_SbztXEtAA0C3KeyRzlFys9k5VyAC7e3CG_U121XEfU_AA011TransactioncJ033_B2543BCA257433E04979186A1DC2B6BCLLVyAA09AnimationJ033_D98E9A1069CEEADA58829ED440E36F30LLVG_Tg5xSbRi_zRi0_zlyAA9AnimationVSgIsgnl_Tf1ncn_n0la15UI11Transactionnop5_yxm_rst1_uvwxyz5FyAG_U62XEfU_AA09AnimationI033_D98E9A1069CEEADA58829ED440E36F30LLV_TG5xSbRi_zRi0_zlyAPIsgnl_Tf1nnc_nTf4nng_n(&v9, v7, partial apply for closure #1 in Transaction.animationIgnoringTransitionPhase.getter, v8);
        if ((result & 1) == 0)
        {
          break;
        }
      }

      if (v3[2] == v5)
      {
        result = v3[9];
        if (result)
        {
          *a2 = result;
        }
      }

      v3 = v3[4];
    }

    while (v3);
  }

  return result;
}

uint64_t Transaction.forEach<A>(keyType:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for TransactionPropertyKey();
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a2;
  v14[5] = a3;
  WitnessTable = swift_getWitnessTable();
  return PropertyList.forEach<A>(keyType:_:)(v11, partial apply for closure #1 in Transaction.forEach<A>(keyType:_:), v14, a4, v11, WitnessTable);
}

uint64_t specialized closure #1 in withTransaction<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _threadTransactionData();
  v6 = one-time initialization token for v5;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static Semantics.v5;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C524 == 1)
  {
    if ((dyld_program_minos_at_least() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (dword_1ED53C520 < v7)
  {
    goto LABEL_12;
  }

  if (_threadTransactionData())
  {
    type metadata accessor for PropertyList.Element();
    swift_unknownObjectRetain();
    swift_dynamicCastClassUnconditional();
  }

  PropertyList.merge(_:)(a1);
LABEL_12:
  _setThreadTransactionData();
  closure #1 in closure #2 in ScrollStateEnqueueRequests.enqueueRequests(_:)(a2, a3);
  _setThreadTransactionData();

  return outlined destroy of ScrollStateEnqueueRequests(a2);
}

uint64_t Transaction.synchronized<A>(_:)(void (*a1)(uint64_t))
{
  if (one-time initialization token for _lock != -1)
  {
    swift_once();
  }

  v2 = static Update._lock;
  v3 = _MovableLockLock(static Update._lock);
  a1(v3);
  return _MovableLockUnlock(v2);
}

uint64_t protocol witness for static TransactionKey._valuesEqual(_:_:) in conformance Transaction.ScrollTargetAnchorKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  result = *(a2 + 16);
  if ((v3 & 1) == 0)
  {
    v5 = *(a1 + 8);
    v6 = (*a1 == *a2) & ~result;
    if (v5 == *(a2 + 8))
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t protocol witness for static TransactionKey._valuesEqual(_:_:) in conformance AnimationReasonKey(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 4);
  result = *(a2 + 4);
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Transaction.ID and conformance Transaction.ID()
{
  result = lazy protocol witness table cache variable for type Transaction.ID and conformance Transaction.ID;
  if (!lazy protocol witness table cache variable for type Transaction.ID and conformance Transaction.ID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Transaction.ID and conformance Transaction.ID);
  }

  return result;
}

void type metadata accessor for TypedElement<EmptyKey>(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void type metadata accessor for AnimationListener?()
{
  if (!lazy cache variable for type metadata for AnimationListener?)
  {
    type metadata accessor for AnimationListener();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnimationListener?);
    }
  }
}

uint64_t protocol witness for static TransactionKey._valuesEqual(_:_:) in conformance Transaction.AnimationLogicalListenerKey()
{

  return sub_18D3AC168();
}

uint64_t GestureComponentAttachmentModifier.name.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t GestureComponentAttachmentModifier.name.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t GestureComponentAttachmentModifier.relations.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);

  *(v2 + v4) = a1;
  return result;
}

uint64_t GestureComponentAttachmentModifier.callbacks.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 44);
  v4 = *(v3 + 8);
  v5 = *(v3 + 16);
  *a2 = *v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5;
  return outlined copy of BodyInputElement();
}

uint64_t GestureComponentAttachmentModifier.callbacks.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = v2 + *(a2 + 44);
  result = outlined consume of BodyInputElement();
  *v6 = v3;
  *(v6 + 8) = v4;
  *(v6 + 16) = v5;
  return result;
}

unint64_t static GestureComponentAttachmentModifier._makeView(modifier:inputs:body:)@<X0>(unsigned int *a1@<X0>, __int128 *a2@<X1>, void (*a3)(uint64_t *__return_ptr)@<X2>, void *a4@<X8>)
{
  v35 = *MEMORY[0x1E69E9840];
  v5 = a2[3];
  v6 = a2[1];
  v31 = a2[2];
  v32 = v5;
  v7 = a2[3];
  v33 = a2[4];
  v8 = a2[1];
  v29 = *a2;
  v30 = v8;
  v24 = v31;
  v25 = v7;
  v26 = a2[4];
  v9 = *a1;
  v34 = *(a2 + 20);
  LODWORD(v27) = *(a2 + 20);
  v22 = v29;
  v23 = v6;
  a3(v19);
  result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v32);
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v11 = _s7SwiftUI18PreferencesOutputsVy14AttributeGraph0E0Vy5ValueQzGSgxmcAA13PreferenceKeyRzluigAA014ViewRespondersI0V_TtB5(v19[0]);
  v12 = v11;
  if ((v11 & 0x100000000) != 0)
  {
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    swift_dynamicCastClassUnconditional();
    type metadata accessor for [ViewResponder](0);
    v12 = specialized GraphHost.intern<A>(_:for:id:)(MEMORY[0x1E69E7CC0], v13, 0);
  }

  result = AGSubgraphGetCurrent();
  if (result)
  {
    *(&v20[2] + 8) = v31;
    *(&v20[3] + 8) = v32;
    *(&v20[4] + 8) = v33;
    *(v20 + 8) = v29;
    DWORD2(v20[5]) = v34;
    *(&v20[1] + 8) = v30;
    *&v20[0] = __PAIR64__(v9, v12);
    v21 = result;
    MEMORY[0x1EEE9AC00](result);
    v14 = type metadata accessor for GestureFilter();
    v17[2] = v14;
    v17[3] = swift_getWitnessTable();
    outlined init with copy of _ViewInputs(&v29, &v22);
    _sSay7SwiftUI13ViewResponderCGMaTm_4(0, &lazy cache variable for type metadata for Attribute<[ViewResponder]>, type metadata accessor for [ViewResponder], MEMORY[0x1E698D388]);
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v20, _s14AttributeGraph0A0VyACyxGqd__c5ValueQyd__RszAA12StatefulRuleRd__lufcADSPyqd__GXEfU_TA_2, v17, v14, MEMORY[0x1E69E73E0], v15, MEMORY[0x1E69E7410], v16);
    v26 = v20[4];
    v27 = v20[5];
    v28 = v21;
    v22 = v20[0];
    v23 = v20[1];
    v24 = v20[2];
    v25 = v20[3];
    (*(*(v14 - 8) + 8))(&v22, v14);
    LOBYTE(v20[0]) = 0;
    result = PreferencesOutputs.subscript.setter(v18, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
LABEL_6:
    *a4 = v19[0];
    a4[1] = v19[1];
    return result;
  }

  __break(1u);
  return result;
}

int *GestureComponentAttachmentModifier.init(component:name:relations:callbacks:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = *a5;
  v12 = a5[1];
  v13 = *(a5 + 16);
  (*(*(a6 - 8) + 32))(a7, a1, a6);
  result = type metadata accessor for GestureComponentAttachmentModifier();
  v15 = (a7 + result[9]);
  *v15 = a2;
  v15[1] = a3;
  *(a7 + result[10]) = a4;
  v16 = a7 + result[11];
  *v16 = v11;
  *(v16 + 8) = v12;
  *(v16 + 16) = v13;
  return result;
}

id closure #1 in closure #1 in GestureFilter.responder.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for GestureComponentResponder();
  type metadata accessor for GestureFilter();
  v4 = *(a1 + 4);
  v5 = *(a1 + 56);
  v15[2] = *(a1 + 40);
  v15[3] = v5;
  v15[4] = *(a1 + 72);
  v16 = *(a1 + 88);
  v6 = *(a1 + 24);
  v15[0] = *(a1 + 8);
  v15[1] = v6;
  v7 = *(a1 + 40);
  v8 = *(a1 + 72);
  v13[3] = *(a1 + 56);
  v13[4] = v8;
  v14 = *(a1 + 88);
  v9 = *(a1 + 24);
  v13[0] = *(a1 + 8);
  v13[1] = v9;
  v13[2] = v7;
  outlined init with copy of _ViewInputs(v15, v12);
  v10 = swift_allocObject();
  result = GestureComponentResponder.init(modifier:inputs:)(v4, v13);
  *a2 = v10;
  return result;
}

uint64_t GestureComponentResponder.__allocating_init(modifier:inputs:)(int a1, uint64_t a2)
{
  v4 = swift_allocObject();
  GestureComponentResponder.init(modifier:inputs:)(a1, a2);
  return v4;
}

uint64_t GestureFilter.updateValue()()
{
  GestureFilter.responder.getter();
  type metadata accessor for [ViewResponder](0);
  AGGraphGetValue();
  if (v0)
  {

    MultiViewResponder.children.setter(v1);
  }

  result = AGGraphGetOutputValue();
  if (!result)
  {
    type metadata accessor for _ContiguousArrayStorage<Swift.AnyObject>();
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_18DDAB4D0;
    *(v3 + 32) = GestureFilter.responder.getter();
    AGGraphSetOutputValue();
  }

  return result;
}

uint64_t GestureComponentResponder.modifier.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GestureComponentAttachmentModifier();
  Value = AGGraphGetValue();
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, Value, v2);
}

uint64_t GestureComponentResponder.modifier.setter(uint64_t a1)
{
  specialized GestureComponentResponder.modifier.setter(a1);
  v2 = type metadata accessor for GestureComponentAttachmentModifier();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

void (*GestureComponentResponder.modifier.modify(uint64_t *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  v6 = type metadata accessor for GestureComponentAttachmentModifier();
  *v5 = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  *(v5 + 8) = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    *(v5 + 16) = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 16) = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v11 = v10;
  *(v5 + 24) = v10;
  *(v5 + 48) = *(v1 + *(*v1 + 448));
  Value = AGGraphGetValue();
  v13 = *(v8 + 16);
  *(v5 + 32) = v13;
  *(v5 + 40) = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, Value, v6);
  return GestureComponentResponder.modifier.modify;
}

void GestureComponentResponder.modifier.modify(void **a1, char a2)
{
  v2 = *a1;
  if (a2)
  {
    v3 = v2[12];
    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    v6 = *v2;
    v7 = *(v2 + 1);
    v8 = (*(v2 + 4))(v5, v4, *v2);
    MEMORY[0x1EEE9AC00](v8);
    v16 = v6;
    v17 = v3;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v5, partial apply for closure #1 in Attribute.setValue(_:), v15, v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v9);
    v10 = *(v7 + 8);
    v10(v5, v6);
    v10(v4, v6);
  }

  else
  {
    v5 = *(v2 + 2);
    v4 = *(v2 + 3);
    v11 = *v2;
    v12 = *(v2 + 1);
    MEMORY[0x1EEE9AC00](a1);
    v16 = v11;
    v17 = v13;
    _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v4, closure #1 in Attribute.setValue(_:)partial apply, v15, v11, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v14);
    (*(v12 + 8))(v4, v11);
  }

  free(v4);
  free(v5);
  free(v2);
}

_DWORD *(*GestureComponentResponder.$modifier.modify(uint64_t a1))(_DWORD *result)
{
  *a1 = v1;
  *(a1 + 8) = *(v1 + *(*v1 + 448));
  return GestureComponentResponder.$modifier.modify;
}

id GestureComponentResponder.init(modifier:inputs:)(int a1, uint64_t a2)
{
  (*(*(*(*v2 + 400) - 8) + 56))(v2 + *(*v2 + 416), 1, 1);
  *(v2 + *(*v2 + 424)) = 0;
  *(v2 + *(*v2 + 432)) = 0;
  *(v2 + *(*v2 + 440)) = 0;
  v5 = (v2 + *(*v2 + 456));
  *v5 = 0;
  v5[1] = 0;
  *(v2 + *(*v2 + 448)) = a1;
  v6 = *(a2 + 48);
  *(v2 + 120) = *(a2 + 32);
  *(v2 + 136) = v6;
  *(v2 + 152) = *(a2 + 64);
  v7 = *(a2 + 16);
  *(v2 + 88) = *a2;
  *(v2 + 200) = 0u;
  *(v2 + 184) = 0u;
  *(v2 + 168) = *(a2 + 80);
  *(v2 + 104) = v7;
  result = AGSubgraphGetCurrent();
  if (result)
  {
    v9 = MEMORY[0x1E69E7CC0];
    *(v2 + 176) = result;
    *(v2 + 40) = v9;
    *(v2 + 48) = 0u;
    *(v2 + 64) = 0u;
    *(v2 + 80) = v9;
    *(v2 + 24) = 0;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v10 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v11 = *(v10 + 208);

    swift_beginAccess();
    *(v2 + 24) = v11;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    return v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t GestureComponentResponder.gestureContainer.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 440);
  if (*(v0 + v2))
  {
    return swift_unknownObjectRetain();
  }

  if (!AGSubgraphIsValid())
  {
    return 0;
  }

  v3 = *(v0 + 136);
  v15[2] = *(v0 + 120);
  v15[3] = v3;
  v15[4] = *(v0 + 152);
  v16 = *(v0 + 168);
  v4 = *(v0 + 104);
  v15[0] = *(v0 + 88);
  v15[1] = v4;
  v5 = *(v0 + 136);
  v11 = *(v0 + 120);
  v12 = v5;
  v13 = *(v0 + 152);
  v14 = *(v0 + 168);
  v6 = *(v0 + 104);
  v9 = *(v0 + 88);
  v10 = v6;
  outlined init with copy of _ViewInputs(v15, v17);
  v7 = specialized _ViewInputs.makeGestureContainer(responder:)(v0, &v9, v1, &protocol witness table for GestureComponentResponder<A>);
  v17[2] = v11;
  v17[3] = v12;
  v17[4] = v13;
  v18 = v14;
  v17[0] = v9;
  v17[1] = v10;
  outlined destroy of _ViewInputs(v17);
  *(v0 + v2) = v7;
  swift_unknownObjectRelease();
  result = *(v0 + v2);
  if (result)
  {
    return swift_unknownObjectRetain();
  }

  __break(1u);
  return result;
}

uint64_t GestureComponentResponder.eventSources.getter()
{
  v1 = v0;
  v55 = *MEMORY[0x1E69E9840];
  v2 = *(*v0 + 400);
  v3 = type metadata accessor for Optional();
  v39 = *(v3 - 8);
  v40 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v36 - v4;
  v6 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36 - v8;
  v10 = type metadata accessor for GestureComponentAttachmentModifier();
  v41 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36 - v11;
  specialized static Update.begin()();
  AGGraphClearUpdate();
  GestureComponentResponder.modifier.getter(v12);
  AGGraphSetUpdate();
  v44 = v6;
  (*(v6 + 16))(v9, v12, v2);
  v13 = *&v12[*(v10 + 40)];
  v42 = v10;
  v43 = v13;
  v14 = *v0;
  v15 = (v0 + *(*v0 + 456));
  if (!*v15)
  {
    v19 = *(v0 + 17);
    v51[2] = *(v0 + 15);
    v51[3] = v19;
    v51[4] = *(v0 + 19);
    v52 = *(v0 + 42);
    v20 = *(v0 + 13);
    v51[0] = *(v0 + 11);
    v51[1] = v20;
    v21 = *(v0 + 17);
    v47 = *(v0 + 15);
    v48 = v21;
    v49 = *(v0 + 19);
    v50 = *(v0 + 42);
    v22 = *(v0 + 13);
    v45 = *(v0 + 11);
    v46 = v22;
    outlined init with copy of _ViewInputs(v51, v53);
    v23 = _ViewInputs.makeComponentGestureRecognizerSource<A>(_:)(v0);
    v25 = v24;
    v53[2] = v47;
    v53[3] = v48;
    v53[4] = v49;
    v54 = v50;
    v53[0] = v45;
    v53[1] = v46;
    outlined destroy of _ViewInputs(v53);
    *v15 = v23;
    v15[1] = v25;
    swift_unknownObjectRelease();
    v18 = v43;
    v17 = v44;
    goto LABEL_14;
  }

  v16 = v15[1];
  v37 = *(v14 + 432);
  v38 = v16;
  if (*(v0 + v37))
  {
    swift_unknownObjectRetain();
    v18 = v43;
    v17 = v44;
LABEL_10:
    v44 = v2;
    v30 = v12;
    v31 = v18;
    ObjectType = swift_getObjectType();
    v33 = v38;
    if ((*(v38 + 16))(ObjectType, v38))
    {
      *(v0 + v37) = 0;
      (*(v33 + 24))(ObjectType, v33);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
      *(v0 + v37) = 1;
    }

    v18 = v31;
    v12 = v30;
    v2 = v44;
    goto LABEL_14;
  }

  v36 = v9;
  v26 = *(v14 + 416);
  swift_beginAccess();
  (*(v39 + 16))(v5, v0 + v26, v40);
  v17 = v44;
  result = (*(v44 + 48))(v5, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_18;
  }

  v40 = &v36;
  MEMORY[0x1EEE9AC00](result);
  v9 = v36;
  *(&v36 - 4) = v2;
  *(&v36 - 3) = v9;
  *(&v36 - 4) = 3;
  swift_unknownObjectRetain();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v5, partial apply for closure #1 in compareValues<A>(_:_:options:), (&v36 - 6), v2, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v28);
  v29 = v51[0];
  result = (*(v17 + 8))(v5, v2);
  v18 = v43;
  if ((v29 & 1) == 0)
  {
    goto LABEL_10;
  }

  if (!*(v0 + *(*v0 + 424)))
  {
LABEL_18:
    __break(1u);
    return result;
  }

  *&v51[0] = *(v0 + *(*v0 + 424));
  *&v45 = v43;
  _sSay7SwiftUI13ViewResponderCGMaTm_4(0, &lazy cache variable for type metadata for [GestureRelation], MEMORY[0x1E69A2888], MEMORY[0x1E69E62F8]);
  if ((AGCompareValues() & 1) == 0)
  {
    goto LABEL_10;
  }

  swift_unknownObjectRelease();
LABEL_14:
  _sSay7SwiftUI13ViewResponderCGMaTm_4(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<EventBindingSource>, type metadata accessor for EventBindingSource, MEMORY[0x1E69E6F90]);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_18DDA6EB0;
  if (!*v15)
  {
    __break(1u);
  }

  v35 = *(v15[1] + 8);
  *(v34 + 32) = *v15;
  *(v34 + 40) = v35;
  swift_unknownObjectRetain();
  $defer #2 <A>() in GestureComponentResponder.eventSources.getter(v1, v9, v18);
  (*(v17 + 8))(v9, v2);
  (*(v41 + 8))(v12, v42);
  static Update.end()();
  return v34;
}

uint64_t $defer #2 <A>() in GestureComponentResponder.eventSources.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + 400);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *(v6 - 8);
  (*(v12 + 16))(&v15 - v10, a2, v6, v9);
  (*(v12 + 56))(v11, 0, 1, v6);
  v13 = *(*a1 + 416);
  swift_beginAccess();
  (*(v8 + 40))(a1 + v13, v11, v7);
  swift_endAccess();
  *(a1 + *(*a1 + 424)) = a3;
}

uint64_t GestureComponentResponder.isValid.getter()
{
  if (*(v0 + *(*v0 + 440)))
  {
    return AGSubgraphIsValid();
  }

  else
  {
    return 0;
  }
}

unint64_t GestureComponentResponder.containsGlobalPoints(_:cacheKey:options:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, double *a3@<X2>, double *a4@<X8>)
{
  v8 = *a3;
  v14[0] = *a3;
  MultiViewResponder.hitTestPolicy(options:)(v14);
  if (LOBYTE(v13) == 1)
  {
    swift_beginAccess();
    v9 = *(v4 + 40);
    *a4 = 0.0;
    a4[1] = 0.0;
    *(a4 + 2) = v9;
  }

  else
  {
    v13 = v8;
    result = MultiViewResponder.containsGlobalPoints(_:cacheKey:options:)(a1, a2 | ((HIDWORD(a2) & 1) << 32), &v13, v14);
    v11 = v14[1];
    if ((LOBYTE(v8) & 2) == 0)
    {
      v11 = 16.0;
    }

    v12 = v14[2];
    *a4 = v14[0];
    a4[1] = v11;
    a4[2] = v12;
  }

  return result;
}

uint64_t GestureComponentResponder.features.getter@<X0>(__int16 *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 40);
  if (v3 >> 62)
  {
LABEL_17:
    v4 = __CocoaSet.count.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v4)
  {
    v5 = 0;
    v6 = 0;
    while (1)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x193AC03C0](v5, v3);
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_12:
          __break(1u);
LABEL_13:
          v9 = v6 | 2;
          goto LABEL_15;
        }
      }

      else
      {
        if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_17;
        }

        v7 = *(v3 + 8 * v5 + 32);

        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_12;
        }
      }

      (*(*v7 + 216))(&v11);

      v6 |= v11;
      ++v5;
      if (v8 == v4)
      {
        goto LABEL_13;
      }
    }
  }

  v9 = 2;
LABEL_15:

  *a1 = v9;
  return result;
}

Swift::Void __swiftcall GestureComponentResponder.extendPrintTree(string:)(Swift::String *string)
{
  v1 = _typeName(_:qualified:)();
  MEMORY[0x193ABEDD0](v1);
}

uint64_t GestureComponentResponder.__ivar_destroyer()
{
  v1 = *(*v0 + 416);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t GestureComponentResponder.deinit()
{
  v0 = DefaultLayoutViewResponder.deinit();
  v1 = *(*v0 + 416);
  v2 = type metadata accessor for Optional();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t GestureComponentResponder.__deallocating_deinit()
{
  GestureComponentResponder.deinit();

  return swift_deallocClassInstance();
}

uint64_t specialized GestureComponentResponder.modifier.setter(uint64_t a1)
{
  v3 = *(v1 + *(*v1 + 448));
  v7 = type metadata accessor for GestureComponentAttachmentModifier();
  v8 = v3;
  return _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, closure #1 in Attribute.setValue(_:)partial apply, &v6, v7, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6370], MEMORY[0x1E69E7410], v4);
}

unint64_t type metadata accessor for EventBindingSource()
{
  result = lazy cache variable for type metadata for EventBindingSource;
  if (!lazy cache variable for type metadata for EventBindingSource)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for EventBindingSource);
  }

  return result;
}

uint64_t type metadata completion function for GestureComponentAttachmentModifier()
{
  result = swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for GestureComponentAttachmentModifier(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a1;
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 64);
  v6 = *(v4 + 80);
  if ((v6 & 0x1000F8) != 0 || ((((((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17 > 0x18)
  {
    v8 = *a2;
    *v3 = *a2;
    v3 = (v8 + (((v6 & 0xF8) + 23) & ~(v6 & 0xF8) & 0x1F8));
  }

  else
  {
    (*(v4 + 16))(a1);
    v10 = ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    v11 = ((a2 + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v10 = *v11;
    v10[1] = v11[1];
    v12 = ((v10 + 23) & 0xFFFFFFFFFFFFFFF8);
    v13 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
    v14 = *v13;
    v13 += 15;
    *v12 = v14;
    v15 = (v12 + 15) & 0xFFFFFFFFFFFFFFF8;
    v16 = *(v13 & 0xFFFFFFFFFFFFFFF8);
    v17 = *((v13 & 0xFFFFFFFFFFFFFFF8) + 8);
    v18 = *((v13 & 0xFFFFFFFFFFFFFFF8) + 16);

    outlined copy of BodyInputElement();
    *v15 = v16;
    *(v15 + 8) = v17;
    *(v15 + 16) = v18;
  }

  return v3;
}

uint64_t destroy for GestureComponentAttachmentModifier(uint64_t a1, uint64_t a2)
{
  (*(*(*(a2 + 16) - 8) + 8))();

  return outlined consume of BodyInputElement();
}

uint64_t initializeWithCopy for GestureComponentAttachmentModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 16;
  (*v5)();
  v6 = *(v5 + 48) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v12 + 16);

  outlined copy of BodyInputElement();
  *v11 = v13;
  *(v11 + 8) = v14;
  *(v11 + 16) = v15;
  return a1;
}

uint64_t assignWithCopy for GestureComponentAttachmentModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 24;
  (*v5)();
  v6 = *(v5 + 40) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];

  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  v10 += 15;
  *v9 = v11;

  v12 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v10 & 0xFFFFFFFFFFFFFFF8);
  v14 = *((v10 & 0xFFFFFFFFFFFFFFF8) + 8);
  LOBYTE(v10) = *((v10 & 0xFFFFFFFFFFFFFFF8) + 16);
  outlined copy of BodyInputElement();
  *v12 = v13;
  *(v12 + 8) = v14;
  *(v12 + 16) = v10;
  outlined consume of BodyInputElement();
  return a1;
}

uint64_t initializeWithTake for GestureComponentAttachmentModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 32;
  (*v5)();
  v6 = *(v5 + 32) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = ((v8 + 23) & 0xFFFFFFFFFFFFFFF8);
  *v9 = *v10;
  v11 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *v12;
  *(v11 + 16) = *(v12 + 16);
  *v11 = v13;
  return a1;
}

uint64_t assignWithTake for GestureComponentAttachmentModifier(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(*(a3 + 16) - 8) + 40;
  (*v5)();
  v6 = *(v5 + 24) + 7;
  v7 = ((v6 + a1) & 0xFFFFFFFFFFFFFFF8);
  v8 = ((v6 + a2) & 0xFFFFFFFFFFFFFFF8);
  *v7 = *v8;
  v7[1] = v8[1];

  v9 = ((v7 + 23) & 0xFFFFFFFFFFFFFFF8);
  v10 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *v10;
  v10 += 15;
  *v9 = v11;

  v12 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  v13 = *((v10 & 0xFFFFFFFFFFFFFFF8) + 16);
  *v12 = *(v10 & 0xFFFFFFFFFFFFFFF8);
  *(v12 + 16) = v13;
  outlined consume of BodyInputElement();
  return a1;
}

uint64_t getEnumTagSinglePayload for GestureComponentAttachmentModifier(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
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

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  v9 = (a2 - v7 + 255) >> 8;
  if (v8 <= 3)
  {
    v10 = v9 + 1;
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

  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v13 = *&a1[v8];
      if (!*&a1[v8])
      {
        goto LABEL_28;
      }
    }

    else
    {
      v13 = *&a1[v8];
      if (!v13)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v12 || (v13 = a1[v8]) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))();
    }

    v17 = *(((&a1[v6 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v15 = (v13 - 1) << (8 * v8);
  if (v8 <= 3)
  {
    v16 = *a1;
  }

  else
  {
    v15 = 0;
    v16 = *a1;
  }

  return v7 + (v16 | v15) + 1;
}

void storeEnumTagSinglePayload for GestureComponentAttachmentModifier(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v9 = *(*(*(a4 + 16) - 8) + 64);
  v10 = ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17;
  if (v8 >= a3)
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v11 = (a3 - v8 + 255) >> 8;
    if (v10 <= 3)
    {
      v12 = v11 + 1;
    }

    else
    {
      v12 = 2;
    }

    if (v12 >= 0x10000)
    {
      v13 = 4;
    }

    else
    {
      v13 = 2;
    }

    if (v12 < 0x100)
    {
      v13 = 1;
    }

    if (v12 >= 2)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    if (v8 >= a2)
    {
LABEL_17:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *&a1[v10] = 0;
          if (!a2)
          {
            return;
          }

          goto LABEL_32;
        }

        *&a1[v10] = 0;
      }

      else if (v14)
      {
        a1[v10] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_32;
      }

      if (!a2)
      {
        return;
      }

LABEL_32:
      if (v7 < 0x7FFFFFFF)
      {
        v18 = (((&a1[v9 + 7] & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8);
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
        v17 = *(v6 + 56);

        v17();
      }

      return;
    }
  }

  v15 = ~v8 + a2;
  bzero(a1, ((((((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 17);
  if (v10 <= 3)
  {
    v16 = (v15 >> 8) + 1;
  }

  else
  {
    v16 = 1;
  }

  if (v10 <= 3)
  {
    *a1 = v15;
    if (v14 > 1)
    {
LABEL_27:
      if (v14 == 2)
      {
        *&a1[v10] = v16;
      }

      else
      {
        *&a1[v10] = v16;
      }

      return;
    }
  }

  else
  {
    *a1 = v15;
    if (v14 > 1)
    {
      goto LABEL_27;
    }
  }

  if (v14)
  {
    a1[v10] = v16;
  }
}

uint64_t type metadata completion function for GestureComponentResponder()
{
  result = type metadata accessor for Optional();
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

uint64_t assignWithCopy for GestureFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 4) = *(a2 + 4);
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 48) = *(a2 + 48);

  *(a1 + 56) = *(a2 + 56);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 68) = *(a2 + 68);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 76) = *(a2 + 76);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 84) = *(a2 + 84);
  *(a1 + 88) = *(a2 + 88);
  v4 = *(a2 + 96);
  v5 = *(a1 + 96);
  *(a1 + 96) = v4;
  v6 = v4;

  *(a1 + 104) = *(a2 + 104);

  return a1;
}

uint64_t assignWithTake for GestureFilter(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);

  *(a1 + 32) = *(a2 + 32);

  *(a1 + 48) = *(a2 + 48);

  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  return a1;
}

uint64_t Stack.top.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*v2)
  {
    v4 = *(a1 + 16);
    v5 = swift_projectBox();
    v11 = *(v4 - 8);
    (*(v11 + 16))(a2, v5, v4);
    v6 = *(v11 + 56);
    v7 = a2;
    v8 = 0;
    v9 = v4;
  }

  else
  {
    v9 = *(a1 + 16);
    v6 = *(*(v9 - 8) + 56);
    v7 = a2;
    v8 = 1;
  }

  return v6(v7, v8, 1, v9);
}

uint64_t Stack.count.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v13 = *v1;

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x193ABEF30](&v14, a1, WitnessTable);
  Stack.pop()(a1, v7);
  v9 = *(*(v3 - 8) + 48);
  v10 = 0;
  if (v9(v7, 1, v3) != 1)
  {
    v10 = 0;
    v11 = *(v5 + 8);
    do
    {
      ++v10;
      v11(v7, v4);
      Stack.pop()(a1, v7);
    }

    while (v9(v7, 1, v3) != 1);
  }

  return v10;
}

uint64_t Stack.map<A>(_:)@<X0>(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v22[1] = *MEMORY[0x1E69E9840];
  v11 = *v5;
  v22[0] = *v5;
  v12 = v22;
  v13 = Stack.count.getter(a3);
  if (v13 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v12 = v13;
  v14 = *(*(a4 - 8) + 72);
  v13 *= v14;
  if ((v12 * v14) >> 64 != v13 >> 63)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v15 = *(*(a4 - 8) + 80);
  if (((v15 + 1) & v15) != 0)
  {
LABEL_12:
    __break(1u);
LABEL_13:
    v19 = v13;
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    v13 = v19;
    if (!isStackAllocationSafe)
    {
LABEL_5:
      v16 = swift_slowAlloc();
      closure #1 in Stack.map<A>(_:)(v16, v12, v11, v12, a1, a2, *(a3 + 16), a4, a5);

      JUMPOUT(0x193AC4820);
    }

    goto LABEL_9;
  }

  if (v15 > 0xF)
  {
    goto LABEL_5;
  }

  if (v13 > 1024)
  {
    goto LABEL_13;
  }

LABEL_9:
  MEMORY[0x1EEE9AC00](v13);
  result = closure #1 in Stack.map<A>(_:)(v22 - v17, v12, v11, v12, a1, a2, *(a3 + 16), a4, v22);
  *a5 = v22[0];
  return result;
}

uint64_t closure #1 in Stack.map<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void (*a5)(char *)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v40 = a2;
  v47 = a5;
  v48 = a6;
  v51 = a1;
  v39 = a9;
  v12 = *(a8 - 8);
  v49 = a4;
  v50 = v12;
  MEMORY[0x1EEE9AC00](a1);
  v14 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v38 - v21;
  v52 = a3;
  v23 = type metadata accessor for Stack();

  WitnessTable = swift_getWitnessTable();
  MEMORY[0x193ABEF30](&v53, v23, WitnessTable);
  v46 = v23;
  Stack.pop()(v23, v22);
  v44 = *(v16 + 48);
  v45 = v16 + 48;
  if (v44(v22, 1, a7) != 1)
  {
    v25 = *(v16 + 32);
    v41 = v50 + 32;
    v42 = v25;
    v43 = v16 + 32;
    v26 = (v16 + 8);
    v27 = 1;
    while (1)
    {
      result = v42(v19, v22, a7);
      v29 = v49 - v27;
      if (__OFSUB__(v49, v27))
      {
        break;
      }

      v47(v19);
      (*(v50 + 32))(v51 + *(v50 + 72) * v29, v14, a8);
      (*v26)(v19, a7);
      ++v27;
      Stack.pop()(v46, v22);
      if (v44(v22, 1, a7) == 1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

LABEL_5:

  v53 = 0;
  result = UnsafeBufferPointer.indices.getter();
  v31 = 0;
  if (v30 == result)
  {
LABEL_11:
    *v39 = v31;
    return result;
  }

  if (v30 < result)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v32 = v30 - result;
  if (v30 > result)
  {
    v33 = *(v50 + 32);
    v34 = *(v50 + 72);
    v35 = (v50 + 8);
    v36 = v51 + result * v34;
    do
    {
      v33(v14, v36, a8);
      v37 = type metadata accessor for Stack();
      Stack.push(_:)(v14, v37);
      result = (*v35)(v14, a8);
      v36 += v34;
      --v32;
    }

    while (v32);
    v31 = v53;
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t Stack<A>.makeReusable(indirectMap:)(uint64_t result)
{
  if (*v1)
  {
    v9 = *v1;
    MEMORY[0x1EEE9AC00](result);
    v6 = *(v2 + 16);
    v7 = v3;
    v8 = v4;
    Stack.map<A>(_:)(partial apply for closure #1 in Stack<A>.makeReusable(indirectMap:), &v5, v2, v6, &v10);

    *v1 = v10;
  }

  return result;
}

uint64_t partial apply for closure #1 in Stack<A>.makeReusable(indirectMap:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  (*(*(v3 - 8) + 16))(a2, a1, v3);
  return (*(v4 + 16))(v5, v3, v4);
}

uint64_t Stack<A>.tryToReuse(by:indirectMap:testOnly:)(uint64_t *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v8 = a4;
  v40 = a3;
  v39 = a2;
  v46 = *MEMORY[0x1E69E9840];
  v10 = *(a4 + 16);
  v11 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v42 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v34 - v14;
  v43 = v10;
  MEMORY[0x1EEE9AC00](v16);
  v38 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v34 - v19;
  v21 = *v6;
  v44 = *a1;
  v45 = v21;
  v23 = (v22 + 48);
  v24 = (v22 + 32);
  v41 = a5;
  v35 = (v22 + 8);
  v36 = a5 + 24;

  v37 = v15;
  while (v45)
  {
    if (!v44)
    {
      goto LABEL_9;
    }

    Stack.pop()(v8, v15);
    v25 = *v23;
    v26 = v43;
    if ((*v23)(v15, 1, v43) == 1)
    {
      __break(1u);
LABEL_14:
      __break(1u);
    }

    v27 = *v24;
    (*v24)(v20, v15, v26);
    v28 = v42;
    v29 = v8;
    Stack.pop()(v8, v42);
    if (v25(v28, 1, v26) == 1)
    {
      goto LABEL_14;
    }

    v30 = v38;
    v27(v38, v28, v26);
    v31 = (*(v41 + 24))(v30, v39, v40 & 1, v26);
    v32 = *v35;
    (*v35)(v30, v26);
    v32(v20, v26);
    v8 = v29;
    v15 = v37;
    if ((v31 & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  if (v44)
  {
LABEL_9:
    swift_beginAccess();
    if (static ReuseTrace.recorder)
    {
      AGGraphAddTraceEvent();
    }

LABEL_11:

    return 0;
  }

  return 1;
}

uint64_t Stack3.pop()@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v43 = a2;
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v41 = &TupleTypeMetadata3 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &TupleTypeMetadata3 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &TupleTypeMetadata3 - v10;
  v12 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v38 = &TupleTypeMetadata3 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v40 = &TupleTypeMetadata3 - v16;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &TupleTypeMetadata3 - v19;
  v21 = *(v5 + 16);
  v44 = v2;
  v21(v11, v2, v4, v18);
  v22 = *(v12 + 48);
  if (v22(v11, 1, v3) == 1)
  {
    v39 = *(v5 + 8);
    v39(v11, v4);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v23 = *(TupleTypeMetadata3 + 48);
    v24 = v42;
    (v21)(v42, v44 + v23, v4);
    if (v22(v24, 1, v3) == 1)
    {
      v39(v42, v4);
      v25 = *(TupleTypeMetadata3 + 64);
      v26 = v41;
      (v21)(v41, v44 + v25, v4);
      if (v22(v26, 1, v3) == 1)
      {
        v39(v26, v4);
        return (*(v12 + 56))(v43, 1, 1, v3);
      }

      v28 = *(v12 + 32);
      v34 = v38;
      v28(v38, v26, v3);
      v36 = v44;
      v39((v44 + v25), v4);
      v30 = *(v12 + 56);
      v30(v36 + v25, 1, 1, v3);
    }

    else
    {
      v28 = *(v12 + 32);
      v34 = v40;
      v28(v40, v42, v3);
      v35 = v44;
      v39((v44 + v23), v4);
      v30 = *(v12 + 56);
      v30(v35 + v23, 1, 1, v3);
    }

    v31 = v43;
    v32 = v43;
    v33 = v34;
  }

  else
  {
    v28 = *(v12 + 32);
    v28(v20, v11, v3);
    v29 = v44;
    (*(v5 + 8))(v44, v4);
    v30 = *(v12 + 56);
    v30(v29, 1, 1, v3);
    v31 = v43;
    v32 = v43;
    v33 = v20;
  }

  v28(v32, v33, v3);
  return (v30)(v31, 0, 1, v3);
}

uint64_t *initializeBufferWithCopyOfBuffer for Stack3(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  if (*(v6 + 84))
  {
    v7 = *(v6 + 64);
  }

  else
  {
    v7 = *(v6 + 64) + 1;
  }

  v8 = *(v6 + 80);
  v9 = ~v8;
  v10 = v7 + v8;
  if (v8 > 7 || (*(v6 + 80) & 0x100000) != 0 || ((v7 + v8 + ((v7 + v8) & ~v8)) & ~v8) + v7 > 0x18)
  {
    v13 = *a2;
    *a1 = *a2;
    a1 = (v13 + ((v8 + 16) & v9));
  }

  else
  {
    v14 = *(v6 + 48);
    if (v14(a2, 1, v5))
    {
      memcpy(a1, a2, v7);
    }

    else
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
    }

    v15 = ((a2 + v10) & v9);
    if (v14(v15, 1, v5))
    {
      memcpy(((a1 + v10) & v9), v15, v7);
    }

    else
    {
      (*(v6 + 16))((a1 + v10) & v9, v15, v5);
      (*(v6 + 56))((a1 + v10) & v9, 0, 1, v5);
    }

    v16 = v10 + ((a1 + v10) & v9);
    v17 = &v15[v10];
    if (v14((v17 & v9), 1, v5))
    {
      memcpy((v16 & v9), (v17 & v9), v7);
    }

    else
    {
      (*(v6 + 16))(v16 & v9, v17 & v9, v5);
      (*(v6 + 56))(v16 & v9, 0, 1, v5);
    }
  }

  return a1;
}

uint64_t destroy for Stack3(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v13 = *(v3 - 8);
  v4 = *(v13 + 48);
  if (!v4(a1, 1, v3))
  {
    (*(v13 + 8))(a1, v3);
  }

  if (*(v13 + 84))
  {
    v5 = *(v13 + 64);
  }

  else
  {
    v5 = *(v13 + 64) + 1;
  }

  v6 = *(v13 + 80);
  v7 = v5 + v6;
  v8 = ~v6;
  v9 = (v5 + v6 + a1) & ~v6;
  if (!v4(v9, 1, v3))
  {
    (*(v13 + 8))(v9, v3);
  }

  v10 = v7 + v9;
  result = (v4)(v10 & v8, 1, v3);
  if (!result)
  {
    v12 = *(v13 + 8);

    return v12(v10 & v8, v3);
  }

  return result;
}

void *initializeWithCopy for Stack3(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(a2, 1, v5))
  {
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
    if (v8)
    {
      v10 = *(v6 + 64);
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v6 + 16))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
  }

  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 + 1;
  }

  v12 = *(v6 + 80);
  v13 = v11 + v12;
  v14 = ~v12;
  v15 = ((a1 + v11 + v12) & ~v12);
  v16 = ((a2 + v11 + v12) & ~v12);
  if (v7(v16, 1, v5))
  {
    memcpy(v15, v16, v11);
  }

  else
  {
    (*(v6 + 16))(v15, v16, v5);
    (*(v6 + 56))(v15, 0, 1, v5);
  }

  v17 = &v15[v13];
  v18 = &v16[v13];
  if (v7((v18 & v14), 1, v5))
  {
    memcpy((v17 & v14), (v18 & v14), v11);
  }

  else
  {
    (*(v6 + 16))(v17 & v14, v18 & v14, v5);
    (*(v6 + 56))(v17 & v14, 0, 1, v5);
  }

  return a1;
}

void *assignWithCopy for Stack3(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 16))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 24))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = *(v6 + 80);
  v15 = v13 + v14;
  v26 = a1;
  v16 = ~v14;
  v17 = ((a1 + v13 + v14) & ~v14);
  v18 = ((a2 + v13 + v14) & ~v14);
  v19 = v7(v17, 1, v5);
  v20 = v7(v18, 1, v5);
  if (v19)
  {
    if (!v20)
    {
      (*(v6 + 16))(v17, v18, v5);
      (*(v6 + 56))(v17, 0, 1, v5);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v20)
  {
    (*(v6 + 8))(v17, v5);
LABEL_20:
    memcpy(v17, v18, v13);
    goto LABEL_21;
  }

  (*(v6 + 24))(v17, v18, v5);
LABEL_21:
  v21 = &v17[v15];
  v22 = &v18[v15];
  v23 = v7((v21 & v16), 1, v5);
  v24 = v7((v22 & v16), 1, v5);
  if (!v23)
  {
    if (!v24)
    {
      (*(v6 + 24))(v21 & v16, v22 & v16, v5);
      return v26;
    }

    (*(v6 + 8))(v21 & v16, v5);
    goto LABEL_26;
  }

  if (v24)
  {
LABEL_26:
    memcpy((v21 & v16), (v22 & v16), v13);
    return v26;
  }

  (*(v6 + 16))(v21 & v16, v22 & v16, v5);
  (*(v6 + 56))(v21 & v16, 0, 1, v5);
  return v26;
}

void *initializeWithTake for Stack3(void *a1, const void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (v7(a2, 1, v5))
  {
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
    if (v8)
    {
      v10 = *(v6 + 64);
    }

    else
    {
      v10 = v9 + 1;
    }

    memcpy(a1, a2, v10);
  }

  else
  {
    (*(v6 + 32))(a1, a2, v5);
    (*(v6 + 56))(a1, 0, 1, v5);
    v8 = *(v6 + 84);
    v9 = *(v6 + 64);
  }

  if (v8)
  {
    v11 = v9;
  }

  else
  {
    v11 = v9 + 1;
  }

  v12 = *(v6 + 80);
  v13 = v11 + v12;
  v14 = ~v12;
  v15 = ((a1 + v11 + v12) & ~v12);
  v16 = ((a2 + v11 + v12) & ~v12);
  if (v7(v16, 1, v5))
  {
    memcpy(v15, v16, v11);
  }

  else
  {
    (*(v6 + 32))(v15, v16, v5);
    (*(v6 + 56))(v15, 0, 1, v5);
  }

  v17 = &v15[v13];
  v18 = &v16[v13];
  if (v7((v18 & v14), 1, v5))
  {
    memcpy((v17 & v14), (v18 & v14), v11);
  }

  else
  {
    (*(v6 + 32))(v17 & v14, v18 & v14, v5);
    (*(v6 + 56))(v17 & v14, 0, 1, v5);
  }

  return a1;
}

void *assignWithTake for Stack3(void *a1, void *a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  v8 = v7(a1, 1, v5);
  v9 = v7(a2, 1, v5);
  if (v8)
  {
    if (!v9)
    {
      (*(v6 + 32))(a1, a2, v5);
      (*(v6 + 56))(a1, 0, 1, v5);
      goto LABEL_12;
    }

    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  else
  {
    if (!v9)
    {
      (*(v6 + 40))(a1, a2, v5);
      goto LABEL_12;
    }

    (*(v6 + 8))(a1, v5);
    v10 = *(v6 + 84);
    v11 = *(v6 + 64);
  }

  if (v10)
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 + 1;
  }

  memcpy(a1, a2, v12);
LABEL_12:
  if (*(v6 + 84))
  {
    v13 = *(v6 + 64);
  }

  else
  {
    v13 = *(v6 + 64) + 1;
  }

  v14 = *(v6 + 80);
  v15 = v13 + v14;
  v26 = a1;
  v16 = ~v14;
  v17 = ((a1 + v13 + v14) & ~v14);
  v18 = ((a2 + v13 + v14) & ~v14);
  v19 = v7(v17, 1, v5);
  v20 = v7(v18, 1, v5);
  if (v19)
  {
    if (!v20)
    {
      (*(v6 + 32))(v17, v18, v5);
      (*(v6 + 56))(v17, 0, 1, v5);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v20)
  {
    (*(v6 + 8))(v17, v5);
LABEL_20:
    memcpy(v17, v18, v13);
    goto LABEL_21;
  }

  (*(v6 + 40))(v17, v18, v5);
LABEL_21:
  v21 = &v17[v15];
  v22 = &v18[v15];
  v23 = v7((v21 & v16), 1, v5);
  v24 = v7((v22 & v16), 1, v5);
  if (!v23)
  {
    if (!v24)
    {
      (*(v6 + 40))(v21 & v16, v22 & v16, v5);
      return v26;
    }

    (*(v6 + 8))(v21 & v16, v5);
    goto LABEL_26;
  }

  if (v24)
  {
LABEL_26:
    memcpy((v21 & v16), (v22 & v16), v13);
    return v26;
  }

  (*(v6 + 32))(v21 & v16, v22 & v16, v5);
  (*(v6 + 56))(v21 & v16, 0, 1, v5);
  return v26;
}

uint64_t getEnumTagSinglePayload for Stack3(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 1;
  if (!v5)
  {
    v6 = 0;
  }

  v7 = *(*(*(a3 + 16) - 8) + 64);
  if (!v5)
  {
    ++v7;
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v6;
  if (a2 > v6)
  {
    v9 = ((v7 + *(v4 + 80) + ((v7 + *(v4 + 80)) & ~*(v4 + 80))) & ~*(v4 + 80)) + v7;
    v10 = 8 * v9;
    if (v9 > 3)
    {
      goto LABEL_8;
    }

    v12 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v12))
    {
      v11 = *(a1 + v9);
      if (v11)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v12 <= 0xFF)
      {
        if (v12 < 2)
        {
          goto LABEL_26;
        }

LABEL_8:
        v11 = *(a1 + v9);
        if (!*(a1 + v9))
        {
          goto LABEL_26;
        }

LABEL_15:
        v13 = (v11 - 1) << v10;
        if (v9 > 3)
        {
          v13 = 0;
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

        return v6 + (v9 | v13) + 1;
      }

      v11 = *(a1 + v9);
      if (*(a1 + v9))
      {
        goto LABEL_15;
      }
    }
  }

LABEL_26:
  if (v5 < 2)
  {
    return 0;
  }

  v15 = (*(v4 + 48))(a1, v5);
  if (v15 >= 2)
  {
    return v15 - 1;
  }

  else
  {
    return 0;
  }
}

char *storeEnumTagSinglePayload for Stack3(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = 0;
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  v8 = *(v6 + 64);
  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
    ++v8;
  }

  v10 = ((v8 + *(v6 + 80) + ((v8 + *(v6 + 80)) & ~*(v6 + 80))) & ~*(v6 + 80)) + v8;
  v11 = a3 >= v9;
  v12 = a3 - v9;
  if (v12 == 0 || !v11)
  {
LABEL_15:
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  if (v10 > 3)
  {
    v5 = 1;
    if (v9 < a2)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

  v13 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
  if (!HIWORD(v13))
  {
    if (v13 < 0x100)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    if (v13 >= 2)
    {
      v5 = v14;
    }

    else
    {
      v5 = 0;
    }

    goto LABEL_15;
  }

  v5 = 4;
  if (v9 < a2)
  {
LABEL_16:
    v15 = ~v9 + a2;
    if (v10 < 4)
    {
      v17 = (v15 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v15 & ~(-1 << (8 * v10));
        v19 = result;
        bzero(result, v10);
        result = v19;
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *v19 = v18;
            if (v5 > 1)
            {
LABEL_43:
              if (v5 == 2)
              {
                *&result[v10] = v17;
              }

              else
              {
                *&result[v10] = v17;
              }

              return result;
            }
          }

          else
          {
            *v19 = v15;
            if (v5 > 1)
            {
              goto LABEL_43;
            }
          }

          goto LABEL_40;
        }

        *v19 = v18;
        v19[2] = BYTE2(v18);
      }

      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

    else
    {
      v16 = result;
      bzero(result, v10);
      result = v16;
      *v16 = v15;
      v17 = 1;
      if (v5 > 1)
      {
        goto LABEL_43;
      }
    }

LABEL_40:
    if (v5)
    {
      result[v10] = v17;
    }

    return result;
  }

LABEL_25:
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *&result[v10] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_32;
    }

    *&result[v10] = 0;
  }

  else if (v5)
  {
    result[v10] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  if (!a2)
  {
    return result;
  }

LABEL_32:
  if (v7 >= 2)
  {
    v20 = *(v6 + 56);

    return v20();
  }

  return result;
}

uint64_t _GeometryActionModifier.value.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t _GeometryActionModifier.action.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t _GeometryActionModifier.value.init(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t GeometryActionBinder.init(provider:position:size:transform:environment:safeAreaInsets:phase:)@<X0>(int a1@<W0>, int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, int a6@<W5>, int a7@<W6>, char *a8@<X8>)
{
  v12 = type metadata accessor for GeometryActionBinder();
  v13 = v12[15];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  ValueCycleDetector.init()(AssociatedTypeWitness, &a8[v13]);
  if (one-time initialization token for v6 != -1)
  {
    swift_once();
  }

  v15 = static Semantics.v6;
  if (one-time initialization token for forced != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  if (byte_1ED53C51C != 1)
  {
    if (static Semantics.forced >= v15)
    {
      goto LABEL_7;
    }

LABEL_9:
    v18 = specialized static GraphHost.currentHost.getter();
    swift_beginAccess();
    v19 = *(v18 + 64);

    v17 = 0;
    v16 = *&v19 | 0xFFFFFFFF00000000;
    goto LABEL_10;
  }

  if ((dyld_program_sdk_at_least() & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_7:
  v16 = 0;
  v17 = 0x200000000;
LABEL_10:
  v20 = &a8[v12[16]];
  *v20 = v16;
  v20[12] = BYTE4(v17);
  *(v20 + 2) = v17;
  *&a8[v12[17]] = 0;
  *&a8[v12[18]] = 0;
  result = (*(*(AssociatedTypeWitness - 8) + 56))(&a8[v12[19]], 1, 1, AssociatedTypeWitness);
  *a8 = a1;
  *(a8 + 1) = a2;
  *(a8 + 2) = a3;
  *(a8 + 3) = a4;
  *(a8 + 4) = a5;
  *(a8 + 5) = a6;
  *(a8 + 6) = a7;
  return result;
}

uint64_t _GeometryActionModifier.value(geometry:)(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  return a2(v4);
}

uint64_t _GeometryActionModifier2.value.getter(uint64_t a1, uint64_t a2)
{
  v2 = _ViewInputs.base.modify(a1, a2);

  return v2;
}

uint64_t key path getter for _GeometryActionModifier2.value : <A>_GeometryActionModifier2<A>@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  *a2 = _ViewInputs.base.modify(*a1, a1[1]);
  a2[1] = v3;
}

uint64_t key path setter for _GeometryActionModifier2.value : <A>_GeometryActionModifier2<A>(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return _GeometryActionModifier.value.setter(v1, v2);
}

uint64_t _GeometryActionModifier2.value.init@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t key path getter for _GeometryActionModifier.action : <A>_GeometryActionModifier<A>@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v7 = a2 + a3;
  v9 = *(a1 + 16);
  v8 = *(a1 + 24);
  v10 = swift_allocObject();
  *(v10 + 16) = *(v7 - 16);
  *(v10 + 32) = v9;
  *(v10 + 40) = v8;
  *a5 = a4;
  a5[1] = v10;
}

uint64_t key path setter for _GeometryActionModifier.action : <A>_GeometryActionModifier<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a3 + a4;
  v10 = *a1;
  v9 = a1[1];
  v11 = swift_allocObject();
  *(v11 + 16) = *(v8 - 16);
  *(v11 + 32) = v10;
  *(v11 + 40) = v9;

  *(a2 + 16) = a6;
  *(a2 + 24) = v11;
  return result;
}

uint64_t static _GeometryActionModifier._makeView(modifier:inputs:body:)@<X0>(_DWORD *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(uint64_t, uint64_t, uint64_t)@<X6>, uint64_t a8@<X8>, uint64_t a9)
{
  v32 = a4;
  v33 = a3;
  v31 = a8;
  v30 = a9;
  v49 = *MEMORY[0x1E69E9840];
  a7(255, a5, a6);
  swift_getWitnessTable();
  v11 = type metadata accessor for GeometryActionBinder();
  v29 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  LODWORD(a1) = *a1;
  v14 = *a2;
  v15 = *(a2 + 2);
  v16 = *(a2 + 6);
  v17 = *(a2 + 44);
  v46 = *(a2 + 28);
  v47 = v17;
  v48 = v14;
  v18 = *(a2 + 15);
  v19 = *(a2 + 18);
  swift_beginAccess();
  v20 = *(v15 + 16);
  *&v21 = *(a2 + 8);
  v28 = v21;
  v22 = v21;
  *&v21 = *(a2 + 76);
  v27 = v21;
  GeometryActionBinder.init(provider:position:size:transform:environment:safeAreaInsets:phase:)(a1, v22, v19, v18, v20, v21, v16, v13);
  v35 = v11;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v13, v30, v34, v11, MEMORY[0x1E69E73E0], v23, MEMORY[0x1E69E7410], v24);
  (*(v29 + 8))(v13, v11);
  v25 = AGGraphSetFlags();
  v37 = v48;
  v38 = v15;
  v39 = v16;
  v40 = v46;
  v41 = v47;
  v42 = v18;
  v43 = v28;
  v44 = v19;
  v45 = v27;
  return v33(v25, &v37);
}

uint64_t _GeometryActionModifier2.value(geometry:)(uint64_t a1, void (*a2)(_OWORD *))
{
  v3 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v3;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);

  a2(v5);
}

uint64_t View.onGeometryChange<A>(of:do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v6 = type metadata accessor for _GeometryActionModifier();
  return View.modifier<A>(_:)(v8, a5, v6);
}

uint64_t static _CoreGeometryActionModifier._makeView(modifier:inputs:body:)@<X0>(int *a1@<X0>, __int128 *a2@<X1>, uint64_t (*a3)(uint64_t, __int128 *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v28 = a4;
  v29 = a3;
  v27 = a5;
  v45 = *MEMORY[0x1E69E9840];
  type metadata accessor for _CoreGeometryActionModifier();
  swift_getWitnessTable();
  v7 = type metadata accessor for GeometryActionBinder();
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = *a1;
  v11 = *a2;
  v12 = *(a2 + 2);
  v13 = *(a2 + 6);
  v14 = *(a2 + 44);
  v42 = *(a2 + 28);
  v43 = v14;
  v44 = v11;
  v15 = *(a2 + 15);
  v16 = *(a2 + 18);
  swift_beginAccess();
  v17 = *(v12 + 16);
  *&v18 = *(a2 + 8);
  v25 = v18;
  v19 = v18;
  *&v18 = *(a2 + 76);
  v24 = v18;
  GeometryActionBinder.init(provider:position:size:transform:environment:safeAreaInsets:phase:)(v10, v19, v16, v15, v17, v18, v13, v9);
  v31 = v7;
  WitnessTable = swift_getWitnessTable();
  type metadata accessor for Attribute<()>();
  _ss17withUnsafePointer2to_q0_x_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v9, closure #1 in Attribute.init<A>(_:)partial apply, v30, v7, MEMORY[0x1E69E73E0], v20, MEMORY[0x1E69E7410], v21);
  (*(v26 + 8))(v9, v7);
  v22 = AGGraphSetFlags();
  v33 = v44;
  v34 = v12;
  v35 = v13;
  v36 = v42;
  v37 = v43;
  v38 = v15;
  v39 = v25;
  v40 = v16;
  v41 = v24;
  return v29(v22, &v33);
}

uint64_t _CoreGeometryActionModifier.value(geometry:)(uint64_t a1, uint64_t (*a2)(_OWORD *))
{
  v2 = *(a1 + 16);
  v4[0] = *a1;
  v4[1] = v2;
  v4[2] = *(a1 + 32);
  v5 = *(a1 + 48);
  return a2(v4);
}

uint64_t View.onGeometryChange<A>(for:of:action:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(void, uint64_t, uint64_t))
{
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = a4;
  v13[3] = a5;
  v11 = a10(0, a7, a9);
  return View.modifier<A>(_:)(v13, a6, v11);
}

Swift::Void __swiftcall GeometryActionBinder.updateValue()()
{
  v2 = v0;
  v199 = *MEMORY[0x1E69E9840];
  v3 = *(v0 + 16);
  v179 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v173 = &v152 - v7;
  v181 = v5;
  v175 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v162 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v152 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v177 = &v152 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v185 = &v152 - v16;
  v17 = type metadata accessor for ObservationTracking._AccessList();
  v174 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v161 = &v152 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v171 = &v152 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v172 = &v152 - v22;
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_1(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v183 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v170 = &v152 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v169 = &v152 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v176 = (&v152 - v28);
  v191 = *(AssociatedTypeWitness - 8);
  v29 = *(v191 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v31 = &v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v163 = &v152 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v159 = &v152 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v182 = &v152 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v184 = &v152 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v190 = &v152 - v41;
  v188 = v3;
  v187 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v152 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = v43;
  MEMORY[0x1EEE9AC00](v45);
  v186 = &v152 - v46;
  if (*(v1 + v2[17]) != *AGGraphGetValue() >> 1)
  {
    AGGraphGetValue();
    specialized GeometryActionBinder.reset(seed:)(v2);
  }

  v47 = v2[18];
  v48 = (*(v1 + v47) + 1);
  *(v1 + v47) = v48;
  CurrentAttribute = AGGraphGetCurrentAttribute();
  v50 = *MEMORY[0x1E698D3F8];
  if (CurrentAttribute == *MEMORY[0x1E698D3F8])
  {
    __break(1u);
  }

  else
  {
    v164 = v17;
    v157 = v12;
    v160 = v44;
    v158 = v6;
    v154 = v29;
    v155 = &v152 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
    v180 = v2;
    v189 = AssociatedTypeWitness;
    v192 = v1;
    LODWORD(v168) = *(v1 + 20) == v50;
    v51 = v50;
    v52 = AGCreateWeakAttribute();
    v53 = v52;
    v167 = HIDWORD(v52);
    v54 = AGCreateWeakAttribute();
    v55 = v54;
    v166 = HIDWORD(v54);
    v56 = AGCreateWeakAttribute();
    v57 = v56;
    v165 = HIDWORD(v56);
    v58 = AGCreateWeakAttribute();
    v59 = v58;
    v60 = HIDWORD(v58);
    v61 = AGCreateWeakAttribute();
    v62 = v61;
    v63 = HIDWORD(v61);
    LODWORD(v168) = v51;
    v64 = AGCreateWeakAttribute();
    v193[0] = v53;
    v193[1] = v167;
    v193[2] = v55;
    v193[3] = v166;
    v193[4] = v57;
    v193[5] = v165;
    v193[6] = v59;
    v193[7] = v60;
    v193[8] = v62;
    v193[9] = v63;
    v194 = v64;
    v195 = v48;
    v65 = v188;
    Value = AGGraphGetValue();
    v31 = (v187 + 16);
    v44 = *(v187 + 16);
    v67 = v186;
    v68 = (v44)(v186, Value, v65);
    v6 = &v152;
    MEMORY[0x1EEE9AC00](v68);
    v29 = &v152 - 6;
    v69 = v179;
    *(&v152 - 4) = v65;
    *(&v152 - 3) = v69;
    *(&v152 - 2) = v67;
    *(&v152 - 1) = v193;
    if (one-time initialization token for _current == -1)
    {
      goto LABEL_5;
    }
  }

  swift_once();
LABEL_5:
  v70 = static ObservationCenter._current;
  swift_beginAccess();
  v71 = pthread_getspecific(v70[2]);
  v72 = v189;
  v73 = v174;
  if (!v71)
  {
    v74 = swift_slowAlloc();
    pthread_setspecific(v70[2], v74);
    v198 = type metadata accessor for ObservationCenter();
    v70 = v70[3];
    *&v197 = v70;
    outlined init with take of Any(&v197, v74);

    v71 = v74;
  }

  outlined init with copy of Any(v71, &v197);
  type metadata accessor for ObservationCenter();
  swift_dynamicCast();
  v75 = v196;
  v76 = AGGraphGetCurrentAttribute();
  if (v76 == v168)
  {
    __break(1u);
LABEL_38:
    v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70[2] + 1, 1, v70);
    *(v75 + 24) = v70;
    goto LABEL_11;
  }

  LODWORD(v166) = v76;
  v168 = v6;
  v153 = v44;
  swift_beginAccess();
  v167 = *(v75 + 24);
  *(v75 + 24) = MEMORY[0x1E69E7CC0];
  v77 = v169;
  v48 = v164;
  v78 = (*(v73 + 56))(v169, 1, 1, v164);
  MEMORY[0x1EEE9AC00](v78);
  *(&v152 - 4) = v72;
  *(&v152 - 3) = partial apply for closure #1 in GeometryActionBinder.updateValue();
  *(&v152 - 2) = v29;
  v79 = type metadata accessor for Error();
  v80 = v182;
  _ss24withUnsafeMutablePointer2to_q0_xz_q0_SpyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(v77, partial apply for closure #1 in ObservationCenter._withObservation<A>(do:), (&v152 - 6), v183, v79, v72, MEMORY[0x1E69E7288], &v196);
  v81 = *(v191 + 32);
  v183 = v191 + 32;
  v182 = v81;
  (v81)(v184, v80, v72);
  v82 = MEMORY[0x1E69E81D0];
  v83 = MEMORY[0x1E69E6720];
  v84 = v176;
  outlined init with take of ObservationTracking._AccessList?(v77, v176, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v85 = v83;
  v86 = v170;
  _s11Observation0A8TrackingV11_AccessListVSgWOcTm_0(v84, v170, &lazy cache variable for type metadata for ObservationTracking._AccessList?, v82, v85);
  v87 = (*(v73 + 48))(v86, 1, v48);
  v165 = v31;
  if (v87 == 1)
  {
    _s11Observation0A8TrackingV11_AccessListVSgWOhTm_0(v84, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
    v88 = v86;
    v6 = v185;
    goto LABEL_14;
  }

  v29 = *(v73 + 32);
  v89 = v172;
  (v29)(v172, v86, v48);
  (*(v73 + 16))(v171, v89, v48);
  v70 = *(v75 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v75 + 24) = v70;
  v6 = v185;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_38;
  }

LABEL_11:
  v92 = v70[2];
  v91 = v70[3];
  if (v92 >= v91 >> 1)
  {
    v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v91 > 1, v92 + 1, 1, v70);
  }

  v70[2] = v92 + 1;
  (v29)(v70 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v92, v171, v48);
  *(v75 + 24) = v70;
  (*(v73 + 8))(v172, v48);
  v72 = v189;
  v88 = v176;
LABEL_14:
  _s11Observation0A8TrackingV11_AccessListVSgWOhTm_0(v88, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  v93 = v190;
  (v182)(v190, v184, v72);
  v94 = *(v75 + 24);
  v95 = *(v94 + 16);
  if (v95)
  {
    v98 = *(v73 + 16);
    v97 = v73 + 16;
    v96 = v98;
    v99 = v94 + ((*(v97 + 64) + 32) & ~*(v97 + 64));
    v100 = *(v97 + 56);
    v101 = v161;
    v102 = (v97 - 8);
    v184 = *(v75 + 24);

    v103 = v166;
    do
    {
      v96(v101, v99, v48);
      specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(v103, v101, &unk_1F006FA80, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FAA8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
      (*v102)(v101, v48);
      v99 += v100;
      --v95;
    }

    while (v95);

    v72 = v189;
    v93 = v190;
    v6 = v185;
  }

  *(v75 + 24) = v167;

  v104 = v191;
  v105 = *(v191 + 16);
  v172 = (v191 + 16);
  v171 = v105;
  (v105)(v6, v93, v72);
  (*(v104 + 56))(v6, 0, 1, v72);
  v106 = v175;
  v107 = v72;
  v108 = v175 + 16;
  v109 = *(v175 + 16);
  v170 = v180[19];
  v110 = v177;
  v111 = v181;
  v109(v177, v192 + v170, v181);
  v112 = *(TupleTypeMetadata2 + 48);
  v113 = v173;
  v109(v173, v6, v111);
  v184 = v112;
  v109(&v112[v113], v110, v111);
  v114 = *(v104 + 48);
  v115 = v114(v113, 1, v107);
  v176 = v109;
  v174 = v108;
  if (v115 == 1)
  {
    v116 = *(v106 + 8);
    v116(v110, v111);
    v117 = v6;
    v118 = v116;
    v116(v117, v111);
    v119 = v114(&v184[v113], 1, v107) == 1;
    v120 = v113;
    v121 = v107;
    if (v119)
    {
      v118(v113, v111);
      (*(v191 + 8))(v190, v107);
      goto LABEL_34;
    }
  }

  else
  {
    v122 = v157;
    v109(v157, v113, v111);
    v123 = v122;
    v121 = v107;
    if (v114(&v184[v113], 1, v107) != 1)
    {
      v145 = v159;
      (v182)(v159, &v184[v113], v107);
      swift_getAssociatedConformanceWitness();
      v146 = v111;
      LODWORD(v184) = dispatch thunk of static Equatable.== infix(_:_:)();
      v147 = v123;
      v148 = *(v191 + 8);
      v148(v145, v121);
      v149 = *(v175 + 8);
      v149(v177, v146);
      v149(v185, v146);
      v148(v147, v189);
      v150 = v113;
      v151 = v146;
      v118 = v149;
      v124 = v190;
      v149(v150, v151);
      v121 = v189;
      v125 = v176;
      if (v184)
      {
        v148(v124, v189);
        goto LABEL_34;
      }

      goto LABEL_25;
    }

    v118 = *(v106 + 8);
    v118(v177, v111);
    v118(v185, v111);
    (*(v191 + 8))(v123, v107);
    v120 = v113;
  }

  v124 = v190;
  (v158[1])(v120, TupleTypeMetadata2);
  v125 = v176;
LABEL_25:
  v126 = v162;
  v125(v162, v192 + v170, v181);
  if (v114(v126, 1, v121) == 1)
  {
    v127 = v163;
    (v171)(v163, v124, v121);
    if (v114(v126, 1, v121) != 1)
    {
      v118(v126, v181);
    }
  }

  else
  {
    v127 = v163;
    (v182)(v163, v126, v121);
  }

  if (GeometryActionBinder.dispatch(value:)(v124, v180))
  {
    LOBYTE(v196) = 17;
    v128 = v121;
    v129 = v188;
    v153(v160, v186, v188);
    v130 = v159;
    v131 = v171;
    (v171)(v159, v127, v128);
    v132 = v155;
    (v131)(v155, v124, v128);
    v133 = v187;
    v134 = (*(v187 + 80) + 32) & ~*(v187 + 80);
    v135 = v191;
    v136 = *(v191 + 80);
    v137 = (v156 + v136 + v134) & ~v136;
    v138 = (v154 + v136 + v137) & ~v136;
    v139 = swift_allocObject();
    v140 = v179;
    *(v139 + 16) = v129;
    *(v139 + 24) = v140;
    (*(v133 + 32))(v139 + v134, v160, v129);
    v141 = v139 + v137;
    v142 = v182;
    (v182)(v141, v130, v128);
    v142(v139 + v138, v132, v128);
    static Update.enqueueAction(reason:_:)(&v196, partial apply for closure #2 in GeometryActionBinder.updateValue(), v139);

    v143 = *(v135 + 8);
    v143(v163, v128);
    v143(v190, v128);
  }

  else
  {
    v144 = *(v191 + 8);
    v144(v127, v121);
    v144(v124, v121);
  }

LABEL_34:
  (*(v187 + 8))(v186, v188);
}

uint64_t GeometryActionBinder.dispatch(value:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = v2 + *(a2 + 64);
  if (*(v5 + 12) << 32 == 0x200000000)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v6 = type metadata accessor for ValueCycleDetector();
    v7 = ValueCycleDetector.dispatch(value:label:isDebug:)(a1, implicit closure #2 in GeometryActionBinder.dispatch(value:), 0, 0, v6);
    $defer #1 <A>() in GeometryActionBinder.dispatch(value:)(v3, a1);
    return v7;
  }

  else
  {
    AGGraphClearUpdate();
    v9 = *AGGraphGetValue();
    AGGraphSetUpdate();
    if (*(v5 + 4) == v9)
    {
      v10 = *(v5 + 8);
      if (v10 && (v11 = v10 - 1, (*(v5 + 8) = v11) != 0))
      {
        v12 = 1;
      }

      else if (*(v5 + 12) == 1)
      {
        v12 = 0;
      }

      else
      {
        specialized static Log.externalWarning(_:)(0xD000000000000039, 0x800000018DD7AB60);
        v12 = 0;
        *(v5 + 12) = 1;
      }
    }

    else
    {
      *(v5 + 4) = v9;
      *(v5 + 8) = 2;
      v12 = 1;
    }

    $defer #1 <A>() in GeometryActionBinder.dispatch(value:)(v2, a1);
    return v12;
  }
}

uint64_t $defer #1 <A>() in GeometryActionBinder.dispatch(value:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for GeometryActionBinder() + 76);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(a1 + v4, v6);
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 16))(a1 + v4, a2, AssociatedTypeWitness);
  v7 = *(v9 + 56);

  return v7(a1 + v4, 0, 1, AssociatedTypeWitness);
}

uint64_t protocol witness for static _AttributeBody.flags.getter in conformance GeometryActionBinder<A>()
{
  swift_getWitnessTable();

  return static AsyncAttribute.flags.getter();
}

id specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(uint64_t a1, void (*a2)(void, void, void))
{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006E8B0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006E8D8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006E860, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006E888, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EAE0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EB08, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FA30, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FA58, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006ECC0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006ECE8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006E950, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006E978, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FBC0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FBE8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006ED10, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006ED38, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FC10, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FC38, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FC60, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FC88, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FCB0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FCD8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FD00, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FD28, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FD50, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FD78, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FDA0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FDC8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006E9A0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006E9C8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006E9F0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EA18, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FE90, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FEB8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EB80, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EBA8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FAD0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FAF8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FDF0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FE18, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EBD0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EBF8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FF30, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FF58, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FEE0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FF08, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006E900, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006E928, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FE40, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FE68, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EA40, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EA68, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F670, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F698, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F9E0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FA08, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FA80, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FAA8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FB70, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FB98, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EA90, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EAB8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EC70, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EC98, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EC20, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EC48, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006E810, partial apply for closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:), &unk_1F006E838, partial apply for closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:));
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006FB20, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006FB48, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EB30, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EB58, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006ED60, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006ED88, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F800, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F828, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F760, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F788, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EE50, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EE78, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F850, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F878, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F6C0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F6E8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EEA0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EEC8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F490, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F4B8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F2B0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F2D8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EEF0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EF18, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F530, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F558, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F350, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F378, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F170, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F198, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F3A0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F3C8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F1C0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F1E8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F300, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F328, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F120, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F148, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F4E0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F508, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EF90, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EFB8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F7B0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F7D8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F3F0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F418, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F210, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F238, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EFE0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F008, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F080, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F0A8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F030, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F058, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F580, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F5A8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F620, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F648, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F5D0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F5F8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F0D0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F0F8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F8F0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F918, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F440, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F468, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F260, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F288, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F8A0, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F8C8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F940, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F968, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F990, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F9B8, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006EF40, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006EF68, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

{
  return specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(a1, a2, &unk_1F006F710, closure #1 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply, &unk_1F006F738, closure #2 in ObservationCenter.invalidate<A>(_:onChangeIn:)partial apply);
}

id specialized ObservationCenter.invalidate<A>(_:onChangeIn:)(uint64_t a1, void (*a2)(void, void, void), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v67 = a5;
  *&v66 = a4;
  v64 = a3;
  v71 = a2;
  v7 = MEMORY[0x1E69E6720];
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_1(0, &lazy cache variable for type metadata for ObservationTracking._AccessList?, MEMORY[0x1E69E81D0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v63 = &v56 - v9;
  v10 = type metadata accessor for ObservationTracking();
  v68 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v74 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s11Observation0A8TrackingV11_AccessListVSgMaTm_1(0, &lazy cache variable for type metadata for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)?, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList), v7);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v65 = (&v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v56 - v15;
  type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)();
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for ObservationTracking._AccessList();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = (&v56 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = AGGraphGetAttributeSubgraph2();
  if (result)
  {
    v58 = result;
    v72 = v10;
    v61 = a6;
    specialized static GraphHost.currentHost.getter();
    swift_weakInit();
    swift_weakAssign();

    v27 = AGCreateWeakAttribute();
    v28 = v23 + 16;
    v29 = v71;
    v71 = *(v23 + 16);
    v71(v25, v29, v22);
    swift_beginAccess();
    specialized Dictionary.removeValue(forKey:)(v27, v16);
    swift_endAccess();
    v59 = v19;
    v30 = (*(v19 + 48))(v16, 1, v18);
    v62 = v23;
    v60 = v18;
    if (v30 == 1)
    {
      v31 = v23;
      v32 = v73;
      _s11Observation0A8TrackingV11_AccessListVSgWOhTm_0(v16, &lazy cache variable for type metadata for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)?, type metadata accessor for (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList), MEMORY[0x1E69E6720]);
    }

    else
    {
      v32 = v73;
      outlined init with take of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(v16, v21);
      v33 = *&v21[*(v18 + 48)];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v75[0] = *v25;
      *v25 = 0x8000000000000000;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v33, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, v75);

      *v25 = v75[0];

      specialized ObservationGraphMutation.cancel()(*(v21 + 2), *(v21 + 3));
      outlined destroy of (mutation: ObservationGraphMutation, accessList: ObservationTracking._AccessList)(v21);
      v31 = v62;
    }

    v69 = v25;
    v70 = v22;
    v35 = v63;
    v71(v63, v25, v22);
    (*(v31 + 56))(v35, 0, 1, v22);
    v36 = v74;
    ObservationTracking.init(_:)();
    v37 = swift_allocObject();
    v73 = v28;
    v38 = v37;
    swift_weakInit();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = v27;
    v57 = HIDWORD(v27);

    v40 = v58;
    v41 = AGSubgraphAddObserver();

    v42 = MEMORY[0x1E69E6F90];
    _s11Observation0A8TrackingV11_AccessListVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<ObservationTracking>, MEMORY[0x1E69E81D8], MEMORY[0x1E69E6F90]);
    v43 = v68;
    v44 = (*(v68 + 80) + 32) & ~*(v68 + 80);
    v45 = swift_allocObject();
    v66 = xmmword_18DDA6EB0;
    *(v45 + 16) = xmmword_18DDA6EB0;
    (*(v43 + 16))(v45 + v44, v36, v72);
    _s11Observation0A8TrackingV11_AccessListVSgMaTm_1(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(AGSubgraphRef, Int)>, type metadata accessor for (AGSubgraphRef, Int), v42);
    v46 = swift_allocObject();
    *(v46 + 16) = v66;
    *(v46 + 32) = v40;
    *(v46 + 40) = v41;
    v47 = v60;
    v48 = *(v60 + 48);
    v49 = v65;
    *v65 = v32;
    v49[1] = v27;
    v49[2] = v45;
    v49[3] = v46;
    v71(v49 + v48, v69, v70);
    (*(v59 + 56))(v49, 0, 1, v47);
    swift_beginAccess();
    swift_retain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v50 = v40;
    specialized Dictionary.subscript.setter(v49, v27);
    swift_endAccess();
    _s11Observation0A8TrackingV11_AccessListVSgWOcTm_0(v76, v75, &lazy cache variable for type metadata for WeakUncheckedSendable<GraphHost>, type metadata accessor for GraphHost, type metadata accessor for WeakUncheckedSendable);
    v51 = swift_allocObject();
    *(v51 + 16) = v50;
    *(v51 + 24) = v32;
    v52 = v57;
    *(v51 + 32) = v27;
    *(v51 + 36) = v52;
    *(v51 + 40) = v45;
    *(v51 + 48) = v46;
    *(v51 + 56) = v27;
    *(v51 + 60) = v52;
    outlined init with take of ObservationTracking._AccessList?(v75, v51 + 64, &lazy cache variable for type metadata for WeakUncheckedSendable<GraphHost>, type metadata accessor for GraphHost, type metadata accessor for WeakUncheckedSendable);
    v53 = v50;

    v54 = v53;
    v55 = v74;
    MEMORY[0x193ABDEB0](v74, v61, v51, 0, 0);

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    (*(v43 + 8))(v55, v72);
    _s11Observation0A8TrackingV11_AccessListVSgWOhTm_0(v76, &lazy cache variable for type metadata for WeakUncheckedSendable<GraphHost>, type metadata accessor for GraphHost, type metadata accessor for WeakUncheckedSendable);
    return (*(v62 + 8))(v69, v70);
  }

  return result;
}

uint64_t specialized GeometryActionBinder.reset(seed:)(int *a1)
{
  v2 = v1;
  *(v1 + a1[17]) = *AGGraphGetValue() >> 1;
  v4 = v1 + a1[16];
  if (*(v4 + 12) << 32 != 0x200000000)
  {
    *(v4 + 4) = 0xFFFFFFFFLL;
    *(v4 + 12) = 0;
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  type metadata accessor for ValueCycleDetector();
  ValueCycleDetector.reset()();
  v6 = a1[19];
  v7 = type metadata accessor for Optional();
  (*(*(v7 - 8) + 8))(v2 + v6, v7);
  v8 = *(*(AssociatedTypeWitness - 8) + 56);

  return v8(v2 + v6, 1, 1, AssociatedTypeWitness);
}

uint64_t partial apply for closure #1 in GeometryActionBinder.updateValue()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[5];
  v4 = *(v3 + 16);
  v6[0] = *v3;
  v6[1] = v4;
  v6[2] = *(v3 + 32);
  v7 = *(v3 + 48);
  return (*(v2 + 24))(v6, v1);
}

uint64_t partial apply for closure #2 in GeometryActionBinder.updateValue()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = (*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80);
  v4 = *(*(v1 - 8) + 64);
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = *(v5 + 80);
  return (*(v2 + 32))(v0 + ((v3 + v4 + v6) & ~v6), v0 + ((*(v5 + 64) + v6 + ((v3 + v4 + v6) & ~v6)) & ~v6), v1, v2);
}

uint64_t instantiation function for generic protocol witness table for GeometryActionBinder<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for GeometryActionBinder()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = type metadata accessor for ValueCycleDetector();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for Optional();
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
      return 0;
    }
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for GeometryActionBinder(_DWORD *a1, _DWORD *a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = v6;
  v8 = v6 | 3;
  v9 = ~v8;
  if (*(v5 + 84))
  {
    v10 = *(v5 + 64);
  }

  else
  {
    v10 = *(v5 + 64) + 1;
  }

  v11 = v6 <= 7u && (v6 & 0x100000) == 0;
  if (v11 && (v12 = v10 + v6, ((-5 - v6 - ((((((v6 + 28) & ~v8) + ((v6 + 9) & ~v6) + v10 + ((v12 + (v12 & ~v6)) & ~v6) + 19) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL)) | v6) - v10 >= 0xFFFFFFFFFFFFFFE7))
  {
    v13 = AssociatedTypeWitness;
    v50 = ((v6 + 9) & ~v6) + v10 + ((v10 + v6 + ((v10 + v6) & ~v6)) & ~v6);
    v51 = a1;
    v14 = ~v6;
    *a1 = *a2;
    v15 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v16 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v15 = *v16;
    v17 = ((v15 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v18 = ((v16 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v17 = *v18;
    v19 = ((v17 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v20 = ((v18 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v19 = *v20;
    v21 = ((v19 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v22 = ((v20 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v21 = *v22;
    v23 = ((v21 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v24 = ((v22 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v23 = *v24;
    v25 = ((v23 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v26 = ((v24 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v25 = *v26;
    v49 = ((v26 + v8 + 4) & v9);
    v48 = ((v25 + v8 + 4) & v9);
    *v48 = *v49;
    v27 = (v48 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    v28 = (v49 + 7) & 0xFFFFFFFFFFFFFFFCLL;
    *v27 = *v28;
    *(v27 + 4) = *(v28 + 4);
    v29 = ((v7 + 5 + v27) & ~v7);
    v30 = ((v7 + 5 + v28) & ~v7);
    v31 = *(v5 + 48);
    if (v31(v30, 1, AssociatedTypeWitness))
    {
      memcpy(v29, v30, v10);
    }

    else
    {
      (*(v5 + 16))(v29, v30, v13);
      (*(v5 + 56))(v29, 0, 1, v13);
    }

    v34 = ((v29 + v12) & v14);
    v35 = ((v30 + v12) & v14);
    if (v31(v35, 1, v13))
    {
      memcpy(v34, v35, v10);
    }

    else
    {
      (*(v5 + 16))(v34, v35, v13);
      (*(v5 + 56))(v34, 0, 1, v13);
    }

    v36 = &v34[v12];
    v37 = &v35[v12];
    if (v31((v37 & v14), 1, v13))
    {
      memcpy((v36 & v14), (v37 & v14), v10);
    }

    else
    {
      (*(v5 + 16))(v36 & v14, v37 & v14, v13);
      (*(v5 + 56))(v36 & v14, 0, 1, v13);
    }

    v38 = ((v48 + v50 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v39 = ((v49 + v50 + 3) & 0xFFFFFFFFFFFFFFFCLL);
    v40 = *v39;
    *(v38 + 5) = *(v39 + 5);
    *v38 = v40;
    v41 = ((v48 + v50 + 19) & 0xFFFFFFFFFFFFFFFCLL);
    v42 = ((v49 + v50 + 19) & 0xFFFFFFFFFFFFFFFCLL);
    *v41 = *v42;
    v43 = ((v41 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    v44 = ((v42 + 7) & 0xFFFFFFFFFFFFFFFCLL);
    *v43 = *v44;
    v45 = v43 + v7 + 4;
    v46 = v44 + v7 + 4;
    if (v31((v46 & v14), 1, v13))
    {
      memcpy((v45 & v14), (v46 & v14), v10);
    }

    else
    {
      (*(v5 + 16))(v45 & v14, v46 & v14, v13);
      (*(v5 + 56))(v45 & v14, 0, 1, v13);
    }

    return v51;
  }

  else
  {
    v32 = *a2;
    *a1 = *a2;
    v33 = v32 + ((v6 + 16) & v9);
  }

  return v33;
}

uint64_t destroy for GeometryActionBinder(uint64_t a1)
{
  v1 = (((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = *(v3 + 80);
  v5 = (v1 + (v4 | 3) + 4) & ~(v4 | 3);
  v6 = ~v4;
  v7 = (v4 + ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 5) & ~v4;
  v15 = v3;
  v8 = *(v3 + 48);
  if (!v8(v7, 1, AssociatedTypeWitness))
  {
    (*(v15 + 8))(v7, AssociatedTypeWitness);
  }

  if (*(v15 + 84))
  {
    v9 = *(v15 + 64);
  }

  else
  {
    v9 = *(v15 + 64) + 1;
  }

  v10 = (v7 + v4 + v9) & v6;
  if (!v8(v10, 1, AssociatedTypeWitness))
  {
    (*(v15 + 8))(v10, AssociatedTypeWitness);
  }

  v11 = v9 + v4 + v10;
  if (!v8(v11 & v6, 1, AssociatedTypeWitness))
  {
    (*(v15 + 8))(v11 & v6, AssociatedTypeWitness);
  }

  v12 = v4 + ((((((v4 + 9) & v6) + v9 + v5 + ((v9 + v4 + ((v9 + v4) & v6)) & v6) + 19) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4;
  result = (v8)(v12 & v6, 1, AssociatedTypeWitness);
  if (!result)
  {
    v14 = *(v15 + 8);

    return v14(v12 & v6, AssociatedTypeWitness);
  }

  return result;
}

_DWORD *initializeWithCopy for GeometryActionBinder(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v2 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v2 = *v3;
  v4 = ((v2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 80);
  v17 = *(v15 + 80) & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v46 = ((v12 + v16 + 4) & v17);
  v47 = v16 + 4;
  v45 = ((v13 + v16 + 4) & v17);
  *v46 = *v45;
  v18 = (v46 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v19 = (v45 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v18 = *v19;
  *(v18 + 4) = *(v19 + 4);
  v20 = ~v16;
  v21 = ((v16 + 5 + v18) & ~v16);
  v22 = ((v16 + 5 + v19) & ~v16);
  v23 = *(v15 + 48);
  if (v23(v22, 1, AssociatedTypeWitness))
  {
    v24 = *(v15 + 84);
    v25 = *(v15 + 64);
    if (v24)
    {
      v26 = *(v15 + 64);
    }

    else
    {
      v26 = v25 + 1;
    }

    memcpy(v21, v22, v26);
  }

  else
  {
    (*(v15 + 16))(v21, v22, AssociatedTypeWitness);
    (*(v15 + 56))(v21, 0, 1, AssociatedTypeWitness);
    v24 = *(v15 + 84);
    v25 = *(v15 + 64);
  }

  if (v24)
  {
    v27 = v25;
  }

  else
  {
    v27 = v25 + 1;
  }

  v28 = ((v21 + v16 + v27) & v20);
  v29 = ((v22 + v16 + v27) & v20);
  if (v23(v29, 1, AssociatedTypeWitness))
  {
    memcpy(v28, v29, v27);
  }

  else
  {
    (*(v15 + 16))(v28, v29, AssociatedTypeWitness);
    (*(v15 + 56))(v28, 0, 1, AssociatedTypeWitness);
  }

  v30 = &v28[v27 + v16];
  v31 = &v29[v27 + v16];
  if (v23((v31 & v20), 1, AssociatedTypeWitness))
  {
    memcpy((v30 & v20), (v31 & v20), v27);
  }

  else
  {
    (*(v15 + 16))(v30 & v20, v31 & v20, AssociatedTypeWitness);
    (*(v15 + 56))(v30 & v20, 0, 1, AssociatedTypeWitness);
  }

  v32 = v27 + ((v16 + 9) & v20) + ((v27 + v16 + ((v27 + v16) & v20)) & v20);
  v33 = v46 + v32;
  v34 = v45 + v32;
  v35 = ((v33 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v36 = ((v34 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v37 = *v36;
  *(v35 + 5) = *(v36 + 5);
  *v35 = v37;
  v38 = ((v33 + 19) & 0xFFFFFFFFFFFFFFFCLL);
  v39 = ((v34 + 19) & 0xFFFFFFFFFFFFFFFCLL);
  *v38 = *v39;
  v40 = ((v38 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v41 = ((v39 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v40 = *v41;
  v42 = v40 + v47;
  v43 = v41 + v47;
  if (v23(((v41 + v47) & v20), 1, AssociatedTypeWitness))
  {
    memcpy((v42 & v20), (v43 & v20), v27);
  }

  else
  {
    (*(v15 + 16))(v42 & v20, v43 & v20, AssociatedTypeWitness);
    (*(v15 + 56))(v42 & v20, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

_DWORD *assignWithCopy for GeometryActionBinder(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v2 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v2 = *v3;
  v4 = ((v2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 80);
  v17 = *(v15 + 80) & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v53 = ((v12 + v16 + 4) & v17);
  v54 = v16 + 4;
  v52 = ((v13 + v16 + 4) & v17);
  *v53 = *v52;
  v18 = (v53 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v19 = (v52 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v18 = *v19;
  *(v18 + 4) = *(v19 + 4);
  v20 = ~v16;
  v21 = ((v16 + 5 + v18) & ~v16);
  v22 = ((v16 + 5 + v19) & ~v16);
  v23 = *(v15 + 48);
  LODWORD(v13) = v23(v21, 1, AssociatedTypeWitness);
  v24 = v23(v22, 1, AssociatedTypeWitness);
  if (v13)
  {
    if (!v24)
    {
      (*(v15 + 16))(v21, v22, AssociatedTypeWitness);
      (*(v15 + 56))(v21, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v25 = *(v15 + 84);
    v26 = *(v15 + 64);
  }

  else
  {
    if (!v24)
    {
      (*(v15 + 24))(v21, v22, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v15 + 8))(v21, AssociatedTypeWitness);
    v25 = *(v15 + 84);
    v26 = *(v15 + 64);
  }

  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 + 1;
  }

  memcpy(v21, v22, v27);
LABEL_12:
  if (*(v15 + 84))
  {
    v28 = *(v15 + 64);
  }

  else
  {
    v28 = *(v15 + 64) + 1;
  }

  v29 = ((v21 + v16 + v28) & v20);
  v30 = ((v22 + v16 + v28) & v20);
  v31 = v23(v29, 1, AssociatedTypeWitness);
  v32 = v23(v30, 1, AssociatedTypeWitness);
  v56 = v15;
  if (v31)
  {
    if (!v32)
    {
      (*(v15 + 16))(v29, v30, AssociatedTypeWitness);
      (*(v15 + 56))(v29, 0, 1, AssociatedTypeWitness);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v32)
  {
    (*(v15 + 8))(v29, AssociatedTypeWitness);
LABEL_20:
    memcpy(v29, v30, v28);
    goto LABEL_21;
  }

  (*(v15 + 24))(v29, v30, AssociatedTypeWitness);
LABEL_21:
  v33 = &v29[v28 + v16];
  v34 = &v30[v28 + v16];
  v35 = v23((v33 & v20), 1, AssociatedTypeWitness);
  v36 = v23((v34 & v20), 1, AssociatedTypeWitness);
  if (v35)
  {
    if (!v36)
    {
      (*(v56 + 16))(v33 & v20, v34 & v20, AssociatedTypeWitness);
      (*(v56 + 56))(v33 & v20, 0, 1, AssociatedTypeWitness);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v36)
  {
    (*(v56 + 8))(v33 & v20, AssociatedTypeWitness);
LABEL_26:
    memcpy((v33 & v20), (v34 & v20), v28);
    goto LABEL_27;
  }

  (*(v56 + 24))(v33 & v20, v34 & v20, AssociatedTypeWitness);
LABEL_27:
  v37 = v28 + ((v16 + 9) & v20) + ((v28 + v16 + ((v28 + v16) & v20)) & v20);
  v38 = v53 + v37;
  v39 = v52 + v37;
  v40 = ((v38 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v41 = ((v39 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v42 = *v41;
  *(v40 + 5) = *(v41 + 5);
  *v40 = v42;
  v43 = ((v38 + 19) & 0xFFFFFFFFFFFFFFFCLL);
  v44 = ((v39 + 19) & 0xFFFFFFFFFFFFFFFCLL);
  *v43 = *v44;
  v45 = ((v43 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v46 = ((v44 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v45 = *v46;
  v47 = v45 + v54;
  v48 = v46 + v54;
  v49 = v23(((v45 + v54) & v20), 1, AssociatedTypeWitness);
  v50 = v23((v48 & v20), 1, AssociatedTypeWitness);
  if (!v49)
  {
    if (!v50)
    {
      (*(v56 + 24))(v47 & v20, v48 & v20, AssociatedTypeWitness);
      return a1;
    }

    (*(v56 + 8))(v47 & v20, AssociatedTypeWitness);
    goto LABEL_32;
  }

  if (v50)
  {
LABEL_32:
    memcpy((v47 & v20), (v48 & v20), v28);
    return a1;
  }

  (*(v56 + 16))(v47 & v20, v48 & v20, AssociatedTypeWitness);
  (*(v56 + 56))(v47 & v20, 0, 1, AssociatedTypeWitness);
  return a1;
}

_DWORD *initializeWithTake for GeometryActionBinder(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v2 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v2 = *v3;
  v4 = ((v2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 80);
  v17 = *(v15 + 80) & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v46 = ((v12 + v16 + 4) & v17);
  v47 = v16 + 4;
  v45 = ((v13 + v16 + 4) & v17);
  *v46 = *v45;
  v18 = (v46 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v19 = (v45 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v18 = *v19;
  *(v18 + 4) = *(v19 + 4);
  v20 = ~v16;
  v21 = ((v16 + 5 + v18) & ~v16);
  v22 = ((v16 + 5 + v19) & ~v16);
  v23 = *(v15 + 48);
  if (v23(v22, 1, AssociatedTypeWitness))
  {
    v24 = *(v15 + 84);
    v25 = *(v15 + 64);
    if (v24)
    {
      v26 = *(v15 + 64);
    }

    else
    {
      v26 = v25 + 1;
    }

    memcpy(v21, v22, v26);
  }

  else
  {
    (*(v15 + 32))(v21, v22, AssociatedTypeWitness);
    (*(v15 + 56))(v21, 0, 1, AssociatedTypeWitness);
    v24 = *(v15 + 84);
    v25 = *(v15 + 64);
  }

  if (v24)
  {
    v27 = v25;
  }

  else
  {
    v27 = v25 + 1;
  }

  v28 = ((v21 + v16 + v27) & v20);
  v29 = ((v22 + v16 + v27) & v20);
  if (v23(v29, 1, AssociatedTypeWitness))
  {
    memcpy(v28, v29, v27);
  }

  else
  {
    (*(v15 + 32))(v28, v29, AssociatedTypeWitness);
    (*(v15 + 56))(v28, 0, 1, AssociatedTypeWitness);
  }

  v30 = &v28[v27 + v16];
  v31 = &v29[v27 + v16];
  if (v23((v31 & v20), 1, AssociatedTypeWitness))
  {
    memcpy((v30 & v20), (v31 & v20), v27);
  }

  else
  {
    (*(v15 + 32))(v30 & v20, v31 & v20, AssociatedTypeWitness);
    (*(v15 + 56))(v30 & v20, 0, 1, AssociatedTypeWitness);
  }

  v32 = v27 + ((v16 + 9) & v20) + ((v27 + v16 + ((v27 + v16) & v20)) & v20);
  v33 = v46 + v32;
  v34 = v45 + v32;
  v35 = ((v33 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v36 = ((v34 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v37 = *v36;
  *(v35 + 5) = *(v36 + 5);
  *v35 = v37;
  v38 = ((v33 + 19) & 0xFFFFFFFFFFFFFFFCLL);
  v39 = ((v34 + 19) & 0xFFFFFFFFFFFFFFFCLL);
  *v38 = *v39;
  v40 = ((v38 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v41 = ((v39 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v40 = *v41;
  v42 = v40 + v47;
  v43 = v41 + v47;
  if (v23(((v41 + v47) & v20), 1, AssociatedTypeWitness))
  {
    memcpy((v42 & v20), (v43 & v20), v27);
  }

  else
  {
    (*(v15 + 32))(v42 & v20, v43 & v20, AssociatedTypeWitness);
    (*(v15 + 56))(v42 & v20, 0, 1, AssociatedTypeWitness);
  }

  return a1;
}

_DWORD *assignWithTake for GeometryActionBinder(_DWORD *a1, _DWORD *a2)
{
  *a1 = *a2;
  v2 = ((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v3 = ((a2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v2 = *v3;
  v4 = ((v2 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v5 = ((v3 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v4 = *v5;
  v6 = ((v4 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v7 = ((v5 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v6 = *v7;
  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v9 = ((v7 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v8 = *v9;
  v10 = ((v8 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v11 = ((v9 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v10 = *v11;
  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v13 = ((v11 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v12 = *v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = *(AssociatedTypeWitness - 8);
  v16 = *(v15 + 80);
  v17 = *(v15 + 80) & 0xFC ^ 0xFFFFFFFFFFFFFFFCLL;
  v53 = ((v12 + v16 + 4) & v17);
  v54 = v16 + 4;
  v52 = ((v13 + v16 + 4) & v17);
  *v53 = *v52;
  v18 = (v53 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  v19 = (v52 + 7) & 0xFFFFFFFFFFFFFFFCLL;
  *v18 = *v19;
  *(v18 + 4) = *(v19 + 4);
  v20 = ~v16;
  v21 = ((v16 + 5 + v18) & ~v16);
  v22 = ((v16 + 5 + v19) & ~v16);
  v23 = *(v15 + 48);
  LODWORD(v13) = v23(v21, 1, AssociatedTypeWitness);
  v24 = v23(v22, 1, AssociatedTypeWitness);
  if (v13)
  {
    if (!v24)
    {
      (*(v15 + 32))(v21, v22, AssociatedTypeWitness);
      (*(v15 + 56))(v21, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v25 = *(v15 + 84);
    v26 = *(v15 + 64);
  }

  else
  {
    if (!v24)
    {
      (*(v15 + 40))(v21, v22, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v15 + 8))(v21, AssociatedTypeWitness);
    v25 = *(v15 + 84);
    v26 = *(v15 + 64);
  }

  if (v25)
  {
    v27 = v26;
  }

  else
  {
    v27 = v26 + 1;
  }

  memcpy(v21, v22, v27);
LABEL_12:
  if (*(v15 + 84))
  {
    v28 = *(v15 + 64);
  }

  else
  {
    v28 = *(v15 + 64) + 1;
  }

  v29 = ((v21 + v16 + v28) & v20);
  v30 = ((v22 + v16 + v28) & v20);
  v31 = v23(v29, 1, AssociatedTypeWitness);
  v32 = v23(v30, 1, AssociatedTypeWitness);
  v56 = v15;
  if (v31)
  {
    if (!v32)
    {
      (*(v15 + 32))(v29, v30, AssociatedTypeWitness);
      (*(v15 + 56))(v29, 0, 1, AssociatedTypeWitness);
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v32)
  {
    (*(v15 + 8))(v29, AssociatedTypeWitness);
LABEL_20:
    memcpy(v29, v30, v28);
    goto LABEL_21;
  }

  (*(v15 + 40))(v29, v30, AssociatedTypeWitness);
LABEL_21:
  v33 = &v29[v28 + v16];
  v34 = &v30[v28 + v16];
  v35 = v23((v33 & v20), 1, AssociatedTypeWitness);
  v36 = v23((v34 & v20), 1, AssociatedTypeWitness);
  if (v35)
  {
    if (!v36)
    {
      (*(v56 + 32))(v33 & v20, v34 & v20, AssociatedTypeWitness);
      (*(v56 + 56))(v33 & v20, 0, 1, AssociatedTypeWitness);
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  if (v36)
  {
    (*(v56 + 8))(v33 & v20, AssociatedTypeWitness);
LABEL_26:
    memcpy((v33 & v20), (v34 & v20), v28);
    goto LABEL_27;
  }

  (*(v56 + 40))(v33 & v20, v34 & v20, AssociatedTypeWitness);
LABEL_27:
  v37 = v28 + ((v16 + 9) & v20) + ((v28 + v16 + ((v28 + v16) & v20)) & v20);
  v38 = v53 + v37;
  v39 = v52 + v37;
  v40 = ((v38 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v41 = ((v39 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  v42 = *v41;
  *(v40 + 5) = *(v41 + 5);
  *v40 = v42;
  v43 = ((v38 + 19) & 0xFFFFFFFFFFFFFFFCLL);
  v44 = ((v39 + 19) & 0xFFFFFFFFFFFFFFFCLL);
  *v43 = *v44;
  v45 = ((v43 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  v46 = ((v44 + 7) & 0xFFFFFFFFFFFFFFFCLL);
  *v45 = *v46;
  v47 = v45 + v54;
  v48 = v46 + v54;
  v49 = v23(((v45 + v54) & v20), 1, AssociatedTypeWitness);
  v50 = v23((v48 & v20), 1, AssociatedTypeWitness);
  if (!v49)
  {
    if (!v50)
    {
      (*(v56 + 40))(v47 & v20, v48 & v20, AssociatedTypeWitness);
      return a1;
    }

    (*(v56 + 8))(v47 & v20, AssociatedTypeWitness);
    goto LABEL_32;
  }

  if (v50)
  {
LABEL_32:
    memcpy((v47 & v20), (v48 & v20), v28);
    return a1;
  }

  (*(v56 + 32))(v47 & v20, v48 & v20, AssociatedTypeWitness);
  (*(v56 + 56))(v47 & v20, 0, 1, AssociatedTypeWitness);
  return a1;
}

uint64_t getEnumTagSinglePayload for GeometryActionBinder(unsigned __int16 *a1, unsigned int a2)
{
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0xFE)
  {
    v8 = 254;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(v4 + 64);
  if (v6)
  {
    v11 = v10;
  }

  else
  {
    v11 = v10 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v12 = v9 | 3;
  if (a2 > v8)
  {
    v13 = ((v9 + ((((v11 - (((-10 - v9) | v9) + ((-29 - v9) | v12)) + ((v11 + v9 + ((v11 + v9) & ~v9)) & ~v9) + 17) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4) & ~v9) + v11;
    v14 = 8 * v13;
    if (v13 > 3)
    {
      goto LABEL_13;
    }

    v16 = ((a2 - v8 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_33;
      }

      goto LABEL_20;
    }

    if (v16 >= 2)
    {
LABEL_13:
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_33;
      }

LABEL_20:
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

      v24 = v8 + (v19 | v17);
      return (v24 + 1);
    }
  }

LABEL_33:
  v20 = (((((((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v12 + 4) & ~v12) + 7) & 0xFFFFFFFFFFFFFFFCLL;
  if (v7 <= 0xFE)
  {
    v21 = *(v20 + 4);
    if (v21 < 2)
    {
      return 0;
    }

    v24 = (v21 + 2147483646) & 0x7FFFFFFF;
    return (v24 + 1);
  }

  v23 = (*(v5 + 48))((v9 + v20 + 5) & ~v9);
  if (v23 >= 2)
  {
    return v23 - 1;
  }

  else
  {
    return 0;
  }
}

void storeEnumTagSinglePayload for GeometryActionBinder(_BYTE *a1, unsigned int a2, unsigned int a3)
{
  v6 = 0;
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  v10 = *(v7 + 80);
  v11 = *(v7 + 64);
  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = v9;
  }

  v13 = v10 | 3;
  if (!v8)
  {
    ++v11;
  }

  v14 = ((v11 + v10 + ((v11 + v10) & ~v10)) & ~v10) + v11;
  v15 = ((v10 + ((((v14 - (((-10 - v10) | v10) + ((-29 - v10) | v13)) + 17) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 4) & ~v10) + v11;
  if (a3 <= v12)
  {
    goto LABEL_19;
  }

  if (v15 <= 3)
  {
    v16 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v16))
    {
      v6 = 4;
      if (v12 >= a2)
      {
        goto LABEL_29;
      }

      goto LABEL_20;
    }

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
      v6 = v17;
    }

    else
    {
      v6 = 0;
    }

LABEL_19:
    if (v12 >= a2)
    {
      goto LABEL_29;
    }

    goto LABEL_20;
  }

  v6 = 1;
  if (v12 >= a2)
  {
LABEL_29:
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v15] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_36;
      }

      *&a1[v15] = 0;
    }

    else if (v6)
    {
      a1[v15] = 0;
      if (!a2)
      {
        return;
      }

LABEL_36:
      v21 = (((((((((((((((a1 + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + 7) & 0xFFFFFFFFFFFFFFFCLL) + v13 + 4) & ~v13) + 7) & 0xFFFFFFFFFFFFFFFCLL;
      if (v9 > 0xFE)
      {
        v22 = ((v10 + v21 + 5) & ~v10);
        if (v9 >= a2)
        {
          v26 = *(v7 + 56);

          v26((v10 + v21 + 5) & ~v10, a2 + 1);
        }

        else
        {
          if (v14 <= 3)
          {
            v23 = ~(-1 << (8 * v14));
          }

          else
          {
            v23 = -1;
          }

          if (v14)
          {
            v24 = v23 & (~v9 + a2);
            if (v14 <= 3)
            {
              v25 = v14;
            }

            else
            {
              v25 = 4;
            }

            bzero(v22, v14);
            if (v25 > 2)
            {
              if (v25 == 3)
              {
                *v22 = v24;
                v22[2] = BYTE2(v24);
              }

              else
              {
                *v22 = v24;
              }
            }

            else if (v25 == 1)
            {
              *v22 = v24;
            }

            else
            {
              *v22 = v24;
            }
          }
        }
      }

      else
      {
        *(v21 + 4) = a2 + 1;
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_36;
  }

LABEL_20:
  v18 = ~v12 + a2;
  if (v15 >= 4)
  {
    bzero(a1, v15);
    *a1 = v18;
    v19 = 1;
    if (v6 > 1)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  v19 = (v18 >> (8 * v15)) + 1;
  if (!v15)
  {
LABEL_55:
    if (v6 > 1)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

  v20 = v18 & ~(-1 << (8 * v15));
  bzero(a1, v15);
  if (v15 == 3)
  {
    *a1 = v20;
    a1[2] = BYTE2(v20);
    goto LABEL_55;
  }

  if (v15 == 2)
  {
    *a1 = v20;
    if (v6 > 1)
    {
LABEL_59:
      if (v6 == 2)
      {
        *&a1[v15] = v19;
      }

      else
      {
        *&a1[v15] = v19;
      }

      return;
    }
  }

  else
  {
    *a1 = v18;
    if (v6 > 1)
    {
      goto LABEL_59;
    }
  }

LABEL_56:
  if (v6)
  {
    a1[v15] = v19;
  }
}

uint64_t get_witness_table_7SwiftUI4ViewRzSQRd__s8SendableRd__r__lAA15ModifiedContentVyxAA23_GeometryActionModifierVyqd__GGAaBHPxAaBHD1__AhA0cI0HPyHCHCTm(uint64_t a1, void (*a2)(uint64_t, void, void))
{
  a2(255, *(a1 + 8), *(a1 + 24));
  type metadata accessor for ModifiedContent();
  return swift_getWitnessTable();
}

void *assignWithCopy for _GeometryActionModifier(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  return a1;
}

_OWORD *assignWithTake for _GeometryActionModifier(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t objectdestroy_32Tm()
{

  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t _GraphInputs.redactionReasons.getter()
{
  if (one-time initialization token for redactionReasons != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.redactionReasons;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0);
  swift_endAccess();
  return v1;
}

void *EnvironmentValues.unredactSymbolImage.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    v2 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA19UnredactSymbolImageVG_Tt1g5(v1);

    return (v2 & 1);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA19UnredactSymbolImageVG_Tt0g5(v1);
    if (result)
    {
      return *(result + 72);
    }
  }

  return result;
}

uint64_t key path getter for EnvironmentValues.unredactSymbolImage : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    v4 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA19UnredactSymbolImageVG_Tt1g5(v3);
  }

  else
  {
    result = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA19UnredactSymbolImageVG_Tt0g5(*a1);
    if (result)
    {
      v4 = *(result + 72);
    }

    else
    {
      v4 = 0;
    }
  }

  *a2 = v4 & 1;
  return result;
}

uint64_t key path setter for EnvironmentValues.unredactSymbolImage : EnvironmentValues(char *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = *a2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA19UnredactSymbolImageVG_Tt2g5(a2, v3);

  if (a2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA19UnredactSymbolImageVG_Ttg5(v4, *a2);
  }
}

uint64_t EnvironmentValues.unredactSymbolImage.setter(char a1)
{
  v2 = v1;
  v4 = *v2;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA19UnredactSymbolImageVG_Tt2g5(v2, a1);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA19UnredactSymbolImageVG_Ttg5(v4, *v2);
  }
}

void (*EnvironmentValues.unredactSymbolImage.modify(void *a1))(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA19UnredactSymbolImageVG_Tt1g5(v5);
  }

  else
  {
    v8 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA19UnredactSymbolImageVG_Tt0g5(v5);
    if (v8)
    {
      v7 = *(v8 + 72);
    }

    else
    {
      v7 = 0;
    }
  }

  *(v4 + 40) = v7 & 1;
  return EnvironmentValues.unredactSymbolImage.modify;
}

void EnvironmentValues.unredactSymbolImage.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA19UnredactSymbolImageVG_Tt2g5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA19UnredactSymbolImageVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t EnvironmentValues.shouldRedactSymbolImages.getter()
{
  v1 = *v0;
  if (*(v0 + 8))
  {

    ShouldRedactSymbolImagesJ0VG_Tt1g5 = _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA024ShouldRedactSymbolImagesJ0VG_Tt1g5(v1);

    return ShouldRedactSymbolImagesJ0VG_Tt1g5 & 1;
  }

  else
  {
    v4 = *v0;

    return _s7SwiftUI29DerivedEnvironmentPropertyKey33_0CBA6217BE011883F496E97230B6CF8FLLV5value2in5ValueQzAA0E4ListV_tFZAA024ShouldRedactSymbolImagesF0V_Tt1g5(v4);
  }
}

uint64_t one-time initialization function for redactionReasons()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.redactionReasons = result;
  return result;
}

void GraphicsImage.redact(in:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = swift_allocObject();
  if (one-time initialization token for foreground != -1)
  {
    swift_once();
  }

  v8[0] = v2;
  v8[1] = v3;
  (*(*static Color.foreground + 120))(&v9, v8);
  v5 = v12;
  v6 = v10;
  v7 = v11 * 0.16;
  *(v4 + 16) = v9;
  *(v4 + 24) = v6;
  *(v4 + 28) = v7;
  *(v4 + 32) = v5;
  outlined consume of GraphicsImage.Contents?(*v1, *(v1 + 8));
  *v1 = v4;
  *(v1 + 8) = 4;
}

uint64_t one-time initialization function for redacted()
{
  type metadata accessor for ImageProviderBox<Image.RedactedImageProvider>();
  result = swift_allocObject();
  static Image.redacted = result;
  return result;
}

uint64_t static Image.redacted.getter()
{
  if (one-time initialization token for redacted != -1)
  {
    swift_once();
  }
}

__n128 Image.RedactedImageProvider.resolve(in:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  if (one-time initialization token for foreground != -1)
  {
    swift_once();
  }

  *&v43[0] = v3;
  *(&v43[0] + 1) = v4;
  (*(*static Color.foreground + 120))(&v39, v43);
  v6 = v42;
  v7 = v40;
  v8 = v41 * 0.16;
  *(v5 + 16) = v39;
  *(v5 + 24) = v7;
  *(v5 + 28) = v8;
  *(v5 + 32) = v6;
  if (one-time initialization token for resizable != -1)
  {
    swift_once();
  }

  v9 = byte_1EAB12468;
  v27 = unk_1EAB12458;
  v28 = static Image.ResizingInfo.resizable;
  outlined consume of GraphicsImage.Contents?(0, 0xFFu);
  LOBYTE(v30) = 1;
  *&v43[0] = v5;
  BYTE8(v43[0]) = 4;
  __asm { FMOV            V0.2D, #1.0 }

  v43[1] = _Q0;
  *v44 = 0x3FF0000000000000;
  v44[8] = 0;
  v45 = 0;
  *&v44[12] = 0;
  v46 = 0;
  v47[0] = 1;
  *&v47[24] = v27;
  *&v47[8] = v28;
  v47[40] = v9;
  *&v47[41] = 257;
  v47[43] = 0;
  v34 = _Q0;
  v35 = *v44;
  v33 = v43[0];
  *(v38 + 12) = *&v47[28];
  v37 = *v47;
  v38[0] = *&v47[16];
  v36 = 0u;
  outlined init with copy of GraphicsImage(v43, &v30);
  outlined consume of AccessibilityImageLabel?(0, 0, 0x1FFFFFFFELL);
  if (BYTE8(v43[0]) == 2)
  {
    v17 = *(*&v43[0] + 32);
    v18 = *(*&v43[0] + 48);
    v19 = *(*&v43[0] + 16);
    outlined copy of Image.Location(v17);
    v20 = v18;
    outlined copy of Image.Location(v17);
    v29 = v17;
    _ShapeStyle_ResolverMode.init(rbSymbolStyleMask:location:)([v19 styleMask], &v29, &v30);

    outlined consume of Image.Location(v17);
    outlined destroy of GraphicsImage(v43);
    v21 = v30;
    v16 = v31;
    v15 = v32 & 0xFD;
  }

  else
  {
    if (BYTE8(v43[0]) == 255)
    {
      outlined destroy of GraphicsImage(v43);
      v15 = 0;
      v16 = 0;
    }

    else
    {
      v16 = (v47[0] & 1) == 0;
      outlined destroy of GraphicsImage(v43);
      v15 = 0;
    }

    v21 = 0;
  }

  result = v36;
  v23 = v38[0];
  v24 = v38[1];
  *(a2 + 64) = v37;
  *(a2 + 80) = v23;
  *(a2 + 96) = v24;
  v25 = v34;
  v26 = v35;
  *a2 = v33;
  *(a2 + 16) = v25;
  *(a2 + 32) = v26;
  *(a2 + 48) = result;
  *(a2 + 112) = 0;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0x1FFFFFFFELL;
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 160) = 769;
  *(a2 + 164) = 0;
  *(a2 + 168) = 1;
  *(a2 + 176) = v21;
  *(a2 + 184) = v16;
  *(a2 + 186) = v15;
  return result;
}

void type metadata accessor for ImageProviderBox<Image.RedactedImageProvider>()
{
  if (!lazy cache variable for type metadata for ImageProviderBox<Image.RedactedImageProvider>)
  {
    lazy protocol witness table accessor for type Image.RedactedImageProvider and conformance Image.RedactedImageProvider();
    v0 = type metadata accessor for ImageProviderBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ImageProviderBox<Image.RedactedImageProvider>);
    }
  }
}

unint64_t lazy protocol witness table accessor for type Image.RedactedImageProvider and conformance Image.RedactedImageProvider()
{
  result = lazy protocol witness table cache variable for type Image.RedactedImageProvider and conformance Image.RedactedImageProvider;
  if (!lazy protocol witness table cache variable for type Image.RedactedImageProvider and conformance Image.RedactedImageProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.RedactedImageProvider and conformance Image.RedactedImageProvider);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Image.RedactedImageProvider and conformance Image.RedactedImageProvider;
  if (!lazy protocol witness table cache variable for type Image.RedactedImageProvider and conformance Image.RedactedImageProvider)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Image.RedactedImageProvider and conformance Image.RedactedImageProvider);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Image.RedactedImageProvider(uint64_t a1)
{
  result = lazy protocol witness table accessor for type Image.RedactedImageProvider and conformance Image.RedactedImageProvider();
  *(a1 + 8) = result;
  return result;
}

uint64_t static SemanticFeature.prior.getter(uint64_t a1, uint64_t a2)
{
  v2 = (*(a2 + 16))();
  v3 = v2 != 0;
  result = (v2 - 1);
  if (!v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t one-time initialization function for introduced(uint64_t a1, void *a2, _DWORD *a3, _DWORD *a4)
{
  if (*a2 != -1)
  {
    v4 = a4;
    v5 = a3;
    result = swift_once();
    a3 = v5;
    a4 = v4;
  }

  *a4 = *a3;
  return result;
}

uint64_t instantiation function for generic protocol witness table for _SemanticFeature<A>(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

{
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t protocol witness for static SemanticFeature.introduced.getter in conformance Semantics.DismissPopsInNavigationSplitViewRoots(uint64_t a1, uint64_t a2, void *a3, unsigned int *a4)
{
  if (*a3 == -1)
  {
    return *a4;
  }

  swift_once();
  return *a4;
}

uint64_t static WindowDragGestureIsActiveKey.reduce(value:nextValue:)(_BYTE *a1, uint64_t (*a2)(void))
{
  if (*a1)
  {
    result = 1;
  }

  else
  {
    result = a2();
  }

  *a1 = result & 1;
  return result;
}

uint64_t specialized Comparable.clamp(min:max:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  LODWORD(v4) = a3;
  result = specialized Collection<>.firstIndex(of:)(a3, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v10 = result;
  result = specialized Collection<>.firstIndex(of:)(a1, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v11)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 >= result)
  {
    v4 = v4;
  }

  else
  {
    v4 = a1;
  }

  result = specialized Collection<>.firstIndex(of:)(a2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v12)
  {
    goto LABEL_14;
  }

  v13 = result;
  result = specialized Collection<>.firstIndex(of:)(v4, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v14)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  if (v13 >= result)
  {
    v15 = v4;
  }

  else
  {
    v15 = a2;
  }

  *a4 = v15;
  return result;
}

int *specialized Collection<>.subscript.getter@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 12);
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  v4 = *result;
  if (*result < 0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v5 = result[2];
  if (v3 >= v5)
  {
    v6 = *(v2 + 8);
    *(a2 + 16) = *v2;
    *(a2 + 24) = v6;
    *(a2 + 28) = v3;
    v7 = result[1];
    v8 = result[3];
    *a2 = v4;
    *(a2 + 4) = v7;
    *(a2 + 8) = v5;
    *(a2 + 12) = v8;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = _HashTable.startBucket.getter();
  v7 = 1 << *(v5 + 32);
  if (v7 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = *(a1 + 16);
  if (v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = *(v5 + 36);
  if (*(a1 + 2) != v9)
  {
    goto LABEL_12;
  }

  v10 = *a1;
  if (*a1 < result)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = *(a1 + 40);
  if (v11)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  if (v9 != *(a1 + 8))
  {
    goto LABEL_14;
  }

  v12 = a1[3];
  if (v7 < v12)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = *(a1 + 3);
  v14 = *(a1 + 9);
  *(a2 + 48) = v5;
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 12) = v13;
  *(a2 + 16) = v8;
  *(a2 + 24) = v12;
  *(a2 + 32) = v9;
  *(a2 + 36) = v14;
  *(a2 + 40) = v11;
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t result@<X0>, _WORD *a2@<X8>)
{
  if (result > 0xBFFu)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  result = specialized Collection<>.firstIndex(of:)(4, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v5)
  {
    goto LABEL_14;
  }

  v6 = result;
  result = specialized Collection<>.firstIndex(of:)(0, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 < result)
  {
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  result = specialized Collection<>.firstIndex(of:)(a1, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v8)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = result;
  result = specialized Collection<>.firstIndex(of:)(0, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v10)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v9 < result)
  {
    goto LABEL_12;
  }

  result = specialized Collection<>.firstIndex(of:)(4, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v11)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v12 = result;
  result = specialized Collection<>.firstIndex(of:)(BYTE1(a1), &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if ((v13 & 1) == 0)
  {
    if (v12 >= result)
    {
      *a2 = a1;
      return result;
    }

    goto LABEL_13;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if ((a2 & 1) == 0 && result < 0)
  {
    __break(1u);
  }

  else
  {
    *(a6 + 32) = a5;
    *a6 = result;
    *(a6 + 8) = a2 & 1;
    *(a6 + 16) = a3;
    *(a6 + 24) = a4 & 1;
  }

  return result;
}

uint64_t specialized Collection.index(_:offsetBy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {
    v3 = result;
    if (a2)
    {
      result = asc_1F0043DA7[2];
      do
      {
        if (byte_1F0043DA0 == v3)
        {
          v4 = 0;
        }

        else if (byte_1F0043DA1 == v3)
        {
          v4 = 1;
        }

        else if (byte_1F0043DA2 == v3)
        {
          v4 = 2;
        }

        else if (byte_1F0043DA3 == v3)
        {
          v4 = 3;
        }

        else if (byte_1F0043DA4 == v3)
        {
          v4 = 4;
        }

        else if (byte_1F0043DA5 == v3)
        {
          v4 = 5;
        }

        else if (byte_1F0043DA6 == v3)
        {
          v4 = 6;
        }

        else if (asc_1F0043DA7[0] == v3)
        {
          v4 = 7;
        }

        else if (asc_1F0043DA7[1] == v3)
        {
          v4 = 8;
        }

        else if (asc_1F0043DA7[2] == v3)
        {
          v4 = 9;
        }

        else if (asc_1F0043DA7[3] == v3)
        {
          v4 = 10;
        }

        else
        {
          if (asc_1F0043DA7[4] != v3)
          {
            goto LABEL_33;
          }

          v4 = 11;
        }

        if (v4 >= 0xA)
        {
          v4 = 10;
        }

        v3 = *(&outlined read-only object #0 of static DynamicTypeSize.allCases.getter + v4 + 33);
        --a2;
      }

      while (a2);
    }

    *a3 = v3;
  }

  return result;
}

{
  if (a2 < 0)
  {
    __break(1u);
    return result;
  }

  v3 = result;
  if (!a2)
  {
    goto LABEL_14;
  }

  while (byte_1F0043E20 == v3)
  {
    v4 = 1u;
LABEL_5:
    v3 = *(&outlined read-only object #1 of specialized Collection.index(_:offsetBy:) + v4 + 32);
    if (!--a2)
    {
      goto LABEL_14;
    }
  }

  if (byte_1F0043E21 == v3)
  {
    v4 = 2u;
    goto LABEL_5;
  }

  if (byte_1F0043E22 == v3)
  {
    v4 = 3u;
    goto LABEL_5;
  }

  v4 = 4u;
  if (byte_1F0043E23 == v3 || byte_1F0043E24 == v3)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_14:
  *a3 = v3;
  return result;
}

unint64_t specialized Collection.index(_:offsetBy:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = HIDWORD(result);
  if (!a2)
  {
    *a5 = result;
    return result;
  }

  if (!a3)
  {
    goto LABEL_13;
  }

  v6 = HIDWORD(a4);
  for (i = 1; !(result - HIDWORD(a4) + i); ++i)
  {
    LODWORD(v5) = 0;
    if (i >= a2)
    {
      goto LABEL_10;
    }

LABEL_6:
    ;
  }

  LODWORD(v5) = *(a3 + 8 + v5) + v5;
  if (i < a2)
  {
    goto LABEL_6;
  }

  LODWORD(v6) = result + i;
LABEL_10:
  *a5 = v6;
  *(a5 + 4) = v5;
  return result;
}

unint64_t specialized Collection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, char a3, uint64_t a4, uint64_t a5, unsigned int a6, char a7)
{
  if (a4 < 0)
  {
LABEL_26:
    __break(1u);
  }

  else
  {
    v13 = result;
    outlined copy of [A : B].Index._Variant<A, B>(result, a2, a3 & 1);
    if (!a4)
    {
      return v13;
    }

    v15 = 0;
    v16 = a3 | a7;
    result = v13;
    v17 = a2;
    while ((v16 & 1) == 0)
    {
      if (v17 != a6)
      {
        __break(1u);
LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (result == a5)
      {
        return 0;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_23;
      }

      v19 = *v7;
      v20 = 1 << *(*v7 + 32);
      if (result >= v20)
      {
        goto LABEL_23;
      }

      v21 = result >> 6;
      v22 = *(v19 + 64 + 8 * (result >> 6));
      if (((v22 >> result) & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(v19 + 36) != a6)
      {
        goto LABEL_25;
      }

      v23 = v22 & (-2 << (result & 0x3F));
      if (v23)
      {
        result = __clz(__rbit64(v23)) | result & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v24 = v21 << 6;
        v25 = v21 + 1;
        v26 = (v19 + 8 * v21 + 72);
        while (v25 < (v20 + 63) >> 6)
        {
          v28 = *v26++;
          v27 = v28;
          v24 += 64;
          ++v25;
          if (v28)
          {
            outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(result, v17, 0);
            result = __clz(__rbit64(v27)) + v24;
            goto LABEL_5;
          }
        }

        outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(result, v17, 0);
        result = v20;
      }

LABEL_5:
      v17 = a6;
      v16 = a7;
      if (v15++ == a4 - 1)
      {
        return result;
      }
    }
  }

  __break(1u);
  return result;
}

unsigned int *specialized Collection.index(_:offsetBy:limitedBy:)@<X0>(unsigned int *result@<X0>, uint64_t a2@<X1>, _DWORD *a3@<X2>, uint64_t a4@<X8>)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    v6 = *result;
    v5 = result[1];
    if (a2)
    {
      v7 = a3[1];
      if (v6 != *a3 || v5 != v7)
      {
        if (*v4)
        {
          v9 = *(v4 + 12);
          v10 = 1;
          while (1)
          {
            if (v6 - v9 + v10)
            {
              v5 = (*(*v4 + 8 + v5) + v5);
              if (v10 >= a2)
              {
                v9 = v6 + v10;
                goto LABEL_17;
              }
            }

            else
            {
              v5 = 0;
              if (v10 >= a2)
              {
                goto LABEL_17;
              }
            }

            v11 = v6 - *a3 + v10++;
            if (!v11 && v5 == v7)
            {
              goto LABEL_15;
            }
          }
        }

        goto LABEL_20;
      }

LABEL_15:
      v12 = 0;
      v13 = 1;
    }

    else
    {
      v9 = *result;
LABEL_17:
      v13 = 0;
      v12 = v9 | (v5 << 32);
    }

    *a4 = v12;
    *(a4 + 8) = v13;
    return result;
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Collection.index(_:offsetBy:limitedBy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned __int8 a3@<W2>, _BYTE *a4@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
    v4 = result;
    if (a2)
    {
      result = asc_1F0043DA7[1];
      while (v4 != a3)
      {
        if (byte_1F0043DA0 == v4)
        {
          v5 = 0;
        }

        else if (byte_1F0043DA1 == v4)
        {
          v5 = 1;
        }

        else if (byte_1F0043DA2 == v4)
        {
          v5 = 2;
        }

        else if (byte_1F0043DA3 == v4)
        {
          v5 = 3;
        }

        else if (byte_1F0043DA4 == v4)
        {
          v5 = 4;
        }

        else if (byte_1F0043DA5 == v4)
        {
          v5 = 5;
        }

        else if (byte_1F0043DA6 == v4)
        {
          v5 = 6;
        }

        else if (asc_1F0043DA7[0] == v4)
        {
          v5 = 7;
        }

        else if (asc_1F0043DA7[1] == v4)
        {
          v5 = 8;
        }

        else if (asc_1F0043DA7[2] == v4)
        {
          v5 = 9;
        }

        else if (asc_1F0043DA7[3] == v4)
        {
          v5 = 10;
        }

        else
        {
          if (asc_1F0043DA7[4] != v4)
          {
            goto LABEL_35;
          }

          v5 = 11;
        }

        if (v5 >= 0xA)
        {
          v5 = 10;
        }

        v4 = *(&outlined read-only object #0 of static DynamicTypeSize.allCases.getter + v5 + 33);
        if (!--a2)
        {
          goto LABEL_32;
        }
      }

      *a4 = 12;
    }

    else
    {
LABEL_32:
      *a4 = v4;
    }
  }

  return result;
}

{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    if (a2)
    {
      while (v4 != a3)
      {
        if (byte_1F0043E70 == v4)
        {
          v5 = 1u;
        }

        else if (byte_1F0043E71 == v4)
        {
          v5 = 2u;
        }

        else if (byte_1F0043E72 == v4)
        {
          v5 = 3u;
        }

        else
        {
          v5 = 4u;
          if (byte_1F0043E73 != v4 && byte_1F0043E74 != v4)
          {
            __break(1u);
            goto LABEL_15;
          }
        }

        v4 = *(&outlined read-only object #1 of specialized Collection.index(_:offsetBy:limitedBy:) + v5 + 32);
        if (!--a2)
        {
          goto LABEL_15;
        }
      }

      *a4 = 5;
    }

    else
    {
LABEL_15:
      *a4 = v4;
    }
  }

  return result;
}

uint64_t *specialized Collection.index(_:offsetBy:limitedBy:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2 < 0)
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v4 = *result;
  if (a2)
  {
    v5 = *a3;
    v6 = v4 + a2;
    while (!__OFSUB__(v5, v4))
    {
      v7 = v5 == v4;
      if (v5 == v4)
      {
        v4 = 0;
        goto LABEL_11;
      }

      if (v4 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_13;
      }

      ++v4;
      if (!--a2)
      {
        v4 = v6;
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = 0;
LABEL_11:
  *a4 = v4;
  *(a4 + 8) = v7;
  return result;
}

unint64_t specialized Collection.index(_:offsetBy:limitedBy:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  v6 = HIDWORD(result);
  if (!a2)
  {
    goto LABEL_15;
  }

  if (result == a3 && v6 == HIDWORD(a3))
  {
LABEL_13:
    v9 = 0;
    v10 = 1;
    goto LABEL_16;
  }

  if (!a4)
  {
    goto LABEL_18;
  }

  v7 = 1;
  while (result - HIDWORD(a5) + v7)
  {
    v6 = (*(a4 + 8 + v6) + v6);
    if (v7 >= a2)
    {
      result = (result + v7);
      goto LABEL_15;
    }

LABEL_11:
    v8 = result - a3 + v7++;
    if (!v8 && v6 == HIDWORD(a3))
    {
      goto LABEL_13;
    }
  }

  v6 = 0;
  if (v7 < a2)
  {
    goto LABEL_11;
  }

  result = HIDWORD(a5);
LABEL_15:
  v10 = 0;
  v9 = result | (v6 << 32);
LABEL_16:
  *a6 = v9;
  *(a6 + 8) = v10;
  return result;
}

unint64_t specialized Collection.distance(from:to:)(unint64_t result, uint64_t a2, char a3, int64_t a4, unsigned int a5, char a6)
{
  if (a6 & 1) != 0 || (a3)
  {
    goto LABEL_32;
  }

  if (a4 < result)
  {
    goto LABEL_30;
  }

  v9 = a2;
  if (a5 != a2)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    return result;
  }

  if (result != a4)
  {
    v11 = *v6;
    v10 = 1;
    while ((result & 0x8000000000000000) == 0)
    {
      v12 = 1 << *(v11 + 32);
      if (result >= v12)
      {
        break;
      }

      v13 = result >> 6;
      v14 = *(v11 + 64 + 8 * (result >> 6));
      if (((v14 >> result) & 1) == 0)
      {
        goto LABEL_27;
      }

      if (*(v11 + 36) != v9)
      {
        goto LABEL_28;
      }

      v15 = v14 & (-2 << (result & 0x3F));
      if (v15)
      {
        result = __clz(__rbit64(v15)) | result & 0x7FFFFFFFFFFFFFC0;
        if (v9 != a5)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v16 = v13 << 6;
        v17 = v13 + 1;
        v18 = (v11 + 72 + 8 * v13);
        while (v17 < (v12 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(result, v9, 0);
            result = __clz(__rbit64(v19)) + v16;
            goto LABEL_21;
          }
        }

        outlined consume of [String : AccessibilityCustomAttributes.Value].Index._Variant(result, v9, 0);
        result = v12;
LABEL_21:
        if (v9 != a5)
        {
          goto LABEL_29;
        }
      }

      if (result == a4)
      {
        return v10;
      }

      v9 = a5;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        break;
      }
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  return 0;
}

unint64_t specialized Collection.distance(from:to:)(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < result)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v4 = HIDWORD(a2);
  v5 = HIDWORD(result);
  v6 = a2 - result;
  if (a2 == result && v5 == v4)
  {
    return 0;
  }

  if (a3)
  {
    if (v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = HIDWORD(a4) == a2;
    }

    v8 = v7;
    v9 = HIDWORD(a4) - result;
    result = 1;
    do
    {
      if (v9 == result)
      {
        if (v8)
        {
          return result;
        }

        LODWORD(v5) = 0;
      }

      else
      {
        LODWORD(v5) = *(a3 + 8 + v5) + v5;
        if (v6 == result && v5 == HIDWORD(a2))
        {
          return result;
        }
      }
    }

    while (!__OFADD__(result++, 1));
    __break(1u);
    goto LABEL_21;
  }

LABEL_22:
  __break(1u);
  return result;
}

Swift::Int ControlSize.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x193AC11A0](v1);
  return Hasher._finalize()();
}

uint64_t static ControlSize.< infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  result = specialized Collection<>.firstIndex(of:)(*a1, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = specialized Collection<>.firstIndex(of:)(v2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
    if ((v6 & 1) == 0)
    {
      return v5 < result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Comparable.< infix(_:_:) in conformance ControlSize(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  result = specialized Collection<>.firstIndex(of:)(*a1, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = specialized Collection<>.firstIndex(of:)(v2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
    if ((v6 & 1) == 0)
    {
      return v5 < result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Comparable.<= infix(_:_:) in conformance ControlSize(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  result = specialized Collection<>.firstIndex(of:)(*a2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = specialized Collection<>.firstIndex(of:)(v2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
    if ((v6 & 1) == 0)
    {
      return v5 >= result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Comparable.>= infix(_:_:) in conformance ControlSize(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  result = specialized Collection<>.firstIndex(of:)(*a1, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = specialized Collection<>.firstIndex(of:)(v2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
    if ((v6 & 1) == 0)
    {
      return v5 >= result;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Comparable.> infix(_:_:) in conformance ControlSize(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  result = specialized Collection<>.firstIndex(of:)(*a2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v4)
  {
    __break(1u);
  }

  else
  {
    v5 = result;
    result = specialized Collection<>.firstIndex(of:)(v2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
    if ((v6 & 1) == 0)
    {
      return v5 < result;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*EnvironmentValues.controlSize.modify(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v3[2] = v1;
  v5 = *v1;
  v3[3] = *v1;
  v6 = *(v1 + 8);
  v3[4] = v6;
  if (v6)
  {

    v7 = &v13;
    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011ControlSizeI033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt1g5(v5, &v13);
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ControlSizeKey>();
    BloomFilter.init(hashValue:)(v8);
    v9 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011ControlSizeV033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt0B5(v5, v12);
    if (!v9)
    {
LABEL_9:
      v10 = 2;
      goto LABEL_10;
    }

    v7 = (v9 + 9);
  }

  v10 = *v7;
  if (*v7 == 5)
  {
    goto LABEL_9;
  }

LABEL_10:
  *(v4 + 40) = v10;
  return EnvironmentValues.controlSize.modify;
}

void *EnvironmentValues.explicitControlSize.getter@<X0>(char *a1@<X8>)
{
  v2 = *v1;
  if (!*(v1 + 8))
  {
    return _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA011ControlSizeF033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt2g5(v2, a1);
  }

  _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011ControlSizeI033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt1g5(v2, a1);
}

uint64_t key path getter for EnvironmentValues.explicitControlSize : EnvironmentValues@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  if (*(a1 + 8))
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011ControlSizeI033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt1g5(v3, &v5);
  }

  else
  {
    result = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA011ControlSizeF033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt2g5(*a1, &v5);
  }

  *a2 = v5;
  return result;
}

uint64_t EnvironmentValues.controlSize.setter(unsigned __int8 *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = *a1;
  swift_retain_n();
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011ControlSizeF033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt2B5(v2, v4);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA011ControlSizeK033_B084178BA9D46D059A1FB75185D1E85CLLVG_Ttg5(v3, *v2);
  }
}

uint64_t (*EnvironmentValues.explicitControlSize.modify(char **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 2) = v1;
  v5 = *v1;
  *(v3 + 3) = *v1;
  v6 = *(v1 + 8);
  *(v3 + 4) = v6;
  if (v6)
  {

    _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA011ControlSizeI033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt1g5(v5, v4 + 40);
  }

  else
  {
    type metadata accessor for EnvironmentPropertyKey<ControlSizeKey>();
    BloomFilter.init(hashValue:)(v7);
    v8 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA011EnvironmentrV0VyAA011ControlSizeV033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt0B5(v5, v11);
    if (v8)
    {
      v9 = *(v8 + 72);
    }

    else
    {
      v9 = 5;
    }

    v4[40] = v9;
  }

  return EnvironmentValues.explicitControlSize.modify;
}

void EnvironmentValues.controlSize.modify(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 40);
  swift_retain_n();
  v3 = *(v1 + 32);
  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA011ControlSizeF033_B084178BA9D46D059A1FB75185D1E85CLLVG_Tt2B5(*(v1 + 16), v2);

  if (v3)
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA011ControlSizeK033_B084178BA9D46D059A1FB75185D1E85CLLVG_Ttg5(*(v1 + 24), **(v1 + 16));
  }

  free(v1);
}

uint64_t one-time initialization function for controlSize()
{
  result = AGMakeUniqueID();
  static CachedEnvironment.ID.controlSize = result;
  return result;
}

uint64_t _GraphInputs.controlSize.getter()
{
  if (one-time initialization token for controlSize != -1)
  {
    swift_once();
  }

  v0 = static CachedEnvironment.ID.controlSize;
  swift_beginAccess();
  v1 = specialized CachedEnvironment.attribute<A>(id:_:)(v0);
  swift_endAccess();
  return v1;
}

uint64_t View.controlSize(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  View.environment<A>(_:_:)(KeyPath, a1, a2, a3);
}

uint64_t View.controlSize<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v17 = a6;
  v11 = *(a3 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  KeyPath = swift_getKeyPath();
  (*(v11 + 16))(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a3);
  v14 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a2;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  *(v15 + 5) = a5;
  (*(v11 + 32))(&v15[v14], &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  View.transformEnvironment<A>(_:transform:)(KeyPath, partial apply for closure #1 in View.controlSize<A>(_:), v15, a2);
}

uint64_t ControlSize.clamped<A>(to:)@<X0>(_BYTE *a1@<X8>)
{
  v3 = *v1;
  lazy protocol witness table accessor for type ControlSizeCollection and conformance ControlSizeCollection();
  dispatch thunk of RangeExpression.relative<A>(to:)();
  v4 = v9;
  if (dispatch thunk of RangeExpression.contains(_:)())
  {
    return specialized Comparable.clamp(min:max:)(v8, v4, v3, a1);
  }

  result = specialized Collection<>.firstIndex(of:)(v9, &outlined read-only object #0 of ControlSize.clamped<A>(to:));
  if ((v6 & 1) == 0)
  {
    v7 = result - 1;
    if (__OFSUB__(result, 1))
    {
      __break(1u);
    }

    else if (v7 <= 4)
    {
      v4 = outlined read-only object #1 of ControlSize.clamped<A>(to:)[(v7 & ~(v7 >> 63)) + 32];
      return specialized Comparable.clamp(min:max:)(v8, v4, v3, a1);
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t ControlSizeCollection.index(after:)@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Collection<>.firstIndex(of:)(*a1, &outlined read-only object #0 of ControlSizeCollection.index(after:));
  if (v4)
  {
    goto LABEL_9;
  }

  v5 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_8;
  }

  if ((v5 & 0x8000000000000000) != 0)
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (v5 >= 4)
  {
    v5 = 4;
  }

  *a2 = outlined read-only object #1 of ControlSizeCollection.index(after:)[v5 + 32];
  return result;
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance ControlSizeCollection(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = a2[1];
  result = specialized Collection<>.firstIndex(of:)(v2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v6)
  {
    goto LABEL_10;
  }

  v7 = result;
  result = specialized Collection<>.firstIndex(of:)(v3, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 < result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Collection<>.firstIndex(of:)(v4, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result;
  result = specialized Collection<>.firstIndex(of:)(v2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v11)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v10 < result)
  {
    goto LABEL_9;
  }

  return result;
}

{
  v2 = a1[1];
  v3 = *a2;
  v4 = a2[1];
  result = specialized Collection<>.firstIndex(of:)(*a1, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v6)
  {
    goto LABEL_10;
  }

  v7 = result;
  result = specialized Collection<>.firstIndex(of:)(v3, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v8)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v7 < result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Collection<>.firstIndex(of:)(v4, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v9)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result;
  result = specialized Collection<>.firstIndex(of:)(v2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v11)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v10 < result)
  {
    goto LABEL_9;
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance ControlSizeCollection()
{
  v0 = specialized Collection.distance(from:to:)(0, 4);
  if (!v0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v1 = v0;
  v2 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC7SwiftUI11ControlSizeO_Tt1g5(v0, 0);
  if (specialized Sequence._copySequenceContents(initializing:)(&v4, (v2 + 4), v1) != v1)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t partial apply for closure #1 in View.controlSize<A>(_:)(_BYTE *a1)
{
  result = ControlSize.clamped<A>(to:)(&v3);
  *a1 = v3;
  return result;
}

unint64_t lazy protocol witness table accessor for type ControlSizeCollection and conformance ControlSizeCollection()
{
  result = lazy protocol witness table cache variable for type ControlSizeCollection and conformance ControlSizeCollection;
  if (!lazy protocol witness table cache variable for type ControlSizeCollection and conformance ControlSizeCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ControlSizeCollection and conformance ControlSizeCollection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ControlSizeCollection and conformance ControlSizeCollection;
  if (!lazy protocol witness table cache variable for type ControlSizeCollection and conformance ControlSizeCollection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ControlSizeCollection and conformance ControlSizeCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ControlSize and conformance ControlSize()
{
  result = lazy protocol witness table cache variable for type ControlSize and conformance ControlSize;
  if (!lazy protocol witness table cache variable for type ControlSize and conformance ControlSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ControlSize and conformance ControlSize);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ControlSize and conformance ControlSize;
  if (!lazy protocol witness table cache variable for type ControlSize and conformance ControlSize)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ControlSize and conformance ControlSize);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ControlSize] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [ControlSize] and conformance [A];
  if (!lazy protocol witness table cache variable for type [ControlSize] and conformance [A])
  {
    type metadata accessor for [ControlSize](255, &lazy cache variable for type metadata for [ControlSize], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ControlSize] and conformance [A]);
  }

  return result;
}

void type metadata accessor for [ControlSize](uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, ValueMetadata *))
{
  if (!*a2)
  {
    v4 = a3(0, &type metadata for ControlSize);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t lazy protocol witness table accessor for type IndexingIterator<ControlSizeCollection> and conformance IndexingIterator<A>(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for IndexingIterator<ControlSizeCollection>(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for IndexingIterator<ControlSizeCollection>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type ControlSizeCollection and conformance ControlSizeCollection();
    v7 = a3(a1, &unk_1F00706C0, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2)
{
  result = specialized Collection<>.firstIndex(of:)(a1, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v5)
  {
    goto LABEL_10;
  }

  v6 = result;
  result = specialized Collection<>.firstIndex(of:)(a2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v7)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v6 < result)
  {
    __break(1u);
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  result = specialized Collection<>.firstIndex(of:)(a1, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v8)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result;
  result = specialized Collection<>.firstIndex(of:)(BYTE1(a2), &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if (v10)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  if (v9 >= result)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t specialized Collection.distance(from:to:)(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  result = specialized Collection<>.firstIndex(of:)(a2, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
  if ((v5 & 1) == 0)
  {
    v6 = result;
    result = specialized Collection<>.firstIndex(of:)(a1, &outlined read-only object #0 of static ControlSize.< infix(_:_:));
    if (v7)
    {
      goto LABEL_25;
    }

    if (v6 >= result)
    {
      if (a1 == v2)
      {
        return 0;
      }

      for (i = 0; ; ++i)
      {
        result = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        if (byte_1F0043D50 == a1)
        {
          v9 = 0;
        }

        else if (byte_1F0043D51 == a1)
        {
          v9 = 1;
        }

        else if (byte_1F0043D52 == a1)
        {
          v9 = 2;
        }

        else if (byte_1F0043D53 == a1)
        {
          v9 = 3;
        }

        else
        {
          if (byte_1F0043D54 != a1)
          {
            goto LABEL_26;
          }

          v9 = 4;
        }

        if (v9 >= 3)
        {
          v9 = 3;
        }

        LODWORD(a1) = outlined read-only object #1 of specialized Collection.distance(from:to:)[v9 + 33];
        if (a1 == v2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t specialized Collection.distance(from:to:)(uint64_t result, unsigned __int8 a2)
{
  v2 = result;
  if (a2 >= result)
  {
    if (result == a2)
    {
      return 0;
    }

    for (i = 0; ; ++i)
    {
      result = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (byte_1F0043DA0 == v2)
      {
        v4 = 0;
      }

      else if (byte_1F0043DA1 == v2)
      {
        v4 = 1;
      }

      else if (byte_1F0043DA2 == v2)
      {
        v4 = 2;
      }

      else if (byte_1F0043DA3 == v2)
      {
        v4 = 3;
      }

      else if (byte_1F0043DA4 == v2)
      {
        v4 = 4;
      }

      else if (byte_1F0043DA5 == v2)
      {
        v4 = 5;
      }

      else if (byte_1F0043DA6 == v2)
      {
        v4 = 6;
      }

      else if (asc_1F0043DA7[0] == v2)
      {
        v4 = 7;
      }

      else if (asc_1F0043DA7[1] == v2)
      {
        v4 = 8;
      }

      else if (asc_1F0043DA7[2] == v2)
      {
        v4 = 9;
      }

      else if (asc_1F0043DA7[3] == v2)
      {
        v4 = 10;
      }

      else
      {
        if (asc_1F0043DA7[4] != v2)
        {
          goto LABEL_36;
        }

        v4 = 11;
      }

      if (v4 >= 0xA)
      {
        v4 = 10;
      }

      v2 = *(&outlined read-only object #0 of static DynamicTypeSize.allCases.getter + v4 + 33);
      if (v2 == a2)
      {
        return result;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

void specialized MutableCollection<>.sort(by:)(void **a1)
{
  v2 = *(type metadata accessor for Date.ComponentsFormatStyle.Field() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

uint64_t static FormatStyle<>.offset(to:allowedFields:maxFieldCount:sign:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v25 = a4;
  v26 = a2;
  v27 = a3;
  v7 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  v8 = *(v7 - 8);
  v23 = v7;
  v24 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v12 + 16);
  v16(v15, a1, v11, v13);
  v17 = *(v8 + 16);
  v17(v10, v25, v7);
  v18 = type metadata accessor for SystemFormatStyle.DateOffset();
  *(a5 + v18[8]) = 0;
  static Calendar.autoupdatingCurrent.getter();
  *(a5 + v18[11]) = 0;
  *(a5 + v18[12]) = 0;
  *(a5 + v18[13]) = 0;
  (v16)(a5, v15, v11);
  v19 = v27;
  *(a5 + v18[5]) = v26;
  *(a5 + v18[6]) = v19;
  v20 = v23;
  v17((a5 + v18[7]), v10, v23);

  static Locale.autoupdatingCurrent.getter();
  (*(v24 + 8))(v10, v20);
  return (*(v12 + 8))(v15, v11);
}

uint64_t SystemFormatStyle.DateOffset.init(to:allowedFields:maxFieldCount:sign:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for SystemFormatStyle.DateOffset();
  *(a5 + v10[8]) = 0;
  static Calendar.autoupdatingCurrent.getter();
  *(a5 + v10[11]) = 0;
  *(a5 + v10[12]) = 0;
  *(a5 + v10[13]) = 0;
  v11 = type metadata accessor for Date();
  v17 = *(v11 - 8);
  (*(v17 + 16))(a5, a1, v11);
  *(a5 + v10[5]) = a2;
  *(a5 + v10[6]) = a3;
  v12 = v10[7];
  v13 = type metadata accessor for NumberFormatStyleConfiguration.SignDisplayStrategy();
  v14 = *(v13 - 8);
  (*(v14 + 16))(a5 + v12, a4, v13);
  static Locale.autoupdatingCurrent.getter();
  (*(v14 + 8))(a4, v13);
  v15 = *(v17 + 8);

  return v15(a1, v11);
}

uint64_t type metadata accessor for SystemFormatStyle.DateOffset()
{
  result = type metadata singleton initialization cache for SystemFormatStyle.DateOffset;
  if (!type metadata singleton initialization cache for SystemFormatStyle.DateOffset)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SystemFormatStyle.DateOffset.calendar(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of SystemFormatStyle.DateOffset(v2, a2, type metadata accessor for SystemFormatStyle.DateOffset);
  v5 = *(type metadata accessor for SystemFormatStyle.DateOffset() + 40);
  v6 = type metadata accessor for Calendar();
  v7 = *(*(v6 - 8) + 24);

  return v7(a2 + v5, a1, v6);
}

uint64_t SystemFormatStyle.DateOffset.locale(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of SystemFormatStyle.DateOffset(v2, a2, type metadata accessor for SystemFormatStyle.DateOffset);
  v5 = *(type metadata accessor for SystemFormatStyle.DateOffset() + 36);
  v6 = type metadata accessor for Locale();
  v7 = *(*(v6 - 8) + 24);

  return v7(a2 + v5, a1, v6);
}

uint64_t SystemFormatStyle.DateOffset.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x7246657461647075;
    v6 = 0x6964496863746177;
    if (a1 != 8)
    {
      v6 = 0xD000000000000012;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x656C61636F6CLL;
    if (a1 != 5)
    {
      v7 = 0x7261646E656C6163;
    }

    if (a1 <= 6u)
    {
      return v7;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x726F68636E61;
    v2 = 0x646C65694678616DLL;
    v3 = 1852270963;
    if (a1 != 3)
    {
      v3 = 0x69726156657A6973;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x466465776F6C6C61;
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
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SystemFormatStyle.DateOffset.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized SystemFormatStyle.DateOffset.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SystemFormatStyle.DateOffset.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SystemFormatStyle.DateOffset.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SystemFormatStyle.DateOffset.CodingKeys and conformance SystemFormatStyle.DateOffset.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SystemFormatStyle.DateOffset.format(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v201 = a1;
  v202 = a2;
  type metadata accessor for Locale?(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v199 = &v162 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for Locale();
  v164 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196);
  v198 = &v162 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v197 = &v162 - v8;
  v9 = type metadata accessor for Locale.Key();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v195 = &v162 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>?(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v194 = &v162 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<AttributedString.Index>();
  v193 = v13;
  v163 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v192 = &v162 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = type metadata accessor for DateComponents();
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v165 = &v162 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for Calendar.Component();
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v175 = &v162 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AttributeContainer();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v174 = &v162 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Range<Date>();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v173 = &v162 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E69694D0];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v184 = (&v162 - v23);
  type metadata accessor for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (Date.ComponentsFormatStyle, Date.ComponentsFormatStyle.Field, Date.ComponentsFormatStyle.Field), v21);
  v168 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v169 = &v162 - v25;
  v26 = type metadata accessor for Date.ComponentsFormatStyle();
  v185 = *(v26 - 8);
  v186 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v179 = &v162 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for WhitespaceRemovingFormatStyle<Duration.UnitsFormatStyle.Attributed, AttributeScopes.FoundationAttributes.MeasurementAttribute>();
  v171 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v172 = &v162 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for Duration.UnitsFormatStyle.UnitWidth();
  v183 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v182 = &v162 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v181 = &v162 - v33;
  v34 = MEMORY[0x1E696A1A8];
  type metadata accessor for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v162 - v36;
  type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), v34);
  v190 = v38;
  v39 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v170 = &v162 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v187 = &v162 - v42;
  v43 = type metadata accessor for Date.ComponentsFormatStyle.Field();
  v44 = *(v43 - 8);
  v188 = v43;
  v189 = v44;
  MEMORY[0x1EEE9AC00](v43);
  v178 = &v162 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v46);
  v180 = &v162 - v47;
  v48 = type metadata accessor for SystemFormatStyle.DateOffset();
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v162 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?(0);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v53 = &v162 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)();
  v55 = v54;
  v56 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v58 = &v162 - ((v57 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v57) = *(v3 + v48[13]);
  v191 = v48;
  if (((v57 & 1) != 0 || *(v3 + v48[12]) == 1) && *(v3 + v48[11]) > 1u)
  {
LABEL_6:
    SystemFormatStyle.DateOffset.unitsStyle(for:)(v201, v37);
    v59 = v190;
    v60 = (*(v39 + 48))(v37, 1, v190);
    v200 = v3;
    v61 = v202;
    if (v60 == 1)
    {
      outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v37, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E696A1A8]);
      v62 = v184;
      SystemFormatStyle.DateOffset.componentsStyle(for:)(v201, v184);
      type metadata accessor for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(0, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
      v64 = v63;
      if ((*(*(v63 - 8) + 48))(v62, 1, v63) == 1)
      {
        outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?(v62, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)?, &lazy cache variable for type metadata for (style: Date.ComponentsFormatStyle, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field), MEMORY[0x1E69694D0]);
        v65 = v180;
        static Date.ComponentsFormatStyle.Field.minute.getter();
        v66 = SystemFormatStyle.DateOffset.needsSign(for:smallestFieldShown:)(v201, v65);
        (*(v189 + 8))(v65, v188);
        v67 = static Date.< infix(_:_:)();
        result = SystemFormatStyle.DateOffset.smallerOneMinuteString.getter(v61);
        if (v66)
        {
          if (v67)
          {
            v69 = "A negative time value (argument provides the value as localized by\nICU, either in a form like 1 day, 2 hours, or 1:23:45)";
            v70 = v61;
            v71 = 3;
            v72 = 9603298;
            v73 = 0xA300000000000000;
          }

          else
          {
            v69 = "A positive time value (argument provides the value as localized by\nICU, either in a form like 1 day, 2 hours, or 1:23:45)";
            v70 = v61;
            v71 = 1;
            v72 = 43;
            v73 = 0xE100000000000000;
          }

          return SystemFormatStyle.DateOffset.addMinusSign(to:)(v70, v71, v72, v73, v69);
        }

        return result;
      }

      v91 = *(v64 + 48);
      v187 = *(v64 + 64);
      v92 = v168;
      v93 = *(v168 + 48);
      v183 = *(v168 + 64);
      v94 = v186;
      v190 = *(v185 + 32);
      v95 = v169;
      (v190)(v169, v62, v186);
      v96 = v189;
      v97 = *(v189 + 32);
      v98 = &v95[v93];
      v99 = v188;
      v97(v98, v62 + v91, v188);
      v97(&v95[v183], v62 + v187, v99);
      v187 = *(v92 + 48);
      v100 = *(v92 + 64);
      v101 = v201;
      v102 = v179;
      (v190)(v179, v95, v94);
      v103 = &v95[v100];
      v104 = v178;
      v97(v178, v103, v99);
      v105 = v102;
      v106 = v104;
      v107 = *(v96 + 8);
      v189 = v96 + 8;
      v107(&v95[v187], v99);
      v108 = SystemFormatStyle.DateOffset.needsSign(for:smallestFieldShown:)(v101, v104);
      if (Date.ComponentsFormatStyle.isPositive.getter())
      {
        v109 = v173;
        SystemFormatStyle.DateOffset.dateRange(for:)(v101, v173);
        Date.ComponentsFormatStyle.format(_:)();
        outlined destroy of SystemFormatStyle.DateOffset(v109, type metadata accessor for Range<Date>);
        AttributeContainer.init()();
        v110 = v202;
        AttributedString.init(_:attributes:)();
        if (v108)
        {
          SystemFormatStyle.DateOffset.addMinusSign(to:)(v110, 1, 43, 0xE100000000000000, "A positive time value (argument provides the value as localized by\nICU, either in a form like 1 day, 2 hours, or 1:23:45)");
        }

LABEL_57:
        v107(v106, v188);
        return (*(v185 + 8))(v105, v186);
      }

      LODWORD(v187) = v108;
      v112 = v175;
      SystemFormatStyle.DateOffset.component(for:)(v104, v175);
      type metadata accessor for Locale?(0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Calendar.Component>, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
      v113 = v176;
      v114 = (*(v176 + 80) + 32) & ~*(v176 + 80);
      v115 = swift_allocObject();
      *(v115 + 16) = xmmword_18DDA6EB0;
      (*(v113 + 16))(v115 + v114, v112, v177);
      _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC10Foundation8CalendarV9ComponentO_Tt0g5(v115);
      v116 = v165;
      Calendar.dateComponents(_:from:to:)();

      v117 = DateComponents.value(for:)();
      v119 = v118;
      (*(v166 + 8))(v116, v167);
      if (v119)
      {
        v120 = v173;
        SystemFormatStyle.DateOffset.dateRange(for:)(v101, v173);
        Date.ComponentsFormatStyle.format(_:)();
        outlined destroy of SystemFormatStyle.DateOffset(v120, type metadata accessor for Range<Date>);
        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
      }

      else
      {
        v146 = v173;
        SystemFormatStyle.DateOffset.dateRange(for:)(v101, v173);
        Date.ComponentsFormatStyle.format(_:)();
        outlined destroy of SystemFormatStyle.DateOffset(v146, type metadata accessor for Range<Date>);
        AttributeContainer.init()();
        AttributedString.init(_:attributes:)();
        if (!v117)
        {
LABEL_54:
          if (v187)
          {
            SystemFormatStyle.DateOffset.addMinusSign(to:)(v202, 3, 9603298, 0xA300000000000000, "A negative time value (argument provides the value as localized by\nICU, either in a form like 1 day, 2 hours, or 1:23:45)");
          }

          (*(v176 + 8))(v175, v177);
          goto LABEL_57;
        }
      }

      v184 = v107;
      v201 = v191[9];
      v147 = (v164 + 16);
      v190 = v164 + 56;
      v191 = (v164 + 8);
      v148 = (v163 + 48);
      v149 = v201;
      v150 = v196;
      while (1)
      {
        if (one-time initialization token for minusSignCache != -1)
        {
          swift_once();
        }

        v151 = *v147;
        v152 = v200;
        v153 = v197;
        (*v147)(v197, v200 + v149, v150);
        v151(v198, v153, v150);
        v154 = v195;
        Locale.Components.init(locale:)();
        (*v191)(v153, v150);
        v155 = specialized ObjectCache.subscript.getter(v154);
        v157 = v156;
        outlined destroy of SystemFormatStyle.DateOffset(v154, type metadata accessor for Locale.Key);
        v203 = v155;
        v204 = v157;
        v158 = v152 + v149;
        v159 = v199;
        v151(v199, v158, v150);
        (*v190)(v159, 0, 1, v150);
        type metadata accessor for AttributedString();
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type AttributedString and conformance AttributedString, MEMORY[0x1E6968848]);
        lazy protocol witness table accessor for type String and conformance String();
        v160 = v194;
        AttributedStringProtocol.range<A>(of:options:locale:)();
        outlined destroy of SystemFormatStyle.DateOffset(v159, type metadata accessor for Locale?);

        if ((*v148)(v160, 1, v193) == 1)
        {
          break;
        }

        v161 = v192;
        _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v160, v192, type metadata accessor for Range<AttributedString.Index>);
        lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Range<AttributedString.Index> and conformance Range<A>, type metadata accessor for Range<AttributedString.Index>);
        AttributedString.removeSubrange<A>(_:)();
        outlined destroy of SystemFormatStyle.DateOffset(v161, type metadata accessor for Range<AttributedString.Index>);
      }

      outlined destroy of SystemFormatStyle.DateOffset(v160, type metadata accessor for Range<AttributedString.Index>?);
      v105 = v179;
      v106 = v178;
      v107 = v184;
      goto LABEL_54;
    }

    v74 = v187;
    outlined init with take of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(v37, v187);
    v75 = SystemFormatStyle.DateOffset.needsSign(for:smallestFieldShown:)(v201, v74 + *(v59 + 64));
    LODWORD(v199) = static Date.< infix(_:_:)();
    Date.timeIntervalSince(_:)();
    v76 = static Duration.seconds(_:)();
    v78 = v77;
    static Duration.zero.getter();
    if (static Duration.< infix(_:_:)())
    {
      static Duration.zero.getter();
      v76 = static Duration.- infix(_:_:)();
      v78 = v79;
    }

    v80 = v183;
    v81 = v182;
    v82 = v181;
    v83 = *(v3 + v191[8]);
    v201 = v78;
    if (v83 > 1)
    {
      v111 = v30;
      static Duration.UnitsFormatStyle.UnitWidth.narrow.getter();
    }

    else if (v83 == 1)
    {
      v111 = v30;
      if (*(v3 + v191[12]))
      {
        static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
      }

      else
      {
        static Duration.UnitsFormatStyle.UnitWidth.abbreviated.getter();
      }
    }

    else
    {
      v111 = v30;
      static Duration.UnitsFormatStyle.UnitWidth.wide.getter();
    }

    static Duration.UnitsFormatStyle.UnitWidth.condensedAbbreviated.getter();
    v124 = static Duration.UnitsFormatStyle.UnitWidth.== infix(_:_:)();
    v125 = *(v80 + 8);
    v125(v81, v111);
    v125(v82, v111);
    if (v124)
    {
      v126 = v170;
      outlined init with copy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(v74, v170);
      v127 = *(v190 + 48);
      v196 = *(v190 + 64);
      v197 = v127;
      v128 = v171;
      LODWORD(v198) = v75;
      v129 = *(v171 + 76);
      v130 = *MEMORY[0x1E69683F8];
      v131 = type metadata accessor for AttributeScopes.FoundationAttributes.MeasurementAttribute.Component();
      v132 = *(v131 - 8);
      v133 = *(v132 + 104);
      v134 = v172;
      v133(&v172[v129], v130, v131);
      v135 = *(v132 + 56);
      v135(v134 + v129, 0, 1, v131);
      v136 = *(v128 + 80);
      v133((v134 + v136), *MEMORY[0x1E69683F0], v131);
      v137 = v202;
      v135(v134 + v136, 0, 1, v131);
      v138 = type metadata accessor for Duration.UnitsFormatStyle.Attributed();
      (*(*(v138 - 8) + 32))(v134, v126, v138);
      v139 = v188;
      v140 = *(v189 + 8);
      v140(v126 + v196, v188);
      v140(&v197[v126], v139);
      LOBYTE(v136) = v198;
      v74 = v187;
      v203 = v76;
      v204 = v201;
      lazy protocol witness table accessor for type AttributedString.Index and conformance AttributedString.Index(&lazy protocol witness table cache variable for type Duration.UnitsFormatStyle.Attributed and conformance Duration.UnitsFormatStyle.Attributed, MEMORY[0x1E696A1A8]);
      dispatch thunk of FormatStyle.format(_:)();
      outlined destroy of SystemFormatStyle.DateOffset(v134, type metadata accessor for WhitespaceRemovingFormatStyle<Duration.UnitsFormatStyle.Attributed, AttributeScopes.FoundationAttributes.MeasurementAttribute>);
      if ((v136 & 1) == 0)
      {
        return outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(v74);
      }
    }

    else
    {
      v137 = v202;
      Duration.UnitsFormatStyle.Attributed.format(_:)();
      if ((v75 & 1) == 0)
      {
        return outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(v74);
      }
    }

    if (v199)
    {
      v141 = "A negative time value (argument provides the value as localized by\nICU, either in a form like 1 day, 2 hours, or 1:23:45)";
      v142 = v137;
      v143 = 3;
      v144 = 9603298;
      v145 = 0xA300000000000000;
    }

    else
    {
      v141 = "A positive time value (argument provides the value as localized by\nICU, either in a form like 1 day, 2 hours, or 1:23:45)";
      v142 = v137;
      v143 = 1;
      v144 = 43;
      v145 = 0xE100000000000000;
    }

    SystemFormatStyle.DateOffset.addMinusSign(to:)(v142, v143, v144, v145, v141);
    return outlined destroy of (style: Duration.UnitsFormatStyle.Attributed, largestField: Date.ComponentsFormatStyle.Field, smallestField: Date.ComponentsFormatStyle.Field)(v74);
  }

  outlined init with copy of SystemFormatStyle.DateOffset(v3, v50, type metadata accessor for SystemFormatStyle.DateOffset);
  v50[v48[11]] = 0;
  SystemFormatStyle.DateOffset.timeStyle(for:)(v201, v53);
  outlined destroy of SystemFormatStyle.DateOffset(v50, type metadata accessor for SystemFormatStyle.DateOffset);
  if ((*(v56 + 48))(v53, 1, v55) == 1)
  {
    outlined destroy of SystemFormatStyle.DateOffset(v53, type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field)?);
    goto LABEL_6;
  }

  _sSny10Foundation16AttributedStringV5IndexVGWObTm_0(v53, v58, type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field));
  v84 = SystemFormatStyle.DateOffset.needsSign(for:smallestFieldShown:)(v201, &v58[*(v55 + 48)]);
  v85 = static Date.< infix(_:_:)();
  Date.timeIntervalSince(_:)();
  static Duration.seconds(_:)();
  static Duration.zero.getter();
  if (static Duration.< infix(_:_:)())
  {
    static Duration.zero.getter();
    static Duration.- infix(_:_:)();
  }

  Duration.TimeFormatStyle.Attributed.format(_:)();
  if (v84)
  {
    if (v85)
    {
      v86 = "A negative time value (argument provides the value as localized by\nICU, either in a form like 1 day, 2 hours, or 1:23:45)";
      v87 = v202;
      v88 = 3;
      v89 = 9603298;
      v90 = 0xA300000000000000;
    }

    else
    {
      v86 = "A positive time value (argument provides the value as localized by\nICU, either in a form like 1 day, 2 hours, or 1:23:45)";
      v87 = v202;
      v88 = 1;
      v89 = 43;
      v90 = 0xE100000000000000;
    }

    SystemFormatStyle.DateOffset.addMinusSign(to:)(v87, v88, v89, v90, v86);
  }

  v121 = v191[11];
  if (*(v3 + v121) >= 2u)
  {
    v122 = *(v3 + v191[5]);
    v123 = v180;
    static Date.ComponentsFormatStyle.Field.second.getter();
    LOBYTE(v122) = specialized Set.contains(_:)(v123, v122);
    (*(v189 + 8))(v123, v188);
    if (v122)
    {
      LOBYTE(v203) = *(v3 + v121);
      AttributedString.redact(for:locale:)(&v203, v3 + v191[9]);
    }
  }

  return outlined destroy of SystemFormatStyle.DateOffset(v58, type metadata accessor for (style: Duration.TimeFormatStyle.Attributed, smallestField: Date.ComponentsFormatStyle.Field));
}