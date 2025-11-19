uint64_t getEnumTagSinglePayload for os_unfair_lock_s(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for os_unfair_lock_s(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

unint64_t one-time initialization function for active()
{
  result = dyld_get_active_platform();
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result = specialized Platform.init(integerLiteral:)(result);
    static Platform.active = result;
  }

  return result;
}

uint64_t one-time initialization function for available()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19ExtensionFoundation8PlatformOGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation8PlatformOGMR);
  result = swift_allocObject();
  *(result + 16) = xmmword_1848BA260;
  if (one-time initialization token for active != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  *(result + 32) = static Platform.active;
  static Platform.available = result;
  return result;
}

uint64_t specialized RawRepresentable<>.hash(into:)()
{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Platform@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Platform.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance Platform(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x534F63616DLL;
  v5 = 0xE800000000000000;
  v6 = 0x534F6E6F69736976;
  v7 = 0xE700000000000000;
  if (v2 != 6)
  {
    v6 = 0x6E776F6E6B6E75;
    v5 = 0xE700000000000000;
  }

  v8 = 0x534F6863746177;
  if (v2 != 4)
  {
    v8 = 1397715576;
    v7 = 0xE400000000000000;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE300000000000000;
  v10 = 5459817;
  if (v2 != 2)
  {
    v10 = 1397716596;
    v9 = 0xE400000000000000;
  }

  if (*v1)
  {
    v4 = 0x6C6174614363616DLL;
    v3 = 0xEB00000000747379;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t protocol witness for ExpressibleByIntegerLiteral.init(integerLiteral:) in conformance Platform@<X0>(unsigned int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Platform.init(integerLiteral:)(*a1);
  *a2 = result;
  return result;
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance LSExtensionPointType@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance _EXQueryResultType@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance LSPersistentIdentifier(uint64_t a1, id *a2)
{
  result = static Data._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance LSPersistentIdentifier(uint64_t a1, id *a2)
{
  v3 = static Data._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance LSPersistentIdentifier@<X0>(Class *a1@<X8>)
{
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  result = outlined consume of Data._Representation(v2, v4);
  *a1 = isa;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance _EXSceneRole(uint64_t a1, id *a2)
{
  result = static String._forceBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance _EXSceneRole(uint64_t a1, id *a2)
{
  v3 = static String._conditionallyBridgeFromObjectiveC(_:result:)();
  *a2 = 0;
  return v3 & 1;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance _EXSceneRole@<X0>(uint64_t *a1@<X8>)
{
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x1865F36D0](v2);

  *a1 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance LSPersistentIdentifier@<X0>(uint64_t *a1@<X0>, Class *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  isa = Data._bridgeToObjectiveC()().super.isa;
  result = outlined consume of Data._Representation(v3, v4);
  *a2 = isa;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance LSPersistentIdentifier@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance LSPersistentIdentifier(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _EXSceneRole and conformance _EXSceneRole(&lazy protocol witness table cache variable for type LSPersistentIdentifier and conformance LSPersistentIdentifier, type metadata accessor for LSPersistentIdentifier);
  v3 = lazy protocol witness table accessor for type _EXSceneRole and conformance _EXSceneRole(&lazy protocol witness table cache variable for type LSPersistentIdentifier and conformance LSPersistentIdentifier, type metadata accessor for LSPersistentIdentifier);
  v4 = lazy protocol witness table accessor for type Data and conformance Data();

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
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

uint64_t protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance LSPersistentIdentifier(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = *v3;
  v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = a3();
  outlined consume of Data._Representation(v6, v8);
  return v9;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance LSPersistentIdentifier()
{
  v1 = *v0;
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  Data.hash(into:)();

  return outlined consume of Data._Representation(v2, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance LSPersistentIdentifier()
{
  v1 = *v0;
  v2 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;
  Hasher.init(_seed:)();
  Data.hash(into:)();
  v5 = Hasher._finalize()();
  outlined consume of Data._Representation(v2, v4);
  return v5;
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance _EXSceneRole@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = MEMORY[0x1865F36D0](*a1, a1[1]);

  *a2 = v3;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance _EXSceneRole@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v5;
  return result;
}

uint64_t protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance _EXSceneRole(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type _EXSceneRole and conformance _EXSceneRole(&lazy protocol witness table cache variable for type _EXSceneRole and conformance _EXSceneRole, type metadata accessor for _EXSceneRole);
  v3 = lazy protocol witness table accessor for type _EXSceneRole and conformance _EXSceneRole(&lazy protocol witness table cache variable for type _EXSceneRole and conformance _EXSceneRole, type metadata accessor for _EXSceneRole);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance LSPersistentIdentifier(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;
  v10 = specialized static Data.== infix(_:_:)(v4, v6, v7, v8);
  outlined consume of Data._Representation(v7, v9);
  outlined consume of Data._Representation(v4, v6);
  return v10 & 1;
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance _EXSceneRole()
{
  v1 = *v0;
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = MEMORY[0x1865F3830](v2);

  return v3;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance _EXSceneRole()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _EXSceneRole()
{
  v1 = *v0;
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v2 = Hasher._finalize()();

  return v2;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance _EXSceneRole(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (v4 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v6 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t closure #1 in static Data.== infix(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x1E69E9840];
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
      result = MEMORY[0x1865F3250]();
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
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x1E69E9840];
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
  result = MEMORY[0x1865F3250]();
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
  v14[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
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
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  closure #1 in static Data.== infix(_:_:)(v14, a3, a4, &v13);
  v10 = v4;
  outlined consume of Data._Representation(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v10 & 1;
}

unint64_t specialized Platform.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Platform.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized Platform.init(integerLiteral:)(unint64_t result)
{
  if (result > 6)
  {
    goto LABEL_8;
  }

  if (result <= 2)
  {
    goto LABEL_14;
  }

  if (result == 3)
  {
    goto LABEL_21;
  }

  if (result != 4)
  {
    if (result != 6)
    {
      goto LABEL_25;
    }

    v1._countAndFlagsBits = 0x6C6174614363616DLL;
    v1._object = 0xEB00000000747379;
    result = specialized Platform.init(rawValue:)(v1);
    if (result != 8)
    {
      return result;
    }

    __break(1u);
LABEL_8:
    if (result > 10)
    {
LABEL_18:
      if ((result - 11) >= 2)
      {
        goto LABEL_25;
      }

      v4._countAndFlagsBits = 1397715576;
      v4._object = 0xE400000000000000;
      result = specialized Platform.init(rawValue:)(v4);
      if (result != 8)
      {
        return result;
      }

      __break(1u);
      goto LABEL_21;
    }

    if (result == 7)
    {
LABEL_16:
      v3._countAndFlagsBits = 5459817;
      v3._object = 0xE300000000000000;
      result = specialized Platform.init(rawValue:)(v3);
      if (result != 8)
      {
        return result;
      }

      __break(1u);
      goto LABEL_18;
    }

    if (result != 8)
    {
      if (result != 9)
      {
        goto LABEL_25;
      }

      goto LABEL_12;
    }

LABEL_21:
    v5._countAndFlagsBits = 1397716596;
    v5._object = 0xE400000000000000;
    result = specialized Platform.init(rawValue:)(v5);
    if (result != 8)
    {
      return result;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_12:
  v2._countAndFlagsBits = 0x534F6863746177;
  v2._object = 0xE700000000000000;
  result = specialized Platform.init(rawValue:)(v2);
  if (result != 8)
  {
    return result;
  }

  __break(1u);
LABEL_14:
  if (result != 1)
  {
    if (result != 2)
    {
      goto LABEL_25;
    }

    goto LABEL_16;
  }

LABEL_23:
  v6._countAndFlagsBits = 0x534F63616DLL;
  v6._object = 0xE500000000000000;
  result = specialized Platform.init(rawValue:)(v6);
  if (result != 8)
  {
    return result;
  }

  __break(1u);
LABEL_25:
  v7._countAndFlagsBits = 0x6E776F6E6B6E75;
  v7._object = 0xE700000000000000;
  result = specialized Platform.init(rawValue:)(v7);
  if (result == 8)
  {
    __break(1u);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Platform(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Platform(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Platform and conformance Platform()
{
  result = lazy protocol witness table cache variable for type Platform and conformance Platform;
  if (!lazy protocol witness table cache variable for type Platform and conformance Platform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Platform and conformance Platform);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type _EXSceneRole and conformance _EXSceneRole(unint64_t *a1, void (*a2)(uint64_t))
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

  MEMORY[0x1865F3250]();
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

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

id _EXExtensionProcessMannger.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXExtensionProcessMannger();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void _EXExtensionProcessMannger.processDidInvalidate(_:)(uint64_t a1)
{
  v2 = *(a1 + OBJC_IVAR____EXExtensionProcessHandle_launchConfiguration);
  v3 = *(v1 + OBJC_IVAR____EXExtensionProcessMannger_processExtensionMapLock);
  os_unfair_lock_lock(v3 + 4);
  v4 = *(v1 + OBJC_IVAR____EXExtensionProcessMannger_processExtensionMap);
  type metadata accessor for _EXLaunchConfiguration(0);
  if ([v2 isKindOfClass_])
  {
    [v4 removeObjectForKey_];

    os_unfair_lock_unlock(v3 + 4);
  }

  else
  {
    v5 = [objc_opt_self() _EX_parameterError];
    swift_willThrow();
    swift_unexpectedError();
    __break(1u);
  }
}

uint64_t outlined init with take of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static ExtensionMain.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t ExtensionMain.register(extensionType:factory:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = swift_allocObject();
  *(v8 + 16) = a2;
  *(v8 + 24) = a3;
  swift_beginAccess();

  v9 = *(v4 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *(v4 + 16);
  *(v4 + 16) = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(partial apply for closure #1 in ExtensionMain.register(extensionType:factory:), v8, v7, isUniquelyReferenced_nonNull_native);
  *(v4 + 16) = v12;
  return swift_endAccess();
}

uint64_t ExtensionMain.deinit()
{
  v1 = *(v0 + 16);

  return v0;
}

uint64_t ExtensionMain.__deallocating_deinit()
{
  v1 = *(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t partial apply for closure #1 in ExtensionMain.register(extensionType:factory:)@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v3();
  type metadata accessor for _EXRunningExtension();
  result = swift_dynamicCastClassUnconditional();
  *a1 = result;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV09ExtensionC07ServiceC8Observer33_BA93CBAF03EEA85977F926DB446085C4LLCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV09ExtensionC07ServiceC8Observer33_BA93CBAF03EEA85977F926DB446085C4LLCGMR);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v48 = v6;
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v10;
    v43 = v7;
    v46 = (v7 + 32);
    v20 = result + 64;
    v21 = v45;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 48);
      v47 = *(v43 + 72);
      v28 = v27 + v47 * v26;
      if (v44)
      {
        (*v46)(v21, v28, v48);
        v29 = *(*(v10 + 56) + 8 * v26);
      }

      else
      {
        (*v41)(v21, v28, v48);
        v29 = *(*(v10 + 56) + 8 * v26);
      }

      v30 = *(v13 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v21 = v45;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v21 = v45;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v46)(*(v13 + 48) + v47 * v22, v21, v48);
      *(*(v13 + 56) + 8 * v22) = v29;
      ++*(v13 + 16);
      v10 = v42;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v11 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV09ExtensionC016_EXServiceClientC8ObserverCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV09ExtensionC016_EXServiceClientC8ObserverCGMR);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v13 = result;
  if (*(v10 + 16))
  {
    v48 = v6;
    v40 = v3;
    v14 = 0;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v10;
    v43 = v7;
    v46 = (v7 + 32);
    v20 = result + 64;
    v21 = v45;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v26 = v23 | (v14 << 6);
      v27 = *(v10 + 48);
      v47 = *(v43 + 72);
      v28 = v27 + v47 * v26;
      if (v44)
      {
        (*v46)(v21, v28, v48);
        v29 = *(*(v10 + 56) + 8 * v26);
      }

      else
      {
        (*v41)(v21, v28, v48);
        v29 = *(*(v10 + 56) + 8 * v26);
      }

      v30 = *(v13 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v31 = -1 << *(v13 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v20 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        v21 = v45;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v20 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v20 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      v21 = v45;
LABEL_9:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v46)(*(v13 + 48) + v47 * v22, v21, v48);
      *(*(v13 + 56) + 8 * v22) = v29;
      ++*(v13 + 16);
      v10 = v42;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v38 = 1 << *(v10 + 32);
    v3 = v40;
    if (v38 >= 64)
    {
      bzero(v15, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v10 + 16) = 0;
  }

LABEL_36:
  *v3 = v13;
  return result;
}

{
  v3 = v2;
  v6 = type metadata accessor for _EXNSExtensionShim.Implementation.Request();
  v50 = *(v6 - 8);
  v7 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v55 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v15 = *(*v3 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo18_EXNSExtensionShimC09ExtensionC0E14ImplementationC7RequestVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo18_EXNSExtensionShimC09ExtensionC0E14ImplementationC7RequestVGMR);
  v51 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v17 = result;
  if (*(v14 + 16))
  {
    v54 = v13;
    v45 = v3;
    v18 = 0;
    v19 = (v14 + 64);
    v20 = 1 << *(v14 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v14 + 64);
    v23 = (v20 + 63) >> 6;
    v46 = (v10 + 16);
    v47 = v10;
    v52 = (v10 + 32);
    v24 = result + 64;
    v48 = v14;
    v49 = v9;
    while (v22)
    {
      v26 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v29 = v26 | (v18 << 6);
      v30 = *(v14 + 48);
      v53 = *(v10 + 72);
      v31 = v30 + v53 * v29;
      if (v51)
      {
        (*v52)(v54, v31, v9);
        v32 = *(v14 + 56);
        v33 = *(v50 + 72);
        outlined init with take of _EXNSExtensionShim.Implementation.Request(v32 + v33 * v29, v55);
      }

      else
      {
        (*v46)(v54, v31, v9);
        v34 = *(v14 + 56);
        v33 = *(v50 + 72);
        outlined init with copy of _EXNSExtensionShim.Implementation.Request(v34 + v33 * v29, v55);
      }

      v35 = *(v17 + 40);
      lazy protocol witness table accessor for type UUID and conformance UUID();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v36 = -1 << *(v17 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v24 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v24 + 8 * v38);
          if (v42 != -1)
          {
            v25 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v25 = __clz(__rbit64((-1 << v37) & ~*(v24 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      v9 = v49;
      (*v52)((*(v17 + 48) + v53 * v25), v54, v49);
      result = outlined init with take of _EXNSExtensionShim.Implementation.Request(v55, *(v17 + 56) + v33 * v25);
      ++*(v17 + 16);
      v10 = v47;
      v14 = v48;
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v18 >= v23)
      {
        break;
      }

      v28 = v19[v18];
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v22 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    if ((v51 & 1) == 0)
    {

      v3 = v45;
      goto LABEL_36;
    }

    v43 = 1 << *(v14 + 32);
    v3 = v45;
    if (v43 >= 64)
    {
      bzero(v19, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v43;
    }

    *(v14 + 16) = 0;
  }

LABEL_36:
  *v3 = v17;
  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, int a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 0x1010101);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
    v20 = *v5;
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3 & 0x1010101);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 40 * v11;

    return outlined assign with take of AppExtensionPoint.Monitor.ObserverController.Observer(a1, v23);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v11, a2, a3 & 0x1010101, a1, v22);
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v25 = *v4;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
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
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v25 = *v4;
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v27 & 1))
    {
      v15 = v26;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
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
  v23 = v22 + *(*(type metadata accessor for _EXNSExtensionShim.Implementation.Request() - 8) + 72) * v15;

  return outlined assign with take of _EXNSExtensionShim.Implementation.Request(a1, v23);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
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
      specialized _NativeDictionary.copy()();
      goto LABEL_7;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a3 & 1);
    v24 = *v4;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      specialized _NativeDictionary._insert(at:key:value:)(v15, v12, a1, v21);
      return;
    }

LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = v21[7];
  v23 = *(v22 + 8 * v15);
  *(v22 + 8 * v15) = a1;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, int a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = a5[6] + 16 * result;
  *v5 = a2;
  *(v5 + 8) = a3 & 1;
  *(v5 + 9) = BYTE1(a3) & 1;
  *(v5 + 10) = BYTE2(a3) & 1;
  *(v5 + 11) = HIBYTE(a3) & 1;
  v6 = a5[7] + 40 * result;
  v7 = *(a4 + 16);
  *v6 = *a4;
  *(v6 + 16) = v7;
  *(v6 + 32) = *(a4 + 32);
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for _EXNSExtensionShim.Implementation.Request();
  result = outlined init with take of _EXNSExtensionShim.Implementation.Request(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19ExtensionFoundation0C4TypeOAC010_EXRunningC0CycGMd, &_ss18_DictionaryStorageCy19ExtensionFoundation0C4TypeOAC010_EXRunningC0CycGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19ExtensionFoundation03AppC5PointV7MonitorC8IdentityVAG18ObserverControllerC0I033_5D985BB42A36A6D664ED77CA96129115LLVGMd, &_ss18_DictionaryStorageCy19ExtensionFoundation03AppC5PointV7MonitorC8IdentityVAG18ObserverControllerC0I033_5D985BB42A36A6D664ED77CA96129115LLVGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v19 = *(v2 + 48) + 16 * v17;
        v20 = *v19;
        v21 = *(v19 + 8);
        v22 = *(v19 + 9);
        v23 = *(v19 + 10);
        LOBYTE(v19) = *(v19 + 11);
        v17 *= 40;
        v24 = *(v2 + 56) + v17;
        v25 = *v24;
        v26 = *(v24 + 8);
        v27 = *(v24 + 32);
        v28 = *(v4 + 48) + v18;
        v29 = *(v24 + 16);
        *v28 = v20;
        *(v28 + 8) = v21;
        *(v28 + 9) = v22;
        *(v28 + 10) = v23;
        *(v28 + 11) = v19;
        v30 = *(v4 + 56) + v17;
        *v30 = v25;
        *(v30 + 8) = v26;
        *(v30 + 16) = v29;
        *(v30 + 32) = v27;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19ExtensionFoundation8_EXQueryCAC14_EXActiveQueryCGMd, &_ss18_DictionaryStorageCy19ExtensionFoundation8_EXQueryCAC14_EXActiveQueryCGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v34 = type metadata accessor for UUID();
  v36 = *(v34 - 8);
  v2 = *(v36 + 64);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV09ExtensionC07ServiceC8Observer33_BA93CBAF03EEA85977F926DB446085C4LLCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV09ExtensionC07ServiceC8Observer33_BA93CBAF03EEA85977F926DB446085C4LLCGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v35 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v31 = v36 + 32;
    v32 = v36 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v37 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v36;
        v21 = *(v36 + 72) * v19;
        v23 = v33;
        v22 = v34;
        (*(v36 + 16))(v33, *(v4 + 48) + v21, v34);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v4;
        v26 = v35;
        (*(v20 + 32))(*(v35 + 48) + v21, v23, v22);
        v27 = *(v26 + 56);
        v4 = v25;
        *(v27 + 8 * v19) = v24;

        v14 = v37;
      }

      while (v37);
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

        v1 = v29;
        v6 = v35;
        goto LABEL_18;
      }

      v18 = *(v30 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v37 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v32 = type metadata accessor for UUID();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  MEMORY[0x1EEE9AC00](v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV09ExtensionC016_EXServiceClientC8ObserverCGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV09ExtensionC016_EXServiceClientC8ObserverCGMR);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + 8 * v19);
        v25 = v33;
        (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + 8 * v19) = v24;
        result = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

{
  v1 = v0;
  v2 = type metadata accessor for _EXNSExtensionShim.Implementation.Request();
  v38 = *(v2 - 8);
  v3 = *(v38 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for UUID();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDVSo18_EXNSExtensionShimC09ExtensionC0E14ImplementationC7RequestVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDVSo18_EXNSExtensionShimC09ExtensionC0E14ImplementationC7RequestVGMR);
  v7 = *v0;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        outlined init with copy of _EXNSExtensionShim.Implementation.Request(*(v7 + 56) + v28, v37);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = outlined init with take of _EXNSExtensionShim.Implementation.Request(v27, *(v29 + 56) + v28);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
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

uint64_t outlined init with copy of _EXNSExtensionShim.Implementation.Request(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _EXNSExtensionShim.Implementation.Request();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of _EXNSExtensionShim.Implementation.Request(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _EXNSExtensionShim.Implementation.Request();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of _EXNSExtensionShim.Implementation.Request(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _EXNSExtensionShim.Implementation.Request();
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

Swift::Void __swiftcall NWApplicationID.encode(with:forKey:)(NSCoder with, Swift::String forKey)
{
  object = forKey._object;
  countAndFlagsBits = forKey._countAndFlagsBits;
  v5 = type metadata accessor for JSONEncoder();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  type metadata accessor for NWApplicationID();
  lazy protocol witness table accessor for type NWApplicationID and conformance NWApplicationID(&lazy protocol witness table cache variable for type NWApplicationID and conformance NWApplicationID);
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v10 = v9;

  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = MEMORY[0x1865F36D0](countAndFlagsBits, object);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v12];

  outlined consume of Data._Representation(v8, v10);
}

uint64_t (*implicit closure #1 in AppExtensionWrapper.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3))()
{
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  (*(v5 + 32))(v9 + v8, v7, a2);
  return partial apply for implicit closure #2 in implicit closure #1 in AppExtensionWrapper.init<A>(_:);
}

uint64_t implicit closure #2 in implicit closure #1 in AppExtensionWrapper.init(handlerConfiguration:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a2 + 24);

  LOBYTE(a1) = v2(a1);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
  return a1 & 1;
}

uint64_t implicit closure #4 in implicit closure #3 in AppExtensionWrapper.init(handlerConfiguration:)(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (!*a2)
  {
    return dispatch thunk of XPCListener.IncomingSessionRequest.reject(reason:)();
  }

  v4 = *(a2 + 8);

  v3(a1);

  return outlined consume of (@escaping @callee_guaranteed () -> ())?(v3);
}

uint64_t implicit closure #6 in implicit closure #5 in AppExtensionWrapper.init(handlerConfiguration:)(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v3 = result;
    v4 = *(a2 + 40);

    v2(v3);

    return outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
  }

  return result;
}

id AppExtensionWrapper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppExtensionWrapper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = a4();
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

void *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v22[2] = *MEMORY[0x1E69E9840];
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      outlined consume of Data._Representation(v6, v5);
      v22[0] = v6;
      LOWORD(v22[1]) = v5;
      BYTE2(v22[1]) = BYTE2(v5);
      BYTE3(v22[1]) = BYTE3(v5);
      BYTE4(v22[1]) = BYTE4(v5);
      BYTE5(v22[1]) = BYTE5(v5);
      BYTE6(v22[1]) = BYTE6(v5);
      result = a1(&v20, v22, v22 + BYTE6(v5));
      if (!v2)
      {
        result = v20;
      }

      v9 = LODWORD(v22[1]) | ((WORD2(v22[1]) | (BYTE6(v22[1]) << 16)) << 32);
      *v3 = v22[0];
      v3[1] = v9;
      goto LABEL_22;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v6, v5);
    *v3 = xmmword_1848BAA20;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v12 = v6 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v12 < v6)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v6, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      v13 = type metadata accessor for __DataStorage();
      v14 = *(v13 + 48);
      v15 = *(v13 + 52);
      swift_allocObject();
      v16 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v11 = v16;
    }

    if (v12 >= v6)
    {

      v17 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v6, v6 >> 32, a1);

      v10 = v11 | 0x4000000000000000;
      if (!v2)
      {
        *v3 = v6;
        v3[1] = v10;
        result = v17;
        goto LABEL_22;
      }

      *v3 = v6;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v7 == 2)
  {

    outlined consume of Data._Representation(v6, v5);
    v20 = v6;
    v21 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_1848BAA20;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v20[2], v20[3], a1);
    v10 = v21 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v20;
      v3[1] = v10;
      goto LABEL_22;
    }

    *v3 = v20;
LABEL_21:
    v3[1] = v10;
    goto LABEL_22;
  }

  memset(v22, 0, 15);
  result = a1(&v20, v22, v22);
  if (!v2)
  {
    result = v20;
  }

LABEL_22:
  v18 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x1865F3250]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x1865F37F0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v10 = v3;
  v9 = 0;
  v8 = 0;
  if (__src && a2 != __src)
  {
    memcpy(&__dst, __src, v2);
    result = __dst;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  v3 = type metadata accessor for __DataStorage();
  v4 = *(v3 + 48);
  v5 = *(v3 + 52);
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

id specialized AppExtensionWrapper.init<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = implicit closure #1 in AppExtensionWrapper.init<A>(_:)(a1, a2, a3);
  v5 = &v3[OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__accept];
  *v5 = v4;
  v5[1] = v6;
  v7 = &v3[OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__acceptSession];
  *v7 = 0;
  *(v7 + 1) = 0;
  v8 = &v3[OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__handleConnection];
  *v8 = destructiveProjectEnumData for Platform;
  *(v8 + 1) = 0;
  v10.receiver = v3;
  v10.super_class = type metadata accessor for AppExtensionWrapper();
  return objc_msgSendSuper2(&v10, sel_init);
}

uint64_t objectdestroyTm()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  if (v0[4])
  {
    v2 = v0[5];
  }

  if (v0[6])
  {
    v3 = v0[7];
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t objectdestroy_12Tm()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t partial apply for implicit closure #2 in implicit closure #1 in AppExtensionWrapper.init<A>(_:)()
{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80);
  return (*(*(v0 + 24) + 8))() & 1;
}

{
  v1 = (*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80);
  return (*(*(v0 + 24) + 8))() & 1;
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

id _EXRunningExtension.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _EXRunningExtension.init()()
{
  *&v0[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension____lazy_storage___bsConnectionListenerDelegate] = 0;
  *&v0[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension_sessionListener] = 0;
  v1 = &v0[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__extensionIdentity];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  *&v0[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension] = 0;
  v2 = &v0[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__hostAuditToken];
  *v2 = 0u;
  *(v2 + 1) = 0u;
  v2[32] = 1;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for _EXRunningExtension();
  return objc_msgSendSuper2(&v4, sel_init);
}

id static _EXRunningExtension.entryPointFunction()()
{
  v0 = objc_opt_self();

  return [v0 _getEntryPointFunction];
}

uint64_t _EXRunningExtension._start(withArguments:count:)(uint64_t a1, uint64_t a2)
{
  v102 = 0;
  v100 = 0u;
  v101 = 0u;
  v4 = [objc_opt_self() currentProcess];
  v5 = [v4 hostProcess];

  if (v5)
  {
    [v5 auditToken];
    v89 = v98;
    v90 = v97;
  }

  else
  {
    v89 = 0u;
    v90 = 0u;
  }

  v6 = [objc_opt_self() bundleRecordForCurrentProcess];
  if (!v6)
  {
    goto LABEL_52;
  }

  v7 = v6;
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {

    goto LABEL_52;
  }

  v9 = v8;
  v87 = v7;
  outlined destroy of NSObject?(&v100, &_s19ExtensionFoundation03AppA8IdentityVSgMd, &_s19ExtensionFoundation03AppA8IdentityVSgMR);
  *&v100 = v9;
  *(&v101 + 1) = &type metadata for AppExtensionIdentity.RecordIdentity;
  v102 = &protocol witness table for AppExtensionIdentity.RecordIdentity;
  outlined init with copy of AppExtensionIdentity?(&v100, &v94);
  if (!*(&v95 + 1))
  {
    outlined destroy of NSObject?(&v94, &_s19ExtensionFoundation03AppA8IdentityVSgMd, &_s19ExtensionFoundation03AppA8IdentityVSgMR);
    goto LABEL_52;
  }

  v97 = v94;
  v98 = v95;
  v99 = v96;
  v10 = [objc_opt_self() _getEntryPointFunction];
  v11 = &unk_1ED4A6000;
  v12 = &unk_1E6E4E000;
  v88 = v5;
  if (!v10)
  {
    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    __swift_project_value_buffer(v34, static Logger.general);
    outlined init with copy of AppExtensionIdentity(&v97, &v94);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v93[0] = v38;
      *v37 = 136446210;
      v39 = *(&v95 + 1);
      v40 = v96;
      __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
      v41 = *(v40 + 64);
      v42 = v40;
      v11 = &unk_1ED4A6000;
      v43 = v41(v39, v42);
      v45 = v44;
      outlined destroy of AppExtensionIdentity(&v94);
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v93);

      *(v37 + 4) = v46;
      v47 = "SwiftUI: Unable to find entry point function for extension with bundle ID '%{public}s'.";
LABEL_23:
      _os_log_impl(&dword_1847D1000, v35, v36, v47, v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x1865F56C0](v38, -1, -1);
      MEMORY[0x1865F56C0](v37, -1, -1);

LABEL_25:
      v14 = 0;
      goto LABEL_26;
    }

LABEL_24:

    outlined destroy of AppExtensionIdentity(&v94);
    goto LABEL_25;
  }

  v13 = v10(a2, a1);
  v14 = *(v91 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension);
  if (!v14)
  {
    v48 = *(&v98 + 1);
    v49 = v99;
    __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
    if (((*(v49 + 504))(v48, v49) & 1) == 0)
    {
      goto LABEL_52;
    }

    if (one-time initialization token for general != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.general);
    outlined init with copy of AppExtensionIdentity(&v97, &v94);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v93[0] = v38;
      *v37 = 136446210;
      v51 = *(&v95 + 1);
      v52 = v96;
      __swift_project_boxed_opaque_existential_1(&v94, *(&v95 + 1));
      v53 = *(v52 + 64);
      v54 = v52;
      v11 = &unk_1ED4A6000;
      v55 = v53(v51, v54);
      v57 = v56;
      outlined destroy of AppExtensionIdentity(&v94);
      v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v93);

      *(v37 + 4) = v58;
      goto LABEL_23;
    }

    goto LABEL_24;
  }

  v15 = v13;
  outlined init with copy of AppExtensionIdentity(&v97, &v94);
  outlined init with copy of _InnerAppExtensionIdentity(&v94, v93);
  v16 = objc_allocWithZone(_EXExtensionIdentity);
  v17 = v14;
  v18 = [v16 init];
  outlined destroy of AppExtensionIdentity(&v94);
  outlined init with take of _InnerAppExtensionIdentity(v93, v92);
  v19 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  v20 = v18;
  outlined assign with take of AppExtensionIdentity?(v92, v18 + v19, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  swift_endAccess();

  [v17 setIdentity_];
  [v17 setHasSwiftEntryPoint_];
  if (one-time initialization token for general != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.general);
  v22 = v17;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *&v94 = v26;
    *v25 = 136446210;
    v27 = [v22 bundleIdentifier];
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v94);

    *(v25 + 4) = v31;
    v11 = &unk_1ED4A6000;
    _os_log_impl(&dword_1847D1000, v23, v24, "SwiftUI: Initialized extension with bundle ID '%{public}s'", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    v32 = v26;
    v12 = &unk_1E6E4E000;
    MEMORY[0x1865F56C0](v32, -1, -1);
    v33 = v25;
    v5 = v88;
    MEMORY[0x1865F56C0](v33, -1, -1);

    if (v15 != 1)
    {
      goto LABEL_46;
    }
  }

  else
  {

    if (v15 != 1)
    {
      goto LABEL_46;
    }
  }

LABEL_26:
  if (v11[266] != -1)
  {
    swift_once();
  }

  v59 = v11;
  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, static Logger.general);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_1847D1000, v61, v62, "Falling back to delegate class lookup.", v63, 2u);
    MEMORY[0x1865F56C0](v63, -1, -1);
  }

  v64 = *(&v98 + 1);
  v65 = v99;
  __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
  if (!(*(v65 + 536))(v64, v65))
  {
    goto LABEL_52;
  }

  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for _EXExtension, off_1E6E4D1F0);
  if (!swift_dynamicCastMetatype())
  {
    goto LABEL_52;
  }

  v66 = v60;
  v67 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];

  if (!v67)
  {
    while (1)
    {
      *&v94 = 0;
      *(&v94 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(44);

      *&v94 = 0xD00000000000002ALL;
      *(&v94 + 1) = 0x80000001848C2200;
      v84 = *(&v98 + 1);
      v85 = v99;
      __swift_project_boxed_opaque_existential_1(&v97, *(&v98 + 1));
      *&v93[0] = (*(v85 + 536))(v84, v85);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpSgMd, &_syXlXpSgMR);
      v86 = String.init<A>(describing:)();
      MEMORY[0x1865F37A0](v86);

LABEL_52:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  outlined init with copy of AppExtensionIdentity(&v97, &v94);
  outlined init with copy of _InnerAppExtensionIdentity(&v94, v93);
  v68 = objc_allocWithZone(_EXExtensionIdentity);
  v69 = v67;
  v70 = [v68 init];
  outlined destroy of AppExtensionIdentity(&v94);
  outlined init with take of _InnerAppExtensionIdentity(v93, v92);
  v71 = OBJC_IVAR____EXExtensionIdentity__inner;
  swift_beginAccess();
  v72 = v70;
  outlined assign with take of AppExtensionIdentity?(v92, v70 + v71, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMd, &_s19ExtensionFoundation09_InnerAppA8Identity_pSgMR);
  swift_endAccess();

  [v69 v12[501]];
  if ([v69 delegateClass])
  {
    v73 = [v69 loadDelegate];

    if (v73)
    {
      v15 = 0;
      v14 = v67;
      v5 = v88;
LABEL_46:
      outlined destroy of NSObject?(&v100, &_s19ExtensionFoundation03AppA8IdentityVSgMd, &_s19ExtensionFoundation03AppA8IdentityVSgMR);

      goto LABEL_47;
    }
  }

  else
  {
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1847D1000, v74, v75, "No value for 'EXAppExtensionDelegateClass' found, extension delegate is not specified", v76, 2u);
      MEMORY[0x1865F56C0](v76, -1, -1);
    }
  }

  v5 = v88;
  if (v59[266] != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v66, static Logger.general);
  v77 = Logger.logObject.getter();
  v78 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v77, v78))
  {
    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&dword_1847D1000, v77, v78, "No extension delegate specified, that's ok.", v79, 2u);
    MEMORY[0x1865F56C0](v79, -1, -1);
  }

  else
  {
  }

  outlined destroy of NSObject?(&v100, &_s19ExtensionFoundation03AppA8IdentityVSgMd, &_s19ExtensionFoundation03AppA8IdentityVSgMR);
  v15 = 0;
  v14 = v67;
LABEL_47:
  v80 = *(v91 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension);
  *(v91 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension) = v14;

  v94 = v97;
  v95 = v98;
  v96 = v99;
  v81 = OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__extensionIdentity;
  swift_beginAccess();
  outlined assign with take of AppExtensionIdentity?(&v94, v91 + v81, &_s19ExtensionFoundation03AppA8IdentityVSgMd, &_s19ExtensionFoundation03AppA8IdentityVSgMR);
  swift_endAccess();
  v82 = v91 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__hostAuditToken;
  *v82 = v90;
  *(v82 + 16) = v89;
  *(v82 + 32) = v5 == 0;
  return v15;
}

uint64_t outlined init with copy of AppExtensionIdentity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19ExtensionFoundation03AppA8IdentityVSgMd, &_s19ExtensionFoundation03AppA8IdentityVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

id _EXRunningExtension.bsConnectionListenerDelegate.getter()
{
  v1 = OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension____lazy_storage___bsConnectionListenerDelegate;
  v2 = *(v0 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension____lazy_storage___bsConnectionListenerDelegate);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension____lazy_storage___bsConnectionListenerDelegate);
  }

  else
  {
    v4 = type metadata accessor for ListenerDelegate();
    v5 = objc_allocWithZone(v4);
    swift_unknownObjectUnownedInit();
    v10.receiver = v5;
    v10.super_class = v4;
    v6 = objc_msgSendSuper2(&v10, sel_init);
    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

Swift::Void __swiftcall _EXRunningExtension.checkIn()()
{
  v0 = objc_opt_self();

  [v0 _checkIn];
}

Swift::Void __swiftcall _EXRunningExtension.resume()()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for XPCListener.InitializationOptions();
  v13 = *(*(v12 - 8) + 64);
  v14 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = MEMORY[0x1E69E7D40];
  v16 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0xA0))(v14);
  (*((*v15 & *v0) + 0xD8))(v16);
  v17 = *&v0[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension];
  if (!v17)
  {
    __break(1u);
  }

  v47 = v8;
  v48 = v3;
  v49 = v2;
  type metadata accessor for AppExtensionWrapper();
  v18 = swift_dynamicCastClass();
  if (v18)
  {
    v19 = *(v18 + OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__acceptSession);
    if (v19)
    {
      v46 = *(v18 + OBJC_IVAR____TtC19ExtensionFoundation19AppExtensionWrapper__acceptSession + 8);
      v20 = OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__extensionIdentity;
      swift_beginAccess();
      outlined init with copy of AppExtensionIdentity?(&v1[v20], &aBlock);
      v21 = v54;
      if (!v54)
      {
        __break(1u);
      }

      v22 = v55;
      v23 = __swift_project_boxed_opaque_existential_1(&aBlock, v21);
      v44 = v22 + 552;
      v24 = *(v22 + 69);
      v42 = v23;
      v43 = v24;
      v45 = v17;
      v25 = v46;
      outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(v19);
      v43(v21, v22);
      outlined destroy of AppExtensionIdentity(&aBlock);
      v26 = swift_allocObject();
      *(v26 + 16) = v19;
      *(v26 + 24) = v25;

      static XPCListener.InitializationOptions.none.getter();
      v27 = type metadata accessor for XPCListener();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = XPCListener.init(service:targetQueue:options:incomingSessionHandler:)();
      outlined consume of (@escaping @callee_guaranteed @Sendable (@guaranteed OS_xpc_object) -> (@unowned Bool))?(v19, v46);

      v31 = *&v1[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension_sessionListener];
      *&v1[OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension_sessionListener] = v30;
    }
  }

  v32 = swift_allocObject();
  swift_unknownObjectUnownedInit();
  v33 = swift_allocObject();
  *(v33 + 16) = partial apply for closure #2 in _EXRunningExtension.resume();
  *(v33 + 24) = v32;
  v55 = partial apply for thunk for @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v56 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v54 = &block_descriptor;
  v34 = _Block_copy(&aBlock);
  v35 = objc_opt_self();

  v36 = [v35 listenerWithConfigurator_];
  _Block_release(v34);

  LOBYTE(v34) = swift_isEscapingClosureAtFileLocation();

  if (v34)
  {
    __break(1u);
  }

  [v36 activate];
  type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x1E69E9610);
  v37 = static OS_dispatch_queue.main.getter();
  v38 = swift_allocObject();
  *(v38 + 16) = v1;
  v55 = partial apply for closure #3 in _EXRunningExtension.resume();
  v56 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v52 = 1107296256;
  v53 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v54 = &block_descriptor_9;
  v39 = _Block_copy(&aBlock);
  v40 = v1;
  static DispatchQoS.unspecified.getter();
  v50 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v41 = v49;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1865F3C00](0, v11, v6, v39);
  _Block_release(v39);

  (*(v48 + 8))(v6, v41);
  (*(v47 + 8))(v11, v7);

  [objc_opt_self() activateXPCService];
  __break(1u);
}

void closure #2 in _EXRunningExtension.resume()(void *a1)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v3 = _EXRunningExtension.bsConnectionListenerDelegate.getter();

  [a1 setDelegate_];
  v4 = MEMORY[0x1865F36D0](0x6976726553435058, 0xEA00000000006563);
  [a1 setDomain_];

  v5 = MEMORY[0x1865F36D0](0x767265536E69614DLL, 0xEB00000000656369);
  [a1 setService_];
}

id key path setter for _EXRunningExtension.appExtension : _EXRunningExtension(void **a1, void *a2)
{
  if (*(*a2 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    v3 = *a1;
    *(*a2 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension) = v3;

    return v3;
  }

  return result;
}

id _EXRunningExtension.appExtension.getter()
{
  result = *(v0 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension);
  if (result)
  {
    return result;
  }

  __break(1u);
  return result;
}

uint64_t _EXRunningExtension.appExtension.setter(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *(v1 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension) = result;
  }

  return result;
}

void *_EXRunningExtension.appExtension.modify(void *result)
{
  v2 = OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension;
  result[1] = v1;
  result[2] = v2;
  v3 = *(v1 + v2);
  if (v3)
  {
    *result = v3;
    v4 = v3;
    return _EXRunningExtension.appExtension.modify;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v2 = result[1];
  v1 = result[2];
  if (*(v2 + v1))
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *(v2 + v1) = *result;
  }

  return result;
}

uint64_t _EXRunningExtension.hostAuditToken.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__hostAuditToken);
  if (*(v0 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__hostAuditToken + 32))
  {
    __break(1u);
  }

  else
  {
    v2 = v1[2];
    v3 = v1[3];
    result = *v1;
    v5 = v1[1];
  }

  return result;
}

SEL *_EXRunningExtension.willFinishLaunching()(SEL *result)
{
  if (*(v1 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension))
  {
    return [*(v1 + OBJC_IVAR____TtC19ExtensionFoundation19_EXRunningExtension__appExtension) *result];
  }

  __break(1u);
  return result;
}

id _EXRunningExtension.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t partial apply for thunk for @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
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

uint64_t partial apply for closure #1 in _EXRunningExtension.resume()()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE500000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x534F6E6F69736976;
  v6 = 0xE700000000000000;
  if (a1 != 6)
  {
    v5 = 0x6E776F6E6B6E75;
    v4 = 0xE700000000000000;
  }

  v7 = 0x534F6863746177;
  if (a1 != 4)
  {
    v7 = 1397715576;
    v6 = 0xE400000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE300000000000000;
  v9 = 5459817;
  if (a1 != 2)
  {
    v9 = 1397716596;
    v8 = 0xE400000000000000;
  }

  v10 = 0x6C6174614363616DLL;
  if (a1)
  {
    v3 = 0xEB00000000747379;
  }

  else
  {
    v10 = 0x534F63616DLL;
  }

  if (a1 > 1u)
  {
    v3 = v8;
  }

  else
  {
    v9 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE800000000000000;
        if (v11 != 0x534F6E6F69736976)
        {
          goto LABEL_45;
        }
      }

      else
      {
        v13 = 0xE700000000000000;
        if (v11 != 0x6E776F6E6B6E75)
        {
LABEL_45:
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
          goto LABEL_46;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x534F6863746177)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      if (v11 != 1397715576)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE300000000000000;
      if (v11 != 5459817)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v13 = 0xE400000000000000;
      if (v11 != 1397716596)
      {
        goto LABEL_45;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEB00000000747379;
    if (v11 != 0x6C6174614363616DLL)
    {
      goto LABEL_45;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    if (v11 != 0x534F63616DLL)
    {
      goto LABEL_45;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_45;
  }

  v14 = 1;
LABEL_46:

  return v14 & 1;
}

uint64_t _EXAppExtensionPointEnumerator.ExtensionPoint.identifier.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtCE19ExtensionFoundationCSo30_EXAppExtensionPointEnumerator14ExtensionPoint_inner);
  v2 = *(v0 + OBJC_IVAR____TtCE19ExtensionFoundationCSo30_EXAppExtensionPointEnumerator14ExtensionPoint_inner + 8);

  return v1;
}

uint64_t _EXAppExtensionPointEnumerator.ExtensionPoint.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

id _EXAppExtensionPointEnumerator.ExtensionPoint.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _EXAppExtensionPointEnumerator.ExtensionPoint.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _EXAppExtensionPointEnumerator.ExtensionPoint();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void __swiftcall _EXAppExtensionPointEnumerator.init(bundleIdentifier:sdkDictionary:entitlements:)(_EXAppExtensionPointEnumerator *__return_ptr retstr, Swift::String bundleIdentifier, Swift::OpaquePointer sdkDictionary, Swift::OpaquePointer entitlements)
{
  object = bundleIdentifier._object;
  countAndFlagsBits = bundleIdentifier._countAndFlagsBits;
  v6 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v7 = MEMORY[0x1865F36D0](countAndFlagsBits, object);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = Dictionary._bridgeToObjectiveC()().super.isa;

  [v6 initWithBundleIdentifier:v7 sdkDictionary:isa entitlements:v9];
}

id _EXAppExtensionPointEnumerator.init(bundleIdentifier:sdkDictionary:entitlements:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = specialized _dictionaryDownCast<A, B, C, D>(_:)(a3);

  specialized AppExtensionPointEnumerator.init(bundleIdentifier:sdkDictionary:entitlements:)(a1, a2, v8, a4, &v18);
  v9 = &v4[OBJC_IVAR____EXAppExtensionPointEnumerator_inner];
  v10 = v18;
  v11 = v19;
  v12 = v20;
  v23 = *(&v19 + 1);
  v13 = v19;
  *v9 = v18;
  *(v9 + 1) = v13;
  *(v9 + 4) = v12;

  outlined init with copy of UUID?(&v23, v21, &_sSDySSypGMd, &_sSDySSypGMR);
  specialized AppExtensionPointEnumerator.Iterator.init(_:)(v10, *(&v10 + 1), v11, *(&v11 + 1), v12, v21);
  outlined destroy of NSObject?(&v23, &_sSDySSypGMd, &_sSDySSypGMR);
  v14 = &v4[OBJC_IVAR____EXAppExtensionPointEnumerator_iterator];
  v15 = v21[1];
  *v14 = v21[0];
  *(v14 + 1) = v15;
  *(v14 + 2) = v21[2];
  *(v14 + 6) = v22;
  v17.receiver = v4;
  v17.super_class = _EXAppExtensionPointEnumerator;
  return objc_msgSendSuper2(&v17, sel_init);
}

unint64_t specialized _dictionaryDownCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        outlined init with copy of AnyHashable(*(a1 + 48) + 40 * v15, v29);
        outlined init with copy of Any(*(a1 + 56) + 32 * v15, v30 + 8);
        v27[0] = v30[0];
        v27[1] = v30[1];
        v28 = v31;
        v26[2] = v29[0];
        v26[3] = v29[1];
        swift_dynamicCast();
        outlined init with take of Any((v27 + 8), v23);
        outlined init with take of Any(v23, v25);
        outlined init with take of Any(v25, v26);
        outlined init with take of Any(v26, &v24);
        result = specialized __RawDictionaryStorage.find<A>(_:)(v21, v22);
        if (v16)
        {
          v9 = (v2[6] + 16 * result);
          v10 = v9[1];
          *v9 = v21;
          v9[1] = v22;
          v11 = result;

          v12 = (v2[7] + 32 * v11);
          __swift_destroy_boxed_opaque_existential_0Tm(v12);
          result = outlined init with take of Any(&v24, v12);
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          v17 = (v2[6] + 16 * result);
          *v17 = v21;
          v17[1] = v22;
          result = outlined init with take of Any(&v24, (v2[7] + 32 * result));
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_21;
          }

          v2[2] = v20;
          v8 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v8;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

id _EXAppExtensionPointEnumerator.nextObject()@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  AppExtensionPointEnumerator.Iterator.next()(v2);
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  swift_endAccess();
  if (v6)
  {
    v11 = type metadata accessor for _EXAppExtensionPointEnumerator.ExtensionPoint();
    v12 = objc_allocWithZone(v11);
    v13 = &v12[OBJC_IVAR____TtCE19ExtensionFoundationCSo30_EXAppExtensionPointEnumerator14ExtensionPoint_inner];
    *v13 = v4;
    *(v13 + 1) = v6;
    *(v13 + 2) = v8;
    v13[24] = v10;
    v13[25] = HIBYTE(v10) & 1;
    v15.receiver = v12;
    v15.super_class = v11;
    result = objc_msgSendSuper2(&v15, sel_init);
  }

  else
  {
    result = 0;
    v11 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = result;
  a1[3] = v11;
  return result;
}

void __swiftcall AppExtensionPointEnumerator.Iterator.next()(ExtensionFoundation::AppExtensionPointEnumerator::ExtensionPoint_optional *__return_ptr retstr)
{
  v5 = *(v2 + 40);
  v4 = *(v2 + 48);
  v6 = *(v5 + 16);
  if (v4 == v6)
  {
    return;
  }

  v7 = v2;
  for (i = (v5 + 24 * v4 + 48); ; i += 24)
  {
    if (v4 >= v6)
    {
      __break(1u);
LABEL_28:
      swift_once();
      goto LABEL_23;
    }

    v9 = v4;
    v3 = *(i - 2);
    v1 = *(i - 1);
    ++v4;
    v10 = *i;
    swift_bridgeObjectRetain_n();
    v11._countAndFlagsBits = 5784927;
    v11._object = 0xE300000000000000;
    if (!String.hasPrefix(_:)(v11))
    {
      break;
    }

LABEL_4:

    v6 = *(v5 + 16);
    if (v4 == v6)
    {
      *(v7 + 48) = v4;
      return;
    }
  }

  key = v10;
  v12._countAndFlagsBits = 22597;
  v12._object = 0xE200000000000000;
  v13 = String.hasPrefix(_:)(v12);

  if (v13)
  {
    goto LABEL_4;
  }

  v15 = *v7;
  v14 = *(v7 + 8);
  v16 = *(v7 + 32);
  v36 = *v7;
  v37 = v14;
  v32 = *(v7 + 16);
  v38 = v32;
  v39 = v16;
  v40 = v5;
  v41 = v4;

  v42.identifier._countAndFlagsBits = v3;
  v42.identifier._object = v1;
  v42.platform = key;
  v17 = AppExtensionPointEnumerator.Iterator.normalizedAttributes(key:)(v42);

  if (!v17)
  {
    goto LABEL_4;
  }

  *(v7 + 48) = v9 + 1;
  v18 = specialized AppExtensionPointEnumerator.isThirdParty.getter(v15);
  v19 = v18;
  if (*(v17 + 16))
  {
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x80000001848C2620);
    v5 = v14;
    if ((v21 & 1) != 0 && (outlined init with copy of Any(*(v17 + 56) + 32 * v20, v35), swift_dynamicCast()))
    {
      v22 = v34;
      v23 = v32;
      if ((v19 & 1) == 0)
      {
        return;
      }
    }

    else
    {
      v22 = 0;
      v23 = v32;
      if ((v19 & 1) == 0)
      {
        return;
      }
    }
  }

  else
  {
    v22 = 0;
    v5 = v14;
    v23 = v32;
    if ((v18 & 1) == 0)
    {
      return;
    }
  }

  v35[0]._countAndFlagsBits = v5;
  v7 = v23;
  v35[0]._object = v23;

  MEMORY[0x1865F37A0](46, 0xE100000000000000);
  v24 = String.hasPrefix(_:)(v35[0]);

  if (v24)
  {
    if (v22)
    {
    }

    return;
  }

  if (one-time initialization token for general != -1)
  {
    goto LABEL_28;
  }

LABEL_23:
  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.general);

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v35[0]._countAndFlagsBits = v29;
    *v28 = 136315394;
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v3, v1, &v35[0]._countAndFlagsBits);

    *(v28 + 4) = v30;
    *(v28 + 12) = 2080;
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v35[0]._countAndFlagsBits);

    *(v28 + 14) = v31;
    swift_arrayDestroy();
    MEMORY[0x1865F56C0](v29, -1, -1);
    MEMORY[0x1865F56C0](v28, -1, -1);
  }

  else
  {
  }
}

void __swiftcall _EXAppExtensionPointEnumerator.init()(_EXAppExtensionPointEnumerator *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t specialized Collection<>.contains(platform:)(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = (a2 + 40);
  v4 = a1;
  while (1)
  {
    v6 = *(v3 - 1);
    v5 = *v3;
    swift_bridgeObjectRetain_n();
    v7._countAndFlagsBits = v6;
    v7._object = v5;
    v8 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Platform.init(rawValue:), v7);

    if (v8 > 3)
    {
      if (v8 > 5)
      {
        if (v8 == 6)
        {
          v10 = 0xE800000000000000;
          v9 = 0x534F6E6F69736976;
        }

        else
        {
          if (v8 != 7)
          {
LABEL_50:

            goto LABEL_48;
          }

          v10 = 0xE700000000000000;
          v9 = 0x6E776F6E6B6E75;
        }
      }

      else if (v8 == 4)
      {
        v10 = 0xE700000000000000;
        v9 = 0x534F6863746177;
      }

      else
      {
        v10 = 0xE400000000000000;
        v9 = 1397715576;
      }
    }

    else if (v8 > 1)
    {
      if (v8 == 2)
      {
        v10 = 0xE300000000000000;
        v9 = 5459817;
      }

      else
      {
        v9 = 1397716596;
        v10 = 0xE400000000000000;
      }
    }

    else if (v8)
    {
      if (v8 != 1)
      {
        goto LABEL_50;
      }

      v9 = 0x6C6174614363616DLL;
      v10 = 0xEB00000000747379;
    }

    else
    {
      v10 = 0xE500000000000000;
      v9 = 0x534F63616DLL;
    }

    v11 = 0x534F6E6F69736976;
    if (v4 != 6)
    {
      v11 = 0x6E776F6E6B6E75;
    }

    v12 = 0xE800000000000000;
    if (v4 != 6)
    {
      v12 = 0xE700000000000000;
    }

    v13 = 0x534F6863746177;
    if (v4 == 4)
    {
      v14 = 0xE700000000000000;
    }

    else
    {
      v13 = 1397715576;
      v14 = 0xE400000000000000;
    }

    if (v4 <= 5)
    {
      v11 = v13;
      v12 = v14;
    }

    v15 = 1397716596;
    if (v4 == 2)
    {
      v15 = 5459817;
    }

    v16 = 0xE300000000000000;
    if (v4 != 2)
    {
      v16 = 0xE400000000000000;
    }

    v17 = 0x6C6174614363616DLL;
    if (!v4)
    {
      v17 = 0x534F63616DLL;
    }

    v18 = 0xEB00000000747379;
    if (!v4)
    {
      v18 = 0xE500000000000000;
    }

    if (v4 <= 1)
    {
      v15 = v17;
      v16 = v18;
    }

    v19 = v4 <= 3 ? v15 : v11;
    v20 = v4 <= 3 ? v16 : v12;
    if (v9 == v19 && v10 == v20)
    {
      break;
    }

    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v21)
    {
      return 1;
    }

LABEL_48:
    v3 += 2;
    if (!--v2)
    {
      return 0;
    }
  }

  return 1;
}

_OWORD *Dictionary<>.firstOf(platform:)@<X0>(unsigned __int8 a1@<W0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  if (!v8)
  {
LABEL_4:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        *a3 = 0u;
        a3[1] = 0u;
        return result;
      }

      v8 = *(v5 + 8 * v12);
      ++v11;
      if (v8)
      {
        v11 = v12;
        goto LABEL_8;
      }
    }

    __break(1u);
    return result;
  }

  while (1)
  {
LABEL_8:
    v13 = __clz(__rbit64(v8)) | (v11 << 6);
    v14 = (*(a2 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(a2 + 56) + 32 * v13, v37);
    v36._countAndFlagsBits = v16;
    v36._object = v15;
    v33 = v36;
    v34 = v37[0];
    v35 = v37[1];
    v17 = v36;

    v18 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Platform.init(rawValue:), v17);

    if (v18 > 3)
    {
      if (v18 > 5)
      {
        if (v18 == 6)
        {
          v20 = 0xE800000000000000;
          v19 = 0x534F6E6F69736976;
        }

        else
        {
          if (v18 != 7)
          {
            goto LABEL_52;
          }

          v20 = 0xE700000000000000;
          v19 = 0x6E776F6E6B6E75;
        }
      }

      else if (v18 == 4)
      {
        v20 = 0xE700000000000000;
        v19 = 0x534F6863746177;
      }

      else
      {
        v20 = 0xE400000000000000;
        v19 = 1397715576;
      }
    }

    else if (v18 > 1)
    {
      if (v18 == 2)
      {
        v20 = 0xE300000000000000;
        v19 = 5459817;
      }

      else
      {
        v19 = 1397716596;
        v20 = 0xE400000000000000;
      }
    }

    else if (v18)
    {
      if (v18 != 1)
      {
        goto LABEL_52;
      }

      v19 = 0x6C6174614363616DLL;
      v20 = 0xEB00000000747379;
    }

    else
    {
      v20 = 0xE500000000000000;
      v19 = 0x534F63616DLL;
    }

    v21 = 0x534F6E6F69736976;
    if (a1 != 6)
    {
      v21 = 0x6E776F6E6B6E75;
    }

    v22 = 0xE800000000000000;
    v23 = 0xE700000000000000;
    if (a1 != 6)
    {
      v22 = 0xE700000000000000;
    }

    v24 = 0x534F6863746177;
    if (a1 != 4)
    {
      v24 = 1397715576;
      v23 = 0xE400000000000000;
    }

    if (a1 <= 5u)
    {
      v21 = v24;
      v22 = v23;
    }

    v25 = 1397716596;
    if (a1 == 2)
    {
      v25 = 5459817;
    }

    v26 = 0xE300000000000000;
    if (a1 != 2)
    {
      v26 = 0xE400000000000000;
    }

    v27 = 0x534F63616DLL;
    if (a1)
    {
      v27 = 0x6C6174614363616DLL;
    }

    v28 = 0xEB00000000747379;
    if (!a1)
    {
      v28 = 0xE500000000000000;
    }

    if (a1 <= 1u)
    {
      v25 = v27;
      v26 = v28;
    }

    if (a1 <= 3u)
    {
      v29 = v25;
    }

    else
    {
      v29 = v21;
    }

    if (a1 <= 3u)
    {
      v30 = v26;
    }

    else
    {
      v30 = v22;
    }

    if (v19 == v29 && v20 == v30)
    {

      goto LABEL_57;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v31)
    {
      break;
    }

LABEL_52:
    v8 &= v8 - 1;
    result = outlined destroy of NSObject?(&v33, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
    if (!v8)
    {
      goto LABEL_4;
    }
  }

LABEL_57:
  v37[2] = v33;
  v38[0] = v34;
  v38[1] = v35;

  return outlined init with take of Any(v38, a3);
}

Swift::OpaquePointer_optional __swiftcall AppExtensionPointEnumerator.Iterator.normalizedAttributes(key:)(Swift::tuple_identifier_String_platform_ExtensionFoundation_Platform key)
{
  platform = key.platform;
  object = key.identifier._object;
  countAndFlagsBits = key.identifier._countAndFlagsBits;
  v5 = *v1;
  v6 = v1[3];

  v7 = specialized AppExtensionPointEnumerator.isThirdParty.getter(v5);
  if (!*(v6 + 16))
  {
    goto LABEL_110;
  }

  v8 = v7;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object);
  if ((v10 & 1) == 0)
  {
    goto LABEL_110;
  }

  outlined init with copy of Any(*(v6 + 56) + 32 * v9, &v94);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_110;
  }

  v12 = v101;
  if (*(v101 + 16))
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x80000001848C2680);
    if (v14)
    {
      outlined init with copy of Any(v12[7] + 32 * v13, &v94);
      outlined init with take of Any(&v94, &v101);
      goto LABEL_14;
    }
  }

  v15 = 0uLL;
  v94 = 0u;
  v95 = 0u;
  if (v12[2])
  {
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x80000001848C26A0);
    if (v17)
    {
      outlined init with copy of Any(v12[7] + 32 * v16, &v101);
      goto LABEL_12;
    }

    v15 = 0uLL;
  }

  v101 = v15;
  v102 = v15;
LABEL_12:
  if (*(&v95 + 1))
  {
    outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
  }

LABEL_14:
  outlined init with copy of UUID?(&v101, &v94, &_sypSgMd, &_sypSgMR);
  v18 = *(&v95 + 1);
  outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
  if (v18)
  {
    goto LABEL_26;
  }

  if (!v12[2] || (v19 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x80000001848C26C0), (v20 & 1) == 0) || (outlined init with copy of Any(v12[7] + 32 * v19, &v94), (swift_dynamicCast() & 1) == 0) || (v21 = v99) == 0)
  {
    v99 = 0u;
    v100 = 0u;
    goto LABEL_23;
  }

  if (!*(v99 + 16) || (, v22 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000014, 0x80000001848C2680), v24 = v23, , (v24 & 1) == 0))
  {
    v99 = 0u;
    v100 = 0u;
    if (*(v21 + 16))
    {
      v75 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x80000001848C26A0);
      if (v76)
      {
        outlined init with copy of Any(*(v21 + 56) + 32 * v75, &v94);
        outlined destroy of NSObject?(&v101, &_sypSgMd, &_sypSgMR);

        if (!*(&v100 + 1))
        {
          goto LABEL_25;
        }

        goto LABEL_24;
      }
    }

LABEL_23:
    outlined destroy of NSObject?(&v101, &_sypSgMd, &_sypSgMR);
    v94 = 0u;
    v95 = 0u;
    if (!*(&v100 + 1))
    {
      goto LABEL_25;
    }

LABEL_24:
    outlined destroy of NSObject?(&v99, &_sypSgMd, &_sypSgMR);
    goto LABEL_25;
  }

  outlined init with copy of Any(*(v21 + 56) + 32 * v22, &v99);
  outlined destroy of NSObject?(&v101, &_sypSgMd, &_sypSgMR);

  outlined init with take of Any(&v99, &v94);
LABEL_25:
  v101 = v94;
  v102 = v95;
LABEL_26:
  outlined init with copy of UUID?(&v101, &v94, &_sypSgMd, &_sypSgMR);
  if (!*(&v95 + 1))
  {
    outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
    goto LABEL_37;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_37;
  }

  Dictionary<>.firstOf(platform:)(platform, v99, &v99);

  if (!*(&v100 + 1))
  {
    outlined destroy of NSObject?(&v99, &_sypSgMd, &_sypSgMR);
LABEL_37:
    if (one-time initialization token for active != -1)
    {
      swift_once();
    }

    if (specialized == infix<A>(_:_:)(platform, static Platform.active))
    {
      goto LABEL_40;
    }

    outlined init with copy of UUID?(&v101, &v94, &_sypSgMd, &_sypSgMR);
    if (*(&v95 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
      if (swift_dynamicCast())
      {
        v35 = specialized Collection<>.contains(platform:)(platform, v99);

        if (v35)
        {
          goto LABEL_40;
        }
      }
    }

    else
    {
      outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
    }

    if (platform == ExtensionFoundation_Platform_macCatalyst)
    {
    }

    else
    {
      v67 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v67 & 1) == 0)
      {
        goto LABEL_109;
      }
    }

    if (v12[2])
    {
      v68 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x80000001848C28B0);
      if (v69)
      {
        outlined init with copy of Any(v12[7] + 32 * v68, &v94);
        if (swift_dynamicCast())
        {
LABEL_94:
          if (v99)
          {
            goto LABEL_40;
          }

          goto LABEL_109;
        }
      }
    }

    if (v12[2])
    {
      v70 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x80000001848C26C0);
      if (v71)
      {
        outlined init with copy of Any(v12[7] + 32 * v70, &v99);
        if (swift_dynamicCast())
        {
          v72 = *v97;
          if (*(*v97 + 16) && (v73 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x80000001848C28B0), (v74 & 1) != 0))
          {
            outlined init with copy of Any(*(v72 + 56) + 32 * v73, &v94);

            if (swift_dynamicCast())
            {
              goto LABEL_94;
            }
          }

          else
          {
          }
        }
      }
    }

LABEL_109:
    outlined destroy of NSObject?(&v101, &_sypSgMd, &_sypSgMR);

LABEL_110:

    v25 = 0;
    goto LABEL_111;
  }

  outlined init with take of Any(&v99, &v94);
  outlined init with copy of Any(&v94, &v99);
  if ((swift_dynamicCast() & 1) != 0 && v97[0] == 1)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(&v94);
LABEL_40:

    v25 = v12;
    goto LABEL_41;
  }

  outlined init with take of Any(&v94, &v99);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_109;
  }

  v25 = *v97;
  if (!*v97)
  {
    goto LABEL_109;
  }

LABEL_41:
  v98 = v25;
  if (v25[2])
  {
    v26 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x80000001848C26C0);
    if (v27)
    {
      outlined init with copy of Any(v25[7] + 32 * v26, &v94);
      if (swift_dynamicCast())
      {
        v28 = v99;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v94 = v25;
        specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v28, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v94);

        v98 = v94;
        specialized Dictionary._Variant.removeValue(forKey:)(0xD00000000000001DLL, 0x80000001848C26C0, &v94);
        outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
        v25 = v98;
      }
    }
  }

  if (!v25[2] || (v30 = specialized __RawDictionaryStorage.find<A>(_:)(0x736E65747845534ELL, 0xEB000000006E6F69), (v31 & 1) == 0))
  {
    v94 = 0u;
    v95 = 0u;
    goto LABEL_58;
  }

  outlined init with copy of Any(v25[7] + 32 * v30, &v94);
  outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
  if (v25[2])
  {
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x80000001848C2890);
    if (v33)
    {
      goto LABEL_52;
    }
  }

  v94 = 0u;
  v95 = 0u;
  outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
  if (v8)
  {
    goto LABEL_59;
  }

  if (v25[2])
  {
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ELL, 0x80000001848C2620);
    if (v34)
    {
LABEL_52:
      outlined init with copy of Any(v25[7] + 32 * v32, &v94);
LABEL_58:
      outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
      goto LABEL_59;
    }
  }

  v94 = 0u;
  v95 = 0u;
  outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
  *(&v95 + 1) = MEMORY[0x1E69E6370];
  LOBYTE(v94) = 1;
  outlined init with take of Any(&v94, &v99);
  v66 = swift_isUniquelyReferenced_nonNull_native();
  *v97 = v25;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v99, 0xD00000000000001ELL, 0x80000001848C2620, v66);
  v25 = *v97;
  v98 = *v97;
LABEL_59:
  v36 = MEMORY[0x1E69E6158];
  if (!v25[2] || (v37 = specialized __RawDictionaryStorage.find<A>(_:)(0x736E65747845534ELL, 0xEB000000006E6F69), (v38 & 1) == 0) || (outlined init with copy of Any(v25[7] + 32 * v37, &v94), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR), (swift_dynamicCast() & 1) == 0))
  {
    if (!v25[2] || (v39 = specialized __RawDictionaryStorage.find<A>(_:)(0x6976726553435058, 0xEA00000000006563), (v40 & 1) == 0) || (outlined init with copy of Any(v25[7] + 32 * v39, &v94), __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR), (swift_dynamicCast() & 1) == 0))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd, &_ss23_ContiguousArrayStorageCySS_yptGMR);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1848BAB90;
      *(v44 + 32) = 0xD00000000000001ALL;
      *(v44 + 40) = 0x80000001848C26E0;
      *(v44 + 48) = countAndFlagsBits;
      *(v44 + 56) = object;
      *(v44 + 72) = v36;
      *(v44 + 80) = 0xD000000000000023;
      *(v44 + 88) = 0x80000001848C2700;
      v45 = MEMORY[0x1E69E6370];
      *(v44 + 96) = 1;
      *(v44 + 120) = v45;
      *(v44 + 128) = 0xD000000000000015;
      *(v44 + 136) = 0x80000001848C2730;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_SStGMd, &_ss23_ContiguousArrayStorageCySS_SStGMR);
      v46 = swift_allocObject();
      *(v46 + 16) = xmmword_1848BAA10;
      *(v46 + 32) = 0xD000000000000014;
      *(v46 + 40) = 0x80000001848C2750;
      *(v46 + 48) = countAndFlagsBits;
      *(v46 + 56) = object;
      *(v46 + 64) = 0xD000000000000017;
      *(v46 + 72) = 0x80000001848C2770;
      *(v46 + 80) = 3157553;
      *(v46 + 88) = 0xE300000000000000;

      v47 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(v46);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SStMd, &_sSS_SStMR);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(v44 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
      *(v44 + 144) = v47;
      v48 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v44);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd, &_sSS_yptMR);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      *(&v95 + 1) = v11;
      *&v94 = v48;
      outlined init with take of Any(&v94, &v99);
      v49 = v98;
      v50 = swift_isUniquelyReferenced_nonNull_native();
      *v97 = v49;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v99, 0x736E65747845534ELL, 0xEB000000006E6F69, v50);
      v51 = *v97;
      *(&v95 + 1) = MEMORY[0x1E69E6370];
      LOBYTE(v94) = 0;
      outlined init with take of Any(&v94, &v99);
      v52 = swift_isUniquelyReferenced_nonNull_native();
      *v97 = v51;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v99, 0xD00000000000001ELL, 0x80000001848C2620, v52);
      v53 = *v97;
      v54 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
      *(&v95 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
      *&v94 = v54;
      outlined init with take of Any(&v94, &v99);
      v55 = swift_isUniquelyReferenced_nonNull_native();
      *v97 = v53;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v99, 0xD00000000000001DLL, 0x80000001848C26C0, v55);
      v25 = *v97;
      v98 = *v97;
      if ((v8 & 1) == 0)
      {
        goto LABEL_66;
      }

LABEL_70:
      if (v25[2])
      {
        v56 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001848C27B0);
        if (v57)
        {
          outlined init with copy of Any(v25[7] + 32 * v56, &v99);
        }

        else
        {
          v99 = 0u;
          v100 = 0u;
        }
      }

      else
      {
        v99 = 0u;
        v100 = 0u;
      }

      outlined init with copy of UUID?(&v99, &v94, &_sypSgMd, &_sypSgMR);
      v60 = *(&v95 + 1);
      outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
      if (!v60)
      {
        v61 = MEMORY[0x1E69E6158];
        if (v25[2])
        {
          v62 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000013, 0x80000001848C27D0);
          if (v63)
          {
            outlined init with copy of Any(v25[7] + 32 * v62, v97);
            if (swift_dynamicCast())
            {
              if (*(v93 + 16) && (v64 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001DLL, 0x80000001848C2870), (v65 & 1) != 0))
              {
                outlined init with copy of Any(*(v93 + 56) + 32 * v64, &v94);

                if (swift_dynamicCast() & 1) != 0 && (v97[0])
                {
                  outlined destroy of NSObject?(&v99, &_sypSgMd, &_sypSgMR);
                  *&v99 = 0x746163696C707061;
                  *(&v99 + 1) = 0xEB000000006E6F69;
                  *(&v100 + 1) = v61;
                }
              }

              else
              {
              }
            }
          }
        }

        outlined init with copy of UUID?(&v99, &v94, &_sypSgMd, &_sypSgMR);
        if (*(&v95 + 1))
        {
          outlined init with take of Any(&v94, v97);
          v78 = v98;
          v79 = swift_isUniquelyReferenced_nonNull_native();
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v97, 0xD000000000000013, 0x80000001848C27B0, v79);
          v98 = v78;
        }

        else
        {
          outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
          specialized Dictionary._Variant.removeValue(forKey:)(0xD000000000000013, 0x80000001848C27B0, v97);
          outlined destroy of NSObject?(v97, &_sypSgMd, &_sypSgMR);
        }
      }

      outlined init with copy of UUID?(&v99, &v94, &_sypSgMd, &_sypSgMR);
      v80 = _s19ExtensionFoundation17_ScopeRestrictionO5value12defaultValueACxSg_ACtclufCyp_Tt1g5(&v94, 0, 0);
      v82 = v81;
      _ScopeRestriction.value.getter(v80, v81, &v94);
      v83 = v98;
      v84 = swift_isUniquelyReferenced_nonNull_native();
      *v97 = v83;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v94, 0xD000000000000013, 0x80000001848C27B0, v84);
      v85 = *v97;
      *(&v95 + 1) = &type metadata for Defaults.Feature;
      v86 = lazy protocol witness table accessor for type Defaults.Feature and conformance Defaults.Feature();
      v96 = v86;
      *&v94 = "allow_unscoped_third_party_extension_points";
      *(&v94 + 1) = 43;
      LOBYTE(v95) = 2;
      v87 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0Tm(&v94);
      if (v87)
      {
        outlined consume of _ScopeRestriction(v80, v82);
        if (v82 <= 1)
        {
          goto LABEL_124;
        }
      }

      else
      {
        if (!v82)
        {
LABEL_124:
          outlined destroy of NSObject?(&v99, &_sypSgMd, &_sypSgMR);
LABEL_127:
          *(&v95 + 1) = MEMORY[0x1E69E6158];
          *&v94 = 0x656E6961746E6F63;
          *(&v94 + 1) = 0xE900000000000072;
          outlined init with take of Any(&v94, &v99);
          v92 = swift_isUniquelyReferenced_nonNull_native();
          *v97 = v85;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v99, 0xD00000000000001ALL, 0x80000001848C2790, v92);

          goto LABEL_128;
        }

        if (v82 == 1)
        {
          v88 = &outlined read-only object #0 of AppExtensionPointEnumerator.Iterator.normalizedAttributes(key:);
          goto LABEL_126;
        }

        outlined consume of _ScopeRestriction(v80, v82);
      }

      *(&v95 + 1) = &type metadata for Defaults.Feature;
      v96 = v86;
      *&v94 = "allow_group_scoped_third_party_extension_points";
      *(&v94 + 1) = 47;
      LOBYTE(v95) = 2;
      v89 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0Tm(&v94);
      if (v89)
      {
        goto LABEL_124;
      }

      v88 = &outlined read-only object #1 of AppExtensionPointEnumerator.Iterator.normalizedAttributes(key:);
LABEL_126:
      v90 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SbTt0g5Tf4g_n(v88);
      outlined destroy of NSObject?(v88 + 32, &_sSS_SbtMd, &_sSS_SbtMR);
      *(&v95 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSbGMd, &_sSDySSSbGMR);
      *&v94 = v90;
      outlined init with take of Any(&v94, v97);
      v91 = swift_isUniquelyReferenced_nonNull_native();
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v97, 0xD00000000000001ALL, 0x80000001848C2850, v91);
      outlined destroy of NSObject?(&v99, &_sypSgMd, &_sypSgMR);
      goto LABEL_127;
    }
  }

  if (v8)
  {
    goto LABEL_70;
  }

LABEL_66:
  if (!v25[2] || (v41 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000001ALL, 0x80000001848C2790), (v42 & 1) == 0))
  {
    v94 = 0u;
    v95 = 0u;
    outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
    *(&v95 + 1) = MEMORY[0x1E69E6158];
    *&v94 = 0x656E6961746E6F63;
    *(&v94 + 1) = 0xE900000000000072;
    outlined init with take of Any(&v94, &v99);
    v58 = v98;
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *v97 = v58;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(&v99, 0xD00000000000001ALL, 0x80000001848C2790, v59);

LABEL_128:
    outlined destroy of NSObject?(&v101, &_sypSgMd, &_sypSgMR);
    v25 = *v97;
    goto LABEL_111;
  }

  outlined init with copy of Any(v25[7] + 32 * v41, &v94);
  outlined destroy of NSObject?(&v101, &_sypSgMd, &_sypSgMR);

  outlined destroy of NSObject?(&v94, &_sypSgMd, &_sypSgMR);
LABEL_111:
  v77 = v25;
  result.value._rawValue = v77;
  result.is_nil = v43;
  return result;
}

void protocol witness for IteratorProtocol.next() in conformance AppExtensionPointEnumerator.Iterator(uint64_t a1@<X8>)
{
  AppExtensionPointEnumerator.Iterator.next()(a1);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
}

double protocol witness for Sequence.makeIterator() in conformance AppExtensionPointEnumerator@<D0>(uint64_t a1@<X8>)
{
  specialized AppExtensionPointEnumerator.Iterator.init(_:)(*v1, v1[1], v1[2], v1[3], v1[4], v5);

  v3 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v3;
  result = *&v6;
  *(a1 + 32) = v6;
  *(a1 + 48) = v7;
  return result;
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance AppExtensionPointEnumerator()
{
  v1 = *(v0 + 16);
  *v5 = *v0;
  *&v5[16] = v1;
  v6 = *(v0 + 32);
  specialized _copySequenceToContiguousArray<A>(_:)(v5);
  v3 = v2;
  v7 = *v5;
  outlined destroy of NSObject?(&v7, &_sSDys11AnyHashableVypGMd, &_sSDys11AnyHashableVypGMR);
  v8 = *&v5[8];
  outlined destroy of String(&v8);
  v9 = *&v5[24];
  outlined destroy of NSObject?(&v9, &_sSDySSypGMd, &_sSDySSypGMR);
  return v3;
}

uint64_t protocol witness for Sequence._copyContents(initializing:) in conformance AppExtensionPointEnumerator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = v3[1];
  v7 = *(v3 + 4);
  return specialized Sequence._copySequenceContents(initializing:)(a1, a2, a3);
}

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  outlined init with copy of Any((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;
}

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v34 = a1[3];
  v4 = v34;
  v5 = a1[4];

  outlined init with copy of UUID?(&v34, v33, &_sSDySSypGMd, &_sSDySSypGMR);
  specialized AppExtensionPointEnumerator.Iterator.init(_:)(v1, v2, v3, v4, v5, v33);
  outlined destroy of NSObject?(&v34, &_sSDySSypGMd, &_sSDySSypGMR);
  AppExtensionPointEnumerator.Iterator.next()(v6);
  v11 = MEMORY[0x1E69E7CC0];
  v12 = 0;
  if (v8)
  {
    v13 = MEMORY[0x1E69E7CC0] + 32;
    while (1)
    {
      if (!v12)
      {
        v14 = v11[3];
        if (((v14 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_26;
        }

        v15 = v10;
        v16 = v9;
        v17 = v8;
        v18 = v7;
        v19 = v14 & 0xFFFFFFFFFFFFFFFELL;
        if (v19 <= 1)
        {
          v20 = 1;
        }

        else
        {
          v20 = v19;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19ExtensionFoundation03AppD15PointEnumeratorV0dG0VGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation03AppD15PointEnumeratorV0dG0VGMR);
        v21 = swift_allocObject();
        v22 = _swift_stdlib_malloc_size(v21);
        v23 = v22 - 32;
        if (v22 < 32)
        {
          v23 = v22 - 1;
        }

        v24 = v23 >> 5;
        v21[2] = v20;
        v21[3] = 2 * (v23 >> 5);
        v25 = (v21 + 4);
        v26 = v11[3] >> 1;
        v27 = 32 * v26;
        if (v11[2])
        {
          if (v21 != v11 || v25 >= &v11[v27 / 8 + 4])
          {
            memmove(v21 + 4, v11 + 4, v27);
          }

          v11[2] = 0;
        }

        v13 = v25 + v27;
        v12 = (v24 & 0x7FFFFFFFFFFFFFFFLL) - v26;

        v11 = v21;
        v7 = v18;
        v8 = v17;
        v9 = v16;
        v10 = v15;
      }

      v29 = __OFSUB__(v12--, 1);
      if (v29)
      {
        break;
      }

      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
      *(v13 + 24) = v10;
      *(v13 + 25) = BYTE1(v10) & 1;
      v13 += 32;
      AppExtensionPointEnumerator.Iterator.next()(((v10 >> 8) & 1));
      if (!v8)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

LABEL_21:

  v30 = v11[3];
  if (v30 >= 2)
  {
    v31 = v30 >> 1;
    v29 = __OFSUB__(v31, v12);
    v32 = v31 - v12;
    if (v29)
    {
LABEL_27:
      __break(1u);
      return;
    }

    v11[2] = v32;
  }
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[4];
  v8 = v3[1];
  v9 = v3[2];
  v25 = v3[3];
  specialized AppExtensionPointEnumerator.Iterator.init(_:)(*v3, v8, v9, v25, v7, v21);
  result = outlined destroy of NSObject?(&v25, &_sSDySSypGMd, &_sSDySSypGMR);
  if (!a2)
  {
LABEL_10:
    a3 = 0;
    goto LABEL_12;
  }

  if (!a3)
  {
LABEL_12:
    v18 = v21[1];
    v19 = v24;
    *a1 = v21[0];
    *(a1 + 8) = v18;
    v20 = v23;
    *(a1 + 16) = v22;
    *(a1 + 32) = v20;
    *(a1 + 48) = v19;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v12 = 1;
    while (1)
    {
      AppExtensionPointEnumerator.Iterator.next()(v11);
      if (!v14)
      {
        break;
      }

      *a2 = v13;
      *(a2 + 8) = v14;
      *(a2 + 16) = v15;
      *(a2 + 24) = v16;
      v11 = ((v16 >> 8) & 1);
      *(a2 + 25) = BYTE1(v16) & 1;
      if (a3 == v12)
      {
        goto LABEL_12;
      }

      a2 += 32;
      if (__OFADD__(v12++, 1))
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    a3 = v12 - 1;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void *specialized Sequence._copySequenceContents(initializing:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
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
      outlined init with copy of AppExtensionIdentity(*(a4 + 48) + 40 * (v17 | (v12 << 6)), v22);
      v18 = v23;
      v19 = v22[1];
      *v11 = v22[0];
      *(v11 + 16) = v19;
      *(v11 + 32) = v18;
      if (v14 == v10)
      {
        goto LABEL_24;
      }

      v11 += 40;
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
        goto LABEL_26;
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
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = MEMORY[0x1EEE9AC00](v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - v14;
  v16 = a4 + 7;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[7];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[6];
      v27 = *(v33 + 72);
      outlined init with copy of LocalLSDatabaseObserver.Observer(v26 + v27 * (v25 | (v20 << 6)), v12);
      outlined init with take of LocalLSDatabaseObserver.Observer(v12, v15);
      outlined init with take of LocalLSDatabaseObserver.Observer(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += v27;
      result = v22;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t specialized Sequence._copySequenceContents(initializing:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for UUID();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = MEMORY[0x1EEE9AC00](v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t specialized LazyMapSequence.Iterator.next()@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    outlined init with copy of Any(*(v3 + 56) + 32 * v13, v22);
    *&v23 = v16;
    *(&v23 + 1) = v15;
    outlined init with take of Any(v22, &v24);

    v18 = *(&v23 + 1);
    v19 = v23;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v18)
    {
      v21 = v1[5];
      v20 = v1[6];
      *&v22[0] = v19;
      *(&v22[0] + 1) = v18;
      v22[1] = v24;
      v22[2] = v25;
      v21(v22);
      return outlined destroy of NSObject?(v22, &_sSS3key_yp5valuetMd, &_sSS3key_yp5valuetMR);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v18 = 0;
        v19 = 0;
        v12 = 0;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized AppExtensionPointEnumerator.Iterator.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v40 = a4 + 64;
  v8 = 1 << *(a4 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a4 + 64);
  v39 = (v8 + 63) >> 6;
  swift_bridgeObjectRetain_n();
  v34 = a1;

  v36 = a3;

  v12 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (v10)
  {
    v42 = v13;
LABEL_11:
    v15 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v10)))));
    v17 = *v15;
    v16 = v15[1];
    v18 = one-time initialization token for available;

    if (v18 != -1)
    {
      swift_once();
    }

    v19 = *(static Platform.available + 16);
    if (v19)
    {
      v20 = (static Platform.available + 32);
      v21 = MEMORY[0x1E69E7CC0];
      do
      {
        v23 = *v20++;
        v22 = v23;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21[2] + 1, 1, v21);
        }

        v25 = v21[2];
        v24 = v21[3];
        if (v25 >= v24 >> 1)
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v21);
        }

        v21[2] = v25 + 1;
        v26 = &v21[3 * v25];
        v26[4] = v17;
        v26[5] = v16;
        *(v26 + 48) = v22;
        --v19;
      }

      while (v19);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CC0];
    }

    v27 = v21[2];
    v13 = v42;
    v28 = v42[2];
    v29 = v28 + v27;
    if (__OFADD__(v28, v27))
    {
      goto LABEL_36;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0 || v29 > v42[3] >> 1)
    {
      if (v28 <= v29)
      {
        v30 = v28 + v27;
      }

      else
      {
        v30 = v28;
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v30, 1, v42);
      v13 = result;
    }

    v10 &= v10 - 1;
    if (v21[2])
    {
      if ((v13[3] >> 1) - v13[2] < v27)
      {
        goto LABEL_38;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10identifier_19ExtensionFoundation8PlatformO8platformtMd, &_sSS10identifier_19ExtensionFoundation8PlatformO8platformtMR);
      swift_arrayInitWithCopy();

      if (v27)
      {
        v31 = v13[2];
        v32 = __OFADD__(v31, v27);
        v33 = v31 + v27;
        if (v32)
        {
          goto LABEL_39;
        }

        v13[2] = v33;
      }
    }

    else
    {

      if (v27)
      {
        goto LABEL_37;
      }
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v39)
    {

      *a6 = v34;
      a6[1] = a2;
      a6[2] = v36;
      a6[3] = a4;
      a6[4] = a5;
      a6[5] = v13;
      a6[6] = 0;
      return result;
    }

    v10 = *(v40 + 8 * v14);
    ++v12;
    if (v10)
    {
      v42 = v13;
      v12 = v14;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t specialized AppExtensionPointEnumerator.isThirdParty.getter(uint64_t a1)
{
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(v6), (v3 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v2, v7);
    outlined destroy of AnyHashable(v6);
    type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
    if (swift_dynamicCast())
    {
      v4 = [0xD000000000000034 BOOLValue];

      return v4 ^ 1;
    }
  }

  else
  {
    outlined destroy of AnyHashable(v6);
  }

  return 1;
}

unint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v50 = a1;
  v51 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v52 = v8;
  v53 = 0;
  v54 = v11 & v9;
  v55 = a2;
  v56 = a3;

  specialized LazyMapSequence.Iterator.next()(&v48);
  v12 = *(&v48 + 1);
  if (!*(&v48 + 1))
  {
    goto LABEL_25;
  }

  v13 = v48;
  outlined init with take of Any(v49, v47);
  v14 = *a5;
  result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (*(v14 + 24) < v20)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a4 & 1);
    v22 = *a5;
    result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
    if ((v21 & 1) == (v23 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v27 = result;
    specialized _NativeDictionary.copy()();
    result = v27;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  if (v21)
  {
LABEL_11:
    v24 = *a5;
    v25 = 32 * result;
    outlined init with copy of Any(*(*a5 + 56) + 32 * result, v46);
    __swift_destroy_boxed_opaque_existential_0Tm(v47);

    v26 = *(v24 + 56);
    __swift_destroy_boxed_opaque_existential_0Tm((v26 + v25));
    outlined init with take of Any(v46, (v26 + v25));
    goto LABEL_15;
  }

LABEL_13:
  v28 = *a5;
  *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
  v29 = (v28[6] + 16 * result);
  *v29 = v13;
  v29[1] = v12;
  result = outlined init with take of Any(v47, (v28[7] + 32 * result));
  v30 = v28[2];
  v19 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v19)
  {
    v28[2] = v31;
LABEL_15:
    specialized LazyMapSequence.Iterator.next()(&v48);
    v12 = *(&v48 + 1);
    if (*(&v48 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v48;
        outlined init with take of Any(v49, v47);
        v35 = *a5;
        result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
        v37 = *(v35 + 16);
        v38 = (v36 & 1) == 0;
        v19 = __OFADD__(v37, v38);
        v39 = v37 + v38;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v36;
        if (*(v35 + 24) < v39)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, 1);
          v40 = *a5;
          result = specialized __RawDictionaryStorage.find<A>(_:)(v13, v12);
          if ((a4 & 1) != (v41 & 1))
          {
            goto LABEL_8;
          }
        }

        if (a4)
        {
          v32 = *a5;
          v33 = 32 * result;
          outlined init with copy of Any(*(*a5 + 56) + 32 * result, v46);
          __swift_destroy_boxed_opaque_existential_0Tm(v47);

          v34 = *(v32 + 56);
          __swift_destroy_boxed_opaque_existential_0Tm((v34 + v33));
          outlined init with take of Any(v46, (v34 + v33));
        }

        else
        {
          v42 = *a5;
          *(*a5 + 8 * (result >> 6) + 64) |= 1 << result;
          v43 = (v42[6] + 16 * result);
          *v43 = v13;
          v43[1] = v12;
          result = outlined init with take of Any(v47, (v42[7] + 32 * result));
          v44 = v42[2];
          v19 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v42[2] = v45;
        }

        specialized LazyMapSequence.Iterator.next()(&v48);
        v12 = *(&v48 + 1);
      }

      while (*(&v48 + 1));
    }

LABEL_25:
    outlined consume of [String : Any].Iterator._Variant();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t specialized AppExtensionPointEnumerator.init(bundleIdentifier:sdkDictionary:entitlements:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v8 = result;
  v10 = *(a3 + 16);
  if (v10)
  {
    result = specialized __RawDictionaryStorage.find<A>(_:)(0x6F69737265565845, 0xE90000000000006ELL);
    if ((v11 & 1) != 0 && (outlined init with copy of Any(*(a3 + 56) + 32 * result, v13), result = swift_dynamicCast(), result))
    {
      v10 = v12;
    }

    else
    {
      v10 = 0;
    }
  }

  *a5 = a4;
  a5[1] = v8;
  a5[2] = a2;
  a5[3] = a3;
  a5[4] = v10;
  return result;
}

uint64_t getEnumTagSinglePayload for AppExtensionPointEnumerator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for AppExtensionPointEnumerator(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 __swift_memcpy26_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 10) = *(a2 + 10);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppExtensionPointEnumerator.ExtensionPoint(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t storeEnumTagSinglePayload for AppExtensionPointEnumerator.ExtensionPoint(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AppExtensionPointEnumerator.Iterator and conformance AppExtensionPointEnumerator.Iterator()
{
  result = lazy protocol witness table cache variable for type AppExtensionPointEnumerator.Iterator and conformance AppExtensionPointEnumerator.Iterator;
  if (!lazy protocol witness table cache variable for type AppExtensionPointEnumerator.Iterator and conformance AppExtensionPointEnumerator.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppExtensionPointEnumerator.Iterator and conformance AppExtensionPointEnumerator.Iterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type _EXExtensionIdentity and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject;
  if (!lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject)
  {
    type metadata accessor for _EXExtensionIdentity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _EXExtensionIdentity and conformance NSObject);
  }

  return result;
}

uint64_t outlined init with copy of LocalLSDatabaseObserver.Observer(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of LocalLSDatabaseObserver.Observer(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LocalLSDatabaseObserver.Observer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Defaults.Feature and conformance Defaults.Feature()
{
  result = lazy protocol witness table cache variable for type Defaults.Feature and conformance Defaults.Feature;
  if (!lazy protocol witness table cache variable for type Defaults.Feature and conformance Defaults.Feature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Defaults.Feature and conformance Defaults.Feature);
  }

  return result;
}

uint64_t outlined consume of _ScopeRestriction(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AppExtensionPointEnumerator.Iterator(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t storeEnumTagSinglePayload for AppExtensionPointEnumerator.Iterator(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Bool __swiftcall ConnectionHandler.accept(connection:)(NSXPCConnection connection)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v1 + 24);

  LOBYTE(connection.super.isa) = v2(connection.super.isa);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
  return connection.super.isa & 1;
}

uint64_t ConnectionHandler.init(onSessionRequest:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(a1);

  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(0);

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(0);
}

uint64_t ConnectionHandler.init(onConnection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0;
  a3[1] = 0;
  a3[2] = a1;
  a3[3] = a2;
  outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(0);
  outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(a1);

  a3[4] = 0;
  a3[5] = 0;

  return outlined copy of (@escaping @callee_guaranteed (@guaranteed XPCListener.IncomingSessionRequest) -> (@out XPCListener.IncomingSessionRequest.Decision))?(0);
}

uint64_t protocol witness for AppExtensionConfiguration.accept(connection:) in conformance ConnectionHandler(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(v1 + 24);

  LOBYTE(a1) = v2(a1);
  outlined consume of (@escaping @callee_guaranteed () -> ())?(v2);
  return a1 & 1;
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

uint64_t getEnumTagSinglePayload for ConnectionHandler(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for ConnectionHandler(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy19ExtensionFoundation03AppD5PointVG_SSs5NeverOTg504_s19d12Foundation03f2A5G51V7MonitorC8IdentityV16debugDescriptionSSvgSSACXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v26 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v26;
  v4 = a1 + 56;
  v5 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v7 = result;
  v8 = 0;
  v23 = v1;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v4 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_21;
    }

    v24 = *(a1 + 36);
    v11 = (*(a1 + 48) + 32 * v7);
    v12 = v11[1];
    v25 = *v11;
    v13 = *(v26 + 16);
    v14 = *(v26 + 24);

    if (v13 >= v14 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v13 + 1, 1);
    }

    *(v26 + 16) = v13 + 1;
    v15 = v26 + 16 * v13;
    *(v15 + 32) = v25;
    *(v15 + 40) = v12;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_22;
    }

    v4 = a1 + 56;
    v16 = *(a1 + 56 + 8 * v10);
    if ((v16 & (1 << v7)) == 0)
    {
      goto LABEL_23;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v7 & 0x3F));
    if (v17)
    {
      v9 = __clz(__rbit64(v17)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v9 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = outlined consume of Set<AppExtensionPoint>.Index._Variant(v7, v24, 0);
          v9 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = outlined consume of Set<AppExtensionPoint>.Index._Variant(v7, v24, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v23)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t specialized Sequence.flatMap<A>(_:)(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  v37 = v6;
  v34 = v2;
  v35 = result;
  while (v5)
  {
LABEL_10:
    v11 = *(*(v1 + 48) + ((v8 << 11) | (32 * __clz(__rbit64(v5)))) + 16);
    v12 = v11 >> 62;
    v13 = v11;
    if (v11 >> 62)
    {
      v14 = __CocoaSet.count.getter();
    }

    else
    {
      v14 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v9 >> 62;
    if (v9 >> 62)
    {
      result = __CocoaSet.count.getter();
    }

    else
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v39 = v14;
    v16 = __OFADD__(result, v14);
    v17 = result + v14;
    if (v16)
    {
      goto LABEL_41;
    }

    result = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (!result)
    {
      if (v15)
      {
LABEL_22:
        __CocoaSet.count.getter();
      }

      else
      {
        v18 = v9 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
        v19 = *(v18 + 16);
      }

      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v38 = result;
      v18 = result & 0xFFFFFFFFFFFFFF8;
      goto LABEL_24;
    }

    if (v15)
    {
      goto LABEL_22;
    }

    v18 = v9 & 0xFFFFFFFFFFFFFF8;
    if (v17 > *((v9 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_21;
    }

    v38 = v9;
LABEL_24:
    v20 = *(v18 + 16);
    v21 = *(v18 + 24);
    v22 = v13;
    if (v12)
    {
      v24 = v18;
      result = __CocoaSet.count.getter();
      v18 = v24;
      v22 = v13;
      v23 = result;
    }

    else
    {
      v23 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v5 &= v5 - 1;
    if (v23)
    {
      if (((v21 >> 1) - v20) < v39)
      {
        goto LABEL_43;
      }

      v25 = v18 + 8 * v20 + 32;
      v36 = v18;
      v41 = v22;
      if (v12)
      {
        if (v23 < 1)
        {
          goto LABEL_45;
        }

        lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](&lazy protocol witness table cache variable for type [LSExtensionPointRecord] and conformance [A], &_sSaySo22LSExtensionPointRecordCGMd, &_sSaySo22LSExtensionPointRecordCGMR);
        v26 = 0;
        do
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo22LSExtensionPointRecordCGMd, &_sSaySo22LSExtensionPointRecordCGMR);
          v27 = v23;
          v28 = v25;
          v29 = specialized protocol witness for Collection.subscript.read in conformance [A](v40, v26, v41);
          v31 = *v30;
          (v29)(v40, 0);
          v25 = v28;
          v23 = v27;
          *(v25 + 8 * v26++) = v31;
        }

        while (v27 != v26);
      }

      else
      {
        type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSExtensionPointRecord, 0x1E6963668);
        swift_arrayInitWithCopy();
      }

      v9 = v38;
      v2 = v34;
      v1 = v35;
      v6 = v37;
      if (v39 >= 1)
      {
        v32 = *(v36 + 16);
        v16 = __OFADD__(v32, v39);
        v33 = v32 + v39;
        if (v16)
        {
          goto LABEL_44;
        }

        *(v36 + 16) = v33;
      }
    }

    else
    {

      v9 = v38;
      v6 = v37;
      if (v39 > 0)
      {
        goto LABEL_42;
      }
    }
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

unint64_t specialized Sequence.flatMap<A>(_:)(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_49;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v28)
  {
    v4 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x1E69E7CC0];
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = i;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1865F3F40](v4, v30);
      }

      else
      {
        if (v4 >= *(v34 + 16))
        {
          goto LABEL_44;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v40 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      closure #2 in static LocalLSDatabaseObserver.update(identity:host:)(&v40, &v39);
      if (v2)
      {
        goto LABEL_42;
      }

      v9 = v39;
      v6 = (v39 >> 62);
      if (v39 >> 62)
      {
        v10 = __CocoaSet.count.getter();
      }

      else
      {
        v10 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v27 = __CocoaSet.count.getter();
        v13 = v27 + v10;
        if (__OFADD__(v27, v10))
        {
LABEL_41:
          __break(1u);
LABEL_42:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_41;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v37 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (v11)
        {
          goto LABEL_22;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
        if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v11)
        {
LABEL_22:
          __CocoaSet.count.getter();
          goto LABEL_23;
        }

        v14 = v5 & 0xFFFFFFFFFFFFFF8;
      }

      v15 = *(v14 + 16);
LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v16 = *(v14 + 16);
      v17 = *(v14 + 24);
      if (v6)
      {
        v19 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = __CocoaSet.count.getter();
        v14 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v18)
      {
        if (((v17 >> 1) - v16) < v37)
        {
          goto LABEL_46;
        }

        v36 = v5;
        v20 = v14 + 8 * v16 + 32;
        v31 = v14;
        if (v6)
        {
          if (v18 < 1)
          {
            goto LABEL_48;
          }

          lazy protocol witness table accessor for type [RBSDomainAttribute] and conformance [A](&lazy protocol witness table cache variable for type [LSExtensionPointRecord] and conformance [A], &_sSaySo22LSExtensionPointRecordCGMd, &_sSaySo22LSExtensionPointRecordCGMR);
          for (j = 0; j != v18; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo22LSExtensionPointRecordCGMd, &_sSaySo22LSExtensionPointRecordCGMR);
            v22 = specialized protocol witness for Collection.subscript.read in conformance [A](v38, j, v9);
            v24 = *v23;
            (v22)(v38, 0);
            *(v20 + 8 * j) = v24;
          }
        }

        else
        {
          type metadata accessor for NSDictionary(0, &lazy cache variable for type metadata for LSExtensionPointRecord, 0x1E6963668);
          swift_arrayInitWithCopy();
        }

        v2 = v8;
        v5 = v36;
        if (v37 >= 1)
        {
          v25 = *(v31 + 16);
          v7 = __OFADD__(v25, v37);
          v26 = v25 + v37;
          if (v7)
          {
            goto LABEL_47;
          }

          *(v31 + 16) = v26;
        }
      }

      else
      {

        if (v37 > 0)
        {
          goto LABEL_45;
        }
      }

      if (v4 == v32)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    i = __CocoaSet.count.getter();
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t AppExtensionPoint.Monitor.__allocating_init()()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  AppExtensionPoint.Monitor.init()();
  return v3;
}

uint64_t AppExtensionPoint.Monitor.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 16) = v1;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + 40) = v2;
  *(v0 + 48) = v3;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  ObservationRegistrar.init()();
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 queryAllowsDuplicates];

  *(v0 + 24) = MEMORY[0x1E69E7CD0];
  *(v0 + 32) = 0;
  *(v0 + 34) = 0;
  *(v0 + 35) = v5;
  return v0;
}

uint64_t AppExtensionPoint.Monitor.__allocating_init(appExtensionPoint:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 48) = v1;
  *(v2 + 56) = v3;
  *(v2 + 64) = *(a1 + 1);
  *(v2 + 80) = a1[3];
  return MEMORY[0x1EEE6DFA0](AppExtensionPoint.Monitor.__allocating_init(appExtensionPoint:), 0, 0);
}

uint64_t AppExtensionPoint.Monitor.__allocating_init(appExtensionPoint:)()
{
  v1 = *(v0 + 48);
  *(v0 + 16) = *(v0 + 56);
  v2 = *(v0 + 80);
  *(v0 + 24) = *(v0 + 64);
  *(v0 + 40) = v2;
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 queryAllowsDuplicates];

  *(v0 + 104) = 0;
  *(v0 + 106) = 0;
  *(v0 + 107) = v4;
  v5 = *(v1 + 48);
  v6 = *(v1 + 52);
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v0 + 88) = v7;
  *v7 = v0;
  v7[1] = AppExtensionPoint.Monitor.__allocating_init(appExtensionPoint:);

  return AppExtensionPoint.Monitor.init(appExtensionPoint:options:)((v0 + 16), (v0 + 104));
}

{
  v1 = *(v0 + 96);
  return (*(v0 + 8))();
}

uint64_t AppExtensionPoint.Monitor.__allocating_init(appExtensionPoint:)(uint64_t a1)
{
  v4 = *(*v2 + 88);
  v5 = *v2;
  *(v5 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](AppExtensionPoint.Monitor.__allocating_init(appExtensionPoint:), 0, 0);
  }

  else
  {
    v6 = *(v5 + 8);

    return v6(a1);
  }
}

uint64_t AppExtensionPoint.Monitor.addAppExtensionPoint(_:)(uint64_t a1)
{
  *(v1 + 16) = *a1;
  v2 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 8);
  *(v1 + 40) = v2;
  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v1;
  v3[1] = AppExtensionPoint.Monitor.addAppExtensionPoint(_:);

  return AppExtensionPoint.Monitor._addAppExtensionPoint(_:)((v1 + 16));
}

uint64_t AppExtensionPoint.Monitor.addAppExtensionPoint(_:)()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](AppExtensionPoint.Monitor.addAppExtensionPoint(_:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 56);
  return (*(v0 + 8))();
}

uint64_t AppExtensionPoint.Monitor._addAppExtensionPoint(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 40) = v1;
  *(v2 + 48) = v3;
  *(v2 + 56) = *(a1 + 1);
  *(v2 + 72) = a1[3];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static AppExtensionPoint.Monitor.ObserverController.shared;
  *(v2 + 80) = static AppExtensionPoint.Monitor.ObserverController.shared;

  return MEMORY[0x1EEE6DFA0](AppExtensionPoint.Monitor._addAppExtensionPoint(_:), v4, 0);
}

uint64_t AppExtensionPoint.Monitor._addAppExtensionPoint(_:)()
{
  v22 = v0;
  v1 = *(*(v0 + 40) + 16);

  os_unfair_lock_lock(v1 + 4);
  closure #1 in AppExtensionPoint.Monitor.identity.getterpartial apply(&v16);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  os_unfair_lock_unlock(v1 + 4);

  v6 = v17;
  v7 = v18;
  v8 = v19;
  v15 = v20;
  *(v0 + 32) = v16;

  v9 = v3;
  specialized Set._Variant.insert(_:)(&v16, v5, v4, v2, v3);
  v10 = v21;

  v11 = *(v0 + 32);
  *(v0 + 88) = v11;
  *(v0 + 16) = v11;
  *(v0 + 24) = v6;
  *(v0 + 25) = v7;
  *(v0 + 26) = v8;
  *(v0 + 27) = v15;
  v12 = swift_task_alloc();
  *(v0 + 96) = v12;
  *v12 = v0;
  v12[1] = AppExtensionPoint.Monitor._addAppExtensionPoint(_:);
  v13 = *(v0 + 40);

  return AppExtensionPoint.Monitor.updateIdentity(to:)((v0 + 16));
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = AppExtensionPoint.Monitor._addAppExtensionPoint(_:);
  }

  else
  {
    v7 = *(v2 + 80);
    v6 = *(v2 + 88);

    v5 = AppExtensionPoint.Monitor._addAppExtensionPoint(_:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = *(v0 + 80);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[10];
  v2 = v0[11];

  v3 = v0[1];
  v4 = v0[13];

  return v3();
}

uint64_t AppExtensionPoint.Monitor.removeAppExtensionPoint(_:)(uint64_t a1)
{
  *(v1 + 16) = *a1;
  v2 = *(a1 + 24);
  *(v1 + 24) = *(a1 + 8);
  *(v1 + 40) = v2;
  v3 = swift_task_alloc();
  *(v1 + 48) = v3;
  *v3 = v1;
  v3[1] = AppExtensionPoint.Monitor.removeAppExtensionPoint(_:);

  return AppExtensionPoint.Monitor._removeAppExtensionPoint(_:)((v1 + 16));
}

uint64_t AppExtensionPoint.Monitor.removeAppExtensionPoint(_:)()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](AppExtensionPoint.Monitor.removeAppExtensionPoint(_:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t AppExtensionPoint.Monitor._removeAppExtensionPoint(_:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 40) = v1;
  *(v2 + 48) = v3;
  *(v2 + 56) = *(a1 + 1);
  *(v2 + 72) = a1[3];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static AppExtensionPoint.Monitor.ObserverController.shared;
  *(v2 + 80) = static AppExtensionPoint.Monitor.ObserverController.shared;

  return MEMORY[0x1EEE6DFA0](AppExtensionPoint.Monitor._removeAppExtensionPoint(_:), v4, 0);
}

uint64_t AppExtensionPoint.Monitor._removeAppExtensionPoint(_:)()
{
  v18 = v0;
  v1 = *(*(v0 + 40) + 16);

  os_unfair_lock_lock(v1 + 4);
  closure #1 in AppExtensionPoint.Monitor.identity.getterpartial apply(&v14);
  v2 = *(v0 + 64);
  v3 = *(v0 + 72);
  v5 = *(v0 + 48);
  v4 = *(v0 + 56);
  os_unfair_lock_unlock(v1 + 4);

  v6 = v15;
  v7 = BYTE1(v15);
  v8 = BYTE2(v15);
  v13 = BYTE3(v15);
  *(v0 + 32) = v14;

  specialized Set._Variant.remove(_:)(v5, v4, &v14);
  outlined consume of AppExtensionPoint?(v14, v15, v16, v17);

  v9 = *(v0 + 32);
  *(v0 + 88) = v9;
  *(v0 + 16) = v9;
  *(v0 + 24) = v6;
  *(v0 + 25) = v7;
  *(v0 + 26) = v8;
  *(v0 + 27) = v13;
  v10 = swift_task_alloc();
  *(v0 + 96) = v10;
  *v10 = v0;
  v10[1] = AppExtensionPoint.Monitor._removeAppExtensionPoint(_:);
  v11 = *(v0 + 40);

  return AppExtensionPoint.Monitor.updateIdentity(to:)((v0 + 16));
}

{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v9 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = AppExtensionPoint.Monitor._removeAppExtensionPoint(_:);
  }

  else
  {
    v7 = *(v2 + 80);
    v6 = *(v2 + 88);

    v5 = AppExtensionPoint.Monitor._removeAppExtensionPoint(_:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

void AppExtensionPoint.Monitor.state.getter(uint64_t a1@<X8>)
{
  v2 = v1;
  if (one-time initialization token for monitor != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.monitor);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13[0] = v8;
    *v7 = 136315138;
    v9 = AppExtensionPoint.Monitor.debugDescription.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v13);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_1847D1000, v5, v6, "%s Accessing state", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v8);
    MEMORY[0x1865F56C0](v8, -1, -1);
    MEMORY[0x1865F56C0](v7, -1, -1);
  }

  swift_getKeyPath();
  v13[0] = v1;
  lazy protocol witness table accessor for type AppExtensionPoint.Monitor and conformance AppExtensionPoint.Monitor(&lazy protocol witness table cache variable for type AppExtensionPoint.Monitor and conformance AppExtensionPoint.Monitor, 255, type metadata accessor for AppExtensionPoint.Monitor);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v12 = *(v1 + 40);
  os_unfair_lock_lock(v12 + 4);
  swift_beginAccess();
  *a1 = *(v2 + 48);
  *(a1 + 8) = *(v2 + 56);

  os_unfair_lock_unlock(v12 + 4);
}

uint64_t AppExtensionPoint.Monitor.debugDescription.getter()
{
  v4 = 0;
  v5 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);
  MEMORY[0x1865F37A0](0x726F74696E6F4D3CLL, 0xEA0000000000203ALL);
  v3 = v0;
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865F37A0](0x544E454449202D20, 0xEC0000003A595449);
  v1 = *(v0 + 16);

  os_unfair_lock_lock(v1 + 4);
  partial apply for closure #1 in AppExtensionPoint.Monitor.identity.getter(&v3);
  os_unfair_lock_unlock(v1 + 4);

  _print_unlocked<A, B>(_:_:)();

  MEMORY[0x1865F37A0](62, 0xE100000000000000);
  return v4;
}

BOOL static AppExtensionPoint.Monitor.State.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ19ExtensionFoundation03AppB8IdentityV_Tt1g5(*a1, *a2);
  v7 = v3 == v5;
  if (v2 != v4)
  {
    v7 = 0;
  }

  return (v6 & 1) != 0 && v7;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZ19ExtensionFoundation03AppB8IdentityV_Tt1g5(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 64);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v11 = v23 - v10;
  v12 = *(a1 + 16);
  if (v12 == *(a2 + 16))
  {
    if (!v12 || a1 == a2)
    {
      v20 = 1;
    }

    else
    {
      v13 = a1 + 32;
      v14 = a2 + 32;
      v15 = (v9 + 8);
      do
      {
        outlined init with copy of AppExtensionIdentity(v13, v26);
        outlined init with copy of AppExtensionIdentity(v14, v23);
        v16 = v27;
        v17 = v28;
        __swift_project_boxed_opaque_existential_1(v26, v27);
        (*(v17 + 56))(v16, v17);
        v18 = v24;
        v19 = v25;
        __swift_project_boxed_opaque_existential_1(v23, v24);
        (*(v19 + 56))(v18, v19);
        v20 = static UUID.== infix(_:_:)();
        v21 = *v15;
        (*v15)(v8, v4);
        v21(v11, v4);
        outlined destroy of AppExtensionIdentity(v23);
        outlined destroy of AppExtensionIdentity(v26);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v13 += 40;
        v14 += 40;
        --v12;
      }

      while (v12);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AppExtensionPoint.Monitor.State(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  v6 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ19ExtensionFoundation03AppB8IdentityV_Tt1g5(*a1, *a2);
  v7 = v3 == v5;
  if (v2 != v4)
  {
    v7 = 0;
  }

  return (v6 & 1) != 0 && v7;
}

uint64_t AppExtensionPoint.Monitor.__allocating_init(options:)(char *a1)
{
  v3 = *(v1 + 48);
  v4 = *(v1 + 52);
  v5 = swift_allocObject();
  AppExtensionPoint.Monitor.init(options:)(a1);
  return v5;
}

uint64_t AppExtensionPoint.Monitor.init(options:)(char *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v6 = swift_allocObject();
  *(v6 + 16) = 0;
  *(v1 + 16) = v6;
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = MEMORY[0x1E69E7CC0];
  *(v1 + 40) = v7;
  *(v1 + 48) = v8;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  ObservationRegistrar.init()();
  *(v1 + 24) = MEMORY[0x1E69E7CD0];
  *(v1 + 32) = v2;
  *(v1 + 33) = v3;
  *(v1 + 34) = v4;
  *(v1 + 35) = v5;
  return v1;
}

uint64_t AppExtensionPoint.Monitor.__allocating_init(appExtensionPoint:options:)(uint64_t *a1, _BYTE *a2)
{
  v6 = *(v2 + 48);
  v7 = *(v2 + 52);
  swift_allocObject();
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = AppExtensionPoint.Monitor.__allocating_init(appExtensionPoint:options:);

  return AppExtensionPoint.Monitor.init(appExtensionPoint:options:)(a1, a2);
}

uint64_t AppExtensionPoint.Monitor.__allocating_init(appExtensionPoint:options:)(uint64_t a1)
{
  v4 = *(*v2 + 16);
  v8 = *v2;

  v6 = *(v8 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t AppExtensionPoint.Monitor.init(appExtensionPoint:options:)(uint64_t *a1, _BYTE *a2)
{
  v4 = *a1;
  *(v3 + 96) = v2;
  *(v3 + 104) = v4;
  *(v3 + 112) = *(a1 + 1);
  *(v3 + 128) = a1[3];
  *(v3 + 92) = *a2;
  *(v3 + 93) = a2[1];
  *(v3 + 94) = a2[2];
  *(v3 + 95) = a2[3];
  return MEMORY[0x1EEE6DFA0](AppExtensionPoint.Monitor.init(appExtensionPoint:options:), 0, 0);
}

uint64_t AppExtensionPoint.Monitor.init(appExtensionPoint:options:)()
{
  v36 = v0;
  v1 = *(v0 + 95);
  v2 = *(v0 + 94);
  v3 = *(v0 + 93);
  v4 = *(v0 + 92);
  v33 = *(v0 + 128);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v7 = swift_allocObject();
  *(v7 + 16) = 0;
  v8 = swift_allocObject();
  v31 = *(v0 + 112);
  *(v5 + 16) = v7;
  *(v8 + 16) = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *(v5 + 40) = v8;
  *(v5 + 48) = v9;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  ObservationRegistrar.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy19ExtensionFoundation03AppD5PointVGMd, &_ss23_ContiguousArrayStorageCy19ExtensionFoundation03AppD5PointVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1848BA260;
  *(inited + 32) = v6;
  v11 = inited + 32;
  *(inited + 40) = v31;
  *(inited + 56) = v33;
  v12 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC19ExtensionFoundation03AppE5PointV_Tt0g5Tf4g_n(inited);
  *(v0 + 136) = v12;
  swift_setDeallocating();
  outlined destroy of AppExtensionPoint(v11);
  *(v5 + 24) = v12;
  v34 = v4;
  *(v5 + 32) = v4;
  v13 = v3;
  *(v5 + 33) = v3;
  v14 = v2;
  *(v5 + 34) = v2;
  v32 = v1;
  *(v5 + 35) = v1;
  v15 = one-time initialization token for monitor;

  if (v15 != -1)
  {
    swift_once();
  }

  v16 = *(v0 + 96);
  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.monitor);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = *(v0 + 96);
    v21 = swift_slowAlloc();
    v22 = v12;
    v23 = swift_slowAlloc();
    v35 = v23;
    *v21 = 136315138;
    v24 = AppExtensionPoint.Monitor.debugDescription.getter();
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v35);

    *(v21 + 4) = v26;
    v14 = v2;
    _os_log_impl(&dword_1847D1000, v18, v19, "%s init", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v23);
    v27 = v23;
    v12 = v22;
    MEMORY[0x1865F56C0](v27, -1, -1);
    MEMORY[0x1865F56C0](v21, -1, -1);
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  *(v0 + 144) = static AppExtensionPoint.Monitor.ObserverController.shared;
  *(v0 + 80) = v12;
  *(v0 + 88) = v34;
  *(v0 + 89) = v13;
  *(v0 + 90) = v14;
  *(v0 + 91) = v32;

  v28 = swift_task_alloc();
  *(v0 + 152) = v28;
  *v28 = v0;
  v28[1] = AppExtensionPoint.Monitor.init(appExtensionPoint:options:);
  v29 = *(v0 + 96);

  return AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:)(v29, (v0 + 80));
}

{
  v2 = *(*v1 + 152);
  v3 = *v1;
  v3[20] = v0;

  if (v0)
  {
    v4 = v3[18];

    return MEMORY[0x1EEE6DFA0](AppExtensionPoint.Monitor.init(appExtensionPoint:options:), 0, 0);
  }

  else
  {
    v6 = v3[17];
    v5 = v3[18];

    v7 = v3[1];
    v8 = v3[12];

    return v7(v8);
  }
}

{
  v1 = v0[17];
  v2 = v0[12];

  v3 = v0[1];
  v4 = v0[20];

  return v3();
}

uint64_t AppExtensionPoint.Monitor.applyOptions(_:)(_BYTE *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  *(v1 + 32) = *a1;
  v4 = a1[3];
  *(v1 + 33) = v2;
  *(v1 + 34) = v3;
  *(v1 + 35) = v4;
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = AppExtensionPoint.Monitor.applyOptions(_:);

  return AppExtensionPoint.Monitor._applyOptions(_:)((v1 + 32));
}

uint64_t AppExtensionPoint.Monitor.applyOptions(_:)()
{
  v2 = *(*v1 + 16);
  v3 = *v1;
  *(v3 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](AppExtensionPoint.Monitor.applyOptions(_:), 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

{
  v1 = *(v0 + 24);
  return (*(v0 + 8))();
}

uint64_t AppExtensionPoint.Monitor._applyOptions(_:)(_BYTE *a1)
{
  *(v2 + 32) = v1;
  *(v2 + 28) = *a1;
  *(v2 + 29) = a1[1];
  *(v2 + 30) = a1[2];
  *(v2 + 31) = a1[3];
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static AppExtensionPoint.Monitor.ObserverController.shared;
  *(v2 + 40) = static AppExtensionPoint.Monitor.ObserverController.shared;

  return MEMORY[0x1EEE6DFA0](AppExtensionPoint.Monitor._applyOptions(_:), v3, 0);
}

uint64_t AppExtensionPoint.Monitor._applyOptions(_:)()
{
  v11 = v0;
  v1 = *(*(v0 + 32) + 16);

  os_unfair_lock_lock(v1 + 4);
  closure #1 in AppExtensionPoint.Monitor.identity.getterpartial apply(v10);
  v2 = *(v0 + 31);
  v3 = *(v0 + 30);
  v4 = *(v0 + 29);
  v5 = *(v0 + 28);
  os_unfair_lock_unlock(v1 + 4);

  v6 = v10[0];
  *(v0 + 48) = v10[0];
  *(v0 + 16) = v6;
  *(v0 + 24) = v5;
  *(v0 + 25) = v4;
  *(v0 + 26) = v3;
  *(v0 + 27) = v2;
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = AppExtensionPoint.Monitor._applyOptions(_:);
  v8 = *(v0 + 32);

  return AppExtensionPoint.Monitor.updateIdentity(to:)((v0 + 16));
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v9 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = *(v2 + 40);
    v5 = AppExtensionPoint.Monitor._applyOptions(_:);
  }

  else
  {
    v7 = *(v2 + 40);
    v6 = *(v2 + 48);

    v5 = AppExtensionPoint.Monitor._applyOptions(_:);
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[5];
  v2 = v0[6];

  v3 = v0[1];
  v4 = v0[8];

  return v3();
}

void AppExtensionPoint.Monitor.Identity.hash(into:)(__int128 *a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 9);
  v4 = *(v1 + 10);
  v5 = *(v1 + 11);
  specialized Set.hash(into:)(a1, *v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AppExtensionPoint.Monitor.Identity()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 10);
  v4 = *(v0 + 11);
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  Hasher.init(_seed:)();
  AppExtensionPoint.Monitor.Identity.hash(into:)(v6);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppExtensionPoint.Monitor.Identity()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 9);
  v3 = *(v0 + 10);
  v4 = *(v0 + 11);
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  Hasher.init(_seed:)();
  AppExtensionPoint.Monitor.Identity.hash(into:)(v6);
  return Hasher._finalize()();
}

uint64_t AppExtensionPoint.Monitor.updateIdentity(to:)(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 48) = v1;
  *(v2 + 56) = v3;
  *(v2 + 28) = *(a1 + 8);
  *(v2 + 29) = *(a1 + 9);
  *(v2 + 30) = *(a1 + 10);
  *(v2 + 31) = *(a1 + 11);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static AppExtensionPoint.Monitor.ObserverController.shared;
  *(v2 + 64) = static AppExtensionPoint.Monitor.ObserverController.shared;

  return MEMORY[0x1EEE6DFA0](AppExtensionPoint.Monitor.updateIdentity(to:), v4, 0);
}

uint64_t AppExtensionPoint.Monitor.updateIdentity(to:)()
{
  v30 = v0;
  if (one-time initialization token for monitor != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.monitor);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 31);
  v8 = *(v0 + 30);
  v9 = *(v0 + 29);
  v10 = *(v0 + 28);
  if (v6)
  {
    v11 = *(v0 + 48);
    v23 = *(v0 + 56);
    v12 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25[0] = v24;
    *v12 = 136315394;
    v13 = AppExtensionPoint.Monitor.debugDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v25);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2080;
    v25[1] = v23;
    v26 = v10;
    v27 = v9;
    v28 = v8;
    v29 = v7;
    v16 = AppExtensionPoint.Monitor.Identity.debugDescription.getter();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v25);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_1847D1000, v4, v5, "%s update identity: %s", v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865F56C0](v24, -1, -1);
    MEMORY[0x1865F56C0](v12, -1, -1);
  }

  *(v0 + 47) = v10;
  *(v0 + 46) = v9;
  *(v0 + 45) = v8;
  *(v0 + 44) = v7;
  v19 = *(v0 + 56);
  *(v0 + 72) = static AppExtensionPoint.Monitor.ObserverController.shared;
  *(v0 + 16) = v19;
  *(v0 + 24) = v10;
  *(v0 + 25) = v9;
  *(v0 + 26) = v8;
  *(v0 + 27) = v7;

  v20 = swift_task_alloc();
  *(v0 + 80) = v20;
  *v20 = v0;
  v20[1] = AppExtensionPoint.Monitor.updateIdentity(to:);
  v21 = *(v0 + 48);

  return AppExtensionPoint.Monitor.ObserverController.removeMonitor(_:for:)(v21, v0 + 16);
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  v9 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v5 = *(v2 + 64);
    v4 = *(v2 + 72);

    v6 = AppExtensionPoint.Monitor.updateIdentity(to:);
  }

  else
  {
    v5 = *(v2 + 64);
    v7 = *(v2 + 72);

    v6 = AppExtensionPoint.Monitor.updateIdentity(to:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v8 = *v1;
  *(*v1 + 112) = v0;

  v4 = *(v2 + 96);
  if (v0)
  {
    v5 = *(v2 + 64);

    v6 = AppExtensionPoint.Monitor.updateIdentity(to:);
  }

  else
  {
    v5 = *(v2 + 64);

    v6 = AppExtensionPoint.Monitor.updateIdentity(to:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v1 = *(v0 + 64);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = v0[8];

  v2 = v0[11];
  v3 = v0[1];

  return v3();
}

{
  v1 = v0[8];

  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

void AppExtensionPoint.Monitor.updateIdentity(to:)()
{
  v1 = *(v0 + 88);
  v2 = swift_task_alloc();
  v3.i32[0] = *(v0 + 44);
  v4 = *(*(v0 + 48) + 16);
  *(v2 + 16) = *(v0 + 48);
  v5 = vrev64_s16(*&vmovl_u8(v3));
  *(v2 + 32) = vuzp1_s8(v5, v5).u32[0];

  os_unfair_lock_lock(v4 + 4);
  partial apply for closure #1 in AppExtensionPoint.Monitor.identity.setter();
  if (v1)
  {

    os_unfair_lock_unlock(v4 + 4);
  }

  else
  {
    v7 = *(v0 + 56);
    v6.i32[0] = *(v0 + 44);
    v12 = vmovl_u8(v6).u64[0];
    os_unfair_lock_unlock(v4 + 4);

    v8 = static AppExtensionPoint.Monitor.ObserverController.shared;
    *(v0 + 32) = v7;
    *(v0 + 96) = v8;
    v9 = vrev64_s16(v12);
    *(v0 + 40) = vuzp1_s8(v9, v9).u32[0];

    v10 = swift_task_alloc();
    *(v0 + 104) = v10;
    *v10 = v0;
    v10[1] = AppExtensionPoint.Monitor.updateIdentity(to:);
    v11 = *(v0 + 48);

    AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:)(v11, (v0 + 32));
  }
}

uint64_t AppExtensionPoint.Monitor.Identity.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = *(v0 + 10);
  v5 = *(v0 + 11);
  _StringGuts.grow(_:)(21);
  MEMORY[0x1865F37A0](0x7469746E6564493CLL, 0xEF3A5045202D2079);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy19ExtensionFoundation03AppD5PointVG_SSs5NeverOTg504_s19d12Foundation03f2A5G51V7MonitorC8IdentityV16debugDescriptionSSvgSSACXEfU_Tf1cn_n(v1);
  v6 = MEMORY[0x1865F38E0]();
  v8 = v7;

  MEMORY[0x1865F37A0](v6, v8);

  MEMORY[0x1865F37A0](32, 0xE100000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865F37A0](62, 0xE100000000000000);
  return 0;
}

uint64_t AppExtensionPoint.Monitor.update(state:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  if (one-time initialization token for monitor != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.monitor);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    *v7 = 136315394;
    v9 = AppExtensionPoint.Monitor.debugDescription.getter();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = AppExtensionPoint.Monitor.State.debugDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v17);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1847D1000, v5, v6, "%s Updating state: %s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865F56C0](v8, -1, -1);
    MEMORY[0x1865F56C0](v7, -1, -1);
  }

  KeyPath = swift_getKeyPath();
  MEMORY[0x1EEE9AC00](KeyPath);
  lazy protocol witness table accessor for type AppExtensionPoint.Monitor and conformance AppExtensionPoint.Monitor(&lazy protocol witness table cache variable for type AppExtensionPoint.Monitor and conformance AppExtensionPoint.Monitor, 255, type metadata accessor for AppExtensionPoint.Monitor);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

unint64_t AppExtensionPoint.Monitor.State.debugDescription.getter()
{
  v1 = *v0;
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(23);

  v21 = 0xD000000000000014;
  v22 = 0x80000001848C28D0;
  v2 = *(v1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v20 = MEMORY[0x1E69E7CC0];

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v20;
    v4 = v1 + 32;
    do
    {
      outlined init with copy of AppExtensionIdentity(v4, v17);
      v5 = v18;
      v6 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v7 = (*(v6 + 64))(v5, v6);
      v9 = v8;
      outlined destroy of AppExtensionIdentity(v17);
      v20 = v3;
      v11 = *(v3 + 16);
      v10 = *(v3 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
        v3 = v20;
      }

      *(v3 + 16) = v11 + 1;
      v12 = v3 + 16 * v11;
      *(v12 + 32) = v7;
      *(v12 + 40) = v9;
      v4 += 40;
      --v2;
    }

    while (v2);
  }

  v13 = MEMORY[0x1865F38E0](v3, MEMORY[0x1E69E6158]);
  v15 = v14;

  MEMORY[0x1865F37A0](v13, v15);

  MEMORY[0x1865F37A0](62, 0xE100000000000000);
  return v21;
}

void closure #1 in AppExtensionPoint.Monitor.update(state:)(uint64_t a1)
{
  v2 = *(a1 + 40);
  os_unfair_lock_lock(v2 + 4);
  partial apply for closure #1 in closure #1 in AppExtensionPoint.Monitor.update(state:)(v3);
  os_unfair_lock_unlock(v2 + 4);
  if (v1)
  {
    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in AppExtensionPoint.Monitor.update(state:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v9 = a2[6];
  a2[6] = a3;
  a2[7] = a4;
  a2[8] = a5;
}

char *AppExtensionPoint.Monitor.deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  v4 = *(v0 + 6);

  v5 = OBJC_IVAR____TtCV19ExtensionFoundation17AppExtensionPoint7Monitor___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  return v0;
}

uint64_t AppExtensionPoint.Monitor.__deallocating_deinit()
{
  v1 = *(v0 + 2);

  v2 = *(v0 + 3);

  v3 = *(v0 + 5);

  v4 = *(v0 + 6);

  v5 = OBJC_IVAR____TtCV19ExtensionFoundation17AppExtensionPoint7Monitor___observationRegistrar;
  v6 = type metadata accessor for ObservationRegistrar();
  (*(*(v6 - 8) + 8))(&v0[v5], v6);
  v7 = *(*v0 + 48);
  v8 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

void AppExtensionPoint.Monitor.Options.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int AppExtensionPoint.Monitor.Options.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AppExtensionPoint.Monitor.Options()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

void NSCoder.decodeOptions(forKey:)(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X8>)
{
  v4 = v3;
  v8 = [objc_opt_self() sharedInstance];
  [v8 queryAllowsDuplicates];

  _StringGuts.grow(_:)(24);

  MEMORY[0x1865F37A0](0xD000000000000016, 0x80000001848C2A80);
  v9 = MEMORY[0x1865F36D0](a1, a2);

  v13 = [v4 decodeBoolForKey_];

  _StringGuts.grow(_:)(22);

  MEMORY[0x1865F37A0](0xD000000000000014, 0x80000001848C2AA0);
  v10 = MEMORY[0x1865F36D0](a1, a2);

  LOBYTE(v9) = [v4 decodeBoolForKey_];

  _StringGuts.grow(_:)(20);

  MEMORY[0x1865F37A0](0xD000000000000012, 0x80000001848C2AC0);
  v11 = MEMORY[0x1865F36D0](a1, a2);

  LOBYTE(v10) = [v4 decodeBoolForKey_];

  _StringGuts.grow(_:)(19);

  MEMORY[0x1865F37A0](0xD000000000000011, 0x80000001848C2AE0);
  v12 = MEMORY[0x1865F36D0](a1, a2);

  LOBYTE(v8) = [v4 decodeBoolForKey_];

  *a3 = v13;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v8;
}

void NSCoder.encode(_:forKey:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = a1[1];
  v11 = a1[3];
  v12 = a1[2];
  _StringGuts.grow(_:)(24);

  MEMORY[0x1865F37A0](0xD000000000000016, 0x80000001848C2A80);
  v8 = MEMORY[0x1865F36D0](a2, a3);

  [v3 encodeBool:v6 forKey:v8];

  _StringGuts.grow(_:)(22);

  MEMORY[0x1865F37A0](0xD000000000000014, 0x80000001848C2AA0);
  v9 = MEMORY[0x1865F36D0](a2, a3);

  [v3 encodeBool:v7 forKey:v9];

  _StringGuts.grow(_:)(20);

  MEMORY[0x1865F37A0](0xD000000000000012, 0x80000001848C2AC0);
  v10 = MEMORY[0x1865F36D0](a2, a3);

  [v3 encodeBool:v12 forKey:v10];

  _StringGuts.grow(_:)(19);

  MEMORY[0x1865F37A0](0xD000000000000011, 0x80000001848C2AE0);
  v13 = MEMORY[0x1865F36D0](a2, a3);

  [v3 encodeBool:v11 forKey:v13];
}

unint64_t AppExtensionPoint.debugDescription.getter()
{
  v1 = *(v0 + 16);
  _StringGuts.grow(_:)(24);

  v16 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v3 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x1865F3F40](v3, v1);
      }

      else
      {
        if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      v6 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v7 = [v4 identifier];
      v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v10 = v9;

      specialized Array.append<A>(contentsOf:)(v8, v10);
      ++v3;
      if (v6 == i)
      {
        v11 = v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v11 = MEMORY[0x1E69E7CC0];
LABEL_15:
  v12 = MEMORY[0x1865F38E0](v11, MEMORY[0x1E69E5EE0]);
  v14 = v13;

  MEMORY[0x1865F37A0](v12, v14);

  MEMORY[0x1865F37A0](62, 0xE100000000000000);
  return 0xD000000000000015;
}

uint64_t AppExtensionPoint.Monitor.Options.debugDescription.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  _StringGuts.grow(_:)(21);

  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v5);

  MEMORY[0x1865F37A0](41, 0xE100000000000000);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v6);

  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v7);

  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865F37A0](v8);

  MEMORY[0x1865F37A0](62, 0xE100000000000000);
  return 0x736E6F6974704F3CLL;
}

uint64_t AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:)(uint64_t a1, uint64_t *a2)
{
  *(v3 + 488) = a1;
  *(v3 + 496) = v2;
  v5 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR) - 8) + 64) + 15;
  v6 = swift_task_alloc();
  v7 = *a2;
  *(v3 + 504) = v6;
  *(v3 + 512) = v7;
  *(v3 + 633) = *(a2 + 8);
  *(v3 + 634) = *(a2 + 9);
  *(v3 + 635) = *(a2 + 10);
  *(v3 + 636) = *(a2 + 11);

  return MEMORY[0x1EEE6DFA0](AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:), v2, 0);
}

uint64_t AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:)()
{
  v48 = v0;
  if (one-time initialization token for monitor != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 512);
  v2 = *(v0 + 488);
  v3 = type metadata accessor for Logger();
  *(v0 + 520) = __swift_project_value_buffer(v3, static Logger.monitor);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v44 = *(v0 + 636);
    v6 = *(v0 + 635);
    v7 = *(v0 + 634);
    v8 = *(v0 + 633);
    v9 = *(v0 + 512);
    v45 = *(v0 + 488);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v46 = v11;
    *v10 = 134218242;
    Hasher.init(_seed:)();
    specialized Set.hash(into:)(v47, v9);
    Hasher._combine(_:)(v8);
    Hasher._combine(_:)(v7);
    Hasher._combine(_:)(v6);
    Hasher._combine(_:)(v44);
    *(v10 + 4) = Hasher._finalize()();

    *(v10 + 12) = 2080;
    v12 = AppExtensionPoint.Monitor.debugDescription.getter();
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v46);

    *(v10 + 14) = v14;
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x1865F56C0](v11, -1, -1);
    MEMORY[0x1865F56C0](v10, -1, -1);
  }

  else
  {
    v15 = *(v0 + 512);
  }

  v16 = *(v0 + 496);
  swift_beginAccess();
  v17 = *(v16 + 112);
  if (*(v17 + 16))
  {
    v18 = *(v0 + 512);
    if (*(v0 + 634))
    {
      v19 = 256;
    }

    else
    {
      v19 = 0;
    }

    if (*(v0 + 635))
    {
      v20 = 0x10000;
    }

    else
    {
      v20 = 0;
    }

    if (*(v0 + 636))
    {
      v21 = 0x1000000;
    }

    else
    {
      v21 = 0;
    }

    v22 = v20 | v21;
    v23 = v19 | *(v0 + 633);

    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v22 | v23);
    if (v25)
    {
      v26 = (*(v17 + 56) + 40 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = v26[2];
      v30 = v26[3];
      v31 = v26[4];

      *(v0 + 584) = v31;
      *(v0 + 576) = v30;
      *(v0 + 568) = v29;
      *(v0 + 560) = v28;
      *(v0 + 552) = v27;
      *(v0 + 544) = v31;
      v32 = one-time initialization token for shared;

      if (v32 != -1)
      {
        swift_once();
      }

      v33 = static AppExtensionPoint.Monitor.ObserverController.shared;
      v34 = AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:);
      goto LABEL_24;
    }
  }

  v35 = *(v0 + 636);
  v36 = *(v0 + 635);
  v37 = *(v0 + 634);
  v38 = *(v0 + 633);
  v39 = *(v0 + 512);
  AppExtensionPoint.Monitor.ObserverController.updateSource.getter((v0 + 136));
  v40 = *(v0 + 160);
  v41 = *(v0 + 168);
  __swift_project_boxed_opaque_existential_1((v0 + 136), v40);
  *&v47[0] = v39;
  BYTE8(v47[0]) = v38;
  BYTE9(v47[0]) = v37;
  BYTE10(v47[0]) = v36;
  BYTE11(v47[0]) = v35;
  *(v0 + 600) = 0u;
  *(v0 + 616) = 0u;
  *(v0 + 632) = 1;
  (*(v41 + 8))(v47, v0 + 600, v40, v41);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 136));
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v33 = *(v0 + 496);
  v42 = MEMORY[0x1E69E7CC0];
  *(v0 + 176) = MEMORY[0x1E69E7CC0];
  *(v0 + 184) = v42;
  *(v0 + 200) = 0;
  *(v0 + 208) = 0;
  *(v0 + 192) = 0;
  v34 = AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:);
LABEL_24:

  return MEMORY[0x1EEE6DFA0](v34, v33, 0);
}

{
  v2 = v0[15];
  v1 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v2);
  v3 = *(MEMORY[0x1E69E8740] + 4);
  v4 = swift_task_alloc();
  v0[66] = v4;
  *v4 = v0;
  v4[1] = AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:);

  return MEMORY[0x1EEE6DB20](v0 + 45, &async function pointer to closure #1 in AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:), 0, v2, v1);
}

{
  v2 = *v1;
  v3 = *(*v1 + 528);
  v4 = *v1;
  *(*v1 + 536) = v0;

  v5 = *(v2 + 496);
  if (v0)
  {
    v6 = AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:);
  }

  else
  {
    v6 = AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:);
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

{
  v51 = v0;
  v1 = *(v0 + 520);
  v2 = *(v0 + 512);
  v3 = *(v0 + 376);
  v4 = *(v0 + 360);
  if (v4)
  {
    v5 = *(v0 + 360);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  if (v4)
  {
    v6 = *(v0 + 368);
  }

  else
  {
    v6 = 0;
  }

  if (v4)
  {
    v7 = *(v0 + 376);
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v0 + 184);

  *(v0 + 184) = v5;
  *(v0 + 192) = v6;
  *(v0 + 200) = v7;

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v47 = *(v0 + 636);
    v11 = *(v0 + 635);
    v12 = *(v0 + 634);
    v13 = *(v0 + 633);
    v14 = *(v0 + 512);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v48 = v16;
    *v15 = 134218242;
    Hasher.init(_seed:)();
    specialized Set.hash(into:)(&v49, v14);
    Hasher._combine(_:)(v13);
    Hasher._combine(_:)(v12);
    Hasher._combine(_:)(v11);
    Hasher._combine(_:)(v47);
    *(v15 + 4) = Hasher._finalize()();

    *(v15 + 12) = 2080;
    swift_beginAccess();
    v49 = *(v0 + 184);
    v50 = *(v0 + 192);
    v17 = AppExtensionPoint.Monitor.State.debugDescription.getter();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v48);

    *(v15 + 14) = v19;
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x1865F56C0](v16, -1, -1);
    MEMORY[0x1865F56C0](v15, -1, -1);
  }

  else
  {
    v20 = *(v0 + 512);
  }

  v21 = *(v0 + 636);
  v22 = *(v0 + 635);
  v23 = *(v0 + 634);
  v24 = *(v0 + 633);
  v25 = *(v0 + 504);
  v26 = *(v0 + 512);
  v27 = *(v0 + 496);
  v28 = type metadata accessor for TaskPriority();
  (*(*(v28 - 8) + 56))(v25, 1, 1, v28);
  outlined init with copy of _InnerAppExtensionIdentity(v0 + 96, v0 + 216);
  v30 = lazy protocol witness table accessor for type AppExtensionPoint.Monitor and conformance AppExtensionPoint.Monitor(&lazy protocol witness table cache variable for type AppExtensionPoint.Monitor.ObserverController and conformance AppExtensionPoint.Monitor.ObserverController, v29, type metadata accessor for AppExtensionPoint.Monitor.ObserverController);
  v31 = swift_allocObject();
  *(v31 + 16) = v27;
  *(v31 + 24) = v30;
  outlined init with take of _InnerAppExtensionIdentity((v0 + 216), v31 + 32);
  *(v31 + 72) = v26;
  *(v31 + 80) = v24;
  *(v31 + 81) = v23;
  *(v31 + 82) = v22;
  *(v31 + 83) = v21;
  *(v31 + 88) = v27;
  swift_retain_n();

  v32 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v25, &async function pointer to partial apply for closure #2 in AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:), v31);
  swift_beginAccess();
  *(v0 + 208) = v32;
  v33 = *(v0 + 192);
  *(v0 + 16) = *(v0 + 176);
  *(v0 + 32) = v33;
  *(v0 + 48) = *(v0 + 208);
  swift_beginAccess();

  outlined init with copy of AppExtensionPoint.Monitor.ObserverController.Observer(v0 + 16, v0 + 256);
  v34 = *(v27 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v49 = *(v27 + 112);
  *(v27 + 112) = 0x8000000000000000;
  if (v23)
  {
    v36 = 256;
  }

  else
  {
    v36 = 0;
  }

  if (v22)
  {
    v37 = 0x10000;
  }

  else
  {
    v37 = 0;
  }

  if (v21)
  {
    v38 = 0x1000000;
  }

  else
  {
    v38 = 0;
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v0 + 16, v26, v37 | v38 | v36 | v24, isUniquelyReferenced_nonNull_native);

  *(v27 + 112) = v49;
  swift_endAccess();
  v40 = *(v0 + 176);
  v39 = *(v0 + 184);
  v41 = *(v0 + 192);
  v42 = *(v0 + 200);
  v43 = *(v0 + 208);
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  *(v0 + 584) = v43;
  *(v0 + 576) = v42;
  *(v0 + 568) = v41;
  *(v0 + 560) = v39;
  *(v0 + 552) = v40;
  *(v0 + 544) = v43;
  v44 = one-time initialization token for shared;

  if (v44 != -1)
  {
    swift_once();
  }

  v45 = static AppExtensionPoint.Monitor.ObserverController.shared;

  return MEMORY[0x1EEE6DFA0](AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:), v45, 0);
}

{
  v14 = v0;
  v1 = v0[69];
  v2 = v0[61];
  swift_weakInit();
  swift_weakAssign();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = v0[69];
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4[2] + 1, 1, v4);
  }

  v6 = v4[2];
  v5 = v4[3];
  if (v6 >= v5 >> 1)
  {
    v4 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v5 > 1), v6 + 1, 1, v4);
  }

  v0[74] = v4;
  v7 = v0[72];
  v8 = v0[71];
  v9 = v0[70];
  v10 = v0[61];
  v11 = v0[62];
  v4[2] = v6 + 1;
  outlined init with take of AppExtensionPoint.Monitor.ObserverController.WeakMonitor((v0 + 60), &v4[v6 + 4]);
  v13[0] = v9;
  v13[1] = v8;
  v13[2] = v7;

  AppExtensionPoint.Monitor.update(state:)(v13);

  return MEMORY[0x1EEE6DFA0](AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:), v11, 0);
}

{
  v1 = *(v0 + 584);
  v2 = *(v0 + 576);
  v3 = *(v0 + 568);
  v4 = *(v0 + 560);
  v18 = *(v0 + 552);
  v5 = *(v0 + 635);
  v6 = *(v0 + 634);
  v16 = *(v0 + 636);
  v17 = *(v0 + 633);
  v7 = *(v0 + 512);
  v19 = *(v0 + 504);
  v20 = *(v0 + 544);
  v8 = *(v0 + 496);
  *(v0 + 56) = *(v0 + 592);
  *(v0 + 64) = v4;
  *(v0 + 72) = v3;
  *(v0 + 80) = v2;
  *(v0 + 88) = v1;
  swift_beginAccess();

  outlined init with copy of AppExtensionPoint.Monitor.ObserverController.Observer(v0 + 56, v0 + 296);
  v9 = *(v8 + 112);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *(v8 + 112);
  *(v8 + 112) = 0x8000000000000000;
  if (v6)
  {
    v11 = 256;
  }

  else
  {
    v11 = 0;
  }

  if (v5)
  {
    v12 = 0x10000;
  }

  else
  {
    v12 = 0;
  }

  if (v16)
  {
    v13 = 0x1000000;
  }

  else
  {
    v13 = 0;
  }

  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v0 + 56, v7, v12 | v13 | v11 | v17, isUniquelyReferenced_nonNull_native);

  *(v8 + 112) = v21;
  swift_endAccess();
  outlined consume of AppExtensionPoint.Monitor.ObserverController.Observer?(v18);

  v14 = *(v0 + 8);

  return v14();
}

{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[26];

  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 12);
  v4 = v0[67];
  v5 = v0[63];

  v6 = v0[1];

  return v6();
}

uint64_t closure #2 in AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  *(v7 + 160) = a5;
  *(v7 + 168) = a7;
  *(v7 + 140) = a6;
  *(v7 + 152) = a4;
  return MEMORY[0x1EEE6DFA0](closure #2 in AppExtensionPoint.Monitor.ObserverController.addMonitor(_:for:), a7, 0);
}