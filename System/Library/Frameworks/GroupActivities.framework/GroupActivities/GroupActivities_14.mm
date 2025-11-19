uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001AF01D970 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AbsoluteSpatialTemplateOutput.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v10 = v1[2];
  v13 = v1[1];
  v14 = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v9;
  v17 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementOGMd, &_sSay15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementOGMR);
  lazy protocol witness table accessor for type [AbsoluteSpatialTemplateOutput.Element] and conformance <A> [A](&lazy protocol witness table cache variable for type [AbsoluteSpatialTemplateOutput.Element] and conformance <A> [A], lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element);
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v2)
  {
    v15 = v13;
    v16 = v14;
    v17 = 1;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role();

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

void AbsoluteSpatialTemplateOutput.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  specialized Array<A>.hash(into:)(a1, *v1);
  if (v3)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int AbsoluteSpatialTemplateOutput.hashValue.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t AbsoluteSpatialTemplateOutput.init(from:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementOGMd, &_sSay15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementOGMR);
  v16 = 0;
  lazy protocol witness table accessor for type [AbsoluteSpatialTemplateOutput.Element] and conformance <A> [A](&lazy protocol witness table cache variable for type [AbsoluteSpatialTemplateOutput.Element] and conformance <A> [A], lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v15[0];
  v16 = 1;
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v12 = v15[0];
  v13 = v15[1];
  *a2 = v11;
  a2[1] = v12;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AbsoluteSpatialTemplateOutput()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AbsoluteSpatialTemplateOutput(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[2];
  specialized Array<A>.hash(into:)(a1, *v1);
  if (v3)
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AbsoluteSpatialTemplateOutput()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v5, v2);
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PresentationTemplateOutput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001ELL && 0x80000001AF01D990 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PresentationTemplateOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PresentationTemplateOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PresentationTemplateOutput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities26PresentationTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities26PresentationTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

Swift::Int PresentationTemplateOutput.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t PresentationTemplateOutput.init(from:)@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities26PresentationTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities26PresentationTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v11 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PresentationTemplateOutput(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities26PresentationTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities26PresentationTemplateOutputV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PresentationTemplateOutput()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PresentationTemplateOutput()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t static AbsoluteSpatialTemplateOutput.Element.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  v8 = *(a2 + 96);
  v30 = *(a1 + 96);
  v31 = v8;
  v10 = *a1;
  v9 = a1[1];
  v24 = v2;
  v25 = v3;
  v23[0] = v10;
  v23[1] = v9;
  v26 = v4;
  v11 = a1[5];
  v27 = a1[4];
  v28 = v11;
  v29 = v30;
  v13 = *a2;
  v12 = a2[1];
  v17 = v5;
  v18 = v6;
  v16[0] = v13;
  v16[1] = v12;
  v19 = v7;
  v14 = a2[5];
  v20 = a2[4];
  v21 = v14;
  v22 = v8;
  return specialized static AbsoluteSpatialTemplateOutput.Element.Seat.== infix(_:_:)(v23, v16) & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1952540019 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO14SeatCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO14SeatCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v22 - v12;
  v14 = v2[1];
  v25 = *v2;
  v24 = v14;
  v15 = *(v2 + 5);
  v23 = *(v2 + 4);
  v22 = v15;
  v16 = *(v2 + 6);
  v17 = *(v2 + 96);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v36 = v17;
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v30 = v23;
  v31 = v22;
  v28 = v25;
  v29 = v24;
  v32 = v16;
  v19 = v2[5];
  v33 = v2[4];
  v34 = v19;
  v35 = v36;
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat();
  v20 = v26;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v27 + 8))(v8, v20);
  return (*(v10 + 8))(v13, v9);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[6];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[10];
  v10 = *(v0 + 96);
  MEMORY[0x1B2715040](0);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1B2715040](0);
  SPVector3D.hash(into:)();
  SPAngle.hash(into:)();
  if (v10)
  {
    MEMORY[0x1B2715040](1);
    return MEMORY[0x1B2715040](v7);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    return SPVector3D.hash(into:)();
  }
}

Swift::Int AbsoluteSpatialTemplateOutput.Element.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[6];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[10];
  v10 = *(v0 + 96);
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1B2715040](0);
  SPVector3D.hash(into:)();
  SPAngle.hash(into:)();
  if (v10)
  {
    MEMORY[0x1B2715040](1);
    MEMORY[0x1B2715040](v7);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t AbsoluteSpatialTemplateOutput.Element.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO14SeatCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO14SeatCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v26 = *(v3 - 8);
  v4 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v27 = *(v7 - 8);
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys();
  v12 = v41;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    goto LABEL_6;
  }

  v13 = v26;
  v41 = a1;
  v14 = KeyedDecodingContainer.allKeys.getter();
  v15 = (2 * *(v14 + 16)) | 1;
  v37 = v14;
  v38 = v14 + 32;
  v39 = 0;
  v40 = v15;
  v16 = v10;
  if ((specialized Collection<>.popFirst()() & 1) != 0 || v39 != v40 >> 1)
  {
    v18 = type metadata accessor for DecodingError();
    swift_allocError();
    v20 = v19;
    v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v20 = &type metadata for AbsoluteSpatialTemplateOutput.Element;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6AF8], v18);
    swift_willThrow();
    (*(v27 + 8))(v16, v7);
    swift_unknownObjectRelease();
    a1 = v41;
LABEL_6:
    v23 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v23);
  }

  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v27;
  (*(v13 + 8))(v6, v3);
  (*(v17 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v28[4] = v34;
  v28[5] = v35;
  v29 = v36;
  v28[0] = v30;
  v28[1] = v31;
  v28[2] = v32;
  v28[3] = v33;
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(v28, v25);
  v23 = v41;
  return __swift_destroy_boxed_opaque_existential_0(v23);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AbsoluteSpatialTemplateOutput.Element()
{
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(v0, v3);
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(v3, v2);
  Hasher.init(_seed:)();
  AbsoluteSpatialTemplateOutput.Element.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AbsoluteSpatialTemplateOutput.Element()
{
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(v0, v3);
  outlined init with take of AbsoluteSpatialTemplateOutput.Element(v3, v2);
  Hasher.init(_seed:)();
  AbsoluteSpatialTemplateOutput.Element.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AbsoluteSpatialTemplateOutput.Element(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a1 + 6);
  v5 = *(a2 + 4);
  v6 = *(a2 + 5);
  v7 = *(a2 + 6);
  v8 = *(a2 + 96);
  v30 = *(a1 + 96);
  v31 = v8;
  v10 = *a1;
  v9 = a1[1];
  v24 = v2;
  v25 = v3;
  v23[0] = v10;
  v23[1] = v9;
  v26 = v4;
  v11 = a1[5];
  v27 = a1[4];
  v28 = v11;
  v29 = v30;
  v13 = *a2;
  v12 = a2[1];
  v17 = v5;
  v18 = v6;
  v16[0] = v13;
  v16[1] = v12;
  v19 = v7;
  v14 = a2[5];
  v20 = a2[4];
  v21 = v14;
  v22 = v8;
  return specialized static AbsoluteSpatialTemplateOutput.Element.Seat.== infix(_:_:)(v23, v16) & 1;
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Seat.role.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

__n128 AbsoluteSpatialTemplateOutput.Element.Seat.position.getter@<Q0>(__n128 *a1@<X8>)
{
  result = v1[1];
  v3 = v1[2].n128_u64[1];
  a1[1].n128_u64[0] = v1[2].n128_u64[0];
  a1[1].n128_u64[1] = v3;
  *a1 = result;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys()
{
  v1 = 0x6E6F697469736F70;
  if (*v0 != 1)
  {
    v1 = 0x6F69746365726964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701605234;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Seat.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO4SeatV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO4SeatV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v18 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[5];
  *&v23 = v1[4];
  *(&v23 + 1) = v10;
  v11 = v1[3];
  v21 = v1[2];
  v22 = v11;
  v12 = v1[6];
  v13 = *(v1 + 4);
  v18 = *(v1 + 5);
  v19 = v13;
  v20 = *(v1 + 96);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v25 = v8;
  v26 = v9;
  v30 = 0;
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role();
  v15 = v24;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

  if (!v15)
  {
    v16 = v20;
    v25 = v21;
    v26 = v22;
    v27 = v23;
    v30 = 1;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v25 = v12;
    v27 = v19;
    v28 = v18;
    v29 = v16;
    v30 = 2;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Seat.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[6];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[10];
  v8 = *(v0 + 96);
  if (v0[1])
  {
    v9 = *v0;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1B2715040](0);
  SPVector3D.hash(into:)();
  SPAngle.hash(into:)();
  if (v8)
  {
    MEMORY[0x1B2715040](1);
    return MEMORY[0x1B2715040](v5);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    return SPVector3D.hash(into:)();
  }
}

Swift::Int AbsoluteSpatialTemplateOutput.Element.Seat.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[6];
  v7 = v0[8];
  v8 = v0[9];
  v9 = v0[10];
  v10 = *(v0 + 96);
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  MEMORY[0x1B2715040](0);
  SPVector3D.hash(into:)();
  SPAngle.hash(into:)();
  if (v10)
  {
    MEMORY[0x1B2715040](1);
    MEMORY[0x1B2715040](v7);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Seat.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO4SeatV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO4SeatV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v5 = *(v34 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v25 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v10 = v5;
  LOBYTE(v35) = 0;
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role();
  v11 = v34;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v12 = v42;
  v33 = v43;
  LOBYTE(v35) = 1;
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v12;
  v13 = v45;
  v29 = v43;
  v30 = v44;
  v32 = v42;
  v54 = 2;
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v10 + 8))(v8, v11);
  v14 = v55;
  v26 = v57;
  v27 = *(&v56 + 1);
  v25 = *(&v57 + 1);
  v15 = v58;
  v59 = v58;
  v16 = v13;
  v28 = v13;
  v18 = v30;
  v17 = v31;
  v34 = v56;
  *&v35 = v31;
  v19 = v33;
  *&v37 = v30;
  *(&v37 + 1) = v16;
  v20 = v29;
  *(&v36 + 1) = v29;
  *(&v35 + 1) = v33;
  *&v36 = v32;
  *&v38 = v55;
  v39 = v56;
  v40 = v57;
  v41 = v58;
  *(a2 + 96) = v58;
  v21 = v36;
  *a2 = v35;
  *(a2 + 16) = v21;
  v22 = v38;
  *(a2 + 32) = v37;
  *(a2 + 48) = v22;
  v23 = v40;
  *(a2 + 64) = v39;
  *(a2 + 80) = v23;
  outlined init with copy of AbsoluteSpatialTemplateOutput.Element.Seat(&v35, &v42);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v42 = v17;
  v43 = v19;
  v46 = v18;
  v47 = v28;
  v44 = v32;
  v45 = v20;
  v48 = v14;
  v49 = v34;
  v50 = v27;
  v51 = v26;
  v52 = v25;
  v53 = v15;
  return outlined destroy of AbsoluteSpatialTemplateOutput.Element.Seat(&v42);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AbsoluteSpatialTemplateOutput.Element.Seat()
{
  Hasher.init(_seed:)();
  AbsoluteSpatialTemplateOutput.Element.Seat.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AbsoluteSpatialTemplateOutput.Element.Seat()
{
  Hasher.init(_seed:)();
  AbsoluteSpatialTemplateOutput.Element.Seat.hash(into:)();
  return Hasher._finalize()();
}

__n128 AbsoluteSpatialTemplateOutput.Element.Seat.direction.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 96);
  *a1 = *(v1 + 48);
  result = *(v1 + 64);
  v4 = *(v1 + 80);
  *(a1 + 16) = result;
  *(a1 + 32) = v4;
  *(a1 + 48) = v2;
  return result;
}

uint64_t AbsoluteSpatialTemplateOutput.Role.identifier.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t static AbsoluteSpatialTemplateOutput.Role.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AbsoluteSpatialTemplateOutput.Role.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV4RoleV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV4RoleV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t AbsoluteSpatialTemplateOutput.Role.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int AbsoluteSpatialTemplateOutput.Role.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AbsoluteSpatialTemplateOutput.Role.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV4RoleV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV4RoleV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AbsoluteSpatialTemplateOutput.Role(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV4RoleV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV4RoleV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

double AbsoluteSpatialTemplateOutput.Element.Position.offset.getter()
{
  result = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65746E6543707061 && a2 == 0xE900000000000072)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Position.Anchor.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO19AppCenterCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO19AppCenterCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

Swift::Int AbsoluteSpatialTemplateOutput.Element.Position.Anchor.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  return Hasher._finalize()();
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Position.Anchor.init(from:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO19AppCenterCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO19AppCenterCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v29 = *(v3 - 8);
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v24 = *(v7 - 8);
  v8 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    goto LABEL_6;
  }

  v23 = a1;
  v12 = v29;
  v13 = v24;
  v14 = KeyedDecodingContainer.allKeys.getter();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  if ((specialized Collection<>.popFirst()() & 1) != 0 || v27 != v28 >> 1)
  {
    v16 = v7;
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    v20 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v19 = &type metadata for AbsoluteSpatialTemplateOutput.Element.Position.Anchor;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v16);
    swift_unknownObjectRelease();
    a1 = v23;
LABEL_6:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v22);
  }

  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v12 + 8))(v6, v3);
  (*(v13 + 8))(v10, v7);
  swift_unknownObjectRelease();
  v22 = v23;
  return __swift_destroy_boxed_opaque_existential_0(v22);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO19AppCenterCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO19AppCenterCodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV6AnchorO10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v6, v2);
  return (*(v8 + 8))(v11, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys()
{
  if (*v0)
  {
    return 0x74657366666FLL;
  }

  else
  {
    return 0x726F68636E61;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x726F68636E61 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74657366666FLL && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Position.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = v1[3];
  v15 = v1[2];
  v16 = v9;
  v10 = v1[1];
  v14 = *v1;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v17 = v14;
    v18 = v10;
    v19 = v15;
    v20 = v16;
    v21 = 1;
    type metadata accessor for SPVector3D(0);
    lazy protocol witness table accessor for type SPVector3D and conformance SPVector3D(&lazy protocol witness table cache variable for type SPVector3D and conformance SPVector3D, type metadata accessor for SPVector3D);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Position.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  MEMORY[0x1B2715040](0);
  return SPVector3D.hash(into:)();
}

Swift::Int AbsoluteSpatialTemplateOutput.Element.Position.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  SPVector3D.hash(into:)();
  return Hasher._finalize()();
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Position.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO8PositionV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v14) = 0;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    type metadata accessor for SPVector3D(0);
    v17 = 1;
    lazy protocol witness table accessor for type SPVector3D and conformance SPVector3D(&lazy protocol witness table cache variable for type SPVector3D and conformance SPVector3D, type metadata accessor for SPVector3D);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v11 = v14;
    v12 = v16;
    *(a2 + 16) = v15;
    *(a2 + 24) = v12;
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void AbsoluteSpatialTemplateOutput.Element.Direction.Anchor.hash(into:)()
{
  v1 = *v0;
  if (v0[4])
  {
    Hasher._combine(_:)(*v0);
  }

  else
  {
    v3 = v0[1];
    v2 = v0[2];
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }
}

BOOL static AbsoluteSpatialTemplateOutput.Element.Direction.Anchor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 32))
  {
    v4 = LODWORD(v2) == LODWORD(v3);
    return (*(a2 + 32) & 1) != 0 && v4;
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  else
  {
    v6 = *a1;
    v7 = *a2;
    v8 = v2 == v3;
    if (*(a1 + 8) != *(a2 + 8))
    {
      v8 = 0;
    }

    return *(a1 + 16) == *(a2 + 16) && v8;
  }
}

Swift::Int AbsoluteSpatialTemplateOutput.Element.Direction.Anchor.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v4)
  {
    Hasher._combine(_:)(v1);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.Anchor()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v4)
  {
    Hasher._combine(_:)(v1);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.Anchor()
{
  v1 = *v0;
  if (v0[4])
  {
    Hasher._combine(_:)(*v0);
  }

  else
  {
    v3 = v0[1];
    v2 = v0[2];
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.Anchor()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v4)
  {
    Hasher._combine(_:)(v1);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.Anchor(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 32))
  {
    v4 = LODWORD(v2) == LODWORD(v3);
    return (*(a2 + 32) & 1) != 0 && v4;
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  else
  {
    v6 = *a1;
    v7 = *a2;
    v8 = v2 == v3;
    if (*(a1 + 8) != *(a2 + 8))
    {
      v8 = 0;
    }

    return *(a1 + 16) == *(a2 + 16) && v8;
  }
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11ZCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11ZCodingKeysOGMR);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v27 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11YCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11YCodingKeysOGMR);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11XCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11XCodingKeysOGMR);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO10CodingKeysOGMR);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v23 - v17;
  v19 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys();
      v21 = v27;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO21AlignedWithCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO21AlignedWithCodingKeysOGMR);
  v29 = *(v3 - 8);
  v30 = v3;
  v4 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO18PositionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO18PositionCodingKeysOGMR);
  v27 = *(v7 - 8);
  v28 = v7;
  v8 = *(v27 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO10CodingKeysOGMR);
  v11 = *(v32 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v14 = &v23 - v13;
  v15 = v1[1];
  v31 = *v1;
  v16 = v1[3];
  v25 = v1[2];
  v26 = v15;
  v24 = v16;
  v17 = *(v1 + 32);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v17)
  {
    LOBYTE(v33) = 1;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys();
    v19 = v32;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v33) = v31;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis();
    v20 = v30;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v29 + 8))(v6, v20);
  }

  else
  {
    LOBYTE(v33) = 0;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys();
    v19 = v32;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v35 = v25;
    v36 = v24;
    v33 = v31;
    v34 = v26;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position();
    v21 = v28;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v27 + 8))(v10, v21);
  }

  return (*(v11 + 8))(v14, v19);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO21AlignedWithCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO21AlignedWithCodingKeysOGMR);
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v37[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO18PositionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO18PositionCodingKeysOGMR);
  v40 = *(v8 - 8);
  v9 = *(v40 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO10CodingKeysOGMR);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v37[-v15];
  v18 = a1[3];
  v17 = a1[4];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys();
  v19 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v44 = v13;
    v20 = v43;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = (2 * *(v21 + 16)) | 1;
    v49 = v21;
    v50 = v21 + 32;
    v51 = 0;
    v52 = v22;
    v23 = specialized Collection<>.popFirst()();
    v24 = v12;
    if (v23 == 2 || v51 != v52 >> 1)
    {
      v27 = type metadata accessor for DecodingError();
      swift_allocError();
      v29 = v28;
      v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
      *v29 = &unk_1F24BFB08;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
      swift_willThrow();
      (*(v44 + 8))(v16, v12);
      swift_unknownObjectRelease();
    }

    else
    {
      v39 = v16;
      v38 = v23;
      v25 = v44;
      if (v23)
      {
        LOBYTE(v45) = 1;
        lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys();
        v26 = v39;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis();
        v32 = v41;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v42 + 8))(v7, v32);
        (*(v25 + 8))(v26, v24);
        swift_unknownObjectRelease();
        v33 = 0;
        v34 = 0;
        v35 = 0;
        v36 = v45;
      }

      else
      {
        LOBYTE(v45) = 0;
        lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v40 + 8))(v11, v8);
        (*(v25 + 8))(v39, v24);
        swift_unknownObjectRelease();
        v36 = v45;
        v33 = v46;
        v34 = v47;
        v35 = v48;
      }

      *v20 = v36;
      *(v20 + 8) = v33;
      *(v20 + 16) = v34;
      *(v20 + 24) = v35;
      *(v20 + 32) = v38 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v53);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73697841707061 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys()
{
  if (*v0)
  {
    result = 0x5764656E67696C61;
  }

  else
  {
    result = 0x6E6F697469736F70;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5764656E67696C61 && a2 == 0xEB00000000687469)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v4)
  {
    MEMORY[0x1B2715040](1);
    MEMORY[0x1B2715040](v1);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor()
{
  v1 = *v0;
  if (v0[4])
  {
    MEMORY[0x1B2715040](1);
    return MEMORY[0x1B2715040](v1);
  }

  else
  {
    v4 = v0[1];
    v3 = v0[2];
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    return SPVector3D.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v4)
  {
    MEMORY[0x1B2715040](1);
    MEMORY[0x1B2715040](v1);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys()
{
  if (*v0)
  {
    result = 0x726F68636E615FLL;
  }

  else
  {
    result = 0x6E6F697461746F72;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F697461746F72 && a2 == 0xE800000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F68636E615FLL && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Direction.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *v1;
  v10 = *(v1 + 1);
  v14 = *(v1 + 2);
  v15 = v10;
  v11 = *(v1 + 48);
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v16 = v9;
  v19 = 0;
  type metadata accessor for SPAngle(0);
  lazy protocol witness table accessor for type SPVector3D and conformance SPVector3D(&lazy protocol witness table cache variable for type SPAngle and conformance SPAngle, type metadata accessor for SPAngle);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16 = v15;
    v17 = v14;
    v18 = v11;
    v19 = 1;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Direction.hash(into:)()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 48);
  SPAngle.hash(into:)();
  if (v5)
  {
    MEMORY[0x1B2715040](1);
    return MEMORY[0x1B2715040](v2);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    return SPVector3D.hash(into:)();
  }
}

Swift::Int AbsoluteSpatialTemplateOutput.Element.Direction.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = *(v0 + 48);
  Hasher.init(_seed:)();
  SPAngle.hash(into:)();
  if (v5)
  {
    MEMORY[0x1B2715040](1);
    MEMORY[0x1B2715040](v2);
  }

  else
  {
    MEMORY[0x1B2715040](0);
    MEMORY[0x1B2715040](0);
    SPVector3D.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t AbsoluteSpatialTemplateOutput.Element.Direction.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV10CodingKeys33_4C966066B1CA87A93CB119E9FD867C1FLLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v16 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    type metadata accessor for SPAngle(0);
    v18 = 0;
    lazy protocol witness table accessor for type SPVector3D and conformance SPVector3D(&lazy protocol witness table cache variable for type SPAngle and conformance SPAngle, type metadata accessor for SPAngle);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = *&v16[0];
    v18 = 1;
    lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    v12 = v17;
    v13 = v16[0];
    v14 = v16[1];
    *a2 = v11;
    *(a2 + 16) = v13;
    *(a2 + 32) = v14;
    *(a2 + 48) = v12;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t specialized static AbsoluteSpatialTemplateOutput.Element.Seat.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v3 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 64);
  v9 = *(a1 + 72);
  v8 = *(a1 + 80);
  v10 = *(a1 + 96);
  v11 = *(a2 + 8);
  v13 = *(a2 + 16);
  v12 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 48);
  v16 = *(a2 + 64);
  v18 = *(a2 + 72);
  v17 = *(a2 + 80);
  v19 = *(a2 + 96);
  if (v2)
  {
    if (v11)
    {
      if (*a1 != *a2 || v2 != v11)
      {
        v30 = *(a1 + 80);
        v32 = *(a1 + 48);
        v26 = *(a2 + 80);
        v28 = *(a1 + 24);
        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v17 = v26;
        v3 = v28;
        v8 = v30;
        v6 = v32;
        v21 = v20;
        result = 0;
        if ((v21 & 1) == 0)
        {
          return result;
        }
      }

      goto LABEL_14;
    }

    v24 = *(a1 + 8);
LABEL_10:

    return 0;
  }

  if (v11)
  {
    v23 = *(a2 + 8);
    goto LABEL_10;
  }

  v31 = *(a1 + 80);
  v33 = *(a1 + 48);
  v27 = *(a2 + 80);
  v29 = *(a1 + 24);

  v17 = v27;
  v3 = v29;
  v8 = v31;
  v6 = v33;
LABEL_14:
  result = 0;
  if (v4 == v13 && v3 == v12 && v5 == v14)
  {
    if (v6 == v15)
    {
      if (v10)
      {
        if (LOBYTE(v16) != LOBYTE(v7))
        {
          v25 = 0;
        }

        else
        {
          v25 = v19;
        }

        if (v25)
        {
          return 1;
        }
      }

      else if ((v19 & 1) == 0 && v7 == v16 && v9 == v18 && v8 == v17)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

BOOL specialized static AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 32))
  {
    v4 = (LOBYTE(v3) ^ LOBYTE(v2)) == 0;
    return (*(a2 + 32) & 1) != 0 && v4;
  }

  else if (*(a2 + 32))
  {
    return 0;
  }

  else
  {
    v6 = *a1;
    v7 = *a2;
    v8 = v2 == v3;
    if (*(a1 + 8) != *(a2 + 8))
    {
      v8 = 0;
    }

    return *(a1 + 16) == *(a2 + 16) && v8;
  }
}

BOOL specialized static AbsoluteSpatialTemplateOutput.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO_Tt1g5(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3)
  {
    if (v5)
    {
      return v2 == v4 && v3 == v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0;
    }

    goto LABEL_9;
  }

  if (v5)
  {
LABEL_9:

    return 0;
  }

  return 1;
}

uint64_t specialized static SpatialTemplatePreferenceOutput.SpatialTemplate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (!*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      v18[0] = *a1;
      v18[1] = v3;
      v18[2] = v4;
      v17[0] = v6;
      v17[1] = v7;
      v17[2] = v8;
      outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v6, v7, v8, 0);
      outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v2, v3, v4, 0);
      outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v2, v3, v4, 0);
      outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v6, v7, v8, 0);
      v10 = specialized static AbsoluteSpatialTemplateOutput.== infix(_:_:)(v18, v17);
      outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v2, v3, v4, 0);
      outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v6, v7, v8, 0);
      outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v6, v7, v8, 0);
      outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v2, v3, v4, 0);
      return v10 & 1;
    }

    v11 = *(a1 + 16);

    goto LABEL_34;
  }

  if (v5 != 1)
  {
    v12 = v4 | v3;
    if (!(v4 | v3 | v2))
    {
      if (v9 != 2 || (v8 | v7 | v6) != 0)
      {
        goto LABEL_34;
      }

      outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(0, 0, 0, 2);
      v14 = 0;
      goto LABEL_33;
    }

    if (v2 != 1 || v12 != 0)
    {
      if (v2 != 2 || v12)
      {
        if (v9 != 2 || v6 != 3 || v8 | v7)
        {
          goto LABEL_34;
        }

        outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(3, 0, 0, 2);
        v14 = 3;
      }

      else
      {
        if (v9 != 2 || v6 != 2 || v8 | v7)
        {
          goto LABEL_34;
        }

        outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(2, 0, 0, 2);
        v14 = 2;
      }

LABEL_33:
      outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v14, 0, 0, 2);
      v10 = 1;
      return v10 & 1;
    }

    if (v9 == 2 && v6 == 1 && !(v8 | v7))
    {
      v10 = 1;
      outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(1, 0, 0, 2);
      outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(1, 0, 0, 2);
      return v10 & 1;
    }

LABEL_34:
    outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v6, v7, v8, v9);
    outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v2, v3, v4, v5);
    outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v6, v7, v8, v9);
    v10 = 0;
    return v10 & 1;
  }

  if (v9 != 1)
  {
    goto LABEL_34;
  }

  outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(*a1, v3, v4, 1);
  outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v6, v7, v8, 1);
  v10 = v6 ^ v2 ^ 1;
  return v10 & 1;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.PresentationCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationTemplateOutput and conformance PresentationTemplateOutput()
{
  result = lazy protocol witness table cache variable for type PresentationTemplateOutput and conformance PresentationTemplateOutput;
  if (!lazy protocol witness table cache variable for type PresentationTemplateOutput and conformance PresentationTemplateOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationTemplateOutput and conformance PresentationTemplateOutput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationTemplateOutput and conformance PresentationTemplateOutput;
  if (!lazy protocol witness table cache variable for type PresentationTemplateOutput and conformance PresentationTemplateOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationTemplateOutput and conformance PresentationTemplateOutput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationTemplateOutput and conformance PresentationTemplateOutput;
  if (!lazy protocol witness table cache variable for type PresentationTemplateOutput and conformance PresentationTemplateOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationTemplateOutput and conformance PresentationTemplateOutput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.NoneCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SurroundCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.SideBySideCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.ConversationalCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys and conformance SpatialTemplatePreferenceOutput.SpatialTemplate.CustomAbsoluteCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput and conformance AbsoluteSpatialTemplateOutput);
  }

  return result;
}

uint64_t specialized static SpatialTemplatePreferenceOutput.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  if ((v4 & 1) == 0)
  {
    if (*a1 == *a2)
    {
      v14 = *(a2 + 8);
    }

    else
    {
      v14 = 1;
    }

    if (v14)
    {
      goto LABEL_3;
    }

LABEL_8:
    v20 = v5;
    v21 = v6;
    v22 = v7;
    v23 = v8;
    v16 = v9;
    v17 = v10;
    v18 = v11;
    v19 = v12;
    outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v5, v6, v7, v8);
    outlined copy of SpatialTemplatePreferenceOutput.SpatialTemplate(v9, v10, v11, v12);
    v13 = specialized static SpatialTemplatePreferenceOutput.SpatialTemplate.== infix(_:_:)(&v20, &v16);
    outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v16, v17, v18, v19);
    outlined consume of SpatialTemplatePreferenceOutput.SpatialTemplate(v20, v21, v22, v23);
    return v13 & 1;
  }

  if (*(a2 + 8))
  {
    goto LABEL_8;
  }

LABEL_3:
  v13 = 0;
  return v13 & 1;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.CodingKeys and conformance SpatialTemplatePreferenceOutput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CGFloat and conformance CGFloat()
{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CGFloat and conformance CGFloat;
  if (!lazy protocol witness table cache variable for type CGFloat and conformance CGFloat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CGFloat and conformance CGFloat);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate()
{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate;
  if (!lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpatialTemplatePreferenceOutput.SpatialTemplate and conformance SpatialTemplatePreferenceOutput.SpatialTemplate);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.CodingKeys and conformance AbsoluteSpatialTemplateOutput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element and conformance AbsoluteSpatialTemplateOutput.Element);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role and conformance AbsoluteSpatialTemplateOutput.Role);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [AbsoluteSpatialTemplateOutput.Element] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementOGMd, &_sSay15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementOGMR);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PresentationTemplateOutput.CodingKeys and conformance PresentationTemplateOutput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.SeatCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat and conformance AbsoluteSpatialTemplateOutput.Element.Seat);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position and conformance AbsoluteSpatialTemplateOutput.Element.Position);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction and conformance AbsoluteSpatialTemplateOutput.Element.Direction);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Role.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Role.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor.AppCenterCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Position.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Position.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Position.Anchor);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SPVector3D and conformance SPVector3D(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.Anchor()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.Anchor;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.Anchor)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.Anchor and conformance AbsoluteSpatialTemplateOutput.Element.Direction.Anchor);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SpatialTemplatePreferenceOutput(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialTemplatePreferenceOutput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SpatialTemplatePreferenceOutput.SpatialTemplate(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SpatialTemplatePreferenceOutput.SpatialTemplate(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SpatialTemplatePreferenceOutput.SpatialTemplate(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AbsoluteSpatialTemplateOutput(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for AbsoluteSpatialTemplateOutput(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for PresentationTemplateOutput(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

__n128 __swift_memcpy33_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for AbsoluteSpatialTemplateOutput.Element.Direction.Anchor(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 33))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for AbsoluteSpatialTemplateOutput.Element.Direction.Anchor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t specialized SpatialTemplatePreferenceOutput.SpatialTemplate.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x62416D6F74737563 && a2 == 0xEE006574756C6F73;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61737265766E6F63 && a2 == 0xEE006C616E6F6974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6953794265646973 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x646E756F72727573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x61746E6573657270 && a2 == 0xEC0000006E6F6974)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t specialized AbsoluteSpatialTemplateOutput.Element.Seat.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701605234 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697469736F70 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.AlignedWithCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.PositionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys()
{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys;
  if (!lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys);
  }

  return result;
}

uint64_t specialized AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 120 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 121 && a2 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 122 && a2 == 0xE100000000000000)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t specialized AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.init(from:)(uint64_t *a1)
{
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11ZCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11ZCodingKeysOGMR);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v31 - v3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11YCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11YCodingKeysOGMR);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v31 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11XCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO11XCodingKeysOGMR);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities29AbsoluteSpatialTemplateOutputV7ElementO9DirectionV13CodableAnchor33_4C966066B1CA87A93CB119E9FD867C1FLLO0L4AxisO10CodingKeysOGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.CodingKeys();
  v18 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = specialized Collection<>.popFirst()();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.YCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_0(v40);
          return v12;
        }

        v45 = 2;
        lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.ZCodingKeys();
        v29 = v15;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        lazy protocol witness table accessor for type AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys and conformance AbsoluteSpatialTemplateOutput.Element.Direction.CodableAnchor.CodableAxis.XCodingKeys();
        v29 = v15;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v27 = &unk_1F24C0538;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_0(v40);
  return v12;
}

uint64_t GroupActivityAssociationKind.storage.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t static GroupActivityAssociationKind.Storage.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t static GroupActivityAssociationKind.primary(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
}

void *GroupActivityAssociationKind.init(storage:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t static GroupActivityAssociationKind.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v3)
  {
    return 1;
  }

  return result;
}

uint64_t GroupActivityAssociationKind.hash(into:)()
{
  v1 = *v0;
  v2 = v0[1];
  MEMORY[0x1B2715040](0);

  return String.hash(into:)();
}

Swift::Int GroupActivityAssociationKind.Storage.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupActivityAssociationKind.Storage()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](0);
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type GroupActivityAssociationKind.Storage and conformance GroupActivityAssociationKind.Storage()
{
  result = lazy protocol witness table cache variable for type GroupActivityAssociationKind.Storage and conformance GroupActivityAssociationKind.Storage;
  if (!lazy protocol witness table cache variable for type GroupActivityAssociationKind.Storage and conformance GroupActivityAssociationKind.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityAssociationKind.Storage and conformance GroupActivityAssociationKind.Storage);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupActivityAssociationKind and conformance GroupActivityAssociationKind()
{
  result = lazy protocol witness table cache variable for type GroupActivityAssociationKind and conformance GroupActivityAssociationKind;
  if (!lazy protocol witness table cache variable for type GroupActivityAssociationKind and conformance GroupActivityAssociationKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityAssociationKind and conformance GroupActivityAssociationKind);
  }

  return result;
}

uint64_t StaticGroupActivity.id.getter()
{
  v1 = *v0;
  v2 = v0[1];

  return v1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StaticGroupActivity.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StaticGroupActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StaticGroupActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticGroupActivity.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities06StaticD8ActivityV10CodingKeys33_40C581FBD1A90872EC5F98A6CB20DB28LLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities06StaticD8ActivityV10CodingKeys33_40C581FBD1A90872EC5F98A6CB20DB28LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

unint64_t lazy protocol witness table accessor for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys);
  }

  return result;
}

uint64_t StaticGroupActivity.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities06StaticD8ActivityV10CodingKeys33_40C581FBD1A90872EC5F98A6CB20DB28LLOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities06StaticD8ActivityV10CodingKeys33_40C581FBD1A90872EC5F98A6CB20DB28LLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v9, v5);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for GroupActivity.metadata.getter in conformance StaticGroupActivity(uint64_t a1)
{
  StaticGroupActivity.metadata.getter(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t StaticGroupActivity.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for generic != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v3 = __swift_project_value_buffer(v2, static GroupActivityMetadata.ActivityType.generic);
  outlined init with copy of GroupActivityMetadata.ActivityType(v3, a1);
  v4 = type metadata accessor for GroupActivityMetadata(0);
  v5 = (a1 + v4[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v4[6]);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + v4[7]) = 0;
  v7 = v4[8];
  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 56);
  v9(a1 + v7, 1, 1, v8);
  *(a1 + v4[9]) = 0;
  *(a1 + v4[10]) = dyld_program_sdk_at_least() ^ 1;
  v9(a1 + v4[11], 1, 1, v8);
  v10 = a1 + v4[12];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v11 = qword_1EDADC9F0;
  v12 = qword_1EDADCA08;
  *v10 = static SceneAssociationBehavior.default;
  *(v10 + 8) = v11;
  *(v10 + 16) = xmmword_1EDADC9F8;
  *(v10 + 32) = v12;
  *(a1 + v4[13]) = 0;
  *(a1 + v4[14]) = 2;
  v13 = one-time initialization token for none;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = static SceneAssociationBehavior.none;
  v15 = qword_1EB61B458;
  v17 = xmmword_1EB61B460;
  v16 = qword_1EB61B470;
  v18 = *(v10 + 16);
  v19 = *(v10 + 32);

  *v10 = v14;
  *(v10 + 8) = v15;
  *(v10 + 16) = v17;
  *(v10 + 32) = v16;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance StaticGroupActivity(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities06StaticD8ActivityV10CodingKeys33_40C581FBD1A90872EC5F98A6CB20DB28LLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities06StaticD8ActivityV10CodingKeys33_40C581FBD1A90872EC5F98A6CB20DB28LLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StaticGroupActivity.CodingKeys and conformance StaticGroupActivity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

Swift::Void __swiftcall StaticGroupActivity.register()()
{
  v1 = *v0;
  v2 = v0[1];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3[0] = v1;
  v3[1] = v2;
  (*(*static StaticGroupActivityRegistry.shared + 120))(v3);
}

uint64_t *StaticGroupActivityRegistry.shared.unsafeMutableAddressor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  return &static StaticGroupActivityRegistry.shared;
}

uint64_t StaticGroupActivity.eraseToAnyGroupActivity()@<X0>(void *a1@<X8>)
{
  v41 = a1;
  v42 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  v2 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42);
  v4 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v5 = v1[1];
  v7 = one-time initialization token for generic;
  swift_bridgeObjectRetain_n();
  if (v7 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v9 = __swift_project_value_buffer(v8, static GroupActivityMetadata.ActivityType.generic);
  outlined init with copy of GroupActivityMetadata.ActivityType(v9, v4);
  v10 = type metadata accessor for GroupActivityMetadata(0);
  v11 = &v4[v10[5]];
  *v11 = 0;
  *(v11 + 1) = 0;
  v12 = &v4[v10[6]];
  *v12 = 0;
  *(v12 + 1) = 0;
  *&v4[v10[7]] = 0;
  v13 = v10[8];
  v14 = type metadata accessor for URL();
  v15 = *(*(v14 - 8) + 56);
  v15(&v4[v13], 1, 1, v14);
  *&v4[v10[9]] = 0;
  v4[v10[10]] = dyld_program_sdk_at_least() ^ 1;
  v15(&v4[v10[11]], 1, 1, v14);
  v16 = &v4[v10[12]];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v46 = v6;
  v17 = qword_1EDADC9F0;
  v18 = qword_1EDADCA08;
  *v16 = static SceneAssociationBehavior.default;
  *(v16 + 1) = v17;
  *(v16 + 1) = xmmword_1EDADC9F8;
  *(v16 + 4) = v18;
  v4[v10[13]] = 0;
  *&v4[v10[14]] = 2;
  v19 = one-time initialization token for none;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = static SceneAssociationBehavior.none;
  v21 = qword_1EB61B458;
  v23 = xmmword_1EB61B460;
  v22 = qword_1EB61B470;
  v24 = *(v16 + 2);
  v25 = *(v16 + 4);

  *v16 = v20;
  *(v16 + 1) = v21;
  *(v16 + 1) = v23;
  *(v16 + 4) = v22;
  swift_storeEnumTagMultiPayload();
  v26 = type metadata accessor for PropertyListEncoder();
  v27 = *(v26 + 48);
  v28 = *(v26 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  v29 = v46;
  v44 = v46;
  v45 = v5;
  lazy protocol witness table accessor for type StaticGroupActivity and conformance StaticGroupActivity();
  v30 = v43;
  v31 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v33 = v32;

  if (v30)
  {
    swift_bridgeObjectRelease_n();
    return outlined destroy of AnyGroupActivity.MetadataProvider(v4, type metadata accessor for AnyGroupActivity.MetadataProvider);
  }

  else
  {
    v35 = type metadata accessor for AnyGroupActivity(0);
    v36 = v41;
    v37 = v41 + v35[7];
    specialized IdentifiableGroupActivity.uuid.getter();
    *v36 = v29;
    v36[1] = v5;
    result = outlined init with take of AnyGroupActivity.MetadataProvider(v4, v36 + v35[5]);
    v38 = (v36 + v35[6]);
    *v38 = v31;
    v38[1] = v33;
    v39 = (v36 + v35[8]);
    *v39 = v29;
    v39[1] = v5;
  }

  return result;
}

uint64_t StaticGroupActivityRegistry.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  v1 = type metadata accessor for Lock();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 24) = Lock.init()();
  return v0;
}

uint64_t static StaticGroupActivityRegistry.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t StaticGroupActivityRegistry.subscriptions.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
}

uint64_t StaticGroupActivityRegistry.subscriptions.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
}

Swift::Void __swiftcall StaticGroupActivityRegistry.register(activity:)(GroupActivities::StaticGroupActivity activity)
{
  v2 = v1;
  countAndFlagsBits = activity.id._countAndFlagsBits;
  v44 = *v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALSgGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALSgGMR);
  v41 = *(v4 - 8);
  v42 = v4;
  v5 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANSgGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANSgGGMR);
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v38 - v10;
  v13 = *countAndFlagsBits;
  v12 = countAndFlagsBits[1];
  v14 = v2[3];
  Lock.lock()();
  v15 = *(*v2 + 96);

  if (*(v15(v16) + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(v13, v12), (v17 & 1) != 0))
  {
  }

  else
  {
    v39 = v8;
    v40 = v14;

    if (one-time initialization token for conversationManagerClient != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = qword_1EB62D008;
    v19 = unk_1EB62D010;
    v20 = __swift_project_boxed_opaque_existential_1(static StaticGroupActivityRegistry.conversationManagerClient, qword_1EB62D008);
    v38[1] = v38;
    v21 = *(v18 - 8);
    v22 = *(v21 + 64);
    MEMORY[0x1EEE9AC00](v20);
    v24 = v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24);
    v25 = *(v19 + 8);
    v26 = dispatch thunk of ActivitySessionContainerProvider.onActivitySessionsChanged.getter();
    (*(v21 + 8))(v24, v18);
    v46[0] = v26;
    v27 = swift_allocObject();
    *(v27 + 16) = v13;
    *(v27 + 24) = v12;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo38TUConversationActivitySessionContainerCSgMd, &_sSo38TUConversationActivitySessionContainerCSgMR);
    v38[0] = v13;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
    Publisher.map<A>(_:)();

    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.Map<AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never>, TUConversationActivitySessionContainer?> and conformance Publishers.Map<A, B>, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALSgGMd, &_s7Combine10PublishersO3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGALSgGMR);
    v28 = v42;
    Publisher.removeDuplicates(by:)();
    (*(v41 + 8))(v7, v28);
    v29 = swift_allocObject();
    v30 = v38[0];
    v29[2] = v38[0];
    v29[3] = v12;
    v29[4] = v44;
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type Publishers.RemoveDuplicates<Publishers.Map<AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never>, TUConversationActivitySessionContainer?>> and conformance Publishers.RemoveDuplicates<A>, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANSgGGMd, &_s7Combine10PublishersO16RemoveDuplicatesVy_AC3MapVy_AA12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGANSgGGMR);

    v31 = v39;
    v32 = Publisher<>.sink(receiveValue:)();

    (*(v43 + 8))(v11, v31);
    v33 = (*(*v2 + 112))(v46);
    v35 = v34;
    v36 = *v34;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v45 = *v35;
    *v35 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v32, v30, v12, isUniquelyReferenced_nonNull_native);

    *v35 = v45;
    v33(v46, 0);
  }

  Lock.unlock()();
}

uint64_t *StaticGroupActivityRegistry.conversationManagerClient.unsafeMutableAddressor()
{
  if (one-time initialization token for conversationManagerClient != -1)
  {
    swift_once();
  }

  return static StaticGroupActivityRegistry.conversationManagerClient;
}

void closure #1 in StaticGroupActivityRegistry.register(activity:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = *a1 + 64;
  v7 = 1 << *(*a1 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(*a1 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
LABEL_9:
    while (2)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
        v14 = *(*(v5 + 56) + ((v11 << 9) | (8 * v13)));
        if ([v14 state] == 3 && (objc_msgSend(v14, sel_capabilities) & 1) != 0)
        {
          break;
        }

        if (!v9)
        {
          goto LABEL_5;
        }
      }

      v45 = v5;
      v46 = a4;
      v15 = [v14 activitySessions];
      v16 = type metadata accessor for TUConversationActivitySession();
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type TUConversationActivitySession and conformance NSObject, type metadata accessor for TUConversationActivitySession);
      v17 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      v43 = v10;
      v44 = v6;
      if ((v17 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v18 = v53;
        v19 = v54;
        v20 = v55;
        v21 = v56;
        v22 = v57;
      }

      else
      {
        v23 = -1 << *(v17 + 32);
        v19 = v17 + 56;
        v24 = ~v23;
        v25 = -v23;
        if (v25 < 64)
        {
          v26 = ~(-1 << v25);
        }

        else
        {
          v26 = -1;
        }

        v22 = v26 & *(v17 + 56);

        v20 = v24;
        v21 = 0;
      }

      v27 = v16;
      v28 = (v20 + 64) >> 6;
      v48 = v19;
      v49 = v18;
      v47 = v28;
      while (1)
      {
        if (v18 < 0)
        {
          if (!__CocoaSet.Iterator.next()() || (swift_dynamicCast(), v32 = v52, v31 = v22, !v52))
          {
LABEL_39:
            outlined consume of [UUID : Conversation].Iterator._Variant();

            a4 = v46;
            goto LABEL_40;
          }
        }

        else
        {
          v29 = v21;
          for (i = v22; !i; ++v29)
          {
            v21 = v29 + 1;
            if (__OFADD__(v29, 1))
            {
              goto LABEL_42;
            }

            if (v21 >= v28)
            {
              goto LABEL_39;
            }

            i = *(v19 + 8 * v21);
          }

          v31 = (i - 1) & i;
          v32 = *(*(v18 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(i)))));
          if (!v32)
          {
            goto LABEL_39;
          }
        }

        v33 = v27;
        v34 = v14;
        v35 = v32;
        v36 = [v32 activity];
        v37 = [v36 activityIdentifier];

        v38 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v40 = v39;

        if (v38 == a2 && v40 == a3)
        {
          break;
        }

        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v14 = v34;
        v27 = v33;
        v19 = v48;
        v18 = v49;
        v28 = v47;
        v22 = v31;
        if (v42)
        {

          goto LABEL_36;
        }
      }

LABEL_36:
      outlined consume of [UUID : Conversation].Iterator._Variant();

      v5 = v45;
      a4 = v46;
      v10 = v43;
      v6 = v44;
      if (v9)
      {
        continue;
      }

      break;
    }
  }

LABEL_5:
  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v12 >= v10)
    {

      v14 = 0;
LABEL_40:
      *a4 = v14;
      return;
    }

    v9 = *(v6 + 8 * v12);
    ++v11;
    if (v9)
    {
      v11 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_42:
  __break(1u);
}

uint64_t closure #2 in StaticGroupActivityRegistry.register(activity:)(id *a1, void **a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v33 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v33 - v20;
  v22 = *a2;
  if (*a1)
  {
    v23 = [*a1 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v24 = *(v5 + 56);
    v24(v21, 0, 1, v4);
  }

  else
  {
    v24 = *(v5 + 56);
    v24(&v33 - v20, 1, 1, v4);
  }

  if (v22)
  {
    v25 = [v22 UUID];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  v24(v19, v26, 1, v4);
  v27 = *(v8 + 48);
  outlined init with copy of UUID?(v21, v11);
  outlined init with copy of UUID?(v19, &v11[v27]);
  v28 = *(v5 + 48);
  if (v28(v11, 1, v4) != 1)
  {
    outlined init with copy of UUID?(v11, v16);
    if (v28(&v11[v27], 1, v4) != 1)
    {
      v30 = v34;
      (*(v5 + 32))(v34, &v11[v27], v4);
      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v5 + 8);
      v31(v30, v4);
      outlined destroy of NSObject?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      outlined destroy of NSObject?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      v31(v16, v4);
      outlined destroy of NSObject?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      return v29 & 1;
    }

    outlined destroy of NSObject?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    outlined destroy of NSObject?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v5 + 8))(v16, v4);
    goto LABEL_12;
  }

  outlined destroy of NSObject?(v19, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  outlined destroy of NSObject?(v21, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if (v28(&v11[v27], 1, v4) != 1)
  {
LABEL_12:
    outlined destroy of NSObject?(v11, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    v29 = 0;
    return v29 & 1;
  }

  outlined destroy of NSObject?(v11, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v29 = 1;
  return v29 & 1;
}

void closure #3 in StaticGroupActivityRegistry.register(activity:)(void **a1, uint64_t a2, unint64_t a3)
{
  v6 = type metadata accessor for GroupActivityMetadata(0);
  v7 = *(*(v6 - 1) + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a1;
  if (*a1)
  {
    v75 = v12;
    v76 = a2;
    v74 = v14;
    v16 = one-time initialization token for default;
    v17 = v15;
    if (v16 != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Log.default);
    v19 = v17;

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    v22 = os_log_type_enabled(v20, v21);
    v72 = v10;
    v73 = v19;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v80[0] = v24;
      *v23 = 136315394;
      v25 = [v19 UUID];
      v26 = v74;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      _s10Foundation4UUIDVACs23CustomStringConvertibleAAWlTm_4(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v27 = dispatch thunk of CustomStringConvertible.description.getter();
      v28 = v10;
      v30 = v29;
      (*(v75 + 8))(v26, v28);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v30, v80);

      *(v23 + 4) = v31;
      *(v23 + 12) = 2080;
      v77 = v76;
      v78 = a3;

      v32 = String.init<A>(reflecting:)();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v80);

      *(v23 + 14) = v34;
      _os_log_impl(&dword_1AEE80000, v20, v21, "Beginning static activity on conversation %s: %s.", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v24, -1, -1);
      MEMORY[0x1B2715BA0](v23, -1, -1);
    }

    MEMORY[0x1EEE9AC00](v35);
    tryLog<A>(_:_:function:line:)();
    if (v78 >> 60 == 15)
    {
    }

    else
    {
      v71 = v78;
      v36 = v77;
      if (one-time initialization token for generic != -1)
      {
        swift_once();
      }

      v37 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
      v38 = __swift_project_value_buffer(v37, static GroupActivityMetadata.ActivityType.generic);
      outlined init with copy of GroupActivityMetadata.ActivityType(v38, v9);
      v39 = &v9[v6[5]];
      *v39 = 0;
      *(v39 + 1) = 0;
      v40 = &v9[v6[6]];
      *v40 = 0;
      *(v40 + 1) = 0;
      *&v9[v6[7]] = 0;
      v41 = v6[8];
      v42 = type metadata accessor for URL();
      v43 = *(*(v42 - 8) + 56);
      v43(&v9[v41], 1, 1, v42);
      *&v9[v6[9]] = 0;
      v9[v6[10]] = dyld_program_sdk_at_least() ^ 1;
      v43(&v9[v6[11]], 1, 1, v42);
      v44 = &v9[v6[12]];
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v70 = v36;
      v45 = qword_1EDADC9F0;
      v46 = qword_1EDADCA08;
      *v44 = static SceneAssociationBehavior.default;
      *(v44 + 1) = v45;
      *(v44 + 1) = xmmword_1EDADC9F8;
      *(v44 + 4) = v46;
      v9[v6[13]] = 0;
      *&v9[v6[14]] = 2;
      v47 = one-time initialization token for none;

      if (v47 != -1)
      {
        swift_once();
      }

      v48 = static SceneAssociationBehavior.none;
      v49 = qword_1EB61B458;
      v51 = xmmword_1EB61B460;
      v50 = qword_1EB61B470;
      v52 = *(v44 + 2);
      v53 = *(v44 + 4);

      *v44 = v48;
      *(v44 + 1) = v49;
      *(v44 + 1) = v51;
      *(v44 + 4) = v50;
      v54 = GroupActivityMetadata.tuMetadata.getter();
      outlined destroy of AnyGroupActivity.MetadataProvider(v9, type metadata accessor for GroupActivityMetadata);
      v56 = v70;
      v55 = v71;
      outlined copy of Data._Representation(v70, v71);
      v57 = v74;
      v58 = v76;
      specialized IdentifiableGroupActivity.uuid.getter();
      v59 = objc_allocWithZone(MEMORY[0x1E69D8B38]);
      isa = Data._bridgeToObjectiveC()().super.isa;
      v61 = MEMORY[0x1B2714130](v58, a3);
      v62 = UUID._bridgeToObjectiveC()().super.isa;
      v63 = MEMORY[0x1B2714130](v58, a3);
      v64 = [v59 initWithMetadata:v54 applicationContext:isa activityIdentifier:v61 uuid:v62 staticIdentifier:v63];

      outlined consume of Data?(v56, v55);
      v65 = *(v75 + 8);
      v66 = v72;
      v65(v57, v72);
      if (one-time initialization token for conversationManagerClient != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      outlined init with copy of Transferable(&static StaticGroupActivityRegistry.conversationManagerClient, &v77);
      __swift_project_boxed_opaque_existential_1(&v77, v79);
      v67 = v73;
      v68 = [v73 UUID];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      dispatch thunk of ConversationManagerClientProtocol.createStaticActivitySession(with:onConversationWithUUID:)();
      outlined consume of Data?(v70, v71);

      v65(v57, v66);
      __swift_destroy_boxed_opaque_existential_0(&v77);
    }
  }
}

uint64_t implicit closure #3 in closure #3 in StaticGroupActivityRegistry.register(activity:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for PropertyListEncoder();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  lazy protocol witness table accessor for type StaticGroupActivity and conformance StaticGroupActivity();
  v6 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v8 = v7;

  if (!v1)
  {
    *a1 = v6;
    a1[1] = v8;
  }

  return result;
}

uint64_t one-time initialization function for conversationManagerClient()
{
  v0 = type metadata accessor for ConversationManagerClient();
  result = static ConversationManagerClient.shared.getter();
  qword_1EB62D008 = v0;
  unk_1EB62D010 = MEMORY[0x1E69975E0];
  static StaticGroupActivityRegistry.conversationManagerClient = result;
  return result;
}

uint64_t static StaticGroupActivityRegistry.conversationManagerClient.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for conversationManagerClient != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return outlined init with copy of Transferable(static StaticGroupActivityRegistry.conversationManagerClient, a1);
}

uint64_t static StaticGroupActivityRegistry.conversationManagerClient.setter(uint64_t *a1)
{
  if (one-time initialization token for conversationManagerClient != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(static StaticGroupActivityRegistry.conversationManagerClient, a1);
  swift_endAccess();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t (*static StaticGroupActivityRegistry.conversationManagerClient.modify())()
{
  if (one-time initialization token for conversationManagerClient != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return GroupSession.attachmentDownloadBytes.modify;
}

uint64_t key path getter for static StaticGroupActivityRegistry.conversationManagerClient : StaticGroupActivityRegistry.Type@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for conversationManagerClient != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return outlined init with copy of Transferable(static StaticGroupActivityRegistry.conversationManagerClient, a1);
}

uint64_t key path setter for static StaticGroupActivityRegistry.conversationManagerClient : StaticGroupActivityRegistry.Type(uint64_t *a1)
{
  if (one-time initialization token for conversationManagerClient != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  __swift_assign_boxed_opaque_existential_1(static StaticGroupActivityRegistry.conversationManagerClient, a1);
  return swift_endAccess();
}

uint64_t StaticGroupActivityRegistry.deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return v0;
}

uint64_t StaticGroupActivityRegistry.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t StaticGroupActivityRegistry.init()()
{
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  v1 = type metadata accessor for Lock();
  v2 = *(v1 + 48);
  v3 = *(v1 + 52);
  swift_allocObject();
  *(v0 + 24) = Lock.init()();
  return v0;
}

uint64_t outlined init with copy of GroupActivityMetadata.ActivityType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type StaticGroupActivity and conformance StaticGroupActivity()
{
  result = lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity;
  if (!lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity;
  if (!lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity;
  if (!lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity;
  if (!lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity;
  if (!lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticGroupActivity and conformance StaticGroupActivity);
  }

  return result;
}

uint64_t *__swift_assign_boxed_opaque_existential_1(uint64_t *result, uint64_t *a2)
{
  if (result != a2)
  {
    v2 = result[3];
    v3 = a2[3];
    if (v2 == v3)
    {
      v10 = *(v2 - 8);
      if ((*(v10 + 82) & 2) != 0)
      {
        v14 = *result;
        v15 = *a2;
        v16 = result;

        *v16 = v15;
      }

      else
      {
        v11 = *(v10 + 24);
        v12 = result[3];

        return v11();
      }
    }

    else
    {
      result[3] = v3;
      result[4] = a2[4];
      v4 = *(v2 - 8);
      v5 = *(v3 - 8);
      v6 = v5;
      v7 = *(v5 + 80);
      if ((*(v4 + 82) & 2) != 0)
      {
        v13 = *result;
        if ((v7 & 0x20000) != 0)
        {
          *result = *a2;
        }

        else
        {
          (*(v5 + 16))();
        }
      }

      else
      {
        v9 = result;
        (*(v4 + 32))(v17);
        if ((v7 & 0x20000) != 0)
        {
          *v9 = *a2;
        }

        else
        {
          (*(v6 + 16))(v9, a2, v3);
        }

        return (*(v4 + 8))(v17, v2);
      }
    }
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for StaticGroupActivity(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StaticGroupActivity and conformance StaticGroupActivity();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for StaticGroupActivity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return instantiation function for generic protocol witness table for StaticGroupActivity(a1, a2, a3, lazy protocol witness table accessor for type StaticGroupActivity and conformance StaticGroupActivity, lazy protocol witness table accessor for type StaticGroupActivity and conformance StaticGroupActivity);
}

{
  return instantiation function for generic protocol witness table for StaticGroupActivity(a1, a2, a3, lazy protocol witness table accessor for type StaticGroupActivity and conformance StaticGroupActivity, lazy protocol witness table accessor for type StaticGroupActivity and conformance StaticGroupActivity);
}

uint64_t instantiation function for generic protocol witness table for StaticGroupActivity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

uint64_t partial apply for implicit closure #3 in closure #3 in StaticGroupActivityRegistry.register(activity:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return implicit closure #3 in closure #3 in StaticGroupActivityRegistry.register(activity:)(a1);
}

uint64_t outlined destroy of AnyGroupActivity.MetadataProvider(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void AVPlaybackCoordinator.coordinateWithSession<A>(_:)(char *a1)
{
  v2 = v1;
  v4 = *a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Participant();
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for playback != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v55 = __swift_project_value_buffer(v14, static Logger.playback);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1AEE80000, v15, v16, "coordinateWithSession called", v17, 2u);
    MEMORY[0x1B2715BA0](v17, -1, -1);
  }

  v18 = direct field offset for GroupSession.playbackSyncerLink;
  swift_beginAccess();
  v19 = *&a1[v18];
  if (v19)
  {
    v20 = *(v19 + direct field offset for GroupSession.GroupSessionPlaybackSyncerLink.playbackSyncer);
    GroupSession.localParticipant.getter(v13);
    (*(v6 + 16))(v9, v13, v5);

    outlined destroy of Participant(v13);
    (*(*v20 + 496))(v2, v9);
    (*(v6 + 8))(v9, v5);
  }

  else
  {
    type metadata accessor for GroupSessionMessenger();

    v22 = GroupSessionMessenger.__allocating_init<A>(session:)(v21);
    v23 = direct field offset for GroupSession.playbackSyncMessenger;
    swift_beginAccess();
    v24 = *&a1[v23];
    *&a1[v23] = v22;

    type metadata accessor for PlaybackSyncer(0);
    v25 = *(*a1 + 296);
    v54 = v4;
    v26 = *&a1[v25];
    GroupSession.localParticipant.getter(v13);
    (*(v6 + 16))(v9, v13, v5);
    v27 = v2;
    v28 = v26;
    outlined destroy of Participant(v13);
    v29 = PlaybackSyncer.__allocating_init(coordinator:serialQueue:localParticipantUUID:)(v27, v28, v9);
    v58.val[0] = *(v54 + 80);
    v58.val[1] = v58.val[0];
    v30 = v57;
    vst2q_f64(v30, v58);
    type metadata accessor for GroupSession.GroupSessionPlaybackSyncerLink();

    v31 = GroupSession.GroupSessionPlaybackSyncerLink.__allocating_init(groupSession:messenger:playbackSyncer:)(a1, v22, v29);
    GroupSession.registerPlaybackSyncerLink(_:)(v31);
  }

  objc_opt_self();
  v32 = swift_dynamicCastObjCClass();
  if (v32)
  {
    v33 = v32;
    v34 = v2;
    v35 = [v33 player];
    if (v35)
    {
      v36 = v35;
      v37 = UUID.uuidString.getter();
      v38 = MEMORY[0x1B2714130](v37);

      [v36 setBackgroundPIPAuthorizationToken_];
    }

    v39 = v34;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v56 = v43;
      *v42 = 136315394;
      v57[0] = UUID.uuidString.getter();
      v57[1] = v44;
      v45 = String.init<A>(reflecting:)();
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v46, &v56);

      *(v42 + 4) = v47;
      *(v42 + 12) = 2080;
      v48 = [v33 player];
      if (v48)
      {
        v57[0] = v48;
        type metadata accessor for AVPlayer();
        v49 = String.init<A>(reflecting:)();
        v51 = v50;
      }

      else
      {
        v51 = 0xE300000000000000;
        v49 = 7104878;
      }

      v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, &v56);

      *(v42 + 14) = v52;
      _os_log_impl(&dword_1AEE80000, v40, v41, "Setting session identifier %s on %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B2715BA0](v43, -1, -1);
      MEMORY[0x1B2715BA0](v42, -1, -1);
    }

    else
    {
    }
  }
}

unint64_t type metadata accessor for AVPlayer()
{
  result = lazy cache variable for type metadata for AVPlayer;
  if (!lazy cache variable for type metadata for AVPlayer)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AVPlayer);
  }

  return result;
}

id AppCapabilities.managedConfigurationObserver.getter()
{
  v1 = OBJC_IVAR___GPAppCapabilities____lazy_storage___managedConfigurationObserver;
  v2 = *(v0 + OBJC_IVAR___GPAppCapabilities____lazy_storage___managedConfigurationObserver);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR___GPAppCapabilities____lazy_storage___managedConfigurationObserver);
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for CPManagedConfigurationObserver()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t AppCapabilities.managedConfigurationObserver.setter(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR___GPAppCapabilities____lazy_storage___managedConfigurationObserver);
  *(v1 + OBJC_IVAR___GPAppCapabilities____lazy_storage___managedConfigurationObserver) = a1;
  return MEMORY[0x1EEE66BB8]();
}

void (*AppCapabilities.managedConfigurationObserver.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = AppCapabilities.managedConfigurationObserver.getter();
  return AppCapabilities.managedConfigurationObserver.modify;
}

void AppCapabilities.managedConfigurationObserver.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR___GPAppCapabilities____lazy_storage___managedConfigurationObserver);
  *(v1 + OBJC_IVAR___GPAppCapabilities____lazy_storage___managedConfigurationObserver) = v2;
}

uint64_t AppCapabilities.supportsSharePlay.getter()
{
  v1 = type metadata accessor for Entitlement();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x1EEE9AC00](v1);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR___GPAppCapabilities____lazy_storage___supportsSharePlay;
  LODWORD(v7) = *(v0 + OBJC_IVAR___GPAppCapabilities____lazy_storage___supportsSharePlay);
  if (v7 == 2)
  {
    v7 = *(v0 + OBJC_IVAR___GPAppCapabilities_task);
    (*(v2 + 104))(v5, *MEMORY[0x1E69974B8], v1);
    LOBYTE(v7) = _sSo10SecTaskRefa15GroupActivitiesE5value_14forEntitlementxSgxm_14CopresenceCore0H0OtlFSb_Tt0g5(v5);
    (*(v2 + 8))(v5, v1);
    *(v0 + v6) = v7 & 1;
  }

  return v7 & 1;
}

uint64_t AppCapabilities.supportsStartFromApp.getter()
{
  v1 = v0;
  v2 = OBJC_IVAR___GPAppCapabilities____lazy_storage___supportsStartFromApp;
  v3 = *(v0 + OBJC_IVAR___GPAppCapabilities____lazy_storage___supportsStartFromApp);
  if (v3 == 2)
  {
    v4 = MEMORY[0x1E69E7D40];
    if ((*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))())
    {
      v5 = (*((*v4 & *v1) + 0x70))();
      LOBYTE(v3) = dispatch thunk of CPManagedConfigurationObserver.allowed.getter();
    }

    else
    {
      LOBYTE(v3) = 0;
    }

    *(v1 + v2) = v3 & 1;
  }

  return v3 & 1;
}

id AppCapabilities.init(auditToken:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = OBJC_IVAR___GPAppCapabilities____lazy_storage___managedConfigurationObserver;
  *&v4[OBJC_IVAR___GPAppCapabilities____lazy_storage___managedConfigurationObserver] = 0;
  v4[OBJC_IVAR___GPAppCapabilities____lazy_storage___supportsSharePlay] = 2;
  v4[OBJC_IVAR___GPAppCapabilities____lazy_storage___supportsStartFromApp] = 2;
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v11 = SecTaskCreateWithAuditToken(0, &token);
  if (v11)
  {
    *&v4[OBJC_IVAR___GPAppCapabilities_task] = v11;
    v21.receiver = v4;
    v21.super_class = type metadata accessor for AppCapabilities();
    return objc_msgSendSuper2(&v21, sel_init);
  }

  else
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    __swift_project_value_buffer(v13, static Log.default);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *token.val = a1;
      *v16 = 136315138;
      *&token.val[2] = a2;
      *&token.val[4] = a3;
      *&token.val[6] = a4;
      type metadata accessor for audit_token_t(0);
      v18 = String.init<A>(reflecting:)();
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1AEE80000, v14, v15, "Failed to create SecTask with auditToken %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x1B2715BA0](v17, -1, -1);
      MEMORY[0x1B2715BA0](v16, -1, -1);
    }

    type metadata accessor for AppCapabilities();
    swift_deallocPartialClassInstance();
    return 0;
  }
}

id AppCapabilities.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppCapabilities.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppCapabilities();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t Conversation.__allocating_init(sessionContainer:)(void *a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = [a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = [a1 groupUUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v12 = (*(v1 + 384))(v9, v7, ([a1 capabilities] >> 3) & 1);

  Conversation.update(with:)(a1);

  return v12;
}

Swift::Int Conversation.State.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

void *key path getter for Conversation.state : Conversation@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 160))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for Conversation.state : Conversation(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Conversation.state.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();
}

uint64_t key path setter for Conversation.$state : Conversation(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVy15GroupActivities12ConversationC5StateO_GMd, &_s7Combine9PublishedV9PublisherVy15GroupActivities12ConversationC5StateO_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t key path setter for Conversation.id : Conversation(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v12, a1, v8);
  v13 = *a2;
  v14 = *a5;
  swift_beginAccess();
  (*(v9 + 40))(v13 + v14, v12, v8);
  return swift_endAccess();
}

uint64_t Conversation.id.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  v5 = type metadata accessor for UUID();
  return (*(*(v5 - 8) + 16))(a2, v2 + v4, v5);
}

uint64_t key path getter for Conversation.activeParticipants : Conversation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Conversation.activeParticipants : Conversation(uint64_t *a1, uint64_t *a2)
{
  return key path setter for Conversation.activeParticipants : Conversation(a1, a2);
}

{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Conversation.activeParticipants.getter()
{
  return Conversation.activeParticipants.getter();
}

{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path setter for Conversation.$activeParticipants : Conversation(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMd, &_s7Combine9PublishedV9PublisherVyShy15GroupActivities11ParticipantVG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t key path getter for Conversation.localParticipantIdentifier : Conversation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 280))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Conversation.localParticipantIdentifier : Conversation(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t Conversation.localParticipantIdentifier.getter()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t key path setter for Conversation.$localParticipantIdentifier : Conversation(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVys6UInt64V_GMd, &_s7Combine9PublishedV9PublisherVys6UInt64V_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64VGMd, &_s7Combine9PublishedVys6UInt64VGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t key path getter for Conversation.activitySessions : Conversation@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 328))();
  *a2 = result;
  return result;
}

uint64_t key path setter for Conversation.$activitySessions : Conversation(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedV9PublisherVySay15GroupActivities0D7SessionCyAF03AnyD8ActivityVGG_GMd, &_s7Combine9PublishedV9PublisherVySay15GroupActivities0D7SessionCyAF03AnyD8ActivityVGG_GMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v15 - v10;
  v12 = *(v5 + 16);
  v12(&v15 - v10, a1, v4);
  v13 = *a2;
  v12(v9, v11, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMd, &_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMR);
  Published.projectedValue.setter();
  swift_endAccess();
  return (*(v5 + 8))(v11, v4);
}

uint64_t Conversation.__allocating_init(identifier:groupUUID:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  Conversation.init(identifier:groupUUID:)(a1, a2);
  return v7;
}

uint64_t Conversation.init(identifier:groupUUID:)(uint64_t a1, uint64_t a2)
{
  v34 = a1;
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMd, &_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMR);
  v32 = *(v3 - 8);
  v33 = v3;
  v4 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v29 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64VGMd, &_s7Combine9PublishedVys6UInt64VGMR);
  v6 = *(v30 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v9 = &v29 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMR);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v29 - v18;
  v20 = OBJC_IVAR____TtC15GroupActivities12Conversation__state;
  LOBYTE(v36) = 0;
  Published.init(initialValue:)();
  (*(v16 + 32))(v2 + v20, v19, v15);
  v21 = OBJC_IVAR____TtC15GroupActivities12Conversation__activeParticipants;
  v36 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities11ParticipantVGMd, &_sShy15GroupActivities11ParticipantVGMR);
  Published.init(initialValue:)();
  (*(v11 + 32))(v2 + v21, v14, v10);
  v22 = OBJC_IVAR____TtC15GroupActivities12Conversation__localParticipantIdentifier;
  v36 = 0;
  Published.init(initialValue:)();
  (*(v6 + 32))(v2 + v22, v9, v30);
  v23 = OBJC_IVAR____TtC15GroupActivities12Conversation__activitySessions;
  v36 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMd, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMR);
  v24 = v31;
  Published.init(initialValue:)();
  (*(v32 + 32))(v2 + v23, v24, v33);
  v25 = OBJC_IVAR____TtC15GroupActivities12Conversation_id;
  v26 = type metadata accessor for UUID();
  v27 = *(*(v26 - 8) + 32);
  v27(v2 + v25, v34, v26);
  v27(v2 + OBJC_IVAR____TtC15GroupActivities12Conversation_groupUUID, v35, v26);
  *(v2 + OBJC_IVAR____TtC15GroupActivities12Conversation_isEligibleForGroupSessions) = 1;
  return v2;
}

uint64_t Conversation.__allocating_init(identifier:groupUUID:isEligibleForGroupSessions:)(uint64_t a1, uint64_t a2, int a3)
{
  v7 = *(v3 + 48);
  v8 = *(v3 + 52);
  v9 = swift_allocObject();
  Conversation.init(identifier:groupUUID:isEligibleForGroupSessions:)(a1, a2, a3);
  return v9;
}

uint64_t Conversation.init(identifier:groupUUID:isEligibleForGroupSessions:)(uint64_t a1, uint64_t a2, int a3)
{
  v36 = a3;
  v34 = a1;
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMd, &_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMR);
  v32 = *(v4 - 8);
  v33 = v4;
  v5 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v30 - v6;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64VGMd, &_s7Combine9PublishedVys6UInt64VGMR);
  v7 = *(v30 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v10 = &v30 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v30 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMR);
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v30 - v19;
  v21 = OBJC_IVAR____TtC15GroupActivities12Conversation__state;
  LOBYTE(v37) = 0;
  Published.init(initialValue:)();
  (*(v17 + 32))(v3 + v21, v20, v16);
  v22 = OBJC_IVAR____TtC15GroupActivities12Conversation__activeParticipants;
  v37 = MEMORY[0x1E69E7CD0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShy15GroupActivities11ParticipantVGMd, &_sShy15GroupActivities11ParticipantVGMR);
  Published.init(initialValue:)();
  (*(v12 + 32))(v3 + v22, v15, v11);
  v23 = OBJC_IVAR____TtC15GroupActivities12Conversation__localParticipantIdentifier;
  v37 = 0;
  Published.init(initialValue:)();
  (*(v7 + 32))(v3 + v23, v10, v30);
  v24 = OBJC_IVAR____TtC15GroupActivities12Conversation__activitySessions;
  v37 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMd, &_sSay15GroupActivities0A7SessionCyAA03AnyA8ActivityVGGMR);
  v25 = v31;
  Published.init(initialValue:)();
  (*(v32 + 32))(v3 + v24, v25, v33);
  v26 = OBJC_IVAR____TtC15GroupActivities12Conversation_id;
  v27 = type metadata accessor for UUID();
  v28 = *(*(v27 - 8) + 32);
  v28(v3 + v26, v34, v27);
  v28(v3 + OBJC_IVAR____TtC15GroupActivities12Conversation_groupUUID, v35, v27);
  *(v3 + OBJC_IVAR____TtC15GroupActivities12Conversation_isEligibleForGroupSessions) = v36;
  return v3;
}

uint64_t Conversation.deinit()
{
  v1 = OBJC_IVAR____TtC15GroupActivities12Conversation_id;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC15GroupActivities12Conversation__state;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC15GroupActivities12Conversation_groupUUID, v2);
  v6 = OBJC_IVAR____TtC15GroupActivities12Conversation__activeParticipants;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC15GroupActivities12Conversation__localParticipantIdentifier;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64VGMd, &_s7Combine9PublishedVys6UInt64VGMR);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC15GroupActivities12Conversation__activitySessions;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMd, &_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMR);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  return v0;
}

uint64_t Conversation.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15GroupActivities12Conversation_id;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v4 = OBJC_IVAR____TtC15GroupActivities12Conversation__state;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMd, &_s7Combine9PublishedVy15GroupActivities12ConversationC5StateOGMR);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v3(v0 + OBJC_IVAR____TtC15GroupActivities12Conversation_groupUUID, v2);
  v6 = OBJC_IVAR____TtC15GroupActivities12Conversation__activeParticipants;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMd, &_s7Combine9PublishedVyShy15GroupActivities11ParticipantVGGMR);
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  v8 = OBJC_IVAR____TtC15GroupActivities12Conversation__localParticipantIdentifier;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVys6UInt64VGMd, &_s7Combine9PublishedVys6UInt64VGMR);
  (*(*(v9 - 8) + 8))(v0 + v8, v9);
  v10 = OBJC_IVAR____TtC15GroupActivities12Conversation__activitySessions;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMd, &_s7Combine9PublishedVySay15GroupActivities0C7SessionCyAD03AnyC8ActivityVGGGMR);
  (*(*(v11 - 8) + 8))(v0 + v10, v11);
  v12 = *(*v0 + 48);
  v13 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t Conversation.addActivitySession(newSession:)()
{
  swift_getKeyPath();
  swift_getKeyPath();
  v0 = static Published.subscript.modify();
  v2 = v1;

  MEMORY[0x1B27142A0](v3);
  if (*((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v5 = *((*v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  v0(&v6, 0);
}

unint64_t Conversation.State.init(tuConversationState:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result >= 5)
  {
    v2 = 0;
  }

  else
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t Conversation.update(with:)(void *a1)
{
  [a1 state];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  [a1 localParticipantIdentifier];
  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  specialized InternalGroupSessionProvider.groupSessions(for:)(a1);
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

unint64_t lazy protocol witness table accessor for type Conversation.State and conformance Conversation.State()
{
  result = lazy protocol witness table cache variable for type Conversation.State and conformance Conversation.State;
  if (!lazy protocol witness table cache variable for type Conversation.State and conformance Conversation.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Conversation.State and conformance Conversation.State);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UUID and conformance UUID()
{
  result = lazy protocol witness table cache variable for type UUID and conformance UUID;
  if (!lazy protocol witness table cache variable for type UUID and conformance UUID)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UUID and conformance UUID);
  }

  return result;
}

uint64_t URLActivity.webpageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t URLActivity.webpageURL.setter(uint64_t a1)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t URLActivity.metadata.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for generic != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v4 = __swift_project_value_buffer(v3, static GroupActivityMetadata.ActivityType.generic);
  outlined init with copy of GroupActivityMetadata.ActivityType(v4, a1, type metadata accessor for GroupActivityMetadata.ActivityType);
  v5 = type metadata accessor for GroupActivityMetadata(0);
  v6 = (a1 + v5[5]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a1 + v5[6]);
  *v7 = 0;
  v7[1] = 0;
  *(a1 + v5[7]) = 0;
  v8 = v5[8];
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  v16 = *(v10 + 56);
  v16(a1 + v8, 1, 1, v9);
  *(a1 + v5[9]) = 0;
  *(a1 + v5[10]) = dyld_program_sdk_at_least() ^ 1;
  v16(a1 + v5[11], 1, 1, v9);
  v11 = v5[12];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v12 = a1 + v11;
  v13 = qword_1EDADC9F0;
  v14 = qword_1EDADCA08;
  *v12 = static SceneAssociationBehavior.default;
  *(v12 + 8) = v13;
  *(v12 + 16) = xmmword_1EDADC9F8;
  *(v12 + 32) = v14;
  *(a1 + v5[13]) = 0;
  *(a1 + v5[14]) = 2;

  outlined destroy of URL?(a1 + v8);
  (*(v10 + 16))(a1 + v8, v1, v9);

  return (v16)(a1 + v8, 0, 1, v9);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance URLActivity.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5565676170626577 && a2 == 0xEA00000000004C52)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URLActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URLActivity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t URLActivity.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities11URLActivityV10CodingKeys33_3F939F200CA59591041B0BC92EEF0A6ALLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities11URLActivityV10CodingKeys33_3F939F200CA59591041B0BC92EEF0A6ALLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t URLActivity.init(webpageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t protocol witness for GroupActivity.metadata.getter in conformance URLActivity(uint64_t a1)
{
  URLActivity.metadata.getter(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t URLActivity.init(from:)(uint64_t *a1)
{
  v2 = type metadata accessor for DecodingError();
  swift_allocError();
  v4 = v3;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
  *v4 = type metadata accessor for URLActivity();
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.codingPath.getter();
  DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
  (*(*(v2 - 8) + 104))(v4, *MEMORY[0x1E69E6B08], v2);
  swift_willThrow();
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance URLActivity(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities11URLActivityV10CodingKeys33_3F939F200CA59591041B0BC92EEF0A6ALLOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities11URLActivityV10CodingKeys33_3F939F200CA59591041B0BC92EEF0A6ALLOGMR);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for URL();
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t URLActivity.init(activity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v33 - v5;
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AnyGroupActivity.MetadataProvider(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for GroupActivityMetadata(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AnyGroupActivity(0);
  outlined init with copy of GroupActivityMetadata.ActivityType(a1 + *(v20 + 20), v15, type metadata accessor for AnyGroupActivity.MetadataProvider);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    _s15GroupActivities03AnyA8ActivityV16MetadataProviderOWOhTm_0(v15, type metadata accessor for AnyGroupActivity.MetadataProvider);
    v21 = type metadata accessor for DecodingError();
    swift_allocError();
    v23 = v22;
    v24 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v23 = v16;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6B08], v21);
    swift_willThrow();
    v25 = type metadata accessor for AnyGroupActivity;
    v26 = a1;
    return _s15GroupActivities03AnyA8ActivityV16MetadataProviderOWOhTm_0(v26, v25);
  }

  outlined init with take of GroupActivityMetadata(v15, v19);
  outlined init with copy of URL?(&v19[*(v16 + 32)], v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of URL?(v6);
    v27 = type metadata accessor for DecodingError();
    swift_allocError();
    v29 = v28;
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR) + 48);
    *v29 = v7;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6B08], v27);
    swift_willThrow();
    _s15GroupActivities03AnyA8ActivityV16MetadataProviderOWOhTm_0(a1, type metadata accessor for AnyGroupActivity);
    v25 = type metadata accessor for GroupActivityMetadata;
    v26 = v19;
    return _s15GroupActivities03AnyA8ActivityV16MetadataProviderOWOhTm_0(v26, v25);
  }

  _s15GroupActivities03AnyA8ActivityV16MetadataProviderOWOhTm_0(a1, type metadata accessor for AnyGroupActivity);
  _s15GroupActivities03AnyA8ActivityV16MetadataProviderOWOhTm_0(v19, type metadata accessor for GroupActivityMetadata);
  v32 = *(v8 + 32);
  v32(v11, v6, v7);
  return (v32)(v34, v11, v7);
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys;
  if (!lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URLActivity.CodingKeys and conformance URLActivity.CodingKeys);
  }

  return result;
}

uint64_t type metadata accessor for URLActivity()
{
  result = type metadata singleton initialization cache for URLActivity;
  if (!type metadata singleton initialization cache for URLActivity)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of GroupActivityMetadata.ActivityType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s15GroupActivities03AnyA8ActivityV16MetadataProviderOWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t instantiation function for generic protocol witness table for URLActivity(uint64_t a1)
{
  *(a1 + 8) = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URLActivity and conformance URLActivity, type metadata accessor for URLActivity);
  result = lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URLActivity and conformance URLActivity, type metadata accessor for URLActivity);
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t type metadata completion function for URLActivity()
{
  result = type metadata accessor for URL();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t >> prefix<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in >> prefix<A>(_:), v4, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v2, v5);
  if (v5[1])
  {
    return v5[0];
  }

  else
  {
    return 7104878;
  }
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v29 = a5;
  v30 = a2;
  v32 = a4;
  v31 = a1;
  v28 = *(a3 - 8);
  v10 = *(v28 + 64);
  v11 = (MEMORY[0x1EEE9AC00])();
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 16);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = MEMORY[0x1EEE9AC00](v11);
  v20 = &v28 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(*(v21 - 8) + 64);
  MEMORY[0x1EEE9AC00](v18);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v6);
  v26 = 1;
  if ((*(v16 + 48))(v24, 1, v15) != 1)
  {
    (*(v16 + 32))(v20, v24, v15);
    v31(v20, v13);
    (*(v16 + 8))(v20, v15);
    if (v7)
    {
      return (*(v28 + 32))(v29, v13, a3);
    }

    v26 = 0;
  }

  return (*(*(v32 - 8) + 56))(a6, v26, 1);
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1, uint64_t a2)
{
  v6[2] = a2;
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in DefaultStringInterpolation.appendInterpolation<A>(_:), v6, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6158], v2, &v7);
  if (v8)
  {
    v3 = v7;
  }

  else
  {
    v3 = 7104878;
  }

  if (v8)
  {
    v4 = v8;
  }

  else
  {
    v4 = 0xE300000000000000;
  }

  MEMORY[0x1B27141F0](v3, v4);
}

GroupActivities::Subsystem_optional __swiftcall Subsystem.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Subsystem.init(rawValue:), v2);

  if (v3 == 1)
  {
    v4.value = GroupActivities_Subsystem_runtimeIssues;
  }

  else
  {
    v4.value = GroupActivities_Subsystem_unknownDefault;
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

unint64_t Subsystem.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Subsystem(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0xD000000000000018;
  }

  else
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v3)
  {
    v5 = "AttachmentLedger";
  }

  else
  {
    v5 = "com.apple.calls.copresence";
  }

  v6 = v5 | 0x8000000000000000;
  if (*a2)
  {
    v7 = 0xD000000000000018;
  }

  else
  {
    v7 = 0xD00000000000001ALL;
  }

  if (*a2)
  {
    v8 = "com.apple.calls.copresence";
  }

  else
  {
    v8 = "AttachmentLedger";
  }

  if (v4 == v7 && v6 == (v8 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Subsystem()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Subsystem()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Subsystem()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Subsystem@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Subsystem.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance Subsystem(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000018;
  }

  else
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v1)
  {
    v3 = "com.apple.calls.copresence";
  }

  else
  {
    v3 = "AttachmentLedger";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

uint64_t Logger.init<A>(subsystem:category:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  Logger.init(subsystem:category:)();
  return (*(*(a4 - 8) + 8))(a1, a4);
}

uint64_t one-time initialization function for copmanager()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.copmanager);
  __swift_project_value_buffer(v0, static Logger.copmanager);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for runtimeIssues(uint64_t a1)
{
  return one-time initialization function for runtimeIssues(a1, static Logger.runtimeIssues);
}

{
  return one-time initialization function for runtimeIssues(a1, static Log.runtimeIssues);
}

uint64_t one-time initialization function for extensionController()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.extensionController);
  __swift_project_value_buffer(v0, static Log.extensionController);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for groupSessionProviderObserver()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.groupSessionProviderObserver);
  __swift_project_value_buffer(v0, static Log.groupSessionProviderObserver);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for groupSessionProvider()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.groupSessionProvider);
  __swift_project_value_buffer(v0, static Log.groupSessionProvider);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for ckShareGroupSessionProvider()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.ckShareGroupSessionProvider);
  __swift_project_value_buffer(v0, static Log.ckShareGroupSessionProvider);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for personalGroupSessionProvider()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.personalGroupSessionProvider);
  __swift_project_value_buffer(v0, static Log.personalGroupSessionProvider);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for shareChangeObserver()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.shareChangeObserver);
  __swift_project_value_buffer(v0, static Log.shareChangeObserver);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for reliableBroadcast()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.reliableBroadcast);
  __swift_project_value_buffer(v0, static Log.reliableBroadcast);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for attachmentLedgerTopic()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.attachmentLedgerTopic);
  __swift_project_value_buffer(v0, static Log.attachmentLedgerTopic);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for runtimeIssues(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v3, a2);
  __swift_project_value_buffer(v3, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for systemCoordinator()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.systemCoordinator);
  __swift_project_value_buffer(v0, static Log.systemCoordinator);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for groupActivityAssociation()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.groupActivityAssociation);
  __swift_project_value_buffer(v0, static Log.groupActivityAssociation);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for nearbyActivityAdvertiser()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Log.nearbyActivityAdvertiser);
  __swift_project_value_buffer(v0, static Log.nearbyActivityAdvertiser);
  return Logger.init(subsystem:category:)();
}

uint64_t Log.systemCoordinator.unsafeMutableAddressor(void *a1, uint64_t a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();

  return __swift_project_value_buffer(v3, a2);
}

uint64_t static Logger.sessionUI.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  v6 = __swift_project_value_buffer(v5, a2);
  v7 = *(*(v5 - 8) + 16);

  return v7(a3, v6, v5);
}

uint64_t closure #1 in >> prefix<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(*(a2 - 8) + 64);
  MEMORY[0x1EEE9AC00](a1);
  (*(v6 + 16))(&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = String.init<A>(reflecting:)();
  *a3 = result;
  a3[1] = v8;
  return result;
}

unint64_t lazy protocol witness table accessor for type Subsystem and conformance Subsystem()
{
  result = lazy protocol witness table cache variable for type Subsystem and conformance Subsystem;
  if (!lazy protocol witness table cache variable for type Subsystem and conformance Subsystem)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Subsystem and conformance Subsystem);
  }

  return result;
}

uint64_t static GroupActivityAdvertisement.Destinations.all.getter()
{
  type metadata accessor for GroupActivityAdvertisement.Destinations();
  type metadata accessor for _ContiguousArrayStorage();
  swift_allocObject();
  static Array._adoptStorage(_:count:)();
  *v0 = xmmword_1AF00CA60;
  v0[1] = xmmword_1AF0196A0;
  type metadata accessor for Array();
  swift_getWitnessTable();
  return SetAlgebra<>.init(arrayLiteral:)();
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for SetAlgebra.init() in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();
  v3 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x1EEE6BBD8](a1, WitnessTable, v3);
}

uint64_t protocol witness for SetAlgebra.contains(_:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBA0](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.union(_:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB8](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBA8](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.symmetricDifference(_:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BBB0](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.insert(_:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB88](a1, a2, a3, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.remove(_:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB90](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.update(with:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB98](a1, a2, WitnessTable);
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, unint64_t))
{
  WitnessTable = swift_getWitnessTable();
  v7 = lazy protocol witness table accessor for type Int and conformance Int();

  return a4(a1, a2, WitnessTable, v7);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GroupActivityAdvertisement<A>.Destinations@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = GroupActivityAdvertisement.Destinations.init(rawValue:)(*a1, &v4);
  *a2 = v4;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance GroupActivityAdvertisement<A>.Destinations@<X0>(uint64_t *a1@<X8>)
{
  result = GroupActivityAdvertisement.Destinations.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GroupActivityAdvertisement<A>.Destinations(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance GroupActivityAdvertisement<A>.Destinations()
{
  swift_getWitnessTable();

  return SetAlgebra<>.init(arrayLiteral:)();
}

uint64_t GroupActivityAdvertisement.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = direct field offset for GroupActivityAdvertisement.id;
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GroupActivityAdvertisement.__allocating_init(activity:destinations:)(uint64_t a1, uint64_t *a2)
{
  v5 = *(v2 + 48);
  v6 = *(v2 + 52);
  v7 = swift_allocObject();
  GroupActivityAdvertisement.init(activity:destinations:)(a1, a2);
  return v7;
}

char *GroupActivityAdvertisement.init(activity:destinations:)(uint64_t a1, uint64_t *a2)
{
  v4 = *v2;
  v5 = *a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v2 + 2) = static ConversationManager.shared;

  UUID.init()();
  (*(*(*(v4 + 80) - 8) + 32))(&v2[*(*v2 + 112)], a1);
  *&v2[*(*v2 + 120)] = v5;
  return v2;
}

uint64_t GroupActivityAdvertisement.advertise()()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v1[4] = *(v2 + 80);
  v3 = type metadata accessor for Optional();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupActivityAdvertisement.advertise(), 0, 0);
}

{
  v25 = v0;
  if (one-time initialization token for nearbyActivityAdvertiser != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v2, static Log.nearbyActivityAdvertiser);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[4];
    v22 = v0[5];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    v11 = *(v7 - 8);
    (*(v11 + 16))(v5, v8 + *(*v8 + 112), v7);
    (*(v11 + 56))(v5, 0, 1, v7);
    v12 = >> prefix<A>(_:)(v5, v7);
    v14 = v13;
    (*(v6 + 8))(v5, v22);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v24);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Advertising activity: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  v16 = v0[2];
  v17 = direct field offset for GroupActivityAdvertisement.id;
  v18 = *(**(v16 + 16) + 312);
  v23 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v0[9] = v20;
  *v20 = v0;
  v20[1] = GroupActivityAdvertisement.advertise();

  return v23(v16 + v17);
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](GroupActivityAdvertisement.advertise(), 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Could not start to advertise the given activity: %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  v11 = v0[10];
  v12 = v0[7];
  v14 = v0[3];
  v13 = v0[4];

  v15 = *(v14 + 88);
  type metadata accessor for GroupActivityAdvertisement.Errors();
  swift_getWitnessTable();
  swift_allocError();
  *v16 = 0;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

uint64_t GroupActivityAdvertisement.stopAdvertisement()()
{
  v1[2] = v0;
  v2 = *v0;
  v1[3] = *v0;
  v1[4] = *(v2 + 80);
  v3 = type metadata accessor for Optional();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](GroupActivityAdvertisement.stopAdvertisement(), 0, 0);
}

{
  v25 = v0;
  if (one-time initialization token for nearbyActivityAdvertiser != -1)
  {
    swift_once();
  }

  v1 = v0[2];
  v2 = type metadata accessor for Logger();
  v0[8] = __swift_project_value_buffer(v2, static Log.nearbyActivityAdvertiser);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[6];
    v5 = v0[7];
    v7 = v0[4];
    v22 = v0[5];
    v8 = v0[2];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v24 = v10;
    *v9 = 136315138;
    v11 = *(v7 - 8);
    (*(v11 + 16))(v5, v8 + *(*v8 + 112), v7);
    (*(v11 + 56))(v5, 0, 1, v7);
    v12 = >> prefix<A>(_:)(v5, v7);
    v14 = v13;
    (*(v6 + 8))(v5, v22);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v24);

    *(v9 + 4) = v15;
    _os_log_impl(&dword_1AEE80000, v3, v4, "Stopping advertisement for activity: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x1B2715BA0](v10, -1, -1);
    MEMORY[0x1B2715BA0](v9, -1, -1);
  }

  v16 = v0[2];
  v17 = direct field offset for GroupActivityAdvertisement.id;
  v18 = *(**(v16 + 16) + 320);
  v23 = (v18 + *v18);
  v19 = v18[1];
  v20 = swift_task_alloc();
  v0[9] = v20;
  *v20 = v0;
  v20[1] = GroupActivityAdvertisement.stopAdvertisement();

  return v23(v16 + v17);
}

{
  v2 = *(*v1 + 72);
  v3 = *v1;
  v3[10] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](GroupActivityAdvertisement.stopAdvertisement(), 0, 0);
  }

  else
  {
    v4 = v3[7];

    v5 = v3[1];

    return v5();
  }
}

{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Could not stop to advertise the given activity: %@", v7, 0xCu);
    outlined destroy of NSObject?(v8);
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v7, -1, -1);
  }

  v11 = v0[10];
  v12 = v0[7];
  v14 = v0[3];
  v13 = v0[4];

  v15 = *(v14 + 88);
  type metadata accessor for GroupActivityAdvertisement.Errors();
  swift_getWitnessTable();
  swift_allocError();
  *v16 = 1;
  swift_willThrow();

  v17 = v0[1];

  return v17();
}

char *GroupActivityAdvertisement.deinit()
{
  v1 = *v0;
  v2 = *(v0 + 2);

  v3 = direct field offset for GroupActivityAdvertisement.id;
  v4 = type metadata accessor for UUID();
  (*(*(v4 - 8) + 8))(&v0[v3], v4);
  (*(*(*(v1 + 80) - 8) + 8))(&v0[*(*v0 + 112)]);
  return v0;
}

uint64_t GroupActivityAdvertisement.__deallocating_deinit()
{
  GroupActivityAdvertisement.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

Swift::Int GroupActivityAdvertisement.Errors.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](a1 & 1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupActivityAdvertisement<A>.Errors()
{
  Hasher.init(_seed:)();
  GroupActivityAdvertisement.Errors.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t type metadata completion function for GroupActivityAdvertisement(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of GroupActivityAdvertisement.advertise()()
{
  v2 = *(*v0 + 136);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v6();
}

uint64_t dispatch thunk of GroupActivityAdvertisement.stopAdvertisement()()
{
  v2 = *(*v0 + 144);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v6();
}

uint64_t type metadata instantiation function for GroupActivityAdvertisement.Destinations()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void closure #1 in NSItemProvider.loadGroupActivity()(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = aBlock - v7;
  if (one-time initialization token for _groupActivity != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for UTType();
  __swift_project_value_buffer(v9, static UTType._groupActivity);
  v10 = UTType.identifier.getter();
  v11 = MEMORY[0x1B2714130](v10);

  (*(v5 + 16))(v8, a1, v4);
  v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v13 = swift_allocObject();
  (*(v5 + 32))(v13 + v12, v8, v4);
  aBlock[4] = partial apply for closure #1 in closure #1 in NSItemProvider.loadGroupActivity();
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed CPDataCryptor?, @guaranteed Error?) -> ();
  aBlock[3] = &block_descriptor_13;
  v14 = _Block_copy(aBlock);

  [a2 loadItemForTypeIdentifier:v11 options:0 completionHandler:v14];
  _Block_release(v14);
}

void closure #1 in closure #1 in NSItemProvider.loadGroupActivity()(uint64_t a1, id a2)
{
  if (a1)
  {
    swift_unknownObjectRetain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo14NSSecureCoding_pMd, &_sSo14NSSecureCoding_pMR);
    if (swift_dynamicCast())
    {
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x1E696ACD0);
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivity, 0x1E69D8B28);
      v13 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
      v14 = one-time initialization token for default;
      v15 = v13;
      v16 = v15;
      if (v14 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static Log.default);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        *v20 = 138412290;
        *(v20 + 4) = v16;
        *v21 = v13;
        v22 = v16;
        _os_log_impl(&dword_1AEE80000, v18, v19, "Unarchiving activity from item provider data: %@", v20, 0xCu);
        outlined destroy of NSObject?(v21);
        MEMORY[0x1B2715BA0](v21, -1, -1);
        MEMORY[0x1B2715BA0](v20, -1, -1);
      }

      outlined consume of Data._Representation(v26, v27);

      if (!v13)
      {
        goto LABEL_23;
      }
    }

    else
    {
      objc_opt_self();
      v13 = swift_dynamicCastObjCClass();
      if (v13)
      {
        swift_unknownObjectRetain();
      }

      v2 = one-time initialization token for default;
      v3 = v13;
      if (v2 != -1)
      {
        swift_once();
      }

      v4 = type metadata accessor for Logger();
      __swift_project_value_buffer(v4, static Log.default);
      v5 = Logger.logObject.getter();
      v6 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        *v7 = 138412290;
        *(v7 + 4) = v3;
        *v8 = v13;
        v9 = v3;
        _os_log_impl(&dword_1AEE80000, v5, v6, "Received activity object from item provider: %@", v7, 0xCu);
        outlined destroy of NSObject?(v8);
        MEMORY[0x1B2715BA0](v8, -1, -1);
        MEMORY[0x1B2715BA0](v7, -1, -1);
      }

      if (!v13)
      {
        goto LABEL_23;
      }
    }

    v23 = [v13 sanitizedCopy];

    if (v23)
    {
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);
      CheckedContinuation.resume(returning:)();

LABEL_24:
      swift_unknownObjectRelease();

      return;
    }

LABEL_23:
    lazy protocol witness table accessor for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError();
    swift_allocError();
    *v25 = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);
    CheckedContinuation.resume(throwing:)();
    goto LABEL_24;
  }

  if (!a2)
  {
    lazy protocol witness table accessor for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError();
    swift_allocError();
    v11 = v10;
    a2 = 0;
    *v11 = 1;
  }

  v12 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
}

void partial apply for closure #1 in closure #1 in NSItemProvider.loadGroupActivity()(uint64_t a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo22TUConversationActivityCs5Error_pGMd, &_sScCySo22TUConversationActivityCs5Error_pGMR) - 8) + 80);

  closure #1 in closure #1 in NSItemProvider.loadGroupActivity()(a1, a2);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError()
{
  result = lazy protocol witness table cache variable for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError;
  if (!lazy protocol witness table cache variable for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError;
  if (!lazy protocol witness table cache variable for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSItemProvider.TUConversationActivityLoadError and conformance NSItemProvider.TUConversationActivityLoadError);
  }

  return result;
}

void specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_8:
      v16 = *(*(a3 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v8)))));
      v12 = v16;
      v13 = a1(&v16);
      if (v3)
      {
        break;
      }

      v14 = v13;

      if (v14)
      {
        goto LABEL_12;
      }

      v8 &= v8 - 1;
      v10 = v11;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v11 >= v9)
      {
LABEL_12:

        return;
      }

      v8 = *(v5 + 8 * v11);
      ++v10;
      if (v8)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

void specialized Sequence.forEach(_:)(uint64_t a1, uint64_t *a2)
{
  v52 = a2;
  v48 = type metadata accessor for UUID();
  v3 = *(*(v48 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v48);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v42 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v49 = a1;
  v50 = &v42 - v10;
  v11 = a1 + 64;
  v12 = 1 << *(a1 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a1 + 64);
  v15 = (v12 + 63) >> 6;
  v46 = (v9 + 8);

  v16 = 0;
  v47 = a1 + 64;
  v44 = v8;
  v45 = v15;
  while (v14)
  {
    v34 = v50;
    v35 = &unk_1E7A4B000;
LABEL_13:
    v37 = *(*(v49 + 56) + ((v16 << 9) | (8 * __clz(__rbit64(v14)))));
    v38 = [v37 v35[493]];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v39 = *v52;
    if (*(*v52 + 16) && (v40 = specialized __RawDictionaryStorage.find<A>(_:)(v34), (v41 & 1) != 0))
    {
      v27 = v35;
      v26 = *(*(v39 + 56) + 8 * v40);
    }

    else
    {
      v17 = v37;
      v18 = [v17 v35[493]];
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v19 = [v17 groupUUID];
      v20 = v8;
      v21 = v43;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v22 = ([v17 capabilities] >> 3) & 1;
      v23 = type metadata accessor for Conversation();
      v24 = *(v23 + 48);
      v25 = *(v23 + 52);
      swift_allocObject();
      v26 = Conversation.init(identifier:groupUUID:isEligibleForGroupSessions:)(v20, v21, v22);

      Conversation.update(with:)(v17);

      v27 = &unk_1E7A4B000;
    }

    v14 &= v14 - 1;
    v51 = *v46;
    v28 = v34;
    v29 = v48;
    v51(v28, v48);
    Conversation.update(with:)(v37);
    v30 = [v37 v27[493]];
    v8 = v44;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v31 = v52;
    v32 = *v52;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = *v31;
    *v31 = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v26, v8, isUniquelyReferenced_nonNull_native);
    v51(v8, v29);
    *v31 = v53;

    v11 = v47;
    v15 = v45;
  }

  v34 = v50;
  v35 = &unk_1E7A4B000;
  while (1)
  {
    v36 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v36 >= v15)
    {

      return;
    }

    v14 = *(v11 + 8 * v36);
    ++v16;
    if (v14)
    {
      v16 = v36;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t ConversationManager.__allocating_init(client:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized ConversationManager.init(client:)(v8, v2, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t static ConversationManager.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t ConversationManager.conversationsByUUID.getter()
{
  v1 = v0;
  os_unfair_lock_lock((v0 + 16));
  v2 = *(v0 + 24);
  if (v2)
  {
    v3 = *(v0 + 24);
  }

  else
  {
    outlined init with copy of Transferable(v0 + 96, v12);
    v4 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v5 = *(v4 + 8);
    v6 = dispatch thunk of ActivitySessionContainerProvider.activitySessions.getter();
    v3 = specialized ConversationManager.updateConversations(conversationsByGroupUUID:)(v6);

    __swift_destroy_boxed_opaque_existential_0(v12);
    *(v1 + 24) = v3;
  }

  os_unfair_lock_unlock((v1 + 16));
  if (!v2)
  {
    outlined init with copy of Transferable(v1 + 96, v12);
    v7 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v8 = *(v7 + 8);
    dispatch thunk of ActivitySessionContainerProvider.onActivitySessionsChanged.getter();
    swift_unownedRetainStrong();
    swift_unownedRetain();

    *(swift_allocObject() + 16) = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type AnyPublisher<[UUID : TUConversationActivitySessionContainer], Never> and conformance AnyPublisher<A, B>, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMd, &_s7Combine12AnyPublisherVySDy10Foundation4UUIDVSo38TUConversationActivitySessionContainerCGs5NeverOGMR);
    v9 = Publisher<>.sink(receiveValue:)();

    __swift_destroy_boxed_opaque_existential_0(v12);
    v10 = *(v1 + 136);
    *(v1 + 136) = v9;
  }

  return v3;
}

uint64_t closure #2 in ConversationManager.conversationsByUUID.getter(uint64_t *a1)
{
  v1 = *a1;
  swift_unownedRetainStrong();
  swift_unownedRetainStrong();
  v2 = specialized ConversationManager.updateConversations(conversationsByGroupUUID:)(v1);

  ConversationManager.conversationsByUUID.setter(v2);
}

uint64_t ConversationManager.conversationsByUUID.setter(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock((v2 + 16));
  v4 = *(v2 + 24);

  *(v2 + 24) = a1;
  os_unfair_lock_unlock((v2 + 16));
  v5 = ConversationManager.conversationsByUUID.getter();
  v6 = v5;
  v7 = *(v5 + 16);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15GroupActivities12ConversationC_Tt1g5(*(v5 + 16), 0);
  v9 = specialized Sequence._copySequenceContents(initializing:)(&v20, (v8 + 32), v7, v6);
  outlined consume of [UUID : Conversation].Iterator._Variant();
  if (v9 != v7)
  {
    __break(1u);
LABEL_4:

    v8 = MEMORY[0x1E69E7CC0];
  }

  v20 = MEMORY[0x1E69E7CC0];
  if ((v8 & 0x8000000000000000) != 0 || (v8 & 0x4000000000000000) != 0)
  {
LABEL_22:
    v10 = __CocoaSet.count.getter();
    if (v10)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v10 = *(v8 + 16);
    if (v10)
    {
LABEL_8:
      v11 = 0;
      while (1)
      {
        if ((v8 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1B2714B30](v11, v8);
          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
LABEL_19:
            __break(1u);
LABEL_20:
            v16 = v20;
            goto LABEL_24;
          }
        }

        else
        {
          if (v11 >= *(v8 + 16))
          {
            __break(1u);
            goto LABEL_22;
          }

          v12 = *(v8 + 8 * v11 + 32);

          v13 = v11 + 1;
          if (__OFADD__(v11, 1))
          {
            goto LABEL_19;
          }
        }

        v14 = (*(*v12 + 160))(&v19);
        if (v19 == 3 && (*(*v12 + 280))(v14))
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v15 = *(v20 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v11;
        if (v13 == v10)
        {
          goto LABEL_20;
        }
      }
    }
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_24:

  v17 = specialized Sequence.flatMap<A>(_:)(v16);

  ConversationManager._groupSessions.getter();
  v20 = v17;
  CurrentValueSubject.send(_:)();
}

void *ConversationManager.conversations.getter()
{
  v0 = ConversationManager.conversationsByUUID.getter();
  v1 = v0;
  v2 = *(v0 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15GroupActivities12ConversationC_Tt1g5(*(v0 + 16), 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, v1);
  outlined consume of [UUID : Conversation].Iterator._Variant();
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t ConversationManager.suggest(activity:)()
{
  v0 = type metadata accessor for AnyCancellable();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  return AnyCancellable.init(_:)();
}

unint64_t ConversationManager.groupSessions(_:)(unint64_t a1)
{
  v11 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_16:
    v2 = __CocoaSet.count.getter();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1B2714B30](v3, a1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:
            v7 = v11;
            goto LABEL_18;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v4 = *(a1 + 8 * v3 + 32);

          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_13;
          }
        }

        (*(*v4 + 160))(&v10);
        if (v10 == 3)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v6 = *(v11 + 16);
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        else
        {
        }

        ++v3;
        if (v5 == v2)
        {
          goto LABEL_14;
        }
      }
    }
  }

  v7 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v8 = specialized Sequence.flatMap<A>(_:)(v7);

  return v8;
}

uint64_t ConversationManager._groupSessions.getter()
{
  if (!v0[4])
  {
    v2 = v0;
    v3 = ConversationManager.conversationsByUUID.getter();
    v4 = v3;
    v5 = *(v3 + 16);
    if (v5)
    {
      v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15GroupActivities12ConversationC_Tt1g5(*(v3 + 16), 0);
      v7 = specialized Sequence._copySequenceContents(initializing:)(&v14, v6 + 4, v5, v4);
      outlined consume of [UUID : Conversation].Iterator._Variant();
      if (v7 == v5)
      {
LABEL_7:
        v8 = (*(*v2 + 168))(v6);

        v14 = v8;
        v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine19CurrentValueSubjectCySay15GroupActivities0E7SessionCyAD03AnyE8ActivityVGGs5NeverOGMd, &_s7Combine19CurrentValueSubjectCySay15GroupActivities0E7SessionCyAD03AnyE8ActivityVGGs5NeverOGMR);
        v10 = *(v9 + 48);
        v11 = *(v9 + 52);
        swift_allocObject();
        v1 = CurrentValueSubject.init(_:)();
        v12 = v2[4];
        v2[4] = v1;

        goto LABEL_8;
      }

      __break(1u);
    }

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  v1 = v0[4];
LABEL_8:

  return v1;
}

uint64_t ConversationManager.groupSessions.getter()
{
  ConversationManager._groupSessions.getter();
  CurrentValueSubject.value.getter();

  return v1;
}

uint64_t ConversationManager.groupSessionsPublisher.getter()
{
  v0 = ConversationManager._groupSessions.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySay15GroupActivities0G7SessionCyAF03AnyG8ActivityVGGs5NeverOGGMd, &_s7Combine12PublisherBoxCyAA19CurrentValueSubjectCySay15GroupActivities0G7SessionCyAF03AnyG8ActivityVGGs5NeverOGGMR);
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t ConversationManager.topicManager.getter()
{
  if (v0[5])
  {
    v1 = v0[5];
  }

  else
  {
    v2 = type metadata accessor for TopicManager();
    v3 = v0[15];
    v4 = v0[16];
    v5 = __swift_project_boxed_opaque_existential_1(v0 + 12, v3);
    v6 = *(v3 - 8);
    v7 = *(v6 + 64);
    MEMORY[0x1EEE9AC00](v5);
    v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = [objc_allocWithZone(MEMORY[0x1E6997708]) init];
    v11 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CPFeatureFlags, 0x1E6997708);
    v1 = specialized TopicManager.__allocating_init(provider:featureFlags:)(v9, v10, v2, v3, v11, *(v4 + 8));
    (*(v6 + 8))(v9, v3);
    v12 = v0[5];
    v0[5] = v1;
  }

  return v1;
}

uint64_t ConversationManager.topicManager.setter(uint64_t a1)
{
  v2 = *(v1 + 40);
  *(v1 + 40) = a1;
}

uint64_t (*ConversationManager.topicManager.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ConversationManager.topicManager.getter();
  return ConversationManager.topicManager.modify;
}

uint64_t ConversationManager.topicManager.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 40);
  *(v1 + 40) = v2;
}

uint64_t ConversationManager.audioSessionAssertionManager.setter(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + 48));
  outlined init with take of Transferable(a1, v1 + 48);
  return swift_endAccess();
}

uint64_t ConversationManager.groupSessionTable.setter(uint64_t a1)
{
  v2 = *(v1 + 88);
  *(v1 + 88) = a1;
}

uint64_t (*ConversationManager.groupSessionTable.modify(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = ConversationManager.groupSessionTable.getter();
  return ConversationManager.groupSessionTable.modify;
}

uint64_t ConversationManager.groupSessionTable.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 88);
  *(v1 + 88) = v2;
}

uint64_t ConversationManager.prepareForActivation(options:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 88) = a1;
  *(v3 + 96) = v2;
  v4 = *(a2 + 48);
  *(v3 + 48) = *(a2 + 32);
  *(v3 + 64) = v4;
  *(v3 + 80) = *(a2 + 64);
  v5 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v5;
  return MEMORY[0x1EEE6DFA0](ConversationManager.prepareForActivation(options:), 0, 0);
}

uint64_t ConversationManager.prepareForActivation(options:)()
{
  v1 = v0[12];
  v2 = swift_task_alloc();
  v0[13] = v2;
  *(v2 + 16) = v1;
  *(v2 + 24) = v0 + 2;
  v3 = *(MEMORY[0x1E69E88D0] + 4);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = ConversationManager.prepareForActivation(options:);
  v5 = v0[11];

  return MEMORY[0x1EEE6DDE0](v5, 0, 0, 0xD00000000000001ELL, 0x80000001AF01DEE0, partial apply for closure #1 in ConversationManager.prepareForActivation(options:), v2, &type metadata for GroupActivityActivationResult);
}

{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 104);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t closure #1 in ConversationManager.prepareForActivation(options:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v40 = a1;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15GroupActivities0A24ActivityActivationResultOs5NeverOGMd, &_sScCy15GroupActivities0A24ActivityActivationResultOs5NeverOGMR);
  v5 = *(v41 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v8 = v30 - v7;
  v9 = type metadata accessor for AuthorizationRequestOverrides.PromptCondition();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v30 - v15;
  outlined init with copy of Transferable(a2 + 96, v42);
  v38 = v44;
  v39 = v43;
  v37 = __swift_project_boxed_opaque_existential_1(v42, v43);
  v17 = 0;
  if (a3[1] != 1)
  {
    v18 = a3[6];
    v19 = a3[4];
    v20 = a3[5];
    v31 = a3[7];
    v32 = v20;
    v35 = v19;
    v36 = v18;
    v21 = a3[2];
    v22 = a3[3];
    v33 = *a3;
    v34 = v21;
    v23 = *(a3 + 64);
    v24 = *(v10 + 104);
    v45 = *(a3 + 65);
    v24(v14, **(&unk_1E7A4BBF0 + v23), v9);
    v30[1] = v45;
    (*(v10 + 32))(v16, v14, v9);
    v25 = objc_allocWithZone(type metadata accessor for AuthorizationRequestOverrides());

    v17 = AuthorizationRequestOverrides.init(title:message:startForEveryone:startForMe:promptCondition:confirmReplacement:)();
  }

  v26 = v41;
  (*(v5 + 16))(v8, v40, v41);
  v27 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v28 = swift_allocObject();
  (*(v5 + 32))(v28 + v27, v8, v26);
  dispatch thunk of ConversationManagerClientProtocol.prepareForGroupActivity(overrides:completionHandler:)();

  return __swift_destroy_boxed_opaque_existential_0(v42);
}

uint64_t closure #1 in closure #1 in ConversationManager.prepareForActivation(options:)(char a1, void *a2)
{
  if (a2)
  {
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Log.default);
    v4 = a2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136315138;
      v9 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v10 = String.init<A>(reflecting:)();
      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v15);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1AEE80000, v5, v6, "Error preparing activity for activation: %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x1B2715BA0](v8, -1, -1);
      MEMORY[0x1B2715BA0](v7, -1, -1);
    }

    v13 = 2;
  }

  else
  {
    v13 = (a1 & 1) == 0;
  }

  LOBYTE(v15) = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15GroupActivities0A24ActivityActivationResultOs5NeverOGMd, &_sScCy15GroupActivities0A24ActivityActivationResultOs5NeverOGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t ConversationManager.begin(activity:request:onConversationWithUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[9] = a2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64) + 15;
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v4[14] = v6;
  v7 = *(v6 - 8);
  v4[15] = v7;
  v8 = *(v7 + 64) + 15;
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](ConversationManager.begin(activity:request:onConversationWithUUID:), 0, 0);
}

uint64_t ConversationManager.begin(activity:request:onConversationWithUUID:)()
{
  v52 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[12];
  outlined init with copy of UUID?(v0[10], v3);
  v4 = *(v2 + 48);
  if (v4(v3, 1, v1) == 1)
  {
    v5 = v0[11];
    v6 = ConversationManager.activeConversation.getter();
    if (v6)
    {
      v7 = v0[13];
      (*(*v6 + 136))(v6);

      v8 = 0;
    }

    else
    {
      v8 = 1;
    }

    v12 = v0[14];
    v13 = v0[12];
    (*(v0[15] + 56))(v0[13], v8, 1, v12);
    if (v4(v13, 1, v12) != 1)
    {
      outlined destroy of NSObject?(v0[12], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }
  }

  else
  {
    v9 = v0[14];
    v10 = v0[15];
    v11 = v0[13];
    (*(v10 + 32))(v11, v0[12], v9);
    (*(v10 + 56))(v11, 0, 1, v9);
  }

  v15 = v0[13];
  v14 = v0[14];
  if (v4(v15, 1, v14) == 1)
  {
    outlined destroy of NSObject?(v15, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v16 = v0[9];
    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Log.default);
    v18 = v16;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = v0[9];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v51 = v23;
      *v22 = 136315138;
      v0[7] = v21;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivityCreateSessionRequest, 0x1E69D8B38);
      v24 = v21;
      v25 = String.init<A>(reflecting:)();
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, &v51);

      *(v22 + 4) = v27;
      _os_log_impl(&dword_1AEE80000, v19, v20, "Dropping activity as there is no active conversation: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x1B2715BA0](v23, -1, -1);
      MEMORY[0x1B2715BA0](v22, -1, -1);
    }

    v28 = v0[16];
    v29 = v0[12];
    v30 = v0[13];

    v31 = v0[1];

    return v31(0);
  }

  else
  {
    (*(v0[15] + 32))(v0[16], v15, v14);
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v33 = v0[9];
    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Log.default);
    v35 = v33;
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = v0[9];
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v51 = v40;
      *v39 = 136315138;
      v0[8] = v38;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivityCreateSessionRequest, 0x1E69D8B38);
      v41 = v38;
      v42 = String.init<A>(reflecting:)();
      v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v42, v43, &v51);

      *(v39 + 4) = v44;
      _os_log_impl(&dword_1AEE80000, v36, v37, "Activating activity through current session: %s.", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v40);
      MEMORY[0x1B2715BA0](v40, -1, -1);
      MEMORY[0x1B2715BA0](v39, -1, -1);
    }

    outlined init with copy of Transferable(v0[11] + 96, (v0 + 2));
    v45 = v0[5];
    v46 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v45);
    v47 = *(MEMORY[0x1E69976E8] + 4);
    v48 = swift_task_alloc();
    v0[17] = v48;
    *v48 = v0;
    v48[1] = ConversationManager.begin(activity:request:onConversationWithUUID:);
    v49 = v0[16];
    v50 = v0[9];

    return MEMORY[0x1EEDF8BF0](v50, v49, v45, v46);
  }
}

{
  (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 152);
  v2 = *(v0 + 128);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);

  v5 = *(v0 + 8);

  return v5(v1);
}

{
  v1 = v0[13];
  v2 = v0[12];
  (*(v0[15] + 8))(v0[16], v0[14]);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v3 = v0[1];
  v4 = v0[18];

  return v3(0);
}

uint64_t ConversationManager.begin(activity:request:onConversationWithUUID:)(char a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = ConversationManager.begin(activity:request:onConversationWithUUID:);
  }

  else
  {
    *(v4 + 152) = a1 & 1;
    v7 = ConversationManager.begin(activity:request:onConversationWithUUID:);
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t ConversationManager.activeConversation.getter()
{
  v0 = ConversationManager.conversationsByUUID.getter();
  v1 = v0;
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15GroupActivities12ConversationC_Tt1g5(*(v0 + 16), 0);
    v4 = specialized Sequence._copySequenceContents(initializing:)(&v10, (v3 + 32), v2, v1);
    result = outlined consume of [UUID : Conversation].Iterator._Variant();
    if (v4 != v2)
    {
      __break(1u);
      return result;
    }

    if ((v3 & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }
  }

  else
  {

    v3 = MEMORY[0x1E69E7CC0];
    if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
    {
      goto LABEL_19;
    }
  }

  if ((v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_19;
  }

  v6 = *(v3 + 16);
  if (!v6)
  {
    goto LABEL_20;
  }

  do
  {
    v7 = 0;
    while ((v3 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1B2714B30](v7, v3);
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_17;
      }

LABEL_12:
      (*(*v8 + 160))(&v10);
      if (v10 == 3)
      {
        goto LABEL_21;
      }

      ++v7;
      if (v9 == v6)
      {
        goto LABEL_20;
      }
    }

    if (v7 >= *(v3 + 16))
    {
      goto LABEL_18;
    }

    v8 = *(v3 + 8 * v7 + 32);

    v9 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_12;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    v6 = __CocoaSet.count.getter();
  }

  while (v6);
LABEL_20:
  v8 = 0;
LABEL_21:

  return v8;
}

uint64_t ConversationManager.advertiseGroupActivity(_:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](ConversationManager.advertiseGroupActivity(_:), 0, 0);
}

uint64_t ConversationManager.advertiseGroupActivity(_:)()
{
  outlined init with copy of Transferable(v0[9] + 96, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(MEMORY[0x1E69976F0] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = ConversationManager.advertiseGroupActivity(_:);
  v5 = v0[8];

  return MEMORY[0x1EEDF8BF8](v5, v1, v2);
}

{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = ConversationManager.advertiseGroupActivity(_:);
  }

  else
  {
    v3 = AttachmentLedgerTopic.requestUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v17 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[7] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Error advertising activity: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t ConversationManager.stopAdvertisingGroupActivity(_:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](ConversationManager.stopAdvertisingGroupActivity(_:), 0, 0);
}

uint64_t ConversationManager.stopAdvertisingGroupActivity(_:)()
{
  outlined init with copy of Transferable(v0[9] + 96, (v0 + 2));
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = *(MEMORY[0x1E69976F8] + 4);
  v4 = swift_task_alloc();
  v0[10] = v4;
  *v4 = v0;
  v4[1] = ConversationManager.stopAdvertisingGroupActivity(_:);
  v5 = v0[8];

  return MEMORY[0x1EEDF8C10](v5, v1, v2);
}

{
  v2 = *(*v1 + 80);
  v5 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = ConversationManager.stopAdvertisingGroupActivity(_:);
  }

  else
  {
    v3 = AttachmentLedgerTopic.refreshUploadToken();
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

{
  v17 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = v0[11];
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Log.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[11];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[7] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v11 = String.init<A>(reflecting:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1AEE80000, v4, v5, "Error stopping advertising activity: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1B2715BA0](v9, -1, -1);
    MEMORY[0x1B2715BA0](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t ConversationManager.init(client:)(uint64_t *a1)
{
  v3 = a1[3];
  v4 = a1[4];
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a1, v3);
  v6 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8);
  v10 = specialized ConversationManager.init(client:)(v8, v1, v3, v4);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v10;
}

uint64_t closure #1 in closure #2 in ConversationManager.updateConversations(conversationsByGroupUUID:)(id *a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 UUID];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v6, v2);
  return v8 & 1;
}

void *ConversationManager.deinit()
{
  outlined destroy of NSObject?((v0 + 3), &_s14CopresenceCore9LazyStateOySDy10Foundation4UUIDV15GroupActivities12ConversationCGGMd, &_s14CopresenceCore9LazyStateOySDy10Foundation4UUIDV15GroupActivities12ConversationCGGMR);
  v1 = v0[4];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_0(v0 + 6);
  v3 = v0[11];

  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v4 = v0[17];

  return v0;
}

uint64_t ConversationManager.__deallocating_deinit()
{
  outlined destroy of NSObject?((v0 + 3), &_s14CopresenceCore9LazyStateOySDy10Foundation4UUIDV15GroupActivities12ConversationCGGMd, &_s14CopresenceCore9LazyStateOySDy10Foundation4UUIDV15GroupActivities12ConversationCGGMR);
  v1 = v0[4];

  v2 = v0[5];

  __swift_destroy_boxed_opaque_existential_0(v0 + 6);
  v3 = v0[11];

  __swift_destroy_boxed_opaque_existential_0(v0 + 12);
  v4 = v0[17];

  return swift_deallocClassInstance();
}

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance ConversationManager@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ConversationManager();
  result = ObservableObject<>.objectWillChange.getter();
  *a1 = result;
  return result;
}

uint64_t protocol witness for InternalGroupSessionProvider.prepareForActivation(options:) in conformance ConversationManager(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 288);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v10(a1, a2);
}

uint64_t protocol witness for InternalGroupSessionProvider.begin(activity:request:onConversationWithUUID:) in conformance ConversationManager(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 296);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = protocol witness for InternalGroupSessionProvider.begin(activity:request:onConversationWithUUID:) in conformance ConversationManager;

  return v12(a1, a2, a3);
}

uint64_t protocol witness for InternalGroupSessionProvider.begin(activity:request:onConversationWithUUID:) in conformance ConversationManager(char a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v5 = *(v8 + 8);
  if (v1)
  {
    v6 = 0;
  }

  else
  {
    v6 = a1 & 1;
  }

  return v5(v6);
}

uint64_t protocol witness for InternalGroupSessionProvider.end(activity:) in conformance ConversationManager(uint64_t a1)
{
  v4 = *(*v1 + 304);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v8(a1);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC15GroupActivities12ConversationC_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
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

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1B2714B30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

uint64_t (*specialized protocol witness for Collection.subscript.read in conformance [A](uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1B2714B30](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return protocol witness for Collection.subscript.read in conformance [A]specialized ;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t specialized ConversationManager.init(client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a3;
  v12 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v10);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  *(a2 + 16) = 0;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  *(a2 + 24) = 0;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static AVAudioSessionAssertionManager.shared;
  *(a2 + 72) = type metadata accessor for AVAudioSessionAssertionManager();
  *(a2 + 80) = &protocol witness table for AVAudioSessionAssertionManager;
  *(a2 + 48) = v8;
  *(a2 + 88) = 0;
  *(a2 + 136) = 0;
  outlined init with take of Transferable(&v10, a2 + 96);

  return a2;
}

uint64_t dispatch thunk of ConversationManager.prepareForActivation(options:)(uint64_t a1, uint64_t a2)
{
  v6 = *(*v2 + 288);
  v10 = (v6 + *v6);
  v7 = v6[1];
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v10(a1, a2);
}

uint64_t dispatch thunk of ConversationManager.begin(activity:request:onConversationWithUUID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(*v3 + 296);
  v12 = (v8 + *v8);
  v9 = v8[1];
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = partial apply for closure #1 in GroupActivityTransferRepresentation.init<A>(exporting:);

  return v12(a1, a2, a3);
}

uint64_t dispatch thunk of ConversationManager.end(activity:)(uint64_t a1)
{
  v4 = *(*v1 + 304);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v8(a1);
}

uint64_t dispatch thunk of ConversationManager.advertiseGroupActivity(_:)(uint64_t a1)
{
  v4 = *(*v1 + 312);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v8(a1);
}

uint64_t dispatch thunk of ConversationManager.stopAdvertisingGroupActivity(_:)(uint64_t a1)
{
  v4 = *(*v1 + 320);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v8(a1);
}

uint64_t partial apply for closure #1 in closure #1 in ConversationManager.prepareForActivation(options:)(char a1, void *a2)
{
  v4 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15GroupActivities0A24ActivityActivationResultOs5NeverOGMd, &_sScCy15GroupActivities0A24ActivityActivationResultOs5NeverOGMR) - 8) + 80);

  return closure #1 in closure #1 in ConversationManager.prepareForActivation(options:)(a1, a2);
}

uint64_t specialized ConversationManager.updateConversations(conversationsByGroupUUID:)(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v66 = *(v2 - 8);
  v3 = *(v66 + 64);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v56 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v55 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v62 = &v55 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v55 - v11;
  if (one-time initialization token for default != -1)
  {
LABEL_31:
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.default);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  v16 = os_log_type_enabled(v14, v15);
  v65 = v2;
  v61 = v12;
  v57 = v8;
  if (v16)
  {
    v17 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v69 = v8;
    *v17 = 136315138;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivitySessionContainer, 0x1E69D8B60);
    lazy protocol witness table accessor for type UUID and conformance UUID();
    v18 = Dictionary.description.getter();
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18, v19, &v69);

    *(v17 + 4) = v20;
    _os_log_impl(&dword_1AEE80000, v14, v15, "ConversationManager received event conversationsByGroupUUID: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x1B2715BA0](v8, -1, -1);
    MEMORY[0x1B2715BA0](v17, -1, -1);
  }

  v69 = MEMORY[0x1E69E7CC8];
  v63 = a1;
  specialized Sequence.forEach(_:)(a1, &v69);
  v21 = v69;
  v2 = v69 + 64;
  v22 = 1 << *(v69 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  a1 = v23 & *(v69 + 64);
  v24 = (v22 + 63) >> 6;
  v67 = v66 + 16;
  v64 = v66 + 32;
  v25 = (v66 + 8);

  v12 = 0;
  v58 = MEMORY[0x1E69E7CC0];
  v59 = v24;
  v60 = v2;
LABEL_7:
  v26 = v12;
  if (!a1)
  {
    goto LABEL_9;
  }

  do
  {
    v12 = v26;
LABEL_12:
    v27 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v8 = v65;
    v28 = v66;
    v29 = *(v66 + 72);
    v30 = v62;
    (*(v66 + 16))(v62, *(v21 + 48) + v29 * (v27 | (v12 << 6)), v65);
    v31 = *(v28 + 32);
    v32 = v61;
    v33 = v31(v61, v30, v8);
    MEMORY[0x1EEE9AC00](v33);
    *(&v55 - 2) = v32;
    specialized Sequence.contains(where:)(partial apply for closure #1 in closure #2 in ConversationManager.updateConversations(conversationsByGroupUUID:), (&v55 - 4), v63);
    if ((v34 & 1) == 0)
    {
      v31(v56, v32, v8);
      v35 = v58;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v35;
      v37 = v31;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1);
        v37 = v31;
        v35 = v68;
      }

      v8 = v29;
      v24 = v59;
      v39 = *(v35 + 2);
      v38 = *(v35 + 3);
      v40 = v39 + 1;
      if (v39 >= v38 >> 1)
      {
        v58 = v37;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v38 > 1, v39 + 1, 1);
        v40 = v39 + 1;
        v37 = v58;
        v35 = v68;
      }

      *(v35 + 2) = v40;
      v41 = *(v66 + 80);
      v58 = v35;
      (v37)(&v35[((v41 + 32) & ~v41) + v39 * v8], v56, v65);
      v2 = v60;
      goto LABEL_7;
    }

    (*v25)(v32, v8);
    v26 = v12;
    v24 = v59;
    v2 = v60;
  }

  while (a1);
  while (1)
  {
LABEL_9:
    v12 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v12 >= v24)
    {
      break;
    }

    a1 = *(v2 + 8 * v12);
    ++v26;
    if (a1)
    {
      goto LABEL_12;
    }
  }

  v42 = *(v58 + 2);
  if (v42)
  {
    v43 = v65;
    v44 = &v58[(*(v66 + 80) + 32) & ~*(v66 + 80)];
    v45 = *(v66 + 72);
    v46 = *(v66 + 16);
    v47 = v57;
    v46(v57, v44, v65);
    while (1)
    {
      v48 = specialized __RawDictionaryStorage.find<A>(_:)(v47);
      if (v49)
      {
        v50 = v48;
        v21 = v69;
        v51 = swift_isUniquelyReferenced_nonNull_native();
        v68 = v21;
        if (!v51)
        {
          specialized _NativeDictionary.copy()();
          v21 = v68;
        }

        v52 = *v25;
        (*v25)(*(v21 + 48) + v50 * v45, v43);
        v53 = *(*(v21 + 56) + 8 * v50);

        specialized _NativeDictionary._delete(at:)(v50, v21);
        v52(v47, v43);
        v69 = v21;
      }

      else
      {
        (*v25)(v47, v43);
      }

      v44 += v45;
      if (!--v42)
      {
        break;
      }

      v46(v47, v44, v43);
    }
  }

  return v21;
}

Swift::Void __swiftcall GroupSession.setGroupActivityAssociations(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *&v2[*(*v2 + 296)];
  v15 = swift_allocObject();
  v15[2]._rawValue = v2;
  v15[3]._rawValue = a1._rawValue;
  aBlock[4] = partial apply for closure #1 in GroupSession.setGroupActivityAssociations(_:);
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_14;
  v16 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17[1] = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1B27147B0](0, v13, v8, v16);
  _Block_release(v16);
  (*(v5 + 8))(v8, v4);
  (*(v10 + 8))(v13, v9);
}

Swift::Void __swiftcall GroupSession.associateScene(persistentIdentifier:)(Swift::String persistentIdentifier)
{
  object = persistentIdentifier._object;
  countAndFlagsBits = persistentIdentifier._countAndFlagsBits;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Log.default);

  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v12);
    *(v5 + 12) = 2080;
    v7 = GroupSession.description.getter();
    v9 = v8;

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v9, &v12);

    *(v5 + 14) = v10;
    _os_log_impl(&dword_1AEE80000, oslog, v4, "Application called unsupported associateScene method with sceneID:%s on %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B2715BA0](v6, -1, -1);
    MEMORY[0x1B2715BA0](v5, -1, -1);
  }

  else
  {
  }
}

Swift::Void __swiftcall GroupSession.disassociateScene()()
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Log.default);

  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v9 = v3;
    *v2 = 136315138;

    v4 = GroupSession.description.getter();
    v6 = v5;

    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v6, &v9);

    *(v2 + 4) = v7;
    _os_log_impl(&dword_1AEE80000, oslog, v1, "Application called unsupported disassociateScene method on %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x1B2715BA0](v3, -1, -1);
    MEMORY[0x1B2715BA0](v2, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in GroupSession.setGroupActivityAssociations(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 288);
  swift_beginAccess();
  v5 = *(a1 + v4);
  v6 = XPCClient.queue.getter();

  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in closure #1 in GroupSession.setGroupActivityAssociations(_:);
  *(v8 + 24) = v7;
  aBlock[4] = _sIg_Ieg_TRTA_0;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_9;
  v9 = _Block_copy(aBlock);

  dispatch_sync(v6, v9);

  _Block_release(v9);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void closure #1 in closure #1 in GroupSession.setGroupActivityAssociations(_:)(uint64_t a1)
{
  v2 = *(*a1 + 288);
  swift_beginAccess();
  v3 = *(a1 + v2);
  XPCClient.withHost(body:errorHandler:)();
}

void closure #1 in closure #1 in closure #1 in GroupSession.setGroupActivityAssociations(_:)(void **a1)
{
  v1 = *a1;
  type metadata accessor for GroupActivityAssociation();
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v1 setGroupActivityAssociations_];
}

void SystemCoordinator.setDefaultSpatialTemplatePreference(_:for:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *(a1 + 9);
  os_unfair_lock_lock(v2 + 4);
  partial apply for specialized closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)(v3);
  os_unfair_lock_unlock(v2 + 4);
}

void closure #1 in SystemCoordinator.setDefaultSpatialTemplatePreference(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v10 = OBJC_IVAR____TtC15GroupActivities17SystemCoordinator_defaultSpatialTemplatePreferences;
  swift_beginAccess();
  v11 = *(a1 + v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a1 + v10);
  *(a1 + v10) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a4, a5 & 0xFF01, a2, a3, isUniquelyReferenced_nonNull_native);
  *(a1 + v10) = v13;
  swift_endAccess();
  os_unfair_lock_assert_owner((*(a1 + 16) + 16));
  SystemCoordinator.refreshConfiguration()();
}

Swift::Void __swiftcall SystemCoordinator.clearDefaultSpatialTemplatePreference(for:)(Swift::String a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v3);
  os_unfair_lock_unlock(v2 + 4);
}

void closure #1 in SystemCoordinator.clearDefaultSpatialTemplatePreference(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v6);
  swift_endAccess();
  os_unfair_lock_assert_owner((*(a1 + 16) + 16));
  SystemCoordinator.refreshConfiguration()();
}

void SystemCoordinator.setDefaultSpatialTemplateRole(_:for:)()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void closure #1 in SystemCoordinator.setDefaultSpatialTemplateRole(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  outlined init with copy of Transferable(a4, v7);
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v7, a2, a3);
  swift_endAccess();
  os_unfair_lock_assert_owner((*(a1 + 16) + 16));
  SystemCoordinator.refreshConfiguration()();
}

Swift::Void __swiftcall SystemCoordinator.clearDefaultSpatialTemplateRole(for:)(Swift::String a1)
{
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  closure #1 in OSAllocatedUnfairLock<A>.withLock<A>(_:)specialized partial apply(v3);
  os_unfair_lock_unlock(v2 + 4);
}

void closure #1 in SystemCoordinator.clearDefaultSpatialTemplateRole(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  swift_beginAccess();

  specialized Dictionary.subscript.setter(v6, a2, a3);
  swift_endAccess();
  os_unfair_lock_assert_owner((*(a1 + 16) + 16));
  SystemCoordinator.refreshConfiguration()();
}

uint64_t protocol witness for AssetDownloadCoordinator.result() in conformance AssetDownloadCoordinator(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x1E69946C8] + 4);
  v8 = (*MEMORY[0x1E69946C8] + MEMORY[0x1E69946C8]);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v8(a1);
}

uint64_t protocol witness for AssetDownloadCoordinator.receive(signal:) in conformance AssetDownloadCoordinator(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x1E69946D0] + 4);
  v8 = (*MEMORY[0x1E69946D0] + MEMORY[0x1E69946D0]);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v8(a1);
}

uint64_t protocol witness for AssetUploadCoordinator.assetSkeleton.getter in conformance AssetUploadCoordinator(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x1E69946B0] + 4);
  v8 = (*MEMORY[0x1E69946B0] + MEMORY[0x1E69946B0]);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v8(a1);
}

uint64_t protocol witness for AssetUploadCoordinator.signals.getter in conformance AssetUploadCoordinator(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x1E69946C0] + 4);
  v8 = (*MEMORY[0x1E69946C0] + MEMORY[0x1E69946C0]);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v8(a1);
}

uint64_t protocol witness for AssetUploadCoordinator.result() in conformance AssetUploadCoordinator(uint64_t a1)
{
  v4 = *v1;
  v5 = *(MEMORY[0x1E69946B8] + 4);
  v8 = (*MEMORY[0x1E69946B8] + MEMORY[0x1E69946B8]);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v8(a1);
}

uint64_t AssetManager.process(request:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  v4 = *(MEMORY[0x1E69946F0] + 4);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = AssetManager.process(request:);

  return MEMORY[0x1EEDF4010](a2);
}

{
  *(v2 + 16) = a1;
  v4 = *(MEMORY[0x1E69946F8] + 4);
  v5 = swift_task_alloc();
  *(v2 + 24) = v5;
  *v5 = v2;
  v5[1] = AssetManager.process(request:);

  return MEMORY[0x1EEDF4018](a2);
}

uint64_t AssetManager.process(request:)(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](AssetManager.process(request:), 0, 0);
  }
}

{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](AssetManager.process(request:), 0, 0);
  }
}

uint64_t protocol witness for AssetManager.process(request:) in conformance AssetManager(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(MEMORY[0x1E69946E0] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return MEMORY[0x1EEDF4000](a1, a2);
}

{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = *(MEMORY[0x1E69946F0] + 4);
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AssetManager.process(request:) in conformance AssetManager;

  return MEMORY[0x1EEDF4010](a2);
}

{
  v6 = *v2;
  v7 = *(MEMORY[0x1E69946E8] + 4);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return MEMORY[0x1EEDF4008](a1, a2);
}

{
  *(v3 + 16) = a1;
  v5 = *v2;
  v6 = *(MEMORY[0x1E69946F8] + 4);
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = protocol witness for AssetManager.process(request:) in conformance AssetManager;

  return MEMORY[0x1EEDF4018](a2);
}

uint64_t protocol witness for AssetManager.process(request:) in conformance AssetManager(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](protocol witness for AssetManager.process(request:) in conformance AssetManager, 0, 0);
  }
}

{
  v4 = *v2;
  v5 = *(*v2 + 24);
  v6 = *v2;

  if (v1)
  {
    v7 = *(v6 + 8);

    return v7();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](protocol witness for AssetManager.process(request:) in conformance AssetManager, 0, 0);
  }
}

uint64_t protocol witness for AssetManager.process(request:) in conformance AssetManager()
{
  v1 = v0[4];
  v2 = v0[2];
  v2[3] = type metadata accessor for AssetUploadCoordinator();
  v2[4] = &protocol witness table for AssetUploadCoordinator;
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[4];
  v2 = v0[2];
  v2[3] = type metadata accessor for AssetDownloadCoordinator();
  v2[4] = &protocol witness table for AssetDownloadCoordinator;
  *v2 = v1;
  v3 = v0[1];

  return v3();
}

uint64_t dispatch thunk of AssetManager.process(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v13(a1, a2, a3, a4);
}

{
  v9 = *(a4 + 16);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v13(a1, a2, a3, a4);
}

{
  v9 = *(a4 + 24);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v13(a1, a2, a3, a4);
}

{
  v9 = *(a4 + 32);
  v13 = (v9 + *v9);
  v10 = v9[1];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of AssetUploadCoordinator.assetSkeleton.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for AnyTransportSession.removeAttachment(id:) in conformance GroupSession<A>;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AssetUploadCoordinator.signals.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AssetUploadCoordinator.result()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 24);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AssetDownloadCoordinator.result()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 8);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v11(a1, a2, a3);
}

uint64_t dispatch thunk of AssetDownloadCoordinator.receive(signal:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(a3 + 16);
  v11 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = protocol witness for AnyTransportSession.downloadAttachment(_:) in conformance GroupSession<A>;

  return v11(a1, a2, a3);
}

void GroupActivityMetadata.init(_:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v103 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = *(*(v3 - 8) + 64);
  v5 = MEMORY[0x1EEE9AC00](v3 - 8);
  v101 = &v88 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v98 = &v88 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24GroupActivityDescriptionVSgMd, &_s14CopresenceCore24GroupActivityDescriptionVSgMR);
  v9 = *(*(v8 - 8) + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v91 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v88 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16ActivityMetadataV0C4TypeVSgMd, &_s15GroupActivities0A16ActivityMetadataV0C4TypeVSgMR);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v88 - v16;
  v18 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  MEMORY[0x1EEE9AC00](v18);
  v92 = &v88 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for generic != -1)
  {
    swift_once();
  }

  v89 = __swift_project_value_buffer(v18, static GroupActivityMetadata.ActivityType.generic);
  _s15GroupActivities0A16ActivityMetadataV0C4TypeVWOcTm_0(v89, a2, type metadata accessor for GroupActivityMetadata.ActivityType);
  v22 = type metadata accessor for GroupActivityMetadata(0);
  v90 = v22[7];
  *(a2 + v90) = 0;
  v23 = v22[8];
  v24 = type metadata accessor for URL();
  v25 = *(v24 - 8);
  v26 = *(v25 + 56);
  v27 = v25 + 56;
  v94 = v23;
  v26(a2 + v23, 1, 1, v24);
  v93 = v22[9];
  *(a2 + v93) = 0;
  dyld_program_sdk_at_least();
  v95 = v22[11];
  v96 = v26;
  v97 = v24;
  v102 = v27;
  v26(a2 + v95, 1, 1, v24);
  v28 = a2 + v22[12];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v29 = qword_1EDADC9F0;
  v30 = qword_1EDADCA08;
  *v28 = static SceneAssociationBehavior.default;
  *(v28 + 8) = v29;
  *(v28 + 16) = xmmword_1EDADC9F8;
  *(v28 + 32) = v30;
  v99 = v22[13];
  *(a2 + v99) = 0;
  v100 = v22[14];
  *(a2 + v100) = 2;

  v31 = [v103 context];
  v32 = [v31 typedIdentifier];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  GroupActivityDescription.init(id:)();
  v33 = v91;
  outlined init with take of GroupActivityDescription?(v13, v91);
  v34 = type metadata accessor for GroupActivityDescription();
  v35 = *(v34 - 8);
  v36 = 1;
  if ((*(v35 + 48))(v33, 1, v34) != 1)
  {
    (*(v35 + 32))(v17, v33, v34);
    v36 = 0;
  }

  (*(v19 + 56))(v17, v36, 1, v18);
  v37 = *(v19 + 48);
  if (v37(v17, 1, v18) == 1)
  {
    v38 = v92;
    _s15GroupActivities0A16ActivityMetadataV0C4TypeVWOcTm_0(v89, v92, type metadata accessor for GroupActivityMetadata.ActivityType);
    v39 = v37(v17, 1, v18);
    v40 = v103;
    v41 = v96;
    if (v39 != 1)
    {
      outlined destroy of NSObject?(v17, &_s15GroupActivities0A16ActivityMetadataV0C4TypeVSgMd, &_s15GroupActivities0A16ActivityMetadataV0C4TypeVSgMR);
    }
  }

  else
  {
    v38 = v92;
    outlined init with take of GroupActivityMetadata.ActivityType(v17, v92);
    v40 = v103;
    v41 = v96;
  }

  outlined assign with take of GroupActivityMetadata.ActivityType(v38, a2);
  v42 = [v40 title];
  if (v42)
  {
    v43 = v42;
    v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v46 = v45;
  }

  else
  {
    v44 = 0;
    v46 = 0;
  }

  v47 = v97;
  v48 = (a2 + v22[5]);
  *v48 = v44;
  v48[1] = v46;
  v49 = [v40 subTitle];
  if (v49)
  {
    v50 = v49;
    v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0;
  }

  v54 = (a2 + v22[6]);
  *v54 = v51;
  v54[1] = v53;
  v55 = [v40 imageData];
  if (v55)
  {
    v56 = v55;
    v57 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;

    v60 = specialized static CGImageRef.thumbnailImage(from:)();
    outlined consume of Data._Representation(v57, v59);
    *(a2 + v90) = v60;
  }

  v61 = [v40 fallbackURL];
  if (v61)
  {
    v62 = v98;
    v63 = v61;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v64 = 0;
  }

  else
  {
    v64 = 1;
    v62 = v98;
  }

  v65 = 1;
  v41(v62, v64, 1, v47);
  v66 = v22[10];
  outlined assign with take of URL?(v62, a2 + v94);
  v67 = [v40 preferredBroadcastingAttributes];
  *(a2 + v93) = v67;
  *(a2 + v66) = [v40 supportsContinuationOnTV];
  v68 = [v40 invitationURL];
  v69 = v101;
  if (v68)
  {
    v70 = v68;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v65 = 0;
  }

  v41(v69, v65, 1, v47);
  outlined assign with take of URL?(v69, a2 + v95);
  v71 = [v40 sceneAssociationBehavior];
  v72 = [v71 shouldAssociateScene];
  v73 = [v71 targetContentIdentifier];
  if (v73)
  {
    v74 = v73;
    v75 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v77 = v76;
  }

  else
  {
    v75 = 0;
    v77 = 0;
  }

  v78 = [v71 preferredSceneSessionRole];
  if (v78)
  {
    v79 = v78;
    v80 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v82 = v81;
  }

  else
  {

    v80 = 0;
    v82 = 0;
  }

  v83 = *(v28 + 16);
  v84 = *(v28 + 32);

  *v28 = v72;
  *(v28 + 8) = v75;
  *(v28 + 16) = v77;
  *(v28 + 24) = v80;
  *(v28 + 32) = v82;
  v85 = v103;
  v86 = [v103 supportsActivityPreviews];
  *(a2 + v99) = v86;
  v87 = [v85 lifetimePolicy];

  *(a2 + v100) = v87;
}

uint64_t GroupActivityMetadata.init()@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for generic != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v3 = __swift_project_value_buffer(v2, static GroupActivityMetadata.ActivityType.generic);
  _s15GroupActivities0A16ActivityMetadataV0C4TypeVWOcTm_0(v3, a1, type metadata accessor for GroupActivityMetadata.ActivityType);
  v4 = type metadata accessor for GroupActivityMetadata(0);
  v5 = (a1 + v4[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a1 + v4[6]);
  *v6 = 0;
  v6[1] = 0;
  *(a1 + v4[7]) = 0;
  v7 = v4[8];
  v8 = type metadata accessor for URL();
  v9 = *(*(v8 - 8) + 56);
  v9(a1 + v7, 1, 1, v8);
  *(a1 + v4[9]) = 0;
  *(a1 + v4[10]) = dyld_program_sdk_at_least() ^ 1;
  v9(a1 + v4[11], 1, 1, v8);
  v10 = v4[12];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v11 = a1 + v10;
  v12 = qword_1EDADC9F0;
  v13 = qword_1EDADCA08;
  *v11 = static SceneAssociationBehavior.default;
  *(v11 + 8) = v12;
  *(v11 + 16) = xmmword_1EDADC9F8;
  *(v11 + 32) = v13;
  *(a1 + v4[13]) = 0;
  *(a1 + v4[14]) = 2;
}

id GroupActivityMetadata.tuMetadata.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15GroupActivities0A16ActivityMetadataV0C4TypeVSgMd, &_s15GroupActivities0A16ActivityMetadataV0C4TypeVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v54 - v11;
  v13 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  GroupActivityMetadata.infoDictionaryActivityType.getter(v12);
  v18 = *(v14 + 48);
  if (v18(v12, 1, v13) == 1)
  {
    _s15GroupActivities0A16ActivityMetadataV0C4TypeVWOcTm_0(v1, v17, type metadata accessor for GroupActivityMetadata.ActivityType);
    if (v18(v12, 1, v13) != 1)
    {
      outlined destroy of NSObject?(v12, &_s15GroupActivities0A16ActivityMetadataV0C4TypeVSgMd, &_s15GroupActivities0A16ActivityMetadataV0C4TypeVSgMR);
    }
  }

  else
  {
    outlined init with take of GroupActivityMetadata.ActivityType(v12, v17);
  }

  v65 = GroupActivityDescription.tuActivityContext.getter();
  v19 = type metadata accessor for GroupActivityMetadata(0);
  outlined init with copy of URL?(v1 + v19[8], v8);
  outlined init with copy of URL?(v1 + v19[11], v6);
  v64 = *(v1 + v19[10]);
  v20 = (v1 + v19[5]);
  v21 = *v20;
  v22 = v20[1];
  v23 = (v1 + v19[6]);
  v25 = *v23;
  v24 = v23[1];
  v56 = v21;
  v57 = v25;
  v60 = v22;
  v61 = v24;
  if (*(v1 + v19[7]))
  {
    v55 = CGImageRef.thumbnailImageData(_:)(300);
    v62 = v26;
  }

  else
  {
    v55 = 0;
    v62 = 0xF000000000000000;
  }

  v63 = *(v1 + v19[9]);
  v27 = (v1 + v19[12]);
  v28 = *v27;
  v29 = v27[3];
  v30 = v27[4];
  if (v27[2])
  {
    v31 = MEMORY[0x1B2714130](v27[1]);
    if (v30)
    {
LABEL_10:
      v32 = MEMORY[0x1B2714130](v29, v30);
      goto LABEL_13;
    }
  }

  else
  {
    v31 = 0;
    if (v30)
    {
      goto LABEL_10;
    }
  }

  v32 = 0;
LABEL_13:
  v33 = [objc_allocWithZone(MEMORY[0x1E69D8B50]) initWithTargetContentIdentifier:v31 shouldAssociateScene:v28 preferredSceneSessionRole:v32];

  v34 = v19[14];
  v59 = *(v1 + v19[13]);
  v58 = *(v1 + v34);
  v35 = type metadata accessor for URL();
  v36 = *(v35 - 8);
  v37 = *(v36 + 48);
  v39 = 0;
  if (v37(v8, 1, v35) != 1)
  {
    URL._bridgeToObjectiveC()(v38);
    v39 = v40;
    (*(v36 + 8))(v8, v35);
  }

  if (v37(v6, 1, v35) == 1)
  {
    v42 = 0;
  }

  else
  {
    URL._bridgeToObjectiveC()(v41);
    v42 = v43;
    (*(v36 + 8))(v6, v35);
  }

  v44 = v62;
  if (v60)
  {
    v45 = MEMORY[0x1B2714130](v56);
    if (v61)
    {
LABEL_20:
      v46 = MEMORY[0x1B2714130](v57);
      goto LABEL_23;
    }
  }

  else
  {
    v45 = 0;
    if (v61)
    {
      goto LABEL_20;
    }
  }

  v46 = 0;
LABEL_23:
  if (v44 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v48 = v55;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v48, v44);
  }

  v49 = objc_allocWithZone(MEMORY[0x1E69D8B48]);
  LOBYTE(v53) = v59;
  v50 = v65;
  v51 = [v49 initWithContext:v65 linkMetadata:0 fallbackURL:v39 invitationURL:v42 supportsContinuationOnTV:v64 title:v45 subTitle:v46 imageData:isa preferredBroadcastingAttributes:v63 sceneAssociationBehavior:v33 supportsActivityPreviews:v53 lifetimePolicy:v58];

  outlined destroy of GroupActivityMetadata.ActivityType(v17, type metadata accessor for GroupActivityMetadata.ActivityType);
  return v51;
}

uint64_t GroupActivityMetadata.ActivityType.description.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GroupActivityDescription();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t GroupActivityMetadata.ActivityType.description.setter(uint64_t a1)
{
  v3 = type metadata accessor for GroupActivityDescription();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t outlined init with take of GroupActivityDescription?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24GroupActivityDescriptionVSgMd, &_s14CopresenceCore24GroupActivityDescriptionVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of GroupActivityMetadata.ActivityType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t GroupActivityMetadata.ActivityType.init(description:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GroupActivityDescription();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t one-time initialization function for generic(uint64_t a1, uint64_t *a2, void (*a3)(void))
{
  v5 = type metadata accessor for GroupActivityDescription();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  __swift_allocate_value_buffer(v10, a2);
  v11 = __swift_project_value_buffer(v10, a2);
  a3();
  return (*(v6 + 32))(v11, v9, v5);
}

uint64_t static GroupActivityMetadata.ActivityType.generic.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v6 = __swift_project_value_buffer(v5, a2);
  return _s15GroupActivities0A16ActivityMetadataV0C4TypeVWOcTm_0(v6, a3, type metadata accessor for GroupActivityMetadata.ActivityType);
}

uint64_t GroupActivityMetadata.ActivityType.hash(into:)()
{
  type metadata accessor for GroupActivityDescription();
  lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(&lazy protocol witness table cache variable for type GroupActivityDescription and conformance GroupActivityDescription, MEMORY[0x1E69975C8]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int GroupActivityMetadata.ActivityType.hashValue.getter()
{
  Hasher.init(_seed:)();
  type metadata accessor for GroupActivityDescription();
  lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(&lazy protocol witness table cache variable for type GroupActivityDescription and conformance GroupActivityDescription, MEMORY[0x1E69975C8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GroupActivityMetadata.ActivityType()
{
  Hasher.init(_seed:)();
  type metadata accessor for GroupActivityDescription();
  lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(&lazy protocol witness table cache variable for type GroupActivityDescription and conformance GroupActivityDescription, MEMORY[0x1E69975C8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GroupActivityMetadata.ActivityType()
{
  type metadata accessor for GroupActivityDescription();
  lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(&lazy protocol witness table cache variable for type GroupActivityDescription and conformance GroupActivityDescription, MEMORY[0x1E69975C8]);

  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupActivityMetadata.ActivityType()
{
  Hasher.init(_seed:)();
  type metadata accessor for GroupActivityDescription();
  lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(&lazy protocol witness table cache variable for type GroupActivityDescription and conformance GroupActivityDescription, MEMORY[0x1E69975C8]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int GroupActivityMetadata.LifetimePolicy.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1B2715040](v1);
  return Hasher._finalize()();
}

void *GroupActivityMetadata.previewImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for GroupActivityMetadata(0) + 28));
  v2 = v1;
  return v1;
}

void GroupActivityMetadata.previewImage.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GroupActivityMetadata(0) + 28);

  *(v1 + v3) = a1;
}

uint64_t GroupActivityMetadata.fallbackURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GroupActivityMetadata(0) + 32);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t GroupActivityMetadata.fallbackURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GroupActivityMetadata(0) + 32);

  return outlined assign with take of URL?(a1, v3);
}

uint64_t GroupActivityMetadata.preferredBroadcastOptions.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for GroupActivityMetadata(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t GroupActivityMetadata.preferredBroadcastOptions.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for GroupActivityMetadata(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t GroupActivityMetadata.supportsContinuationOnTV.setter(char a1)
{
  result = type metadata accessor for GroupActivityMetadata(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t GroupActivityMetadata.invitationURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GroupActivityMetadata(0) + 44);

  return outlined init with copy of URL?(v3, a1);
}

uint64_t GroupActivityMetadata.invitationURL.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for GroupActivityMetadata(0) + 44);

  return outlined assign with take of URL?(a1, v3);
}

uint64_t GroupActivityMetadata.sceneAssociationBehavior.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for GroupActivityMetadata(0) + 48);
  v4 = *(v3 + 8);
  v5 = *(v3 + 32);
  *a1 = *v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(v3 + 16);
  *(a1 + 32) = v5;
}

__n128 GroupActivityMetadata.sceneAssociationBehavior.setter(char *a1)
{
  v3 = *a1;
  v4 = v1 + *(type metadata accessor for GroupActivityMetadata(0) + 48);
  v5 = *(v4 + 16);
  v6 = *(v4 + 32);

  *v4 = v3;
  result = *(a1 + 8);
  *(v4 + 24) = *(a1 + 24);
  *(v4 + 8) = result;
  return result;
}

uint64_t GroupActivityMetadata.supportsActivityPreviews.setter(char a1)
{
  result = type metadata accessor for GroupActivityMetadata(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t (*GroupActivityMetadata.supportsActivityPreviews.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for GroupActivityMetadata(0) + 52);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return GroupActivityMetadata.supportsActivityPreviews.modify;
}

uint64_t GroupActivityMetadata.lifetimePolicy.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for GroupActivityMetadata(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t GroupActivityMetadata.lifetimePolicy.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for GroupActivityMetadata(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

GroupActivities::GroupActivityMetadata::CodingKeys_optional __swiftcall GroupActivityMetadata.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GroupActivityMetadata.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t GroupActivityMetadata.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6B6361626C6C6166;
  }

  if (a1 == 1)
  {
    return 0x6974617469766E69;
  }

  return 0xD000000000000018;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance GroupActivityMetadata.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6974617469766E69;
  v4 = 0xED00004C52556E6FLL;
  v5 = 0x80000001AF01A350;
  if (v2 != 1)
  {
    v3 = 0xD000000000000018;
    v4 = 0x80000001AF01A350;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6B6361626C6C6166;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEB000000004C5255;
  }

  v8 = 0x6974617469766E69;
  if (*a2 == 1)
  {
    v5 = 0xED00004C52556E6FLL;
  }

  else
  {
    v8 = 0xD000000000000018;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6B6361626C6C6166;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEB000000004C5255;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GroupActivityMetadata.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance GroupActivityMetadata.CodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GroupActivityMetadata.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance GroupActivityMetadata.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized GroupActivityMetadata.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance GroupActivityMetadata.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB000000004C5255;
  v4 = 0xED00004C52556E6FLL;
  v5 = 0x6974617469766E69;
  if (v2 != 1)
  {
    v5 = 0xD000000000000018;
    v4 = 0x80000001AF01A350;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6B6361626C6C6166;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance GroupActivityMetadata.CodingKeys()
{
  v1 = 0x6974617469766E69;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B6361626C6C6166;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance GroupActivityMetadata.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized GroupActivityMetadata.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GroupActivityMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GroupActivityMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GroupActivityMetadata.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v3 = *(*(v47 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v47);
  v43 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v44 = &v40 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15GroupActivities0D16ActivityMetadataV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15GroupActivities0D16ActivityMetadataV10CodingKeysOGMR);
  v45 = *(v7 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - v9;
  v11 = type metadata accessor for GroupActivityMetadata(0);
  v12 = *(*(v11 - 1) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for generic != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  v16 = __swift_project_value_buffer(v15, static GroupActivityMetadata.ActivityType.generic);
  _s15GroupActivities0A16ActivityMetadataV0C4TypeVWOcTm_0(v16, v14, type metadata accessor for GroupActivityMetadata.ActivityType);
  v17 = &v14[v11[5]];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v14[v11[6]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&v14[v11[7]] = 0;
  v19 = v11[8];
  v20 = type metadata accessor for URL();
  v21 = *(*(v20 - 8) + 56);
  v42 = v19;
  v21(&v14[v19], 1, 1, v20);
  *&v14[v11[9]] = 0;
  v22 = dyld_program_sdk_at_least();
  v40 = v11[10];
  v14[v40] = v22 ^ 1;
  v23 = v11[11];
  v21(&v14[v23], 1, 1, v20);
  v24 = &v14[v11[12]];
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v25 = qword_1EDADC9F0;
  v26 = qword_1EDADCA08;
  *v24 = static SceneAssociationBehavior.default;
  *(v24 + 1) = v25;
  *(v24 + 1) = xmmword_1EDADC9F8;
  *(v24 + 4) = v26;
  v14[v11[13]] = 0;
  *&v14[v11[14]] = 2;
  v27 = one-time initialization token for default;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  __swift_project_value_buffer(v28, static Log.default);
  v29 = Logger.logObject.getter();
  v30 = static os_log_type_t.debug.getter();
  v31 = v7;
  if (os_log_type_enabled(v29, v30))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&dword_1AEE80000, v29, v30, "GroupActivityMetadata should no longer be encoded with your\nactivity. Please adopt asynchronous metadata.", v32, 2u);
    MEMORY[0x1B2715BA0](v32, -1, -1);
  }

  v33 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys();
  v34 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v34)
  {
    v46 = v23;
    v50 = 0;
    lazy protocol witness table accessor for type URL? and conformance <A> A?(&lazy protocol witness table cache variable for type URL? and conformance <A> A?, &lazy protocol witness table cache variable for type URL and conformance URL);
    v35 = v44;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    outlined assign with take of URL?(v35, &v14[v42]);
    v49 = 1;
    v36 = v43;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    outlined assign with take of URL?(v36, &v14[v46]);
    v48 = 2;
    v38 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v45 + 8))(v10, v31);
    v39 = v41;
    v14[v40] = v38 & 1;
    _s15GroupActivities0A16ActivityMetadataV0C4TypeVWOcTm_0(v14, v39, type metadata accessor for GroupActivityMetadata);
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of GroupActivityMetadata.ActivityType(v14, type metadata accessor for GroupActivityMetadata);
}

uint64_t GroupActivityMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15GroupActivities0D16ActivityMetadataV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15GroupActivities0D16ActivityMetadataV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20 - v8;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Log.default);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1AEE80000, v11, v12, "GroupActivityMetadata should no longer be encoded with your\nactivity. Please adopt asynchronous metadata.", v13, 2u);
    MEMORY[0x1B2715BA0](v13, -1, -1);
  }

  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = type metadata accessor for GroupActivityMetadata(0);
  v16 = v15[8];
  v23 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  lazy protocol witness table accessor for type URL? and conformance <A> A?(&lazy protocol witness table cache variable for type URL? and conformance <A> A?, &lazy protocol witness table cache variable for type URL and conformance URL);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v17 = v15[11];
    v22 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = *(v3 + v15[10]);
    v21 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t GroupActivityMetadata.init(tuActivityMetadataBlob:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x1E696ACD0);
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for TUConversationActivityMetadata, 0x1E69D8B48);
  v7 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
  if (v3)
  {
  }

  else if (v7)
  {
    GroupActivityMetadata.init(_:)(v7, a3);
    return outlined consume of Data._Representation(a1, a2);
  }

  lazy protocol witness table accessor for type GroupActivityError and conformance GroupActivityError();
  swift_allocError();
  *v8 = 1;
  swift_willThrow();
  return outlined consume of Data._Representation(a1, a2);
}

uint64_t GroupActivityMetadata.infoDictionaryActivityType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s14CopresenceCore24GroupActivityDescriptionVSgMd, &_s14CopresenceCore24GroupActivityDescriptionVSgMR);
  v3 = *(*(v2 - 8) + 64);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - v7;
  v9 = [objc_opt_self() mainBundle];
  v10 = [v9 infoDictionary];

  if (!v10)
  {
    goto LABEL_15;
  }

  v11 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (!*(v11 + 16))
  {
    goto LABEL_14;
  }

  v12 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000011, 0x80000001AF01DFC0);
  if ((v13 & 1) == 0)
  {
    goto LABEL_14;
  }

  outlined init with copy of Any(*(v11 + 56) + 32 * v12, v32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySDyS2SGGMd, &_sSaySDyS2SGGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    v27 = 1;
    goto LABEL_16;
  }

  if (!*(v31 + 16) || (v14 = *(v31 + 32), , , !*(v14 + 16)) || (v15 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000016, 0x80000001AF01DFE0), (v16 & 1) == 0))
  {
LABEL_14:

    goto LABEL_15;
  }

  v17 = (*(v14 + 56) + 16 * v15);
  v19 = *v17;
  v18 = v17[1];

  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Log.default);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32[0] = v24;
    *v23 = 136315138;
    *(v23 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v18, v32);
    _os_log_impl(&dword_1AEE80000, v21, v22, "Using info dictionary activity type: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x1B2715BA0](v24, -1, -1);
    MEMORY[0x1B2715BA0](v23, -1, -1);
  }

  GroupActivityDescription.init(id:)();
  outlined init with take of GroupActivityDescription?(v8, v6);
  v25 = type metadata accessor for GroupActivityDescription();
  v26 = *(v25 - 8);
  v27 = 1;
  if ((*(v26 + 48))(v6, 1, v25) != 1)
  {
    (*(v26 + 32))(a1, v6, v25);
    v27 = 0;
  }

LABEL_16:
  v28 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  return (*(*(v28 - 8) + 56))(a1, v27, 1, v28);
}

GroupActivities::GroupActivityMetadata::Experience_optional __swiftcall GroupActivityMetadata.Experience.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance GroupActivityMetadata.Experience@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t GroupActivityMetadata.title.getter()
{
  v1 = (v0 + *(type metadata accessor for GroupActivityMetadata(0) + 20));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t key path setter for GroupActivityMetadata.localizedTitle : GroupActivityMetadata(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for GroupActivityMetadata(0) + 20));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t GroupActivityMetadata.title.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GroupActivityMetadata(0) + 20));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*GroupActivityMetadata.localizedTitle.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for GroupActivityMetadata(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v7;

  return GroupActivityMetadata.localizedTitle.modify;
}

uint64_t GroupActivityMetadata.subtitle.getter()
{
  v1 = (v0 + *(type metadata accessor for GroupActivityMetadata(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t key path setter for GroupActivityMetadata.localizedSubtitle : GroupActivityMetadata(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for GroupActivityMetadata(0) + 24));
  v5 = v4[1];

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t GroupActivityMetadata.subtitle.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for GroupActivityMetadata(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*GroupActivityMetadata.localizedSubtitle.modify(uint64_t *a1))()
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
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for GroupActivityMetadata(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v8 = *v6;
  v7 = v6[1];
  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v7;

  return GroupActivityMetadata.localizedSubtitle.modify;
}

void GroupActivityMetadata.localizedTitle.modify(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v7 = (*a1)[2];
  v6 = (*a1)[3];
  if (a2)
  {
    v8 = (v7 + v5);
    v9 = (*a1)[1];

    *v8 = v4;
    v8[1] = v3;
    v10 = v2[1];
  }

  else
  {
    v11 = (*a1)[3];

    v12 = (v7 + v5);
    *v12 = v4;
    v12[1] = v3;
  }

  free(v2);
}

uint64_t (*GroupActivityMetadata.preferredBroadcastingAttributes.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for GroupActivityMetadata(0) + 36);
  v4 = *(v1 + v3);
  *(a1 + 16) = v3;
  *a1 = v4;
  return GroupActivityMetadata.preferredBroadcastingAttributes.modify;
}

uint64_t GroupActivityMetadata.contentAssociation.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for GroupActivityMetadata(0);
  *a1 = *(v1 + *(result + 56)) == 1;
  return result;
}

uint64_t GroupActivityMetadata.contentAssociation.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for GroupActivityMetadata(0);
  v4 = 1;
  if (v2 != 1)
  {
    v4 = 2;
  }

  *(v1 + *(result + 56)) = v4;
  return result;
}

uint64_t (*GroupActivityMetadata.contentAssociation.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for GroupActivityMetadata(0) + 56);
  *(a1 + 16) = v3;
  *a1 = *(v1 + v3) == 1;
  return GroupActivityMetadata.contentAssociation.modify;
}

uint64_t GroupActivityMetadata.contentAssociation.modify(uint64_t result)
{
  v1 = 1;
  if (*result != 1)
  {
    v1 = 2;
  }

  *(*(result + 8) + *(result + 16)) = v1;
  return result;
}

BOOL specialized static GroupActivityMetadata.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v10 = *(*(v9 - 8) + 64);
  v11 = MEMORY[0x1EEE9AC00](v9 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v58 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, _s10Foundation3URLVSg_ADtMR);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v58 - v21;
  if ((MEMORY[0x1B2712FE0](a1, a2) & 1) == 0)
  {
    return 0;
  }

  *&v64 = v5;
  v23 = type metadata accessor for GroupActivityMetadata(0);
  v24 = v23[5];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 8);
  v27 = (a2 + v24);
  v28 = v27[1];
  if (v26)
  {
    if (!v28)
    {
      return 0;
    }

    v29 = *v25 == *v27 && v26 == v28;
    if (!v29 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v28)
  {
    return 0;
  }

  v30 = v23[6];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 8);
  v33 = (a2 + v30);
  v34 = v33[1];
  if (v32)
  {
    if (!v34 || (*v31 != *v33 || v32 != v34) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v34)
  {
    return 0;
  }

  v63 = v23;
  v35 = v23[7];
  v36 = *(a2 + v35);
  if (*(a1 + v35))
  {
    if (!v36)
    {
      return 0;
    }

    *&v62 = *(a1 + v35);
    type metadata accessor for CGImageRef(0);
    v61 = v37;
    v60 = lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(&lazy protocol witness table cache variable for type CGImageRef and conformance CGImageRef, type metadata accessor for CGImageRef);
    v59 = v36;
    v38 = static _CFObject.== infix(_:_:)();

    if ((v38 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v36)
  {
    return 0;
  }

  *&v62 = v63[8];
  v39 = *(v16 + 48);
  outlined init with copy of URL?(a1 + v62, v22);
  v40 = a2 + v62;
  *&v62 = v39;
  outlined init with copy of URL?(v40, &v22[v39]);
  v41 = v64 + 48;
  v61 = *(v64 + 48);
  if (v61(v22, 1, v4) == 1)
  {
    if (v61(&v22[v62], 1, v4) == 1)
    {
      outlined destroy of NSObject?(v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_31;
    }

LABEL_28:
    v42 = v22;
LABEL_29:
    outlined destroy of NSObject?(v42, &_s10Foundation3URLVSg_ADtMd, _s10Foundation3URLVSg_ADtMR);
    return 0;
  }

  outlined init with copy of URL?(v22, v15);
  v60 = v41;
  if (v61(&v22[v62], 1, v4) == 1)
  {
    (*(v64 + 8))(v15, v4);
    goto LABEL_28;
  }

  (*(v64 + 32))(v8, &v22[v62], v4);
  lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
  LODWORD(v59) = dispatch thunk of static Equatable.== infix(_:_:)();
  *&v62 = *(v64 + 8);
  (v62)(v8, v4);
  (v62)(v15, v4);
  outlined destroy of NSObject?(v22, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((v59 & 1) == 0)
  {
    return 0;
  }

LABEL_31:
  if (*(a1 + v63[9]) != *(a2 + v63[9]) || *(a1 + v63[10]) != *(a2 + v63[10]))
  {
    return 0;
  }

  v44 = v63[11];
  v45 = *(v16 + 48);
  outlined init with copy of URL?(a1 + v44, v20);
  outlined init with copy of URL?(a2 + v44, &v20[v45]);
  v46 = v61;
  if (v61(v20, 1, v4) != 1)
  {
    outlined init with copy of URL?(v20, v13);
    if (v46(&v20[v45], 1, v4) != 1)
    {
      v47 = v64;
      (*(v64 + 32))(v8, &v20[v45], v4);
      lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0]);
      v48 = dispatch thunk of static Equatable.== infix(_:_:)();
      v49 = *(v47 + 8);
      v49(v8, v4);
      v49(v13, v4);
      outlined destroy of NSObject?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      if ((v48 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_42;
    }

    (*(v64 + 8))(v13, v4);
    goto LABEL_40;
  }

  if (v46(&v20[v45], 1, v4) != 1)
  {
LABEL_40:
    v42 = v20;
    goto LABEL_29;
  }

  outlined destroy of NSObject?(v20, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_42:
  v50 = v63;
  v51 = v63[12];
  v52 = *(a1 + v51 + 8);
  v53 = *(a1 + v51 + 32);
  LOBYTE(v68[0]) = *(a1 + v51);
  v68[1] = v52;
  v64 = *(a1 + v51 + 16);
  v69 = v64;
  v70 = v53;
  v54 = a2 + v51;
  v55 = *(v54 + 8);
  v56 = *(v54 + 32);
  LOBYTE(v65[0]) = *v54;
  v65[1] = v55;
  v62 = *(v54 + 16);
  v66 = v62;
  v67 = v56;
  v57 = specialized static SceneAssociationBehavior.== infix(_:_:)(v68, v65);

  if ((v57 & 1) != 0 && *(a1 + v50[13]) == *(a2 + v50[13]))
  {
    return *(a1 + v50[14]) == *(a2 + v50[14]);
  }

  return 0;
}

uint64_t outlined init with take of GroupActivityMetadata.ActivityType(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GroupActivityMetadata.ActivityType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t specialized GroupActivityMetadata.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of GroupActivityMetadata.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityMetadata.CodingKeys and conformance GroupActivityMetadata.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of GroupActivityMetadata.ActivityType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _s15GroupActivities0A16ActivityMetadataV0C4TypeVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type URL? and conformance <A> A?(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    lazy protocol witness table accessor for type GroupActivityDescription and conformance GroupActivityDescription(a2, MEMORY[0x1E6968FB0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupActivityMetadata.LifetimePolicy and conformance GroupActivityMetadata.LifetimePolicy()
{
  result = lazy protocol witness table cache variable for type GroupActivityMetadata.LifetimePolicy and conformance GroupActivityMetadata.LifetimePolicy;
  if (!lazy protocol witness table cache variable for type GroupActivityMetadata.LifetimePolicy and conformance GroupActivityMetadata.LifetimePolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityMetadata.LifetimePolicy and conformance GroupActivityMetadata.LifetimePolicy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GroupActivityMetadata.Experience and conformance GroupActivityMetadata.Experience()
{
  result = lazy protocol witness table cache variable for type GroupActivityMetadata.Experience and conformance GroupActivityMetadata.Experience;
  if (!lazy protocol witness table cache variable for type GroupActivityMetadata.Experience and conformance GroupActivityMetadata.Experience)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityMetadata.Experience and conformance GroupActivityMetadata.Experience);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GroupActivityMetadata.Experience and conformance GroupActivityMetadata.Experience;
  if (!lazy protocol witness table cache variable for type GroupActivityMetadata.Experience and conformance GroupActivityMetadata.Experience)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GroupActivityMetadata.Experience and conformance GroupActivityMetadata.Experience);
  }

  return result;
}

uint64_t *GroupSessionEndpointIdentifier.systemCoordinator.unsafeMutableAddressor()
{
  if (one-time initialization token for systemCoordinator != -1)
  {
    swift_once();
  }

  return &static GroupSessionEndpointIdentifier.systemCoordinator;
}

uint64_t one-time initialization function for identity()
{
  v0 = type metadata accessor for XPCIdentity();
  __swift_allocate_value_buffer(v0, static SystemCoordinatorInterface.identity);
  v1 = __swift_project_value_buffer(v0, static SystemCoordinatorInterface.identity);
  v2 = *MEMORY[0x1E69974E8];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t SystemCoordinatorInterface.identity.unsafeMutableAddressor()
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for XPCIdentity();

  return __swift_project_value_buffer(v0, static SystemCoordinatorInterface.identity);
}

uint64_t static SystemCoordinatorInterface.identity.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for XPCIdentity();
  v3 = __swift_project_value_buffer(v2, static SystemCoordinatorInterface.identity);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void *SystemCoordinatorInterface.hostObjectInterface.unsafeMutableAddressor()
{
  if (one-time initialization token for hostObjectInterface != -1)
  {
    swift_once();
  }

  return &static SystemCoordinatorInterface.hostObjectInterface;
}

uint64_t (*static SystemCoordinatorInterface.hostObjectInterface.modify())()
{
  if (one-time initialization token for hostObjectInterface != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return GroupSession.GroupSessionPlaybackSyncerLink.shouldRequestCatchup.modify;
}

void one-time initialization function for hostObjectInterface(uint64_t a1, void **a2, void *a3)
{
  v4 = *a2;
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 interfaceWithProtocol_];

  *a3 = v7;
}

void *SystemCoordinatorInterface.clientObjectInterface.unsafeMutableAddressor()
{
  if (one-time initialization token for clientObjectInterface != -1)
  {
    swift_once();
  }

  return &static SystemCoordinatorInterface.clientObjectInterface;
}

id static SystemCoordinatorInterface.hostObjectInterface.getter(void *a1, void **a2)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = *a2;

  return v3;
}

void static SystemCoordinatorInterface.hostObjectInterface.setter(void *a1, void *a2, void **a3)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a3;
  *a3 = a1;
}

uint64_t (*static SystemCoordinatorInterface.clientObjectInterface.modify())()
{
  if (one-time initialization token for clientObjectInterface != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return GroupSession.attachmentDownloadBytes.modify;
}

id key path getter for static SystemCoordinatorInterface.hostObjectInterface : SystemCoordinatorInterface.Type@<X0>(void *a1@<X3>, void **a2@<X4>, void **a3@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a2;
  *a3 = *a2;

  return v5;
}

void key path setter for static SystemCoordinatorInterface.hostObjectInterface : SystemCoordinatorInterface.Type(id *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void **a6)
{
  v7 = *a5;
  v8 = *a1;
  if (v7 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = *a6;
  *a6 = v8;
}

uint64_t protocol witness for static XPCInterface.identity.getter in conformance SystemCoordinatorInterface@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for identity != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for XPCIdentity();
  v3 = __swift_project_value_buffer(v2, static SystemCoordinatorInterface.identity);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

id protocol witness for static XPCInterface.hostObjectInterface.getter in conformance SystemCoordinatorInterface(uint64_t a1, uint64_t a2, void *a3, void **a4)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v5 = *a4;

  return v5;
}

uint64_t Publisher<>.flatMap<A>(maxPublishers:_:)()
{
  return MEMORY[0x1EEDB60D8]();
}

{
  return MEMORY[0x1EEDB60E0]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6ACD0]();
}

{
  return MEMORY[0x1EEE6ACE8]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE08]();
}

{
  return MEMORY[0x1EEE6AE20]();
}