uint64_t ICUDateFormatter.DateFormatInfo.hash(into:)()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 80);
  v6 = *(v0 + 88);
  String.hash(into:)();
  String.hash(into:)();
  MEMORY[0x1865CD060](v1);
  MEMORY[0x1865CD060](v2);
  MEMORY[0x1865CD060](v3);
  MEMORY[0x1865CD060](v4);
  String.hash(into:)();
  Hasher._combine(_:)(v5);
  v7 = 0.0;
  if (v6 != 0.0)
  {
    v7 = v6;
  }

  return MEMORY[0x1865CD090](*&v7);
}

uint64_t specialized closure #1 in _withResizingUCharBuffer(initialSize:_:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if (!a1)
  {
    __break(1u);
  }

  v4 = udat_formatForFields();
  if (v4 <= 0)
  {

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v5 = specialized String.init(_utf16:)(a1, v4);
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  return result;
}

{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if (!a1)
  {
    __break(1u);
  }

  v4 = unumf_resultToString();
  if (v4 <= 0)
  {

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v5 = specialized String.init(_utf16:)(a1, v4);
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  return result;
}

{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if (!a1)
  {
    __break(1u);
  }

  v4 = unum_formatInt64();
  if (v4 <= 0)
  {

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v5 = specialized String.init(_utf16:)(a1, v4);
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  return result;
}

{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if (!a1)
  {
    __break(1u);
  }

  v4 = udat_formatForFields();
  if (v4 <= 0)
  {

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v5 = specialized String.init(_utf16:)(a1, v4);
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }
}

{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if (!a1)
  {
    __break(1u);
  }

  v4 = udtitvfmt_format();
  if (v4 <= 0)
  {

    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v5 = specialized String.init(_utf16:)(a1, v4);
    v7 = v6;

    *a2 = v5;
    a2[1] = v7;
  }

  return result;
}

{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if (!a1)
  {
    __break(1u);
  }

  String.utf8CString.getter();

  TimeZoneDisplayName = ucal_getTimeZoneDisplayName();

  if (TimeZoneDisplayName <= 0)
  {
    result = swift_bridgeObjectRelease_n();
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    v5 = specialized String.init(_utf16:)(a1, TimeZoneDisplayName);
    v7 = v6;
    result = swift_bridgeObjectRelease_n();
    *a2 = v5;
    a2[1] = v7;
  }

  return result;
}

{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  if (!a1)
  {
    __break(1u);
  }

  MEMORY[0x1865D2B40]();
  result = udat_format();
  if (result <= 0)
  {
    *a2 = 0;
    a2[1] = 0;
  }

  else
  {
    result = specialized String.init(_utf16:)(a1, result);
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t protocol witness for _LocaleProtocol.forceFirstWeekday(_:) in conformance _LocaleAutoupdating(char *a1)
{
  v1 = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v6 = static LocaleCache.cache;
  v7 = qword_1ED4404B0;
  LocaleCache._currentAndCache.getter();
  v3 = v2;
  ObjectType = swift_getObjectType();
  LOBYTE(v6) = v1;
  (*(v3 + 432))(&v6, ObjectType, v3);

  return swift_unknownObjectRelease();
}

Swift::String_optional __swiftcall URL.host(percentEncoded:)(Swift::Bool percentEncoded)
{
  v2 = percentEncoded;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 200))(v2, ObjectType, v3);
  result.value._object = v6;
  result.value._countAndFlagsBits = v5;
  return result;
}

id _BridgedURL.user(percentEncoded:)(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = [*(v2 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url) _cfurl];
  v5 = a2();
  if (!v5)
  {

    return 0;
  }

  v6 = v5;
  isTaggedPointer = _objc_isTaggedPointer(v5);
  v8 = v6;
  v9 = v8;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v8);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v19 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v20)
    {
      v21 = v19;

LABEL_23:
      return v21;
    }

    [v9 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v21 = v22;
LABEL_22:

    goto LABEL_23;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v11;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v13 = v9;
    v14 = String.init(_nativeStorage:)();
    if (v15)
    {
      v16 = v14;

      return v16;
    }

    if (![v13 length])
    {

      return 0;
    }

    v21 = String.init(_cocoaString:)();
    goto LABEL_22;
  }

  result = [v9 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v17)
    {
      v18 = result;

      return v18;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static Locale.identifier(fromComponents:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {
    return 0;
  }

  v7 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v27 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v28 = a2 & 0xFFFFFFFFFFFFFFLL;

  v9 = MEMORY[0x1E69E7CC0];
  v10 = 15;
  do
  {
    v11 = v10 & 0xC;
    v12 = v10;
    if (v11 == v8)
    {
      v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(v10, a1, a2);
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v4)
    {
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v15 = String.UTF8View._foreignSubscript(position:)();
      if (v11 != v8)
      {
        goto LABEL_18;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v29[0] = a1;
      v29[1] = v28;
      v15 = *(v29 + v13);
      if (v11 != v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v14 = v27;
      if ((a1 & 0x1000000000000000) == 0)
      {
        v14 = _StringObject.sharedUTF8.getter();
      }

      v15 = *(v14 + v13);
      if (v11 != v8)
      {
LABEL_18:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    v10 = _StringGuts._slowEnsureMatchingEncoding(_:)(v10, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_19:
      v10 = (v10 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_24;
    }

LABEL_22:
    if (v4 <= v10 >> 16)
    {
      goto LABEL_48;
    }

    v10 = String.UTF8View._foreignIndex(after:)();
LABEL_24:
    if ((v15 - 91) >= 0xE6u)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }

      v15 |= 0x20u;
    }

    else
    {
      if ((v15 - 123) < 0xE6u && (v15 <= 0x2Fu || v15 >= 0x3Au))
      {
        goto LABEL_44;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
      }
    }

    v17 = *(v9 + 2);
    v16 = *(v9 + 3);
    if (v17 >= v16 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v9);
    }

    *(v9 + 2) = v17 + 1;
    v9[v17 + 32] = v15;
  }

  while (4 * v4 != v10 >> 14);

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    goto LABEL_37;
  }

LABEL_49:
  v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
LABEL_37:
  v19 = *(v9 + 2);
  v18 = *(v9 + 3);
  if (v19 >= v18 >> 1)
  {
    v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v9);
  }

  *(v9 + 2) = v19 + 1;
  v9[v19 + 32] = 0;

  v21 = specialized String.init(cString:)(v20);

  v22 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v22 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
LABEL_44:

    goto LABEL_45;
  }

  v23 = specialized Sequence.allSatisfy(_:)(a3, a4);

  if (v23)
  {

    return v21;
  }

LABEL_45:

  return 0;
}

uint64_t specialized String.init(cString:)(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    if (!*(result + 32))
    {
      return static String._fromUTF8Repairing(_:)();
    }

    v2 = 0;
    v3 = v1 - 1;
    while (v3 != v2)
    {
      if (!*(result + 33 + v2++))
      {
        return static String._fromUTF8Repairing(_:)();
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized Sequence.allSatisfy(_:)(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v2 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 1;
  }

  v5 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  v6 = 4 << v5;
  v7 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v10 = result & 0xC;
    v11 = result;
    if (v10 == v6)
    {
      v15 = result;
      v11 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
      result = v15;
    }

    v12 = v11 >> 16;
    if (v11 >> 16 >= v2)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v18 = result;
      v14 = String.UTF8View._foreignSubscript(position:)();
      result = v18;
      if (v10 != v6)
      {
        goto LABEL_18;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = v7;
        v13 = v19;
      }

      else
      {
        v13 = v8;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v17 = result;
          v13 = _StringObject.sharedUTF8.getter();
          result = v17;
        }
      }

      v14 = *(v13 + v12);
      if (v10 != v6)
      {
LABEL_18:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_22;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_19:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_24;
    }

LABEL_22:
    if (v2 <= result >> 16)
    {
      goto LABEL_32;
    }

    result = String.UTF8View._foreignIndex(after:)();
LABEL_24:
    if (((v14 & 0xDF) - 91) <= 0xE5u && (v14 - 58) <= 0xF5u)
    {
      v16 = 0;
      if (v14 - 43 > 0x34 || ((1 << (v14 - 43)) & 0x10000000000015) == 0)
      {
        return v16;
      }
    }

    if (4 * v2 == result >> 14)
    {
      return 1;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void *))
{
  v21 = a4;
  if (a3 != a2)
  {
    v6 = *v4;
    v7 = (*v4 + 16 * a3);
    v8 = result - a3;
LABEL_4:
    v17 = v7;
    v18 = a3;
    v9 = (v6 + 16 * a3);
    v10 = *v9;
    v11 = v9[1];
    v16 = v8;
    while (1)
    {
      v20[0] = v10;
      v20[1] = v11;
      v12 = *(v7 - 1);
      v19[0] = *(v7 - 2);
      v19[1] = v12;

      v13 = v21(v20, v19);

      if (v5)
      {
        break;
      }

      if (v13)
      {
        if (!v6)
        {
          __break(1u);
          return result;
        }

        v10 = *v7;
        v11 = v7[1];
        *v7 = *(v7 - 1);
        *(v7 - 1) = v11;
        *(v7 - 2) = v10;
        v7 -= 2;
        if (!__CFADD__(v8++, 1))
        {
          continue;
        }
      }

      a3 = v18 + 1;
      v7 = v17 + 2;
      v8 = v16 - 1;
      if (v18 + 1 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

_OWORD *Data._copyContents(initializing:)(_OWORD *result, void *__dst, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = result;
  v31 = *MEMORY[0x1E69E9840];
  v8 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v8 != 2)
    {
LABEL_21:
      v19 = 0;
      v9 = 0;
      goto LABEL_39;
    }

    if (*(a4 + 16) == *(a4 + 24))
    {
LABEL_23:
      if (v8 != 2)
      {
LABEL_38:
        v9 = 0;
        v19 = a4;
        goto LABEL_39;
      }

      v9 = 0;
      v19 = *(a4 + 16);
LABEL_39:
      outlined copy of Data._Representation(a4, a5);
      Data.Iterator.init(_:at:)(a4, a5, v19, v7);
      return v9;
    }
  }

  else
  {
    if (!v8)
    {
      if ((a5 & 0xFF000000000000) != 0)
      {
        __src = a4;
        v26 = a5;
        v27 = BYTE2(a5);
        v28 = BYTE3(a5);
        v29 = BYTE4(a5);
        v30 = BYTE5(a5);
        if (__dst)
        {
          if (BYTE6(a5) >= a3)
          {
            v9 = a3;
          }

          else
          {
            v9 = BYTE6(a5);
          }

          memcpy(__dst, &__src, v9);
          v10 = 0;
          goto LABEL_35;
        }

        __break(1u);
LABEL_46:
        if (!__dst)
        {
          goto LABEL_47;
        }

        goto LABEL_48;
      }

      goto LABEL_21;
    }

    if (a4 == a4 >> 32)
    {
      goto LABEL_23;
    }
  }

  if (v8 == 2)
  {
    v11 = *(a4 + 16);
    v12 = *(a4 + 24);
    v13 = __OFSUB__(v12, v11);
    v14 = v12 - v11;
    if (!v13)
    {
      if (v14 >= a3)
      {
        v9 = a3;
      }

      else
      {
        v9 = v14;
      }

      v15 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (!v15)
      {
        goto LABEL_46;
      }

      v16 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v13 = __OFSUB__(v11, v16);
      v17 = v11 - v16;
      if (!v13)
      {
        if (!__dst)
        {
LABEL_47:
          __break(1u);
          goto LABEL_48;
        }

        v18 = (v17 + v15);
        if (!v18)
        {
LABEL_48:
          __break(1u);
LABEL_49:
          if (!__dst)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }

        memcpy(__dst, v18, v9);
        v10 = *(a4 + 16);
LABEL_35:
        v13 = __OFADD__(v10, v9);
        v19 = v10 + v9;
        if (!v13)
        {
          goto LABEL_39;
        }

        __break(1u);
        goto LABEL_38;
      }

      goto LABEL_43;
    }

    __break(1u);
    goto LABEL_41;
  }

  v20 = HIDWORD(a4) - a4;
  if (__OFSUB__(HIDWORD(a4), a4))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (v20 >= a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v20;
  }

  v10 = a4;
  if (a4 > a4 >> 32)
  {
    goto LABEL_42;
  }

  v21 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  if (!v21)
  {
    goto LABEL_49;
  }

  v22 = *((a5 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v13 = __OFSUB__(a4, v22);
  v23 = a4 - v22;
  if (v13)
  {
LABEL_44:
    __break(1u);
  }

  if (!__dst)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v24 = (v23 + v21);
  if (v24)
  {
    memcpy(__dst, v24, v9);
    goto LABEL_35;
  }

LABEL_51:
  __break(1u);
  return result;
}

double Data.Iterator.init(_:at:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v6 = a1;
  v28 = *MEMORY[0x1E69E9840];
  *&v24 = a1;
  *(&v24 + 1) = a2;
  v25 = 0u;
  v26 = 0u;
  *&v27 = a3;
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2)
    {
      v9 = 0;
      *(&v27 + 1) = 0;
      v10 = a3;
      goto LABEL_8;
    }

    v9 = *(a1 + 24);
    *(&v27 + 1) = v9;
    v11 = *(a1 + 16);
  }

  else
  {
    if (!v8)
    {
      v9 = BYTE6(a2);
      *(&v27 + 1) = BYTE6(a2);
      v10 = a3;
      goto LABEL_8;
    }

    v9 = a1 >> 32;
    *(&v27 + 1) = a1 >> 32;
    v11 = a1;
  }

  a1 = outlined copy of Data._Representation(a1, a2);
  v10 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_8:
  v12 = -v10 < 0;
  v13 = -v10 & 0x1F;
  v14 = v10 & 0x1F;
  if (!v12)
  {
    v14 = -v13;
  }

  v15 = __OFSUB__(a3, v14);
  v16 = a3 - v14;
  if (v15)
  {
    goto LABEL_18;
  }

  if (__OFSUB__(v9, v16))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9 - v16 >= 33)
  {
    v9 = v16 + 32;
    if (__OFADD__(v16, 32))
    {
LABEL_21:
      __break(1u);
    }
  }

  if (v9 < v16)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v23[0] = v6;
  v23[1] = a2;
  v22[0] = v16;
  v22[1] = v9;
  MEMORY[0x1EEE9AC00](a1);
  v21[2] = v23;
  v21[3] = v22;
  v21[4] = v17;
  v21[5] = 32;
  specialized Data._Representation.withUnsafeBytes<A>(_:)(partial apply for specialized closure #1 in DataProtocol<>.copyBytes<A, B>(to:from:), v21, v6, a2);
  outlined consume of Data._Representation(v6, a2);
  v18 = v25;
  *a4 = v24;
  a4[1] = v18;
  result = *&v26;
  v20 = v27;
  a4[2] = v26;
  a4[3] = v20;
  return result;
}

void *specialized closure #1 in DataProtocol<>.copyBytes<A, B>(to:from:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v13 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    v14 = 0;
    if (v13 == 2)
    {
      v14 = *(a3 + 16);
    }
  }

  else if (v13)
  {
    v14 = a3;
  }

  else
  {
    v14 = 0;
  }

  v15 = specialized RandomAccessCollection<>.distance(from:to:)(v14, a5, a3, a4);
  result = specialized RandomAccessCollection<>.distance(from:to:)(a5, a6, a3, a4);
  if (!a7)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!a1)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  return memcpy(a7, (a1 + v15), result);
}

void *partial apply for specialized closure #1 in DataProtocol<>.copyBytes<A, B>(to:from:)(uint64_t a1, uint64_t a2)
{
  return specialized closure #1 in DataProtocol<>.copyBytes<A, B>(to:from:)(a1, a2, **(v2 + 16), *(*(v2 + 16) + 8), **(v2 + 24), *(*(v2 + 24) + 8), *(v2 + 32));
}

{
  return partial apply for specialized closure #1 in DataProtocol<>.copyBytes<A, B>(to:from:)(a1, a2);
}

uint64_t protocol witness for KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:) in conformance _PlistKeyedDecodingContainer<A, B>(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(uint64_t, void, void, void, void, void, void, void))
{
  result = a4(a1, *v4, v4[1], v4[2], a2[2], a2[3], a2[4], a2[5]);
  if (v5)
  {
    return v7;
  }

  return result;
}

{
  v5 = a4(a1, *v4, v4[1], v4[2], a2[2], a2[3], a2[4], a2[5]);
  return v5 | ((HIDWORD(v5) & 1) << 32);
}

{
  return a4(a1, *v4, v4[1], v4[2], a2[2], a2[3], a2[4], a2[5]) & 0x1FF;
}

{
  return a4(a1, *v4, v4[1], v4[2], a2[2], a2[3], a2[4], a2[5]) & 0x1FFFF;
}

id NSDictionary.init(dictionaryLiteral:)(unint64_t a1)
{
  v1 = a1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v35 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v3 = v1 + 32;
    v4 = v2;
    v2 = v30;
    v5 = v1 + 32;
    v29 = v4;
    do
    {
      outlined init with copy of FloatingPointRoundingRule?(v5, v33, &_syp_yptMd);
      outlined init with copy of FloatingPointRoundingRule?(v33, v30, &_syp_yptMd);
      v6 = v32;
      v7 = __swift_project_boxed_opaque_existential_1(v31, v32);
      isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
      if (isClassOrObjCExistentialType)
      {
        outlined destroy of TermOfAddress?(v33, &_syp_yptMd);
        if (*(*(v6 - 8) + 64) != 8)
        {
          __break(1u);
LABEL_27:
          __break(1u);
          goto LABEL_28;
        }

        swift_unknownObjectRetain();
      }

      else
      {
        v28[1] = v28;
        v9 = MEMORY[0x1EEE9AC00](isClassOrObjCExistentialType);
        (*(v11 + 16))(v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v7, v6, v9);
        _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        outlined destroy of TermOfAddress?(v33, &_syp_yptMd);
      }

      __swift_destroy_boxed_opaque_existential_1(v31);
      __swift_destroy_boxed_opaque_existential_1(v30);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v5 += 64;
      v4 = (v4 - 1);
    }

    while (v4);
    v12 = v35;
    v30[0] = MEMORY[0x1E69E7CC0];
    v2 = v29;
    specialized ContiguousArray.reserveCapacity(_:)();
    v13 = v2;
    do
    {
      outlined init with copy of FloatingPointRoundingRule?(v3, v33, &_syp_yptMd);
      v14 = v34;
      v15 = __swift_project_boxed_opaque_existential_1(v33, v34);
      v16 = _swift_isClassOrObjCExistentialType();
      if (v16)
      {
        if (*(*(v14 - 8) + 64) != 8)
        {
          goto LABEL_27;
        }

        swift_unknownObjectRetain();
      }

      else
      {
        v17 = MEMORY[0x1EEE9AC00](v16);
        (*(v19 + 16))(v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), v15, v14, v17);
        _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
        v2 = v29;
      }

      outlined destroy of TermOfAddress?(v33, &_syp_yptMd);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v3 += 64;
      v13 = (v13 - 1);
    }

    while (v13);

    v1 = v30[0];
    if (!(v12 >> 62))
    {
      goto LABEL_16;
    }
  }

  else
  {

    v1 = MEMORY[0x1E69E7CC0];
    v12 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_16:
      v20 = v12 & 0xFFFFFFFFFFFFFF8;
      goto LABEL_17;
    }
  }

  if (!__CocoaSet.count.getter())
  {
    v21 = -8;
    if (!(v1 >> 62))
    {
      goto LABEL_18;
    }

    goto LABEL_24;
  }

LABEL_28:

  v20 = specialized _copyCollectionToContiguousArray<A>(_:)(v26);
  swift_bridgeObjectRelease_n();
LABEL_17:
  v21 = v20 + 32;
  if (!(v1 >> 62))
  {
LABEL_18:
    v22 = v1 & 0xFFFFFFFFFFFFFF8;
    goto LABEL_19;
  }

LABEL_24:
  if (!__CocoaSet.count.getter())
  {
    v23 = -8;
    goto LABEL_20;
  }

  v22 = specialized _copyCollectionToContiguousArray<A>(_:)(v27);
  swift_bridgeObjectRelease_n();
LABEL_19:
  v23 = v22 + 32;
LABEL_20:
  v24 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithObjects:v21 forKeys:v23 count:v2];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v24;
}

uint64_t specialized numericCast<A, B>(_:)(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  (*(v5 + 16))(&v22 - v11, a1, a2, v10);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() >= 65)
  {
    v23 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v13 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v13)
    {
      if (v14 > 64)
      {
LABEL_8:
        lazy protocol witness table accessor for type Int and conformance Int();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v15 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v5 + 8))(v8, a2);
        if ((v15 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_25:
        __break(1u);
        return result;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v17 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v5 + 8))(v8, a2);
      if (v17)
      {
        goto LABEL_25;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v14 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v23 = 0x7FFFFFFFFFFFFFFFLL;
    v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v19 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v18 & 1) == 0)
    {
      break;
    }

    if (v19 <= 64)
    {
      goto LABEL_23;
    }

LABEL_17:
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v20 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v5 + 8))(v8, a2);
    if (v20)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v19 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v21 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v5 + 8))(v12, a2);
  return v21;
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = v20 - v11;
  (*(v5 + 16))(v20 - v11, a1, a2, v10);
  if (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || (swift_getAssociatedConformanceWitness(), dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v13 = dispatch thunk of static Comparable.>= infix(_:_:)(), result = (*(v5 + 8))(v8, a2), (v13))
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      v20[1] = -1;
      v15 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v16 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v15)
      {
        if (v16 <= 64)
        {
          swift_getAssociatedConformanceWitness();
          dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
          dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
          v17 = dispatch thunk of static Comparable.> infix(_:_:)();
          (*(v5 + 8))(v8, a2);
          if ((v17 & 1) == 0)
          {
            goto LABEL_12;
          }

          goto LABEL_11;
        }
      }

      else if (v16 <= 64)
      {
LABEL_11:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_12;
      }

      lazy protocol witness table accessor for type UInt and conformance UInt();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v18 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v5 + 8))(v8, a2);
      if (v18)
      {
        __break(1u);
        goto LABEL_11;
      }
    }

LABEL_12:
    v19 = dispatch thunk of BinaryInteger._lowWord.getter();
    (*(v5 + 8))(v12, a2);
    return v19;
  }

  __break(1u);
  return result;
}

{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - v11;
  (*(v5 + 16))(&v22 - v11, a1, a2, v10);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() < 65)
  {
    goto LABEL_14;
  }

  v23 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_13;
    }

LABEL_8:
    lazy protocol witness table accessor for type Int and conformance Int();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v15 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v5 + 8))(v8, a2);
    if (v15)
    {
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  v13 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v13)
  {
    if (v14 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v17 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v5 + 8))(v8, a2);
      if (v17)
      {
        goto LABEL_25;
      }

      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v14 < 64)
  {
LABEL_13:
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64 && (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0))
  {
    goto LABEL_23;
  }

  v23 = 0x7FFFFFFFFFFFFFFFLL;
  v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v19 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v18)
  {
    if (v19 < 65)
    {
LABEL_17:
      dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_23:
      v21 = dispatch thunk of BinaryInteger._lowWord.getter();
      (*(v5 + 8))(v12, a2);
      return v21;
    }
  }

  else if (v19 < 64)
  {
    goto LABEL_17;
  }

  lazy protocol witness table accessor for type Int and conformance Int();
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v20 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = (*(v5 + 8))(v8, a2);
  if ((v20 & 1) == 0)
  {
    goto LABEL_23;
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t Error<>._code.getter(uint64_t a1, uint64_t a2)
{
  return (*(a2 + 24))();
}

{
  return (*(a2 + 24))();
}

uint64_t closure #1 in _NSSwiftURLComponents.path.setter(uint64_t a1, unint64_t a2, unint64_t a3)
{
  if (a3)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if (a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = 0xE000000000000000;
  }

  *(a1 + 8) = 0;
  *(a1 + 14) = 0;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v6 = _s10Foundation13RFC3986ParserV17percentEncodePath33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSx_SbtSyRzlFZSS_Tt1g5(v4, v5, 0);
    v8 = v7;
  }

  else
  {

    v8 = 0xE000000000000000;
  }

  *(a1 + 104) = v6;
  *(a1 + 112) = v8;
  return result;
}

uint64_t _NSSwiftURLComponents.string.getter()
{
  v1 = *(v0 + OBJC_IVAR____NSSwiftURLComponents_lock);
  os_unfair_lock_lock((v1 + 172));
  v2 = *(v1 + 128);
  v16 = *(v1 + 112);
  v17 = v2;
  v18[0] = *(v1 + 144);
  *(v18 + 10) = *(v1 + 154);
  v3 = *(v1 + 64);
  v12 = *(v1 + 48);
  v13 = v3;
  v4 = *(v1 + 96);
  v14 = *(v1 + 80);
  v15 = v4;
  v5 = *(v1 + 32);
  v10 = *(v1 + 16);
  v11 = v5;
  outlined init with copy of URLComponents(&v10, v8);
  os_unfair_lock_unlock((v1 + 172));
  v8[6] = v16;
  v8[7] = v17;
  v9[0] = v18[0];
  *(v9 + 10) = *(v18 + 10);
  v8[2] = v12;
  v8[3] = v13;
  v8[4] = v14;
  v8[5] = v15;
  v8[0] = v10;
  v8[1] = v11;
  if (BYTE8(v10) == 1)
  {
    if (v10)
    {
      v6 = *(v10 + 16);
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = URLComponents._URLComponents.computedString.getter();
  }

  outlined destroy of URLComponents(&v10);
  return v6;
}

uint64_t _BridgedStoredNSError.init(_:userInfo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v20 = a1;
  v19[2] = a2;
  v19[3] = a5;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  v9 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v19 - v10;
  v19[1] = (*(*(a4 + 8) + 16))(a3, v9);
  v12 = swift_checkMetadataState();
  dispatch thunk of RawRepresentable.rawValue.getter();
  swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    v13 = specialized numericCast<A, B>(_:)(v11, AssociatedTypeWitness);
  }

  else
  {
    v13 = specialized numericCast<A, B>(_:)(v11, AssociatedTypeWitness);
  }

  v14 = v13;
  (*(v8 + 8))(v11, AssociatedTypeWitness);
  v15 = objc_allocWithZone(NSError);
  v16 = String._bridgeToObjectiveCImpl()();

  v17 = [v15 initWithDomain:v16 code:v14 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(a4 + 72))(v17, a3, a4);
  return (*(*(v12 - 8) + 8))(v20, v12);
}

unint64_t specialized Sequence.first(where:)(unint64_t a1, unint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v5 = 4 * v4;
  v6 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v6) = 1;
  }

  v7 = 4 << v6;
  v19 = a2 & 0xFFFFFFFFFFFFFFLL;
  v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  result = 15;
  while (1)
  {
    v10 = result >> 14;
    if (result >> 14 == v5)
    {
      v15 = 0;
      return v15 | ((v10 == v5) << 8);
    }

    v11 = result & 0xC;
    v12 = result;
    if (v11 == v7)
    {
      v16 = result;
      v12 = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
      result = v16;
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v4)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v18 = result;
      v15 = String.UTF8View._foreignSubscript(position:)();
      result = v18;
      if (v11 != v7)
      {
        goto LABEL_17;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v20[0] = a1;
        v20[1] = v19;
        v14 = v20;
      }

      else
      {
        v14 = v8;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v17 = result;
          v14 = _StringObject.sharedUTF8.getter();
          result = v17;
        }
      }

      v15 = *(v14 + v13);
      if (v11 != v7)
      {
LABEL_17:
        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_21;
        }

        goto LABEL_18;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a1, a2);
    if ((a2 & 0x1000000000000000) != 0)
    {
LABEL_21:
      if (v4 <= result >> 16)
      {
        goto LABEL_29;
      }

      result = String.UTF8View._foreignIndex(after:)();
      goto LABEL_23;
    }

LABEL_18:
    result = (result & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_23:
    if (v15 == 47 || v15 == 58)
    {
      return v15 | ((v10 == v5) << 8);
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t closure #1 in _FileManagerImpl.attributesOfFileSystem(forPath:)@<X0>(const char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, void *a4@<X8>)
{
  v159 = *MEMORY[0x1E69E9840];
  if (!a1)
  {

    if (_foundation_swift_url_feature_enabled())
    {

      v12 = specialized String.withFileSystemRepresentation<A>(_:)(a2, a3, a2, a3);
      v14 = v13;

      LOBYTE(v154) = 3;
      type metadata accessor for _SwiftURL();
      *&v158.f_bsize = 0;
      v158.f_blocks = 0;
      swift_allocObject();
      _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v12, v14, 0, &v154, &v158);
      v15 = _SwiftURL.convertingFileReference()();
      v17 = v16;
    }

    else
    {
      v74 = (specialized BidirectionalCollection.last.getter(a2, a3) & 0x1FF) == 47;
      objc_allocWithZone(type metadata accessor for _BridgedURL());

      v75 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a2, a3, v74);
      if (!v75)
      {

        v78 = String._bridgeToObjectiveCImpl()();
        goto LABEL_60;
      }

      v76 = v75;
      v15 = _BridgedURL.convertingFileReference()();
      v17 = v77;
    }

    v78 = String._bridgeToObjectiveCImpl()();
    if (v15)
    {
      ObjectType = swift_getObjectType();
      v80 = (*(v17 + 432))(ObjectType, v17);
      swift_unknownObjectRelease();
LABEL_61:
      [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      swift_unknownObjectRelease();

      return swift_willThrow();
    }

LABEL_60:
    v80 = 0;
    goto LABEL_61;
  }

  bzero(&v158, 0x878uLL);
  if (!statfs(a1, &v158))
  {
    if (is_mul_ok(v158.f_blocks, v158.f_bsize))
    {
      if (is_mul_ok(v158.f_bavail, v158.f_bsize))
      {
        v18 = v158.f_fsid.val[0];
        v19 = v158.f_blocks * v158.f_bsize;
        f_files = v158.f_files;
        f_ffree = v158.f_ffree;
        v148 = v158.f_bavail * v158.f_bsize;
        v22 = geteuid();
        *&v154 = 0;
        v149 = v4;
        v143 = a4;
        v145 = v18;
        v146 = f_files;
        v147 = f_ffree;
        if (!quotactl(v158.f_mntonname, 458752, v22, &v154))
        {
          if (v154)
          {
            v156 = 0u;
            v157 = 0u;
            v154 = 0u;
            v155 = 0u;
            if (!quotactl(v158.f_mntonname, 196608, v22, &v154))
            {
              if (v154)
              {
                if (v154 < v155)
                {
LABEL_176:
                  __break(1u);
LABEL_177:
                  __break(1u);
                }

                if (v19 >= v154)
                {
                  v19 = v154;
                }

                v81 = v148;
                if (v148 >= v154 - v155)
                {
                  v81 = v154 - v155;
                }

                v148 = v81;
              }

              if (DWORD2(v155))
              {
                if (DWORD2(v155) < v156)
                {
                  goto LABEL_177;
                }

                if (f_files >= DWORD2(v155))
                {
                  f_files = DWORD2(v155);
                }

                if (f_ffree >= (DWORD2(v155) - v156))
                {
                  f_ffree = (DWORD2(v155) - v156);
                }

                v146 = f_files;
                v147 = f_ffree;
              }
            }
          }
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18NSFileAttributeKeya_yptGMd);
        v23 = swift_allocObject();
        *(v23 + 32) = @"NSFileSystemSize";
        v24 = objc_allocWithZone(NSNumber);
        v25 = @"NSFileSystemSize";
        v26 = &selRef_initWithLongLong_;
        if (v19 < 0)
        {
          v26 = &selRef_initWithUnsignedLongLong_;
        }

        v27 = [v24 *v26];
        v28 = type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSNumber);
        *(&v155 + 1) = v28;
        *&v154 = v27;
        outlined init with take of Any(&v154, (v23 + 40));
        *(v23 + 72) = @"NSFileSystemFreeSize";
        v144 = v23 + 72;
        v29 = objc_allocWithZone(NSNumber);
        v30 = @"NSFileSystemFreeSize";
        if (v148 >= 0)
        {
          v31 = &selRef_initWithLongLong_;
        }

        else
        {
          v31 = &selRef_initWithUnsignedLongLong_;
        }

        v32 = [v29 *v31];
        *(&v155 + 1) = v28;
        *&v154 = v32;
        outlined init with take of Any(&v154, (v23 + 80));
        *(v23 + 112) = @"NSFileSystemNodes";
        v148 = v23 + 112;
        v33 = objc_allocWithZone(NSNumber);
        v34 = @"NSFileSystemNodes";
        if (v146 >= 0)
        {
          v35 = &selRef_initWithLongLong_;
        }

        else
        {
          v35 = &selRef_initWithUnsignedLongLong_;
        }

        v36 = [v33 *v35];
        *(&v155 + 1) = v28;
        *&v154 = v36;
        outlined init with take of Any(&v154, (v23 + 120));
        *(v23 + 152) = @"NSFileSystemFreeNodes";
        v146 = v23 + 152;
        v37 = objc_allocWithZone(NSNumber);
        v38 = @"NSFileSystemFreeNodes";
        if (v147 >= 0)
        {
          v39 = &selRef_initWithLongLong_;
        }

        else
        {
          v39 = &selRef_initWithUnsignedLongLong_;
        }

        v40 = [v37 *v39];
        *(&v155 + 1) = v28;
        *&v154 = v40;
        outlined init with take of Any(&v154, (v23 + 160));
        *(v23 + 192) = @"NSFileSystemNumber";
        v41 = objc_allocWithZone(NSNumber);
        v42 = @"NSFileSystemNumber";
        v43 = [v41 initWithLongLong_];
        *(v23 + 224) = v28;
        *(v23 + 200) = v43;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo18NSFileAttributeKeyaypGMd);
        v44 = static _DictionaryStorage.allocate(capacity:)();
        outlined init with copy of FloatingPointRoundingRule?(v23 + 32, &v154, &_sSo18NSFileAttributeKeya_yptMd);
        v45 = v154;

        v46 = specialized __RawDictionaryStorage.find<A>(_:)(v45);
        if ((v47 & 1) == 0)
        {
          v48 = v44 + 8;
          *(v44 + ((v46 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v46;
          *(v44[6] + 8 * v46) = v45;
          outlined init with take of Any((&v154 + 8), (v44[7] + 32 * v46));
          v49 = v44[2];
          v50 = __OFADD__(v49, 1);
          v51 = v49 + 1;
          if (!v50)
          {
            v44[2] = v51;
            outlined init with copy of FloatingPointRoundingRule?(v144, &v154, &_sSo18NSFileAttributeKeya_yptMd);
            v52 = v154;
            v53 = specialized __RawDictionaryStorage.find<A>(_:)(v154);
            if ((v54 & 1) == 0)
            {
              *(v48 + ((v53 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v53;
              *(v44[6] + 8 * v53) = v52;
              outlined init with take of Any((&v154 + 8), (v44[7] + 32 * v53));
              v55 = v44[2];
              v50 = __OFADD__(v55, 1);
              v56 = v55 + 1;
              if (!v50)
              {
                v44[2] = v56;
                outlined init with copy of FloatingPointRoundingRule?(v148, &v154, &_sSo18NSFileAttributeKeya_yptMd);
                v57 = v154;
                v58 = specialized __RawDictionaryStorage.find<A>(_:)(v154);
                if ((v59 & 1) == 0)
                {
                  *(v48 + ((v58 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v58;
                  *(v44[6] + 8 * v58) = v57;
                  outlined init with take of Any((&v154 + 8), (v44[7] + 32 * v58));
                  v60 = v44[2];
                  v50 = __OFADD__(v60, 1);
                  v61 = v60 + 1;
                  if (!v50)
                  {
                    v44[2] = v61;
                    outlined init with copy of FloatingPointRoundingRule?(v146, &v154, &_sSo18NSFileAttributeKeya_yptMd);
                    v62 = v154;
                    v63 = specialized __RawDictionaryStorage.find<A>(_:)(v154);
                    if ((v64 & 1) == 0)
                    {
                      *(v48 + ((v63 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v63;
                      *(v44[6] + 8 * v63) = v62;
                      outlined init with take of Any((&v154 + 8), (v44[7] + 32 * v63));
                      v65 = v44[2];
                      v50 = __OFADD__(v65, 1);
                      v66 = v65 + 1;
                      if (!v50)
                      {
                        v44[2] = v66;
                        outlined init with copy of FloatingPointRoundingRule?(v23 + 192, &v154, &_sSo18NSFileAttributeKeya_yptMd);
                        v67 = v154;
                        v68 = specialized __RawDictionaryStorage.find<A>(_:)(v154);
                        if ((v69 & 1) == 0)
                        {
                          *(v48 + ((v68 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v68;
                          *(v44[6] + 8 * v68) = v67;
                          outlined init with take of Any((&v154 + 8), (v44[7] + 32 * v68));
                          v70 = v44[2];
                          v50 = __OFADD__(v70, 1);
                          v71 = v70 + 1;
                          if (!v50)
                          {
                            v44[2] = v71;

                            swift_setDeallocating();
                            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo18NSFileAttributeKeya_yptMd);
                            swift_arrayDestroy();
                            result = swift_deallocClassInstance();
                            *v143 = v44;
                            return result;
                          }

                          goto LABEL_174;
                        }

LABEL_173:
                        __break(1u);
LABEL_174:
                        __break(1u);
LABEL_175:
                        __break(1u);
                        goto LABEL_176;
                      }

LABEL_172:
                      __break(1u);
                      goto LABEL_173;
                    }

LABEL_171:
                    __break(1u);
                    goto LABEL_172;
                  }

LABEL_170:
                  __break(1u);
                  goto LABEL_171;
                }

LABEL_169:
                __break(1u);
                goto LABEL_170;
              }

LABEL_168:
              __break(1u);
              goto LABEL_169;
            }

LABEL_167:
            __break(1u);
            goto LABEL_168;
          }

LABEL_166:
          __break(1u);
          goto LABEL_167;
        }

LABEL_165:
        __break(1u);
        goto LABEL_166;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_165;
  }

  v9 = MEMORY[0x1865CA7A0]();
  LODWORD(v10) = v9;
  if (v9 > 26)
  {
    if (v9 == 27)
    {
      v11 = 263;
      goto LABEL_66;
    }

    if (v9 != 63)
    {
      if (v9 == 102)
      {
        v73 = 0;
        v148 = 256;
        goto LABEL_147;
      }

LABEL_63:
      v11 = 256;
      goto LABEL_66;
    }

    v11 = 258;
  }

  else
  {
    if (v9 == 1)
    {
LABEL_7:
      v11 = 257;
      goto LABEL_66;
    }

    if (v9 != 2)
    {
      if (v9 == 13)
      {
        goto LABEL_7;
      }

      goto LABEL_63;
    }

    v11 = 260;
  }

LABEL_66:
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) == 0)
  {
    LODWORD(v10) = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
    v82 = @"NSPOSIXErrorDomain";
    v83 = v82;
    LODWORD(v147) = v10;
    v148 = v11;
    if (!v10)
    {
      goto LABEL_72;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v82);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_85;
        }

LABEL_72:
        LOBYTE(v150) = 0;
        *&v154 = 0;
        LOBYTE(v152) = 0;
        v153 = 0;
        if (!__CFStringIsCF())
        {
          v85 = v83;
          String.init(_nativeStorage:)();
          if (!v86 && (*&v154 = [(__CFString *)v85 length], v154))
          {
            String.init(_cocoaString:)();
          }

          else
          {
          }

LABEL_85:
          v90 = POSIXErrorCode.rawValue.getter();
          v91 = objc_allocWithZone(NSError);
          v10 = String._bridgeToObjectiveCImpl()();

          v73 = [v91 initWithDomain:v10 code:v90 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v92 = [v73 domain];
          v149 = v4;
          v146 = a2;
          if (!v92)
          {
LABEL_95:
            v97 = 0;
            v99 = 0xE000000000000000;
            goto LABEL_106;
          }

          v93 = v92;
          LODWORD(v10) = _objc_isTaggedPointer(v92);
          v94 = v93;
          v95 = v94;
          if ((v10 & 1) == 0)
          {
            goto LABEL_91;
          }

          v96 = _objc_getTaggedPointerTag(v94);
          if (v96)
          {
            if (v96 != 22)
            {
              if (v96 == 2)
              {
                v10 = &v143;
                MEMORY[0x1EEE9AC00](v96);
                v97 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v99 = v98;
                v149 = v4;

LABEL_106:
                v106 = v83;
                v107 = v106;
                if (!v147)
                {
                  goto LABEL_111;
                }

                v108 = _objc_getTaggedPointerTag(v106);
                if (!v108)
                {
                  goto LABEL_124;
                }

                if (v108 != 22)
                {
                  if (v108 == 2)
                  {
                    v109 = v97;
                    MEMORY[0x1EEE9AC00](v108);
                    v110 = v149;
                    v111 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v113 = v112;
                    v149 = v110;

LABEL_118:
                    v97 = v109;
LABEL_120:
                    a2 = v146;
                    goto LABEL_143;
                  }

LABEL_111:
                  LOBYTE(v150) = 0;
                  *&v154 = 0;
                  LOBYTE(v152) = 0;
                  v153 = 0;
                  IsCF = __CFStringIsCF();
                  if (IsCF)
                  {
                    if (!v154)
                    {

                      v111 = 0;
                      v113 = 0xE000000000000000;
                      goto LABEL_120;
                    }

                    a2 = v146;
                    if (v153 == 1)
                    {
                      if (v150)
                      {
                        lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                      }

                      else
                      {
                        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                      }

                      v121 = String.init<A>(_immortalCocoaString:count:encoding:)();
                      goto LABEL_142;
                    }

                    if (v152)
                    {
                      v147 = v97;
                      if (v150 != 1)
                      {
                        IsCF = [(__CFString *)v107 lengthOfBytesUsingEncoding:4];
                      }

                      MEMORY[0x1EEE9AC00](IsCF);
                      v123 = v149;
                      v124 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                      v113 = v125;
                      v149 = v123;
                      v126 = HIBYTE(v125) & 0xF;
                      if ((v125 & 0x2000000000000000) == 0)
                      {
                        v126 = v124 & 0xFFFFFFFFFFFFLL;
                      }

                      if (v126)
                      {
                        v111 = v124;

                        v97 = v147;
                        goto LABEL_143;
                      }

                      v97 = v147;
                    }
                  }

                  else
                  {
                    v109 = v97;
                    v115 = v107;
                    v116 = String.init(_nativeStorage:)();
                    if (v117)
                    {
                      v111 = v116;
                      v113 = v117;

                      goto LABEL_118;
                    }

                    *&v154 = [(__CFString *)v115 length];
                    if (!v154)
                    {

                      v111 = 0;
                      v113 = 0xE000000000000000;
                      goto LABEL_118;
                    }

                    v97 = v109;
                    a2 = v146;
                  }

                  v121 = String.init(_cocoaString:)();
LABEL_142:
                  v111 = v121;
                  v113 = v122;
LABEL_143:
                  if (v97 == v111 && v99 == v113)
                  {

                    goto LABEL_147;
                  }

                  v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v127)
                  {
LABEL_147:

                    if (_foundation_swift_url_feature_enabled())
                    {

                      v128 = specialized String.withFileSystemRepresentation<A>(_:)(a2, a3, a2, a3);
                      v130 = v129;

                      LOBYTE(v150) = 3;
                      type metadata accessor for _SwiftURL();
                      v154 = 0uLL;
                      swift_allocObject();
                      _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v128, v130, 0, &v150, &v154);
                      v131 = _SwiftURL.convertingFileReference()();
                      v133 = v132;
                    }

                    else
                    {
                      v134 = (specialized BidirectionalCollection.last.getter(a2, a3) & 0x1FF) == 47;
                      objc_allocWithZone(type metadata accessor for _BridgedURL());

                      v135 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a2, a3, v134);
                      if (!v135)
                      {

                        v137 = String._bridgeToObjectiveCImpl()();
                        if (v73)
                        {
                          goto LABEL_153;
                        }

                        goto LABEL_156;
                      }

                      v131 = _BridgedURL.convertingFileReference()();
                      v133 = v136;
                    }

                    v137 = String._bridgeToObjectiveCImpl()();
                    if (v131)
                    {
                      v138 = swift_getObjectType();
                      v135 = (*(v133 + 432))(v138, v133);
                      swift_unknownObjectRelease();
                      if (v73)
                      {
LABEL_153:
                        *&v154 = v73;
                        lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                        v73 = v73;
                        v139 = _getErrorEmbeddedNSError<A>(_:)();

                        if (v139)
                        {
                        }

                        else
                        {
                          swift_allocError();
                          *v141 = v73;
                        }

                        v140 = _swift_stdlib_bridgeErrorToNSError();
                        goto LABEL_159;
                      }
                    }

                    else
                    {
                      v135 = 0;
                      if (v73)
                      {
                        goto LABEL_153;
                      }
                    }

LABEL_156:
                    v140 = 0;
LABEL_159:
                    [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                    swift_unknownObjectRelease();

                    return swift_willThrow();
                  }

                  goto LABEL_175;
                }

                v118 = [(__CFString *)v107 UTF8String];
                if (v118)
                {
                  v119 = String.init(utf8String:)(v118);
                  a2 = v146;
                  if (v120)
                  {
                    goto LABEL_125;
                  }

                  __break(1u);
LABEL_124:
                  v152 = 0;
                  _CFIndirectTaggedPointerStringGetContents();
                  v119 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  a2 = v146;
                  if (!v120)
                  {
                    [(__CFString *)v107 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    v111 = v150;
                    v113 = v151;
                    goto LABEL_143;
                  }

LABEL_125:
                  v111 = v119;
                  v113 = v120;

                  goto LABEL_143;
                }

                goto LABEL_179;
              }

LABEL_91:
              LOBYTE(v150) = 0;
              *&v154 = 0;
              LOBYTE(v152) = 0;
              v153 = 0;
              if (__CFStringIsCF())
              {
                LODWORD(v10) = v154;

                goto LABEL_95;
              }

              v10 = v95;
              v100 = String.init(_nativeStorage:)();
              if (v101)
              {
                v97 = v100;
                v99 = v101;

                goto LABEL_106;
              }

              *&v154 = [v10 length];
              if (!v154)
              {

                goto LABEL_95;
              }

              v97 = String.init(_cocoaString:)();
              v99 = v105;
LABEL_105:

              goto LABEL_106;
            }

            v102 = [v95 UTF8String];
            if (!v102)
            {
LABEL_180:
              __break(1u);
              goto LABEL_181;
            }

            v103 = String.init(utf8String:)(v102);
            if (v104)
            {
LABEL_100:
              v97 = v103;
              v99 = v104;

              goto LABEL_105;
            }

            __break(1u);
          }

          v152 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v103 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v104)
          {
            LODWORD(v10) = [v95 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v97 = v150;
            v99 = v151;
            goto LABEL_105;
          }

          goto LABEL_100;
        }

LABEL_83:

        goto LABEL_85;
      }

      v87 = [(__CFString *)v83 UTF8String];
      if (!v87)
      {
        __break(1u);
LABEL_179:
        __break(1u);
        goto LABEL_180;
      }

      String.init(utf8String:)(v87);
      if (v88)
      {
        goto LABEL_83;
      }

      __break(1u);
    }

    v152 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v89)
    {
      [(__CFString *)v83 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_85;
    }

    goto LABEL_83;
  }

LABEL_181:
  *&v154 = 0;
  *(&v154 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(22);

  *&v154 = 0xD000000000000014;
  *(&v154 + 1) = 0x80000001814813E0;
  LODWORD(v150) = v10;
  v142 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v142);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Int __swiftcall _NSSwiftCalendar.ordinality(of:in:for:)(NSCalendarUnit of, NSCalendarUnit in, Foundation::Date a3)
{
  v6 = *v3;
  _fromNSCalendarUnit(_:)(of, &v22);
  v7 = v22;
  if (v22 == 19)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  _fromNSCalendarUnit(_:)(in, &v21);
  v8 = v21;
  if (v21 == 19)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = *(v4 + OBJC_IVAR____NSSwiftCalendar__lock);
  os_unfair_lock_lock((v10 + 32));
  v11 = *(v10 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v10 + 32));
  v20 = v7;
  v19 = v8;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v12 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v12 = v6;
  }

  if (*&static Date.validCalendarRange >= v12)
  {
    v13 = *&static Date.validCalendarRange;
  }

  else
  {
    v13 = v12;
  }

  ObjectType = swift_getObjectType();
  v18 = v13;
  v15 = (*(v11 + 152))(&v20, &v19, &v18, ObjectType, v11);
  v17 = v16;
  swift_unknownObjectRelease();
  if (v17)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    return v15;
  }
}

uint64_t _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(uint64_t a1, _BYTE *a2, double *a3, double *a4, double a5)
{
  v13 = a1;
  result = 0;
  LODWORD(v13) = *v13;
  LODWORD(v14) = *a2;
  v15 = *a3;
  if (v14 > 6)
  {
    goto LABEL_11;
  }

  if (*a2 <= 2u)
  {
    v7 = v294;
    v9 = v290;
    if (!*a2)
    {
      result = 0;
      if (v13 > 6)
      {
        goto LABEL_143;
      }

      if (v13 <= 3)
      {
        if (v13 == 1)
        {
LABEL_407:
          LOBYTE(__src[0]) = v13;
          *__dst = v15;
          return _CalendarGregorian.dateComponent(_:from:)(__src, *&a5);
        }

        v41 = v6;
        if (v13 != 2)
        {
          if (v13 != 3)
          {
            return result;
          }

          LOBYTE(v300[0]) = 0;
          *__src = v15;
          *(&result - 1) = _CalendarGregorian.start(of:at:)(v300, *&a5);
          if ((BYTE8(__dst[0]) & 1) == 0)
          {
            v42 = floor((v15 - *__dst) / 86400.0);
            if ((*&v42 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
LABEL_611:
              __break(1u);
              goto LABEL_612;
            }

            if (v42 <= -9.22337204e18)
            {
LABEL_613:
              __break(1u);
              goto LABEL_614;
            }

            if (v42 >= 9.22337204e18)
            {
LABEL_615:
              __break(1u);
              goto LABEL_616;
            }

            result = v42 + 1;
            if (__OFADD__(v42, 1))
            {
LABEL_617:
              __break(1u);
LABEL_618:
              __break(1u);
              goto LABEL_619;
            }

            return result;
          }

          return 0;
        }

        goto LABEL_488;
      }

      goto LABEL_282;
    }

    if (v14 == 1)
    {
      result = 0;
      if (v13 <= 6)
      {
        if (v13 <= 3)
        {
          v141 = v6;
          if (v13 == 2)
          {
            LOBYTE(__src[0]) = 2;
            *__dst = v15;
            return _CalendarGregorian.dateComponent(_:from:)(__src, *&a5);
          }

          if (v13 != 3)
          {
            return result;
          }

          goto LABEL_344;
        }

        if (v13 == 4)
        {
LABEL_430:
          LOBYTE(v300[0]) = 3;
          LOBYTE(v290[0]) = 1;
          *__src = v15;
          result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
          if (v6)
          {
            goto LABEL_532;
          }

          if (v207)
          {
            return result;
          }

          a4 = 0;
          LOBYTE(__src[0]) = 4;
          *__dst = v15;
          v209 = result;
          result = _CalendarGregorian.dateComponent(_:from:)(__src, v208);
          v210 = v209 - 1;
          if (__OFSUB__(v209, 1))
          {
LABEL_648:
            __break(1u);
            goto LABEL_649;
          }

          v211 = (v210 * 24) >> 64;
          v212 = 24 * v210;
          if (v211 != v212 >> 63)
          {
LABEL_656:
            __break(1u);
            goto LABEL_657;
          }

          v17 = __OFADD__(v212, result);
          v213 = v212 + result;
          if (v17)
          {
LABEL_664:
            __break(1u);
            goto LABEL_665;
          }

          result = v213 + 1;
          if (!__OFADD__(v213, 1))
          {
            return result;
          }

          __break(1u);
          goto LABEL_438;
        }

        if (v13 == 5)
        {
          LOBYTE(v300[0]) = 4;
          LOBYTE(v290[0]) = 1;
          *__src = v15;
          result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
          if (v6)
          {
            goto LABEL_532;
          }

          if (v200)
          {
            return result;
          }

          LOBYTE(__src[0]) = 5;
          *__dst = v15;
          v202 = result;
          result = _CalendarGregorian.dateComponent(_:from:)(__src, v201);
          v203 = v202 - 1;
          if (__OFSUB__(v202, 1))
          {
LABEL_645:
            __break(1u);
            goto LABEL_646;
          }

          v204 = 60 * v203;
          if ((v203 * 60) >> 64 != (60 * v203) >> 63)
          {
LABEL_653:
            __break(1u);
            goto LABEL_654;
          }

          v13 = v204 + result;
          if (__OFADD__(v204, result))
          {
LABEL_661:
            __break(1u);
            goto LABEL_662;
          }

          result = v13 + 1;
          if (!__OFADD__(v13, 1))
          {
            return result;
          }

          __break(1u);
LABEL_418:
          LOBYTE(__src[0]) = v13;
          *__dst = v15;
          result = _CalendarGregorian.dateComponent(_:from:)(__src, *&a5);
          v187 = result - 1;
          if (__OFSUB__(result, 1))
          {
LABEL_577:
            __break(1u);
            goto LABEL_578;
          }

          if (v187 > 0xC)
          {
LABEL_580:
            __break(1u);
            goto LABEL_581;
          }

          v188 = &_s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKFTv5_r;
          return v188[v187 + 4];
        }

        LOBYTE(v300[0]) = 5;
        LOBYTE(v290[0]) = 1;
        *__src = v15;
        result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
        if (v6)
        {
          goto LABEL_532;
        }

        if (v108)
        {
          return result;
        }

        a4 = 0;
        LOBYTE(__src[0]) = 6;
        *__dst = v15;
        v110 = result;
        result = _CalendarGregorian.dateComponent(_:from:)(__src, v109);
        v111 = v110 - 1;
        if (__OFSUB__(v110, 1))
        {
LABEL_647:
          __break(1u);
          goto LABEL_648;
        }

        v112 = 60 * v111;
        if ((v111 * 60) >> 64 != (60 * v111) >> 63)
        {
LABEL_655:
          __break(1u);
          goto LABEL_656;
        }

        v13 = v112 + result;
        if (__OFADD__(v112, result))
        {
LABEL_663:
          __break(1u);
          goto LABEL_664;
        }

        result = v13 + 1;
        if (!__OFADD__(v13, 1))
        {
          return result;
        }

        __break(1u);
LABEL_214:
        if (v13 > 3)
        {
          if (v13 != 4)
          {
            if (v13 == 5)
            {
LABEL_438:
              LOBYTE(v300[0]) = 4;
              LOBYTE(v290[0]) = 9;
              *__src = v15;
              result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
              if (!v6)
              {
                if (v214)
                {
                  return result;
                }

                a4 = 0;
                LOBYTE(__src[0]) = 5;
                *__dst = v15;
                v7 = result;
                result = _CalendarGregorian.dateComponent(_:from:)(__src, v215);
                v216 = v7 - 1;
                if (__OFSUB__(v7, 1))
                {
LABEL_649:
                  __break(1u);
                  goto LABEL_650;
                }

                v217 = 60 * v216;
                if ((v216 * 60) >> 64 != (60 * v216) >> 63)
                {
LABEL_657:
                  __break(1u);
                  goto LABEL_658;
                }

                v218 = v217 + result;
                if (__OFADD__(v217, result))
                {
LABEL_665:
                  __break(1u);
                  goto LABEL_666;
                }

                result = v218 + 1;
                if (!__OFADD__(v218, 1))
                {
                  return result;
                }

                __break(1u);
                goto LABEL_446;
              }

              goto LABEL_532;
            }

            if (v13 != 6)
            {
              return result;
            }

            LOBYTE(v300[0]) = 5;
            LOBYTE(v290[0]) = 9;
            *__src = v15;
            result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
            if (v6)
            {
              goto LABEL_532;
            }

            if (v113)
            {
              return result;
            }

            a4 = 0;
            LOBYTE(__src[0]) = 6;
            *__dst = v15;
            v115 = result;
            result = _CalendarGregorian.dateComponent(_:from:)(__src, v114);
            v116 = v115 - 1;
            if (__OFSUB__(v115, 1))
            {
LABEL_651:
              __break(1u);
              goto LABEL_652;
            }

            v117 = 60 * v116;
            if ((v116 * 60) >> 64 != (60 * v116) >> 63)
            {
LABEL_659:
              __break(1u);
              goto LABEL_660;
            }

            v13 = v117 + result;
            if (__OFADD__(v117, result))
            {
LABEL_667:
              __break(1u);
              goto LABEL_668;
            }

            result = v13 + 1;
            if (!__OFADD__(v13, 1))
            {
              return result;
            }

            __break(1u);
            goto LABEL_226;
          }

          goto LABEL_464;
        }

        if (v13 != 2)
        {
          if (v13 != 3)
          {
            return result;
          }

LABEL_354:
          a4 = v6;
          LOBYTE(v300[0]) = 9;
          *__src = v15;
          *(&result - 1) = _CalendarGregorian.start(of:at:)(v300, *&a5);
          if (BYTE8(__dst[0]))
          {
            return 0;
          }

          v222 = floor((v15 - *__dst) / 86400.0);
          if ((*&v222 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_579:
            __break(1u);
            goto LABEL_580;
          }

          if (v222 <= -9.22337204e18)
          {
LABEL_582:
            __break(1u);
            goto LABEL_583;
          }

          if (v222 >= 9.22337204e18)
          {
LABEL_583:
            __break(1u);
            goto LABEL_584;
          }

          result = v222 + 1;
          if (!__OFADD__(v222, 1))
          {
            return result;
          }

          __break(1u);
LABEL_464:
          LOBYTE(v300[0]) = 3;
          LOBYTE(v290[0]) = 9;
          *__src = v15;
          v178 = v5;
          result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
          if (v6)
          {
            goto LABEL_532;
          }

          if (v223)
          {
            return result;
          }

          a4 = 0;
          LOBYTE(__src[0]) = 4;
          *__dst = v15;
          v177 = result;
          result = _CalendarGregorian.dateComponent(_:from:)(__src, v224);
          v225 = v177 - 1;
          if (__OFSUB__(v177, 1))
          {
LABEL_652:
            __break(1u);
            goto LABEL_653;
          }

          v226 = (v225 * 24) >> 64;
          v227 = 24 * v225;
          if (v226 != v227 >> 63)
          {
LABEL_660:
            __break(1u);
            goto LABEL_661;
          }

          v17 = __OFADD__(v227, result);
          v228 = v227 + result;
          if (v17)
          {
LABEL_668:
            __break(1u);
            goto LABEL_669;
          }

          result = v228 + 1;
          if (!__OFADD__(v228, 1))
          {
            return result;
          }

          __break(1u);
LABEL_472:
          v229 = *&__dst[0];
          LOBYTE(__src[0]) = 7;
          *__dst = v15;
          v230 = _CalendarGregorian.dateComponent(_:from:)(__src, v179);
          LOBYTE(v300[0]) = 11;
          LOBYTE(v290[0]) = 1;
          *__src = v15;
          v6 = v177;
          result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
          if (v177)
          {
            goto LABEL_532;
          }

          if (v231)
          {
            return result;
          }

          v233 = result;
          *&v300[0] = v229;
          _s10Foundation18_CalendarGregorianC26dateAfterDateWithTargetDoWyAA0F0V_Si9daysAddedtAF_SitAA0cB5ErrorOYKF(__src, v300, v230, __dst, v232);
          LOBYTE(v300[0]) = 11;
          LOBYTE(v290[0]) = 1;
          v5 = v178;
          result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
          if (v234)
          {
            return result;
          }

          v235 = v233 - result;
          if (__OFSUB__(v233, result))
          {
LABEL_695:
            __break(1u);
            goto LABEL_696;
          }

          result = v235 + 1;
          if (!__OFADD__(v235, 1))
          {
            return result;
          }

          __break(1u);
LABEL_479:
          LOBYTE(v300[0]) = 3;
          LOBYTE(v290[0]) = 0;
          *__src = v15;
          result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
          if (v6)
          {
            goto LABEL_532;
          }

          if (v236)
          {
            return result;
          }

          v41 = result - 1;
          if (__OFSUB__(result, 1))
          {
LABEL_671:
            __break(1u);
            goto LABEL_672;
          }

          if (v41 > 0x555555555555554)
          {
            return 0;
          }

          a4 = 0;
          LOBYTE(__src[0]) = 4;
          *__dst = v15;
          result = _CalendarGregorian.dateComponent(_:from:)(__src, v237);
          v238 = 24 * v41;
          if ((v41 * 24) >> 64 != (24 * v41) >> 63)
          {
LABEL_683:
            __break(1u);
            goto LABEL_684;
          }

          v17 = __OFADD__(v238, result);
          v239 = v238 + result;
          if (v17)
          {
LABEL_686:
            __break(1u);
            goto LABEL_687;
          }

          result = v239 + 1;
          if (!__OFADD__(v239, 1))
          {
            return result;
          }

          __break(1u);
LABEL_488:
          LOBYTE(v300[0]) = 0;
          *__src = v15;
          *(&result - 1) = _CalendarGregorian.start(of:at:)(v300, *&a5);
          if ((BYTE8(__dst[0]) & 1) == 0)
          {
            v243 = *&__dst[0];
            v244 = floor((v15 - *__dst) / 86400.0 * 0.03125 * 0.96875);
            if ((*&v244 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
LABEL_612:
              __break(1u);
              goto LABEL_613;
            }

            if (v244 <= -9.22337204e18)
            {
LABEL_614:
              __break(1u);
              goto LABEL_615;
            }

            if (v244 >= 9.22337204e18)
            {
LABEL_616:
              __break(1u);
              goto LABEL_617;
            }

            v245 = v41;
            if (v244 <= 10)
            {
              v246 = 0;
            }

            else
            {
              v246 = v244 - 10;
            }

            v247 = *__dst;
            while (1)
            {
              v248 = v246 + 1;
              if (__OFADD__(v246, 1))
              {
                goto LABEL_555;
              }

              LOBYTE(v292[0]) = 2;
              *&v290[0] = v243;
              __src[0] = *(v5 + 112);
              swift_unknownObjectRetain();
              _s10Foundation18_CalendarGregorianC3add_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0hI0VtAA0cB5ErrorOYKF(v292, v290, v246 + 1, __src, __dst, v300, v249, v250);
              if (v245)
              {
                result = swift_unknownObjectRelease();
                goto LABEL_532;
              }

              swift_unknownObjectRelease();
              v251 = *&v300[0];
              if (v247 >= *v300)
              {
LABEL_535:
                *a4 = v251;
                a4[1] = v247;
                a4[2] = 0.0;
                a4[3] = 0.0;
                *(a4 + 32) = 0x80;
                *&__dst[0] = v251;
                *(__dst + 1) = v247;
LABEL_540:
                __dst[1] = 0uLL;
                LOBYTE(__dst[2]) = 0x80;
                lazy protocol witness table accessor for type GregorianCalendarError and conformance GregorianCalendarError();
                return swift_willThrowTypedImpl();
              }

              ++v246;
              v247 = *v300;
              v245 = 0;
              result = v248;
              if (v15 < *v300)
              {
                return result;
              }
            }
          }

          return 0;
        }

        goto LABEL_418;
      }

      if (v13 > 10)
      {
LABEL_270:
        if (v13 == 11)
        {
LABEL_446:
          *(v7 + 10) = 14;
          *v290 = v15;
          __src[0] = *(v5 + 112);
          swift_unknownObjectRetain();
          _CalendarGregorian.dateComponents(_:from:in:)(v300, v290, __src, __dst);
          result = swift_unknownObjectRelease();
          if (BYTE8(__dst[3]))
          {
LABEL_701:
            __break(1u);
            goto LABEL_702;
          }

          if (BYTE8(__dst[4]))
          {
LABEL_702:
            __break(1u);
            goto LABEL_703;
          }

          if (BYTE8(__dst[5]))
          {
LABEL_703:
            __break(1u);
            goto LABEL_704;
          }

          v219 = _s10Foundation18_CalendarGregorianC9dayOfYear04fromF05month0D0S2i_S2itAA0cB5ErrorOYKF(*&__dst[3], *&__dst[4], *&__dst[5], v302);
          if (v6)
          {
            result = outlined destroy of DateComponents(__dst);
            v174 = v303;
            v175 = v302[0];
            v176 = v302[1];
LABEL_533:
            *a4 = v175;
            *(a4 + 1) = v176;
            *(a4 + 32) = v174;
            return result;
          }

          v252 = v219;
          v296 = __dst[0];
          v297 = __dst[1];
          v298 = __dst[2];
          v299 = __dst[3];
          *(v9 + 128) = *(&__dst[4] + 9);
          *(v294 + 3) = HIDWORD(__dst[4]);
          v253 = *(&__dst[5] + 9);
          v254 = *(&__dst[6] + 9);
          v255 = *(&__dst[8] + 9);
          v256 = *(&__dst[9] + 9);
          v9[21] = *(&__dst[7] + 9);
          v9[22] = v255;
          v9[19] = v253;
          v9[20] = v254;
          v257 = *(&__dst[10] + 9);
          v258 = *(&__dst[12] + 9);
          v259 = *(&__dst[13] + 9);
          v9[25] = *(&__dst[11] + 9);
          v9[26] = v258;
          v9[23] = v256;
          v9[24] = v257;
          v260 = *(&__dst[16] + 9);
          v261 = *(&__dst[14] + 9);
          v262 = *(&__dst[15] + 9);
          *(v9 + 248) = *(&__dst[17] + 9);
          v9[29] = v262;
          v9[30] = v260;
          v9[27] = v259;
          v9[28] = v261;
          v293 = 0;
          v295 = 0;
          v300[0] = __dst[0];
          v300[1] = __dst[1];
          v300[2] = __dst[2];
          v300[3] = __dst[3];
          *&v300[4] = 1;
          BYTE8(v300[4]) = 0;
          *(&v300[4] + 9) = *(&__dst[4] + 9);
          HIDWORD(v300[4]) = HIDWORD(__dst[4]);
          *&v300[5] = 1;
          BYTE8(v300[5]) = 0;
          *(&v300[16] + 9) = *(&__dst[16] + 9);
          *(&v300[17] + 9) = *(&__dst[17] + 9);
          *(&v300[15] + 9) = *(&__dst[15] + 9);
          *(&v300[14] + 9) = *(&__dst[14] + 9);
          *(&v300[5] + 9) = *(&__dst[5] + 9);
          *(&v300[9] + 9) = *(&__dst[9] + 9);
          *(&v300[8] + 9) = *(&__dst[8] + 9);
          *(&v300[7] + 9) = *(&__dst[7] + 9);
          *(&v300[6] + 9) = *(&__dst[6] + 9);
          *(&v300[13] + 9) = *(&__dst[13] + 9);
          *(&v300[12] + 9) = *(&__dst[12] + 9);
          *(&v300[11] + 9) = *(&__dst[11] + 9);
          *(&v300[10] + 9) = *(&__dst[10] + 9);
          memcpy(v290, v300, 0x11BuLL);
          outlined init with copy of DateComponents(__dst, __src);
          outlined init with copy of DateComponents(v300, __src);
          _CalendarGregorian.date(from:)(v290, v291);
          memcpy(__src, v290, 0x11BuLL);
          result = outlined destroy of DateComponents(__src);
          if (v291[8])
          {
LABEL_704:
            __break(1u);
            return result;
          }

          *&v263._time = *(v9 + 36);
          v289 = 7;
          *&v290[0] = v263;
          result = _CalendarGregorian.dateComponent(_:from:)(&v289, v263);
          v264 = v252 + 7;
          if (__OFADD__(v252, 7))
          {
            goto LABEL_618;
          }

          v265 = result;
          result = _CalendarGregorian.minimumDaysInFirstWeek.getter();
          v17 = __OFSUB__(v264, result);
          v266 = v264 - result;
          if (v17)
          {
LABEL_619:
            __break(1u);
            goto LABEL_620;
          }

          result = _CalendarGregorian.minimumDaysInFirstWeek.getter();
          v267 = v265 + result;
          if (__OFADD__(v265, result))
          {
LABEL_620:
            __break(1u);
            goto LABEL_621;
          }

          v268 = _CalendarGregorian.firstWeekday.getter();
          outlined destroy of DateComponents(__dst);
          v290[0] = v296;
          v290[1] = v297;
          v290[2] = v298;
          v290[3] = v299;
          v269 = v9[29];
          *(&v290[16] + 9) = v9[30];
          v270 = v9[27];
          *(v9 + 233) = v9[28];
          *(v9 + 249) = v269;
          v271 = v9[23];
          *(v9 + 169) = v9[24];
          v272 = v9[26];
          *(v9 + 185) = v9[25];
          *(v9 + 201) = v272;
          *(v9 + 217) = v270;
          v273 = v9[19];
          *(&v290[6] + 9) = v9[20];
          v274 = v9[22];
          *(&v290[7] + 9) = v9[21];
          *(v9 + 137) = v274;
          *(v9 + 153) = v271;
          BYTE8(v290[4]) = 0;
          *(&v290[4] + 9) = v294[0];
          *&v290[4] = 1;
          HIDWORD(v290[4]) = *(v294 + 3);
          *&v290[5] = 1;
          BYTE8(v290[5]) = 0;
          *(&v290[17] + 9) = *(v9 + 248);
          *(&v290[5] + 9) = v273;
          result = outlined destroy of DateComponents(v290);
          v275 = v267 - v268;
          if (__OFSUB__(v267, v268))
          {
LABEL_621:
            __break(1u);
            goto LABEL_622;
          }

          if (__OFADD__(v275, 6))
          {
LABEL_622:
            __break(1u);
            goto LABEL_623;
          }

          v276 = (v275 + 6) % 7;
          v17 = __OFADD__(v266, v276);
          v277 = v266 + v276;
          if (v17)
          {
LABEL_623:
            __break(1u);
            goto LABEL_624;
          }

          v172 = (v277 * 0x4924924924924925) >> 64;
          return (v172 >> 1) + (v172 >> 63);
        }

        if (v13 != 13)
        {
          v141 = v6;
          if (v13 != 18)
          {
            return result;
          }

LABEL_344:
          *&v300[0] = 14;
          *v290 = v15;
          __src[0] = *(v5 + 112);
          swift_unknownObjectRetain();
          _CalendarGregorian.dateComponents(_:from:in:)(v300, v290, __src, __dst);
          result = swift_unknownObjectRelease();
          if (BYTE8(__dst[3]))
          {
LABEL_697:
            __break(1u);
            goto LABEL_698;
          }

          if (BYTE8(__dst[4]))
          {
LABEL_698:
            __break(1u);
LABEL_699:
            __break(1u);
LABEL_700:
            __break(1u);
            goto LABEL_701;
          }

          if (BYTE8(__dst[5]))
          {
            goto LABEL_699;
          }

          v173 = _s10Foundation18_CalendarGregorianC9dayOfYear04fromF05month0D0S2i_S2itAA0cB5ErrorOYKF(*&__dst[3], *&__dst[4], *&__dst[5], __src);
          if (!v141)
          {
            v242 = v173;
            outlined destroy of DateComponents(__dst);
            return v242;
          }

          result = outlined destroy of DateComponents(__dst);
          v174 = __src[2];
          v175 = __src[0];
          v176 = __src[1];
          goto LABEL_533;
        }

        LOBYTE(v300[0]) = 6;
        LOBYTE(v290[0]) = 1;
        *__src = v15;
        result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
        if (v6)
        {
LABEL_532:
          v174 = __dst[2];
          v175 = __dst[0];
          v176 = __dst[1];
          goto LABEL_533;
        }

        if (v205)
        {
          return result;
        }

        v206 = (v15 - floor(v15) + result + -1.0) * 1000000000.0;
        if ((*&v206 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_646:
          __break(1u);
          goto LABEL_647;
        }

        if (v206 <= -9.22337204e18)
        {
LABEL_654:
          __break(1u);
          goto LABEL_655;
        }

        if (v206 >= 9.22337204e18)
        {
LABEL_662:
          __break(1u);
          goto LABEL_663;
        }

        result = v206 + 1;
        if (!__OFADD__(v206, 1))
        {
          return result;
        }

        __break(1u);
        goto LABEL_430;
      }

      v7 = v6;
      if ((v13 - 7) < 2)
      {
        LOBYTE(v300[0]) = 1;
        *__src = v15;
        _CalendarGregorian.start(of:at:)(v300, *&a5);
        if (BYTE8(__dst[0]))
        {
          return 0;
        }

        v43 = *&__dst[0];
        LOBYTE(v300[0]) = 11;
        LOBYTE(v290[0]) = 1;
        *__src = v15;
        result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
        if (v6)
        {
          goto LABEL_532;
        }

        if (v44)
        {
          return result;
        }

        v46 = result;
        LOBYTE(__src[0]) = 7;
        *__dst = v15;
        v47 = _CalendarGregorian.dateComponent(_:from:)(__src, v45);
        *&v300[0] = v43;
        _s10Foundation18_CalendarGregorianC26dateAfterDateWithTargetDoWyAA0F0V_Si9daysAddedtAF_SitAA0cB5ErrorOYKF(__src, v300, v47, __dst, v48);
        LOBYTE(v300[0]) = 11;
        LOBYTE(v290[0]) = 1;
        result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
        if (v49)
        {
          return result;
        }

        v13 = v46 - result;
        if (__OFSUB__(v46, result))
        {
LABEL_694:
          __break(1u);
          goto LABEL_695;
        }

        result = v13 + 1;
        if (!__OFADD__(v13, 1))
        {
          return result;
        }

        __break(1u);
        goto LABEL_114;
      }

LABEL_376:
      if (v13 != 9)
      {
        return result;
      }

      LOBYTE(__src[0]) = 2;
      *__dst = v15;
      result = _CalendarGregorian.dateComponent(_:from:)(__src, *&a5);
      v187 = result - 1;
      if (__OFSUB__(result, 1))
      {
LABEL_578:
        __break(1u);
        goto LABEL_579;
      }

      if (v187 > 0xC)
      {
LABEL_581:
        __break(1u);
        goto LABEL_582;
      }

      v188 = &_s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKFTv4_r;
      return v188[v187 + 4];
    }

    result = 0;
    if (v13 > 6)
    {
      if ((v13 - 7) < 2)
      {
        goto LABEL_338;
      }

      if (v13 != 13)
      {
        if (v13 != 10)
        {
          return result;
        }

        goto LABEL_359;
      }

LABEL_368:
      LOBYTE(v300[0]) = 6;
      LOBYTE(v290[0]) = 2;
      *__src = v15;
      result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
      if (v6)
      {
        goto LABEL_532;
      }

      if (v186)
      {
        return result;
      }

      a5 = (v15 - floor(v15) + result + -1.0) * 1000000000.0;
      if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_633:
        __break(1u);
        goto LABEL_634;
      }

      if (a5 <= -9.22337204e18)
      {
LABEL_637:
        __break(1u);
        goto LABEL_638;
      }

      if (a5 >= 9.22337204e18)
      {
LABEL_641:
        __break(1u);
        goto LABEL_642;
      }

      v13 = a5;
      result = a5 + 1;
      if (!__OFADD__(a5, 1))
      {
        return result;
      }

      __break(1u);
      goto LABEL_376;
    }

    if (v13 <= 4)
    {
      if (v13 == 3)
      {
        goto LABEL_359;
      }

      if (v13 != 4)
      {
        return result;
      }

      LOBYTE(v300[0]) = 3;
      LOBYTE(v290[0]) = 2;
      *__src = v15;
      result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
      if (v6)
      {
        goto LABEL_532;
      }

      if (v18)
      {
        return result;
      }

      a4 = 0;
      LOBYTE(__src[0]) = 4;
      *__dst = v15;
      v20 = result;
      result = _CalendarGregorian.dateComponent(_:from:)(__src, v19);
      v21 = v20 - 1;
      if (__OFSUB__(v20, 1))
      {
LABEL_631:
        __break(1u);
        goto LABEL_632;
      }

      v14 = (v21 * 24) >> 64;
      v22 = 24 * v21;
      if (v14 != v22 >> 63)
      {
LABEL_635:
        __break(1u);
        goto LABEL_636;
      }

      v17 = __OFADD__(v22, result);
      v13 = v22 + result;
      if (v17)
      {
LABEL_639:
        __break(1u);
        goto LABEL_640;
      }

      result = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        return result;
      }

      __break(1u);
      goto LABEL_30;
    }

LABEL_308:
    if (v13 != 5)
    {
      if (v13 != 6)
      {
        return result;
      }

      LOBYTE(v300[0]) = 5;
      LOBYTE(v290[0]) = 2;
      *__src = v15;
      result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
      if (v6)
      {
        goto LABEL_532;
      }

      if (v160)
      {
        return result;
      }

      a4 = 0;
      LOBYTE(__src[0]) = 6;
      *__dst = v15;
      v162 = result;
      result = _CalendarGregorian.dateComponent(_:from:)(__src, v161);
      v163 = v162 - 1;
      if (__OFSUB__(v162, 1))
      {
LABEL_632:
        __break(1u);
        goto LABEL_633;
      }

      v164 = 60 * v163;
      if ((v163 * 60) >> 64 != (60 * v163) >> 63)
      {
LABEL_636:
        __break(1u);
        goto LABEL_637;
      }

      v13 = v164 + result;
      if (__OFADD__(v164, result))
      {
LABEL_640:
        __break(1u);
        goto LABEL_641;
      }

      result = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        return result;
      }

      __break(1u);
      goto LABEL_318;
    }

    LOBYTE(v300[0]) = 4;
    LOBYTE(v290[0]) = 2;
    *__src = v15;
    result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
    if (v6)
    {
      goto LABEL_532;
    }

    if (v180)
    {
      return result;
    }

    a4 = 0;
    LOBYTE(__src[0]) = 5;
    *__dst = v15;
    v182 = result;
    result = _CalendarGregorian.dateComponent(_:from:)(__src, v181);
    v183 = v182 - 1;
    if (__OFSUB__(v182, 1))
    {
LABEL_630:
      __break(1u);
      goto LABEL_631;
    }

    v184 = 60 * v183;
    if ((v183 * 60) >> 64 != (60 * v183) >> 63)
    {
LABEL_634:
      __break(1u);
      goto LABEL_635;
    }

    v185 = v184 + result;
    if (__OFADD__(v184, result))
    {
LABEL_638:
      __break(1u);
      goto LABEL_639;
    }

    result = v185 + 1;
    if (!__OFADD__(v185, 1))
    {
      return result;
    }

    __break(1u);
    goto LABEL_368;
  }

  if (*a2 > 4u)
  {
    goto LABEL_57;
  }

  if (v14 == 3)
  {
    goto LABEL_46;
  }

  if (v13 == 13)
  {
    LOBYTE(v300[0]) = 6;
    LOBYTE(v290[0]) = 4;
    *__src = v15;
    result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
    if (v6)
    {
      goto LABEL_532;
    }

    if (v158)
    {
      return result;
    }

    v159 = (v15 - floor(v15) + result + -1.0) * 1000000000.0;
    if ((*&v159 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
LABEL_605:
      __break(1u);
      goto LABEL_606;
    }

    if (v159 <= -9.22337204e18)
    {
LABEL_607:
      __break(1u);
      goto LABEL_608;
    }

    if (v159 >= 9.22337204e18)
    {
LABEL_609:
      __break(1u);
      goto LABEL_610;
    }

    v13 = v159;
    result = v159 + 1;
    if (!__OFADD__(v159, 1))
    {
      return result;
    }

    __break(1u);
    goto LABEL_308;
  }

  if (v13 == 6)
  {
    LOBYTE(v300[0]) = 5;
    LOBYTE(v290[0]) = 4;
    *__src = v15;
    result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
    if (v6)
    {
      goto LABEL_532;
    }

    if (v142)
    {
      return result;
    }

    a4 = 0;
    LOBYTE(__src[0]) = 6;
    *__dst = v15;
    v144 = result;
    result = _CalendarGregorian.dateComponent(_:from:)(__src, v143);
    v145 = v144 - 1;
    if (__OFSUB__(v144, 1))
    {
LABEL_604:
      __break(1u);
      goto LABEL_605;
    }

    v146 = 60 * v145;
    if ((v145 * 60) >> 64 != (60 * v145) >> 63)
    {
LABEL_606:
      __break(1u);
      goto LABEL_607;
    }

    v13 = v146 + result;
    if (__OFADD__(v146, result))
    {
LABEL_608:
      __break(1u);
      goto LABEL_609;
    }

    result = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      return result;
    }

    __break(1u);
LABEL_282:
    if (v13 != 4)
    {
      if (v13 == 5)
      {
        LOBYTE(v300[0]) = 4;
        LOBYTE(v290[0]) = 0;
        *__src = v15;
        result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
        if (v6)
        {
          goto LABEL_532;
        }

        if (v240)
        {
          return result;
        }

        v283 = result - 1;
        if (__OFSUB__(result, 1))
        {
LABEL_672:
          __break(1u);
          goto LABEL_673;
        }

        if (v283 <= 0x222222222222221)
        {
          a4 = 0;
          LOBYTE(__src[0]) = 5;
          *__dst = v15;
          result = _CalendarGregorian.dateComponent(_:from:)(__src, v241);
          v284 = 60 * v283;
          if ((v283 * 60) >> 64 != (60 * v283) >> 63)
          {
LABEL_684:
            __break(1u);
            goto LABEL_685;
          }

          v17 = __OFADD__(v284, result);
          v285 = v284 + result;
          if (v17)
          {
LABEL_687:
            __break(1u);
LABEL_688:
            __break(1u);
            goto LABEL_689;
          }

          result = v285 + 1;
          if (!__OFADD__(v285, 1))
          {
            return result;
          }

          __break(1u);
          goto LABEL_546;
        }
      }

      else
      {
        if (v13 != 6)
        {
          return result;
        }

        LOBYTE(v300[0]) = 5;
        LOBYTE(v290[0]) = 0;
        *__src = v15;
        v7 = v5;
        result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
        if (v6)
        {
          goto LABEL_532;
        }

        if (v147)
        {
          return result;
        }

        v149 = result - 1;
        if (__OFSUB__(result, 1))
        {
LABEL_670:
          __break(1u);
          goto LABEL_671;
        }

        if (v149 <= 0x222222222222221)
        {
          a4 = 0;
          LOBYTE(__src[0]) = 6;
          *__dst = v15;
          result = _CalendarGregorian.dateComponent(_:from:)(__src, v148);
          v150 = 60 * v149;
          if ((v149 * 60) >> 64 != (60 * v149) >> 63)
          {
LABEL_682:
            __break(1u);
            goto LABEL_683;
          }

          v17 = __OFADD__(v150, result);
          v13 = v150 + result;
          if (v17)
          {
LABEL_685:
            __break(1u);
            goto LABEL_686;
          }

          result = v13 + 1;
          if (!__OFADD__(v13, 1))
          {
            return result;
          }

          __break(1u);
LABEL_294:
          if ((v13 - 10) >= 2)
          {
LABEL_406:
            if (v13 != 12)
            {
              return result;
            }

            goto LABEL_407;
          }

          LOBYTE(v300[0]) = 0;
          *__src = v15;
          v8 = v5;
          _CalendarGregorian.start(of:at:)(v300, *&a5);
          if (BYTE8(__dst[0]))
          {
            return 0;
          }

          v151 = *__dst;
          *(v7 + 10) = *&__dst[0];
          v152 = _CalendarGregorian.firstWeekday.getter();
          result = _s10Foundation18_CalendarGregorianC26dateAfterDateWithTargetDoWyAA0F0V_Si9daysAddedtAF_SitAA0cB5ErrorOYKF(__src, v300, v152, __dst, v153);
          if (v6)
          {
            goto LABEL_532;
          }

          v10 = v151 + result * 86400.0;
          if (*(v5 + 152) != 1)
          {
            v157 = *(v5 + 144);
LABEL_518:
            if (result < v157)
            {
LABEL_520:
              v278 = floor((v15 - v10) / 86400.0 / 7.0);
              if ((*&v278 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_625:
                __break(1u);
                goto LABEL_626;
              }

              if (v278 <= -9.22337204e18)
              {
LABEL_627:
                __break(1u);
                goto LABEL_628;
              }

              if (v278 >= 9.22337204e18)
              {
LABEL_629:
                __break(1u);
                goto LABEL_630;
              }

              if (v278 <= 10)
              {
                v279 = 0;
              }

              else
              {
                v279 = v278 - 109;
              }

              v247 = v10;
              while (1)
              {
                v280 = v279 + 1;
                if (__OFADD__(v279, 1))
                {
                  goto LABEL_556;
                }

                LOBYTE(v292[0]) = 11;
                *v290 = v10;
                __src[0] = *(v8 + 112);
                swift_unknownObjectRetain();
                _s10Foundation18_CalendarGregorianC3add_2to6amount10inTimeZoneAA4DateVAA0B0V9ComponentO_AISiAA0hI0VtAA0cB5ErrorOYKF(v292, v290, v279 + 1, __src, __dst, v300, v281, v282);
                swift_unknownObjectRelease();
                v251 = *&v300[0];
                if (v247 >= *v300)
                {
                  goto LABEL_535;
                }

                ++v279;
                v247 = *v300;
                result = v280;
                if (v15 < *v300)
                {
                  return result;
                }
              }
            }

LABEL_519:
            v10 = v10 + -604800.0;
            goto LABEL_520;
          }

          if (*(v5 + 96))
          {
            v154 = *(v5 + 104);
            v305 = result;
            ObjectType = swift_getObjectType();
            v156 = *(v154 + 344);
            swift_unknownObjectRetain();
            v157 = v156(ObjectType, v154);
            swift_unknownObjectRelease();
            result = v305;
            goto LABEL_518;
          }

LABEL_546:
          if (result < 1)
          {
            goto LABEL_520;
          }

          goto LABEL_519;
        }
      }

      return 0;
    }

    goto LABEL_479;
  }

  if (v13 != 5)
  {
    return 0;
  }

  a4 = v6;
  LOBYTE(__src[0]) = 5;
  *__dst = v15;
  v16 = _CalendarGregorian.dateComponent(_:from:)(__src, *&a5);
  v17 = __OFADD__(v16, 1);
  result = v16 + 1;
  if (!v17)
  {
    return result;
  }

  __break(1u);
LABEL_11:
  if (v14 > 9)
  {
    if ((v14 - 10) >= 2)
    {
      if (v14 != 12)
      {
        if (v14 != 18)
        {
          return result;
        }

        goto LABEL_46;
      }

      result = 0;
      if (v13 > 6)
      {
        if (v13 <= 12)
        {
          if ((v13 - 7) < 2)
          {
            LOBYTE(v300[0]) = 12;
            *__src = v15;
            _CalendarGregorian.start(of:at:)(v300, *&a5);
            if ((BYTE8(__dst[0]) & 1) == 0)
            {
              v52 = *&__dst[0];
              LOBYTE(v300[0]) = 11;
              LOBYTE(v290[0]) = 12;
              *__src = v15;
              result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
              if (v6)
              {
                goto LABEL_532;
              }

              if (v53)
              {
                return result;
              }

              v55 = result;
              LOBYTE(__src[0]) = 7;
              *&__dst[0] = v52;
              v56 = _CalendarGregorian.dateComponent(_:from:)(__src, v54);
              *&v300[0] = v52;
              _s10Foundation18_CalendarGregorianC26dateAfterDateWithTargetDoWyAA0F0V_Si9daysAddedtAF_SitAA0cB5ErrorOYKF(__src, v300, v56, __dst, v57);
              LOBYTE(v300[0]) = 11;
              LOBYTE(v290[0]) = 12;
              result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
              if (v58)
              {
                return result;
              }

              v13 = v55 - result;
              if (__OFSUB__(v55, result))
              {
LABEL_693:
                __break(1u);
                goto LABEL_694;
              }

              result = v13 + 1;
              if (!__OFADD__(v13, 1))
              {
                return result;
              }

              __break(1u);
              goto LABEL_133;
            }

            return 0;
          }

          if (v13 != 11)
          {
            return result;
          }

LABEL_359:
          LOBYTE(__src[0]) = v13;
          *__dst = v15;
          return _CalendarGregorian.dateComponent(_:from:)(__src, *&a5);
        }

        goto LABEL_329;
      }

LABEL_226:
      if (v13 <= 4)
      {
        if (v13 == 3)
        {
          goto LABEL_331;
        }

        if (v13 != 4)
        {
          return result;
        }

        LOBYTE(v300[0]) = 3;
        LOBYTE(v290[0]) = 12;
        *__src = v15;
        result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
        if (v6)
        {
          goto LABEL_532;
        }

        if ((v118 & 1) == 0)
        {
          v120 = result;
          a4 = 0;
          LOBYTE(v300[0]) = 12;
          *__src = v15;
          _CalendarGregorian.start(of:at:)(v300, v119);
          if ((BYTE8(__dst[0]) & 1) == 0)
          {
            LOBYTE(__src[0]) = 4;
            result = _CalendarGregorian.dateComponent(_:from:)(__src, *&__dst[0]);
            v121 = v120 - 1;
            if (__OFSUB__(v120, 1))
            {
LABEL_673:
              __break(1u);
              goto LABEL_674;
            }

            v122 = (v121 * 24) >> 64;
            v123 = 24 * v121;
            if (v122 != v123 >> 63)
            {
LABEL_676:
              __break(1u);
              goto LABEL_677;
            }

            v17 = __OFADD__(v123, result);
            v124 = v123 + result;
            if (v17)
            {
LABEL_679:
              __break(1u);
              goto LABEL_680;
            }

            result = v124 + 1;
            if (!__OFADD__(v124, 1))
            {
              return result;
            }

            __break(1u);
LABEL_238:
            LOBYTE(v300[0]) = 6;
            LOBYTE(v290[0]) = 5;
            *__src = v15;
            result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
            if (v6)
            {
              goto LABEL_532;
            }

            if (v125)
            {
              return result;
            }

            v126 = (v15 - floor(v15) + result + -1.0) * 1000000000.0;
            if ((*&v126 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
LABEL_584:
              __break(1u);
              goto LABEL_585;
            }

            if (v126 <= -9.22337204e18)
            {
LABEL_585:
              __break(1u);
              goto LABEL_586;
            }

            if (v126 >= 9.22337204e18)
            {
LABEL_586:
              __break(1u);
              goto LABEL_587;
            }

            result = v126 + 1;
            if (!__OFADD__(v126, 1))
            {
              return result;
            }

            __break(1u);
            goto LABEL_246;
          }

          return 0;
        }

        return 0;
      }

LABEL_318:
      if (v13 == 5)
      {
        LOBYTE(v300[0]) = 4;
        LOBYTE(v290[0]) = 12;
        *__src = v15;
        result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
        if (v6)
        {
          goto LABEL_532;
        }

        if ((v189 & 1) == 0)
        {
          v191 = result;
          a4 = 0;
          LOBYTE(v300[0]) = 12;
          *__src = v15;
          _CalendarGregorian.start(of:at:)(v300, v190);
          if (BYTE8(__dst[0]))
          {
            return 0;
          }

          LOBYTE(__src[0]) = 5;
          result = _CalendarGregorian.dateComponent(_:from:)(__src, *&__dst[0]);
          v192 = v191 - 1;
          if (__OFSUB__(v191, 1))
          {
LABEL_675:
            __break(1u);
            goto LABEL_676;
          }

          v193 = 60 * v192;
          if ((v192 * 60) >> 64 != (60 * v192) >> 63)
          {
LABEL_678:
            __break(1u);
            goto LABEL_679;
          }

          v194 = v193 + result;
          if (__OFADD__(v193, result))
          {
LABEL_681:
            __break(1u);
            goto LABEL_682;
          }

          result = v194 + 1;
          if (!__OFADD__(v194, 1))
          {
            return result;
          }

          __break(1u);
          goto LABEL_389;
        }
      }

      else
      {
        if (v13 != 6)
        {
          return result;
        }

        LOBYTE(v300[0]) = 5;
        LOBYTE(v290[0]) = 12;
        *__src = v15;
        result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
        if (v6)
        {
          goto LABEL_532;
        }

        if ((v165 & 1) == 0)
        {
          v167 = result;
          a4 = 0;
          LOBYTE(v300[0]) = 12;
          *__src = v15;
          _CalendarGregorian.start(of:at:)(v300, v166);
          if (BYTE8(__dst[0]))
          {
            return 0;
          }

          LOBYTE(__src[0]) = 6;
          result = _CalendarGregorian.dateComponent(_:from:)(__src, *&__dst[0]);
          v168 = v167 - 1;
          if (__OFSUB__(v167, 1))
          {
LABEL_674:
            __break(1u);
            goto LABEL_675;
          }

          v169 = 60 * v168;
          if ((v168 * 60) >> 64 != (60 * v168) >> 63)
          {
LABEL_677:
            __break(1u);
            goto LABEL_678;
          }

          v13 = v169 + result;
          if (__OFADD__(v169, result))
          {
LABEL_680:
            __break(1u);
            goto LABEL_681;
          }

          result = v13 + 1;
          if (!__OFADD__(v13, 1))
          {
            return result;
          }

          __break(1u);
LABEL_329:
          if (v13 != 13)
          {
            if (v13 != 18)
            {
              return result;
            }

LABEL_331:
            a4 = v6;
            LOBYTE(v300[0]) = 12;
            *__src = v15;
            *(&result - 1) = _CalendarGregorian.start(of:at:)(v300, *&a5);
            if ((BYTE8(__dst[0]) & 1) == 0)
            {
              v170 = floor((v15 - *__dst) / 86400.0);
              if ((*&v170 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
              {
LABEL_574:
                __break(1u);
                goto LABEL_575;
              }

              if (v170 <= -9.22337204e18)
              {
LABEL_575:
                __break(1u);
                goto LABEL_576;
              }

              if (v170 >= 9.22337204e18)
              {
LABEL_576:
                __break(1u);
                goto LABEL_577;
              }

              result = v170 + 1;
              if (!__OFADD__(v170, 1))
              {
                return result;
              }

              __break(1u);
LABEL_338:
              LOBYTE(v300[0]) = 3;
              LOBYTE(v290[0]) = 2;
              *__src = v15;
              result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
              if (!v6)
              {
                if (v171)
                {
                  return result;
                }

                if (__OFADD__(result, 6))
                {
LABEL_610:
                  __break(1u);
                  goto LABEL_611;
                }

                v172 = ((result + 6) * 0x4924924924924925) >> 64;
                return (v172 >> 1) + (v172 >> 63);
              }

              goto LABEL_532;
            }

            return 0;
          }

LABEL_389:
          LOBYTE(v300[0]) = 6;
          LOBYTE(v290[0]) = 12;
          *__src = v15;
          result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
          if (v6)
          {
            goto LABEL_532;
          }

          if (v195)
          {
            return result;
          }

          v196 = (v15 - floor(v15) + result + -1.0) * 1000000000.0;
          if ((*&v196 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_642:
            __break(1u);
            goto LABEL_643;
          }

          if (v196 <= -9.22337204e18)
          {
LABEL_643:
            __break(1u);
            goto LABEL_644;
          }

          if (v196 >= 9.22337204e18)
          {
LABEL_644:
            __break(1u);
            goto LABEL_645;
          }

          v13 = v196;
          result = v196 + 1;
          if (!__OFADD__(v196, 1))
          {
            return result;
          }

          __break(1u);
LABEL_397:
          if (v13 != 9)
          {
            return result;
          }

          LOBYTE(v300[0]) = 1;
          LOBYTE(v290[0]) = 0;
          *__src = v15;
          result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
          if (v6)
          {
            goto LABEL_532;
          }

          if (v197)
          {
            return result;
          }

          v198 = result;
          LOBYTE(v300[0]) = 9;
          LOBYTE(v290[0]) = 1;
          *__src = v15;
          result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
          if (v199)
          {
            return result;
          }

          v13 = v198 - 1;
          if (__OFSUB__(v198, 1))
          {
LABEL_689:
            __break(1u);
LABEL_690:
            __break(1u);
LABEL_691:
            __break(1u);
LABEL_692:
            __break(1u);
            goto LABEL_693;
          }

          if ((v198 - 0x2000000000000001) >> 62 != 3)
          {
            goto LABEL_690;
          }

          v17 = __OFADD__(result, 4 * v13);
          result += 4 * v13;
          if (!v17)
          {
            return result;
          }

          __break(1u);
          goto LABEL_406;
        }
      }

      return 0;
    }

    result = 0;
    if (v13 <= 5)
    {
      if (v13 != 3)
      {
        if (v13 == 4)
        {
LABEL_254:
          LOBYTE(v300[0]) = 3;
          LOBYTE(v290[0]) = 11;
          *__src = v15;
          result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
          if (v6)
          {
            goto LABEL_532;
          }

          if (v133)
          {
            return result;
          }

          a4 = 0;
          LOBYTE(__src[0]) = 4;
          *__dst = v15;
          v7 = result;
          result = _CalendarGregorian.dateComponent(_:from:)(__src, v134);
          v135 = v7 - 1;
          if (__OFSUB__(v7, 1))
          {
LABEL_589:
            __break(1u);
            goto LABEL_590;
          }

          v136 = (v135 * 24) >> 64;
          v137 = 24 * v135;
          if (v136 != v137 >> 63)
          {
LABEL_593:
            __break(1u);
            goto LABEL_594;
          }

          v17 = __OFADD__(v137, result);
          v138 = v137 + result;
          if (v17)
          {
LABEL_597:
            __break(1u);
LABEL_598:
            __break(1u);
LABEL_599:
            __break(1u);
LABEL_600:
            __break(1u);
LABEL_601:
            __break(1u);
LABEL_602:
            __break(1u);
LABEL_603:
            __break(1u);
            goto LABEL_604;
          }

          result = v138 + 1;
          if (!__OFADD__(v138, 1))
          {
            return result;
          }

          __break(1u);
          goto LABEL_262;
        }

        if (v13 != 5)
        {
          return result;
        }

        LOBYTE(v300[0]) = 4;
        LOBYTE(v290[0]) = 11;
        *__src = v15;
        result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
        if (v6)
        {
          goto LABEL_532;
        }

        if (v34)
        {
          return result;
        }

        a4 = 0;
        LOBYTE(__src[0]) = 5;
        *__dst = v15;
        v36 = result;
        result = _CalendarGregorian.dateComponent(_:from:)(__src, v35);
        v37 = v36 - 1;
        if (__OFSUB__(v36, 1))
        {
LABEL_588:
          __break(1u);
          goto LABEL_589;
        }

        v38 = 60 * v37;
        if ((v37 * 60) >> 64 != (60 * v37) >> 63)
        {
LABEL_592:
          __break(1u);
          goto LABEL_593;
        }

        v13 = v38 + result;
        if (__OFADD__(v38, result))
        {
LABEL_596:
          __break(1u);
          goto LABEL_597;
        }

        result = v13 + 1;
        if (!__OFADD__(v13, 1))
        {
          return result;
        }

        __break(1u);
        goto LABEL_76;
      }

LABEL_117:
      LOBYTE(__src[0]) = 7;
      *__dst = v15;
      result = _CalendarGregorian.dateComponent(_:from:)(__src, *&a5);
      v50 = result + 1;
      if (!__OFADD__(result, 1))
      {
        result = _CalendarGregorian.firstWeekday.getter();
        v51 = v50 - result;
        if (!__OFSUB__(v50, result))
        {
          if (v51 <= 0)
          {
            return v51 + 7;
          }

          else
          {
            return v50 - result;
          }
        }

LABEL_550:
        __break(1u);
        goto LABEL_551;
      }

LABEL_549:
      __break(1u);
      goto LABEL_550;
    }

LABEL_114:
    if (v13 == 6)
    {
LABEL_246:
      LOBYTE(v300[0]) = 5;
      LOBYTE(v290[0]) = 11;
      *__src = v15;
      result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
      if (v6)
      {
        goto LABEL_532;
      }

      if (v127)
      {
        return result;
      }

      a4 = 0;
      LOBYTE(__src[0]) = 6;
      *__dst = v15;
      v129 = result;
      result = _CalendarGregorian.dateComponent(_:from:)(__src, v128);
      v130 = v129 - 1;
      if (__OFSUB__(v129, 1))
      {
LABEL_587:
        __break(1u);
        goto LABEL_588;
      }

      v131 = 60 * v130;
      if ((v130 * 60) >> 64 != (60 * v130) >> 63)
      {
LABEL_591:
        __break(1u);
        goto LABEL_592;
      }

      v132 = v131 + result;
      if (__OFADD__(v131, result))
      {
LABEL_595:
        __break(1u);
        goto LABEL_596;
      }

      result = v132 + 1;
      if (!__OFADD__(v132, 1))
      {
        return result;
      }

      __break(1u);
      goto LABEL_254;
    }

    if (v13 == 13)
    {
LABEL_262:
      LOBYTE(v300[0]) = 6;
      LOBYTE(v290[0]) = 11;
      *__src = v15;
      result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
      if (v6)
      {
        goto LABEL_532;
      }

      if (v139)
      {
        return result;
      }

      v140 = (v15 - floor(v15) + result + -1.0) * 1000000000.0;
      if ((*&v140 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_590:
        __break(1u);
        goto LABEL_591;
      }

      if (v140 <= -9.22337204e18)
      {
LABEL_594:
        __break(1u);
        goto LABEL_595;
      }

      if (v140 >= 9.22337204e18)
      {
        goto LABEL_598;
      }

      v13 = v140;
      result = v140 + 1;
      if (!__OFADD__(v140, 1))
      {
        return result;
      }

      __break(1u);
      goto LABEL_270;
    }

    if (v13 != 7)
    {
      return result;
    }

    goto LABEL_117;
  }

LABEL_30:
  if (v14 == 7)
  {
    goto LABEL_46;
  }

  if (v14 != 9)
  {
    return result;
  }

  result = 0;
  if (v13 <= 6)
  {
    goto LABEL_214;
  }

  if (v13 > 12)
  {
    if (v13 == 13)
    {
      LOBYTE(v300[0]) = 6;
      LOBYTE(v290[0]) = 9;
      *__src = v15;
      result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
      if (!v6)
      {
        if ((v220 & 1) == 0)
        {
          v221 = (v15 - floor(v15) + result + -1.0) * 1000000000.0;
          if ((*&v221 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
LABEL_650:
            __break(1u);
            goto LABEL_651;
          }

          if (v221 <= -9.22337204e18)
          {
LABEL_658:
            __break(1u);
            goto LABEL_659;
          }

          if (v221 >= 9.22337204e18)
          {
LABEL_666:
            __break(1u);
            goto LABEL_667;
          }

          result = v221 + 1;
          if (__OFADD__(v221, 1))
          {
LABEL_669:
            __break(1u);
            goto LABEL_670;
          }
        }

        return result;
      }

      goto LABEL_532;
    }

    if (v13 != 18)
    {
      return result;
    }

    goto LABEL_354;
  }

  if ((v13 - 7) < 2)
  {
    v177 = v6;
    LOBYTE(v300[0]) = 9;
    *__src = v15;
    v178 = v5;
    v179 = _CalendarGregorian.start(of:at:)(v300, *&a5);
    if (BYTE8(__dst[0]))
    {
      return 0;
    }

    goto LABEL_472;
  }

  if ((v13 - 10) >= 2)
  {
    return result;
  }

  LOBYTE(v300[0]) = 9;
  *__src = v15;
  _CalendarGregorian.start(of:at:)(v300, *&a5);
  if (BYTE8(__dst[0]))
  {
    return 0;
  }

  *&v300[0] = *&__dst[0];
  v23 = _CalendarGregorian.firstWeekday.getter();
  result = _s10Foundation18_CalendarGregorianC26dateAfterDateWithTargetDoWyAA0F0V_Si9daysAddedtAF_SitAA0cB5ErrorOYKF(__src, v300, v23, __dst, v24);
  if (v6)
  {
    goto LABEL_532;
  }

  v25 = result;
  LOBYTE(v300[0]) = 11;
  LOBYTE(v290[0]) = 1;
  result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
  if (v26)
  {
    return result;
  }

  v27 = result;
  result = _CalendarGregorian.minimumDaysInFirstWeek.getter();
  if (v25 >= result)
  {
    v17 = __OFSUB__(v27--, 1);
    if (v17)
    {
      goto LABEL_688;
    }
  }

  LOBYTE(v300[0]) = 11;
  LOBYTE(v290[0]) = 1;
  *__src = v15;
  result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
  if (v28)
  {
    return result;
  }

  v13 = result - v27;
  if (__OFSUB__(result, v27))
  {
LABEL_696:
    __break(1u);
    goto LABEL_697;
  }

  result = v13 + 1;
  if (!__OFADD__(v13, 1))
  {
    return result;
  }

  __break(1u);
LABEL_46:
  result = 0;
  if (v13 > 5)
  {
LABEL_76:
    if (v13 != 6)
    {
      if (v13 != 13)
      {
        return result;
      }

      LOBYTE(v300[0]) = 6;
      LOBYTE(v290[0]) = 3;
      *__src = v15;
      result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
      if (v6)
      {
        goto LABEL_532;
      }

      if (v39)
      {
        return result;
      }

      a5 = (v15 - floor(v15) + result + -1.0) * 1000000000.0;
      if ((*&a5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
LABEL_566:
        __break(1u);
        goto LABEL_567;
      }

      if (a5 <= -9.22337204e18)
      {
LABEL_569:
        __break(1u);
        goto LABEL_570;
      }

      if (a5 >= 9.22337204e18)
      {
LABEL_572:
        __break(1u);
        goto LABEL_573;
      }

      v13 = a5;
      result = a5 + 1;
      if (!__OFADD__(a5, 1))
      {
        return result;
      }

      __break(1u);
      goto LABEL_86;
    }

    LOBYTE(v300[0]) = 5;
    LOBYTE(v290[0]) = 3;
    *__src = v15;
    result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
    if (v6)
    {
      goto LABEL_532;
    }

    if (v60)
    {
      return result;
    }

    a4 = 0;
    LOBYTE(__src[0]) = 6;
    *__dst = v15;
    v7 = result;
    result = _CalendarGregorian.dateComponent(_:from:)(__src, v61);
    v62 = v7 - 1;
    if (__OFSUB__(v7, 1))
    {
LABEL_567:
      __break(1u);
      goto LABEL_568;
    }

    v63 = 60 * v62;
    if ((v62 * 60) >> 64 != (60 * v62) >> 63)
    {
LABEL_570:
      __break(1u);
      goto LABEL_571;
    }

    v13 = v63 + result;
    if (__OFADD__(v63, result))
    {
LABEL_573:
      __break(1u);
      goto LABEL_574;
    }

    result = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      return result;
    }

    __break(1u);
LABEL_143:
    if (v13 <= 9)
    {
      if ((v13 - 7) < 2)
      {
        LOBYTE(v300[0]) = 0;
        *__src = v15;
        v288 = v5;
        v64 = _CalendarGregorian.start(of:at:)(v300, *&a5);
        if ((BYTE8(__dst[0]) & 1) == 0)
        {
          v65 = *__dst;
          LOBYTE(__src[0]) = 7;
          *__dst = v15;
          v66 = _CalendarGregorian.dateComponent(_:from:)(__src, v64);
          *(v7 + 10) = v65;
          result = _s10Foundation18_CalendarGregorianC26dateAfterDateWithTargetDoWyAA0F0V_Si9daysAddedtAF_SitAA0cB5ErrorOYKF(__src, v300, v66, __dst, v67);
          if (!v6)
          {
            v70 = floor((v15 - v65) / 86400.0 / 7.0);
            if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
LABEL_624:
              __break(1u);
              goto LABEL_625;
            }

            if (v70 <= -9.22337204e18)
            {
LABEL_626:
              __break(1u);
              goto LABEL_627;
            }

            if (v70 >= 9.22337204e18)
            {
LABEL_628:
              __break(1u);
              goto LABEL_629;
            }

            v69.i64[0] = *&__src[0];
            if (v70 <= 10)
            {
              v71 = 0;
            }

            else
            {
              v71 = v70 - 10;
            }

            *v68.i64 = *__src - trunc(*__src);
            v72.f64[0] = NAN;
            v72.f64[1] = NAN;
            v68.i64[0] = vbslq_s8(vnegq_f64(v72), v68, v69).i64[0];
            if (*v68.i64 >= 0.0)
            {
              v73 = *v68.i64;
            }

            else
            {
              v73 = *v68.i64 + 1.0;
            }

            if (*v68.i64 >= 0.0)
            {
              v74 = *__src - *v68.i64;
            }

            else
            {
              v74 = *__src - *v68.i64 + -1.0;
            }

            v287 = *__src;
            v75 = *__src;
            while (1)
            {
              result = v71 + 1;
              if (__OFADD__(v71, 1))
              {
                goto LABEL_554;
              }

              v76 = v287;
              if (v71 != -1)
              {
                v305 = v71 + 1;
                v77 = *(v288 + 112);
                v286 = *(v288 + 120);
                swift_unknownObjectRetain();
                _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfC10Foundation8CalendarV09ComponentA0V_Tt1g5(&_s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKFTv_r, __dst);
                _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfC10Foundation8CalendarV09ComponentA0V_Tt1g5(&_s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKFTv0_r, __dst);
                _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfC10Foundation8CalendarV09ComponentA0V_Tt1g5(&_s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKFTv1_r, v300);
                *v290 = v287;
                __dst[0] = *(v288 + 112);
                swift_unknownObjectRetain();
                _CalendarGregorian.dateComponents(_:from:in:)(v300, v290, __dst, __src);
                swift_unknownObjectRelease();
                result = memcpy(__dst, __src, 0x11BuLL);
                if (BYTE8(__dst[7]) & 1) != 0 || (BYTE8(__dst[8]) & 1) != 0 || (BYTE8(__dst[9]))
                {
                  goto LABEL_691;
                }

                v78 = *&__dst[7];
                v79 = *&__dst[8];
                v80 = *&__dst[9];
                result = outlined destroy of DateComponents(__dst);
                v81 = 3600 * v78;
                if ((v78 * 3600) >> 64 != (3600 * v78) >> 63)
                {
                  goto LABEL_557;
                }

                v82 = 60 * v79;
                if ((v79 * 60) >> 64 != (60 * v79) >> 63)
                {
                  goto LABEL_558;
                }

                v17 = __OFADD__(v81, v82);
                v83 = v81 + v82;
                if (v17)
                {
                  goto LABEL_559;
                }

                v84 = v83 + v80;
                if (__OFADD__(v83, v80))
                {
                  goto LABEL_560;
                }

                v85 = v74 + v305 * 604800.0;
                _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfC10Foundation8CalendarV09ComponentA0V_Tt1g5(&_s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKFTv2_r, v290);
                *(v9 + 38) = v85;
                __src[0] = *(v288 + 112);
                swift_unknownObjectRetain();
                _CalendarGregorian.dateComponents(_:from:in:)(v290, v292, __src, v300);
                swift_unknownObjectRelease();
                result = memcpy(__src, v300, 0x11BuLL);
                if (BYTE8(__src[7]) & 1) != 0 || (BYTE8(__src[8]) & 1) != 0 || (BYTE8(__src[9]))
                {
                  goto LABEL_692;
                }

                v86 = *&__src[7];
                v87 = *&__src[8];
                v88 = *&__src[9];
                result = outlined destroy of DateComponents(__src);
                v89 = 3600 * v86;
                if ((v86 * 3600) >> 64 != (3600 * v86) >> 63)
                {
                  goto LABEL_561;
                }

                v90 = 60 * v87;
                v91 = v305;
                if ((v87 * 60) >> 64 != (60 * v87) >> 63)
                {
                  goto LABEL_562;
                }

                v17 = __OFADD__(v89, v90);
                v92 = v89 + v90;
                v9 = v290;
                if (v17)
                {
                  goto LABEL_563;
                }

                v17 = __OFADD__(v92, v88);
                v93 = v92 + v88;
                if (v17)
                {
                  goto LABEL_564;
                }

                v94 = v84;
                if (v84 == v93)
                {
                  v95 = v85;
                }

                else
                {
                  v96 = swift_getObjectType();
                  *v300 = v85;
                  v97 = *(v286 + 40);
                  v98 = v97(v300, v96, v286);
                  *v300 = v287;
                  v99 = v98;
                  result = v97(v300, v96, v286);
                  if (v99 == result)
                  {
                    v95 = v85;
                    v91 = v305;
                    v9 = v290;
                  }

                  else
                  {
                    v100 = result;
                    if (__OFSUB__(result, v99))
                    {
                      goto LABEL_599;
                    }

                    v95 = v85 + (result - v99);
                    _ss10SetAlgebraPs7ElementQz012ArrayLiteralC0RtzrlE05arrayE0xAFd_tcfC10Foundation8CalendarV09ComponentA0V_Tt1g5(&_s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKFTv3_r, &v296);
                    *v302 = v95;
                    *v292 = *(v288 + 112);
                    swift_unknownObjectRetain();
                    _CalendarGregorian.dateComponents(_:from:in:)(&v296, v302, v292, v290);
                    swift_unknownObjectRelease();
                    result = memcpy(v300, v290, 0x11BuLL);
                    if (BYTE8(v300[7]) & 1) != 0 || (BYTE8(v300[8]) & 1) != 0 || (BYTE8(v300[9]))
                    {
                      goto LABEL_700;
                    }

                    v101 = *&v300[7];
                    v102 = *&v300[8];
                    v103 = *&v300[9];
                    result = outlined destroy of DateComponents(v300);
                    v104 = 3600 * v101;
                    if ((v101 * 3600) >> 64 != (3600 * v101) >> 63)
                    {
                      goto LABEL_600;
                    }

                    v105 = 60 * v102;
                    v91 = v305;
                    if ((v102 * 60) >> 64 != (60 * v102) >> 63)
                    {
                      goto LABEL_601;
                    }

                    v17 = __OFADD__(v104, v105);
                    v106 = v104 + v105;
                    v9 = v290;
                    if (v17)
                    {
                      goto LABEL_602;
                    }

                    v17 = __OFADD__(v106, v103);
                    v107 = v106 + v103;
                    if (v17)
                    {
                      goto LABEL_603;
                    }

                    if (v107 != v94 && v100 < v99)
                    {
                      v95 = v85;
                    }
                  }
                }

                if (v91 < 1)
                {
                  swift_unknownObjectRelease();
                }

                else
                {
                  v292[0] = v95;
                  *&v290[0] = v77;
                  *(&v290[0] + 1) = v286;
                  _CalendarGregorian.timeZoneTransitionInterval(at:timeZone:)(v292, v290, v300);
                  swift_unknownObjectRelease();
                  if ((v300[1] & 1) == 0)
                  {
                    v95 = v95 - *(v300 + 1);
                  }
                }

                v76 = v73 + v95 + 0.0;
                result = v305;
              }

              if (v75 >= v76)
              {
                *a4 = v76;
                a4[1] = v75;
                a4[2] = 0.0;
                a4[3] = 0.0;
                *(a4 + 32) = 0x80;
                *__dst = v76;
                *(__dst + 1) = v75;
                goto LABEL_540;
              }

              ++v71;
              v75 = v76;
              if (v76 >= v15)
              {
                return result;
              }
            }
          }

          goto LABEL_532;
        }

        return 0;
      }

      goto LABEL_397;
    }

    goto LABEL_294;
  }

  if (v13 == 4)
  {
LABEL_133:
    LOBYTE(__src[0]) = v13;
    *__dst = v15;
    v59 = _CalendarGregorian.dateComponent(_:from:)(__src, *&a5);
    v17 = __OFADD__(v59, 1);
    result = v59 + 1;
    if (!v17)
    {
      return result;
    }

    __break(1u);
    goto LABEL_549;
  }

  if (v13 != 5)
  {
    return result;
  }

  LOBYTE(v300[0]) = 4;
  LOBYTE(v290[0]) = 3;
  *__src = v15;
  result = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(v300, v290, __src, __dst);
  if (v6)
  {
    goto LABEL_532;
  }

  if (v29)
  {
    return result;
  }

  a4 = 0;
  LOBYTE(__src[0]) = 5;
  *__dst = v15;
  v31 = result;
  result = _CalendarGregorian.dateComponent(_:from:)(__src, v30);
  v32 = v31 - 1;
  if (__OFSUB__(v31, 1))
  {
LABEL_565:
    __break(1u);
    goto LABEL_566;
  }

  v14 = 60 * v32;
  if ((v32 * 60) >> 64 != (60 * v32) >> 63)
  {
LABEL_568:
    __break(1u);
    goto LABEL_569;
  }

  v13 = v14 + result;
  if (__OFADD__(v14, result))
  {
LABEL_571:
    __break(1u);
    goto LABEL_572;
  }

  result = v13 + 1;
  if (!__OFADD__(v13, 1))
  {
    return result;
  }

  __break(1u);
LABEL_57:
  if (v14 == 5)
  {
LABEL_86:
    if (v13 != 13)
    {
      if (v13 != 6)
      {
        return 0;
      }

      LOBYTE(__src[0]) = 6;
      *__dst = v15;
      v40 = _CalendarGregorian.dateComponent(_:from:)(__src, *&a5);
      v17 = __OFADD__(v40, 1);
      result = v40 + 1;
      if (v17)
      {
        __break(1u);
        return 0;
      }

      return result;
    }

    goto LABEL_238;
  }

  if (v14 == 6)
  {
    if (v13 == 13)
    {
      v33 = (v15 - floor(v15)) * 1000000000.0 + 1.0;
      if ((*&v33 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v33 > -9.22337204e18)
        {
          if (v33 < 9.22337204e18)
          {
            return v33;
          }

          goto LABEL_553;
        }

LABEL_552:
        __break(1u);
LABEL_553:
        __break(1u);
LABEL_554:
        __break(1u);
LABEL_555:
        __break(1u);
LABEL_556:
        __break(1u);
LABEL_557:
        __break(1u);
LABEL_558:
        __break(1u);
LABEL_559:
        __break(1u);
LABEL_560:
        __break(1u);
LABEL_561:
        __break(1u);
LABEL_562:
        __break(1u);
LABEL_563:
        __break(1u);
LABEL_564:
        __break(1u);
        goto LABEL_565;
      }

LABEL_551:
      __break(1u);
      goto LABEL_552;
    }

    return 0;
  }

  return result;
}

Swift::Int_optional __swiftcall _CalendarGregorian.ordinality(of:in:for:)(Foundation::Calendar::Component of, Foundation::Calendar::Component in, Foundation::Date a3)
{
  v4 = *in;
  v5 = *v3;
  v12 = *of;
  v11 = v4;
  v10 = v5;
  v6 = _s10Foundation18_CalendarGregorianC11_ordinality2of2in3forSiSgAA0B0V9ComponentO_AlA4DateVtAA0cB5ErrorOYKF(&v12, &v11, &v10, v9, a3._time);
  v8 = v7 & 1;
  result.value = v6;
  result.is_nil = v8;
  return result;
}

Swift::Int __swiftcall _CalendarGregorian.dateComponent(_:from:)(Foundation::Calendar::Component _, Foundation::Date from)
{
  v4 = *_;
  v5 = *v2;
  v9 = qword_181232CE0[v4];
  v8 = v5;
  *v7 = *(v3 + 112);
  swift_unknownObjectRetain();
  _CalendarGregorian.dateComponents(_:from:in:)(&v9, &v8, v7, v10);
  swift_unknownObjectRelease();
  outlined destroy of DateComponents(v10);
  switch(v4)
  {
    case 1:
      if (v14)
      {
        goto LABEL_33;
      }

      result = v13;
      break;
    case 2:
      if (v16)
      {
        goto LABEL_33;
      }

      result = v15;
      break;
    case 3:
      if (v18)
      {
        goto LABEL_33;
      }

      result = v17;
      break;
    case 4:
      if (v22)
      {
        goto LABEL_33;
      }

      result = v21;
      break;
    case 5:
      if (v24)
      {
        goto LABEL_33;
      }

      result = v23;
      break;
    case 6:
      if (v26)
      {
        goto LABEL_33;
      }

      result = v25;
      break;
    case 7:
      if (v30)
      {
        goto LABEL_33;
      }

      result = v29;
      break;
    case 8:
      if (v32)
      {
        goto LABEL_33;
      }

      result = v31;
      break;
    case 9:
      if (v34)
      {
        goto LABEL_33;
      }

      result = v33;
      break;
    case 10:
      if (v36)
      {
        goto LABEL_33;
      }

      result = v35;
      break;
    case 11:
      if (v38)
      {
        goto LABEL_33;
      }

      result = v37;
      break;
    case 12:
      if (v40)
      {
        goto LABEL_33;
      }

      result = v39;
      break;
    case 13:
      if (v28)
      {
        goto LABEL_33;
      }

      result = v27;
      break;
    case 14:
    case 15:
    case 16:
    case 17:
      goto LABEL_33;
    case 18:
      if (v20)
      {
        goto LABEL_33;
      }

      result = v19;
      break;
    default:
      if (v12)
      {
LABEL_33:
        __break(1u);
        JUMPOUT(0x1808EED34);
      }

      result = v11;
      break;
  }

  return result;
}

NSTimeZone __swiftcall TimeZone._bridgeToObjectiveC()()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 128))(ObjectType, v1);
}

uint64_t _NSProgressFractionSubtractFraction(uint64_t result, int64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    v3 = *(result + 8);
    if (v3)
    {
      v4 = a2[1];
      v5 = *(result + 8);
      do
      {
        v6 = v5;
        v5 = v4;
        v4 = v6 % v4;
      }

      while (v4);
      v7 = v3 / v5;
      v8 = v7 * v2;
      if ((v7 * v2) >> 64 == (v7 * v2) >> 63)
      {
        v13 = *result;
        v20 = v8 / v3 * *result;
        v14 = *a2;
        v21 = v8 / v2 * *a2;
        v22 = __OFSUB__(v20, v21);
        v23 = v20 - v21;
      }

      else
      {
        v9 = *result;
        v10 = *(result + 8);
        v11 = *result;
        do
        {
          v12 = v11;
          v11 = v10;
          v10 = v12 % v10;
        }

        while (v10);
        v13 = v9 / v11;
        v3 /= v11;
        *result = v9 / v11;
        *(result + 8) = v3;
        v14 = *a2;
        v2 = a2[1];
        if (v2)
        {
          v15 = a2[1];
          v16 = *a2;
          do
          {
            v17 = v16;
            v16 = v15;
            v15 = v17 % v15;
          }

          while (v15);
          v18 = v14 / v16;
          v19 = v2 / v16;
        }

        else
        {
          v19 = 0;
          v18 = *a2;
        }

        v24 = v19;
        v25 = v3;
        do
        {
          v26 = v25;
          v25 = v24;
          v24 = v26 % v24;
        }

        while (v24);
        v27 = v3 / v25;
        v8 = v3 / v25 * v19;
        if ((v27 * v19) >> 64 != v8 >> 63)
        {
          goto LABEL_22;
        }

        v28 = v8 / v3 * v13;
        v29 = v8 / v19 * v18;
        v22 = __OFSUB__(v28, v29);
        v23 = v28 - v29;
      }

      v30 = v22;
      if ((v30 & 1) == 0)
      {
        *result = v23;
LABEL_39:
        *(result + 8) = v8;
        return result;
      }

LABEL_22:
      *(result + 16) = 1;
      v31 = 0.0;
      v32 = 0.0;
      if ((v13 & 0x8000000000000000) == 0 && (v3 & 0x8000000000000000) == 0 && v13 | v3)
      {
        if (!v3)
        {
          v32 = 1.0;
          if ((v14 & 0x8000000000000000) == 0)
          {
            goto LABEL_28;
          }

          goto LABEL_36;
        }

        v32 = v13 / v3;
      }

      if ((v14 & 0x8000000000000000) == 0)
      {
LABEL_28:
        if ((v2 & 0x8000000000000000) == 0 && v14 | v2)
        {
          if (v2)
          {
            v31 = v14 / v2;
          }

          else
          {
            v31 = 1.0;
          }
        }
      }

LABEL_36:
      v33 = vcvtd_n_s64_f64(v32 - v31, 0x20uLL);
      v34 = 0x100000000;
      v35 = v33;
      do
      {
        v36 = v35;
        v35 = v34;
        v34 = v36 % v34;
      }

      while (v34);
      *result = v33 / v35;
      v8 = 0x100000000 / v35;
      goto LABEL_39;
    }
  }

  return result;
}

void specialized _FileManagerImpl.moveItem(atPath:toPath:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  v8 = static URL.compatibility2;
  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v9 = type metadata accessor for _BridgedURL();
    v10 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v9 = type metadata accessor for _SwiftURL();
    v10 = &protocol witness table for _SwiftURL;
  }

  v11 = v10[8];

  v11(a1, a2, v9, v10);
  v12 = (v10[56])(v9, v10);
  v14 = v13;
  swift_unknownObjectRelease();
  if ((v8 & 1) != 0 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v15 = type metadata accessor for _BridgedURL();
    v16 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v15 = type metadata accessor for _SwiftURL();
    v16 = &protocol witness table for _SwiftURL;
  }

  v17 = v16[8];

  v17(a3, a4, v15, v16);
  v18 = (v16[56])(v15, v16);
  v20 = v19;
  swift_unknownObjectRelease();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    v25[2] = v12;
    v25[3] = v14;
    v25[4] = v18;
    v25[5] = v20;
    v25[6] = v23;
    ObjectType = swift_getObjectType();
    (*(v14 + 296))(partial apply for closure #1 in static _FileOperations.moveFile(_:to:with:options:), v25, MEMORY[0x1E69E7CA8] + 8, ObjectType, v14);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t _SwiftURL.withUnsafeFileSystemRepresentation<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v72 = a1;
  v73 = a2;
  v76 = a4;
  v6 = *(v4 + 48);
  v7 = _SwiftURL.absolutePath(percentEncoded:)(1);
  v8 = String._droppingTrailingSlashes.getter(v7._countAndFlagsBits, v7._object);
  v10 = v9;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
  v11 = static _SetStorage.allocate(capacity:)();
  v12 = v11;
  v13 = v11 + 56;
  v14 = *(v11 + 40);
  if (v6 == 1)
  {
    v15 = byte_1EEECEF30;
    result = MEMORY[0x1865CD020](*(v11 + 40), byte_1EEECEF30, 1);
    v17 = -1 << *(v12 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    v20 = *(v13 + 8 * (v18 >> 6));
    v21 = 1 << v18;
    v22 = *(v12 + 48);
    if (((1 << v18) & v20) != 0)
    {
      v23 = ~v17;
      while (*(v22 + v18) != v15)
      {
        v18 = (v18 + 1) & v23;
        v19 = v18 >> 6;
        v20 = *(v13 + 8 * (v18 >> 6));
        v21 = 1 << v18;
        if (((1 << v18) & v20) == 0)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      *(v13 + 8 * v19) = v21 | v20;
      *(v22 + v18) = v15;
      v24 = *(v12 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      *(v12 + 16) = v26;
    }

    v27 = byte_1EEECEF31;
    result = MEMORY[0x1865CD020](v14, byte_1EEECEF31, 1);
    v28 = -1 << *(v12 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    v31 = *(v13 + 8 * (v29 >> 6));
    v32 = 1 << v29;
    v33 = *(v12 + 48);
    if (((1 << v29) & v31) != 0)
    {
      v34 = ~v28;
      while (*(v33 + v29) != v27)
      {
        v29 = (v29 + 1) & v34;
        v30 = v29 >> 6;
        v31 = *(v13 + 8 * (v29 >> 6));
        v32 = 1 << v29;
        if (((1 << v29) & v31) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_14;
    }

LABEL_12:
    *(v13 + 8 * v30) = v32 | v31;
    *(v33 + v29) = v27;
    v35 = *(v12 + 16);
    v25 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (!v25)
    {
      *(v12 + 16) = v36;
LABEL_14:
      v37 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v37 = v8 & 0xFFFFFFFFFFFFLL;
      }

      if (v37)
      {
        v74 = v8;
        v75 = v10;
        MEMORY[0x1EEE9AC00](result);
        v69 = &v74;
        v70 = v12;
        v71 = 4;

        specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v68, v8, v10);
        if (v38 == 1)
        {
          _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v8, v10, v12, 4);
        }

        v40 = v72;
        v39 = v73;
      }

      else
      {

        v40 = v72;
        v39 = v73;
      }

      MEMORY[0x1EEE9AC00](v41);
      v69 = a3;
      v70 = v40;
      v71 = v39;
      String.withCString<A>(_:)();
    }

    goto LABEL_43;
  }

  v42 = byte_1EEECEF58;
  result = MEMORY[0x1865CD020](*(v11 + 40), byte_1EEECEF58, 1);
  v43 = -1 << *(v12 + 32);
  v44 = result & ~v43;
  v45 = v44 >> 6;
  v46 = *(v13 + 8 * (v44 >> 6));
  v47 = 1 << v44;
  v48 = *(v12 + 48);
  if (((1 << v44) & v46) != 0)
  {
    v49 = ~v43;
    while (*(v48 + v44) != v42)
    {
      v44 = (v44 + 1) & v49;
      v45 = v44 >> 6;
      v46 = *(v13 + 8 * (v44 >> 6));
      v47 = 1 << v44;
      if (((1 << v44) & v46) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_24:
    *(v13 + 8 * v45) = v47 | v46;
    *(v48 + v44) = v42;
    v50 = *(v12 + 16);
    v25 = __OFADD__(v50, 1);
    v51 = v50 + 1;
    if (v25)
    {
      goto LABEL_44;
    }

    *(v12 + 16) = v51;
  }

  v52 = byte_1EEECEF59;
  result = MEMORY[0x1865CD020](v14, byte_1EEECEF59, 1);
  v53 = -1 << *(v12 + 32);
  v54 = result & ~v53;
  v55 = v54 >> 6;
  v56 = *(v13 + 8 * (v54 >> 6));
  v57 = 1 << v54;
  v58 = *(v12 + 48);
  if (((1 << v54) & v56) != 0)
  {
    v59 = ~v53;
    while (*(v58 + v54) != v52)
    {
      v54 = (v54 + 1) & v59;
      v55 = v54 >> 6;
      v56 = *(v13 + 8 * (v54 >> 6));
      v57 = 1 << v54;
      if (((1 << v54) & v56) == 0)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_32;
  }

LABEL_30:
  *(v13 + 8 * v55) = v57 | v56;
  *(v58 + v54) = v52;
  v60 = *(v12 + 16);
  v25 = __OFADD__(v60, 1);
  v61 = v60 + 1;
  if (!v25)
  {
    *(v12 + 16) = v61;
LABEL_32:
    v62 = HIBYTE(v10) & 0xF;
    if ((v10 & 0x2000000000000000) == 0)
    {
      v62 = v8 & 0xFFFFFFFFFFFFLL;
    }

    if (v62)
    {
      v74 = v8;
      v75 = v10;
      MEMORY[0x1EEE9AC00](result);
      v69 = &v74;
      v70 = v12;
      v71 = 4;

      specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v68, v8, v10);
      if (v63 == 1)
      {
        _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v8, v10, v12, 4);
      }

      v64 = v76;
      v66 = v72;
      v65 = v73;
    }

    else
    {

      v64 = v76;
      v66 = v72;
      v65 = v73;
    }

    MEMORY[0x1EEE9AC00](v67);
    v69 = a3;
    v70 = v66;
    v71 = v65;
    String.withFileSystemRepresentation<A>(_:)(_s10Foundation9_SwiftURLC34withUnsafeFileSystemRepresentationyxxSPys4Int8VGSgKXEKlFxAHKXEfU0_TA_0, a3, v64);
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t String.withFileSystemRepresentation<A>(_:)@<X0>(uint64_t (*a1)(_BYTE *)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X8>)
{
  v33 = a4;
  v34 = a3;
  v35 = *MEMORY[0x1E69E9840];
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v32 - v14;
  if ((v13 & 0x1000000000000000) != 0)
  {
    v26 = v13;
    v27 = v12;
    isStackAllocationSafe = String.UTF8View._foreignCount()();
    v12 = v27;
    v13 = v26;
  }

  else if ((v13 & 0x2000000000000000) != 0)
  {
    isStackAllocationSafe = HIBYTE(v13) & 0xF;
  }

  else
  {
    isStackAllocationSafe = v12 & 0xFFFFFFFFFFFFLL;
  }

  v17 = 3 * isStackAllocationSafe;
  if ((isStackAllocationSafe * 3) >> 64 == (3 * isStackAllocationSafe) >> 63)
  {
    if (v17 < -1)
    {
      __break(1u);
    }

    v11 = v17 + 1;
    if (v17 <= 1023)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  v32 = v11;
  v28 = v13;
  v29 = v12;
  isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  if (!isStackAllocationSafe)
  {
    v30 = v32;
    v31 = swift_slowAlloc();
    closure #1 in String.withFileSystemRepresentation<A>(_:)(v31, v30, v29, v28, a1);
    return MEMORY[0x1865D2690](v31, -1, -1);
  }

LABEL_8:
  MEMORY[0x1EEE9AC00](isStackAllocationSafe);
  v19 = &v32 - v18;
  if (String._fileSystemRepresentation(into:)(&v32 - v18, v20, v21, v22))
  {
    v23 = v19;
  }

  else
  {
    v23 = 0;
  }

  a1(v23);
  if (v4)
  {
    return swift_willThrow();
  }

  v25 = *(v7 + 32);
  v25(v15, v9, a2);
  return (v25)(v33, v15, a2);
}

uint64_t closure #1 in static _FileOperations.moveFile(_:to:with:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    MEMORY[0x1EEE9AC00](a1);
    v16[2] = v5;
    v16[3] = v6;
    v16[4] = v8;
    v16[5] = v7;
    v16[6] = a2;
    v16[7] = a3;
    v9 = v6;
    ObjectType = swift_getObjectType();
    return (*(v9 + 296))(partial apply for closure #1 in closure #1 in static _FileOperations.moveFile(_:to:with:options:), v16, MEMORY[0x1E69E7CA8] + 8, ObjectType, v9);
  }

  else
  {
    v12 = swift_getObjectType();
    (*(a3 + 240))(v12, a3);
    v13 = objc_opt_self();
    v14 = String._bridgeToObjectiveCImpl()();

    v15 = (*(a3 + 432))(v12, a3);
    [v13 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    swift_unknownObjectRelease();

    return swift_willThrow();
  }
}

void closure #1 in closure #1 in static _FileOperations.moveFile(_:to:with:options:)(const std::__fs::filesystem::path *a1, uint64_t a2, unint64_t a3, id *a4, const std::__fs::filesystem::path *a5, uint64_t a6, std::__fs::filesystem::path *a7)
{
  v421 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    ObjectType = swift_getObjectType();
    (*(a3 + 240))(ObjectType, a3);
    v20 = a3;
    v21 = objc_opt_self();
    v22 = String._bridgeToObjectiveCImpl()();

    v23 = (*(v20 + 432))(ObjectType, v20);
    [v21 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    swift_unknownObjectRelease();

    goto LABEL_6;
  }

  v410 = a6;
  v407 = a5;
  v12 = String.init(cString:)();
  v14 = v13;
  v15 = String.init(cString:)();
  LOBYTE(v12) = NSFileManager._shouldCopyItemAtPath(_:to:)(v12, v14, v15, v16, &selRef_fileManager_shouldMoveItemAtURL_toURL_, &selRef_fileManager_shouldMoveItemAtPath_toPath_);

  if ((v12 & 1) == 0)
  {
    return;
  }

  v403 = a4;
  v404 = a1;
  memset(&v415, 0, sizeof(v415));
  v405 = a2;
  v409 = a7;
  if (!lstat(a1, &v415))
  {
    v24 = swift_getObjectType();
    size = a7[13].__pn_.__r_.__value_.__l.__size_;
    v400 = v24;
    v26 = size(v24, a7);
    v28 = v27;
    v29 = swift_getObjectType();
    v30 = *(a3 + 320);
    v399 = v29;
    v402 = a3;
    v31 = v30(v29, a3);
    v33 = v32;
    v417 = v26;
    v418 = v28;
    v34 = Substring.init<A>(_:)();
    v36 = v35;
    v38 = v37;
    v40 = v39;
    v417 = v31;
    v418 = v33;
    v41 = Substring.init<A>(_:)();
    v45 = Substring._unlocalizedCompare(other:options:)(v41, v42, v43, v44, 1uLL, v34, v36, v38, v40);

    if (v45)
    {
      a3 = v402;
      a7 = v409;
      goto LABEL_9;
    }

    v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd);
    v64 = swift_allocObject();
    v65 = *MEMORY[0x1E695DC38];
    v64[4] = *MEMORY[0x1E695DC38];
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo16NSURLResourceKeyaGMd);
    v67 = static _SetStorage.allocate(capacity:)();
    v406 = v64 + 4;
    v68 = v64[4];
    v401 = v67;
    LODWORD(v56) = _objc_isTaggedPointer(v68);
    v69 = v65;
    *&v413 = v68;
    v70 = v68;
    v71 = v70;
    v396 = v66;
    v397 = v63;
    v395 = v69;
    v408 = v64;
    v412 = v70;
    if (v56)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v70);
      switch(TaggedPointerTag)
      {
        case 0:
          LOWORD(v416[0]) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          v85 = v71;
          v83 = v401;
          if (!v86)
          {
            [(__CFString *)v85 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            goto LABEL_71;
          }

          goto LABEL_52;
        case 0x16:
          v82 = [(__CFString *)v71 UTF8String];
          if (!v82)
          {
            goto LABEL_349;
          }

          String.init(utf8String:)(v82);
          v83 = v401;
          if (!v84)
          {
LABEL_350:
            __break(1u);
            goto LABEL_351;
          }

          goto LABEL_71;
        case 2:
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v391 = v71;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_70:
          v83 = v401;
          goto LABEL_71;
      }
    }

    LOBYTE(v420) = 0;
    v417 = 0;
    LOBYTE(v416[0]) = 0;
    LOBYTE(v414) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      v74 = v417;
      if (!v417)
      {
LABEL_59:

        goto LABEL_70;
      }

      if (v414 == 1)
      {
        if (v420)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        String.init<A>(_immortalCocoaString:count:encoding:)();
        goto LABEL_70;
      }

      if (v416[0])
      {
        if (v420 == 1)
        {
          MEMORY[0x1EEE9AC00](IsCF);
          v389 = v412;
          v390 = &v417;
          LODWORD(v391) = 1536;
          v392 = v74;
          v87 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v89 = HIBYTE(v88) & 0xF;
          if ((v88 & 0x2000000000000000) == 0)
          {
            v89 = v87 & 0xFFFFFFFFFFFFLL;
          }

          if (v89)
          {
            goto LABEL_59;
          }

          v83 = v401;
          goto LABEL_326;
        }

        v85 = v412;
        v382 = [(__CFString *)v412 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v382);
        v389 = v412;
        v390 = &v417;
        LODWORD(v391) = 134217984;
        v392 = v383;
        v384 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v386 = HIBYTE(v385) & 0xF;
        if ((v385 & 0x2000000000000000) == 0)
        {
          v386 = v384 & 0xFFFFFFFFFFFFLL;
        }

        v83 = v401;
        if (!v386)
        {
LABEL_326:

          goto LABEL_62;
        }

LABEL_52:

LABEL_71:
        v96 = v83 + 56;
        Hasher.init(_seed:)();
        String.hash(into:)();
        v97 = Hasher._finalize()();

        v98 = -1 << *(v83 + 32);
        v99 = v97 & ~v98;
        v100 = v99 >> 6;
        v101 = *(v83 + 56 + 8 * (v99 >> 6));
        v102 = 1 << v99;
        if (((1 << v99) & v101) == 0)
        {
LABEL_112:
          *(v96 + 8 * v100) = v102 | v101;
          *(*(v83 + 48) + 8 * v99) = v412;
          v128 = *(v83 + 16);
          v129 = __OFADD__(v128, 1);
          v130 = v128 + 1;
          a3 = v402;
          if (v129)
          {
            goto LABEL_330;
          }

          *(v83 + 16) = v130;
          a7 = v409;
          goto LABEL_117;
        }

        v103 = ~v98;
        while (1)
        {
          v56 = *(*(v83 + 48) + 8 * v99);
          isTaggedPointer = _objc_isTaggedPointer(v56);
          v105 = v56;
          v106 = v105;
          if (!isTaggedPointer)
          {
            goto LABEL_78;
          }

          v107 = _objc_getTaggedPointerTag(v105);
          switch(v107)
          {
            case 0:
              LOWORD(v416[0]) = 0;
              _CFIndirectTaggedPointerStringGetContents();
              v117 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
              if (!v118)
              {
                [(__CFString *)v106 mutableCopy];
                _bridgeAnyObjectToAny(_:)();

                swift_unknownObjectRelease();
                swift_dynamicCast();
                v110 = *(&v420 + 1);
                v108 = v420;
                break;
              }

              goto LABEL_91;
            case 0x16:
              v116 = [(__CFString *)v106 UTF8String];
              if (!v116)
              {
                goto LABEL_342;
              }

              v117 = String.init(utf8String:)(v116);
              if (!v118)
              {
                __break(1u);
LABEL_342:
                __break(1u);
LABEL_343:
                __break(1u);
                goto LABEL_344;
              }

LABEL_91:
              v108 = v117;
              v110 = v118;

              break;
            case 2:
              MEMORY[0x1EEE9AC00](v107);
              v391 = v106;
              v108 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v110 = v109;

              break;
            default:
LABEL_78:
              LOBYTE(v420) = 0;
              v417 = 0;
              LOBYTE(v416[0]) = 0;
              LOBYTE(v414) = 0;
              v111 = __CFStringIsCF();
              if (v111)
              {
                v112 = v417;
                if (!v417)
                {

LABEL_86:
                  v108 = 0;
                  v110 = 0xE000000000000000;
                  break;
                }

                if (v414 == 1)
                {
                  if (v420)
                  {
                    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
                  }

                  else
                  {
                    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
                  }

                  v119 = String.init<A>(_immortalCocoaString:count:encoding:)();
                  goto LABEL_107;
                }

                if ((v416[0] & 1) == 0)
                {
                  goto LABEL_106;
                }

                if (v420 == 1)
                {
                  MEMORY[0x1EEE9AC00](v111);
                  v389 = v106;
                  v390 = &v417;
                  LODWORD(v391) = 1536;
                  v392 = v112;
                }

                else
                {
                  v121 = [(__CFString *)v106 lengthOfBytesUsingEncoding:4];
                  MEMORY[0x1EEE9AC00](v121);
                  v389 = v106;
                  v390 = &v417;
                  LODWORD(v391) = 134217984;
                  v392 = v122;
                }

                v123 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v110 = v124;
                v125 = HIBYTE(v124) & 0xF;
                if ((v124 & 0x2000000000000000) == 0)
                {
                  v125 = v123 & 0xFFFFFFFFFFFFLL;
                }

                if (!v125)
                {

LABEL_106:
                  v119 = String.init(_cocoaString:)();
LABEL_107:
                  v108 = v119;
                  v110 = v120;
                  break;
                }

                v108 = v123;
              }

              else
              {
                v113 = v106;
                v114 = String.init(_nativeStorage:)();
                if (!v115)
                {
                  v417 = [(__CFString *)v113 length];
                  if (v417)
                  {
                    goto LABEL_106;
                  }

                  goto LABEL_86;
                }

                v108 = v114;
                v110 = v115;
              }

              break;
          }

          if (v108 == static String._unconditionallyBridgeFromObjectiveC(_:)(v413) && v110 == v126)
          {

            goto LABEL_116;
          }

          v127 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v127)
          {

LABEL_116:
            a3 = v402;
            a7 = v409;
LABEL_117:
            swift_setDeallocating();
            outlined destroy of NSURLResourceKey(v406);
            swift_deallocClassInstance();
            v56 = (a7[18].__pn_.__r_.__value_.__l.__data_)(v400, a7);

            _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo16NSURLResourceKeya_ShyAEGTt0g5(v131);
            type metadata accessor for NSURLResourceKey(0);
            v133 = v132;
            v134 = _ContiguousArrayBuffer._asCocoaArray()();
            v417 = 0;
            v135 = [v56 resourceValuesForKeys:v134 error:&v417];

            swift_unknownObjectRelease();
            v136 = v417;
            if (!v135)
            {
              v170 = v417;

              if (!v170)
              {
                goto LABEL_144;
              }

              goto LABEL_142;
            }

            v394 = v133;
            v417 = 0;
            v137 = v136;
            _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo16NSURLResourceKeya_ypTt1g5(v135, &v417);
            v398 = v417;
            if (v417)
            {

              v138 = swift_allocObject();
              v139 = v395;
              v138[4] = v395;
              v406 = v138 + 4;
              v140 = *MEMORY[0x1E695DE10];
              v141 = *MEMORY[0x1E695DE18];
              v138[5] = *MEMORY[0x1E695DE10];
              v138[6] = v141;
              v397 = v138;
              v142 = static _SetStorage.allocate(capacity:)();
              *&v413 = v142 + 56;
              v396 = v139;
              v143 = v140;
              v144 = v141;
              v145 = 0;
              while (1)
              {
                v146 = v406[v145];
                static String._unconditionallyBridgeFromObjectiveC(_:)(v146);
                Hasher.init(_seed:)();
                v412 = v146;
                String.hash(into:)();
                v147 = Hasher._finalize()();

                v148 = -1 << v142[32];
                v149 = v147 & ~v148;
                v150 = v149 >> 6;
                v151 = *(v413 + 8 * (v149 >> 6));
                v152 = 1 << v149;
                if (((1 << v149) & v151) == 0)
                {
                  goto LABEL_132;
                }

                v408 = v145;
                v153 = v142;
                v154 = ~v148;
                do
                {
                  v155 = static String._unconditionallyBridgeFromObjectiveC(_:)(*(v153[6] + 8 * v149));
                  v157 = v156;
                  if (v155 == static String._unconditionallyBridgeFromObjectiveC(_:)(v146) && v157 == v158)
                  {

LABEL_121:
                    v142 = v153;
                    v145 = v408;
                    a7 = v409;
                    goto LABEL_122;
                  }

                  v160 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v160)
                  {

                    goto LABEL_121;
                  }

                  v149 = (v149 + 1) & v154;
                  v150 = v149 >> 6;
                  v151 = *(v413 + 8 * (v149 >> 6));
                  v152 = 1 << v149;
                }

                while (((1 << v149) & v151) != 0);
                v142 = v153;
                v145 = v408;
                a7 = v409;
LABEL_132:
                *(v413 + 8 * v150) = v152 | v151;
                *(*(v142 + 6) + 8 * v149) = v412;
                v161 = *(v142 + 2);
                v129 = __OFADD__(v161, 1);
                v162 = v161 + 1;
                if (v129)
                {
                  __break(1u);
LABEL_328:
                  __break(1u);
LABEL_329:
                  __break(1u);
LABEL_330:
                  __break(1u);
LABEL_331:
                  swift_once();
LABEL_280:
                  v347 = _nilObjCError;
LABEL_6:
                  swift_willThrow();
                  return;
                }

                *(v142 + 2) = v162;
LABEL_122:
                v145 = v145 + 1;
                if (v145 == 3)
                {
                  swift_setDeallocating();
                  swift_arrayDestroy();
                  swift_deallocClassInstance();
                  a3 = v402;
                  v56 = (*(v402 + 432))(v399, v402);

                  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSo16NSURLResourceKeya_ShyAEGTt0g5(v163);
                  v164 = _ContiguousArrayBuffer._asCocoaArray()();
                  v417 = 0;
                  v165 = [v56 resourceValuesForKeys:v164 error:&v417];

                  swift_unknownObjectRelease();
                  v166 = v417;
                  if (v165)
                  {
                    v417 = 0;
                    v167 = v166;
                    _sSD10FoundationE26_forceBridgeFromObjectiveC_6resultySo12NSDictionaryC_SDyxq_GSgztFZSo16NSURLResourceKeya_ypTt1g5(v165, &v417);
                    v168 = v417;
                    if (v417)
                    {

                      specialized URLResourceValues._get<A>(_:)(v396, v398, &v417);
                      v169 = v417;
                      v56 = v418;
                      specialized URLResourceValues._get<A>(_:)(v396, v168, &v420);
                      if (v169)
                      {
                        v416[0] = v169;
                        v416[1] = v56;
                        if (v420)
                        {
                          v414 = v420;
                          swift_unknownObjectRetain();
                          LODWORD(v56) = static URL.== infix(_:_:)(v416, &v414);
                          swift_unknownObjectRelease();
                          swift_unknownObjectRelease();
                          swift_unknownObjectRelease();
                          if ((v56 & 1) == 0)
                          {
                            goto LABEL_155;
                          }

LABEL_148:
                          v417 = v168;
                          v418 = v142;
                          v171 = URLResourceValues.volumeSupportsCasePreservedNames.getter();
                          if (v171 != 2)
                          {
                            if (v171)
                            {
                              *&v420 = v168;
                              *(&v420 + 1) = v142;
                              v172 = URLResourceValues.volumeSupportsCaseSensitiveNames.getter();
                              if (v172 != 2)
                              {
                                v173 = v172;

                                if (v173)
                                {
                                  goto LABEL_9;
                                }

                                goto LABEL_4;
                              }

LABEL_351:
                              __break(1u);
LABEL_352:
                              v417 = 0;
                              v418 = 0xE000000000000000;
                              _StringGuts.grow(_:)(22);

                              v417 = 0xD000000000000014;
                              v418 = 0x80000001814813E0;
                              LODWORD(v420) = v56;
LABEL_354:
                              v387 = dispatch thunk of CustomStringConvertible.description.getter();
                              MEMORY[0x1865CB0E0](v387);

                              LODWORD(v392) = 0;
                              v391 = 77;
                              _assertionFailure(_:_:file:line:flags:)();
                              __break(1u);
                              return;
                            }

LABEL_155:

                            goto LABEL_9;
                          }

LABEL_348:
                          __break(1u);
LABEL_349:
                          __break(1u);
                          goto LABEL_350;
                        }

                        v413 = v420;
                      }

                      else
                      {
                        if (!v420)
                        {
                          goto LABEL_148;
                        }

                        v413 = v420;
                      }

                      swift_unknownObjectRelease();
                      swift_unknownObjectRelease();
                      goto LABEL_155;
                    }

LABEL_344:
                    __break(1u);
LABEL_345:
                    __break(1u);
LABEL_346:
                    __break(1u);
LABEL_347:
                    __break(1u);
                    goto LABEL_348;
                  }

                  v170 = v417;

                  if (!v170)
                  {
LABEL_144:
                    if (one-time initialization token for _nilObjCError != -1)
                    {
                      goto LABEL_340;
                    }

                    goto LABEL_145;
                  }

LABEL_142:
                  swift_willThrow();

                  v411 = 0;
                  goto LABEL_9;
                }
              }
            }

            goto LABEL_343;
          }

          v99 = (v99 + 1) & v103;
          v100 = v99 >> 6;
          v101 = *(v96 + 8 * (v99 >> 6));
          v102 = 1 << v99;
          v83 = v401;
          if (((1 << v99) & v101) == 0)
          {
            goto LABEL_112;
          }
        }
      }
    }

    else
    {
      v80 = v71;
      String.init(_nativeStorage:)();
      if (v81 || (v417 = [(__CFString *)v80 length]) == 0)
      {

        goto LABEL_70;
      }
    }

    v83 = v401;
LABEL_62:
    String.init(_cocoaString:)();
    goto LABEL_71;
  }

LABEL_4:
  for (i = 0; ; i = 1)
  {
    rename(v407, v404, v17);
    v248 = v247;
    v249 = MEMORY[0x1865CA7A0]();
    v250 = v249;
    if (v248)
    {
      if (v249 == 2)
      {
        break;
      }
    }

    if (!v248)
    {
      return;
    }

    if (v249 != 18)
    {
      goto LABEL_266;
    }

    v258 = swift_getObjectType();
    data = a7[10].__pn_.__r_.__value_.__l.__data_;
    v412 = v258;
    *&v413 = data;
    v260 = data(v258, a7);
    v262 = v261;
    v263 = swift_getObjectType();
    v264 = *(a3 + 240);
    v407 = v263;
    v408 = v264;
    v402 = a3;
    v406 = (a3 + 240);
    v265 = (v264)(v263, a3);
    v267 = v266;
    LOBYTE(v417) = 1;
    HIDWORD(v417) = 0;
    v418 = v403;
    MEMORY[0x1EEE9AC00](v265);
    v388[2] = v260;
    v388[3] = v262;
    v389 = v268;
    v390 = v267;
    v391 = v269;
    v392 = &v417;
    v270 = v411;
    specialized String.withFileSystemRepresentation<A>(_:)(_s10Foundation15_FileOperationsO010linkOrCopyB033_0F974932CC9FBACA9047618113061023LL_3dst4with8delegateySS_SSSo13NSFileManagerCxtKAA04LinkeF8DelegateAELLRzlFZySPys4Int8VGSgKXEfU_AC04copyB0_2toAG7optionsySS_SSAJSo0mnF7OptionsVtKFZ0fbP0L_V_TG5TA_0, v388, v260, v262);
    if (!v270)
    {

      v348 = (v413)(v412, a7);
      v350 = v349;

      specialized String.withFileSystemRepresentation<A>(_:)(v348, v350, v348, v350, 0);
      v411 = 0;

      return;
    }

    *&v420 = v270;
    v271 = v270;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_319;
    }

    v272 = v416[0];
    v274 = v408;
    v273 = v409;
    v275 = v407;
    if ((i & 1) == 0)
    {
      v276 = (v408)(v407, v402);
      v278 = v277;

      specialized String.withFileSystemRepresentation<A>(_:)(v276, v278, v276, v278, 0);
    }

    v404 = [v272 code];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_yptGMd);
    v279 = swift_allocObject();
    v280 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSFilePath");
    v411 = v272;
    v279[4] = v280;
    v279[5] = v281;
    v282 = (v413)(v412, v273);
    v283 = MEMORY[0x1E69E6158];
    v279[9] = MEMORY[0x1E69E6158];
    v279[6] = v282;
    v279[7] = v284;
    v279[10] = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSDestinationFilePath");
    v279[11] = v285;
    v286 = v274(v275, v402);
    v279[15] = v283;
    v279[12] = v286;
    v279[13] = v287;
    v279[16] = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSUserStringVariant");
    a7 = (v279 + 16);
    v279[21] = v283;
    v279[17] = v288;
    v279[18] = 1702260557;
    v279[19] = 0xE400000000000000;
    v279[22] = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSUnderlyingError");
    v412 = (v279 + 22);
    v279[27] = &type metadata for CocoaError;
    v289 = v411;
    v279[23] = v290;
    v279[24] = v289;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
    v291 = static _DictionaryStorage.allocate(capacity:)();
    *&v413 = v279 + 4;
    outlined init with copy of (String, Any)((v279 + 4), &v417);
    v292 = v417;
    a3 = v418;
    v293 = v289;

    v294 = specialized __RawDictionaryStorage.find<A>(_:)(v292, a3);
    if (v295)
    {
      __break(1u);
LABEL_333:
      __break(1u);
LABEL_334:
      __break(1u);
LABEL_335:
      __break(1u);
LABEL_336:
      __break(1u);
LABEL_337:
      __break(1u);
LABEL_338:
      __break(1u);
      goto LABEL_339;
    }

    v296 = v291 + 8;
    *(v291 + ((v294 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v294;
    v297 = (v291[6] + 16 * v294);
    *v297 = v292;
    v297[1] = a3;
    outlined init with take of Any(v419, (v291[7] + 32 * v294));
    v298 = v291[2];
    v129 = __OFADD__(v298, 1);
    v299 = v298 + 1;
    if (v129)
    {
      goto LABEL_333;
    }

    v291[2] = v299;
    outlined init with copy of (String, Any)((v279 + 10), &v417);
    v300 = v417;
    a3 = v418;
    v301 = specialized __RawDictionaryStorage.find<A>(_:)(v417, v418);
    if (v302)
    {
      goto LABEL_334;
    }

    *(v296 + ((v301 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v301;
    v303 = (v291[6] + 16 * v301);
    *v303 = v300;
    v303[1] = a3;
    outlined init with take of Any(v419, (v291[7] + 32 * v301));
    v304 = v291[2];
    v129 = __OFADD__(v304, 1);
    v305 = v304 + 1;
    if (v129)
    {
      goto LABEL_335;
    }

    v291[2] = v305;
    outlined init with copy of (String, Any)((v279 + 16), &v417);
    v306 = v417;
    a3 = v418;
    v307 = specialized __RawDictionaryStorage.find<A>(_:)(v417, v418);
    if (v308)
    {
      goto LABEL_336;
    }

    a7 = v293;
    *(v296 + ((v307 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v307;
    v309 = (v291[6] + 16 * v307);
    *v309 = v306;
    v309[1] = a3;
    outlined init with take of Any(v419, (v291[7] + 32 * v307));
    v310 = v291[2];
    v129 = __OFADD__(v310, 1);
    v311 = v310 + 1;
    if (v129)
    {
      goto LABEL_337;
    }

    v291[2] = v311;
    outlined init with copy of (String, Any)(v412, &v417);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v312 = v417;
    v313 = v418;
    a3 = specialized __RawDictionaryStorage.find<A>(_:)(v417, v418);
    v315 = v314;

    if (v315)
    {
      goto LABEL_338;
    }

    *(v296 + ((a3 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a3;
    v316 = (v291[6] + 16 * a3);
    *v316 = v312;
    v316[1] = v313;
    outlined init with take of Any(v419, (v291[7] + 32 * a3));
    v317 = v291[2];
    v129 = __OFADD__(v317, 1);
    v318 = v317 + 1;
    if (!v129)
    {
      v291[2] = v318;
      static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain");
      v319 = objc_allocWithZone(NSError);
      v320 = String._bridgeToObjectiveCImpl()();

      v321 = [v319 initWithDomain:v320 code:v404 userInfo:_NativeDictionary.bridged()()];
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      v322 = [v321 domain];
      v323 = static String._unconditionallyBridgeFromObjectiveC(_:)(v322);
      v325 = v324;

      if (v323 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSCocoaErrorDomain") && v325 == v326)
      {
      }

      else
      {
        v380 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v380 & 1) == 0)
        {
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
          __break(1u);
        }
      }

      swift_willThrow();

LABEL_319:
      return;
    }

LABEL_339:
    __break(1u);
LABEL_340:
    swift_once();
LABEL_145:
    swift_willThrow();
    v411 = 0;
LABEL_9:
    v46 = a7[10].__pn_.__r_.__value_.__l.__data_;
    v47 = v400;
    v398 = v46(v400, a7);
    v49 = v48;
    v50 = v46(v47, a7);
    v52 = v51;
    v53 = (*(a3 + 240))(v399, a3);
    v55 = v54;
    LODWORD(v56) = 17;
    if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
    {
      goto LABEL_352;
    }

    LODWORD(v56) = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
    v57 = @"NSPOSIXErrorDomain";
    v58 = v57;
    LODWORD(v413) = v56;
    v412 = v55;
    v408 = v50;
    v406 = v53;
    v400 = v52;
    v401 = v49;
    if (v56)
    {
      v59 = _objc_getTaggedPointerTag(v57);
      switch(v59)
      {
        case 0:
          goto LABEL_36;
        case 0x16:
          v77 = [(__CFString *)v58 UTF8String];
          if (!v77)
          {
            goto LABEL_345;
          }

          String.init(utf8String:)(v77);
          if (!v78)
          {
            __break(1u);
LABEL_36:
            LOWORD(v416[0]) = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (!v79)
            {
              [(__CFString *)v58 mutableCopy];
              _bridgeAnyObjectToAny(_:)();

              swift_unknownObjectRelease();
              swift_dynamicCast();
              goto LABEL_158;
            }
          }

LABEL_67:

          goto LABEL_158;
        case 2:
          MEMORY[0x1EEE9AC00](v59);
          v391 = v58;
          v60 = v411;
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v411 = v60;

          goto LABEL_158;
      }
    }

    LOBYTE(v420) = 0;
    v417 = 0;
    LOBYTE(v416[0]) = 0;
    LOBYTE(v414) = 0;
    v61 = __CFStringIsCF();
    if (!v61)
    {
      v75 = v58;
      String.init(_nativeStorage:)();
      if (v76 || (v417 = [(__CFString *)v75 length]) == 0)
      {

        goto LABEL_158;
      }

LABEL_157:
      String.init(_cocoaString:)();
      goto LABEL_158;
    }

    v62 = v417;
    if (!v417)
    {
      goto LABEL_67;
    }

    if (v414 != 1)
    {
      if (v416[0])
      {
        if (v420 == 1)
        {
          MEMORY[0x1EEE9AC00](v61);
          v389 = v58;
          v390 = &v417;
          LODWORD(v391) = 1536;
          v392 = v62;
        }

        else
        {
          v90 = [(__CFString *)v58 lengthOfBytesUsingEncoding:4];
          MEMORY[0x1EEE9AC00](v90);
          v389 = v58;
          v390 = &v417;
          LODWORD(v391) = 134217984;
          v392 = v91;
        }

        v92 = v411;
        v93 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v411 = v92;
        v95 = HIBYTE(v94) & 0xF;
        if ((v94 & 0x2000000000000000) == 0)
        {
          v95 = v93 & 0xFFFFFFFFFFFFLL;
        }

        if (v95)
        {
          goto LABEL_67;
        }
      }

      goto LABEL_157;
    }

    if (v420)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_158:
    v174 = POSIXErrorCode.rawValue.getter();
    v175 = objc_allocWithZone(NSError);
    v176 = String._bridgeToObjectiveCImpl()();

    v177 = [v175 initWithDomain:v176 code:v174 userInfo:_NativeDictionary.bridged()()];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v178 = v177;
    v179 = [v177 domain];
    if (!v179)
    {
      goto LABEL_172;
    }

    v56 = v179;
    v180 = _objc_isTaggedPointer(v179);
    v181 = v56;
    v182 = v181;
    if ((v180 & 1) == 0)
    {
      goto LABEL_164;
    }

    v183 = _objc_getTaggedPointerTag(v181);
    switch(v183)
    {
      case 0:
        goto LABEL_176;
      case 0x16:
        v193 = [(__CFString *)v182 UTF8String];
        if (!v193)
        {
          goto LABEL_347;
        }

        v194 = String.init(utf8String:)(v193);
        if (v195)
        {
          goto LABEL_177;
        }

        __break(1u);
LABEL_176:
        LOWORD(v416[0]) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v194 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v195)
        {
LABEL_177:
          v56 = v194;
          v187 = v195;
          goto LABEL_178;
        }

        [(__CFString *)v182 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v187 = *(&v420 + 1);
        v56 = v420;
LABEL_196:

        break;
      case 2:
        MEMORY[0x1EEE9AC00](v183);
        v391 = v182;
        v184 = v411;
        v185 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v187 = v186;
        v411 = v184;

        v56 = v185;
        break;
      default:
LABEL_164:
        LOBYTE(v420) = 0;
        v417 = 0;
        LOBYTE(v416[0]) = 0;
        LOBYTE(v414) = 0;
        v188 = __CFStringIsCF();
        if (v188)
        {
          v189 = v417;
          if (v417)
          {
            if (v414 == 1)
            {
              if (v420)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v196 = String.init<A>(_immortalCocoaString:count:encoding:)();
            }

            else
            {
              if (v416[0])
              {
                if (v420 == 1)
                {
                  MEMORY[0x1EEE9AC00](v188);
                  v389 = v182;
                  v390 = &v417;
                  LODWORD(v391) = 1536;
                  v392 = v189;
                }

                else
                {
                  v198 = [(__CFString *)v182 lengthOfBytesUsingEncoding:4];
                  MEMORY[0x1EEE9AC00](v198);
                  v389 = v182;
                  v390 = &v417;
                  LODWORD(v391) = 134217984;
                  v392 = v199;
                }

                v200 = v411;
                v201 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v187 = v202;
                v411 = v200;
                v203 = HIBYTE(v202) & 0xF;
                if ((v202 & 0x2000000000000000) == 0)
                {
                  v203 = v201 & 0xFFFFFFFFFFFFLL;
                }

                if (v203)
                {
                  v56 = v201;
LABEL_178:

                  goto LABEL_196;
                }
              }

LABEL_194:
              v196 = String.init(_cocoaString:)();
            }

            v56 = v196;
            v187 = v197;
            goto LABEL_196;
          }

          goto LABEL_172;
        }

        v190 = v182;
        v191 = String.init(_nativeStorage:)();
        if (!v192)
        {
          v417 = [(__CFString *)v190 length];
          if (v417)
          {
            goto LABEL_194;
          }

LABEL_172:
          v56 = 0;
          v187 = 0xE000000000000000;
          break;
        }

        v56 = v191;
        v187 = v192;

        break;
    }

    v204 = v58;
    v205 = v204;
    if (!v413)
    {
      goto LABEL_202;
    }

    v206 = _objc_getTaggedPointerTag(v204);
    switch(v206)
    {
      case 0:
        goto LABEL_214;
      case 0x16:
        v216 = [(__CFString *)v205 UTF8String];
        if (!v216)
        {
          goto LABEL_346;
        }

        v217 = String.init(utf8String:)(v216);
        if (!v218)
        {
          __break(1u);
LABEL_214:
          LOWORD(v416[0]) = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v217 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v218)
          {
            [(__CFString *)v205 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v210 = *(&v420 + 1);
            v208 = v420;
            break;
          }
        }

        v208 = v217;
        v210 = v218;

        break;
      case 2:
        MEMORY[0x1EEE9AC00](v206);
        v391 = v205;
        v207 = v411;
        v208 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v210 = v209;
        v411 = v207;

        break;
      default:
LABEL_202:
        LOBYTE(v420) = 0;
        v417 = 0;
        LOBYTE(v416[0]) = 0;
        LOBYTE(v414) = 0;
        v211 = __CFStringIsCF();
        if (v211)
        {
          v212 = v417;
          if (!v417)
          {

LABEL_210:
            v208 = 0;
            v210 = 0xE000000000000000;
            break;
          }

          if (v414 == 1)
          {
            if (v420)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v219 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_231;
          }

          if ((v416[0] & 1) == 0)
          {
            goto LABEL_230;
          }

          if (v420 == 1)
          {
            MEMORY[0x1EEE9AC00](v211);
            v389 = v205;
            v390 = &v417;
            LODWORD(v391) = 1536;
            v392 = v212;
          }

          else
          {
            v221 = [(__CFString *)v205 lengthOfBytesUsingEncoding:4];
            MEMORY[0x1EEE9AC00](v221);
            v389 = v205;
            v390 = &v417;
            LODWORD(v391) = 134217984;
            v392 = v222;
          }

          v223 = v411;
          v224 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v210 = v225;
          v411 = v223;
          v226 = HIBYTE(v225) & 0xF;
          if ((v225 & 0x2000000000000000) == 0)
          {
            v226 = v224 & 0xFFFFFFFFFFFFLL;
          }

          if (!v226)
          {

LABEL_230:
            v219 = String.init(_cocoaString:)();
LABEL_231:
            v208 = v219;
            v210 = v220;
            break;
          }

          v208 = v224;
        }

        else
        {
          v213 = v205;
          v214 = String.init(_nativeStorage:)();
          if (!v215)
          {
            v417 = [(__CFString *)v213 length];
            if (v417)
            {
              goto LABEL_230;
            }

            goto LABEL_210;
          }

          v208 = v214;
          v210 = v215;
        }

        break;
    }

    if (v56 == v208 && v187 == v210)
    {
    }

    else
    {
      v227 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v227 & 1) == 0)
      {
        goto LABEL_328;
      }
    }

    v228 = v401;

    URL.init(_fileManagerFailableFileURLWithPath:)(v398, v228, &v417);

    v229 = v417;
    v230 = v418;
    *&v413 = String._bridgeToObjectiveCImpl()();

    if (v229)
    {
      v231 = swift_getObjectType();
      v401 = v230[54](v231, v230);
      swift_unknownObjectRelease();
    }

    else
    {
      v401 = 0;
    }

    *&v420 = v178;
    lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
    v232 = v178;
    v233 = _getErrorEmbeddedNSError<A>(_:)();

    v399 = v232;
    if (v233)
    {
    }

    else
    {
      swift_allocError();
      *v234 = v232;
    }

    v235 = objc_opt_self();
    v236 = _swift_stdlib_bridgeErrorToNSError();
    v237 = String._bridgeToObjectiveCImpl()();
    v238 = String._bridgeToObjectiveCImpl()();
    v391 = String._bridgeToObjectiveCImpl()();
    v239 = v235;
    v240 = v401;
    v408 = [v239 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    v241 = v408;
    v242 = String.init(cString:)();
    v244 = v243;
    v245 = String.init(cString:)();
    LOBYTE(v242) = NSFileManager._shouldProceedAfter(error:copyingItemAtPath:to:)(v241, v242, v244, v245, v246, &selRef_fileManager_shouldProceedAfterError_movingItemAtURL_toURL_, &selRef_fileManager_shouldProceedAfterError_movingItemAtPath_toPath_);

    if ((v242 & 1) == 0)
    {
      goto LABEL_6;
    }

    a3 = v402;
    a7 = v409;
  }

  LOBYTE(v420) = 0;
  v251 = swift_getObjectType();
  v252 = (a7[18].__pn_.__r_.__value_.__l.__data_)(v251, a7);
  v253 = swift_getObjectType();
  v254 = (*(a3 + 432))(v253, a3);
  v417 = 0;
  v255 = [v403 _handleFaultedOutCloudDocFromSource_toDestination_handled_error_];

  if (!v255)
  {
    if (v417)
    {
      v417;
      goto LABEL_6;
    }

    if (one-time initialization token for _nilObjCError != -1)
    {
      goto LABEL_331;
    }

    goto LABEL_280;
  }

  v256 = v420;
  v257 = v417;
  if (v256)
  {
    return;
  }

LABEL_266:
  v327 = swift_getObjectType();
  v328 = a7 + 10;
  v329 = a7[10].__pn_.__r_.__value_.__l.__data_;
  v330 = (v329)(v327, a7);
  v331 = a7;
  v332 = v330;
  *&v413 = v333;
  v406 = v327;
  v407 = v328;
  v404 = v329;
  v334 = (v329)(v327, v331);
  v408 = v335;
  v336 = swift_getObjectType();
  v399 = *(a3 + 240);
  v400 = v336;
  v337 = (v399)(v336, a3);
  v401 = a3 + 240;
  v402 = a3;
  v412 = v338;
  v398 = v337;
  if (v250 <= 27)
  {
    if (v250 > 12)
    {
      if (v250 != 13)
      {
        if (v250 != 17)
        {
          goto LABEL_291;
        }

        v396 = v332;
        v346 = 516;
        goto LABEL_292;
      }
    }

    else if (v250 != 1)
    {
      if (v250 != 2)
      {
        goto LABEL_291;
      }

      v396 = v332;
      v346 = 4;
      goto LABEL_292;
    }

    v396 = v332;
    v346 = 513;
    goto LABEL_292;
  }

  if (v250 <= 62)
  {
    if (v250 == 28)
    {
LABEL_289:
      v396 = v332;
      v346 = 640;
      goto LABEL_292;
    }

    if (v250 != 30)
    {
      goto LABEL_291;
    }

    v396 = v332;
    v346 = 642;
LABEL_292:
    v397 = v346;
    v344 = v413;
    goto LABEL_293;
  }

  if (v250 == 102)
  {
    v351 = 0;
    v397 = 512;
    v344 = v413;
    goto LABEL_299;
  }

  if (v250 == 69)
  {
    goto LABEL_289;
  }

  if (v250 != 63)
  {
LABEL_291:
    v396 = v332;
    v346 = 512;
    goto LABEL_292;
  }

  v339 = v337;
  Path = String._lastPathComponent.getter(v337, v338);
  v341 = v411;
  v343 = specialized String.withFileSystemRepresentation<A>(_:)(Path, v342);
  v344 = v412;

  v345 = specialized String.withFileSystemRepresentation<A>(_:)(v339, v344);
  v411 = v341;
  if (v343 <= 255)
  {
    if (v345 <= 1024)
    {
      v381 = v334;
    }

    else
    {
      v381 = v339;
    }

    if (v345 <= 1024)
    {
      v344 = v408;
    }

    v396 = v381;
    v397 = 514;
  }

  else
  {
    v396 = v339;
    v397 = 514;
  }

LABEL_293:
  if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
  {
    v417 = 0;
    v418 = 0xE000000000000000;
    _StringGuts.grow(_:)(22);

    v417 = 0xD000000000000014;
    v418 = 0x80000001814813E0;
    LODWORD(v420) = v250;
    goto LABEL_354;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain");
  v352 = POSIXErrorCode.rawValue.getter();
  v353 = objc_allocWithZone(NSError);
  v354 = String._bridgeToObjectiveCImpl()();

  v351 = [v353 initWithDomain:v354 code:v352 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v355 = [v351 domain];
  v356 = static String._unconditionallyBridgeFromObjectiveC(_:)(v355);
  v358 = v357;

  if (v356 == static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSPOSIXErrorDomain") && v358 == v359)
  {
  }

  else
  {
    v360 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v360 & 1) == 0)
    {
      goto LABEL_329;
    }
  }

  v332 = v396;
LABEL_299:

  URL.init(_fileManagerFailableFileURLWithPath:)(v332, v344, &v417);

  v361 = v417;
  v362 = v418;
  v396 = String._bridgeToObjectiveCImpl()();
  if (v361)
  {
    v363 = swift_getObjectType();
    v394 = v362[54](v363, v362);
    swift_unknownObjectRelease();
    if (v351)
    {
      goto LABEL_301;
    }

LABEL_304:
    v395 = v351;
    v393 = 0;
  }

  else
  {
    v394 = 0;
    if (!v351)
    {
      goto LABEL_304;
    }

LABEL_301:
    *&v420 = v351;
    lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
    v364 = v351;
    v365 = _getErrorEmbeddedNSError<A>(_:)();

    if (v365)
    {
    }

    else
    {
      swift_allocError();
      *v366 = v364;
    }

    v395 = v364;
    v393 = _swift_stdlib_bridgeErrorToNSError();
  }

  v367 = objc_opt_self();
  v368 = String._bridgeToObjectiveCImpl()();
  v369 = String._bridgeToObjectiveCImpl()();
  v391 = String._bridgeToObjectiveCImpl()();
  v370 = v367;
  v371 = v393;
  v372 = v394;
  v398 = [v370 _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];

  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  v373 = v398;
  v374 = (v404)(v406, v409);
  v376 = v375;
  v377 = (v399)(v400, v402);
  v379 = NSFileManager._shouldProceedAfter(error:copyingItemAtPath:to:)(v373, v374, v376, v377, v378, &selRef_fileManager_shouldProceedAfterError_movingItemAtURL_toURL_, &selRef_fileManager_shouldProceedAfterError_movingItemAtPath_toPath_);

  if ((v379 & 1) == 0)
  {
    goto LABEL_6;
  }
}

uint64_t NSFileManager._shouldCopyItemAtPath(_:to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5, SEL *a6)
{
  v9 = v6;
  v14 = [v9 _safeDelegate];
  if (!v14)
  {
    return 1;
  }

  v15 = v14;
  if (([v14 respondsToSelector_] & 1) == 0)
  {
    if ([v15 respondsToSelector_])
    {
      v19 = String._bridgeToObjectiveCImpl()();
      v20 = String._bridgeToObjectiveCImpl()();
      v21 = [swift_unknownObjectRetain() *a6];
      swift_unknownObjectRelease_n();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      return v21;
    }

    swift_unknownObjectRelease();
    return 1;
  }

  if (one-time initialization token for compatibility2 != -1)
  {
    swift_once();
  }

  v16 = static URL.compatibility2;
  v36 = a3;
  v37 = a5;
  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v17 = type metadata accessor for _BridgedURL();
    v18 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v17 = type metadata accessor for _SwiftURL();
    v18 = &protocol witness table for _SwiftURL;
  }

  v23 = v18[8];

  v23(a1, a2, v17, v18);
  (v18[56])(v17, v18);
  v25 = v24;
  swift_unknownObjectRelease();
  if ((v16 & 1) != 0 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v26 = type metadata accessor for _BridgedURL();
    v27 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v26 = type metadata accessor for _SwiftURL();
    v27 = &protocol witness table for _SwiftURL;
  }

  v28 = v27[8];

  v28(v36, a4, v26, v27);
  (v27[56])(v26, v27);
  v30 = v29;
  swift_unknownObjectRelease();
  ObjectType = swift_getObjectType();
  v32 = (*(v25 + 432))(ObjectType, v25);
  v33 = swift_getObjectType();
  v34 = (*(v30 + 432))(v33, v30);
  v35 = [v15 *v37];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v35;
}

uint64_t getObjectValue(uint64_t a1, void *a2, __CFString *a3, CFIndex *a4, int a5, NSError **a6)
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 40));
  if (_localeNotificationCount() != *(a1 + 24))
  {
    [a1 _clearFormatter];
  }

  [a1 _regenerateFormatterIfAbsent];
  if (a5)
  {
    v12 = _CFExecutableLinkedOnOrAfter() != 0;
    if (a4)
    {
LABEL_5:
      v14 = *a4;
      v13 = a4[1];
      goto LABEL_8;
    }
  }

  else
  {
    v12 = 0;
    if (a4)
    {
      goto LABEL_5;
    }
  }

  v13 = [(__CFString *)a3 length];
  v14 = 0;
LABEL_8:
  rangep.location = v14;
  rangep.length = v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = CFDateFormatterCreateDateFromString(*MEMORY[0x1E695E4A8], v15, a3, &rangep);
  }

  else
  {
    v16 = 0;
  }

  os_unfair_lock_unlock((a1 + 40));
  v17 = v16;
  v18 = [(__CFString *)a3 substringFromIndex:rangep.length + rangep.location];
  if (v16 && (!v12 || [+[NSCharacterSet isSupersetOfSet:"isSupersetOfSet:"])
  {
    if (a4)
    {
      *a4 = rangep;
    }

    if (a2)
    {
      if ([a1 generatesCalendarDates])
      {
        [(__CFDate *)v16 timeIntervalSinceReferenceDate];
        v19 = [NSCalendarDate dateWithTimeIntervalSinceReferenceDate:?];
        -[NSCalendarDate setTimeZone:](v19, "setTimeZone:", [a1 timeZone]);
        [(NSCalendarDate *)v19 setCalendarFormat:&stru_1EEEFDF90];
        *a2 = v19;
      }

      else
      {
        *a2 = v16;
      }
    }

    return 1;
  }

  else if (a6)
  {
    v20 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 2048, [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a3, @"NSInvalidValue", 0}]);
    result = 0;
    *a6 = v20;
  }

  else
  {
    return 0;
  }

  return result;
}

uint64_t getObjectValue_0(uint64_t a1, void *a2, __CFString *a3, CFIndex *a4, int a5, void *a6)
{
  v66 = *MEMORY[0x1E69E9840];
  v12 = &OBJC_IVAR___NSConcreteMutableData__length;
  [*(a1 + 40) lock];
  if (-[__CFString isEqualToString:](a3, "isEqualToString:", [a1 nilSymbol]))
  {
    if (a2)
    {
      *a2 = 0;
    }

    goto LABEL_67;
  }

  if (-[__CFString isEqualToString:](a3, "isEqualToString:", [a1 negativeInfinitySymbol]))
  {
    if (a2)
    {
      if ([a1 generatesDecimalNumbers])
      {
        v13 = +[NSDecimalNumber minimumDecimalNumber];
LABEL_66:
        *a2 = v13;
        goto LABEL_67;
      }

      v20 = MEMORY[0x1E695E878];
      goto LABEL_65;
    }

    goto LABEL_67;
  }

  if (!-[__CFString isEqualToString:](a3, "isEqualToString:", [a1 positiveInfinitySymbol]))
  {
    v60 = a6;
    v14 = [a1 decimalSeparator];
    v15 = [a1 groupingSeparator];
    if ([v15 length] && objc_msgSend(v15, "characterAtIndex:", 0) == 160 || objc_msgSend(v14, "length") && objc_msgSend(v14, "characterAtIndex:", 0) == 160)
    {
      v16 = [NSCharacterSet characterSetWithCharactersInString:@"0123456789"];
      v17 = [(__CFString *)a3 rangeOfCharacterFromSet:v16 options:2];
      v18 = [(__CFString *)a3 rangeOfCharacterFromSet:v16 options:6];
      if (v17 != 0x7FFFFFFFFFFFFFFFLL && v18 != 0x7FFFFFFFFFFFFFFFLL)
      {
        chars[0] = 160;
        a3 = [(__CFString *)a3 stringByReplacingOccurrencesOfString:@" " withString:[NSString stringWithCharacters:1 length:?], 2, v17, v18 - v17 + 1];
      }
    }

    if (_localeNotificationCount() != *(a1 + 24))
    {
      [a1 _clearFormatter];
    }

    if (a5)
    {
      v19 = _CFExecutableLinkedOnOrAfter() == 0;
    }

    else
    {
      v19 = 1;
    }

    v21 = [(__CFString *)a3 length];
    v57 = v21;
    if (a4)
    {
      v22 = *a4;
      v23 = a4[1];
    }

    else
    {
      v22 = 0;
      v23 = v21;
    }

    rangep.location = v22;
    rangep.length = v23;
    v24 = *(a1 + 16);
    v25 = MEMORY[0x1E695E4A8];
    if (v24 || ([a1 _regenerateFormatter], (v24 = *(a1 + 16)) != 0))
    {
      v24 = CFNumberFormatterCreateNumberFromString(*v25, v24, a3, &rangep, [a1 allowsFloats] ^ 1);
    }

    v26 = v24;
    v27 = [(__CFString *)a3 substringFromIndex:rangep.length + rangep.location];
    v58 = v19;
    if (v24 == 0 || v19)
    {
      if (v24)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v28 = v27;
      v29 = +[NSCharacterSet whitespaceCharacterSet];
      v30 = [NSCharacterSet characterSetWithCharactersInString:v28];
      v31 = v29;
      v12 = &OBJC_IVAR___NSConcreteMutableData__length;
      if ([(NSCharacterSet *)v31 isSupersetOfSet:v30])
      {
        goto LABEL_35;
      }
    }

    v38 = *(a1 + 16);
    if (!v38)
    {
      goto LABEL_82;
    }

    Format = CFNumberFormatterGetFormat(v38);
    if (!Format)
    {
      goto LABEL_82;
    }

    v40 = Format;
    allocator = *v25;
    theString = CFStringCreateMutable(*v25, 0);
    Length = CFStringGetLength(v40);
    if (Length >= 1)
    {
      v42 = Length;
      v43 = 0;
      v44 = 0;
      while (1)
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(v40, v43);
        chars[0] = CharacterAtIndex;
        if ((CharacterAtIndex - 35) > 0x1D)
        {
          break;
        }

        if (((1 << (CharacterAtIndex - 35)) & 0x207FED05) != 0)
        {
          goto LABEL_49;
        }

        if (CharacterAtIndex != 39)
        {
          break;
        }

        v44 = !v44;
LABEL_52:
        if (v42 == ++v43)
        {
          goto LABEL_69;
        }
      }

      if (CharacterAtIndex != 164 && CharacterAtIndex != 8240)
      {
        goto LABEL_52;
      }

LABEL_49:
      if (v44)
      {
        v44 = 1;
      }

      else
      {
        CFStringAppendCharacters(theString, chars, 1);
        v44 = 0;
      }

      goto LABEL_52;
    }

LABEL_69:
    if (CFEqual(theString, v40))
    {
      CFRelease(theString);
      v12 = &OBJC_IVAR___NSConcreteMutableData__length;
      goto LABEL_82;
    }

    CFRetain(v40);
    CFNumberFormatterSetFormat(*(a1 + 16), theString);
    v12 = &OBJC_IVAR___NSConcreteMutableData__length;
    if (a4)
    {
      v49 = *a4;
      v50 = a4[1];
    }

    else
    {
      v49 = 0;
      v50 = v57;
    }

    rangep.location = v49;
    rangep.length = v50;
    v24 = CFNumberFormatterCreateNumberFromString(allocator, *(a1 + 16), a3, &rangep, [a1 allowsFloats] ^ 1);
    v51 = v24;
    v52 = [(__CFString *)a3 substringFromIndex:rangep.length + rangep.location];
    v53 = v24 == 0;
    if (v24 != 0 && !v58)
    {
      v53 = ![+[NSCharacterSet whitespaceCharacterSet](NSCharacterSet isSupersetOfSet:"isSupersetOfSet:", [NSCharacterSet characterSetWithCharactersInString:v52]];
    }

    CFNumberFormatterSetFormat(*(a1 + 16), v40);
    CFRelease(v40);
    CFRelease(theString);
    if (v53)
    {
LABEL_82:
      v33 = v60;
      if (v60)
      {
        v48 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a3, @"NSInvalidValue", 0, v54, v55}];
        goto LABEL_84;
      }

LABEL_85:
      v46 = 0;
      goto LABEL_86;
    }

LABEL_35:
    if (a4)
    {
      *a4 = rangep;
    }

    v32 = [a1 minimum];
    v33 = v60;
    if (v32 && (v34 = v32, [(__CFNumberFormatter *)v24 compare:v32]== -1))
    {
      if (!v60)
      {
        goto LABEL_85;
      }

      v36 = MEMORY[0x1E695DF20];
      v37 = NSMinimumValidValueErrorKey;
    }

    else
    {
      v35 = [a1 maximum];
      if (!v35 || (v34 = v35, [(__CFNumberFormatter *)v24 compare:v35]!= 1))
      {
        if (a2)
        {
          if ([a1 generatesDecimalNumbers])
          {
            memset(chars, 0, sizeof(chars));
            v65 = 0;
            if (v24)
            {
              [(__CFNumberFormatter *)v24 decimalValue];
            }

            v62 = *chars;
            v63 = v65;
            *a2 = [NSDecimalNumber decimalNumberWithDecimal:&v62];
          }

          else
          {
            *a2 = v24;
          }
        }

        v46 = 1;
        goto LABEL_86;
      }

      if (!v60)
      {
        goto LABEL_85;
      }

      v36 = MEMORY[0x1E695DF20];
      v37 = NSMaximumValidValueErrorKey;
    }

    v48 = [v36 dictionaryWithObjectsAndKeys:{v34, *v37, v24, @"NSInvalidValue", 0}];
LABEL_84:
    v46 = 0;
    *v33 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:2048 userInfo:v48];
LABEL_86:
    [*(a1 + v12[207]) unlock];
    return v46;
  }

  if (a2)
  {
    if ([a1 generatesDecimalNumbers])
    {
      v13 = +[NSDecimalNumber maximumDecimalNumber];
      goto LABEL_66;
    }

    v20 = MEMORY[0x1E695E880];
LABEL_65:
    v13 = *v20;
    goto LABEL_66;
  }

LABEL_67:
  [*(a1 + 40) unlock];
  return 1;
}

uint64_t closure #1 in _NSSwiftURLComponents._setScheme(_:)(__int128 *a1, unint64_t a2, unint64_t a3)
{
  v106 = *MEMORY[0x1E69E9840];
  *(a1 + 4) = 0;
  if (!a3)
  {
    goto LABEL_10;
  }

  v6 = specialized Collection.first.getter(a2, a3);
  if ((v6 & 0x100) != 0 || v6 < 0x41u)
  {
LABEL_67:
    lazy protocol witness table accessor for type URLComponents.InvalidComponentError and conformance URLComponents.InvalidComponentError();
    swift_allocError();
    *v76 = 0;
    return swift_willThrow();
  }

  if ((a3 & 0x1000000000000000) != 0)
  {
    v95 = a2;
    v96 = a3;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v71 = String._bridgeToObjectiveCImpl()();

    v72 = [v71 _fastCharacterContents];
    v73 = v71;
    if (v72)
    {
      v95 = a2;
      v96 = a3;
      StringProtocol._ephemeralString.getter();
      v74 = String._bridgeToObjectiveCImpl()();

      v75 = [v74 length];
      swift_unknownObjectRelease();
      if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v72, v75, 1u, 0))
      {
        goto LABEL_10;
      }
    }

    else if (specialized Sequence.allSatisfy(_:)(a2, a3, 1))
    {
      goto LABEL_10;
    }

    goto LABEL_67;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a3) & 0xF;
    v95 = a2;
    v96 = a3 & 0xFFFFFFFFFFFFFFLL;
    v7 = &v95;
  }

  else if ((a2 & 0x1000000000000000) != 0)
  {
    v7 = ((a3 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v8 = a2 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v7 = _StringObject.sharedUTF8.getter();
  }

  if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v7, v8, 1u, 0))
  {
    goto LABEL_67;
  }

LABEL_10:
  *(a1 + 3) = a2;
  *(a1 + 4) = a3;

  result = *(a1 + 10);
  if (result)
  {
    goto LABEL_37;
  }

  v10 = *a1;
  v11 = *(a1 + 10);
  v12 = *(a1 + 11);
  v13 = *(a1 + 6);
  v14 = *(a1 + 8);
  if (*(a1 + 12) == 1 && v10 && (v10[120] & 1) == 0)
  {
    v15 = String.subscript.getter();
    MEMORY[0x1865CAE80](v15);

    goto LABEL_37;
  }

  if (*(a1 + 96))
  {
    if (*(a1 + 13) && v10 && (v10[144] & 1) == 0)
    {
      v94 = 0;
      v16 = String.subscript.getter();
      if ((v16 ^ v17) >> 14)
      {
        v20 = v16;
        v92 = v17;
        v91 = v18;
        v93 = v19;
        _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v16, v17, v18, v19, 10);
        if ((v21 & 0x100) != 0)
        {
          specialized _parseInteger<A, B>(ascii:radix:)(v20, v92, v91, v93, 10);
        }

        v22 = v21;

        result = v94;
        if ((v22 & 1) == 0 || v13)
        {
          goto LABEL_37;
        }
      }

      else
      {

        result = v94;
        if (v13)
        {
          goto LABEL_37;
        }
      }
    }

    else if (v13)
    {
      goto LABEL_37;
    }

    if (v11 && v10 && (v10[72] & 1) == 0)
    {
      v24 = String.subscript.getter();
      MEMORY[0x1865CAE80](v24);
    }

    else
    {
      if (!v14)
      {
        if (!v12 || !v10 || (v10[96] & 1) != 0)
        {
          return result;
        }

        v23 = String.subscript.getter();
        MEMORY[0x1865CAE80](v23);
      }
    }
  }

LABEL_37:

  v25 = a1[7];
  v103 = a1[6];
  v104 = v25;
  *v105 = a1[8];
  *&v105[10] = *(a1 + 138);
  v26 = a1[3];
  v99 = a1[2];
  v100 = v26;
  v27 = a1[5];
  v101 = a1[4];
  v102 = v27;
  v28 = a1[1];
  v97 = *a1;
  v98 = v28;
  v29 = URLComponents._URLComponents.encodedHost.getter();
  if (!v30)
  {
    return URLComponents._URLComponents.host.setter(v29, v30);
  }

  v31 = v30;
  v32 = HIBYTE(v30) & 0xF;
  v33 = v29 & 0xFFFFFFFFFFFFLL;
  if ((v30 & 0x2000000000000000) != 0)
  {
    v34 = HIBYTE(v30) & 0xF;
  }

  else
  {
    v34 = v29 & 0xFFFFFFFFFFFFLL;
  }

  if (!v34)
  {

    v29 = 0;
    v30 = 0xE000000000000000;
    return URLComponents._URLComponents.host.setter(v29, v30);
  }

  if (v105[24])
  {
    v95 = v29;
    v96 = v30;
    MEMORY[0x1EEE9AC00](v29);
    v89[0] = &v95;
    v89[1] = MEMORY[0x1E69E7CD0];
    v90 = 4;
    v36 = v35;
    v37 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v87, v35, v31);
    if (v38 == 1)
    {
      v39 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v36, v31, MEMORY[0x1E69E7CD0], 4);
      v41 = v40;

      v30 = v41;
LABEL_79:
      v29 = v39;
      return URLComponents._URLComponents.host.setter(v29, v30);
    }

    v39 = v37;
    v47 = v38;

LABEL_78:
    v30 = v47;
    goto LABEL_79;
  }

  if ((v30 & 0x1000000000000000) != 0)
  {
    v42 = v29;

    goto LABEL_54;
  }

  if ((v30 & 0x2000000000000000) != 0)
  {
    v42 = v29;
    v95 = v29;
    v96 = v30 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v29);
    LOBYTE(v90) = 0;
    MEMORY[0x1EEE9AC00](v48);
    v87 = &v95;
    v88 = v32;

    v45 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v95, v32, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v89, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    if (v46 == 1)
    {
      goto LABEL_54;
    }

LABEL_77:
    v39 = v45;
    v47 = v46;
    swift_bridgeObjectRelease_n();
    goto LABEL_78;
  }

  if ((v29 & 0x1000000000000000) != 0)
  {
    v42 = v29;
    v43 = (v30 & 0xFFFFFFFFFFFFFFFLL) + 32;
    goto LABEL_50;
  }

  v42 = v29;
  v29 = _StringObject.sharedUTF8.getter();
  if (v29)
  {
    v43 = v29;
    v33 = v77;
LABEL_50:
    MEMORY[0x1EEE9AC00](v29);
    LOBYTE(v90) = 0;
    MEMORY[0x1EEE9AC00](v44);
    v87 = v43;
    v88 = v33;

    v45 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v43, v33, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v89, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    if (v46 != 1)
    {
      goto LABEL_77;
    }

LABEL_54:
    v95 = v42;
    v96 = v31;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v49 = String._bridgeToObjectiveCImpl()();

    v50 = [v49 _fastCharacterContents];
    v51 = v49;
    if (v50)
    {
      v95 = v42;
      v96 = v31;
      StringProtocol._ephemeralString.getter();
      v52 = String._bridgeToObjectiveCImpl()();

      v53 = [v52 length];
      v54 = swift_unknownObjectRelease();
      MEMORY[0x1EEE9AC00](v54);
      LOBYTE(v90) = 0;
      MEMORY[0x1EEE9AC00](v55);
      v87 = v50;
      v88 = v53;
      v56 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v50);
      v58 = v57;
      swift_bridgeObjectRelease_n();
      v30 = v58;
      v29 = v56;
      return URLComponents._URLComponents.host.setter(v29, v30);
    }

    v95 = v42;
    v96 = v31;

    v59 = String.init<A>(_:)();
    v61 = v59;
    v62 = v60;
    if ((v60 & 0x1000000000000000) != 0)
    {
      v61 = static String._copying(_:)();
      v79 = v78;

      v62 = v79;
      if ((v79 & 0x2000000000000000) == 0)
      {
        goto LABEL_58;
      }
    }

    else if ((v60 & 0x2000000000000000) == 0)
    {
LABEL_58:
      if ((v61 & 0x1000000000000000) != 0)
      {
        v63 = (v62 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_60:
        MEMORY[0x1EEE9AC00](v63);
        LOBYTE(v90) = 0;
        MEMORY[0x1EEE9AC00](v64);
        v87 = v65;
        v88 = v66;
        v68 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v65, v66, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v67, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
        v70 = v69;
LABEL_61:
        swift_bridgeObjectRelease_n();

        v29 = v68;
        v30 = v70;
        return URLComponents._URLComponents.host.setter(v29, v30);
      }

      v63 = _StringObject.sharedUTF8.getter();
      if (v63)
      {
        goto LABEL_60;
      }

      if (one-time initialization token for idnaTranscoder != -1)
      {
        swift_once();
      }

      if (byte_1ED436DC0 == 1)
      {
        v68 = 0;
        v70 = 0;
        goto LABEL_61;
      }

      goto LABEL_92;
    }

    v95 = v61;
    v96 = v62 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v59);
    LOBYTE(v90) = 0;
    MEMORY[0x1EEE9AC00](v80);
    v87 = &v95;
    v88 = v81;
    v83 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v95, v81, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v82, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v85 = v84;

    swift_bridgeObjectRelease_n();
    v30 = v85;
    v29 = v83;
    return URLComponents._URLComponents.host.setter(v29, v30);
  }

  v86 = one-time initialization token for idnaTranscoder;

  if (v86 != -1)
  {
    swift_once();
  }

  if (byte_1ED436DC0)
  {
    v46 = 0;
    v45 = 0;
    goto LABEL_77;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  swift_slowAlloc();
  __break(1u);
LABEL_92:
  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  result = swift_slowAlloc();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in _NSSwiftURLComponents.host.setter()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);

  return URLComponents._URLComponents.host.setter(v2, v1);
}

uint64_t URLComponents._URLComponents.host.setter(unint64_t a1, unint64_t a2)
{
  v112 = *MEMORY[0x1E69E9840];
  *(v2 + 8) = 0;
  *(v2 + 12) = 0;
  *(v2 + 152) = 0;
  if (!a2)
  {

    *(v2 + 72) = a1;
    *(v2 + 80) = 0;
    return result;
  }

  if (_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(a1, a2))
  {

    if (_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(a1, a2))
    {
LABEL_4:

      *(v2 + 72) = a1;
      *(v2 + 80) = a2;
      LOBYTE(v108) = 37;
      MEMORY[0x1EEE9AC00](v7);
      v104 = &v108;
      v8 = specialized Sequence.contains(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, v103, a1, a2);

      v10 = v8 & 1;
LABEL_120:
      *(v2 + 152) = v10;
      return result;
    }
  }

  else if ((a2 & 0x1000000000000000) != 0)
  {
    v3 = v2;
    v108 = a1;
    v109 = a2;
    lazy protocol witness table accessor for type String and conformance String();

    StringProtocol._ephemeralString.getter();
    v61 = String._bridgeToObjectiveCImpl()();

    v62 = [v61 _fastCharacterContents];
    v63 = v61;
    if (v62)
    {
      v108 = a1;
      v109 = a2;
      StringProtocol._ephemeralString.getter();
      v64 = String._bridgeToObjectiveCImpl()();

      v65 = [v64 length];
      swift_unknownObjectRelease();
      v66 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v62, v65, 4u, 1);
    }

    else
    {
      v66 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(a1, a2, 4u, 1);
    }

    v2 = v3;
    if (v66)
    {
      goto LABEL_4;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(a2) & 0xF;
      v108 = a1;
      v109 = a2 & 0xFFFFFFFFFFFFFFLL;
      v11 = &v108;
    }

    else if ((a1 & 0x1000000000000000) != 0)
    {
      v11 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = _StringObject.sharedUTF8.getter();
    }

    v13 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v11, v12, 4u, 1);

    if (v13)
    {
      goto LABEL_4;
    }
  }

  v14 = *(v2 + 32);
  if (v14)
  {
    v15 = *(v2 + 24);
  }

  else
  {
    v15 = 0;
  }

  if (v14)
  {
    v16 = *(v2 + 32);
  }

  else
  {
    v16 = 0;
    if (*(v2 + 9))
    {
      if (*v2 && (*(*v2 + 48) & 1) == 0)
      {
        v3 = *(v2 + 32);
        v17 = String.subscript.getter();
        v15 = MEMORY[0x1865CAE80](v17);
        v16 = v18;
      }

      else
      {
        v15 = 0;
        v16 = 0;
      }
    }
  }

  v19 = _s10Foundation13RFC3986ParserV23shouldPercentEncodeHost_9forSchemeSbx_q_SgtSyRzSyR_r0_lFZSS_SSTt1g5(a1, a2, v15, v16);

  if ((v19 & 1) == 0)
  {
    v25 = a1 & 0xFFFFFFFFFFFFLL;
    if ((a2 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFLL;
    }

    if (!v4)
    {

      v28 = 0;
      v30 = 0xE000000000000000;
      goto LABEL_79;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {

      goto LABEL_46;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v108 = a1;
      v109 = a2 & 0xFFFFFFFFFFFFFFLL;
      MEMORY[0x1EEE9AC00](v20);
      LOBYTE(v104) = 1;
      MEMORY[0x1EEE9AC00](v32);

      v28 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v108, HIBYTE(a2) & 0xF, @nonobjc uidna_nameToASCII_UTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v103, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
      v30 = v33;
      if (v33 != 1)
      {
        goto LABEL_78;
      }

      goto LABEL_46;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v26 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_40:
      MEMORY[0x1EEE9AC00](v20);
      LOBYTE(v104) = 1;
      MEMORY[0x1EEE9AC00](v27);

      v28 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v26, v25, @nonobjc uidna_nameToASCII_UTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v103, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
      v30 = v29;
      if (v29 != 1)
      {
        goto LABEL_78;
      }

LABEL_46:
      v3 = v2;
      v108 = a1;
      v109 = a2;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v34 = String._bridgeToObjectiveCImpl()();

      v35 = [v34 _fastCharacterContents];
      v36 = v34;
      if (v35)
      {

        v108 = a1;
        v109 = a2;
        StringProtocol._ephemeralString.getter();
        v37 = String._bridgeToObjectiveCImpl()();

        [v37 length];
        v38 = swift_unknownObjectRelease();
        MEMORY[0x1EEE9AC00](v38);
        LOBYTE(v104) = 1;
        MEMORY[0x1EEE9AC00](v39);
        v28 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v35);
        v30 = v40;

        if (v30)
        {
          goto LABEL_79;
        }

        goto LABEL_102;
      }

      v108 = a1;
      v109 = a2;

      v50 = String.init<A>(_:)();
      v52 = v51;
      if ((v51 & 0x1000000000000000) == 0)
      {
LABEL_54:
        v2 = v3;
        if ((v52 & 0x2000000000000000) != 0)
        {

          v108 = v50;
          v109 = v52 & 0xFFFFFFFFFFFFFFLL;
          MEMORY[0x1EEE9AC00](v58);
          LOBYTE(v104) = 1;
          MEMORY[0x1EEE9AC00](v59);
          v55 = &v108;
LABEL_59:
          v28 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v55, v56, @nonobjc uidna_nameToASCII_UTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v57, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
          v30 = v60;

          if (v30)
          {
            goto LABEL_79;
          }

          goto LABEL_102;
        }

        if ((v50 & 0x1000000000000000) != 0)
        {
          v53 = (v52 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_57:
          MEMORY[0x1EEE9AC00](v53);
          LOBYTE(v104) = 1;
          MEMORY[0x1EEE9AC00](v54);
          goto LABEL_59;
        }

        v53 = _StringObject.sharedUTF8.getter();
        if (v53)
        {
          v2 = v3;
          goto LABEL_57;
        }

        if (one-time initialization token for idnaTranscoder != -1)
        {
          swift_once();
        }

        if ((byte_1ED436DC0 & 1) == 0)
        {
LABEL_132:
          if (swift_stdlib_isStackAllocationSafe())
          {
            __break(1u);
          }

          result = swift_slowAlloc();
          __break(1u);
          return result;
        }

        v2 = v3;
LABEL_102:
        *(v2 + 153) = 1;
        while (1)
        {

          v82 = _s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(a1, a2);
          if ((v82 & 1) == 0)
          {
            v108 = a1;
            v109 = a2;
            MEMORY[0x1EEE9AC00](v82);
            v104 = &v108;
            v105 = 4;
            goto LABEL_109;
          }

          v83 = _s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(a1, a2);
          if (v83)
          {
            v83 = specialized Collection<>.firstIndex(of:)(37, a1, a2);
            if (v84)
            {
              if (_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(a1, a2))
              {
                goto LABEL_107;
              }

              swift_bridgeObjectRelease_n();
              v21 = 0;
              v31 = 0;
              goto LABEL_119;
            }

            if ((a2 & 0x1000000000000000) == 0)
            {
              v88 = (v4 << 16) - 65532;
LABEL_114:
              if (v88 >> 14 < v83 >> 14)
              {
                __break(1u);
              }

              v89 = v83;
              swift_bridgeObjectRetain_n();
              v106 = v89;
              v43 = String.subscript.getter();
              v45 = v90;
              v47 = v91;
              v49 = v92;
              v108 = v43;
              v109 = v90;
              v110 = v91;
              v111 = v92;
              MEMORY[0x1EEE9AC00](v43);
              v104 = &v108;
              v105 = 8;

              goto LABEL_116;
            }
          }

          else
          {
            __break(1u);
          }

          v101 = v83;
          v102 = String.UTF8View._foreignCount()();
          if (!__OFSUB__(v102, 1))
          {
            v88 = MEMORY[0x1865CB180](15, v102 - 1, a1, a2);
            v83 = v101;
            goto LABEL_114;
          }

LABEL_127:
          __break(1u);
LABEL_128:
          swift_once();
LABEL_76:
          if ((byte_1ED436DC0 & 1) == 0)
          {
            if (swift_stdlib_isStackAllocationSafe())
            {
              __break(1u);
            }

            swift_slowAlloc();
            __break(1u);
            goto LABEL_132;
          }

          v30 = 0;
          v28 = 0;
LABEL_78:
          swift_bridgeObjectRelease_n();
          if (!v30)
          {
            goto LABEL_102;
          }

LABEL_79:
          if (_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v28, v30))
          {
            if (_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v28, v30))
            {
              goto LABEL_81;
            }
          }

          else if ((v30 & 0x1000000000000000) != 0)
          {
            v75 = v2;
            v108 = v28;
            v109 = v30;
            lazy protocol witness table accessor for type String and conformance String();
            StringProtocol._ephemeralString.getter();
            v76 = String._bridgeToObjectiveCImpl()();

            v77 = [v76 _fastCharacterContents];
            v78 = v76;
            if (v77)
            {
              v108 = v28;
              v109 = v30;
              StringProtocol._ephemeralString.getter();
              v79 = String._bridgeToObjectiveCImpl()();

              v80 = [v79 length];
              swift_unknownObjectRelease();
              v81 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v77, v80, 4u, 1);
            }

            else
            {
              v81 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v28, v30, 4u, 1);
            }

            v2 = v75;
            if (v81)
            {
LABEL_81:

              *(v2 + 72) = v28;
              *(v2 + 80) = v30;
              return result;
            }
          }

          else
          {
            if ((v30 & 0x2000000000000000) != 0)
            {
              v74 = HIBYTE(v30) & 0xF;
              v108 = v28;
              v109 = v30 & 0xFFFFFFFFFFFFFFLL;
              v73 = &v108;
            }

            else if ((v28 & 0x1000000000000000) != 0)
            {
              v73 = ((v30 & 0xFFFFFFFFFFFFFFFLL) + 32);
              v74 = v28 & 0xFFFFFFFFFFFFLL;
            }

            else
            {
              v73 = _StringObject.sharedUTF8.getter();
            }

            if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v73, v74, 4u, 1))
            {
              goto LABEL_81;
            }
          }

          *(v2 + 153) = 1;
          if (!v4)
          {

            v21 = 0;
            v31 = 0xE000000000000000;
            goto LABEL_119;
          }
        }
      }

LABEL_74:
      v50 = static String._copying(_:)();
      v71 = v70;

      v52 = v71;
      goto LABEL_54;
    }

LABEL_69:
    v20 = _StringObject.sharedUTF8.getter();
    if (!v20)
    {
      v72 = one-time initialization token for idnaTranscoder;

      if (v72 != -1)
      {
        goto LABEL_128;
      }

      goto LABEL_76;
    }

    v26 = v20;
    v25 = v67;
    goto LABEL_40;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v21 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v21 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {

    v31 = 0xE000000000000000;
    goto LABEL_119;
  }

  v22 = _s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(a1, a2);
  if ((v22 & 1) == 0)
  {
    v108 = a1;
    v109 = a2;
    MEMORY[0x1EEE9AC00](v22);
    v104 = &v108;
    v105 = 4;
LABEL_109:
    v86 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v103, a1, a2);
    if (!v87)
    {
      v86 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(a1, a2, 4u, 0);
    }

    v21 = v86;
    v31 = v87;
    swift_bridgeObjectRelease_n();
LABEL_119:

    *(v2 + 72) = v21;
    *(v2 + 80) = v31;
    v10 = 1;
    goto LABEL_120;
  }

  if ((_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(a1, a2) & 1) == 0)
  {
    __break(1u);
    goto LABEL_69;
  }

  v23 = specialized Collection<>.firstIndex(of:)(37, a1, a2);
  if ((v24 & 1) == 0)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v68 = v23;
      v69 = String.UTF8View._foreignCount()();
      if (__OFSUB__(v69, 1))
      {
        __break(1u);
        goto LABEL_127;
      }

      v41 = MEMORY[0x1865CB180](15, v69 - 1, a1, a2);
      v23 = v68;
    }

    else
    {
      v41 = (v21 << 16) - 65532;
    }

    if (v41 >> 14 >= v23 >> 14)
    {
      v42 = v23;
      swift_bridgeObjectRetain_n();
      v106 = v42;
      v43 = String.subscript.getter();
      v45 = v44;
      v47 = v46;
      v49 = v48;
      v108 = v43;
      v109 = v44;
      v110 = v46;
      v111 = v48;
      MEMORY[0x1EEE9AC00](v43);
      v104 = &v108;
      v105 = 8;

LABEL_116:
      v93 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v103, v43, v45, v47, v49);
      v95 = v94;

      v107 = v2;
      if (!v95)
      {

        v93 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v43, v45, v47, v49, 8u, 0);
        v95 = v96;
      }

      v97 = String.subscript.getter();
      v98 = MEMORY[0x1865CAE80](v97);
      v100 = v99;

      v108 = v98;
      v109 = v100;
      MEMORY[0x1865CB0E0](v93, v95);

      MEMORY[0x1865CB0E0](93, 0xE100000000000000);

      swift_bridgeObjectRelease_n();
      v21 = v108;
      v31 = v109;

      v2 = v107;
      goto LABEL_119;
    }

    __break(1u);
    goto LABEL_74;
  }

  if (_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(a1, a2))
  {
LABEL_107:
    v108 = a1;
    v109 = a2;
    v21 = String.init<A>(_:)();
    v31 = v85;

    goto LABEL_119;
  }

  swift_bridgeObjectRelease_n();

  *(v2 + 72) = 0;
  *(v2 + 80) = 0;
  *(v2 + 153) = 1;
  return result;
}