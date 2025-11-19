unint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityTriggerSpecification.ProximityCodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized __RKEntityTriggerSpecification.ProximityCodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityTriggerSpecification.ProximityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification.ProximityCodingKeys and conformance __RKEntityTriggerSpecification.ProximityCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityTriggerSpecification.ProximityCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification.ProximityCodingKeys and conformance __RKEntityTriggerSpecification.ProximityCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntityTriggerSpecification.CollisionCodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1936154996;
  v5 = 0x80000001C18DD0D0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000011;
    v3 = 0x80000001C18DD0D0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x746567726174;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE600000000000000;
  }

  v8 = 1936154996;
  if (*a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xD000000000000011;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x746567726174;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE600000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityTriggerSpecification.CollisionCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __RKEntityTriggerSpecification.CollisionCodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityTriggerSpecification.CollisionCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance __RKEntityTriggerSpecification.CollisionCodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized __RKEntityTriggerSpecification.CollisionCodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityTriggerSpecification.CollisionCodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE400000000000000;
  v5 = 1936154996;
  if (v2 != 1)
  {
    v5 = 0xD000000000000011;
    v4 = 0x80000001C18DD0D0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x746567726174;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntityTriggerSpecification.CollisionCodingKeys()
{
  v1 = 1936154996;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000011;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746567726174;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityTriggerSpecification.CollisionCodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized __RKEntityTriggerSpecification.CollisionCodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityTriggerSpecification.CollisionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CollisionCodingKeys and conformance __RKEntityTriggerSpecification.CollisionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityTriggerSpecification.CollisionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CollisionCodingKeys and conformance __RKEntityTriggerSpecification.CollisionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance __RKEntityTriggerSpecification.GroupCodingKeys@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, BOOL *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  *a3 = v4 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityTriggerSpecification.CustomCodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityTriggerSpecification.CustomCodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityTriggerSpecification.CustomCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CustomCodingKeys and conformance __RKEntityTriggerSpecification.CustomCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityTriggerSpecification.CustomCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CustomCodingKeys and conformance __RKEntityTriggerSpecification.CustomCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x72416D6F74737563;
  }

  else
  {
    v4 = 0x696669746E656469;
  }

  if (v3)
  {
    v5 = 0xEA00000000007265;
  }

  else
  {
    v5 = 0xEF73746E656D7567;
  }

  if (*a2)
  {
    v6 = 0x72416D6F74737563;
  }

  else
  {
    v6 = 0x696669746E656469;
  }

  if (*a2)
  {
    v7 = 0xEF73746E656D7567;
  }

  else
  {
    v7 = 0xEA00000000007265;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x696669746E656469;
  if (*v1)
  {
    v2 = 0x72416D6F74737563;
  }

  v3 = 0xEA00000000007265;
  if (*v1)
  {
    v3 = 0xEF73746E656D7567;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys()
{
  if (*v0)
  {
    result = 0x72416D6F74737563;
  }

  else
  {
    result = 0x696669746E656469;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys and conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys and conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntityTriggerSpecification.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x746E656D75677261;
  v4 = 0xE900000000000073;
  if (v2 != 1)
  {
    v3 = 0x6F697469646E6F63;
    v4 = 0xEA0000000000736ELL;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701667182;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x746E656D75677261;
  v8 = 0xE900000000000073;
  if (*a2 != 1)
  {
    v7 = 0x6F697469646E6F63;
    v8 = 0xEA0000000000736ELL;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701667182;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityTriggerSpecification.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __RKEntityTriggerSpecification.CodingKeys()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityTriggerSpecification.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance __RKEntityTriggerSpecification.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized __RKEntityTriggerSpecification.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityTriggerSpecification.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE900000000000073;
  v5 = 0x746E656D75677261;
  if (v2 != 1)
  {
    v5 = 0x6F697469646E6F63;
    v4 = 0xEA0000000000736ELL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701667182;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntityTriggerSpecification.CodingKeys()
{
  v1 = 0x746E656D75677261;
  if (*v0 != 1)
  {
    v1 = 0x6F697469646E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityTriggerSpecification.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized __RKEntityTriggerSpecification.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityTriggerSpecification.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CodingKeys and conformance __RKEntityTriggerSpecification.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityTriggerSpecification.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CodingKeys and conformance __RKEntityTriggerSpecification.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityTriggerSpecification.name.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of __RKEntityTriggerSpecification(v2, v7, type metadata accessor for __RKEntityTriggerSpecification);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v9 = 8;
      goto LABEL_11;
    case 2:
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMd, &_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMR);
      v12 = *&v7[*(v11 + 48)];

      v13 = *&v7[*(v11 + 64)];

      v9 = 10;
      goto LABEL_11;
    case 3:
      result = outlined destroy of __RKEntityTriggerSpecification(v7, type metadata accessor for __RKEntityTriggerSpecification);
      v10 = 11;
      goto LABEL_17;
    case 4:
      result = outlined destroy of __RKEntityTriggerSpecification(v7, type metadata accessor for __RKEntityTriggerSpecification);
      v10 = 12;
      goto LABEL_17;
    case 5:
      result = outlined destroy of __RKEntityTriggerSpecification(v7, type metadata accessor for __RKEntityTriggerSpecification);
      v10 = 13;
      goto LABEL_17;
    case 6:
      *a1 = 0;
      return result;
    case 7:
      v10 = 1;
      goto LABEL_17;
    case 8:
      v10 = 2;
      goto LABEL_17;
    case 9:
      v10 = 3;
      goto LABEL_17;
    case 10:
      v10 = 5;
      goto LABEL_17;
    case 11:
      v10 = 6;
      goto LABEL_17;
    case 12:
      v10 = 7;
      goto LABEL_17;
    case 13:
      v10 = 9;
LABEL_17:
      *a1 = v10;
      break;
    default:
      v9 = 4;
LABEL_11:
      *a1 = v9;
      v14 = type metadata accessor for UUID();
      result = (*(*(v14 - 8) + 8))(v7, v14);
      break;
  }

  return result;
}

uint64_t __RKEntityTriggerSpecification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v115 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO15GroupCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO15GroupCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v103 = *(v3 - 8);
  v104 = v3;
  v4 = *(v103 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v112 = &v93 - v5;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO19TapTargetCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO19TapTargetCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v100 = *(v101 - 8);
  v6 = *(v100 + 64);
  MEMORY[0x1EEE9AC00](v101);
  v110 = &v93 - v7;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO29CustomWithArgumentsCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO29CustomWithArgumentsCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v117 = *(v102 - 8);
  v8 = *(v117 + 64);
  MEMORY[0x1EEE9AC00](v102);
  v111 = &v93 - v9;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO16CustomCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO16CustomCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v98 = *(v99 - 8);
  v10 = *(v98 + 64);
  MEMORY[0x1EEE9AC00](v99);
  v109 = &v93 - v11;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO19CollisionCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO19CollisionCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v116 = *(v119 - 8);
  v12 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v119);
  v113 = &v93 - v13;
  v114 = type metadata accessor for UUID();
  v107 = *(v114 - 8);
  v14 = *(v107 + 64);
  MEMORY[0x1EEE9AC00](v114);
  v97 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v108 = &v93 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v106 = &v93 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO19ProximityCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO19ProximityCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v105 = *(v20 - 8);
  v21 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v93 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v118 = *(v24 - 8);
  v25 = *(v118 + 64);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v93 - v26;
  v28 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28);
  v31 = (&v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v32 = a1[3];
  v33 = a1[4];
  v120 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CodingKeys and conformance __RKEntityTriggerSpecification.CodingKeys();
  v34 = v121;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v34)
  {
    goto LABEL_4;
  }

  v95 = v23;
  v94 = v20;
  v35 = v119;
  v96 = v31;
  v121 = v28;
  LOBYTE(v123) = 0;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  v38 = v37;

  v39._countAndFlagsBits = v36;
  v39._object = v38;
  __RKEntityTriggerSpecification.Name.init(rawValue:)(v39);
  v40 = v123;
  if (v123 == 14)
  {
    lazy protocol witness table accessor for type __RKEntityTriggerSpecification.TriggerError and conformance __RKEntityTriggerSpecification.TriggerError();
    swift_allocError();
    *v41 = v36;
    v41[1] = v38;
    swift_willThrow();
    (*(v118 + 8))(v27, v24);
LABEL_4:
    v42 = v120;
    return __swift_destroy_boxed_opaque_existential_1(v42);
  }

  v44 = v116;
  switch(v40)
  {
    case 4:
      LOBYTE(v123) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification.ProximityCodingKeys and conformance __RKEntityTriggerSpecification.ProximityCodingKeys();
      v51 = v95;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v123) = 0;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v52 = v94;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      LOBYTE(v123) = 1;
      KeyedDecodingContainer.decode(_:forKey:)();
      v77 = v105;
      v81 = v80;
      v122 = 2;
      lazy protocol witness table accessor for type __RKEntityProximityTrigger.ExitType and conformance __RKEntityProximityTrigger.ExitType();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v84 = v123;
      if (v123 == 3)
      {
        LOBYTE(v123) = 2;
        v89 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v105 + 8))(v95, v94);
        (*(v118 + 8))(v27, v24);
        v84 = 2 * (v89 != 0);
      }

      else
      {
        (*(v77 + 8))(v51, v52);
        (*(v118 + 8))(v27, v24);
      }

      v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMd, &_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMR);
      v91 = *(v90 + 48);
      v92 = *(v90 + 64);
      v76 = v96;
      (*(v107 + 32))(v96, v106, v114);
      *(v76 + v91) = v81;
      *(v76 + v92) = v84;
      v49 = v120;
      v83 = v115;
      break;
    case 8:
      LOBYTE(v123) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification.TapTargetCodingKeys and conformance __RKEntityTriggerSpecification.TapTargetCodingKeys();
      v65 = v110;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v119 = v27;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v69 = v97;
      v70 = v114;
      v71 = v101;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v49 = v120;
      v83 = v115;
      v72 = v118;
      (*(v100 + 8))(v65, v71);
      (*(v72 + 8))(v119, v24);
      v76 = v96;
      (*(v107 + 32))(v96, v69, v70);
      break;
    case 10:
      v60 = v35;
      LOBYTE(v123) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CollisionCodingKeys and conformance __RKEntityTriggerSpecification.CollisionCodingKeys();
      v61 = v113;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v62 = v27;
      LOBYTE(v123) = 0;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v49 = v120;
      v63 = v118;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
      v122 = 2;
      lazy protocol witness table accessor for type [UUID] and conformance <A> [A]();
      KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
      v64 = v123;
      if (!v123)
      {
        v64 = MEMORY[0x1E69E7CC0];
      }

      v117 = v64;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      v122 = 1;
      lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v44 + 8))(v61, v60);
      (*(v63 + 8))(v62, v24);
      v85 = v123;
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMd, &_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMR);
      v87 = *(v86 + 48);
      v88 = *(v86 + 64);
      v76 = v96;
      (*(v107 + 32))(v96, v108, v114);
      *(v76 + v87) = v117;
      *(v76 + v88) = v85;
      goto LABEL_17;
    case 11:
      LOBYTE(v123) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CustomCodingKeys and conformance __RKEntityTriggerSpecification.CustomCodingKeys();
      v45 = v109;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v46 = v27;
      v47 = v99;
      v48 = KeyedDecodingContainer.decode(_:forKey:)();
      v49 = v120;
      v50 = v118;
      v73 = v48;
      v75 = v74;
      (*(v98 + 8))(v45, v47);
      (*(v50 + 8))(v46, v24);
      v76 = v96;
      *v96 = v73;
      *(v76 + 8) = v75;
LABEL_17:
      v83 = v115;
      break;
    case 12:
      LOBYTE(v123) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys and conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys();
      v53 = v111;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v54 = v27;
      LOBYTE(v123) = 0;
      v55 = v102;
      v56 = v53;
      v57 = KeyedDecodingContainer.decode(_:forKey:)();
      v49 = v120;
      v58 = v118;
      v119 = v57;
      v79 = v78;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
      v122 = 1;
      lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v117 + 8))(v56, v55);
      (*(v58 + 8))(v54, v24);
      v82 = v123;
      v76 = v96;
      *v96 = v119;
      *(v76 + 8) = v79;
      *(v76 + 16) = v82;
      v83 = v115;
      break;
    case 13:
      LOBYTE(v123) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification.GroupCodingKeys and conformance __RKEntityTriggerSpecification.GroupCodingKeys();
      v59 = v112;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v66 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit30__RKEntityTriggerSpecificationOGMd, &_sSay10RealityKit30__RKEntityTriggerSpecificationOGMR);
      lazy protocol witness table accessor for type [__RKEntityTriggerSpecification] and conformance <A> [A]();
      v67 = v104;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v49 = v120;
      v83 = v115;
      v68 = v118;
      (*(v103 + 8))(v59, v67);
      (*(v68 + 8))(v66, v24);
      v76 = v96;
      *v96 = v123;
      break;
    default:
      (*(v118 + 8))(v27, v24);
      v49 = v120;
      v83 = v115;
      v76 = v96;
      break;
  }

  swift_storeEnumTagMultiPayload();
  outlined init with take of __RKEntityTriggerSpecification(v76, v83, type metadata accessor for __RKEntityTriggerSpecification);
  v42 = v49;
  return __swift_destroy_boxed_opaque_existential_1(v42);
}

uint64_t __RKEntityTriggerSpecification.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO15GroupCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO15GroupCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v111 = *(v2 - 8);
  v112 = v2;
  v3 = *(v111 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v110 = &v97 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO29CustomWithArgumentsCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO29CustomWithArgumentsCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v113 = *(v5 - 8);
  v114 = v5;
  v6 = *(v113 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v100 = &v97 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO16CustomCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO16CustomCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v105 = *(v8 - 8);
  v106 = v8;
  v9 = *(v105 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v121 = &v97 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO19CollisionCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO19CollisionCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v116 = *(v11 - 8);
  v117 = v11;
  v12 = *(v116 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v115 = &v97 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO19ProximityCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO19ProximityCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v108 = *(v14 - 8);
  v109 = v14;
  v15 = *(v108 + 64);
  MEMORY[0x1EEE9AC00](v14);
  v107 = &v97 - v16;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO19TapTargetCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO19TapTargetCodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v102 = *(v103 - 8);
  v17 = *(v102 + 64);
  MEMORY[0x1EEE9AC00](v103);
  v101 = &v97 - v18;
  v118 = type metadata accessor for UUID();
  v120 = *(v118 - 8);
  v19 = *(v120 + 64);
  MEMORY[0x1EEE9AC00](v118);
  v104 = &v97 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v97 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v97 - v25;
  v119 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v27 = *(*(v119 - 8) + 64);
  MEMORY[0x1EEE9AC00](v119);
  v29 = (&v97 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityTriggerSpecificationO10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v97 - v33;
  v35 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CodingKeys and conformance __RKEntityTriggerSpecification.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v36 = v122;
  __RKEntityTriggerSpecification.name.getter(&v124);
  __RKEntityTriggerSpecification.Name.rawValue.getter();
  v125 = 0;
  v37 = v123;
  KeyedEncodingContainer.encode(_:forKey:)();
  v123 = v37;
  if (v37)
  {
    (*(v31 + 8))(v34, v30);
  }

  v39 = v121;
  v97 = v23;
  v40 = v120;
  v98 = v34;
  v99 = v31;

  outlined init with copy of __RKEntityTriggerSpecification(v36, v29, type metadata accessor for __RKEntityTriggerSpecification);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v42 = v29;
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      v43 = v40;
      if (EnumCaseMultiPayload != 1)
      {
        if (EnumCaseMultiPayload == 2)
        {
          v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMd, &_s10Foundation4UUIDV6target_SayACG17collidingEntitiesSaySSG4tagstMR);
          v122 = *(v29 + *(v44 + 48));
          v45 = *(v29 + *(v44 + 64));
          v46 = v104;
          v47 = v118;
          (*(v40 + 32))(v104, v42, v118);
          LOBYTE(v124) = 1;
          lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CollisionCodingKeys and conformance __RKEntityTriggerSpecification.CollisionCodingKeys();
          v48 = v115;
          v49 = v30;
          v50 = v98;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          LOBYTE(v124) = 0;
          lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
          v51 = v117;
          v52 = v123;
          KeyedEncodingContainer.encode<A>(_:forKey:)();
          v123 = v52;
          if (!v52)
          {
            v124 = v122;
            v125 = 2;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4UUIDVGMd, &_sSay10Foundation4UUIDVGMR);
            lazy protocol witness table accessor for type [UUID] and conformance <A> [A]();
            v92 = v123;
            KeyedEncodingContainer.encode<A>(_:forKey:)();
            v123 = v92;

            if (v92)
            {
              (*(v116 + 8))(v48, v51);
              (*(v43 + 8))(v46, v47);
              (*(v99 + 8))(v50, v49);
            }

            else
            {
              v122 = v45;
              v124 = v45;
              v125 = 1;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
              lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A]);
              v95 = v123;
              KeyedEncodingContainer.encode<A>(_:forKey:)();
              v96 = v99;
              v123 = v95;
              (*(v116 + 8))(v48, v51);
              (*(v43 + 8))(v46, v47);
              (*(v96 + 8))(v50, v49);
            }
          }

          (*(v116 + 8))(v48, v51);
          (*(v43 + 8))(v46, v47);
          return (*(v99 + 8))(v50, v49);
        }

        goto LABEL_18;
      }

      v73 = *(v40 + 32);
      v74 = v26;
      v75 = v118;
      v73(v26, v29, v118);
      LOBYTE(v124) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification.TapTargetCodingKeys and conformance __RKEntityTriggerSpecification.TapTargetCodingKeys();
      v76 = v101;
      v77 = v98;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v78 = v103;
      v79 = v123;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v123 = v79;
      (*(v102 + 8))(v76, v78);
      (*(v43 + 8))(v74, v75);
      return (*(v99 + 8))(v77, v30);
    }

    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMd, &_s10Foundation4UUIDV6target_Sf8distance10RealityKit26__RKEntityProximityTriggerC8ExitTypeO4typetMR);
    v60 = *(v29 + *(v59 + 48));
    v61 = *(v29 + *(v59 + 64));
    v62 = v40;
    v63 = *(v40 + 32);
    v64 = v97;
    v65 = v118;
    v63(v97, v42, v118);
    LOBYTE(v124) = 1;
    lazy protocol witness table accessor for type __RKEntityTriggerSpecification.ProximityCodingKeys and conformance __RKEntityTriggerSpecification.ProximityCodingKeys();
    v66 = v107;
    v49 = v30;
    v50 = v98;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    LOBYTE(v124) = 0;
    lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v67 = v109;
    v68 = v123;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v123 = v68;
    if (!v68)
    {
      v87 = v61;
      LOBYTE(v124) = 1;
      v88 = v66;
      KeyedEncodingContainer.encode(_:forKey:)();
      v89 = v99;
      v123 = 0;
      v90 = v108;
      LOBYTE(v124) = v87;
      v125 = 2;
      lazy protocol witness table accessor for type __RKEntityProximityTrigger.ExitType and conformance __RKEntityProximityTrigger.ExitType();
      v91 = v123;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v123 = v91;
      (*(v90 + 8))(v88, v67);
      (*(v62 + 8))(v97, v65);
      return (*(v89 + 8))(v50, v49);
    }

    (*(v108 + 8))(v66, v67);
    (*(v62 + 8))(v64, v65);
    return (*(v99 + 8))(v50, v49);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v70 = *v29;
    v69 = v29[1];
    LOBYTE(v124) = 1;
    lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CustomCodingKeys and conformance __RKEntityTriggerSpecification.CustomCodingKeys();
    v49 = v30;
    v50 = v98;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v71 = v106;
    v72 = v123;
    KeyedEncodingContainer.encode(_:forKey:)();
    v123 = v72;

    (*(v105 + 8))(v39, v71);
    return (*(v99 + 8))(v50, v49);
  }

  if (EnumCaseMultiPayload != 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v53 = *v29;
      LOBYTE(v124) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification.GroupCodingKeys and conformance __RKEntityTriggerSpecification.GroupCodingKeys();
      v54 = v110;
      v55 = v30;
      v56 = v98;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v124 = v53;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit30__RKEntityTriggerSpecificationOGMd, &_sSay10RealityKit30__RKEntityTriggerSpecificationOGMR);
      lazy protocol witness table accessor for type [__RKEntityTriggerSpecification] and conformance <A> [A]();
      v57 = v112;
      v58 = v123;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v123 = v58;
      (*(v111 + 8))(v54, v57);
      (*(v99 + 8))(v56, v55);
    }

LABEL_18:
    (*(v99 + 8))(v98, v30);
    return outlined destroy of __RKEntityTriggerSpecification(v29, type metadata accessor for __RKEntityTriggerSpecification);
  }

  v81 = *v29;
  v80 = v29[1];
  v82 = v42[2];
  LOBYTE(v124) = 1;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys and conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys();
  v83 = v100;
  v84 = v98;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  LOBYTE(v124) = 0;
  v85 = v114;
  v86 = v123;
  KeyedEncodingContainer.encode(_:forKey:)();
  v123 = v86;
  if (!v86)
  {

    v124 = v82;
    v125 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGSgMd, &_sSDyS2SGSgMR);
    lazy protocol witness table accessor for type [String : String]? and conformance <A> A?();
    v93 = v123;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v94 = v99;
    v123 = v93;
    (*(v113 + 8))(v83, v85);
    (*(v94 + 8))(v84, v30);
  }

  (*(v113 + 8))(v83, v85);
  return (*(v99 + 8))(v84, v30);
}

RealityKit::__RKEntityActionSpecification::Name_optional __swiftcall __RKEntityActionSpecification.Name.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  v5 = 0;
  v6 = 4;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
      goto LABEL_11;
    case 3:
      v5 = 3;
LABEL_11:
      v6 = v5;
      break;
    case 4:
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    case 21:
      v6 = 21;
      break;
    default:
      v6 = 22;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t __RKEntityActionSpecification.Name.rawValue.getter()
{
  result = 0x6F69647561;
  switch(*v0)
  {
    case 1:
      result = 0x635365676E616863;
      break;
    case 2:
      result = 0x6D6F74737563;
      break;
    case 3:
      result = 0x7369736168706D65;
      break;
    case 4:
      v2 = 1701077350;
      goto LABEL_14;
    case 5:
      result = 0x6E65635365646166;
      break;
    case 6:
      result = 0x6563726F66;
      break;
    case 7:
      result = 0x70756F7267;
      break;
    case 8:
      result = 1701079400;
      break;
    case 9:
      result = 0x614374416B6F6F6CLL;
      break;
    case 0xA:
      result = 0x746E45746962726FLL;
      break;
    case 0xB:
      result = 0x656D695479616C70;
      break;
    case 0xC:
      result = 0x696361704F746573;
      break;
    case 0xD:
      result = 2003789939;
      break;
    case 0xE:
      result = 1852403827;
      break;
    case 0xF:
      result = 0x696E417472617473;
      break;
    case 0x10:
      result = 0x6D696E41706F7473;
      break;
    case 0x11:
      v2 = 1885435763;
LABEL_14:
      result = v2 | 0x69746E4500000000;
      break;
    case 0x12:
      result = 0x6E41656C67676F74;
      break;
    case 0x13:
      result = 0xD000000000000010;
      break;
    case 0x14:
      result = 0x726F66736E617274;
      break;
    case 0x15:
      result = 1953063287;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntityTriggerSpecification.Name(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v14 = *a1;
  v13 = *a2;
  v6 = a5();
  v8 = v7;
  if (v6 == a5() && v8 == v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityTriggerSpecification.Name(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = *v3;
  v6 = Hasher.init(_seed:)();
  a3(v6);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __RKEntityTriggerSpecification.Name(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v6 = *v4;
  a4();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityTriggerSpecification.Name(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  v6 = *v4;
  v7 = Hasher.init(_seed:)();
  a4(v7);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityActionSpecification.Name@<X0>(uint64_t *a1@<X8>)
{
  result = __RKEntityActionSpecification.Name.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t __RKEntityActionSpecification.name.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for __RKEntityActionSpecification(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of __RKEntityTriggerSpecification(v2, v7, type metadata accessor for __RKEntityActionSpecification);
  result = swift_getEnumCaseMultiPayload();
  switch(result)
  {
    case 1:
      v9 = 1;
      goto LABEL_24;
    case 2:
      v9 = 2;
      goto LABEL_24;
    case 3:
      v9 = 3;
      goto LABEL_24;
    case 4:
      v9 = 4;
      goto LABEL_24;
    case 5:
      *a1 = 5;
      return result;
    case 6:
      result = outlined destroy of __RKEntityTriggerSpecification(v7, type metadata accessor for __RKEntityActionSpecification);
      *a1 = 7;
      return result;
    case 7:
      v9 = 8;
      goto LABEL_24;
    case 8:
      v9 = 6;
      goto LABEL_24;
    case 9:
      v9 = 13;
      goto LABEL_24;
    case 10:
      v9 = 15;
      goto LABEL_24;
    case 11:
      v9 = 16;
      goto LABEL_24;
    case 12:
      v9 = 18;
      goto LABEL_24;
    case 13:
      v9 = 19;
      goto LABEL_24;
    case 14:
      v9 = 20;
      goto LABEL_24;
    case 15:
      *a1 = 21;
      return result;
    case 16:
      v9 = 10;
      goto LABEL_24;
    case 17:
      v9 = 9;
      goto LABEL_24;
    case 18:
      v9 = 17;
      goto LABEL_24;
    case 19:
      v9 = 14;
      goto LABEL_24;
    case 20:
      v9 = 12;
      goto LABEL_24;
    case 21:
      v9 = 11;
LABEL_24:
      *a1 = v9;
      break;
    default:
      *a1 = 0;
      break;
  }

  return outlined destroy of __RKEntityTriggerSpecification(v7, type metadata accessor for __RKEntityActionSpecification);
}

uint64_t __RKEntityActionSpecification.target.getter@<X0>(uint64_t a1@<X8>)
{
  v103 = a1;
  v1 = type metadata accessor for __RKEntityPlayTimelineActionArguments(0);
  v2 = *(*(v1 - 8) + 64);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v102 = &v91 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for __RKEntitySetOpacityActionArguments(0);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v101 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for __RKEntityCustomActionArguments(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v100 = &v91 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for __RKEntitySpinActionArguments(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v99 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for __RKEntitySwapEntityActionArguments(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v98 = &v91 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  v17 = *(*(v16 - 8) + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v97 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  v20 = *(*(v19 - 8) + 64);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v96 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for __RKEntityForceActionArguments(0);
  v23 = *(*(v22 - 8) + 64);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v95 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for __RKEntityTransformActionArguments(0);
  v26 = *(*(v25 - 8) + 64);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v94 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for __RKChangeSceneActionArguments(0);
  v29 = *(*(v28 - 8) + 64);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v93 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for __RKEntityFadeActionArguments(0);
  v32 = *(*(v31 - 8) + 64);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v92 = &v91 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  v35 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34 - 8);
  v37 = &v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for __RKEntityAudioActionArguments(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v41 = &v91 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for __RKEntityHideActionArguments(0);
  v43 = *(*(v42 - 8) + 64);
  MEMORY[0x1EEE9AC00](v42 - 8);
  v45 = &v91 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for __RKEntityShowActionArguments(0);
  v47 = *(*(v46 - 8) + 64);
  MEMORY[0x1EEE9AC00](v46 - 8);
  v49 = &v91 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for __RKEntityToggleVisibilityActionArguments(0);
  v51 = *(*(v50 - 8) + 64);
  MEMORY[0x1EEE9AC00](v50 - 8);
  v53 = &v91 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for __RKEntityStopAnimateActionArguments(0);
  v55 = *(*(v54 - 8) + 64);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v57 = &v91 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  v59 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started - 8);
  v61 = &v91 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for __RKEntityToggleAnimateActionArguments(0);
  v63 = *(*(v62 - 8) + 64);
  MEMORY[0x1EEE9AC00](v62 - 8);
  v65 = &v91 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for __RKEntityActionSpecification(0);
  v67 = *(*(v66 - 8) + 64);
  MEMORY[0x1EEE9AC00](v66);
  v69 = &v91 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of __RKEntityTriggerSpecification(v104, v69, type metadata accessor for __RKEntityActionSpecification);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v75 = v93;
      outlined init with take of __RKEntityTriggerSpecification(v69, v93, type metadata accessor for __RKChangeSceneActionArguments);
      v70 = type metadata accessor for UUID();
      v71 = *(v70 - 8);
      v72 = v103;
      (*(v71 + 16))(v103, v75, v70);
      v76 = type metadata accessor for __RKChangeSceneActionArguments;
      goto LABEL_20;
    case 2u:
      v75 = v100;
      outlined init with take of __RKEntityTriggerSpecification(v69, v100, type metadata accessor for __RKEntityCustomActionArguments);
      v70 = type metadata accessor for UUID();
      v71 = *(v70 - 8);
      v72 = v103;
      (*(v71 + 16))(v103, v75, v70);
      v76 = type metadata accessor for __RKEntityCustomActionArguments;
      goto LABEL_20;
    case 3u:
      outlined init with take of __RKEntityTriggerSpecification(v69, v37, type metadata accessor for __RKEntityEmphasisActionArguments);
      v85 = type metadata accessor for UUID();
      v86 = *(v85 - 8);
      v87 = v103;
      (*(v86 + 32))(v103, v37, v85);
      return (*(v86 + 56))(v87, 0, 1, v85);
    case 4u:
      v81 = type metadata accessor for __RKEntityFadeActionArguments;
      v82 = v69;
      v83 = v92;
      goto LABEL_25;
    case 5u:
    case 0xFu:
      goto LABEL_11;
    case 6u:
      outlined destroy of __RKEntityTriggerSpecification(v69, type metadata accessor for __RKEntityActionSpecification);
LABEL_11:
      v84 = type metadata accessor for UUID();
      return (*(*(v84 - 8) + 56))(v103, 1, 1, v84);
    case 7u:
      outlined init with take of __RKEntityTriggerSpecification(v69, v45, type metadata accessor for __RKEntityHideActionArguments);
      v70 = type metadata accessor for UUID();
      v71 = *(v70 - 8);
      v72 = v103;
      (*(v71 + 32))(v103, v45, v70);
      return (*(v71 + 56))(v72, 0, 1, v70);
    case 8u:
      v81 = type metadata accessor for __RKEntityForceActionArguments;
      v82 = v69;
      v83 = v95;
      goto LABEL_25;
    case 9u:
      outlined init with take of __RKEntityTriggerSpecification(v69, v49, type metadata accessor for __RKEntityShowActionArguments);
      v70 = type metadata accessor for UUID();
      v71 = *(v70 - 8);
      v72 = v103;
      (*(v71 + 32))(v103, v49, v70);
      return (*(v71 + 56))(v72, 0, 1, v70);
    case 0xAu:
      outlined init with take of __RKEntityTriggerSpecification(v69, v61, type metadata accessor for __RKEntityStartAnimateActionArguments);
      v77 = type metadata accessor for UUID();
      v78 = *(v77 - 8);
      v79 = v103;
      (*(v78 + 16))(v103, v61, v77);
      outlined destroy of __RKEntityTriggerSpecification(v61, type metadata accessor for __RKEntityStartAnimateActionArguments);
      return (*(v78 + 56))(v79, 0, 1, v77);
    case 0xBu:
      outlined init with take of __RKEntityTriggerSpecification(v69, v57, type metadata accessor for __RKEntityStopAnimateActionArguments);
      v70 = type metadata accessor for UUID();
      v71 = *(v70 - 8);
      v72 = v103;
      (*(v71 + 32))(v103, v57, v70);
      return (*(v71 + 56))(v72, 0, 1, v70);
    case 0xCu:
      outlined init with take of __RKEntityTriggerSpecification(v69, v65, type metadata accessor for __RKEntityToggleAnimateActionArguments);
      v88 = type metadata accessor for UUID();
      v89 = *(v88 - 8);
      v90 = v103;
      (*(v89 + 32))(v103, v65, v88);
      return (*(v89 + 56))(v90, 0, 1, v88);
    case 0xDu:
      outlined init with take of __RKEntityTriggerSpecification(v69, v53, type metadata accessor for __RKEntityToggleVisibilityActionArguments);
      v70 = type metadata accessor for UUID();
      v71 = *(v70 - 8);
      v72 = v103;
      (*(v71 + 32))(v103, v53, v70);
      return (*(v71 + 56))(v72, 0, 1, v70);
    case 0xEu:
      v75 = v94;
      outlined init with take of __RKEntityTriggerSpecification(v69, v94, type metadata accessor for __RKEntityTransformActionArguments);
      v70 = type metadata accessor for UUID();
      v71 = *(v70 - 8);
      v72 = v103;
      (*(v71 + 16))(v103, v75, v70);
      v76 = type metadata accessor for __RKEntityTransformActionArguments;
      goto LABEL_20;
    case 0x10u:
      v75 = v96;
      outlined init with take of __RKEntityTriggerSpecification(v69, v96, type metadata accessor for __RKEntityOrbitEntityActionArguments);
      v70 = type metadata accessor for UUID();
      v71 = *(v70 - 8);
      v72 = v103;
      (*(v71 + 16))(v103, v75, v70);
      v76 = type metadata accessor for __RKEntityOrbitEntityActionArguments;
      goto LABEL_20;
    case 0x11u:
      v81 = type metadata accessor for __RKEntityLookAtCameraActionArguments;
      v82 = v69;
      v83 = v97;
      goto LABEL_25;
    case 0x12u:
      v75 = v98;
      outlined init with take of __RKEntityTriggerSpecification(v69, v98, type metadata accessor for __RKEntitySwapEntityActionArguments);
      v70 = type metadata accessor for UUID();
      v71 = *(v70 - 8);
      v72 = v103;
      (*(v71 + 16))(v103, v75, v70);
      v76 = type metadata accessor for __RKEntitySwapEntityActionArguments;
      goto LABEL_20;
    case 0x13u:
      v81 = type metadata accessor for __RKEntitySpinActionArguments;
      v82 = v69;
      v83 = v99;
      goto LABEL_25;
    case 0x14u:
      v81 = type metadata accessor for __RKEntitySetOpacityActionArguments;
      v82 = v69;
      v83 = v101;
LABEL_25:
      outlined init with take of __RKEntityTriggerSpecification(v82, v83, v81);
      v70 = type metadata accessor for UUID();
      v71 = *(v70 - 8);
      v72 = v103;
      (*(v71 + 32))(v103, v83, v70);
      return (*(v71 + 56))(v72, 0, 1, v70);
    case 0x15u:
      v75 = v102;
      outlined init with take of __RKEntityTriggerSpecification(v69, v102, type metadata accessor for __RKEntityPlayTimelineActionArguments);
      v70 = type metadata accessor for UUID();
      v71 = *(v70 - 8);
      v72 = v103;
      (*(v71 + 16))(v103, v75, v70);
      v76 = type metadata accessor for __RKEntityPlayTimelineActionArguments;
LABEL_20:
      v73 = v76;
      v74 = v75;
      goto LABEL_21;
    default:
      outlined init with take of __RKEntityTriggerSpecification(v69, v41, type metadata accessor for __RKEntityAudioActionArguments);
      v70 = type metadata accessor for UUID();
      v71 = *(v70 - 8);
      v72 = v103;
      (*(v71 + 16))(v103, v41, v70);
      v73 = type metadata accessor for __RKEntityAudioActionArguments;
      v74 = v41;
LABEL_21:
      outlined destroy of __RKEntityTriggerSpecification(v74, v73);
      return (*(v71 + 56))(v72, 0, 1, v70);
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntityActionSpecification.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x746E656D75677261;
  }

  else
  {
    v4 = 1701667182;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE900000000000073;
  }

  if (*a2)
  {
    v6 = 0x746E656D75677261;
  }

  else
  {
    v6 = 1701667182;
  }

  if (*a2)
  {
    v7 = 0xE900000000000073;
  }

  else
  {
    v7 = 0xE400000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityActionSpecification.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __RKEntityActionSpecification.CodingKeys()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityActionSpecification.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityActionSpecification.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 1701667182;
  if (*v1)
  {
    v2 = 0x746E656D75677261;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntityActionSpecification.CodingKeys()
{
  if (*v0)
  {
    result = 0x746E656D75677261;
  }

  else
  {
    result = 1701667182;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, Swift::OpaquePointer cases@<0:X4>, char *a3@<X8>)
{
  object = string._object;
  v4._countAndFlagsBits = string._countAndFlagsBits;
  v4._object = object;
  v6 = _findStringSwitchCase(cases:string:)(cases, v4);

  if (v6 == 1)
  {
    v8 = 1;
  }

  else
  {
    v8 = 2;
  }

  if (!v6)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityActionSpecification.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityActionSpecification.CodingKeys and conformance __RKEntityActionSpecification.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityActionSpecification.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityActionSpecification.CodingKeys and conformance __RKEntityActionSpecification.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityActionSpecification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v125 = a2;
  v128 = type metadata accessor for __RKEntityPlayTimelineActionArguments(0);
  v3 = *(*(v128 - 8) + 64);
  MEMORY[0x1EEE9AC00](v128);
  v124 = &v91 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for __RKEntitySetOpacityActionArguments(0);
  v5 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v123 = &v91 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for __RKEntitySpinActionArguments(0);
  v7 = *(*(v126 - 8) + 64);
  MEMORY[0x1EEE9AC00](v126);
  v122 = &v91 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = type metadata accessor for __RKEntitySwapEntityActionArguments(0);
  v9 = *(*(v120 - 8) + 64);
  MEMORY[0x1EEE9AC00](v120);
  v121 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  v11 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v119 = &v91 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  v13 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v91 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for __RKEntityForceActionArguments(0);
  v15 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v114);
  v115 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = type metadata accessor for __RKEntityTransformActionArguments(0);
  v17 = *(*(v112 - 8) + 64);
  MEMORY[0x1EEE9AC00](v112);
  v113 = &v91 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for __RKEntityFadeActionArguments(0);
  v19 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v111 = &v91 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for __RKChangeSceneActionArguments(0);
  v21 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  v23 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v130 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for __RKEntityAudioActionArguments(0);
  v25 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for __RKEntityHideActionArguments(0);
  v27 = *(*(v103 - 8) + 64);
  MEMORY[0x1EEE9AC00](v103);
  v104 = &v91 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v101 = type metadata accessor for __RKEntityShowActionArguments(0);
  v29 = *(*(v101 - 8) + 64);
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v91 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for __RKEntityToggleVisibilityActionArguments(0);
  v31 = *(*(v99 - 8) + 64);
  MEMORY[0x1EEE9AC00](v99);
  v100 = &v91 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for __RKEntityStopAnimateActionArguments(0);
  v33 = *(*(v97 - 8) + 64);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v91 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  v35 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  v96 = &v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for __RKEntityToggleAnimateActionArguments(0);
  v37 = *(*(v93 - 8) + 64);
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v91 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for __RKEntityCustomActionArguments(0);
  v40 = *(*(v39 - 8) + 64);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v91 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit29__RKEntityActionSpecificationO10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit29__RKEntityActionSpecificationO10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v129 = *(v43 - 8);
  v44 = *(v129 + 64);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v91 - v45;
  v47 = type metadata accessor for __RKEntityActionSpecification(0);
  v48 = *(*(v47 - 8) + 64);
  MEMORY[0x1EEE9AC00](v47);
  v50 = &v91 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = a1[3];
  v52 = a1[4];
  v131 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v51);
  lazy protocol witness table accessor for type __RKEntityActionSpecification.CodingKeys and conformance __RKEntityActionSpecification.CodingKeys();
  v53 = v132;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v53)
  {
    goto LABEL_5;
  }

  v92 = v42;
  v54 = v130;
  v132 = v50;
  LOBYTE(v133) = 0;
  v55 = v43;
  v56 = KeyedDecodingContainer.decode(_:forKey:)();
  v58 = v57;

  v59._countAndFlagsBits = v56;
  v59._object = v58;
  __RKEntityActionSpecification.Name.init(rawValue:)(v59);
  if (v133 == 22)
  {
    lazy protocol witness table accessor for type __RKEntityActionSpecification.ActionError and conformance __RKEntityActionSpecification.ActionError();
    swift_allocError();
    *v60 = v56;
    v60[1] = v58;
    swift_willThrow();
    (*(v129 + 8))(v46, v43);
LABEL_5:
    v61 = v131;
    return __swift_destroy_boxed_opaque_existential_1(v61);
  }

  switch(v126)
  {
    case 1:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKChangeSceneActionArguments and conformance __RKChangeSceneActionArguments, type metadata accessor for __RKChangeSceneActionArguments);
      v80 = v109;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = v125;
      (*(v129 + 8))(v46, v43);
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v80, v132, type metadata accessor for __RKChangeSceneActionArguments);
      goto LABEL_52;
    case 2:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityCustomActionArguments and conformance __RKEntityCustomActionArguments, type metadata accessor for __RKEntityCustomActionArguments);
      v72 = v92;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v129 + 8))(v46, v55);
      v64 = v125;
      v73 = v131;
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v72, v132, type metadata accessor for __RKEntityCustomActionArguments);
      goto LABEL_53;
    case 3:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityEmphasisActionArguments and conformance __RKEntityEmphasisActionArguments, type metadata accessor for __RKEntityEmphasisActionArguments);
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = v125;
      (*(v129 + 8))(v46, v43);
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v54, v132, type metadata accessor for __RKEntityEmphasisActionArguments);
      goto LABEL_52;
    case 4:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityFadeActionArguments and conformance __RKEntityFadeActionArguments, type metadata accessor for __RKEntityFadeActionArguments);
      v69 = v111;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = v125;
      (*(v129 + 8))(v46, v43);
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v69, v132, type metadata accessor for __RKEntityFadeActionArguments);
      goto LABEL_52;
    case 5:
      v140 = 1;
      lazy protocol witness table accessor for type __RKFadeSceneActionArguments and conformance __RKFadeSceneActionArguments();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = v125;
      (*(v129 + 8))(v46, v43);
      v83 = v134;
      v84 = v135;
      v65 = v132;
      *v132 = v133;
      v65[1] = v83;
      *(v65 + 8) = v84;
      goto LABEL_52;
    case 6:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityForceActionArguments and conformance __RKEntityForceActionArguments, type metadata accessor for __RKEntityForceActionArguments);
      v86 = v115;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = v125;
      (*(v129 + 8))(v46, v43);
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v86, v132, type metadata accessor for __RKEntityForceActionArguments);
      goto LABEL_52;
    case 7:
      v140 = 1;
      lazy protocol witness table accessor for type __RKEntityActionGroupArguments and conformance __RKEntityActionGroupArguments();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v129 + 8))(v46, v43);
      v64 = v125;
      v75 = v135;
      v76 = v136;
      v77 = v137;
      v78 = v138;
      v79 = v139;
      v65 = v132;
      *v132 = v133;
      *(v65 + 1) = v75;
      *(v65 + 16) = v76;
      *(v65 + 3) = v77;
      *(v65 + 32) = v78;
      *(v65 + 33) = v79;
      goto LABEL_52;
    case 8:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityHideActionArguments and conformance __RKEntityHideActionArguments, type metadata accessor for __RKEntityHideActionArguments);
      v89 = v104;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = v125;
      (*(v129 + 8))(v46, v43);
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v89, v132, type metadata accessor for __RKEntityHideActionArguments);
      goto LABEL_52;
    case 9:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityLookAtCameraActionArguments and conformance __RKEntityLookAtCameraActionArguments, type metadata accessor for __RKEntityLookAtCameraActionArguments);
      v71 = v119;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = v125;
      (*(v129 + 8))(v46, v43);
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v71, v132, type metadata accessor for __RKEntityLookAtCameraActionArguments);
      goto LABEL_52;
    case 10:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityOrbitEntityActionArguments and conformance __RKEntityOrbitEntityActionArguments, type metadata accessor for __RKEntityOrbitEntityActionArguments);
      v88 = v117;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = v125;
      (*(v129 + 8))(v46, v43);
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v88, v132, type metadata accessor for __RKEntityOrbitEntityActionArguments);
      goto LABEL_52;
    case 11:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityPlayTimelineActionArguments and conformance __RKEntityPlayTimelineActionArguments, type metadata accessor for __RKEntityPlayTimelineActionArguments);
      v68 = v124;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = v125;
      (*(v129 + 8))(v46, v43);
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v68, v132, type metadata accessor for __RKEntityPlayTimelineActionArguments);
      goto LABEL_52;
    case 12:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntitySetOpacityActionArguments and conformance __RKEntitySetOpacityActionArguments, type metadata accessor for __RKEntitySetOpacityActionArguments);
      v70 = v123;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = v125;
      (*(v129 + 8))(v46, v43);
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v70, v132, type metadata accessor for __RKEntitySetOpacityActionArguments);
      goto LABEL_52;
    case 13:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityShowActionArguments and conformance __RKEntityShowActionArguments, type metadata accessor for __RKEntityShowActionArguments);
      v85 = v102;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = v125;
      (*(v129 + 8))(v46, v43);
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v85, v132, type metadata accessor for __RKEntityShowActionArguments);
      goto LABEL_52;
    case 14:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntitySpinActionArguments and conformance __RKEntitySpinActionArguments, type metadata accessor for __RKEntitySpinActionArguments);
      v67 = v122;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = v125;
      (*(v129 + 8))(v46, v43);
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v67, v132, type metadata accessor for __RKEntitySpinActionArguments);
      goto LABEL_52;
    case 15:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityStartAnimateActionArguments and conformance __RKEntityStartAnimateActionArguments, type metadata accessor for __RKEntityStartAnimateActionArguments);
      v74 = v96;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v129 + 8))(v46, v43);
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v74, v132, type metadata accessor for __RKEntityStartAnimateActionArguments);
      v73 = v131;
      v64 = v125;
      goto LABEL_53;
    case 16:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityStopAnimateActionArguments and conformance __RKEntityStopAnimateActionArguments, type metadata accessor for __RKEntityStopAnimateActionArguments);
      v66 = v98;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = v125;
      (*(v129 + 8))(v46, v43);
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v66, v132, type metadata accessor for __RKEntityStopAnimateActionArguments);
      goto LABEL_52;
    case 17:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntitySwapEntityActionArguments and conformance __RKEntitySwapEntityActionArguments, type metadata accessor for __RKEntitySwapEntityActionArguments);
      v81 = v121;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = v125;
      (*(v129 + 8))(v46, v43);
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v81, v132, type metadata accessor for __RKEntitySwapEntityActionArguments);
      goto LABEL_52;
    case 18:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityToggleAnimateActionArguments and conformance __RKEntityToggleAnimateActionArguments, type metadata accessor for __RKEntityToggleAnimateActionArguments);
      v87 = v94;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = v125;
      (*(v129 + 8))(v46, v43);
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v87, v132, type metadata accessor for __RKEntityToggleAnimateActionArguments);
      goto LABEL_52;
    case 19:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityToggleVisibilityActionArguments and conformance __RKEntityToggleVisibilityActionArguments, type metadata accessor for __RKEntityToggleVisibilityActionArguments);
      v90 = v100;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = v125;
      (*(v129 + 8))(v46, v43);
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v90, v132, type metadata accessor for __RKEntityToggleVisibilityActionArguments);
      goto LABEL_52;
    case 20:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityTransformActionArguments and conformance __RKEntityTransformActionArguments, type metadata accessor for __RKEntityTransformActionArguments);
      v82 = v113;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = v125;
      (*(v129 + 8))(v46, v43);
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v82, v132, type metadata accessor for __RKEntityTransformActionArguments);
      goto LABEL_52;
    case 21:
      v140 = 1;
      lazy protocol witness table accessor for type __RKWaitActionArguments and conformance __RKWaitActionArguments();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v129 + 8))(v46, v43);
      v64 = v125;
      v65 = v132;
      *v132 = v133;
      goto LABEL_52;
    default:
      LOBYTE(v133) = 1;
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityAudioActionArguments and conformance __RKEntityAudioActionArguments, type metadata accessor for __RKEntityAudioActionArguments);
      v63 = v106;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v64 = v125;
      (*(v129 + 8))(v46, v43);
      v65 = v132;
      outlined init with take of __RKEntityTriggerSpecification(v63, v132, type metadata accessor for __RKEntityAudioActionArguments);
LABEL_52:
      v73 = v131;
LABEL_53:
      swift_storeEnumTagMultiPayload();
      outlined init with take of __RKEntityTriggerSpecification(v65, v64, type metadata accessor for __RKEntityActionSpecification);
      v61 = v73;
      break;
  }

  return __swift_destroy_boxed_opaque_existential_1(v61);
}

uint64_t __RKEntityActionSpecification.encode(to:)(void *a1)
{
  v132 = type metadata accessor for __RKEntityPlayTimelineActionArguments(0);
  v2 = *(*(v132 - 8) + 64);
  MEMORY[0x1EEE9AC00](v132);
  v124 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = type metadata accessor for __RKEntitySetOpacityActionArguments(0);
  v4 = *(*(v131 - 8) + 64);
  MEMORY[0x1EEE9AC00](v131);
  v125 = &v95 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for __RKEntitySpinActionArguments(0);
  v6 = *(*(v122 - 8) + 64);
  MEMORY[0x1EEE9AC00](v122);
  v123 = &v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for __RKEntityForceActionArguments(0);
  v8 = *(*(v134 - 8) + 64);
  MEMORY[0x1EEE9AC00](v134);
  v121 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = type metadata accessor for __RKEntitySwapEntityActionArguments(0);
  v10 = *(*(v133 - 8) + 64);
  MEMORY[0x1EEE9AC00](v133);
  v120 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  v12 = *(*(v118 - 8) + 64);
  MEMORY[0x1EEE9AC00](v118);
  v119 = &v95 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  v14 = *(*(v116 - 8) + 64);
  MEMORY[0x1EEE9AC00](v116);
  v117 = &v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = type metadata accessor for __RKEntityTransformActionArguments(0);
  v16 = *(*(v114 - 8) + 64);
  MEMORY[0x1EEE9AC00](v114);
  v115 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for __RKEntityCustomActionArguments(0);
  v18 = *(*(v113 - 8) + 64);
  MEMORY[0x1EEE9AC00](v113);
  v130 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for __RKEntityFadeActionArguments(0);
  v20 = *(*(v111 - 8) + 64);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for __RKChangeSceneActionArguments(0);
  v22 = *(*(v110 - 8) + 64);
  MEMORY[0x1EEE9AC00](v110);
  v129 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  v24 = *(*(v108 - 8) + 64);
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v95 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = type metadata accessor for __RKEntityAudioActionArguments(0);
  v26 = *(*(v107 - 8) + 64);
  MEMORY[0x1EEE9AC00](v107);
  v128 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = type metadata accessor for __RKEntityHideActionArguments(0);
  v28 = *(*(v105 - 8) + 64);
  MEMORY[0x1EEE9AC00](v105);
  v106 = &v95 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = type metadata accessor for __RKEntityShowActionArguments(0);
  v30 = *(*(v104 - 8) + 64);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v127 = type metadata accessor for __RKEntityToggleVisibilityActionArguments(0);
  v32 = *(*(v127 - 8) + 64);
  MEMORY[0x1EEE9AC00](v127);
  v102 = &v95 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = type metadata accessor for __RKEntityStopAnimateActionArguments(0);
  v34 = *(*(v100 - 8) + 64);
  MEMORY[0x1EEE9AC00](v100);
  v101 = &v95 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  v36 = *(*(started - 8) + 64);
  MEMORY[0x1EEE9AC00](started);
  v99 = &v95 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for __RKEntityToggleAnimateActionArguments(0);
  v39 = *(*(v38 - 8) + 64);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v95 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = type metadata accessor for __RKEntityActionSpecification(0);
  v42 = *(*(v126 - 8) + 64);
  MEMORY[0x1EEE9AC00](v126);
  v44 = &v95 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit29__RKEntityActionSpecificationO10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit29__RKEntityActionSpecificationO10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v46 = *(v45 - 8);
  v47 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v95 - v48;
  v50 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityActionSpecification.CodingKeys and conformance __RKEntityActionSpecification.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v51 = v135;
  __RKEntityActionSpecification.name.getter(v137);
  __RKEntityActionSpecification.Name.rawValue.getter();
  v143 = 0;
  v52 = v136;
  KeyedEncodingContainer.encode(_:forKey:)();
  v136 = v52;
  if (v52)
  {
    (*(v46 + 8))(v49, v45);
  }

  else
  {
    v96 = v41;
    v97 = v49;

    outlined init with copy of __RKEntityTriggerSpecification(v51, v44, type metadata accessor for __RKEntityActionSpecification);
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v54 = v129;
        outlined init with take of __RKEntityTriggerSpecification(v44, v129, type metadata accessor for __RKChangeSceneActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKChangeSceneActionArguments and conformance __RKChangeSceneActionArguments, type metadata accessor for __RKChangeSceneActionArguments);
        v55 = v97;
        v71 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v57 = v71;
        v58 = type metadata accessor for __RKChangeSceneActionArguments;
        goto LABEL_16;
      case 2u:
        v54 = v130;
        outlined init with take of __RKEntityTriggerSpecification(v44, v130, type metadata accessor for __RKEntityCustomActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityCustomActionArguments and conformance __RKEntityCustomActionArguments, type metadata accessor for __RKEntityCustomActionArguments);
        v55 = v97;
        v68 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v57 = v68;
        v58 = type metadata accessor for __RKEntityCustomActionArguments;
        goto LABEL_16;
      case 3u:
        v59 = v109;
        outlined init with take of __RKEntityTriggerSpecification(v44, v109, type metadata accessor for __RKEntityEmphasisActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityEmphasisActionArguments and conformance __RKEntityEmphasisActionArguments, type metadata accessor for __RKEntityEmphasisActionArguments);
        v60 = v97;
        v69 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v136 = v69;
        v62 = type metadata accessor for __RKEntityEmphasisActionArguments;
        goto LABEL_29;
      case 4u:
        v59 = v112;
        outlined init with take of __RKEntityTriggerSpecification(v44, v112, type metadata accessor for __RKEntityFadeActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityFadeActionArguments and conformance __RKEntityFadeActionArguments, type metadata accessor for __RKEntityFadeActionArguments);
        v60 = v97;
        v65 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v136 = v65;
        v62 = type metadata accessor for __RKEntityFadeActionArguments;
        goto LABEL_29;
      case 5u:
        v74 = *(v44 + 1);
        v75 = v44[8];
        v137[0] = *v44;
        v137[1] = v74;
        LOBYTE(v138) = v75;
        v143 = 1;
        lazy protocol witness table accessor for type __RKFadeSceneActionArguments and conformance __RKFadeSceneActionArguments();
        goto LABEL_20;
      case 6u:
        v81 = *(v44 + 1);
        v82 = v44[16];
        v83 = *(v44 + 3);
        v84 = v44[32];
        v85 = v44[33];
        LOBYTE(v137[0]) = *v44;
        v138 = v81;
        v139 = v82;
        v140 = v83;
        v141 = v84;
        v142 = v85;
        v143 = 1;
        lazy protocol witness table accessor for type __RKEntityActionGroupArguments and conformance __RKEntityActionGroupArguments();
        v86 = v45;
        v87 = v97;
        v88 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v136 = v88;
        (*(v46 + 8))(v87, v86);

      case 7u:
        v59 = v106;
        outlined init with take of __RKEntityTriggerSpecification(v44, v106, type metadata accessor for __RKEntityHideActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityHideActionArguments and conformance __RKEntityHideActionArguments, type metadata accessor for __RKEntityHideActionArguments);
        v60 = v97;
        v70 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v136 = v70;
        v62 = type metadata accessor for __RKEntityHideActionArguments;
        goto LABEL_29;
      case 8u:
        v59 = v121;
        outlined init with take of __RKEntityTriggerSpecification(v44, v121, type metadata accessor for __RKEntityForceActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityForceActionArguments and conformance __RKEntityForceActionArguments, type metadata accessor for __RKEntityForceActionArguments);
        v60 = v97;
        v93 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v136 = v93;
        v62 = type metadata accessor for __RKEntityForceActionArguments;
        goto LABEL_29;
      case 9u:
        v59 = v103;
        outlined init with take of __RKEntityTriggerSpecification(v44, v103, type metadata accessor for __RKEntityShowActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityShowActionArguments and conformance __RKEntityShowActionArguments, type metadata accessor for __RKEntityShowActionArguments);
        v60 = v97;
        v67 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v136 = v67;
        v62 = type metadata accessor for __RKEntityShowActionArguments;
        goto LABEL_29;
      case 0xAu:
        v59 = v99;
        outlined init with take of __RKEntityTriggerSpecification(v44, v99, type metadata accessor for __RKEntityStartAnimateActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityStartAnimateActionArguments and conformance __RKEntityStartAnimateActionArguments, type metadata accessor for __RKEntityStartAnimateActionArguments);
        v60 = v97;
        v92 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v136 = v92;
        v62 = type metadata accessor for __RKEntityStartAnimateActionArguments;
        goto LABEL_29;
      case 0xBu:
        v59 = v101;
        outlined init with take of __RKEntityTriggerSpecification(v44, v101, type metadata accessor for __RKEntityStopAnimateActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityStopAnimateActionArguments and conformance __RKEntityStopAnimateActionArguments, type metadata accessor for __RKEntityStopAnimateActionArguments);
        v60 = v97;
        v64 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v136 = v64;
        v62 = type metadata accessor for __RKEntityStopAnimateActionArguments;
        goto LABEL_29;
      case 0xCu:
        v59 = v96;
        outlined init with take of __RKEntityTriggerSpecification(v44, v96, type metadata accessor for __RKEntityToggleAnimateActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityToggleAnimateActionArguments and conformance __RKEntityToggleAnimateActionArguments, type metadata accessor for __RKEntityToggleAnimateActionArguments);
        v60 = v97;
        v66 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v136 = v66;
        v62 = type metadata accessor for __RKEntityToggleAnimateActionArguments;
        goto LABEL_29;
      case 0xDu:
        v59 = v102;
        outlined init with take of __RKEntityTriggerSpecification(v44, v102, type metadata accessor for __RKEntityToggleVisibilityActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityToggleVisibilityActionArguments and conformance __RKEntityToggleVisibilityActionArguments, type metadata accessor for __RKEntityToggleVisibilityActionArguments);
        v60 = v97;
        v80 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v136 = v80;
        v62 = type metadata accessor for __RKEntityToggleVisibilityActionArguments;
        goto LABEL_29;
      case 0xEu:
        v59 = v115;
        outlined init with take of __RKEntityTriggerSpecification(v44, v115, type metadata accessor for __RKEntityTransformActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityTransformActionArguments and conformance __RKEntityTransformActionArguments, type metadata accessor for __RKEntityTransformActionArguments);
        v60 = v97;
        v63 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v136 = v63;
        v62 = type metadata accessor for __RKEntityTransformActionArguments;
        goto LABEL_29;
      case 0xFu:
        v137[0] = *v44;
        v143 = 1;
        lazy protocol witness table accessor for type __RKWaitActionArguments and conformance __RKWaitActionArguments();
LABEL_20:
        v60 = v97;
        v76 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v136 = v76;
        goto LABEL_31;
      case 0x10u:
        v59 = v119;
        outlined init with take of __RKEntityTriggerSpecification(v44, v119, type metadata accessor for __RKEntityOrbitEntityActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityOrbitEntityActionArguments and conformance __RKEntityOrbitEntityActionArguments, type metadata accessor for __RKEntityOrbitEntityActionArguments);
        v60 = v97;
        v61 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v136 = v61;
        v62 = type metadata accessor for __RKEntityOrbitEntityActionArguments;
        goto LABEL_29;
      case 0x11u:
        v59 = v117;
        outlined init with take of __RKEntityTriggerSpecification(v44, v117, type metadata accessor for __RKEntityLookAtCameraActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityLookAtCameraActionArguments and conformance __RKEntityLookAtCameraActionArguments, type metadata accessor for __RKEntityLookAtCameraActionArguments);
        v60 = v97;
        v72 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v136 = v72;
        v62 = type metadata accessor for __RKEntityLookAtCameraActionArguments;
        goto LABEL_29;
      case 0x12u:
        v77 = v120;
        outlined init with take of __RKEntityTriggerSpecification(v44, v120, type metadata accessor for __RKEntitySwapEntityActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntitySwapEntityActionArguments and conformance __RKEntitySwapEntityActionArguments, type metadata accessor for __RKEntitySwapEntityActionArguments);
        v60 = v97;
        v89 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v136 = v89;
        v79 = type metadata accessor for __RKEntitySwapEntityActionArguments;
        goto LABEL_25;
      case 0x13u:
        v59 = v123;
        outlined init with take of __RKEntityTriggerSpecification(v44, v123, type metadata accessor for __RKEntitySpinActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntitySpinActionArguments and conformance __RKEntitySpinActionArguments, type metadata accessor for __RKEntitySpinActionArguments);
        v60 = v97;
        v94 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v136 = v94;
        v62 = type metadata accessor for __RKEntitySpinActionArguments;
        goto LABEL_29;
      case 0x14u:
        v59 = v125;
        outlined init with take of __RKEntityTriggerSpecification(v44, v125, type metadata accessor for __RKEntitySetOpacityActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntitySetOpacityActionArguments and conformance __RKEntitySetOpacityActionArguments, type metadata accessor for __RKEntitySetOpacityActionArguments);
        v60 = v97;
        v73 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v136 = v73;
        v62 = type metadata accessor for __RKEntitySetOpacityActionArguments;
LABEL_29:
        v90 = v62;
        v91 = v59;
        goto LABEL_30;
      case 0x15u:
        v77 = v124;
        outlined init with take of __RKEntityTriggerSpecification(v44, v124, type metadata accessor for __RKEntityPlayTimelineActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityPlayTimelineActionArguments and conformance __RKEntityPlayTimelineActionArguments, type metadata accessor for __RKEntityPlayTimelineActionArguments);
        v60 = v97;
        v78 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v136 = v78;
        v79 = type metadata accessor for __RKEntityPlayTimelineActionArguments;
LABEL_25:
        v90 = v79;
        v91 = v77;
LABEL_30:
        outlined destroy of __RKEntityTriggerSpecification(v91, v90);
LABEL_31:
        result = (*(v46 + 8))(v60, v45);
        break;
      default:
        v54 = v128;
        outlined init with take of __RKEntityTriggerSpecification(v44, v128, type metadata accessor for __RKEntityAudioActionArguments);
        LOBYTE(v137[0]) = 1;
        lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityAudioActionArguments and conformance __RKEntityAudioActionArguments, type metadata accessor for __RKEntityAudioActionArguments);
        v55 = v97;
        v56 = v136;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v57 = v56;
        v58 = type metadata accessor for __RKEntityAudioActionArguments;
LABEL_16:
        outlined destroy of __RKEntityTriggerSpecification(v54, v58);
        result = (*(v46 + 8))(v55, v45);
        v136 = v57;
        break;
    }
  }

  return result;
}

uint64_t static __RKChangeSceneActionArguments.== infix(_:_:)()
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v0 = *(type metadata accessor for __RKChangeSceneActionArguments(0) + 20);

  return static UUID.== infix(_:_:)();
}

uint64_t static __RKEntityCustomActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for __RKEntityCustomActionArguments(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);

  return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v11, v12);
}

uint64_t static __RKFadeSceneActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 4) != *(a2 + 4))
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t static __RKEntitySwapEntityActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (static UUID.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for __RKEntitySwapEntityActionArguments(0), v5 = v4[5], (static UUID.== infix(_:_:)()) && (specialized static __RKEntityHideActionArguments.== infix(_:_:)(a1 + v4[6], a2 + v4[6], type metadata accessor for __RKEntityHideActionArguments, specialized == infix<A>(_:_:)))
  {
    v6 = specialized static __RKEntityHideActionArguments.== infix(_:_:)(a1 + v4[7], a2 + v4[7], type metadata accessor for __RKEntityShowActionArguments, specialized == infix<A>(_:_:));
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

BOOL static __RKEntitySetOpacityActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) != 0 && (v4 = type metadata accessor for __RKEntitySetOpacityActionArguments(0), *(a1 + *(v4 + 20)) == *(a2 + *(v4 + 20))))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

RealityKit::__RKEntityGroupActionOrder_optional __swiftcall __RKEntityGroupActionOrder.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of __RKEntityGroupActionOrder.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t __RKEntityGroupActionOrder.rawValue.getter()
{
  if (*v0)
  {
    result = 0x65636E6575716573;
  }

  else
  {
    result = 0x65727275636E6F63;
  }

  *v0;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance __RKEntityGroupActionOrder()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance __RKEntityGroupActionOrder()
{
  *v0;
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __RKEntityGroupActionOrder()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance __RKEntityTriggerSpecification.CustomWithArgumentsCodingKeys@<X0>(Swift::OpaquePointer cases@<0:X3>, Swift::String *a2@<X0>, char *a3@<X8>)
{
  v4 = _findStringSwitchCase(cases:string:)(cases, *a2);

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance __RKEntityGroupActionOrder(uint64_t *a1@<X8>)
{
  v2 = 0x65727275636E6F63;
  if (*v1)
  {
    v2 = 0x65636E6575716573;
  }

  v3 = 0xEA0000000000746ELL;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntityGroupActionOrder(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65636E6575716573;
  }

  else
  {
    v4 = 0x65727275636E6F63;
  }

  if (v3)
  {
    v5 = 0xEA0000000000746ELL;
  }

  else
  {
    v5 = 0xE900000000000064;
  }

  if (*a2)
  {
    v6 = 0x65636E6575716573;
  }

  else
  {
    v6 = 0x65727275636E6F63;
  }

  if (*a2)
  {
    v7 = 0xE900000000000064;
  }

  else
  {
    v7 = 0xEA0000000000746ELL;
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

uint64_t __RKEntityActionGroupArguments.actions.setter(uint64_t a1)
{
  v3 = *(v1 + 8);

  *(v1 + 8) = a1;
  return result;
}

uint64_t __RKEntityActionGroupArguments.loopCount.getter()
{
  result = *(v0 + 24);
  v2 = *(v0 + 32);
  return result;
}

uint64_t __RKEntityActionGroupArguments.loopCount.setter(uint64_t result, char a2)
{
  *(v2 + 24) = result;
  *(v2 + 32) = a2 & 1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntityActionGroupArguments.CodingKeys()
{
  v1 = *v0;
  v2 = 0x726564726FLL;
  v3 = 0x766973756C637865;
  v4 = 0x6E756F43706F6F6CLL;
  if (v1 != 3)
  {
    v4 = 0x766973756C637865;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x736E6F69746361;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityActionGroupArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __RKEntityActionGroupArguments.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityActionGroupArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityActionGroupArguments.CodingKeys and conformance __RKEntityActionGroupArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityActionGroupArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityActionGroupArguments.CodingKeys and conformance __RKEntityActionGroupArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityActionGroupArguments.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityActionGroupArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityActionGroupArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v13 - v7;
  v9 = *v1;
  v16 = *(v1 + 1);
  v15 = v1[16];
  v14 = *(v1 + 3);
  v10 = v1[32];
  v13[2] = v1[33];
  v13[3] = v10;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityActionGroupArguments.CodingKeys and conformance __RKEntityActionGroupArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = v9;
  v22 = 0;
  lazy protocol witness table accessor for type __RKEntityGroupActionOrder and conformance __RKEntityGroupActionOrder();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v17 = v16;
    v21 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit29__RKEntityActionSpecificationOGMd, &_sSay10RealityKit29__RKEntityActionSpecificationOGMR);
    lazy protocol witness table accessor for type [__RKEntityActionSpecification] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t __RKEntityActionGroupArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityActionGroupArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityActionGroupArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityActionGroupArguments.CodingKeys and conformance __RKEntityActionGroupArguments.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = 0;
  lazy protocol witness table accessor for type __RKEntityGroupActionOrder and conformance __RKEntityGroupActionOrder();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit29__RKEntityActionSpecificationOGMd, &_sSay10RealityKit29__RKEntityActionSpecificationOGMR);
  v25 = 1;
  lazy protocol witness table accessor for type [__RKEntityActionSpecification] and conformance <A> [A]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12 = v21;
  v24 = 2;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = 3;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = v14;
  v18 = v13;
  v22 = 4;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  *a2 = v11;
  *(a2 + 8) = v12;
  *(a2 + 16) = v20;
  *(a2 + 24) = v18;
  *(a2 + 32) = v19 & 1;
  *(a2 + 33) = v16;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKWaitActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKWaitActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKWaitActionArguments.CodingKeys and conformance __RKWaitActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKWaitActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKWaitActionArguments.CodingKeys and conformance __RKWaitActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKWaitActionArguments.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit23__RKWaitActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit23__RKWaitActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKWaitActionArguments.CodingKeys and conformance __RKWaitActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t __RKWaitActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit23__RKWaitActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit23__RKWaitActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v14 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKWaitActionArguments.CodingKeys and conformance __RKWaitActionArguments.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance __RKWaitActionArguments(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit23__RKWaitActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit23__RKWaitActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKWaitActionArguments.CodingKeys and conformance __RKWaitActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t __RKEntityCustomActionArguments.customArguments.getter()
{
  v1 = *(v0 + *(type metadata accessor for __RKEntityCustomActionArguments(0) + 24));
}

uint64_t __RKEntityCustomActionArguments.customArguments.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for __RKEntityCustomActionArguments(0) + 24);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t __RKEntityCustomActionArguments.optionalTarget.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v5 = *(*(v4 - 8) + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v16 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  UUID.init(uuidString:)();
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v14 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v9 + 8))(v12, v8);
    if (v14)
    {
      v15 = 1;
    }

    else
    {
      (*(v9 + 16))(a1, v2, v8);
      v15 = 0;
    }

    return (*(v9 + 56))(a1, v15, 1, v8);
  }

  return result;
}

uint64_t key path setter for __RKEntityCustomActionArguments.optionalTarget : __RKEntityCustomActionArguments(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v3 = *(*(v2 - 8) + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v7 - v4;
  outlined init with copy of UUID?(a1, &v7 - v4);
  return __RKEntityCustomActionArguments.optionalTarget.setter(v5);
}

uint64_t __RKEntityCustomActionArguments.optionalTarget.setter(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of UUID?(a1, v9);
  v15 = *(v11 + 48);
  if (v15(v9, 1, v10) != 1)
  {
    outlined destroy of BodyTrackingComponent?(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v11 + 32))(v14, v9, v10);
    return (*(v11 + 40))(v1, v14, v10);
  }

  UUID.init(uuidString:)();
  result = (v15)(v6, 1, v10);
  if (result != 1)
  {
    outlined destroy of BodyTrackingComponent?(a1, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    (*(v11 + 32))(v14, v6, v10);
    if (v15(v9, 1, v10) != 1)
    {
      outlined destroy of BodyTrackingComponent?(v9, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    }

    return (*(v11 + 40))(v1, v14, v10);
  }

  __break(1u);
  return result;
}

void (*__RKEntityCustomActionArguments.optionalTarget.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  __RKEntityCustomActionArguments.optionalTarget.getter(v4);
  return __RKEntityCustomActionArguments.optionalTarget.modify;
}

void __RKEntityCustomActionArguments.optionalTarget.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    outlined init with copy of UUID?(v3, v2);
    __RKEntityCustomActionArguments.optionalTarget.setter(v2);
    outlined destroy of BodyTrackingComponent?(v3, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    __RKEntityCustomActionArguments.optionalTarget.setter(v3);
  }

  free(v3);

  free(v2);
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_17RealityFoundation13AudioMixGroupVTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_13:
    v12 = v9 | (v4 << 6);
    v13 = (*(v3 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    v16 = (*(v3 + 56) + 80 * v12);
    v17 = *(v16 + 57);
    v19 = v16[2];
    v18 = v16[3];
    v38 = v16[1];
    v20 = *v16;
    v39 = v19;
    *v40 = v18;
    *&v40[9] = v17;
    v37 = v20;
    v34 = *v40;
    v35 = v38;
    v32 = v19;
    v33 = v20;
    v21 = v17 >> 56;
    v22 = HIBYTE(v17);

    outlined init with copy of AudioMixGroup(&v37, v36);
    if (!v14)
    {
      return 1;
    }

    v37 = v33;
    v38 = v35;
    v39 = v32;
    *v40 = v34;
    *&v40[16] = v21;
    v40[24] = v22;
    v23 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v14);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      outlined destroy of AudioMixGroup(&v37);
      return 0;
    }

    v26 = *(a2 + 56) + 80 * v23;
    v28 = *(v26 + 56);
    v27 = *(v26 + 64);
    v29 = *(v26 + 72);
    if (*(v26 + 40) == *(&v39 + 1) && *(v26 + 48) == *v40)
    {
      result = outlined destroy of AudioMixGroup(&v37);
    }

    else
    {
      v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = outlined destroy of AudioMixGroup(&v37);
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }

    if (v28 != *&v40[8] || v27 != *&v40[16] || ((v29 ^ v40[24]) & 1) != 0)
    {
      return 0;
    }
  }

  v10 = v4;
  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v11 = *(v3 + 64 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v7 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10RealityKit6EntityC0B10FoundationE20ConfigurationCatalogV0F3SetVTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v27 = (v5 + 63) >> 6;
  v28 = result;
  while (v7)
  {
    v8 = __clz(__rbit64(v7));
    v30 = (v7 - 1) & v7;
LABEL_14:
    v11 = v8 | (v3 << 6);
    v12 = (*(v2 + 48) + 16 * v11);
    v14 = *v12;
    v13 = v12[1];
    v15 = (*(v2 + 56) + 40 * v11);
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[3];
    v19 = v15[4];
    v20 = v13 == 0;

    if (!v13)
    {
      return v20;
    }

    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
    v23 = v22;

    if ((v23 & 1) == 0)
    {

      return 0;
    }

    v24 = *(a2 + 56) + 40 * v21;
    if (*(v24 + 16) == v17 && v18 == *(v24 + 24))
    {

      v2 = v28;
      v7 = v30;
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v2 = v28;
      v7 = v30;
      if ((v26 & 1) == 0)
      {
        return v20;
      }
    }
  }

  v9 = v3;
  while (1)
  {
    v3 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v3 >= v27)
    {
      return 1;
    }

    v10 = *(v4 + 8 * v3);
    ++v9;
    if (v10)
    {
      v8 = __clz(__rbit64(v10));
      v30 = (v10 - 1) & v10;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntityCustomActionArguments.CodingKeys()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x72416D6F74737563;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746567726174;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityCustomActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __RKEntityCustomActionArguments.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityCustomActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityCustomActionArguments.CodingKeys and conformance __RKEntityCustomActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityCustomActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityCustomActionArguments.CodingKeys and conformance __RKEntityCustomActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityCustomActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit31__RKEntityCustomActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit31__RKEntityCustomActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityCustomActionArguments.CodingKeys and conformance __RKEntityCustomActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for __RKEntityCustomActionArguments(0);
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    v18 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + *(v11 + 24));
    v16[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __RKEntityCustomActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for UUID();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit31__RKEntityCustomActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit31__RKEntityCustomActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v28 = *(v31 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v25 - v8;
  v10 = type metadata accessor for __RKEntityCustomActionArguments(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityCustomActionArguments.CodingKeys and conformance __RKEntityCustomActionArguments.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v28;
  v15 = v29;
  v25 = v13;
  v26 = a1;
  v35 = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v18 = v30;
  v17 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(v25, v18, v4);
  v34 = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = &v25[*(v10 + 20)];
  *v20 = v19;
  v20[1] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  v33 = 2;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v9, v17);
  v22 = *(v10 + 24);
  v23 = v25;
  *&v25[v22] = v32;
  outlined init with copy of __RKEntityTriggerSpecification(v23, v27, type metadata accessor for __RKEntityCustomActionArguments);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return outlined destroy of __RKEntityTriggerSpecification(v23, type metadata accessor for __RKEntityCustomActionArguments);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntityCustomActionArguments(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v12, v13);
}

uint64_t (*__RKChangeSceneActionArguments.target.modify(void *a1))()
{
  *a1 = v1;
  v3 = type metadata accessor for UUID();
  a1[1] = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[2] = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[3] = v6;
  (*(v5 + 16))();
  return __RKChangeSceneActionArguments.target.modify;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKChangeSceneActionArguments.CodingKeys()
{
  if (*v0)
  {
    result = 0xD000000000000015;
  }

  else
  {
    result = 0x6F6F52656E656373;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKChangeSceneActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F6F52656E656373 && a2 == 0xE900000000000074;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001C18DEE30 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKChangeSceneActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKChangeSceneActionArguments.CodingKeys and conformance __RKChangeSceneActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKChangeSceneActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKChangeSceneActionArguments.CodingKeys and conformance __RKChangeSceneActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKChangeSceneActionArguments.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit30__RKChangeSceneActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit30__RKChangeSceneActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11[-v6];
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKChangeSceneActionArguments.CodingKeys and conformance __RKChangeSceneActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9 = *(type metadata accessor for __RKChangeSceneActionArguments(0) + 20);
    v11[14] = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t __RKChangeSceneActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v34 = type metadata accessor for UUID();
  v30 = *(v34 - 8);
  v4 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v31 = &v25 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit30__RKChangeSceneActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit30__RKChangeSceneActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v10 = *(v9 - 8);
  v32 = v9;
  v33 = v10;
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - v12;
  v14 = type metadata accessor for __RKChangeSceneActionArguments(0);
  v15 = *(*(v14 - 8) + 64);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKChangeSceneActionArguments.CodingKeys and conformance __RKChangeSceneActionArguments.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v14;
  v27 = v6;
  v28 = v17;
  v19 = v30;
  v36 = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v20 = v31;
  v21 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = *(v19 + 32);
  (v31)(v28, v20, v34);
  v35 = 1;
  v22 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v33 + 8))(v13, v21);
  v23 = v28;
  (v31)(&v28[*(v26 + 20)], v22, v34);
  outlined init with copy of __RKEntityTriggerSpecification(v23, v29, type metadata accessor for __RKChangeSceneActionArguments);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of __RKEntityTriggerSpecification(v23, type metadata accessor for __RKChangeSceneActionArguments);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKChangeSceneActionArguments(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = *(a3 + 20);

  return static UUID.== infix(_:_:)();
}

uint64_t (*protocol witness for __RKSpecificationHasTarget.target.modify in conformance __RKChangeSceneActionArguments(void *a1))()
{
  *a1 = v1;
  v3 = type metadata accessor for UUID();
  a1[1] = v3;
  v4 = *(v3 - 8);
  v5 = v4;
  a1[2] = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(*(v4 + 64));
  }

  a1[3] = v6;
  (*(v5 + 16))();
  return protocol witness for __RKSpecificationHasTarget.target.modify in conformance __RKChangeSceneActionArguments;
}

void __RKChangeSceneActionArguments.target.modify(void *a1)
{
  v1 = a1[3];
  (*(a1[2] + 40))(*a1, v1, a1[1]);

  free(v1);
}

uint64_t __RKFadeSceneActionArguments.duration.setter(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 8) = BYTE4(result) & 1;
  return result;
}

RealityKit::__RKFadeSceneActionArguments __swiftcall __RKFadeSceneActionArguments.init(targetOpacity:duration:)(Swift::Float targetOpacity, Swift::Float duration)
{
  if (duration < 0.0)
  {
    duration = 0.0;
  }

  *v2 = targetOpacity;
  *(v2 + 4) = duration;
  *(v2 + 8) = 0;
  result.duration.value = duration;
  result.targetOpacity = targetOpacity;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKFadeSceneActionArguments.CodingKeys()
{
  if (*v0)
  {
    result = 0x6E6F697461727564;
  }

  else
  {
    result = 0x704F746567726174;
  }

  *v0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKFadeSceneActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x704F746567726174 && a2 == 0xED00007974696361;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKFadeSceneActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKFadeSceneActionArguments.CodingKeys and conformance __RKFadeSceneActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKFadeSceneActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKFadeSceneActionArguments.CodingKeys and conformance __RKFadeSceneActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKFadeSceneActionArguments.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit28__RKFadeSceneActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit28__RKFadeSceneActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v13 - v7;
  v9 = *v1;
  v13 = v1[1];
  v10 = *(v1 + 8);
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKFadeSceneActionArguments.CodingKeys and conformance __RKFadeSceneActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v15 = 1;
    v14 = v10;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t __RKFadeSceneActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit28__RKFadeSceneActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit28__RKFadeSceneActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKFadeSceneActionArguments.CodingKeys and conformance __RKFadeSceneActionArguments.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v15[15] = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v15[14] = 1;
    v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v6 + 8))(v9, v5);
    *a2 = v12;
    *(a2 + 4) = v14;
    *(a2 + 8) = BYTE4(v14) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKFadeSceneActionArguments(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2)
  {
    v2 = *(a2 + 8);
    if (*(a1 + 8))
    {
      if (*(a2 + 8))
      {
        return 1;
      }
    }

    else
    {
      if (*(a1 + 4) != *(a2 + 4))
      {
        v2 = 1;
      }

      if ((v2 & 1) == 0)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t __RKEntityFadeActionArguments.targetOpacity.setter(float a1)
{
  result = type metadata accessor for __RKEntityFadeActionArguments(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t __RKEntityFadeActionArguments.init(target:targetOpacity:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  result = type metadata accessor for __RKEntityFadeActionArguments(0);
  *(a2 + *(result + 20)) = a3;
  v10 = 1.0;
  if (a4 >= 0.0)
  {
    v10 = a4;
  }

  v11 = a2 + *(result + 24);
  *v11 = v10;
  *(v11 + 4) = 0;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntityFadeActionArguments.CodingKeys()
{
  v1 = 0x704F746567726174;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697461727564;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746567726174;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityFadeActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __RKEntityFadeActionArguments.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityFadeActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityFadeActionArguments.CodingKeys and conformance __RKEntityFadeActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityFadeActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityFadeActionArguments.CodingKeys and conformance __RKEntityFadeActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityFadeActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit29__RKEntityFadeActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit29__RKEntityFadeActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityFadeActionArguments.CodingKeys and conformance __RKEntityFadeActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16[15] = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for __RKEntityFadeActionArguments(0);
    v12 = *(v3 + *(v11 + 20));
    v16[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = (v3 + *(v11 + 24));
    v14 = *v13;
    LOBYTE(v13) = *(v13 + 4);
    v16[13] = 2;
    v16[12] = v13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __RKEntityFadeActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for UUID();
  v25 = *(v4 - 8);
  v5 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit29__RKEntityFadeActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit29__RKEntityFadeActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v26 = *(v7 - 8);
  v27 = v7;
  v8 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for __RKEntityFadeActionArguments(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityFadeActionArguments.CodingKeys and conformance __RKEntityFadeActionArguments.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v25;
  v31 = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v18 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 32))(v16, v28, v4);
  v30 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v11;
  *(v16 + *(v11 + 20)) = v19;
  v29 = 2;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = v16 + *(v28 + 6);
  (*(v26 + 8))(v10, v18);
  *v21 = v20;
  *(v21 + 4) = BYTE4(v20) & 1;
  outlined init with copy of __RKEntityTriggerSpecification(v16, v24, type metadata accessor for __RKEntityFadeActionArguments);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of __RKEntityTriggerSpecification(v16, type metadata accessor for __RKEntityFadeActionArguments);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityToggleAnimateActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityToggleAnimateActionArguments.CodingKeys and conformance __RKEntityToggleAnimateActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityToggleAnimateActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityToggleAnimateActionArguments.CodingKeys and conformance __RKEntityToggleAnimateActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityToggleAnimateActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit38__RKEntityToggleAnimateActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit38__RKEntityToggleAnimateActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for __RKEntityToggleAnimateActionArguments(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityToggleAnimateActionArguments.CodingKeys and conformance __RKEntityToggleAnimateActionArguments.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    outlined init with take of __RKEntityTriggerSpecification(v14, v17, type metadata accessor for __RKEntityToggleAnimateActionArguments);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __RKEntityStartAnimateActionArguments.multiplePerformBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t __RKEntityStartAnimateActionArguments.audioGain.getter()
{
  v1 = (v0 + *(type metadata accessor for __RKEntityStartAnimateActionArguments(0) + 52));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t __RKEntityStartAnimateActionArguments.targetAnimation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for __RKEntityStartAnimateActionArguments(0) + 56);

  return outlined init with copy of UUID?(v3, a1);
}

uint64_t __RKEntityStartAnimateActionArguments.targetAnimation.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for __RKEntityStartAnimateActionArguments(0) + 56);

  return outlined assign with take of UUID?(a1, v3);
}

unint64_t __RKEntityStartAnimateActionArguments.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x746567726174;
    v7 = 0xD000000000000017;
    v8 = 0x7261745370696C63;
    if (a1 != 3)
    {
      v8 = 0x6172754470696C63;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x6E756F43706F6F6CLL;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x696475416574756DLL;
    v2 = 0x6961476F69647561;
    if (a1 != 9)
    {
      v2 = 0x6E41746567726174;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x6576655270696C63;
    v4 = 0x6576655270696C63;
    if (a1 != 6)
    {
      v4 = 0x6F6974616D696E61;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityStartAnimateActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __RKEntityStartAnimateActionArguments.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityStartAnimateActionArguments.CodingKeys(uint64_t a1)
{
  started = lazy protocol witness table accessor for type __RKEntityStartAnimateActionArguments.CodingKeys and conformance __RKEntityStartAnimateActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, started);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityStartAnimateActionArguments.CodingKeys(uint64_t a1)
{
  started = lazy protocol witness table accessor for type __RKEntityStartAnimateActionArguments.CodingKeys and conformance __RKEntityStartAnimateActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, started);
}

uint64_t __RKEntityStartAnimateActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit37__RKEntityStartAnimateActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit37__RKEntityStartAnimateActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityStartAnimateActionArguments.CodingKeys and conformance __RKEntityStartAnimateActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v24[31] = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
    v12 = *(v3 + started[5]);
    v24[30] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24[29] = *(v3 + started[6]);
    v24[28] = 2;
    lazy protocol witness table accessor for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + started[7]);
    v24[27] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + started[8]);
    v24[26] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + started[9]);
    v24[25] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = *(v3 + started[10]);
    v24[24] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + started[11]);
    v24[15] = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = *(v3 + started[12]);
    v24[14] = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = (v3 + started[13]);
    v20 = *v19;
    v21 = *(v19 + 8);
    v24[13] = 9;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = started[14];
    v24[12] = 10;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __RKEntityStartAnimateActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v35 - v5;
  v7 = type metadata accessor for UUID();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit37__RKEntityStartAnimateActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit37__RKEntityStartAnimateActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v39 = *(v41 - 8);
  v11 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v41);
  v13 = &v35 - v12;
  started = type metadata accessor for __RKEntityStartAnimateActionArguments(0);
  v15 = *(*(started - 8) + 64);
  v16 = MEMORY[0x1EEE9AC00](started);
  v19 = *(v8 + 56);
  v44 = *(v18 + 56);
  v45 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19(&v45[v44], 1, 1, v7, v16);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityStartAnimateActionArguments.CodingKeys and conformance __RKEntityStartAnimateActionArguments.CodingKeys();
  v42 = v13;
  v21 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return outlined destroy of BodyTrackingComponent?(&v45[v44], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v36 = v6;
    v37 = started;
    v22 = v39;
    v43 = a1;
    v57 = 0;
    v23 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v24 = v40;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = v7;
    v35 = v23;
    v26 = v45;
    (*(v8 + 32))(v45, v24, v25);
    v56 = 1;
    *&v26[v37[5]] = KeyedDecodingContainer.decode(_:forKey:)();
    v54 = 2;
    lazy protocol witness table accessor for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v26[v37[6]] = v55;
    v53 = 3;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v26[v37[7]] = v27;
    v52 = 4;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v26[v37[8]] = v28;
    v51 = 5;
    v26[v37[9]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v50 = 6;
    v26[v37[10]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    v49 = 7;
    KeyedDecodingContainer.decode(_:forKey:)();
    *&v26[v37[11]] = v29;
    v48 = 8;
    v26[v37[12]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v47 = 9;
    v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v31 = &v45[v37[13]];
    *v31 = v30;
    v31[8] = v32 & 1;
    v46 = 10;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v22 + 8))(v42, v41);
    v33 = v45;
    outlined assign with take of UUID?(v36, &v45[v44]);
    outlined init with copy of __RKEntityTriggerSpecification(v33, v38, type metadata accessor for __RKEntityStartAnimateActionArguments);
    __swift_destroy_boxed_opaque_existential_1(v43);
    return outlined destroy of __RKEntityTriggerSpecification(v33, type metadata accessor for __RKEntityStartAnimateActionArguments);
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityStopAnimateActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityStopAnimateActionArguments.CodingKeys and conformance __RKEntityStopAnimateActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityStopAnimateActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityStopAnimateActionArguments.CodingKeys and conformance __RKEntityStopAnimateActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityStopAnimateActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit36__RKEntityStopAnimateActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit36__RKEntityStopAnimateActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for __RKEntityStopAnimateActionArguments(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityStopAnimateActionArguments.CodingKeys and conformance __RKEntityStopAnimateActionArguments.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    outlined init with take of __RKEntityTriggerSpecification(v14, v17, type metadata accessor for __RKEntityStopAnimateActionArguments);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t __RKEntityToggleAnimateActionArguments.init(target:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityToggleAnimateActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746567726174 && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityToggleVisibilityActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityToggleVisibilityActionArguments.CodingKeys and conformance __RKEntityToggleVisibilityActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityToggleVisibilityActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityToggleVisibilityActionArguments.CodingKeys and conformance __RKEntityToggleVisibilityActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityToggleAnimateActionArguments.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v7 + 8))(v10, v6);
}

uint64_t __RKEntityToggleVisibilityActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = type metadata accessor for UUID();
  v20 = *(v4 - 8);
  v5 = *(v20 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit41__RKEntityToggleVisibilityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit41__RKEntityToggleVisibilityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v21 = *(v7 - 8);
  v8 = *(v21 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v19 - v9;
  v11 = type metadata accessor for __RKEntityToggleVisibilityActionArguments(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityToggleVisibilityActionArguments.CodingKeys and conformance __RKEntityToggleVisibilityActionArguments.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = v20;
    v17 = v22;
    lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v21 + 8))(v10, v7);
    (*(v16 + 32))(v14, v23, v4);
    outlined init with take of __RKEntityTriggerSpecification(v14, v17, type metadata accessor for __RKEntityToggleVisibilityActionArguments);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance __RKEntityToggleAnimateActionArguments(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t __RKEntityFadeActionArguments.duration.setter(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2(0);
  v5 = v2 + *(result + 24);
  *v5 = a1;
  *(v5 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t __RKEntityShowActionArguments.ease.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityShowActionArguments(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t __RKEntityShowActionArguments.ease.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityShowActionArguments(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t __RKEntityShowActionArguments.easeType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityShowActionArguments(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t __RKEntityShowActionArguments.easeType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityShowActionArguments(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t __RKEntityShowActionArguments.fadeIn.setter(char a1)
{
  result = type metadata accessor for __RKEntityShowActionArguments(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t __RKEntityShowActionArguments.respectPhysics.setter(char a1)
{
  result = type metadata accessor for __RKEntityShowActionArguments(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t __RKEntityShowActionArguments.animationStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityShowActionArguments(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t __RKEntityShowActionArguments.animationStyle.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityShowActionArguments(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t __RKEntityShowActionArguments.buildInAnimationType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityShowActionArguments(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t __RKEntityShowActionArguments.buildInAnimationType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityShowActionArguments(0);
  *(v1 + *(result + 60)) = v2;
  return result;
}

unint64_t __RKEntityShowActionArguments.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000019;
    v7 = 0x6F6974616D696E61;
    if (a1 != 10)
    {
      v7 = 0xD000000000000014;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x61704F6C616E6966;
    v9 = 0xD000000000000018;
    if (a1 == 7)
    {
      v9 = 0x5074636570736572;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746567726174;
    v2 = 1702060389;
    v3 = 0x6570795465736165;
    if (a1 != 4)
    {
      v3 = 0x6E4965646166;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6E6F697461727564;
    if (a1 != 1)
    {
      v4 = 0x65636E6174736964;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityShowActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __RKEntityShowActionArguments.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityShowActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityShowActionArguments.CodingKeys and conformance __RKEntityShowActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityShowActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityShowActionArguments.CodingKeys and conformance __RKEntityShowActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityShowActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit29__RKEntityShowActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit29__RKEntityShowActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityShowActionArguments.CodingKeys and conformance __RKEntityShowActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v27 = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for __RKEntityShowActionArguments(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 4);
    v27 = 1;
    v26 = v12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = (v3 + v11[6]);
    v15 = *v14;
    LOBYTE(v14) = *(v14 + 4);
    v27 = 2;
    v26 = v14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = *(v3 + v11[7]);
    v26 = 3;
    lazy protocol witness table accessor for type __RKEntityMoveEase and conformance __RKEntityMoveEase();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = *(v3 + v11[8]);
    v26 = 4;
    lazy protocol witness table accessor for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = *(v3 + v11[9]);
    v27 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = (v3 + v11[10]);
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 4);
    v27 = 6;
    v26 = v17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + v11[11]);
    v27 = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = (v3 + v11[12]);
    v21 = *v20;
    LOBYTE(v20) = *(v20 + 4);
    v27 = 8;
    v26 = v20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = (v3 + v11[13]);
    v23 = *v22;
    LOBYTE(v22) = *(v22 + 4);
    v27 = 9;
    v26 = v22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = *(v3 + v11[14]);
    v26 = 10;
    lazy protocol witness table accessor for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = *(v3 + v11[15]);
    v26 = 11;
    lazy protocol witness table accessor for type __RKEntityShowActionBuildInAnimationType and conformance __RKEntityShowActionBuildInAnimationType();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __RKEntityShowActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v46 = type metadata accessor for UUID();
  v42 = *(v46 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit29__RKEntityShowActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit29__RKEntityShowActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v47 = *(v49 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v7 = &v37 - v6;
  v8 = type metadata accessor for __RKEntityShowActionArguments(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v12[7];
  v11[v44] = 10;
  v43 = v12[8];
  v11[v43] = 3;
  v13 = v12[14];
  v11[v13] = 3;
  v14 = v12[15];
  v11[v14] = 10;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityShowActionArguments.CodingKeys and conformance __RKEntityShowActionArguments.CodingKeys();
  v48 = v7;
  v16 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v43;
  v18 = v44;
  v38 = v13;
  v39 = v8;
  v37 = v14;
  v40 = v11;
  v19 = v47;
  v50 = a1;
  v52 = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v21 = v45;
  v20 = v46;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v40;
  (*(v42 + 32))(v40, v21, v20);
  v52 = 1;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = v39;
  v25 = &v22[v39[5]];
  *v25 = v23;
  v25[4] = BYTE4(v23) & 1;
  v52 = 2;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = &v22[v24[6]];
  *v27 = v26;
  v27[4] = BYTE4(v26) & 1;
  v51 = 3;
  lazy protocol witness table accessor for type __RKEntityMoveEase and conformance __RKEntityMoveEase();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22[v18] = v52;
  v51 = 4;
  lazy protocol witness table accessor for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22[v17] = v52;
  v52 = 5;
  v22[v24[9]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v52 = 6;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = &v22[v24[10]];
  *v29 = v28;
  v29[4] = BYTE4(v28) & 1;
  v52 = 7;
  v22[v24[11]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v52 = 8;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = &v22[v24[12]];
  *v31 = v30;
  v31[4] = BYTE4(v30) & 1;
  v52 = 9;
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = &v40[v39[13]];
  *v33 = v32;
  v33[4] = BYTE4(v32) & 1;
  v51 = 10;
  lazy protocol witness table accessor for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v40[v38] = v52;
  v51 = 11;
  lazy protocol witness table accessor for type __RKEntityShowActionBuildInAnimationType and conformance __RKEntityShowActionBuildInAnimationType();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v19 + 8))(v48, v49);
  v35 = v40;
  v34 = v41;
  v40[v37] = v52;
  outlined init with copy of __RKEntityTriggerSpecification(v35, v34, type metadata accessor for __RKEntityShowActionArguments);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return outlined destroy of __RKEntityTriggerSpecification(v35, type metadata accessor for __RKEntityShowActionArguments);
}

uint64_t __RKEntityShowActionArguments.duration.setter(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2(0);
  v5 = v2 + *(result + 20);
  *v5 = a1;
  *(v5 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t __RKEntityHideActionArguments.ease.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityHideActionArguments(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t __RKEntityHideActionArguments.ease.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityHideActionArguments(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t __RKEntityHideActionArguments.easeType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityHideActionArguments(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t __RKEntityHideActionArguments.easeType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityHideActionArguments(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t __RKEntityHideActionArguments.fadeOut.setter(char a1)
{
  result = type metadata accessor for __RKEntityHideActionArguments(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t __RKEntityShowActionArguments.finalOpacity.setter(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2(0);
  v5 = v2 + *(result + 40);
  *v5 = a1;
  *(v5 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t __RKEntityHideActionArguments.respectPhysics.setter(char a1)
{
  result = type metadata accessor for __RKEntityHideActionArguments(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t __RKEntityShowActionArguments.physicsLinearCoefficient.setter(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2(0);
  v5 = v2 + *(result + 48);
  *v5 = a1;
  *(v5 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t __RKEntityShowActionArguments.physicsAngularCoefficient.setter(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2(0);
  v5 = v2 + *(result + 52);
  *v5 = a1;
  *(v5 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t __RKEntityHideActionArguments.animationStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityHideActionArguments(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t __RKEntityHideActionArguments.animationStyle.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityHideActionArguments(0);
  *(v1 + *(result + 56)) = v2;
  return result;
}

uint64_t __RKEntityHideActionArguments.buildOutAnimationType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityHideActionArguments(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t __RKEntityHideActionArguments.buildOutAnimationType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityHideActionArguments(0);
  *(v1 + *(result + 60)) = v2;
  return result;
}

unint64_t __RKEntityHideActionArguments.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000019;
    v7 = 0x6F6974616D696E61;
    if (a1 != 10)
    {
      v7 = 0xD000000000000015;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x61704F6C616E6966;
    v9 = 0xD000000000000018;
    if (a1 == 7)
    {
      v9 = 0x5074636570736572;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746567726174;
    v2 = 1702060389;
    v3 = 0x6570795465736165;
    if (a1 != 4)
    {
      v3 = 0x74754F65646166;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6E6F697461727564;
    if (a1 != 1)
    {
      v4 = 0x65636E6174736964;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityHideActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __RKEntityHideActionArguments.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityHideActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityHideActionArguments.CodingKeys and conformance __RKEntityHideActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityHideActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityHideActionArguments.CodingKeys and conformance __RKEntityHideActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityHideActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit29__RKEntityHideActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit29__RKEntityHideActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityHideActionArguments.CodingKeys and conformance __RKEntityHideActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v27 = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for __RKEntityHideActionArguments(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 4);
    v27 = 1;
    v26 = v12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = (v3 + v11[6]);
    v15 = *v14;
    LOBYTE(v14) = *(v14 + 4);
    v27 = 2;
    v26 = v14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = *(v3 + v11[7]);
    v26 = 3;
    lazy protocol witness table accessor for type __RKEntityMoveEase and conformance __RKEntityMoveEase();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = *(v3 + v11[8]);
    v26 = 4;
    lazy protocol witness table accessor for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = *(v3 + v11[9]);
    v27 = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = (v3 + v11[10]);
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 4);
    v27 = 6;
    v26 = v17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = *(v3 + v11[11]);
    v27 = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = (v3 + v11[12]);
    v21 = *v20;
    LOBYTE(v20) = *(v20 + 4);
    v27 = 8;
    v26 = v20;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = (v3 + v11[13]);
    v23 = *v22;
    LOBYTE(v22) = *(v22 + 4);
    v27 = 9;
    v26 = v22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v27 = *(v3 + v11[14]);
    v26 = 10;
    lazy protocol witness table accessor for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = *(v3 + v11[15]);
    v26 = 11;
    lazy protocol witness table accessor for type __RKEntityHideActionBuildOutAnimationType and conformance __RKEntityHideActionBuildOutAnimationType();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __RKEntityHideActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v46 = type metadata accessor for UUID();
  v42 = *(v46 - 8);
  v3 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v46);
  v45 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit29__RKEntityHideActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit29__RKEntityHideActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v47 = *(v49 - 8);
  v5 = *(v47 + 64);
  MEMORY[0x1EEE9AC00](v49);
  v7 = &v37 - v6;
  v8 = type metadata accessor for __RKEntityHideActionArguments(0);
  v9 = *(*(v8 - 8) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v12[7];
  v11[v44] = 10;
  v43 = v12[8];
  v11[v43] = 3;
  v13 = v12[14];
  v11[v13] = 3;
  v14 = v12[15];
  v11[v14] = 10;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityHideActionArguments.CodingKeys and conformance __RKEntityHideActionArguments.CodingKeys();
  v48 = v7;
  v16 = v50;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v43;
  v18 = v44;
  v38 = v13;
  v39 = v8;
  v37 = v14;
  v40 = v11;
  v19 = v47;
  v50 = a1;
  v52 = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v21 = v45;
  v20 = v46;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v22 = v40;
  (*(v42 + 32))(v40, v21, v20);
  v52 = 1;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = v39;
  v25 = &v22[v39[5]];
  *v25 = v23;
  v25[4] = BYTE4(v23) & 1;
  v52 = 2;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = &v22[v24[6]];
  *v27 = v26;
  v27[4] = BYTE4(v26) & 1;
  v51 = 3;
  lazy protocol witness table accessor for type __RKEntityMoveEase and conformance __RKEntityMoveEase();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22[v18] = v52;
  v51 = 4;
  lazy protocol witness table accessor for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22[v17] = v52;
  v52 = 5;
  v22[v24[9]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v52 = 6;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = &v22[v24[10]];
  *v29 = v28;
  v29[4] = BYTE4(v28) & 1;
  v52 = 7;
  v22[v24[11]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v52 = 8;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = &v22[v24[12]];
  *v31 = v30;
  v31[4] = BYTE4(v30) & 1;
  v52 = 9;
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = &v40[v39[13]];
  *v33 = v32;
  v33[4] = BYTE4(v32) & 1;
  v51 = 10;
  lazy protocol witness table accessor for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v40[v38] = v52;
  v51 = 11;
  lazy protocol witness table accessor for type __RKEntityHideActionBuildOutAnimationType and conformance __RKEntityHideActionBuildOutAnimationType();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v19 + 8))(v48, v49);
  v35 = v40;
  v34 = v41;
  v40[v37] = v52;
  outlined init with copy of __RKEntityTriggerSpecification(v35, v34, type metadata accessor for __RKEntityHideActionArguments);
  __swift_destroy_boxed_opaque_existential_1(v50);
  return outlined destroy of __RKEntityTriggerSpecification(v35, type metadata accessor for __RKEntityHideActionArguments);
}

uint64_t __RKEntityEmphasisActionArguments.animationStyle.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t __RKEntityEmphasisActionArguments.animationStyle.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t __RKEntityEmphasisActionArguments.emphasisAnimationType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t __RKEntityEmphasisActionArguments.emphasisAnimationType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  *(v1 + *(result + 32)) = v2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntityEmphasisActionArguments.CodingKeys()
{
  v1 = *v0;
  v2 = 0x746567726174;
  v3 = 0x6F69746172657469;
  v4 = 0x6F6974616D696E61;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461727564;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityEmphasisActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __RKEntityEmphasisActionArguments.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityEmphasisActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityEmphasisActionArguments.CodingKeys and conformance __RKEntityEmphasisActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityEmphasisActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityEmphasisActionArguments.CodingKeys and conformance __RKEntityEmphasisActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityEmphasisActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit33__RKEntityEmphasisActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit33__RKEntityEmphasisActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityEmphasisActionArguments.CodingKeys and conformance __RKEntityEmphasisActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17[15] = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for __RKEntityEmphasisActionArguments(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 4);
    v17[14] = 1;
    v17[12] = v12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = (v3 + v11[6]);
    v15 = *v14;
    LOBYTE(v14) = *(v14 + 4);
    v17[11] = 2;
    v17[8] = v14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17[7] = *(v3 + v11[7]);
    v17[6] = 3;
    lazy protocol witness table accessor for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17[5] = *(v3 + v11[8]);
    v17[4] = 4;
    lazy protocol witness table accessor for type __RKEntityEmphasisAnimationType and conformance __RKEntityEmphasisAnimationType();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __RKEntityEmphasisActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v31 = type metadata accessor for UUID();
  v28 = *(v31 - 8);
  v3 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v31);
  v32 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit33__RKEntityEmphasisActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit33__RKEntityEmphasisActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v27 - v7;
  v9 = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 28);
  v12[v14] = 3;
  v15 = *(v13 + 32);
  v12[v15] = 8;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityEmphasisActionArguments.CodingKeys and conformance __RKEntityEmphasisActionArguments.CodingKeys();
  v33 = v8;
  v17 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v14;
  v18 = v28;
  v41 = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v19 = v31;
  v20 = v30;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 32))(v12, v32, v19);
  v40 = 1;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = &v12[*(v9 + 20)];
  *v22 = v21;
  v22[4] = BYTE4(v21) & 1;
  v39 = 2;
  v23 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v24 = &v12[*(v9 + 24)];
  *v24 = v23;
  v24[4] = BYTE4(v23) & 1;
  v37 = 3;
  lazy protocol witness table accessor for type __RKEntityActionAnimationStyle and conformance __RKEntityActionAnimationStyle();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v25 = v29;
  v12[v34] = v38;
  v35 = 4;
  lazy protocol witness table accessor for type __RKEntityEmphasisAnimationType and conformance __RKEntityEmphasisAnimationType();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v25 + 8))(v33, v20);
  v12[v15] = v36;
  outlined init with copy of __RKEntityTriggerSpecification(v12, v27, type metadata accessor for __RKEntityEmphasisActionArguments);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of __RKEntityTriggerSpecification(v12, type metadata accessor for __RKEntityEmphasisActionArguments);
}

uint64_t __RKEntityCustomActionArguments.actionIdentifier.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t __RKEntityCustomActionArguments.actionIdentifier.setter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));
  v7 = v6[1];

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t __RKEntityAudioActionArguments.type.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityAudioActionArguments(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t __RKEntityAudioActionArguments.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityAudioActionArguments(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t __RKEntityAudioActionArguments.volume.getter()
{
  v1 = (v0 + *(type metadata accessor for __RKEntityAudioActionArguments(0) + 28));
  result = *v1;
  v3 = *(v1 + 8);
  return result;
}

uint64_t __RKEntityAudioActionArguments.volume.setter(uint64_t a1, char a2)
{
  result = type metadata accessor for __RKEntityAudioActionArguments(0);
  v6 = v2 + *(result + 28);
  *v6 = a1;
  *(v6 + 8) = a2 & 1;
  return result;
}

uint64_t __RKEntityAudioActionArguments.loops.setter(char a1)
{
  result = type metadata accessor for __RKEntityAudioActionArguments(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t __RKEntityAudioActionArguments.spatialMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityAudioActionArguments(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t __RKEntityAudioActionArguments.spatialMode.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityAudioActionArguments(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t __RKEntityAudioActionArguments.multiplePerformBehavior.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityAudioActionArguments(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntityAudioActionArguments.CodingKeys()
{
  v1 = *v0;
  v2 = 0x746567726174;
  v3 = 0x4D6C616974617073;
  if (v1 != 5)
  {
    v3 = 0xD000000000000017;
  }

  v4 = 0x656D756C6F76;
  if (v1 != 3)
  {
    v4 = 0x73706F6F6CLL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1752457584;
  if (v1 != 1)
  {
    v5 = 1701869940;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityAudioActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __RKEntityAudioActionArguments.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityAudioActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityAudioActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityAudioActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityAudioActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityAudioActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20[15] = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for __RKEntityAudioActionArguments(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v20[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v20[13] = *(v3 + v11[6]);
    v20[12] = 2;
    lazy protocol witness table accessor for type __RKEntityAudioActionType and conformance __RKEntityAudioActionType();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = (v3 + v11[7]);
    v16 = *v15;
    v17 = *(v15 + 8);
    v20[11] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v18 = *(v3 + v11[8]);
    v20[10] = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20[9] = *(v3 + v11[9]);
    v20[8] = 5;
    lazy protocol witness table accessor for type __RKAudioSpatialModeSelection and conformance __RKAudioSpatialModeSelection();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20[7] = *(v3 + v11[10]);
    v20[6] = 6;
    lazy protocol witness table accessor for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __RKEntityAudioActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v37 = type metadata accessor for UUID();
  v35 = *(v37 - 8);
  v3 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityAudioActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityAudioActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v34 = *(v39 - 8);
  v5 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v39);
  v7 = &v30 - v6;
  v8 = type metadata accessor for __RKEntityAudioActionArguments(0);
  v9 = *(*(v8 - 1) + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 24);
  v11[v13] = 3;
  v14 = *(v12 + 36);
  v11[v14] = 3;
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityAudioActionArguments.CodingKeys and conformance __RKEntityAudioActionArguments.CodingKeys();
  v38 = v7;
  v16 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v14;
  v32 = v13;
  v17 = v34;
  v18 = v35;
  v40 = a1;
  v50 = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v20 = v36;
  v19 = v37;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v11;
  (*(v18 + 32))(v11, v20, v19);
  v49 = 1;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = &v11[v8[5]];
  *v23 = v22;
  v23[1] = v24;
  v47 = 2;
  lazy protocol witness table accessor for type __RKEntityAudioActionType and conformance __RKEntityAudioActionType();
  v36 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v25 = v40;
  *(v21 + v32) = v48;
  v46 = 3;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = v21 + v8[7];
  *v27 = v26;
  *(v27 + 8) = v28 & 1;
  v45 = 4;
  *(v21 + v8[8]) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v43 = 5;
  lazy protocol witness table accessor for type __RKAudioSpatialModeSelection and conformance __RKAudioSpatialModeSelection();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v21 + v31) = v44;
  v41 = 6;
  lazy protocol witness table accessor for type __RKEntityActionMultiplePerformBehavior and conformance __RKEntityActionMultiplePerformBehavior();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v17 + 8))(v38, v39);
  *(v21 + v8[10]) = v42;
  outlined init with copy of __RKEntityTriggerSpecification(v21, v33, type metadata accessor for __RKEntityAudioActionArguments);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return outlined destroy of __RKEntityTriggerSpecification(v21, type metadata accessor for __RKEntityAudioActionArguments);
}

uint64_t __RKEntityTransformActionArguments.orientation.getter()
{
  v1 = type metadata accessor for __RKEntityTransformActionArguments(0);
  result = 0;
  v3 = (v0 + *(v1 + 24));
  if ((v3[2] & 1) == 0)
  {
    result = *v3;
    v4 = v3[1];
  }

  return result;
}

uint64_t __RKEntityTransformActionArguments.orientation.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  v8 = v3 + *(result + 24);
  *v8 = 0;
  *(v8 + 8) = 0;
  *(v8 + 16) = 1;
  if ((a3 & 1) == 0)
  {
    *v8 = a1;
    *(v8 + 8) = a2;
    *(v8 + 16) = 0;
  }

  return result;
}

void (*__RKEntityTransformActionArguments.orientation.modify(uint64_t *a1))(void **a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x20uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = *(type metadata accessor for __RKEntityTransformActionArguments(0) + 24);
  *(v4 + 20) = v5;
  v6 = (v1 + v5);
  v7 = *(v1 + v5 + 16);
  v8 = 0uLL;
  if ((v7 & 1) == 0)
  {
    v8 = *v6;
  }

  *v4 = v8;
  *(v4 + 16) = v7;
  return __RKEntityTransformActionArguments.orientation.modify;
}

void __RKEntityTransformActionArguments.orientation.modify(void **a1)
{
  v1 = *a1;
  v2 = *(v1 + 3) + v1[5];
  v3 = *v1;
  v4 = *(v1 + 16);
  *v2 = 0;
  *(v2 + 8) = 0;
  *(v2 + 16) = 1;
  if ((v4 & 1) == 0)
  {
    v5 = *(v1 + 3) + v1[5];
    *v5 = v3;
    *(v5 + 16) = 0;
  }

  free(v1);
}

uint64_t __RKEntityTransformActionArguments.moveType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  *a1 = *(v1 + *(result + 36));
  return result;
}

uint64_t __RKEntityTransformActionArguments.moveType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  *(v1 + *(result + 36)) = v2;
  return result;
}

uint64_t __RKEntityTransformActionArguments.ease.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t __RKEntityTransformActionArguments.ease.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t __RKEntityTransformActionArguments.easeType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

uint64_t __RKEntityTransformActionArguments.easeType.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  *(v1 + *(result + 44)) = v2;
  return result;
}

uint64_t __RKEntityTransformActionArguments.respectPhysics.setter(char a1)
{
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t __RKEntityTransformActionArguments.physicsAngularCoefficient.setter(uint64_t a1)
{
  result = type metadata accessor for __RKEntityTransformActionArguments(0);
  v4 = v1 + *(result + 56);
  *v4 = a1;
  *(v4 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t __RKEntityTransformActionArguments.relativeToEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for __RKEntityTransformActionArguments(0) + 60);

  return outlined init with copy of UUID?(v3, a1);
}

uint64_t __RKEntityTransformActionArguments.relativeToEntity.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for __RKEntityTransformActionArguments(0) + 60);

  return outlined assign with take of UUID?(a1, v3);
}

uint64_t __RKEntityTransformActionArguments.init(target:location:orientation:scale:duration:moveType:ease:easeType:respectPhysics:physicsLinearCoefficient:physicsAngularCoefficient:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, float a10@<S0>, float a11@<S1>, float a12@<S2>, char *a13, char *a14, char *a15, char a16)
{
  v48 = *a14;
  v46 = *a13;
  v47 = *a15;
  v22 = type metadata accessor for __RKEntityTransformActionArguments(0);
  v23 = v22[9];
  *(a9 + v23) = 2;
  v24 = v22[10];
  *(a9 + v24) = 10;
  v25 = v22[11];
  *(a9 + v25) = 3;
  v26 = v22[15];
  v27 = type metadata accessor for UUID();
  v28 = *(v27 - 8);
  v41 = *(v28 + 56);
  v41(a9 + v26, 1, 1, v27);
  (*(v28 + 32))(a9, a1, v27);
  v29 = 1.0;
  if (a10 >= 0.0)
  {
    v29 = a10;
  }

  v30 = a9 + v22[5];
  v31 = a9 + v22[6];
  v32 = a9 + v22[8];
  *v32 = v29;
  *(v32 + 4) = 0;
  *v30 = a2;
  *(v30 + 8) = a3;
  *(v30 + 16) = a4 & 1;
  *v31 = 0;
  *(v31 + 8) = 0;
  *(v31 + 16) = 1;
  if ((a7 & 1) == 0)
  {
    *v31 = a5;
    *(v31 + 8) = a6;
    *(v31 + 16) = 0;
  }

  v33 = a9 + v22[7];
  v34 = v22[12];
  v35 = a9 + v22[13];
  v36 = v22[14];
  *v33 = a8;
  *(v33 + 4) = BYTE4(a8) & 1;
  *(a9 + v23) = v46;
  v37 = a9 + v36;
  *(a9 + v24) = v48;
  *(a9 + v25) = v47;
  *(a9 + v34) = a16 & 1;
  *v35 = a11;
  *(v35 + 4) = 0;
  *v37 = a12;
  *(v37 + 4) = 0;
  outlined destroy of BodyTrackingComponent?(a9 + v26, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);

  return (v41)(a9 + v26, 1, 1, v27);
}

unint64_t __RKEntityTransformActionArguments.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0xD000000000000019;
    if (a1 != 10)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 == 9)
    {
      v6 = 0xD000000000000018;
    }

    v7 = 1702060389;
    v8 = 0x6570795465736165;
    if (a1 != 7)
    {
      v8 = 0x5074636570736572;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746567726174;
    v2 = 0x656C616373;
    v3 = 0x6E6F697461727564;
    if (a1 != 4)
    {
      v3 = 0x6570795465766F6DLL;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x6E6F697461636F6CLL;
    if (a1 != 1)
    {
      v4 = 0x61746E6569726F5FLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityTransformActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __RKEntityTransformActionArguments.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityTransformActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityTransformActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityTransformActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit34__RKEntityTransformActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit34__RKEntityTransformActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v30) = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for __RKEntityTransformActionArguments(0);
    v28 = v3;
    v29 = v11;
    v12 = (v3 + *(v11 + 20));
    v13 = *(v12 + 16);
    v30 = *v12;
    v31 = v13;
    v32 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = (v28 + v29[6]);
    v15 = *(v14 + 16);
    v30 = *v14;
    v31 = v15;
    v32 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = v28;
    v17 = (v28 + v29[7]);
    v18 = *v17;
    LOBYTE(v17) = *(v17 + 4);
    LOBYTE(v30) = 3;
    v32 = v17;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v19 = (v16 + v29[8]);
    v20 = *v19;
    LOBYTE(v19) = *(v19 + 4);
    LOBYTE(v30) = 4;
    v32 = v19;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v30) = *(v16 + v29[9]);
    v32 = 5;
    lazy protocol witness table accessor for type __RKEntityMoveSelection and conformance __RKEntityMoveSelection();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v30) = *(v16 + v29[10]);
    v32 = 6;
    lazy protocol witness table accessor for type __RKEntityMoveEase and conformance __RKEntityMoveEase();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v30) = *(v16 + v29[11]);
    v32 = 7;
    lazy protocol witness table accessor for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = *(v16 + v29[12]);
    LOBYTE(v30) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = (v16 + v29[13]);
    v23 = *v22;
    LOBYTE(v22) = *(v22 + 4);
    LOBYTE(v30) = 9;
    v32 = v22;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v24 = (v16 + v29[14]);
    v25 = *v24;
    LOBYTE(v24) = *(v24 + 4);
    LOBYTE(v30) = 10;
    v32 = v24;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v26 = v29[15];
    LOBYTE(v30) = 11;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __RKEntityTransformActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v47 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit34__RKEntityTransformActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit34__RKEntityTransformActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v56 = *(v59 - 8);
  v10 = *(v56 + 64);
  MEMORY[0x1EEE9AC00](v59);
  v12 = &v47 - v11;
  v13 = type metadata accessor for __RKEntityTransformActionArguments(0);
  v14 = *(*(v13 - 8) + 64);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v18[9];
  v17[v19] = 2;
  v20 = v18[10];
  v17[v20] = 10;
  v21 = v18[11];
  v17[v21] = 3;
  v22 = v18[15];
  v54 = v7;
  v23 = *(v7 + 56);
  v61 = v22;
  v62 = v17;
  v57 = v6;
  v23(&v17[v22], 1, 1, v6, v15);
  v24 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityTransformActionArguments.CodingKeys and conformance __RKEntityTransformActionArguments.CodingKeys();
  v58 = v12;
  v25 = v60;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return outlined destroy of BodyTrackingComponent?(&v62[v61], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v49 = v20;
    v50 = v19;
    v48 = v21;
    v51 = v13;
    v26 = v54;
    v60 = a1;
    LOBYTE(v63) = 0;
    v27 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v28 = v55;
    v29 = v57;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v30 = v29;
    v31 = v62;
    (*(v26 + 32))(v62, v28, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    v65 = 1;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v55 = v27;
    v32 = v51;
    v33 = &v31[v51[5]];
    v34 = v64;
    *v33 = v63;
    v33[16] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    v65 = 2;
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD4<Float> and conformance SIMD4<A>, &_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v35 = &v31[v32[6]];
    v36 = v64;
    *v35 = v63;
    v35[16] = v36;
    LOBYTE(v63) = 3;
    v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v38 = &v31[v32[7]];
    *v38 = v37;
    v38[4] = BYTE4(v37) & 1;
    LOBYTE(v63) = 4;
    v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v40 = &v31[v32[8]];
    *v40 = v39;
    v40[4] = BYTE4(v39) & 1;
    v65 = 5;
    lazy protocol witness table accessor for type __RKEntityMoveSelection and conformance __RKEntityMoveSelection();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v31[v50] = v63;
    v65 = 6;
    lazy protocol witness table accessor for type __RKEntityMoveEase and conformance __RKEntityMoveEase();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v31[v49] = v63;
    v65 = 7;
    lazy protocol witness table accessor for type __RKEntityMoveEaseType and conformance __RKEntityMoveEaseType();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v31[v48] = v63;
    LOBYTE(v63) = 8;
    v31[v32[12]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v63) = 9;
    v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v42 = &v62[v51[13]];
    *v42 = v41;
    v42[4] = BYTE4(v41) & 1;
    LOBYTE(v63) = 10;
    v43 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v44 = &v62[v51[14]];
    *v44 = v43;
    v44[4] = BYTE4(v43) & 1;
    LOBYTE(v63) = 11;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v56 + 8))(v58, v59);
    v45 = v62;
    outlined assign with take of UUID?(v53, &v62[v61]);
    outlined init with copy of __RKEntityTriggerSpecification(v45, v52, type metadata accessor for __RKEntityTransformActionArguments);
    __swift_destroy_boxed_opaque_existential_1(v60);
    return outlined destroy of __RKEntityTriggerSpecification(v45, type metadata accessor for __RKEntityTransformActionArguments);
  }
}

uint64_t __RKEntityTransformActionArguments.location.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  result = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  return result;
}

uint64_t __RKEntityTransformActionArguments.location.setter(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v9 = v4 + *(result + 20);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3 & 1;
  return result;
}

uint64_t __RKEntityForceActionArguments.velocity.getter()
{
  v1 = (v0 + *(type metadata accessor for __RKEntityForceActionArguments(0) + 24));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t __RKEntityForceActionArguments.velocity.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for __RKEntityForceActionArguments(0);
  v8 = v3 + *(result + 24);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntityForceActionArguments.CodingKeys()
{
  v1 = 0x6563726F66;
  if (*v0 != 1)
  {
    v1 = 0x797469636F6C6576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746567726174;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityForceActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __RKEntityForceActionArguments.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityForceActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityForceActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityForceActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityForceActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit30__RKEntityForceActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for __RKEntityForceActionArguments(0);
    v12 = (v3 + *(v11 + 20));
    v13 = *(v12 + 16);
    v17 = *v12;
    v18 = v13;
    v19 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = (v3 + *(v11 + 24));
    v15 = *(v14 + 16);
    v17 = *v14;
    v18 = v15;
    v19 = 2;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __RKEntityForceActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for UUID();
  v28 = *(v4 - 8);
  v5 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityForceActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit30__RKEntityForceActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v30 = *(v7 - 8);
  v31 = v7;
  v8 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - v9;
  v11 = type metadata accessor for __RKEntityForceActionArguments(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityForceActionArguments.CodingKeys and conformance __RKEntityForceActionArguments.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = a1;
  v16 = v14;
  v17 = v28;
  LOBYTE(v32) = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v18 = v29;
  v19 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = *(v17 + 32);
  v29 = v4;
  v20(v16, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v34 = 1;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v16 + *(v11 + 20);
  v22 = v33;
  *v21 = v32;
  *(v21 + 16) = v22;
  v34 = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23 = v16 + *(v11 + 24);
  (*(v30 + 8))(v10, v19);
  v24 = v33;
  *v23 = v32;
  *(v23 + 16) = v24;
  outlined init with copy of __RKEntityTriggerSpecification(v16, v27, type metadata accessor for __RKEntityForceActionArguments);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return outlined destroy of __RKEntityTriggerSpecification(v16, type metadata accessor for __RKEntityForceActionArguments);
}

uint64_t __RKChangeSceneActionArguments.targetSceneIdentifier.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t __RKChangeSceneActionArguments.targetSceneIdentifier.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t __RKEntitySwapEntityActionArguments.init(target:newTarget:buildOutAction:buildInAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 32);
  v11(a5, a1, v10);
  v12 = type metadata accessor for __RKEntitySwapEntityActionArguments(0);
  v11(a5 + v12[5], a2, v10);
  outlined init with take of __RKEntityTriggerSpecification(a3, a5 + v12[6], type metadata accessor for __RKEntityHideActionArguments);
  return outlined init with take of __RKEntityTriggerSpecification(a4, a5 + v12[7], type metadata accessor for __RKEntityShowActionArguments);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntitySwapEntityActionArguments.CodingKeys()
{
  v1 = 0x746567726174;
  v2 = 0x74754F646C697562;
  if (*v0 != 2)
  {
    v2 = 0x416E49646C697562;
  }

  if (*v0)
  {
    v1 = 0x656772615477656ELL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntitySwapEntityActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __RKEntitySwapEntityActionArguments.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntitySwapEntityActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntitySwapEntityActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntitySwapEntityActionArguments.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit35__RKEntitySwapEntityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit35__RKEntitySwapEntityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v14 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v9 = type metadata accessor for __RKEntitySwapEntityActionArguments(0);
    v10 = v9[5];
    v17 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = v9[6];
    v16 = 2;
    type metadata accessor for __RKEntityHideActionArguments(0);
    lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityHideActionArguments and conformance __RKEntityHideActionArguments, type metadata accessor for __RKEntityHideActionArguments);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = v9[7];
    v15 = 3;
    type metadata accessor for __RKEntityShowActionArguments(0);
    lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityShowActionArguments and conformance __RKEntityShowActionArguments, type metadata accessor for __RKEntityShowActionArguments);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t __RKEntitySwapEntityActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = type metadata accessor for __RKEntityShowActionArguments(0);
  v3 = *(*(v34 - 8) + 64);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for __RKEntityHideActionArguments(0);
  v5 = *(*(v36 - 8) + 64);
  MEMORY[0x1EEE9AC00](v36);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = type metadata accessor for UUID();
  v37 = *(v40 - 8);
  v8 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v38 = &v30 - v12;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit35__RKEntitySwapEntityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit35__RKEntitySwapEntityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v39 = *(v42 - 8);
  v13 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v42);
  v15 = &v30 - v14;
  v16 = type metadata accessor for __RKEntitySwapEntityActionArguments(0);
  v17 = *(*(v16 - 1) + 64);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v30 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntitySwapEntityActionArguments.CodingKeys and conformance __RKEntitySwapEntityActionArguments.CodingKeys();
  v41 = v15;
  v21 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v7;
  v32 = v10;
  v43 = v19;
  v47 = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v22 = v38;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v40;
  v24 = *(v37 + 32);
  v24(v43, v22, v40);
  v46 = 1;
  v25 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24(&v43[v16[5]], v25, v23);
  v45 = 2;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityHideActionArguments and conformance __RKEntityHideActionArguments, type metadata accessor for __RKEntityHideActionArguments);
  v26 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v43;
  outlined init with take of __RKEntityTriggerSpecification(v26, &v43[v16[6]], type metadata accessor for __RKEntityHideActionArguments);
  v44 = 3;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityShowActionArguments and conformance __RKEntityShowActionArguments, type metadata accessor for __RKEntityShowActionArguments);
  v29 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v39 + 8))(v41, v42);
  outlined init with take of __RKEntityTriggerSpecification(v29, v28 + v16[7], type metadata accessor for __RKEntityShowActionArguments);
  outlined init with copy of __RKEntityTriggerSpecification(v28, v33, type metadata accessor for __RKEntitySwapEntityActionArguments);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of __RKEntityTriggerSpecification(v28, type metadata accessor for __RKEntitySwapEntityActionArguments);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance __RKEntitySwapEntityActionArguments(uint64_t a1, uint64_t a2, int *a3)
{
  if (static UUID.== infix(_:_:)() & 1) != 0 && (v6 = a3[5], (static UUID.== infix(_:_:)()) && (specialized static __RKEntityHideActionArguments.== infix(_:_:)(a1 + a3[6], a2 + a3[6], type metadata accessor for __RKEntityHideActionArguments, specialized == infix<A>(_:_:)))
  {
    v7 = specialized static __RKEntityHideActionArguments.== infix(_:_:)(a1 + a3[7], a2 + a3[7], type metadata accessor for __RKEntityShowActionArguments, specialized == infix<A>(_:_:));
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t __RKEntitySpinActionArguments.direction.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntitySpinActionArguments(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t __RKEntitySpinActionArguments.direction.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntitySpinActionArguments(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntitySpinActionArguments.CodingKeys()
{
  v1 = *v0;
  v2 = 0x746567726174;
  v3 = 0x6F69746172657469;
  v4 = 0x6F69746365726964;
  if (v1 != 3)
  {
    v4 = 1936291937;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F697461727564;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntitySpinActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __RKEntitySpinActionArguments.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntitySpinActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntitySpinActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntitySpinActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit29__RKEntitySpinActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit29__RKEntitySpinActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for __RKEntitySpinActionArguments(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 4);
    LOBYTE(v19) = 1;
    v21 = v12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = (v3 + v11[6]);
    v15 = *v14;
    LOBYTE(v14) = *(v14 + 4);
    LOBYTE(v19) = 2;
    v21 = v14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v19) = *(v3 + v11[7]);
    v21 = 3;
    lazy protocol witness table accessor for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = (v3 + v11[8]);
    v17 = *(v16 + 16);
    v19 = *v16;
    v20 = v17;
    v21 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __RKEntitySpinActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = type metadata accessor for UUID();
  v33 = *(v3 - 8);
  v4 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v3);
  v37 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit29__RKEntitySpinActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit29__RKEntitySpinActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v34 = *(v6 - 8);
  v35 = v6;
  v7 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - v8;
  v10 = type metadata accessor for __RKEntitySpinActionArguments(0);
  v11 = *(*(v10 - 8) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v14 + 28);
  v13[v15] = 2;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntitySpinActionArguments.CodingKeys and conformance __RKEntitySpinActionArguments.CodingKeys();
  v36 = v9;
  v17 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v10;
  v18 = v33;
  LOBYTE(v39) = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v19 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v20 = *(v18 + 32);
  v21 = v13;
  v20(v13, v37, v3);
  LOBYTE(v39) = 1;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v37 = v3;
  v23 = v38;
  v24 = &v13[*(v38 + 20)];
  *v24 = v22;
  v24[4] = BYTE4(v22) & 1;
  LOBYTE(v39) = 2;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v26 = v34;
  v27 = v21 + *(v23 + 24);
  *v27 = v25;
  *(v27 + 4) = BYTE4(v25) & 1;
  v41 = 3;
  lazy protocol witness table accessor for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v21 + v15) = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v41 = 4;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = v21 + *(v38 + 32);
  (*(v26 + 8))(v36, v19);
  v29 = v40;
  *v28 = v39;
  *(v28 + 16) = v29;
  outlined init with copy of __RKEntityTriggerSpecification(v21, v32, type metadata accessor for __RKEntitySpinActionArguments);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of __RKEntityTriggerSpecification(v21, type metadata accessor for __RKEntitySpinActionArguments);
}

uint64_t __RKEntityTransformActionArguments.scale.setter(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2(0);
  v5 = v2 + *(result + 28);
  *v5 = a1;
  *(v5 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t __RKEntitySpinActionArguments.axis.getter(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  result = *v2;
  v4 = v2[1];
  v5 = *(v2 + 16);
  return result;
}

uint64_t __RKEntitySpinActionArguments.axis.setter(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void))
{
  result = a4(0);
  v9 = v4 + *(result + 32);
  *v9 = a1;
  *(v9 + 8) = a2;
  *(v9 + 16) = a3 & 1;
  return result;
}

uint64_t __RKEntityOrbitEntityActionArguments.orientToPath.setter(char a1)
{
  result = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t __RKEntityOrbitEntityActionArguments.spinDirection.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t __RKEntityOrbitEntityActionArguments.spinDirection.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t __RKEntityOrbitEntityActionArguments.respectPhysics.setter(char a1)
{
  result = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t __RKEntityOrbitEntityActionArguments.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v5 = 0x5074636570736572;
    v6 = 0xD000000000000018;
    if (a1 != 8)
    {
      v6 = 0xD000000000000019;
    }

    if (a1 != 7)
    {
      v5 = v6;
    }

    v7 = 0x6F54746E6569726FLL;
    if (a1 != 5)
    {
      v7 = 0x657269446E697073;
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
    v1 = 0x746567726174;
    v2 = 0x6E6F697461727564;
    v3 = 0x6E6F697461746F72;
    if (a1 != 3)
    {
      v3 = 0x416C61746962726FLL;
    }

    if (a1 != 2)
    {
      v2 = v3;
    }

    if (a1)
    {
      v1 = 0x726154746F766970;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityOrbitEntityActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __RKEntityOrbitEntityActionArguments.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityOrbitEntityActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityOrbitEntityActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityOrbitEntityActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit36__RKEntityOrbitEntityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit36__RKEntityOrbitEntityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v26 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v26) = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
    v12 = v11[5];
    LOBYTE(v26) = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    LOBYTE(v13) = *(v13 + 4);
    LOBYTE(v26) = 2;
    v28 = v13;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = (v3 + v11[7]);
    v16 = *v15;
    LOBYTE(v15) = *(v15 + 4);
    LOBYTE(v26) = 3;
    v28 = v15;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v17 = (v3 + v11[8]);
    v18 = *(v17 + 16);
    v26 = *v17;
    v27 = v18;
    v28 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = *(v3 + v11[9]);
    LOBYTE(v26) = 5;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    LOBYTE(v26) = *(v3 + v11[10]);
    v28 = 6;
    lazy protocol witness table accessor for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20 = *(v3 + v11[11]);
    LOBYTE(v26) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = (v3 + v11[12]);
    v22 = *v21;
    LOBYTE(v21) = *(v21 + 4);
    LOBYTE(v26) = 8;
    v28 = v21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = (v3 + v11[13]);
    v24 = *v23;
    LOBYTE(v23) = *(v23 + 4);
    LOBYTE(v26) = 9;
    v28 = v23;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __RKEntityOrbitEntityActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v47 = type metadata accessor for UUID();
  v43 = *(v47 - 8);
  v3 = *(v43 + 64);
  MEMORY[0x1EEE9AC00](v47);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v44 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit36__RKEntityOrbitEntityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit36__RKEntityOrbitEntityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - v10;
  v12 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  v13 = *(*(v12 - 8) + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 + 40);
  v15[v17] = 2;
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityOrbitEntityActionArguments.CodingKeys and conformance __RKEntityOrbitEntityActionArguments.CodingKeys();
  v48 = v11;
  v19 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v38 = v17;
  v39 = v5;
  v40 = v12;
  v41 = v15;
  v49 = a1;
  LOBYTE(v50) = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v20 = v44;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v21 = v41;
  v22 = v20;
  v23 = v47;
  v44 = *(v43 + 32);
  (v44)(v41, v22, v47);
  LOBYTE(v50) = 1;
  v24 = v39;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v25 = v40;
  (v44)(&v21[v40[5]], v24, v23);
  LOBYTE(v50) = 2;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = &v21[v25[6]];
  *v27 = v26;
  v27[4] = BYTE4(v26) & 1;
  LOBYTE(v50) = 3;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = &v21[v25[7]];
  *v29 = v28;
  v29[4] = BYTE4(v28) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v52 = 4;
  lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v30 = &v21[v25[8]];
  v31 = v51;
  *v30 = v50;
  v30[16] = v31;
  LOBYTE(v50) = 5;
  v21[v25[9]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v52 = 6;
  lazy protocol witness table accessor for type __RKEntitySpinDirectionType and conformance __RKEntitySpinDirectionType();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21[v38] = v50;
  LOBYTE(v50) = 7;
  v21[v25[11]] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v50) = 8;
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v33 = &v21[v25[12]];
  *v33 = v32;
  v33[4] = BYTE4(v32) & 1;
  LOBYTE(v50) = 9;
  v34 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v35 = v41;
  v36 = &v41[v40[13]];
  (*(v45 + 8))(v48, v46);
  *v36 = v34;
  v36[4] = BYTE4(v34) & 1;
  outlined init with copy of __RKEntityTriggerSpecification(v35, v42, type metadata accessor for __RKEntityOrbitEntityActionArguments);
  __swift_destroy_boxed_opaque_existential_1(v49);
  return outlined destroy of __RKEntityTriggerSpecification(v35, type metadata accessor for __RKEntityOrbitEntityActionArguments);
}

uint64_t __RKEntityLookAtCameraActionArguments.direction.getter()
{
  v1 = (v0 + *(type metadata accessor for __RKEntityLookAtCameraActionArguments(0) + 28));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t __RKEntityLookAtCameraActionArguments.direction.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  v8 = v3 + *(result + 28);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t __RKEntityTransformActionArguments.duration.setter(uint64_t a1, uint64_t (*a2)(void))
{
  result = a2(0);
  v5 = v2 + *(result + 32);
  *v5 = a1;
  *(v5 + 4) = BYTE4(a1) & 1;
  return result;
}

uint64_t __RKEntityLookAtCameraActionArguments.upVector.getter()
{
  v1 = (v0 + *(type metadata accessor for __RKEntityLookAtCameraActionArguments(0) + 36));
  result = *v1;
  v3 = v1[1];
  v4 = *(v1 + 16);
  return result;
}

uint64_t __RKEntityLookAtCameraActionArguments.upVector.setter(uint64_t a1, uint64_t a2, char a3)
{
  result = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  v8 = v3 + *(result + 36);
  *v8 = a1;
  *(v8 + 8) = a2;
  *(v8 + 16) = a3 & 1;
  return result;
}

uint64_t __RKEntityLookAtCameraActionArguments.loops.setter(char a1)
{
  result = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntityLookAtCameraActionArguments.CodingKeys()
{
  v1 = *v0;
  v2 = 0x746567726174;
  v3 = 0x726F746365567075;
  if (v1 != 5)
  {
    v3 = 0x73706F6F6CLL;
  }

  v4 = 0x6F69746365726964;
  if (v1 != 3)
  {
    v4 = 0x6E6F697461746F72;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6E6F697461727564;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityLookAtCameraActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __RKEntityLookAtCameraActionArguments.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityLookAtCameraActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityLookAtCameraActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityLookAtCameraActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit37__RKEntityLookAtCameraActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit37__RKEntityLookAtCameraActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v24) = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    LOBYTE(v12) = *(v12 + 4);
    LOBYTE(v24) = 1;
    v26 = v12;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = (v3 + v11[6]);
    v15 = *v14;
    LOBYTE(v14) = *(v14 + 4);
    LOBYTE(v24) = 2;
    v26 = v14;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = (v3 + v11[7]);
    v17 = *(v16 + 16);
    v24 = *v16;
    v25 = v17;
    v26 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v18 = (v3 + v11[8]);
    v19 = *v18;
    LOBYTE(v18) = *(v18 + 4);
    LOBYTE(v24) = 4;
    v26 = v18;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v20 = (v3 + v11[9]);
    v21 = *(v20 + 16);
    v24 = *v20;
    v25 = v21;
    v26 = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = *(v3 + v11[10]);
    LOBYTE(v24) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __RKEntityLookAtCameraActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = type metadata accessor for UUID();
  v36 = *(v4 - 8);
  v5 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v38 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit37__RKEntityLookAtCameraActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit37__RKEntityLookAtCameraActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v35 = *(v37 - 8);
  v7 = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v37);
  v9 = v33 - v8;
  v10 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  v11 = *(*(v10 - 1) + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityLookAtCameraActionArguments.CodingKeys and conformance __RKEntityLookAtCameraActionArguments.CodingKeys();
  v39 = v9;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v35;
  v15 = v36;
  v17 = v13;
  LOBYTE(v40) = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(v13, v38, v4);
  LOBYTE(v40) = 1;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = &v13[v10[5]];
  *v19 = v18;
  v19[4] = BYTE4(v18) & 1;
  LOBYTE(v40) = 2;
  v20 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v21 = a1;
  v38 = v4;
  v22 = v17 + v10[6];
  *v22 = v20;
  *(v22 + 4) = BYTE4(v20) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  v42 = 3;
  v23 = lazy protocol witness table accessor for type SIMD3<Float> and conformance SIMD3<A>(&lazy protocol witness table cache variable for type SIMD3<Float> and conformance SIMD3<A>, &_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v33[1] = v23;
  v24 = v17 + v10[7];
  v25 = v41;
  *v24 = v40;
  *(v24 + 16) = v25;
  LOBYTE(v40) = 4;
  v26 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = v17 + v10[8];
  *v27 = v26;
  *(v27 + 4) = BYTE4(v26) & 1;
  v42 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v28 = v17 + v10[9];
  v29 = v41;
  *v28 = v40;
  *(v28 + 16) = v29;
  LOBYTE(v40) = 6;
  v30 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v31 = v10[10];
  (*(v16 + 8))(v39, v37);
  *(v17 + v31) = v30;
  outlined init with copy of __RKEntityTriggerSpecification(v17, v34, type metadata accessor for __RKEntityLookAtCameraActionArguments);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return outlined destroy of __RKEntityTriggerSpecification(v17, type metadata accessor for __RKEntityLookAtCameraActionArguments);
}

uint64_t __RKEntitySetOpacityActionArguments.duration.setter(float a1)
{
  result = type metadata accessor for __RKEntitySetOpacityActionArguments(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t __RKEntitySetOpacityActionArguments.opacity.setter(float a1)
{
  result = type metadata accessor for __RKEntitySetOpacityActionArguments(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t __RKEntitySetOpacityActionArguments.init(target:duration:opacity:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float a3@<S0>, float a4@<S1>)
{
  v8 = type metadata accessor for UUID();
  (*(*(v8 - 8) + 32))(a2, a1, v8);
  result = type metadata accessor for __RKEntitySetOpacityActionArguments(0);
  *(a2 + *(result + 20)) = a3;
  *(a2 + *(result + 24)) = a4;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntitySetOpacityActionArguments.CodingKeys()
{
  v1 = 0x6E6F697461727564;
  if (*v0 != 1)
  {
    v1 = 0x7974696361706FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746567726174;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntitySetOpacityActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __RKEntitySetOpacityActionArguments.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntitySetOpacityActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntitySetOpacityActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntitySetOpacityActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit35__RKEntitySetOpacityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit35__RKEntitySetOpacityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for __RKEntitySetOpacityActionArguments(0);
    v12 = *(v3 + *(v11 + 20));
    v15[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + *(v11 + 24));
    v15[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __RKEntitySetOpacityActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for UUID();
  v24 = *(v4 - 8);
  v5 = *(v24 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v27 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit35__RKEntitySetOpacityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit35__RKEntitySetOpacityActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v25 = *(v7 - 8);
  v26 = v7;
  v8 = *(v25 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - v9;
  v11 = type metadata accessor for __RKEntitySetOpacityActionArguments(0);
  v12 = *(*(v11 - 8) + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntitySetOpacityActionArguments.CodingKeys and conformance __RKEntitySetOpacityActionArguments.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v16 = v14;
  v17 = v24;
  v30 = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  v18 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 32))(v16, v27, v4);
  v29 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  *(v16 + *(v11 + 20)) = v19;
  v28 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  v21 = v20;
  (*(v25 + 8))(v10, v18);
  *(v16 + *(v11 + 24)) = v21;
  outlined init with copy of __RKEntityTriggerSpecification(v16, v23, type metadata accessor for __RKEntitySetOpacityActionArguments);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of __RKEntityTriggerSpecification(v16, type metadata accessor for __RKEntitySetOpacityActionArguments);
}

uint64_t __RKChangeSceneActionArguments.target.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t __RKEntityCustomActionArguments.target.setter(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t __RKEntityPlayTimelineActionArguments.animationLibraryKey.getter()
{
  v1 = (v0 + *(type metadata accessor for __RKEntityPlayTimelineActionArguments(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t __RKEntityPlayTimelineActionArguments.animationLibraryKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for __RKEntityPlayTimelineActionArguments(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t __RKEntityPlayTimelineActionArguments.animationLibraryKeyOverrideEntity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for __RKEntityPlayTimelineActionArguments(0) + 28);

  return outlined init with copy of UUID?(v3, a1);
}

uint64_t __RKEntityPlayTimelineActionArguments.animationLibraryKeyOverrideEntity.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for __RKEntityPlayTimelineActionArguments(0) + 28);

  return outlined assign with take of UUID?(a1, v3);
}

uint64_t __RKEntityPlayTimelineActionArguments.animationLibraryKeyOverrideKey.getter()
{
  v1 = (v0 + *(type metadata accessor for __RKEntityPlayTimelineActionArguments(0) + 32));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t __RKEntityPlayTimelineActionArguments.animationLibraryKeyOverrideKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for __RKEntityPlayTimelineActionArguments(0) + 32));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t __RKEntityPlayTimelineActionArguments.init(target:animationLibraryComponentEntity:animationLibraryKey:animationLibraryKeyOverrideEntity:animationLibraryKeyOverrideKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v12 = type metadata accessor for __RKEntityPlayTimelineActionArguments(0);
  v13 = v12[7];
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  (*(v15 + 56))(a8 + v13, 1, 1, v14);
  v16 = (a8 + v12[8]);
  v17 = *(v15 + 32);
  v17(a8, a1, v14);
  v17(a8 + v12[5], a2, v14);
  v18 = (a8 + v12[6]);
  *v18 = a3;
  v18[1] = a4;
  result = outlined assign with take of UUID?(a5, a8 + v13);
  *v16 = a6;
  v16[1] = a7;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntityPlayTimelineActionArguments.CodingKeys()
{
  v1 = *v0;
  v2 = 0x746567726174;
  v3 = 0xD000000000000021;
  if (v1 != 3)
  {
    v3 = 0xD00000000000001ELL;
  }

  if (v1 == 2)
  {
    v3 = 0xD000000000000013;
  }

  if (*v0)
  {
    v2 = 0xD00000000000001FLL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityPlayTimelineActionArguments.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __RKEntityPlayTimelineActionArguments.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityPlayTimelineActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityPlayTimelineActionArguments.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityPlayTimelineActionArguments.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy17RealityFoundation37__RKEntityPlayTimelineActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy17RealityFoundation37__RKEntityPlayTimelineActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v26 = 0;
  type metadata accessor for UUID();
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for __RKEntityPlayTimelineActionArguments(0);
    v12 = v11[5];
    v25 = 1;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = (v3 + v11[6]);
    v14 = *v13;
    v15 = v13[1];
    v24 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v11[7];
    v23 = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v17 = (v3 + v11[8]);
    v18 = *v17;
    v19 = v17[1];
    v22 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __RKEntityPlayTimelineActionArguments.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v4 = *(*(v3 - 8) + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41 = v38 - v5;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v43 = v38 - v12;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy17RealityFoundation37__RKEntityPlayTimelineActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy17RealityFoundation37__RKEntityPlayTimelineActionArgumentsV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v42 = *(v44 - 8);
  v13 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v44);
  v15 = v38 - v14;
  v16 = type metadata accessor for __RKEntityPlayTimelineActionArguments(0);
  v17 = *(*(v16 - 8) + 64);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v21 = *(v20 + 28);
  v22 = *(v7 + 56);
  v47 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = v21;
  v22(&v47[v21], 1, 1, v6, v18);
  v23 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityPlayTimelineActionArguments.CodingKeys and conformance __RKEntityPlayTimelineActionArguments.CodingKeys();
  v45 = v15;
  v24 = v46;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return outlined destroy of BodyTrackingComponent?(&v47[v48], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  }

  else
  {
    v25 = v10;
    v39 = v16;
    v46 = v7;
    v53 = 0;
    v26 = lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v27 = v47;
    v38[1] = v26;
    v28 = *(v46 + 32);
    v28(v47, v43, v6);
    v52 = 1;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v38[0] = v6;
    v29 = v39;
    v28((v27 + *(v39 + 20)), v25, v6);
    v51 = 2;
    v43 = 0;
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v31 = (v27 + *(v29 + 24));
    *v31 = v30;
    v31[1] = v32;
    v50 = 3;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of UUID?(v41, v27 + v48);
    v49 = 4;
    v33 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v35 = v34;
    v36 = (v27 + *(v39 + 32));
    (*(v42 + 8))(v45, v44);
    *v36 = v33;
    v36[1] = v35;
    outlined init with copy of __RKEntityTriggerSpecification(v27, v40, type metadata accessor for __RKEntityPlayTimelineActionArguments);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return outlined destroy of __RKEntityTriggerSpecification(v27, type metadata accessor for __RKEntityPlayTimelineActionArguments);
  }
}

uint64_t __RKEntityInteractionSpecification.accessibilityDescription.getter()
{
  v1 = (v0 + *(type metadata accessor for __RKEntityInteractionSpecification(0) + 24));
  v2 = *v1;
  v3 = v1[1];

  return v2;
}

uint64_t __RKEntityInteractionSpecification.accessibilityDescription.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for __RKEntityInteractionSpecification(0) + 24));
  v6 = v5[1];

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t __RKEntityInteractionSpecification.init(trigger:action:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v7 = (a3 + *(v6 + 24));
  outlined init with take of __RKEntityTriggerSpecification(a1, a3, type metadata accessor for __RKEntityTriggerSpecification);
  result = outlined init with take of __RKEntityTriggerSpecification(a2, a3 + *(v6 + 20), type metadata accessor for __RKEntityActionSpecification);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t __RKEntityInteractionSpecification.init(trigger:action:accessibilityDescription:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v11 = (a5 + *(v10 + 24));
  outlined init with take of __RKEntityTriggerSpecification(a1, a5, type metadata accessor for __RKEntityTriggerSpecification);
  result = outlined init with take of __RKEntityTriggerSpecification(a2, a5 + *(v10 + 20), type metadata accessor for __RKEntityActionSpecification);
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t __RKEntityInteractionSpecification.description.getter()
{
  type metadata accessor for __RKEntityTriggerSpecification(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](540945696, 0xE400000000000000);
  v0 = *(type metadata accessor for __RKEntityInteractionSpecification(0) + 20);
  type metadata accessor for __RKEntityActionSpecification(0);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance __RKEntityInteractionSpecification.CodingKeys()
{
  v1 = 0x6E6F69746361;
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
    return 0x72656767697274;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance __RKEntityInteractionSpecification.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized __RKEntityInteractionSpecification.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityInteractionSpecification.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance __RKEntityInteractionSpecification.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t __RKEntityInteractionSpecification.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10RealityKit34__RKEntityInteractionSpecificationV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedEncodingContainerVy10RealityKit34__RKEntityInteractionSpecificationV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17[15] = 0;
  type metadata accessor for __RKEntityTriggerSpecification(0);
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification, type metadata accessor for __RKEntityTriggerSpecification);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for __RKEntityInteractionSpecification(0);
    v12 = *(v11 + 20);
    v17[14] = 1;
    type metadata accessor for __RKEntityActionSpecification(0);
    lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityActionSpecification and conformance __RKEntityActionSpecification, type metadata accessor for __RKEntityActionSpecification);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = (v3 + *(v11 + 24));
    v14 = *v13;
    v15 = v13[1];
    v17[13] = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t __RKEntityInteractionSpecification.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v35 = type metadata accessor for __RKEntityActionSpecification(0);
  v4 = *(*(v35 - 8) + 64);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for __RKEntityTriggerSpecification(0);
  v8 = *(*(v7 - 8) + 64);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10RealityKit34__RKEntityInteractionSpecificationV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMd, &_ss22KeyedDecodingContainerVy10RealityKit34__RKEntityInteractionSpecificationV10CodingKeys33_DD6F8BA54B92BC4851BC0C702261433ALLOGMR);
  v36 = *(v38 - 8);
  v10 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v38);
  v12 = &v32 - v11;
  v13 = type metadata accessor for __RKEntityInteractionSpecification(0);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v17 = a1[4];
  v39 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type __RKEntityInteractionSpecification.CodingKeys and conformance __RKEntityInteractionSpecification.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v33 = v13;
  v19 = v36;
  v20 = v16;
  v42 = 0;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification, type metadata accessor for __RKEntityTriggerSpecification);
  v21 = v37;
  v22 = v38;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v21;
  v24 = v20;
  outlined init with take of __RKEntityTriggerSpecification(v23, v20, type metadata accessor for __RKEntityTriggerSpecification);
  v41 = 1;
  lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type __RKEntityActionSpecification and conformance __RKEntityActionSpecification, type metadata accessor for __RKEntityActionSpecification);
  v25 = v6;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v33;
  outlined init with take of __RKEntityTriggerSpecification(v25, v20 + *(v33 + 20), type metadata accessor for __RKEntityActionSpecification);
  v40 = 2;
  v27 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v29 = v28;
  v30 = (v20 + *(v26 + 24));
  (*(v19 + 8))(v12, v22);
  *v30 = v27;
  v30[1] = v29;
  outlined init with copy of __RKEntityTriggerSpecification(v24, v34, type metadata accessor for __RKEntityInteractionSpecification);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return outlined destroy of __RKEntityTriggerSpecification(v24, type metadata accessor for __RKEntityInteractionSpecification);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance __RKEntityInteractionSpecification(uint64_t a1)
{
  type metadata accessor for __RKEntityTriggerSpecification(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1C68F3410](540945696, 0xE400000000000000);
  v2 = *(a1 + 20);
  type metadata accessor for __RKEntityActionSpecification(0);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t specialized static __RKEntityAudioActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for __RKEntityAudioActionArguments(0);
  v5 = v4[5];
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v4[6];
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);
  if (v11 == 3)
  {
    if (v12 != 3)
    {
      return 0;
    }

    goto LABEL_25;
  }

  if (v12 == 3)
  {
    return 0;
  }

  v13 = 2036427888;
  if (!v11)
  {
    v14 = 0xE400000000000000;
    v15 = 2036427888;
    if (v12)
    {
      goto LABEL_16;
    }

    goto LABEL_19;
  }

  if (v11 != 1)
  {
    v14 = 0xE400000000000000;
    v15 = 1886352499;
    if (v12)
    {
      goto LABEL_16;
    }

LABEL_19:
    v16 = 0xE400000000000000;
    goto LABEL_21;
  }

  v14 = 0xE500000000000000;
  v15 = 0x6573756170;
  if (!v12)
  {
    goto LABEL_19;
  }

LABEL_16:
  if (v12 == 1)
  {
    v16 = 0xE500000000000000;
    v13 = 0x6573756170;
  }

  else
  {
    v16 = 0xE400000000000000;
    v13 = 1886352499;
  }

LABEL_21:
  if (v15 == v13 && v14 == v16)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      return 0;
    }
  }

LABEL_25:
  v18 = v4[7];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 8);
  if (v20)
  {
    if (!v22)
    {
      return 0;
    }
  }

  else
  {
    if (*v19 != *v21)
    {
      LOBYTE(v22) = 1;
    }

    if (v22)
    {
      return 0;
    }
  }

  v23 = v4[8];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }

    goto LABEL_36;
  }

  result = 0;
  if (v25 != 2 && ((v25 ^ v24) & 1) == 0)
  {
LABEL_36:
    v27 = v4[9];
    v28 = *(a1 + v27);
    v29 = *(a2 + v27);
    if (v28 == 3)
    {
      if (v29 != 3)
      {
        return 0;
      }
    }

    else
    {
      if (v29 == 3)
      {
        return 0;
      }

      v30 = 0xEC00000065637275;
      v31 = 0x6F7320746E696F70;
      if (v28)
      {
        if (v28 == 1)
        {
          v32 = 0xE700000000000000;
          v33 = 0x746E6569626D61;
        }

        else
        {
          v32 = 0xE500000000000000;
          v33 = 0x636973756DLL;
        }
      }

      else
      {
        v33 = 0x6F7320746E696F70;
        v32 = 0xEC00000065637275;
      }

      if (v29)
      {
        if (v29 == 1)
        {
          v30 = 0xE700000000000000;
          v31 = 0x746E6569626D61;
        }

        else
        {
          v30 = 0xE500000000000000;
          v31 = 0x636973756DLL;
        }
      }

      if (v33 == v31 && v32 == v30)
      {
      }

      else
      {
        v34 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v34 & 1) == 0)
        {
          return 0;
        }
      }
    }

    v35 = v4[10];
    v36 = *(a1 + v35);
    v37 = *(a2 + v35);
    if (v36 == 3)
    {
      if (v37 == 3)
      {
        return 1;
      }
    }

    else if (v37 != 3)
    {
      v38 = 0xED00007473657571;
      v39 = 0x657220776F6C6C61;
      if (v36)
      {
        if (v36 == 1)
        {
          v40 = 0x722065726F6E6769;
          v41 = 0xEE00747365757165;
        }

        else
        {
          v40 = 0xD000000000000014;
          v41 = 0x80000001C18DD930;
        }
      }

      else
      {
        v40 = 0x657220776F6C6C61;
        v41 = 0xED00007473657571;
      }

      if (v37)
      {
        if (v37 == 1)
        {
          v39 = 0x722065726F6E6769;
          v38 = 0xEE00747365757165;
        }

        else
        {
          v39 = 0xD000000000000014;
          v38 = 0x80000001C18DD930;
        }
      }

      if (v40 == v39 && v41 == v38)
      {
      }

      else
      {
        v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v42 & 1) == 0)
        {
          return 0;
        }
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t specialized static __RKEntityEmphasisActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for __RKEntityEmphasisActionArguments(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 3)
  {
    if (v17 != 3)
    {
      return 0;
    }

    goto LABEL_32;
  }

  if (v17 != 3)
  {
    v18 = 0x6369736162;
    if (v16)
    {
      if (v16 == 1)
      {
        v19 = 0xE700000000000000;
        v20 = 0x6C756679616C70;
      }

      else
      {
        v19 = 0xE400000000000000;
        v20 = 1684826487;
      }
    }

    else
    {
      v19 = 0xE500000000000000;
      v20 = 0x6369736162;
    }

    if (v17)
    {
      if (v17 == 1)
      {
        v21 = 0xE700000000000000;
        v18 = 0x6C756679616C70;
      }

      else
      {
        v21 = 0xE400000000000000;
        v18 = 1684826487;
      }
    }

    else
    {
      v21 = 0xE500000000000000;
    }

    v22 = v4;
    if (v20 == v18 && v19 == v21)
    {

      v4 = v22;
      goto LABEL_32;
    }

    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v22;
    if (v23)
    {
LABEL_32:
      v24 = v4[8];
      v25 = *(a1 + v24);
      v26 = *(a2 + v24);
      if (v25 == 8)
      {
        if (v26 != 8)
        {
          return 0;
        }
      }

      else if (v26 == 8 || (specialized == infix<A>(_:_:)(v25, v26) & 1) == 0)
      {
        return 0;
      }

      return 1;
    }
  }

  return 0;
}

BOOL specialized static __RKEntityForceActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for __RKEntityForceActionArguments(0);
  v5 = *(v4 + 20);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 16);
  v8 = (a2 + v5);
  v9 = v8[1].i8[0];
  if (v7)
  {
    if ((v8[1].i8[0] & 1) == 0)
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (v8[1].i8[0])
  {
    return 0;
  }

  result = 0;
  if (COERCE_FLOAT(v6->i64[0]) == COERCE_FLOAT(v8->i64[0]))
  {
    v11 = vmovn_s32(vceqq_f32(*v6, *v8));
    if (v11.i8[2] & 1) != 0 && (v11.i8[4])
    {
LABEL_9:
      v12 = *(v4 + 24);
      v13 = (a1 + v12);
      v14 = *(a1 + v12 + 16);
      v15 = (a2 + v12);
      v16 = v15[1].i8[0];
      if ((v14 & 1) == 0)
      {
        if (v15[1].i8[0])
        {
          return 0;
        }

        if (COERCE_FLOAT(v13->i64[0]) != COERCE_FLOAT(v15->i64[0]))
        {
          return 0;
        }

        v17 = vmovn_s32(vceqq_f32(*v13, *v15));
        return (v17.i8[2] & 1) != 0 && (v17.i8[4] & 1) != 0;
      }

      return (v15[1].i8[0] & 1) != 0;
    }
  }

  return result;
}

uint64_t specialized static __RKEntityHideActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v8 = a3(0);
  v9 = v8[5];
  v10 = (a1 + v9);
  v11 = *(a1 + v9 + 4);
  v12 = (a2 + v9);
  v13 = *(a2 + v9 + 4);
  if (v11)
  {
    if (!v13)
    {
      return v13;
    }
  }

  else
  {
    if (*v10 != *v12)
    {
      LOBYTE(v13) = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v14 = v8[6];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 4);
  v17 = (a2 + v14);
  v13 = *(a2 + v14 + 4);
  if (v16)
  {
    if (!v13)
    {
      return v13;
    }
  }

  else
  {
    if (*v15 != *v17)
    {
      LOBYTE(v13) = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v18 = v8[7];
  v19 = *(a2 + v18);
  if (*(a1 + v18) == 10)
  {
    if (v19 != 10)
    {
      return 0;
    }
  }

  else
  {
    if (v19 == 10)
    {
      return 0;
    }

    v20 = v8;
    v21 = specialized == infix<A>(_:_:)(*(a1 + v18), v19);
    v8 = v20;
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  v22 = v8[8];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23 == 3)
  {
    if (v24 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v24 == 3)
    {
      return 0;
    }

    v25 = 0x6E692065736165;
    if (v23)
    {
      if (v23 == 1)
      {
        v26 = 0xE800000000000000;
        v27 = 0x74756F2065736165;
      }

      else
      {
        v27 = 0xD000000000000010;
        v26 = 0x80000001C18DD6D0;
      }
    }

    else
    {
      v26 = 0xE700000000000000;
      v27 = 0x6E692065736165;
    }

    if (v24)
    {
      if (v24 == 1)
      {
        v28 = 0xE800000000000000;
        v25 = 0x74756F2065736165;
      }

      else
      {
        v25 = 0xD000000000000010;
        v28 = 0x80000001C18DD6D0;
      }
    }

    else
    {
      v28 = 0xE700000000000000;
    }

    v29 = v8;
    if (v27 == v25 && v26 == v28)
    {

      v8 = v29;
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v8 = v29;
      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v31 = v8[9];
  v32 = *(a1 + v31);
  v33 = *(a2 + v31);
  if (v32 == 2)
  {
    if (v33 != 2)
    {
      return 0;
    }
  }

  else
  {
    v13 = 0;
    if (v33 == 2 || ((v33 ^ v32) & 1) != 0)
    {
      return v13;
    }
  }

  v34 = v8[10];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 4);
  v37 = (a2 + v34);
  v13 = *(a2 + v34 + 4);
  if (v36)
  {
    if (!v13)
    {
      return v13;
    }
  }

  else
  {
    if (*v35 != *v37)
    {
      LOBYTE(v13) = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v38 = v8[11];
  v39 = *(a1 + v38);
  v40 = *(a2 + v38);
  if (v39 == 2)
  {
    if (v40 != 2)
    {
      return 0;
    }
  }

  else
  {
    v13 = 0;
    if (v40 == 2 || ((v40 ^ v39) & 1) != 0)
    {
      return v13;
    }
  }

  v41 = v8[12];
  v42 = (a1 + v41);
  v43 = *(a1 + v41 + 4);
  v44 = (a2 + v41);
  v13 = *(a2 + v41 + 4);
  if (v43)
  {
    if (!v13)
    {
      return v13;
    }
  }

  else
  {
    if (*v42 != *v44)
    {
      LOBYTE(v13) = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v45 = v8[13];
  v46 = (a1 + v45);
  v47 = *(a1 + v45 + 4);
  v48 = (a2 + v45);
  v13 = *(a2 + v45 + 4);
  if (v47)
  {
    if (!v13)
    {
      return v13;
    }
  }

  else
  {
    if (*v46 != *v48)
    {
      LOBYTE(v13) = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  v49 = v8[14];
  v50 = *(a1 + v49);
  v51 = *(a2 + v49);
  if (v50 == 3)
  {
    if (v51 != 3)
    {
      return 0;
    }

    goto LABEL_83;
  }

  if (v51 == 3)
  {
    return 0;
  }

  v52 = 0x6369736162;
  v53 = v8;
  if (v50)
  {
    if (v50 == 1)
    {
      v54 = 0xE700000000000000;
      v55 = 0x6C756679616C70;
    }

    else
    {
      v54 = 0xE400000000000000;
      v55 = 1684826487;
    }
  }

  else
  {
    v54 = 0xE500000000000000;
    v55 = 0x6369736162;
  }

  if (v51)
  {
    if (v51 == 1)
    {
      v56 = 0xE700000000000000;
      v52 = 0x6C756679616C70;
    }

    else
    {
      v56 = 0xE400000000000000;
      v52 = 1684826487;
    }
  }

  else
  {
    v56 = 0xE500000000000000;
  }

  if (v55 != v52 || v54 != v56)
  {
    v57 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v8 = v53;
    if (v57)
    {
      goto LABEL_83;
    }

    return 0;
  }

  v8 = v53;
LABEL_83:
  v58 = v8[15];
  v59 = *(a2 + v58);
  if (*(a1 + v58) == 10)
  {
    if (v59 != 10)
    {
      return 0;
    }
  }

  else if (v59 == 10 || (a4() & 1) == 0)
  {
    return 0;
  }

  return 1;
}

uint64_t specialized static __RKEntityFadeActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for __RKEntityFadeActionArguments(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

BOOL specialized static __RKEntitySpinActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for __RKEntitySpinActionArguments(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v14 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v14) = 1;
    }

    if (v14)
    {
      return 0;
    }
  }

  v15 = v4[7];
  v16 = *(a1 + v15);
  v17 = *(a2 + v15);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v17 == 2)
    {
      return 0;
    }

    v18 = v4;
    if (v16)
    {
      v19 = 0xD000000000000010;
    }

    else
    {
      v19 = 0x7369776B636F6C63;
    }

    if (v16)
    {
      v20 = 0x80000001C18DDB90;
    }

    else
    {
      v20 = 0xE900000000000065;
    }

    if (v17)
    {
      v21 = 0xD000000000000010;
    }

    else
    {
      v21 = 0x7369776B636F6C63;
    }

    if (v17)
    {
      v22 = 0x80000001C18DDB90;
    }

    else
    {
      v22 = 0xE900000000000065;
    }

    if (v19 == v21 && v20 == v22)
    {

      v4 = v18;
    }

    else
    {
      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v4 = v18;
      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v25 = v4[8];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 16);
  v28 = (a2 + v25);
  v29 = v28[1].i8[0];
  if (v27)
  {
    return (v28[1].i8[0] & 1) != 0;
  }

  if (v28[1].i8[0])
  {
    return 0;
  }

  if (COERCE_FLOAT(v26->i64[0]) != COERCE_FLOAT(v28->i64[0]))
  {
    return 0;
  }

  v31 = vmovn_s32(vceqq_f32(*v26, *v28));
  return (v31.i8[2] & 1) != 0 && (v31.i8[4] & 1) != 0;
}

BOOL specialized static __RKEntityOrbitEntityActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for __RKEntityOrbitEntityActionArguments(0);
  v5 = v4[5];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = v4[6];
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 4);
  v9 = (a2 + v6);
  v10 = *(a2 + v6 + 4);
  if (v8)
  {
    if (!v10)
    {
      return 0;
    }
  }

  else
  {
    if (*v7 != *v9)
    {
      LOBYTE(v10) = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  v11 = v4[7];
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 4);
  v14 = (a2 + v11);
  v15 = *(a2 + v11 + 4);
  if (v13)
  {
    if (!v15)
    {
      return 0;
    }
  }

  else
  {
    if (*v12 != *v14)
    {
      LOBYTE(v15) = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = v4[8];
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 16);
  v19 = (a2 + v16);
  v20 = v19[1].i8[0];
  if (v18)
  {
    if ((v19[1].i8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v19[1].i8[0])
    {
      return 0;
    }

    result = 0;
    if (COERCE_FLOAT(v17->i64[0]) != COERCE_FLOAT(v19->i64[0]))
    {
      return result;
    }

    v22 = vmovn_s32(vceqq_f32(*v17, *v19));
    if ((v22.i8[2] & 1) == 0 || (v22.i8[4] & 1) == 0)
    {
      return result;
    }
  }

  v23 = v4[9];
  v24 = *(a1 + v23);
  v25 = *(a2 + v23);
  if (v24 == 2)
  {
    if (v25 != 2)
    {
      return 0;
    }
  }

  else
  {
    result = 0;
    if (v25 == 2 || ((v25 ^ v24) & 1) != 0)
    {
      return result;
    }
  }

  v26 = v4[10];
  v27 = *(a1 + v26);
  v28 = *(a2 + v26);
  if (v27 == 2)
  {
    if (v28 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v28 == 2)
    {
      return 0;
    }

    if (v27)
    {
      v29 = 0xD000000000000010;
    }

    else
    {
      v29 = 0x7369776B636F6C63;
    }

    if (v27)
    {
      v30 = 0x80000001C18DDB90;
    }

    else
    {
      v30 = 0xE900000000000065;
    }

    if (v28)
    {
      v31 = 0xD000000000000010;
    }

    else
    {
      v31 = 0x7369776B636F6C63;
    }

    if (v28)
    {
      v32 = 0x80000001C18DDB90;
    }

    else
    {
      v32 = 0xE900000000000065;
    }

    if (v29 == v31 && v30 == v32)
    {
    }

    else
    {
      v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v33 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v34 = v4[11];
  v35 = *(a1 + v34);
  v36 = *(a2 + v34);
  if (v35 == 2)
  {
    if (v36 != 2)
    {
      return 0;
    }

    goto LABEL_52;
  }

  result = 0;
  if (v36 != 2 && ((v36 ^ v35) & 1) == 0)
  {
LABEL_52:
    v37 = v4[12];
    v38 = (a1 + v37);
    v39 = *(a1 + v37 + 4);
    v40 = (a2 + v37);
    v41 = *(a2 + v37 + 4);
    if (v39)
    {
      if (!v41)
      {
        return 0;
      }
    }

    else
    {
      if (*v38 != *v40)
      {
        LOBYTE(v41) = 1;
      }

      if (v41)
      {
        return 0;
      }
    }

    v42 = v4[13];
    v43 = (a1 + v42);
    v44 = *(a1 + v42 + 4);
    v45 = (a2 + v42);
    v46 = *(a2 + v42 + 4);
    if ((v44 & 1) == 0)
    {
      if (*v43 != *v45)
      {
        v46 = 1;
      }

      return (v46 & 1) == 0;
    }

    return (v46 & 1) != 0;
  }

  return result;
}

uint64_t specialized static __RKEntityLookAtCameraActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for __RKEntityLookAtCameraActionArguments(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return v9;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v10 = v4[6];
  v11 = (a1 + v10);
  v12 = *(a1 + v10 + 4);
  v13 = (a2 + v10);
  v9 = *(a2 + v10 + 4);
  if (v12)
  {
    if (!v9)
    {
      return v9;
    }
  }

  else
  {
    if (*v11 != *v13)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v14 = v4[7];
  v15 = (a1 + v14);
  v16 = *(a1 + v14 + 16);
  v17 = (a2 + v14);
  v18 = *(a2 + v14 + 16);
  if (v16)
  {
    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v18)
    {
      return 0;
    }

    v9 = 0;
    if (COERCE_FLOAT(v15->i64[0]) != COERCE_FLOAT(v17->i64[0]))
    {
      return v9;
    }

    v19 = vmovn_s32(vceqq_f32(*v15, *v17));
    if ((v19.i8[2] & 1) == 0 || (v19.i8[4] & 1) == 0)
    {
      return v9;
    }
  }

  v20 = v4[8];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 4);
  v23 = (a2 + v20);
  v9 = *(a2 + v20 + 4);
  if (v22)
  {
    if (!v9)
    {
      return v9;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  v24 = v4[9];
  v25 = (a1 + v24);
  v26 = *(a1 + v24 + 16);
  v27 = (a2 + v24);
  v28 = *(a2 + v24 + 16);
  if ((v26 & 1) == 0)
  {
    if ((v28 & 1) == 0)
    {
      v9 = 0;
      if (COERCE_FLOAT(v25->i64[0]) != COERCE_FLOAT(v27->i64[0]))
      {
        return v9;
      }

      v29 = vmovn_s32(vceqq_f32(*v25, *v27));
      if ((v29.i8[2] & 1) == 0 || (v29.i8[4] & 1) == 0)
      {
        return v9;
      }

      goto LABEL_34;
    }

    return 0;
  }

  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_34:
  v30 = v4[10];
  v31 = *(a1 + v30);
  v32 = *(a2 + v30);
  if (v31 == 2)
  {
    if (v32 != 2)
    {
      return 0;
    }
  }

  else if (v32 == 2 || ((v32 ^ v31) & 1) != 0)
  {
    return 0;
  }

  return 1;
}

uint64_t specialized static __RKEntityPlayTimelineActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v36 - v15;
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for __RKEntityPlayTimelineActionArguments(0);
  v18 = v17[5];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v19 = v17[6];
  v20 = *(a1 + v19);
  v21 = *(a1 + v19 + 8);
  v22 = (a2 + v19);
  v23 = v20 == *v22 && v21 == v22[1];
  if (!v23 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v24 = v17[7];
  v25 = *(v13 + 48);
  outlined init with copy of UUID?(a1 + v24, v16);
  outlined init with copy of UUID?(a2 + v24, &v16[v25]);
  v37 = v5;
  v26 = *(v5 + 48);
  if (v26(v16, 1, v4) != 1)
  {
    outlined init with copy of UUID?(v16, v12);
    if (v26(&v16[v25], 1, v4) != 1)
    {
      v28 = v37;
      (*(v37 + 32))(v8, &v16[v25], v4);
      lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
      v29 = dispatch thunk of static Equatable.== infix(_:_:)();
      v30 = *(v28 + 8);
      v30(v8, v4);
      v30(v12, v4);
      outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      if ((v29 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    (*(v37 + 8))(v12, v4);
LABEL_13:
    outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
    return 0;
  }

  if (v26(&v16[v25], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
LABEL_17:
  v31 = v17[8];
  v32 = (a1 + v31);
  v33 = *(a1 + v31 + 8);
  v34 = (a2 + v31);
  v35 = v34[1];
  if (v33)
  {
    if (v35 && (*v32 == *v34 && v33 == v35 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v35)
  {
    return 1;
  }

  return 0;
}

BOOL specialized static __RKEntityTransformActionArguments.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v71[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v71[-v11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  v14 = *(*(v13 - 8) + 64);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v71[-v15];
  if ((static UUID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v17 = type metadata accessor for __RKEntityTransformActionArguments(0);
  v18 = v17[5];
  v19 = (a1 + v18);
  v20 = *(a1 + v18 + 16);
  v21 = (a2 + v18);
  v22 = *(a2 + v18 + 16);
  if (v20)
  {
    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v22)
    {
      return 0;
    }

    v23 = 0;
    if (COERCE_FLOAT(v19->i64[0]) != COERCE_FLOAT(v21->i64[0]))
    {
      return v23;
    }

    v24 = vmovn_s32(vceqq_f32(*v19, *v21));
    if ((v24.i8[2] & 1) == 0 || (v24.i8[4] & 1) == 0)
    {
      return v23;
    }
  }

  v25 = v17[6];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 16);
  v28 = (a2 + v25);
  v29 = v28[1].i8[0];
  if (v27)
  {
    if ((v28[1].i8[0] & 1) == 0)
    {
      return 0;
    }
  }

  else if ((v28[1].i8[0] & 1) != 0 || (vminv_u16(vmovn_s32(vceqq_f32(*v26, *v28))) & 1) == 0)
  {
    return 0;
  }

  v30 = v17[7];
  v31 = (a1 + v30);
  v32 = *(a1 + v30 + 4);
  v33 = (a2 + v30);
  v23 = *(a2 + v30 + 4);
  if (v32)
  {
    if (!v23)
    {
      return v23;
    }
  }

  else
  {
    if (*v31 != *v33)
    {
      LOBYTE(v23) = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v34 = v17[8];
  v35 = (a1 + v34);
  v36 = *(a1 + v34 + 4);
  v37 = (a2 + v34);
  v23 = *(a2 + v34 + 4);
  if (v36)
  {
    if (!v23)
    {
      return v23;
    }
  }

  else
  {
    if (*v35 != *v37)
    {
      LOBYTE(v23) = 1;
    }

    if (v23)
    {
      return 0;
    }
  }

  v38 = v17[9];
  v39 = *(a1 + v38);
  v40 = *(a2 + v38);
  if (v39 == 2)
  {
    if (v40 != 2)
    {
      return 0;
    }
  }

  else
  {
    if (v40 == 2)
    {
      return 0;
    }

    v73 = v17;
    if (v39)
    {
      v41 = "move by distance";
    }

    else
    {
      v41 = "e";
    }

    if (v40)
    {
      v42 = "move by distance";
    }

    else
    {
      v42 = "e";
    }

    if ((v41 | 0x8000000000000000) == (v42 | 0x8000000000000000))
    {

      v17 = v73;
    }

    else
    {
      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v17 = v73;
      if ((v72 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v43 = v17[10];
  v44 = *(a2 + v43);
  if (*(a1 + v43) == 10)
  {
    if (v44 != 10)
    {
      return 0;
    }
  }

  else
  {
    if (v44 == 10)
    {
      return 0;
    }

    v45 = v17;
    v46 = specialized == infix<A>(_:_:)(*(a1 + v43), v44);
    v17 = v45;
    if ((v46 & 1) == 0)
    {
      return 0;
    }
  }

  v47 = v17[11];
  v48 = *(a1 + v47);
  v49 = *(a2 + v47);
  if (v48 == 3)
  {
    if (v49 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v49 == 3)
    {
      return 0;
    }

    v50 = 0x6E692065736165;
    if (v48)
    {
      if (v48 == 1)
      {
        v51 = 0xE800000000000000;
        v52 = 0x74756F2065736165;
      }

      else
      {
        v52 = 0xD000000000000010;
        v51 = 0x80000001C18DD6D0;
      }
    }

    else
    {
      v51 = 0xE700000000000000;
      v52 = 0x6E692065736165;
    }

    if (v49)
    {
      if (v49 == 1)
      {
        v53 = 0xE800000000000000;
        v50 = 0x74756F2065736165;
      }

      else
      {
        v50 = 0xD000000000000010;
        v53 = 0x80000001C18DD6D0;
      }
    }

    else
    {
      v53 = 0xE700000000000000;
    }

    v73 = v17;
    if (v52 == v50 && v51 == v53)
    {

      v17 = v73;
    }

    else
    {
      v72 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v17 = v73;
      if ((v72 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v54 = v17[12];
  v55 = *(a1 + v54);
  v56 = *(a2 + v54);
  if (v55 == 2)
  {
    if (v56 != 2)
    {
      return 0;
    }

    goto LABEL_67;
  }

  v23 = 0;
  if (v56 != 2 && ((v56 ^ v55) & 1) == 0)
  {
LABEL_67:
    v57 = v17[13];
    v58 = (a1 + v57);
    v59 = *(a1 + v57 + 4);
    v60 = (a2 + v57);
    v23 = *(a2 + v57 + 4);
    if (v59)
    {
      if (!v23)
      {
        return v23;
      }
    }

    else
    {
      if (*v58 != *v60)
      {
        LOBYTE(v23) = 1;
      }

      if (v23)
      {
        return 0;
      }
    }

    v61 = v17[14];
    v62 = (a1 + v61);
    v63 = *(a1 + v61 + 4);
    v64 = (a2 + v61);
    v23 = *(a2 + v61 + 4);
    if (v63)
    {
      if (!v23)
      {
        return v23;
      }
    }

    else
    {
      if (*v62 != *v64)
      {
        LOBYTE(v23) = 1;
      }

      if (v23)
      {
        return 0;
      }
    }

    v65 = v17[15];
    v66 = *(v13 + 48);
    outlined init with copy of UUID?(a1 + v65, v16);
    outlined init with copy of UUID?(a2 + v65, &v16[v66]);
    v67 = *(v5 + 48);
    if (v67(v16, 1, v4) == 1)
    {
      if (v67(&v16[v66], 1, v4) == 1)
      {
        outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
        return 1;
      }

      goto LABEL_84;
    }

    outlined init with copy of UUID?(v16, v12);
    if (v67(&v16[v66], 1, v4) == 1)
    {
      (*(v5 + 8))(v12, v4);
LABEL_84:
      outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
      return 0;
    }

    (*(v5 + 32))(v8, &v16[v66], v4);
    lazy protocol witness table accessor for type __RKEntityTriggerSpecification and conformance __RKEntityTriggerSpecification(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x1E69695A8]);
    v69 = dispatch thunk of static Equatable.== infix(_:_:)();
    v70 = *(v5 + 8);
    v70(v8, v4);
    v70(v12, v4);
    outlined destroy of BodyTrackingComponent?(v16, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
    return (v69 & 1) != 0;
  }

  return v23;
}