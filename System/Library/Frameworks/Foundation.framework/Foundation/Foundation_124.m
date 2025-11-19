void URL.FormatStyle.ComponentDisplayOption.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v5 = *(v2 + 1);
  v4 = *(v2 + 2);
  MEMORY[0x1865CD060](*v2);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](qword_1812E3860[v5]);

    specialized Set.hash(into:)(a1, v4);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int URL.FormatStyle.ComponentDisplayOption.hashValue.getter()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](qword_1812E3860[v3]);
    specialized Set.hash(into:)(v5, v2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t URL.FormatStyle.ComponentDisplayOption.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation3URLV11FormatStyleV22ComponentDisplayOptionV10CodingKeys33_F8B4154C969F98989DA6333BFCB7F2FELLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayOption.CodingKeys and conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14 = 0;
    lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayOption.Option and conformance URL.FormatStyle.ComponentDisplayOption.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v13[0];
    v14 = 1;
    lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayCondition and conformance URL.FormatStyle.ComponentDisplayCondition();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v12 = v13[0];
    v11 = v13[1];

    *a2 = v9;
    *(a2 + 8) = v12;
    *(a2 + 16) = v11;
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t URL.FormatStyle.HostDisplayOption.Option.encode(to:)(void *a1, int a2)
{
  v13 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation3URLV11FormatStyleV17HostDisplayOptionV0J0O10CodingKeys33_F8B4154C969F98989DA6333BFCB7F2FELLOGMd);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URL.FormatStyle.HostDisplayOption.Option.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v13)
  {
    v15 = 1;
  }

  else
  {
    v14 = 0;
  }

  lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance URL.FormatStyle.ComponentDisplayOption()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](qword_1812E3860[v3]);
    specialized Set.hash(into:)(v5, v2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance URL.FormatStyle.ComponentDisplayOption(uint64_t a1)
{
  v2 = v1;
  v5 = *(v2 + 1);
  v4 = *(v2 + 2);
  MEMORY[0x1865CD060](*v2);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](qword_1812E3860[v5]);

    specialized Set.hash(into:)(a1, v4);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URL.FormatStyle.ComponentDisplayOption()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  if (v2)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](qword_1812E3860[v3]);
    specialized Set.hash(into:)(v5, v2);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys()
{
  if (*v0)
  {
    return 0x6579616C70736964;
  }

  else
  {
    return 0x64657474696D6FLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x64657474696D6FLL && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6579616C70736964 && a2 == 0xE900000000000064)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URL.FormatStyle.HostDisplayOption.Option.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URL.FormatStyle.HostDisplayOption.Option.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance URL.FormatStyle.HostDisplayOption.Option@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized URL.FormatStyle.HostDisplayOption.Option.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t URL.FormatStyle.HostDisplayOption.description.getter()
{
  v2 = *(v0 + 8);
  v1 = *(v0 + 16);
  if (*v0)
  {
    v3 = *(v0 + 24);
    if (v1)
    {

      _StringGuts.grow(_:)(16);

      v4 = 0xE600000000000000;
      v5 = 0xE500000000000000;
      v6 = 0x7972657571;
      if (v2 != 6)
      {
        v6 = 0x746E656D67617266;
        v5 = 0xE800000000000000;
      }

      v7 = 1953656688;
      if (v2 != 4)
      {
        v7 = 1752457584;
      }

      if (v2 <= 5u)
      {
        v6 = v7;
        v5 = 0xE400000000000000;
      }

      v8 = 0xE800000000000000;
      v9 = 0x64726F7773736170;
      if (v2 != 2)
      {
        v9 = 1953722216;
        v8 = 0xE400000000000000;
      }

      v10 = 0x656D616E72657375;
      if (v2)
      {
        v4 = 0xE800000000000000;
      }

      else
      {
        v10 = 0x656D65686373;
      }

      if (v2 > 1u)
      {
        v4 = v8;
      }

      else
      {
        v9 = v10;
      }

      if (v2 <= 3u)
      {
        v11 = v9;
      }

      else
      {
        v11 = v6;
      }

      if (v2 <= 3u)
      {
        v12 = v4;
      }

      else
      {
        v12 = v5;
      }

      MEMORY[0x1865CB0E0](v11, v12);

      MEMORY[0x1865CB0E0](0x7365686374616D20, 0xE900000000000020);
      v13 = Set.description.getter();
      MEMORY[0x1865CB0E0](v13);

      v15 = 2123369;
      v14 = 0xE300000000000000;
    }

    else
    {
      v14 = 0xEC0000006E6F6974;
      v15 = 0x69646E6F63206F6ELL;
    }

    v32 = 0;
    _StringGuts.grow(_:)(81);
    MEMORY[0x1865CB0E0](0xD000000000000024, 0x8000000181487EB0);
    if (v3)
    {
      v26 = 1702195828;
    }

    else
    {
      v26 = 0x65736C6166;
    }

    if (v3)
    {
      v27 = 0xE400000000000000;
    }

    else
    {
      v27 = 0xE500000000000000;
    }

    MEMORY[0x1865CB0E0](v26, v27);

    MEMORY[0x1865CB0E0](0xD00000000000001ALL, 0x8000000181487EE0);

    v28 = Set.description.getter();
    v30 = v29;

    MEMORY[0x1865CB0E0](v28, v30);

    MEMORY[0x1865CB0E0](0x7469646E6F63202CLL, 0xED0000203A6E6F69);
    MEMORY[0x1865CB0E0](v15, v14);

    return v32;
  }

  if (v1)
  {
    _StringGuts.grow(_:)(22);

    v32 = 0xD000000000000013;
    _StringGuts.grow(_:)(16);

    v16 = 0xE600000000000000;
    v17 = 0xE500000000000000;
    v18 = 0x7972657571;
    if (v2 != 6)
    {
      v18 = 0x746E656D67617266;
      v17 = 0xE800000000000000;
    }

    v19 = 1953656688;
    if (v2 != 4)
    {
      v19 = 1752457584;
    }

    if (v2 <= 5u)
    {
      v18 = v19;
      v17 = 0xE400000000000000;
    }

    v20 = 0xE800000000000000;
    v21 = 0x64726F7773736170;
    if (v2 != 2)
    {
      v21 = 1953722216;
      v20 = 0xE400000000000000;
    }

    v22 = 0x656D616E72657375;
    if (v2)
    {
      v16 = 0xE800000000000000;
    }

    else
    {
      v22 = 0x656D65686373;
    }

    if (v2 > 1u)
    {
      v16 = v20;
    }

    else
    {
      v21 = v22;
    }

    if (v2 <= 3u)
    {
      v23 = v21;
    }

    else
    {
      v23 = v18;
    }

    if (v2 <= 3u)
    {
      v24 = v16;
    }

    else
    {
      v24 = v17;
    }

    MEMORY[0x1865CB0E0](v23, v24);

    MEMORY[0x1865CB0E0](0x7365686374616D20, 0xE900000000000020);
    v25 = Set.description.getter();
    MEMORY[0x1865CB0E0](v25);

    MEMORY[0x1865CB0E0](2123369, 0xE300000000000000);

    MEMORY[0x1865CB0E0](41, 0xE100000000000000);
    return v32;
  }

  return 0x726576656ELL;
}

uint64_t static URL.FormatStyle.HostDisplayOption.never.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;

  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t static URL.FormatStyle.HostDisplayOption.displayWhen(_:matches:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v6 = *a1;
  *a4 = a3;

  *(a4 + 8) = v6;
  *(a4 + 16) = a2;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  return result;
}

Swift::Int static URL.FormatStyle.HostDisplayOption.omitIfHTTPFamily.getter@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  v2 = static _SetStorage.allocate(capacity:)();
  v3 = v2 + 56;
  v5 = *aHttp_1;
  v4 = unk_1EEED4530;
  Hasher.init(_seed:)();

  String.hash(into:)();
  result = Hasher._finalize()();
  v7 = -1 << *(v2 + 32);
  v8 = result & ~v7;
  v9 = v8 >> 6;
  v10 = *(v2 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  if (((1 << v8) & v10) != 0)
  {
    v12 = ~v7;
    while (1)
    {
      v13 = (*(v2 + 48) + 16 * v8);
      if (*v13 == v5 && v13[1] == v4)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      v8 = (v8 + 1) & v12;
      v9 = v8 >> 6;
      v10 = *(v3 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if (((1 << v8) & v10) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    *(v3 + 8 * v9) = v11 | v10;
    v15 = (*(v2 + 48) + 16 * v8);
    *v15 = v5;
    v15[1] = v4;
    v16 = *(v2 + 16);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_24;
    }

    *(v2 + 16) = v18;
  }

  v20 = *aHttps_1;
  v19 = unk_1EEED4540;
  Hasher.init(_seed:)();

  String.hash(into:)();
  result = Hasher._finalize()();
  v21 = -1 << *(v2 + 32);
  v22 = result & ~v21;
  v23 = v22 >> 6;
  v24 = *(v3 + 8 * (v22 >> 6));
  v25 = 1 << v22;
  if (((1 << v22) & v24) != 0)
  {
    v26 = ~v21;
    while (1)
    {
      v27 = (*(v2 + 48) + 16 * v22);
      if (*v27 == v20 && v27[1] == v19)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      v22 = (v22 + 1) & v26;
      v23 = v22 >> 6;
      v24 = *(v3 + 8 * (v22 >> 6));
      v25 = 1 << v22;
      if (((1 << v22) & v24) == 0)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_23;
  }

LABEL_20:
  *(v3 + 8 * v23) = v25 | v24;
  v29 = (*(v2 + 48) + 16 * v22);
  *v29 = v20;
  v29[1] = v19;
  v30 = *(v2 + 16);
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v17)
  {
    *(v2 + 16) = v31;
LABEL_23:
    swift_arrayDestroy();
    *a1 = 0;

    *(a1 + 8) = 0;
    *(a1 + 16) = v2;
    *(a1 + 24) = 0;
    *(a1 + 32) = 0;
    return result;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t static URL.FormatStyle.HostDisplayOption.omitSpecificSubdomains(_:includeMultiLevelSubdomains:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *a3 = 1;

  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = a2;
  *(a3 + 32) = a1;
}

uint64_t static URL.FormatStyle.HostDisplayOption.omitSpecificSubdomains(_:includeMultiLevelSubdomains:when:matches:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a3;
  *a5 = 1;

  *(a5 + 8) = v9;
  *(a5 + 16) = a4;
  *(a5 + 24) = a2;
  *(a5 + 32) = a1;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance URL.FormatStyle.HostDisplayOption.CodingKeys()
{
  v1 = 0x6E6F6974706FLL;
  v2 = 0xD000000000000018;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 0x6F697469646E6F63;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance URL.FormatStyle.HostDisplayOption.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized URL.FormatStyle.HostDisplayOption.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance URL.FormatStyle.HostDisplayOption.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URL.FormatStyle.HostDisplayOption.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance URL.FormatStyle.HostDisplayOption.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type URL.FormatStyle.HostDisplayOption.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t URL.FormatStyle.HostDisplayOption.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation3URLV11FormatStyleV17HostDisplayOptionV10CodingKeys33_F8B4154C969F98989DA6333BFCB7F2FELLOGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = *(v1 + 2);
  v14 = *(v1 + 1);
  v15 = v9;
  v18 = v1[24];
  v13 = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URL.FormatStyle.HostDisplayOption.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = v8;
  v19 = 0;
  lazy protocol witness table accessor for type URL.FormatStyle.HostDisplayOption.Option and conformance URL.FormatStyle.HostDisplayOption.Option();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10 = v13;
    v16 = v14;
    v17 = v15;
    v19 = 1;
    lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayCondition and conformance URL.FormatStyle.ComponentDisplayCondition();

    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();

    LOBYTE(v16) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v10;
    v19 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd);
    lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

void URL.FormatStyle.HostDisplayOption.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v5 = *(v2 + 1);
  v4 = *(v2 + 2);
  v6 = v2[24];
  v7 = *(v2 + 4);
  MEMORY[0x1865CD060](*v2);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](qword_1812E3860[v5]);
    specialized Set.hash(into:)(a1, v4);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v6);
  if (v7)
  {
    Hasher._combine(_:)(1u);

    specialized Set.hash(into:)(a1, v7);
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int URL.FormatStyle.HostDisplayOption.hashValue.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4[72] = *v0;
  v5 = *(v0 + 8);
  v6 = v1;
  v7 = v2;
  Hasher.init(_seed:)();
  URL.FormatStyle.HostDisplayOption.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t URL.FormatStyle.HostDisplayOption.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation3URLV11FormatStyleV17HostDisplayOptionV10CodingKeys33_F8B4154C969F98989DA6333BFCB7F2FELLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URL.FormatStyle.HostDisplayOption.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v20 = 0;
    lazy protocol witness table accessor for type URL.FormatStyle.HostDisplayOption.Option and conformance URL.FormatStyle.HostDisplayOption.Option();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v20 = 1;
    lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayCondition and conformance URL.FormatStyle.ComponentDisplayCondition();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v19 = v9;
    v12 = v17;
    v11 = v18;

    LOBYTE(v17) = 2;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = v12;
    v16 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd);
    v20 = 3;
    lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(&lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    LOBYTE(v12) = v16 & 1;
    (*(v6 + 8))(v8, v5);
    v14 = v17;
    *a2 = v19;
    *(a2 + 8) = v15;
    *(a2 + 16) = v11;
    *(a2 + 24) = v12;
    *(a2 + 32) = v14;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance URL.FormatStyle.HostDisplayOption()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4[72] = *v0;
  v5 = *(v0 + 8);
  v6 = v1;
  v7 = v2;
  Hasher.init(_seed:)();
  URL.FormatStyle.HostDisplayOption.hash(into:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance URL.FormatStyle.HostDisplayOption()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v4[72] = *v0;
  v5 = *(v0 + 8);
  v6 = v1;
  v7 = v2;
  Hasher.init(_seed:)();
  URL.FormatStyle.HostDisplayOption.hash(into:)(v4);
  return Hasher._finalize()();
}

uint64_t URL.FormatStyle.scheme(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[9];
  v5 = v2[11];
  v35 = v2[10];
  v36 = v5;
  v6 = v2[11];
  v37 = v2[12];
  v7 = v2[5];
  v8 = v2[7];
  v31 = v2[6];
  v9 = v31;
  v32 = v8;
  v10 = v2[7];
  v11 = v2[9];
  v33 = v2[8];
  v12 = v33;
  v34 = v11;
  v13 = v2[1];
  v14 = v2[3];
  v27 = v2[2];
  v15 = v27;
  v28 = v14;
  v16 = v2[3];
  v17 = v2[5];
  v29 = v2[4];
  v18 = v29;
  v30 = v17;
  v19 = v2[1];
  v26[0] = *v2;
  v20 = v26[0];
  v26[1] = v19;
  *(a2 + 160) = v35;
  *(a2 + 176) = v6;
  *(a2 + 192) = v2[12];
  *(a2 + 96) = v9;
  *(a2 + 112) = v10;
  *(a2 + 128) = v12;
  *(a2 + 144) = v4;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 64) = v18;
  *(a2 + 80) = v7;
  v21 = *a1;
  v23 = *(a1 + 1);
  v22 = *(a1 + 2);
  *a2 = v20;
  *(a2 + 16) = v13;
  outlined init with copy of URL.FormatStyle(v26, &v25);

  *a2 = v21;
  *(a2 + 8) = v23;
  *(a2 + 16) = v22;
  return result;
}

uint64_t URL.FormatStyle.user(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[9];
  v5 = v2[11];
  v35 = v2[10];
  v36 = v5;
  v6 = v2[11];
  v37 = v2[12];
  v7 = v2[5];
  v8 = v2[7];
  v31 = v2[6];
  v9 = v31;
  v32 = v8;
  v10 = v2[7];
  v11 = v2[9];
  v33 = v2[8];
  v12 = v33;
  v34 = v11;
  v13 = v2[1];
  v14 = v2[3];
  v27 = v2[2];
  v15 = v27;
  v28 = v14;
  v16 = v2[3];
  v17 = v2[5];
  v29 = v2[4];
  v18 = v29;
  v30 = v17;
  v19 = v2[1];
  v26[0] = *v2;
  v20 = v26[0];
  v26[1] = v19;
  *(a2 + 160) = v35;
  *(a2 + 176) = v6;
  *(a2 + 192) = v2[12];
  *(a2 + 96) = v9;
  *(a2 + 112) = v10;
  *(a2 + 128) = v12;
  *(a2 + 144) = v4;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 64) = v18;
  *(a2 + 80) = v7;
  v21 = *a1;
  v23 = *(a1 + 1);
  v22 = *(a1 + 2);
  *a2 = v20;
  *(a2 + 16) = v13;
  outlined init with copy of URL.FormatStyle(v26, &v25);

  *(a2 + 24) = v21;
  *(a2 + 32) = v23;
  *(a2 + 40) = v22;
  return result;
}

uint64_t URL.FormatStyle.password(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[9];
  v5 = v2[11];
  v35 = v2[10];
  v36 = v5;
  v6 = v2[11];
  v37 = v2[12];
  v7 = v2[5];
  v8 = v2[7];
  v31 = v2[6];
  v9 = v31;
  v32 = v8;
  v10 = v2[7];
  v11 = v2[9];
  v33 = v2[8];
  v12 = v33;
  v34 = v11;
  v13 = v2[1];
  v14 = v2[3];
  v27 = v2[2];
  v15 = v27;
  v28 = v14;
  v16 = v2[3];
  v17 = v2[5];
  v29 = v2[4];
  v18 = v29;
  v30 = v17;
  v19 = v2[1];
  v26[0] = *v2;
  v20 = v26[0];
  v26[1] = v19;
  *(a2 + 160) = v35;
  *(a2 + 176) = v6;
  *(a2 + 192) = v2[12];
  *(a2 + 96) = v9;
  *(a2 + 112) = v10;
  *(a2 + 128) = v12;
  *(a2 + 144) = v4;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 64) = v18;
  *(a2 + 80) = v7;
  v21 = *a1;
  v23 = *(a1 + 1);
  v22 = *(a1 + 2);
  *a2 = v20;
  *(a2 + 16) = v13;
  outlined init with copy of URL.FormatStyle(v26, &v25);

  *(a2 + 48) = v21;
  *(a2 + 56) = v23;
  *(a2 + 64) = v22;
  return result;
}

uint64_t URL.FormatStyle.host(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[9];
  v5 = v2[11];
  v37 = v2[10];
  v38 = v5;
  v6 = v2[11];
  v39 = v2[12];
  v7 = v2[5];
  v8 = v2[7];
  v33 = v2[6];
  v9 = v33;
  v34 = v8;
  v10 = v2[7];
  v11 = v2[9];
  v35 = v2[8];
  v12 = v35;
  v36 = v11;
  v13 = v2[1];
  v14 = v2[3];
  v29 = v2[2];
  v15 = v29;
  v30 = v14;
  v16 = v2[3];
  v17 = v2[5];
  v31 = v2[4];
  v18 = v31;
  v32 = v17;
  v19 = v2[1];
  v28[0] = *v2;
  v20 = v28[0];
  v28[1] = v19;
  *(a2 + 160) = v37;
  *(a2 + 176) = v6;
  *(a2 + 192) = v2[12];
  *(a2 + 96) = v9;
  *(a2 + 112) = v10;
  *(a2 + 128) = v12;
  *(a2 + 144) = v4;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 64) = v18;
  *(a2 + 80) = v7;
  v21 = *a1;
  v23 = *(a1 + 1);
  v22 = *(a1 + 2);
  v24 = a1[24];
  v25 = *(a1 + 4);
  *a2 = v20;
  *(a2 + 16) = v13;
  outlined init with copy of URL.FormatStyle(v28, &v27);

  *(a2 + 72) = v21;
  *(a2 + 80) = v23;
  *(a2 + 88) = v22;
  *(a2 + 96) = v24;
  *(a2 + 104) = v25;
  return result;
}

uint64_t URL.FormatStyle.port(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[9];
  v5 = v2[11];
  v35 = v2[10];
  v36 = v5;
  v6 = v2[11];
  v37 = v2[12];
  v7 = v2[5];
  v8 = v2[7];
  v31 = v2[6];
  v9 = v31;
  v32 = v8;
  v10 = v2[7];
  v11 = v2[9];
  v33 = v2[8];
  v12 = v33;
  v34 = v11;
  v13 = v2[1];
  v14 = v2[3];
  v27 = v2[2];
  v15 = v27;
  v28 = v14;
  v16 = v2[3];
  v17 = v2[5];
  v29 = v2[4];
  v18 = v29;
  v30 = v17;
  v19 = v2[1];
  v26[0] = *v2;
  v20 = v26[0];
  v26[1] = v19;
  *(a2 + 160) = v35;
  *(a2 + 176) = v6;
  *(a2 + 192) = v2[12];
  *(a2 + 96) = v9;
  *(a2 + 112) = v10;
  *(a2 + 128) = v12;
  *(a2 + 144) = v4;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 64) = v18;
  *(a2 + 80) = v7;
  v21 = *a1;
  v23 = *(a1 + 1);
  v22 = *(a1 + 2);
  *a2 = v20;
  *(a2 + 16) = v13;
  outlined init with copy of URL.FormatStyle(v26, &v25);

  *(a2 + 112) = v21;
  *(a2 + 120) = v23;
  *(a2 + 128) = v22;
  return result;
}

uint64_t URL.FormatStyle.path(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[9];
  v5 = v2[11];
  v35 = v2[10];
  v36 = v5;
  v6 = v2[11];
  v37 = v2[12];
  v7 = v2[5];
  v8 = v2[7];
  v31 = v2[6];
  v9 = v31;
  v32 = v8;
  v10 = v2[7];
  v11 = v2[9];
  v33 = v2[8];
  v12 = v33;
  v34 = v11;
  v13 = v2[1];
  v14 = v2[3];
  v27 = v2[2];
  v15 = v27;
  v28 = v14;
  v16 = v2[3];
  v17 = v2[5];
  v29 = v2[4];
  v18 = v29;
  v30 = v17;
  v19 = v2[1];
  v26[0] = *v2;
  v20 = v26[0];
  v26[1] = v19;
  *(a2 + 160) = v35;
  *(a2 + 176) = v6;
  *(a2 + 192) = v2[12];
  *(a2 + 96) = v9;
  *(a2 + 112) = v10;
  *(a2 + 128) = v12;
  *(a2 + 144) = v4;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 64) = v18;
  *(a2 + 80) = v7;
  v21 = *a1;
  v23 = *(a1 + 1);
  v22 = *(a1 + 2);
  *a2 = v20;
  *(a2 + 16) = v13;
  outlined init with copy of URL.FormatStyle(v26, &v25);

  *(a2 + 136) = v21;
  *(a2 + 144) = v23;
  *(a2 + 152) = v22;
  return result;
}

uint64_t URL.FormatStyle.query(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[9];
  v5 = v2[11];
  v35 = v2[10];
  v36 = v5;
  v6 = v2[11];
  v37 = v2[12];
  v7 = v2[5];
  v8 = v2[7];
  v31 = v2[6];
  v9 = v31;
  v32 = v8;
  v10 = v2[7];
  v11 = v2[9];
  v33 = v2[8];
  v12 = v33;
  v34 = v11;
  v13 = v2[1];
  v14 = v2[3];
  v27 = v2[2];
  v15 = v27;
  v28 = v14;
  v16 = v2[3];
  v17 = v2[5];
  v29 = v2[4];
  v18 = v29;
  v30 = v17;
  v19 = v2[1];
  v26[0] = *v2;
  v20 = v26[0];
  v26[1] = v19;
  *(a2 + 160) = v35;
  *(a2 + 176) = v6;
  *(a2 + 192) = v2[12];
  *(a2 + 96) = v9;
  *(a2 + 112) = v10;
  *(a2 + 128) = v12;
  *(a2 + 144) = v4;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 64) = v18;
  *(a2 + 80) = v7;
  v21 = *a1;
  v23 = *(a1 + 1);
  v22 = *(a1 + 2);
  *a2 = v20;
  *(a2 + 16) = v13;
  outlined init with copy of URL.FormatStyle(v26, &v25);

  *(a2 + 160) = v21;
  *(a2 + 168) = v23;
  *(a2 + 176) = v22;
  return result;
}

uint64_t URL.FormatStyle.fragment(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v2[9];
  v5 = v2[11];
  v35 = v2[10];
  v36 = v5;
  v6 = v2[11];
  v37 = v2[12];
  v7 = v2[5];
  v8 = v2[7];
  v31 = v2[6];
  v9 = v31;
  v32 = v8;
  v10 = v2[7];
  v11 = v2[9];
  v33 = v2[8];
  v12 = v33;
  v34 = v11;
  v13 = v2[1];
  v14 = v2[3];
  v27 = v2[2];
  v15 = v27;
  v28 = v14;
  v16 = v2[3];
  v17 = v2[5];
  v29 = v2[4];
  v18 = v29;
  v30 = v17;
  v19 = v2[1];
  v26[0] = *v2;
  v20 = v26[0];
  v26[1] = v19;
  *(a2 + 160) = v35;
  *(a2 + 176) = v6;
  *(a2 + 192) = v2[12];
  *(a2 + 96) = v9;
  *(a2 + 112) = v10;
  *(a2 + 128) = v12;
  *(a2 + 144) = v4;
  *(a2 + 32) = v15;
  *(a2 + 48) = v16;
  *(a2 + 64) = v18;
  *(a2 + 80) = v7;
  v21 = *a1;
  v23 = *(a1 + 1);
  v22 = *(a1 + 2);
  *a2 = v20;
  *(a2 + 16) = v13;
  outlined init with copy of URL.FormatStyle(v26, &v25);

  *(a2 + 184) = v21;
  *(a2 + 192) = v23;
  *(a2 + 200) = v22;
  return result;
}

uint64_t URL.FormatStyle.parseStrategy.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v4 = v1[11];
  v27 = v1[10];
  v28 = v4;
  v5 = v1[11];
  v29 = v1[12];
  v6 = v1[5];
  v7 = v1[7];
  v23 = v1[6];
  v24 = v7;
  v8 = v1[7];
  v9 = v1[9];
  v25 = v1[8];
  v26 = v9;
  v10 = v1[1];
  v11 = v1[3];
  v19 = v1[2];
  v20 = v11;
  v12 = v1[3];
  v13 = v1[5];
  v21 = v1[4];
  v22 = v13;
  v14 = v1[1];
  v18[0] = *v1;
  v18[1] = v14;
  v17[10] = v27;
  v17[11] = v5;
  v17[12] = v1[12];
  v17[6] = v23;
  v17[7] = v8;
  v17[8] = v25;
  v17[9] = v3;
  v17[2] = v19;
  v17[3] = v12;
  v17[4] = v21;
  v17[5] = v6;
  v17[0] = v18[0];
  v17[1] = v10;
  outlined init with copy of URL.FormatStyle(v18, &v16);
  return URL.ParseStrategy.init(format:lenient:)(v17, a1);
}

uint64_t protocol witness for ParseableFormatStyle.parseStrategy.getter in conformance URL.FormatStyle@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[9];
  v4 = v1[11];
  v27 = v1[10];
  v28 = v4;
  v5 = v1[11];
  v29 = v1[12];
  v6 = v1[5];
  v7 = v1[7];
  v23 = v1[6];
  v24 = v7;
  v8 = v1[7];
  v9 = v1[9];
  v25 = v1[8];
  v26 = v9;
  v10 = v1[1];
  v11 = v1[3];
  v19 = v1[2];
  v20 = v11;
  v12 = v1[3];
  v13 = v1[5];
  v21 = v1[4];
  v22 = v13;
  v14 = v1[1];
  v18[0] = *v1;
  v18[1] = v14;
  v17[10] = v27;
  v17[11] = v5;
  v17[12] = v1[12];
  v17[6] = v23;
  v17[7] = v8;
  v17[8] = v25;
  v17[9] = v3;
  v17[2] = v19;
  v17[3] = v12;
  v17[4] = v21;
  v17[5] = v6;
  v17[0] = v18[0];
  v17[1] = v10;
  outlined init with copy of URL.FormatStyle(v18, &v16);
  return URL.ParseStrategy.init(format:lenient:)(v17, a1);
}

unint64_t URL.FormatStyle.isIPv4(_:)(uint64_t a1, unint64_t a2)
{
  v28 = 46;
  v29 = 0xE100000000000000;
  v26[2] = &v28;

  result = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, closure #1 in Sequence<>.contains(_:)specialized partial apply, v26, a1, a2, v4);
  v6 = result;
  if (*(result + 16) == 4)
  {
    v7 = (result + 56);
    v8 = -1;
    do
    {
      v9 = v8 == 3;
      if (v8 == 3)
      {
        break;
      }

      if (++v8 >= *(v6 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = *(v7 - 3);
      v11 = *(v7 - 2);
      if ((v11 ^ v10) < 0x4000)
      {
        break;
      }

      v12 = *(v7 - 1);
      v13 = *v7;
      if ((*v7 & 0x1000000000000000) != 0)
      {
        v16 = *v7;
        v17 = *(v7 - 2);
        v18 = *(v7 - 3);
        v19 = *(v7 - 1);

        v20 = specialized _parseInteger<A, B>(ascii:radix:)(v18, v17, v19, v16, 10);
        LOBYTE(v18) = v21;

        if (v18)
        {
          break;
        }

        result = v20;
      }

      else
      {
        if ((v13 & 0x2000000000000000) != 0)
        {
          v28 = *(v7 - 1);
          v29 = v13 & 0xFFFFFFFFFFFFFFLL;
          v14 = &v28;
        }

        else if ((v12 & 0x1000000000000000) != 0)
        {
          v14 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v22 = *(v7 - 3);
          v23 = *v7;
          v24 = *(v7 - 2);
          v25 = *(v7 - 1);
          v14 = _StringObject.sharedUTF8.getter();
          v12 = v25;
          v10 = v22;
          v11 = v24;
          v13 = v23;
        }

        result = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFqd__AGKXEfU_SRys5UInt8VGABySS8UTF8ViewVGSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lyAIqd__Isgyrzo_qd__sAO_pALRszr__lIetyggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5H15VGXEfU_Si_SsTG5SiTf1nnc_nTf4xnn_n(v14, v10, v11, v12, v13, 10);
        v27 = v15 & 1;
        if (v15)
        {
          break;
        }
      }

      v7 += 4;
    }

    while (result < 0x100);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t URL.FormatStyle.isIPv6(_:)(uint64_t a1, unint64_t a2)
{
  v54 = a1;
  v55 = a2;

  v4._countAndFlagsBits = 91;
  v4._object = 0xE100000000000000;
  if (!String.hasPrefix(_:)(v4))
  {
    goto LABEL_106;
  }

  v5._countAndFlagsBits = 93;
  v5._object = 0xE100000000000000;
  result = String.hasSuffix(_:)(v5);
  if ((result & 1) == 0)
  {
    goto LABEL_106;
  }

  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    goto LABEL_116;
  }

  result = specialized Collection.first.getter(a1, a2);
  if (!v8)
  {
LABEL_116:
    __break(1u);
    return result;
  }

  specialized RangeReplaceableCollection.removeFirst(_:)(1);
  specialized RangeReplaceableCollection<>.removeLast()();

  v11 = v54;
  v10 = v55;
  v52 = 58;
  v53 = 0xE100000000000000;
  MEMORY[0x1EEE9AC00](v9);
  v49[2] = &v52;

  v13 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, closure #1 in Sequence<>.contains(_:)specialized partial apply, v49, v11, v10, v12);
  v14 = *(v13 + 16);
  if (!v14)
  {
LABEL_107:

    return 1;
  }

  v15 = 0;
  v50 = &v52 + 1;
  while (v15 < *(v13 + 16))
  {
    v16 = (v13 + 32 + 32 * v15);
    v17 = *v16;
    v18 = v16[1];
    if ((v18 ^ *v16) < 0x4000)
    {
      goto LABEL_9;
    }

    v20 = v16[2];
    v19 = v16[3];

    v21 = MEMORY[0x1865CAE80](v17, v18, v20, v19);
    v23 = v22;

    v24 = HIBYTE(v23) & 0xF;
    v25 = v21 & 0xFFFFFFFFFFFFLL;
    if ((v23 & 0x2000000000000000) != 0)
    {
      v26 = HIBYTE(v23) & 0xF;
    }

    else
    {
      v26 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (!v26)
    {
      goto LABEL_110;
    }

    if ((v23 & 0x1000000000000000) != 0)
    {
      v28 = specialized _parseInteger<A, B>(ascii:radix:)(v21, v23, 16);
      v47 = v48;
      goto LABEL_100;
    }

    if ((v23 & 0x2000000000000000) != 0)
    {
      v52 = v21;
      v53 = v23 & 0xFFFFFFFFFFFFFFLL;
      if (v21 == 43)
      {
        if (!v24)
        {
          goto LABEL_112;
        }

        if (--v24)
        {
          v28 = 0;
          v39 = v50;
          while (1)
          {
            v40 = *v39;
            v41 = v40 - 48;
            if ((v40 - 48) >= 0xA)
            {
              if ((v40 - 65) < 6)
              {
                v41 = v40 - 55;
              }

              else
              {
                if ((v40 - 97) > 5)
                {
                  goto LABEL_98;
                }

                v41 = v40 - 87;
              }
            }

            if ((v28 - 0x800000000000000) >> 60 != 15)
            {
              break;
            }

            v32 = __OFADD__(16 * v28, v41);
            v28 = 16 * v28 + v41;
            if (v32)
            {
              break;
            }

            ++v39;
            if (!--v24)
            {
              goto LABEL_99;
            }
          }
        }
      }

      else if (v21 == 45)
      {
        if (!v24)
        {
          goto LABEL_115;
        }

        if (--v24)
        {
          v28 = 0;
          v33 = v50;
          while (1)
          {
            v34 = *v33;
            v35 = v34 - 48;
            if ((v34 - 48) >= 0xA)
            {
              if ((v34 - 65) < 6)
              {
                v35 = v34 - 55;
              }

              else
              {
                if ((v34 - 97) > 5)
                {
                  goto LABEL_98;
                }

                v35 = v34 - 87;
              }
            }

            if ((v28 - 0x800000000000000) >> 60 != 15)
            {
              break;
            }

            v32 = __OFSUB__(16 * v28, v35);
            v28 = 16 * v28 - v35;
            if (v32)
            {
              break;
            }

            ++v33;
            if (!--v24)
            {
              goto LABEL_99;
            }
          }
        }
      }

      else if (v24)
      {
        v28 = 0;
        v44 = &v52;
        while (1)
        {
          v45 = *v44;
          v46 = v45 - 48;
          if ((v45 - 48) >= 0xA)
          {
            if ((v45 - 65) < 6)
            {
              v46 = v45 - 55;
            }

            else
            {
              if ((v45 - 97) > 5)
              {
                goto LABEL_98;
              }

              v46 = v45 - 87;
            }
          }

          if ((v28 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v32 = __OFADD__(16 * v28, v46);
          v28 = 16 * v28 + v46;
          if (v32)
          {
            break;
          }

          v44 = (v44 + 1);
          if (!--v24)
          {
            goto LABEL_99;
          }
        }
      }

      goto LABEL_98;
    }

    if ((v21 & 0x1000000000000000) != 0)
    {
      result = (v23 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v27 = *result;
    if (v27 == 43)
    {
      if (v25 < 1)
      {
        goto LABEL_114;
      }

      v24 = v25 - 1;
      if (v25 == 1)
      {
        goto LABEL_98;
      }

      if (result)
      {
        v28 = 0;
        v36 = (result + 1);
        while (1)
        {
          v37 = *v36;
          v38 = v37 - 48;
          if ((v37 - 48) >= 0xA)
          {
            if ((v37 - 65) < 6)
            {
              v38 = v37 - 55;
            }

            else
            {
              if ((v37 - 97) > 5)
              {
                goto LABEL_98;
              }

              v38 = v37 - 87;
            }
          }

          if ((v28 - 0x800000000000000) >> 60 != 15)
          {
            goto LABEL_98;
          }

          v32 = __OFADD__(16 * v28, v38);
          v28 = 16 * v28 + v38;
          if (v32)
          {
            goto LABEL_98;
          }

          ++v36;
          if (!--v24)
          {
            goto LABEL_99;
          }
        }
      }
    }

    else if (v27 == 45)
    {
      if (v25 < 1)
      {
        goto LABEL_113;
      }

      v24 = v25 - 1;
      if (v25 == 1)
      {
        goto LABEL_98;
      }

      if (result)
      {
        v28 = 0;
        v29 = (result + 1);
        while (1)
        {
          v30 = *v29;
          v31 = v30 - 48;
          if ((v30 - 48) >= 0xA)
          {
            if ((v30 - 65) < 6)
            {
              v31 = v30 - 55;
            }

            else
            {
              if ((v30 - 97) > 5)
              {
                break;
              }

              v31 = v30 - 87;
            }
          }

          if ((v28 - 0x800000000000000) >> 60 != 15)
          {
            break;
          }

          v32 = __OFSUB__(16 * v28, v31);
          v28 = 16 * v28 - v31;
          if (v32)
          {
            break;
          }

          ++v29;
          if (!--v24)
          {
            goto LABEL_99;
          }
        }

LABEL_98:
        v28 = 0;
        LOBYTE(v24) = 1;
        goto LABEL_99;
      }
    }

    else
    {
      if (!v25)
      {
        goto LABEL_98;
      }

      if (result)
      {
        v28 = 0;
        while (1)
        {
          v42 = *result;
          v43 = v42 - 48;
          if ((v42 - 48) >= 0xA)
          {
            if ((v42 - 65) < 6)
            {
              v43 = v42 - 55;
            }

            else
            {
              if ((v42 - 97) > 5)
              {
                goto LABEL_98;
              }

              v43 = v42 - 87;
            }
          }

          if ((v28 - 0x800000000000000) >> 60 != 15)
          {
            goto LABEL_98;
          }

          v32 = __OFADD__(16 * v28, v43);
          v28 = 16 * v28 + v43;
          if (v32)
          {
            goto LABEL_98;
          }

          ++result;
          if (!--v25)
          {
            LOBYTE(v24) = 0;
            goto LABEL_99;
          }
        }
      }
    }

    v28 = 0;
    LOBYTE(v24) = 0;
LABEL_99:
    v51 = v24;
    v47 = v24;
LABEL_100:

    if ((v47 & 1) != 0 || (v28 & 0x8000000000000000) != 0 || v28 >> 16)
    {
      goto LABEL_108;
    }

LABEL_9:
    if (++v15 == v14)
    {
      goto LABEL_107;
    }
  }

  __break(1u);
LABEL_110:

LABEL_108:

LABEL_106:

  return 0;
}

uint64_t URL.FormatStyle.generateFormattedString(from:useEncodedHost:)(uint64_t a1, int a2)
{
  LODWORD(v230) = a2;
  v229 = 0;
  v286 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *(a1 + 8);
  LODWORD(v4) = *(a1 + 9);
  LODWORD(v5) = *(a1 + 10);
  v6 = *(a1 + 12);
  v247[0] = *(a1 + 13);
  *(v247 + 7) = *(a1 + 20);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 56);
  v284 = *(a1 + 40);
  v285 = v9;
  v11 = *(a1 + 72);
  v10 = *(a1 + 80);
  v12 = *(a1 + 88);
  v13 = *(a1 + 104);
  v14 = *(a1 + 136);
  v282 = *(a1 + 120);
  v283 = v14;
  v280 = v12;
  v281 = v13;
  v15 = *(a1 + 152);
  v242 = v15;
  v16 = *(a1 + 153);
  v245 = 0;
  v246 = 0xE000000000000000;
  v262 = v2;
  v232 = v3;
  v263 = v3;
  v264 = v4;
  v265 = v5;
  v266 = v6;
  *&v267[7] = *(a1 + 20);
  *v267 = *(a1 + 13);
  v268 = v7;
  v269 = v8;
  v17 = *(a1 + 40);
  v271 = *(a1 + 56);
  v270 = v17;
  v272 = v11;
  v273 = v10;
  v238 = v10;
  v18 = *(a1 + 88);
  v19 = *(a1 + 104);
  v20 = *(a1 + 120);
  v277 = *(a1 + 136);
  v276 = v20;
  v275 = v19;
  v274 = v18;
  v278 = v15;
  v279 = v16;
  v237 = v4;
  v239 = v5;
  v21 = v6;
  v234 = v6;
  v240 = v8;
  v235 = v11;
  v236 = v7;
  v241 = v16;
  v233 = v2;
  if (v8)
  {
    v22 = v2;
    v23 = v7;
  }

  else
  {
    if ((v4 & 1) == 0)
    {
      v28 = v232;
      v29 = v238;
      v27 = v236;
      goto LABEL_58;
    }

    v27 = v236;
    if (!v2 || (*(v2 + 48) & 1) != 0)
    {
      v28 = v232;
      v29 = v238;
      goto LABEL_58;
    }

    v22 = v2;
    v32 = String.subscript.getter();
    v23 = MEMORY[0x1865CAE80](v32);
    v8 = v33;
    LOBYTE(v4) = v237;
    v21 = v234;
  }

  v248 = v23;
  *&v249 = v8;

  MEMORY[0x1865CB0E0](58, 0xE100000000000000);
  MEMORY[0x1865CB0E0](v23, v8);

  v25 = v238;
  if (v238)
  {
    v26 = v11;
  }

  else if ((v21 & 1) != 0 && v22 && (*(v22 + 120) & 1) == 0)
  {
    v34 = String.subscript.getter();
    v26 = MEMORY[0x1865CAE80](v34);
    v25 = v35;
  }

  else
  {
    v24 = URLComponents._URLComponents.port.getter();
    if (v30)
    {
      URLComponents._URLComponents.percentEncodedUser.getter();
      if (!v31)
      {
        v28 = v232;
        v29 = v238;
        LOWORD(v5) = v239;
        LOBYTE(v16) = v241;
        v2 = v22;
        v27 = v236;
        goto LABEL_58;
      }
    }

    v26 = 0;
    v25 = 0xE000000000000000;
  }

  v36 = v26 & 0xFFFFFFFFFFFFLL;
  if ((v25 & 0x2000000000000000) != 0)
  {
    v37 = HIBYTE(v25) & 0xF;
  }

  else
  {
    v37 = v26 & 0xFFFFFFFFFFFFLL;
  }

  if (!v37)
  {
    v29 = v238;

    v28 = v232;
    v21 = v234;
    v27 = v236;
LABEL_56:
    MEMORY[0x1865CB0E0](12079, 0xE200000000000000);
    v11 = v235;
    LOWORD(v5) = v239;
    LOBYTE(v16) = v241;
    v2 = v22;
    goto LABEL_58;
  }

  if (v15)
  {
    v248 = v26;
    *&v249 = v25;
    MEMORY[0x1EEE9AC00](v24);
    v224 = &v248;
    v225 = MEMORY[0x1E69E7CD0];
    v226 = 4;

    v38 = v229;
    specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v222, v26, v25);
    v229 = v38;
    if (v39 == 1)
    {
      _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v26, v25, MEMORY[0x1E69E7CD0], 4);
    }

    v40 = v39;
    swift_bridgeObjectRelease_n();
    v28 = v232;
    LOBYTE(v4) = v237;
    v21 = v234;
    v29 = v238;
    v2 = v233;
    LOWORD(v5) = v239;
    LOBYTE(v16) = v241;
    v27 = v236;
    goto LABEL_54;
  }

  if ((v25 & 0x1000000000000000) == 0)
  {
    if ((v25 & 0x2000000000000000) != 0)
    {
      v42 = v22;
      v41 = v26;
      v248 = v26;
      *&v249 = v25 & 0xFFFFFFFFFFFFFFLL;
      MEMORY[0x1EEE9AC00](v24);
      LOBYTE(v226) = 0;
      MEMORY[0x1EEE9AC00](v46);
      v222 = &v248;
      v223 = HIBYTE(v25) & 0xF;

      _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v248, v223, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, &v224, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
      v40 = v47;
    }

    else
    {
      if ((v26 & 0x1000000000000000) != 0)
      {
        v41 = v26;
        v42 = v22;
        v43 = (v25 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        v42 = v22;
        v41 = v26;
        v24 = _StringObject.sharedUTF8.getter();
        if (!v24)
        {
          v73 = one-time initialization token for idnaTranscoder;

          if (v73 != -1)
          {
            swift_once();
          }

          if ((byte_1ED436DC0 & 1) == 0)
          {
            if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
            {
LABEL_214:
              swift_slowAlloc();
              __break(1u);
              goto LABEL_215;
            }

            __break(1u);
            goto LABEL_210;
          }

          v40 = 0;
          LOWORD(v5) = v239;
          goto LABEL_52;
        }

        v43 = v24;
        v36 = v64;
      }

      MEMORY[0x1EEE9AC00](v24);
      LOBYTE(v226) = 0;
      MEMORY[0x1EEE9AC00](v44);
      v222 = v43;
      v223 = v36;

      _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v43, v36, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, &v224, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
      v40 = v45;
    }

    LOWORD(v5) = v239;
    if (v40 == 1)
    {
      goto LABEL_35;
    }

LABEL_52:
    swift_bridgeObjectRelease_n();
    goto LABEL_53;
  }

  v41 = v26;
  v42 = v22;

LABEL_35:
  v248 = v41;
  *&v249 = v25;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v48 = String._bridgeToObjectiveCImpl()();

  v49 = [v48 _fastCharacterContents];
  v50 = v48;
  if (v49)
  {
    v248 = v41;
    *&v249 = v25;
    StringProtocol._ephemeralString.getter();
    v51 = String._bridgeToObjectiveCImpl()();

    v5 = [v51 length];
    v52 = swift_unknownObjectRelease();
    MEMORY[0x1EEE9AC00](v52);
    LOBYTE(v226) = 0;
    MEMORY[0x1EEE9AC00](v53);
    v222 = v49;
    v223 = v5;
    _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v49);
    v40 = v54;
    swift_bridgeObjectRelease_n();
    LOWORD(v5) = v239;
LABEL_53:
    v2 = v42;
    v28 = v232;
    LOBYTE(v4) = v237;
    v21 = v234;
    v27 = v236;
    v29 = v238;
    LOBYTE(v16) = v241;
    goto LABEL_54;
  }

  v248 = v41;
  *&v249 = v25;

  v55 = String.init<A>(_:)();
  v4 = v55;
  v5 = v56;
  v57 = v236;
  if ((v56 & 0x1000000000000000) != 0)
  {
    v4 = static String._copying(_:)();
    v66 = v65;

    v5 = v66;
    v29 = v238;
    if ((v66 & 0x2000000000000000) == 0)
    {
      goto LABEL_39;
    }

LABEL_47:
    v248 = v4;
    *&v249 = v5 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v55);
    LOBYTE(v226) = 0;
    MEMORY[0x1EEE9AC00](v67);
    v222 = &v248;
    v223 = v68;
    v70 = v69;
    _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v248, v68, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v71, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v40 = v72;
    LOWORD(v5) = v239;

    v27 = v57;
    swift_bridgeObjectRelease_n();
    v2 = v42;
    LOBYTE(v16) = v70;
    v21 = v234;
    v28 = v232;
    LOBYTE(v4) = v237;
    goto LABEL_54;
  }

  v29 = v238;
  if ((v56 & 0x2000000000000000) != 0)
  {
    goto LABEL_47;
  }

LABEL_39:
  if ((v4 & 0x1000000000000000) != 0)
  {
    v58 = (v5 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v58 = _StringObject.sharedUTF8.getter();
    if (!v58)
    {
      if (one-time initialization token for idnaTranscoder != -1)
      {
        swift_once();
      }

      if ((byte_1ED436DC0 & 1) == 0)
      {
        goto LABEL_217;
      }

      swift_bridgeObjectRelease_n();
      v2 = v42;
      v28 = v232;
      LOBYTE(v4) = v237;
      LOWORD(v5) = v239;
      v21 = v234;
      v27 = v57;
      v11 = v235;
      v29 = v238;
      LOBYTE(v16) = v241;
      goto LABEL_58;
    }

    v29 = v238;
  }

  MEMORY[0x1EEE9AC00](v58);
  LOBYTE(v226) = 0;
  MEMORY[0x1EEE9AC00](v59);
  v222 = v60;
  v223 = v61;
  _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v60, v61, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v62, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
  v40 = v63;

  swift_bridgeObjectRelease_n();
  LOWORD(v5) = v239;
  v21 = v234;
  v27 = v236;
  v28 = v232;
  LOBYTE(v4) = v237;
  LOBYTE(v16) = v241;
  v2 = v233;
LABEL_54:
  if (v40)
  {
    v22 = v2;

    goto LABEL_56;
  }

  v11 = v235;
LABEL_58:
  v252 = v284;
  v253 = v285;
  v259 = v283;
  v258 = v282;
  v257 = v281;
  v74 = v2;
  v248 = v2;
  LOBYTE(v249) = v28;
  BYTE1(v249) = v4;
  WORD1(v249) = v5;
  BYTE4(v249) = v21;
  *(&v249 + 5) = v247[0];
  HIDWORD(v249) = *(v247 + 7);
  v250 = v27;
  v251 = v240;
  v254 = v11;
  v255 = v29;
  v256 = v280;
  LODWORD(v231) = v242;
  v260 = v242;
  v261 = v16;
  v75 = URLComponents.user.getter();
  v76 = v27;
  if (v77)
  {
    MEMORY[0x1865CB0E0](v75);
    v28 = v232;
  }

  v252 = v284;
  v253 = v285;
  v259 = v283;
  v258 = v282;
  v257 = v281;
  v78 = v74;
  v248 = v74;
  LOBYTE(v249) = v28;
  BYTE1(v249) = v4;
  v79 = v239;
  WORD1(v249) = v239;
  v80 = v21;
  BYTE4(v249) = v21;
  *(&v249 + 5) = v247[0];
  HIDWORD(v249) = *(v247 + 7);
  v250 = v76;
  v81 = v4;
  v82 = v240;
  v251 = v240;
  v83 = v238;
  v254 = v235;
  v255 = v238;
  v256 = v280;
  v260 = v231;
  v84 = v78;
  v85 = v241;
  v261 = v241;
  v86 = URLComponents.password.getter();
  if (v87)
  {
    v88 = v80;
    v89 = v87;
    v228 = v86;
    v252 = v284;
    v253 = v285;
    v259 = v283;
    v258 = v282;
    v257 = v281;
    v248 = v84;
    LOBYTE(v249) = v28;
    BYTE1(v249) = v81;
    WORD1(v249) = v79;
    BYTE4(v249) = v88;
    *(&v249 + 5) = v247[0];
    HIDWORD(v249) = *(v247 + 7);
    v90 = v236;
    v250 = v236;
    v251 = v82;
    v254 = v235;
    v255 = v83;
    v256 = v280;
    v260 = v231;
    v261 = v85;
    URLComponents.user.getter();
    v91 = v82;
    if (v92)
    {

      MEMORY[0x1865CB0E0](58, 0xE100000000000000);
    }

    v93 = v230;
    MEMORY[0x1865CB0E0](v228, v89);

    v94 = v233;
    v79 = v239;
  }

  else
  {
    v94 = v84;
    v90 = v236;
    v91 = v82;
    v93 = v230;
  }

  v95 = v234;
  v96 = v232;
  if (v93)
  {
    v252 = v284;
    v253 = v285;
    v259 = v283;
    v258 = v282;
    v257 = v281;
    v248 = v94;
    LOBYTE(v249) = v232;
    BYTE1(v249) = v237;
    WORD1(v249) = v79;
    BYTE4(v249) = v234;
    *(&v249 + 5) = v247[0];
    HIDWORD(v249) = *(v247 + 7);
    v250 = v90;
    v251 = v91;
    v254 = v235;
    v255 = v83;
    v256 = v280;
    v260 = v231;
    v261 = v241;
    v97 = URLComponents.encodedHost.getter();
LABEL_67:
    if (!v98)
    {
      v101 = v90;
      v95 = v234;
      v102 = v235;
      v103 = v239;
      goto LABEL_96;
    }

    v230 = v97;
    v231 = v98;
LABEL_89:
    v252 = v284;
    v253 = v285;
    v259 = v283;
    v258 = v282;
    v257 = v281;
    v248 = v94;
    LOBYTE(v249) = v96;
    v116 = v237;
    BYTE1(v249) = v237;
    v117 = v239;
    WORD1(v249) = v239;
    BYTE4(v249) = v234;
    *(&v249 + 5) = v247[0];
    HIDWORD(v249) = *(v247 + 7);
    v118 = v240;
    v250 = v90;
    v251 = v240;
    v119 = v235;
    v254 = v235;
    v255 = v238;
    v256 = v280;
    LODWORD(v228) = v242;
    v260 = v242;
    v120 = v241;
    v261 = v241;
    URLComponents.user.getter();
    if (v121)
    {
    }

    else
    {
      v252 = v284;
      v253 = v285;
      v259 = v283;
      v258 = v282;
      v257 = v281;
      v248 = v94;
      LOBYTE(v249) = v96;
      BYTE1(v249) = v116;
      WORD1(v249) = v117;
      BYTE4(v249) = v234;
      *(&v249 + 5) = v247[0];
      HIDWORD(v249) = *(v247 + 7);
      v250 = v90;
      v251 = v118;
      v254 = v119;
      v255 = v238;
      v256 = v280;
      v260 = v228;
      v261 = v120;
      URLComponents.password.getter();
      if (!v122)
      {
        v101 = v90;
        v83 = v238;
        v94 = v233;
        v96 = v232;
        v123 = v231;
        goto LABEL_94;
      }

      v94 = v233;
      v96 = v232;
    }

    v123 = v231;
    v101 = v90;
    MEMORY[0x1865CB0E0](64, 0xE100000000000000);
    v83 = v238;
LABEL_94:
    v102 = v119;
    MEMORY[0x1865CB0E0](v230, v123);
LABEL_95:

    v103 = v239;
    v95 = v234;
    goto LABEL_96;
  }

  if (v83)
  {
    v99 = v235;
    v100 = v83;
LABEL_81:
    v108 = v99 & 0xFFFFFFFFFFFFLL;
    if ((v100 & 0x2000000000000000) != 0)
    {
      v109 = HIBYTE(v100) & 0xF;
    }

    else
    {
      v109 = v99 & 0xFFFFFFFFFFFFLL;
    }

    if (!v109)
    {

      v230 = 0;
      v231 = 0xE000000000000000;
      v96 = v232;
      goto LABEL_89;
    }

    if (v242 == 1)
    {
      v230 = &v228;
      v248 = v99;
      *&v249 = v100;
      MEMORY[0x1EEE9AC00](v86);
      v224 = &v248;
      v225 = MEMORY[0x1E69E7CD0];
      v226 = 4;

      v110 = v229;
      v111 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v222, v99, v100);
      v229 = v110;
      if (v112 == 1)
      {
        v113 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v99, v100, MEMORY[0x1E69E7CD0], 4);
        v115 = v114;
        swift_bridgeObjectRelease_n();
        v97 = v113;
        v98 = v115;
        v94 = v233;
        v96 = v232;
        goto LABEL_67;
      }

      v138 = v111;
      v139 = v112;
      swift_bridgeObjectRelease_n();
      v98 = v139;
      v94 = v233;
LABEL_156:
      v96 = v232;
      v97 = v138;
      goto LABEL_67;
    }

    if ((v100 & 0x1000000000000000) != 0)
    {

LABEL_115:
      v248 = v99;
      *&v249 = v100;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v141 = String._bridgeToObjectiveCImpl()();

      v142 = [v141 _fastCharacterContents];
      v143 = v141;
      if (v142)
      {
        v248 = v99;
        *&v249 = v100;
        StringProtocol._ephemeralString.getter();
        v144 = String._bridgeToObjectiveCImpl()();

        v145 = [v144 length];
        v146 = swift_unknownObjectRelease();
        MEMORY[0x1EEE9AC00](v146);
        LOBYTE(v226) = 0;
        MEMORY[0x1EEE9AC00](v147);
        v222 = v142;
        v223 = v145;
        v148 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v142);
        v150 = v149;
        swift_bridgeObjectRelease_n();
        v97 = v148;
        v98 = v150;
LABEL_165:
        v96 = v232;
        v83 = v238;
        goto LABEL_67;
      }

      v248 = v99;
      *&v249 = v100;

      v170 = String.init<A>(_:)();
      v172 = v170;
      v173 = v171;
      v83 = v238;
      if ((v171 & 0x1000000000000000) != 0)
      {
        v172 = static String._copying(_:)();
        v192 = v191;

        v173 = v192;
        if ((v192 & 0x2000000000000000) == 0)
        {
          goto LABEL_138;
        }
      }

      else if ((v171 & 0x2000000000000000) == 0)
      {
LABEL_138:
        if ((v172 & 0x1000000000000000) != 0)
        {
          v174 = (v173 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v174 = _StringObject.sharedUTF8.getter();
          if (!v174)
          {
            if (one-time initialization token for idnaTranscoder != -1)
            {
              swift_once();
            }

            if ((byte_1ED436DC0 & 1) == 0)
            {
LABEL_219:
              if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
              {
LABEL_224:
                swift_slowAlloc();
                __break(1u);
                goto LABEL_225;
              }

              __break(1u);
              goto LABEL_221;
            }

            v96 = v232;
            v101 = v90;
            v102 = v235;
            v83 = v238;
            goto LABEL_95;
          }

          v83 = v238;
        }

        MEMORY[0x1EEE9AC00](v174);
        LOBYTE(v226) = 0;
        MEMORY[0x1EEE9AC00](v175);
        v222 = v176;
        v223 = v177;
        goto LABEL_155;
      }

      v248 = v172;
      *&v249 = v173 & 0xFFFFFFFFFFFFFFLL;
      MEMORY[0x1EEE9AC00](v170);
      LOBYTE(v226) = 0;
      MEMORY[0x1EEE9AC00](v193);
      v222 = &v248;
      v223 = v177;
      v176 = &v248;
LABEL_155:
      v138 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v176, v177, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v178, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
      v195 = v194;

      swift_bridgeObjectRelease_n();
      v98 = v195;
      goto LABEL_156;
    }

    v231 = v100;
    if ((v100 & 0x2000000000000000) != 0)
    {
      v248 = v99;
      *&v249 = v100 & 0xFFFFFFFFFFFFFFLL;
      MEMORY[0x1EEE9AC00](v83);
      LOBYTE(v226) = 0;
      MEMORY[0x1EEE9AC00](v140);
      v222 = &v248;
      v223 = HIBYTE(v100) & 0xF;

      v136 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v248, HIBYTE(v100) & 0xF, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, &v224, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
LABEL_114:
      v100 = v231;
      if (v137 == 1)
      {
        goto LABEL_115;
      }

LABEL_164:
      v201 = v136;
      v202 = v137;
      swift_bridgeObjectRelease_n();
      v97 = v201;
      v98 = v202;
      goto LABEL_165;
    }

    if ((v99 & 0x1000000000000000) != 0)
    {
      v134 = (v100 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_110:
      MEMORY[0x1EEE9AC00](v86);
      LOBYTE(v226) = 0;
      MEMORY[0x1EEE9AC00](v135);
      v222 = v134;
      v223 = v108;

      v136 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v134, v108, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, &v224, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
      v90 = v236;
      goto LABEL_114;
    }

    v86 = _StringObject.sharedUTF8.getter();
    if (v86)
    {
      v134 = v86;
      v108 = v189;
      goto LABEL_110;
    }

    v200 = one-time initialization token for idnaTranscoder;

    if (v200 != -1)
    {
      swift_once();
    }

    if (byte_1ED436DC0)
    {
      v137 = 0;
      v136 = 0;
      v90 = v236;
      goto LABEL_164;
    }

LABEL_210:
    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
LABEL_215:
      swift_slowAlloc();
      __break(1u);
      goto LABEL_216;
    }

    __break(1u);
    goto LABEL_212;
  }

  v101 = v90;
  v102 = v235;
  if ((v234 & 1) != 0 && v94 && (*(v94 + 120) & 1) == 0)
  {
    v106 = String.subscript.getter();
    v99 = MEMORY[0x1865CAE80](v106);
    v100 = v107;

    goto LABEL_80;
  }

  v86 = URLComponents._URLComponents.port.getter();
  if ((v104 & 1) == 0)
  {
LABEL_78:
    v99 = 0;
    v100 = 0xE000000000000000;
LABEL_80:
    v90 = v101;
    goto LABEL_81;
  }

  URLComponents._URLComponents.percentEncodedUser.getter();
  if (v105)
  {

    goto LABEL_78;
  }

  v103 = v239;
LABEL_96:
  v252 = v284;
  v253 = v285;
  v256 = v280;
  v257 = v281;
  v258 = v282;
  v248 = v94;
  v124 = v96;
  LOBYTE(v249) = v96;
  v125 = v237;
  BYTE1(v249) = v237;
  WORD1(v249) = v103;
  BYTE4(v249) = v95;
  *(&v249 + 5) = v247[0];
  HIDWORD(v249) = *(v247 + 7);
  v250 = v101;
  v251 = v240;
  v254 = v102;
  v255 = v83;
  v259 = v283;
  v126 = v242;
  v260 = v242;
  v261 = v241;
  v127 = URLComponents.port.getter();
  if ((v128 & 1) == 0)
  {
    v231 = v127;
    if (v83)
    {
      v129 = v102;
      v130 = v83;
    }

    else if ((v95 & 1) != 0 && v94 && (*(v94 + 120) & 1) == 0)
    {
      v151 = String.subscript.getter();
      v129 = MEMORY[0x1865CAE80](v151);
      v130 = v152;
    }

    else
    {
      v127 = URLComponents._URLComponents.port.getter();
      if (v131)
      {
        URLComponents._URLComponents.percentEncodedUser.getter();
        v132 = v124;
        if (!v133)
        {
          goto LABEL_175;
        }
      }

      v129 = 0;
      v130 = 0xE000000000000000;
    }

    v153 = v129 & 0xFFFFFFFFFFFFLL;
    if ((v130 & 0x2000000000000000) != 0)
    {
      v154 = HIBYTE(v130) & 0xF;
    }

    else
    {
      v154 = v129 & 0xFFFFFFFFFFFFLL;
    }

    if (!v154)
    {

      v95 = v234;
      v102 = v235;
      v132 = v124;
LABEL_174:
      MEMORY[0x1865CB0E0](58, 0xE100000000000000);
      goto LABEL_175;
    }

    if (v242)
    {
      v248 = v129;
      *&v249 = v130;
      MEMORY[0x1EEE9AC00](v127);
      v224 = &v248;
      v225 = MEMORY[0x1E69E7CD0];
      v226 = 4;

      specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(partial apply for specialized closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:), &v222, v129, v130);
      if (v155 == 1)
      {
        _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v129, v130, MEMORY[0x1E69E7CD0], 4);
      }

      v156 = v155;
      swift_bridgeObjectRelease_n();
      v102 = v235;
      v132 = v124;
LABEL_172:
      v95 = v234;
      if (v156)
      {

        goto LABEL_174;
      }

LABEL_175:
      v124 = v132;
      v248 = v231;
      v204 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v204);

      v126 = v242;
      v125 = v237;
      v94 = v233;
      goto LABEL_176;
    }

    if ((v130 & 0x1000000000000000) != 0)
    {

      goto LABEL_134;
    }

    if ((v130 & 0x2000000000000000) != 0)
    {
      v248 = v129;
      *&v249 = v130 & 0xFFFFFFFFFFFFFFLL;
      MEMORY[0x1EEE9AC00](v83);
      MEMORY[0x1EEE9AC00](v160);
      v226 = &v248;
      v227 = HIBYTE(v130) & 0xF;

      _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v248, HIBYTE(v130) & 0xF, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, &v224, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
      v156 = v161;
      if (v161 == 1)
      {
        goto LABEL_134;
      }

LABEL_170:
      swift_bridgeObjectRelease_n();
      goto LABEL_171;
    }

    if ((v129 & 0x1000000000000000) != 0)
    {
      v157 = (v130 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_131;
    }

    v127 = _StringObject.sharedUTF8.getter();
    if (v127)
    {
      v157 = v127;
      v153 = v190;
LABEL_131:
      MEMORY[0x1EEE9AC00](v127);
      MEMORY[0x1EEE9AC00](v158);
      v226 = v157;
      v227 = v153;

      _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v157, v153, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, &v224, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
      v156 = v159;
      if (v159 != 1)
      {
        goto LABEL_170;
      }

LABEL_134:
      v248 = v129;
      *&v249 = v130;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v162 = String._bridgeToObjectiveCImpl()();

      v163 = [v162 _fastCharacterContents];
      v164 = v162;
      if (v163)
      {
        v248 = v129;
        *&v249 = v130;
        StringProtocol._ephemeralString.getter();
        v165 = String._bridgeToObjectiveCImpl()();

        v166 = [v165 length];
        v167 = swift_unknownObjectRelease();
        MEMORY[0x1EEE9AC00](v167);
        MEMORY[0x1EEE9AC00](v168);
        v226 = v163;
        v227 = v166;
        _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v163);
        v156 = v169;
        swift_bridgeObjectRelease_n();
LABEL_171:
        v132 = v232;
        v102 = v235;
        v83 = v238;
        goto LABEL_172;
      }

      v248 = v129;
      *&v249 = v130;

      v179 = String.init<A>(_:)();
      v181 = v179;
      v182 = v180;
      v183 = v232;
      v83 = v238;
      if ((v180 & 0x1000000000000000) != 0)
      {
        v181 = static String._copying(_:)();
        v197 = v196;

        v182 = v197;
        v102 = v235;
        if ((v197 & 0x2000000000000000) == 0)
        {
          goto LABEL_143;
        }
      }

      else
      {
        v102 = v235;
        if ((v180 & 0x2000000000000000) == 0)
        {
LABEL_143:
          if ((v181 & 0x1000000000000000) != 0)
          {
            v184 = (v182 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_145:
            MEMORY[0x1EEE9AC00](v184);
            MEMORY[0x1EEE9AC00](v185);
            v226 = v186;
            v227 = v187;
LABEL_159:
            _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v186, v187, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v188, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
            v156 = v199;

            swift_bridgeObjectRelease_n();
            v132 = v183;
            goto LABEL_172;
          }

          v184 = _StringObject.sharedUTF8.getter();
          if (v184)
          {
            v183 = v232;
            v102 = v235;
            v83 = v238;
            goto LABEL_145;
          }

          if (one-time initialization token for idnaTranscoder != -1)
          {
            swift_once();
          }

          if (byte_1ED436DC0)
          {

            swift_bridgeObjectRelease_n();
            v132 = v232;
            v95 = v234;
            v102 = v235;
            v83 = v238;
            goto LABEL_175;
          }

LABEL_221:
          if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
          {
LABEL_225:
            result = swift_slowAlloc();
            __break(1u);
            return result;
          }

          __break(1u);
          goto LABEL_223;
        }
      }

      v248 = v181;
      *&v249 = v182 & 0xFFFFFFFFFFFFFFLL;
      MEMORY[0x1EEE9AC00](v179);
      MEMORY[0x1EEE9AC00](v198);
      v226 = &v248;
      v227 = v187;
      v186 = &v248;
      goto LABEL_159;
    }

    v203 = one-time initialization token for idnaTranscoder;

    if (v203 != -1)
    {
      swift_once();
    }

    if (byte_1ED436DC0)
    {
      v156 = 0;
      goto LABEL_170;
    }

LABEL_212:
    if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
    {
LABEL_216:
      swift_slowAlloc();
      __break(1u);
LABEL_217:
      if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
      {
LABEL_223:
        swift_slowAlloc();
        __break(1u);
        goto LABEL_224;
      }

      __break(1u);
      goto LABEL_219;
    }

    __break(1u);
    goto LABEL_214;
  }

LABEL_176:
  v252 = v284;
  v253 = v285;
  v259 = v283;
  v258 = v282;
  v257 = v281;
  v248 = v94;
  v205 = v124;
  LOBYTE(v249) = v124;
  BYTE1(v249) = v125;
  v206 = v239;
  WORD1(v249) = v239;
  BYTE4(v249) = v95;
  *(&v249 + 5) = v247[0];
  HIDWORD(v249) = *(v247 + 7);
  v250 = v236;
  v251 = v240;
  v254 = v102;
  v255 = v83;
  v256 = v280;
  v260 = v126;
  v207 = v205;
  v261 = v241;
  v208 = URLComponents.path.getter();
  v210 = v209;

  v211 = HIBYTE(v210) & 0xF;
  if ((v210 & 0x2000000000000000) == 0)
  {
    v211 = v208 & 0xFFFFFFFFFFFFLL;
  }

  if (v211)
  {
    v252 = v284;
    v253 = v285;
    v256 = v280;
    v257 = v281;
    v258 = v282;
    v248 = v233;
    LOBYTE(v249) = v207;
    BYTE1(v249) = v237;
    WORD1(v249) = v206;
    BYTE4(v249) = v95;
    *(&v249 + 5) = v247[0];
    HIDWORD(v249) = *(v247 + 7);
    v250 = v236;
    v251 = v240;
    v254 = v102;
    v255 = v83;
    v259 = v283;
    v260 = v242;
    v261 = v241;
    v243 = URLComponents.path.getter();
    v244 = v212;

    v213._countAndFlagsBits = 47;
    v213._object = 0xE100000000000000;
    v214 = String.hasSuffix(_:)(v213);

    if (v214)
    {
      URLComponents._URLComponents.query.getter();
      if (!v215)
      {
        v252 = v284;
        v253 = v285;
        v256 = v280;
        v257 = v281;
        v258 = v282;
        v248 = v233;
        LOBYTE(v249) = v207;
        BYTE1(v249) = v237;
        WORD1(v249) = v206;
        BYTE4(v249) = v95;
        *(&v249 + 5) = v247[0];
        HIDWORD(v249) = *(v247 + 7);
        v250 = v236;
        v251 = v240;
        v254 = v102;
        v255 = v83;
        v259 = v283;
        v260 = v242;
        v261 = v241;
        URLComponents.fragment.getter();
        if (!v216)
        {
          specialized RangeReplaceableCollection<>.removeLast()();
        }
      }
    }

    MEMORY[0x1865CB0E0](v243, v244);
  }

  v217 = URLComponents._URLComponents.query.getter();
  if (v218)
  {
    v248 = 63;
    *&v249 = 0xE100000000000000;
    MEMORY[0x1865CB0E0](v217);

    MEMORY[0x1865CB0E0](v248, v249);
  }

  v252 = v284;
  v253 = v285;
  v256 = v280;
  v257 = v281;
  v258 = v282;
  v248 = v233;
  LOBYTE(v249) = v207;
  BYTE1(v249) = v237;
  WORD1(v249) = v206;
  BYTE4(v249) = v95;
  *(&v249 + 5) = v247[0];
  HIDWORD(v249) = *(v247 + 7);
  v250 = v236;
  v251 = v240;
  v254 = v102;
  v255 = v83;
  v259 = v283;
  v260 = v242;
  v261 = v241;
  v219 = URLComponents.fragment.getter();
  if (v220)
  {
    v248 = 35;
    *&v249 = 0xE100000000000000;
    MEMORY[0x1865CB0E0](v219);

    MEMORY[0x1865CB0E0](v248, v249);
  }

  return v245;
}

id URL.FormatStyle.formatMultiLevelSubdomains(from:forHost:)(uint64_t a1)
{
  v28[4] = *MEMORY[0x1E69E9840];
  v2 = String._bridgeToObjectiveCImpl()();
  v3 = __NSURLGetTopLevelDomain(v2);
  result = swift_unknownObjectRelease();
  if (v3)
  {
    isTaggedPointer = _objc_isTaggedPointer(v3);
    v6 = v3;
    v7 = v6;
    if (!isTaggedPointer)
    {
LABEL_7:
      LOBYTE(v25[0]) = 0;
      v28[0] = 0;
      LOBYTE(v26) = 0;
      v27 = 0;
      if (__CFStringIsCF())
      {

LABEL_11:
        v9 = 0;
        v11 = 0xE000000000000000;
        goto LABEL_22;
      }

      v13 = v7;
      v14 = String.init(_nativeStorage:)();
      if (v15)
      {
        v9 = v14;
        v11 = v15;

        goto LABEL_22;
      }

      v28[0] = [v13 length];
      if (!v28[0])
      {

        goto LABEL_11;
      }

      v9 = String.init(_cocoaString:)();
      v11 = v18;
LABEL_21:

LABEL_22:
      v28[0] = 46;
      v28[1] = 0xE100000000000000;
      MEMORY[0x1EEE9AC00](v12);
      v24 = v28;
      v19 = *(specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, closure #1 in Sequence<>.contains(_:)specialized partial apply, &v23, v9, v11, v25) + 16);

      v20 = v19 + 2;
      if (__OFADD__(v19, 2))
      {
        __break(1u);
      }

      else
      {
        v21 = *(*a1 + 16);
        if (v20 >= v21)
        {
          return result;
        }

        v22 = v21 - v20;
        if (!__OFSUB__(v21, v20))
        {
          if (!v22)
          {
            return result;
          }

          if ((v22 & 0x8000000000000000) == 0)
          {
            if (v21 >= v22)
            {
              return specialized Array.replaceSubrange<A>(_:with:)(0, v22, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
            }

LABEL_33:
            __break(1u);
          }

LABEL_32:
          __break(1u);
          goto LABEL_33;
        }
      }

      __break(1u);
      goto LABEL_32;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v6);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v24 = v7;
          v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v11 = v10;

          goto LABEL_22;
        }

        goto LABEL_7;
      }

      result = [v7 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v16 = String.init(utf8String:)(result);
      if (v17)
      {
LABEL_16:
        v9 = v16;
        v11 = v17;

        goto LABEL_21;
      }

      __break(1u);
    }

    v26 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v16 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v17)
    {
      [v7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v9 = v25[0];
      v11 = v25[1];
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  return result;
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance URL.FormatStyle@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = URL.FormatStyle.format(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

Swift::String __swiftcall URL.formatted()()
{
  v36 = *v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  v1 = static _SetStorage.allocate(capacity:)();
  v2 = v1 + 56;
  v4 = *aHttp_2;
  v3 = unk_1EEED4570;
  Hasher.init(_seed:)();
  v40 = v56;
  v41 = v57;
  *&v42 = v58;
  v38 = v54;
  v39 = v55;

  String.hash(into:)();
  v5 = Hasher._finalize()();
  v7 = -1 << *(v1 + 32);
  v8 = v5 & ~v7;
  v9 = v8 >> 6;
  v10 = *(v1 + 56 + 8 * (v8 >> 6));
  v11 = 1 << v8;
  if (((1 << v8) & v10) != 0)
  {
    v12 = ~v7;
    while (1)
    {
      v13 = (*(v1 + 48) + 16 * v8);
      if (*v13 == v4 && v13[1] == v3)
      {
        break;
      }

      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (v5)
      {
        break;
      }

      v8 = (v8 + 1) & v12;
      v9 = v8 >> 6;
      v10 = *(v2 + 8 * (v8 >> 6));
      v11 = 1 << v8;
      if (((1 << v8) & v10) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    *(v2 + 8 * v9) = v11 | v10;
    v15 = (*(v1 + 48) + 16 * v8);
    *v15 = v4;
    v15[1] = v3;
    v16 = *(v1 + 16);
    v17 = __OFADD__(v16, 1);
    v18 = v16 + 1;
    if (v17)
    {
      goto LABEL_24;
    }

    *(v1 + 16) = v18;
  }

  v20 = *aHttps_2;
  v19 = unk_1EEED4580;
  Hasher.init(_seed:)();
  v40 = v56;
  v41 = v57;
  *&v42 = v58;
  v38 = v54;
  v39 = v55;

  String.hash(into:)();
  v5 = Hasher._finalize()();
  v21 = -1 << *(v1 + 32);
  v22 = v5 & ~v21;
  v23 = v22 >> 6;
  v24 = *(v2 + 8 * (v22 >> 6));
  v25 = 1 << v22;
  if (((1 << v22) & v24) != 0)
  {
    v26 = ~v21;
    while (1)
    {
      v27 = (*(v1 + 48) + 16 * v22);
      if (*v27 == v20 && v27[1] == v19)
      {
        break;
      }

      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (v5)
      {
        break;
      }

      v22 = (v22 + 1) & v26;
      v23 = v22 >> 6;
      v24 = *(v2 + 8 * (v22 >> 6));
      v25 = 1 << v22;
      if (((1 << v22) & v24) == 0)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_23;
  }

LABEL_20:
  *(v2 + 8 * v23) = v25 | v24;
  v29 = (*(v1 + 48) + 16 * v22);
  *v29 = v20;
  v29[1] = v19;
  v30 = *(v1 + 16);
  v17 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (v17)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  *(v1 + 16) = v31;
LABEL_23:
  swift_arrayDestroy();
  LOBYTE(v38) = 1;
  *(&v38 + 1) = 0;
  *&v39 = 0;
  BYTE8(v39) = 0;
  v40 = 0uLL;
  LOBYTE(v41) = 0;
  *(&v41 + 1) = 0;
  *&v42 = 0;
  BYTE8(v42) = 1;
  v43 = 0uLL;
  LOBYTE(v44) = 0;
  v45 = 0;
  LOBYTE(v46) = 0;
  v47 = 0;
  *&v48 = v1;
  BYTE8(v48) = 1;
  v49 = 0uLL;
  LOBYTE(v50) = 0;
  BYTE8(v52) = 0;
  v51 = 0;
  *&v52 = 0;
  v53 = 0uLL;
  v37[11] = v50;
  v37[12] = v52;
  v37[13] = 0uLL;
  v37[7] = v44;
  v37[8] = v46;
  v37[9] = v48;
  v37[10] = 0uLL;
  v37[3] = 0uLL;
  v37[4] = v41;
  v37[5] = v42;
  v37[6] = 0uLL;
  v37[1] = v38;
  v37[2] = v39;
  v37[0] = v36;
  v32 = URL.FormatStyle.format(_:)(v37);
  v34 = v33;
  outlined destroy of URL.FormatStyle(&v38);
  v5 = v32;
  v6 = v34;
LABEL_25:
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

Swift::Int static FormatStyle<>.url.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd);
  v10 = static _SetStorage.allocate(capacity:)();
  v11 = v10 + 56;
  v12 = *a1;
  v13 = *a2;
  Hasher.init(_seed:)();

  String.hash(into:)();
  result = Hasher._finalize()();
  v15 = -1 << *(v10 + 32);
  v16 = result & ~v15;
  v17 = v16 >> 6;
  v18 = *(v10 + 56 + 8 * (v16 >> 6));
  v19 = 1 << v16;
  if (((1 << v16) & v18) != 0)
  {
    v20 = ~v15;
    while (1)
    {
      v21 = (*(v10 + 48) + 16 * v16);
      if (*v21 == v12 && v21[1] == v13)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      v16 = (v16 + 1) & v20;
      v17 = v16 >> 6;
      v18 = *(v11 + 8 * (v16 >> 6));
      v19 = 1 << v16;
      if (((1 << v16) & v18) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    *(v11 + 8 * v17) = v19 | v18;
    v23 = (*(v10 + 48) + 16 * v16);
    *v23 = v12;
    v23[1] = v13;
    v24 = *(v10 + 16);
    v25 = __OFADD__(v24, 1);
    v26 = v24 + 1;
    if (v25)
    {
      goto LABEL_24;
    }

    *(v10 + 16) = v26;
  }

  v27 = *a3;
  v28 = *a4;
  Hasher.init(_seed:)();

  String.hash(into:)();
  result = Hasher._finalize()();
  v29 = -1 << *(v10 + 32);
  v30 = result & ~v29;
  v31 = v30 >> 6;
  v32 = *(v11 + 8 * (v30 >> 6));
  v33 = 1 << v30;
  if (((1 << v30) & v32) != 0)
  {
    v34 = ~v29;
    while (1)
    {
      v35 = (*(v10 + 48) + 16 * v30);
      if (*v35 == v27 && v35[1] == v28)
      {
        break;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        break;
      }

      v30 = (v30 + 1) & v34;
      v31 = v30 >> 6;
      v32 = *(v11 + 8 * (v30 >> 6));
      v33 = 1 << v30;
      if (((1 << v30) & v32) == 0)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_23;
  }

LABEL_20:
  *(v11 + 8 * v31) = v33 | v32;
  v37 = (*(v10 + 48) + 16 * v30);
  *v37 = v27;
  v37[1] = v28;
  v38 = *(v10 + 16);
  v25 = __OFADD__(v38, 1);
  v39 = v38 + 1;
  if (!v25)
  {
    *(v10 + 16) = v39;
LABEL_23:
    result = swift_arrayDestroy();
    *a5 = 1;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;
    *(a5 + 40) = 0;
    *(a5 + 48) = 0;
    *(a5 + 56) = 0;
    *(a5 + 64) = 0;
    *(a5 + 72) = 1;
    *(a5 + 104) = 0;
    *(a5 + 112) = 0;
    *(a5 + 80) = 0;
    *(a5 + 88) = 0;
    *(a5 + 96) = 0;
    *(a5 + 120) = 0;
    *(a5 + 128) = v10;
    *(a5 + 136) = 1;
    *(a5 + 144) = 0;
    *(a5 + 152) = 0;
    *(a5 + 160) = 0;
    *(a5 + 168) = 0;
    *(a5 + 176) = 0;
    *(a5 + 184) = 0;
    *(a5 + 192) = 0;
    *(a5 + 200) = 0;
    return result;
  }

LABEL_24:
  __break(1u);
  return result;
}

char *specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, char *a7@<X6>, unint64_t a8@<X8>)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_38;
  }

  v16 = v9;
  v12 = a6;
  v17 = a5 >> 14;
  v13 = a6 >> 14;
  if (a1 && v17 != v13)
  {
    v8 = a4;
    v15 = MEMORY[0x1E69E7CC0];
    v10 = a5;
    do
    {
      v18 = v10 >> 14;
      if (v10 >> 14 == v13)
      {
        break;
      }

      v40 = a1;
      v47 = v16;
      v42 = v15;
      v15 = a7;
      while (1)
      {
        while (1)
        {
          v46[0] = Substring.subscript.getter();
          v46[1] = v19;
          v20 = v47;
          v21 = a3(v46);
          v47 = v20;
          if (v20)
          {

            return v15;
          }

          v22 = v21;

          if (v22)
          {
            break;
          }

          v15 = a7;
          v18 = Substring.index(after:)() >> 14;
          if (v18 == v13)
          {
            v15 = v42;
            goto LABEL_28;
          }
        }

        result = v10;
        if (v10 >> 14 != v18 || (a2 & 1) == 0)
        {
          break;
        }

        v15 = a7;
        v10 = Substring.index(after:)();
        v18 = v10 >> 14;
        if (v10 >> 14 == v13)
        {
          v15 = v42;
          goto LABEL_28;
        }
      }

      if (v18 < v10 >> 14)
      {
        __break(1u);
        return result;
      }

      v43 = Substring.subscript.getter();
      v38 = v25;
      v39 = v24;
      v37 = v26;
      v15 = v42;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v42 + 2) + 1, 1, v42);
      }

      v28 = *(v15 + 2);
      v27 = *(v15 + 3);
      if (v28 >= v27 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v15);
      }

      *(v15 + 2) = v28 + 1;
      v29 = &v15[32 * v28];
      *(v29 + 4) = v43;
      *(v29 + 5) = v39;
      *(v29 + 6) = v38;
      *(v29 + 7) = v37;
      v10 = Substring.index(after:)();
      a1 = v40;
      v16 = v47;
    }

    while (*(v15 + 2) != v40);
LABEL_28:
    if (v10 >> 14 == v13 && (a2 & 1) != 0)
    {

      return v15;
    }

    if (v13 >= v10 >> 14)
    {
      v8 = Substring.subscript.getter();
      v10 = v33;
      v12 = v34;
      v13 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        goto LABEL_41;
      }

LABEL_33:
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
LABEL_34:
      v11 = v14 + 1;
      if (v14 < a8 >> 1)
      {
LABEL_35:
        *(v15 + 2) = v11;
        v36 = &v15[32 * v14];
        *(v36 + 4) = v8;
        *(v36 + 5) = v10;
        *(v36 + 6) = v12;
        *(v36 + 7) = v13;
        return v15;
      }

LABEL_38:
      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a8 > 1), v11, 1, v15);
      goto LABEL_35;
    }

LABEL_40:
    __break(1u);
LABEL_41:
    v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
    goto LABEL_33;
  }

  if (v17 != v13 || (a2 & 1) == 0)
  {
    if (v13 >= v17)
    {
      v8 = Substring.subscript.getter();
      v10 = v30;
      v12 = v31;
      v13 = v32;

      v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v14 = *(v15 + 2);
      a8 = *(v15 + 3);
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_40;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, int64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 2);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v11 = __OFSUB__(a3, v9);
  v12 = a3 - v9;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v7 + v12;
  if (__OFADD__(v7, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v6 + 3) >> 1)
  {
    if (v7 <= v13)
    {
      v16 = v13;
    }

    else
    {
      v16 = v7;
    }

    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v16, 1, v6);
    *v4 = v6;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v8, a2, a3, a3, a4);
  *v4 = v6;
  return result;
}

uint64_t specialized static URL.FormatStyle.HostDisplayOption.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[24];
  v4 = *(a1 + 4);
  v5 = *(a2 + 2);
  v6 = a2[24];
  v7 = *(a2 + 4);
  if (!*(a1 + 2))
  {
    if (!v5)
    {

      if (v3 != v6)
      {
        return 0;
      }

      goto LABEL_16;
    }

LABEL_8:

    return 0;
  }

  if (!v5)
  {
    goto LABEL_8;
  }

  v8 = qword_1812E3860[*(a1 + 1)];
  v9 = qword_1812E3860[*(a2 + 1)];

  if (v8 == v9)
  {

    v11 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v10, v5);

    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 1;
  }

  swift_bridgeObjectRelease_n();
  result = 0;
  if ((v12 & 1) == 0 && ((v3 ^ v6) & 1) == 0)
  {
LABEL_16:
    if (v4)
    {
      if (v7)
      {

        v13 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v4, v7);

        if (v13)
        {
          return 1;
        }
      }
    }

    else if (!v7)
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t specialized static URL.FormatStyle.ComponentDisplayOption.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 2);
  v5 = *(a2 + 2);
  if (v4)
  {
    if (v5)
    {
      if (qword_1812E3860[*(a1 + 1)] == qword_1812E3860[*(a2 + 1)])
      {
        v6 = v4;
        swift_bridgeObjectRetain_n();

        v7 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v6, v5);
        swift_bridgeObjectRelease_n();

        if (v7)
        {
          return 1;
        }
      }

      return 0;
    }

LABEL_9:

    return 0;
  }

  if (v5)
  {
    goto LABEL_9;
  }

  return 1;
}

BOOL specialized static URL.FormatStyle.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 2);
  v4 = a1[24];
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v78 = a1[48];
  v72 = *(a1 + 7);
  v76 = *(a1 + 8);
  v74 = a1[72];
  v67 = *(a1 + 10);
  v65 = a1[96];
  v70 = *(a1 + 13);
  v63 = a1[112];
  v59 = *(a1 + 15);
  v7 = *(a2 + 2);
  v8 = a2[24];
  v10 = *(a2 + 4);
  v9 = *(a2 + 5);
  v77 = a2[48];
  v71 = *(a2 + 7);
  v75 = *(a2 + 8);
  v73 = a2[72];
  v66 = *(a2 + 10);
  v69 = *(a2 + 11);
  v64 = a2[96];
  v68 = *(a2 + 13);
  v62 = a2[112];
  v58 = *(a2 + 15);
  v61 = *(a2 + 16);
  v60 = a2[136];
  if (!v3)
  {
    if (v7)
    {
      goto LABEL_32;
    }

    v56 = *(a1 + 16);
    v57 = *(a1 + 11);
    v47 = *(a2 + 18);
    v48 = *(a1 + 18);
    v53 = a1[136];
    v49 = a2[160];
    v50 = a1[160];
    v54 = *(a2 + 19);
    v55 = *(a1 + 19);
    v45 = *(a2 + 21);
    v46 = *(a1 + 21);
    v41 = a2[184];
    v42 = a1[184];
    v51 = *(a2 + 22);
    v52 = *(a1 + 22);
    v39 = *(a2 + 24);
    v40 = *(a1 + 24);
    v43 = *(a2 + 25);
    v44 = *(a1 + 25);

    if (v4 != v8)
    {
      return 0;
    }

    goto LABEL_15;
  }

  if (!v7)
  {
    goto LABEL_32;
  }

  v56 = *(a1 + 16);
  v57 = *(a1 + 11);
  v47 = *(a2 + 18);
  v48 = *(a1 + 18);
  v53 = a1[136];
  v49 = a2[160];
  v50 = a1[160];
  v54 = *(a2 + 19);
  v55 = *(a1 + 19);
  v45 = *(a2 + 21);
  v46 = *(a1 + 21);
  v41 = a2[184];
  v42 = a1[184];
  v51 = *(a2 + 22);
  v52 = *(a1 + 22);
  v39 = *(a2 + 24);
  v40 = *(a1 + 24);
  v43 = *(a2 + 25);
  v44 = *(a1 + 25);
  v11 = qword_1812E3860[*(a1 + 1)];
  v12 = qword_1812E3860[*(a2 + 1)];

  swift_bridgeObjectRetain_n();
  if (v11 == v12)
  {
    swift_bridgeObjectRetain_n();
    v13 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v3, v7);

    v14 = v13 ^ 1;
  }

  else
  {

    v14 = 1;
  }

  swift_bridgeObjectRelease_n();
  result = 0;
  if ((v14 & 1) == 0 && ((v4 ^ v8) & 1) == 0)
  {
LABEL_15:
    if (v6)
    {
      if (!v9)
      {
        goto LABEL_32;
      }

      v15 = qword_1812E3860[v5];
      v16 = qword_1812E3860[v10];

      swift_bridgeObjectRetain_n();
      if (v15 == v16)
      {
        swift_bridgeObjectRetain_n();
        v17 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v6, v9);

        v18 = v17 ^ 1;
      }

      else
      {

        v18 = 1;
      }

      swift_bridgeObjectRelease_n();
      result = 0;
      if (v18 & 1) != 0 || ((v78 ^ v77))
      {
        return result;
      }

      goto LABEL_27;
    }

    if (v9)
    {
      goto LABEL_32;
    }

    if (v78 == v77)
    {
LABEL_27:
      if (v76)
      {
        if (!v75)
        {
          goto LABEL_32;
        }

        v19 = qword_1812E3860[v72];
        v20 = qword_1812E3860[v71];

        swift_bridgeObjectRetain_n();
        if (v19 == v20)
        {
          swift_bridgeObjectRetain_n();
          v21 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v76, v75);

          v22 = v21 ^ 1;
        }

        else
        {

          v22 = 1;
        }

        swift_bridgeObjectRelease_n();
        result = 0;
        if (v22 & 1) != 0 || ((v74 ^ v73))
        {
          return result;
        }
      }

      else
      {
        if (v75)
        {
          goto LABEL_32;
        }

        if (v74 != v73)
        {
          return 0;
        }
      }

      if (v57)
      {
        v23 = v70;
        v24 = v68;
        if (v69)
        {
          v25 = qword_1812E3860[v67];
          v26 = qword_1812E3860[v66];

          if (v25 == v26)
          {
            swift_bridgeObjectRetain_n();
            swift_bridgeObjectRetain_n();

            v27 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v57, v69);
            swift_bridgeObjectRelease_n();

            if (v27)
            {
              goto LABEL_51;
            }
          }

          else
          {
          }

LABEL_54:

          return 0;
        }
      }

      else
      {
        v23 = v70;
        v24 = v68;
        if (!v69)
        {

LABEL_51:
          if (v65 != v64)
          {
LABEL_52:

LABEL_53:

            goto LABEL_54;
          }

          if (v23)
          {
            if (!v24)
            {
              goto LABEL_52;
            }

            v28 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v23, v24);

            swift_bridgeObjectRelease_n();

            result = 0;
            if (v28 & 1) == 0 || ((v63 ^ v62))
            {
              return result;
            }
          }

          else
          {

            if (v24)
            {
              goto LABEL_53;
            }

            if (v63 != v62)
            {
              return 0;
            }
          }

          if (v56)
          {
            if (!v61)
            {
              goto LABEL_32;
            }

            v29 = qword_1812E3860[v59];
            v30 = qword_1812E3860[v58];

            swift_bridgeObjectRetain_n();
            if (v29 == v30)
            {
              swift_bridgeObjectRetain_n();
              v31 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v56, v61);

              v32 = v31 ^ 1;
            }

            else
            {

              v32 = 1;
            }

            swift_bridgeObjectRelease_n();
            result = 0;
            if (v32 & 1) != 0 || ((v53 ^ v60))
            {
              return result;
            }
          }

          else
          {
            if (v61)
            {
              goto LABEL_32;
            }

            if (v53 != v60)
            {
              return 0;
            }
          }

          if (v55)
          {
            if (!v54)
            {
              goto LABEL_32;
            }

            v33 = qword_1812E3860[v48];
            v34 = qword_1812E3860[v47];

            swift_bridgeObjectRetain_n();
            if (v33 == v34)
            {
              swift_bridgeObjectRetain_n();
              v35 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v55, v54);

              v36 = v35 ^ 1;
            }

            else
            {

              v36 = 1;
            }

            swift_bridgeObjectRelease_n();
            result = 0;
            if (v36 & 1) != 0 || ((v50 ^ v49))
            {
              return result;
            }
          }

          else
          {
            if (v54)
            {
              goto LABEL_32;
            }

            if (v50 != v49)
            {
              return 0;
            }
          }

          if (v52)
          {
            if (v51)
            {
              if (qword_1812E3860[v46] != qword_1812E3860[v45])
              {
                return 0;
              }

              swift_bridgeObjectRetain_n();
              swift_bridgeObjectRetain_n();
              v37 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v52, v51);
              swift_bridgeObjectRelease_n();
              swift_bridgeObjectRelease_n();
              if ((v37 & 1) == 0)
              {
                return 0;
              }

LABEL_96:
              if (v42 != v41)
              {
                return 0;
              }

              if (v44)
              {
                if (v43)
                {
                  if (qword_1812E3860[v40] != qword_1812E3860[v39])
                  {
                    return 0;
                  }

                  swift_bridgeObjectRetain_n();
                  swift_bridgeObjectRetain_n();
                  v38 = _sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v44, v43);
                  swift_bridgeObjectRelease_n();
                  swift_bridgeObjectRelease_n();
                  return (v38 & 1) != 0;
                }
              }

              else if (!v43)
              {

                return 1;
              }
            }
          }

          else if (!v51)
          {

            goto LABEL_96;
          }

LABEL_32:
          swift_bridgeObjectRetain_n();
          swift_bridgeObjectRelease_n();
LABEL_33:
          swift_bridgeObjectRelease_n();
          return 0;
        }
      }

      swift_bridgeObjectRetain_n();

      swift_bridgeObjectRelease_n();
      goto LABEL_33;
    }

    return 0;
  }

  return result;
}

uint64_t outlined destroy of URLComponents._URLComponents?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation13URLComponentsV01_B0VSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(uint64_t a1, unint64_t a2, int a3, int a4)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    return 2;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9[0] = a1;
    v9[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = v9;
    v7 = a4 & 1;
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = a4;
      v11 = a3;
      v5 = _StringObject.sharedUTF8.getter();
      LOBYTE(a4) = v10;
      LOBYTE(a3) = v11;
    }

    v7 = a4 & 1;
  }

  return _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v5, v6, a3, v7);
}

uint64_t outlined init with copy of String?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type URL.FormatStyle.CodingKeys and conformance URL.FormatStyle.CodingKeys()
{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.CodingKeys and conformance URL.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.CodingKeys and conformance URL.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.CodingKeys and conformance URL.FormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.CodingKeys and conformance URL.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.CodingKeys and conformance URL.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.CodingKeys and conformance URL.FormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.CodingKeys and conformance URL.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.CodingKeys and conformance URL.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.CodingKeys and conformance URL.FormatStyle.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.CodingKeys and conformance URL.FormatStyle.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.CodingKeys and conformance URL.FormatStyle.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.CodingKeys and conformance URL.FormatStyle.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayOption and conformance URL.FormatStyle.ComponentDisplayOption()
{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption and conformance URL.FormatStyle.ComponentDisplayOption;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption and conformance URL.FormatStyle.ComponentDisplayOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption and conformance URL.FormatStyle.ComponentDisplayOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption and conformance URL.FormatStyle.ComponentDisplayOption;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption and conformance URL.FormatStyle.ComponentDisplayOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption and conformance URL.FormatStyle.ComponentDisplayOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption and conformance URL.FormatStyle.ComponentDisplayOption;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption and conformance URL.FormatStyle.ComponentDisplayOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption and conformance URL.FormatStyle.ComponentDisplayOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL.FormatStyle.HostDisplayOption and conformance URL.FormatStyle.HostDisplayOption()
{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption and conformance URL.FormatStyle.HostDisplayOption;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption and conformance URL.FormatStyle.HostDisplayOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption and conformance URL.FormatStyle.HostDisplayOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption and conformance URL.FormatStyle.HostDisplayOption;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption and conformance URL.FormatStyle.HostDisplayOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption and conformance URL.FormatStyle.HostDisplayOption);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption and conformance URL.FormatStyle.HostDisplayOption;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption and conformance URL.FormatStyle.HostDisplayOption)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption and conformance URL.FormatStyle.HostDisplayOption);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayOption.CodingKeys and conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys()
{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.CodingKeys and conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.CodingKeys and conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.CodingKeys and conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.CodingKeys and conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.CodingKeys and conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.CodingKeys and conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.CodingKeys and conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.CodingKeys and conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.CodingKeys and conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.CodingKeys and conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.CodingKeys and conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.CodingKeys and conformance URL.FormatStyle.ComponentDisplayOption.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayOption.Option and conformance URL.FormatStyle.ComponentDisplayOption.Option()
{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.Option and conformance URL.FormatStyle.ComponentDisplayOption.Option;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.Option and conformance URL.FormatStyle.ComponentDisplayOption.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.Option and conformance URL.FormatStyle.ComponentDisplayOption.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.Option and conformance URL.FormatStyle.ComponentDisplayOption.Option;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.Option and conformance URL.FormatStyle.ComponentDisplayOption.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.Option and conformance URL.FormatStyle.ComponentDisplayOption.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.Option and conformance URL.FormatStyle.ComponentDisplayOption.Option;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.Option and conformance URL.FormatStyle.ComponentDisplayOption.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.Option and conformance URL.FormatStyle.ComponentDisplayOption.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.Option and conformance URL.FormatStyle.ComponentDisplayOption.Option;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.Option and conformance URL.FormatStyle.ComponentDisplayOption.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayOption.Option and conformance URL.FormatStyle.ComponentDisplayOption.Option);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayCondition and conformance URL.FormatStyle.ComponentDisplayCondition()
{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition and conformance URL.FormatStyle.ComponentDisplayCondition;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition and conformance URL.FormatStyle.ComponentDisplayCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition and conformance URL.FormatStyle.ComponentDisplayCondition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition and conformance URL.FormatStyle.ComponentDisplayCondition;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition and conformance URL.FormatStyle.ComponentDisplayCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition and conformance URL.FormatStyle.ComponentDisplayCondition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition and conformance URL.FormatStyle.ComponentDisplayCondition;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition and conformance URL.FormatStyle.ComponentDisplayCondition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition and conformance URL.FormatStyle.ComponentDisplayCondition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL.FormatStyle.HostDisplayOption.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.CodingKeys()
{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL.FormatStyle.HostDisplayOption.Option and conformance URL.FormatStyle.HostDisplayOption.Option()
{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option and conformance URL.FormatStyle.HostDisplayOption.Option;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option and conformance URL.FormatStyle.HostDisplayOption.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option and conformance URL.FormatStyle.HostDisplayOption.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option and conformance URL.FormatStyle.HostDisplayOption.Option;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option and conformance URL.FormatStyle.HostDisplayOption.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option and conformance URL.FormatStyle.HostDisplayOption.Option);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option and conformance URL.FormatStyle.HostDisplayOption.Option;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option and conformance URL.FormatStyle.HostDisplayOption.Option)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option and conformance URL.FormatStyle.HostDisplayOption.Option);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL.FormatStyle and conformance URL.FormatStyle()
{
  result = lazy protocol witness table cache variable for type URL.FormatStyle and conformance URL.FormatStyle;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle and conformance URL.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle and conformance URL.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle and conformance URL.FormatStyle;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle and conformance URL.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle and conformance URL.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle and conformance URL.FormatStyle;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle and conformance URL.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle and conformance URL.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle and conformance URL.FormatStyle;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle and conformance URL.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle and conformance URL.FormatStyle);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle and conformance URL.FormatStyle;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle and conformance URL.FormatStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle and conformance URL.FormatStyle);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URL.FormatStyle.Component and conformance URL.FormatStyle.Component()
{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.Component and conformance URL.FormatStyle.Component;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.Component and conformance URL.FormatStyle.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.Component and conformance URL.FormatStyle.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.Component and conformance URL.FormatStyle.Component;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.Component and conformance URL.FormatStyle.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.Component and conformance URL.FormatStyle.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.Component and conformance URL.FormatStyle.Component;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.Component and conformance URL.FormatStyle.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.Component and conformance URL.FormatStyle.Component);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.Component and conformance URL.FormatStyle.Component;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.Component and conformance URL.FormatStyle.Component)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.Component and conformance URL.FormatStyle.Component);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for URL.FormatStyle(uint64_t a1)
{
  result = lazy protocol witness table accessor for type URL.FormatStyle and conformance URL.FormatStyle();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for URL.FormatStyle(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type URL.FormatStyle and conformance URL.FormatStyle();
  a1[2] = lazy protocol witness table accessor for type URL.FormatStyle and conformance URL.FormatStyle();
  result = lazy protocol witness table accessor for type URL.FormatStyle and conformance URL.FormatStyle();
  a1[3] = result;
  return result;
}

__n128 __swift_memcpy208_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 192);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 192) = v10;
  *(a1 + 144) = result;
  *(a1 + 160) = v9;
  return result;
}

uint64_t getEnumTagSinglePayload for URL.FormatStyle(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 208))
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

uint64_t storeEnumTagSinglePayload for URL.FormatStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 200) = 0;
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
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 208) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for URL.FormatStyle.ComponentDisplayOption(uint64_t a1, unsigned int a2)
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

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for URL.FormatStyle.ComponentDisplayOption(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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

uint64_t specialized URL.FormatStyle.HostDisplayOption.Option.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v23 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation3URLV11FormatStyleV17HostDisplayOptionV0J0O10CodingKeys33_F8B4154C969F98989DA6333BFCB7F2FELLOGMd);
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type URL.FormatStyle.HostDisplayOption.Option.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys();
  v11 = v24;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = a1;
  v13 = v22;
  v12 = v23;
  v14 = KeyedDecodingContainer.allKeys.getter();
  v15 = (2 * *(v14 + 16)) | 1;
  v25 = v14;
  v26 = v14 + 32;
  v27 = 0;
  v28 = v15;
  v16 = specialized Collection<>.popFirst()();
  if (v16 == 2 || v27 != v28 >> 1)
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v19 = &type metadata for URL.FormatStyle.HostDisplayOption.Option;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
    swift_willThrow();
    (*(v13 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v24;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = v16;
  if (v16)
  {
    v30 = 1;
    lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v12 + 8))(v4, v2);
  }

  else
  {
    v30 = 0;
    lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v12 + 8))(v7, v2);
  }

  (*(v13 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v24);
  return v29 & 1;
}

unint64_t lazy protocol witness table accessor for type URL.FormatStyle.ComponentDisplayCondition.CodingKeys and conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys()
{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition.CodingKeys and conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition.CodingKeys and conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition.CodingKeys and conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition.CodingKeys and conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition.CodingKeys and conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition.CodingKeys and conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition.CodingKeys and conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition.CodingKeys and conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition.CodingKeys and conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition.CodingKeys and conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition.CodingKeys and conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.ComponentDisplayCondition.CodingKeys and conformance URL.FormatStyle.ComponentDisplayCondition.CodingKeys);
  }

  return result;
}

uint64_t specialized URL.FormatStyle.HostDisplayOption.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6974706FLL && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F697469646E6F63 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000181487F00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000181487F20 == a2)
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

unint64_t lazy protocol witness table accessor for type URL.FormatStyle.HostDisplayOption.Option.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys()
{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys;
  if (!lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URL.FormatStyle.HostDisplayOption.Option.CodingKeys and conformance URL.FormatStyle.HostDisplayOption.Option.CodingKeys);
  }

  return result;
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

uint64_t URLResourceValues.ubiquitousItemSupportedSyncControls.getter()
{
  v1 = *v0;
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E695DCE8]), (v3 & 1) != 0))
  {
    outlined init with copy of Any(*(v1 + 56) + 32 * v2, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd);
  type metadata accessor for NSFileManagerSupportedSyncControls(0);
  v4 = swift_dynamicCast();
  v5 = v8;
  if (!v4)
  {
    return 0;
  }

  return v5;
}

uint64_t URLResourceValues.ubiquitousItemIsSyncPaused.getter()
{
  v1 = *v0;
  if (!*(v1 + 16))
  {
    return 2;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(*MEMORY[0x1E695DCD0]);
  if ((v3 & 1) == 0)
  {
    return 2;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v2, v7);
  type metadata accessor for NSNumber();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 2;
  }

  v4 = [v6 BOOLValue];

  return v4;
}

double NSOperationQueue.SchedulerTimeType.date.getter@<D0>(void *a1@<X8>)
{
  result = *v1;
  *a1 = *v1;
  return result;
}

double NSOperationQueue.SchedulerTimeType.date.setter(double *a1)
{
  result = *a1;
  *v1 = *a1;
  return result;
}

double NSOperationQueue.SchedulerTimeType.init(_:)@<D0>(double *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

double NSOperationQueue.SchedulerTimeType.distance(to:)@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 - *v2;
  *a2 = result;
  return result;
}

double NSOperationQueue.SchedulerTimeType.advanced(by:)@<D0>(double *a1@<X0>, double *a2@<X8>)
{
  result = *a1 + *v2;
  *a2 = result;
  return result;
}

uint64_t NSOperationQueue.SchedulerTimeType.Stride.init<A>(exactly:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, a2, v7);
  v10 = Double.init<A>(exactly:)(v9, a2);
  v12 = v11;
  result = (*(v6 + 8))(a1, a2);
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v10;
  }

  *a3 = v14;
  *(a3 + 8) = v12 & 1;
  return result;
}

double static NSOperationQueue.SchedulerTimeType.Stride.* infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 * *a2;
  *a3 = result;
  return result;
}

double static NSOperationQueue.SchedulerTimeType.Stride.+ infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 + *a2;
  *a3 = result;
  return result;
}

double static NSOperationQueue.SchedulerTimeType.Stride.- infix(_:_:)@<D0>(double *a1@<X0>, double *a2@<X1>, double *a3@<X8>)
{
  result = *a1 - *a2;
  *a3 = result;
  return result;
}

double static NSOperationQueue.SchedulerTimeType.Stride.*= infix(_:_:)(double *a1, double *a2)
{
  result = *a2 * *a1;
  *a1 = result;
  return result;
}

double static NSOperationQueue.SchedulerTimeType.Stride.+= infix(_:_:)(double *a1, double *a2)
{
  result = *a2 + *a1;
  *a1 = result;
  return result;
}

double static NSOperationQueue.SchedulerTimeType.Stride.-= infix(_:_:)(double *a1, double *a2)
{
  result = *a1 - *a2;
  *a1 = result;
  return result;
}

double static NSOperationQueue.SchedulerTimeType.Stride.seconds(_:)@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = a1;
  *a2 = a1;
  return result;
}

double static NSOperationQueue.SchedulerTimeType.Stride.milliseconds(_:)@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = a1 / 1000.0;
  *a2 = result;
  return result;
}

double static NSOperationQueue.SchedulerTimeType.Stride.microseconds(_:)@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = a1 / 1000000.0;
  *a2 = result;
  return result;
}

double static NSOperationQueue.SchedulerTimeType.Stride.nanoseconds(_:)@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = a1 / 1000000000.0;
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSOperationQueue.SchedulerTimeType.Stride.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSOperationQueue.SchedulerTimeType.Stride.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NSOperationQueue.SchedulerTimeType.Stride.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo16NSOperationQueueC10FoundationE17SchedulerTimeTypeV6StrideV10CodingKeys33_0ECEE0A75E2DD5EDFED9A6FEB26D5D32LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSOperationQueue.SchedulerTimeType.Stride.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t lazy protocol witness table accessor for type NSOperationQueue.SchedulerTimeType.Stride.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys);
  }

  return result;
}

uint64_t NSOperationQueue.SchedulerTimeType.Stride.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySo16NSOperationQueueC10FoundationE17SchedulerTimeTypeV6StrideV10CodingKeys33_0ECEE0A75E2DD5EDFED9A6FEB26D5D32LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSOperationQueue.SchedulerTimeType.Stride.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    v10 = v9;
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance NSOperationQueue.SchedulerTimeType.Stride(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo16NSOperationQueueC10FoundationE17SchedulerTimeTypeV6StrideV10CodingKeys33_0ECEE0A75E2DD5EDFED9A6FEB26D5D32LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSOperationQueue.SchedulerTimeType.Stride.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.Stride.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NSOperationQueue.SchedulerTimeType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSOperationQueue.SchedulerTimeType.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NSOperationQueue.SchedulerTimeType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSOperationQueue.SchedulerTimeType.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NSOperationQueue.SchedulerTimeType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo16NSOperationQueueC10FoundationE17SchedulerTimeTypeV10CodingKeys33_0ECEE0A75E2DD5EDFED9A6FEB26D5D32LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSOperationQueue.SchedulerTimeType.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = v7;
  lazy protocol witness table accessor for type Date and conformance Date();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

unint64_t lazy protocol witness table accessor for type NSOperationQueue.SchedulerTimeType.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.CodingKeys;
  if (!lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.CodingKeys);
  }

  return result;
}

uint64_t NSOperationQueue.SchedulerTimeType.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x1865CD090](*&v1);
}

Swift::Int NSOperationQueue.SchedulerTimeType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  MEMORY[0x1865CD090](*&v2);
  return Hasher._finalize()();
}

uint64_t NSOperationQueue.SchedulerTimeType.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySo16NSOperationQueueC10FoundationE17SchedulerTimeTypeV10CodingKeys33_0ECEE0A75E2DD5EDFED9A6FEB26D5D32LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSOperationQueue.SchedulerTimeType.CodingKeys and conformance NSOperationQueue.SchedulerTimeType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Date and conformance Date();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t NSOperationQueue.DelayReadyOperation.CancellationContext.__deallocating_deinit()
{
  MEMORY[0x1865D2690](*(v0 + 16), -1, -1);
  MEMORY[0x1865D27A0](v0 + 24);

  return swift_deallocClassInstance();
}

void NSOperationQueue.DelayReadyOperation.CancellationContext.cancel()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    swift_unknownObjectWeakAssign();
    os_unfair_lock_unlock(v1);
    v4 = &v3[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_action];
    v5 = *&v3[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_action];
    v6 = *&v3[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_action + 8];
    *v4 = 0;
    *(v4 + 1) = 0;
    outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
    v7 = *&v3[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_queue];
    *&v3[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_queue] = 0;

    *&v3[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_context] = 0;

    v8.receiver = v3;
    v8.super_class = type metadata accessor for NSOperationQueue.DelayReadyOperation();
    objc_msgSendSuper2(&v8, sel_cancel);
  }

  else
  {

    os_unfair_lock_unlock(v1);
  }
}

uint64_t one-time initialization function for readySchedulingQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v3);
  v4 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.unspecified.getter();
  v8 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type NSOperationQueue.DelayReadyOperation.CancellationContext and conformance NSOperationQueue.DelayReadyOperation.CancellationContext(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static NSOperationQueue.DelayReadyOperation.readySchedulingQueue = result;
  return result;
}

uint64_t NSOperationQueue.DelayReadyOperation.becomeReady(after:from:)()
{
  v0 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v15 = *(v3 - 8);
  v16 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchTime();
  v13 = *(v6 - 8);
  v14 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  + infix(_:_:)();
  if (one-time initialization token for readySchedulingQueue != -1)
  {
    swift_once();
  }

  v12[1] = static NSOperationQueue.DelayReadyOperation.readySchedulingQueue;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = partial apply for closure #1 in NSOperationQueue.DelayReadyOperation.becomeReady(after:from:);
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_48;
  v10 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v18 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type NSOperationQueue.DelayReadyOperation.CancellationContext and conformance NSOperationQueue.DelayReadyOperation.CancellationContext(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1865CBA20](v8, v5, v2, v10);
  _Block_release(v10);
  (*(v17 + 8))(v2, v0);
  (*(v15 + 8))(v5, v16);
  (*(v13 + 8))(v8, v14);
}

uint64_t closure #1 in NSOperationQueue.DelayReadyOperation.becomeReady(after:from:)()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    swift_getKeyPath();
    _bridgeKeyPathToString(_:)();
    v2 = String._bridgeToObjectiveCImpl()();

    [v1 willChangeValueForKey_];
    swift_unknownObjectRelease();

    *(v1 + OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_readyFromAfter) = 1;
    swift_getKeyPath();
    _bridgeKeyPathToString(_:)();
    v3 = String._bridgeToObjectiveCImpl()();

    [v1 didChangeValueForKey_];

    swift_unknownObjectRelease();
  }

  return result;
}

void NSOperationQueue.DelayReadyOperation.main()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchTime();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = (v0 + OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_action);
  v9 = *(v0 + OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_action);
  if (v9)
  {
    v34 = v5;
    v10 = v8[1];
    *v8 = 0;
    v8[1] = 0;
    v11 = static DispatchTime.now()();
    v9(v11);
    v12 = OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_queue;
    v13 = *(v0 + OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_queue);
    if (v13)
    {
      v33 = ObjectType;
      v14 = OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_context;
      v15 = *(v1 + OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_context);
      if (v15)
      {
        *(v1 + OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_queue) = 0;
        *(v1 + v14) = 0;
        v16 = *(v15 + 16);
        os_unfair_lock_lock(v16);
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {

          v18 = *(v1 + OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_interval);
          v19 = v33;
          v20 = objc_allocWithZone(v33);
          v32 = v16;
          v21 = v20;
          v22 = &v20[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_action];
          v23 = OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_queue;
          v24 = OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_context;
          *&v20[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_context] = 0;
          *v22 = v9;
          v22[1] = v10;
          v20[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_readyFromAfter] = 0;
          *&v20[v23] = v13;
          *&v20[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_interval] = v18;
          *&v20[v24] = v15;
          outlined copy of (@escaping @callee_guaranteed () -> ())?(v9, v10);

          v25 = v13;
          outlined copy of (@escaping @callee_guaranteed () -> ())?(v9, v10);

          v35.receiver = v21;
          v35.super_class = v19;
          v26 = objc_msgSendSuper2(&v35, sel_init);

          outlined consume of (@escaping @callee_guaranteed () -> ())?(v9, v10);
          swift_unknownObjectWeakAssign();
          [v25 addOperation_];
          os_unfair_lock_unlock(v32);
          v27 = v26;
          NSOperationQueue.DelayReadyOperation.becomeReady(after:from:)();

          outlined consume of (@escaping @callee_guaranteed () -> ())?(v9, v10);
          (*(v4 + 8))(v7, v34);
        }

        else
        {
          os_unfair_lock_unlock(v16);
          (*(v4 + 8))(v7, v34);
          outlined consume of (@escaping @callee_guaranteed () -> ())?(v9, v10);
        }

        return;
      }

      v28 = *(v4 + 8);
      v29 = v13;
      v28(v7, v34);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v9, v10);
    }

    else
    {
      (*(v4 + 8))(v7, v34);
      outlined consume of (@escaping @callee_guaranteed () -> ())?(v9, v10);
    }

    v30 = *(v1 + v12);
    *(v1 + v12) = 0;

    *(v1 + OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_context) = 0;
  }
}

id NSOperationQueue.DelayReadyOperation.isReady.getter()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v2, sel_isReady);
  if (result)
  {
    return v0[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_readyFromAfter];
  }

  return result;
}

id key path getter for NSOperationQueue.DelayReadyOperation.isReady : NSOperationQueue.DelayReadyOperation@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v6.receiver = *a1;
  v6.super_class = type metadata accessor for NSOperationQueue.DelayReadyOperation();
  result = objc_msgSendSuper2(&v6, sel_isReady);
  if (result)
  {
    v5 = v3[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_readyFromAfter];
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

id protocol witness for Cancellable.cancel() in conformance NSOperationQueue.DelayReadyOperation(objc_class *a1)
{
  v3 = *v1;
  v4 = &v3[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_action];
  v5 = *&v3[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_action];
  v6 = *&v3[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_action + 8];
  *v4 = 0;
  *(v4 + 1) = 0;
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v5, v6);
  v7 = *&v3[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_queue];
  *&v3[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_queue] = 0;

  *&v3[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_context] = 0;

  v9.receiver = v3;
  v9.super_class = a1;
  return [(objc_class *)&v9 cancel];
}

void NSOperationQueue.schedule(options:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v10[4] = partial apply for closure #1 in NSRunLoop.schedule(options:_:);
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v10[3] = &block_descriptor_13;
  v7 = _Block_copy(v10);
  v8 = objc_opt_self();

  v9 = [v8 blockOperationWithBlock_];
  _Block_release(v7);

  [v3 addOperation_];
}

void NSOperationQueue.schedule(after:tolerance:options:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  objc_allocWithZone(type metadata accessor for NSOperationQueue.DelayReadyOperation());

  v9 = specialized NSOperationQueue.DelayReadyOperation.init(_:after:)(a4, a5);

  [v6 addOperation_];
}

void NSOperationQueue.schedule(after:interval:tolerance:options:_:)(uint64_t *a1@<X1>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t *a4@<X8>)
{
  v28 = a4;
  v31 = *MEMORY[0x1E69E9840];
  v8 = type metadata accessor for DispatchTime();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  v27[1] = type metadata accessor for NSOperationQueue.DelayReadyOperation.CancellationContext();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *(v13 + 16) = v14;
  swift_unknownObjectWeakInit();
  *v14 = 0;
  ready = type metadata accessor for NSOperationQueue.DelayReadyOperation();
  v16 = objc_allocWithZone(ready);
  v17 = &v16[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_action];
  v18 = OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_queue;
  v19 = OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_context;
  *&v16[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_context] = 0;
  *v17 = a2;
  v17[1] = a3;
  v16[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_readyFromAfter] = 0;
  *&v16[v18] = v4;
  *&v16[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_interval] = v12;
  *&v16[v19] = v13;
  swift_retain_n();

  v20 = v4;

  v30.receiver = v16;
  v30.super_class = ready;
  v21 = objc_msgSendSuper2(&v30, sel_init);
  swift_unknownObjectWeakAssign();
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  static DispatchTime.now()();
  NSOperationQueue.DelayReadyOperation.becomeReady(after:from:)();

  (*(v9 + 8))(v11, v8);
  [v20 addOperation_];
  __tp.tv_sec = v13;
  v22 = type metadata accessor for AnyCancellable();
  swift_allocObject();
  lazy protocol witness table accessor for type NSOperationQueue.DelayReadyOperation.CancellationContext and conformance NSOperationQueue.DelayReadyOperation.CancellationContext(&lazy protocol witness table cache variable for type NSOperationQueue.DelayReadyOperation.CancellationContext and conformance NSOperationQueue.DelayReadyOperation.CancellationContext, type metadata accessor for NSOperationQueue.DelayReadyOperation.CancellationContext);

  v23 = AnyCancellable.init<A>(_:)();
  v24 = MEMORY[0x1E695BF08];
  v25 = v28;
  v28[3] = v22;
  v25[4] = v24;
  v26 = v25;

  *v26 = v23;
}

double NSOperationQueue.now.getter@<D0>(double *a1@<X8>)
{
  v4 = *MEMORY[0x1E69E9840];
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  result = __tp.tv_sec + -978307200.0 + __tp.tv_nsec * 0.000000001;
  *a1 = result;
  return result;
}

void protocol witness for Scheduler.schedule(options:_:) in conformance NSOperationQueue(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = swift_allocObject();
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v11[4] = closure #1 in NSRunLoop.schedule(options:_:)partial apply;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v11[3] = &block_descriptor_42;
  v8 = _Block_copy(v11);
  v9 = objc_opt_self();

  v10 = [v9 blockOperationWithBlock_];
  _Block_release(v8);

  [v6 addOperation_];
}

void protocol witness for Scheduler.schedule(after:tolerance:options:_:) in conformance NSOperationQueue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *v5;
  v9 = objc_allocWithZone(type metadata accessor for NSOperationQueue.DelayReadyOperation());

  v10 = specialized NSOperationQueue.DelayReadyOperation.init(_:after:)(a4, a5);

  [v8 addOperation_];
}

id specialized NSOperationQueue.DelayReadyOperation.init(_:after:)(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for DispatchTime();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = &v2[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_action];
  *&v2[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_queue] = 0;
  *&v2[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_context] = 0;
  *v10 = a1;
  v10[1] = a2;
  v2[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_readyFromAfter] = 0;
  *&v2[OBJC_IVAR____TtCE10FoundationCSo16NSOperationQueueP33_0ECEE0A75E2DD5EDFED9A6FEB26D5D3219DelayReadyOperation_interval] = 0;
  v16.receiver = v2;
  v16.super_class = ObjectType;

  v11 = objc_msgSendSuper2(&v16, sel_init);
  __tp.tv_sec = 0;
  __tp.tv_nsec = 0;
  v12 = v11;
  clock_gettime(_CLOCK_REALTIME, &__tp);
  static DispatchTime.now()();
  NSOperationQueue.DelayReadyOperation.becomeReady(after:from:)();

  (*(v7 + 8))(v9, v6);
  return v12;
}

unint64_t lazy protocol witness table accessor for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride()
{
  result = lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride;
  if (!lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride;
  if (!lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride;
  if (!lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride;
  if (!lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride;
  if (!lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride;
  if (!lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride;
  if (!lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType.Stride and conformance NSOperationQueue.SchedulerTimeType.Stride);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSOperationQueue.SchedulerTimeType and conformance NSOperationQueue.SchedulerTimeType()
{
  result = lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType and conformance NSOperationQueue.SchedulerTimeType;
  if (!lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType and conformance NSOperationQueue.SchedulerTimeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType and conformance NSOperationQueue.SchedulerTimeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType and conformance NSOperationQueue.SchedulerTimeType;
  if (!lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType and conformance NSOperationQueue.SchedulerTimeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType and conformance NSOperationQueue.SchedulerTimeType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType and conformance NSOperationQueue.SchedulerTimeType;
  if (!lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType and conformance NSOperationQueue.SchedulerTimeType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSOperationQueue.SchedulerTimeType and conformance NSOperationQueue.SchedulerTimeType);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type NSOperationQueue.DelayReadyOperation.CancellationContext and conformance NSOperationQueue.DelayReadyOperation.CancellationContext(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](unint64_t *a1, uint64_t *a2)
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

uint64_t Measurement<>.FormatStyle.shouldConvertToBestUnit.getter(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));
  if (v2 == 14)
  {
    v3 = 1;
  }

  else
  {
    v4 = Usage.rawValue.getter(v2);
    v6 = v5;
    if (v4 == Usage.rawValue.getter(13) && v6 == v7)
    {

      v3 = 0;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v3 = v9 ^ 1;
    }
  }

  return v3 & 1;
}

id Measurement<>.FormatStyle.skeletonForBaseUnit(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v37 - v10;
  v12 = *a1;
  v13 = a1[1];
  swift_getObjectType();
  v14 = [swift_getObjCClassFromMetadata() baseUnit];
  v40 = v12;
  v41 = v13;
  v15 = *(a2 + 16);
  type metadata accessor for Measurement();
  Measurement<>.converted(to:)(v14, &v42);

  v16 = v43;
  v17 = v42;
  v18 = NSDimension.skeleton.getter();
  v20 = v19;

  if (!v20)
  {

    return 0;
  }

  v39 = v16;
  v40 = v18;
  v22 = *(a2 + 32);
  v21 = *(a2 + 36);
  v37[1] = v15;
  v38 = v22;
  v23 = v3[v21];
  v24 = *v3;
  v42 = 0;
  v43 = 0xE000000000000000;
  v41 = v20;

  MEMORY[0x1865CB0E0](32, 0xE100000000000000);
  v25 = "unit-width-iso-code";
  if (v24 == 1)
  {
    v26 = 0xD000000000000010;
  }

  else
  {
    v26 = 0xD000000000000011;
  }

  if (v24 != 1)
  {
    v25 = "unit-width-short";
  }

  if (v24)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0xD000000000000014;
  }

  if (v24)
  {
    v28 = v25;
  }

  else
  {
    v28 = "Invalid Precision";
  }

  MEMORY[0x1865CB0E0](v27, v28 | 0x8000000000000000);

  MEMORY[0x1865CB0E0](v40, v41);

  if (v23 != 14)
  {
    if (Usage.rawValue.getter(v23) != 0x6469766F72507361 || v29 != 0xEA00000000006465)
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v31 & 1) != 0 || ([swift_getObjCClassFromMetadata() supportsRegionalPreference] & 1) == 0)
      {
        goto LABEL_21;
      }

      v32 = Usage.rawValue.getter(v23);
      v40 = 0x2F656761737520;
      v41 = 0xE700000000000000;
      MEMORY[0x1865CB0E0](v32);

      MEMORY[0x1865CB0E0](v40, v41);
    }
  }

LABEL_21:
  outlined init with copy of FloatingPointRoundingRule?(&v3[v38], v11, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  if ((*(*(v33 - 8) + 48))(v11, 1, v33) == 1)
  {

    outlined destroy of TermOfAddress?(v11, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  }

  else
  {
    outlined init with copy of NumberFormatStyleConfiguration.Collection(&v11[*(v33 + 36)], v8);
    outlined destroy of TermOfAddress?(v11, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    v34 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v36 = v35;
    outlined destroy of NumberFormatStyleConfiguration.Collection(v8);
    if (String.count.getter() > 0)
    {
      MEMORY[0x1865CB0E0](32, 0xE100000000000000);
    }

    MEMORY[0x1865CB0E0](v34, v36);
  }

  return v42;
}

uint64_t Measurement<>.FormatStyle.numberSkeleton.getter(uint64_t a1)
{
  v3 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v15 - v7;
  v9 = *(a1 + 32);
  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  outlined init with copy of FloatingPointRoundingRule?(v1 + v9, v8, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  if ((*(*(v10 - 8) + 48))(v8, 1, v10) == 1)
  {
    outlined destroy of TermOfAddress?(v8, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
    return 0;
  }

  else
  {
    outlined init with copy of NumberFormatStyleConfiguration.Collection(&v8[*(v10 + 36)], v5);
    outlined destroy of TermOfAddress?(v8, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    v12 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v14 = v13;
    outlined destroy of NumberFormatStyleConfiguration.Collection(v5);
    if (String.count.getter() > 0)
    {
      MEMORY[0x1865CB0E0](32, 0xE100000000000000);
    }

    MEMORY[0x1865CB0E0](v12, v14);

    return v15[0];
  }
}

unint64_t Measurement<>.FormatStyle.UnitWidth.Option.init(rawValue:)(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Measurement<A><>.FormatStyle.UnitWidth.Option(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Measurement<A><>.FormatStyle.UnitWidth.Option@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = Measurement<>.FormatStyle.UnitWidth.Option.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Measurement<A><>.FormatStyle.UnitWidth.Option@<X0>(uint64_t *a1@<X8>)
{
  result = Measurement<>.FormatStyle.UnitWidth.Option.rawValue.getter(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance Measurement<A><>.FormatStyle.UnitWidth.Option(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Measurement<A><>.FormatStyle.UnitWidth.Option(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance Measurement<A><>.FormatStyle.UnitWidth.Option(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t Measurement<>.FormatStyle.UnitWidth.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E6F6974706FLL && a2 == 0xE600000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Measurement<A><>.FormatStyle.UnitWidth.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Measurement<>.FormatStyle.UnitWidth.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Measurement<A><>.FormatStyle.UnitWidth.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Measurement<A><>.FormatStyle.UnitWidth.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Measurement<>.FormatStyle.UnitWidth.encode(to:)(void *a1, uint64_t a2)
{
  v9[1] = *(a2 + 16);
  type metadata accessor for Measurement<>.FormatStyle.UnitWidth.CodingKeys();
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedEncodingContainer();
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v9 - v5;
  v7 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = v7;
  type metadata accessor for Measurement<>.FormatStyle.UnitWidth.Option();
  swift_getWitnessTable();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v10 + 8))(v6, v4);
}

Swift::Int Measurement<>.FormatStyle.UnitWidth.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t Measurement<>.FormatStyle.UnitWidth.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v11 = a2;
  type metadata accessor for Measurement<>.FormatStyle.UnitWidth.CodingKeys();
  swift_getWitnessTable();
  v4 = type metadata accessor for KeyedDecodingContainer();
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v8 = v10;
    v7 = v11;
    type metadata accessor for Measurement<>.FormatStyle.UnitWidth.Option();
    swift_getWitnessTable();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v8 + 8))(v6, v4);
    *v7 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Measurement<A><>.FormatStyle.UnitWidth()
{
  Hasher.init(_seed:)();
  Measurement<>.FormatStyle.UnitWidth.hash(into:)();
  return Hasher._finalize()();
}

__n128 Measurement<>.FormatStyle.locale.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

id Measurement<>.FormatStyle.formatAsDescription(_:)(void **a1, uint64_t a2)
{
  v87 = *MEMORY[0x1E69E9840];
  v82 = *a1;
  v3 = Measurement<>.FormatStyle.numberSkeleton.getter(a2);
  v5 = v4;
  v6 = *(v2 + 16);
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 472);
  swift_unknownObjectRetain();

  v9 = v8(ObjectType, v6);
  v11 = v10;
  if (one-time initialization token for cache != -1)
  {
    v56 = v9;
    swift_once();
    v9 = v56;
  }

  v12 = *algn_1EA7B1588;
  v78 = static ICUMeasurementNumberFormatter.cache;
  v83 = v3;
  v84 = v5;
  v81 = v9;
  MEMORY[0x1EEE9AC00](v9);
  os_unfair_lock_lock((v12 + 24));
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v12 + 16, &v85);
  v80 = v12;
  os_unfair_lock_unlock((v12 + 24));
  v13 = v85;
  if (v85 == 1)
  {
    v8(ObjectType, v6);
    LOBYTE(v6) = v14;
    type metadata accessor for ICUMeasurementNumberFormatter();
    v15 = swift_allocObject();
    v15[3] = v3;
    v15[4] = v5;

    v16 = MEMORY[0x1865CB200](v3, v5);
    v17 = v3;
    if (v16)
    {
      v18 = v16;
      v19 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v16, 0);

      v12 = specialized Sequence._copySequenceContents(initializing:)(&v85, (v19 + 4), v18, v3, v5);

      v20 = v80;
      if (v12 == v18)
      {
        goto LABEL_8;
      }

      __break(1u);
    }

    v19 = MEMORY[0x1E69E7CC0];
    v20 = v80;
LABEL_8:
    LODWORD(v85) = 0;
    v21 = v19[2];
    if (v21 >> 31)
    {
      __break(1u);
      goto LABEL_58;
    }

    String.utf8CString.getter();

    v22 = unumf_openForSkeletonAndLocale();

    if (v22)
    {
      if (v85 < 1)
      {
        v15[2] = v22;
LABEL_14:
        os_unfair_lock_lock((v20 + 24));
        v6 = *(v20 + 16);
        if (v78 < *(v6 + 16))
        {
          LOBYTE(v6) = MEMORY[0x1E69E7CC8];
          *(v20 + 16) = MEMORY[0x1E69E7CC8];
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v85 = *(v20 + 16);
        v12 = v85;
        *(v20 + 16) = 0x8000000000000000;
        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v5, v81, v11);
        v25 = *(v12 + 16);
        v26 = (v24 & 1) == 0;
        v27 = v25 + v26;
        if (!__OFADD__(v25, v26))
        {
          LOBYTE(v6) = v24;
          if (*(v12 + 24) < v27)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
            v28 = v85;
            v29 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v5, v81, v11);
            if ((v6 & 1) != (v30 & 1))
            {
              goto LABEL_77;
            }

            v21 = v29;
            goto LABEL_23;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v28 = v12;
LABEL_23:
            if (v6)
            {

              v31 = v15;
              *(*(v28 + 56) + 8 * v21) = v15;
            }

            else
            {
              v31 = v15;
              specialized _NativeDictionary._insert(at:key:value:)(v21, v17, v5, v81, v11, v15, v28);
            }

            *(v20 + 16) = v28;

            os_unfair_lock_unlock((v20 + 24));

            outlined consume of ICUMeasurementNumberFormatter??(1);
            v13 = v31;
            goto LABEL_27;
          }

LABEL_59:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation29ICUMeasurementNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
          v57 = static _DictionaryStorage.copy(original:)();
          v28 = v57;
          if (*(v12 + 16))
          {
            v75 = v15;
            v58 = (v57 + 64);
            v76 = (v12 + 64);
            v59 = ((1 << *(v28 + 32)) + 63) >> 6;
            if (v28 != v12 || v58 >= &v76[8 * v59])
            {
              memmove(v58, v76, 8 * v59);
            }

            v60 = 0;
            *(v28 + 16) = *(v12 + 16);
            v61 = 1 << *(v12 + 32);
            v62 = -1;
            if (v61 < 64)
            {
              v62 = ~(-1 << v61);
            }

            v63 = v62 & *(v12 + 64);
            v64 = (v61 + 63) >> 6;
            v77 = v64;
            if (v63)
            {
              do
              {
                v65 = __clz(__rbit64(v63));
                v79 = (v63 - 1) & v63;
LABEL_72:
                v68 = v65 | (v60 << 6);
                v69 = (*(v12 + 48) + 32 * v68);
                v70 = v69[1];
                v71 = v69[2];
                v72 = v69[3];
                v73 = *(*(v12 + 56) + 8 * v68);
                v74 = (*(v28 + 48) + 32 * v68);
                *v74 = *v69;
                v74[1] = v70;
                v74[2] = v71;
                v74[3] = v72;
                *(*(v28 + 56) + 8 * v68) = v73;

                v64 = v77;
                v63 = v79;
              }

              while (v79);
            }

            v66 = v60;
            v15 = v75;
            while (1)
            {
              v60 = v66 + 1;
              if (__OFADD__(v66, 1))
              {
                __break(1u);
              }

              if (v60 >= v64)
              {
                break;
              }

              v67 = *&v76[8 * v60];
              ++v66;
              if (v67)
              {
                v65 = __clz(__rbit64(v67));
                v79 = (v67 - 1) & v67;
                goto LABEL_72;
              }
            }
          }

          v20 = v80;
          goto LABEL_23;
        }

LABEL_58:
        __break(1u);
        goto LABEL_59;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v15 = 0;
    goto LABEL_14;
  }

LABEL_27:

  swift_unknownObjectRelease();
  if (v13)
  {
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_initStackObject();
    ICUNumberFormatterBase.FormatResult.init(formatter:value:)();

    v33 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
    v35 = v47;

    if (v35)
    {
      v32 = v82;
      goto LABEL_31;
    }
  }

  else
  {
  }

  v32 = v82;
  v33 = Double.description.getter();
  v35 = v34;

LABEL_31:
  v85 = v33;
  v86 = v35;

  MEMORY[0x1865CB0E0](32, 0xE100000000000000);

  v37 = v85;
  v36 = v86;
  v38 = [v32 symbol];
  if (!v38)
  {
    goto LABEL_45;
  }

  v39 = v38;
  isTaggedPointer = _objc_isTaggedPointer(v38);
  v41 = v39;
  v42 = v41;
  if (!isTaggedPointer)
  {
LABEL_37:
    v85 = 0;
    if (__CFStringIsCF())
    {
      if (v85)
      {
LABEL_54:
        v44 = String.init(_cocoaString:)();
        v46 = v54;
        goto LABEL_55;
      }
    }

    else
    {
      v48 = v42;
      v49 = String.init(_nativeStorage:)();
      if (v50)
      {
        v44 = v49;
        v46 = v50;

        goto LABEL_56;
      }

      v85 = [v48 length];
      if (v85)
      {
        goto LABEL_54;
      }
    }

LABEL_45:
    v44 = 0;
    v46 = 0xE000000000000000;
    goto LABEL_56;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v41);
  if (!TaggedPointerTag)
  {
    goto LABEL_49;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v44 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v46 = v45;

LABEL_56:
      v85 = v37;
      v86 = v36;

      MEMORY[0x1865CB0E0](v44, v46);

      return v85;
    }

    goto LABEL_37;
  }

  v51 = [v42 UTF8String];
  if (v51)
  {
    v52 = String.init(utf8String:)(v51);
    if (v53)
    {
      goto LABEL_50;
    }

    __break(1u);
LABEL_49:
    _CFIndirectTaggedPointerStringGetContents();
    v52 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v53)
    {
      [v42 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v44 = v83;
      v46 = v84;
      goto LABEL_55;
    }

LABEL_50:
    v44 = v52;
    v46 = v53;

LABEL_55:
    goto LABEL_56;
  }

  __break(1u);
LABEL_77:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t static Measurement<>.FormatStyle.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v40 - v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v40 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSg_AEtMd);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v40 - v12;
  if (*a1 != *a2)
  {
    goto LABEL_13;
  }

  v14 = *(a1 + 8);
  v42 = *(a2 + 8);
  v43 = v42;
  v44 = v14;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v15 = specialized static Locale.== infix(_:_:)(&v44, &v43);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v15 & 1) == 0)
  {
    goto LABEL_13;
  }

  v16 = type metadata accessor for Measurement<>.FormatStyle();
  v17 = a1;
  v18 = a2;
  v41 = v16;
  *&v42 = v17;
  v19 = *(v16 + 32);
  v20 = *(v11 + 48);
  outlined init with copy of FloatingPointRoundingRule?(&v17[v19], v13, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  v21 = &v18[v19];
  v22 = v18;
  outlined init with copy of FloatingPointRoundingRule?(v21, &v13[v20], &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  v23 = *(v5 + 48);
  if (v23(v13, 1, v4) == 1)
  {
    if (v23(&v13[v20], 1, v4) == 1)
    {
      outlined destroy of TermOfAddress?(v13, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
      goto LABEL_6;
    }

    goto LABEL_11;
  }

  outlined init with copy of FloatingPointRoundingRule?(v13, v10, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  if (v23(&v13[v20], 1, v4) == 1)
  {
    outlined destroy of TermOfAddress?(v10, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
LABEL_11:
    v29 = &_s10Foundation24FloatingPointFormatStyleVySdGSg_AEtMd;
LABEL_12:
    outlined destroy of TermOfAddress?(v13, v29);
    goto LABEL_13;
  }

  outlined init with take of FloatingPointFormatStyle<Double>(&v13[v20], v7);
  v32 = *v10;
  v40 = *v7;
  v43 = v40;
  v44 = v32;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v33 = specialized static Locale.== infix(_:_:)(&v44, &v43);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v33 & 1) == 0)
  {
    outlined destroy of TermOfAddress?(v7, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    outlined destroy of TermOfAddress?(v10, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
    v29 = &_s10Foundation24FloatingPointFormatStyleVySdGSgMd;
    goto LABEL_12;
  }

  v34 = specialized static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(v10 + *(v4 + 36), v7 + *(v4 + 36));
  outlined destroy of TermOfAddress?(v7, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
  outlined destroy of TermOfAddress?(v10, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
  outlined destroy of TermOfAddress?(v13, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  if ((v34 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_6:
  v25 = v41;
  v24 = v42;
  v26 = *(v41 + 36);
  v27 = *(v42 + v26);
  v28 = v22[v26];
  if (v27 == 14)
  {
    if (v28 == 14)
    {
      goto LABEL_24;
    }
  }

  else if (v28 != 14)
  {
    v35 = Usage.rawValue.getter(v27);
    v37 = v36;
    if (v35 == Usage.rawValue.getter(v28) && v37 == v38)
    {
    }

    else
    {
      v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v39 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

LABEL_24:
    v30 = *(v24 + *(v25 + 40)) ^ v22[*(v25 + 40)] ^ 1;
    return v30 & 1;
  }

LABEL_13:
  v30 = 0;
  return v30 & 1;
}

uint64_t Measurement<>.FormatStyle.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6874646977 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001814880D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x635373656469685FLL && a2 == 0xEF656D614E656C61)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t Measurement<>.FormatStyle.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x6874646977;
  v2 = 0xD000000000000011;
  v3 = 0x6567617375;
  if (a1 != 3)
  {
    v3 = 0x635373656469685FLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x656C61636F6CLL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Measurement<A><>.FormatStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Measurement<>.FormatStyle.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance Measurement<A><>.FormatStyle.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized Measurement<>.FormatStyle.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Measurement<A><>.FormatStyle.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Measurement<A><>.FormatStyle.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Measurement<>.FormatStyle.encode(to:)(void *a1, uint64_t a2)
{
  v11[0] = a2;
  type metadata accessor for Measurement<>.FormatStyle.CodingKeys();
  swift_getWitnessTable();
  v3 = type metadata accessor for KeyedEncodingContainer();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = v11[1];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v13) = *v7;
  v14 = 0;
  type metadata accessor for Measurement<>.FormatStyle.UnitWidth();
  swift_getWitnessTable();
  v8 = v12;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v8)
  {
    v9 = v11[0];
    v12 = *(v7 + 8);
    v13 = v12;
    v14 = 1;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    swift_unknownObjectRetain();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
    LOBYTE(v13) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13) = *(v7 + *(v9 + 36));
    v14 = 3;
    type metadata accessor for MeasurementFormatUnitUsage();
    swift_getWitnessTable();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v13) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void Measurement<>.FormatStyle.hash(into:)(Swift::Int a1, int *a2)
{
  v3 = v2;
  v128 = type metadata accessor for FloatingPointRoundingRule();
  v125 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v123 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v124 = &v109 - v8;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  v9 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v127 = &v109 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v109 - v13;
  MEMORY[0x1865CD060](*v2, v12);
  v15 = *(v2 + 2);
  ObjectType = swift_getObjectType();
  if ((*(v15 + 48))(ObjectType, v15))
  {
    v17 = 1;
LABEL_5:
    Hasher._combine(_:)(v17);
    goto LABEL_56;
  }

  Hasher._combine(_:)(0);
  (*(v15 + 64))(ObjectType, v15);
  String.hash(into:)();

  (*(v15 + 464))(&v130, ObjectType, v15);
  v144 = v136;
  v145[0] = v137[0];
  *(v145 + 12) = *(v137 + 12);
  v140 = v132;
  v141 = v133;
  v142 = v134;
  v143 = v135;
  v138 = v130;
  v139 = v131;
  v151 = v136;
  v152[0] = v137[0];
  *(v152 + 12) = *(v137 + 12);
  *v148 = v132;
  *&v148[16] = v133;
  v149 = v134;
  v150 = v135;
  v146 = v130;
  v147 = v131;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v146) == 1)
  {
    v17 = 0;
    goto LABEL_5;
  }

  v122 = v2;
  v18 = v138;
  v19 = *(&v138 + 1);
  v20 = *(&v139 + 1);
  v109 = v139;
  v21 = *(&v140 + 1);
  v110 = v140;
  v112 = v141;
  v113 = v142;
  v114 = v143;
  v115 = v144;
  v111 = *(&v145[0] + 1);
  v116 = *&v145[0];
  v117 = *&v145[1];
  v118 = BYTE8(v145[1]);
  v119 = BYTE9(v145[1]);
  v120 = BYTE10(v145[1]);
  v121 = BYTE11(v145[1]);
  Hasher._combine(_:)(1u);
  if (v18 == 2)
  {
    v22 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v22 = v18 & 1;
  }

  v126 = a2;
  Hasher._combine(_:)(v22);
  if (v19)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v19 + 16));
    v23 = *(v19 + 16);
    if (v23)
    {
      v24 = v19 + 40;
      do
      {

        String.hash(into:)();

        v24 += 16;
        --v23;
      }

      while (v23);
    }

    if (v20)
    {
      goto LABEL_14;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v20)
    {
LABEL_14:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_17;
    }
  }

  Hasher._combine(_:)(0);
LABEL_17:
  v3 = v122;
  v25 = *(&v115 + 1);
  v26 = v112;
  if (v21)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  a2 = v126;
  v27 = v113;
  if (v26)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v26, v28, v29, v30, v31, v32, v33);
    v34 = *(&v112 + 1);
    if (*(&v112 + 1))
    {
      goto LABEL_22;
    }

LABEL_25:
    Hasher._combine(_:)(0);
    if (v27)
    {
      goto LABEL_23;
    }

    goto LABEL_26;
  }

  Hasher._combine(_:)(0);
  v34 = *(&v112 + 1);
  if (!*(&v112 + 1))
  {
    goto LABEL_25;
  }

LABEL_22:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v34, v35, v36, v37, v38, v39, v40);
  if (v27)
  {
LABEL_23:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_27;
  }

LABEL_26:
  Hasher._combine(_:)(0);
LABEL_27:
  v41 = v25;
  if (*(&v113 + 1))
  {
    v42 = v117;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v114)
    {
LABEL_29:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      goto LABEL_32;
    }
  }

  else
  {
    v42 = v117;
    Hasher._combine(_:)(0);
    if (v114)
    {
      goto LABEL_29;
    }
  }

  Hasher._combine(_:)(0);
LABEL_32:
  v43 = v42;
  v44 = v41;
  if (*(&v114 + 1))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v115)
    {
      goto LABEL_34;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v115)
    {
LABEL_34:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v45 = v119;
      if (v44)
      {
        goto LABEL_35;
      }

      goto LABEL_40;
    }
  }

  Hasher._combine(_:)(0);
  v45 = v119;
  if (v44)
  {
LABEL_35:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v44);
    v46 = v116;
    if (v116)
    {
      goto LABEL_36;
    }

LABEL_41:
    Hasher._combine(_:)(0);
    if (v43)
    {
      goto LABEL_37;
    }

LABEL_42:
    Hasher._combine(_:)(0);
    goto LABEL_43;
  }

LABEL_40:
  Hasher._combine(_:)(0);
  v46 = v116;
  if (!v116)
  {
    goto LABEL_41;
  }

LABEL_36:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v46);
  if (!v43)
  {
    goto LABEL_42;
  }

LABEL_37:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_43:
  v47 = v118;
  if (v118 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v47 & 1);
  }

  v48 = v121;
  if (v45 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v45 & 1);
  }

  v49 = v120;
  if (v120 == 2)
  {
    v50 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v50 = v49 & 1;
  }

  Hasher._combine(_:)(v50);
  if (v48 == 2)
  {
    v51 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v51 = v48 & 1;
  }

  Hasher._combine(_:)(v51);
  outlined destroy of TermOfAddress?(&v138, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_56:
  outlined init with copy of FloatingPointRoundingRule?(&v3[a2[8]], v14, &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  if ((*(v9 + 48))(v14, 1, v129) == 1)
  {
    Hasher._combine(_:)(0);
    goto LABEL_141;
  }

  v52 = v14;
  v53 = v127;
  outlined init with take of FloatingPointFormatStyle<Double>(v52, v127);
  Hasher._combine(_:)(1u);
  v54 = *(v53 + 8);
  v55 = swift_getObjectType();
  if ((*(v54 + 48))(v55, v54))
  {
    Hasher._combine(_:)(1u);
    goto LABEL_111;
  }

  Hasher._combine(_:)(0);
  (*(v54 + 64))(v55, v54);
  String.hash(into:)();

  (*(v54 + 464))(&v138, v55, v54);
  v151 = v144;
  v152[0] = v145[0];
  *(v152 + 12) = *(v145 + 12);
  *v148 = v140;
  *&v148[16] = v141;
  v149 = v142;
  v150 = v143;
  v146 = v138;
  v147 = v139;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v146) == 1)
  {
    Hasher._combine(_:)(0);
    goto LABEL_111;
  }

  v122 = v3;
  v56 = v138;
  v57 = *(&v138 + 1);
  v58 = *(&v139 + 1);
  v110 = v139;
  v59 = *(&v140 + 1);
  v111 = v140;
  *(&v112 + 1) = *(&v141 + 1);
  v60 = v141;
  v113 = v142;
  v114 = v143;
  v115 = v144;
  v61 = *(&v145[0] + 1);
  v116 = *&v145[0];
  v117 = *&v145[1];
  v118 = BYTE8(v145[1]);
  v119 = BYTE9(v145[1]);
  v120 = BYTE10(v145[1]);
  v121 = BYTE11(v145[1]);
  Hasher._combine(_:)(1u);
  *&v112 = v61;
  if (v56 == 2)
  {
    v62 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v62 = v56 & 1;
  }

  v63 = a2;
  Hasher._combine(_:)(v62);
  if (!v57)
  {
    Hasher._combine(_:)(0);
    if (v58)
    {
      goto LABEL_70;
    }

LABEL_73:
    Hasher._combine(_:)(0);
    v3 = v122;
    if (v59)
    {
      goto LABEL_71;
    }

    goto LABEL_74;
  }

  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](*(v57 + 16));
  v64 = *(v57 + 16);
  if (v64)
  {
    v65 = v57 + 40;
    do
    {

      String.hash(into:)();

      v65 += 16;
      --v64;
    }

    while (v64);
  }

  if (!v58)
  {
    goto LABEL_73;
  }

LABEL_70:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  v3 = v122;
  if (v59)
  {
LABEL_71:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_75;
  }

LABEL_74:
  Hasher._combine(_:)(0);
LABEL_75:
  a2 = v63;
  v66 = v113;
  if (v60)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v60, v67, v68, v69, v70, v71, v72);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v53 = v127;
  v73 = v114;
  v74 = *(&v112 + 1);
  if (*(&v112 + 1))
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v74, v75, v76, v77, v78, v79, v80);
    if (v66)
    {
      goto LABEL_80;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v66)
    {
LABEL_80:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v113 + 1))
      {
        goto LABEL_81;
      }

LABEL_85:
      Hasher._combine(_:)(0);
      if (v73)
      {
        goto LABEL_82;
      }

      goto LABEL_86;
    }
  }

  Hasher._combine(_:)(0);
  if (!*(&v113 + 1))
  {
    goto LABEL_85;
  }

LABEL_81:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (v73)
  {
LABEL_82:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_87;
  }

LABEL_86:
  Hasher._combine(_:)(0);
LABEL_87:
  v81 = v116;
  if (*(&v114 + 1))
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (v115)
    {
      goto LABEL_89;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v115)
    {
LABEL_89:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v82 = *(&v115 + 1);
      if (*(&v115 + 1))
      {
        goto LABEL_90;
      }

      goto LABEL_95;
    }
  }

  Hasher._combine(_:)(0);
  v82 = *(&v115 + 1);
  if (*(&v115 + 1))
  {
LABEL_90:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v82);
    v83 = v118;
    if (v81)
    {
      goto LABEL_91;
    }

LABEL_96:
    Hasher._combine(_:)(0);
    if (v117)
    {
      goto LABEL_92;
    }

LABEL_97:
    Hasher._combine(_:)(0);
    goto LABEL_98;
  }

LABEL_95:
  Hasher._combine(_:)(0);
  v83 = v118;
  if (!v81)
  {
    goto LABEL_96;
  }

LABEL_91:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v81);
  if (!v117)
  {
    goto LABEL_97;
  }

LABEL_92:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_98:
  v84 = v120;
  if (v83 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v83 & 1);
  }

  v85 = v119;
  if (v119 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v85 & 1);
  }

  v86 = v121;
  if (v84 == 2)
  {
    v87 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v87 = v84 & 1;
  }

  Hasher._combine(_:)(v87);
  if (v86 == 2)
  {
    v88 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v88 = v86 & 1;
  }

  Hasher._combine(_:)(v88);
  outlined destroy of TermOfAddress?(&v138, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_111:
  v89 = v53 + *(v129 + 36);
  v90 = *(v89 + 8);
  v126 = a2;
  if (v90 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v91 = *v89;
    Hasher._combine(_:)(1u);
    if ((v91 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v92 = v91;
    }

    else
    {
      v92 = 0;
    }

    MEMORY[0x1865CD090](v92);
  }

  v93 = *(v89 + 32);
  v146 = *(v89 + 16);
  v147 = v93;
  *v148 = *(v89 + 48);
  *&v148[9] = *(v89 + 57);
  specialized Optional<A>.hash(into:)();
  v94 = *(v89 + 73);
  if (v94 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v94 & 1);
  }

  v95 = *(v89 + 74);
  v96 = v95 | (*(v89 + 76) << 16);
  if (v95 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v96 & 1);
    MEMORY[0x1865CD060]((v96 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v96) & 1);
  }

  v97 = *(v89 + 77);
  if (v97 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v97 & 1);
  }

  v98 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v99 = v124;
  outlined init with copy of FloatingPointRoundingRule?(v89 + v98[9], v124, &_ss25FloatingPointRoundingRuleOSgMd);
  v100 = v125;
  if ((*(v125 + 48))(v99, 1, v128) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v101 = v128;
    v102 = v123;
    (*(v100 + 32))(v123, v99, v128);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v100 + 8))(v102, v101);
  }

  v103 = v89 + v98[10];
  v104 = *(v103 + 8);
  if (v104 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v105 = *v103;
    Hasher._combine(_:)(1u);
    if (v104)
    {
      MEMORY[0x1865CD060](1);
      if ((v105 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v106 = v105;
      }

      else
      {
        v106 = 0;
      }

      MEMORY[0x1865CD090](v106);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v105);
    }
  }

  v107 = *(v89 + v98[11]);
  a2 = v126;
  if (v107 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v107);
  }

  outlined destroy of TermOfAddress?(v53, &_s10Foundation24FloatingPointFormatStyleVySdGMd);
LABEL_141:
  v108 = v3[a2[9]];
  if (v108 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Usage.rawValue.getter(v108);
    String.hash(into:)();
  }

  Hasher._combine(_:)(v3[a2[10]]);
}

Swift::Int Measurement<>.FormatStyle.hashValue.getter(int *a1)
{
  Hasher.init(_seed:)();
  Measurement<>.FormatStyle.hash(into:)(v3, a1);
  return Hasher._finalize()();
}

uint64_t Measurement<>.FormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v30 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v31 = &v29 - v6;
  type metadata accessor for Measurement<>.FormatStyle.CodingKeys();
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedDecodingContainer();
  v32 = *(v7 - 8);
  v33 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v29 - v8;
  v34 = a2;
  v10 = type metadata accessor for Measurement<>.FormatStyle();
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v29 - v11;
  v14 = *(v13 + 32);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  v16 = *(*(v15 - 8) + 56);
  v37 = v14;
  v16(&v12[v14], 1, 1, v15);
  v17 = *(v10 + 36);
  v38 = v12;
  v12[v17] = 14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v35 = v9;
  v18 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return outlined destroy of TermOfAddress?(&v38[v37], &_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  }

  else
  {
    v36 = v17;
    v19 = v32;
    type metadata accessor for Measurement<>.FormatStyle.UnitWidth();
    v40 = 0;
    swift_getWitnessTable();
    v20 = v33;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = v38;
    *v38 = v39;
    v40 = 1;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v21 + 8) = v39;
    LOBYTE(v39) = 2;
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>);
    v22 = v31;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of FloatingPointFormatStyle<Double>?(v22, &v21[v37]);
    type metadata accessor for MeasurementFormatUnitUsage();
    v40 = 3;
    swift_getWitnessTable();
    v23 = v35;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v24 = a1;
    v21[v36] = v39;
    LOBYTE(v39) = 4;
    v25 = KeyedDecodingContainer.decode(_:forKey:)();
    v26 = *(v10 + 40);
    (*(v19 + 8))(v23, v20);
    v21[v26] = v25 & 1;
    v27 = v29;
    (*(v29 + 16))(v30, v21, v10);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return (*(v27 + 8))(v21, v10);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Measurement<A><>.FormatStyle(uint64_t a1, int *a2)
{
  Hasher.init(_seed:)();
  Measurement<>.FormatStyle.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

uint64_t Measurement<>.FormatStyle<>.hidesScaleName.setter(char a1)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleVySo17NSUnitTemperatureC_GMd);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t (*Measurement<>.FormatStyle<>.hidesScaleName.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleVySo17NSUnitTemperatureC_GMd) + 40);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3);
  return Duration.TimeFormatStyle.grouping.modify;
}

uint64_t Measurement<>.FormatStyle<>.init(width:locale:usage:hidesScaleName:numberFormatStyle:)@<X0>(char *a1@<X0>, _OWORD *a2@<X1>, char *a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a1;
  v11 = *a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVAASo11NSDimensionCRbzrlE11FormatStyleVySo17NSUnitTemperatureC_GMd);
  v13 = v12[8];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  (*(*(v14 - 8) + 56))(a6 + v13, 1, 1, v14);
  v15 = v12[9];
  v16 = v12[10];
  *(a6 + v16) = 0;
  *a6 = v10;
  *(a6 + 8) = *a2;
  *(a6 + v15) = v11;
  result = outlined assign with take of FloatingPointFormatStyle<Double>?(a5, a6 + v13);
  *(a6 + v16) = a4;
  return result;
}

__n128 Measurement<>.FormatStyle<>.ByteCount.locale.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *(v1 + 24) = *a1;
  return result;
}

uint64_t Measurement<>.FormatStyle<>.ByteCount.attributed.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
  *(a1 + 24) = *(v1 + 24);
  return swift_unknownObjectRetain();
}

__n128 Measurement<>.FormatStyle<>.ByteCount.init(style:allowedUnits:spellsOutZero:includesActualByteCount:locale:)@<Q0>(_BYTE *a1@<X0>, uint64_t *a2@<X1>, char a3@<W2>, char a4@<W3>, __n128 *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a2;
  *a6 = *a1;
  *(a6 + 8) = v6;
  *(a6 + 16) = a3;
  *(a6 + 17) = a4;
  result = *a5;
  *(a6 + 24) = *a5;
  return result;
}

uint64_t Measurement<>.FormatStyle<>.ByteCount.format(_:)(double *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *v1;
  v5 = *(v1 + 1);
  v6 = v1[16];
  v7 = v1[17];
  v8 = objc_opt_self();
  v26 = *(v1 + 24);
  swift_unknownObjectRetain_n();
  v9 = [v8 bytes];
  specialized Measurement<>.converted(to:)(&v27, v9, *&v2, v3);

  v10 = v27;
  v11 = v28;
  LOBYTE(v27) = v4;
  v28 = v5;
  LOBYTE(v29) = v6;
  BYTE1(v29) = v7;
  v30 = v26;
  ByteCountFormatStyle.Attributed._format(_:doubleValue:)(v11, 0, 0x100000000, &v36, *&v11);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  v12 = v36;
  v13 = *(v36 + 40);
  v37 = *(v36 + 24);
  v38 = v13;
  v39 = *(v36 + 56);
  v14 = BigString.startIndex.getter();
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = BigString.endIndex.getter();
  v27 = v12;
  v28 = v14;
  v29 = v16;
  *&v30 = v18;
  *(&v30 + 1) = v20;
  v31 = v21;
  v32 = v22;
  v33 = v23;
  v34 = v24;
  v35 = 0;
  lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();
  return String.init<A>(_:)();
}

uint64_t Measurement<>.FormatStyle<>.ByteCount.locale(_:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 8);
  v4 = *(v2 + 16);
  v5 = *(v2 + 17);
  *a2 = *v2;
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  *(a2 + 17) = v5;
  *(a2 + 24) = *a1;
  return swift_unknownObjectRetain();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Measurement<A><>.FormatStyle<>.ByteCount.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys and conformance Measurement<A><>.FormatStyle<>.ByteCount.CodingKeys(&lazy protocol witness table cache variable for type Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys and conformance Measurement<A><>.FormatStyle<>.ByteCount.CodingKeys, &lazy cache variable for type metadata for Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys, type metadata accessor for Measurement<>.FormatStyle<>.ByteCount.CodingKeys);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Measurement<A><>.FormatStyle<>.ByteCount.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys and conformance Measurement<A><>.FormatStyle<>.ByteCount.CodingKeys(&lazy protocol witness table cache variable for type Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys and conformance Measurement<A><>.FormatStyle<>.ByteCount.CodingKeys, &lazy cache variable for type metadata for Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys, type metadata accessor for Measurement<>.FormatStyle<>.ByteCount.CodingKeys);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Measurement<>.FormatStyle<>.ByteCount.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation11MeasurementVACSo11NSDimensionCRbzrlE11FormatStyleVACSo24NSUnitInformationStorageCRszrlE9ByteCountV10CodingKeys33_89FFD19F76B3ECDF2476CDBC5884021ELLOyAK___GGMd);
  v13 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - v4;
  v6 = *v1;
  v12 = *(v1 + 1);
  v16 = v1[16];
  v11 = v1[17];
  v10 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys(0, &lazy cache variable for type metadata for Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys, type metadata accessor for Measurement<>.FormatStyle<>.ByteCount.CodingKeys);
  lazy protocol witness table accessor for type Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys and conformance Measurement<A><>.FormatStyle<>.ByteCount.CodingKeys(&lazy protocol witness table cache variable for type Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys and conformance Measurement<A><>.FormatStyle<>.ByteCount.CodingKeys, &lazy cache variable for type metadata for Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys, type metadata accessor for Measurement<>.FormatStyle<>.ByteCount.CodingKeys);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = v6;
  v17 = 0;
  lazy protocol witness table accessor for type ByteCountFormatStyle.Style and conformance ByteCountFormatStyle.Style();
  v7 = v14;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v7)
  {
    return (*(v13 + 8))(v5, v3);
  }

  v9 = v13;
  *&v15 = v12;
  v17 = 1;
  lazy protocol witness table accessor for type ByteCountFormatStyle.Units and conformance ByteCountFormatStyle.Units();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v15) = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  LOBYTE(v15) = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v10;
  v17 = 4;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  swift_unknownObjectRetain();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  swift_unknownObjectRelease();
  return (*(v9 + 8))(v5, v3);
}

void Measurement<>.FormatStyle<>.ByteCount.hash(into:)(Swift::Int a1)
{
  v3 = *(v1 + 1);
  v4 = v1[16];
  v5 = v1[17];
  v6 = *(v1 + 4);
  MEMORY[0x1865CD060](*v1);
  MEMORY[0x1865CD060](v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  ObjectType = swift_getObjectType();
  if ((*(v6 + 48))(ObjectType, v6))
  {
    v8 = 1;
LABEL_5:
    Hasher._combine(_:)(v8);
    return;
  }

  Hasher._combine(_:)(0);
  (*(v6 + 64))(ObjectType, v6);
  String.hash(into:)();

  (*(v6 + 464))(&v48, ObjectType, v6);
  v56[6] = v54;
  v57[0] = *v55;
  *(v57 + 12) = *&v55[12];
  v56[2] = v50;
  v56[3] = v51;
  v56[4] = v52;
  v56[5] = v53;
  v56[0] = v48;
  v56[1] = v49;
  if (_s10Foundation17LocalePreferencesVSgWOg(v56) == 1)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v9 = v48;
  v10 = *(&v48 + 1);
  v11 = *(&v49 + 1);
  v12 = *(&v50 + 1);
  v41 = v51;
  v13 = v53;
  v42 = v52;
  v43 = *(&v53 + 1);
  v44 = v54;
  v14 = *v55;
  v15 = v55[24];
  v45 = *&v55[16];
  v46 = v55[25];
  v47 = v55[26];
  v16 = v55[27];
  Hasher._combine(_:)(1u);
  if (v9 == 2)
  {
    v17 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v17 = v9 & 1;
  }

  Hasher._combine(_:)(v17);
  if (v10)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v10 + 16));
    v18 = *(v10 + 16);
    if (v18)
    {
      v19 = v10 + 40;
      do
      {

        String.hash(into:)();

        v19 += 16;
        --v18;
      }

      while (v18);
    }

    if (v11)
    {
      goto LABEL_14;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v11)
    {
LABEL_14:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_17;
    }
  }

  Hasher._combine(_:)(0);
LABEL_17:
  v20 = v15;
  if (v12)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v21 = v13;
  if (v41)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v41, v22, v23, v24, v25, v26, v27);
    v28 = v46;
    if (*(&v41 + 1))
    {
LABEL_22:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, *(&v41 + 1), v29, v30, v31, v32, v33, v34);
      goto LABEL_25;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v28 = v46;
    if (*(&v41 + 1))
    {
      goto LABEL_22;
    }
  }

  Hasher._combine(_:)(0);
LABEL_25:
  if (v42)
  {
    v35 = v20;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v42 + 1))
    {
      goto LABEL_27;
    }

LABEL_30:
    Hasher._combine(_:)(0);
    v36 = v35;
    if (v21)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v35 = v20;
  Hasher._combine(_:)(0);
  if (!*(&v42 + 1))
  {
    goto LABEL_30;
  }

LABEL_27:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  v36 = v35;
  if (v21)
  {
LABEL_28:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_32;
  }

LABEL_31:
  Hasher._combine(_:)(0);
LABEL_32:
  if (v43)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v37 = *(&v44 + 1);
    if (v44)
    {
      goto LABEL_34;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v37 = *(&v44 + 1);
    if (v44)
    {
LABEL_34:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v37)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }
  }

  Hasher._combine(_:)(0);
  if (v37)
  {
LABEL_35:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v37);
    if (v14)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

LABEL_43:
  Hasher._combine(_:)(0);
  if (v14)
  {
LABEL_36:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v14);
    v38 = v16;
    if (v45)
    {
      goto LABEL_37;
    }

    goto LABEL_45;
  }

LABEL_44:
  Hasher._combine(_:)(0);
  v38 = v16;
  if (v45)
  {
LABEL_37:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v36 == 2)
    {
      goto LABEL_38;
    }

    goto LABEL_46;
  }

LABEL_45:
  Hasher._combine(_:)(0);
  if (v36 == 2)
  {
LABEL_38:
    Hasher._combine(_:)(0);
    if (v28 != 2)
    {
      goto LABEL_39;
    }

LABEL_47:
    Hasher._combine(_:)(0);
    if (v47 != 2)
    {
      goto LABEL_40;
    }

LABEL_48:
    v39 = 0;
    goto LABEL_49;
  }

LABEL_46:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v36 & 1);
  if (v28 == 2)
  {
    goto LABEL_47;
  }

LABEL_39:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v28 & 1);
  if (v47 == 2)
  {
    goto LABEL_48;
  }

LABEL_40:
  Hasher._combine(_:)(1u);
  v39 = v47 & 1;
LABEL_49:
  Hasher._combine(_:)(v39);
  if (v38 == 2)
  {
    v40 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v40 = v38 & 1;
  }

  Hasher._combine(_:)(v40);
  outlined destroy of TermOfAddress?(&v48, &_s10Foundation17LocalePreferencesVSgMd);
}

uint64_t Measurement<>.FormatStyle<>.ByteCount.hashValue.getter()
{
  type metadata accessor for Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys(0, &lazy cache variable for type metadata for Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount, type metadata accessor for Measurement<>.FormatStyle<>.ByteCount);
  lazy protocol witness table accessor for type Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys and conformance Measurement<A><>.FormatStyle<>.ByteCount.CodingKeys(&lazy protocol witness table cache variable for type Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount and conformance Measurement<A><>.FormatStyle<>.ByteCount, &lazy cache variable for type metadata for Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount, type metadata accessor for Measurement<>.FormatStyle<>.ByteCount);
  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t Measurement<>.FormatStyle<>.ByteCount.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation11MeasurementVACSo11NSDimensionCRbzrlE11FormatStyleVACSo24NSUnitInformationStorageCRszrlE9ByteCountV10CodingKeys33_89FFD19F76B3ECDF2476CDBC5884021ELLOyAK___GGMd);
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v16 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  type metadata accessor for Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys(0, &lazy cache variable for type metadata for Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys, type metadata accessor for Measurement<>.FormatStyle<>.ByteCount.CodingKeys);
  lazy protocol witness table accessor for type Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys and conformance Measurement<A><>.FormatStyle<>.ByteCount.CodingKeys(&lazy protocol witness table cache variable for type Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys and conformance Measurement<A><>.FormatStyle<>.ByteCount.CodingKeys, &lazy cache variable for type metadata for Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys, type metadata accessor for Measurement<>.FormatStyle<>.ByteCount.CodingKeys);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v7 = v19;
    v6 = v20;
    v24 = 0;
    lazy protocol witness table accessor for type ByteCountFormatStyle.Style and conformance ByteCountFormatStyle.Style();
    v8 = v21;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v22;
    v24 = 1;
    lazy protocol witness table accessor for type ByteCountFormatStyle.Units and conformance ByteCountFormatStyle.Units();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = v9;
    v10 = v22;
    LOBYTE(v22) = 2;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v17 = v10;
    v18 = v11;
    LOBYTE(v22) = 3;
    HIDWORD(v16) = KeyedDecodingContainer.decode(_:forKey:)();
    v24 = 4;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v18 & 1;
    v14 = BYTE4(v16) & 1;
    (*(v7 + 8))(v5, v8);
    v15 = v22;
    *v6 = v23;
    *(v6 + 8) = v17;
    *(v6 + 16) = v13;
    *(v6 + 17) = v14;
    *(v6 + 24) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance Measurement<A><>.FormatStyle<>.ByteCount@<X0>(double *a1@<X0>, uint64_t *a2@<X8>)
{
  result = Measurement<>.FormatStyle<>.ByteCount.format(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t Measurement<>.formatted()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGSgMd);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v17 - v2;
  v4 = type metadata accessor for Measurement<>.FormatStyle();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v18 = *v0;
  v8 = v0[1];
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v10 = _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
  v12 = *(*(v11 - 8) + 56);
  v12(v3, 1, 1, v11);
  v13 = *(v4 + 32);
  v12(&v7[v13], 1, 1, v11);
  v14 = *(v4 + 36);
  v7[v14] = 14;
  v7[*(v4 + 40)] = 0;
  *v7 = 1;
  *(v7 + 1) = inited;
  *(v7 + 2) = v10;
  v7[v14] = 0;
  outlined assign with take of FloatingPointFormatStyle<Double>?(v3, &v7[v13]);
  v19[0] = v18;
  v19[1] = v8;
  v15 = Measurement<>.FormatStyle.format(_:)(v19, v4);
  (*(v5 + 8))(v7, v4);
  return v15;
}

uint64_t lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation24FloatingPointFormatStyleVySdGMd);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys and conformance Measurement<A><>.FormatStyle<>.ByteCount.CodingKeys(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t instantiation function for generic protocol witness table for Measurement<A><>.FormatStyle<>.ByteCount(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys and conformance Measurement<A><>.FormatStyle<>.ByteCount.CodingKeys(&lazy protocol witness table cache variable for type Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount and conformance Measurement<A><>.FormatStyle<>.ByteCount, &lazy cache variable for type metadata for Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount, type metadata accessor for Measurement<>.FormatStyle<>.ByteCount);
  a1[2] = lazy protocol witness table accessor for type Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys and conformance Measurement<A><>.FormatStyle<>.ByteCount.CodingKeys(&lazy protocol witness table cache variable for type Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount and conformance Measurement<A><>.FormatStyle<>.ByteCount, &lazy cache variable for type metadata for Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount, type metadata accessor for Measurement<>.FormatStyle<>.ByteCount);
  result = lazy protocol witness table accessor for type Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount.CodingKeys and conformance Measurement<A><>.FormatStyle<>.ByteCount.CodingKeys(&lazy protocol witness table cache variable for type Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount and conformance Measurement<A><>.FormatStyle<>.ByteCount, &lazy cache variable for type metadata for Measurement<NSUnitInformationStorage><>.FormatStyle<>.ByteCount, type metadata accessor for Measurement<>.FormatStyle<>.ByteCount);
  a1[3] = result;
  return result;
}

uint64_t type metadata instantiation function for Measurement<>.FormatStyle<>.ByteCount()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t one-time initialization function for logHandle()
{
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for OS_os_log);
  result = OS_os_log.init(subsystem:category:)();
  logHandle = result;
  return result;
}

void NSURLSessionWebSocketTask.send(_:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  v6 = *(a1 + 8);
  if (*(a1 + 16) != 1)
  {
    v10 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v10 == 2)
      {
        v11 = __DataStorage.bridgedReference(_:)(*(v7 + 16), *(v7 + 24));
      }

      else
      {
        v11 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
      }
    }

    else
    {
      if (v10)
      {
        if (v7 >> 32 < v7)
        {
          __break(1u);
        }

        v12 = __DataStorage.bridgedReference(_:)(v7, v7 >> 32);
        goto LABEL_12;
      }

      aBlock = *a1;
      LOWORD(v15) = v6;
      BYTE2(v15) = BYTE2(v6);
      BYTE3(v15) = BYTE3(v6);
      BYTE4(v15) = BYTE4(v6);
      BYTE5(v15) = BYTE5(v6);
      v11 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&aBlock length:BYTE6(v6)];
    }

    v12 = v11;
LABEL_12:
    v8 = [objc_allocWithZone(MEMORY[0x1E695ACC0]) initWithData_];

    v18 = a2;
    v19 = a3;
    aBlock = MEMORY[0x1E69E9820];
    v15 = 1107296256;
    v9 = &block_descriptor_3;
    goto LABEL_13;
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E695ACC0]) initWithString_];
  swift_unknownObjectRelease();
  v18 = a2;
  v19 = a3;
  aBlock = MEMORY[0x1E69E9820];
  v15 = 1107296256;
  v9 = &block_descriptor_14;
LABEL_13:
  v16 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ();
  v17 = v9;
  v13 = _Block_copy(&aBlock);

  [v3 sendMessage:v8 completionHandler:v13];
  _Block_release(v13);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Error?) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t closure #1 in closure #1 in NSURLSessionWebSocketTask.send(_:)(void *a1, uint64_t a2)
{
  if (a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v4 = swift_allocError();
    *v5 = a1;
    v6 = a1;

    return MEMORY[0x1EEE6DEE8](a2, v4);
  }

  else
  {

    return MEMORY[0x1EEE6DEE0](a2);
  }
}

uint64_t NSURLSessionWebSocketTask.send(_:)(uint64_t a1)
{
  *(v2 + 104) = v1;
  v3 = *(a1 + 16);
  *(v2 + 80) = *a1;
  *(v2 + 96) = v3;
  return MEMORY[0x1EEE6DFA0](NSURLSessionWebSocketTask.send(_:), 0, 0);
}

void NSURLSessionWebSocketTask.receive(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  v7[4] = partial apply for closure #1 in NSURLSessionWebSocketTask.receive(completionHandler:);
  v7[5] = v5;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSURLSessionWebSocketMessage?, @guaranteed Error?) -> ();
  v7[3] = &block_descriptor_10;
  v6 = _Block_copy(v7);

  [v2 receiveMessageWithCompletionHandler_];
  _Block_release(v6);
}

void closure #1 in NSURLSessionWebSocketTask.receive(completionHandler:)(void *a1, id a2, void (*a3)(id *))
{
  v33 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (!a2)
    {
      v5 = [a1 type];
      if (v5 == 1)
      {
        v6 = [a1 string];
        if (v6)
        {
          v7 = v6;
          isTaggedPointer = _objc_isTaggedPointer(v6);
          v9 = v7;
          v10 = v9;
          if (!isTaggedPointer)
          {
LABEL_15:
            v30 = 0;
            if (__CFStringIsCF())
            {
              v12 = v30;

              v14 = 0xE000000000000000;
              goto LABEL_29;
            }

            v21 = v10;
            v22 = String.init(_nativeStorage:)();
            if (v23)
            {
              v12 = v22;
              v14 = v23;

              goto LABEL_29;
            }

            if (![v21 length])
            {

              v12 = 0;
              v14 = 0xE000000000000000;
              goto LABEL_29;
            }

            v12 = String.init(_cocoaString:)();
            v14 = v27;
LABEL_28:

            goto LABEL_29;
          }

          TaggedPointerTag = _objc_getTaggedPointerTag(v9);
          if (!TaggedPointerTag)
          {
            goto LABEL_22;
          }

          if (TaggedPointerTag != 22)
          {
            if (TaggedPointerTag == 2)
            {
              MEMORY[0x1EEE9AC00](TaggedPointerTag);
              v12 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v14 = v13;

LABEL_29:
              v30 = v12;
              v31 = v14;
              v32 = 1;
              goto LABEL_30;
            }

            goto LABEL_15;
          }

          v24 = [v10 UTF8String];
          if (v24)
          {
            v25 = String.init(utf8String:)(v24);
            if (v26)
            {
LABEL_23:
              v12 = v25;
              v14 = v26;

              goto LABEL_28;
            }

            __break(1u);
LABEL_22:
            _CFIndirectTaggedPointerStringGetContents();
            v25 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v26)
            {
              [v10 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v12 = v28;
              v14 = v29;
              goto LABEL_28;
            }

            goto LABEL_23;
          }

          goto LABEL_33;
        }

        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      if (!v5)
      {
        v16 = [a1 data];
        if (!v16)
        {
          goto LABEL_32;
        }

        v17 = v16;
        v18 = specialized Data.init(referencing:)(v17);
        v20 = v19;

        v30 = v18;
        v31 = v20;
        v32 = 0;
LABEL_30:
        a3(&v30);
        outlined consume of Result<NSURLSessionWebSocketTask.Message, Error>(v30, v31, v32, SHIBYTE(v32));
        return;
      }
    }
  }

  else if (a2)
  {
    v30 = a2;
    v31 = 0;
    v32 = 256;
    v15 = a2;
    goto LABEL_30;
  }

LABEL_34:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSURLSessionWebSocketMessage?, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t closure #1 in closure #1 in NSURLSessionWebSocketTask.receive()(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  if (*(a1 + 17))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    v4 = swift_allocError();
    *v5 = v3;
    v6 = v3;

    return MEMORY[0x1EEE6DEE8](a2, v4);
  }

  else
  {
    v7 = *(a1 + 8);
    v10 = *(a1 + 16) & 1;
    outlined copy of NSURLSessionWebSocketTask.Message(v3, v7, v10);
    v8 = *(*(a2 + 64) + 40);
    *v8 = v3;
    *(v8 + 8) = v7;
    *(v8 + 16) = v10;

    return MEMORY[0x1EEE6DEE0](a2);
  }
}

uint64_t NSURLSessionWebSocketTask.receive()(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  return MEMORY[0x1EEE6DFA0](NSURLSessionWebSocketTask.receive(), 0, 0);
}

uint64_t NSURLSessionWebSocketTask.receive()()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[20];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = NSURLSessionWebSocketTask.receive();
  v7 = swift_continuation_init();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = partial apply for closure #1 in closure #1 in NSURLSessionWebSocketTask.receive();
  *(v9 + 24) = v8;
  v1[14] = closure #1 in NSURLSessionWebSocketTask.receive(completionHandler:)partial apply;
  v1[15] = v9;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed NSURLSessionWebSocketMessage?, @guaranteed Error?) -> ();
  v1[13] = &block_descriptor_20;
  v10 = _Block_copy(v4);

  [v6 receiveMessageWithCompletionHandler_];
  _Block_release(v10);

  return MEMORY[0x1EEE6DEC8](v3);
}

{
  v1 = *v0;
  v2 = *v0;
  if (*(*v0 + 48))
  {
    swift_willThrow();
  }

  else
  {
    v3 = *(v1 + 152);
    v4 = *(v1 + 144);
    *v3 = *(v1 + 128);
    *(v3 + 16) = v4;
  }

  v5 = *(v2 + 8);

  return v5();
}

id NSURLSessionTaskTransactionMetrics.localPort.getter(SEL *a1)
{
  result = [v1 *a1];
  if (result)
  {
    v3 = result;
    v4 = [result integerValue];
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
    v5 = [objc_allocWithZone(NSNumber) initWithInteger_];
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t NSURLSessionTaskTransactionMetrics.negotiatedTLSProtocolVersion.getter(SEL *a1)
{
  v2 = [v1 *a1];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 unsignedShortValue];
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
    v5 = [objc_allocWithZone(NSNumber) initWithUnsignedShort_];
    v6 = static NSObject.== infix(_:_:)();

    if (v6)
    {
      LODWORD(v2) = v4;
    }

    else
    {
      LODWORD(v2) = 0;
    }

    v7 = v6 ^ 1;
  }

  else
  {
    v7 = 1;
  }

  return v2 & 0xFFFEFFFF | ((v7 & 1) << 16);
}

uint64_t closure #1 in URLSessionAsyncBytesDelegate.data()(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v6 = OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_state;
  outlined destroy of URLSessionAsyncBytesDelegate.State(a2 + OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_state);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy10Foundation4DataVSgs5Error_pGMd);
  (*(*(v7 - 8) + 16))(a2 + v6, a1, v7);
  type metadata accessor for URLSessionAsyncBytesDelegate.State(0);
  swift_storeEnumTagMultiPayload();
  v8 = *(a2 + OBJC_IVAR____TtC10FoundationP33_1935C07EE287982D980AA89BB85ACEFA28URLSessionAsyncBytesDelegate_lock);

  os_unfair_lock_unlock(v8 + 4);

  return a3(v9);
}

uint64_t NSURLSession.data(for:delegate:)(void *a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[15] = *a1;
  return MEMORY[0x1EEE6DFA0](NSURLSession.data(for:delegate:), 0, 0);
}

uint64_t NSURLSession.data(from:delegate:)(_OWORD *a1, uint64_t a2)
{
  *(v3 + 104) = a2;
  *(v3 + 112) = v2;
  *(v3 + 120) = *a1;
  return MEMORY[0x1EEE6DFA0](NSURLSession.data(from:delegate:), 0, 0);
}

uint64_t NSURLSession.data(from:delegate:)()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  type metadata accessor for NSURLSession.CancelState();
  v8 = *(v0 + 112);
  inited = swift_initStackObject();
  *(v0 + 136) = inited;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCySo12NSURLSessionC10FoundationE11CancelStateC0F0VSo16os_unfair_lock_sVGMd);
  v4 = swift_initStackObject();
  *(v0 + 144) = v4;
  *(v4 + 32) = 0;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(inited + 16) = v4;
  v5 = swift_task_alloc();
  *(v0 + 152) = v5;
  *(v5 + 16) = v8;
  *(v5 + 32) = v1;
  *(v5 + 40) = v2;
  *(v5 + 48) = inited;
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_So13NSURLResponseCtMd);
  *v6 = v0;
  v6[1] = NSURLSession.data(from:delegate:);

  return MEMORY[0x1EEE6DE18](v0 + 80, &async function pointer to partial apply for closure #1 in NSURLSession.data(from:delegate:));
}

{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = NSURLSession.data(from:delegate:);
  }

  else
  {

    v2 = NSURLSession.data(from:delegate:);
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

{
  swift_setDeallocating();

  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[1];

  return v4(v1, v2, v3);
}

{
  swift_setDeallocating();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in NSURLSession.data(from:delegate:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.data(from:delegate:), 0, 0);
}

uint64_t closure #1 in NSURLSession.data(from:delegate:)()
{
  v1 = *(v0 + 56);
  v7 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v7;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_So13NSURLResponseCtMd);
  *v3 = v0;
  v3[1] = closure #1 in NSURLSession.data(from:delegate:);
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD000000000000014, 0x80000001814884B0, partial apply for closure #1 in closure #1 in NSURLSession.data(from:delegate:), v2, v4);
}

{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](closure #1 in NSURLSession.data(from:delegate:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}