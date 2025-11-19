id closure #1 in NSFileHandle.write<A>(contentsOf:)(id result, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v15 = xmmword_18121B8E0;
    v4 = specialized Data.init(bytesNoCopy:count:deallocator:)(result, a2 - result, &v15);
    v6 = v5 >> 62;
    if ((v5 >> 62) > 1)
    {
      if (v6 != 2)
      {
        v7 = v4;
        v8 = v5;
        v9 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_11:
        v12 = v9;
        outlined consume of Data._Representation(v7, v8);
        *&v15 = 0;
        v13 = [a3 writeData:v12 error:&v15];

        if (v13)
        {
          return v15;
        }

        if (v15)
        {
          v15;
          return swift_willThrow();
        }

        if (one-time initialization token for _nilObjCError == -1)
        {
LABEL_16:
          v14 = _nilObjCError;
          return swift_willThrow();
        }

LABEL_20:
        swift_once();
        goto LABEL_16;
      }

      v10 = *(v4 + 16);
      v11 = *(v4 + 24);
      v7 = v4;
    }

    else
    {
      if (!v6)
      {
        *&v15 = v4;
        WORD4(v15) = v5;
        BYTE10(v15) = BYTE2(v5);
        BYTE11(v15) = BYTE3(v5);
        BYTE12(v15) = BYTE4(v5);
        BYTE13(v15) = BYTE5(v5);
        v7 = v4;
        v8 = v5;
        v9 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v15 length:BYTE6(v5)];
        goto LABEL_11;
      }

      v10 = v4;
      v11 = v4 >> 32;
      if (v4 >> 32 < v4)
      {
        __break(1u);
        goto LABEL_20;
      }

      v7 = v4;
    }

    v8 = v5;
    v9 = __DataStorage.bridgedReference(_:)(v10, v11);
    goto LABEL_11;
  }

  return result;
}

NSError *closure #3 in NSFileHandle.write<A>(contentsOf:)(NSError *result, uint64_t *a2, id a3, NSError **a4)
{
  reserved = result->_reserved;
  if (reserved < 0xFFFFFFFF80000000)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (reserved > 0x7FFFFFFF)
  {
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
    goto LABEL_38;
  }

  if (*a2 < 1)
  {
    return result;
  }

  isa = result->super.isa;
  do
  {
    while (1)
    {
      result = writev([a3 fileDescriptor], isa, reserved);
      if ((result & 0x8000000000000000) != 0)
      {
        break;
      }

      v9 = *a2 - result;
      if (__OFSUB__(*a2, result))
      {
        goto LABEL_33;
      }

      *a2 = v9;
      if (v9 >= 1)
      {
        if ((reserved & 0x80000000) != 0)
        {
          goto LABEL_34;
        }

        v10 = 0;
        v11 = reserved;
        v12 = isa - 1;
        v13 = reserved;
        v14 = 0x7FFFFFFFLL;
        v15 = 1;
        while (v13)
        {
          if (!v14)
          {
            __break(1u);
LABEL_30:
            __break(1u);
            goto LABEL_31;
          }

          if (!isa)
          {
            goto LABEL_37;
          }

          v16 = v10;
          iov_len = v12[1].iov_len;
          v18 = __OFADD__(v16, iov_len);
          v10 = (v16 + iov_len);
          if (v18)
          {
            goto LABEL_30;
          }

          --v15;
          --v14;
          ++v12;
          --v13;
          if (result < v10)
          {
            if (!v12->iov_base)
            {
              goto LABEL_39;
            }

            v18 = __OFSUB__(result, v16);
            v19 = (result - v16);
            if (v18)
            {
              goto LABEL_36;
            }

            v11 = -v15;
            v12->iov_base = v12->iov_base + v19;
            break;
          }
        }

        if (v11 >> 31)
        {
          goto LABEL_35;
        }

        LODWORD(reserved) = reserved - v11;
        v20 = &isa[v11];
        isa = isa ? v20 : 0;
        if (*a2 > 0)
        {
          continue;
        }
      }

      return result;
    }
  }

  while (MEMORY[0x1865CA7A0]() == 35);
  v21 = MEMORY[0x1865CA7A0]();
  result = _NSErrorWithFilePathAndErrno(v21, 0, 0);
  if (result)
  {
    v22 = result;
    result = swift_willThrow();
    *a4 = v22;
    return result;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, int64_t a2, char a3, char *a4)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation23_XMLPlistEncodingFormatV9ReferenceOGMd);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCys8DurationV10FoundationE16UnitsFormatStyleV4UnitVGMd);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10Foundation4DateV21ComponentsFormatStyleV5FieldV6OptionOGMd);
}

uint64_t outlined init with copy of (AnyHashable, Any)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type DispatchData and conformance DispatchData()
{
  result = lazy protocol witness table cache variable for type DispatchData and conformance DispatchData;
  if (!lazy protocol witness table cache variable for type DispatchData and conformance DispatchData)
  {
    type metadata accessor for DispatchData();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchData and conformance DispatchData);
  }

  return result;
}

uint64_t __CharacterSetStorage.mutableCopy()()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  result = CFCharacterSetCreateMutableCopy(0, v2);
  v4 = result;
  if (v1)
  {
    if (result)
    {
LABEL_5:

      result = swift_allocObject();
      *(result + 16) = v4;
      *(result + 24) = 1;
      return result;
    }

    __break(1u);
  }

  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

CFDataRef __CharacterSetStorage.bitmapRepresentation.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  result = CFCharacterSetCreateBitmapRepresentation(0, v2);
  v4 = result;
  if (v1)
  {
    if (result)
    {
LABEL_5:
      v5 = specialized Data.init(referencing:)(result);

      return v5;
    }

    __break(1u);
  }

  if (result)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

void __CharacterSetStorage.insert(charactersIn:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = *(v3 + 16);
  if (*(v3 + 24))
  {
    String._bridgeToObjectiveCImpl()();
    v6 = v5;
    a3();

    swift_unknownObjectRelease();
  }

  else
  {
    v7 = v5;
    MutableCopy = CFCharacterSetCreateMutableCopy(0, v7);
    if (MutableCopy)
    {
      v9 = MutableCopy;
      String._bridgeToObjectiveCImpl()();
      v10 = v9;
      a3();

      swift_unknownObjectRelease();
      v11 = *(v3 + 16);
      *(v3 + 16) = v9;
      *(v3 + 24) = 1;
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t __CharacterSetStorage.remove(_:)(UTF32Char theChar)
{
  IsLongCharacterMember = CFCharacterSetIsLongCharacterMember(*(v1 + 16), theChar);
  __CharacterSetStorage.insert(charactersIn:)(theChar | (theChar << 32), MEMORY[0x1E695D750]);
  if (IsLongCharacterMember)
  {
    v4 = theChar;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((IsLongCharacterMember == 0) << 32);
}

void __CharacterSetStorage.formUnion(_:)(uint64_t a1, void (*a2)(void *, uint64_t))
{
  v5 = *(v2 + 16);
  if (*(v2 + 24))
  {
    v6 = *(a1 + 16);

    a2(v5, v6);
  }

  else
  {
    v7 = v5;
    MutableCopy = CFCharacterSetCreateMutableCopy(0, v7);
    if (MutableCopy)
    {
      v9 = MutableCopy;
      v10 = *(a1 + 16);
      a2(v9, v10);

      v11 = *(v2 + 16);
      *(v2 + 16) = v9;
      *(v2 + 24) = 1;
    }

    else
    {
      __break(1u);
    }
  }
}

void __CharacterSetStorage.subtract(_:)(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 16);
  InvertedSet = CFCharacterSetCreateInvertedSet(0, v3);
  v5 = InvertedSet;
  if (v2)
  {
    if (InvertedSet)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (!InvertedSet)
  {
    __break(1u);
    goto LABEL_14;
  }

LABEL_5:

  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 0;
  v7 = *(v1 + 24);
  v8 = *(v1 + 16);
  if (v7)
  {
    v9 = v5;
    CFCharacterSetIntersect(v8, v9);

    return;
  }

  MutableCopy = CFCharacterSetCreateMutableCopy(0, v8);
  if (!MutableCopy)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v11 = MutableCopy;
  v12 = *(v6 + 16);
  CFCharacterSetIntersect(v11, v12);

  v13 = *(v1 + 16);
  *(v1 + 16) = v11;
  *(v1 + 24) = 1;
}

CFCharacterSetRef __CharacterSetStorage.symmetricDifference(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __CharacterSetStorage.union(_:)(a1, MEMORY[0x1E695D760], &v10);
  __CharacterSetStorage.union(_:)(a1, MEMORY[0x1E695D748], &v9);
  v4 = *(v9 + 24);
  v5 = *(v9 + 16);
  result = CFCharacterSetCreateInvertedSet(0, v5);
  v7 = result;
  if (v4)
  {
    if (result)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_5:

  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = 0;
  __CharacterSetStorage.union(_:)(v8, MEMORY[0x1E695D748], a2);
}

CFCharacterSetRef CharacterSet.subtracting(_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 16);
  result = CFCharacterSetCreateInvertedSet(0, v4);
  v6 = result;
  if (v3)
  {
    if (result)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if (!result)
  {
    __break(1u);
    return result;
  }

LABEL_5:

  type metadata accessor for __CharacterSetStorage();
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  __CharacterSetStorage.union(_:)(v7, MEMORY[0x1E695D748], a2);
}

id __CharacterSetStorage.description.getter()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 16);
  result = CFCopyDescription(v2);
  v4 = result;
  if ((v1 & 1) == 0)
  {
    if (result)
    {
      isTaggedPointer = _objc_isTaggedPointer(result);
      v10 = v4;
      v7 = v10;
      if (isTaggedPointer)
      {
        TaggedPointerTag = _objc_getTaggedPointerTag(v10);
        switch(TaggedPointerTag)
        {
          case 0:
LABEL_21:
            _CFIndirectTaggedPointerStringGetContents();
            result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v15)
            {
              [v7 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              v11 = v18;
LABEL_32:

              goto LABEL_33;
            }

LABEL_30:
            v11 = result;

LABEL_33:
            return v11;
          case 0x16:
            goto LABEL_28;
          case 2:
LABEL_13:
            MEMORY[0x1EEE9AC00](TaggedPointerTag);
            v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

            return v11;
        }
      }

      if (__CFStringIsCF())
      {
        v11 = 0;
        goto LABEL_20;
      }

      goto LABEL_18;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_36;
  }

  v5 = _objc_isTaggedPointer(result);
  v6 = v4;
  v7 = v6;
  if (!v5)
  {
    goto LABEL_14;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v6);
  if (!TaggedPointerTag)
  {
    goto LABEL_21;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      goto LABEL_13;
    }

LABEL_14:
    if (__CFStringIsCF())
    {
      v11 = 0;
LABEL_20:

      return v11;
    }

LABEL_18:
    v12 = v7;
    v13 = String.init(_nativeStorage:)();
    if (v14)
    {
      v11 = v13;

      return v11;
    }

    if (![v12 length])
    {

      return 0;
    }

    v11 = String.init(_cocoaString:)();
    goto LABEL_32;
  }

  result = [v7 UTF8String];
  if (!result)
  {
    goto LABEL_37;
  }

  result = String.init(utf8String:)(result);
  if (v16)
  {
    goto LABEL_30;
  }

  __break(1u);
LABEL_28:
  result = [v7 UTF8String];
  if (!result)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  result = String.init(utf8String:)(result);
  if (v17)
  {
    goto LABEL_30;
  }

LABEL_39:
  __break(1u);
  return result;
}

Swift::Int __CharacterSetStorage.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 16);
  v2 = CFHash(v1);
  MEMORY[0x1865CD060](v2);

  return Hasher._finalize()();
}

CFIndex CharacterSet.init(charactersIn:)@<X0>(CFRange theRange@<0:X0, 8:X1>, CFIndex *a2@<X8>)
{
  if (HIDWORD(theRange.location) < LODWORD(theRange.location))
  {
    __break(1u);
    goto LABEL_5;
  }

  theRange.length = LODWORD(theRange.location);
  v3 = (HIDWORD(theRange.location) - LODWORD(theRange.location));
  theRange.location = CFCharacterSetCreateWithCharactersInRange(0, *&theRange.length);
  if (!theRange.location)
  {
LABEL_5:
    __break(1u);
    return theRange.location;
  }

  location = theRange.location;
  type metadata accessor for __CharacterSetStorage();
  theRange.location = swift_allocObject();
  *(theRange.location + 16) = location;
  *(theRange.location + 24) = 0;
  *a2 = theRange.location;
  return theRange.location;
}

{
  v3 = HIDWORD(theRange.location) - LODWORD(theRange.location);
  if (HIDWORD(theRange.location) < LODWORD(theRange.location))
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v3 == -1)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v6.location = LODWORD(theRange.location);
  v6.length = (v3 + 1);
  theRange.location = CFCharacterSetCreateWithCharactersInRange(0, v6);
  if (!theRange.location)
  {
LABEL_7:
    __break(1u);
    return theRange.location;
  }

  location = theRange.location;
  type metadata accessor for __CharacterSetStorage();
  theRange.location = swift_allocObject();
  *(theRange.location + 16) = location;
  *(theRange.location + 24) = 0;
  *a2 = theRange.location;
  return theRange.location;
}

uint64_t CharacterSet.init(bitmapRepresentation:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v11 = a1;
      v12 = a2;
      v13 = BYTE2(a2);
      v14 = BYTE3(a2);
      v15 = BYTE4(a2);
      v16 = BYTE5(a2);
      v5 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v11 length:BYTE6(a2)];
      goto LABEL_9;
    }

    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
LABEL_12:
      __break(1u);
    }

    goto LABEL_7;
  }

  if (v4 == 2)
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
LABEL_7:
    v5 = __DataStorage.bridgedReference(_:)(v6, v7);
    goto LABEL_9;
  }

  v5 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_9:
  v8 = v5;
  v9 = CFCharacterSetCreateWithBitmapRepresentation(0, v5);

  if (!v9)
  {
    goto LABEL_12;
  }

  type metadata accessor for __CharacterSetStorage();
  result = swift_allocObject();
  *(result + 16) = v9;
  *(result + 24) = 0;
  *a3 = result;
  return result;
}

void CharacterSet.init(contentsOfFile:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v6 = type metadata accessor for _BridgedURL();
    v7 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v6 = type metadata accessor for _SwiftURL();
    v7 = &protocol witness table for _SwiftURL;
  }

  v8 = v7[8];

  v8(a1, a2, v6, v7);
  v9 = (v7[56])(v6, v7);
  v11 = v10;
  swift_unknownObjectRelease();
  v22 = v9;
  v23 = v11;
  v12 = specialized Data.init(contentsOf:options:)(&v22, 1);
  v14 = v13;
  swift_unknownObjectRelease();
  v15 = v14 >> 62;
  if ((v14 >> 62) <= 1)
  {
    if (!v15)
    {
      v22 = v12;
      LOWORD(v23) = v14;
      BYTE2(v23) = BYTE2(v14);
      BYTE3(v23) = BYTE3(v14);
      BYTE4(v23) = BYTE4(v14);
      BYTE5(v23) = BYTE5(v14);
      v16 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v22 length:BYTE6(v14)];
      goto LABEL_15;
    }

    v17 = v12;
    v18 = v12 >> 32;
    if (v12 >> 32 < v12)
    {
      __break(1u);
    }

    goto LABEL_13;
  }

  if (v15 == 2)
  {
    v17 = *(v12 + 16);
    v18 = *(v12 + 24);
LABEL_13:
    v16 = __DataStorage.bridgedReference(_:)(v17, v18);
    goto LABEL_15;
  }

  v16 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_15:
  v19 = v16;
  v20 = CFCharacterSetCreateWithBitmapRepresentation(0, v16);

  if (v20)
  {
    outlined consume of Data._Representation(v12, v14);
    type metadata accessor for __CharacterSetStorage();
    v21 = swift_allocObject();
    *(v21 + 16) = v20;
    *(v21 + 24) = 0;
    *a3 = v21;
  }

  else
  {
    __break(1u);
  }
}

uint64_t CharacterSet.remove(charactersIn:)(uint64_t a1)
{
  return CharacterSet.insert(charactersIn:)(a1, MEMORY[0x1E695D750], __CharacterSetStorage.insert(charactersIn:));
}

{
  return CharacterSet.insert(charactersIn:)(a1, MEMORY[0x1E695D750], __CharacterSetStorage.insert(charactersIn:));
}

void CharacterSet.insert(charactersIn:)(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = v3;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = __CharacterSetStorage.mutableCopy()();

    *v5 = v8;
  }

  __CharacterSetStorage.insert(charactersIn:)(a1, a2, a3);
}

Swift::Void __swiftcall CharacterSet.invert()()
{
  v1 = v0;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v3 = *v0;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v3 = __CharacterSetStorage.mutableCopy()();

    *v1 = v3;
  }

  v4 = *(v3 + 16);
  if (*(v3 + 24))
  {

    CFCharacterSetInvert(v4);
  }

  else
  {
    v5 = v4;
    MutableCopy = CFCharacterSetCreateMutableCopy(0, v5);
    if (MutableCopy)
    {
      v7 = MutableCopy;
      v8 = MutableCopy;
      CFCharacterSetInvert(v8);

      v9 = *(v3 + 16);
      *(v3 + 16) = v7;
      *(v3 + 24) = 1;
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t CharacterSet.insert(_:)(unsigned int a1)
{
  v2 = v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = __CharacterSetStorage.mutableCopy()();

    *v2 = v4;
  }

  __CharacterSetStorage.insert(charactersIn:)(a1 | (a1 << 32), MEMORY[0x1E695D738]);
  return (a1 << 32) | 1;
}

uint64_t CharacterSet.update(with:)(unsigned int a1)
{
  v2 = v1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = __CharacterSetStorage.mutableCopy()();

    *v2 = v4;
  }

  __CharacterSetStorage.insert(charactersIn:)(a1 | (a1 << 32), MEMORY[0x1E695D738]);
  return a1;
}

void CharacterSet.formUnion(_:)(uint64_t *a1, void (*a2)(void *, uint64_t))
{
  v4 = v2;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = __CharacterSetStorage.mutableCopy()();

    *v4 = v6;
  }

  __CharacterSetStorage.formUnion(_:)(v5, a2);
}

void CharacterSet.subtract(_:)(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = __CharacterSetStorage.mutableCopy()();

    *v2 = v4;
  }

  __CharacterSetStorage.subtract(_:)(v3);
}

uint64_t CharacterSet.formSymmetricDifference(_:)(uint64_t *a1)
{
  __CharacterSetStorage.symmetricDifference(_:)(*a1, &v3);

  *v1 = v3;
  return result;
}

void CharacterSet.hash(into:)()
{
  v2 = *(*v0 + 16);
  v1 = CFHash(v2);
  MEMORY[0x1865CD060](v1);
}

Swift::Int CharacterSet.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  v3 = CFHash(v2);
  MEMORY[0x1865CD060](v3);

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance __CharacterSetStorage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *(v1 + 16);
  v3 = CFHash(v2);
  MEMORY[0x1865CD060](v3);

  return Hasher._finalize()();
}

uint64_t protocol witness for SetAlgebra.union(_:) in conformance CharacterSet@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  __CharacterSetStorage.union(_:)(*a1, MEMORY[0x1E695D760], a2);
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance CharacterSet@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  __CharacterSetStorage.union(_:)(*a1, MEMORY[0x1E695D748], a2);
}

uint64_t protocol witness for SetAlgebra.symmetricDifference(_:) in conformance CharacterSet@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  __CharacterSetStorage.symmetricDifference(_:)(*a1, a2);
}

unint64_t protocol witness for SetAlgebra.remove(_:) in conformance CharacterSet@<X0>(UTF32Char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = __CharacterSetStorage.mutableCopy()();

    *v3 = v6;
  }

  result = __CharacterSetStorage.remove(_:)(v5);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

void protocol witness for SetAlgebra.update(with:) in conformance CharacterSet(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = __CharacterSetStorage.mutableCopy()();

    *v3 = v6;
  }

  __CharacterSetStorage.insert(charactersIn:)(v5 | (v5 << 32), MEMORY[0x1E695D738]);
  *a2 = v5;
  *(a2 + 4) = 0;
}

uint64_t protocol witness for SetAlgebra.formUnion(_:) in conformance CharacterSet(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = __CharacterSetStorage.mutableCopy()();

    *v2 = v4;
  }

  __CharacterSetStorage.formUnion(_:)(v3, MEMORY[0x1E695D760]);
}

void protocol witness for SetAlgebra.formIntersection(_:) in conformance CharacterSet(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = __CharacterSetStorage.mutableCopy()();

    *v2 = v4;
  }

  __CharacterSetStorage.formUnion(_:)(v3, MEMORY[0x1E695D748]);
}

uint64_t protocol witness for SetAlgebra.formSymmetricDifference(_:) in conformance CharacterSet(uint64_t *a1)
{
  __CharacterSetStorage.symmetricDifference(_:)(*a1, &v3);

  *v1 = v3;
}

uint64_t protocol witness for SetAlgebra.subtracting(_:) in conformance CharacterSet@<X0>(uint64_t *a1@<X8>)
{
  __CharacterSetStorage.inverted.getter(&v3);
  __CharacterSetStorage.union(_:)(v3, MEMORY[0x1E695D748], a1);
}

uint64_t protocol witness for SetAlgebra.isSubset(of:) in conformance CharacterSet(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;

  __CharacterSetStorage.union(_:)(v2, MEMORY[0x1E695D748], &v5);

  LOBYTE(v3) = specialized static __CharacterSetStorage.== infix(_:_:)(v5, v3);

  return v3 & 1;
}

CFMutableCharacterSetRef specialized SetAlgebra.isDisjoint(with:)(uint64_t a1)
{

  __CharacterSetStorage.union(_:)(a1, MEMORY[0x1E695D748], &v6);

  v2 = v6;
  result = CFCharacterSetCreateMutable(0);
  if (result)
  {
    v4 = result;
    type metadata accessor for __CharacterSetStorage();
    inited = swift_initStackObject();
    *(inited + 16) = v4;
    *(inited + 24) = 1;
    LODWORD(v4) = CFEqual(*(v2 + 16), v4);

    return (v4 != 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

CFMutableCharacterSetRef specialized SetAlgebra.isEmpty.getter(uint64_t a1)
{
  result = CFCharacterSetCreateMutable(0);
  if (result)
  {
    v3 = result;
    type metadata accessor for __CharacterSetStorage();
    inited = swift_initStackObject();
    *(inited + 16) = v3;
    *(inited + 24) = 1;
    v5 = CFEqual(*(a1 + 16), v3);

    return (v5 != 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void protocol witness for SetAlgebra.subtract(_:) in conformance CharacterSet(uint64_t *a1)
{
  v2 = v1;
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = __CharacterSetStorage.mutableCopy()();

    *v2 = v4;
  }

  __CharacterSetStorage.subtract(_:)(v3);
}

uint64_t static CharacterSet._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{

  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CFCharacterSetRef(0);
  swift_dynamicCast();
  type metadata accessor for __CharacterSetStorage();
  result = swift_allocObject();
  *(result + 16) = v5;
  *(result + 24) = 0;
  *a2 = result;
  return result;
}

uint64_t static CharacterSet._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{

  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CFCharacterSetRef(0);
  swift_dynamicCast();
  type metadata accessor for __CharacterSetStorage();
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  *(v4 + 24) = 0;
  *a2 = v4;
  return 1;
}

uint64_t protocol witness for _ObjectiveCBridgeable._bridgeToObjectiveC() in conformance CharacterSet()
{
  [*(*v0 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSCharacterSet();
  swift_dynamicCast();
  return v2;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance CharacterSet(void *a1, uint64_t *a2)
{

  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CFCharacterSetRef(0);
  swift_dynamicCast();
  type metadata accessor for __CharacterSetStorage();
  result = swift_allocObject();
  *(result + 16) = v5;
  *(result + 24) = 0;
  *a2 = result;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance CharacterSet(void *a1, uint64_t *a2)
{

  [a1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for CFCharacterSetRef(0);
  swift_dynamicCast();
  type metadata accessor for __CharacterSetStorage();
  v4 = swift_allocObject();
  *(v4 + 16) = v6;
  *(v4 + 24) = 0;
  *a2 = v4;
  return 1;
}

uint64_t NSCharacterSet._toCustomAnyHashable()()
{
  v1 = v0;
  [v1 copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();

  type metadata accessor for CFCharacterSetRef(0);
  swift_dynamicCast();
  type metadata accessor for __CharacterSetStorage();
  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  *(v2 + 24) = 0;
  lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet();
  return AnyHashable.init<A>(_:)();
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSCharacterSet()
{
  v1 = *v0;
  NSCharacterSet._toCustomAnyHashable()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CharacterSet.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x70616D746962 && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CharacterSet.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CharacterSet.CodingKeys and conformance CharacterSet.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CharacterSet.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CharacterSet.CodingKeys and conformance CharacterSet.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void CharacterSet.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation12CharacterSetV10CodingKeys33_45BFD3D387700B862E3A7353B97EF7EDLLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CharacterSet.CodingKeys and conformance CharacterSet.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_12;
  }

  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v19;
  v10 = v20;
  v11 = v20 >> 62;
  v18 = a2;
  if ((v20 >> 62) <= 1)
  {
    if (!v11)
    {
      v12 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v19 length:BYTE6(v20)];
      goto LABEL_10;
    }

    v13 = v19;
    v14 = v19 >> 32;
    if (v19 >> 32 < v19)
    {
      __break(1u);
    }

    goto LABEL_8;
  }

  if (v11 == 2)
  {
    v13 = *(v19 + 16);
    v14 = *(v19 + 24);
LABEL_8:
    v12 = __DataStorage.bridgedReference(_:)(v13, v14);
    goto LABEL_10;
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_10:
  v15 = v12;
  v16 = CFCharacterSetCreateWithBitmapRepresentation(0, v12);

  if (v16)
  {
    outlined consume of Data._Representation(v9, v10);
    (*(v6 + 8))(v8, v5);
    type metadata accessor for __CharacterSetStorage();
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    *(v17 + 24) = 0;
    *v18 = v17;
LABEL_12:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return;
  }

  __break(1u);
}

uint64_t CharacterSet.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation12CharacterSetV10CodingKeys33_45BFD3D387700B862E3A7353B97EF7EDLLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CharacterSet.CodingKeys and conformance CharacterSet.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = __CharacterSetStorage.bitmapRepresentation.getter();
  v9 = v6;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v8, v9);
  return (*(v3 + 8))(v5, v2);
}

unint64_t lazy protocol witness table accessor for type CharacterSet.CodingKeys and conformance CharacterSet.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CharacterSet.CodingKeys and conformance CharacterSet.CodingKeys;
  if (!lazy protocol witness table cache variable for type CharacterSet.CodingKeys and conformance CharacterSet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CharacterSet.CodingKeys and conformance CharacterSet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CharacterSet.CodingKeys and conformance CharacterSet.CodingKeys;
  if (!lazy protocol witness table cache variable for type CharacterSet.CodingKeys and conformance CharacterSet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CharacterSet.CodingKeys and conformance CharacterSet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CharacterSet.CodingKeys and conformance CharacterSet.CodingKeys;
  if (!lazy protocol witness table cache variable for type CharacterSet.CodingKeys and conformance CharacterSet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CharacterSet.CodingKeys and conformance CharacterSet.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CharacterSet.CodingKeys and conformance CharacterSet.CodingKeys;
  if (!lazy protocol witness table cache variable for type CharacterSet.CodingKeys and conformance CharacterSet.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CharacterSet.CodingKeys and conformance CharacterSet.CodingKeys);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for CharacterSet(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet();
  a1[2] = lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet();
  a1[3] = lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet();
  result = lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet();
  a1[4] = result;
  return result;
}

void *__swift_initWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithCopy_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for CharacterSet(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for CharacterSet(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for __CharacterSetStorage.Backing(uint64_t a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for __CharacterSetStorage.Backing(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type __CharacterSetStorage and conformance __CharacterSetStorage()
{
  result = lazy protocol witness table cache variable for type __CharacterSetStorage and conformance __CharacterSetStorage;
  if (!lazy protocol witness table cache variable for type __CharacterSetStorage and conformance __CharacterSetStorage)
  {
    type metadata accessor for __CharacterSetStorage();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type __CharacterSetStorage and conformance __CharacterSetStorage);
  }

  return result;
}

void Measurement.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  v9 = v1;
  if (v3)
  {
    v4 = [v3 converter];
    [v4 baseUnitValueFromValue_];
    v6 = v5;

    v7 = 0.0;
    if (v6 != 0.0)
    {
      v7 = v6;
    }

    MEMORY[0x1865CD090](*&v7);
  }

  else
  {
    NSObject.hash(into:)();

    v8 = 0.0;
    if (v2 != 0.0)
    {
      v8 = v2;
    }

    MEMORY[0x1865CD090](*&v8);
  }
}

Swift::Int Measurement.hashValue.getter()
{
  Hasher.init(_seed:)();
  Measurement.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Measurement<A>()
{
  Hasher.init(_seed:)();
  Measurement.hash(into:)();
  return Hasher._finalize()();
}

id Measurement.description.getter()
{

  return Measurement.description.getter();
}

{
  v1 = *v0;
  v2 = 0xE000000000000000;
  Double.write<A>(to:)();
  MEMORY[0x1865CB0E0](32, 0xE100000000000000);
  v3 = [v1 symbol];
  if (!v3)
  {
    goto LABEL_21;
  }

  v4 = v3;
  isTaggedPointer = _objc_isTaggedPointer(v3);
  v6 = v4;
  v7 = v6;
  if (!isTaggedPointer)
  {
LABEL_7:
    if (__CFStringIsCF())
    {

      v3 = 0;
      goto LABEL_21;
    }

    v11 = v7;
    v12 = String.init(_nativeStorage:)();
    if (v13)
    {
      v2 = v13;
      v14 = v12;

      v3 = v14;
      goto LABEL_21;
    }

    if (![v11 length])
    {

      v3 = 0;
      goto LABEL_21;
    }

    v17 = String.init(_cocoaString:)();
    v2 = v20;
LABEL_20:

    v3 = v17;
    goto LABEL_21;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v6);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v18 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v19)
    {
      v2 = v19;
      v17 = v18;
    }

    else
    {
      [v7 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v17 = v21;
      v2 = v22;
    }

    goto LABEL_20;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v2 = v10;

      v3 = v9;
LABEL_21:
      MEMORY[0x1865CB0E0](v3, v2);

      return 0;
    }

    goto LABEL_7;
  }

  result = [v7 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v16)
    {
      v17 = result;
      v2 = v16;

      goto LABEL_20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

id Measurement.debugDescription.getter()
{

  return Measurement.description.getter();
}

id Measurement.customMirror.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v60 = *MEMORY[0x1E69E9840];
  v51 = type metadata accessor for Mirror.AncestorRepresentation();
  v4 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v50 - v8;
  v10 = *v2;
  v11 = *(v2 + 8);
  v59 = MEMORY[0x1E69E63B0];
  *&v58 = v11;
  v55 = xmmword_18121BFD0;
  outlined init with take of Any(&v58, &v56);
  v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v14 = v12[2];
  v13 = v12[3];
  if (v14 >= v13 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
  }

  v12[2] = v14 + 1;
  v15 = &v12[6 * v14];
  v16 = v55;
  v17 = v57;
  v15[3] = v56;
  v15[4] = v17;
  v15[2] = v16;
  v18 = [v10 symbol];
  if (!v18)
  {
    v24 = 0;
    v26 = 0xE000000000000000;
    goto LABEL_41;
  }

  v50 = a1;
  v19 = v18;
  isTaggedPointer = _objc_isTaggedPointer(v18);
  v21 = v19;
  v22 = v21;
  if (!isTaggedPointer)
  {
LABEL_9:
    LOBYTE(v58) = 0;
    *&v55 = 0;
    LOBYTE(v53) = 0;
    v54 = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v24 = v55;
      if (!v55)
      {

        v26 = 0xE000000000000000;
        goto LABEL_41;
      }

      if (v54 == 1)
      {
        if (v58)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v34 = String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_39;
      }

      if (v53)
      {
        if (v58 == 1)
        {
          MEMORY[0x1EEE9AC00](IsCF);
          *(&v50 - 4) = v22;
          *(&v50 - 3) = &v55;
          *(&v50 - 4) = 1536;
          *(&v50 - 1) = v24;
        }

        else
        {
          v36 = [v22 lengthOfBytesUsingEncoding_];
          MEMORY[0x1EEE9AC00](v36);
          *(&v50 - 4) = v22;
          *(&v50 - 3) = &v55;
          *(&v50 - 4) = 134217984;
          *(&v50 - 1) = v37;
        }

        v38 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v26 = v39;
        v40 = HIBYTE(v39) & 0xF;
        if ((v39 & 0x2000000000000000) == 0)
        {
          v40 = v38 & 0xFFFFFFFFFFFFLL;
        }

        if (v40)
        {
          v24 = v38;
          goto LABEL_23;
        }
      }
    }

    else
    {
      v28 = v22;
      v29 = String.init(_nativeStorage:)();
      if (v30)
      {
        v24 = v29;
        v26 = v30;

        goto LABEL_41;
      }

      *&v55 = [v28 length];
      if (!v55)
      {

        v24 = 0;
        v26 = 0xE000000000000000;
        goto LABEL_41;
      }
    }

    v34 = String.init(_cocoaString:)();
LABEL_39:
    v24 = v34;
    v26 = v35;
    goto LABEL_40;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v21);
  if (!TaggedPointerTag)
  {
    goto LABEL_21;
  }

  if (TaggedPointerTag == 22)
  {
    result = [v22 UTF8String];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v32 = String.init(utf8String:)(result);
    if (v33)
    {
LABEL_22:
      v24 = v32;
      v26 = v33;
LABEL_23:

LABEL_40:
      goto LABEL_41;
    }

    __break(1u);
LABEL_21:
    v53 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v32 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v33)
    {
      [v22 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v26 = *(&v58 + 1);
      v24 = v58;
      goto LABEL_40;
    }

    goto LABEL_22;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_9;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  *(&v50 - 2) = v22;
  v24 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v26 = v25;

LABEL_41:
  v59 = MEMORY[0x1E69E6158];
  *&v58 = v24;
  *(&v58 + 1) = v26;
  v55 = xmmword_18121BFE0;
  outlined init with take of Any(&v58, &v56);
  v42 = v12[2];
  v41 = v12[3];
  if (v42 >= v41 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v12);
  }

  v12[2] = v42 + 1;
  v43 = &v12[6 * v42];
  v44 = v55;
  v45 = v57;
  v43[3] = v56;
  v43[4] = v45;
  v43[2] = v44;
  *&v55 = v10;
  *(&v55 + 1) = v11;
  *&v58 = v12;
  v46 = *MEMORY[0x1E69E75B8];
  v47 = type metadata accessor for Mirror.DisplayStyle();
  v48 = *(v47 - 8);
  (*(v48 + 104))(v9, v46, v47);
  (*(v48 + 56))(v9, 0, 1, v47);
  (*(v4 + 104))(v6, *MEMORY[0x1E69E75D8], v51);
  v49 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type [(label: String?, value: Any)] and conformance [A], &_sSaySSSg5label_yp5valuetGMd);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

double Measurement<>.convert(to:)(void *a1)
{
  v2 = *v1;
  Measurement<>.converted(to:)(a1, v4);

  result = v4[1];
  *v1 = v4[0];
  *(v1 + 8) = result;
  return result;
}

id static Measurement<>.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  if ([*a1 isEqual_])
  {
    v8 = v5 + v7;
    result = v4;
  }

  else
  {
    v10 = [v4 converter];
    [v10 baseUnitValueFromValue_];
    v12 = v11;

    v13 = [v6 converter];
    [v13 baseUnitValueFromValue_];
    v15 = v14;

    v8 = v12 + v15;
    swift_getObjectType();
    result = [swift_getObjCClassFromMetadata() baseUnit];
  }

  *(a3 + 8) = v8;
  *a3 = result;
  return result;
}

id static Measurement<>.- infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  if (static NSObject.== infix(_:_:)())
  {
    v8 = v5 - v7;
    result = v4;
  }

  else
  {
    v10 = [v4 converter];
    [v10 baseUnitValueFromValue_];
    v12 = v11;

    v13 = [v6 converter];
    [v13 baseUnitValueFromValue_];
    v15 = v14;

    v8 = v12 - v15;
    swift_getObjectType();
    result = [swift_getObjCClassFromMetadata() baseUnit];
  }

  *(a3 + 8) = v8;
  *a3 = result;
  return result;
}

id static Measurement.+ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v7 = *a1;
  if ([*a1 isEqual_])
  {
    *(a3 + 8) = v4 + v5;
    *a3 = v7;

    return v7;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id static Measurement.- infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 8);
  v5 = *(a2 + 8);
  v7 = *a1;
  if ([*a1 isEqual_])
  {
    *(a3 + 8) = v4 - v5;
    *a3 = v7;

    return v7;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id static Measurement.* infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *a1;
  *(a2 + 8) = *(a1 + 8) * a3;
  *a2 = v3;
  return v3;
}

{
  v3 = *a1;
  *(a2 + 8) = *(a1 + 8) * a3;
  *a2 = v3;
  return v3;
}

id static Measurement./ infix(_:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *a1;
  *(a2 + 8) = *(a1 + 8) / a3;
  *a2 = v3;
  return v3;
}

{
  v3 = *a1;
  *(a2 + 8) = a3 / *(a1 + 8);
  *a2 = v3;
  return v3;
}

NSMeasurement __swiftcall Measurement._bridgeToObjectiveC()()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = objc_allocWithZone(NSMeasurement);

  v4 = [v3 initWithDoubleValue:*&v1 unit:v2];
  result._doubleValue = v6;
  result._unit = v5;
  result.super.isa = v4;
  return result;
}

uint64_t static Measurement._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  [a1 doubleValue];
  v5 = v4;
  v6 = [a1 unit];
  result = swift_dynamicCastUnknownClassUnconditional();
  *a2 = result;
  *(a2 + 8) = v5;
  return result;
}

BOOL static Measurement._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = [a1 unit];
  v5 = swift_dynamicCastUnknownClass();
  if (v5)
  {

    [a1 doubleValue];
    *a2 = v5;
    *(a2 + 8) = v6;
  }

  else
  {
  }

  return v5 != 0;
}

id static Measurement._unconditionallyBridgeFromObjectiveC(_:)@<X0>(id result@<X0>, uint64_t *a2@<X8>)
{
  if (result)
  {
    v3 = result;
    v4 = [result unit];
    v5 = swift_dynamicCastUnknownClassUnconditional();
    result = [v3 doubleValue];
    a2[1] = v6;
    *a2 = v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NSMeasurement._toCustomAnyHashable()()
{
  [v0 unit];
  [v0 doubleValue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo6NSUnitCGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type Measurement<NSUnit> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo6NSUnitCGMd);
  return AnyHashable.init<A>(_:)();
}

uint64_t Measurement.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t Measurement.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 1953066613;
  }

  else
  {
    return 0x65756C6176;
  }
}

uint64_t Measurement.UnitCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65747265766E6F63 && a2 == 0xE900000000000072)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t Measurement.UnitCodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x65747265766E6F63;
  }

  else
  {
    return 0x6C6F626D7973;
  }
}

uint64_t Measurement.LinearConverterCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6963696666656F63 && a2 == 0xEB00000000746E65;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E6174736E6F63 && a2 == 0xE800000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t Measurement.LinearConverterCodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x746E6174736E6F63;
  }

  else
  {
    return 0x6963696666656F63;
  }
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSMeasurement()
{
  v1 = *v0;
  [*v0 unit];
  [v1 doubleValue];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11MeasurementVySo6NSUnitCGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type Measurement<NSUnit> and conformance Measurement<A>, &_s10Foundation11MeasurementVySo6NSUnitCGMd);
  AnyHashable.init<A>(_:)();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Measurement<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance Measurement<A>.CodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Measurement<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance Measurement<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Measurement<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Measurement.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Measurement<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Measurement<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Measurement<A>.UnitCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance Measurement<A>.UnitCodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Measurement<A>.UnitCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance Measurement<A>.UnitCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Measurement<A>.UnitCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Measurement.UnitCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Measurement<A>.UnitCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Measurement<A>.UnitCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Measurement<A>.LinearConverterCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6550];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable.hashValue.getter in conformance Measurement<A>.LinearConverterCodingKeys(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Measurement<A>.LinearConverterCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for Hashable._rawHashValue(seed:) in conformance Measurement<A>.LinearConverterCodingKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6540];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Measurement<A>.LinearConverterCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Measurement.LinearConverterCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Measurement<A>.LinearConverterCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB70](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Measurement<A>.LinearConverterCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE6BB78](a1, WitnessTable);
}

uint64_t Measurement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v45 = a3;
  v5 = type metadata accessor for Measurement.LinearConverterCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v43 = v5;
  v6 = type metadata accessor for KeyedDecodingContainer();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v44 = v38 - v7;
  type metadata accessor for Measurement.UnitCodingKeys();
  v50 = swift_getWitnessTable();
  v49 = type metadata accessor for KeyedDecodingContainer();
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v9 = v38 - v8;
  v46 = a2;
  type metadata accessor for Measurement.CodingKeys();
  swift_getWitnessTable();
  v10 = type metadata accessor for KeyedDecodingContainer();
  v48 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v38 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v13)
  {
    v20 = a1;
  }

  else
  {
    v39 = v9;
    v14 = v49;
    v15 = v48;
    v51 = a1;
    v57 = 0;
    KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v10;
    v18 = v17;
    v56 = 1;
    v19 = v39;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v50 = v12;
    v55 = 0;
    v38[0] = KeyedDecodingContainer.decode(_:forKey:)();
    v38[1] = v22;
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSDimension);
    v23 = swift_dynamicCastMetatype();
    v24 = v47;
    if (v23)
    {
      v54 = 1;
      v25 = v44;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v26 = v45;
      v53 = 0;
      v29 = v25;
      KeyedDecodingContainer.decode(_:forKey:)();
      v31 = v30;
      v52 = 1;
      KeyedDecodingContainer.decode(_:forKey:)();
      v33 = v32;
      swift_dynamicCastMetatypeUnconditional();
      v43 = v16;
      v34 = [objc_allocWithZone(NSUnitConverterLinear) initWithCoefficient:v31 constant:v33];
      v35 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v36 = String._bridgeToObjectiveCImpl()();

      [v35 initWithSymbol:v36 converter:v34];
      swift_unknownObjectRelease();

      (*(v40 + 8))(v29, v41);
      (*(v47 + 8))(v39, v14);
      (*(v15 + 8))(v50, v43);
      v37 = swift_dynamicCastUnknownClassUnconditional();
      v20 = v51;
    }

    else
    {
      v27 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v28 = String._bridgeToObjectiveCImpl()();

      v37 = [v27 initWithSymbol_];
      swift_unknownObjectRelease();
      (*(v24 + 8))(v19, v14);
      (*(v15 + 8))(v50, v16);
      v20 = v51;
      v26 = v45;
    }

    *v26 = v37;
    v26[1] = v18;
  }

  return __swift_destroy_boxed_opaque_existential_1(v20);
}

uint64_t *Measurement.encode(to:)(void *a1, uint64_t a2)
{
  v68[4] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 16);
  v5 = type metadata accessor for Measurement.LinearConverterCodingKeys();
  WitnessTable = swift_getWitnessTable();
  v53 = v5;
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  v55 = v6;
  v56 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &WitnessTable - v8;
  v9 = type metadata accessor for Measurement.UnitCodingKeys();
  v58 = swift_getWitnessTable();
  p_WitnessTable = v9;
  v57 = type metadata accessor for KeyedEncodingContainer();
  v62 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v63 = &WitnessTable - v10;
  v60 = v4;
  type metadata accessor for Measurement.CodingKeys();
  swift_getWitnessTable();
  v11 = type metadata accessor for KeyedEncodingContainer();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &WitnessTable - v13;
  v61 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v11;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v68[0]) = 0;
  v16 = v64;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v16)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v18 = v57;
  v64 = v12;
  LOBYTE(v68[0]) = 1;
  v19 = v63;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v20 = [v61 symbol];
  v21 = v19;
  if (!v20)
  {
    v26 = v18;
    goto LABEL_15;
  }

  v22 = v20;
  isTaggedPointer = _objc_isTaggedPointer(v20);
  v24 = v22;
  v25 = v24;
  v26 = v18;
  if (!isTaggedPointer)
  {
LABEL_9:
    LOBYTE(v65) = 0;
    v68[0] = 0;
    LOBYTE(v66) = 0;
    v67 = 0;
    IsCF = __CFStringIsCF();
    if (!IsCF)
    {
      v36 = v25;
      String.init(_nativeStorage:)();
      v30 = v62;
      if (v37 || (v68[0] = [v36 length]) == 0)
      {

        goto LABEL_16;
      }

      goto LABEL_36;
    }

    v29 = v68[0];
    v30 = v62;
    if (v68[0])
    {
      if (v67 == 1)
      {
        if (v65)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();

        goto LABEL_16;
      }

      if ((v66 & 1) == 0)
      {
        goto LABEL_36;
      }

      if (v65 == 1)
      {
        p_WitnessTable = &WitnessTable;
        MEMORY[0x1EEE9AC00](IsCF);
        *(&WitnessTable - 4) = v25;
        *(&WitnessTable - 3) = v68;
        *(&WitnessTable - 4) = 1536;
        *(&WitnessTable - 1) = v29;
        v44 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v46 = HIBYTE(v45) & 0xF;
        if ((v45 & 0x2000000000000000) == 0)
        {
          v46 = v44 & 0xFFFFFFFFFFFFLL;
        }

        if (v46)
        {
          goto LABEL_34;
        }

        goto LABEL_45;
      }

      v48 = [v25 lengthOfBytesUsingEncoding_];
      MEMORY[0x1EEE9AC00](v48);
      *(&WitnessTable - 4) = v25;
      *(&WitnessTable - 3) = v68;
      *(&WitnessTable - 4) = 134217984;
      *(&WitnessTable - 1) = v49;
      v42 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v51 = HIBYTE(v50) & 0xF;
      if ((v50 & 0x2000000000000000) == 0)
      {
        v51 = v42 & 0xFFFFFFFFFFFFLL;
      }

      if (!v51)
      {
LABEL_45:

LABEL_36:
        String.init(_cocoaString:)();
        v47 = v25;
LABEL_40:

LABEL_16:
        LOBYTE(v68[0]) = 0;
        KeyedEncodingContainer.encode(_:forKey:)();

        type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSDimension);
        if (!swift_dynamicCastMetatype())
        {
          (*(v30 + 8))(v21, v26);
          return (*(v64 + 8))(v14, v11);
        }

        v60 = v14;
        objc_opt_self();
        v31 = [swift_dynamicCastObjCClassUnconditional() converter];
        swift_getObjectType();

        type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSUnitConverterLinear);
        result = swift_dynamicCastMetatype();
        if (result)
        {
          objc_opt_self();
          v32 = [swift_dynamicCastObjCClassUnconditional() converter];
          objc_opt_self();
          v33 = swift_dynamicCastObjCClassUnconditional();
          LOBYTE(v68[0]) = 1;
          v34 = v54;
          KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          [v33 coefficient];
          LOBYTE(v68[0]) = 0;
          v35 = v55;
          KeyedEncodingContainer.encode(_:forKey:)();
          [v33 constant];
          LOBYTE(v68[0]) = 1;
          KeyedEncodingContainer.encode(_:forKey:)();
          v38 = v56;
          v39 = v64;

          (*(v38 + 8))(v34, v35);
          (*(v62 + 8))(v63, v26);
          return (*(v39 + 8))(v60, v15);
        }

        __break(1u);
        goto LABEL_47;
      }

      goto LABEL_28;
    }

LABEL_34:

    goto LABEL_16;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v24);
  if (!TaggedPointerTag)
  {
    v66 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v42 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    v30 = v62;
    if (!v43)
    {
      [v25 mutableCopy];
      v58 = v25;
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v47 = v58;
      goto LABEL_40;
    }

LABEL_28:
    p_WitnessTable = v42;
    goto LABEL_34;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      *(&WitnessTable - 2) = v25;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_15:
      v30 = v62;
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  v40 = v25;
  v58 = v25;
  result = [v40 UTF8String];
  if (!result)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  result = String.init(utf8String:)(result);
  p_WitnessTable = result;
  v30 = v62;
  if (v41)
  {
    v25 = v58;
    goto LABEL_34;
  }

LABEL_48:
  __break(1u);
  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Usage(char *a1, char *a2)
{
  v2 = *a2;
  v3 = Usage.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == Usage.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Usage@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized Usage.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Usage@<X0>(uint64_t *a1@<X8>)
{
  result = Usage.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Usage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Usage.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Usage()
{
  Usage.rawValue.getter(*v0);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Usage()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Usage.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t instantiation function for generic protocol witness table for Measurement<A>(void *a1)
{
  a1[1] = swift_getWitnessTable();
  a1[2] = swift_getWitnessTable();
  a1[3] = swift_getWitnessTable();
  result = swift_getWitnessTable();
  a1[4] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Usage(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Usage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Usage and conformance Usage()
{
  result = lazy protocol witness table cache variable for type Usage and conformance Usage;
  if (!lazy protocol witness table cache variable for type Usage and conformance Usage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Usage and conformance Usage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Usage and conformance Usage;
  if (!lazy protocol witness table cache variable for type Usage and conformance Usage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Usage and conformance Usage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Usage and conformance Usage;
  if (!lazy protocol witness table cache variable for type Usage and conformance Usage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Usage and conformance Usage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Usage and conformance Usage;
  if (!lazy protocol witness table cache variable for type Usage and conformance Usage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Usage and conformance Usage);
  }

  return result;
}

unint64_t specialized Usage.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Usage.init(rawValue:), v2);

  if (v3 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v3;
  }
}

void NSCoder.decodeTopLevelObject()(_OWORD *a1@<X8>)
{
  v2 = v1;
  v13 = *MEMORY[0x1E69E9840];
  *&v9 = 0;
  v4 = __NSCoderDecodeObject(v2, &v9);
  v5 = v9;
  if (v4)
  {
    v6 = v9;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
    v7 = v5;
  }

  v11 = v9;
  v12 = v10;
  if (v5)
  {
    v8 = v5;
    if ([v8 code] != 4865)
    {
      swift_willThrow();

      outlined destroy of TermOfAddress?(&v11, &_sypSgMd);
      return;
    }
  }

  v9 = v11;
  v10 = v12;
  if (*(&v12 + 1))
  {
    outlined init with take of Any(&v9, a1);
  }

  else
  {
    *a1 = 0u;
    a1[1] = 0u;
  }
}

uint64_t NSCoder.decodeTopLevelObject(forKey:)()
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = String._bridgeToObjectiveCImpl()();
  *&v20 = 0;
  v3 = __NSCoderDecodeObjectForKey(v0, v2, &v20);
  swift_unknownObjectRelease();
  v4 = v20;
  if (v3)
  {
    v5 = v20;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (v4)
  {
    v7 = v4;
    if ([v7 code] != 4865)
    {
      swift_willThrow();

      outlined destroy of TermOfAddress?(v22, &_sypSgMd);
      return v1;
    }
  }

  outlined init with copy of Any?(v22, &v20);
  v8 = *(&v21 + 1);
  if (*(&v21 + 1))
  {
    v9 = __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
    v19[1] = v19;
    v10 = *(v8 - 8);
    v11 = v10[8];
    v12 = MEMORY[0x1EEE9AC00](v9);
    v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
    v14 = v10[2];
    v14(v19 - v13, v12);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if (isClassOrObjCExistentialType)
    {
      outlined destroy of TermOfAddress?(v22, &_sypSgMd);
      if (v11 != 8)
      {
        __break(1u);
      }

      v1 = *(v19 - v13);
      v16 = v10[1];
      swift_unknownObjectRetain();
      v16(v19 - v13, v8);
    }

    else
    {
      v19[0] = v19;
      v18 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
      (v14)(v19 - v13, v19 - v13, v8, v18);
      v1 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (v10[1])(v19 - v13, v8);
      outlined destroy of TermOfAddress?(v22, &_sypSgMd);
    }

    __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  else
  {
    outlined destroy of TermOfAddress?(v22, &_sypSgMd);
    v1 = 0;
  }

  return v1;
}

void NSCoder.decodeTopLevelObject(forKey:)(_OWORD *a1@<X8>)
{
  v2 = v1;
  v15 = *MEMORY[0x1E69E9840];
  v4 = String._bridgeToObjectiveCImpl()();
  *&v11 = 0;
  v5 = __NSCoderDecodeObjectForKey(v2, v4, &v11);
  swift_unknownObjectRelease();
  v6 = v11;
  if (v5)
  {
    v7 = v11;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v8 = v6;
  }

  v13 = v11;
  v14 = v12;
  if (!v6)
  {
    goto LABEL_7;
  }

  v9 = v6;
  if ([v9 code] == 4865)
  {

LABEL_7:
    v10 = v14;
    *a1 = v13;
    a1[1] = v10;

    return;
  }

  swift_willThrow();

  outlined destroy of TermOfAddress?(&v13, &_sypSgMd);
}

void NSCoder.decodeTopLevelObject<A>(of:forKey:)()
{
  v12 = *MEMORY[0x1E69E9840];
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = String._bridgeToObjectiveCImpl()();
  *&v8 = 0;
  v3 = __NSCoderDecodeObjectOfClassForKey(v0, ObjCClassFromMetadata, v2, &v8);
  swift_unknownObjectRelease();
  v4 = v8;
  if (v3)
  {
    v5 = v8;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    v6 = v4;
  }

  v10 = v8;
  v11 = v9;
  if (v4)
  {
    v7 = v4;
    if ([v7 code] != 4865)
    {
      swift_willThrow();

      outlined destroy of TermOfAddress?(&v10, &_sypSgMd);
      return;
    }
  }

  v8 = v10;
  v9 = v11;
  if (*(&v11 + 1))
  {
    swift_dynamicCast();
  }

  else
  {
    outlined destroy of TermOfAddress?(&v8, &_sypSgMd);
  }
}

void NSCoder.decodeTopLevelObject(of:forKey:)(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v18 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a1 + 16) == 1)
    {
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v6 = String._bridgeToObjectiveCImpl()();
      *&v14 = 0;
      v7 = __NSCoderDecodeObjectOfClassForKey(v3, ObjCClassFromMetadata, v6, &v14);
      goto LABEL_7;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd);
    v8 = _ContiguousArrayBuffer._asCocoaArray()();
  }

  else
  {
    v8 = 0;
  }

  v9 = String._bridgeToObjectiveCImpl()();
  *&v14 = 0;
  v7 = __NSCoderDecodeObjectOfClassesForKey(v3, v8, v9, &v14);

LABEL_7:
  swift_unknownObjectRelease();
  v10 = v14;
  if (v7)
  {
    v11 = v14;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
    v12 = v10;
  }

  v16 = v14;
  v17 = v15;
  if (v10)
  {
    v13 = v10;
    if ([v13 code] != 4865)
    {
      swift_willThrow();

      outlined destroy of TermOfAddress?(&v16, &_sypSgMd);
      return;
    }
  }

  v14 = v16;
  v15 = v17;
  if (*(&v17 + 1))
  {
    outlined init with take of Any(&v14, a2);
  }

  else
  {
    *a2 = 0u;
    a2[1] = 0u;
  }
}

Swift::OpaquePointer_optional __swiftcall NSCoder.decodeArrayOfObjects(ofClasses:forKey:)(Swift::OpaquePointer ofClasses, Swift::String forKey)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd);
  v3 = _ContiguousArrayBuffer._asCocoaArray()();
  v4 = String._bridgeToObjectiveCImpl()();
  v5 = __NSCoderDecodeArrayOfObjectsOfClassesForKey(v2, v3, v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v7 = 0;
  if (v5)
  {
    type metadata accessor for __SwiftDeferredNSArray();
    if (swift_dynamicCastClass())
    {
    }

    else
    {
      v8 = v5;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
    v9 = swift_dynamicCastClass();
    if (v9)
    {
      v10 = v9;
    }

    else
    {
      swift_unknownObjectRelease();
      [v5 copy];
      v11 = _bridgeCocoaArray<A>(_:)();
      swift_unknownObjectRelease();
      v10 = specialized _arrayForceCast<A, B>(_:)(v11);
    }

    v7 = v10;
  }

  result.value._rawValue = v7;
  result.is_nil = v6;
  return result;
}

Swift::OpaquePointer_optional __swiftcall NSCoder.decodeDictionary(withKeysOfClasses:objectsOfClasses:forKey:)(Swift::OpaquePointer withKeysOfClasses, Swift::OpaquePointer objectsOfClasses, Swift::String forKey)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd);
  v5 = _ContiguousArrayBuffer._asCocoaArray()();
  specialized _arrayForceCast<A, B>(_:)(objectsOfClasses._rawValue);
  v6 = _ContiguousArrayBuffer._asCocoaArray()();
  v7 = String._bridgeToObjectiveCImpl()();
  v8 = __NSCoderDecodeDictionaryWithKeysOfClassesObjectsOfClassesForKey(v3, v5, v6, v7);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (v8)
  {
    v12 = 0;
    v10 = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZs11AnyHashableV_ypTt1g5(v8, &v12);
    v11 = v12;
    if (!v12)
    {
      __break(1u);
      goto LABEL_7;
    }
  }

  else
  {
    v11 = 0;
  }

  v10 = v11;
LABEL_7:
  result.value._rawValue = v10;
  result.is_nil = v9;
  return result;
}

void *static NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(_:)(const char *a1)
{
  v23 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17NSKeyedUnarchiverCmMd);
  v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  *&v20 = 0;
  v3 = __NSKeyedUnarchiverUnarchiveObject(v2, a1, &v20);
  swift_unknownObjectRelease();
  v4 = v20;
  if (v3)
  {
    v5 = v20;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v6 = v4;
  }

  v22[0] = v20;
  v22[1] = v21;
  if (v4)
  {
    v7 = v4;
    if ([v7 code] != 4865)
    {
      swift_willThrow();

      outlined destroy of TermOfAddress?(v22, &_sypSgMd);
      return v2;
    }
  }

  outlined init with copy of Any?(v22, &v20);
  v8 = *(&v21 + 1);
  if (*(&v21 + 1))
  {
    v9 = __swift_project_boxed_opaque_existential_1(&v20, *(&v21 + 1));
    v19[1] = v19;
    v10 = *(v8 - 8);
    v11 = v10[8];
    v12 = MEMORY[0x1EEE9AC00](v9);
    v13 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
    v14 = v10[2];
    v14(v19 - v13, v12);
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    if (isClassOrObjCExistentialType)
    {
      outlined destroy of TermOfAddress?(v22, &_sypSgMd);
      if (v11 != 8)
      {
        __break(1u);
      }

      v2 = *(v19 - v13);
      v16 = v10[1];
      swift_unknownObjectRetain();
      v16(v19 - v13, v8);
    }

    else
    {
      v19[0] = v19;
      v18 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
      (v14)(v19 - v13, v19 - v13, v8, v18);
      v2 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
      (v10[1])(v19 - v13, v8);
      outlined destroy of TermOfAddress?(v22, &_sypSgMd);
    }

    __swift_destroy_boxed_opaque_existential_1(&v20);
  }

  else
  {
    outlined destroy of TermOfAddress?(v22, &_sypSgMd);
    v2 = 0;
  }

  return v2;
}

void static NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17NSKeyedUnarchiverCmMd);
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      *&v18 = a1;
      WORD4(v18) = a2;
      BYTE10(v18) = BYTE2(a2);
      BYTE11(v18) = BYTE3(a2);
      BYTE12(v18) = BYTE4(a2);
      BYTE13(v18) = BYTE5(a2);
      v8 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v18 length:BYTE6(a2)];
      goto LABEL_9;
    }

    v9 = a1;
    v10 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  if (v7 == 2)
  {
    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
LABEL_7:
    v8 = __DataStorage.bridgedReference(_:)(v9, v10);
    goto LABEL_9;
  }

  v8 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_9:
  v11 = v8;
  *&v18 = 0;
  v12 = __NSKeyedUnarchiverUnarchiveObject(v6, v8, &v18);
  swift_unknownObjectRelease();

  v13 = v18;
  if (v12)
  {
    v14 = v18;
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
    v15 = v13;
  }

  v20 = v18;
  v21 = v19;
  if (!v13)
  {
    goto LABEL_15;
  }

  v16 = v13;
  if ([v16 code] == 4865)
  {

LABEL_15:
    v17 = v21;
    *a3 = v20;
    a3[1] = v17;

    return;
  }

  swift_willThrow();

  outlined destroy of TermOfAddress?(&v20, &_sypSgMd);
}

uint64_t NSKeyedUnarchiver.decodeDecodable<A>(_:forKey:)@<X0>(ValueMetadata *a1@<X3>, uint64_t a2@<X8>)
{
  if (one-time initialization token for __plistClasses != -1)
  {
    swift_once();
  }

  if (*(static NSKeyedUnarchiver.__plistClasses + 2) == 1)
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v6 = String._bridgeToObjectiveCImpl()();
    v7 = __NSCoderDecodeObjectOfClassForKey(v2, ObjCClassFromMetadata, v6, 0);
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd);
    v8 = _ContiguousArrayBuffer._asCocoaArray()();
    v9 = String._bridgeToObjectiveCImpl()();
    v7 = __NSCoderDecodeObjectOfClassesForKey(v2, v8, v9, 0);
    swift_unknownObjectRelease();
  }

  swift_unknownObjectRelease();
  if (v7)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    outlined init with take of Any(v15, v16);
    type metadata accessor for PropertyListDecoder();
    inited = swift_initStackObject();
    *(inited + 16) = MEMORY[0x1E69E7CC8];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyt_GMd);
    v11 = swift_allocObject();
    *(v11 + 16) = 0;
    *(inited + 24) = v11;
    PropertyListDecoder.decode<A>(_:fromTopLevel:)(a1, v16, a1, a2);
    __swift_destroy_boxed_opaque_existential_1(v16);
    swift_setDeallocating();

    return (*(a1[-1].Description + 7))(a2, 0, 1, a1);
  }

  else
  {
    outlined destroy of TermOfAddress?(v15, &_sypSgMd);
    return (*(a1[-1].Description + 7))(a2, 1, 1, a1);
  }
}

uint64_t static NSKeyedUnarchiver.unarchivedArrayOfObjects(ofClasses:from:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd);
  v5 = _ContiguousArrayBuffer._asCocoaArray()();
  v6 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v6)
    {
      v21 = a2;
      v22 = a3;
      v23 = BYTE2(a3);
      v24 = BYTE3(a3);
      v25 = BYTE4(a3);
      v26 = BYTE5(a3);
      v7 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v21 length:BYTE6(a3)];
      goto LABEL_9;
    }

    v8 = a2;
    v9 = a2 >> 32;
    if (a2 >> 32 < a2)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  if (v6 == 2)
  {
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
LABEL_7:
    v7 = __DataStorage.bridgedReference(_:)(v8, v9);
    goto LABEL_9;
  }

  v7 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_9:
  v10 = v7;
  v21 = 0;
  v11 = __NSKeyedUnarchiverSecureUnarchivedArrayOfObjectsOfClasses(v5, v7, &v21);
  swift_unknownObjectRelease();

  v12 = v21;
  if (!v11)
  {
    v14 = v21;
    v15 = 0;
    if (!v12)
    {
      return v15;
    }

    goto LABEL_17;
  }

  type metadata accessor for __SwiftDeferredNSArray();
  if (swift_dynamicCastClass())
  {
    v13 = v12;
  }

  else
  {
    v16 = v12;
    v17 = v11;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd);
  v18 = swift_dynamicCastClass();
  if (!v18)
  {
    swift_unknownObjectRelease();
    [(NSArray *)v11 copy];
    v20 = _bridgeCocoaArray<A>(_:)();
    swift_unknownObjectRelease();
    v15 = specialized _arrayForceCast<A, B>(_:)(v20);

    if (!v12)
    {
      return v15;
    }

    goto LABEL_17;
  }

  v15 = v18;

  if (v12)
  {
LABEL_17:

    swift_willThrow();
  }

  return v15;
}

uint64_t static NSKeyedUnarchiver.unarchivedDictionary<A, B>(ofKeyClass:objectClass:from:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v34 = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_181218E20;
  *(v12 + 32) = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_181218E20;
  *(v13 + 32) = a2;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd);
  v14 = _ContiguousArrayBuffer._asCocoaArray()();

  v15 = _ContiguousArrayBuffer._asCocoaArray()();
  v16 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v16)
    {
      v28 = a3;
      v29 = a4;
      v30 = BYTE2(a4);
      v31 = BYTE3(a4);
      v32 = BYTE4(a4);
      v33 = BYTE5(a4);
      v17 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v28 length:BYTE6(a4)];
      goto LABEL_9;
    }

    v18 = a3;
    v19 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  if (v16 == 2)
  {
    v18 = *(a3 + 16);
    v19 = *(a3 + 24);
LABEL_7:
    v17 = __DataStorage.bridgedReference(_:)(v18, v19);
    goto LABEL_9;
  }

  v17 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_9:
  v20 = v17;
  v28 = 0;
  v21 = __NSKeyedUnarchiverSecureUnarchivedDictionaryOfKeysOfClassesObjectsOfClasses(v14, v15, v17, &v28);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v22 = v28;
  if (!v21)
  {
    v26 = v28;
    v25 = 0;
    if (v22)
    {
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v28 = 0;
  v23 = v22;
  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZs11AnyHashableV_ypTt1g5(v21, &v28);
  v25 = v28;
  if (v28)
  {

    if (v22)
    {
LABEL_12:

      swift_willThrow();

      return a6;
    }

LABEL_14:

    if (!v25)
    {
      return 0;
    }

    WitnessTable = swift_getWitnessTable();
    a6 = specialized _dictionaryDownCastConditional<A, B, C, D>(_:)(v25, a5, a6, WitnessTable);

    return a6;
  }

  __break(1u);
  return result;
}

uint64_t static NSKeyedUnarchiver.unarchivedDictionary(keysOfClasses:objectsOfClasses:from:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_syXlXpMd);
  v6 = _ContiguousArrayBuffer._asCocoaArray()();

  v7 = _ContiguousArrayBuffer._asCocoaArray()();
  v8 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v8)
    {
      v19 = a3;
      v20 = a4;
      v21 = BYTE2(a4);
      v22 = BYTE3(a4);
      v23 = BYTE4(a4);
      v24 = BYTE5(a4);
      v9 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v19 length:BYTE6(a4)];
      goto LABEL_9;
    }

    v10 = a3;
    v11 = a3 >> 32;
    if (a3 >> 32 < a3)
    {
      __break(1u);
    }

    goto LABEL_7;
  }

  if (v8 == 2)
  {
    v10 = *(a3 + 16);
    v11 = *(a3 + 24);
LABEL_7:
    v9 = __DataStorage.bridgedReference(_:)(v10, v11);
    goto LABEL_9;
  }

  v9 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_9:
  v12 = v9;
  v19 = 0;
  v13 = __NSKeyedUnarchiverSecureUnarchivedDictionaryOfKeysOfClassesObjectsOfClasses(v6, v7, v9, &v19);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v14 = v19;
  if (!v13)
  {
    v18 = v19;
    v17 = 0;
    if (!v14)
    {
      return v17;
    }

    goto LABEL_12;
  }

  v19 = 0;
  v15 = v14;
  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZs11AnyHashableV_ypTt1g5(v13, &v19);
  v17 = v19;
  if (v19)
  {

    if (!v14)
    {
      return v17;
    }

LABEL_12:

    swift_willThrow();

    return v17;
  }

  __break(1u);
  return result;
}

uint64_t _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSS_SSTt1g5(void *a1, void *a2)
{

  v4 = MEMORY[0x1E69E7CA0] + 8;
  v5 = MEMORY[0x1E69E6158];
  swift_unknownObjectRetain();
  if (v5 != v4)
  {
    result = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
    if (result)
    {
      goto LABEL_9;
    }

    result = [a1 count];
    if (!result)
    {
      goto LABEL_35;
    }

    v36 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v37 = v8[6];
    v38 = v8[7];

    result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_SSTt3g5Tf4xxnn_n(v37, v38, a1, v36);
    if (result < 0 || v36 < result)
    {
      goto LABEL_40;
    }

    v8[2] = result;
    if (!result)
    {
      goto LABEL_34;
    }

    v39 = result - 1;
    v40 = v8 + 8;
    while (1)
    {
      if ((*(v40 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v39))
      {
        goto LABEL_26;
      }

      v42 = (v8[6] + 16 * v39);
      v43 = *v42;
      v44 = v42[1];

      v45 = specialized __RawDictionaryStorage.find<A>(_:)(v43, v44);
      v47 = v46;

      if (v47)
      {
        v48 = v8[6];

        outlined destroy of String(v48 + 16 * v39);
        result = outlined destroy of String(v8[7] + 16 * v39);
        v49 = v8[2];
        v25 = __OFSUB__(v49, 1);
        v50 = v49 - 1;
        if (v25)
        {
          goto LABEL_38;
        }

        v8[2] = v50;

        goto LABEL_26;
      }

      *(v40 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
      if (v39 < v45)
      {
        v41 = 16 * v45;
        *(v8[6] + v41) = *(v8[6] + 16 * v39);
        *(v8[7] + v41) = *(v8[7] + 16 * v39);
LABEL_26:
        if (--v39 < 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v45 == v39)
        {
          goto LABEL_26;
        }

        v51 = v8[6];
        v52 = (v51 + 16 * v45);
        v53 = (v51 + 16 * v39);
        v54 = *v52;
        v55 = v52[1];
        v56 = v53[1];
        *v52 = *v53;
        v52[1] = v56;
        *v53 = v54;
        v53[1] = v55;
        v57 = v8[7];
        v58 = (v57 + 16 * v45);
        v59 = (v57 + 16 * v39);
        v60 = *v58;
        v61 = v58[1];
        v62 = v59[1];
        *v58 = *v59;
        v58[1] = v62;
        *v59 = v60;
        v59[1] = v61;
        if (v39 < 0)
        {
          goto LABEL_34;
        }
      }
    }
  }

  result = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  if (result)
  {
LABEL_9:
    v8 = result;
LABEL_36:
    *a2 = v8;
    return result;
  }

  result = [a1 count];
  if (!result)
  {
LABEL_35:
    v8 = MEMORY[0x1E69E7CC8];
    goto LABEL_36;
  }

  v7 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v8 = static _DictionaryStorage.allocate(capacity:)();
  v9 = v8[6];
  v10 = v8[7];

  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_SS_ypTt3g5Tf4xxnn_n(v9, v10, a1, v7);
  if (result < 0 || v7 < result)
  {
    goto LABEL_39;
  }

  v8[2] = result;
  if (!result)
  {
LABEL_34:

    goto LABEL_36;
  }

  v11 = result - 1;
  v12 = v8 + 8;
  while (1)
  {
    if ((*(v12 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v11))
    {
      goto LABEL_11;
    }

    v17 = (v8[6] + 16 * v11);
    v18 = *v17;
    v19 = v17[1];

    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
    v22 = v21;

    if (v22)
    {
      break;
    }

    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    if (v11 < v20)
    {
      *(v8[6] + 16 * v20) = *(v8[6] + 16 * v11);
      v13 = v8[7];
      v14 = (v13 + 32 * v11);
      v15 = v14[1];
      v16 = (v13 + 32 * v20);
      *v16 = *v14;
      v16[1] = v15;
LABEL_11:
      if (--v11 < 0)
      {
        goto LABEL_34;
      }
    }

    else
    {
      if (v20 == v11)
      {
        goto LABEL_11;
      }

      v27 = v8[6];
      v28 = (v27 + 16 * v20);
      v29 = (v27 + 16 * v11);
      v30 = *v28;
      v31 = v28[1];
      v32 = v29[1];
      *v28 = *v29;
      v28[1] = v32;
      *v29 = v30;
      v29[1] = v31;
      v33 = v8[7];
      v34 = (v33 + 32 * v20);
      v35 = (v33 + 32 * v11);
      outlined init with take of Any(v34, v63);
      outlined init with take of Any(v35, v34);
      outlined init with take of Any(v63, v35);
      if (v11 < 0)
      {
        goto LABEL_34;
      }
    }
  }

  v23 = v8[6] + 16 * v11;

  outlined destroy of String(v23);
  result = __swift_destroy_boxed_opaque_existential_1(v8[7] + 32 * v11);
  v24 = v8[2];
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (!v25)
  {
    v8[2] = v26;

    goto LABEL_11;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSi_SSTt1g5(void *a1, uint64_t *a2)
{

  swift_unknownObjectRetain();
  result = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  v5 = result;
  if (result)
  {
    goto LABEL_25;
  }

  result = [a1 count];
  if (!result)
  {
    v5 = MEMORY[0x1E69E7CC8];
LABEL_25:
    *a2 = v5;
    return result;
  }

  v6 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySiSSGMd);
  v5 = static _DictionaryStorage.allocate(capacity:)();
  v7 = *(v5 + 48);
  v8 = *(v5 + 56);

  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_Si_SSTt3g5Tf4xxnn_n(v7, v8, a1, v6);
  if ((result & 0x8000000000000000) == 0 && v6 >= result)
  {
    *(v5 + 16) = result;
    if (result)
    {
      v9 = result - 1;
      v10 = v5 + 64;
      while (1)
      {
        if ((*(v10 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9))
        {
          goto LABEL_8;
        }

        v11 = *(v5 + 48);
        result = MEMORY[0x1865CD030](*(v5 + 40), *(v11 + 8 * v9));
        v12 = -1 << *(v5 + 32);
        v13 = result & ~v12;
        v14 = v13 >> 6;
        if (((-1 << v13) & ~*(v10 + 8 * (v13 >> 6))) != 0)
        {
          v15 = __clz(__rbit64((-1 << v13) & ~*(v10 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v12) >> 6;
          do
          {
            if (++v14 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              goto LABEL_26;
            }

            v18 = v14 == v17;
            if (v14 == v17)
            {
              v14 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v14);
          }

          while (v19 == -1);
          v15 = __clz(__rbit64(~v19)) + (v14 << 6);
        }

        *(v10 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
        if (v9 < v15)
        {
          *(v11 + 8 * v15) = *(v11 + 8 * v9);
          *(*(v5 + 56) + 16 * v15) = *(*(v5 + 56) + 16 * v9);
LABEL_8:
          if (--v9 < 0)
          {
            break;
          }
        }

        else
        {
          if (v15 == v9)
          {
            goto LABEL_8;
          }

          v20 = *(v11 + 8 * v15);
          *(v11 + 8 * v15) = *(v11 + 8 * v9);
          *(v11 + 8 * v9) = v20;
          v21 = *(v5 + 56);
          v22 = (v21 + 16 * v15);
          v23 = (v21 + 16 * v9);
          v24 = *v22;
          v25 = v22[1];
          v26 = v23[1];
          *v22 = *v23;
          v22[1] = v26;
          *v23 = v24;
          v23[1] = v25;
          if (v9 < 0)
          {
            break;
          }
        }
      }
    }

    goto LABEL_25;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZs11AnyHashableV_AITt1g5(void *a1, uint64_t *a2)
{

  swift_unknownObjectRetain();
  result = static Dictionary._bridgeFromObjectiveCAdoptingNativeStorageOf(_:)();
  v5 = result;
  if (result)
  {
    goto LABEL_25;
  }

  result = [a1 count];
  if (!result)
  {
    v5 = MEMORY[0x1E69E7CC8];
LABEL_25:
    *a2 = v5;
    return result;
  }

  v6 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCys11AnyHashableVADGMd);
  v5 = static _DictionaryStorage.allocate(capacity:)();
  v7 = *(v5 + 48);
  v8 = *(v5 + 56);

  result = _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSiSryxG_Sryq_GtXEfU0_s11AnyHashableV_AKTt3g5Tf4xxnn_n(v7, v8, a1, v6);
  if ((result & 0x8000000000000000) == 0 && v6 >= result)
  {
    *(v5 + 16) = result;
    if (result)
    {
      v9 = result - 1;
      v10 = v5 + 64;
      while (1)
      {
        if ((*(v10 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v9))
        {
          goto LABEL_8;
        }

        outlined init with copy of AnyHashable(*(v5 + 48) + 40 * v9, v48);
        v22 = AnyHashable._rawHashValue(seed:)(*(v5 + 40));
        result = outlined destroy of AnyHashable(v48);
        v23 = -1 << *(v5 + 32);
        v24 = v22 & ~v23;
        v25 = v24 >> 6;
        if (((-1 << v24) & ~*(v10 + 8 * (v24 >> 6))) != 0)
        {
          v26 = __clz(__rbit64((-1 << v24) & ~*(v10 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v27 = 0;
          v28 = (63 - v23) >> 6;
          do
          {
            if (++v25 == v28 && (v27 & 1) != 0)
            {
              __break(1u);
              goto LABEL_26;
            }

            v29 = v25 == v28;
            if (v25 == v28)
            {
              v25 = 0;
            }

            v27 |= v29;
            v30 = *(v10 + 8 * v25);
          }

          while (v30 == -1);
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
        }

        *(v10 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
        if (v9 < v26)
        {
          v11 = *(v5 + 48);
          v12 = 40 * v26;
          v13 = v11 + v12;
          v14 = (v11 + 40 * v9);
          v15 = *v14;
          v16 = v14[1];
          *(v13 + 32) = *(v14 + 4);
          *v13 = v15;
          *(v13 + 16) = v16;
          v17 = *(v5 + 56);
          v18 = v17 + v12;
          v19 = (v17 + 40 * v9);
          v20 = *v19;
          v21 = v19[1];
          *(v18 + 32) = *(v19 + 4);
          *v18 = v20;
          *(v18 + 16) = v21;
LABEL_8:
          if (--v9 < 0)
          {
            break;
          }
        }

        else
        {
          if (v26 == v9)
          {
            goto LABEL_8;
          }

          v31 = *(v5 + 48);
          v32 = 40 * v26;
          v33 = (v31 + v32);
          v34 = (v31 + 40 * v9);
          v35 = *v33;
          v36 = v33[1];
          v37 = *(v33 + 4);
          v38 = *(v34 + 4);
          v39 = v34[1];
          *v33 = *v34;
          v33[1] = v39;
          *(v33 + 4) = v38;
          *(v34 + 4) = v37;
          *v34 = v35;
          v34[1] = v36;
          v40 = *(v5 + 56);
          v41 = (v40 + v32);
          v42 = (v40 + 40 * v9);
          v43 = *v41;
          v44 = v41[1];
          v45 = *(v41 + 4);
          v46 = *(v42 + 4);
          v47 = v42[1];
          *v41 = *v42;
          v41[1] = v47;
          *(v41 + 4) = v46;
          *(v42 + 4) = v45;
          *v42 = v43;
          v42[1] = v44;
          if (v9 < 0)
          {
            break;
          }
        }
      }
    }

    goto LABEL_25;
  }

LABEL_26:
  __break(1u);
  return result;
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2, char a3)
{
  Hasher.init(_seed:)();
  if ((a3 & 1) == 0)
  {
    v5 = 10;
    if (a2 < 10)
    {
      v5 = a2;
    }

    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7._countAndFlagsBits = 103;
    v7._object = 0xE100000000000000;
    String.init(repeating:count:)(v7, v6);
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  if ((a3 & 1) == 0)
  {
    v5 = 10;
    if (a2 < 10)
    {
      v5 = a2;
    }

    if (v5 <= 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = v5;
    }

    v7._countAndFlagsBits = 89;
    v7._object = 0xE100000000000000;
    String.init(repeating:count:)(v7, v6);
  }

  String.hash(into:)();

  return Hasher._finalize()();
}

void (*AttributeContainer.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t *a1, char a2)
{
  v8 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(0x440uLL);
  }

  v10 = v9;
  *a1 = v9;
  v9[128] = v4;
  v9[127] = a4;
  v9[126] = a3;
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v10[129] = v11;
  v12 = *(v11 - 8);
  v10[130] = v12;
  v13 = *(v12 + 64);
  if (v8)
  {
    v10[131] = swift_coroFrameAlloc();
    v10[132] = swift_coroFrameAlloc();
    v10[133] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v10[131] = malloc(*(v12 + 64));
    v10[132] = malloc(v13);
    v10[133] = malloc(v13);
    v14 = malloc(v13);
  }

  v10[134] = v14;
  v15 = *v4;
  v10[135] = *v4;
  AttributedString._AttributeStorage.subscript.getter(v15, a3, a4, v14);
  return AttributeContainer.subscript.modify;
}

void AttributeContainer.subscript.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 1040) + 16);
  v5 = *(*a1 + 1072);
  if (a2)
  {
    v6 = v3 + 216;
    v7 = *(v3 + 1056);
    v8 = *(v3 + 1048);
    v9 = *(v3 + 1032);
    v10 = *(v3 + 1016);
    v11 = *(v3 + 1008);
    v4(v7, v5, v9);
    v4(v8, v7, v9);
    v12 = (*(v10 + 24))(v11, v10);
    v14 = v13;
    static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v8, v11, v10, v3);
    outlined init with copy of AttributedString._AttributeValue?(v3, v3 + 216);
    if (!*(v3 + 240))
    {
      goto LABEL_12;
    }

    v15 = v3 + 360;
    v16 = *(v3 + 1024);
    v17 = *(v3 + 264);
    *(v3 + 176) = *(v3 + 248);
    *(v3 + 192) = v17;
    *(v3 + 208) = *(v3 + 280);
    v18 = *(v3 + 232);
    *(v3 + 144) = *v6;
    *(v3 + 160) = v18;
    outlined init with copy of AttributedString._AttributeValue(v3 + 144, v3 + 360);
    LOBYTE(v19) = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v16;
    v214 = *v16;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v14);
    v23 = *(v20 + 16);
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (!v25)
    {
      v6 = v22;
      if (*(v20 + 24) < v26)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, v19);
        v27 = v214;
        v21 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v14);
        if ((v6 & 1) != (v28 & 1))
        {
          goto LABEL_11;
        }

LABEL_22:
        if (v6)
        {
LABEL_23:
          v68 = *(v27 + 56) + 72 * v21;
          *(v3 + 72) = *v68;
          v69 = *(v68 + 16);
          v70 = *(v68 + 32);
          v71 = *(v68 + 48);
          *(v3 + 136) = *(v68 + 64);
          *(v3 + 120) = v71;
          *(v3 + 104) = v70;
          *(v3 + 88) = v69;
          v73 = *(v15 + 32);
          v72 = *(v15 + 48);
          v74 = *(v15 + 16);
          *(v68 + 64) = *(v15 + 64);
          *(v68 + 32) = v73;
          *(v68 + 48) = v72;
          *(v68 + 16) = v74;
          *v68 = *v15;
          outlined destroy of AttributedString._AttributeValue(v3 + 144);
LABEL_65:
          **(v3 + 1024) = v27;
          goto LABEL_66;
        }

        goto LABEL_63;
      }

      if (v19)
      {
        v27 = v20;
        goto LABEL_22;
      }

      goto LABEL_32;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    v197 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
    v83 = static _DictionaryStorage.copy(original:)();
    v27 = v83;
    v84 = *(v20 + 16);
    if (!v84)
    {
LABEL_62:

      v21 = v197;
      if (v6)
      {
        goto LABEL_23;
      }

LABEL_63:
      *(v27 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v120 = (*(v27 + 48) + 16 * v21);
      *v120 = v12;
      v120[1] = v14;
      v121 = *(v27 + 56) + 72 * v21;
      *v121 = *v15;
      v122 = *(v15 + 16);
      v123 = *(v15 + 32);
      v124 = *(v15 + 48);
      *(v121 + 64) = *(v15 + 64);
      *(v121 + 32) = v123;
      *(v121 + 48) = v124;
      *(v121 + 16) = v122;
      v125 = *(v27 + 16);
      v25 = __OFADD__(v125, 1);
      v126 = v125 + 1;
      if (!v25)
      {
        *(v27 + 16) = v126;

        outlined destroy of AttributedString._AttributeValue(v3 + 144);
        *(v3 + 72) = 0u;
        *(v3 + 88) = 0u;
        *(v3 + 104) = 0u;
        *(v3 + 120) = 0u;
        *(v3 + 136) = 0;
        goto LABEL_65;
      }

      __break(1u);
LABEL_68:

      v21 = v190;
      v75 = v14;
      if ((v19 & 1) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_27;
    }

    v85 = (v83 + 64);
    v19 = v20 + 64;
    v86 = ((1 << *(v27 + 32)) + 63) >> 6;
    if (v27 != v20 || v85 >= v19 + 8 * v86)
    {
      memmove(v85, (v20 + 64), 8 * v86);
      v84 = *(v20 + 16);
    }

    v87 = 0;
    *(v27 + 16) = v84;
    v88 = 1 << *(v20 + 32);
    v89 = -1;
    if (v88 < 64)
    {
      v89 = ~(-1 << v88);
    }

    v193 = (v88 + 63) >> 6;
    v90 = v89 & *(v20 + 64);
    if (v90)
    {
      do
      {
        v91 = __clz(__rbit64(v90));
        v209 = (v90 - 1) & v90;
LABEL_45:
        v94 = v91 | (v87 << 6);
        v95 = 16 * v94;
        v96 = (*(v20 + 48) + 16 * v94);
        v201 = v96[1];
        v205 = *v96;
        v19 = 72 * v94;
        outlined init with copy of AttributedString._AttributeValue(*(v20 + 56) + 72 * v94, v3 + 432);
        v97 = (*(v27 + 48) + v95);
        *v97 = v205;
        v97[1] = v201;
        v98 = *(v27 + 56) + v19;
        *v98 = *(v3 + 432);
        v99 = *(v3 + 448);
        v100 = *(v3 + 464);
        v101 = *(v3 + 480);
        *(v98 + 64) = *(v3 + 496);
        *(v98 + 32) = v100;
        *(v98 + 48) = v101;
        *(v98 + 16) = v99;

        v90 = v209;
      }

      while (v209);
    }

    v92 = v87;
    while (1)
    {
      v87 = v92 + 1;
      if (__OFADD__(v92, 1))
      {
        break;
      }

      if (v87 >= v193)
      {
        goto LABEL_62;
      }

      v93 = *(v20 + 64 + 8 * v87);
      ++v92;
      if (v93)
      {
        v91 = __clz(__rbit64(v93));
        v209 = (v93 - 1) & v93;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
    return;
  }

  v29 = v3 + 576;
  v19 = v3 + 720;
  v30 = *(v3 + 1064);
  v31 = *(v3 + 1016);
  v32 = *(v3 + 1008);
  v4(v30, v5, *(v3 + 1032));
  v15 = (*(v31 + 24))(v32, v31);
  v12 = v33;
  static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v30, v32, v31, v3 + 504);
  outlined init with copy of AttributedString._AttributeValue?(v3 + 504, v3 + 720);
  if (!*(v3 + 744))
  {
    outlined destroy of TermOfAddress?(v3 + 720, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v54 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v12);
    if (v55)
    {
      v56 = v54;
      v57 = *(v3 + 1024);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v59 = *v57;
      if (isUniquelyReferenced_nonNull_native)
      {
        v60 = v12;
        v61 = *v57;
      }

      else
      {
        v60 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v167 = static _DictionaryStorage.copy(original:)();
        v61 = v167;
        v168 = *(v59 + 16);
        if (v168)
        {
          v169 = (v167 + 64);
          v170 = ((1 << *(v61 + 32)) + 63) >> 6;
          v196 = (v59 + 64);
          if (v61 != v59 || v169 >= v59 + 64 + 8 * v170)
          {
            memmove(v169, v196, 8 * v170);
            v168 = *(v59 + 16);
          }

          v172 = 0;
          v200 = (v3 + 792);
          *(v61 + 16) = v168;
          v173 = 1 << *(v59 + 32);
          v174 = -1;
          if (v173 < 64)
          {
            v174 = ~(-1 << v173);
          }

          __srca = ((v173 + 63) >> 6);
          v175 = v174 & *(v59 + 64);
          if (v175)
          {
            do
            {
              v176 = __clz(__rbit64(v175));
              v213 = (v175 - 1) & v175;
LABEL_111:
              v179 = v176 | (v172 << 6);
              v180 = 16 * v179;
              v181 = (*(v59 + 48) + 16 * v179);
              v204 = v181[1];
              v208 = *v181;
              v182 = 72 * v179;
              outlined init with copy of AttributedString._AttributeValue(*(v59 + 56) + 72 * v179, v200);
              v183 = (*(v61 + 48) + v180);
              *v183 = v208;
              v183[1] = v204;
              v184 = *(v61 + 56) + v182;
              *v184 = *v200;
              v185 = *(v3 + 808);
              v186 = *(v3 + 824);
              v187 = *(v3 + 840);
              *(v184 + 64) = *(v3 + 856);
              *(v184 + 32) = v186;
              *(v184 + 48) = v187;
              *(v184 + 16) = v185;

              v175 = v213;
            }

            while (v213);
          }

          v177 = v172;
          while (1)
          {
            v172 = v177 + 1;
            if (__OFADD__(v177, 1))
            {
              goto LABEL_118;
            }

            if (v172 >= __srca)
            {
              break;
            }

            v178 = *(v196 + v172);
            ++v177;
            if (v178)
            {
              v176 = __clz(__rbit64(v178));
              v213 = (v178 - 1) & v178;
              goto LABEL_111;
            }
          }
        }

        v29 = v3 + 576;
      }

      v62 = *(v3 + 1024);

      v63 = *(v61 + 56) + 72 * v56;
      *v29 = *v63;
      v64 = *(v63 + 16);
      v65 = *(v63 + 32);
      v66 = *(v63 + 48);
      *(v29 + 64) = *(v63 + 64);
      *(v29 + 32) = v65;
      *(v29 + 48) = v66;
      *(v29 + 16) = v64;
      specialized _NativeDictionary._delete(at:)(v56, v61);
      *v62 = v61;
      v67 = v29;
    }

    else
    {
      v60 = v12;
      *(v3 + 640) = 0;
      *(v3 + 608) = 0u;
      *(v3 + 624) = 0u;
      *v29 = 0u;
      *(v3 + 592) = 0u;
      v67 = v3 + 576;
    }

LABEL_72:
    v127 = *(v3 + 1072);
    v211 = *(v3 + 1064);
    v129 = *(v3 + 1056);
    v130 = *(v3 + 1048);
    v141 = *(v3 + 1040);
    v142 = *(v3 + 1032);
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v15, v60, v67, v3 + 504);
    outlined destroy of TermOfAddress?(v3 + 504, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v143 = v67;
    v128 = v211;
    outlined destroy of TermOfAddress?(v143, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

    v144 = *(v141 + 8);
    v144(v211, v142);
    v144(v127, v142);
    goto LABEL_73;
  }

  v14 = v3 + 576;
  v6 = v3 + 648;
  v34 = *(v3 + 1024);
  v20 = v3 + 864;
  v35 = *(v3 + 768);
  *(v3 + 680) = *(v3 + 752);
  *(v3 + 696) = v35;
  *(v3 + 712) = *(v3 + 784);
  v36 = *(v3 + 736);
  *(v3 + 648) = *v19;
  *(v3 + 664) = v36;
  outlined init with copy of AttributedString._AttributeValue(v3 + 648, v3 + 864);
  v37 = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v34;
  v215 = *v34;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v12);
  v40 = *(v38 + 16);
  v41 = (v39 & 1) == 0;
  v25 = __OFADD__(v40, v41);
  v42 = v40 + v41;
  if (v25)
  {
    goto LABEL_31;
  }

  LOBYTE(v19) = v39;
  if (*(v38 + 24) >= v42)
  {
    if ((v37 & 1) == 0)
    {
      v190 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      v102 = static _DictionaryStorage.copy(original:)();
      v27 = v102;
      v103 = *(v38 + 16);
      if (!v103)
      {
        goto LABEL_68;
      }

      v189 = v12;
      v104 = (v102 + 64);
      __src = (v38 + 64);
      v105 = ((1 << *(v27 + 32)) + 63) >> 6;
      if (v27 != v38 || v104 >= &__src[8 * v105])
      {
        memmove(v104, __src, 8 * v105);
        v103 = *(v38 + 16);
      }

      v106 = 0;
      v194 = (v3 + 936);
      *(v27 + 16) = v103;
      v107 = 1 << *(v38 + 32);
      v108 = -1;
      if (v107 < 64)
      {
        v108 = ~(-1 << v107);
      }

      v188 = (v107 + 63) >> 6;
      v109 = v108 & *(v38 + 64);
      if (v109)
      {
        do
        {
          v110 = __clz(__rbit64(v109));
          v210 = (v109 - 1) & v109;
LABEL_60:
          v113 = v110 | (v106 << 6);
          v198 = (16 * v113);
          v114 = (*(v38 + 48) + 16 * v113);
          v202 = v114[1];
          v206 = *v114;
          v195 = 72 * v113;
          outlined init with copy of AttributedString._AttributeValue(*(v38 + 56) + 72 * v113, v194);
          v115 = &v198[*(v27 + 48)];
          *v115 = v206;
          *(v115 + 1) = v202;
          v116 = *(v27 + 56) + v195;
          *v116 = *v194;
          v117 = *(v3 + 952);
          v118 = *(v3 + 968);
          v119 = *(v3 + 984);
          *(v116 + 64) = *(v3 + 1000);
          *(v116 + 32) = v118;
          *(v116 + 48) = v119;
          *(v116 + 16) = v117;

          v109 = v210;
        }

        while (v210);
      }

      v111 = v106;
      v12 = v189;
      while (1)
      {
        v106 = v111 + 1;
        if (__OFADD__(v111, 1))
        {
          goto LABEL_116;
        }

        if (v106 >= v188)
        {
          goto LABEL_68;
        }

        v112 = *&__src[8 * v106];
        ++v111;
        if (v112)
        {
          v110 = __clz(__rbit64(v112));
          v210 = (v112 - 1) & v112;
          goto LABEL_60;
        }
      }
    }

    v27 = v38;
LABEL_26:
    v75 = v3 + 576;
    if ((v19 & 1) == 0)
    {
LABEL_69:
      *(v27 + 8 * (v21 >> 6) + 64) |= 1 << v21;
      v134 = (*(v27 + 48) + 16 * v21);
      *v134 = v15;
      v134[1] = v12;
      v135 = *(v27 + 56) + 72 * v21;
      *v135 = *v20;
      v136 = *(v20 + 16);
      v137 = *(v20 + 32);
      v138 = *(v20 + 48);
      *(v135 + 64) = *(v20 + 64);
      *(v135 + 32) = v137;
      *(v135 + 48) = v138;
      *(v135 + 16) = v136;
      v139 = *(v27 + 16);
      v25 = __OFADD__(v139, 1);
      v140 = v139 + 1;
      if (v25)
      {
        __break(1u);
LABEL_77:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v145 = static _DictionaryStorage.copy(original:)();
        v48 = v145;
        v146 = *(v6 + 16);
        if (!v146)
        {
LABEL_113:

          goto LABEL_15;
        }

        v147 = (v145 + 64);
        v148 = ((1 << *(v48 + 32)) + 63) >> 6;
        v199 = (v6 + 64);
        if (v48 != v6 || v147 >= v6 + 64 + 8 * v148)
        {
          memmove(v147, v199, 8 * v148);
          v146 = *(v6 + 16);
        }

        v150 = 0;
        *(v48 + 16) = v146;
        v151 = 1 << *(v6 + 32);
        v152 = -1;
        if (v151 < 64)
        {
          v152 = ~(-1 << v151);
        }

        v153 = (v151 + 63) >> 6;
        v154 = v152 & *(v6 + 64);
        if (v154)
        {
          do
          {
            v155 = __clz(__rbit64(v154));
            v212 = (v154 - 1) & v154;
LABEL_93:
            v158 = v155 | (v150 << 6);
            v159 = 16 * v158;
            v160 = (*(v6 + 48) + 16 * v158);
            v203 = v160[1];
            v207 = *v160;
            v161 = 72 * v158;
            outlined init with copy of AttributedString._AttributeValue(*(v6 + 56) + 72 * v158, v3 + 288);
            v162 = (*(v48 + 48) + v159);
            *v162 = v207;
            v162[1] = v203;
            v163 = *(v48 + 56) + v161;
            *v163 = *(v3 + 288);
            v164 = *(v3 + 304);
            v165 = *(v3 + 320);
            v166 = *(v3 + 336);
            *(v163 + 64) = *(v3 + 352);
            *(v163 + 32) = v165;
            *(v163 + 48) = v166;
            *(v163 + 16) = v164;

            v154 = v212;
          }

          while (v212);
        }

        v156 = v150;
        while (1)
        {
          v150 = v156 + 1;
          if (__OFADD__(v156, 1))
          {
            goto LABEL_117;
          }

          if (v150 >= v153)
          {
            goto LABEL_113;
          }

          v157 = *(v199 + v150);
          ++v156;
          if (v157)
          {
            v155 = __clz(__rbit64(v157));
            v212 = (v157 - 1) & v157;
            goto LABEL_93;
          }
        }
      }

      *(v27 + 16) = v140;
      v60 = v12;

      outlined destroy of AttributedString._AttributeValue(v6);
      *v75 = 0u;
      *(v75 + 16) = 0u;
      *(v75 + 32) = 0u;
      *(v75 + 48) = 0u;
      *(v75 + 64) = 0;
      goto LABEL_71;
    }

LABEL_27:
    v60 = v12;
    v76 = *(v27 + 56) + 72 * v21;
    *v75 = *v76;
    v77 = *(v76 + 16);
    v78 = *(v76 + 32);
    v79 = *(v76 + 48);
    *(v75 + 64) = *(v76 + 64);
    *(v75 + 32) = v78;
    *(v75 + 48) = v79;
    *(v75 + 16) = v77;
    v81 = *(v20 + 32);
    v80 = *(v20 + 48);
    v82 = *(v20 + 16);
    *(v76 + 64) = *(v20 + 64);
    *(v76 + 32) = v81;
    *(v76 + 48) = v80;
    *(v76 + 16) = v82;
    *v76 = *v20;
    outlined destroy of AttributedString._AttributeValue(v6);
LABEL_71:
    **(v3 + 1024) = v27;
    v67 = v75;
    goto LABEL_72;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v42, v37);
  v27 = v215;
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v12);
  if ((v19 & 1) == (v43 & 1))
  {
    goto LABEL_26;
  }

LABEL_11:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_12:
  outlined destroy of TermOfAddress?(v6, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  v44 = specialized __RawDictionaryStorage.find<A>(_:)(v12, v14);
  if ((v45 & 1) == 0)
  {
    *(v3 + 136) = 0;
    *(v3 + 120) = 0u;
    *(v3 + 104) = 0u;
    *(v3 + 88) = 0u;
    *(v3 + 72) = 0u;
    goto LABEL_66;
  }

  v15 = v44;
  v46 = *(v3 + 1024);
  v47 = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v46;
  if ((v47 & 1) == 0)
  {
    goto LABEL_77;
  }

  v48 = *v46;
LABEL_15:
  v49 = *(v3 + 1024);

  v50 = *(v48 + 56) + 72 * v15;
  *(v3 + 72) = *v50;
  v51 = *(v50 + 16);
  v52 = *(v50 + 32);
  v53 = *(v50 + 48);
  *(v3 + 136) = *(v50 + 64);
  *(v3 + 120) = v53;
  *(v3 + 104) = v52;
  *(v3 + 88) = v51;
  specialized _NativeDictionary._delete(at:)(v15, v48);
  *v49 = v48;
LABEL_66:
  v127 = *(v3 + 1072);
  v128 = *(v3 + 1064);
  v129 = *(v3 + 1056);
  v130 = *(v3 + 1048);
  v131 = *(v3 + 1040);
  v132 = *(v3 + 1032);
  AttributedString._AttributeStorage._attributeModified(_:old:new:)(v12, v14, v3 + 72, v3);
  outlined destroy of TermOfAddress?(v3, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  outlined destroy of TermOfAddress?(v3 + 72, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

  v133 = *(v131 + 8);
  v133(v130, v132);
  v133(v129, v132);
  v133(v127, v132);
LABEL_73:
  free(v127);
  free(v128);
  free(v129);
  free(v130);

  free(v3);
}

{
  v3 = *a1;
  v4 = *(*(*a1 + 1040) + 16);
  v5 = *(*a1 + 1088);
  if (a2)
  {
    v6 = v3 + 216;
    v7 = *(v3 + 1064);
    v8 = *(v3 + 1056);
    v9 = *(v3 + 1048);
    v10 = *(v3 + 1032);
    v11 = *(v3 + 1024);
    v12 = *(v3 + 1008);
    v4(v7, v5, v10);
    v4(v8, v7, v10);
    v4(v9, v8, v10);
    v13 = (*(v12 + 24))(v11, v12);
    v15 = v14;
    static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v9, v11, v12, v3);
    outlined init with copy of AttributedString._AttributeValue?(v3, v3 + 216);
    if (!*(v3 + 240))
    {
      goto LABEL_12;
    }

    v16 = v3 + 360;
    v17 = *(v3 + 1016);
    v18 = *(v3 + 264);
    *(v3 + 176) = *(v3 + 248);
    *(v3 + 192) = v18;
    *(v3 + 208) = *(v3 + 280);
    v19 = *(v3 + 232);
    *(v3 + 144) = *v6;
    *(v3 + 160) = v19;
    outlined init with copy of AttributedString._AttributeValue(v3 + 144, v3 + 360);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v17;
    v218 = *v17;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
    v24 = *(v21 + 16);
    v25 = (v23 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (!v26)
    {
      v6 = v23;
      if (*(v21 + 24) < v27)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
        v28 = v218;
        v22 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
        if ((v6 & 1) != (v29 & 1))
        {
          goto LABEL_11;
        }

LABEL_22:
        if (v6)
        {
LABEL_23:
          isUniquelyReferenced_nonNull_native = v13;
          v68 = *(v28 + 56) + 72 * v22;
          *(v3 + 72) = *v68;
          v69 = *(v68 + 16);
          v70 = *(v68 + 32);
          v71 = *(v68 + 48);
          *(v3 + 136) = *(v68 + 64);
          *(v3 + 120) = v71;
          *(v3 + 104) = v70;
          *(v3 + 88) = v69;
          v73 = *(v16 + 32);
          v72 = *(v16 + 48);
          v74 = *(v16 + 16);
          *(v68 + 64) = *(v16 + 64);
          *(v68 + 32) = v73;
          *(v68 + 48) = v72;
          *(v68 + 16) = v74;
          *v68 = *v16;
          outlined destroy of AttributedString._AttributeValue(v3 + 144);
LABEL_65:
          **(v3 + 1016) = v28;
          goto LABEL_66;
        }

        goto LABEL_63;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v28 = v21;
        goto LABEL_22;
      }

      goto LABEL_32;
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __src = v13;
    v204 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
    v82 = static _DictionaryStorage.copy(original:)();
    v28 = v82;
    v83 = *(v21 + 16);
    if (!v83)
    {
LABEL_62:

      v13 = __src;
      v22 = v204;
      if (v6)
      {
        goto LABEL_23;
      }

LABEL_63:
      *(v28 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v122 = (*(v28 + 48) + 16 * v22);
      *v122 = v13;
      v122[1] = v15;
      v123 = *(v28 + 56) + 72 * v22;
      *v123 = *v16;
      v124 = *(v16 + 16);
      v125 = *(v16 + 32);
      v126 = *(v16 + 48);
      *(v123 + 64) = *(v16 + 64);
      *(v123 + 32) = v125;
      *(v123 + 48) = v126;
      *(v123 + 16) = v124;
      v127 = *(v28 + 16);
      v26 = __OFADD__(v127, 1);
      v128 = v127 + 1;
      if (!v26)
      {
        isUniquelyReferenced_nonNull_native = v13;
        *(v28 + 16) = v128;

        outlined destroy of AttributedString._AttributeValue(v3 + 144);
        *(v3 + 72) = 0u;
        *(v3 + 88) = 0u;
        *(v3 + 104) = 0u;
        *(v3 + 120) = 0u;
        *(v3 + 136) = 0;
        goto LABEL_65;
      }

      __break(1u);
LABEL_68:

      v13 = v192;
      v22 = v194;
      v34 = v204;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        goto LABEL_69;
      }

      goto LABEL_27;
    }

    v196 = v15;
    v84 = (v82 + 64);
    v85 = ((1 << *(v28 + 32)) + 63) >> 6;
    if (v28 != v21 || v84 >= v21 + 64 + 8 * v85)
    {
      memmove(v84, (v21 + 64), 8 * v85);
      v83 = *(v21 + 16);
    }

    v194 = (v21 + 64);
    v86 = 0;
    *(v28 + 16) = v83;
    v87 = 1 << *(v21 + 32);
    v88 = -1;
    if (v87 < 64)
    {
      v88 = ~(-1 << v87);
    }

    v89 = (v87 + 63) >> 6;
    v90 = v88 & *(v21 + 64);
    if (v90)
    {
      do
      {
        v91 = __clz(__rbit64(v90));
        v212 = (v90 - 1) & v90;
LABEL_45:
        v94 = v91 | (v86 << 6);
        isUniquelyReferenced_nonNull_native = 16 * v94;
        v95 = (*(v21 + 48) + 16 * v94);
        v96 = v95[1];
        v206 = *v95;
        v97 = 72 * v94;
        outlined init with copy of AttributedString._AttributeValue(*(v21 + 56) + 72 * v94, v3 + 432);
        v98 = (*(v28 + 48) + isUniquelyReferenced_nonNull_native);
        *v98 = v206;
        v98[1] = v96;
        v99 = *(v28 + 56) + v97;
        *v99 = *(v3 + 432);
        v100 = *(v3 + 448);
        v101 = *(v3 + 464);
        v102 = *(v3 + 480);
        *(v99 + 64) = *(v3 + 496);
        *(v99 + 32) = v101;
        *(v99 + 48) = v102;
        *(v99 + 16) = v100;

        v90 = v212;
      }

      while (v212);
    }

    v92 = v86;
    v15 = v196;
    while (1)
    {
      v86 = v92 + 1;
      if (__OFADD__(v92, 1))
      {
        break;
      }

      if (v86 >= v89)
      {
        goto LABEL_62;
      }

      v93 = v194[v86];
      ++v92;
      if (v93)
      {
        v91 = __clz(__rbit64(v93));
        v212 = (v93 - 1) & v93;
        goto LABEL_45;
      }
    }

    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
    return;
  }

  v15 = v3 + 576;
  v30 = *(v3 + 1080);
  v31 = *(v3 + 1072);
  v32 = *(v3 + 1032);
  v33 = *(v3 + 1024);
  isUniquelyReferenced_nonNull_native = *(v3 + 1008);
  v4(v30, v5, v32);
  v4(v31, v30, v32);
  v34 = (*(isUniquelyReferenced_nonNull_native + 24))(v33, isUniquelyReferenced_nonNull_native);
  v13 = v35;
  static AttributedString._AttributeValue.wrapIfPresent<A>(_:for:)(v31, v33, isUniquelyReferenced_nonNull_native, v3 + 504);
  outlined init with copy of AttributedString._AttributeValue?(v3 + 504, v3 + 720);
  v204 = v34;
  if (!*(v3 + 744))
  {
    outlined destroy of TermOfAddress?(v3 + 720, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v55 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v13);
    if (v56)
    {
      v57 = v55;
      v58 = *(v3 + 1016);
      v59 = swift_isUniquelyReferenced_nonNull_native();
      v60 = *v58;
      v61 = v13;
      if (v59)
      {
        v62 = *v58;
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v170 = static _DictionaryStorage.copy(original:)();
        v62 = v170;
        v171 = *(v60 + 16);
        if (v171)
        {
          v172 = (v170 + 64);
          v173 = ((1 << *(v62 + 32)) + 63) >> 6;
          v195 = (v60 + 64);
          if (v62 != v60 || v172 >= v60 + 64 + 8 * v173)
          {
            memmove(v172, v195, 8 * v173);
            v171 = *(v60 + 16);
          }

          v175 = 0;
          v198 = (v3 + 792);
          *(v62 + 16) = v171;
          v176 = 1 << *(v60 + 32);
          v177 = -1;
          if (v176 < 64)
          {
            v177 = ~(-1 << v176);
          }

          v193 = (v176 + 63) >> 6;
          v178 = v177 & *(v60 + 64);
          if (v178)
          {
            do
            {
              v179 = __clz(__rbit64(v178));
              v217 = (v178 - 1) & v178;
LABEL_108:
              v182 = v179 | (v175 << 6);
              v183 = 16 * v182;
              v184 = (*(v60 + 48) + 16 * v182);
              v211 = *v184;
              __srcd = v184[1];
              v185 = 72 * v182;
              outlined init with copy of AttributedString._AttributeValue(*(v60 + 56) + 72 * v182, v198);
              v186 = (*(v62 + 48) + v183);
              *v186 = v211;
              v186[1] = __srcd;
              v187 = *(v62 + 56) + v185;
              *v187 = *v198;
              v188 = *(v3 + 808);
              v189 = *(v3 + 824);
              v190 = *(v3 + 840);
              *(v187 + 64) = *(v3 + 856);
              *(v187 + 32) = v189;
              *(v187 + 48) = v190;
              *(v187 + 16) = v188;

              v178 = v217;
            }

            while (v217);
          }

          v180 = v175;
          while (1)
          {
            v175 = v180 + 1;
            if (__OFADD__(v180, 1))
            {
              goto LABEL_115;
            }

            if (v175 >= v193)
            {
              break;
            }

            v181 = *(v195 + v175);
            ++v180;
            if (v181)
            {
              v179 = __clz(__rbit64(v181));
              v217 = (v181 - 1) & v181;
              goto LABEL_108;
            }
          }
        }
      }

      v63 = *(v3 + 1016);

      v64 = *(v62 + 56) + 72 * v57;
      *(v3 + 576) = *v64;
      v65 = *(v64 + 16);
      v66 = *(v64 + 32);
      v67 = *(v64 + 48);
      *(v3 + 640) = *(v64 + 64);
      *(v3 + 608) = v66;
      *(v3 + 624) = v67;
      *(v3 + 592) = v65;
      specialized _NativeDictionary._delete(at:)(v57, v62);
      *v63 = v62;
      v15 = v3 + 576;
    }

    else
    {
      v61 = v13;
      *(v3 + 640) = 0;
      *(v3 + 608) = 0u;
      *(v3 + 624) = 0u;
      *v15 = 0u;
      *(v3 + 592) = 0u;
    }

LABEL_72:
    v129 = *(v3 + 1088);
    v209 = *(v3 + 1080);
    v215 = *(v3 + 1072);
    __srcc = *(v3 + 1064);
    v130 = *(v3 + 1056);
    v131 = *(v3 + 1048);
    v147 = *(v3 + 1040);
    v133 = *(v3 + 1032);
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v204, v61, v15, v3 + 504);
    outlined destroy of TermOfAddress?(v3 + 504, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v148 = v15;
    v136 = v209;
    v137 = v215;
    outlined destroy of TermOfAddress?(v148, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v135 = __srcc;

    v138 = *(v147 + 8);
    v138(v209, v133);
    v139 = v215;
    goto LABEL_73;
  }

  v6 = v3 + 648;
  v36 = *(v3 + 1016);
  v21 = v3 + 864;
  v37 = *(v3 + 768);
  *(v3 + 680) = *(v3 + 752);
  *(v3 + 696) = v37;
  *(v3 + 712) = *(v3 + 784);
  v38 = *(v3 + 736);
  *(v3 + 648) = *(v3 + 720);
  *(v3 + 664) = v38;
  outlined init with copy of AttributedString._AttributeValue(v3 + 648, v3 + 864);
  v16 = swift_isUniquelyReferenced_nonNull_native();
  v39 = *v36;
  v219 = *v36;
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v13);
  v41 = *(v39 + 16);
  v42 = (v40 & 1) == 0;
  v26 = __OFADD__(v41, v42);
  v43 = v41 + v42;
  if (v26)
  {
    goto LABEL_31;
  }

  isUniquelyReferenced_nonNull_native = v40;
  if (*(v39 + 24) >= v43)
  {
    if ((v16 & 1) == 0)
    {
      v192 = v13;
      v194 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      v103 = static _DictionaryStorage.copy(original:)();
      v28 = v103;
      v104 = *(v39 + 16);
      if (!v104)
      {
        goto LABEL_68;
      }

      v105 = (v103 + 64);
      v106 = ((1 << *(v28 + 32)) + 63) >> 6;
      if (v28 != v39 || v105 >= v39 + 64 + 8 * v106)
      {
        memmove(v105, (v39 + 64), 8 * v106);
        v104 = *(v39 + 16);
      }

      v107 = 0;
      v197 = (v3 + 936);
      *(v28 + 16) = v104;
      v108 = 1 << *(v39 + 32);
      v109 = -1;
      if (v108 < 64)
      {
        v109 = ~(-1 << v108);
      }

      v191 = (v108 + 63) >> 6;
      v110 = v109 & *(v39 + 64);
      if (v110)
      {
        do
        {
          v111 = __clz(__rbit64(v110));
          v213 = (v110 - 1) & v110;
LABEL_60:
          v114 = v111 | (v107 << 6);
          v16 = 16 * v114;
          v115 = (*(v39 + 48) + 16 * v114);
          v207 = *v115;
          __srcb = v115[1];
          v116 = 72 * v114;
          outlined init with copy of AttributedString._AttributeValue(*(v39 + 56) + 72 * v114, v197);
          v117 = (*(v28 + 48) + v16);
          *v117 = v207;
          v117[1] = __srcb;
          v118 = *(v28 + 56) + v116;
          *v118 = *v197;
          v119 = *(v3 + 952);
          v120 = *(v3 + 968);
          v121 = *(v3 + 984);
          *(v118 + 64) = *(v3 + 1000);
          *(v118 + 32) = v120;
          *(v118 + 48) = v121;
          *(v118 + 16) = v119;

          v110 = v213;
        }

        while (v213);
      }

      v112 = v107;
      v15 = v3 + 576;
      while (1)
      {
        v107 = v112 + 1;
        if (__OFADD__(v112, 1))
        {
          goto LABEL_113;
        }

        if (v107 >= v191)
        {
          goto LABEL_68;
        }

        v113 = *(v39 + 64 + 8 * v107);
        ++v112;
        if (v113)
        {
          v111 = __clz(__rbit64(v113));
          v213 = (v113 - 1) & v113;
          goto LABEL_60;
        }
      }
    }

    v28 = v39;
LABEL_26:
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
LABEL_69:
      *(v28 + 8 * (v22 >> 6) + 64) |= 1 << v22;
      v140 = (*(v28 + 48) + 16 * v22);
      *v140 = v34;
      v140[1] = v13;
      v141 = *(v28 + 56) + 72 * v22;
      *v141 = *v21;
      v142 = *(v21 + 16);
      v143 = *(v21 + 32);
      v144 = *(v21 + 48);
      *(v141 + 64) = *(v21 + 64);
      *(v141 + 32) = v143;
      *(v141 + 48) = v144;
      *(v141 + 16) = v142;
      v145 = *(v28 + 16);
      v26 = __OFADD__(v145, 1);
      v146 = v145 + 1;
      if (v26)
      {
        __break(1u);
LABEL_77:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v149 = static _DictionaryStorage.copy(original:)();
        v49 = v149;
        v150 = *(v6 + 16);
        if (!v150)
        {
LABEL_110:

          goto LABEL_15;
        }

        v151 = (v149 + 64);
        __srca = (v6 + 64);
        v152 = ((1 << *(v49 + 32)) + 63) >> 6;
        if (v49 != v6 || v151 >= &__srca[8 * v152])
        {
          memmove(v151, __srca, 8 * v152);
          v150 = *(v6 + 16);
        }

        v153 = 0;
        *(v49 + 16) = v150;
        v154 = 1 << *(v6 + 32);
        v155 = -1;
        if (v154 < 64)
        {
          v155 = ~(-1 << v154);
        }

        v156 = (v154 + 63) >> 6;
        v157 = v155 & *(v6 + 64);
        if (v157)
        {
          do
          {
            v158 = __clz(__rbit64(v157));
            v216 = (v157 - 1) & v157;
LABEL_90:
            v161 = v158 | (v153 << 6);
            v162 = 16 * v161;
            v163 = (*(v6 + 48) + 16 * v161);
            v205 = v163[1];
            v210 = *v163;
            v164 = 72 * v161;
            outlined init with copy of AttributedString._AttributeValue(*(v6 + 56) + 72 * v161, v3 + 288);
            v165 = (*(v49 + 48) + v162);
            *v165 = v210;
            v165[1] = v205;
            v166 = *(v49 + 56) + v164;
            *v166 = *(v3 + 288);
            v167 = *(v3 + 304);
            v168 = *(v3 + 320);
            v169 = *(v3 + 336);
            *(v166 + 64) = *(v3 + 352);
            *(v166 + 32) = v168;
            *(v166 + 48) = v169;
            *(v166 + 16) = v167;

            v157 = v216;
          }

          while (v216);
        }

        v159 = v153;
        while (1)
        {
          v153 = v159 + 1;
          if (__OFADD__(v159, 1))
          {
            goto LABEL_114;
          }

          if (v153 >= v156)
          {
            goto LABEL_110;
          }

          v160 = *&__srca[8 * v153];
          ++v159;
          if (v160)
          {
            v158 = __clz(__rbit64(v160));
            v216 = (v160 - 1) & v160;
            goto LABEL_90;
          }
        }
      }

      *(v28 + 16) = v146;
      v61 = v13;

      outlined destroy of AttributedString._AttributeValue(v6);
      *v15 = 0u;
      *(v15 + 16) = 0u;
      *(v15 + 32) = 0u;
      *(v15 + 48) = 0u;
      *(v15 + 64) = 0;
      goto LABEL_71;
    }

LABEL_27:
    v61 = v13;
    v75 = *(v28 + 56) + 72 * v22;
    *v15 = *v75;
    v76 = *(v75 + 16);
    v77 = *(v75 + 32);
    v78 = *(v75 + 48);
    *(v15 + 64) = *(v75 + 64);
    *(v15 + 32) = v77;
    *(v15 + 48) = v78;
    *(v15 + 16) = v76;
    v80 = *(v21 + 32);
    v79 = *(v21 + 48);
    v81 = *(v21 + 16);
    *(v75 + 64) = *(v21 + 64);
    *(v75 + 32) = v80;
    *(v75 + 48) = v79;
    *(v75 + 16) = v81;
    *v75 = *v21;
    outlined destroy of AttributedString._AttributeValue(v6);
LABEL_71:
    **(v3 + 1016) = v28;
    goto LABEL_72;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v43, v16);
  v28 = v219;
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == (v44 & 1))
  {
    goto LABEL_26;
  }

LABEL_11:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_12:
  outlined destroy of TermOfAddress?(v6, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  v45 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v15);
  if ((v46 & 1) == 0)
  {
    isUniquelyReferenced_nonNull_native = v13;
    *(v3 + 136) = 0;
    *(v3 + 120) = 0u;
    *(v3 + 104) = 0u;
    *(v3 + 88) = 0u;
    *(v3 + 72) = 0u;
    goto LABEL_66;
  }

  v16 = v45;
  v47 = *(v3 + 1016);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v47;
  isUniquelyReferenced_nonNull_native = v13;
  v21 = v15;
  if ((v48 & 1) == 0)
  {
    goto LABEL_77;
  }

  v49 = *v47;
LABEL_15:
  v50 = *(v3 + 1016);

  v51 = *(v49 + 56) + 72 * v16;
  *(v3 + 72) = *v51;
  v52 = *(v51 + 16);
  v53 = *(v51 + 32);
  v54 = *(v51 + 48);
  *(v3 + 136) = *(v51 + 64);
  *(v3 + 120) = v54;
  *(v3 + 104) = v53;
  *(v3 + 88) = v52;
  specialized _NativeDictionary._delete(at:)(v16, v49);
  *v50 = v49;
  v15 = v21;
LABEL_66:
  v129 = *(v3 + 1088);
  v208 = *(v3 + 1080);
  v214 = *(v3 + 1072);
  v130 = *(v3 + 1056);
  v131 = *(v3 + 1048);
  v132 = *(v3 + 1040);
  v133 = *(v3 + 1032);
  v134 = isUniquelyReferenced_nonNull_native;
  v135 = *(v3 + 1064);
  AttributedString._AttributeStorage._attributeModified(_:old:new:)(v134, v15, v3 + 72, v3);
  outlined destroy of TermOfAddress?(v3, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  v136 = v208;
  outlined destroy of TermOfAddress?(v3 + 72, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  v137 = v214;

  v138 = *(v132 + 8);
  v138(v130, v133);
  v138(v131, v133);
  v139 = v135;
LABEL_73:
  v138(v139, v133);
  v138(v129, v133);
  free(v129);
  free(v136);
  free(v137);
  free(v135);
  free(v130);
  free(v131);

  free(v3);
}

void (*AttributeContainer.subscript.modify(void *a1, void *a2, uint64_t a3))(uint64_t *a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x450uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[127] = v3;
  v8[126] = a3;
  v10 = *(*a2 + *MEMORY[0x1E69E77B0] + 8);
  v8[128] = v10;
  swift_getAssociatedTypeWitness();
  v11 = type metadata accessor for Optional();
  v9[129] = v11;
  v12 = *(v11 - 8);
  v9[130] = v12;
  v13 = *(v12 + 64);
  if (v7)
  {
    v9[131] = swift_coroFrameAlloc();
    v9[132] = swift_coroFrameAlloc();
    v9[133] = swift_coroFrameAlloc();
    v9[134] = swift_coroFrameAlloc();
    v9[135] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[131] = malloc(*(v12 + 64));
    v9[132] = malloc(v13);
    v9[133] = malloc(v13);
    v9[134] = malloc(v13);
    v9[135] = malloc(v13);
    v14 = malloc(v13);
  }

  v9[136] = v14;
  v15 = *v3;
  v9[137] = *v3;
  AttributedString._AttributeStorage.subscript.getter(v15, v10, a3, v14);
  return AttributeContainer.subscript.modify;
}

double key path getter for AttributeContainer.subscript<A>(dynamicMember:) : <A>AttributeContainerA@<D0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v5[2] = *a1;
  AttributeContainer.subscript.getter(v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  a2[1] = v4;
  return result;
}

uint64_t key path setter for AttributeContainer.subscript<A>(dynamicMember:) : <A>AttributeContainerA(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v3 = a1[3];

  v5 = AttributeContainer.subscript.modify(v8);
  *v6 = v1;
  v6[1] = v2;
  v6[2] = v4;
  v6[3] = v3;

  return (v5)(v8, 0);
}

void (*AttributeContainer.subscript.modify(void *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x190uLL);
  }

  *a1 = v3;
  v3[48] = 0;
  v3[49] = v1;
  v3[47] = 0;
  v4 = MEMORY[0x1E69E7CD0];
  v3[45] = MEMORY[0x1E69E7CC8];
  v3[46] = v4;
  return AttributeContainer.subscript.modify;
}

void AttributeContainer.subscript.modify(char **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1 + 216);
  v6 = *(*a1 + 47);
  v5 = *(*a1 + 48);
  if (a2)
  {
    if (v5)
    {
      *(v3 + 8) = 0;
      *(v3 + 2) = 0u;
      *(v3 + 3) = 0u;
      *v3 = 0u;
      *(v3 + 1) = 0u;
      outlined init with copy of AttributedString._AttributeValue?(v3, v4);
      v7 = *(v3 + 49);
      if (*(v3 + 30))
      {
        v8 = *(v4 + 48);
        *(v3 + 11) = *(v4 + 32);
        *(v3 + 12) = v8;
        *(v3 + 26) = *(v4 + 64);
        v9 = *(v4 + 16);
        *(v3 + 9) = *v4;
        *(v3 + 10) = v9;
        outlined init with copy of AttributedString._AttributeValue((v3 + 144), v4);

        LOBYTE(v10) = swift_isUniquelyReferenced_nonNull_native();
        v164 = *v7;
        v11 = v164;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
        v14 = *(v164 + 16);
        v15 = (v13 & 1) == 0;
        v16 = __OFADD__(v14, v15);
        v17 = v14 + v15;
        if (!v16)
        {
          v2 = v13;
          if (*(v164 + 24) < v17)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, v10);
            v18 = v164;
            v12 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
            if ((v2 & 1) == (v19 & 1))
            {
              if ((v2 & 1) == 0)
              {
                goto LABEL_43;
              }

              goto LABEL_48;
            }

LABEL_120:
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            return;
          }

          if (v10)
          {
            v18 = v164;
            if ((v13 & 1) == 0)
            {
LABEL_43:
              *(v18 + 8 * (v12 >> 6) + 64) |= 1 << v12;
              v63 = (*(v18 + 48) + 16 * v12);
              *v63 = v6;
              v63[1] = v5;
              v64 = *(v18 + 56) + 72 * v12;
              *v64 = *v4;
              v65 = *(v4 + 16);
              v66 = *(v4 + 32);
              v67 = *(v4 + 48);
              *(v64 + 64) = *(v4 + 64);
              *(v64 + 32) = v66;
              *(v64 + 48) = v67;
              *(v64 + 16) = v65;
              v68 = *(v18 + 16);
              v16 = __OFADD__(v68, 1);
              v69 = v68 + 1;
              if (!v16)
              {
                goto LABEL_91;
              }

              __break(1u);
              goto LABEL_46;
            }

LABEL_48:
            v70 = *(v18 + 56) + 72 * v12;
            *(v3 + 72) = *v70;
            v71 = *(v70 + 16);
            v72 = *(v70 + 32);
            v73 = *(v70 + 48);
            *(v3 + 17) = *(v70 + 64);
            *(v3 + 120) = v73;
            *(v3 + 104) = v72;
            *(v3 + 88) = v71;
            v75 = *(v4 + 32);
            v74 = *(v4 + 48);
            v76 = *(v4 + 16);
            *(v70 + 64) = *(v4 + 64);
            *(v70 + 32) = v75;
            *(v70 + 48) = v74;
            *(v70 + 16) = v76;
            *v70 = *v4;
            outlined destroy of AttributedString._AttributeValue((v3 + 144));
LABEL_92:
            **(v3 + 49) = v18;
            goto LABEL_93;
          }

LABEL_51:
          v146 = v12;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v77 = static _DictionaryStorage.copy(original:)();
          v18 = v77;
          v78 = *(v11 + 16);
          if (v78)
          {
            v79 = (v77 + 64);
            v80 = ((1 << *(v18 + 32)) + 63) >> 6;
            v149 = (v11 + 64);
            if (v18 != v11 || v79 >= v11 + 64 + 8 * v80)
            {
              memmove(v79, v149, 8 * v80);
              v78 = *(v11 + 16);
            }

            v82 = 0;
            *(v18 + 16) = v78;
            v83 = 1 << *(v11 + 32);
            v84 = -1;
            if (v83 < 64)
            {
              v84 = ~(-1 << v83);
            }

            v144 = (v83 + 63) >> 6;
            v85 = v84 & *(v11 + 64);
            if (v85)
            {
              do
              {
                v86 = __clz(__rbit64(v85));
                v161 = (v85 - 1) & v85;
LABEL_67:
                v89 = v86 | (v82 << 6);
                v90 = 16 * v89;
                v91 = (*(v11 + 48) + 16 * v89);
                __srcb = v91[1];
                v157 = *v91;
                v10 = 72 * v89;
                outlined init with copy of AttributedString._AttributeValue(*(v11 + 56) + 72 * v89, (v3 + 288));
                v92 = (*(v18 + 48) + v90);
                *v92 = v157;
                v92[1] = __srcb;
                v93 = *(v18 + 56) + v10;
                *v93 = *(v3 + 18);
                v94 = *(v3 + 19);
                v95 = *(v3 + 20);
                v96 = *(v3 + 21);
                *(v93 + 64) = *(v3 + 44);
                *(v93 + 32) = v95;
                *(v93 + 48) = v96;
                *(v93 + 16) = v94;

                v85 = v161;
              }

              while (v161);
            }

            v87 = v82;
            while (1)
            {
              v82 = v87 + 1;
              if (__OFADD__(v87, 1))
              {
                break;
              }

              if (v82 >= v144)
              {
                goto LABEL_87;
              }

              v88 = *(v149 + v82);
              ++v87;
              if (v88)
              {
                v86 = __clz(__rbit64(v88));
                v161 = (v88 - 1) & v88;
                goto LABEL_67;
              }
            }

            __break(1u);
            goto LABEL_117;
          }

LABEL_87:

          v12 = v146;
          if (v2)
          {
            goto LABEL_48;
          }

          goto LABEL_43;
        }

        __break(1u);
LABEL_50:
        __break(1u);
        goto LABEL_51;
      }

      outlined destroy of TermOfAddress?(v4, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
      if (v30)
      {
        v4 = v29;
        v31 = *(v3 + 49);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v2 = *v31;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v33 = static _DictionaryStorage.copy(original:)();
          v34 = v33;
          v35 = *(v2 + 16);
          if (!v35)
          {
LABEL_115:

            goto LABEL_39;
          }

          v36 = (v33 + 64);
          v37 = ((1 << *(v34 + 32)) + 63) >> 6;
          __src = (v2 + 64);
          if (v34 != v2 || v36 >= v2 + 64 + 8 * v37)
          {
            memmove(v36, __src, 8 * v37);
            v35 = *(v2 + 16);
          }

          v39 = 0;
          *(v34 + 16) = v35;
          v40 = 1 << *(v2 + 32);
          v41 = -1;
          if (v40 < 64)
          {
            v41 = ~(-1 << v40);
          }

          v148 = ((v40 + 63) >> 6);
          v42 = v41 & *(v2 + 64);
          if (v42)
          {
            do
            {
LABEL_34:
              v160 = (v42 - 1) & v42;
              v44 = __clz(__rbit64(v42)) | (v39 << 6);
              v45 = 16 * v44;
              v46 = (*(v2 + 48) + 16 * v44);
              v47 = v46[1];
              v156 = *v46;
              v48 = 72 * v44;
              outlined init with copy of AttributedString._AttributeValue(*(v2 + 56) + 72 * v44, (v3 + 144));
              v49 = (*(v34 + 48) + v45);
              *v49 = v156;
              v49[1] = v47;
              v50 = *(v34 + 56) + v48;
              *v50 = *(v3 + 9);
              v51 = *(v3 + 10);
              v52 = *(v3 + 11);
              v53 = *(v3 + 12);
              *(v50 + 64) = *(v3 + 26);
              *(v50 + 32) = v52;
              *(v50 + 48) = v53;
              *(v50 + 16) = v51;

              v42 = v160;
            }

            while (v160);
          }

          v43 = v39;
          while (1)
          {
            v39 = v43 + 1;
            if (__OFADD__(v43, 1))
            {
              break;
            }

            if (v39 >= v148)
            {
              goto LABEL_115;
            }

            v42 = *(__src + v39);
            ++v43;
            if (v42)
            {
              goto LABEL_34;
            }
          }

LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

LABEL_38:
        v34 = v2;
LABEL_39:
        v58 = *(v3 + 49);

        v59 = *(v34 + 56) + 72 * v4;
        *(v3 + 72) = *v59;
        v60 = *(v59 + 16);
        v61 = *(v59 + 32);
        v62 = *(v59 + 48);
        *(v3 + 17) = *(v59 + 64);
        *(v3 + 120) = v62;
        *(v3 + 104) = v61;
        *(v3 + 88) = v60;
        specialized _NativeDictionary._delete(at:)(v4, v34);
        *v58 = v34;
LABEL_93:
        AttributedString._AttributeStorage._attributeModified(_:old:new:)(v6, v5, (v3 + 72), v3);
        outlined destroy of TermOfAddress?(v3, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        outlined destroy of TermOfAddress?((v3 + 72), &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        goto LABEL_94;
      }

      goto LABEL_40;
    }
  }

  else if (v5)
  {
    *(v3 + 8) = 0;
    *(v3 + 2) = 0u;
    *(v3 + 3) = 0u;
    *v3 = 0u;
    *(v3 + 1) = 0u;
    outlined init with copy of AttributedString._AttributeValue?(v3, v4);
    v20 = *(v3 + 49);
    if (*(v3 + 30))
    {
      v21 = *(v4 + 48);
      *(v3 + 11) = *(v4 + 32);
      *(v3 + 12) = v21;
      *(v3 + 26) = *(v4 + 64);
      v22 = *(v4 + 16);
      *(v3 + 9) = *v4;
      *(v3 + 10) = v22;
      outlined init with copy of AttributedString._AttributeValue((v3 + 144), v4);

      LOBYTE(v10) = swift_isUniquelyReferenced_nonNull_native();
      v164 = *v20;
      v11 = v164;
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
      v24 = *(v164 + 16);
      v25 = (v23 & 1) == 0;
      v16 = __OFADD__(v24, v25);
      v26 = v24 + v25;
      if (!v16)
      {
        v2 = v23;
        if (*(v164 + 24) >= v26)
        {
LABEL_46:
          if (v10)
          {
            v18 = v11;
            if (v2)
            {
              goto LABEL_48;
            }

            goto LABEL_90;
          }

          v147 = v12;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v97 = static _DictionaryStorage.copy(original:)();
          v18 = v97;
          v98 = *(v11 + 16);
          if (v98)
          {
            v99 = (v97 + 64);
            v100 = ((1 << *(v18 + 32)) + 63) >> 6;
            v150 = (v11 + 64);
            if (v18 != v11 || v99 >= v11 + 64 + 8 * v100)
            {
              memmove(v99, v150, 8 * v100);
              v98 = *(v11 + 16);
            }

            v102 = 0;
            *(v18 + 16) = v98;
            v103 = 1 << *(v11 + 32);
            v104 = -1;
            if (v103 < 64)
            {
              v104 = ~(-1 << v103);
            }

            v145 = (v103 + 63) >> 6;
            v105 = v104 & *(v11 + 64);
            if (v105)
            {
              do
              {
                v106 = __clz(__rbit64(v105));
                v162 = (v105 - 1) & v105;
LABEL_85:
                v109 = v106 | (v102 << 6);
                v110 = 16 * v109;
                v111 = (*(v11 + 48) + 16 * v109);
                __srcc = v111[1];
                v158 = *v111;
                v112 = 72 * v109;
                outlined init with copy of AttributedString._AttributeValue(*(v11 + 56) + 72 * v109, (v3 + 288));
                v113 = (*(v18 + 48) + v110);
                *v113 = v158;
                v113[1] = __srcc;
                v114 = *(v18 + 56) + v112;
                *v114 = *(v3 + 18);
                v115 = *(v3 + 19);
                v116 = *(v3 + 20);
                v117 = *(v3 + 21);
                *(v114 + 64) = *(v3 + 44);
                *(v114 + 32) = v116;
                *(v114 + 48) = v117;
                *(v114 + 16) = v115;

                v105 = v162;
              }

              while (v162);
            }

            v107 = v102;
            while (1)
            {
              v102 = v107 + 1;
              if (__OFADD__(v107, 1))
              {
                break;
              }

              if (v102 >= v145)
              {
                goto LABEL_89;
              }

              v108 = *(v150 + v102);
              ++v107;
              if (v108)
              {
                v106 = __clz(__rbit64(v108));
                v162 = (v108 - 1) & v108;
                goto LABEL_85;
              }
            }

LABEL_117:
            __break(1u);
            goto LABEL_118;
          }

LABEL_89:

          v12 = v147;
          if (v2)
          {
            goto LABEL_48;
          }

LABEL_90:
          *(v18 + 8 * (v12 >> 6) + 64) |= 1 << v12;
          v118 = (*(v18 + 48) + 16 * v12);
          *v118 = v6;
          v118[1] = v5;
          v119 = *(v18 + 56) + 72 * v12;
          *v119 = *v4;
          v120 = *(v4 + 16);
          v121 = *(v4 + 32);
          v122 = *(v4 + 48);
          *(v119 + 64) = *(v4 + 64);
          *(v119 + 32) = v121;
          *(v119 + 48) = v122;
          *(v119 + 16) = v120;
          v123 = *(v18 + 16);
          v16 = __OFADD__(v123, 1);
          v69 = v123 + 1;
          if (!v16)
          {
LABEL_91:
            *(v18 + 16) = v69;

            outlined destroy of AttributedString._AttributeValue((v3 + 144));
            *(v3 + 72) = 0u;
            *(v3 + 88) = 0u;
            *(v3 + 104) = 0u;
            *(v3 + 120) = 0u;
            *(v3 + 17) = 0;
            goto LABEL_92;
          }

          __break(1u);
LABEL_98:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v124 = static _DictionaryStorage.copy(original:)();
          v34 = v124;
          v125 = *(v2 + 16);
          if (v125)
          {
            v126 = (v124 + 64);
            v127 = ((1 << *(v34 + 32)) + 63) >> 6;
            __srca = (v2 + 64);
            if (v34 != v2 || v126 >= v2 + 64 + 8 * v127)
            {
              memmove(v126, __srca, 8 * v127);
              v125 = *(v2 + 16);
            }

            v129 = 0;
            *(v34 + 16) = v125;
            v130 = 1 << *(v2 + 32);
            v131 = -1;
            if (v130 < 64)
            {
              v131 = ~(-1 << v130);
            }

            v151 = ((v130 + 63) >> 6);
            v132 = v131 & *(v2 + 64);
            if (v132)
            {
              do
              {
LABEL_113:
                v163 = (v132 - 1) & v132;
                v134 = __clz(__rbit64(v132)) | (v129 << 6);
                v135 = 16 * v134;
                v136 = (*(v2 + 48) + 16 * v134);
                v137 = v136[1];
                v159 = *v136;
                v138 = 72 * v134;
                outlined init with copy of AttributedString._AttributeValue(*(v2 + 56) + 72 * v134, (v3 + 144));
                v139 = (*(v34 + 48) + v135);
                *v139 = v159;
                v139[1] = v137;
                v140 = *(v34 + 56) + v138;
                *v140 = *(v3 + 9);
                v141 = *(v3 + 10);
                v142 = *(v3 + 11);
                v143 = *(v3 + 12);
                *(v140 + 64) = *(v3 + 26);
                *(v140 + 32) = v142;
                *(v140 + 48) = v143;
                *(v140 + 16) = v141;

                v132 = v163;
              }

              while (v163);
            }

            v133 = v129;
            while (1)
            {
              v129 = v133 + 1;
              if (__OFADD__(v133, 1))
              {
                goto LABEL_119;
              }

              if (v129 >= v151)
              {
                goto LABEL_115;
              }

              v132 = *(__srca + v129);
              ++v133;
              if (v132)
              {
                goto LABEL_113;
              }
            }
          }

          goto LABEL_115;
        }

        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, v10);
        v18 = v164;
        v12 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
        if ((v2 & 1) == (v27 & 1))
        {
          if (v2)
          {
            goto LABEL_48;
          }

          goto LABEL_90;
        }

        goto LABEL_120;
      }

      goto LABEL_50;
    }

    outlined destroy of TermOfAddress?(v4, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v54 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v5);
    if (v55)
    {
      v4 = v54;
      v56 = *(v3 + 49);
      v57 = swift_isUniquelyReferenced_nonNull_native();
      v2 = *v56;
      if ((v57 & 1) == 0)
      {
        goto LABEL_98;
      }

      goto LABEL_38;
    }

LABEL_40:
    *(v3 + 17) = 0;
    *(v3 + 120) = 0u;
    *(v3 + 104) = 0u;
    *(v3 + 88) = 0u;
    *(v3 + 72) = 0u;
    goto LABEL_93;
  }

  v28 = *(v3 + 45);
  LOBYTE(v164) = 0;

  specialized AttributedString._AttributeStorage.mergeIn(_:mergePolicy:)(v28, &v164);

LABEL_94:

  free(v3);
}

uint64_t AttributeContainer.subscript.setter(uint64_t *a1)
{
  v3 = *a1;
  v5 = a1[2];
  v4 = a1[3];

  if (!v4)
  {
    LOBYTE(v100[0]) = 0;
    specialized AttributedString._AttributeStorage.mergeIn(_:mergePolicy:)(v3, v100);

LABEL_38:
  }

  v101 = 0;
  memset(v100, 0, sizeof(v100));
  outlined init with copy of AttributedString._AttributeValue?(v100, &v95);
  if (!*(&v96 + 1))
  {
    outlined destroy of TermOfAddress?(&v95, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v7 = v1;
    v18 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v4);
    if ((v19 & 1) == 0)
    {
      v99 = 0;
      v97 = 0u;
      v98 = 0u;
      v95 = 0u;
      v96 = 0u;
LABEL_37:
      AttributedString._AttributeStorage._attributeModified(_:old:new:)(v5, v4, &v95, v100);
      outlined destroy of TermOfAddress?(v100, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      outlined destroy of TermOfAddress?(&v95, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

      goto LABEL_38;
    }

    v2 = v18;
    v17 = v1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v1;
    if (isUniquelyReferenced_nonNull_native)
    {
      v15 = *v1;
LABEL_12:

      v21 = *(v15 + 56) + 72 * v2;
      v95 = *v21;
      v23 = *(v21 + 32);
      v22 = *(v21 + 48);
      v24 = *(v21 + 64);
      v96 = *(v21 + 16);
      v97 = v23;
      v99 = v24;
      v98 = v22;
      specialized _NativeDictionary._delete(at:)(v2, v15);
LABEL_36:
      *v17 = v15;
      goto LABEL_37;
    }

LABEL_40:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
    v58 = static _DictionaryStorage.copy(original:)();
    v15 = v58;
    if (*(v8 + 16))
    {
      v59 = (v58 + 64);
      v60 = ((1 << *(v15 + 32)) + 63) >> 6;
      if (v15 != v8 || v59 >= v8 + 64 + 8 * v60)
      {
        memmove(v59, (v8 + 64), 8 * v60);
      }

      v61 = 0;
      *(v15 + 16) = *(v8 + 16);
      v62 = 1 << *(v8 + 32);
      v63 = -1;
      if (v62 < 64)
      {
        v63 = ~(-1 << v62);
      }

      v77 = (v62 + 63) >> 6;
      v64 = v63 & *(v8 + 64);
      if (v64)
      {
        do
        {
          v65 = __clz(__rbit64(v64));
          v86 = (v64 - 1) & v64;
LABEL_53:
          v68 = v65 | (v61 << 6);
          v80 = 16 * v68;
          v69 = (*(v8 + 48) + 16 * v68);
          v82 = v69[1];
          v84 = *v69;
          v70 = 72 * v68;
          outlined init with copy of AttributedString._AttributeValue(*(v8 + 56) + 72 * v68, &v95);
          v71 = (*(v15 + 48) + v80);
          *v71 = v84;
          v71[1] = v82;
          v72 = *(v15 + 56) + v70;
          *v72 = v95;
          v73 = v96;
          v74 = v97;
          v75 = v98;
          *(v72 + 64) = v99;
          *(v72 + 32) = v74;
          *(v72 + 48) = v75;
          *(v72 + 16) = v73;

          v64 = v86;
        }

        while (v86);
      }

      v66 = v61;
      while (1)
      {
        v61 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          break;
        }

        if (v61 >= v77)
        {
          goto LABEL_55;
        }

        v67 = *(v8 + 64 + 8 * v61);
        ++v66;
        if (v67)
        {
          v65 = __clz(__rbit64(v67));
          v86 = (v67 - 1) & v67;
          goto LABEL_53;
        }
      }

LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

LABEL_55:

    v17 = v7;
    goto LABEL_12;
  }

  v93[2] = v97;
  v93[3] = v98;
  v94 = v99;
  v93[0] = v95;
  v93[1] = v96;
  outlined init with copy of AttributedString._AttributeValue(v93, &v88);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  v7 = v1;
  v8 = *v1;
  v87 = *v1;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v4);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_18;
  }

  v2 = v10;
  if (*(v8 + 24) >= v14)
  {
    if (v6)
    {
      v17 = v1;
      v15 = v8;
      if ((v10 & 1) == 0)
      {
LABEL_34:
        *(v15 + 8 * (v9 >> 6) + 64) |= 1 << v9;
        v50 = (*(v15 + 48) + 16 * v9);
        *v50 = v5;
        v50[1] = v4;
        v51 = *(v15 + 56) + 72 * v9;
        *v51 = v88;
        v52 = v89;
        v53 = v90;
        v54 = v91;
        *(v51 + 64) = v92;
        *(v51 + 32) = v53;
        *(v51 + 48) = v54;
        *(v51 + 16) = v52;
        v55 = *(v15 + 16);
        v13 = __OFADD__(v55, 1);
        v56 = v55 + 1;
        if (!v13)
        {
          *(v15 + 16) = v56;

          outlined destroy of AttributedString._AttributeValue(v93);
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v98 = 0u;
          v99 = 0;
          goto LABEL_36;
        }

        __break(1u);
        goto LABEL_40;
      }

LABEL_15:
      v25 = *(v15 + 56) + 72 * v9;
      v95 = *v25;
      v26 = *(v25 + 16);
      v27 = *(v25 + 32);
      v28 = *(v25 + 48);
      v99 = *(v25 + 64);
      v97 = v27;
      v98 = v28;
      v96 = v26;
      v29 = v89;
      v30 = v90;
      v31 = v91;
      *(v25 + 64) = v92;
      *(v25 + 32) = v30;
      *(v25 + 48) = v31;
      *v25 = v88;
      *(v25 + 16) = v29;
      outlined destroy of AttributedString._AttributeValue(v93);
      goto LABEL_36;
    }

LABEL_18:
    v78 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
    v32 = static _DictionaryStorage.copy(original:)();
    v15 = v32;
    if (*(v8 + 16))
    {
      v33 = (v32 + 64);
      v34 = ((1 << *(v15 + 32)) + 63) >> 6;
      if (v15 != v8 || v33 >= v8 + 64 + 8 * v34)
      {
        memmove(v33, (v8 + 64), 8 * v34);
      }

      v35 = 0;
      *(v15 + 16) = *(v8 + 16);
      v36 = 1 << *(v8 + 32);
      v37 = -1;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      v76 = (v36 + 63) >> 6;
      v38 = v37 & *(v8 + 64);
      if (v38)
      {
        do
        {
          v39 = __clz(__rbit64(v38));
          v85 = (v38 - 1) & v38;
LABEL_31:
          v42 = v39 | (v35 << 6);
          v79 = 16 * v42;
          v43 = (*(v8 + 48) + 16 * v42);
          v81 = v43[1];
          v83 = *v43;
          v44 = 72 * v42;
          outlined init with copy of AttributedString._AttributeValue(*(v8 + 56) + 72 * v42, &v95);
          v45 = (*(v15 + 48) + v79);
          *v45 = v83;
          v45[1] = v81;
          v46 = *(v15 + 56) + v44;
          *v46 = v95;
          v47 = v96;
          v48 = v97;
          v49 = v98;
          *(v46 + 64) = v99;
          *(v46 + 32) = v48;
          *(v46 + 48) = v49;
          *(v46 + 16) = v47;

          v38 = v85;
        }

        while (v85);
      }

      v40 = v35;
      while (1)
      {
        v35 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          break;
        }

        if (v35 >= v76)
        {
          goto LABEL_33;
        }

        v41 = *(v8 + 64 + 8 * v35);
        ++v40;
        if (v41)
        {
          v39 = __clz(__rbit64(v41));
          v85 = (v41 - 1) & v41;
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_57;
    }

LABEL_33:

    v17 = v7;
    v9 = v78;
    if ((v2 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_15;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, v6);
  v15 = v87;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v4);
  if ((v2 & 1) == (v16 & 1))
  {
    v17 = v7;
    if ((v2 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_15;
  }

LABEL_58:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void static AttributeContainer.subscript.getter(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CD0];
  *a1 = MEMORY[0x1E69E7CC8];
  a1[1] = v1;
}

uint64_t AttributeContainer.merge(_:mergePolicy:)(uint64_t *a1, char *a2)
{
  v2 = *a1;
  v4 = *a2;
  return specialized AttributedString._AttributeStorage.mergeIn(_:mergePolicy:)(v2, &v4);
}

uint64_t AttributeContainer.merging(_:mergePolicy:)@<X0>(uint64_t *a1@<X0>, char *a2@<X1>, void *a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *v3;
  v8 = v3[1];
  *a3 = v7;
  a3[1] = v8;
  v10 = v6;

  return specialized AttributedString._AttributeStorage.mergeIn(_:mergePolicy:)(v5, &v10);
}

BOOL static AttributeContainer.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(*a1, *a2) & 1) != 0 && (_sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v2, v3) & 1) != 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance AttributeContainer(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  return (_sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16AttributedStringV15_AttributeValueVTt1g5(*a1, *a2) & 1) != 0 && (_sSh2eeoiySbShyxG_ABtFZSS_Tt1g5(v2, v3) & 1) != 0;
}

uint64_t AttributeContainer.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  specialized Dictionary<>.hash(into:)(a1, v3);

  return specialized Set.hash(into:)(a1, v4);
}

Swift::Int AttributeContainer.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v4, v1);
  specialized Set.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AttributeContainer()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v4, v1);
  specialized Set.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AttributeContainer(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  specialized Dictionary<>.hash(into:)(a1, v3);

  return specialized Set.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AttributeContainer()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v4, v1);
  specialized Set.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

uint64_t AttributeContainer.description.getter()
{
  v1 = *v0;
  v3 = (*v0 + 64);
  v2 = *v3;
  v20 = 0;
  v21 = 0xE000000000000000;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & v2;
  v7 = (v4 + 63) >> 6;

  for (i = 0; v6; result = outlined destroy of TermOfAddress?(&v17, &_sSS3key_10Foundation16AttributedStringV15_AttributeValueV5valuetMd))
  {
    v10 = i;
LABEL_9:
    v11 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v12 = v11 | (v10 << 6);
    v13 = (*(v1 + 48) + 16 * v12);
    v14 = *v13;
    v15 = v13[1];
    outlined init with copy of AttributedString._AttributeValue(*(v1 + 56) + 72 * v12, &v19);
    v17 = v14;
    v18 = v15;

    MEMORY[0x1865CB0E0](v14, v15);
    MEMORY[0x1865CB0E0](2112800, 0xE300000000000000);
    lazy protocol witness table accessor for type AttributedString._AttributeValue and conformance AttributedString._AttributeValue();
    v16 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v16);

    MEMORY[0x1865CB0E0](10, 0xE100000000000000);
    MEMORY[0x1865CB0E0](9, 0xE100000000000000);
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v7)
    {

      v17 = 2683;
      v18 = 0xE200000000000000;
      MEMORY[0x1865CB0E0](v20, v21);

      MEMORY[0x1865CB0E0](125, 0xE100000000000000);
      return v17;
    }

    v6 = v3[v10];
    ++i;
    if (v6)
    {
      i = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t AttributeContainer.filter(inheritedByAddedText:)@<X0>(char a1@<W0>, _OWORD *a2@<X8>)
{
  v4 = v2[1];
  *&v136 = *v2;
  v5 = v136;
  *(&v136 + 1) = v4;
  v6 = v136 + 64;
  v7 = 1 << *(v136 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v136 + 64);
  v10 = (v7 + 63) >> 6;
  swift_bridgeObjectRetain_n();

  v11 = 0;
  v103 = a1;
  v102 = v136;
  while (1)
  {
    if (!v9)
    {
      while (1)
      {
        v20 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v20 >= v10)
        {
          goto LABEL_79;
        }

        v9 = *(v6 + 8 * v20);
        ++v11;
        if (v9)
        {
          v11 = v20;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
      goto LABEL_84;
    }

LABEL_14:
    v21 = __clz(__rbit64(v9)) | (v11 << 6);
    v22 = (*(v5 + 48) + 16 * v21);
    v23 = *v22;
    v24 = v22[1];
    outlined init with copy of AttributedString._AttributeValue(*(v5 + 56) + 72 * v21, &v131);
    v111 = v132;
    v114 = v134;
    v105 = v131;
    v108 = v133;
    v25 = v135;

    if (!v24)
    {
LABEL_79:

      *a2 = v136;
      return result;
    }

    v9 &= v9 - 1;
    v131 = v105;
    v132 = v111;
    v133 = v108;
    v134 = v114;
    v135 = v25;
    if ((BYTE8(v114) & 1) == 0)
    {
      if (a1)
      {
        goto LABEL_25;
      }

      goto LABEL_8;
    }

    if (!v25 || !*(v25 + 16))
    {
LABEL_22:
      if ((a1 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_8;
    }

    Hasher.init(_seed:)();
    MEMORY[0x1865CD060](0);
    v26 = Hasher._finalize()();
    v27 = -1 << *(v25 + 32);
    v28 = v26 & ~v27;
    if ((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28))
    {
      break;
    }

    a1 = v103;
    if ((v103 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_8:

    outlined destroy of AttributedString._AttributeValue(&v131);
  }

  v29 = ~v27;
  a1 = v103;
  while (*(*(v25 + 48) + 16 * v28 + 8))
  {
    v28 = (v28 + 1) & v29;
    if (((*(v25 + 56 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  if ((v103 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_25:
  v130 = 0;
  memset(v129, 0, sizeof(v129));
  outlined init with copy of AttributedString._AttributeValue?(v129, &v124);
  v104 = v23;
  if (*(&v125 + 1))
  {
    v122[2] = v126;
    v122[3] = v127;
    v123 = v128;
    v122[0] = v124;
    v122[1] = v125;
    outlined init with copy of AttributedString._AttributeValue(v122, &v117);
    v30 = v136;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24);
    v34 = *(v30 + 16);
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_81;
    }

    v37 = v32;
    if (*(v30 + 24) >= v36)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v38 = v30;
        a1 = v103;
        if ((v32 & 1) == 0)
        {
          goto LABEL_37;
        }

        goto LABEL_5;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      v58 = static _DictionaryStorage.copy(original:)();
      v38 = v58;
      if (*(v30 + 16))
      {
        v59 = (v58 + 64);
        v60 = (v30 + 64);
        v61 = ((1 << *(v38 + 32)) + 63) >> 6;
        if (v38 != v30 || v59 >= &v60[8 * v61])
        {
          memmove(v59, v60, 8 * v61);
        }

        v62 = 0;
        *(v38 + 16) = *(v30 + 16);
        v63 = 1 << *(v30 + 32);
        if (v63 < 64)
        {
          v64 = ~(-1 << v63);
        }

        else
        {
          v64 = -1;
        }

        v65 = v64 & *(v30 + 64);
        v66 = (v63 + 63) >> 6;
        v98 = v66;
        if (v65)
        {
          do
          {
            v67 = __clz(__rbit64(v65));
            v99 = (v65 - 1) & v65;
LABEL_58:
            v70 = v67 | (v62 << 6);
            v109 = 16 * v70;
            v71 = (*(v30 + 48) + 16 * v70);
            v115 = *v71;
            v112 = v71[1];
            v106 = 72 * v70;
            outlined init with copy of AttributedString._AttributeValue(*(v30 + 56) + 72 * v70, &v124);
            v72 = (*(v38 + 48) + v109);
            *v72 = v115;
            v72[1] = v112;
            v73 = *(v38 + 56) + v106;
            *v73 = v124;
            v74 = v125;
            v75 = v126;
            v76 = v127;
            *(v73 + 64) = v128;
            *(v73 + 32) = v75;
            *(v73 + 48) = v76;
            *(v73 + 16) = v74;

            v66 = v98;
            v65 = v99;
          }

          while (v99);
        }

        v68 = v62;
        while (1)
        {
          v62 = v68 + 1;
          if (__OFADD__(v68, 1))
          {
            goto LABEL_83;
          }

          if (v62 >= v66)
          {
            break;
          }

          v69 = *(v30 + 64 + 8 * v62);
          ++v68;
          if (v69)
          {
            v67 = __clz(__rbit64(v69));
            v99 = (v69 - 1) & v69;
            goto LABEL_58;
          }
        }
      }

      a1 = v103;
      if (v37)
      {
        goto LABEL_5;
      }

LABEL_37:
      *(v38 + 8 * (v33 >> 6) + 64) |= 1 << v33;
      v50 = (*(v38 + 48) + 16 * v33);
      *v50 = v104;
      v50[1] = v24;
      v51 = *(v38 + 56) + 72 * v33;
      *v51 = v117;
      v52 = v118;
      v53 = v119;
      v54 = v120;
      *(v51 + 64) = v121;
      *(v51 + 32) = v53;
      *(v51 + 48) = v54;
      *(v51 + 16) = v52;
      v55 = *(v38 + 16);
      v56 = __OFADD__(v55, 1);
      v57 = v55 + 1;
      if (v56)
      {
        goto LABEL_82;
      }

      *(v38 + 16) = v57;

      outlined destroy of AttributedString._AttributeValue(v122);
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v127 = 0u;
      v128 = 0;
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v36, isUniquelyReferenced_nonNull_native);
      v38 = v30;
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(v104, v24);
      if ((v37 & 1) != (v40 & 1))
      {
        goto LABEL_85;
      }

      v33 = v39;
      a1 = v103;
      if ((v37 & 1) == 0)
      {
        goto LABEL_37;
      }

LABEL_5:
      v12 = *(v38 + 56) + 72 * v33;
      v14 = *(v12 + 16);
      v13 = *(v12 + 32);
      v15 = *(v12 + 48);
      v128 = *(v12 + 64);
      v127 = v15;
      v124 = *v12;
      v125 = v14;
      v126 = v13;
      v16 = *(v38 + 56) + 72 * v33;
      v17 = v118;
      v18 = v119;
      v19 = v120;
      *(v16 + 64) = v121;
      *(v16 + 32) = v18;
      *(v16 + 48) = v19;
      *(v16 + 16) = v17;
      *v16 = v117;
      outlined destroy of AttributedString._AttributeValue(v122);
    }

    *&v136 = v38;
LABEL_7:
    v5 = v102;
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v104, v24, &v124, v129);
    outlined destroy of TermOfAddress?(v129, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v124, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    goto LABEL_8;
  }

  outlined destroy of TermOfAddress?(&v124, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  v41 = v136;
  v42 = specialized __RawDictionaryStorage.find<A>(_:)(v23, v24);
  if ((v43 & 1) == 0)
  {
    v128 = 0;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    goto LABEL_7;
  }

  v44 = v42;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v45 = v41;
LABEL_34:

    v46 = *(v45 + 56) + 72 * v44;
    v124 = *v46;
    v48 = *(v46 + 32);
    v47 = *(v46 + 48);
    v49 = *(v46 + 64);
    v125 = *(v46 + 16);
    v126 = v48;
    v128 = v49;
    v127 = v47;
    specialized _NativeDictionary._delete(at:)(v44, v45);
    *&v136 = v45;
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v77 = static _DictionaryStorage.copy(original:)();
  v45 = v77;
  if (!*(v41 + 16))
  {
LABEL_78:

    goto LABEL_34;
  }

  v78 = (v77 + 64);
  v79 = (v41 + 64);
  v80 = ((1 << *(v45 + 32)) + 63) >> 6;
  if (v45 != v41 || v78 >= &v79[8 * v80])
  {
    memmove(v78, v79, 8 * v80);
  }

  v81 = 0;
  *(v45 + 16) = *(v41 + 16);
  v82 = 1 << *(v41 + 32);
  if (v82 < 64)
  {
    v83 = ~(-1 << v82);
  }

  else
  {
    v83 = -1;
  }

  v84 = v83 & *(v41 + 64);
  v85 = (v82 + 63) >> 6;
  v100 = v85;
  if (v84)
  {
    do
    {
      v86 = __clz(__rbit64(v84));
      v116 = (v84 - 1) & v84;
LABEL_76:
      v89 = v86 | (v81 << 6);
      v107 = 16 * v89;
      v90 = (*(v41 + 48) + 16 * v89);
      v113 = *v90;
      v110 = v90[1];
      v91 = 72 * v89;
      outlined init with copy of AttributedString._AttributeValue(*(v41 + 56) + 72 * v89, &v124);
      v92 = (*(v45 + 48) + v107);
      *v92 = v113;
      v92[1] = v110;
      v93 = *(v45 + 56) + v91;
      *v93 = v124;
      v94 = v125;
      v95 = v126;
      v96 = v127;
      *(v93 + 64) = v128;
      *(v93 + 32) = v95;
      *(v93 + 48) = v96;
      *(v93 + 16) = v94;

      a1 = v103;
      v85 = v100;
      v84 = v116;
    }

    while (v116);
  }

  v87 = v81;
  while (1)
  {
    v81 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      break;
    }

    if (v81 >= v85)
    {
      goto LABEL_78;
    }

    v88 = *(v41 + 64 + 8 * v81);
    ++v87;
    if (v88)
    {
      v86 = __clz(__rbit64(v88));
      v116 = (v88 - 1) & v88;
      goto LABEL_76;
    }
  }

LABEL_84:
  __break(1u);
LABEL_85:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t AttributeContainer.filter(runBoundaries:)@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v121 = *a1;
  v119 = a1[1];
  v3 = v2[1];
  v5 = (*v2 + 64);
  v4 = *v5;
  *&v148 = *v2;
  *(&v148 + 1) = v3;
  v6 = 1 << *(v148 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & v4;
  v117 = (v6 + 63) >> 6;
  v118 = v148;
  swift_bridgeObjectRetain_n();

  v9 = 0;
  v120 = v5;
  if (!v8)
  {
    goto LABEL_10;
  }

  while (1)
  {
    while (1)
    {
      v18 = v9;
LABEL_18:
      v21 = __clz(__rbit64(v8)) | (v18 << 6);
      v22 = (*(v118 + 48) + 16 * v21);
      v23 = v22[1];
      v125 = (v8 - 1) & v8;
      v126 = *v22;
      outlined init with copy of AttributedString._AttributeValue(*(v118 + 56) + 72 * v21, &v140);
      v24 = *(&v140 + 1);
      v122 = v140;
      v25 = *(&v141 + 1);
      v26 = v141;
      v27 = *(&v142 + 1);
      v28 = v142;
      v29 = *(&v143 + 1);
      v30 = v143;
      v31 = v144;

      v32 = v126;
      v33 = v122;
LABEL_19:
      v127 = v32;
      v145 = v32;
      v146 = v23;
      v147[0] = v33;
      v147[1] = v24;
      v147[2] = v26;
      v147[3] = v25;
      v147[4] = v28;
      v147[5] = v27;
      v147[6] = v30;
      v147[7] = v29;
      v147[8] = v31;
      if (!v23)
      {

        *a2 = v148;
        return result;
      }

      outlined copy of AttributedString.AttributeRunBoundaries?(v27, v30);
      outlined destroy of AttributedString._AttributeValue(v147);
      if (v30 != 1)
      {
        break;
      }

      v34 = v119;
      v35 = v127;
      if (v119 != 1)
      {
        goto LABEL_24;
      }

      outlined copy of AttributedString.AttributeRunBoundaries?(v121, 1);

      outlined consume of AttributedString.AttributeRunBoundaries?(v27, 1);
LABEL_53:
      v5 = v120;
      v8 = v125;
      if (!v125)
      {
LABEL_10:
        if (v117 <= v9 + 1)
        {
          v19 = v9 + 1;
        }

        else
        {
          v19 = v117;
        }

        v20 = v19 - 1;
        while (1)
        {
          v18 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            break;
          }

          if (v18 >= v117)
          {
            v26 = 0;
            v24 = 0;
            v33 = 0;
            v23 = 0;
            v32 = 0;
            v25 = 0;
            v28 = 0;
            v27 = 0;
            v30 = 0;
            v29 = 0;
            v31 = 0;
            v125 = 0;
            v9 = v20;
            goto LABEL_19;
          }

          v8 = v5[v18];
          ++v9;
          if (v8)
          {
            v9 = v18;
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }
    }

    v34 = v119;
    v35 = v127;
    if (v119 == 1)
    {
LABEL_24:
      outlined copy of AttributedString.AttributeRunBoundaries?(v121, v34);
      outlined consume of AttributedString.AttributeRunBoundaries?(v27, v30);
      v36 = v121;
      v37 = v34;
      goto LABEL_36;
    }

    if (v30)
    {
      if (v119)
      {
        if (v27 == v121 && v30 == v119)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(v121, v119);
          outlined copy of AttributedString.AttributeRunBoundaries?(v121, v119);

LABEL_52:
          outlined consume of AttributedString.AttributeRunBoundaries?(v27, v30);

          goto LABEL_53;
        }

        v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
        outlined copy of AttributedString.AttributeRunBoundaries?(v121, v119);
        outlined copy of AttributedString.AttributeRunBoundaries?(v27, v30);

        if (v38)
        {
          goto LABEL_52;
        }
      }

      else
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v121, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v27, v30);
      }
    }

    else
    {
      if (!v119)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v121, 0);
        swift_bridgeObjectRelease_n();
        goto LABEL_52;
      }

      outlined copy of AttributedString.AttributeRunBoundaries?(v121, v119);
    }

    v36 = v27;
    v37 = v30;
LABEL_36:
    outlined consume of AttributedString.AttributeRunBoundaries?(v36, v37);
    v144 = 0;
    v142 = 0u;
    v143 = 0u;
    v140 = 0u;
    v141 = 0u;
    outlined init with copy of AttributedString._AttributeValue?(&v140, &v135);
    if (!*(&v136 + 1))
    {
      break;
    }

    v133[2] = v137;
    v133[3] = v138;
    v134 = v139;
    v133[0] = v135;
    v133[1] = v136;
    outlined init with copy of AttributedString._AttributeValue(v133, &v128);
    v39 = v148;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v42 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v23);
    v43 = *(v39 + 16);
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    v5 = v120;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_92;
    }

    v46 = v41;
    if (*(v39 + 24) >= v45)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v47 = v39;
        if ((v41 & 1) == 0)
        {
          goto LABEL_48;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v66 = static _DictionaryStorage.copy(original:)();
        v47 = v66;
        if (*(v39 + 16))
        {
          v67 = (v66 + 64);
          v68 = (v39 + 64);
          v69 = ((1 << *(v47 + 32)) + 63) >> 6;
          if (v47 != v39 || v67 >= &v68[8 * v69])
          {
            memmove(v67, v68, 8 * v69);
          }

          v70 = 0;
          *(v47 + 16) = *(v39 + 16);
          v71 = 1 << *(v39 + 32);
          if (v71 < 64)
          {
            v72 = ~(-1 << v71);
          }

          else
          {
            v72 = -1;
          }

          v73 = v72 & *(v39 + 64);
          v74 = (v71 + 63) >> 6;
          v113 = v74;
          v114 = v23;
          if (v73)
          {
            do
            {
              v75 = __clz(__rbit64(v73));
              v123 = (v73 - 1) & v73;
LABEL_69:
              v78 = v75 | (v70 << 6);
              v79 = 16 * v78;
              v80 = (*(v39 + 48) + 16 * v78);
              v81 = *v80;
              v82 = v80[1];
              v83 = 72 * v78;
              outlined init with copy of AttributedString._AttributeValue(*(v39 + 56) + 72 * v78, &v135);
              v84 = (*(v47 + 48) + v79);
              *v84 = v81;
              v84[1] = v82;
              v85 = *(v47 + 56) + v83;
              *v85 = v135;
              v86 = v136;
              v87 = v137;
              v88 = v138;
              *(v85 + 64) = v139;
              *(v85 + 32) = v87;
              *(v85 + 48) = v88;
              *(v85 + 16) = v86;

              v5 = v120;
              v74 = v113;
              v23 = v114;
              v35 = v127;
              v73 = v123;
            }

            while (v123);
          }

          v76 = v70;
          while (1)
          {
            v70 = v76 + 1;
            if (__OFADD__(v76, 1))
            {
              goto LABEL_94;
            }

            if (v70 >= v74)
            {
              break;
            }

            v77 = *(v39 + 64 + 8 * v70);
            ++v76;
            if (v77)
            {
              v75 = __clz(__rbit64(v77));
              v123 = (v77 - 1) & v77;
              goto LABEL_69;
            }
          }
        }

        if ((v46 & 1) == 0)
        {
LABEL_48:
          *(v47 + 8 * (v42 >> 6) + 64) |= 1 << v42;
          v58 = (*(v47 + 48) + 16 * v42);
          *v58 = v35;
          v58[1] = v23;
          v59 = *(v47 + 56) + 72 * v42;
          *v59 = v128;
          v60 = v129;
          v61 = v130;
          v62 = v131;
          *(v59 + 64) = v132;
          *(v59 + 32) = v61;
          *(v59 + 48) = v62;
          *(v59 + 16) = v60;
          v63 = *(v47 + 16);
          v64 = __OFADD__(v63, 1);
          v65 = v63 + 1;
          if (v64)
          {
            goto LABEL_93;
          }

          *(v47 + 16) = v65;

          outlined destroy of AttributedString._AttributeValue(v133);
          v135 = 0u;
          v136 = 0u;
          v137 = 0u;
          v138 = 0u;
          v139 = 0;
          goto LABEL_7;
        }
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, isUniquelyReferenced_nonNull_native);
      v47 = v39;
      v48 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v23);
      if ((v46 & 1) != (v49 & 1))
      {
        goto LABEL_96;
      }

      v42 = v48;
      if ((v46 & 1) == 0)
      {
        goto LABEL_48;
      }
    }

    v10 = *(v47 + 56) + 72 * v42;
    v12 = *(v10 + 16);
    v11 = *(v10 + 32);
    v13 = *(v10 + 48);
    v139 = *(v10 + 64);
    v138 = v13;
    v135 = *v10;
    v136 = v12;
    v137 = v11;
    v14 = *(v47 + 56) + 72 * v42;
    v15 = v129;
    v16 = v130;
    v17 = v131;
    *(v14 + 64) = v132;
    *(v14 + 32) = v16;
    *(v14 + 48) = v17;
    *(v14 + 16) = v15;
    *v14 = v128;
    outlined destroy of AttributedString._AttributeValue(v133);
LABEL_7:
    *&v148 = v47;
LABEL_8:
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(v35, v23, &v135, &v140);
    outlined destroy of TermOfAddress?(&v140, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    outlined destroy of TermOfAddress?(&v135, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

    v8 = v125;
    if (!v125)
    {
      goto LABEL_10;
    }
  }

  outlined destroy of TermOfAddress?(&v135, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  v50 = v148;
  v51 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v23);
  v5 = v120;
  if ((v52 & 1) == 0)
  {
    v139 = 0;
    v137 = 0u;
    v138 = 0u;
    v135 = 0u;
    v136 = 0u;
    goto LABEL_8;
  }

  v53 = v51;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v47 = v50;
LABEL_45:

    v54 = *(v47 + 56) + 72 * v53;
    v135 = *v54;
    v56 = *(v54 + 32);
    v55 = *(v54 + 48);
    v57 = *(v54 + 64);
    v136 = *(v54 + 16);
    v137 = v56;
    v139 = v57;
    v138 = v55;
    specialized _NativeDictionary._delete(at:)(v53, v47);
    goto LABEL_7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v89 = static _DictionaryStorage.copy(original:)();
  v47 = v89;
  if (!*(v50 + 16))
  {
LABEL_89:

    goto LABEL_45;
  }

  v90 = (v89 + 64);
  v91 = (v50 + 64);
  v92 = ((1 << *(v47 + 32)) + 63) >> 6;
  if (v47 != v50 || v90 >= &v91[8 * v92])
  {
    memmove(v90, v91, 8 * v92);
  }

  v93 = 0;
  *(v47 + 16) = *(v50 + 16);
  v94 = 1 << *(v50 + 32);
  if (v94 < 64)
  {
    v95 = ~(-1 << v94);
  }

  else
  {
    v95 = -1;
  }

  v96 = v95 & *(v50 + 64);
  v97 = (v94 + 63) >> 6;
  v115 = v23;
  if (v96)
  {
    do
    {
      v98 = __clz(__rbit64(v96));
      v124 = (v96 - 1) & v96;
LABEL_87:
      v101 = v98 | (v93 << 6);
      v102 = 16 * v101;
      v103 = (*(v50 + 48) + 16 * v101);
      v104 = *v103;
      v105 = v103[1];
      v106 = 72 * v101;
      outlined init with copy of AttributedString._AttributeValue(*(v50 + 56) + 72 * v101, &v135);
      v107 = (*(v47 + 48) + v102);
      *v107 = v104;
      v107[1] = v105;
      v108 = *(v47 + 56) + v106;
      *v108 = v135;
      v109 = v136;
      v110 = v137;
      v111 = v138;
      *(v108 + 64) = v139;
      *(v108 + 32) = v110;
      *(v108 + 48) = v111;
      *(v108 + 16) = v109;

      v5 = v120;
      v23 = v115;
      v35 = v127;
      v96 = v124;
    }

    while (v124);
  }

  v99 = v93;
  while (1)
  {
    v93 = v99 + 1;
    if (__OFADD__(v99, 1))
    {
      break;
    }

    if (v93 >= v97)
    {
      goto LABEL_89;
    }

    v100 = *(v50 + 64 + 8 * v93);
    ++v99;
    if (v100)
    {
      v98 = __clz(__rbit64(v100));
      v124 = (v100 - 1) & v100;
      goto LABEL_87;
    }
  }

LABEL_95:
  __break(1u);
LABEL_96:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int _sSh2eeoiySbShyxG_ABtFZs8DurationV10FoundationE16UnitsFormatStyleV4UnitV_Tt1g5Tm(Swift::Int result, uint64_t a2)
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
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    Hasher.init(_seed:)();
    MEMORY[0x1865CD060](v13);
    result = Hasher._finalize()();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
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

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

unint64_t specialized Dictionary.updateValue(_:forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v4;
  v12 = v60;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v15 = v60[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v5 = v14;
    if (v60[3] < v18)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, isUniquelyReferenced_nonNull_native);
      v19 = v60;
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
      if ((v5 & 1) == (v20 & 1))
      {
        goto LABEL_7;
      }

      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v19 = v60;
LABEL_7:
      if (v5)
      {
LABEL_8:
        v21 = *(v19 + 56) + 72 * result;
        v22 = *(v21 + 48);
        *(a4 + 32) = *(v21 + 32);
        *(a4 + 48) = v22;
        *(a4 + 64) = *(v21 + 64);
        v23 = *(v21 + 16);
        *a4 = *v21;
        *(a4 + 16) = v23;
        v24 = *(a1 + 48);
        *(v21 + 32) = *(a1 + 32);
        *(v21 + 48) = v24;
        *(v21 + 64) = *(a1 + 64);
        v25 = *(a1 + 16);
        *v21 = *a1;
        *(v21 + 16) = v25;
LABEL_28:
        *v6 = v19;
        return result;
      }

      goto LABEL_26;
    }
  }

  v52 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v26 = static _DictionaryStorage.copy(original:)();
  v19 = v26;
  if (v60[2])
  {
    result = v26 + 64;
    v27 = v60 + 8;
    v28 = ((1 << *(v19 + 32)) + 63) >> 6;
    v51 = v60 + 8;
    if (v19 != v60 || result >= v27 + 8 * v28)
    {
      result = memmove(result, v27, 8 * v28);
    }

    v29 = 0;
    *(v19 + 16) = v60[2];
    v30 = 1 << *(v12 + 32);
    v31 = -1;
    if (v30 < 64)
    {
      v31 = ~(-1 << v30);
    }

    v32 = v31 & v12[8];
    v33 = (v30 + 63) >> 6;
    v53 = v33;
    if (v32)
    {
      do
      {
        v34 = __clz(__rbit64(v32));
        v57 = (v32 - 1) & v32;
LABEL_23:
        v37 = v34 | (v29 << 6);
        v54 = 16 * v37;
        v38 = (v12[6] + 16 * v37);
        v55 = v38[1];
        v56 = *v38;
        v39 = 72 * v37;
        outlined init with copy of AttributedString._AttributeValue(v12[7] + 72 * v37, v58);
        v40 = (*(v19 + 48) + v54);
        *v40 = v56;
        v40[1] = v55;
        v41 = *(v19 + 56) + v39;
        *v41 = v58[0];
        v42 = v58[1];
        v43 = v58[2];
        v44 = v58[3];
        *(v41 + 64) = v59;
        *(v41 + 32) = v43;
        *(v41 + 48) = v44;
        *(v41 + 16) = v42;

        v33 = v53;
        v32 = v57;
      }

      while (v57);
    }

    v35 = v29;
    while (1)
    {
      v29 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        goto LABEL_30;
      }

      if (v29 >= v33)
      {
        break;
      }

      v36 = v51[v29];
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v57 = (v36 - 1) & v36;
        goto LABEL_23;
      }
    }
  }

  result = v52;
  if (v5)
  {
    goto LABEL_8;
  }

LABEL_26:
  *(v19 + 8 * (result >> 6) + 64) |= 1 << result;
  v45 = (*(v19 + 48) + 16 * result);
  *v45 = a2;
  v45[1] = a3;
  v46 = *(v19 + 56) + 72 * result;
  *(v46 + 64) = *(a1 + 64);
  v47 = *(a1 + 48);
  *(v46 + 32) = *(a1 + 32);
  *(v46 + 48) = v47;
  v48 = *(a1 + 16);
  *v46 = *a1;
  *(v46 + 16) = v48;
  v49 = *(v19 + 16);
  v17 = __OFADD__(v49, 1);
  v50 = v49 + 1;
  if (!v17)
  {
    *(v19 + 16) = v50;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *(a4 + 64) = 0;

    goto LABEL_28;
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

char *specialized Dictionary.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v7)
  {
    v8 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    if (isUniquelyReferenced_nonNull_native)
    {
      v11 = *v3;
LABEL_4:

      v12 = *(v11 + 56) + 72 * v8;
      v13 = *(v12 + 48);
      *(a3 + 32) = *(v12 + 32);
      *(a3 + 48) = v13;
      *(a3 + 64) = *(v12 + 64);
      v14 = *(v12 + 16);
      *a3 = *v12;
      *(a3 + 16) = v14;
      result = specialized _NativeDictionary._delete(at:)(v8, v11);
      *v4 = v11;
      return result;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
    v15 = static _DictionaryStorage.copy(original:)();
    v11 = v15;
    if (!*(v10 + 16))
    {
LABEL_21:

      goto LABEL_4;
    }

    result = (v15 + 64);
    v16 = (v10 + 64);
    v17 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v10 || result >= &v16[8 * v17])
    {
      result = memmove(result, v16, 8 * v17);
    }

    v18 = 0;
    *(v11 + 16) = *(v10 + 16);
    v19 = 1 << *(v10 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v10 + 64);
    v22 = (v19 + 63) >> 6;
    if (v21)
    {
      do
      {
        v23 = __clz(__rbit64(v21));
        v37 = (v21 - 1) & v21;
LABEL_19:
        v26 = v23 | (v18 << 6);
        v27 = 16 * v26;
        v28 = (*(v10 + 48) + 16 * v26);
        v29 = v28[1];
        v36 = *v28;
        v30 = 72 * v26;
        outlined init with copy of AttributedString._AttributeValue(*(v10 + 56) + 72 * v26, v38);
        v31 = (*(v11 + 48) + v27);
        *v31 = v36;
        v31[1] = v29;
        v32 = *(v11 + 56) + v30;
        *v32 = v38[0];
        v33 = v38[1];
        v34 = v38[2];
        v35 = v38[3];
        *(v32 + 64) = v39;
        *(v32 + 32) = v34;
        *(v32 + 48) = v35;
        *(v32 + 16) = v33;

        v21 = v37;
      }

      while (v37);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {
        goto LABEL_21;
      }

      v25 = *(v10 + 64 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v37 = (v25 - 1) & v25;
        goto LABEL_19;
      }
    }

    __break(1u);
  }

  else
  {
    *(a3 + 64) = 0;
    *(a3 + 32) = 0u;
    *(a3 + 48) = 0u;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation10MorphologyV14_CustomPronounVTt1g5(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v2 = a2;
  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = result + 64;
  v6 = 1 << *(result + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(result + 64);
  v49 = (v6 + 63) >> 6;
  v50 = result;
  while (v8)
  {
    v9 = __clz(__rbit64(v8));
    v10 = (v8 - 1) & v8;
LABEL_13:
    v13 = v9 | (v4 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    v17 = (*(v3 + 56) + 80 * v13);
    v19 = v17[3];
    v18 = v17[4];
    v20 = v17[2];
    v59 = v17[1];
    v58 = *v17;
    v60 = v20;
    v61 = v19;
    v62 = v18;
    v54 = v19;
    v55 = v59;
    v52 = v20;
    v53 = v58;
    v22 = *(&v18 + 1);
    v21 = v18;

    outlined init with copy of Morphology._CustomPronoun(&v58, v57);
    if (!v15)
    {
      return 1;
    }

    v51 = v10;
    v58 = v53;
    v59 = v55;
    v60 = v52;
    v61 = v54;
    v62 = __PAIR128__(v22, v21);
    v23 = v2;
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15);
    v26 = v25;

    if ((v26 & 1) == 0)
    {
LABEL_57:
      outlined destroy of Morphology._CustomPronoun(&v58);
      return 0;
    }

    v27 = (*(v2 + 56) + 80 * v24);
    v28 = v27[1];
    v29 = v27[2];
    v31 = v27[3];
    v30 = v27[4];
    v33 = v27[5];
    v32 = v27[6];
    v34 = v27[7];
    v56 = v27[8];
    v35 = v27[9];
    if (v28)
    {
      if (!*(&v58 + 1))
      {
        goto LABEL_57;
      }

      if (*v27 != v58 || v28 != *(&v58 + 1))
      {
        v37 = v27[6];
        v38 = v27[4];
        v39 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v30 = v38;
        v2 = v23;
        v32 = v37;
        if ((v39 & 1) == 0)
        {
          goto LABEL_57;
        }
      }
    }

    else if (*(&v58 + 1))
    {
      goto LABEL_57;
    }

    if (v31)
    {
      if (!*(&v59 + 1))
      {
        goto LABEL_57;
      }

      if (v29 != v59 || v31 != *(&v59 + 1))
      {
        v41 = v32;
        v42 = v30;
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v30 = v42;
        v2 = v23;
        v32 = v41;
        if ((v43 & 1) == 0)
        {
          goto LABEL_57;
        }
      }
    }

    else if (*(&v59 + 1))
    {
      goto LABEL_57;
    }

    if (v33)
    {
      if (!*(&v60 + 1))
      {
        goto LABEL_57;
      }

      if (v30 != v60 || v33 != *(&v60 + 1))
      {
        v45 = v32;
        v46 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v32 = v45;
        if ((v46 & 1) == 0)
        {
          goto LABEL_57;
        }
      }
    }

    else if (*(&v60 + 1))
    {
      goto LABEL_57;
    }

    if (v34)
    {
      if (!*(&v61 + 1) || __PAIR128__(v34, v32) != v61 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        goto LABEL_57;
      }
    }

    else if (*(&v61 + 1))
    {
      goto LABEL_57;
    }

    v47 = *(&v62 + 1);
    if (v35)
    {
      if (!*(&v62 + 1))
      {
        goto LABEL_57;
      }

      if (__PAIR128__(v35, v56) == v62)
      {
        result = outlined destroy of Morphology._CustomPronoun(&v58);
        v3 = v50;
        v8 = v51;
      }

      else
      {
        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();
        result = outlined destroy of Morphology._CustomPronoun(&v58);
        v3 = v50;
        v8 = v51;
        if ((v48 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else
    {
      result = outlined destroy of Morphology._CustomPronoun(&v58);
      v3 = v50;
      v8 = v51;
      if (v47)
      {
        return 0;
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

    if (v4 >= v49)
    {
      return 1;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v9 = __clz(__rbit64(v12));
      v10 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16JSONEncoderValueOTt1g5(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v5 = a1;
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v6 = 0;
  v193 = a1 + 64;
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 64);
  v194 = (v7 + 63) >> 6;
  while (1)
  {
LABEL_6:
    if (v9)
    {
      v10 = __clz(__rbit64(v9));
      v11 = (v9 - 1) & v9;
      goto LABEL_13;
    }

    v12 = v6;
    do
    {
      v6 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_326;
      }

      if (v6 >= v194)
      {
        return 1;
      }

      v13 = *(v193 + 8 * v6);
      ++v12;
    }

    while (!v13);
    v10 = __clz(__rbit64(v13));
    v11 = (v13 - 1) & v13;
LABEL_13:
    v14 = v10 | (v6 << 6);
    v15 = *(v5 + 56);
    v16 = (*(v5 + 48) + 16 * v14);
    v17 = *v16;
    v18 = v16[1];
    v19 = v15 + 24 * v14;
    v20 = *v19;
    v21 = *(v19 + 8);
    v22 = *(v19 + 16);

    v2 = v20;
    v23 = v20;
    v3 = v21;
    outlined copy of JSONEncoderValue(v23, v21, v22);
    v24 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18);
    LOBYTE(v21) = v25;

    if ((v21 & 1) == 0)
    {
      goto LABEL_321;
    }

    v26 = *(a2 + 56) + 24 * v24;
    v28 = *v26;
    v27 = *(v26 + 8);
    v29 = *(v26 + 16);
    if (v29 > 3)
    {
      v9 = v11;
      if (v29 > 5)
      {
        if (v29 != 6)
        {
          v50 = v22 == 7 && (v3 | v2) == 0;
          v5 = a1;
          if (v50)
          {
            continue;
          }

          goto LABEL_321;
        }

        if (v22 != 6)
        {
          goto LABEL_321;
        }

        v39 = *(v28 + 16);
        if (v39 != *(v2 + 16))
        {
LABEL_324:
          v157 = v2;
          v158 = v3;
          v159 = 6;
          goto LABEL_333;
        }

        if (v39 && v28 != v2)
        {
          v51 = (v28 + 32);
          v52 = (v2 + 32);
          v5 = a1;
          do
          {
            if (*v51 != *v52)
            {
              goto LABEL_324;
            }

            ++v51;
            ++v52;
            --v39;
          }

          while (v39);
          outlined consume of JSONEncoderValue(v2, v3, 6u);
          continue;
        }

        v40 = v2;
        v41 = v3;
        v42 = 6;
      }

      else
      {
        if (v29 == 4)
        {
          if (v22 == 4)
          {

            v36 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16JSONEncoderValueOTt1g5(v35, v2);
            outlined consume of JSONEncoderValue(v2, v3, 4u);
            outlined consume of JSONEncoderValue(v28, v27, 4u);
            result = 0;
            v5 = a1;
            if ((v36 & 1) == 0)
            {
              return result;
            }

            continue;
          }

          goto LABEL_321;
        }

        if (v22 != 5)
        {
          goto LABEL_321;
        }

        v44 = *(v28 + 16);
        if (v44 != *(v2 + 16))
        {
LABEL_322:
          v157 = v2;
          v158 = v3;
          v159 = 5;
          goto LABEL_333;
        }

        if (v44)
        {
          v45 = v28 == v2;
        }

        else
        {
          v45 = 1;
        }

        if (!v45)
        {
          v53 = (v28 + 32);
          v54 = (v2 + 32);
          do
          {
            if (!v44)
            {
              __break(1u);
              __break(1u);
LABEL_328:
              outlined consume of JSONEncoderValue(v174, v168, 3u);
              outlined consume of JSONEncoderValue(v172, v161, 3u);
              v116 = v182;
              goto LABEL_329;
            }

            if (*v53 != *v54)
            {
              goto LABEL_322;
            }

            ++v53;
            ++v54;
          }

          while (--v44);
        }

        v46 = *(v27 + 16);
        if (v46 != *(v3 + 16))
        {
          goto LABEL_322;
        }

        if (v46)
        {
          v5 = a1;
          if (v27 == v3)
          {
LABEL_59:
            outlined consume of JSONEncoderValue(v2, v3, 5u);
            continue;
          }

          v47 = (v27 + 32);
          v48 = (v3 + 32);
          while (*v47 == *v48)
          {
            ++v47;
            ++v48;
            if (!--v46)
            {
              goto LABEL_59;
            }
          }

          goto LABEL_322;
        }

        v40 = v2;
        v41 = v3;
        v42 = 5;
      }

LABEL_82:
      outlined consume of JSONEncoderValue(v40, v41, v42);
      v5 = a1;
      continue;
    }

    v9 = v11;
    if (v29 > 1)
    {
      break;
    }

    if (v29)
    {
      if (v22 != 1)
      {
        goto LABEL_321;
      }

      if (v28 != v2 || v27 != v3)
      {
        v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v32 = v2;
        v33 = v3;
        v34 = 1;
        goto LABEL_44;
      }

      v40 = v2;
      v41 = v3;
      v42 = 1;
      goto LABEL_82;
    }

    if (v22)
    {
      goto LABEL_321;
    }

    if (v28 == v2 && v27 == v3)
    {
      v40 = v2;
      v41 = v3;
      v42 = 0;
      goto LABEL_82;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v32 = v2;
    v33 = v3;
    v34 = 0;
LABEL_44:
    outlined consume of JSONEncoderValue(v32, v33, v34);
    result = 0;
    v5 = a1;
    if ((v31 & 1) == 0)
    {
      return result;
    }
  }

  if (v29 == 2)
  {
    if (v22 == 2)
    {
      result = 0;
      v38 = v28 ^ v2;
      v5 = a1;
      if (v38)
      {
        return result;
      }

      goto LABEL_6;
    }

LABEL_321:
    v157 = v2;
    v158 = v3;
    v159 = v22;
    goto LABEL_333;
  }

  if (v22 != 3)
  {
    goto LABEL_321;
  }

  v49 = *(v28 + 16);
  if (v49 != *(v2 + 16))
  {
LABEL_326:
    v157 = v2;
    v158 = v3;
    goto LABEL_332;
  }

  if (!v49 || v28 == v2)
  {
    v40 = v2;
    v41 = v3;
    v42 = 3;
    goto LABEL_82;
  }

  v188 = v3;
  v189 = *(v28 + 16);
  v190 = v2;
  v191 = v2 + 32;

  v56 = v189;
  v55 = v2;
  v57 = v28 + 32;
  v58 = 0;
  while (2)
  {
    if (v58 >= *(v28 + 16))
    {
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
      __break(1u);
LABEL_339:
      __break(1u);
LABEL_340:
      __break(1u);
      goto LABEL_341;
    }

    if (v58 >= *(v55 + 16))
    {
      goto LABEL_336;
    }

    v60 = v57 + 24 * v58;
    v61 = *v60;
    v62 = *(v60 + 8);
    v63 = *(v60 + 16);
    v64 = v191 + 24 * v58;
    v3 = *v64;
    v192 = *(v64 + 8);
    v65 = *(v64 + 16);
    if (v63 > 3)
    {
      if (v63 > 5)
      {
        if (v63 == 6)
        {
          if (v65 != 6)
          {
            goto LABEL_323;
          }

          v69 = *(v61 + 16);
          if (v69 != *(v3 + 16))
          {
            goto LABEL_323;
          }

          if (v69)
          {
            v70 = v61 == v3;
          }

          else
          {
            v70 = 1;
          }

          if (!v70)
          {
            v71 = (v61 + 32);
            v72 = (v3 + 32);
            while (v69)
            {
              if (*v71 != *v72)
              {
                goto LABEL_323;
              }

              ++v71;
              ++v72;
              if (!--v69)
              {
                goto LABEL_88;
              }
            }

            goto LABEL_337;
          }
        }

        else if (v65 != 7 || (v192 | v3) != 0)
        {
          goto LABEL_323;
        }
      }

      else if (v63 == 4)
      {
        if (v65 != 4)
        {
          goto LABEL_323;
        }

        v66 = v27;
        v67 = v61;
        outlined copy of JSONEncoderValue(v3, v192, 4u);
        outlined copy of JSONEncoderValue(v67, v62, 4u);
        v2 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16JSONEncoderValueOTt1g5(v67, v3);
        outlined consume of JSONEncoderValue(v3, v192, 4u);
        v68 = v67;
        v27 = v66;
        result = outlined consume of JSONEncoderValue(v68, v62, 4u);
        v56 = v189;
        v55 = v190;
        v57 = v28 + 32;
        if ((v2 & 1) == 0)
        {
          goto LABEL_323;
        }
      }

      else
      {
        if (v65 != 5)
        {
          goto LABEL_323;
        }

        v74 = *(v61 + 16);
        if (v74 != *(v3 + 16))
        {
          goto LABEL_323;
        }

        if (v74)
        {
          v75 = v61 == v3;
        }

        else
        {
          v75 = 1;
        }

        if (!v75)
        {
          v86 = (v61 + 32);
          v87 = (v3 + 32);
          while (v74)
          {
            if (*v86 != *v87)
            {
              goto LABEL_323;
            }

            ++v86;
            ++v87;
            if (!--v74)
            {
              goto LABEL_131;
            }
          }

          goto LABEL_338;
        }

LABEL_131:
        v76 = *(v62 + 16);
        if (v76 != *(v192 + 16))
        {
          goto LABEL_323;
        }

        if (v76 && v62 != v192)
        {
          v77 = (v62 + 32);
          v78 = (v192 + 32);
          while (*v77 == *v78)
          {
            ++v77;
            ++v78;
            if (!--v76)
            {
              goto LABEL_88;
            }
          }

LABEL_323:
          v160 = v55;
          goto LABEL_331;
        }
      }

      goto LABEL_88;
    }

    if (v63 <= 1)
    {
      if (v63)
      {
        if (v65 != 1)
        {
          goto LABEL_323;
        }
      }

      else if (v65)
      {
        goto LABEL_323;
      }

      if (v61 != v3 || v62 != v192)
      {
        v3 = v57;
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v56 = v189;
        v55 = v190;
        v57 = v3;
        if ((result & 1) == 0)
        {
          goto LABEL_323;
        }
      }

      goto LABEL_88;
    }

    if (v63 == 2)
    {
      if (v65 != 2 || ((v3 ^ v61) & 1) != 0)
      {
        goto LABEL_323;
      }

      goto LABEL_88;
    }

    if (v65 != 3)
    {
      goto LABEL_323;
    }

    v79 = *(v61 + 16);
    if (v79 != *(v3 + 16))
    {
      goto LABEL_323;
    }

    if (v79)
    {
      v80 = v61 == v3;
    }

    else
    {
      v80 = 1;
    }

    if (v80)
    {
LABEL_88:
      if (++v58 == v56)
      {
        outlined consume of JSONEncoderValue(v55, v188, 3u);
        outlined consume of JSONEncoderValue(v28, v27, 3u);
        v5 = a1;
        goto LABEL_6;
      }

      continue;
    }

    break;
  }

  v81 = v61 + 32;
  v187 = v3 + 32;
  v185 = v3;
  v186 = v61;
  v184 = *(v61 + 16);
  outlined copy of JSONEncoderValue(v3, v192, 3u);
  v181 = v62;
  result = outlined copy of JSONEncoderValue(v186, v62, 3u);
  v82 = v81;
  v84 = v184;
  v83 = v3;
  v2 = v186;
  v85 = 0;
  v183 = v81;
  while (2)
  {
    if (v85 >= *(v2 + 16))
    {
      goto LABEL_339;
    }

    if (v85 >= *(v83 + 16))
    {
      goto LABEL_340;
    }

    v89 = v82 + 24 * v85;
    v3 = *v89;
    v90 = *(v89 + 8);
    v91 = *(v89 + 16);
    v92 = v187 + 24 * v85;
    v94 = *v92;
    v93 = *(v92 + 8);
    v95 = *(v92 + 16);
    if (v91 > 3)
    {
      if (v91 > 5)
      {
        if (v91 == 6)
        {
          if (v95 != 6)
          {
            goto LABEL_330;
          }

          v97 = *(v3 + 16);
          if (v97 != *(v94 + 16))
          {
            goto LABEL_330;
          }

          if (v97)
          {
            v98 = v3 == v94;
          }

          else
          {
            v98 = 1;
          }

          if (!v98)
          {
            v99 = (v3 + 32);
            v100 = (v94 + 32);
            while (v97)
            {
              if (*v99 != *v100)
              {
                goto LABEL_330;
              }

              ++v99;
              ++v100;
              if (!--v97)
              {
                goto LABEL_154;
              }
            }

LABEL_342:
            __break(1u);
            __break(1u);
LABEL_343:
            __break(1u);
LABEL_344:
            __break(1u);
LABEL_345:
            __break(1u);
            goto LABEL_346;
          }
        }

        else if (v95 != 7 || (v93 | v94) != 0)
        {
          goto LABEL_330;
        }
      }

      else if (v91 == 4)
      {
        if (v95 != 4)
        {
          goto LABEL_330;
        }

        v96 = v90;
        v182 = v93;
        outlined copy of JSONEncoderValue(v94, v93, 4u);
        outlined copy of JSONEncoderValue(v3, v96, 4u);
        LODWORD(v179) = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16JSONEncoderValueOTt1g5(v3, v94);
        outlined consume of JSONEncoderValue(v94, v182, 4u);
        result = outlined consume of JSONEncoderValue(v3, v96, 4u);
        v82 = v183;
        v84 = v184;
        v83 = v185;
        v2 = v186;
        if ((v179 & 1) == 0)
        {
          goto LABEL_330;
        }
      }

      else
      {
        if (v95 != 5)
        {
          goto LABEL_330;
        }

        v102 = *(v3 + 16);
        if (v102 != *(v94 + 16))
        {
          goto LABEL_330;
        }

        if (v102)
        {
          v103 = v3 == v94;
        }

        else
        {
          v103 = 1;
        }

        if (!v103)
        {
          v118 = (v3 + 32);
          v119 = (v94 + 32);
          while (v102)
          {
            if (*v118 != *v119)
            {
              goto LABEL_330;
            }

            ++v118;
            ++v119;
            if (!--v102)
            {
              goto LABEL_197;
            }
          }

LABEL_341:
          __break(1u);
          goto LABEL_342;
        }

LABEL_197:
        v104 = *(v90 + 16);
        if (v104 != *(v93 + 16))
        {
          goto LABEL_330;
        }

        if (v104 && v90 != v93)
        {
          v105 = (v90 + 32);
          v106 = (v93 + 32);
          while (*v105 == *v106)
          {
            ++v105;
            ++v106;
            if (!--v104)
            {
              goto LABEL_154;
            }
          }

          goto LABEL_330;
        }
      }

      goto LABEL_154;
    }

    if (v91 <= 1)
    {
      if (v91)
      {
        if (v95 != 1)
        {
          goto LABEL_330;
        }
      }

      else if (v95)
      {
        goto LABEL_330;
      }

      if (v3 != v94 || v90 != v93)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v82 = v183;
        v84 = v184;
        v83 = v185;
        v2 = v186;
        if ((result & 1) == 0)
        {
          goto LABEL_330;
        }
      }

      goto LABEL_154;
    }

    if (v91 == 2)
    {
      if (v95 != 2 || ((v94 ^ v3) & 1) != 0)
      {
        goto LABEL_330;
      }

      goto LABEL_154;
    }

    if (v95 != 3)
    {
      goto LABEL_330;
    }

    v107 = *(v3 + 16);
    if (v107 != *(v94 + 16))
    {
      goto LABEL_330;
    }

    if (v107)
    {
      v108 = v3 == v94;
    }

    else
    {
      v108 = 1;
    }

    if (v108)
    {
      goto LABEL_154;
    }

    v109 = v3 + 32;
    v171 = v94 + 32;
    v110 = v94;
    v179 = v94;
    v180 = v3;
    v111 = v3;
    v112 = v90;
    v182 = v93;
    v178 = v107;
    outlined copy of JSONEncoderValue(v110, v93, 3u);
    v169 = v112;
    result = outlined copy of JSONEncoderValue(v111, v112, 3u);
    v113 = v171;
    v114 = v109;
    v115 = v178;
    v116 = v182;
    v117 = 0;
    v165 = v109;
LABEL_221:
    if (v117 >= *(v180 + 16))
    {
      goto LABEL_343;
    }

    if (v117 >= *(v179 + 16))
    {
      goto LABEL_344;
    }

    v121 = v114 + 24 * v117;
    v3 = *v121;
    v122 = *(v121 + 8);
    v123 = *(v121 + 16);
    v124 = v113 + 24 * v117;
    v126 = *v124;
    v125 = *(v124 + 8);
    v127 = *(v124 + 16);
    if (v123 <= 3)
    {
      if (v123 <= 1)
      {
        if (v123)
        {
          if (v127 != 1)
          {
            goto LABEL_329;
          }
        }

        else if (v127)
        {
          goto LABEL_329;
        }

        if (v3 != v126 || v122 != v125)
        {
          v3 = v114;
          v176 = v117;
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          v117 = v176;
          v115 = v178;
          v114 = v3;
          v116 = v182;
          if ((result & 1) == 0)
          {
            goto LABEL_329;
          }
        }

        goto LABEL_220;
      }

      if (v123 == 2)
      {
        if (v127 != 2 || ((v126 ^ v3) & 1) != 0)
        {
          goto LABEL_329;
        }

        goto LABEL_220;
      }

      if (v127 != 3)
      {
        goto LABEL_329;
      }

      v139 = *(v3 + 16);
      if (v139 != *(v126 + 16))
      {
        goto LABEL_329;
      }

      if (v139)
      {
        v140 = v3 == v126;
      }

      else
      {
        v140 = 1;
      }

      if (!v140)
      {
        v174 = v126;
        v177 = v117;
        v168 = v125;
        v170 = *(v3 + 16);
        outlined copy of JSONEncoderValue(v126, v125, 3u);
        v161 = v122;
        result = outlined copy of JSONEncoderValue(v3, v122, 3u);
        v141 = v170;
        v142 = 0;
        v143 = (v174 + 48);
        v172 = v3;
        v144 = (v3 + 48);
        while (1)
        {
          if (v142 >= *(v172 + 16))
          {
            goto LABEL_347;
          }

          if (v142 >= *(v174 + 16))
          {
            goto LABEL_348;
          }

          result = *(v144 - 2);
          v146 = *(v144 - 1);
          v147 = *v144;
          v3 = *(v143 - 2);
          v148 = *(v143 - 1);
          v149 = *v143;
          if (v147 > 3)
          {
            break;
          }

          if (*v144 > 1u)
          {
            if (v147 == 2)
            {
              if (v149 != 2 || ((v3 ^ result) & 1) != 0)
              {
                goto LABEL_328;
              }

              goto LABEL_279;
            }

            if (v149 != 3)
            {
              goto LABEL_328;
            }

            v154 = *(v144 - 2);
            v163 = v144;
            v164 = v142;
            v173 = v143;
            v167 = *(v143 - 1);
            outlined copy of JSONEncoderValue(*(v143 - 2), v167, 3u);
            outlined copy of JSONEncoderValue(v154, v146, 3u);
            v162 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation16JSONEncoderValueO_Tt1g5(v154, v3);
            outlined consume of JSONEncoderValue(v3, v167, 3u);
            v151 = v154;
            v152 = v146;
            v153 = 3;
            goto LABEL_307;
          }

          if (*v144)
          {
            if (v149 != 1)
            {
              goto LABEL_328;
            }
          }

          else if (*v143)
          {
            goto LABEL_328;
          }

          if (result != v3 || v146 != v148)
          {
            v3 = v142;
            v173 = v143;
            v145 = v144;
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_278:
            v144 = v145;
            v143 = v173;
            v142 = v3;
            v141 = v170;
            if ((result & 1) == 0)
            {
              goto LABEL_328;
            }
          }

LABEL_279:
          ++v142;
          v143 += 24;
          v144 += 24;
          if (v141 == v142)
          {
            outlined consume of JSONEncoderValue(v174, v168, 3u);
            result = outlined consume of JSONEncoderValue(v172, v161, 3u);
            v116 = v182;
            v117 = v177;
            v115 = v178;
            v114 = v165;
            v113 = v171;
            goto LABEL_220;
          }
        }

        if (*v144 > 5u)
        {
          if (v147 != 6)
          {
            if (v149 != 7 || v148 | v3)
            {
              goto LABEL_328;
            }

            goto LABEL_279;
          }

          if (v149 != 6)
          {
            goto LABEL_328;
          }

          v3 = v142;
          v173 = v143;
          v145 = v144;
          result = _sSasSQRzlE2eeoiySbSayxG_ABtFZs5UInt8V_Tt1g5(result, *(v143 - 2));
        }

        else
        {
          v173 = v143;
          v166 = *(v143 - 1);
          if (v147 == 4)
          {
            if (v149 != 4)
            {
              goto LABEL_328;
            }

            v150 = *(v144 - 2);
            v163 = v144;
            v164 = v142;
            outlined copy of JSONEncoderValue(v3, v148, 4u);
            outlined copy of JSONEncoderValue(v150, v146, 4u);
            v162 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16JSONEncoderValueOTt1g5(v150, v3);
            outlined consume of JSONEncoderValue(v3, v166, 4u);
            v151 = v150;
            v152 = v146;
            v153 = 4;
LABEL_307:
            result = outlined consume of JSONEncoderValue(v151, v152, v153);
            v144 = v163;
            v142 = v164;
            v143 = v173;
            v141 = v170;
            if ((v162 & 1) == 0)
            {
              goto LABEL_328;
            }

            goto LABEL_279;
          }

          if (v149 != 5)
          {
            goto LABEL_328;
          }

          v3 = v142;
          v145 = v144;
          if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZs5UInt8V_Tt1g5(result, *(v143 - 2)) & 1) == 0)
          {
            goto LABEL_328;
          }

          result = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v146, v166);
        }

        goto LABEL_278;
      }

LABEL_220:
      if (++v117 == v115)
      {
        outlined consume of JSONEncoderValue(v179, v116, 3u);
        result = outlined consume of JSONEncoderValue(v180, v169, 3u);
        v83 = v185;
        v2 = v186;
        v82 = v183;
        v84 = v184;
LABEL_154:
        if (++v85 == v84)
        {
          outlined consume of JSONEncoderValue(v83, v192, 3u);
          result = outlined consume of JSONEncoderValue(v2, v181, 3u);
          v57 = v28 + 32;
          v56 = v189;
          v55 = v190;
          goto LABEL_88;
        }

        continue;
      }

      goto LABEL_221;
    }

    break;
  }

  if (v123 <= 5)
  {
    if (v123 == 4)
    {
      if (v127 != 4)
      {
        goto LABEL_329;
      }

      v175 = v117;
      v128 = v126;
      v168 = v125;
      outlined copy of JSONEncoderValue(v126, v125, 4u);
      outlined copy of JSONEncoderValue(v3, v122, 4u);
      LODWORD(v174) = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_10Foundation16JSONEncoderValueOTt1g5(v3, v128);
      outlined consume of JSONEncoderValue(v128, v168, 4u);
      result = outlined consume of JSONEncoderValue(v3, v122, 4u);
      v117 = v175;
      v115 = v178;
      v113 = v171;
      v114 = v165;
      v116 = v182;
      if ((v174 & 1) == 0)
      {
        goto LABEL_329;
      }
    }

    else
    {
      if (v127 != 5)
      {
        goto LABEL_329;
      }

      v134 = *(v3 + 16);
      if (v134 != *(v126 + 16))
      {
        goto LABEL_329;
      }

      if (v134)
      {
        v135 = v3 == v126;
      }

      else
      {
        v135 = 1;
      }

      if (!v135)
      {
        v155 = (v3 + 32);
        v156 = (v126 + 32);
        while (v134)
        {
          if (*v155 != *v156)
          {
            goto LABEL_329;
          }

          ++v155;
          ++v156;
          if (!--v134)
          {
            goto LABEL_263;
          }
        }

        goto LABEL_345;
      }

LABEL_263:
      v136 = *(v122 + 16);
      if (v136 != *(v125 + 16))
      {
        goto LABEL_329;
      }

      if (v136 && v122 != v125)
      {
        v137 = (v122 + 32);
        v138 = (v125 + 32);
        while (*v137 == *v138)
        {
          ++v137;
          ++v138;
          if (!--v136)
          {
            goto LABEL_220;
          }
        }

LABEL_329:
        outlined consume of JSONEncoderValue(v179, v116, 3u);
        outlined consume of JSONEncoderValue(v180, v169, 3u);
        v83 = v185;
        v2 = v186;
LABEL_330:
        outlined consume of JSONEncoderValue(v83, v192, 3u);
        outlined consume of JSONEncoderValue(v2, v181, 3u);
        v160 = v190;
LABEL_331:
        outlined consume of JSONEncoderValue(v160, v188, 3u);
        v157 = v28;
        v158 = v27;
LABEL_332:
        v159 = 3;
LABEL_333:
        outlined consume of JSONEncoderValue(v157, v158, v159);
        return 0;
      }
    }

    goto LABEL_220;
  }

  if (v123 != 6)
  {
    if (v127 != 7 || (v125 | v126) != 0)
    {
      goto LABEL_329;
    }

    goto LABEL_220;
  }

  if (v127 != 6)
  {
    goto LABEL_329;
  }

  v129 = *(v3 + 16);
  if (v129 != *(v126 + 16))
  {
    goto LABEL_329;
  }

  if (v129)
  {
    v130 = v3 == v126;
  }

  else
  {
    v130 = 1;
  }

  if (v130)
  {
    goto LABEL_220;
  }

  v131 = (v3 + 32);
  v132 = (v126 + 32);
  while (v129)
  {
    if (*v131 != *v132)
    {
      goto LABEL_329;
    }

    ++v131;
    ++v132;
    if (!--v129)
    {
      goto LABEL_220;
    }
  }

LABEL_346:
  __break(1u);
  __break(1u);
LABEL_347:
  __break(1u);
LABEL_348:
  __break(1u);
  return result;
}