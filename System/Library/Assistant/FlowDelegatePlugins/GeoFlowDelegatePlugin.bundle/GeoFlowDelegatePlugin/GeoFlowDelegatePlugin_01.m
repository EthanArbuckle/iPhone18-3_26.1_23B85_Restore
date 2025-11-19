_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t lazy protocol witness table accessor for type Input and conformance Input()
{
  result = lazy protocol witness table cache variable for type Input and conformance Input;
  if (!lazy protocol witness table cache variable for type Input and conformance Input)
  {
    type metadata accessor for Input();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Input and conformance Input);
  }

  return result;
}

uint64_t outlined init with copy of GeoIntent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Errors and conformance Errors()
{
  result = lazy protocol witness table cache variable for type Errors and conformance Errors;
  if (!lazy protocol witness table cache variable for type Errors and conformance Errors)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Errors and conformance Errors);
  }

  return result;
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for OS_os_log(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t outlined destroy of ShareETA(uint64_t a1)
{
  v2 = type metadata accessor for ShareETA(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1797C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_179C8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);

  return v3(v4);
}

uint64_t sub_17A1C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_17A68(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 176);

  return v3(v4);
}

uint64_t sub_17ABC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_17BF4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result & 1;
  return result;
}

uint64_t type metadata accessor for ShareETAPromptForContactStrategy()
{
  result = type metadata singleton initialization cache for ShareETAPromptForContactStrategy;
  if (!type metadata singleton initialization cache for ShareETAPromptForContactStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for ShareETAPromptForContactStrategy()
{
  result = type metadata accessor for ShareETA(319);
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

uint64_t GeoContact.id.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t GeoContact.displayName.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);

  return v1;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GeoTrafficIncident.CodingKeys()
{
  v1 = 0x7865646E69;
  v2 = 0x4E79616C70736964;
  if (*v0 != 2)
  {
    v2 = 0x6F6C796150697264;
  }

  if (*v0)
  {
    v1 = 25705;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GeoTrafficIncident.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized GeoTrafficIncident.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GeoTrafficIncident.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GeoTrafficIncident.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t GeoTrafficIncident.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D15TrafficIncidentV10CodingKeys33_429872D102531CD8E18AA8081E443AACLLOGMd, &_ss22KeyedEncodingContainerVy21GeoFlowDelegatePlugin0D15TrafficIncidentV10CodingKeys33_429872D102531CD8E18AA8081E443AACLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v12 = v3[1];
  v13 = v3[2];
  v18[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v14 = v3[3];
  v15 = v3[4];
  v18[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = v3[5];
  v18[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

void GeoTrafficIncident.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  if (v0[2])
  {
    v1 = v0[1];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = v0[3];
  v3 = v0[4];
  String.hash(into:)();
  Hasher._combine(_:)(v0[5]);
}

Swift::Int GeoTrafficIncident.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  if (v0[2])
  {
    v1 = v0[1];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v2 = v0[3];
  v3 = v0[4];
  String.hash(into:)();
  Hasher._combine(_:)(v0[5]);
  return Hasher._finalize()();
}

double GeoTrafficIncident.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized GeoTrafficIncident.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

void __swiftcall GeoTrafficIncident.init(index:id:displayName:driPayload:)(GeoFlowDelegatePlugin::GeoTrafficIncident *__return_ptr retstr, Swift::Int index, Swift::String_optional id, Swift::String displayName, Swift::Int driPayload)
{
  retstr->index = index;
  retstr->id = id;
  retstr->displayName = displayName;
  retstr->driPayload = driPayload;
}

uint64_t protocol witness for Identifiable.id.getter in conformance GeoTrafficIncident@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  a1[1] = v2;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GeoTrafficIncident()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance GeoTrafficIncident()
{
  v1 = v0[1];
  v3 = v0[2];
  v2 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  Hasher._combine(_:)(*v0);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  Hasher._combine(_:)(v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeoTrafficIncident()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  String.hash(into:)();
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance GeoTrafficIncident(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return specialized static GeoTrafficIncident.__derived_struct_equals(_:_:)(v7, v8);
}

BOOL specialized static GeoTrafficIncident.__derived_struct_equals(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[2];
  v3 = a2[2];
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v2 != v3)
    {
      v5 = a1;
      v6 = a1[1];
      v7 = a2;
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v7;
      v9 = v8;
      a1 = v5;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v3)
  {
    return 0;
  }

  if (a1[3] == a2[3] && a1[4] == a2[4])
  {
    return a1[5] == a2[5];
  }

  v11 = a1;
  v12 = a1[3];
  v13 = a2;
  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
  a2 = v13;
  v15 = v14;
  a1 = v11;
  if (v15)
  {
    return a1[5] == a2[5];
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys);
  }

  return result;
}

uint64_t specialized GeoTrafficIncident.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25705 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F6C796150697264 && a2 == 0xEA00000000006461)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t specialized GeoTrafficIncident.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D15TrafficIncidentV10CodingKeys33_429872D102531CD8E18AA8081E443AACLLOGMd, &_ss22KeyedDecodingContainerVy21GeoFlowDelegatePlugin0D15TrafficIncidentV10CodingKeys33_429872D102531CD8E18AA8081E443AACLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GeoTrafficIncident.CodingKeys and conformance GeoTrafficIncident.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v27 = 0;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = 1;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v13 = v12;
  v22 = v11;
  v25 = 2;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v14;
  v24 = 3;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_0Tm(a1);
  v17 = v22;
  *a2 = v23;
  a2[1] = v17;
  v19 = v20;
  v18 = v21;
  a2[2] = v13;
  a2[3] = v19;
  a2[4] = v18;
  a2[5] = v15;
  return result;
}

unint64_t lazy protocol witness table accessor for type String? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type String? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type String? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String? and conformance <A> A?);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GeoTrafficIncident and conformance GeoTrafficIncident()
{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident;
  if (!lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoTrafficIncident and conformance GeoTrafficIncident);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for GeoTrafficIncident(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoTrafficIncident(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for GeoTrafficIncident.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoTrafficIncident.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t TrafficIncidentHandleIntentStrategy.__allocating_init(with:)(__int128 *a1)
{
  v2 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v2 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v2 + 24);
  return v2;
}

uint64_t TrafficIncidentHandleIntentStrategy.init(with:)(__int128 *a1)
{
  type metadata accessor for OS_os_log();
  *(v1 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType(a1, v1 + 24);
  return v1;
}

uint64_t TrafficIncidentHandleIntentStrategy.makeContinueInAppResponse(app:intent:intentResponse:)(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[9] = swift_task_alloc();

  return _swift_task_switch(TrafficIncidentHandleIntentStrategy.makeContinueInAppResponse(app:intent:intentResponse:), 0, 0);
}

uint64_t TrafficIncidentHandleIntentStrategy.makeContinueInAppResponse(app:intent:intentResponse:)()
{
  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = *(v0 + 56);
  static os_log_type_t.info.getter();
  v4 = *(v2 + 16);
  os_log(_:dso:log:_:_:)();
  v5 = type metadata accessor for NLContextUpdate();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  v6 = type metadata accessor for AceOutput();
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  v3[3] = v6;
  v3[4] = &protocol witness table for AceOutput;
  __swift_allocate_boxed_opaque_existential_0(v3);
  static AceOutputHelper.makeAceOutput(allAddViews:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Mirror.DisplayStyle?(v0 + 16, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v1, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t SaveParkingLocationUnsupportedValueStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type TrafficIncidentHandleIntentStrategy and conformance TrafficIncidentHandleIntentStrategy()
{
  result = lazy protocol witness table cache variable for type TrafficIncidentHandleIntentStrategy and conformance TrafficIncidentHandleIntentStrategy;
  if (!lazy protocol witness table cache variable for type TrafficIncidentHandleIntentStrategy and conformance TrafficIncidentHandleIntentStrategy)
  {
    type metadata accessor for TrafficIncidentHandleIntentStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TrafficIncidentHandleIntentStrategy and conformance TrafficIncidentHandleIntentStrategy);
  }

  return result;
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:) in conformance TrafficIncidentHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TrafficIncidentHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makePromptForDeviceUnlock(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:) in conformance TrafficIncidentHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TrafficIncidentHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeHandoffForAuthenticationResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:) in conformance TrafficIncidentHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TrafficIncidentHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makePreHandleIntentOutput(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:) in conformance TrafficIncidentHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TrafficIncidentHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeIntentHandledResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:) in conformance TrafficIncidentHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TrafficIncidentHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeContinueInAppResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:) in conformance TrafficIncidentHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TrafficIncidentHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeInProgressResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:) in conformance TrafficIncidentHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TrafficIncidentHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return HandleIntentFlowStrategyAsync.makeFailureHandlingIntentResponse(rchRecord:)(a1, a2, v10, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for TrafficIncidentHandleIntentStrategy();
  *v9 = v4;
  v9[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy;

  return IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:)(a1, a2, v10, a4);
}

uint64_t protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t static GeoNLContextUtils.makeNLContextFor(weightedPromptResponseTargets:)()
{
  NLContextUpdate.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_B7D60;
  *(v0 + 32) = specialized TerminalNodeBoundedSemanticValue<>.javaValue.getter();
  *(v0 + 40) = v1;
  *(v0 + 48) = specialized TerminalNodeBoundedSemanticValue<>.javaValue.getter();
  *(v0 + 56) = v2;
  *(v0 + 64) = specialized TerminalNodeBoundedSemanticValue<>.javaValue.getter();
  *(v0 + 72) = v3;
  NLContextUpdate.weightedPromptResponseOptions.setter();

  NLContextUpdate.weightedPromptResponseTargets.setter();
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  specialized OntologyNode.javaClassName.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_B89E0;
  *(v4 + 32) = specialized TerminalNodeBoundedSemanticValue<>.javaValue.getter();
  *(v4 + 40) = v5;
  NLContextUpdate.weightedPromptAbortValues.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  return NLContextUpdate.currentDomainName.setter();
}

uint64_t one-time initialization function for logObject()
{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  logObject = result;
  return result;
}

{
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  result = OS_os_log.init(subsystem:category:)();
  logObject = result;
  return result;
}

unint64_t specialized TerminalNodeBoundedSemanticValue<>.javaValue.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin20LocationSearchIntentC0eF17ConfirmationValueOmMd, &_s21GeoFlowDelegatePlugin20LocationSearchIntentC0eF17ConfirmationValueOmMR);
  v0 = String.init<A>(describing:)();
  specialized BidirectionalCollection.dropLast(_:)(5, v0, v1, v2);

  lazy protocol witness table accessor for type Substring and conformance Substring();
  String.append<A>(contentsOf:)();

  v3._countAndFlagsBits = 0x2E65756C61562ELL;
  v3._object = 0xE700000000000000;
  String.append(_:)(v3);

  v4 = String.uppercased()();

  String.append(_:)(v4);

  return 0xD000000000000012;
}

uint64_t static GeoNLContextUtils.makeNLContext(weightedPromptResponseTargets:displayHints:)(uint64_t a1, uint64_t a2)
{
  NLContextUpdate.init()();
  swift_bridgeObjectRetain_n();
  NLContextUpdate.disambiguationPromptResponseTargets.setter();
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  specialized OntologyNode.javaClassName.getter();
  NLContextUpdate.disambiguationPromptTargetDomain.setter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_B89E0;
  *(v3 + 32) = specialized TerminalNodeBoundedSemanticValue<>.javaValue.getter();
  *(v3 + 40) = v4;
  NLContextUpdate.disambiguationPromptAbortValues.setter();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  specialized OntologyNode.javaClassName.getter();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_B89E0;
  *(v5 + 32) = specialized TerminalNodeBoundedSemanticValue<>.javaValue.getter();
  *(v5 + 40) = v6;
  NLContextUpdate.weightedPromptAbortValues.setter();
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_B89E0;
  *(v7 + 32) = specialized TerminalNodeBoundedSemanticValue<>.javaValue.getter();
  *(v7 + 40) = v8;
  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  if (a2)
  {

    NLContextUpdate.displayHints.setter();
  }

  return NLContextUpdate.currentDomainName.setter();
}

uint64_t TypedDisambiguationItems.makeDisambiguationItems(locale:_:)(uint64_t a1, void (*a2)(void), uint64_t a3, unint64_t a4, char a5)
{
  if (a5)
  {
    specialized static DisambiguationListUtils.makeDisambiguationItems(incidentTypes:locale:)(a4);
  }

  else
  {
    specialized static DisambiguationListUtils.makeDisambiguationItems(persons:locale:)(a4, a1);
  }

  a2();
}

uint64_t TypedDisambiguationItems.makeDisambiguationItems(locale:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 32) = a3;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return _swift_task_switch(TypedDisambiguationItems.makeDisambiguationItems(locale:), 0, 0);
}

uint64_t TypedDisambiguationItems.makeDisambiguationItems(locale:)()
{
  v1 = *(v0 + 24);
  if (*(v0 + 32))
  {
    v2 = specialized static DisambiguationListUtils.makeDisambiguationItems(incidentTypes:locale:)(v1);
  }

  else
  {
    v2 = specialized static DisambiguationListUtils.makeDisambiguationItems(persons:locale:)(v1, *(v0 + 16));
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t TypedDisambiguationItems.makeNLContextUpdate(locale:weightedPromptResponseTargets:isPommes:isUSO:_:)(uint64_t a1, uint64_t a2, int a3, int a4, void (*a5)(char *), uint64_t a6, unint64_t a7, char a8)
{
  v112 = a1;
  v113 = a7;
  v106 = a6;
  v107 = a5;
  LODWORD(v108) = a4;
  v104 = a3;
  v10 = type metadata accessor for PommesContext.Source();
  v98 = *(v10 - 8);
  v11 = *(v98 + 64);
  __chkstk_darwin(v10);
  v97 = &v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v99 = &v94 - v15;
  v115 = type metadata accessor for DisplayHint();
  v111 = *(v115 - 8);
  v16 = *(v111 + 64);
  v17 = __chkstk_darwin(v115);
  v109 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v116 = &v94 - v20;
  __chkstk_darwin(v19);
  v114 = &v94 - v21;
  v103 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v96 = *(v103 - 8);
  v22 = *(v96 + 64);
  v23 = __chkstk_darwin(v103);
  v25 = &v94 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v94 - v26;
  v28 = type metadata accessor for NLContextUpdate();
  v29 = *(v28 - 8);
  v30 = *(v29 + 64);
  v31 = __chkstk_darwin(v28);
  v33 = &v94 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v31);
  v35 = &v94 - v34;
  static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v36 = logObject;
  os_log(_:dso:log:_:_:)();
  if (a8)
  {
    v37 = specialized static GeoNLContextUtils.makeDisplayHints(items:locale:)(v113);
    v38 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v36, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v117[0] = v40;
      *v39 = 136315138;
      v41 = Array.description.getter();
      v110 = v36;
      v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, v117);

      *(v39 + 4) = v43;
      _os_log_impl(&dword_0, v110, v38, "TypedDisambiguationItems IncidentType displayHints are: %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
    }

    static GeoNLContextUtils.makeNLContext(weightedPromptResponseTargets:displayHints:)(a2, v37);

    v107(v35);
    return (*(v29 + 8))(v35, v28);
  }

  else
  {
    v94 = v10;
    v110 = v36;
    v100 = v33;
    v95 = a2;
    v105 = v28;
    v101 = v35;
    if (v108)
    {
      NLContextUpdate.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
      v45 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
      v46 = *(v45 + 72);
      v47 = (*(v45 + 80) + 32) & ~*(v45 + 80);
      *(swift_allocObject() + 16) = xmmword_B89E0;
      v48 = type metadata accessor for UsoTaskBuilder_noVerb_common_Person();
      v49 = *(v48 + 48);
      v50 = *(v48 + 52);
      swift_allocObject();
      v51 = UsoTaskBuilder_noVerb_common_Person.init()();
      v52 = type metadata accessor for UsoEntityBuilder_common_Person();
      v53 = *(v52 + 48);
      v54 = *(v52 + 52);
      swift_allocObject();
      UsoEntityBuilder_common_Person.init()();
      dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
      static Siri_Nlu_External_SystemPrompted.from(_:)(v51, v27);
      Siri_Nlu_External_SystemDialogAct.init()();
      v55 = v96;
      v56 = v103;
      (*(v96 + 16))(v25, v27, v103);
      Siri_Nlu_External_SystemDialogAct.prompted.setter();

      v57 = v101;

      v58 = v56;
      v59 = v105;
      (*(v55 + 8))(v27, v58);
      NLContextUpdate.nluSystemDialogActs.setter();
      v107(v57);
      (*(v29 + 8))(v57, v59);
    }

    v102 = v29;
    v60 = v113;
    specialized static RecipientDisambiguationHelper.allHaveSameIdentifier(recipients:)(v113);
    v103 = specialized static GeoNLContextUtils.makeDisplayHints(persons:locale:handleDisambiguation:)(v60, v112, v61 & 1);
    v63 = *(v103 + 16);
    v64 = v110;
    v66 = v115;
    v65 = v116;
    if (v63)
    {
      v67 = v111 + 16;
      v68 = *(v111 + 16);
      v69 = v103 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
      v70 = *(v111 + 72);
      v111 += 32;
      v112 = v70;
      v71 = (v67 - 8);
      *&v62 = 136315138;
      v108 = v62;
      v113 = v68;
      do
      {
        v79 = v114;
        v68(v114, v69, v66);
        v80 = static os_log_type_t.info.getter();
        (*v111)(v65, v79, v66);
        if (os_log_type_enabled(v64, v80))
        {
          v72 = v67;
          v73 = swift_slowAlloc();
          v74 = swift_slowAlloc();
          v117[0] = v74;
          *v73 = v108;
          v68(v109, v116, v66);
          v75 = String.init<A>(describing:)();
          v77 = v76;
          (*v71)(v116, v115);
          v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v77, v117);
          v66 = v115;

          *(v73 + 4) = v78;
          v64 = v110;
          _os_log_impl(&dword_0, v110, v80, "TypedDisambiguationItems Contact displayHints are: %s", v73, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v74);

          v67 = v72;
          v65 = v116;
        }

        else
        {
          (*v71)(v65, v66);
        }

        v68 = v113;
        v69 += v112;
        --v63;
      }

      while (v63);
    }

    v81 = v100;
    static GeoNLContextUtils.makeNLContext(weightedPromptResponseTargets:displayHints:)(v95, v103);

    v82 = v107;
    v83 = v101;
    if (v104)
    {
      v84 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v64, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&dword_0, v64, v84, "makeContextForConfirmIntent adding pommesContext", v85, 2u);
      }

      (*(v98 + 104))(v97, enum case for PommesContext.Source.pluginDefined(_:), v94);
      v86 = v99;
      PommesContext.init(source:domain:listenAfterSpeaking:)();
      v87 = type metadata accessor for PommesContext();
      (*(*(v87 - 8) + 56))(v86, 0, 1, v87);
      NLContextUpdate.pommesContext.setter();
    }

    v88 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v64, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v117[0] = v90;
      *v89 = 136315138;
      swift_beginAccess();
      (*(v102 + 16))(v83, v81, v105);
      v91 = String.init<A>(describing:)();
      v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, v117);
      v81 = v100;

      *(v89 + 4) = v93;
      _os_log_impl(&dword_0, v64, v88, "nlContext %s", v89, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v90);
    }

    swift_beginAccess();
    v82(v81);
    return (*(v102 + 8))(v81, v105);
  }
}

uint64_t TypedDisambiguationItems.makeNLContextUpdate(locale:weightedPromptResponseTargets:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 128) = a5;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v6 = type metadata accessor for NLContextUpdate();
  *(v5 + 48) = v6;
  v7 = *(v6 - 8);
  *(v5 + 56) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 80) = swift_task_alloc();
  v9 = type metadata accessor for DisplayHint();
  *(v5 + 88) = v9;
  v10 = *(v9 - 8);
  *(v5 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();
  *(v5 + 120) = swift_task_alloc();

  return _swift_task_switch(TypedDisambiguationItems.makeNLContextUpdate(locale:weightedPromptResponseTargets:), 0, 0);
}

uint64_t TypedDisambiguationItems.makeNLContextUpdate(locale:weightedPromptResponseTargets:)()
{
  v71 = v0;
  static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 128);
  v2 = *(v0 + 40);
  v3 = logObject;
  os_log(_:dso:log:_:_:)();
  v4 = *(v0 + 24);
  if (v1)
  {
    v5 = *(v0 + 24);
    v6 = specialized static GeoNLContextUtils.makeDisplayHints(items:locale:)(v2);
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v7))
    {
      v8 = v3;
      v9 = *(v0 + 88);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v70 = v11;
      *v10 = 136315138;
      v12 = Array.description.getter();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v70);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_0, v8, v7, "TypedDisambiguationItems IncidentType displayHints are: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }

    v15 = *(v0 + 16);
    static GeoNLContextUtils.makeNLContext(weightedPromptResponseTargets:displayHints:)(*(v0 + 32), v6);
  }

  else
  {
    specialized static RecipientDisambiguationHelper.allHaveSameIdentifier(recipients:)(v2);
    v63 = specialized static GeoNLContextUtils.makeDisplayHints(persons:locale:handleDisambiguation:)(v2, v4, v16 & 1);
    v17 = *(v63 + 16);
    if (v17)
    {
      v18 = *(v0 + 96);
      v20 = *(v18 + 16);
      v18 += 16;
      v19 = v20;
      v21 = v63 + ((*(v18 + 64) + 32) & ~*(v18 + 64));
      v66 = (v18 + 16);
      v67 = *(v18 + 56);
      v65 = (v18 - 8);
      v64 = v0;
      v68 = v20;
      do
      {
        v32 = *(v0 + 112);
        v31 = *(v0 + 120);
        v33 = *(v0 + 88);
        v19(v31, v21, v33);
        v34 = static os_log_type_t.info.getter();
        (*v66)(v32, v31, v33);
        v35 = os_log_type_enabled(v3, v34);
        v36 = *(v0 + 112);
        if (v35)
        {
          v22 = *(v0 + 104);
          v23 = *(v0 + 88);
          v24 = swift_slowAlloc();
          v25 = swift_slowAlloc();
          v70 = v25;
          *v24 = 136315138;
          v68(v22, v36, v23);
          v26 = String.init<A>(describing:)();
          v27 = v3;
          v29 = v28;
          (*v65)(v36, v23);
          v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v29, &v70);
          v3 = v27;
          v0 = v64;

          *(v24 + 4) = v30;
          _os_log_impl(&dword_0, v3, v34, "TypedDisambiguationItems Contact displayHints are: %s", v24, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v25);
          v19 = v68;
        }

        else
        {
          (*v65)(*(v0 + 112), *(v0 + 88));
        }

        v21 += v67;
        --v17;
      }

      while (v17);
    }

    v38 = *(v0 + 72);
    v37 = *(v0 + 80);
    v39 = v3;
    v41 = *(v0 + 48);
    v40 = *(v0 + 56);
    static GeoNLContextUtils.makeNLContext(weightedPromptResponseTargets:displayHints:)(*(v0 + 32), v63);

    v42 = static os_log_type_t.info.getter();
    v43 = *(v40 + 16);
    v43(v38, v37, v41);
    v44 = os_log_type_enabled(v39, v42);
    v45 = *(v0 + 72);
    if (v44)
    {
      log = v39;
      v47 = *(v0 + 56);
      v46 = *(v0 + 64);
      v48 = *(v0 + 48);
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v70 = v50;
      *v49 = 136315138;
      v43(v46, v45, v48);
      v51 = String.init<A>(describing:)();
      v53 = v52;
      (*(v47 + 8))(v45, v48);
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v70);

      *(v49 + 4) = v54;
      _os_log_impl(&dword_0, log, v42, "nlContext %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
    }

    else
    {
      (*(*(v0 + 56) + 8))(*(v0 + 72), *(v0 + 48));
    }

    (*(*(v0 + 56) + 32))(*(v0 + 16), *(v0 + 80), *(v0 + 48));
  }

  v56 = *(v0 + 112);
  v55 = *(v0 + 120);
  v57 = *(v0 + 104);
  v59 = *(v0 + 72);
  v58 = *(v0 + 80);
  v60 = *(v0 + 64);

  v61 = *(v0 + 8);

  return v61();
}

uint64_t TypedDisambiguationItems.shouldReadItemsInVox.getter(unint64_t a1, char a2)
{
  if (a2)
  {
    return 1;
  }

  if (a1 >> 62)
  {
    v5 = a1;
    v4 = _CocoaArrayWrapper.endIndex.getter();
    a1 = v5;
    if (v4 >= 6)
    {
      goto LABEL_4;
    }

    return 1;
  }

  if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)) < 6)
  {
    return 1;
  }

LABEL_4:

  return specialized static RecipientDisambiguationHelper.hasAllSameRecipientsWithHandles(recipients:)(a1);
}

uint64_t specialized _NativeDictionary.filter(_:)(uint64_t a1)
{
  v2 = a1;
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v6 = &v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = specialized closure #1 in _NativeDictionary.filter(_:)(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSgSaySo8INPersonCGG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab18VKXEfU_SSSg_SaySo8I5CGTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAhKIsgnndzo_Tf1nc_n0125_s21GeoFlowDelegatePlugin0A14NLContextUtilsO16makeDisplayHints7persons6locale20handleDisambiguationSay07SiriKitB00H4HintVGSaysI56CG_10Foundation6LocaleVSbtFZSbSSSg3key_AN5valuet_tXEfU1_Tf1nnc_n(v8, v4, v2);

  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *specialized closure #1 in _NativeDictionary.filter(_:)(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
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
    v13 = v10 | (v5 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    if (v14 >> 62)
    {
      v20 = result;
      v19 = a2;
      v16 = v4;
      v17 = _CocoaArrayWrapper.endIndex.getter();
      v4 = v16;
      a2 = v19;
      v18 = v17;
      result = v20;
      if (v18 >= 2)
      {
        goto LABEL_13;
      }
    }

    else if (*(&dword_10 + (v14 & 0xFFFFFFFFFFFFFF8)) >= 2)
    {
LABEL_13:
      *(result + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v4++, 1))
      {
        goto LABEL_20;
      }
    }
  }

  v11 = v5;
  while (1)
  {
    v5 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return specialized _NativeDictionary.extractDictionary(using:count:)(result, a2, v4, a3);
    }

    v12 = *(a3 + 64 + 8 * v5);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
  return result;
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s17_NativeDictionaryVySSSgSaySo8INPersonCGG_Tg506_ss17_gh46V6filteryAByxq_GSbx3key_q_5valuet_tKXEKFADs13_ab18VKXEfU_SSSg_SaySo8I5CGTG5ALxq_Sbs5Error_pRi_zRi0_zRi__Ri0__r0_lyAhKIsgnndzo_Tf1nc_n0125_s21GeoFlowDelegatePlugin0A14NLContextUtilsO16makeDisplayHints7persons6locale20handleDisambiguationSay07SiriKitB00H4HintVGSaysI56CG_10Foundation6LocaleVSbtFZSbSSSg3key_AN5valuet_tXEfU1_Tf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = specialized closure #1 in _NativeDictionary.filter(_:)(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t specialized _NativeDictionary.extractDictionary(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSSgSaySo8INPersonCGGMd, &_ss18_DictionaryStorageCySSSgSaySo8INPersonCGGMR);
  result = static _DictionaryStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v34 = v4;
  v35 = result;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v36 = (v10 - 1) & v10;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    v22 = *(v9 + 40);
    Hasher.init(_seed:)();
    if (v20)
    {
      Hasher._combine(_:)(1u);

      v23 = v19;
      String.hash(into:)();
    }

    else
    {
      v23 = v19;
      Hasher._combine(_:)(0);
    }

    result = Hasher._finalize()();
    v9 = v35;
    v24 = -1 << *(v35 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v12 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v12 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_29;
        }
      }

      goto LABEL_34;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v12 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_29:
    *(v12 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v35 + 48) + 16 * v27);
    *v32 = v23;
    v32[1] = v20;
    *(*(v35 + 56) + 8 * v27) = v21;
    ++*(v35 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_35;
    }

    v4 = v34;
    v10 = v36;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v36 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

void *_sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSSSg_SaySo8INPersonCGTt1g50128_s21GeoFlowDelegatePlugin0A14NLContextUtilsO16makeDisplayHints7persons6locale20handleDisambiguationSay07SiriKitB00H4HintVGSaySo8D40CG_10Foundation6LocaleVSbtFZSSSgAMXEfU0_Tf1nc_nTf4g_n(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v45 = &v39 - v7;
  v46 = &_swiftEmptyDictionarySingleton;
  if (a1 >> 62)
  {
LABEL_29:
    v8 = _CocoaArrayWrapper.endIndex.getter();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v43 = a1 & 0xFFFFFFFFFFFFFF8;
      v44 = a1 & 0xC000000000000001;
      v10 = &_swiftEmptyDictionarySingleton;
      v40 = xmmword_B8FB0;
      v41 = a1;
      v42 = v8;
      while (1)
      {
        if (v44)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v9 >= *(v43 + 16))
          {
            goto LABEL_26;
          }

          v12 = *(a1 + 8 * v9 + 32);
        }

        v13 = v12;
        v14 = v9 + 1;
        if (__OFADD__(v9, 1))
        {
          __break(1u);
LABEL_26:
          __break(1u);
LABEL_27:
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v15 = [v12 nameComponents];
        if (v15)
        {
          v16 = v15;
          static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

          v17 = 0;
        }

        else
        {
          v17 = 1;
        }

        v18 = type metadata accessor for PersonNameComponents();
        v19 = *(v18 - 8);
        (*(v19 + 56))(v6, v17, 1, v18);
        v20 = v6;
        v21 = v6;
        v6 = v45;
        outlined init with take of PersonNameComponents?(v21, v45);
        v22 = (*(v19 + 48))(v6, 1, v18);
        a1 = 0;
        v23 = 0;
        if (!v22)
        {
          a1 = PersonNameComponents.givenName.getter();
          v23 = v24;
        }

        outlined destroy of Mirror.DisplayStyle?(v6, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        v26 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v23);
        v27 = v10[2];
        v28 = (v25 & 1) == 0;
        v29 = v27 + v28;
        if (__OFADD__(v27, v28))
        {
          goto LABEL_27;
        }

        v6 = v25;
        if (v10[3] < v29)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v29, 1);
          v10 = v46;
          v30 = specialized __RawDictionaryStorage.find<A>(_:)(a1, v23);
          if ((v6 & 1) != (v31 & 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
            result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return result;
          }

          v26 = v30;
        }

        if (v6)
        {

          v11 = (v10[7] + 8 * v26);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          a1 = v41;
          if (*(&dword_10 + (*v11 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v11 & 0xFFFFFFFFFFFFFF8)) >> 1)
          {
            v37 = *(&dword_10 + (*v11 & 0xFFFFFFFFFFFFFF8));
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
          v32 = swift_allocObject();
          *(v32 + 16) = v40;
          *(v32 + 32) = v13;
          v10[(v26 >> 6) + 8] |= 1 << v26;
          v33 = (v10[6] + 16 * v26);
          *v33 = a1;
          v33[1] = v23;
          *(v10[7] + 8 * v26) = v32;
          v34 = v10[2];
          v35 = __OFADD__(v34, 1);
          v36 = v34 + 1;
          if (v35)
          {
            goto LABEL_28;
          }

          v10[2] = v36;
          a1 = v41;
        }

        v6 = v20;
        ++v9;
        if (v14 == v42)
        {
          return v10;
        }
      }
    }
  }

  return &_swiftEmptyDictionarySingleton;
}

uint64_t specialized static GeoNLContextUtils.makeDisplayHints(persons:locale:handleDisambiguation:)(unint64_t a1, uint64_t a2, int a3)
{
  v175 = a3;
  v163 = a2;
  v160 = type metadata accessor for OrdinalDisplayHintsBuilder();
  v159 = *(v160 - 8);
  v4 = *(v159 + 64);
  __chkstk_darwin(v160);
  v158 = &v157 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v188 = &v157 - v8;
  v191 = type metadata accessor for DisplayHint();
  v182 = *(v191 - 8);
  v9 = *(v182 + 64);
  v10 = __chkstk_darwin(v191);
  v167 = &v157 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v162 = &v157 - v13;
  v14 = __chkstk_darwin(v12);
  v161 = &v157 - v15;
  v16 = __chkstk_darwin(v14);
  v166 = &v157 - v17;
  v18 = __chkstk_darwin(v16);
  v165 = &v157 - v19;
  v20 = __chkstk_darwin(v18);
  v164 = &v157 - v21;
  v22 = __chkstk_darwin(v20);
  v179 = &v157 - v23;
  __chkstk_darwin(v22);
  v178 = &v157 - v24;
  v181 = type metadata accessor for SemanticValue();
  v176 = *(v181 - 8);
  v25 = *(v176 + 64);
  v26 = __chkstk_darwin(v181);
  v187 = &v157 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v190 = &v157 - v29;
  __chkstk_darwin(v28);
  v195 = &v157 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  v32 = *(*(v31 - 8) + 64);
  v33 = __chkstk_darwin(v31 - 8);
  v35 = &v157 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __chkstk_darwin(v33);
  v38 = (&v157 - v37);
  v39 = __chkstk_darwin(v36);
  v41 = &v157 - v40;
  __chkstk_darwin(v39);
  v43 = &v157 - v42;
  v197 = &_swiftEmptyArrayStorage;
  v198 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    goto LABEL_108;
  }

  v44 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
LABEL_3:
  v184 = a1;
  v174 = v35;
  v168 = v38;
  v183 = v44;
  if (v44)
  {
    v45 = 0;
    v46 = a1 & 0xC000000000000001;
    v47 = a1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v46)
      {
        v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v45 >= *(v47 + 16))
        {
          goto LABEL_106;
        }

        v48 = *(a1 + 8 * v45 + 32);
      }

      v38 = v48;
      v49 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        v44 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_3;
      }

      v50 = [v48 nameComponents];
      if (v50)
      {
        v51 = v50;
        static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

        v52 = 0;
      }

      else
      {
        v52 = 1;
      }

      v53 = type metadata accessor for PersonNameComponents();
      v54 = *(v53 - 8);
      (*(v54 + 56))(v41, v52, 1, v53);
      outlined init with take of PersonNameComponents?(v41, v43);
      if ((*(v54 + 48))(v43, 1, v53))
      {
        outlined destroy of Mirror.DisplayStyle?(v43, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
      }

      else
      {
        v56 = PersonNameComponents.givenName.getter();
        v35 = v57;
        outlined destroy of Mirror.DisplayStyle?(v43, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
        if (v35)
        {
          v55 = v56 & 0xFFFFFFFFFFFFLL;
          goto LABEL_19;
        }
      }

      v55 = 0;
      v35 = 0xE000000000000000;
LABEL_19:

      v58 = HIBYTE(v35) & 0xF;
      if ((v35 & 0x2000000000000000) == 0)
      {
        v58 = v55;
      }

      if (v58)
      {
        v35 = &v197;
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v59 = v197[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      v44 = v183;
      a1 = v184;
      ++v45;
      if (v49 == v183)
      {
        v60 = v197;
        goto LABEL_26;
      }
    }
  }

  v60 = &_swiftEmptyArrayStorage;
LABEL_26:
  v61 = _sSD8grouping2bySDyxSay7ElementQyd__GGqd__n_xADKXEtKcAERs_STRd__lufCSSSg_SaySo8INPersonCGTt1g50128_s21GeoFlowDelegatePlugin0A14NLContextUtilsO16makeDisplayHints7persons6locale20handleDisambiguationSay07SiriKitB00H4HintVGSaySo8D40CG_10Foundation6LocaleVSbtFZSSSgAMXEfU0_Tf1nc_nTf4g_n(v60);

  v62 = specialized _NativeDictionary.filter(_:)(v61);

  v173 = *(v62 + 16);

  if (v44)
  {
    if (v44 >= 1)
    {
      v64 = 0;
      v172 = a1 & 0xC000000000000001;
      v194 = (v176 + 16);
      v171 = v176 + 32;
      v185 = v182 + 32;
      v186 = (v176 + 56);
      v170 = (v176 + 8);
      v65 = &_swiftEmptyArrayStorage;
      v169 = xmmword_B7D80;
      *&v196 = &_swiftEmptyArrayStorage;
      v66 = v181;
      while (1)
      {
        v189 = v64;
        if (v172)
        {
          v67 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v67 = *(a1 + 8 * v64 + 32);
        }

        v68 = v67;
        INPerson.encodeBase64.getter();
        v69 = v195;
        SemanticValue.init(string:label:)();
        v193 = *v194;
        v193(v190, v69, v66);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v65[2] + 1, 1, v65);
        }

        v71 = v65[2];
        v70 = v65[3];
        if (v71 >= v70 >> 1)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v70 > 1, v71 + 1, 1, v65);
        }

        v65[2] = v71 + 1;
        (*(v176 + 32))(v65 + ((*(v176 + 80) + 32) & ~*(v176 + 80)) + *(v176 + 72) * v71, v190, v66);
        static os_log_type_t.info.getter();
        if (one-time initialization token for logObject != -1)
        {
          swift_once();
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
        v72 = swift_allocObject();
        *(v72 + 16) = v169;
        *(v72 + 56) = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
        *(v72 + 64) = lazy protocol witness table accessor for type INPerson and conformance NSObject();
        *(v72 + 32) = v68;
        v73 = v68;
        v74 = INPerson.encodeBase64.getter();
        v76 = v75;
        *(v72 + 96) = &type metadata for String;
        *(v72 + 104) = lazy protocol witness table accessor for type String and conformance String();
        *(v72 + 72) = v74;
        *(v72 + 80) = v76;
        os_log(_:dso:log:_:_:)();
        v77 = v73;

        v78 = [v73 displayName];
        v79 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v81 = v80;

        v82 = HIBYTE(v81) & 0xF;
        if ((v81 & 0x2000000000000000) == 0)
        {
          v82 = v79 & 0xFFFFFFFFFFFFLL;
        }

        v192 = v73;
        if (v82)
        {
          v83 = v188;
          v193(v188, v195, v66);
          v177 = *v186;
          v177(v83, 0, 1, v66);
          v84 = [v77 displayName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          type metadata accessor for PersonOntologyNode();
          static PersonOntologyNode.personFullNameNode.getter();
          specialized OntologyNode.javaClassName.getter();

          SemanticValue.init(string:label:nodeClass:)();
          DisplayHint.init(idValue:displayValue:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            *&v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v196 + 16) + 1, 1, v196);
          }

          v86 = *(v196 + 16);
          v85 = *(v196 + 24);
          v87 = v192;
          v180 = v65;
          if (v86 >= v85 >> 1)
          {
            *&v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v85 > 1, v86 + 1, 1, v196);
          }

          v88 = v196;
          *(v196 + 16) = v86 + 1;
          v89 = (*(v182 + 80) + 32) & ~*(v182 + 80);
          v90 = *(v182 + 72);
          v91 = v88 + v89 + v90 * v86;
          v92 = *(v182 + 32);
          v92(v91, v178, v191);
          v93 = v188;
          v94 = v181;
          v193(v188, v195, v181);
          v177(v93, 0, 1, v94);
          v95 = [v87 displayName];
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          type metadata accessor for AddressOntologyNode.OccupantNode();
          static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
          specialized OntologyNode.javaClassName.getter();

          SemanticValue.init(string:label:nodeClass:)();
          DisplayHint.init(idValue:displayValue:)();
          v97 = *(v88 + 16);
          v96 = *(v88 + 24);
          if (v97 >= v96 >> 1)
          {
            *&v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v96 > 1, v97 + 1, 1, v196);
          }

          v98 = v174;
          v99 = v196;
          *(v196 + 16) = v97 + 1;
          a1 = v184;
          v92(&v99[v89 + v97 * v90], v179, v191);
          v198 = v99;
          v65 = v180;
          v66 = v181;
          v44 = v183;
          v77 = v192;
        }

        else
        {
          v98 = v174;
        }

        if (v173)
        {
          v100 = [v77 nameComponents];
          if (v100)
          {
            v101 = v100;
            static PersonNameComponents._unconditionallyBridgeFromObjectiveC(_:)();

            v102 = 0;
          }

          else
          {
            v102 = 1;
          }

          v103 = type metadata accessor for PersonNameComponents();
          v104 = *(v103 - 8);
          (*(v104 + 56))(v98, v102, 1, v103);
          v105 = v168;
          outlined init with take of PersonNameComponents?(v98, v168);
          if ((*(v104 + 48))(v105, 1, v103))
          {
            outlined destroy of Mirror.DisplayStyle?(v105, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
          }

          else
          {
            v106 = PersonNameComponents.familyName.getter();
            v108 = v107;
            outlined destroy of Mirror.DisplayStyle?(v105, &_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
            if (v108)
            {
              v109 = v106;
              v110 = v188;
              v193(v188, v195, v66);
              v111 = *v186;
              (*v186)(v110, 0, 1, v66);
              type metadata accessor for AddressOntologyNode.OccupantNode();

              static AddressOntologyNode.OccupantNode.occupantFullNameNode.getter();
              specialized OntologyNode.javaClassName.getter();

              v177 = v109;
              SemanticValue.init(string:label:nodeClass:)();
              DisplayHint.init(idValue:displayValue:)();
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                *&v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v196 + 16) + 1, 1, v196);
              }

              v113 = *(v196 + 16);
              v112 = *(v196 + 24);
              v180 = v65;
              if (v113 >= v112 >> 1)
              {
                *&v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v112 > 1, v113 + 1, 1, v196);
              }

              v114 = v196;
              *(v196 + 16) = v113 + 1;
              v115 = (*(v182 + 80) + 32) & ~*(v182 + 80);
              v116 = *(v182 + 72);
              v117 = v114 + v115 + v116 * v113;
              v118 = *(v182 + 32);
              v118(v117, v164, v191);
              v119 = v188;
              v120 = v181;
              v193(v188, v195, v181);
              v111(v119, 0, 1, v120);
              static AddressOntologyNode.OccupantNode.occupantLastNameNode.getter();
              specialized OntologyNode.javaClassName.getter();

              SemanticValue.init(string:label:nodeClass:)();
              DisplayHint.init(idValue:displayValue:)();
              v122 = *(v114 + 16);
              v121 = *(v114 + 24);
              if (v122 >= v121 >> 1)
              {
                *&v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v121 > 1, v122 + 1, 1, v196);
              }

              v123 = v191;
              v77 = v192;
              v124 = v196;
              *(v196 + 16) = v122 + 1;
              a1 = v184;
              v118(&v124[v115 + v122 * v116], v165, v123);
              v198 = v124;
              v65 = v180;
              v66 = v181;
              v44 = v183;
            }
          }
        }

        if ((v175 & 1) == 0)
        {
          break;
        }

        v125 = [v77 personHandle];
        if (!v125)
        {
          break;
        }

        v126 = v125;
        v127 = [v125 label];
        if (v127)
        {
          v128 = v127;
          Locale.identifier.getter();
          static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();

          v129 = v188;
          v193(v188, v195, v66);
          (*v186)(v129, 0, 1, v66);
          SemanticValue.init(string:label:)();
          DisplayHint.init(idValue:displayValue:)();
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            *&v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v196 + 16) + 1, 1, v196);
          }

          v131 = *(v196 + 16);
          v130 = *(v196 + 24);
          if (v131 >= v130 >> 1)
          {
            *&v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v130 > 1, v131 + 1, 1, v196);
          }

          v132 = v196;
          *(v196 + 16) = v131 + 1;
          (*(v182 + 32))(&v132[((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v131], v166, v191);
          v198 = v132;
        }

        v133 = [v126 value];
        if (v133)
        {
          v134 = v133;
          v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v137 = v136;

          v138 = HIBYTE(v137) & 0xF;
          if ((v137 & 0x2000000000000000) == 0)
          {
            v138 = v135 & 0xFFFFFFFFFFFFLL;
          }

          if (!v138)
          {
            (*v170)(v195, v66);

            goto LABEL_30;
          }

          v139 = [v126 type];
          v77 = v192;
          if (v139 == &dword_0 + 2)
          {
            v144 = v188;
            v193(v188, v195, v66);
            (*v186)(v144, 0, 1, v66);
            SemanticValue.init(string:label:)();
            DisplayHint.init(idValue:displayValue:)();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              *&v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v196 + 16) + 1, 1, v196);
            }

            v146 = *(v196 + 16);
            v145 = *(v196 + 24);
            if (v146 >= v145 >> 1)
            {
              *&v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v145 > 1, v146 + 1, 1, v196);
            }

            (*v170)(v195, v66);
            v143 = v196;
            *(v196 + 16) = v146 + 1;
            (*(v182 + 32))(&v143[((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v146], v162, v191);
            goto LABEL_92;
          }

          if (v139 == &dword_0 + 1)
          {
            v140 = v188;
            v193(v188, v195, v66);
            (*v186)(v140, 0, 1, v66);
            SemanticValue.init(string:label:)();
            DisplayHint.init(idValue:displayValue:)();
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              *&v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v196 + 16) + 1, 1, v196);
            }

            v142 = *(v196 + 16);
            v141 = *(v196 + 24);
            if (v142 >= v141 >> 1)
            {
              *&v196 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v141 > 1, v142 + 1, 1, v196);
            }

            (*v170)(v195, v66);
            v143 = v196;
            *(v196 + 16) = v142 + 1;
            (*(v182 + 32))(&v143[((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v142], v161, v191);
LABEL_92:
            v198 = v143;
            goto LABEL_30;
          }

          (*v170)(v195, v66);

          goto LABEL_85;
        }

        (*v170)(v195, v66);

LABEL_30:
        v64 = v189 + 1;
        if (v44 == v189 + 1)
        {
          goto LABEL_94;
        }
      }

      (*v170)(v195, v66);
LABEL_85:

      goto LABEL_30;
    }

    __break(1u);
  }

  else
  {
LABEL_94:
    if (one-time initialization token for referenceNode != -1)
    {
      swift_once();
    }

    TerminalOntologyNode.name.getter();
    v147 = v158;
    OrdinalDisplayHintsBuilder.init(referenceNode:)();
    v148 = OrdinalDisplayHintsBuilder.build(for:)();

    (*(v159 + 8))(v147, v160);
    specialized Array.append<A>(contentsOf:)(v148);
    v41 = v198;
    v38 = *(v198 + 2);
    if (v38)
    {
      v35 = 0;
      v43 = (v182 + 16);
      *&v149 = 134218242;
      v196 = v149;
      do
      {
        a1 = static os_log_type_t.info.getter();
        if (one-time initialization token for logObject != -1)
        {
          swift_once();
        }

        v150 = logObject;
        if (os_log_type_enabled(logObject, a1))
        {
          v151 = swift_slowAlloc();
          v152 = swift_slowAlloc();
          v197 = v152;
          *v151 = v196;
          *(v151 + 4) = v35;
          *(v151 + 12) = 2080;
          if (v35 >= *(v41 + 2))
          {
            goto LABEL_107;
          }

          v153 = v152;
          (*(v182 + 16))(v167, &v41[((*(v182 + 80) + 32) & ~*(v182 + 80)) + *(v182 + 72) * v35], v191);
          v154 = String.init<A>(describing:)();
          v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v154, v155, &v197);

          *(v151 + 14) = v156;
          _os_log_impl(&dword_0, v150, a1, "display hint %ld %s", v151, 0x16u);
          __swift_destroy_boxed_opaque_existential_0Tm(v153);
        }

        ++v35;
      }

      while (v38 != v35);
    }

    return v41;
  }

  return result;
}

uint64_t specialized static GeoNLContextUtils.makeDisplayHints(items:locale:)(unint64_t a1)
{
  v2 = type metadata accessor for OrdinalDisplayHintsBuilder();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13SemanticValueVSgMd, &_s11SiriKitFlow13SemanticValueVSgMR);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v57 = &v45 - v9;
  v56 = type metadata accessor for DisplayHint();
  v59 = *(v56 - 8);
  v10 = *(v59 + 64);
  __chkstk_darwin(v56);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = type metadata accessor for SemanticValue();
  v58 = *(v64 - 8);
  v13 = *(v58 + 64);
  v14 = __chkstk_darwin(v64);
  v55 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v62 = &v45 - v17;
  v18 = __chkstk_darwin(v16);
  v65 = &v45 - v19;
  result = __chkstk_darwin(v18);
  v66 = &v45 - v21;
  v67 = &_swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v22 = result;
  }

  else
  {
    v22 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v47 = v2;
  v46 = v3;
  v45 = v6;
  if (v22)
  {
    if (v22 >= 1)
    {
      v23 = 0;
      v60 = a1 & 0xC000000000000001;
      v61 = (v58 + 16);
      v50 = v58 + 56;
      v51 = v58 + 32;
      v48 = v59 + 32;
      v49 = (v58 + 8);
      v24 = &_swiftEmptyArrayStorage;
      v63 = &_swiftEmptyArrayStorage;
      v53 = v12;
      v54 = a1;
      v52 = v22;
      while (1)
      {
        if (v60)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v28 = *(a1 + 8 * v23 + 32);
        }

        v29 = v28;
        static os_log_type_t.info.getter();
        if (one-time initialization token for logObject != -1)
        {
          swift_once();
        }

        os_log(_:dso:log:_:_:)();
        v30 = [v29 type];
        if (v30 > 2)
        {
          if (v30 != &dword_0 + 3 && v30 != &dword_4 + 1)
          {
LABEL_19:
            static os_log_type_t.error.getter();
            if (one-time initialization token for logObject != -1)
            {
              swift_once();
            }

            os_log(_:dso:log:_:_:)();

            goto LABEL_7;
          }
        }

        else if (v30 != &dword_0 + 1 && v30 != &dword_0 + 2)
        {
          goto LABEL_19;
        }

        v31 = one-time initialization token for incidentTypeNode;

        if (v31 != -1)
        {
          swift_once();
        }

        TerminalOntologyNode.name.getter();
        specialized OntologyNode.javaClassName.getter();
        SemanticValue.init(string:label:nodeClass:)();
        v32 = [v29 localizedDisplayString];
        if (v32)
        {
          v33 = v32;
          static String._unconditionallyBridgeFromObjectiveC(_:)();
        }

        TerminalOntologyNode.name.getter();
        specialized OntologyNode.javaClassName.getter();
        SemanticValue.init(string:label:nodeClass:)();
        v34 = *v61;
        (*v61)(v62, v66, v64);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24[2] + 1, 1, v24);
        }

        v35 = v53;
        v37 = v24[2];
        v36 = v24[3];
        if (v37 >= v36 >> 1)
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v36 > 1, v37 + 1, 1, v24);
        }

        v24[2] = v37 + 1;
        v38 = v58;
        v39 = v64;
        (*(v58 + 32))(v24 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v37, v62, v64);
        v40 = v57;
        v34(v57, v66, v39);
        (*(v38 + 56))(v40, 0, 1, v39);
        v34(v55, v65, v39);
        DisplayHint.init(idValue:displayValue:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63[2] + 1, 1, v63);
        }

        a1 = v54;
        v42 = v63[2];
        v41 = v63[3];
        if (v42 >= v41 >> 1)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v41 > 1, v42 + 1, 1, v63);
        }

        v25 = *v49;
        v26 = v64;
        (*v49)(v65, v64);
        v25(v66, v26);
        v27 = v63;
        v63[2] = v42 + 1;
        (*(v59 + 32))(v27 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v42, v35, v56);
        v67 = v27;
        v22 = v52;
LABEL_7:
        if (v22 == ++v23)
        {
          goto LABEL_34;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_34:
    if (one-time initialization token for referenceNode != -1)
    {
      swift_once();
    }

    TerminalOntologyNode.name.getter();
    v43 = v45;
    OrdinalDisplayHintsBuilder.init(referenceNode:)();
    v44 = OrdinalDisplayHintsBuilder.build(for:)();

    (*(v46 + 8))(v43, v47);
    specialized Array.append<A>(contentsOf:)(v44);
    return v67;
  }

  return result;
}

void specialized static RecipientDisambiguationHelper.allHaveSameIdentifier(recipients:)(unint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_81:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  do
  {
    v9 = v4;
    if (v3 == v4)
    {
      break;
    }

    if (v5)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        goto LABEL_74;
      }

      v10 = *(v1 + 8 * v4 + 32);
    }

    v11 = v10;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    v12 = [v10 contactIdentifier];
    if (v12)
    {
      v13 = v12;
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v15;

      v6 = v14 & 0xFFFFFFFFFFFFLL;
    }

    else
    {

      v6 = 0;
      v7 = 0xE000000000000000;
    }

    if ((v7 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v7) & 0xF;
    }

    else
    {
      v8 = v6;
    }

    v4 = v9 + 1;
  }

  while (v8);
  v16 = 0;
  v59 = v1 & 0xC000000000000001;
  while (v3 != v16)
  {
    if (v5)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v16 >= *(v2 + 16))
      {
        goto LABEL_76;
      }

      v20 = *(v1 + 8 * v16 + 32);
    }

    v21 = v20;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_75;
    }

    v22 = [v20 customIdentifier];
    if (v22)
    {
      v23 = v22;
      v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = v25;

      v17 = v24 & 0xFFFFFFFFFFFFLL;
    }

    else
    {

      v17 = 0;
      v18 = 0xE000000000000000;
    }

    v19 = HIBYTE(v18) & 0xF;
    if ((v18 & 0x2000000000000000) == 0)
    {
      v19 = v17;
    }

    ++v16;
    if (!v19)
    {
      if (v3 != v9)
      {
        return;
      }

LABEL_52:
      if (v3)
      {
        if (!v5)
        {
          if (*(v2 + 16))
          {
            v42 = *(v1 + 32);
            goto LABEL_56;
          }

          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_35:
          v27 = v26;
          v28 = [v26 customIdentifier];

          if (!v28)
          {
            goto LABEL_91;
          }

          v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v30 = v29;

          v31 = 0;
          while (1)
          {
            if (v5)
            {
              v32 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v31 >= *(v2 + 16))
              {
                goto LABEL_80;
              }

              v32 = *(v1 + 8 * v31 + 32);
            }

            v33 = v32;
            v34 = v31 + 1;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_78;
            }

            v35 = [v32 customIdentifier];
            if (!v35)
            {
              goto LABEL_89;
            }

            v36 = v35;
            v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v39 = v38;

            v40 = v58 == v37 && v30 == v39;
            if (v40)
            {

              v5 = v1 & 0xC000000000000001;
            }

            else
            {
              v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

              v5 = v1 & 0xC000000000000001;
              if ((v41 & 1) == 0)
              {
LABEL_71:

                return;
              }
            }

            ++v31;
            if (v34 == v3)
            {
              goto LABEL_71;
            }
          }
        }
      }

      else
      {
        __break(1u);
      }

      v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_56:
      v43 = v42;
      v44 = [v42 contactIdentifier];

      if (!v44)
      {
        goto LABEL_90;
      }

      v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v47 = v46;

      v48 = 0;
      v1 = v2;
      while (1)
      {
        if (v5)
        {
          v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v48 >= *(v2 + 16))
          {
            goto LABEL_79;
          }

          v49 = *(v58 + 8 * v48 + 32);
        }

        v50 = v49;
        v2 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_77;
        }

        v51 = [v49 contactIdentifier];
        if (!v51)
        {
          goto LABEL_88;
        }

        v52 = v51;
        v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v55 = v54;

        if (v45 == v53 && v47 == v55)
        {

          v5 = v59;
        }

        else
        {
          v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v5 = v59;
          if ((v57 & 1) == 0)
          {
            goto LABEL_71;
          }
        }

        ++v48;
        v40 = v2 == v3;
        v2 = v1;
        if (v40)
        {
          goto LABEL_71;
        }
      }
    }
  }

  if (v3 == v9)
  {
    goto LABEL_52;
  }

  if (!v3)
  {
    goto LABEL_85;
  }

  if (v5)
  {
    goto LABEL_86;
  }

  if (*(v2 + 16))
  {
    v26 = *(v1 + 32);
    goto LABEL_35;
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
}

unint64_t specialized static RecipientDisambiguationHelper.hasRecipientsWithSameDisplayName(recipients:)(unint64_t result)
{
  v1 = result;
  if (!(result >> 62))
  {
    v2 = *(&dword_10 + (result & 0xFFFFFFFFFFFFFF8));
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_8:
    v6 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_9;
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  v2 = result;
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    goto LABEL_31;
  }

  if (*(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
  {
    for (i = *(v1 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v4 = i;
      v5 = [i displayName];

      v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v8 = v7;

LABEL_9:
      v9 = HIBYTE(v8) & 0xF;
      if ((v8 & 0x2000000000000000) == 0)
      {
        v9 = v6 & 0xFFFFFFFFFFFFLL;
      }

      v10 = v9 != 0;
      if (!v9 || !v2)
      {
        break;
      }

      v11 = 0;
      v21 = v1 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v11 >= *(&dword_10 + (v1 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_30;
          }

          v12 = *(v1 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        v15 = [v12 displayName];
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        if (v6 == v16 && v8 == v18)
        {
        }

        else
        {
          v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v20 & 1) == 0)
          {
            v10 = 0;
            goto LABEL_28;
          }
        }

        ++v11;
        if (v14 == v2)
        {
          v10 = 1;
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_28:

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized static DisambiguationListUtils.makeHandleLabelItemComponent(handleLabel:handleType:locale:)(void *a1)
{
  Locale.languageCode.getter();
  v2 = static LabelMappingUtil.translateINPersonHandleLabel(_:languageCode:)();
  v4 = v3;

  v5 = static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v6 = logObject;
  if (os_log_type_enabled(logObject, v5))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    type metadata accessor for INPersonHandleLabel(0);
    v8 = a1;
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v4, &v15);

    *(v7 + 14) = v12;
    _os_log_impl(&dword_0, v6, v5, "makeHandleLabelItemComponent %s label %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  type metadata accessor for SiriKitDisambiguationItemComponent();
  dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

  v13 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

  return v13;
}

uint64_t specialized static DisambiguationListUtils.makeHandleValueItemComponent(type:value:allowedOnLockScreen:)(uint64_t a1, uint64_t a2, unint64_t a3, int a4)
{
  v8 = type metadata accessor for SpeakableString();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 2)
  {
    v26 = a2;
    v27 = a3;
    v21[3] = a4;
    v24 = 11370722;
    v25 = 0xA300000000000000;
    v22 = 0;
    v23 = 0xE000000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    v26 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v27 = v13;
    v24 = 11305186;
    v25 = 0xA300000000000000;
    v22 = 0;
    v23 = 0xE000000000000000;
    v14 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v16 = v15;

    v26 = 0;
    v27 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v26 = 0xD000000000000012;
    v27 = 0x80000000000C0850;
    v17._countAndFlagsBits = v14;
    v17._object = v16;
    String.append(_:)(v17);
    v18._countAndFlagsBits = 0xD000000000000013;
    v18._object = 0x80000000000C0870;
    String.append(_:)(v18);
    SpeakableString.init(print:speak:)();
    type metadata accessor for SiriKitDisambiguationItemComponent();
    SpeakableString.print.getter();
    dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

    SpeakableString.speak.getter();
    dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeak(_:)();

    SpeakableString.speak.getter();
    dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeakOnLockScreen(_:)();

    dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withAllowedOnLockScreen(_:)();

    v19 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

    (*(v9 + 8))(v12, v8);
  }

  else
  {
    type metadata accessor for SiriKitDisambiguationItemComponent();
    dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();
    dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withAllowedOnLockScreen(_:)();

    v19 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();
  }

  return v19;
}

void *specialized static DisambiguationListUtils.makeDisambiguationItemComponents(person:locale:handleDisambiguation:)(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v8 = [a1 displayName];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = HIBYTE(v11) & 0xF;
    if ((v11 & 0x2000000000000000) == 0)
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (v12)
    {
      type metadata accessor for SiriKitDisambiguationItemComponent();
      v13 = [a1 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

      dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v20 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      return &_swiftEmptyArrayStorage;
    }

    return &_swiftEmptyArrayStorage;
  }

  v3 = [a1 personHandle];
  if (!v3)
  {
    return &_swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = [v3 label];
  if (v5)
  {
    v6 = v5;
    [v4 type];
    specialized static DisambiguationListUtils.makeHandleLabelItemComponent(handleLabel:handleType:locale:)(v6);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v22 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  }

  v15 = [v4 value];
  if (v15)
  {
    v16 = v15;
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    specialized static DisambiguationListUtils.makeHandleValueItemComponent(type:value:allowedOnLockScreen:)([v4 type], v17, v19, 0);

    specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
    if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
    {
      v21 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

    return &_swiftEmptyArrayStorage;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t specialized static DisambiguationListUtils.makeDisambiguationItem(person:locale:handleDisambiguation:)(void *a1, uint64_t a2, char a3)
{
  specialized static DisambiguationListUtils.makeDisambiguationItemComponents(person:locale:handleDisambiguation:)(a1, a2, a3);
  v3 = objc_allocWithZone(SKIDirectInvocationPayload);
  v4 = String._bridgeToObjectiveC()();
  v5 = [v3 initWithIdentifier:v4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_B89E0;
  v26[0] = 0x6E65697069636552;
  v26[1] = 0xE900000000000074;
  v7 = v5;
  AnyHashable.init<A>(_:)();
  v8 = INPerson.encodeBase64.getter();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v8;
  *(inited + 80) = v9;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of Mirror.DisplayStyle?(inited + 32, &_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v7 setUserData:isa];

  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v11 = logObject;
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26[0] = v14;
    *v13 = 136315138;
    v15 = v7;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v19, v26);

    *(v13 + 4) = v20;
    _os_log_impl(&dword_0, v11, v12, "Make Disambiguation Item with DirectInvocation payload: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
  }

  v21 = type metadata accessor for SiriKitDisambiguationItem();
  v22 = *(v21 + 48);
  v23 = *(v21 + 52);
  swift_allocObject();
  v24 = SiriKitDisambiguationItem.init(components:directInvocation:allowLineWrapForDisplayText:)();

  return v24;
}

void *specialized static DisambiguationListUtils.makeDisambiguationItems(persons:locale:)(unint64_t a1, uint64_t a2)
{
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = &_swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    specialized static RecipientDisambiguationHelper.allHaveSameIdentifier(recipients:)(a1);
    v6 = v5;
    result = specialized static RecipientDisambiguationHelper.hasRecipientsWithSameDisplayName(recipients:)(a1);
    v7 = result;
    v8 = a1 & 0xC000000000000001;
    if (v6)
    {
      if (v8)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (!*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          __break(1u);
          return result;
        }

        v9 = *(a1 + 32);
      }

      v10 = v9;
      type metadata accessor for SiriKitDisambiguationItemComponent();
      v11 = [v10 displayName];
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

      v12 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
      v13 = swift_allocObject();
      *(v13 + 16) = xmmword_B8FB0;
      *(v13 + 32) = v12;
      v14 = type metadata accessor for SiriKitDisambiguationItem();
      v15 = *(v14 + 48);
      v16 = *(v14 + 52);
      swift_allocObject();
      SiriKitDisambiguationItem.init(components:utterance:allowLineWrapForDisplayText:)();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v21 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    for (j = 0; ; ++j)
    {
      if (v8)
      {
        v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_23;
        }

        v18 = *(a1 + 8 * j + 32);
      }

      v19 = v18;
      v20 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      specialized static DisambiguationListUtils.makeDisambiguationItem(person:locale:handleDisambiguation:)(v18, a2, v7 & 1);
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        v22 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

      if (v20 == i)
      {
        return &_swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  return result;
}

_OWORD *specialized static DisambiguationListUtils.makeDisambiguationItemComponents(item:locale:)(void *a1)
{
  specialized static TrafficIncidentUtils.convertNLIncidentTypeFromSupportedTrafficIncidentType(incidentType:)(a1);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
    v3 = swift_allocObject();
    v3[1] = xmmword_B8FB0;
    v4 = [a1 localizedDisplayString];
    if (v4)
    {
      v5 = v4;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
    }

    type metadata accessor for SiriKitDisambiguationItemComponent();
    dispatch thunk of static SiriKitDisambiguationItemComponent.makeBuilder(_:)();

    v6 = [a1 localizedDisplayString];
    if (v6)
    {
      v7 = v6;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    dispatch thunk of SiriKitDisambiguationItemComponent.Builder.withSpeak(_:)();

    v8 = dispatch thunk of SiriKitDisambiguationItemComponent.Builder.build()();

    *(v3 + 4) = v8;
    v9 = static os_log_type_t.info.getter();
    if (one-time initialization token for logObject != -1)
    {
      swift_once();
    }

    v10 = logObject;
    if (os_log_type_enabled(logObject, v9))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      v13 = Array.description.getter();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_0, v10, v9, "makeDisambiguationItemComponents made components %s", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v12);
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    if (one-time initialization token for logObject != -1)
    {
      swift_once();
    }

    v3 = &_swiftEmptyArrayStorage;
    os_log(_:dso:log:_:_:)();
  }

  return v3;
}

uint64_t specialized static DisambiguationListUtils.makeMachineUtterance(item:locale:)(void *a1)
{
  specialized static TrafficIncidentUtils.convertNLIncidentTypeFromSupportedTrafficIncidentType(incidentType:)(a1);
  if (v1)
  {
    v2 = type metadata accessor for MachineUtteranceBuilder();
    v3 = *(v2 + 48);
    v4 = *(v2 + 52);
    swift_allocObject();
    MachineUtteranceBuilder.init()();
    dispatch thunk of MachineUtteranceBuilder.addMapping(node:value:)();

    v5 = dispatch thunk of MachineUtteranceBuilder.build()();
    v7 = v6;

    if (one-time initialization token for logObject != -1)
    {
      swift_once();
    }

    v8 = logObject;
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v14 = v11;
      *v10 = 136315138;

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v14);

      *(v10 + 4) = v12;
      _os_log_impl(&dword_0, v8, v9, "makeMachineUtterance utterance is: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
    }
  }

  else
  {
    static os_log_type_t.error.getter();
    if (one-time initialization token for logObject != -1)
    {
      swift_once();
    }

    os_log(_:dso:log:_:_:)();
    return 0;
  }

  return v5;
}

uint64_t specialized static DisambiguationListUtils.makeDisambiguationItem(item:locale:)(void *a1)
{
  specialized static DisambiguationListUtils.makeDisambiguationItemComponents(item:locale:)(a1);
  specialized static DisambiguationListUtils.makeMachineUtterance(item:locale:)(a1);
  v2 = type metadata accessor for SiriKitDisambiguationItem();
  v3 = *(v2 + 48);
  v4 = *(v2 + 52);
  swift_allocObject();
  v5 = SiriKitDisambiguationItem.init(components:utterance:allowLineWrapForDisplayText:)();
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v6 = logObject;
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;

    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_0, v6, v7, "makeDisambiguationItem incident item is: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
  }

  return v5;
}

void *specialized static DisambiguationListUtils.makeDisambiguationItems(incidentTypes:locale:)(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v3 >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_23;
        }

        v4 = *(a1 + 32 + 8 * v3);
      }

      v5 = v4;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      if (one-time initialization token for siriSupportedIncidents != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v7 = static TrafficIncidentUtils.siriSupportedIncidents;

      v8 = [v5 type];
      if (*(v7 + 16) && (v9 = v8, v10 = *(v7 + 40), Hasher.init(_seed:)(), Hasher._combine(_:)(v9), v11 = Hasher._finalize()(), v12 = -1 << *(v7 + 32), v13 = v11 & ~v12, ((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
      {
        v14 = ~v12;
        while (*(*(v7 + 48) + 8 * v13) != v9)
        {
          v13 = (v13 + 1) & v14;
          if (((*(v7 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        specialized static DisambiguationListUtils.makeDisambiguationItem(item:locale:)(v5);
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
        {
          v15 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        if (v3 == i)
        {
          return &_swiftEmptyArrayStorage;
        }
      }

      else
      {
LABEL_4:

        if (v3 == i)
        {
          return &_swiftEmptyArrayStorage;
        }
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v17 = logObject;
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_0, v17, v18, "makeDisambiguationItems received empty list", v19, 2u);
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t specialized TypedDisambiguationItems.makeNLContextUpdate(locale:weightedPromptResponseTargets:isPommes:isUSO:_:)(uint64_t a1, uint64_t a2, int a3, int a4, unint64_t a5, char a6, void (*a7)(uint64_t), uint64_t a8)
{
  v114 = a8;
  v115 = a7;
  v121 = a5;
  LODWORD(v117) = a4;
  v109 = a3;
  v122 = a1;
  v10 = type metadata accessor for PommesContext.Source();
  v107 = *(v10 - 8);
  v11 = *(v107 + 64);
  __chkstk_darwin(v10);
  v106 = &v103 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v16 = &v103 - v15;
  v124 = type metadata accessor for DisplayHint();
  v120 = *(v124 - 8);
  v17 = *(v120 + 64);
  v18 = __chkstk_darwin(v124);
  v118 = &v103 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v125 = &v103 - v21;
  __chkstk_darwin(v20);
  v123 = &v103 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v113 = &v103 - v25;
  v108 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v26 = *(v108 - 8);
  v27 = *(v26 + 64);
  v28 = __chkstk_darwin(v108);
  v30 = &v103 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v32 = &v103 - v31;
  v33 = type metadata accessor for NLContextUpdate();
  v116 = *(v33 - 8);
  v34 = *(v116 + 64);
  v35 = __chkstk_darwin(v33);
  v110 = &v103 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v35);
  v112 = &v103 - v37;
  static os_log_type_t.info.getter();
  if (one-time initialization token for logObject != -1)
  {
    swift_once();
  }

  v38 = logObject;
  os_log(_:dso:log:_:_:)();
  if (a6)
  {
    v39 = specialized static GeoNLContextUtils.makeDisplayHints(items:locale:)(v121);
    v40 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v38, v40))
    {
      v41 = v38;
      v42 = swift_slowAlloc();
      v43 = v33;
      v44 = swift_slowAlloc();
      v126[0] = v44;
      *v42 = 136315138;
      v45 = Array.description.getter();
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, v126);

      *(v42 + 4) = v47;
      _os_log_impl(&dword_0, v41, v40, "TypedDisambiguationItems IncidentType displayHints are: %s", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v44);
      v33 = v43;
    }

    v48 = v112;
    static GeoNLContextUtils.makeNLContext(weightedPromptResponseTargets:displayHints:)(a2, v39);

    v49 = v116;
    v50 = v113;
    (*(v116 + 16))(v113, v48, v33);
    (*(v49 + 56))(v50, 0, 1, v33);
    v115(v50);
    outlined destroy of Mirror.DisplayStyle?(v50, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    return (*(v49 + 8))(v48, v33);
  }

  else
  {
    v103 = v16;
    v104 = v10;
    v119 = v38;
    v105 = a2;
    v111 = v33;
    if (v117)
    {
      v52 = v112;
      NLContextUpdate.init()();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
      v53 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
      v54 = *(v53 + 72);
      v55 = (*(v53 + 80) + 32) & ~*(v53 + 80);
      *(swift_allocObject() + 16) = xmmword_B89E0;
      v56 = type metadata accessor for UsoTaskBuilder_noVerb_common_Person();
      v57 = *(v56 + 48);
      v58 = *(v56 + 52);
      swift_allocObject();
      v59 = UsoTaskBuilder_noVerb_common_Person.init()();
      v60 = type metadata accessor for UsoEntityBuilder_common_Person();
      v61 = *(v60 + 48);
      v62 = *(v60 + 52);
      swift_allocObject();
      UsoEntityBuilder_common_Person.init()();
      dispatch thunk of Uso_VerbTemplateBuilder_NoVerb.setEntity(value:)();
      static Siri_Nlu_External_SystemPrompted.from(_:)(v59, v32);
      Siri_Nlu_External_SystemDialogAct.init()();
      v63 = v108;
      (*(v26 + 16))(v30, v32, v108);
      Siri_Nlu_External_SystemDialogAct.prompted.setter();

      (*(v26 + 8))(v32, v63);
      NLContextUpdate.nluSystemDialogActs.setter();
      v64 = v116;
      v65 = v113;
      v66 = v111;
      (*(v116 + 16))(v113, v52, v111);
      (*(v64 + 56))(v65, 0, 1, v66);
      v115(v65);
      outlined destroy of Mirror.DisplayStyle?(v65, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
      (*(v64 + 8))(v52, v66);
    }

    v67 = v121;
    specialized static RecipientDisambiguationHelper.allHaveSameIdentifier(recipients:)(v121);
    v108 = specialized static GeoNLContextUtils.makeDisplayHints(persons:locale:handleDisambiguation:)(v67, v122, v68 & 1);
    v70 = *(v108 + 16);
    v71 = v119;
    v73 = v124;
    v72 = v125;
    if (v70)
    {
      v74 = v120 + 16;
      v75 = *(v120 + 16);
      v76 = v108 + ((*(v120 + 80) + 32) & ~*(v120 + 80));
      v77 = *(v120 + 72);
      v120 += 32;
      v121 = v77;
      v78 = (v74 - 8);
      *&v69 = 136315138;
      v117 = v69;
      v122 = v75;
      do
      {
        v86 = v123;
        v75(v123, v76, v73);
        v87 = static os_log_type_t.info.getter();
        (*v120)(v72, v86, v73);
        if (os_log_type_enabled(v71, v87))
        {
          v79 = v74;
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v126[0] = v81;
          *v80 = v117;
          v75(v118, v125, v73);
          v82 = String.init<A>(describing:)();
          v84 = v83;
          (*v78)(v125, v124);
          v85 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v84, v126);
          v71 = v119;

          *(v80 + 4) = v85;
          v73 = v124;
          _os_log_impl(&dword_0, v71, v87, "TypedDisambiguationItems Contact displayHints are: %s", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v81);

          v74 = v79;
          v72 = v125;
        }

        else
        {
          (*v78)(v72, v73);
        }

        v75 = v122;
        v76 += v121;
        --v70;
      }

      while (v70);
    }

    v88 = v110;
    static GeoNLContextUtils.makeNLContext(weightedPromptResponseTargets:displayHints:)(v105, v108);

    v89 = v115;
    v90 = v111;
    if (v109)
    {
      v91 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v71, v91))
      {
        v92 = swift_slowAlloc();
        *v92 = 0;
        _os_log_impl(&dword_0, v71, v91, "makeContextForConfirmIntent adding pommesContext", v92, 2u);
      }

      (*(v107 + 104))(v106, enum case for PommesContext.Source.pluginDefined(_:), v104);
      v93 = v103;
      PommesContext.init(source:domain:listenAfterSpeaking:)();
      v94 = type metadata accessor for PommesContext();
      (*(*(v94 - 8) + 56))(v93, 0, 1, v94);
      NLContextUpdate.pommesContext.setter();
    }

    v95 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v71, v95))
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v126[0] = v97;
      *v96 = 136315138;
      swift_beginAccess();
      (*(v116 + 16))(v112, v88, v90);
      v98 = String.init<A>(describing:)();
      v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, v126);
      v90 = v111;

      *(v96 + 4) = v100;
      _os_log_impl(&dword_0, v71, v95, "nlContext %s", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v97);
    }

    swift_beginAccess();
    v101 = v116;
    v102 = v113;
    (*(v116 + 16))(v113, v88, v90);
    (*(v101 + 56))(v102, 0, 1, v90);
    v89(v102);
    outlined destroy of Mirror.DisplayStyle?(v102, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
    return (*(v101 + 8))(v88, v90);
  }
}

uint64_t specialized static RecipientDisambiguationHelper.hasAllSameRecipientsWithHandles(recipients:)(unint64_t a1)
{
  specialized static RecipientDisambiguationHelper.allHaveSameIdentifier(recipients:)(a1);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
        {
          goto LABEL_17;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if (INPerson.hasHandleLabel.getter())
      {
      }

      else
      {
        v8 = INPerson.hasHandleValue.getter();

        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      if (v7 == i)
      {
        return 1;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return 1;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TypedDisambiguationItems(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 9))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TypedDisambiguationItems(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t outlined init with take of PersonNameComponents?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation20PersonNameComponentsVSgMd, &_s10Foundation20PersonNameComponentsVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type INPerson and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type INPerson and conformance NSObject;
  if (!lazy protocol witness table cache variable for type INPerson and conformance NSObject)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INPerson, INPerson_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type INPerson and conformance NSObject);
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance DeviceType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized DeviceType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t static AssistantProperties.isNavigating()()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  [static AssistantProperties.instance currentNavigationState];
  return AFNavigationStateIsNavigating();
}

uint64_t *AssistantProperties.instance.unsafeMutableAddressor()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  return &static AssistantProperties.instance;
}

id one-time initialization function for instance()
{
  result = [objc_opt_self() sharedPreferences];
  static AssistantProperties.instance = result;
  return result;
}

id static AssistantProperties.instance.getter()
{
  if (one-time initialization token for instance != -1)
  {
    swift_once();
  }

  v1 = static AssistantProperties.instance;

  return v1;
}

unint64_t specialized DeviceType.init(rawValue:)(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DeviceType and conformance DeviceType()
{
  result = lazy protocol witness table cache variable for type DeviceType and conformance DeviceType;
  if (!lazy protocol witness table cache variable for type DeviceType and conformance DeviceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceType and conformance DeviceType);
  }

  return result;
}

uint64_t one-time initialization function for locationServicesURL()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  __swift_allocate_value_buffer(v0, static LocationServicesViews.locationServicesURL);
  __swift_project_value_buffer(v0, static LocationServicesViews.locationServicesURL);
  return URL.init(string:)();
}

uint64_t DeepLinkParams.init(catModel:deepLinkURL:buttonLabel:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for CATService();
  v10 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v10 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log();
  *(v10 + 32) = OS_os_log.init(subsystem:category:)();
  *(v10 + 16) = 0;
  *a5 = v10;
  outlined init with take of CATType(a1, (a5 + 1));
  v12 = type metadata accessor for DeepLinkParams();
  v13 = *(v12 + 24);
  v14 = type metadata accessor for URL();
  result = (*(*(v14 - 8) + 32))(a5 + v13, a2, v14);
  v16 = (a5 + *(v12 + 28));
  *v16 = a3;
  v16[1] = a4;
  return result;
}

uint64_t static LocationServicesViews.needPreciseLocation.getter@<X0>(char a1@<W0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v21 - v7;
  v23 = &type metadata for LocationServices;
  v24 = &protocol witness table for LocationServices;
  LOBYTE(v22) = a1;
  if (one-time initialization token for locationServicesURL != -1)
  {
    v20 = v6;
    swift_once();
    v6 = v20;
  }

  v9 = __swift_project_value_buffer(v6, static LocationServicesViews.locationServicesURL);
  outlined init with copy of URL?(v9, v8);
  v10 = type metadata accessor for URL();
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v8, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = specialized static LocationServicesViews.locationServiceLabel.getter();
    v15 = v14;
    type metadata accessor for CATService();
    v16 = swift_allocObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    *(v16 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
    type metadata accessor for OS_os_log();
    *(v16 + 32) = OS_os_log.init(subsystem:category:)();
    *(v16 + 16) = 0;
    *a2 = v16;
    outlined init with take of CATType(&v22, (a2 + 1));
    v18 = type metadata accessor for DeepLinkParams();
    result = (*(v11 + 32))(a2 + *(v18 + 24), v8, v10);
    v19 = (a2 + *(v18 + 28));
    *v19 = v13;
    v19[1] = v15;
  }

  return result;
}

void *static LocationServicesViews.makeDeepLink(status:device:)(char a1, void *a2)
{
  v4 = type metadata accessor for DeepLinkParams();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  static LocationServicesViews.needPreciseLocation.getter(a1 == 0, v7);
  v8 = DeepLinkParams.makeDeepLink(device:)(a2);
  outlined destroy of DeepLinkParams(v7);
  return v8;
}

void *DeepLinkParams.makeDeepLink(device:)(void *a1)
{
  v2 = v1;
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  if ((dispatch thunk of DeviceState.isPhone.getter() & 1) == 0)
  {
    v5 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    if ((dispatch thunk of DeviceState.isPad.getter() & 1) == 0)
    {
      return &_swiftEmptyArrayStorage;
    }
  }

  v6 = [objc_allocWithZone(SAUIButton) init];
  v7 = type metadata accessor for DeepLinkParams();
  v8 = (v2 + *(v7 + 28));
  v9 = *v8;
  v10 = v8[1];
  v11 = String._bridgeToObjectiveC()();
  [v6 setText:v11];

  v12 = [objc_allocWithZone(SAUIOpenLink) init];
  URL._bridgeToObjectiveC()(*(v7 + 24));
  v14 = v13;
  [v12 setRef:v13];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_B8FB0;
  *(v15 + 32) = v12;
  v16 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SAClientBoundCommand_pMd, &_sSo20SAClientBoundCommand_pMR);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v6 setCommands:isa];

  v18 = v6;
  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8)) >> 1)
  {
    v20 = *(&dword_10 + (&_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8));
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

  return &_swiftEmptyArrayStorage;
}

uint64_t DeepLinkParams.catModel.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 8));

  return outlined init with take of CATType(a1, v1 + 8);
}

uint64_t DeepLinkParams.deepLinkURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for DeepLinkParams() + 24);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t DeepLinkParams.deepLinkURL.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DeepLinkParams() + 24);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t DeepLinkParams.buttonLabel.getter()
{
  v1 = (v0 + *(type metadata accessor for DeepLinkParams() + 28));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t DeepLinkParams.buttonLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for DeepLinkParams() + 28));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t type metadata accessor for DeepLinkParams()
{
  result = type metadata singleton initialization cache for DeepLinkParams;
  if (!type metadata singleton initialization cache for DeepLinkParams)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined destroy of DeepLinkParams(uint64_t a1)
{
  v2 = type metadata accessor for DeepLinkParams();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type LocationStatus and conformance LocationStatus()
{
  result = lazy protocol witness table cache variable for type LocationStatus and conformance LocationStatus;
  if (!lazy protocol witness table cache variable for type LocationStatus and conformance LocationStatus)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LocationStatus and conformance LocationStatus);
  }

  return result;
}

uint64_t sub_215C0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for URL();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_21680(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for URL();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

unint64_t type metadata completion function for DeepLinkParams()
{
  result = type metadata accessor for CATService();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for GeoCATModel();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for URL();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t type metadata accessor for GeoCATModel()
{
  result = lazy cache variable for type metadata for GeoCATModel;
  if (!lazy cache variable for type metadata for GeoCATModel)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for GeoCATModel);
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t specialized static LocationServicesViews.locationServiceLabel.getter()
{
  type metadata accessor for CATService();
  inited = swift_initStackObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(inited + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log();
  *(inited + 32) = OS_os_log.init(subsystem:category:)();
  *(inited + 16) = 0;
  v2 = specialized GeoCATModel.getID()(1, 0, 2);
  v4 = v3;
  v5 = specialized GeoCATModel.getParams()(1, 0, 2);
  v6 = CATService.getLabel(catId:params:)(v2, v4, v5);
  v8 = v7;
  v10 = v9;

  if (v10)
  {
    outlined consume of Result<String, Error>(v6, v8, 1);

    return 0;
  }

  else
  {
  }

  return v6;
}

uint64_t outlined consume of Result<String, Error>(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

unint64_t AnswerETAFlow.flowState.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  outlined copy of AnswerETAFlow.State(v1);
  return v1;
}

unint64_t outlined copy of AnswerETAFlow.State(unint64_t result)
{
  if (result >= 4)
  {
    return swift_errorRetain();
  }

  return result;
}

unint64_t AnswerETAFlow.flowState.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
  return outlined consume of AnswerETAFlow.State(v3);
}

unint64_t outlined consume of AnswerETAFlow.State(unint64_t result)
{
  if (result >= 4)
  {
  }

  return result;
}

uint64_t AnswerETAFlow.flowHelper.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 40));
  outlined init with take of CATType(a1, v1 + 40);
  return swift_endAccess();
}

uint64_t AnswerETAFlow.directInvocation.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 80) = a1;
  return result;
}

uint64_t AnswerETAFlow.checkNavigation.getter()
{
  swift_beginAccess();
  result = *(v0 + 88);
  v2 = *(v0 + 96);
  return result;
}

uint64_t AnswerETAFlow.checkNavigation.setter(uint64_t a1, uint64_t a2)
{
  result = swift_beginAccess();
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return result;
}

uint64_t AnswerETAFlow.isPOMMES.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 104) = a1;
  return result;
}

uint64_t AnswerETAFlow.duration.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t AnswerETAFlow.duration.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t AnswerETAFlow.__allocating_init(with:checkNavigation:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = specialized AnswerETAFlow.init(with:checkNavigation:)(v12, a2, a3, v6, v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v14;
}

uint64_t AnswerETAFlow.init(with:checkNavigation:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = a1[3];
  v8 = a1[4];
  v9 = __swift_mutable_project_boxed_opaque_existential_1(a1, v7);
  v10 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v12);
  v14 = specialized AnswerETAFlow.init(with:checkNavigation:)(v12, a2, a3, v3, v7, v8);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v14;
}

uint64_t AnswerETAFlow.__allocating_init()()
{
  v2[3] = &type metadata for FlowHelperImpl;
  v2[4] = &protocol witness table for FlowHelperImpl;
  v2[0] = swift_allocObject();
  FlowHelperImpl.init()((v2[0] + 16));
  return (*(v0 + 288))(v2, &type metadata for AssistantProperties, &protocol witness table for AssistantProperties);
}

uint64_t AnswerETAFlow.executeState()(uint64_t a1)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = v1;
  return _swift_task_switch(AnswerETAFlow.executeState(), 0, 0);
}

uint64_t AnswerETAFlow.executeState()()
{
  v39 = v0;
  v1 = (*(**(v0 + 32) + 144))();
  *(v0 + 40) = v1;
  v2 = *(v0 + 32);
  if (v1 <= 1)
  {
    if (v1)
    {
      if (v1 == 1)
      {
        v3 = *(*v2 + 344);
        v34 = (v3 + *v3);
        v4 = v3[1];
        v5 = swift_task_alloc();
        *(v0 + 56) = v5;
        *v5 = v0;
        v5[1] = AnswerETAFlow.executeState();
        v6 = *(v0 + 32);

        return v34();
      }

      goto LABEL_12;
    }

    v24 = *(*v2 + 312);
    v36 = (v24 + *v24);
    v25 = v24[1];
    v26 = swift_task_alloc();
    *(v0 + 48) = v26;
    *v26 = v0;
    v26[1] = AnswerETAFlow.executeState();
    v27 = *(v0 + 24);
    v28 = *(v0 + 32);
    v29 = v36;

    return v29(v27);
  }

  if (v1 == 2)
  {
    v30 = *(*v2 + 336);
    v37 = (v30 + *v30);
    v31 = v30[1];
    v32 = swift_task_alloc();
    *(v0 + 72) = v32;
    *v32 = v0;
    v32[1] = AnswerETAFlow.executeState();
    v27 = *(v0 + 24);
    v33 = *(v0 + 32);
    v29 = v37;

    return v29(v27);
  }

  if (v1 != 3)
  {
LABEL_12:
    v11 = v1;
    v12 = static os_log_type_t.default.getter();
    v13 = v2[2];
    if (os_log_type_enabled(v13, v12))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v38 = v15;
      *v14 = 136315138;
      *(v0 + 16) = v11;
      swift_errorRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v16 = String.init<A>(describing:)();
      v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v38);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_0, v13, v12, "AnswerETAFlow execute request unsupported with err: %s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v15);
    }

    v19 = *(**(v0 + 32) + 328);
    v35 = (v19 + *v19);
    v20 = v19[1];
    v21 = swift_task_alloc();
    *(v0 + 80) = v21;
    *v21 = v0;
    v21[1] = AnswerETAFlow.executeState();
    v22 = *(v0 + 24);
    v23 = *(v0 + 32);

    return v35(v22);
  }

  v8 = *(v0 + 24);
  static os_log_type_t.default.getter();
  v9 = v2[2];
  os_log(_:dso:log:_:_:)();
  static ExecuteResponse.complete()();
  v10 = *(v0 + 8);

  return v10();
}

{
  v1 = *(*v0 + 48);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

{
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 32);
  v4 = *v0;

  v10 = (*v3 + 304);
  v11 = (*v10 + **v10);
  v5 = (*v10)[1];
  v6 = swift_task_alloc();
  v1[8] = v6;
  *v6 = v4;
  v6[1] = AnswerETAFlow.executeState();
  v7 = v1[4];
  v8 = v1[3];

  return v11(v8);
}

{
  v1 = *(*v0 + 64);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

{
  v1 = *(*v0 + 72);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return _swift_task_switch(AnswerETAFlow.executeState(), 0, 0);
}

{
  outlined consume of AnswerETAFlow.State(*(v0 + 40));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t AnswerETAFlow.preChecks()(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for TemplatingResult();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v2[27] = *(v4 + 64);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(AnswerETAFlow.preChecks(), 0, 0);
}

uint64_t AnswerETAFlow.preChecks()()
{
  (*(**(v0 + 192) + 216))();
  if ((*(v1 + 8))())
  {
    v2 = *(v0 + 184);
    (*(**(v0 + 192) + 152))(1);
    static ExecuteResponse.ongoing(requireInput:)();
    v4 = *(v0 + 224);
    v3 = *(v0 + 232);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 192);
    v8 = v7[3];
    *(v0 + 40) = &type metadata for NavigationControl;
    *(v0 + 48) = &protocol witness table for NavigationControl;
    *(v0 + 16) = 0;
    v9 = *(*v7 + 168);
    v10 = (*v7 + 168) & 0xFFFFFFFFFFFFLL | 0xA019000000000000;
    *(v0 + 240) = v9;
    *(v0 + 248) = v10;
    v9();
    v11 = *(v0 + 80);
    v12 = *(v0 + 88);
    __swift_project_boxed_opaque_existential_1((v0 + 56), v11);
    v13 = (*(v12 + 80))(v11, v12);
    *(v0 + 256) = v13;
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
    v14 = *(*v8 + 112);
    v18 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    *(v0 + 264) = v16;
    *v16 = v0;
    v16[1] = AnswerETAFlow.preChecks();
    v17 = *(v0 + 232);

    return v18(v17, v0 + 16, v13);
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v5 = AnswerETAFlow.preChecks();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v5 = AnswerETAFlow.preChecks();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  (*(v0 + 240))();
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v9);
  (*(v10 + 104))(v21, v9, v10);
  (*(v4 + 16))(v3, v2, v7);
  outlined init with copy of DeviceState(v0 + 96, v0 + 136);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, v3, v7);
  outlined init with take of CATType((v0 + 136), v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = type metadata accessor for SimpleOutputFlowAsync();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  *(v0 + 176) = v16;
  static ExecuteResponse.complete<A>(next:)();

  (*(v4 + 8))(v2, v7);
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);

  v19 = *(v0 + 8);

  return v19();
}

{
  v1 = v0[34];
  v3 = v0[23];
  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  static os_log_type_t.error.getter();
  v4 = v2[2];
  os_log(_:dso:log:_:_:)();
  v5 = *(*v2 + 152);
  swift_errorRetain();
  v5(v1);
  static ExecuteResponse.ongoing(requireInput:)();

  v7 = v0[28];
  v6 = v0[29];

  v8 = v0[1];

  return v8();
}

uint64_t AnswerETAFlow.errorDialog()(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for TemplatingResult();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v2[27] = *(v4 + 64);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(AnswerETAFlow.errorDialog(), 0, 0);
}

uint64_t AnswerETAFlow.errorDialog()()
{
  v1 = v0[24];
  v2 = v1[3];
  v0[5] = &type metadata for NavigationControl;
  v0[6] = &protocol witness table for NavigationControl;
  v0[2] = 1;
  v3 = *(*v1 + 168);
  v4 = (*v1 + 168) & 0xFFFFFFFFFFFFLL | 0xA019000000000000;
  v0[30] = v3;
  v0[31] = v4;
  v3();
  v5 = v0[10];
  v6 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v5);
  v7 = (*(v6 + 80))(v5, v6);
  v0[32] = v7;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v8 = *(*v2 + 112);
  v13 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  v0[33] = v10;
  *v10 = v0;
  v10[1] = AnswerETAFlow.errorDialog();
  v11 = v0[29];

  return (v13)(v11, v0 + 2, v7);
}

{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v5 = AnswerETAFlow.errorDialog();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v5 = AnswerETAFlow.errorDialog();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  (*(v0 + 240))();
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v9);
  (*(v10 + 104))(v21, v9, v10);
  (*(v4 + 16))(v3, v2, v7);
  outlined init with copy of DeviceState(v0 + 96, v0 + 136);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, v3, v7);
  outlined init with take of CATType((v0 + 136), v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = type metadata accessor for SimpleOutputFlowAsync();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  *(v0 + 176) = v16;
  static ExecuteResponse.complete<A>(next:)();

  (*(v4 + 8))(v2, v7);
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);

  v19 = *(v0 + 8);

  return v19();
}

{
  v1 = v0[34];
  v3 = v0[23];
  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  static os_log_type_t.error.getter();
  v4 = v2[2];
  os_log(_:dso:log:_:_:)();
  v5 = *(*v2 + 152);
  swift_errorRetain();
  v5(v1);
  static ExecuteResponse.complete()();

  v7 = v0[28];
  v6 = v0[29];

  v8 = v0[1];

  return v8();
}

uint64_t AnswerETAFlow.handleDialog()(uint64_t a1)
{
  v2[23] = a1;
  v2[24] = v1;
  v3 = type metadata accessor for TemplatingResult();
  v2[25] = v3;
  v4 = *(v3 - 8);
  v2[26] = v4;
  v2[27] = *(v4 + 64);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return _swift_task_switch(AnswerETAFlow.handleDialog(), 0, 0);
}

uint64_t AnswerETAFlow.handleDialog()()
{
  v1 = v0[24];
  v2 = v1[3];
  (*(*v1 + 264))();
  v3 = dispatch thunk of DialogDuration.Builder.build()();

  v0[5] = &type metadata for NavigationControl;
  v0[6] = &protocol witness table for NavigationControl;
  v0[2] = v3;
  v5 = *(*v1 + 168);
  v6 = (*v1 + 168) & 0xFFFFFFFFFFFFLL | 0xA019000000000000;
  v0[30] = v5;
  v0[31] = v6;
  v5(v4);
  v7 = v0[10];
  v8 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v7);
  v9 = (*(v8 + 80))(v7, v8);
  v0[32] = v9;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v10 = *(*v2 + 112);
  v15 = (v10 + *v10);
  v11 = v10[1];
  v12 = swift_task_alloc();
  v0[33] = v12;
  *v12 = v0;
  v12[1] = AnswerETAFlow.handleDialog();
  v13 = v0[29];

  return (v15)(v13, v0 + 2, v9);
}

{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v4 = *(*v1 + 256);
  v7 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v5 = AnswerETAFlow.handleDialog();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 16));
    v5 = AnswerETAFlow.handleDialog();
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v22 = v0;
  v1 = *(v0 + 248);
  v3 = *(v0 + 224);
  v2 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);
  v8 = *(v0 + 184);
  (*(v0 + 240))();
  v9 = *(v0 + 120);
  v10 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1((v0 + 96), v9);
  (*(v10 + 104))(v21, v9, v10);
  (*(v4 + 16))(v3, v2, v7);
  outlined init with copy of DeviceState(v0 + 96, v0 + 136);
  v11 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v12 = swift_allocObject();
  (*(v4 + 32))(v12 + v11, v3, v7);
  outlined init with take of CATType((v0 + 136), v12 + ((v5 + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = type metadata accessor for SimpleOutputFlowAsync();
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  swift_allocObject();
  v16 = SimpleOutputFlowAsync.init(outputPublisher:outputGenerator:)();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  *(v0 + 176) = v16;
  static ExecuteResponse.complete<A>(next:)();

  (*(v4 + 8))(v2, v7);
  v18 = *(v0 + 224);
  v17 = *(v0 + 232);

  v19 = *(v0 + 8);

  return v19();
}

{
  v1 = v0[34];
  v3 = v0[23];
  v2 = v0[24];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  static os_log_type_t.error.getter();
  v4 = v2[2];
  os_log(_:dso:log:_:_:)();
  v5 = *(*v2 + 152);
  swift_errorRetain();
  v5(v1);
  static ExecuteResponse.ongoing(requireInput:)();

  v7 = v0[28];
  v6 = v0[29];

  v8 = v0[1];

  return v8();
}

uint64_t AnswerETAFlow.fetchETA()()
{
  *(v1 + 104) = v0;
  return _swift_task_switch(AnswerETAFlow.fetchETA(), 0, 0);
}

{
  v1 = v0[13];
  v2 = [objc_allocWithZone(SALocalSearchGetNavigationStatus) init];
  v0[14] = v2;
  static os_log_type_t.debug.getter();
  v0[15] = v1[2];
  v3 = os_log(_:dso:log:_:_:)();
  (*(*v1 + 168))(v3);
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  (*(v5 + 8))(v4, v5);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v6 = v0[10];
  v7 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v6);
  v8 = async function pointer to AceServiceInvokerAsync.submit<A>(_:)[1];
  v9 = swift_task_alloc();
  v0[16] = v9;
  v10 = type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for SABaseCommand, SABaseCommand_ptr);
  *v9 = v0;
  v9[1] = AnswerETAFlow.fetchETA();

  return AceServiceInvokerAsync.submit<A>(_:)(v2, v6, v10, v7);
}

{
  v16 = v0;
  v1 = *(v0 + 120);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 56));
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 144);
    v4 = *(v0 + 120);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    *(v0 + 96) = v3;
    swift_errorRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_0, v4, v2, "Ace Command submission failed with error: %s ", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v10 = *(v0 + 144);
  v11 = *(v0 + 112);
  v12 = *(**(v0 + 104) + 152);
  swift_errorRetain();
  v12(v10);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t AnswerETAFlow.fetchETA()(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 128);
  v7 = *v2;
  *(v3 + 136) = a1;
  *(v3 + 144) = v1;

  if (v1)
  {
    v5 = AnswerETAFlow.fetchETA();
  }

  else
  {
    v5 = AnswerETAFlow.fetchETA();
  }

  return _swift_task_switch(v5, 0, 0);
}

void AnswerETAFlow.fetchETA()()
{
  v45 = v0;
  v1 = v0[15];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = v0[17];
    v4 = v0[15];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v44 = v6;
    *v5 = 136315138;
    v7 = v3;
    v8 = [v7 description];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v44);

    *(v5 + 4) = v12;
    _os_log_impl(&dword_0, v4, v2, "fetchETA result: %s ", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
  }

  v13 = v0[17];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  v15 = v0[17];
  if (v14)
  {
    v16 = v14;
    v17 = v15;
    v18 = [v16 overallEta];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 timeEta];

      if (v20)
      {
        v21 = [v20 value];

        if (v21)
        {
          v22 = v0[15];
          v23 = static os_log_type_t.default.getter();
          v24 = os_log_type_enabled(v22, v23);
          if (v24)
          {
            v25 = v0[15];
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v44 = v27;
            *v26 = 136315138;
            v28 = v21;
            v29 = [v28 description];
            v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v32 = v31;

            v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v32, &v44);

            *(v26 + 4) = v33;
            _os_log_impl(&dword_0, v25, v23, "duration result: %s minutes", v26, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v27);
          }

          v15 = v0[17];
          v34 = v0[13];
          v35 = v0[14];
          (*(*v34 + 264))(v24);
          [v21 doubleValue];
          dispatch thunk of DialogDuration.Builder.withSecs(_:)();

          (*(*v34 + 152))(2);

          v36 = v15;
        }

        else
        {
          v15 = v0[17];
          v40 = v0[13];
          v36 = v0[14];
          lazy protocol witness table accessor for type Errors and conformance Errors();
          v41 = swift_allocError();
          *v42 = 0xD00000000000001CLL;
          *(v42 + 8) = 0x80000000000C0A90;
          *(v42 + 16) = 2;
          (*(*v40 + 152))(v41);
        }

        goto LABEL_12;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v37 = v0[13];
  v36 = v0[14];
  lazy protocol witness table accessor for type Errors and conformance Errors();
  v38 = swift_allocError();
  *v39 = xmmword_B9350;
  *(v39 + 16) = 3;
  (*(*v37 + 152))(v38);
LABEL_12:

  v43 = v0[1];

  v43();
}

uint64_t AnswerETAFlow.deinit()
{
  v1 = *(v0 + 24);

  outlined consume of AnswerETAFlow.State(*(v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  v2 = *(v0 + 112);

  return v0;
}

uint64_t AnswerETAFlow.__deallocating_deinit()
{
  v1 = *(v0 + 24);

  outlined consume of AnswerETAFlow.State(*(v0 + 32));
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 40));
  v2 = *(v0 + 112);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FSMFlow.flowState.getter in conformance AnswerETAFlow@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 144))();
  *a1 = result;
  return result;
}

uint64_t protocol witness for FSMFlow.executeState() in conformance AnswerETAFlow(uint64_t a1)
{
  v4 = *(**v1 + 304);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.on(input:) in conformance AnswerETAFlow(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance AnswerETAFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = async function pointer to Flow.onAsync(input:)[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for IntentExtensionCommunicatingAsync.makeIntentExecutionBehavior(app:intent:) in conformance TrafficIncidentHandleIntentStrategy;

  return Flow.onAsync(input:)(a1, a2, a3);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance AnswerETAFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance AnswerETAFlow(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance AnswerETAFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AnswerETAFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnswerETAFlow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

uint64_t specialized AnswerETAFlow.init(with:checkNavigation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v19[3] = a5;
  v19[4] = a6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v19);
  (*(*(a5 - 8) + 32))(boxed_opaque_existential_0, a1, a5);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(a4 + 16) = OS_os_log.init(subsystem:category:)();
  type metadata accessor for CATService();
  v12 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v12 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  *(v12 + 32) = OS_os_log.init(subsystem:category:)();
  *(v12 + 16) = 0;
  *(a4 + 80) = 0;
  *(a4 + 104) = 0;
  *(a4 + 24) = v12;
  *(a4 + 32) = 0;
  *(a4 + 88) = a2;
  *(a4 + 96) = a3;
  outlined init with copy of DeviceState(v19, a4 + 40);
  v14 = type metadata accessor for DialogDuration.Builder();
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(a4 + 112) = DialogDuration.Builder.init()();
  static os_log_type_t.default.getter();
  v17 = *(a4 + 16);
  os_log(_:dso:log:_:_:)();
  __swift_destroy_boxed_opaque_existential_0Tm(v19);
  return a4;
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

uint64_t sub_25470()
{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
  v1 = v0[12];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 13);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 18);
  v2 = v0[23];

  return _swift_deallocObject(v0, 192, 7);
}

uint64_t partial apply for closure #1 in TemplatingResult.getDialogAsSimpleOutputFlow(_:)(uint64_t a1)
{
  v4 = *(type metadata accessor for TemplatingResult() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return closure #1 in TemplatingResult.getDialogAsSimpleOutputFlow(_:)(a1, v1 + v5, v1 + v6);
}

uint64_t objectdestroy_9Tm()
{
  v1 = type metadata accessor for TemplatingResult();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + v5));

  return _swift_deallocObject(v0, v5 + 40, v3 | 7);
}

uint64_t closure #1 in TemplatingResult.getDialogAsSimpleOutputFlow(_:)partial apply(uint64_t a1)
{
  v4 = *(type metadata accessor for TemplatingResult() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return closure #1 in TemplatingResult.getDialogAsSimpleOutputFlow(_:)(a1, v1 + v5, v1 + v6);
}

uint64_t instantiation function for generic protocol witness table for AnswerETAFlow(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type AnswerETAFlow and conformance AnswerETAFlow(&lazy protocol witness table cache variable for type AnswerETAFlow and conformance AnswerETAFlow);
  result = lazy protocol witness table accessor for type AnswerETAFlow and conformance AnswerETAFlow(&lazy protocol witness table cache variable for type AnswerETAFlow and conformance AnswerETAFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type AnswerETAFlow and conformance AnswerETAFlow(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AnswerETAFlow();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2584C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_25898(unint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 152);
  outlined copy of AnswerETAFlow.State(*a1);
  return v3(v2);
}

uint64_t sub_25994@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25A2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_25AC8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_25B60@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 264))();
  *a2 = result;
  return result;
}

uint64_t sub_25BB4(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(**a2 + 272);

  return v3(v4);
}

uint64_t get_enum_tag_for_layout_string_21GeoFlowDelegatePlugin13AnswerETAFlowC5StateO(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for AnswerETAFlow.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AnswerETAFlow.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t key path setter for SaveParkingLocationBaseFlow.flowState : SaveParkingLocationBaseFlow(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of SaveParkingLocationBaseFlow.State(a1, v7);
  return (*(**a2 + 120))(v7);
}

uint64_t SaveParkingLocationBaseFlow.flowState.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowState;
  swift_beginAccess();
  return outlined init with copy of SaveParkingLocationBaseFlow.State(v1 + v3, a1);
}

uint64_t outlined init with copy of SaveParkingLocationBaseFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SaveParkingLocationBaseFlow.flowState.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowState;
  swift_beginAccess();
  outlined assign with take of SaveParkingLocationBaseFlow.State(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t outlined assign with take of SaveParkingLocationBaseFlow.State(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SaveParkingLocationBaseFlow.flowHelper.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowHelper;
  swift_beginAccess();
  return outlined init with copy of DeviceState(v1 + v3, a1);
}

uint64_t SaveParkingLocationBaseFlow.flowHelper.setter(__int128 *a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowHelper;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0Tm((v1 + v3));
  outlined init with take of CATType(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t SaveParkingLocationBaseFlow.isPOMMES.getter()
{
  v1 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_isPOMMES;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t SaveParkingLocationBaseFlow.isPOMMES.setter(char a1)
{
  v3 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_isPOMMES;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t SaveParkingLocationBaseFlow.__allocating_init(flowHelper:intent:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = specialized SaveParkingLocationBaseFlow.__allocating_init(flowHelper:intent:)(v7, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v8;
}

uint64_t SaveParkingLocationBaseFlow.init(flowHelper:intent:)(uint64_t *a1, uint64_t a2)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a1, v5);
  v8 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  v12 = specialized SaveParkingLocationBaseFlow.init(flowHelper:intent:)(v10, a2, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return v12;
}

uint64_t SaveParkingLocationBaseFlow.exitValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(*v1 + 112))(v5);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    *a1 = *v7;
    *(a1 + 8) = 0;
    v11 = enum case for RCHFlowResult.error<A, B>(_:);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMR);
    return (*(*(v12 - 8) + 104))(a1, v11, v12);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMR);
    return (*(*(v9 - 8) + 32))(a1, v7, v9);
  }

  else
  {
    lazy protocol witness table accessor for type Errors and conformance Errors();
    v13 = swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 3;
    *a1 = v13;
    *(a1 + 8) = 0;
    v15 = enum case for RCHFlowResult.error<A, B>(_:);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMR);
    (*(*(v16 - 8) + 104))(a1, v15, v16);
    return outlined destroy of SaveParkingLocationBaseFlow.State(v7);
  }
}

uint64_t SaveParkingLocationBaseFlow.onInput(input:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Input();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Parse();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  v14 = (*(v10 + 88))(v13, v9);
  if (v14 == enum case for Parse.NLv3IntentPlusServerConversion(_:))
  {
    (*(v10 + 96))(v13, v9);
    v15 = *&v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology8NLIntentV_0A7KitFlow5ParseO16ServerConversionCtMd, "vp") + 48)];

    v16 = v2[2];
    v17 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_0, v16, v17, "SaveParkingLocationBaseFlow onInput returns true for NLv3IntentPlusServerConversion.", v18, 2u);
    }

    v19 = type metadata accessor for NLIntent();
    (*(*(v19 - 8) + 8))(v13, v19);
    return 1;
  }

  else if (v14 == enum case for Parse.pommesResponse(_:))
  {
    (*(v10 + 8))(v13, v9);
    (*(*v2 + 168))(1);
    v21 = v2[2];
    v22 = static os_log_type_t.default.getter();
    v23 = os_log_type_enabled(v21, v22);
    result = 1;
    if (v23)
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v21, v22, "SaveParkingLocationBaseFlow onInput returns true for Pommes response.", v24, 2u);

      return 1;
    }
  }

  else
  {
    v25 = v2[2];
    (*(v5 + 16))(v8, a1, v4);
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v35 = v25;
      v28 = v27;
      v34 = swift_slowAlloc();
      v36 = v34;
      *v28 = 136315138;
      v29 = Input.description.getter();
      v31 = v30;
      (*(v5 + 8))(v8, v4);
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v31, &v36);

      *(v28 + 4) = v32;
      _os_log_impl(&dword_0, v35, v26, "SiriGeo currently doesn't support parse type: %s", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v34);
    }

    else
    {
      (*(v5 + 8))(v8, v4);
    }

    (*(v10 + 8))(v13, v9);
    return 0;
  }

  return result;
}

uint64_t SaveParkingLocationBaseFlow.executeState()(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMR);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v6 = type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  v2[10] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return _swift_task_switch(SaveParkingLocationBaseFlow.executeState(), 0, 0);
}

uint64_t SaveParkingLocationBaseFlow.executeState()()
{
  v67 = v0;
  v1 = *(v0 + 80);
  v2 = *(v0 + 96);
  (*(**(v0 + 32) + 112))();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v4 = *(v0 + 96);
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v7 = *(v0 + 32);
      v8 = *v4;
      v9 = static os_log_type_t.error.getter();
      v10 = *(v7 + 16);
      if (os_log_type_enabled(v10, v9))
      {
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v66 = v12;
        *v11 = 136315138;
        *(v0 + 16) = v8;
        swift_errorRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v13 = String.init<A>(describing:)();
        v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v66);

        *(v11 + 4) = v15;
        _os_log_impl(&dword_0, v10, v9, "SaveParkingLocationBaseFlow execute requestUnsupported with error %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v12);
      }

      v16 = *(v0 + 24);
      static ExecuteResponse.complete()();
    }

    else
    {
      v19 = *(v0 + 64);
      v18 = *(v0 + 72);
      v20 = *(v0 + 40);
      v21 = *(v0 + 48);
      v22 = *(v0 + 32);
      (*(v21 + 32))(v18, v4, v20);
      v23 = static os_log_type_t.info.getter();
      v24 = *(v22 + 16);
      v25 = *(v21 + 16);
      v25(v19, v18, v20);
      v26 = os_log_type_enabled(v24, v23);
      v27 = *(v0 + 64);
      if (v26)
      {
        v64 = v23;
        v28 = *(v0 + 48);
        v29 = *(v0 + 56);
        v30 = *(v0 + 40);
        v31 = swift_slowAlloc();
        log = v24;
        v32 = swift_slowAlloc();
        v66 = v32;
        *v31 = 136315138;
        v25(v29, v27, v30);
        v33 = String.init<A>(describing:)();
        v35 = v34;
        v36 = *(v28 + 8);
        v36(v27, v30);
        v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v66);

        *(v31 + 4) = v37;
        _os_log_impl(&dword_0, log, v64, "SaveParkingLocationBaseFlow execute rchComplete with result %s", v31, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v32);
      }

      else
      {
        v36 = *(*(v0 + 48) + 8);
        v36(*(v0 + 64), *(v0 + 40));
      }

      v54 = *(v0 + 72);
      v55 = *(v0 + 40);
      v56 = *(v0 + 24);
      static ExecuteResponse.complete()();
      v36(v54, v55);
    }

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload)
  {
    v17 = *v4;
  }

  else
  {
    v5 = *v4;
    if ([objc_opt_self() isSiriLocationServicesPromptingEnabled])
    {
      v6 = *(v0 + 24);
      SaveParkingLocationBaseFlow.pushGuardFlows(intent:)(v5);

LABEL_22:
      v58 = *(v0 + 88);
      v57 = *(v0 + 96);
      v60 = *(v0 + 64);
      v59 = *(v0 + 72);
      v61 = *(v0 + 56);

      v62 = *(v0 + 8);

      return v62();
    }

    v38 = *(*(v0 + 32) + 16);
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "SaveParkingLocationBaseFlow execute state fallthrough to handle.", v40, 2u);
    }

    v41 = *(v0 + 80);
    v42 = *(v0 + 88);
    v43 = *(v0 + 32);
    *v42 = v5;
    swift_storeEnumTagMultiPayload();
    v44 = *(*v43 + 120);
    v17 = v5;
    v44(v42);
  }

  *(v0 + 104) = v17;
  v45 = *(*(v0 + 32) + 16);
  v46 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 0;
    _os_log_impl(&dword_0, v45, v46, "SaveParkingLocationBaseFlow execute state handle.", v47, 2u);
  }

  v48 = *(**(v0 + 32) + 216);
  v65 = (v48 + *v48);
  v49 = v48[1];
  v50 = swift_task_alloc();
  *(v0 + 112) = v50;
  *v50 = v0;
  v50[1] = SaveParkingLocationBaseFlow.executeState();
  v51 = *(v0 + 24);
  v52 = *(v0 + 32);

  return v65(v51, v17);
}

{
  v1 = *(*v0 + 112);
  v3 = *v0;

  return _swift_task_switch(SaveParkingLocationBaseFlow.executeState(), 0, 0);
}

{

  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v4 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 56);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t SaveParkingLocationBaseFlow.makeRCHFlow(intent:)(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo27INSaveParkingLocationIntentCSo0ghiJ8ResponseCGMd, &_s11SiriKitFlow08RCHChildC14ProducersAsyncVySo27INSaveParkingLocationIntentCSo0ghiJ8ResponseCGMR);
  v3[28] = v4;
  v5 = *(v4 - 8);
  v3[29] = v5;
  v6 = *(v5 + 64) + 15;
  v3[30] = swift_task_alloc();

  return _swift_task_switch(SaveParkingLocationBaseFlow.makeRCHFlow(intent:), 0, 0);
}

uint64_t SaveParkingLocationBaseFlow.makeRCHFlow(intent:)()
{
  v1 = v0;
  v2 = *(v0 + 240);
  v4 = *(v0 + 216);
  v3 = *(v0 + 224);
  v27 = *(v0 + 208);
  v28 = *(v0 + 200);
  v29 = *(v0 + 232);
  static os_log_type_t.info.getter();
  v5 = v4[2];
  os_log(_:dso:log:_:_:)();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INSaveParkingLocationIntent, INSaveParkingLocationIntent_ptr);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for INSaveParkingLocationIntentResponse, INSaveParkingLocationIntentResponse_ptr);
  RCHChildFlowProducersAsync.init()();
  v6 = type metadata accessor for App();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  v26 = App.init(appIdentifier:systemExtensionBundleId:systemUIExtensionBundleId:pluginIdentifier:)();
  static RCHChildFlowFactoryHelper.makeAppResolutionFlowProducer<A, B>(app:)();
  v9 = RCHChildFlowProducersAsync.appResolutionFlowProducer.setter();
  v10 = *(*v4 + 136);
  (v10)(v9);
  type metadata accessor for SaveParkingLocationUnsupportedValueStrategy();
  v11 = swift_allocObject();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(v11 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType((v0 + 16), v11 + 24);
  *(v0 + 176) = v11;
  lazy protocol witness table accessor for type SaveParkingLocationUnsupportedValueStrategy and conformance SaveParkingLocationUnsupportedValueStrategy(&lazy protocol witness table cache variable for type SaveParkingLocationUnsupportedValueStrategy and conformance SaveParkingLocationUnsupportedValueStrategy, type metadata accessor for SaveParkingLocationUnsupportedValueStrategy);
  static RCHChildFlowFactoryHelper.makeUnsupportedValueAndCancelFlowProducer<A>(strategy:)();

  v25 = v3;
  v12 = v2;
  v13 = RCHChildFlowProducersAsync.unsupportedValueFlowProducer.setter();
  (v10)(v13);
  type metadata accessor for SaveParkingHandleIntentStrategy();
  v14 = swift_allocObject();
  *(v14 + 16) = OS_os_log.init(subsystem:category:)();
  outlined init with take of CATType((v0 + 56), v14 + 24);
  *(v14 + 64) = 0;
  *(v0 + 184) = v14;
  lazy protocol witness table accessor for type SaveParkingLocationUnsupportedValueStrategy and conformance SaveParkingLocationUnsupportedValueStrategy(&lazy protocol witness table cache variable for type SaveParkingHandleIntentStrategy and conformance SaveParkingHandleIntentStrategy, type metadata accessor for SaveParkingHandleIntentStrategy);
  static RCHChildFlowFactoryHelper.makeHandleIntentFlowProducer<A>(strategy:)();

  RCHChildFlowProducersAsync.handleIntentFlowProducer.setter();
  v15 = type metadata accessor for SaveParkingBaseRCHStrategy();
  v16 = swift_allocObject();
  *(v16 + 16) = OS_os_log.init(subsystem:category:)();
  v10();
  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  __swift_project_boxed_opaque_existential_1(v1 + 12, v1[15]);
  (*(v17 + 56))(v18, v17);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  v19 = *(v0 + 160);
  v20 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1(v1 + 17, v1[20]);
  *(v0 + 192) = v16;
  v21 = *(v20 + 8);
  v22 = lazy protocol witness table accessor for type SaveParkingLocationUnsupportedValueStrategy and conformance SaveParkingLocationUnsupportedValueStrategy(&lazy protocol witness table cache variable for type SaveParkingBaseRCHStrategy and conformance SaveParkingBaseRCHStrategy, type metadata accessor for SaveParkingBaseRCHStrategy);
  v21(v0 + 192, v12, v26, v27, v15, v22, v19, v20);

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  (*(v29 + 8))(v12, v25);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));

  v23 = *(v0 + 8);

  return v23();
}

uint64_t closure #1 in SaveParkingLocationBaseFlow.makeRCHFlow(intent:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMd, &_s11SiriKitFlow13RCHFlowResultOySo27INSaveParkingLocationIntentCSo0fghI8ResponseCGMR);
  (*(*(v8 - 8) + 16))(v7, a1, v8);
  swift_storeEnumTagMultiPayload();
  return (*(*a2 + 120))(v7);
}

uint64_t SaveParkingLocationBaseFlow.pushGuardFlows(intent:)(void *a1)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMd, &_ss23_ContiguousArrayStorageCy11SiriKitFlow06CommonF5GuardVGMR);
  v4 = *(type metadata accessor for CommonFlowGuard() - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  *(swift_allocObject() + 16) = xmmword_B89E0;
  static CommonFlowGuard.ensuringSiriLocationAccess(needsPreciseLocation:)();
  static CommonGuardFlowUtils.makeGuardFlow(withGuards:)();

  static os_log_type_t.info.getter();
  v7 = *(v2 + 16);
  os_log(_:dso:log:_:_:)();
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = a1;
  type metadata accessor for GuardFlow();

  v9 = a1;
  static ExecuteResponse.ongoing<A>(next:childCompletion:)();
}

uint64_t closure #1 in SaveParkingLocationBaseFlow.pushGuardFlows(intent:)(_BYTE *a1, void *a2, void *a3)
{
  v6 = type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*a1 == 1)
  {
    lazy protocol witness table accessor for type Errors and conformance Errors();
    v10 = swift_allocError();
    *v11 = 0xD000000000000022;
    *(v11 + 8) = 0x80000000000C0BE0;
    *(v11 + 16) = 0;
    *v9 = v10;
    swift_storeEnumTagMultiPayload();
    return (*(*a2 + 120))(v9);
  }

  else
  {
    v13 = a2[2];
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_0, v13, v14, "permitted to use location", v15, 2u);
    }

    *v9 = a3;
    swift_storeEnumTagMultiPayload();
    v16 = *(*a2 + 120);
    v17 = a3;
    return v16(v9);
  }
}

uint64_t SaveParkingLocationBaseFlow.deinit()
{
  outlined destroy of SaveParkingLocationBaseFlow.State(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowState);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowHelper));
  return v0;
}

uint64_t SaveParkingLocationBaseFlow.__deallocating_deinit()
{
  outlined destroy of SaveParkingLocationBaseFlow.State(v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowState);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowHelper));
  v1 = *(*v0 + 12);
  v2 = *(*v0 + 26);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for FSMFlow.executeState() in conformance SaveParkingLocationBaseFlow(uint64_t a1)
{
  v4 = *(**v1 + 208);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.on(input:) in conformance SaveParkingLocationBaseFlow(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.on(input:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for Flow.execute(completion:) in conformance SaveParkingLocationBaseFlow(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.execute(completion:)(a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for Flow.execute() in conformance SaveParkingLocationBaseFlow(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return FSMFlow.execute()(a1, a2, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SaveParkingLocationBaseFlow(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return FSMFlow.description.getter(a1, WitnessTable);
}

uint64_t specialized SaveParkingLocationBaseFlow.init(flowHelper:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v11);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a1, a4);
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for OS_os_log, OS_os_log_ptr);
  *(a3 + 16) = OS_os_log.init(subsystem:category:)();
  *(a3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_isPOMMES) = 0;
  outlined init with take of CATType(&v11, a3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowHelper);
  *(a3 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin27SaveParkingLocationBaseFlow_flowState) = a2;
  type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  swift_storeEnumTagMultiPayload();
  return a3;
}

uint64_t specialized SaveParkingLocationBaseFlow.__allocating_init(flowHelper:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SaveParkingLocationBaseFlow(0);
  v14 = *(v13 + 48);
  v15 = *(v13 + 52);
  v16 = swift_allocObject();
  (*(v9 + 16))(v12, a1, a4);
  return specialized SaveParkingLocationBaseFlow.init(flowHelper:intent:)(v12, a2, v16, a4, a5);
}

uint64_t outlined destroy of SaveParkingLocationBaseFlow.State(uint64_t a1)
{
  v2 = type metadata accessor for SaveParkingLocationBaseFlow.State(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type SaveParkingLocationUnsupportedValueStrategy and conformance SaveParkingLocationUnsupportedValueStrategy(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t instantiation function for generic protocol witness table for SaveParkingLocationBaseFlow(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type SaveParkingLocationUnsupportedValueStrategy and conformance SaveParkingLocationUnsupportedValueStrategy(&lazy protocol witness table cache variable for type SaveParkingLocationBaseFlow and conformance SaveParkingLocationBaseFlow, type metadata accessor for SaveParkingLocationBaseFlow);
  result = lazy protocol witness table accessor for type SaveParkingLocationUnsupportedValueStrategy and conformance SaveParkingLocationUnsupportedValueStrategy(&lazy protocol witness table cache variable for type SaveParkingLocationBaseFlow and conformance SaveParkingLocationBaseFlow, type metadata accessor for SaveParkingLocationBaseFlow);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2855C@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result & 1;
  return result;
}

uint64_t type metadata completion function for SaveParkingLocationBaseFlow()
{
  result = type metadata accessor for SaveParkingLocationBaseFlow.State(319);
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

void type metadata completion function for SaveParkingLocationBaseFlow.State()
{
  type metadata accessor for OS_os_log(319, &lazy cache variable for type metadata for INSaveParkingLocationIntent, INSaveParkingLocationIntent_ptr);
  if (v0 <= 0x3F)
  {
    type metadata accessor for Error();
    if (v1 <= 0x3F)
    {
      type metadata accessor for RCHFlowResult<INSaveParkingLocationIntent, INSaveParkingLocationIntentResponse>();
      if (v2 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

unint64_t type metadata accessor for Error()
{
  result = lazy cache variable for type metadata for Error;
  if (!lazy cache variable for type metadata for Error)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Error);
  }

  return result;
}

void type metadata accessor for RCHFlowResult<INSaveParkingLocationIntent, INSaveParkingLocationIntentResponse>()
{
  if (!lazy cache variable for type metadata for RCHFlowResult<INSaveParkingLocationIntent, INSaveParkingLocationIntentResponse>)
  {
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INSaveParkingLocationIntent, INSaveParkingLocationIntent_ptr);
    type metadata accessor for OS_os_log(255, &lazy cache variable for type metadata for INSaveParkingLocationIntentResponse, INSaveParkingLocationIntentResponse_ptr);
    v0 = type metadata accessor for RCHFlowResult();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for RCHFlowResult<INSaveParkingLocationIntent, INSaveParkingLocationIntentResponse>);
    }
  }
}

uint64_t sub_28834()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t CATService.Mode.options.getter(char a1)
{
  if (a1)
  {
    if (a1 == 1)
    {

      return static CATOption.debugMode.getter();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriDialogEngine9CATOptionVGMd, &_ss23_ContiguousArrayStorageCy16SiriDialogEngine9CATOptionVGMR);
      v3 = *(type metadata accessor for CATOption() - 8);
      v4 = *(v3 + 72);
      v5 = (*(v3 + 80) + 32) & ~*(v3 + 80);
      *(swift_allocObject() + 16) = xmmword_B7D80;
      static CATOption.testMode.getter();
      static CATOption.resetState.getter();
      lazy protocol witness table accessor for type CATOption and conformance CATOption();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine9CATOptionVGMd, &_sSay16SiriDialogEngine9CATOptionVGMR);
      lazy protocol witness table accessor for type [CATOption] and conformance [A]();
      return dispatch thunk of SetAlgebra.init<A>(_:)();
    }
  }

  else
  {

    return static CATOption.defaultMode.getter();
  }
}

unint64_t lazy protocol witness table accessor for type CATOption and conformance CATOption()
{
  result = lazy protocol witness table cache variable for type CATOption and conformance CATOption;
  if (!lazy protocol witness table cache variable for type CATOption and conformance CATOption)
  {
    type metadata accessor for CATOption();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CATOption and conformance CATOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [CATOption] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [CATOption] and conformance [A];
  if (!lazy protocol witness table cache variable for type [CATOption] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16SiriDialogEngine9CATOptionVGMd, &_sSay16SiriDialogEngine9CATOptionVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CATOption] and conformance [A]);
  }

  return result;
}

uint64_t CATService.__allocating_init(withMode:)(char a1)
{
  v2 = swift_allocObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v2 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log();
  *(v2 + 32) = OS_os_log.init(subsystem:category:)();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t CATService.init(withMode:)(char a1)
{
  v2 = v1;
  type metadata accessor for CATService();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  *(v2 + 24) = [objc_opt_self() bundleForClass:ObjCClassFromMetadata];
  type metadata accessor for OS_os_log();
  *(v2 + 32) = OS_os_log.init(subsystem:category:)();
  *(v2 + 16) = a1;
  return v2;
}

uint64_t CATService.execute(model:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  v5 = type metadata accessor for BehaviorAfterSpeaking();
  v4[21] = v5;
  v6 = *(*(v5 - 8) + 64) + 15;
  v4[22] = swift_task_alloc();

  return _swift_task_switch(CATService.execute(model:globals:), 0, 0);
}

uint64_t CATService.execute(model:globals:)()
{
  v34 = v0;
  v1 = v0[20];
  v2 = v0[18];
  v3 = static os_log_type_t.debug.getter();
  v4 = *(v1 + 32);
  outlined init with copy of DeviceState(v2, (v0 + 2));
  outlined init with copy of DeviceState(v2, (v0 + 7));
  outlined init with copy of DeviceState(v2, (v0 + 12));
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v0[22];
    v32 = v0[21];
    v6 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *v6 = 136315650;
    v7 = v0[5];
    v8 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v7);
    v9 = (*(v8 + 8))(v7, v8);
    v11 = v10;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v33);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2080;
    v13 = v0[10];
    v14 = v0[11];
    __swift_project_boxed_opaque_existential_1(v0 + 7, v13);
    (*(v14 + 16))(v13, v14);
    v15 = Dictionary.description.getter();
    v17 = v16;

    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v33);

    *(v6 + 14) = v18;
    *(v6 + 22) = 2080;
    v19 = v0[15];
    __swift_project_boxed_opaque_existential_1(v0 + 12, v19);
    GeoCATModel.getBehaviorAfterSpeaking()(v19, v5);
    v20 = String.init<A>(describing:)();
    v22 = v21;
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v33);

    *(v6 + 24) = v23;
    _os_log_impl(&dword_0, v4, v3, "catId %s\nwith parameters %s\nbehaviourAfterSpeaking %s", v6, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 7);
    __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  }

  v24 = v0[20];
  v25 = swift_task_alloc();
  v0[23] = v25;
  v26 = *(v0 + 9);
  *(v25 + 16) = v24;
  *(v25 + 24) = v26;
  v27 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v28 = swift_task_alloc();
  v0[24] = v28;
  v29 = type metadata accessor for TemplatingResult();
  *v28 = v0;
  v28[1] = CATService.execute(model:globals:);
  v30 = v0[17];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v30, 0, 0, 0xD000000000000017, 0x80000000000C0C10, partial apply for closure #1 in CATService.execute(model:globals:), v25, v29);
}

{
  v2 = *(*v1 + 192);
  v3 = *v1;
  v3[25] = v0;

  if (v0)
  {

    return _swift_task_switch(CATService.execute(model:globals:), 0, 0);
  }

  else
  {
    v5 = v3[22];
    v4 = v3[23];

    v6 = v3[1];

    return v6();
  }
}

{
  v2 = v0[22];
  v1 = v0[23];

  v3 = v0[1];
  v4 = v0[25];

  return v3();
}

uint64_t closure #1 in CATService.execute(model:globals:)(char *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v68 = a4;
  v83 = a2;
  v80 = a1;
  v81 = type metadata accessor for CATOption();
  v76 = *(v81 - 8);
  v5 = *(v76 + 64);
  __chkstk_darwin(v81);
  v75 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  v7 = *(v77 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v77);
  v10 = &v67 - v9;
  v11 = type metadata accessor for BehaviorAfterSpeaking();
  v82 = *(v11 - 8);
  v12 = *(v82 + 64);
  v13 = __chkstk_darwin(v11);
  v70 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v67 - v16;
  v73 = v18;
  __chkstk_darwin(v15);
  v20 = &v67 - v19;
  v22 = a3[3];
  v21 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v22);
  v78 = (*(v21 + 8))(v22, v21);
  v79 = v23;
  v24 = a3[3];
  v25 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v24);
  v26 = (*(v25 + 16))(v24, v25);
  v27 = a3[3];
  __swift_project_boxed_opaque_existential_1(a3, v27);
  v28 = v27;
  v29 = v11;
  GeoCATModel.getBehaviorAfterSpeaking()(v28, v20);
  v30 = v77;
  (*(v7 + 16))(v10, v80, v77);
  v31 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v32 = swift_allocObject();
  v33 = *(v7 + 32);
  v72 = v32;
  v33(v32 + v31, v10, v30);
  v34 = static os_log_type_t.info.getter();
  v35 = *(v83 + 32);
  v37 = v82 + 16;
  v36 = *(v82 + 16);
  v38 = v17;
  v80 = v20;
  v77 = v36;
  (v36)(v17, v20, v11);
  v39 = os_log_type_enabled(v35, v34);
  v74 = v26;
  v69 = v37;
  if (v39)
  {
    v40 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    *&v85 = v67;
    *v40 = 136315650;
    *(v40 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v78, v79, &v85);
    *(v40 + 12) = 2080;
    v41 = Dictionary.description.getter();
    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v42, &v85);

    *(v40 + 14) = v43;
    *(v40 + 22) = 2080;
    v29 = v11;
    v44 = v82;
    v45 = v70;
    (v77)(v70, v38, v11);
    v46 = String.init<A>(describing:)();
    v48 = v47;
    v71 = *(v44 + 8);
    v71(v38, v11);
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v85);

    *(v40 + 24) = v49;
    _os_log_impl(&dword_0, v35, v34, "catId %s\nwith parameters %s\nbehaviourAfterSpeaking %s", v40, 0x20u);
    swift_arrayDestroy();

    v50 = v45;
  }

  else
  {
    v71 = *(v82 + 8);
    v71(v17, v11);
    v50 = v70;
  }

  v70 = *(v83 + 24);
  v51 = *(v83 + 16);
  v52 = v75;
  v53 = v76;
  if (v51 == 2)
  {
    type metadata accessor for CATGlobals.Builder();
    CATGlobals.Builder.__allocating_init(siriLocale:)();
    dispatch thunk of CATGlobals.Builder.withRandomSeed(_:)();

    v68 = dispatch thunk of CATGlobals.Builder.build()();

    v87 = 0;
    v85 = 0u;
    v86 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriDialogEngine9CATOptionVGMd, &_ss23_ContiguousArrayStorageCy16SiriDialogEngine9CATOptionVGMR);
    v54 = v52;
    v55 = v53;
    v56 = v29;
    v57 = *(v53 + 72);
    v58 = (*(v53 + 80) + 32) & ~*(v53 + 80);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_B7D80;
    static CATOption.testMode.getter();
    v29 = v56;
    static CATOption.resetState.getter();
    v84 = v59;
    lazy protocol witness table accessor for type CATOption and conformance CATOption();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine9CATOptionVGMd, &_sSay16SiriDialogEngine9CATOptionVGMR);
    lazy protocol witness table accessor for type [CATOption] and conformance [A]();
    v52 = v54;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    type metadata accessor for CATGlobals();

    v60 = CATGlobals.__allocating_init(dictionary:)();
    v87 = 0;
    v85 = 0u;
    v86 = 0u;
    v68 = v60;
    if (v51)
    {
      static CATOption.debugMode.getter();
    }

    else
    {
      static CATOption.defaultMode.getter();
    }

    v55 = v53;
  }

  type metadata accessor for CATExecutor();
  (v77)(v50, v80, v29);
  v61 = v82;
  v62 = v29;
  v63 = (*(v82 + 80) + 40) & ~*(v82 + 80);
  v64 = swift_allocObject();
  *(v64 + 2) = v83;
  *(v64 + 3) = partial apply for closure #1 in closure #1 in CATService.execute(model:globals:);
  *(v64 + 4) = v72;
  (*(v61 + 32))(&v64[v63], v50, v62);

  v65 = v68;
  static CATExecutor.execute(bundle:catId:parameters:globals:callback:options:_:)();

  (*(v55 + 8))(v52, v81);
  outlined destroy of Mirror.DisplayStyle?(&v85, &_s16SiriDialogEngine11CatCallable_pSgMd, &_s16SiriDialogEngine11CatCallable_pSgMR);

  return (v71)(v80, v62);
}

uint64_t closure #1 in closure #1 in CATService.execute(model:globals:)(uint64_t a1)
{
  v2 = type metadata accessor for TemplatingResult();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = v15 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = (v15 - v12);
  outlined init with copy of Result<TemplatingResult, Error>(a1, v15 - v12);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15[1] = *v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {
    (*(v3 + 32))(v9, v13, v2);
    (*(v3 + 16))(v7, v9, v2);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    return (*(v3 + 8))(v9, v2);
  }
}

uint64_t CATService.execute(model:globals:_:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a4;
  v91 = a3;
  v85 = a2;
  v6 = type metadata accessor for CATOption();
  v94 = *(v6 - 8);
  v7 = *(v94 + 64);
  __chkstk_darwin(v6);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BehaviorAfterSpeaking();
  v99 = *(v10 - 8);
  v11 = *(v99 + 64);
  v12 = __chkstk_darwin(v10);
  v87 = &v83 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v98 = &v83 - v15;
  v90 = v16;
  __chkstk_darwin(v14);
  v18 = &v83 - v17;
  v19 = static os_log_type_t.debug.getter();
  v97 = v4;
  v20 = *(v4 + 32);
  outlined init with copy of DeviceState(a1, &v106);
  outlined init with copy of DeviceState(a1, v103);
  outlined init with copy of DeviceState(a1, v101);
  v21 = os_log_type_enabled(v20, v19);
  v95 = v6;
  v96 = v18;
  v93 = v9;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *v22 = 136315650;
    v23 = *(&v107 + 1);
    v24 = v108;
    __swift_project_boxed_opaque_existential_1(&v106, *(&v107 + 1));
    v25 = (*(v24 + 8))(v23, v24);
    v27 = v26;
    __swift_destroy_boxed_opaque_existential_0Tm(&v106);
    v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v100);

    *(v22 + 4) = v28;
    *(v22 + 12) = 2080;
    v29 = v104;
    v30 = v105;
    __swift_project_boxed_opaque_existential_1(v103, v104);
    (*(v30 + 16))(v29, v30);
    v31 = Dictionary.description.getter();
    v33 = v32;

    __swift_destroy_boxed_opaque_existential_0Tm(v103);
    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v100);
    v35 = v96;

    *(v22 + 14) = v34;
    *(v22 + 22) = 2080;
    v36 = v102;
    __swift_project_boxed_opaque_existential_1(v101, v102);
    GeoCATModel.getBehaviorAfterSpeaking()(v36, v35);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    __swift_destroy_boxed_opaque_existential_0Tm(v101);
    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, &v100);

    *(v22 + 24) = v40;
    _os_log_impl(&dword_0, v20, v19, "catId %s\nwith parameters %s\nbehaviourAfterSpeaking %s", v22, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v106);
    __swift_destroy_boxed_opaque_existential_0Tm(v103);
    __swift_destroy_boxed_opaque_existential_0Tm(v101);
  }

  v41 = v10;
  v42 = a1[3];
  v43 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v42);
  v44 = (*(v43 + 8))(v42, v43);
  v46 = v45;
  v47 = a1[3];
  v48 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v47);
  v49 = (*(v48 + 16))(v47, v48);
  v50 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v50);
  v51 = v98;
  GeoCATModel.getBehaviorAfterSpeaking()(v50, v98);
  v52 = static os_log_type_t.info.getter();
  v53 = *(v99 + 16);
  v54 = v87;
  v53(v87, v51, v41);
  LODWORD(v84) = v52;
  v55 = os_log_type_enabled(v20, v52);
  v89 = v46;
  v88 = v49;
  v86 = v44;
  if (v55)
  {
    v56 = swift_slowAlloc();
    v83 = v20;
    v57 = v54;
    v58 = v56;
    *&v106 = swift_slowAlloc();
    *v58 = 136315650;
    *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v106);
    *(v58 + 12) = 2080;
    v59 = Dictionary.description.getter();
    v61 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v59, v60, &v106);

    *(v58 + 14) = v61;
    *(v58 + 22) = 2080;
    v53(v96, v57, v41);
    v62 = String.init<A>(describing:)();
    v64 = v63;
    v87 = *(v99 + 8);
    (v87)(v57, v41);
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, &v106);

    *(v58 + 24) = v65;
    _os_log_impl(&dword_0, v83, v84, "catId %s\nwith parameters %s\nbehaviourAfterSpeaking %s", v58, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
    v87 = *(v99 + 8);
    (v87)(v54, v41);
  }

  v66 = v94;
  v67 = v53;
  v94 = *(v97 + 24);
  v68 = *(v97 + 16);
  if (v68 == 2)
  {
    v69 = v41;
    type metadata accessor for CATGlobals.Builder();
    CATGlobals.Builder.__allocating_init(siriLocale:)();
    dispatch thunk of CATGlobals.Builder.withRandomSeed(_:)();

    v85 = dispatch thunk of CATGlobals.Builder.build()();

    v108 = 0;
    v106 = 0u;
    v107 = 0u;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy16SiriDialogEngine9CATOptionVGMd, &_ss23_ContiguousArrayStorageCy16SiriDialogEngine9CATOptionVGMR);
    v70 = *(v66 + 72);
    v71 = (*(v66 + 80) + 32) & ~*(v66 + 80);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_B7D80;
    static CATOption.testMode.getter();
    static CATOption.resetState.getter();
    v103[0] = v72;
    lazy protocol witness table accessor for type CATOption and conformance CATOption();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine9CATOptionVGMd, &_sSay16SiriDialogEngine9CATOptionVGMR);
    lazy protocol witness table accessor for type [CATOption] and conformance [A]();
    v73 = v93;
    v74 = v95;
    dispatch thunk of SetAlgebra.init<A>(_:)();
  }

  else
  {
    type metadata accessor for CATGlobals();

    v75 = CATGlobals.__allocating_init(dictionary:)();
    v108 = 0;
    v106 = 0u;
    v107 = 0u;
    v85 = v75;
    v69 = v41;
    v73 = v93;
    if (v68)
    {
      static CATOption.debugMode.getter();
    }

    else
    {
      static CATOption.defaultMode.getter();
    }

    v74 = v95;
  }

  v84 = type metadata accessor for CATExecutor();
  v76 = v96;
  v67(v96, v98, v69);
  v77 = v99;
  v78 = (*(v99 + 80) + 40) & ~*(v99 + 80);
  v79 = swift_allocObject();
  v80 = v91;
  *(v79 + 2) = v97;
  *(v79 + 3) = v80;
  *(v79 + 4) = v92;
  (*(v77 + 32))(&v79[v78], v76, v69);

  v81 = v85;
  static CATExecutor.execute(bundle:catId:parameters:globals:callback:options:_:)();

  (*(v66 + 8))(v73, v74);
  outlined destroy of Mirror.DisplayStyle?(&v106, &_s16SiriDialogEngine11CatCallable_pSgMd, &_s16SiriDialogEngine11CatCallable_pSgMR);

  return (v87)(v98, v69);
}

uint64_t closure #1 in CATService.execute(catId:parameters:globals:behaviorAfterSpeaking:_:)(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v26 = a3;
  v5 = type metadata accessor for TemplatingResult();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v12);
  v16 = (&v25 - v15);
  outlined init with copy of Result<TemplatingResult, Error>(a1, &v25 - v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    static os_log_type_t.error.getter();
    v18 = *(a2 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_B89E0;
    swift_getErrorValue();
    v20 = Error.localizedDescription.getter();
    v22 = v21;
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v19 + 32) = v20;
    *(v19 + 40) = v22;
    os_log(_:dso:log:_:_:)();

    *v14 = v17;
    swift_storeEnumTagMultiPayload();
    swift_errorRetain();
    v26(v14);

    return outlined destroy of Mirror.DisplayStyle?(v14, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  }

  else
  {
    (*(v6 + 32))(v9, v16, v5);
    static os_log_type_t.info.getter();
    v24 = *(a2 + 32);
    os_log(_:dso:log:_:_:)();
    TemplatingResult.withBehaviorAfterSpeaking(_:)();
    swift_storeEnumTagMultiPayload();
    v26(v14);
    outlined destroy of Mirror.DisplayStyle?(v14, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    return (*(v6 + 8))(v9, v5);
  }
}

uint64_t CATService.getLabel(model:)(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  v7 = a1[3];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  v9 = (*(v8 + 16))(v7, v8);
  v10 = CATService.getLabel(catId:params:)(v4, v6, v9);

  return v10;
}

uint64_t CATService.getLabel(catId:params:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = a2;
  v41 = a3;
  v39 = a1;
  v4 = type metadata accessor for TemplatingResult();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v36 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CATOption();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12);
  v16 = (&v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v14);
  v18 = &v34 - v17;
  type metadata accessor for CATExecutor();
  v35 = v3;
  v19 = *(v3 + 24);
  type metadata accessor for CATGlobals();
  memset(v42, 0, sizeof(v42));
  v43 = 0;
  v20 = CATGlobals.__allocating_init()();
  static CATOption.defaultMode.getter();
  static CATExecutor.execute(bundle:catId:parameters:globals:callback:options:)();

  (*(v8 + 8))(v11, v7);
  outlined destroy of Mirror.DisplayStyle?(v42, &_s16SiriDialogEngine11CatCallable_pSgMd, &_s16SiriDialogEngine11CatCallable_pSgMR);
  outlined init with copy of Result<TemplatingResult, Error>(v18, v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v16;
    static os_log_type_t.error.getter();
    v22 = *(v35 + 32);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_B89E0;
    swift_getErrorValue();
    v24 = Error.localizedDescription.getter();
    v26 = v25;
    *(v23 + 56) = &type metadata for String;
    *(v23 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    os_log(_:dso:log:_:_:)();

LABEL_6:
    outlined destroy of Mirror.DisplayStyle?(v18, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
    return v21;
  }

  v28 = v36;
  v27 = v37;
  v29 = v38;
  (*(v37 + 32))(v36, v16, v38);
  v30 = TemplatingResult.print.getter();
  if (!v30[2])
  {

    lazy protocol witness table accessor for type Errors and conformance Errors();
    v21 = swift_allocError();
    *v32 = 0xD000000000000014;
    *(v32 + 8) = 0x80000000000C0CD0;
    *(v32 + 16) = 0;
    (*(v27 + 8))(v28, v29);
    goto LABEL_6;
  }

  v21 = v30[4];
  v31 = v30[5];

  (*(v27 + 8))(v28, v29);
  outlined destroy of Mirror.DisplayStyle?(v18, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  return v21;
}

uint64_t CATService.executeRF(model:globals:)(uint64_t a1, uint64_t a2)
{
  v3[20] = a2;
  v3[21] = v2;
  v3[19] = a1;
  return _swift_task_switch(CATService.executeRF(model:globals:), 0, 0);
}

uint64_t CATService.executeRF(model:globals:)()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  type metadata accessor for CATGlobals();

  v4 = CATGlobals.__allocating_init(dictionary:)();
  dispatch thunk of CATGlobals.toDictionary.getter();

  v15 = objc_opt_self();
  v16 = *(v1 + 24);
  v5 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v5);
  (*(v6 + 8))(v5, v6);
  v7 = String._bridgeToObjectiveC()();
  v0[22] = v7;

  v9 = v3[3];
  v8 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v9);
  v10 = (*(v8 + 16))(v9, v8);
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v10);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[23] = isa;

  v12 = Dictionary._bridgeToObjectiveC()().super.isa;
  v0[24] = v12;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = CATService.executeRF(model:globals:);
  v13 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo21DialogExecutionResultCs5Error_pGMd, &_sSccySo21DialogExecutionResultCs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned DialogExecutionResult, @unowned NSError?) -> () with result type DialogExecutionResult;
  v0[13] = &block_descriptor;
  v0[14] = v13;
  [v15 execute:v16 catId:v7 parameters:isa globals:v12 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = CATService.executeRF(model:globals:);
  }

  else
  {
    v3 = CATService.executeRF(model:globals:);
  }

  return _swift_task_switch(v3, 0, 0);
}

{
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);
  v3 = *(v0 + 144);

  v4 = *(v0 + 8);

  return v4(v3);
}

{
  v1 = v0[24];
  v2 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  swift_willThrow();

  v5 = v0[1];
  v6 = v0[25];

  return v5();
}

uint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVypGMd, &_ss18_DictionaryStorageCys11AnyHashableVypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    outlined init with take of Any(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    outlined init with take of Any(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    outlined init with take of Any(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = outlined init with take of Any(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned DialogExecutionResult, @unowned NSError?) -> () with result type DialogExecutionResult(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return _swift_continuation_throwingResumeWithError(v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t CATService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type CATService.Mode and conformance CATService.Mode()
{
  result = lazy protocol witness table cache variable for type CATService.Mode and conformance CATService.Mode;
  if (!lazy protocol witness table cache variable for type CATService.Mode and conformance CATService.Mode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CATService.Mode and conformance CATService.Mode);
  }

  return result;
}

uint64_t outlined init with copy of Result<TemplatingResult, Error>(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMd, &_ss6ResultOy11SiriKitFlow010TemplatingA0Vs5Error_pGMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2B718()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in closure #1 in CATService.execute(model:globals:)(uint64_t a1)
{
  v2 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMd, &_sScCy11SiriKitFlow16TemplatingResultVs5Error_pGMR) - 8) + 80);

  return closure #1 in closure #1 in CATService.execute(model:globals:)(a1);
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for BehaviorAfterSpeaking();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  v7 = *(v0 + 32);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t partial apply for closure #1 in CATService.execute(catId:parameters:globals:behaviorAfterSpeaking:_:)(uint64_t a1)
{
  v3 = *(*(type metadata accessor for BehaviorAfterSpeaking() - 8) + 80);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];

  return closure #1 in CATService.execute(catId:parameters:globals:behaviorAfterSpeaking:_:)(a1, v4, v5);
}

uint64_t RedirectToServerFlow.execute()(uint64_t a1)
{
  v2[62] = a1;
  v2[63] = v1;
  v3 = type metadata accessor for FlowUnhandledReason();
  v2[64] = v3;
  v4 = *(v3 - 8);
  v2[65] = v4;
  v5 = *(v4 + 64) + 15;
  v2[66] = swift_task_alloc();
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR) - 8) + 64) + 15;
  v2[67] = swift_task_alloc();
  v7 = type metadata accessor for AceOutput();
  v2[68] = v7;
  v8 = *(v7 - 8);
  v2[69] = v8;
  v9 = *(v8 + 64) + 15;
  v2[70] = swift_task_alloc();
  v10 = type metadata accessor for TemplatingResult();
  v2[71] = v10;
  v11 = *(v10 - 8);
  v2[72] = v11;
  v12 = *(v11 + 64) + 15;
  v2[73] = swift_task_alloc();
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR) - 8) + 64) + 15;
  v2[74] = swift_task_alloc();
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR) - 8) + 64) + 15;
  v2[75] = swift_task_alloc();
  v15 = type metadata accessor for Com_Apple_Siri_Product_Proto_PromptContext();
  v2[76] = v15;
  v16 = *(v15 - 8);
  v2[77] = v16;
  v17 = *(v16 + 64) + 15;
  v2[78] = swift_task_alloc();
  v18 = type metadata accessor for PommesContext.Source();
  v2[79] = v18;
  v19 = *(v18 - 8);
  v2[80] = v19;
  v20 = *(v19 + 64) + 15;
  v2[81] = swift_task_alloc();
  v21 = type metadata accessor for PommesContext();
  v2[82] = v21;
  v22 = *(v21 - 8);
  v2[83] = v22;
  v23 = *(v22 + 64) + 15;
  v2[84] = swift_task_alloc();
  v24 = type metadata accessor for NLContextUpdate();
  v2[85] = v24;
  v25 = *(v24 - 8);
  v2[86] = v25;
  v26 = *(v25 + 64) + 15;
  v2[87] = swift_task_alloc();

  return _swift_task_switch(RedirectToServerFlow.execute(), 0, 0);
}

uint64_t RedirectToServerFlow.execute()()
{
  v40 = v0;
  v1 = v0[87];
  v2 = v0[84];
  v3 = v0[81];
  v4 = v0[80];
  v5 = v0[79];
  v6 = v0[77];
  v38 = v0[76];
  v7 = v0[75];
  static GeoNLContextUtils.makeNLContextFor(weightedPromptResponseTargets:)();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  NLContextUpdate.currentDomainName.setter();
  v8 = Data.init(base64Encoded:options:)();
  v10 = v9;
  v0[88] = v8;
  v0[89] = v9;
  *v3 = v8;
  v3[1] = v9;
  (*(v4 + 104))(v3, enum case for PommesContext.Source.pegasusResponse(_:), v5);
  outlined copy of Data?(v8, v10);
  PommesContext.init(source:domain:listenAfterSpeaking:)();
  PommesContext.exportPromptContext()();
  if ((*(v6 + 48))(v7, 1, v38) == 1)
  {
    v11 = v0[63];
    outlined destroy of Mirror.DisplayStyle?(v0[75], &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMd, &_s12SiriOntology010Com_Apple_A28_Product_Proto_PromptContextVSgMR);
    v12 = static os_log_type_t.error.getter();
    v13 = *(v11 + 16);
    if (os_log_type_enabled(v13, v12))
    {
      v14 = v0[84];
      v15 = v0[82];
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v39 = v17;
      *v16 = 136315138;
      swift_beginAccess();
      lazy protocol witness table accessor for type PommesContext and conformance PommesContext(&lazy protocol witness table cache variable for type PommesContext and conformance PommesContext, 255, &type metadata accessor for PommesContext);
      v18 = dispatch thunk of CustomStringConvertible.description.getter();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v39);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_0, v13, v12, "No promptContext on %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v17);
    }
  }

  else
  {
    v21 = v0[84];
    v22 = v0[78];
    v23 = v0[77];
    v24 = v0[76];
    (*(v23 + 32))(v22, v0[75], v24);
    Com_Apple_Siri_Product_Proto_PromptContext.previousDomainName.setter();
    Com_Apple_Siri_Product_Proto_PromptContext.strictPrompt.setter();
    Com_Apple_Siri_Product_Proto_PromptContext.listenAfterSpeaking.setter();
    PommesContext.update(with:)();
    (*(v23 + 8))(v22, v24);
  }

  v25 = v0[87];
  v26 = v0[84];
  v27 = v0[83];
  v28 = v0[82];
  v29 = v0[74];
  v30 = v0[63];
  swift_beginAccess();
  (*(v27 + 16))(v29, v26, v28);
  (*(v27 + 56))(v29, 0, 1, v28);
  NLContextUpdate.pommesContext.setter();
  static os_log_type_t.info.getter();
  v0[90] = *(v30 + 16);
  os_log(_:dso:log:_:_:)();
  v0[91] = type metadata accessor for CATService();
  v31 = swift_allocObject();
  v0[92] = v31;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v0[93] = ObjCClassFromMetadata;
  v33 = objc_opt_self();
  v0[94] = v33;
  *(v31 + 24) = [v33 bundleForClass:ObjCClassFromMetadata];
  v0[95] = type metadata accessor for OS_os_log();
  *(v31 + 32) = OS_os_log.init(subsystem:category:)();
  *(v31 + 16) = 0;
  v0[27] = &type metadata for LocationSearch;
  v0[28] = &protocol witness table for LocationSearch;
  v0[25] = 0;
  v0[24] = 0;
  v34 = static DialogHelper.globals.getter();
  v0[96] = v34;
  v35 = swift_task_alloc();
  v0[97] = v35;
  *v35 = v0;
  v35[1] = RedirectToServerFlow.execute();
  v36 = v0[73];

  return CATService.execute(model:globals:)(v36, (v0 + 24), v34);
}

{
  v2 = *v1;
  v3 = (*v1)[97];
  v10 = *v1;
  (*v1)[98] = v0;

  if (v0)
  {
    v4 = v2[96];
    v5 = v2[92];

    v6 = RedirectToServerFlow.execute();
  }

  else
  {
    v7 = v2[96];
    v8 = v2[92];

    __swift_destroy_boxed_opaque_existential_0Tm(v2 + 24);
    v6 = RedirectToServerFlow.execute();
  }

  return _swift_task_switch(v6, 0, 0);
}

{
  v19 = *(v0 + 752);
  v20 = *(v0 + 744);
  v18 = *(v0 + 728);
  v1 = *(v0 + 696);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 584);
  v5 = *(v0 + 560);
  v6 = *(v0 + 552);
  v7 = *(v0 + 544);
  v21 = *(v0 + 760);
  v8 = *(v0 + 536);
  static Device.current.getter();
  (*(v2 + 16))(v8, v1, v3);
  (*(v2 + 56))(v8, 0, 1, v3);
  *(v0 + 304) = 0;
  *(v0 + 272) = 0u;
  *(v0 + 288) = 0u;
  static AceOutputHelper.makeCompletionViewOutput(templateResult:deviceState:ttsEnabled:snippetAceViews:listenAfterSpeaking:canUseServerTTS:nlContextUpdate:additionalCommands:flowActivity:)();
  outlined destroy of Mirror.DisplayStyle?(v0 + 272, &_s11SiriKitFlow0C8Activity_pSgMd, &_s11SiriKitFlow0C8Activity_pSgMR);
  outlined destroy of Mirror.DisplayStyle?(v8, &_s11SiriKitFlow15NLContextUpdateVSgMd, &_s11SiriKitFlow15NLContextUpdateVSgMR);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 232));
  static Device.current.getter();
  v9 = type metadata accessor for GeoRCHFlowFactoryImpl();
  inited = swift_initStackObject();
  *(v0 + 792) = inited;
  *(v0 + 80) = v9;
  *(v0 + 88) = &protocol witness table for GeoRCHFlowFactoryImpl;
  *(v0 + 56) = inited;
  *(v0 + 96) = static DialogHelper.globals.getter();
  static AceService.currentAsync.getter();
  static OutputPublisherFactory.makeOutputPublisherAsync()();
  v11 = swift_initStackObject();
  *(v0 + 800) = v11;
  *(v11 + 24) = [v19 bundleForClass:{v20, v0 + 272}];
  *(v11 + 32) = OS_os_log.init(subsystem:category:)();
  *(v11 + 16) = 0;
  *(v0 + 184) = v11;
  outlined init with copy of DeviceState(v0 + 144, v0 + 352);
  outlined destroy of FlowHelperImpl(v0 + 16);
  v12 = *(v0 + 376);
  v13 = *(v0 + 384);
  __swift_project_boxed_opaque_existential_1((v0 + 352), v12);
  *(v0 + 416) = v7;
  *(v0 + 424) = &protocol witness table for AceOutput;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 392));
  (*(v6 + 16))(boxed_opaque_existential_0, v5, v7);
  v15 = async function pointer to dispatch thunk of OutputPublisherAsync.publish(output:)[1];
  v16 = swift_task_alloc();
  *(v0 + 808) = v16;
  *v16 = v0;
  v16[1] = RedirectToServerFlow.execute();

  return dispatch thunk of OutputPublisherAsync.publish(output:)(v0 + 392, v12, v13);
}

{
  v2 = *v1;
  v3 = *(*v1 + 808);
  v6 = *v1;
  *(*v1 + 816) = v0;

  if (v0)
  {
    v4 = RedirectToServerFlow.execute();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm((v2 + 392));
    v4 = RedirectToServerFlow.execute();
  }

  return _swift_task_switch(v4, 0, 0);
}

{
  v1 = v0[90];
  v2 = v0[73];
  v3 = v0[72];
  v4 = v0[71];
  v5 = v0[70];
  v6 = v0[69];
  v7 = v0[68];
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 44);
  static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)();
  (*(v6 + 8))(v5, v7);
  (*(v3 + 8))(v2, v4);
  v8 = v0[90];
  v19 = v0[88];
  v20 = v0[89];
  v9 = v0[87];
  v10 = v0[86];
  v11 = v0[84];
  v12 = v0[83];
  v21 = v0[85];
  v22 = v0[82];
  v23 = v0[81];
  v24 = v0[78];
  v25 = v0[75];
  v26 = v0[74];
  v27 = v0[73];
  v28 = v0[70];
  v29 = v0[67];
  v13 = v0[66];
  v14 = v0[65];
  v15 = v0[64];
  v16 = v0[62];
  static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)();
  (*(v14 + 104))(v13, enum case for FlowUnhandledReason.needsInfoDomainFallback(_:), v15);
  static ExecuteResponse.unhandled(reason:isComplete:)();
  outlined consume of Data?(v19, v20);
  (*(v14 + 8))(v13, v15);
  (*(v10 + 8))(v9, v21);
  (*(v12 + 8))(v11, v22);

  v17 = v0[1];

  return v17();
}

{
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 24);
  v1 = v0[98];
  v2 = v0[90];
  static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)();

  v3 = v0[90];
  v14 = v0[88];
  v15 = v0[89];
  v4 = v0[87];
  v5 = v0[86];
  v6 = v0[84];
  v7 = v0[83];
  v16 = v0[85];
  v17 = v0[82];
  v18 = v0[81];
  v19 = v0[78];
  v20 = v0[75];
  v21 = v0[74];
  v22 = v0[73];
  v23 = v0[70];
  v24 = v0[67];
  v8 = v0[66];
  v9 = v0[65];
  v10 = v0[64];
  v11 = v0[62];
  static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)();
  (*(v9 + 104))(v8, enum case for FlowUnhandledReason.needsInfoDomainFallback(_:), v10);
  static ExecuteResponse.unhandled(reason:isComplete:)();
  outlined consume of Data?(v14, v15);
  (*(v9 + 8))(v8, v10);
  (*(v5 + 8))(v4, v16);
  (*(v7 + 8))(v6, v17);

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[73];
  v2 = v0[72];
  v3 = v0[71];
  (*(v0[69] + 8))(v0[70], v0[68]);
  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 49);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 44);
  v4 = v0[102];
  v5 = v0[90];
  static os_log_type_t.error.getter();
  os_log(_:dso:log:_:_:)();

  v6 = v0[90];
  v17 = v0[88];
  v18 = v0[89];
  v7 = v0[87];
  v8 = v0[86];
  v9 = v0[84];
  v10 = v0[83];
  v19 = v0[85];
  v20 = v0[82];
  v21 = v0[81];
  v22 = v0[78];
  v23 = v0[75];
  v24 = v0[74];
  v25 = v0[73];
  v26 = v0[70];
  v27 = v0[67];
  v11 = v0[66];
  v12 = v0[65];
  v13 = v0[64];
  v14 = v0[62];
  static os_log_type_t.info.getter();
  os_log(_:dso:log:_:_:)();
  (*(v12 + 104))(v11, enum case for FlowUnhandledReason.needsInfoDomainFallback(_:), v13);
  static ExecuteResponse.unhandled(reason:isComplete:)();
  outlined consume of Data?(v17, v18);
  (*(v12 + 8))(v11, v13);
  (*(v8 + 8))(v7, v19);
  (*(v10 + 8))(v9, v20);

  v15 = v0[1];

  return v15();
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined copy of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t outlined consume of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Data._Representation(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t RedirectToServerFlow.execute(completion:)()
{
  type metadata accessor for RedirectToServerFlow();
  lazy protocol witness table accessor for type PommesContext and conformance PommesContext(&lazy protocol witness table cache variable for type RedirectToServerFlow and conformance RedirectToServerFlow, v0, type metadata accessor for RedirectToServerFlow);
  return Flow.deferToExecuteAsync(_:)();
}

uint64_t TrafficIncidentBaseRCHStrategy.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t RedirectToServerFlow.__allocating_init()()
{
  v0 = swift_allocObject();
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

uint64_t RedirectToServerFlow.init()()
{
  type metadata accessor for OS_os_log();
  *(v0 + 16) = OS_os_log.init(subsystem:category:)();
  return v0;
}

void (*protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance RedirectToServerFlow(uint64_t *a1))(void *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  v4 = *v1;
  *(v3 + 32) = SiriEnvironmentLocating<>.siriEnvironment.modify();
  return protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance RedirectToServerFlow;
}

void protocol witness for SiriEnvironmentLocating.siriEnvironment.modify in conformance RedirectToServerFlow(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t protocol witness for Flow.execute() in conformance RedirectToServerFlow(uint64_t a1)
{
  v4 = *(**v1 + 96);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance ShareETAPromptForContactStrategy;

  return v8(a1);
}

uint64_t protocol witness for Flow.exitValue.getter in conformance RedirectToServerFlow(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RedirectToServerFlow();

  return Flow<>.exitValue.getter(v3, a2);
}

uint64_t lazy protocol witness table accessor for type PommesContext and conformance PommesContext(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void static GeoParse.getDomainIntent(parse:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v135 = a2;
  v3 = type metadata accessor for Siri_Nlu_External_UserParse();
  v125 = *(v3 - 8);
  v126 = v3;
  v4 = *(v125 + 64);
  __chkstk_darwin(v3);
  v124 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v127 = *(v6 - 8);
  v128 = v6;
  v7 = *(v127 + 64);
  v8 = __chkstk_darwin(v6);
  v120 = &v118 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v123 = &v118 - v10;
  v131 = type metadata accessor for USOParse();
  v133 = *(v131 - 8);
  v11 = *(v133 + 64);
  __chkstk_darwin(v131);
  v132 = &v118 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode();
  v121 = *(v122 - 8);
  v13 = *(v121 + 64);
  __chkstk_darwin(v122);
  v130 = &v118 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v129 = *(v15 - 8);
  v16 = *(v129 + 64);
  __chkstk_darwin(v15);
  v18 = &v118 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v22 = &v118 - v21;
  v23 = type metadata accessor for NLIntent();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v119 = &v118 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v26);
  v134 = &v118 - v29;
  __chkstk_darwin(v28);
  v31 = &v118 - v30;
  v32 = type metadata accessor for Parse();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  __chkstk_darwin(v32);
  v36 = (&v118 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v33 + 16))(v36, a1, v32);
  v37 = (*(v33 + 88))(v36, v32);
  if (v37 != enum case for Parse.NLv3IntentOnly(_:))
  {
    v118 = v24;
    v42 = v23;
    if (v37 == enum case for Parse.pommesResponse(_:))
    {
      (*(v33 + 96))(v36, v32);
      v43 = *v36;
      v44 = PommesResponse.firstGeoExperience.getter();
      if (v44)
      {
        v45 = v44;
        GeoExperience.geoClientComponent.getter();
        v46 = Apple_Parsec_Siri_V2alpha_GeoClientComponent.hasLocationSearchNode.getter();
        v47 = *(v129 + 8);
        v47(v18, v15);
        if ((v46 & 1) == 0)
        {

          goto LABEL_5;
        }

        GeoExperience.geoClientComponent.getter();
        v48 = v130;
        Apple_Parsec_Siri_V2alpha_GeoClientComponent.locationSearchNode.getter();
        v47(v18, v15);
        type metadata accessor for LocationSearchIntentBuilder();
        swift_allocObject();
        v49 = *LocationSearchIntentBuilder.init()();
        v50 = (*(v49 + 376))(v48);

        v52 = v134;
        (*(*v50 + 456))(v51);

        v53 = v118;
        v54 = v119;
        (*(v118 + 16))(v119, v52, v42);
        v55 = type metadata accessor for LocationSearchIntent();
        v56 = *(v55 + 48);
        v57 = *(v55 + 52);
        v58 = swift_allocObject();
        v59 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
        if (one-time initialization token for domainNode != -1)
        {
          swift_once();
        }

        *(v58 + v59) = static LocationSearchIntent.domainNode;
        (*(v53 + 32))(v58 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent, v54, v42);
        v60 = v135;
        v135[3] = v55;
        v60[4] = &protocol witness table for LocationSearchIntent;

        *v60 = v58;
        (*(v53 + 8))(v52, v42);
        (*(v121 + 8))(v130, v122);
      }

      else
      {
        v87 = v135;
        v135[4] = 0;
        *v87 = 0u;
        *(v87 + 1) = 0u;
      }

      return;
    }

    if (v37 != enum case for Parse.uso(_:))
    {
      v86 = v135;
      v135[4] = 0;
      *v86 = 0u;
      *(v86 + 1) = 0u;
      (*(v33 + 8))(v36, v32);
      return;
    }

    (*(v33 + 96))(v36, v32);
    v66 = v132;
    v65 = v133;
    v67 = v131;
    (*(v133 + 32))(v132, v36, v131);
    v68 = v124;
    USOParse.userParse.getter();
    v69 = Siri_Nlu_External_UserParse.userDialogActs.getter();
    (*(v125 + 8))(v68, v126);
    if (!*(v69 + 16))
    {

      (*(v65 + 8))(v66, v67);
      goto LABEL_5;
    }

    v71 = v127;
    v70 = v128;
    v72 = v120;
    (*(v127 + 16))(v120, v69 + ((*(v71 + 80) + 32) & ~*(v71 + 80)), v128);

    v73 = v123;
    (*(v71 + 32))(v123, v72, v70);
    type metadata accessor for LocationSearchIntentBuilder();
    swift_allocObject();
    v74 = LocationSearchIntentBuilder.init()();
    if (Siri_Nlu_External_UserDialogAct.hasCancelled.getter())
    {
      v75 = 2;
      v76 = v42;
      v77 = v134;
    }

    else
    {
      v88 = Siri_Nlu_External_UserDialogAct.hasAccepted.getter();
      v76 = v42;
      v77 = v134;
      if (v88)
      {
        v75 = 0;
      }

      else
      {
        if ((Siri_Nlu_External_UserDialogAct.hasRejected.getter() & 1) == 0)
        {
          goto LABEL_32;
        }

        v75 = 1;
      }
    }

    v69 = (*(*v74 + 408))(v75);

    v74 = v69;
LABEL_32:
    v89 = v73;
    v90 = Siri_Nlu_External_UserDialogAct.getTasks()();
    if (v90 >> 62)
    {
      v69 = v90;
      v110 = _CocoaArrayWrapper.endIndex.getter();
      v90 = v69;
      if (v110)
      {
LABEL_34:
        if ((v90 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(&dword_10 + (v90 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
            goto LABEL_74;
          }

          v91 = *(v90 + 32);
        }

        static UsoTask_CodegenConverter.convert(task:)();

        outlined init with copy of Any?(v138, v136);
        if (v137)
        {
          type metadata accessor for UsoTask_noVerb_common_Person();
          if (swift_dynamicCast())
          {

            dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();
            if (v136[0])
            {
              v92 = dispatch thunk of UsoEntity_common_Person.name.getter();
              v94 = v93;

              if (v94)
              {
                v95 = (*(*v74 + 440))(v92, v94);

                v74 = v95;
              }
            }

            dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

            if (v136[0] && (v96 = dispatch thunk of UsoEntity_common_Person.identifyingRelationship.getter(), , v96) && (v97 = dispatch thunk of UsoEntity_common_PersonRelationship.relationshipType.getter(), v99 = v98, , v99))
            {
              v100 = (*(*v74 + 432))(v97, v99);

              v74 = v100;
            }

            else
            {
            }
          }
        }

        else
        {
          outlined destroy of Mirror.DisplayStyle?(v136, &_sypSgMd, &_sypSgMR);
        }

        outlined init with copy of Any?(v138, v136);
        if (v137)
        {
          type metadata accessor for UsoTask_noVerb_common_PersonRelationship();
          if (swift_dynamicCast())
          {

            dispatch thunk of Uso_VerbTemplate_NoVerb.entity.getter();

            if (v136[0] && (v101 = dispatch thunk of UsoEntity_common_PersonRelationship.relationshipType.getter(), v103 = v102, , v103))
            {
              v104 = (*(*v74 + 432))(v101, v103);

              v74 = v104;
            }

            else
            {
            }
          }
        }

        else
        {
          outlined destroy of Mirror.DisplayStyle?(v136, &_sypSgMd, &_sypSgMR);
        }

        outlined init with copy of Any?(v138, v136);
        if (v137)
        {
          type metadata accessor for UsoTask_share_common_Message();
          v105 = swift_dynamicCast();
          if ((v105 & 1) == 0)
          {
            goto LABEL_66;
          }

          dispatch thunk of Uso_VerbTemplate_Target.target.getter();

          if (v136[0])
          {
            v106 = dispatch thunk of UsoEntity_common_Message.recipients.getter();

            if (v106)
            {
              if (v106 >> 62)
              {
                if (_CocoaArrayWrapper.endIndex.getter())
                {
LABEL_61:
                  if ((v106 & 0xC000000000000001) != 0)
                  {
                    specialized _ArrayBuffer._getElementSlowPath(_:)();
                    swift_unknownObjectRelease();
                  }

                  else if (!*(&dword_10 + (v106 & 0xFFFFFFFFFFFFFF8)))
                  {
                    __break(1u);
                    return;
                  }
                }
              }

              else if (*(&dword_10 + (v106 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_61;
              }

              goto LABEL_66;
            }
          }
        }

        else
        {
          v105 = outlined destroy of Mirror.DisplayStyle?(v136, &_sypSgMd, &_sypSgMR);
        }

LABEL_66:
        v77 = v134;
        (*(*v74 + 456))(v105);
        v89 = type metadata accessor for LocationSearchIntent();
        v107 = *(v89 + 48);
        v108 = *(v89 + 52);
        v69 = swift_allocObject();
        v72 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
        if (one-time initialization token for domainNode == -1)
        {
LABEL_67:
          *(v69 + v72) = static LocationSearchIntent.domainNode;
          (*(v118 + 32))(v69 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent, v77, v76);
          v109 = v135;
          v135[3] = v89;
          v109[4] = &protocol witness table for LocationSearchIntent;

          *v109 = v69;
          outlined destroy of Mirror.DisplayStyle?(v138, &_sypSgMd, &_sypSgMR);
          (*(v127 + 8))(v73, v128);
          (*(v133 + 8))(v132, v131);
          return;
        }

LABEL_74:
        swift_once();
        goto LABEL_67;
      }
    }

    else if (*(&dword_10 + (v90 & 0xFFFFFFFFFFFFFF8)))
    {
      goto LABEL_34;
    }

    (*(*v74 + 456))(v111);
    v112 = type metadata accessor for LocationSearchIntent();
    v113 = *(v112 + 48);
    v114 = *(v112 + 52);
    v115 = swift_allocObject();
    v116 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
    if (one-time initialization token for domainNode != -1)
    {
      swift_once();
    }

    *(v115 + v116) = static LocationSearchIntent.domainNode;
    (*(v118 + 32))(v115 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent, v77, v76);
    v117 = v135;
    v135[3] = v112;
    v117[4] = &protocol witness table for LocationSearchIntent;

    *v117 = v115;
    (*(v127 + 8))(v73, v128);
    (*(v133 + 8))(v132, v67);
    return;
  }

  (*(v33 + 96))(v36, v32);
  v38 = *(v24 + 32);
  v38(v31, v36, v23);
  NLIntent.domainNode.getter();
  v39 = type metadata accessor for NonTerminalIntentNode();
  v40 = *(v39 - 8);
  if ((*(v40 + 48))(v22, 1, v39) == 1)
  {
    outlined destroy of Mirror.DisplayStyle?(v22, &_s12SiriOntology21NonTerminalIntentNodeVSgMd, &_s12SiriOntology21NonTerminalIntentNodeVSgMR);
LABEL_4:
    (*(v24 + 8))(v31, v23);
LABEL_5:
    v41 = v135;
    v135[4] = 0;
    *v41 = 0u;
    *(v41 + 1) = 0u;
    return;
  }

  v132 = v38;
  v133 = v24 + 32;
  v61 = NonTerminalIntentNode.ontologyNodeName.getter();
  v63 = v62;
  (*(v40 + 8))(v22, v39);
  if (v61 == 0x6E6F697461636F6CLL && v63 == 0xEE00686372616553)
  {

    v64 = v134;
  }

  else
  {
    v78 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v64 = v134;
    if ((v78 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  (*(v24 + 16))(v64, v31, v23);
  v79 = type metadata accessor for LocationSearchIntent();
  v80 = *(v79 + 48);
  v81 = *(v79 + 52);
  v82 = swift_allocObject();
  v83 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
  if (one-time initialization token for domainNode != -1)
  {
    swift_once();
  }

  *(v82 + v83) = static LocationSearchIntent.domainNode;
  (v132)(v82 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent, v64, v23);
  v84 = v135;
  v135[3] = v79;
  v84[4] = &protocol witness table for LocationSearchIntent;
  *v84 = v82;
  v85 = *(v24 + 8);

  v85(v31, v23);
}

GeoFlowDelegatePlugin::GeoIntentType_optional __swiftcall GeoIntentType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GeoIntentType.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = GeoFlowDelegatePlugin_GeoIntentType_locationSearch;
  }

  else
  {
    v4.value = GeoFlowDelegatePlugin_GeoIntentType_unknownDefault;
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

uint64_t GeoIntentType.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x6165536C61636F6CLL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GeoIntentType(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v4 = 0x6165536C61636F6CLL;
  }

  if (v3)
  {
    v5 = 0xEB00000000686372;
  }

  else
  {
    v5 = 0xEE00686372616553;
  }

  if (*a2)
  {
    v6 = 0x6E6F697461636F6CLL;
  }

  else
  {
    v6 = 0x6165536C61636F6CLL;
  }

  if (*a2)
  {
    v7 = 0xEE00686372616553;
  }

  else
  {
    v7 = 0xEB00000000686372;
  }

  if (v4 == v6 && v5 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GeoIntentType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GeoIntentType()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GeoIntentType()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GeoIntentType@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GeoIntentType.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GeoIntentType(uint64_t *a1@<X8>)
{
  v2 = 0x6165536C61636F6CLL;
  if (*v1)
  {
    v2 = 0x6E6F697461636F6CLL;
  }

  v3 = 0xEB00000000686372;
  if (*v1)
  {
    v3 = 0xEE00686372616553;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t static GeoParse.getDomainIntent(input:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Parse();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Input.parse.getter();
  static GeoParse.getDomainIntent(parse:)(v6, a1);
  return (*(v3 + 8))(v6, v2);
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type GeoIntentType and conformance GeoIntentType()
{
  result = lazy protocol witness table cache variable for type GeoIntentType and conformance GeoIntentType;
  if (!lazy protocol witness table cache variable for type GeoIntentType and conformance GeoIntentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GeoIntentType and conformance GeoIntentType);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoIntentType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for GeoIntentType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t ShareETAContactDisambiguationStrategy.isUSO.setter(char a1)
{
  result = swift_beginAccess();
  *(v1 + 81) = a1;
  return result;
}

uint64_t ShareETAContactDisambiguationStrategy.disambiguationItems.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 88);
}

uint64_t ShareETAContactDisambiguationStrategy.disambiguationItems.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 88);
  *(v1 + 88) = a1;
}

Swift::Int ShareETAContactDisambiguationStrategy.ContactDisambiguationStrategyError.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

uint64_t ShareETAContactDisambiguationStrategy.__allocating_init(isPommes:isUSO:skeletonPerson:flowHelper:catService:)(char a1, char a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v10 = swift_allocObject();
  v11 = a4[3];
  v12 = a4[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a4, v11);
  v14 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = specialized ShareETAContactDisambiguationStrategy.init(isPommes:isUSO:skeletonPerson:flowHelper:catService:)(a1, a2, a3, v16, a5, v10, v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(a4);
  return v18;
}

uint64_t ShareETAContactDisambiguationStrategy.init(isPommes:isUSO:skeletonPerson:flowHelper:catService:)(char a1, char a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v11 = a4[3];
  v12 = a4[4];
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a4, v11);
  v14 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16);
  v18 = specialized ShareETAContactDisambiguationStrategy.init(isPommes:isUSO:skeletonPerson:flowHelper:catService:)(a1, a2, a3, v16, a5, v5, v11, v12);
  __swift_destroy_boxed_opaque_existential_0Tm(a4);
  return v18;
}

void ShareETAContactDisambiguationStrategy.actionForInput(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v126 = a2;
  v125 = type metadata accessor for Parse.DirectInvocation();
  v4 = *(v125 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v125);
  v118 = &v105 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for USOParse();
  v113 = *(v114 - 8);
  v7 = *(v113 + 64);
  v8 = __chkstk_darwin(v114);
  v108 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v112 = &v105 - v10;
  v11 = type metadata accessor for NLIntent();
  v123 = *(v11 - 8);
  v124 = v11;
  v12 = *(v123 + 64);
  v13 = __chkstk_darwin(v11);
  v121 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v122 = &v105 - v15;
  v16 = type metadata accessor for Parse();
  v128 = *(v16 - 8);
  v17 = *(v128 + 64);
  v18 = __chkstk_darwin(v16);
  v127 = (&v105 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v18);
  v21 = &v105 - v20;
  v22 = type metadata accessor for Input();
  v23 = *(v22 - 8);
  v24 = v23[8];
  v25 = __chkstk_darwin(v22);
  v109 = &v105 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v110 = &v105 - v28;
  __chkstk_darwin(v27);
  v30 = &v105 - v29;
  v107 = v2;
  v31 = *(v2 + 16);
  v32 = v23[2];
  v116 = v23 + 2;
  v115 = v32;
  v32(&v105 - v29, a1, v22);
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v31, v33);
  v117 = v23;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v119 = a1;
    v120 = v16;
    v36 = v35;
    v106 = swift_slowAlloc();
    v132[0] = v106;
    *v36 = 136315138;
    Input.parse.getter();
    v37 = String.init<A>(describing:)();
    v111 = v4;
    v39 = v38;
    v40 = v23[1];
    v41 = v22;
    v42 = v22;
    v43 = v40;
    v40(v30, v42);
    v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v39, v132);
    v4 = v111;

    *(v36 + 4) = v44;
    _os_log_impl(&dword_0, v31, v33, "actionForInput %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v106);

    a1 = v119;
    v16 = v120;
  }

  else
  {
    v45 = v23[1];
    v41 = v22;
    v46 = v22;
    v43 = v45;
    v45(v30, v46);
  }

  v47 = v127;
  Input.parse.getter();
  v48 = v128;
  v49 = (*(v128 + 88))(v47, v16);
  if (v49 == enum case for Parse.NLv3IntentOnly(_:))
  {
    (*(v48 + 96))(v47, v16);
    v51 = v122;
    v50 = v123;
    v52 = *(v123 + 32);
    v53 = v47;
    v54 = v124;
    v52(v122, v53, v124);
    v55 = v121;
    (*(v50 + 16))(v121, v51, v54);
    v56 = type metadata accessor for LocationSearchIntent();
    v57 = *(v56 + 48);
    v58 = *(v56 + 52);
    v59 = swift_allocObject();
    v60 = OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_domainOntologyNode;
    if (one-time initialization token for domainNode != -1)
    {
      swift_once();
    }

    *(v59 + v60) = static LocationSearchIntent.domainNode;
    v52((v59 + OBJC_IVAR____TtC21GeoFlowDelegatePlugin20LocationSearchIntent_intent), v55, v54);
    v132[0] = v59;
    v61 = one-time initialization token for confirmationNode;

    if (v61 != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type LocationSearchIntent and conformance LocationSearchIntent(&lazy protocol witness table cache variable for type LocationSearchIntent and conformance LocationSearchIntent, type metadata accessor for LocationSearchIntent);
    IntentNodeTraversable.value<A>(forNode:)();

    if (v130 > 1u)
    {
      if (v130 == 2)
      {

LABEL_26:
        static ActionForInput.cancel()();
LABEL_28:
        (*(v50 + 8))(v51, v54);
        return;
      }
    }

    else
    {
      v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v81)
      {
        goto LABEL_26;
      }
    }

    static ActionForInput.handle()();
    goto LABEL_28;
  }

  if (v49 == enum case for Parse.directInvocation(_:))
  {
    v119 = a1;
    (*(v48 + 96))(v47, v16);
    v62 = v118;
    (*(v4 + 32))(v118, v47, v125);
    if (Parse.DirectInvocation.identifier.getter() == 0xD00000000000002CLL && 0x80000000000BFC00 == v63)
    {

      v64 = v41;
    }

    else
    {
      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v64 = v41;
      if ((v72 & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    if (Parse.DirectInvocation.userData.getter())
    {

      static ActionForInput.handle()();
LABEL_35:
      (*(v4 + 8))(v62, v125);
      return;
    }

LABEL_23:
    v73 = static os_log_type_t.info.getter();
    v74 = v110;
    v115(v110, v119, v64);
    if (os_log_type_enabled(v31, v73))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v132[0] = v76;
      *v75 = 136315138;
      v77 = Input.description.getter();
      v111 = v4;
      v79 = v78;
      v43(v74, v64);
      v80 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v79, v132);
      v4 = v111;

      *(v75 + 4) = v80;
      _os_log_impl(&dword_0, v31, v73, "Received invalid directInvocation type for ShareETA %s.", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v76);
    }

    else
    {
      v43(v74, v64);
    }

    static ActionForInput.ignore()();
    goto LABEL_35;
  }

  if (v49 != enum case for Parse.pommesResponse(_:))
  {
    v82 = a1;
    if (v49 != enum case for Parse.uso(_:))
    {
      v85 = static os_log_type_t.info.getter();
      v86 = v109;
      v115(v109, v82, v41);
      if (os_log_type_enabled(v31, v85))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v132[0] = v88;
        *v87 = 136315138;
        v89 = Input.description.getter();
        v91 = v90;
        v43(v86, v41);
        v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v91, v132);
        v47 = v127;

        *(v87 + 4) = v92;
        _os_log_impl(&dword_0, v31, v85, "SiriGeo received unsupported parse type %s.", v87, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v88);

        v48 = v128;
      }

      else
      {
        v43(v86, v41);
      }

      static ActionForInput.ignore()();
      (*(v48 + 8))(v47, v16);
      return;
    }

    (*(v48 + 96))(v47, v16);
    (*(v113 + 32))(v112, v47, v114);
    type metadata accessor for GeoParse();
    Input.parse.getter();
    static GeoParse.getDomainIntent(parse:)(v21, &v130);
    (*(v48 + 8))(v21, v16);
    if (!v131)
    {
      outlined destroy of Mirror.DisplayStyle?(&v130, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMd, &_s21GeoFlowDelegatePlugin0A6Intent_pSgMR);
      v94 = static os_log_type_t.info.getter();
      v95 = v108;
      (*(v113 + 16))(v108, v112, v114);
      if (os_log_type_enabled(v31, v94))
      {
        v96 = v31;
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v132[0] = v98;
        *v97 = 136315138;
        v99 = USOParse.debugDescription.getter();
        v101 = v100;
        v102 = *(v113 + 8);
        v102(v95, v114);
        v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v99, v101, v132);

        *(v97 + 4) = v103;
        _os_log_impl(&dword_0, v96, v94, "SiriGeo received a USO parse it doesn't support %s.", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v98);
      }

      else
      {
        v102 = *(v113 + 8);
        v102(v95, v114);
      }

      static ActionForInput.ignore()();
      v102(v112, v114);
      return;
    }

    outlined init with take of CATType(&v130, v132);
    outlined init with copy of DeviceState(v132, &v130);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21GeoFlowDelegatePlugin0A6Intent_pMd, &_s21GeoFlowDelegatePlugin0A6Intent_pMR);
    type metadata accessor for LocationSearchIntent();
    v83 = swift_dynamicCast();
    v84 = (*(*v129 + 152))(v83);

    if (v84 > 1u)
    {
      if (v84 == 2)
      {

LABEL_52:
        static ActionForInput.cancel()();
LABEL_54:
        __swift_destroy_boxed_opaque_existential_0Tm(v132);
        (*(v113 + 8))(v112, v114);
        return;
      }
    }

    else
    {
      v104 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v104)
      {
        goto LABEL_52;
      }
    }

    (*(*v107 + 152))(1);
    static ActionForInput.handle()();
    goto LABEL_54;
  }

  (*(v48 + 96))(v47, v16);
  v65 = *v47;
  v66 = type metadata accessor for LocationSearchIntent();
  v67 = *(v66 + 48);
  v68 = *(v66 + 52);
  swift_allocObject();
  v69 = v65;
  v70 = LocationSearchIntent.init(from:)(v69);
  v71 = (*(*v70 + 152))(v70);

  if (v71 > 1u)
  {
    if (v71 == 2)
    {

LABEL_41:
      static ActionForInput.cancel()();

      return;
    }
  }

  else
  {
    v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v93)
    {
      goto LABEL_41;
    }
  }

  static ActionForInput.handle()();
}

uint64_t ShareETAContactDisambiguationStrategy.parseDisambiguationResponse(input:paginatedItems:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[20] = a3;
  v4[21] = v3;
  v4[18] = a1;
  v4[19] = a2;
  v5 = type metadata accessor for Parse.DirectInvocation();
  v4[22] = v5;
  v6 = *(v5 - 8);
  v4[23] = v6;
  v7 = *(v6 + 64) + 15;
  v4[24] = swift_task_alloc();
  v8 = type metadata accessor for Google_Protobuf_StringValue();
  v4[25] = v8;
  v9 = *(v8 - 8);
  v4[26] = v9;
  v10 = *(v9 + 64) + 15;
  v4[27] = swift_task_alloc();
  v11 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier();
  v4[28] = v11;
  v12 = *(v11 - 8);
  v4[29] = v12;
  v13 = *(v12 + 64) + 15;
  v4[30] = swift_task_alloc();
  v14 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v4[31] = v14;
  v15 = *(v14 - 8);
  v4[32] = v15;
  v16 = *(v15 + 64) + 15;
  v4[33] = swift_task_alloc();
  v17 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v4[34] = v17;
  v18 = *(v17 - 8);
  v4[35] = v18;
  v19 = *(v18 + 64) + 15;
  v4[36] = swift_task_alloc();
  v20 = type metadata accessor for Siri_Nlu_External_UserParse();
  v4[37] = v20;
  v21 = *(v20 - 8);
  v4[38] = v21;
  v22 = *(v21 + 64) + 15;
  v4[39] = swift_task_alloc();
  v23 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v4[40] = v23;
  v24 = *(v23 - 8);
  v4[41] = v24;
  v25 = *(v24 + 64) + 15;
  v4[42] = swift_task_alloc();
  v26 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMd, &_s12SiriNLUTypes0A33_Nlu_External_UsoEntityIdentifierVSgMR) - 8) + 64) + 15;
  v4[43] = swift_task_alloc();
  v27 = type metadata accessor for USOParse();
  v4[44] = v27;
  v28 = *(v27 - 8);
  v4[45] = v28;
  v29 = *(v28 + 64) + 15;
  v4[46] = swift_task_alloc();
  v4[47] = swift_task_alloc();
  v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LocationSearchNode();
  v4[48] = v30;
  v31 = *(v30 - 8);
  v4[49] = v31;
  v32 = *(v31 + 64) + 15;
  v4[50] = swift_task_alloc();
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v4[51] = v33;
  v34 = *(v33 - 8);
  v4[52] = v34;
  v35 = *(v34 + 64) + 15;
  v4[53] = swift_task_alloc();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMd, &_s11SiriKitFlow22PaginatedItemContainerVySo8INPersonCGMR);
  v4[54] = v36;
  v37 = *(v36 - 8);
  v4[55] = v37;
  v38 = *(v37 + 64) + 15;
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v39 = type metadata accessor for Input();
  v4[59] = v39;
  v40 = *(v39 - 8);
  v4[60] = v40;
  v41 = *(v40 + 64) + 15;
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v42 = type metadata accessor for NLIntent();
  v4[63] = v42;
  v43 = *(v42 - 8);
  v4[64] = v43;
  v44 = *(v43 + 64) + 15;
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v45 = type metadata accessor for Parse();
  v4[67] = v45;
  v46 = *(v45 - 8);
  v4[68] = v46;
  v47 = *(v46 + 64) + 15;
  v4[69] = swift_task_alloc();
  v4[70] = swift_task_alloc();

  return _swift_task_switch(ShareETAContactDisambiguationStrategy.parseDisambiguationResponse(input:paginatedItems:), 0, 0);
}