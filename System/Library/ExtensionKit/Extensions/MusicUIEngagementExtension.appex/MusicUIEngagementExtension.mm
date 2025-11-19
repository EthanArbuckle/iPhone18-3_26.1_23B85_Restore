BOOL ODJRequest.CodingKeys.init(stringValue:)()
{
  OUTLINED_FUNCTION_17();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ODJRequest.CodingKeys.init(rawValue:), v2);
  OUTLINED_FUNCTION_24();
  return v1 != 0;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_27();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Property.rawValue.getter(a1);
  String.hash(into:)();

  return Hasher._finalize()();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance ODJRequest.CodingKeys@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = ODJRequest.CodingKeys.init(stringValue:)();
  *a2 = result;
  return result;
}

void _s26MusicUIEngagementExtension11ODJResponseV10CodingKeysOSYAASY8rawValue03RawH0QzvgTW_0(uint64_t a1@<X8>)
{
  strcpy(a1, "json-payload");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

BOOL protocol witness for CodingKey.init(stringValue:) in conformance ODJRequest.CodingKeys@<W0>(_BYTE *a1@<X8>)
{
  result = ODJRequest.CodingKeys.init(stringValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ODJRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ODJRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void ODJRequest.init(from:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_13();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension10ODJRequestV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension10ODJRequestV10CodingKeysOGMR);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_9();
  __chkstk_darwin();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  v5 = lazy protocol witness table accessor for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys();
  OUTLINED_FUNCTION_4(&type metadata for ODJRequest.CodingKeys, v6, v5);
  if (!v1)
  {
    lazy protocol witness table accessor for type JSONPayload and conformance JSONPayload();
    OUTLINED_FUNCTION_2();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v7 = OUTLINED_FUNCTION_3();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_26();
}

void protocol witness for Decodable.init(from:) in conformance ODJRequest(void *a1@<X8>)
{
  ODJRequest.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

void JSONPayload.init(from:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_13();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension11JSONPayloadV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMd, &_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension11JSONPayloadV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMR);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_9();
  __chkstk_darwin();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  v5 = lazy protocol witness table accessor for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys();
  OUTLINED_FUNCTION_4(&unk_100019478, v6, v5);
  if (!v1)
  {
    lazy protocol witness table accessor for type ODJRequestBatch and conformance ODJRequestBatch();
    OUTLINED_FUNCTION_2();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = OUTLINED_FUNCTION_3();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_26();
}

uint64_t ODJRequestBatch.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6863746162 && a2 == 0xE500000000000000)
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

void ODJRequestBatch.init(from:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_13();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension15ODJRequestBatchV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMd, &_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension15ODJRequestBatchV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMR);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_9();
  __chkstk_darwin();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  v5 = lazy protocol witness table accessor for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys();
  OUTLINED_FUNCTION_4(&unk_100019650, v6, v5);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS26MusicUIEngagementExtension25PropertyIdentifierRequestVGMd, &_sSDySS26MusicUIEngagementExtension25PropertyIdentifierRequestVGMR);
    lazy protocol witness table accessor for type [String : PropertyIdentifierRequest] and conformance <> [A : B]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = OUTLINED_FUNCTION_3();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_26();
}

uint64_t JSONPayload.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
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

void PropertyIdentifierRequest.init(from:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_13();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension25PropertyIdentifierRequestV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMd, &_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension25PropertyIdentifierRequestV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMR);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_9();
  __chkstk_darwin();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  v5 = lazy protocol witness table accessor for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys();
  OUTLINED_FUNCTION_4(&unk_100019760, v6, v5);
  if (!v1)
  {
    lazy protocol witness table accessor for type JSONRequest and conformance JSONRequest();
    OUTLINED_FUNCTION_2();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = OUTLINED_FUNCTION_3();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_26();
}

BOOL JSONRequest.Command.init(rawValue:)()
{
  OUTLINED_FUNCTION_17();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of JSONRequest.Command.init(rawValue:), v2);
  OUTLINED_FUNCTION_24();
  return v1 != 0;
}

uint64_t _s26MusicUIEngagementExtension25PropertyIdentifierRequestV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOs0G3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = JSONPayload.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance JSONPayload.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = ODJRequest.CodingKeys.init(intValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JSONPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JSONPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void protocol witness for Decodable.init(from:) in conformance JSONPayload(void *a1@<X8>)
{
  JSONPayload.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ODJRequestBatch.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ODJRequestBatch.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ODJRequestBatch.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ODJRequestBatch.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void protocol witness for Decodable.init(from:) in conformance ODJRequestBatch(void *a1@<X8>)
{
  ODJRequestBatch.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PropertyIdentifierRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PropertyIdentifierRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void protocol witness for Decodable.init(from:) in conformance PropertyIdentifierRequest(_BYTE *a1@<X8>)
{
  PropertyIdentifierRequest.init(from:)();
  if (!v1)
  {
    *a1 = v3 & 1;
    a1[1] = BYTE1(v3);
    a1[2] = BYTE2(v3);
  }
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance JSONRequest.Command@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = JSONRequest.Command.init(rawValue:)();
  *a2 = result;
  return result;
}

uint64_t JSONRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79747265706F7270 && a2 == 0xEC000000656D614ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t JSONRequest.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x646E616D6D6F63;
  }

  if (a1 == 1)
  {
    return 0x79747265706F7270;
  }

  return 0x6574656D61726170;
}

void JSONRequest.init(from:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_13();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension11JSONRequestV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMd, &_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension11JSONRequestV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMR);
  OUTLINED_FUNCTION_0(v1);
  v3 = *(v2 + 64);
  OUTLINED_FUNCTION_9();
  __chkstk_darwin();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  v4 = lazy protocol witness table accessor for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys();
  OUTLINED_FUNCTION_4(&unk_1000192C8, v5, v4);
  lazy protocol witness table accessor for type JSONRequest.Command and conformance JSONRequest.Command();
  OUTLINED_FUNCTION_2();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  lazy protocol witness table accessor for type Property and conformance Property();
  OUTLINED_FUNCTION_2();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  lazy protocol witness table accessor for type Parameters and conformance Parameters();
  OUTLINED_FUNCTION_2();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v6 = OUTLINED_FUNCTION_3();
  v7(v6);
  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_26();
}

MusicUIEngagementExtension::Parameters::Feature_optional __swiftcall Parameters.Feature.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_17();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Parameters.Feature.init(rawValue:), v3);
  OUTLINED_FUNCTION_24();
  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t Parameters.Feature.rawValue.getter(char a1)
{
  result = 0x796D6568636C61;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x507972617262696CLL;
      break;
    case 3:
      result = 0x79616C5069726973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Parameters.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65727574616566 && a2 == 0xE700000000000000)
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

Swift::Int JSONPayload.CodingKeys.hashValue.getter()
{
  OUTLINED_FUNCTION_27();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void Parameters.init(from:)()
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_13();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension10ParametersV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMd, &_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension10ParametersV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMR);
  OUTLINED_FUNCTION_0(v2);
  v4 = *(v3 + 64);
  OUTLINED_FUNCTION_9();
  __chkstk_darwin();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  v5 = lazy protocol witness table accessor for type Parameters.CodingKeys and conformance Parameters.CodingKeys();
  OUTLINED_FUNCTION_4(&unk_100019358, v6, v5);
  if (!v1)
  {
    lazy protocol witness table accessor for type Parameters.Feature and conformance Parameters.Feature();
    OUTLINED_FUNCTION_2();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = OUTLINED_FUNCTION_3();
    v8(v7);
  }

  __swift_destroy_boxed_opaque_existential_1(v0);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_26();
}

MusicUIEngagementExtension::Property_optional __swiftcall Property.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_17();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_24();
  if (v1 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v1;
  }
}

uint64_t Property.rawValue.getter(char a1)
{
  result = 0x4565727574616566;
  switch(a1)
  {
    case 1:
    case 12:
      OUTLINED_FUNCTION_23();
      result = v8 | 6;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
    case 17:
      OUTLINED_FUNCTION_23();
      result = v9 - 4;
      break;
    case 4:
      OUTLINED_FUNCTION_23();
      result = v4 + 9;
      break;
    case 5:
    case 6:
      return result;
    case 7:
      OUTLINED_FUNCTION_23();
      result = v7 - 7;
      break;
    case 8:
      OUTLINED_FUNCTION_23();
      result = v12 - 3;
      break;
    case 9:
    case 13:
    case 21:
      OUTLINED_FUNCTION_23();
      result = v10 + 3;
      break;
    case 10:
      OUTLINED_FUNCTION_23();
      result = v11 - 1;
      break;
    case 11:
    case 15:
      OUTLINED_FUNCTION_23();
      result = v6 | 2;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 16:
    case 24:
      OUTLINED_FUNCTION_23();
      result = v5 - 2;
      break;
    case 18:
      result = 0xD000000000000019;
      break;
    case 19:
      OUTLINED_FUNCTION_23();
      result = v14 - 8;
      break;
    case 20:
      result = 0xD000000000000019;
      break;
    case 22:
      OUTLINED_FUNCTION_23();
      result = v13 - 9;
      break;
    case 23:
      result = 0x6574617453696C6DLL;
      break;
    default:
      OUTLINED_FUNCTION_23();
      result = v3 + 7;
      break;
  }

  return result;
}

BOOL ODJResponse.CodingKeys.init(stringValue:)()
{
  OUTLINED_FUNCTION_17();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ODJResponse.CodingKeys.init(rawValue:), v2);
  OUTLINED_FUNCTION_24();
  return v1 != 0;
}

uint64_t ODJResponse.JSONPayload.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t ODJResponse.JSONPayload.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

void ODJResponse.JSONPayload.encode(to:)()
{
  OUTLINED_FUNCTION_25();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension11ODJResponseV11JSONPayloadV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMd, &_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension11ODJResponseV11JSONPayloadV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMR);
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  __chkstk_darwin();
  v8 = v10 - v7;
  OUTLINED_FUNCTION_16();
  lazy protocol witness table accessor for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys();
  OUTLINED_FUNCTION_20();
  *&v10[0] = *v0;
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS26MusicUIEngagementExtension11ODJResponseV26PropertyIdentifierResponseVGMd, &_sSDySS26MusicUIEngagementExtension11ODJResponseV26PropertyIdentifierResponseVGMR);
  lazy protocol witness table accessor for type [String : ODJResponse.PropertyIdentifierResponse] and conformance <> [A : B]();
  OUTLINED_FUNCTION_15();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v1)
  {
    v9 = *(v0 + 24);
    v10[0] = *(v0 + 8);
    v10[1] = v9;
    v11 = *(v0 + 40);
    v12 = 1;
    lazy protocol witness table accessor for type ODJResponse.JSONPayloadError and conformance ODJResponse.JSONPayloadError();
    OUTLINED_FUNCTION_15();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v4 + 8))(v8, v2);
  OUTLINED_FUNCTION_26();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance JSONRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = JSONRequest.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance JSONRequest.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = JSONRequest.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JSONRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JSONRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void protocol witness for Decodable.init(from:) in conformance JSONRequest(_BYTE *a1@<X8>)
{
  JSONRequest.init(from:)();
  if (!v1)
  {
    *a1 = v3 & 1;
    a1[1] = BYTE1(v3);
    a1[2] = BYTE2(v3);
  }
}

MusicUIEngagementExtension::Parameters::Feature_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Parameters.Feature@<W0>(Swift::String *a1@<X0>, MusicUIEngagementExtension::Parameters::Feature_optional *a2@<X8>)
{
  result.value = Parameters.Feature.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Parameters.Feature@<X0>(unint64_t *a1@<X8>)
{
  result = Parameters.Feature.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance JSONPayload.CodingKeys()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Parameters.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Parameters.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Parameters.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Parameters.CodingKeys and conformance Parameters.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Parameters.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Parameters.CodingKeys and conformance Parameters.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void protocol witness for Decodable.init(from:) in conformance Parameters(_BYTE *a1@<X8>)
{
  Parameters.init(from:)();
  if (!v1)
  {
    *a1 = v3;
  }
}

MusicUIEngagementExtension::Property_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Property@<W0>(Swift::String *a1@<X0>, MusicUIEngagementExtension::Property_optional *a2@<X8>)
{
  result.value = Property.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Property@<X0>(uint64_t *a1@<X8>)
{
  result = Property.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Property(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Property and conformance Property();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Property(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Property and conformance Property();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance ODJResponse.CodingKeys@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = ODJResponse.CodingKeys.init(stringValue:)();
  *a2 = result;
  return result;
}

BOOL protocol witness for CodingKey.init(stringValue:) in conformance ODJResponse.CodingKeys@<W0>(_BYTE *a1@<X8>)
{
  result = ODJResponse.CodingKeys.init(stringValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ODJResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ODJResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ODJResponse.JSONPayload.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ODJResponse.JSONPayload.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ODJResponse.JSONPayload.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = ODJResponse.JSONPayload.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ODJResponse.JSONPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ODJResponse.JSONPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ODJResponse.JSONPayloadError.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

Swift::Int JSONRequest.CodingKeys.hashValue.getter(unsigned __int8 a1)
{
  OUTLINED_FUNCTION_27();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

uint64_t ODJResponse.JSONPayloadError.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 1701080931;
  }

  if (a1 == 1)
  {
    return 0x6567617373656DLL;
  }

  return 0x6E69616D6F64;
}

void ODJResponse.JSONPayloadError.encode(to:)()
{
  OUTLINED_FUNCTION_25();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension11ODJResponseV16JSONPayloadErrorV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMd, &_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension11ODJResponseV16JSONPayloadErrorV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMR);
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  __chkstk_darwin();
  v8 = &v14[-v7];
  OUTLINED_FUNCTION_16();
  lazy protocol witness table accessor for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys();
  OUTLINED_FUNCTION_20();
  v9 = *v0;
  v14[15] = 0;
  OUTLINED_FUNCTION_15();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10 = v0[1];
    v11 = v0[2];
    v14[14] = 1;
    OUTLINED_FUNCTION_15();
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = v0[3];
    v13 = v0[4];
    v14[13] = 2;
    OUTLINED_FUNCTION_15();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v4 + 8))(v8, v2);
  OUTLINED_FUNCTION_26();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance JSONRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ODJResponse.JSONPayloadError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ODJResponse.JSONPayloadError.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ODJResponse.JSONPayloadError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ODJResponse.JSONPayloadError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ODJResponse.PropertyIdentifierResponse.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension8PropertyOGMd, &_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension8PropertyOGMR);
  OUTLINED_FUNCTION_0(v47);
  v38 = v6;
  v8 = *(v7 + 64);
  OUTLINED_FUNCTION_9();
  __chkstk_darwin();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension11ODJResponseV26PropertyIdentifierResponseV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension11ODJResponseV26PropertyIdentifierResponseV10CodingKeysOGMR);
  OUTLINED_FUNCTION_0(v9);
  v11 = v10;
  v13 = *(v12 + 64);
  OUTLINED_FUNCTION_9();
  __chkstk_darwin();
  v15 = &v35 - v14;
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v39 = v4;
  v17 = *v4;
  if (v17)
  {
    v36 = v11;
    LOBYTE(v44) = 0;
    lazy protocol witness table accessor for type Property and conformance Property();

    v37 = v9;
    v35 = v15;
    result = KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v19 = 0;
    v20 = 1 << *(v17 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v17 + 64);
    v23 = (v20 + 63) >> 6;
    while (v22)
    {
      v24 = v19;
LABEL_10:
      v25 = __clz(__rbit64(v22)) | (v24 << 6);
      v26 = *(*(v17 + 48) + v25);
      outlined init with copy of Encodable?(*(v17 + 56) + 40 * v25, &v44);
      if (v46 == 1)
      {
LABEL_16:

        v28 = OUTLINED_FUNCTION_10();
        v29(v28);
        v11 = v36;
        v9 = v37;
        v15 = v35;
        goto LABEL_17;
      }

      v22 &= v22 - 1;
      v41 = v44;
      v42 = v45;
      v43 = v46;
      if (v46)
      {
        outlined init with take of Encodable(&v41, &v44);
        v40 = v3;
        __swift_project_boxed_opaque_existential_1(&v44, v46);
        LOBYTE(v41) = v26;
        v27 = v40;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v3 = v27;
        if (v27)
        {

          v31 = OUTLINED_FUNCTION_10();
          v32(v31);
          (*(v36 + 8))(v35, v37);
          return __swift_destroy_boxed_opaque_existential_1(&v44);
        }

        result = __swift_destroy_boxed_opaque_existential_1(&v44);
        v19 = v24;
      }

      else
      {
        outlined destroy of Encodable?(&v41);
        LOBYTE(v44) = v26;
        result = KeyedEncodingContainer.encodeNil(forKey:)();
        if (v3)
        {

          v33 = OUTLINED_FUNCTION_10();
          v34(v33);
          return (*(v36 + 8))(v35, v37);
        }

        v19 = v24;
      }
    }

    while (1)
    {
      v24 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v24 >= v23)
      {
        goto LABEL_16;
      }

      v22 = *(v17 + 64 + 8 * v24);
      ++v19;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v30 = v39[3];
    if (v30)
    {
      v44 = *(v39 + 1);
      v46 = *(v39 + 2);
      v45 = v30;
      LOBYTE(v41) = 1;
      lazy protocol witness table accessor for type ODJResponse.JSONPayloadError and conformance ODJResponse.JSONPayloadError();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    return (*(v11 + 8))(v15, v9);
  }

  return result;
}

Swift::Int ODJResponse.JSONPayload.CodingKeys.hashValue.getter(char a1)
{
  OUTLINED_FUNCTION_27();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

void ODJResponse.encode(to:)()
{
  OUTLINED_FUNCTION_25();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension11ODJResponseV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension11ODJResponseV10CodingKeysOGMR);
  OUTLINED_FUNCTION_0(v2);
  v4 = v3;
  v6 = *(v5 + 64);
  OUTLINED_FUNCTION_9();
  __chkstk_darwin();
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_16();
  lazy protocol witness table accessor for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys();
  OUTLINED_FUNCTION_20();
  v7 = *v0;
  v8 = v0[1];
  v9 = v0[2];
  lazy protocol witness table accessor for type ODJResponse.JSONPayload and conformance ODJResponse.JSONPayload();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_26();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ODJResponse.PropertyIdentifierResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ODJResponse.PropertyIdentifierResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSJSONWritingOptions@<X0>(uint64_t *a1@<X8>)
{
  result = specialized OptionSet<>.init()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance MPTransitionStylePreference@<X0>(uint64_t *a1@<X8>)
{
  result = destructiveProjectEnumData for JSONRequest.Command(*v1);
  *a1 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance ICMusicSubscriptionStatusCapabilities@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.intersection(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Property(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE8)
  {
    if (a2 + 24 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 24) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 25;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v5 = v6 - 25;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Property(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
        JUMPOUT(0x100004610);
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26MusicUIEngagementExtension11ODJResponseV16JSONPayloadErrorVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t getEnumTagSinglePayload for ODJRequest(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for ODJRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26MusicUIEngagementExtension11ODJResponseV11JSONPayloadVSg(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for ODJResponse(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 48))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ODJResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Property and conformance Property()
{
  result = lazy protocol witness table cache variable for type Property and conformance Property;
  if (!lazy protocol witness table cache variable for type Property and conformance Property)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Property and conformance Property);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Property and conformance Property;
  if (!lazy protocol witness table cache variable for type Property and conformance Property)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Property and conformance Property);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Property and conformance Property;
  if (!lazy protocol witness table cache variable for type Property and conformance Property)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Property and conformance Property);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Property and conformance Property;
  if (!lazy protocol witness table cache variable for type Property and conformance Property)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Property and conformance Property);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Property and conformance Property;
  if (!lazy protocol witness table cache variable for type Property and conformance Property)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Property and conformance Property);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Property and conformance Property;
  if (!lazy protocol witness table cache variable for type Property and conformance Property)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Property and conformance Property);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Property and conformance Property;
  if (!lazy protocol witness table cache variable for type Property and conformance Property)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Property and conformance Property);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JSONRequest.Command and conformance JSONRequest.Command()
{
  result = lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command;
  if (!lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command;
  if (!lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command;
  if (!lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ODJResponse.JSONPayload and conformance ODJResponse.JSONPayload()
{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayload and conformance ODJResponse.JSONPayload;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayload and conformance ODJResponse.JSONPayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayload and conformance ODJResponse.JSONPayload);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

unint64_t lazy protocol witness table accessor for type JSONPayload and conformance JSONPayload()
{
  result = lazy protocol witness table cache variable for type JSONPayload and conformance JSONPayload;
  if (!lazy protocol witness table cache variable for type JSONPayload and conformance JSONPayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayload and conformance JSONPayload);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ODJResponse.JSONPayloadError and conformance ODJResponse.JSONPayloadError()
{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError and conformance ODJResponse.JSONPayloadError;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError and conformance ODJResponse.JSONPayloadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError and conformance ODJResponse.JSONPayloadError);
  }

  return result;
}

uint64_t outlined init with copy of Encodable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Encodable?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Encodable(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ODJResponse.JSONPayloadError(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for ODJResponse.JSONPayloadError(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODJResponse.PropertyIdentifierResponse(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      return OUTLINED_FUNCTION_11(*a1 + 2147483646);
    }

    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_11(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_11(v4);
}

uint64_t storeEnumTagSinglePayload for ODJResponse.PropertyIdentifierResponse(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ODJResponse.PropertyIdentifierResponse and conformance ODJResponse.PropertyIdentifierResponse()
{
  result = lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse and conformance ODJResponse.PropertyIdentifierResponse;
  if (!lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse and conformance ODJResponse.PropertyIdentifierResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse and conformance ODJResponse.PropertyIdentifierResponse);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ODJRequestBatch and conformance ODJRequestBatch()
{
  result = lazy protocol witness table cache variable for type ODJRequestBatch and conformance ODJRequestBatch;
  if (!lazy protocol witness table cache variable for type ODJRequestBatch and conformance ODJRequestBatch)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequestBatch and conformance ODJRequestBatch);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Parameters.CodingKeys and conformance Parameters.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Parameters.Feature and conformance Parameters.Feature()
{
  result = lazy protocol witness table cache variable for type Parameters.Feature and conformance Parameters.Feature;
  if (!lazy protocol witness table cache variable for type Parameters.Feature and conformance Parameters.Feature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parameters.Feature and conformance Parameters.Feature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Parameters.Feature and conformance Parameters.Feature;
  if (!lazy protocol witness table cache variable for type Parameters.Feature and conformance Parameters.Feature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parameters.Feature and conformance Parameters.Feature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Parameters.Feature and conformance Parameters.Feature;
  if (!lazy protocol witness table cache variable for type Parameters.Feature and conformance Parameters.Feature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parameters.Feature and conformance Parameters.Feature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Parameters and conformance Parameters()
{
  result = lazy protocol witness table cache variable for type Parameters and conformance Parameters;
  if (!lazy protocol witness table cache variable for type Parameters and conformance Parameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parameters and conformance Parameters);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_11(-1);
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_11((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_11((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_11((*a1 | (v4 << 8)) - 3);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_11(v8);
}

_BYTE *storeEnumTagSinglePayload for JSONRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_22(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_19(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100005914);
      case 4:
        result = OUTLINED_FUNCTION_21(result, v6);
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
          result = OUTLINED_FUNCTION_14(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODJResponse.PropertyIdentifierResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_11(-1);
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
      return OUTLINED_FUNCTION_11((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_11((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_11((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_11(v8);
}

_BYTE *storeEnumTagSinglePayload for ODJResponse.PropertyIdentifierResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_22(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_19(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100005AA4);
      case 4:
        result = OUTLINED_FUNCTION_21(result, v6);
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
          result = OUTLINED_FUNCTION_14(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Parameters(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_11(-1);
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
      return OUTLINED_FUNCTION_11((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_11((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_11((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_11(v8);
}

_BYTE *storeEnumTagSinglePayload for Parameters(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_22(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_19(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100005C38);
      case 4:
        result = OUTLINED_FUNCTION_21(result, v6);
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
          result = OUTLINED_FUNCTION_14(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PropertyIdentifierRequest and conformance PropertyIdentifierRequest()
{
  result = lazy protocol witness table cache variable for type PropertyIdentifierRequest and conformance PropertyIdentifierRequest;
  if (!lazy protocol witness table cache variable for type PropertyIdentifierRequest and conformance PropertyIdentifierRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PropertyIdentifierRequest and conformance PropertyIdentifierRequest);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONRequest(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_11(-1);
  }

  if (a2 >= 0xFC)
  {
    if ((a2 + 33554180) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return OUTLINED_FUNCTION_11((*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776965);
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return OUTLINED_FUNCTION_11((*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776965);
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 <= 4 ? 4 : *(a1 + 2);
  v6 = v5 - 5;
  if (v4 >= 4)
  {
    return OUTLINED_FUNCTION_11(v6);
  }

  else
  {
    return OUTLINED_FUNCTION_11(-1);
  }
}

uint64_t storeEnumTagSinglePayload for JSONRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554180) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFB)
  {
    v3 = 0;
  }

  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 2) = (a2 - 252) >> 16;
    if (v3)
    {
      v4 = ((a2 - 252) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 4;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JSONRequest and conformance JSONRequest()
{
  result = lazy protocol witness table cache variable for type JSONRequest and conformance JSONRequest;
  if (!lazy protocol witness table cache variable for type JSONRequest and conformance JSONRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest and conformance JSONRequest);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONRequest.Command(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return OUTLINED_FUNCTION_18(a1);
}

_BYTE *storeEnumTagSinglePayload for JSONRequest.Command(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x100006728);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)(a1, a1, a3, v3, v4);
}

uint64_t OUTLINED_FUNCTION_10()
{
  v2 = *(*(v1 - 200) + 8);
  result = v0;
  v4 = *(v1 - 72);
  return result;
}

uint64_t OUTLINED_FUNCTION_20()
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_24()
{
}

uint64_t OUTLINED_FUNCTION_27()
{

  return Hasher.init(_seed:)();
}

uint64_t get_enum_tag_for_layout_string_26MusicUIEngagementExtension0C5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ExtensionError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 16))
  {
    return (*a1 + 2147483640);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 7;
  if (v4 >= 9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 7;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ExtensionError(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Feature.MusicKit(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_BYTE *storeEnumTagSinglePayload for Feature.MusicKit(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x100006CD0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Feature.Sonic and conformance Feature.Sonic()
{
  result = lazy protocol witness table cache variable for type Feature.Sonic and conformance Feature.Sonic;
  if (!lazy protocol witness table cache variable for type Feature.Sonic and conformance Feature.Sonic)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Feature.Sonic and conformance Feature.Sonic);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Feature.Sonic and conformance Feature.Sonic;
  if (!lazy protocol witness table cache variable for type Feature.Sonic and conformance Feature.Sonic)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Feature.Sonic and conformance Feature.Sonic);
  }

  return result;
}

Swift::Int Feature.MusicKit.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit()
{
  result = lazy protocol witness table cache variable for type Feature.MusicKit and conformance Feature.MusicKit;
  if (!lazy protocol witness table cache variable for type Feature.MusicKit and conformance Feature.MusicKit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Feature.MusicKit and conformance Feature.MusicKit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Feature.MusicKit and conformance Feature.MusicKit;
  if (!lazy protocol witness table cache variable for type Feature.MusicKit and conformance Feature.MusicKit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Feature.MusicKit and conformance Feature.MusicKit);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v3 = Property.rawValue.getter(a1);
  v5 = v4;
  if (v3 == Property.rawValue.getter(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 0x796D6568636C61;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = "nowPlayingTransitions";
  v6 = 0x796D6568636C61;
  switch(v4)
  {
    case 1:
      v6 = 0xD000000000000015;
      v3 = 0x80000001000113C0;
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_65();
      v3 = 0xEB00000000736E69;
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_63();
      v3 = 0xEC0000006B636162;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000015;
      v7 = (v5 - 32) | 0x8000000000000000;
      break;
    case 2:
      v2 = 0x507972617262696CLL;
      v7 = 0xEB00000000736E69;
      break;
    case 3:
      v2 = 0x79616C5069726973;
      v7 = 0xEC0000006B636162;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  Property.rawValue.getter(a2);
  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  OUTLINED_FUNCTION_77();
  return String.hash(into:)();
}

{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_77();
  return specialized RawRepresentable<>._rawHashValue(seed:)();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  Property.rawValue.getter(a2);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static MusicUIEngagementExtension.logger);
  __swift_project_value_buffer(v0, static MusicUIEngagementExtension.logger);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for decoder(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  v6 = a2(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

id one-time initialization function for userDefaults(uint64_t a1, uint64_t (*a2)(void), void *a3)
{
  v4 = a2();
  v6 = v5;
  v7 = objc_allocWithZone(NSUserDefaults);
  result = @nonobjc NSUserDefaults.init(suiteName:)(v4, v6);
  *a3 = result;
  return result;
}

uint64_t static MusicUIEngagementExtension.hasPlaybackCapability.getter()
{
  return _swift_task_switch(static MusicUIEngagementExtension.hasPlaybackCapability.getter, 0, 0);
}

{
  type metadata accessor for ICStoreRequestContext();
  v1 = [objc_opt_self() activeAccount];
  v2 = [objc_opt_self() defaultIdentityStore];
  v3 = [objc_opt_self() defaultInfo];
  v4 = OUTLINED_FUNCTION_32();
  v7 = ICStoreRequestContext.__allocating_init(identity:identityStore:clientInfo:)(v4, v5, v6);
  v0[19] = v7;
  v8 = [objc_allocWithZone(ICMusicSubscriptionStatusRequest) initWithStoreRequestContext:v7];
  v0[20] = v8;
  [v8 setShouldReturnLastKnownStatusOnly:1];
  v9 = [objc_opt_self() sharedStatusController];
  v0[21] = v9;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = static MusicUIEngagementExtension.hasPlaybackCapability.getter;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo33ICMusicSubscriptionStatusResponseCs5Error_pGMd, &_sSccySo33ICMusicSubscriptionStatusResponseCs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned ICMusicSubscriptionStatusResponse?, @unowned NSError?) -> () with result type ICMusicSubscriptionStatusResponse;
  v0[13] = &block_descriptor;
  v0[14] = v10;
  [v9 performSubscriptionStatusRequest:v8 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_17_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = static MusicUIEngagementExtension.hasPlaybackCapability.getter;
  }

  else
  {
    v5 = static MusicUIEngagementExtension.hasPlaybackCapability.getter;
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v1 = *(v0 + 144);

  v2 = [v1 subscriptionStatus];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 capabilities];

    v5 = v4 & 1;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v6 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_22_0(v6, static MusicUIEngagementExtension.logger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_0(v8))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_39();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_5_0();
    }

    v5 = 0;
  }

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_22_0(v14, static MusicUIEngagementExtension.logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_16_0(v16))
  {
    v17 = OUTLINED_FUNCTION_57();
    *v17 = 67240192;
    v17[1] = v5;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v18, v19, v20, v21, v22, 8u);
    OUTLINED_FUNCTION_5_0();
  }

  v24 = *(v0 + 152);
  v23 = *(v0 + 160);

  v25 = *(v0 + 8);

  return v25(v5);
}

{
  v1 = v0[21];
  v2 = v0[22];
  swift_willThrow();

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v3 = v0[22];
  v4 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_22_0(v4, static MusicUIEngagementExtension.logger);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[22];
  if (v7)
  {
    v9 = OUTLINED_FUNCTION_28();
    v10 = OUTLINED_FUNCTION_57();
    *v9 = 138543362;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "🧩 Error getting sub status response: %{public}@", v9, 0xCu);
    outlined destroy of Any?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_12_0();
  }

  else
  {
  }

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  OUTLINED_FUNCTION_22_0(v4, static MusicUIEngagementExtension.logger);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_31(v13))
  {
    *OUTLINED_FUNCTION_57() = 67240192;
    OUTLINED_FUNCTION_67();
    _os_log_impl(v14, v15, v16, v17, v18, 8u);
    OUTLINED_FUNCTION_14_0();
  }

  v20 = v0[19];
  v19 = v0[20];

  v21 = v0[1];

  return v21(0);
}

id ICStoreRequestContext.__allocating_init(identity:identityStore:clientInfo:)(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentity:a1 identityStore:a2 clientInfo:a3];

  return v6;
}

uint64_t *@objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned ICMusicSubscriptionStatusResponse?, @unowned NSError?) -> () with result type ICMusicSubscriptionStatusResponse(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t static MusicUIEngagementExtension.performRequest(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v116 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v113 - v8;
  v10 = type metadata accessor for DefaultsKeys.Engagement();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v13 = [objc_opt_self() sharedPrivacyInfo];
  v14 = [v13 privacyAcknowledgementRequiredForMusic];

  if ((v14 & 1) == 0)
  {
    v39 = objc_opt_self();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    LODWORD(v39) = [v39 isValidJSONObject:_bridgeAnythingToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (!v39)
    {
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v50 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_22_0(v50, static MusicUIEngagementExtension.logger);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_40(v52))
      {
        OUTLINED_FUNCTION_28();
        v53 = OUTLINED_FUNCTION_15_0();
        *&v120 = v53;
        *a2 = 136446210;
        OUTLINED_FUNCTION_72();
        *(a2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v56);
        _os_log_impl(&_mh_execute_header, v51, v52, "🧩 %{public}s", a2, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v53);
        OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_23_0();
      }

      lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
      v120 = 0u;
      v121 = 0u;
      v57 = OUTLINED_FUNCTION_33();
      v59 = OUTLINED_FUNCTION_64(xmmword_1000112A0, v57, v58);
      (a2)(v59);
      goto LABEL_23;
    }

    if (one-time initialization token for userDefaults != -1)
    {
      OUTLINED_FUNCTION_1();
    }

    v40 = static MusicUIEngagementExtension.userDefaults;
    v115.n128_u64[0] = v3;
    v114 = static MusicUIEngagementExtension.userDefaults;
    if (static MusicUIEngagementExtension.userDefaults)
    {
      v41 = OUTLINED_FUNCTION_62();
      v42(v41);
      DefaultsKeys.Engagement.rawValue.getter();
      v43 = *(v11 + 8);
      v44 = OUTLINED_FUNCTION_35();
      v45(v44);
      OUTLINED_FUNCTION_69();
      v46 = String._bridgeToObjectiveC()();

      v47 = [v40 stringForKey:v46];

      if (v47)
      {
        v40 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;

        goto LABEL_30;
      }

      v40 = 0;
    }

    v49 = 0;
LABEL_30:
    v79 = [objc_opt_self() activeAccount];
    v80 = outlined bridged method (ob) of @objc ICUserIdentity.accountDSID.getter(v79);
    v82 = v80;
    v83 = v81;
    if (v49)
    {
      if (v81)
      {
        if (v40 == v80 && v49 == v81)
        {

LABEL_52:

LABEL_58:
          v108 = type metadata accessor for TaskPriority();
          __swift_storeEnumTagSinglePayload(v9, 1, 1, v108);
          outlined init with copy of Any(a1, &v120);
          type metadata accessor for MainActor();
          v109 = v116;

          v110 = static MainActor.shared.getter();
          v111 = swift_allocObject();
          *(v111 + 16) = v110;
          *(v111 + 24) = &protocol witness table for MainActor;
          outlined init with take of Any(&v120, (v111 + 32));
          v112 = v115.n128_u64[0];
          *(v111 + 64) = v115.n128_u64[0];
          *(v111 + 72) = a2;
          *(v111 + 80) = v109;
          *(v111 + 88) = v112;
          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:), v111);
        }

        v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v85)
        {
          goto LABEL_52;
        }
      }

      else
      {
      }
    }

    else if (!v81)
    {
      goto LABEL_58;
    }

    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v88 = type metadata accessor for Logger();
    v113[2] = __swift_project_value_buffer(v88, static MusicUIEngagementExtension.logger);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_31(v90))
    {
      v91 = swift_slowAlloc();
      v113[1] = v82;
      *v91 = 0;
      OUTLINED_FUNCTION_67();
      _os_log_impl(v92, v93, v94, v95, v96, 2u);
      OUTLINED_FUNCTION_23_0();
    }

    static MusicUIEngagementExtension.resetEngagementUserDefaults()();
    v97 = v114;
    if (v114)
    {
      if (v83)
      {
        v98 = String._bridgeToObjectiveC()();
      }

      else
      {
        v98 = 0;
      }

      v99 = OUTLINED_FUNCTION_62();
      v100(v99);
      DefaultsKeys.Engagement.rawValue.getter();
      v101 = *(v11 + 8);
      v102 = OUTLINED_FUNCTION_35();
      v103(v102);
      OUTLINED_FUNCTION_69();
      v104 = String._bridgeToObjectiveC()();

      [v97 setObject:v98 forKey:v104];
      swift_unknownObjectRelease();
    }

    else
    {
    }

    [v97 synchronize];
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_40(v106))
    {
      v107 = swift_slowAlloc();
      *v107 = 0;
      _os_log_impl(&_mh_execute_header, v105, v106, "🧩 UserDefaults updated for new account, continuing with request", v107, 2u);
      OUTLINED_FUNCTION_23_0();
    }

    goto LABEL_58;
  }

  v114 = a2;
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, static MusicUIEngagementExtension.logger);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_40(v17))
  {
    v18 = OUTLINED_FUNCTION_50();
    *&v120 = OUTLINED_FUNCTION_51();
    *v18 = 136446466;
    OUTLINED_FUNCTION_72();
    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, v19, v20);
    *(v18 + 12) = 2082;
    OUTLINED_FUNCTION_72();
    *(v18 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v22, v23);
    OUTLINED_FUNCTION_30(&_mh_execute_header, v24, v25, "🧩 %{public}s: %{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_23_0();
  }

  if (one-time initialization token for encoder != -1)
  {
    OUTLINED_FUNCTION_4_0();
  }

  v115 = xmmword_1000112B0;
  v120 = xmmword_1000112B0;
  *&v121 = 0xD00000000000004BLL;
  *(&v121 + 1) = 0x8000000100011790;
  v122 = 0xD000000000000023;
  v123 = 0x80000001000117E0;
  lazy protocol witness table accessor for type ODJResponse and conformance ODJResponse();
  v61 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v63 = v62;
  objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v119[0] = 0;
  v65 = OUTLINED_FUNCTION_68();
  v67 = [v65 v66];

  v68 = v119[0];
  if (!v67)
  {
    v78 = v68;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v61, v63);
    swift_errorRetain();
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v26, v27))
    {
      v28 = OUTLINED_FUNCTION_50();
      v29 = OUTLINED_FUNCTION_57();
      v30 = OUTLINED_FUNCTION_29();
      *&v120 = v30;
      *v28 = 136446466;
      OUTLINED_FUNCTION_72();
      *(v28 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, v31, v32);
      *(v28 + 12) = 2114;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 14) = v33;
      *v29 = v33;
      OUTLINED_FUNCTION_30(&_mh_execute_header, v34, v35, "🧩 %{public}s: %{public}@");
      outlined destroy of Any?(v29, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_5_0();
      __swift_destroy_boxed_opaque_existential_1(v30);
      OUTLINED_FUNCTION_23_0();
      OUTLINED_FUNCTION_23_0();
    }

    lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
    v120 = 0u;
    v121 = 0u;
    v36 = OUTLINED_FUNCTION_33();
    v38 = OUTLINED_FUNCTION_64(v115, v36, v37);
    v114(v38);

LABEL_23:

    return outlined destroy of Any?(&v120, &_sypSgMd, &_sypSgMR);
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(&v120, v119);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_40(v70))
  {
    v71 = OUTLINED_FUNCTION_50();
    v118 = OUTLINED_FUNCTION_51();
    *v71 = 136446466;
    *(v71 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000100011810, &v118);
    *(v71 + 12) = 2082;
    outlined init with copy of Any(v119, v117);
    v72 = String.init<A>(describing:)();
    v74 = v73;
    __swift_destroy_boxed_opaque_existential_1(v119);
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v118);

    *(v71 + 14) = v75;
    OUTLINED_FUNCTION_30(&_mh_execute_header, v76, v77, "🧩 %{public}s Sending JSON to ODJ: %{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_23_0();
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v119);
  }

  outlined init with copy of Any(&v120, v119);
  lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
  v86 = OUTLINED_FUNCTION_33();
  *v87 = v115;
  (v114)(v119, v86);
  outlined consume of Data._Representation(v61, v63);

  outlined destroy of Any?(v119, &_sypSgMd, &_sypSgMR);
  return __swift_destroy_boxed_opaque_existential_1(&v120);
}

id static MusicUIEngagementExtension.resetEngagementUserDefaults()()
{
  v0 = type metadata accessor for DefaultsKeys.Engagement();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = (__chkstk_darwin)();
  v5 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = v31 - v6;
  v8 = static DefaultsKeys.Engagement.allCases.getter();
  v10 = *(v8 + 16);
  v11 = &MusicUIEngagementExtension;
  if (v10)
  {
    v14 = *(v1 + 16);
    v13 = v1 + 16;
    v12 = v14;
    v15 = *(v13 + 64);
    v31[1] = v8;
    v16 = v8 + ((v15 + 32) & ~v15);
    v35 = *(v13 + 56);
    v40 = (v13 - 8);
    v33 = "sResponse8@NSError16";
    *&v9 = 136315394;
    v32 = v9;
    v38 = v13;
    v39 = v5;
    v36 = v0;
    v37 = v7;
    v34 = v14;
    do
    {
      v12(v7, v16, v0);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      __swift_project_value_buffer(v17, static MusicUIEngagementExtension.logger);
      v12(v5, v7, v0);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = v0;
        v21 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v21 = v32;
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, v33 | 0x8000000000000000, &v41);
        *(v21 + 12) = 2080;
        v22 = DefaultsKeys.Engagement.rawValue.getter();
        v24 = v23;
        v25 = *v40;
        v26 = v20;
        v12 = v34;
        (*v40)(v39, v26);
        v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, &v41);
        v5 = v39;

        *(v21 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v18, v19, "🧩 %s Active user changed, resetting %s", v21, 0x16u);
        swift_arrayDestroy();
        v11 = &MusicUIEngagementExtension;
      }

      else
      {

        v25 = *v40;
        (*v40)(v5, v0);
      }

      v7 = v37;
      if (one-time initialization token for userDefaults != -1)
      {
        swift_once();
      }

      count = v11[219].count;
      if (count)
      {
        DefaultsKeys.Engagement.rawValue.getter();
        v29 = String._bridgeToObjectiveC()();

        [count removeObjectForKey:v29];

        v5 = v39;
      }

      v0 = v36;
      v25(v7, v36);
      v16 += v35;
      --v10;
    }

    while (v10);
  }

  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  return [v11[219].count synchronize];
}

uint64_t closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a4;
  v8[17] = a6;
  v9 = *(*(type metadata accessor for String.Encoding() - 8) + 64) + 15;
  v8[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[21] = static MainActor.shared.getter();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[22] = v10;
  v8[23] = v11;

  return _swift_task_switch(closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:), v10, v11);
}

uint64_t closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:)()
{
  v45 = v0;
  v1 = *(v0 + 128);
  v2 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  *(v0 + 112) = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:v0 + 112];
  swift_unknownObjectRelease();
  v5 = *(v0 + 112);
  if (v4)
  {
    v6 = *(v0 + 160);
    v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    *(v0 + 192) = v7;
    *(v0 + 200) = v9;
    static String.Encoding.utf8.getter();
    OUTLINED_FUNCTION_32();
    result = String.init(data:encoding:)();
    if (v11)
    {
      v12 = result;
      v13 = v11;
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v14 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_22_0(v14, static MusicUIEngagementExtension.logger);

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = OUTLINED_FUNCTION_28();
        v18 = OUTLINED_FUNCTION_29();
        v44 = v18;
        *v17 = 136446210;
        v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v44);

        *(v17 + 4) = v19;
        OUTLINED_FUNCTION_75(&_mh_execute_header, v20, v21, "🧩 Received request: %{public}s");
        __swift_destroy_boxed_opaque_existential_1(v18);
        OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_23_0();
      }

      else
      {
      }

      if (one-time initialization token for decoder != -1)
      {
        swift_once();
      }

      lazy protocol witness table accessor for type ODJRequest and conformance ODJRequest();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v39 = *(v0 + 120);
      *(v0 + 208) = v39;
      v40 = swift_task_alloc();
      *(v0 + 216) = v40;
      *v40 = v0;
      v40[1] = closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:);
      v41 = *(v0 + 144);
      v42 = *(v0 + 152);
      v43 = *(v0 + 136);

      return static MusicUIEngagementExtension.parseRequest(request:completion:)(v0 + 48, v39);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v22 = v5;
    v23 = *(v0 + 168);

    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v24 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_22_0(v24, static MusicUIEngagementExtension.logger);
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = OUTLINED_FUNCTION_28();
      v28 = OUTLINED_FUNCTION_57();
      *v27 = 138543362;
      swift_errorRetain();
      v29 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v29;
      *v28 = v29;
      OUTLINED_FUNCTION_76(&_mh_execute_header, v30, v31, "🧩 Failed to import JSON payload: %{public}@");
      outlined destroy of Any?(v28, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_5_0();
    }

    v33 = *(v0 + 136);
    v32 = *(v0 + 144);

    lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
    OUTLINED_FUNCTION_46();
    v34 = OUTLINED_FUNCTION_33();
    v36 = OUTLINED_FUNCTION_61(v34, v35);
    v33(v36);

    outlined destroy of Any?(v26, &_sypSgMd, &_sypSgMR);
    v37 = *(v0 + 160);

    OUTLINED_FUNCTION_11_0();

    return v38();
  }

  return result;
}

{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  OUTLINED_FUNCTION_17_0();
  *v4 = v3;
  v5 = v2[27];
  *v4 = *v1;
  *(v3 + 224) = v0;

  v6 = v2[26];

  v7 = v2[23];
  v8 = v2[22];
  if (v0)
  {
    v9 = closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:);
  }

  else
  {
    v9 = closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:);
  }

  return _swift_task_switch(v9, v8, v7);
}

{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[21];
  v5 = v0[17];
  v4 = v0[18];

  outlined init with copy of Any((v0 + 6), (v0 + 10));
  v5(v0 + 10, 0);
  outlined consume of Data._Representation(v2, v1);
  outlined destroy of Any?((v0 + 10), &_sypSgMd, &_sypSgMR);
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);
  v6 = v0[20];

  OUTLINED_FUNCTION_11_0();

  return v7();
}

{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[21];

  v4 = OUTLINED_FUNCTION_69();
  outlined consume of Data._Representation(v4, v5);
  v6 = v0[28];
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v7 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_22_0(v7, static MusicUIEngagementExtension.logger);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = OUTLINED_FUNCTION_28();
    v11 = OUTLINED_FUNCTION_57();
    *v10 = 138543362;
    swift_errorRetain();
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 4) = v12;
    *v11 = v12;
    OUTLINED_FUNCTION_76(&_mh_execute_header, v13, v14, "🧩 Failed to import JSON payload: %{public}@");
    outlined destroy of Any?(v11, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_5_0();
  }

  v16 = v0[17];
  v15 = v0[18];

  lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
  OUTLINED_FUNCTION_46();
  v17 = OUTLINED_FUNCTION_33();
  v19 = OUTLINED_FUNCTION_61(v17, v18);
  v16(v19);

  outlined destroy of Any?(v9, &_sypSgMd, &_sypSgMR);
  v20 = v0[20];

  OUTLINED_FUNCTION_11_0();

  return v21();
}

uint64_t static MusicUIEngagementExtension.parseRequest(request:completion:)(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v4 = type metadata accessor for DefaultsKeys.LegacyDefaultsKeys();
  v3[32] = v4;
  v5 = *(v4 - 8);
  v3[33] = v5;
  v6 = *(v5 + 64) + 15;
  v3[34] = swift_task_alloc();

  return _swift_task_switch(static MusicUIEngagementExtension.parseRequest(request:completion:), 0, 0);
}

uint64_t static MusicUIEngagementExtension.parseRequest(request:completion:)()
{
  v171 = v1;
  v4 = [objc_opt_self() sharedPrivacyInfo];
  v5 = [v4 privacyAcknowledgementRequiredForMusic];

  if (v5)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v6 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_22_0(v6, static MusicUIEngagementExtension.logger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_16_0(v8))
    {
      v9 = OUTLINED_FUNCTION_50();
      v169 = OUTLINED_FUNCTION_51();
      *v9 = 136446466;
      v10 = OUTLINED_FUNCTION_42("parseRequest(request:completion:)", v162, v163, v164, v165);
      OUTLINED_FUNCTION_38(v10);
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2 - 4, 0x8000000100011840, &v169);
      OUTLINED_FUNCTION_21_0();
      _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_23_0();
    }

    lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
    OUTLINED_FUNCTION_33();
    v17 = xmmword_1000112B0;
LABEL_26:
    *v16 = v17;
    swift_willThrow();
LABEL_27:
    v63 = *(v1 + 272);

    OUTLINED_FUNCTION_11_0();

    return v64();
  }

  if (one-time initialization token for mobileiPodDefaults != -1)
  {
    OUTLINED_FUNCTION_2_0();
  }

  if (static MusicUIEngagementExtension.mobileiPodDefaults)
  {
    v3 = *(v1 + 264);
    v18 = *(v1 + 272);
    v0 = *(v1 + 256);
    v19 = OUTLINED_FUNCTION_20_0();
    v20(v19);
    DefaultsKeys.LegacyDefaultsKeys.rawValue.getter();
    v21 = OUTLINED_FUNCTION_9_0();
    v22(v21);
    OUTLINED_FUNCTION_32();
    v23 = String._bridgeToObjectiveC()();

    v24 = OUTLINED_FUNCTION_68();
    v26 = [v24 v25];

    if (v26)
    {
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v27 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_22_0(v27, static MusicUIEngagementExtension.logger);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_16_0(v29))
      {
        v30 = OUTLINED_FUNCTION_50();
        v169 = OUTLINED_FUNCTION_51();
        *v30 = 136446466;
        v31 = OUTLINED_FUNCTION_42("parseRequest(request:completion:)", v162, v163, v164, v165);
        OUTLINED_FUNCTION_38(v31);
        *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2 + 30, 0x80000001000118B0, &v169);
        OUTLINED_FUNCTION_21_0();
        _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
        OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_23_0();
      }

      lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
      OUTLINED_FUNCTION_33();
      v17 = xmmword_1000112C0;
      goto LABEL_26;
    }
  }

  v37 = *(v1 + 240);
  if (!v37)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v46 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_22_0(v46, static MusicUIEngagementExtension.logger);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_24_0(v48))
    {
      OUTLINED_FUNCTION_28();
      v166 = OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_19_0(4.8751e-34);

      OUTLINED_FUNCTION_3_0();
      v169 = v50;
      v170 = v49;
      v51._countAndFlagsBits = 0x74736575716572;
      v51._object = 0xE700000000000000;
      String.append(_:)(v51);
      v52._countAndFlagsBits = OUTLINED_FUNCTION_7_0();
      v52._object = 0xE500000000000000;
      String.append(_:)(v52);
      OUTLINED_FUNCTION_52(v53, v54, v55, v56, v57, v58, v59, v60, v162, v163, v164, v166, v169, v170);
      OUTLINED_FUNCTION_58();
      *(v0 + 4) = v3;
      OUTLINED_FUNCTION_10_0(&_mh_execute_header, v61, v62, "🧩 %{public}s");
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_14_0();
    }

    lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
    OUTLINED_FUNCTION_33();
    v17 = xmmword_1000112F0;
    goto LABEL_26;
  }

  v38 = Dictionary.init(dictionaryLiteral:)();
  v39 = v38;
  v40 = *(v37 + 32);
  *(v1 + 337) = v40;
  v41 = -1;
  v42 = -1 << v40;
  if (-(-1 << v40) < 64)
  {
    v41 = ~(-1 << -v42);
  }

  v43 = v41 & *(v37 + 64);
  *(v1 + 280) = v38;

  if (!v43)
  {
    v66 = 0;
    v45 = *(v1 + 240);
    while (((63 - v42) >> 6) - 1 != v66)
    {
      v44 = v66 + 1;
      v43 = *(v45 + 8 * v66++ + 72);
      if (v43)
      {
        goto LABEL_33;
      }
    }

    if (one-time initialization token for encoder != -1)
    {
      OUTLINED_FUNCTION_4_0();
    }

    *(v1 + 16) = v39;
    lazy protocol witness table accessor for type ODJResponse and conformance ODJResponse();
    OUTLINED_FUNCTION_47();
    dispatch thunk of JSONEncoder.encode<A>(_:)();

    v134 = objc_opt_self();
    OUTLINED_FUNCTION_60();
    isa = Data._bridgeToObjectiveC()().super.isa;
    *(v1 + 224) = 0;
    v136 = [v134 JSONObjectWithData:isa options:0 error:v1 + 224];

    v137 = *(v1 + 224);
    if (v136)
    {
      v138 = *(v1 + 232);
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v139 = *(v1 + 232);
      v140 = type metadata accessor for Logger();
      __swift_project_value_buffer(v140, static MusicUIEngagementExtension.logger);
      outlined init with copy of Any(v139, v1 + 144);
      v141 = Logger.logObject.getter();
      v142 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_31(v142))
      {
        v143 = OUTLINED_FUNCTION_50();
        v169 = OUTLINED_FUNCTION_51();
        *v143 = 136446466;
        v144 = OUTLINED_FUNCTION_44();
        *(v143 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v145, &v169);
        *(v143 + 12) = 2082;
        outlined init with copy of Any(v1 + 144, v1 + 176);
        v146 = String.init<A>(describing:)();
        v148 = v147;
        __swift_destroy_boxed_opaque_existential_1((v1 + 144));
        v149 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v148, &v169);

        *(v143 + 14) = v149;
        OUTLINED_FUNCTION_67();
        _os_log_impl(v150, v151, v152, v153, v154, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_23_0();
        OUTLINED_FUNCTION_14_0();
        v155 = OUTLINED_FUNCTION_60();
        outlined consume of Data._Representation(v155, v156);
      }

      else
      {
        v160 = OUTLINED_FUNCTION_60();
        outlined consume of Data._Representation(v160, v161);

        __swift_destroy_boxed_opaque_existential_1((v1 + 144));
      }
    }

    else
    {
      v157 = v137;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v158 = OUTLINED_FUNCTION_60();
      outlined consume of Data._Representation(v158, v159);
    }

    goto LABEL_27;
  }

  v44 = 0;
  v45 = *(v1 + 240);
LABEL_33:
  *(v1 + 288) = v43;
  *(v1 + 296) = v44;
  v67 = OUTLINED_FUNCTION_59(v45, v44);
  v69 = *v68;
  *(v1 + 304) = *v68;
  v70 = v68[1];
  *(v1 + 312) = v70;
  OUTLINED_FUNCTION_71(v67, v71);
  if (v73)
  {

    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_1();
    }

    v74 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_22_0(v74, static MusicUIEngagementExtension.logger);
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_24_0(v76))
    {
      OUTLINED_FUNCTION_28();
      v167 = OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_19_0(4.8149e-34);

      OUTLINED_FUNCTION_3_0();
      v169 = v78;
      v170 = v77;
      v79._countAndFlagsBits = OUTLINED_FUNCTION_70();
      v79._object = 0xE700000000000000;
      String.append(_:)(v79);
      v80._countAndFlagsBits = OUTLINED_FUNCTION_7_0();
      v80._object = 0xE500000000000000;
      String.append(_:)(v80);
      OUTLINED_FUNCTION_52(v81, v82, v83, v84, v85, v86, v87, v88, v162, v163, v164, v167, v169, v170);
      OUTLINED_FUNCTION_58();
      *(v70 + 4) = v3;
      OUTLINED_FUNCTION_10_0(&_mh_execute_header, v89, v90, "🧩 %s, privacy: .public)");
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_14_0();
    }

    v91 = *(v1 + 240);
    lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
    OUTLINED_FUNCTION_33();
    v93 = xmmword_1000112E0;
LABEL_53:
    *v92 = v93;
    swift_willThrow();

    goto LABEL_27;
  }

  LODWORD(v94) = *(v72 + 2);
  v95 = one-time initialization token for logger;

  if (v95 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v96 = type metadata accessor for Logger();
  __swift_project_value_buffer(v96, static MusicUIEngagementExtension.logger);
  v97 = Logger.logObject.getter();
  v98 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_31(v98))
  {
    HIDWORD(v163) = v94;
    v94 = OUTLINED_FUNCTION_28();
    v99 = OUTLINED_FUNCTION_29();
    v169 = v99;
    *v94 = 136446210;
    v100 = String.init<A>(describing:)();
    v162 = v69;
    v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, &v169);

    *(v94 + 4) = v102;
    OUTLINED_FUNCTION_75(&_mh_execute_header, v103, v104, "🧩 Command: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v99);
    OUTLINED_FUNCTION_23_0();
    LOBYTE(v94) = BYTE4(v163);
    OUTLINED_FUNCTION_23_0();
  }

  if (!*(*(v1 + 240) + 16) || (v105 = specialized __RawDictionaryStorage.find<A>(_:)(v69, v70), (v106 & 1) == 0))
  {

    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_24_0(v118))
    {
      OUTLINED_FUNCTION_28();
      v168 = OUTLINED_FUNCTION_15_0();
      v169 = 0;
      OUTLINED_FUNCTION_19_0(4.8751e-34);

      OUTLINED_FUNCTION_3_0();
      v169 = v120;
      v170 = v119;
      v121._countAndFlagsBits = OUTLINED_FUNCTION_27_0();
      String.append(_:)(v121);
      v122._countAndFlagsBits = OUTLINED_FUNCTION_7_0();
      v122._object = 0xE500000000000000;
      String.append(_:)(v122);
      OUTLINED_FUNCTION_52(v123, v124, v125, v126, v127, v128, v129, v130, v162, v163, v164, v168, v169, v170);
      OUTLINED_FUNCTION_58();
      *(v70 + 4) = &unk_100011000;
      OUTLINED_FUNCTION_10_0(&_mh_execute_header, v131, v132, "🧩 %{public}s");
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_14_0();
    }

    v133 = *(v1 + 240);
    lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
    OUTLINED_FUNCTION_33();
    v93 = xmmword_1000112D0;
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_66(v105);
  v108 = *(v107 + 1);
  *(v1 + 338) = v108;
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = OUTLINED_FUNCTION_28();
    v112 = OUTLINED_FUNCTION_29();
    v169 = v112;
    *v111 = 136446210;
    *(v1 + 336) = v108;
    lazy protocol witness table accessor for type Property and conformance Property();
    v113 = dispatch thunk of CustomStringConvertible.description.getter();
    v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v113, v114, &v169);

    *(v111 + 4) = v115;
    _os_log_impl(&_mh_execute_header, v109, v110, "🧩 Property: %{public}s", v111, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v112);
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_12_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
  lazy protocol witness table accessor for type Property and conformance Property();
  *(v1 + 320) = Dictionary.init(dictionaryLiteral:)();
  v116 = swift_task_alloc();
  *(v1 + 328) = v116;
  *v116 = v1;
  OUTLINED_FUNCTION_13_0(v116);

  return static MusicUIEngagementExtension.fetchProperty(_:featureName:)(v1 + 64, v108, v94);
}

{
  OUTLINED_FUNCTION_18_0();
  v1 = *(*v0 + 328);
  v2 = *v0;
  OUTLINED_FUNCTION_6_0();
  *v3 = v2;

  return _swift_task_switch(static MusicUIEngagementExtension.parseRequest(request:completion:), 0, 0);
}

{
  v145 = v0;
  v2 = *(v0 + 320);
  v3 = *(v0 + 338);
  outlined init with copy of TaskPriority?(v0 + 64, v0 + 104, &_sSE_pSgMd, &_sSE_pSgMR);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 208) = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  v7 = *(v2 + 16);
  v8 = (v6 & 1) == 0;
  v9 = v7 + v8;
  if (__OFADD__(v7, v8))
  {
    goto LABEL_62;
  }

  v3 = v5;
  v10 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy26MusicUIEngagementExtension8PropertyOSE_pSgGMd, &_ss17_NativeDictionaryVy26MusicUIEngagementExtension8PropertyOSE_pSgGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9))
  {
    v11 = *(v0 + 208);
    v12 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 338));
    if ((v10 & 1) != (v13 & 1))
    {
LABEL_12:
      OUTLINED_FUNCTION_73();

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    }

    v3 = v12;
  }

  v14 = *(v0 + 208);
  if (v10)
  {
    outlined assign with take of Encodable?(v0 + 104, v14[7] + 40 * v3);
  }

  else
  {
    v15 = *(v0 + 338);
    OUTLINED_FUNCTION_49();
    *(v14[6] + v3) = v16;
    v17 = v14[7] + 40 * v3;
    v18 = *(v0 + 104);
    v19 = *(v0 + 120);
    *(v17 + 32) = *(v0 + 136);
    *v17 = v18;
    *(v17 + 16) = v19;
    v20 = v14[2];
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
LABEL_64:
      __break(1u);
LABEL_65:
      __break(1u);
LABEL_66:
      OUTLINED_FUNCTION_0_1();
LABEL_29:
      v60 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_22_0(v60, static MusicUIEngagementExtension.logger);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_24_0(v62))
      {
        OUTLINED_FUNCTION_28();
        v142 = OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_53(4.8149e-34);

        OUTLINED_FUNCTION_3_0();
        v143 = v64;
        v144 = v63;
        v65._countAndFlagsBits = OUTLINED_FUNCTION_70();
        v65._object = 0xE700000000000000;
        String.append(_:)(v65);
        v66._countAndFlagsBits = OUTLINED_FUNCTION_7_0();
        v66._object = 0xE500000000000000;
        String.append(_:)(v66);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v144, &v142);
        OUTLINED_FUNCTION_58();
        *(v3 + 4) = v1;
        OUTLINED_FUNCTION_10_0(&_mh_execute_header, v67, v68, "🧩 %s, privacy: .public)");
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_14_0();
      }

      v69 = *(v0 + 240);
      lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
      OUTLINED_FUNCTION_33();
      v71 = xmmword_1000112E0;
      goto LABEL_46;
    }

    v14[2] = v22;
  }

  v3 = *(v0 + 304);
  v23 = *(v0 + 312);
  v24 = *(v0 + 280);
  outlined destroy of Any?(v0 + 64, &_sSE_pSgMd, &_sSE_pSgMR);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 216) = v24;
  v26 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v23);
  v28 = *(v24 + 16);
  v29 = (v27 & 1) == 0;
  v1 = v28 + v29;
  if (__OFADD__(v28, v29))
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v3 = v26;
  v30 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS26MusicUIEngagementExtension11ODJResponseV26PropertyIdentifierResponseVGMd, &_ss17_NativeDictionaryVySS26MusicUIEngagementExtension11ODJResponseV26PropertyIdentifierResponseVGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v25, v1))
  {
    v31 = *(v0 + 216);
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 304), *(v0 + 312));
    if ((v30 & 1) != (v33 & 1))
    {
      goto LABEL_12;
    }

    v3 = v32;
  }

  v35 = *(v0 + 216);
  v36 = *(v0 + 312);
  if (v30)
  {
    v37 = (v35[7] + 48 * v3);
    v38 = *v37;
    v39 = v37[1];
    v40 = v37[2];
    v1 = v37[3];
    v41 = v37[4];
    v42 = v37[5];
    OUTLINED_FUNCTION_45(v37);

    outlined consume of ODJResponse.JSONPayloadError?(v39, v40, v1);
  }

  else
  {
    v43 = *(v0 + 304);
    OUTLINED_FUNCTION_49();
    v44 = (v35[6] + 16 * v3);
    *v44 = v45;
    v44[1] = v36;
    OUTLINED_FUNCTION_45(v35[7] + 48 * v3);
    v46 = v35[2];
    v21 = __OFADD__(v46, 1);
    v47 = v46 + 1;
    if (v21)
    {
      goto LABEL_65;
    }

    v35[2] = v47;
  }

  v49 = *(v0 + 288);
  v48 = *(v0 + 296);
  *(v0 + 280) = v35;
  v50 = (v49 - 1) & v49;
  if (v50)
  {
    v51 = *(v0 + 240);
    goto LABEL_27;
  }

  v3 = v0 + 16;
  v52 = (v0 + 144);
  do
  {
    v53 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
LABEL_62:
      __break(1u);
      goto LABEL_63;
    }

    v51 = *(v0 + 240);
    if (v53 >= (((1 << *(v0 + 337)) + 63) >> 6))
    {

      if (one-time initialization token for encoder != -1)
      {
        OUTLINED_FUNCTION_4_0();
      }

      *(v0 + 16) = v35;
      lazy protocol witness table accessor for type ODJResponse and conformance ODJResponse();
      OUTLINED_FUNCTION_47();
      dispatch thunk of JSONEncoder.encode<A>(_:)();

      v110 = objc_opt_self();
      OUTLINED_FUNCTION_35();
      isa = Data._bridgeToObjectiveC()().super.isa;
      *(v0 + 224) = 0;
      v112 = [v110 JSONObjectWithData:isa options:0 error:v0 + 224];

      v113 = *(v0 + 224);
      if (v112)
      {
        v114 = *(v0 + 232);
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        if (one-time initialization token for logger != -1)
        {
          OUTLINED_FUNCTION_0_1();
        }

        v115 = *(v0 + 232);
        v116 = type metadata accessor for Logger();
        __swift_project_value_buffer(v116, static MusicUIEngagementExtension.logger);
        outlined init with copy of Any(v115, v52);
        v117 = Logger.logObject.getter();
        v118 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_16_0(v118))
        {
          v119 = OUTLINED_FUNCTION_50();
          v143 = OUTLINED_FUNCTION_51();
          *v119 = 136446466;
          v120 = OUTLINED_FUNCTION_44();
          v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v120, v121, &v143);
          OUTLINED_FUNCTION_38(v122);
          outlined init with copy of Any(v52, v0 + 176);
          v123 = String.init<A>(describing:)();
          v125 = v124;
          __swift_destroy_boxed_opaque_existential_1(v52);
          v126 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v125, &v143);

          *(v119 + 14) = v126;
          OUTLINED_FUNCTION_21_0();
          _os_log_impl(v127, v128, v129, v130, v131, 0x16u);
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_5_0();
          OUTLINED_FUNCTION_23_0();
          v132 = OUTLINED_FUNCTION_35();
          outlined consume of Data._Representation(v132, v133);
        }

        else
        {
          v137 = OUTLINED_FUNCTION_35();
          outlined consume of Data._Representation(v137, v138);

          __swift_destroy_boxed_opaque_existential_1(v52);
        }

        v139 = *(v0 + 272);

        OUTLINED_FUNCTION_11_0();
LABEL_48:
        OUTLINED_FUNCTION_73();

        __asm { BRAA            X1, X16 }
      }

      v134 = v113;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v135 = OUTLINED_FUNCTION_35();
      outlined consume of Data._Representation(v135, v136);
LABEL_47:
      v107 = *(v0 + 272);

      OUTLINED_FUNCTION_11_0();
      goto LABEL_48;
    }

    v50 = *(v51 + 8 * v53 + 64);
    ++v48;
  }

  while (!v50);
  v48 = v53;
LABEL_27:
  *(v0 + 288) = v50;
  *(v0 + 296) = v48;
  v54 = OUTLINED_FUNCTION_59(v51, v48);
  v3 = *v55;
  *(v0 + 304) = *v55;
  v56 = v55[1];
  *(v0 + 312) = v56;
  OUTLINED_FUNCTION_71(v54, v57);
  if (v59)
  {

    if (one-time initialization token for logger == -1)
    {
      goto LABEL_29;
    }

    goto LABEL_66;
  }

  v72 = *(v58 + 2);
  v73 = one-time initialization token for logger;

  if (v73 != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v74 = type metadata accessor for Logger();
  __swift_project_value_buffer(v74, static MusicUIEngagementExtension.logger);
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_31(v76))
  {
    v77 = OUTLINED_FUNCTION_28();
    v141 = v3;
    v78 = OUTLINED_FUNCTION_29();
    v143 = v78;
    *v77 = 136446210;
    v79 = String.init<A>(describing:)();
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, &v143);

    *(v77 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v75, v76, "🧩 Command: %{public}s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    v3 = v141;
    OUTLINED_FUNCTION_23_0();
    OUTLINED_FUNCTION_23_0();
  }

  if (!*(*(v0 + 240) + 16) || (v82 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v56), (v83 & 1) == 0))
  {

    v98 = Logger.logObject.getter();
    v99 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_24_0(v99))
    {
      OUTLINED_FUNCTION_28();
      v142 = OUTLINED_FUNCTION_15_0();
      v143 = 0;
      OUTLINED_FUNCTION_53(4.8751e-34);

      OUTLINED_FUNCTION_3_0();
      v143 = v101;
      v144 = v100;
      v102._countAndFlagsBits = OUTLINED_FUNCTION_27_0();
      String.append(_:)(v102);
      v103._countAndFlagsBits = OUTLINED_FUNCTION_7_0();
      v103._object = 0xE500000000000000;
      String.append(_:)(v103);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v143, v144, &v142);
      OUTLINED_FUNCTION_58();
      *(v3 + 4) = &unk_100011000;
      OUTLINED_FUNCTION_10_0(&_mh_execute_header, v104, v105, "🧩 %{public}s");
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_14_0();
    }

    v106 = *(v0 + 240);
    lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
    OUTLINED_FUNCTION_33();
    v71 = xmmword_1000112D0;
LABEL_46:
    *v70 = v71;
    swift_willThrow();

    goto LABEL_47;
  }

  OUTLINED_FUNCTION_66(v82);
  v85 = *(v84 + 1);
  *(v0 + 338) = v85;
  v86 = Logger.logObject.getter();
  v87 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v86, v87))
  {
    v88 = OUTLINED_FUNCTION_28();
    v89 = OUTLINED_FUNCTION_29();
    v143 = v89;
    *v88 = 136446210;
    *(v0 + 336) = v85;
    lazy protocol witness table accessor for type Property and conformance Property();
    v90 = dispatch thunk of CustomStringConvertible.description.getter();
    v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v90, v91, &v143);

    *(v88 + 4) = v92;
    _os_log_impl(&_mh_execute_header, v86, v87, "🧩 Property: %{public}s", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v89);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_23_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
  lazy protocol witness table accessor for type Property and conformance Property();
  *(v0 + 320) = Dictionary.init(dictionaryLiteral:)();
  v93 = swift_task_alloc();
  *(v0 + 328) = v93;
  *v93 = v0;
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_73();

  return static MusicUIEngagementExtension.fetchProperty(_:featureName:)(v94, v95, v96);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v26 - v11;
  outlined init with copy of TaskPriority?(a3, v26 - v11, &_sScPSgMd, &_sScPSgMR);
  v13 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Any?(v12, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v13 - 8) + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned Swift.AnyObject?, @unowned NSError?) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  outlined init with copy of TaskPriority?(a1, v12, &_sypSgMd, &_sypSgMR);
  v5 = v13;
  if (!v13)
  {
    v11 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v12, v13);
  v7 = *(v5 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10);
  v11 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v7 + 8))(v10, v5);
  __swift_destroy_boxed_opaque_existential_1(v12);
  if (a2)
  {
LABEL_3:
    a2 = _convertErrorToNSError(_:)();
  }

LABEL_4:
  (*(a3 + 16))(a3, v11, a2);
  swift_unknownObjectRelease();
}

uint64_t static MusicUIEngagementExtension.fetchProperty(_:featureName:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 209) = a3;
  *(v4 + 208) = a2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v3;
  v5 = type metadata accessor for DefaultsKeys.Engagement();
  *(v4 + 112) = v5;
  v6 = *(v5 - 8);
  *(v4 + 120) = v6;
  v7 = *(v6 + 64) + 15;
  *(v4 + 128) = swift_task_alloc();
  v8 = type metadata accessor for DefaultsKeys.LegacyDefaultsKeys();
  *(v4 + 136) = v8;
  v9 = *(v8 - 8);
  *(v4 + 144) = v9;
  v10 = *(v9 + 64) + 15;
  *(v4 + 152) = swift_task_alloc();

  return _swift_task_switch(static MusicUIEngagementExtension.fetchProperty(_:featureName:), 0, 0);
}

uint64_t static MusicUIEngagementExtension.fetchProperty(_:featureName:)()
{
  v140 = v2;
  switch(*(v2 + 208))
  {
    case 5:
      v33 = *(v2 + 209);
      if (v33 == 4)
      {
        goto LABEL_91;
      }

      if (v33 == 1)
      {
        *(v2 + 176) = [objc_opt_self() standardUserDefaults];
        v34 = swift_task_alloc();
        *(v2 + 184) = v34;
        *v34 = v2;
        v35 = static MusicUIEngagementExtension.fetchProperty(_:featureName:);
        goto LABEL_120;
      }

      if (!*(v2 + 209))
      {
        *(v2 + 160) = [objc_opt_self() standardUserDefaults];
        v34 = swift_task_alloc();
        *(v2 + 168) = v34;
        *v34 = v2;
        v35 = static MusicUIEngagementExtension.fetchProperty(_:featureName:);
LABEL_120:
        v34[1] = v35;

        return static MusicUIEngagementExtension.hasPlaybackCapability.getter();
      }

LABEL_91:
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v106 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_22_0(v106, static MusicUIEngagementExtension.logger);
      v86 = Logger.logObject.getter();
      v107 = static os_log_type_t.default.getter();
      if (!OUTLINED_FUNCTION_31(v107))
      {
        goto LABEL_131;
      }

      v108 = *(v2 + 209);
      OUTLINED_FUNCTION_28();
      v92 = OUTLINED_FUNCTION_15_0();
      v139 = v92;
      *v1 = 136315138;
      v109 = 0x507972617262696CLL;
      if (v108 == 3)
      {
        v109 = 0x79616C5069726973;
      }

      v110 = 0xEB00000000736E69;
      if (v108 == 3)
      {
        v110 = 0xEC0000006B636162;
      }

      if (v33 == 4)
      {
        v111 = 0x676E697373696DLL;
      }

      else
      {
        v111 = v109;
      }

      if (v33 == 4)
      {
        v112 = 0xE700000000000000;
      }

      else
      {
        v112 = v110;
      }

      v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v112, &v139);

      *(v1 + 4) = v113;
LABEL_129:
      OUTLINED_FUNCTION_67();
      _os_log_impl(v129, v130, v131, v132, v133, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v92);
      OUTLINED_FUNCTION_5_0();
      goto LABEL_130;
    case 6:
      v49 = *(v2 + 209);
      if (v49 == 2)
      {
        if (one-time initialization token for userDefaults != -1)
        {
          OUTLINED_FUNCTION_1();
        }

        if (!static MusicUIEngagementExtension.userDefaults)
        {
          goto LABEL_110;
        }

        v116 = *(v2 + 120);
        v115 = *(v2 + 128);
        v117 = *(v2 + 112);
        v118 = OUTLINED_FUNCTION_37(v116);
        v119(v118);
        NSUserDefaults.integer(forKey:)();
        v121 = v120;
        (*(v116 + 8))(v115, v117);
        if ((v121 & 1) == 0)
        {
          v122 = 0xE400000000000000;
          v123 = 1684370293;
        }

        else
        {
LABEL_110:
          v122 = 0xE700000000000000;
          v123 = 0x64657355746F6ELL;
        }

        v127 = *(v2 + 96);
        v127[3] = &type metadata for String;
        v127[4] = &protocol witness table for String;
        *v127 = v123;
        v127[1] = v122;
        goto LABEL_132;
      }

      if (v49 == 3)
      {
        if (one-time initialization token for mobileiPodDefaults != -1)
        {
          OUTLINED_FUNCTION_2_0();
        }

        if (static MusicUIEngagementExtension.mobileiPodDefaults)
        {
          v51 = *(v2 + 144);
          v50 = *(v2 + 152);
          v52 = *(v2 + 136);
          v53 = *(v2 + 96);
          v54 = OUTLINED_FUNCTION_20_0();
          v55(v54);
          DefaultsKeys.LegacyDefaultsKeys.rawValue.getter();
          v56 = OUTLINED_FUNCTION_9_0();
          v57(v56);
          OUTLINED_FUNCTION_32();
          v58 = String._bridgeToObjectiveC()();

          v59 = OUTLINED_FUNCTION_68();
          v61 = [v59 v60];

          *(v53 + 24) = &type metadata for Bool;
          *(v53 + 32) = &protocol witness table for Bool;
          *v53 = v61;
        }

        else
        {
          v126 = *(v2 + 96);
          *(v126 + 24) = &type metadata for Bool;
          *(v126 + 32) = &protocol witness table for Bool;
          *v126 = 0;
        }

        goto LABEL_132;
      }

LABEL_77:
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v85 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_22_0(v85, static MusicUIEngagementExtension.logger);
      v86 = Logger.logObject.getter();
      v87 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_31(v87))
      {
        v88 = 0x796D6568636C61;
        v89 = *(v2 + 209);
        OUTLINED_FUNCTION_28();
        v90 = OUTLINED_FUNCTION_15_0();
        v139 = v90;
        *v1 = 136315138;
        v91 = 0xE700000000000000;
        v92 = v90;
        switch(v89)
        {
          case 1:
            v88 = 0xD000000000000015;
            v91 = 0x80000001000113C0;
            goto LABEL_128;
          case 2:
            goto LABEL_143;
          case 3:
            v88 = 0x79616C5069726973;
            v91 = 0xEC0000006B636162;
            goto LABEL_128;
          case 4:
            v88 = 0x676E697373696DLL;
            goto LABEL_128;
          default:
LABEL_128:
            v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v91, &v139);

            *(v1 + 4) = v128;
            break;
        }

        goto LABEL_129;
      }

      goto LABEL_131;
    case 7:
      v24 = *(v2 + 209);
      if (v24 == 4)
      {
        goto LABEL_85;
      }

      if (!*(v2 + 209))
      {
        v25 = *(v2 + 96);
        *(v2 + 40) = &type metadata for Feature.Sonic;
        *(v2 + 48) = lazy protocol witness table accessor for type Feature.Sonic and conformance Feature.Sonic();
        v26 = isFeatureEnabled(_:)();
        v27 = (v2 + 16);
        goto LABEL_112;
      }

      if (v24 == 2)
      {
        v25 = *(v2 + 96);
        *(v2 + 80) = &type metadata for Feature.MusicKit;
        *(v2 + 88) = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
        v26 = isFeatureEnabled(_:)();
        v27 = (v2 + 56);
LABEL_112:
        __swift_destroy_boxed_opaque_existential_1(v27);
        v124 = 0x64656C6261736964;
        if (v26)
        {
          v124 = 0x64656C62616E65;
        }

        v125 = 0xE800000000000000;
        v25[3] = &type metadata for String;
        v25[4] = &protocol witness table for String;
        if (v26)
        {
          v125 = 0xE700000000000000;
        }

        *v25 = v124;
        v25[1] = v125;
        goto LABEL_132;
      }

LABEL_85:
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_1();
      }

      v94 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_22_0(v94, static MusicUIEngagementExtension.logger);
      v86 = Logger.logObject.getter();
      v95 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_16_0(v95))
      {
        v96 = OUTLINED_FUNCTION_28();
        v97 = OUTLINED_FUNCTION_29();
        v139 = v97;
        *v96 = 136315138;
        if (v24 == 4)
        {
          v98 = 0x676E697373696DLL;
          v99 = 0xE700000000000000;
        }

        else
        {
          v98 = 0x796D6568636C61;
          v99 = 0xE700000000000000;
          switch(*(v2 + 209))
          {
            case 1:
              v98 = 0xD000000000000015;
              v99 = 0x80000001000113C0;
              break;
            case 2:
              v98 = OUTLINED_FUNCTION_65();
              v99 = 0xEB00000000736E69;
              break;
            case 3:
              v98 = OUTLINED_FUNCTION_63();
              v99 = 0xEC0000006B636162;
              break;
            default:
              break;
          }
        }

        v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, &v139);

        *(v96 + 4) = v100;
        OUTLINED_FUNCTION_21_0();
        _os_log_impl(v101, v102, v103, v104, v105, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v97);
        OUTLINED_FUNCTION_5_0();
LABEL_130:
        OUTLINED_FUNCTION_23_0();
      }

LABEL_131:

      v134 = *(v2 + 96);
      v134[3] = &type metadata for String;
      v134[4] = &protocol witness table for String;
      *v134 = 0x6E776F6E6B6E75;
      v134[1] = 0xE700000000000000;
LABEL_132:
      v135 = *(v2 + 152);
      v136 = *(v2 + 128);

      OUTLINED_FUNCTION_11_0();

      return v137();
    case 8:
      if (*(v2 + 209) != 2)
      {
        goto LABEL_77;
      }

      if (one-time initialization token for userDefaults != -1)
      {
        OUTLINED_FUNCTION_1();
      }

      if (!static MusicUIEngagementExtension.userDefaults)
      {
        goto LABEL_69;
      }

      v68 = *(v2 + 120);
      v67 = *(v2 + 128);
      v69 = *(v2 + 112);
      v70 = &enum case for DefaultsKeys.Engagement.lastLibraryPinAddedDate(_:);
      goto LABEL_68;
    case 9:
      if (one-time initialization token for userDefaults != -1)
      {
        OUTLINED_FUNCTION_1();
      }

      v15 = static MusicUIEngagementExtension.userDefaults;
      v16 = *(v2 + 96);
      if (!static MusicUIEngagementExtension.userDefaults)
      {
        goto LABEL_82;
      }

      OUTLINED_FUNCTION_43();
LABEL_58:
      v65 = String._bridgeToObjectiveC()();
      v66 = [v15 integerForKey:v65];

      *(v16 + 24) = &type metadata for Int;
      *(v16 + 32) = &protocol witness table for Int;
      *v16 = v66;
      goto LABEL_132;
    case 0xA:
      if (one-time initialization token for userDefaults != -1)
      {
        OUTLINED_FUNCTION_1();
      }

      v15 = static MusicUIEngagementExtension.userDefaults;
      v16 = *(v2 + 96);
      if (static MusicUIEngagementExtension.userDefaults)
      {
        goto LABEL_58;
      }

LABEL_82:
      *(v16 + 32) = 0;
      *v16 = 0u;
      *(v16 + 16) = 0u;
      goto LABEL_132;
    case 0xB:
      if (![objc_opt_self() deviceMediaLibrary])
      {
        goto LABEL_139;
      }

      OUTLINED_FUNCTION_34();
      v12 = [v0 hasAddedToLibraryAppleMusicContent];
      goto LABEL_45;
    case 0xC:
      if (![objc_opt_self() deviceMediaLibrary])
      {
        goto LABEL_140;
      }

      OUTLINED_FUNCTION_34();
      v14 = [v13 filterAvailableContentGroups:128 withOptions:2];

      *(v1 + 24) = &type metadata for Bool;
      *(v1 + 32) = &protocol witness table for Bool;
      *v1 = v14 != 0;
      goto LABEL_132;
    case 0xD:
      if (![objc_opt_self() deviceMediaLibrary])
      {
        goto LABEL_143;
      }

      OUTLINED_FUNCTION_34();
      v12 = [v0 hasUserPlaylists];
      goto LABEL_45;
    case 0xE:
      if (![objc_opt_self() deviceMediaLibrary])
      {
        goto LABEL_138;
      }

      OUTLINED_FUNCTION_34();
      v12 = [v0 hasUserPinnedLibraryEntity];
      goto LABEL_45;
    case 0xF:
      if (![objc_opt_self() sharedCloudController])
      {
        goto LABEL_141;
      }

      OUTLINED_FUNCTION_34();
      v12 = [v0 isAutomaticDownloadsEnabled];
      goto LABEL_45;
    case 0x10:
      v7 = [objc_opt_self() defaultWorkspace];
      if (!v7)
      {
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        JUMPOUT(0x10000C5E4);
      }

      v8 = v7;
      v9 = *(v2 + 96);
      OUTLINED_FUNCTION_43();
      v10 = String._bridgeToObjectiveC()();
      v11 = [v8 applicationIsInstalled:v10];

      *(v9 + 24) = &type metadata for Bool;
      *(v9 + 32) = &protocol witness table for Bool;
      *v9 = v11;
      goto LABEL_132;
    case 0x11:
      if (![objc_opt_self() sharedCloudController])
      {
        goto LABEL_142;
      }

      OUTLINED_FUNCTION_34();
      v12 = [v0 isCloudLibraryEnabled];
LABEL_45:
      v48 = v12;

      *(v1 + 24) = &type metadata for Bool;
      *(v1 + 32) = &protocol witness table for Bool;
      *v1 = v48;
      goto LABEL_132;
    case 0x12:
      type metadata accessor for ControlCenterServicesProxy();
      *(v2 + 192) = static ControlCenterServicesProxy.shared.getter();
      v62 = *(&async function pointer to dispatch thunk of ControlCenterServicesProxy.isMusicRecognitionEnabled() + 1);
      v138 = (&async function pointer to dispatch thunk of ControlCenterServicesProxy.isMusicRecognitionEnabled() + async function pointer to dispatch thunk of ControlCenterServicesProxy.isMusicRecognitionEnabled());
      v63 = swift_task_alloc();
      *(v2 + 200) = v63;
      *v63 = v2;
      v63[1] = static MusicUIEngagementExtension.fetchProperty(_:featureName:);

      return v138();
    case 0x13:
      if (one-time initialization token for userDefaults != -1)
      {
        OUTLINED_FUNCTION_1();
      }

      if (!static MusicUIEngagementExtension.userDefaults)
      {
        goto LABEL_83;
      }

      v29 = *(v2 + 120);
      v28 = *(v2 + 128);
      v30 = *(v2 + 112);
      v31 = *(v2 + 96);
      v32 = &enum case for DefaultsKeys.Engagement.isSocialOnboarded(_:);
      goto LABEL_74;
    case 0x14:
      if (one-time initialization token for userDefaults != -1)
      {
        OUTLINED_FUNCTION_1();
      }

      if (static MusicUIEngagementExtension.userDefaults)
      {
        v29 = *(v2 + 120);
        v28 = *(v2 + 128);
        v30 = *(v2 + 112);
        v31 = *(v2 + 96);
        v32 = &enum case for DefaultsKeys.Engagement.isSocialOnboardingAllowed(_:);
LABEL_74:
        v78 = *v32;
        v79 = OUTLINED_FUNCTION_37(v29);
        v80(v79);
        v81 = NSUserDefaults.BOOL(forKey:)();
        (*(v29 + 8))(v28, v30);
        *(v31 + 24) = &type metadata for Bool;
        *(v31 + 32) = &protocol witness table for Bool;
        if (v81 != 2)
        {
          **(v2 + 96) = v81 & 1;
          goto LABEL_132;
        }
      }

      else
      {
LABEL_83:
        v93 = *(v2 + 96);
        *(v93 + 24) = &type metadata for Bool;
        *(v93 + 32) = &protocol witness table for Bool;
      }

      **(v2 + 96) = 0;
      goto LABEL_132;
    case 0x15:
      if (one-time initialization token for mobileiPodDefaults != -1)
      {
        OUTLINED_FUNCTION_2_0();
      }

      if (!static MusicUIEngagementExtension.mobileiPodDefaults)
      {
        goto LABEL_69;
      }

      v37 = *(v2 + 144);
      v36 = *(v2 + 152);
      v38 = *(v2 + 136);
      v39 = *(v2 + 96);
      v40 = OUTLINED_FUNCTION_20_0();
      v41(v40);
      DefaultsKeys.LegacyDefaultsKeys.rawValue.getter();
      v42 = OUTLINED_FUNCTION_9_0();
      v43(v42);
      OUTLINED_FUNCTION_32();
      v44 = String._bridgeToObjectiveC()();

      v45 = OUTLINED_FUNCTION_68();
      v47 = [v45 v46];

      *(v39 + 24) = &type metadata for Bool;
      *(v39 + 32) = &protocol witness table for Bool;
      *v39 = v47 ^ 1;
      goto LABEL_132;
    case 0x16:
      if (one-time initialization token for userDefaults != -1)
      {
        OUTLINED_FUNCTION_1();
      }

      if (!static MusicUIEngagementExtension.userDefaults)
      {
        goto LABEL_69;
      }

      v68 = *(v2 + 120);
      v67 = *(v2 + 128);
      v69 = *(v2 + 112);
      v70 = &enum case for DefaultsKeys.Engagement.lastNLSQueryDate(_:);
LABEL_68:
      v71 = *v70;
      v72 = OUTLINED_FUNCTION_37(v68);
      v73(v72);
      v74 = NSUserDefaults.integer(forKey:)();
      v76 = v75;
      (*(v68 + 8))(v67, v69);
      if (v76)
      {
        goto LABEL_69;
      }

      v114 = *(v2 + 96);
      v114[3] = &type metadata for Int;
      v114[4] = &protocol witness table for Int;
      *v114 = v74;
      goto LABEL_132;
    case 0x17:
      v82 = *(v2 + 96);
      v83 = *(v2 + 104);
      v82[3] = type metadata accessor for UnifiedMessages.MLI.State();
      v82[4] = lazy protocol witness table accessor for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v82);
      static MusicUIEngagementExtension.mliState.getter(boxed_opaque_existential_1);
      goto LABEL_132;
    case 0x18:
      if (one-time initialization token for userDefaults != -1)
      {
        OUTLINED_FUNCTION_1();
      }

      if (!static MusicUIEngagementExtension.userDefaults)
      {
        goto LABEL_69;
      }

      v18 = *(v2 + 120);
      v17 = *(v2 + 128);
      v19 = *(v2 + 112);
      (*(v18 + 104))(v17, enum case for DefaultsKeys.Engagement.socialProfileFetchState(_:), v19);
      v20 = NSUserDefaults.string(forKey:)();
      v22 = v21;
      (*(v18 + 8))(v17, v19);
      if (!v22)
      {
        goto LABEL_69;
      }

      v23 = *(v2 + 96);
      v23[3] = &type metadata for String;
      v23[4] = &protocol witness table for String;
      *v23 = v20;
      v23[1] = v22;
      goto LABEL_132;
    default:
      if (one-time initialization token for userDefaults != -1)
      {
        OUTLINED_FUNCTION_1();
      }

      v3 = static MusicUIEngagementExtension.userDefaults;
      if (static MusicUIEngagementExtension.userDefaults)
      {
        v4 = *(v2 + 96);
        Property.rawValue.getter(*(v2 + 208));
        v5 = String._bridgeToObjectiveC()();

        v6 = [v3 integerForKey:v5];

        v4[3] = &type metadata for Int;
        v4[4] = &protocol witness table for Int;
        *v4 = v6;
      }

      else
      {
LABEL_69:
        v77 = *(v2 + 96);
        *(v77 + 32) = 0;
        *v77 = 0u;
        *(v77 + 16) = 0u;
      }

      goto LABEL_132;
  }
}

{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_17_0();
  *v2 = v1;
  v4 = *(v3 + 168);
  *v2 = *v0;
  *(v1 + 210) = v5;

  v6 = OUTLINED_FUNCTION_36();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 160);
  v2 = [v1 transitionStyleForUserWithCatalogPlaybackCapability:*(v0 + 210)];

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_1();
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_22_0(v3, static MusicUIEngagementExtension.logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_16_0(v5))
  {
    v6 = OUTLINED_FUNCTION_28();
    *v6 = 134349056;
    *(v6 + 4) = v2;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_5_0();
  }

  v12 = *(v0 + 96);

  v13 = 0x64656C6261736964;
  if (v2 == 1)
  {
    v13 = 0x64656C62616E65;
  }

  OUTLINED_FUNCTION_74(v13);

  OUTLINED_FUNCTION_11_0();

  return v14();
}

{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_17_0();
  *v2 = v1;
  v4 = *(v3 + 184);
  *v2 = *v0;
  *(v1 + 211) = v5;

  v6 = OUTLINED_FUNCTION_36();

  return _swift_task_switch(v6, v7, v8);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 176);
  v2 = *(v0 + 96);
  v3 = [v1 areTransitionsEnabledForUserWithCatalogPlaybackCapability:*(v0 + 211)];

  v4 = 0x64656C6261736964;
  if (v3)
  {
    v4 = 0x64656C62616E65;
  }

  OUTLINED_FUNCTION_74(v4);

  OUTLINED_FUNCTION_11_0();

  return v5();
}

{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_17_0();
  *v2 = v1;
  v4 = *(v3 + 200);
  v5 = *(v3 + 192);
  v6 = *v0;
  OUTLINED_FUNCTION_6_0();
  *v7 = v6;
  *(v9 + 212) = v8;

  v10 = OUTLINED_FUNCTION_36();

  return _swift_task_switch(v10, v11, v12);
}

{
  OUTLINED_FUNCTION_18_0();
  v1 = *(v0 + 212);
  v2 = *(v0 + 96);
  *(v2 + 24) = &type metadata for Bool;
  *(v2 + 32) = &protocol witness table for Bool;
  *v2 = v1;
  v3 = *(v0 + 152);
  v4 = *(v0 + 128);

  OUTLINED_FUNCTION_11_0();

  return v5();
}

uint64_t NSUserDefaults.integer(forKey:)()
{
  DefaultsKeys.Engagement.rawValue.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(v7, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

uint64_t NSUserDefaults.BOOL(forKey:)()
{
  DefaultsKeys.Engagement.rawValue.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    outlined destroy of Any?(v7, &_sypSgMd, &_sypSgMR);
    return 2;
  }
}

uint64_t static MusicUIEngagementExtension.mliState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7MusicUI15UnifiedMessagesO3MLIO5StateOSgMd, &_s7MusicUI15UnifiedMessagesO3MLIO5StateOSgMR);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v18 - v4;
  v6 = static UnifiedMessages.defaultsSuiteName.getter();
  v8 = v7;
  v9 = objc_allocWithZone(NSUserDefaults);
  v10 = @nonobjc NSUserDefaults.init(suiteName:)(v6, v8);
  if (v10)
  {
    v11 = v10;
    static UnifiedMessages.MLI.userDefaultsKey.getter();
    v12 = String._bridgeToObjectiveC()();

    v13 = [v11 stringForKey:v12];

    if (v13)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      UnifiedMessages.MLI.State.init(rawValue:)();
      v14 = type metadata accessor for UnifiedMessages.MLI.State();
      if (__swift_getEnumTagSinglePayload(v5, 1, v14) != 1)
      {
        return (*(*(v14 - 8) + 32))(a1, v5, v14);
      }

      outlined destroy of Any?(v5, &_s7MusicUI15UnifiedMessagesO3MLIO5StateOSgMd, &_s7MusicUI15UnifiedMessagesO3MLIO5StateOSgMR);
    }

    else
    {
    }
  }

  v15 = enum case for UnifiedMessages.MLI.State.unknown(_:);
  v16 = type metadata accessor for UnifiedMessages.MLI.State();
  return (*(*(v16 - 8) + 104))(a1, v15, v16);
}

uint64_t NSUserDefaults.string(forKey:)()
{
  DefaultsKeys.Engagement.rawValue.getter();
  v1 = String._bridgeToObjectiveC()();

  v2 = [v0 objectForKey:v1];

  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(v7, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

id MusicUIEngagementExtension.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id MusicUIEngagementExtension.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000D180()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id @nonobjc NSUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError()
{
  result = lazy protocol witness table cache variable for type ExtensionError and conformance ExtensionError;
  if (!lazy protocol witness table cache variable for type ExtensionError and conformance ExtensionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionError and conformance ExtensionError);
  }

  return result;
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v7(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_26_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_6_0();
  *v4 = v3;

  OUTLINED_FUNCTION_11_0();

  return v5();
}

uint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v4 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  result = v4;
  v3 = *(v4 + 2) - 1;
  return result;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  v7 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v8 = v4 + v2;
    }

    else
    {
      v8 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v8, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v9 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v9 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v10 = *(v3 + 16);
  v11 = __OFADD__(v10, v2);
  v12 = v10 + v2;
  if (!v11)
  {
    *(v3 + 16) = v12;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v6);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Property.rawValue.getter(a1);
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEE0064656C62616ELL;
      v8 = 0x4565727574616566;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD00000000000001FLL;
          v7 = 0x8000000100011420;
          break;
        case 2:
          v8 = 0xD000000000000019;
          v7 = 0x8000000100011440;
          break;
        case 3:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100011460;
          break;
        case 4:
          v8 = 0xD000000000000022;
          v7 = 0x8000000100011480;
          break;
        case 5:
          break;
        case 6:
          v7 = 0xEE0064656761676ELL;
          v8 = 0x4565727574616566;
          break;
        case 7:
          v8 = 0xD000000000000012;
          v7 = 0x80000001000114D0;
          break;
        case 8:
          v8 = 0xD000000000000016;
          v7 = 0x80000001000114F0;
          break;
        case 9:
          v8 = 0xD00000000000001CLL;
          v7 = 0x8000000100011510;
          break;
        case 0xA:
          v8 = 0xD000000000000018;
          v7 = 0x8000000100011530;
          break;
        case 0xB:
          v8 = 0xD00000000000001BLL;
          v7 = 0x8000000100011550;
          break;
        case 0xC:
          v8 = 0xD00000000000001FLL;
          v7 = 0x8000000100011570;
          break;
        case 0xD:
          v8 = 0xD00000000000001CLL;
          v7 = 0x8000000100011590;
          break;
        case 0xE:
          v8 = 0xD000000000000019;
          v7 = 0x80000001000115B0;
          break;
        case 0xF:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001000115D0;
          break;
        case 0x10:
          v8 = 0xD000000000000017;
          v7 = 0x80000001000115F0;
          break;
        case 0x11:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100011610;
          break;
        case 0x12:
          v8 = 0xD000000000000019;
          v7 = 0x8000000100011630;
          break;
        case 0x13:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100011650;
          break;
        case 0x14:
          v8 = 0xD000000000000019;
          v7 = 0x8000000100011670;
          break;
        case 0x15:
          v8 = 0xD00000000000001CLL;
          v7 = 0x8000000100011690;
          break;
        case 0x16:
          v8 = 0xD000000000000010;
          v7 = 0x80000001000116B0;
          break;
        case 0x17:
          v7 = 0xE800000000000000;
          v8 = 0x6574617453696C6DLL;
          break;
        case 0x18:
          v8 = 0xD000000000000017;
          v7 = 0x80000001000116D0;
          break;
        default:
          v8 = 0xD000000000000020;
          v7 = 0x80000001000113F0;
          break;
      }

      v9 = 0x4565727574616566;
      v10 = 0xEE0064656C62616ELL;
      switch(a1)
      {
        case 1:
          v9 = 0xD00000000000001FLL;
          v10 = 0x8000000100011420;
          break;
        case 2:
          v9 = 0xD000000000000019;
          v10 = 0x8000000100011440;
          break;
        case 3:
          v9 = 0xD000000000000015;
          v10 = 0x8000000100011460;
          break;
        case 4:
          v9 = 0xD000000000000022;
          v10 = 0x8000000100011480;
          break;
        case 5:
          break;
        case 6:
          v10 = 0xEE0064656761676ELL;
          v9 = 0x4565727574616566;
          break;
        case 7:
          v9 = 0xD000000000000012;
          v10 = 0x80000001000114D0;
          break;
        case 8:
          v9 = 0xD000000000000016;
          v10 = 0x80000001000114F0;
          break;
        case 9:
          v9 = 0xD00000000000001CLL;
          v10 = 0x8000000100011510;
          break;
        case 10:
          v9 = 0xD000000000000018;
          v10 = 0x8000000100011530;
          break;
        case 11:
          v9 = 0xD00000000000001BLL;
          v10 = 0x8000000100011550;
          break;
        case 12:
          v9 = 0xD00000000000001FLL;
          v10 = 0x8000000100011570;
          break;
        case 13:
          v9 = 0xD00000000000001CLL;
          v10 = 0x8000000100011590;
          break;
        case 14:
          v9 = 0xD000000000000019;
          v10 = 0x80000001000115B0;
          break;
        case 15:
          v9 = 0xD00000000000001BLL;
          v10 = 0x80000001000115D0;
          break;
        case 16:
          v9 = 0xD000000000000017;
          v10 = 0x80000001000115F0;
          break;
        case 17:
          v9 = 0xD000000000000015;
          v10 = 0x8000000100011610;
          break;
        case 18:
          v9 = 0xD000000000000019;
          v10 = 0x8000000100011630;
          break;
        case 19:
          v9 = 0xD000000000000011;
          v10 = 0x8000000100011650;
          break;
        case 20:
          v9 = 0xD000000000000019;
          v10 = 0x8000000100011670;
          break;
        case 21:
          v9 = 0xD00000000000001CLL;
          v10 = 0x8000000100011690;
          break;
        case 22:
          v9 = 0xD000000000000010;
          v10 = 0x80000001000116B0;
          break;
        case 23:
          v10 = 0xE800000000000000;
          v9 = 0x6574617453696C6DLL;
          break;
        case 24:
          v9 = 0xD000000000000017;
          v10 = 0x80000001000116D0;
          break;
        default:
          v9 = 0xD000000000000020;
          v10 = 0x80000001000113F0;
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
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

uint64_t outlined bridged method (ob) of @objc ICUserIdentity.accountDSID.getter(void *a1)
{
  v2 = [a1 accountDSID];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000E440()
{
  v1 = v0[2];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  v2 = v0[10];

  return _swift_deallocObject(v0, 96, 7);
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t partial apply for closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_41(v9);
  *v10 = v11;
  v10[1] = partial apply for closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:);

  return closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:)(a1, v3, v4, (v1 + 4), v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:)()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_26_0();
  v2 = *(v1 + 16);
  v3 = *v0;
  OUTLINED_FUNCTION_6_0();
  *v4 = v3;

  OUTLINED_FUNCTION_11_0();

  return v5();
}

unint64_t lazy protocol witness table accessor for type ODJResponse and conformance ODJResponse()
{
  result = lazy protocol witness table cache variable for type ODJResponse and conformance ODJResponse;
  if (!lazy protocol witness table cache variable for type ODJResponse and conformance ODJResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse and conformance ODJResponse);
  }

  return result;
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

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  OUTLINED_FUNCTION_48();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_25_0(v4);

  return v7(v6);
}

uint64_t sub_10000E7B0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_14()
{
  OUTLINED_FUNCTION_48();
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_41(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_25_0(v4);

  return v7(v6);
}

unint64_t lazy protocol witness table accessor for type ODJRequest and conformance ODJRequest()
{
  result = lazy protocol witness table cache variable for type ODJRequest and conformance ODJRequest;
  if (!lazy protocol witness table cache variable for type ODJRequest and conformance ODJRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequest and conformance ODJRequest);
  }

  return result;
}

uint64_t outlined consume of ODJResponse.JSONPayloadError?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined assign with take of Encodable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State()
{
  result = lazy protocol witness table cache variable for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State;
  if (!lazy protocol witness table cache variable for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State)
  {
    type metadata accessor for UnifiedMessages.MLI.State();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State);
  }

  return result;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
}

unint64_t type metadata accessor for ICStoreRequestContext()
{
  result = lazy cache variable for type metadata for ICStoreRequestContext;
  if (!lazy cache variable for type metadata for ICStoreRequestContext)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ICStoreRequestContext);
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8) + 16);
  v6 = OUTLINED_FUNCTION_69();
  v7(v6);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_0()
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_0()
{
}

uint64_t OUTLINED_FUNCTION_8()
{
  __swift_destroy_boxed_opaque_existential_1(v0);
}

void OUTLINED_FUNCTION_10_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_11_0()
{
  result = v0 + 8;
  v2 = *(v0 + 8);
  return result;
}

uint64_t OUTLINED_FUNCTION_12_0()
{
}

uint64_t OUTLINED_FUNCTION_13_0(uint64_t result)
{
  *(result + 8) = static MusicUIEngagementExtension.parseRequest(request:completion:);
  v2 = *(v1 + 248);
  return result;
}

uint64_t OUTLINED_FUNCTION_14_0()
{
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_16_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_19_0(float a1)
{
  *v1 = a1;

  _StringGuts.grow(_:)(37);
}

uint64_t OUTLINED_FUNCTION_23_0()
{
}

BOOL OUTLINED_FUNCTION_24_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_25_0(uint64_t a1)
{
  *(a1 + 8) = v1;
  v4 = v3 + *v3;
  return v2;
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

BOOL OUTLINED_FUNCTION_31(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_33()
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_38(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

BOOL OUTLINED_FUNCTION_40(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_42@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, (a1 - 32) | 0x8000000000000000, va);
}

double OUTLINED_FUNCTION_45@<D0>(uint64_t a1@<X8>)
{
  *a1 = v1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

double OUTLINED_FUNCTION_46()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  return result;
}

double OUTLINED_FUNCTION_47()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_51()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v15 = a13;
  v16 = a14;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &a12);
}

void OUTLINED_FUNCTION_53(float a1)
{
  *v1 = a1;

  _StringGuts.grow(_:)(37);
}

uint64_t OUTLINED_FUNCTION_54()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_57()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_58()
{
}

uint64_t OUTLINED_FUNCTION_61(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  return v2;
}

uint64_t OUTLINED_FUNCTION_64(__n128 a1, uint64_t a2, __n128 *a3)
{
  *a3 = a1;
  result = v3 - 144;
  v5 = *(v3 - 232);
  return result;
}

uint64_t OUTLINED_FUNCTION_74@<X0>(uint64_t a1@<X8>)
{
  v4[3] = v2;
  v4[4] = v3;
  *v4 = a1;
  v4[1] = v1;
  v7 = *(v5 + 152);
  v8 = *(v5 + 128);
}

void OUTLINED_FUNCTION_75(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_76(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}