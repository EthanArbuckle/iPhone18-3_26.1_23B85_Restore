unint64_t closure #1 in static _SwiftURL.fileSystemPath(for:style:compatibility:)(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  if ((specialized BidirectionalCollection.last.getter(a1, a2) & 0x1FF) != 0x2F)
  {
    goto LABEL_9;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v4 = HIBYTE(a2) & 0xF;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v4 >= 2)
    {
      goto LABEL_7;
    }

LABEL_9:

    return v3;
  }

  if (String.UTF8View._foreignCount()() < 2)
  {
    goto LABEL_9;
  }

LABEL_7:
  specialized Collection.dropLast(_:)(1uLL, v3, a2);

  v5 = Substring.init(_:)();
  v3 = MEMORY[0x1865CAE80](v5);

  return v3;
}

uint64_t closure #1 in static _SwiftURL.isDirectory(_:)@<X0>(uint64_t result@<X0>, BOOL *a2@<X8>)
{
  v6 = *MEMORY[0x1E69E9840];
  if (result)
  {
    memset(&v5, 0, sizeof(v5));
    result = lstat(result, &v5);
    if (result)
    {
      *a2 = 0;
    }

    else
    {
      st_mode = v5.st_mode;
      v4 = S_IFMT.getter() & st_mode;
      result = S_IFDIR.getter();
      *a2 = v4 == result;
    }
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

unint64_t specialized BidirectionalCollection.suffix(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v3 = a3;
  v4 = a2;
  v10 = result;
  v8 = HIBYTE(a3) & 0xF;
  v6 = a2 & 0xFFFFFFFFFFFFLL;
  if ((a3 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v9 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v11 = v9 << 16;
  v7 = (a3 >> 60) & ((a2 & 0x800000000000000) == 0);
  if (v7)
  {
    result = v11 | 0xB;
    v5 = -v10;
LABEL_8:
    v12 = (a2 >> 59) & 1;
    goto LABEL_10;
  }

  v5 = -result;
  result = v11 | 7;
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  LOBYTE(v12) = 1;
LABEL_10:
  if ((result & 0xC) != 4 << v12)
  {
    if ((a3 & 0x1000000000000000) == 0)
    {
      goto LABEL_12;
    }

LABEL_27:
    result = String.UTF8View._foreignIndex(_:offsetBy:limitedBy:)();
    if ((v15 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_28;
  }

LABEL_26:
  result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, v4, v3);
  if ((v3 & 0x1000000000000000) != 0)
  {
    goto LABEL_27;
  }

LABEL_12:
  v13 = v5 + (result >> 16);
  if (v5 < 0)
  {
    if ((v13 & 0x8000000000000000) == 0)
    {
LABEL_17:
      if (v9 < v13)
      {
LABEL_31:
        __break(1u);
        return result;
      }

      result = (v13 << 16) | 4;
LABEL_19:
      if ((v3 & 0x2000000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }
  }

  else if (result >> 16 || v13 <= 0)
  {
    goto LABEL_17;
  }

LABEL_28:
  result = 15;
  if ((v3 & 0x2000000000000000) != 0)
  {
LABEL_20:
    v6 = v8;
  }

LABEL_21:
  if (4 * v6 < result >> 14)
  {
    __break(1u);
    goto LABEL_31;
  }

  v14 = 7;
  if (v7)
  {
    v14 = 11;
  }

  return _StringGuts.validateSubscalarRange(_:)(result, v14 | (v6 << 16), v4, v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance _SwiftURL()
{
  Hasher.init(_seed:)();

  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance _SwiftURL()
{

  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _SwiftURL()
{
  Hasher.init(_seed:)();

  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type _SwiftURL and conformance _SwiftURL()
{
  result = lazy protocol witness table cache variable for type _SwiftURL and conformance _SwiftURL;
  if (!lazy protocol witness table cache variable for type _SwiftURL and conformance _SwiftURL)
  {
    type metadata accessor for _SwiftURL();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _SwiftURL and conformance _SwiftURL);
  }

  return result;
}

uint64_t protocol witness for _URLProtocol.fragment.getter in conformance _SwiftURL()
{
  if (*(*(v0 + 16) + 216))
  {
    return 0;
  }

  v2 = String.subscript.getter();
  v3 = MEMORY[0x1865CAE80](v2);

  return v3;
}

unint64_t String.UnicodeScalarView.index(_:offsetBy:)(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  result = _StringGuts.validateInclusiveScalarIndex(_:)(a1, a3, a4);
  if (a2 < 0)
  {
    v14 = 0;
    while (1)
    {
      if (result < 0x10000)
      {
        goto LABEL_38;
      }

      if ((a4 & 0x1000000000000000) == 0)
      {
        break;
      }

      result = String.UnicodeScalarView._foreignIndex(before:)();
LABEL_20:
      if (--v14 <= a2)
      {
        return result;
      }
    }

    v15 = result >> 16;
    if ((a4 & 0x2000000000000000) != 0)
    {
      v22 = a3;
      v23 = a4 & 0xFFFFFFFFFFFFFFLL;
      if ((*(&v22 + v15 - 1) & 0xC0) == 0x80)
      {
        v20 = -2;
        do
        {
          v21 = *(&v22 + v15 + v20--) & 0xC0;
        }

        while (v21 == 128);
        v19 = v20 + 1;
        goto LABEL_35;
      }
    }

    else
    {
      v16 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v16 = _StringObject.sharedUTF8.getter();
      }

      if ((*(v16 + v15 - 1) & 0xC0) == 0x80)
      {
        v17 = -2;
        do
        {
          v18 = *(v16 + v15 + v17--) & 0xC0;
        }

        while (v18 == 128);
        v19 = v17 + 1;
        goto LABEL_35;
      }
    }

    v19 = -1;
LABEL_35:
    result = ((v19 + v15) << 16) | 5;
    goto LABEL_20;
  }

  if (a2)
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(a4) & 0xF;
    }

    else
    {
      v8 = a3 & 0xFFFFFFFFFFFFLL;
    }

    while (1)
    {
      v9 = result >> 16;
      if (result >> 16 >= v8)
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
        if (!--a2)
        {
          return result;
        }
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v22 = a3;
          v23 = a4 & 0xFFFFFFFFFFFFFFLL;
          v11 = *(&v22 + v9);
        }

        else
        {
          v10 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v10 = _StringObject.sharedUTF8.getter();
          }

          v11 = *(v10 + v9);
        }

        v12 = v11;
        v13 = __clz(v11 ^ 0xFF) - 24;
        if (v12 >= 0)
        {
          LOBYTE(v13) = 1;
        }

        result = ((v9 + v13) << 16) | 5;
        if (!--a2)
        {
          return result;
        }
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Substring._slowMakeContiguousUTF8()()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = *v0;
  v4 = String.UnicodeScalarView.distance(from:to:)(0xFuLL, *v0, v1, v2);
  v5 = v0[1];
  v6 = String.UnicodeScalarView.distance(from:to:)(v3, v5, v1, v2);
  v7 = static String._copying(_:)();
  v9 = v8;
  v10 = String.UnicodeScalarView.index(_:offsetBy:)(0xFuLL, v4, v7, v8);
  v11 = String.UnicodeScalarView.index(_:offsetBy:)(v10, v6, v7, v9);

  v12 = v10 | 3;
  if ((v3 & 2) == 0)
  {
    v12 = v10;
  }

  v13 = v11 | 3;
  if ((v5 & 2) == 0)
  {
    v13 = v11;
  }

  if (v13 >> 14 < v12 >> 14)
  {
    __break(1u);
  }

  else
  {
    *v0 = v12;
    v0[1] = v13;
    v0[2] = v7;
    v0[3] = v9;
  }
}

unint64_t _StringGuts.validateInclusiveSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t _StringGuts.scalarAlignSlow(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v7 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          return v7 << 16;
        }

        goto LABEL_14;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 == (a2 & 0xFFFFFFFFFFFFLL))
        {
          goto LABEL_14;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = _StringObject.sharedUTF8.getter();
        v5 = v12;
        if (v12 == v10)
        {
          goto LABEL_14;
        }
      }

      if ((*(v6 + v5) & 0xC0) == 0x80)
      {
        do
        {
          v7 = v5 - 1;
          v8 = *(v6 - 1 + v5--) & 0xC0;
        }

        while (v8 == 128);
        return v7 << 16;
      }

LABEL_14:
      v7 = v5;
      return v7 << 16;
    }

    v9 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v9 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v9)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

uint64_t specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  return specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)(a1, a2, a3, a4, a5, specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:), a6);
}

{
  return specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)(a1, a2, a3, a4, a5, specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:), a6);
}

uint64_t specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(uint64_t, uint64_t, void, void, uint64_t, uint64_t)@<X5>, uint64_t *a7@<X8>)
{
  result = a6(a1, a2, *a3, a3[1], a4, a5);
  if (!v7)
  {
    *a7 = result;
    a7[1] = v10;
  }

  return result;
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, BOOL *a5@<X8>)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if ((result & 1) == 0)
  {
    v9 = 0;
    goto LABEL_6;
  }

  if (!a1)
  {
    __break(1u);
    return result;
  }

  result = closure #1 in static _SwiftURL.isDirectory(_:)(a1, &v10);
  if (!v5)
  {
    v9 = v10;
LABEL_6:
    *a5 = v9;
  }

  return result;
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *(*a5)(uint64_t *__return_ptr, _BYTE *)@<X4>, _BYTE *a6@<X8>)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if (result)
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  result = a5(&v12, v11);
  if (!v6)
  {
    *a6 = v12;
  }

  return result;
}

uint64_t specialized closure #1 in String.withFileSystemRepresentation<A>(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *(*a5)(uint64_t *__return_ptr, _BYTE *)@<X4>, void *a6@<X8>)
{
  result = String._fileSystemRepresentation(into:)(a1, a2, a3, a4);
  if (result)
  {
    if (!a1)
    {
      __break(1u);
      return result;
    }

    v11 = a1;
  }

  else
  {
    v11 = 0;
  }

  result = a5(&v12, v11);
  if (!v6)
  {
    *a6 = v12;
  }

  return result;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

uint64_t specialized _SwiftURL.__allocating_init(fileURLWithPath:isDirectory:relativeTo:)(uint64_t a1, unint64_t a2, char a3, uint64_t *a4)
{
  v5 = a2;
  v6 = *a4;
  v7 = a4[1];
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = a1;
  }

  else
  {

    v5 = 0xE100000000000000;
    v9 = 46;
  }

  v10 = (a3 & 1) == 0;

  v11 = specialized String.withFileSystemRepresentation<A>(_:)(v9, v5, v9, v5);
  v13 = v12;

  v17[0] = v10;
  v16[0] = v6;
  v16[1] = v7;
  type metadata accessor for _SwiftURL();
  v14 = swift_allocObject();
  _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v11, v13, 0, v17, v16);
  return v14;
}

uint64_t specialized _SwiftURL.__allocating_init(fileURLWithPath:relativeTo:)(unint64_t a1, unint64_t a2, uint64_t *a3)
{
  v3 = a2;
  v4 = a1;
  v5 = *a3;
  v6 = a3[1];
  v7 = specialized BidirectionalCollection.last.getter(a1, a2);
  v8 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {

    v3 = 0xE100000000000000;
    v4 = 46;
  }

  v9 = 2 * ((v7 & 0x1FF) != 47);

  v10 = specialized String.withFileSystemRepresentation<A>(_:)(v4, v3, v4, v3);
  v12 = v11;

  v16[0] = v9;
  v15[0] = v5;
  v15[1] = v6;
  type metadata accessor for _SwiftURL();
  v13 = swift_allocObject();
  _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v10, v12, 0, v16, v15);
  return v13;
}

uint64_t specialized static _SwiftURL.== infix(_:_:)(void *a1, uint64_t a2)
{
  v4 = a1[2];
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(a2 + 16);
  v8 = v5 == *(v7 + 16) && v6 == *(v7 + 24);
  if (v8 || (v9 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v10 = *(a2 + 24);
    if (a1[3])
    {
      v11 = a1[4];
      v14[0] = a1[3];
      v14[1] = v11;
      if (v10)
      {
        v13 = v10;
        swift_unknownObjectRetain_n();
        swift_unknownObjectRetain();
        v9 = static URL.== infix(_:_:)(v14, &v13);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        return v9 & 1;
      }
    }

    else if (!v10)
    {
      v9 = 1;
      return v9 & 1;
    }

    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    v9 = 0;
  }

  return v9 & 1;
}

unint64_t specialized Collection.firstIndex(where:)(unint64_t a1, unint64_t a2, uint64_t a3)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v3)
  {
    v20 = 4 * v3;
    v7 = (a1 >> 59) & 1;
    if ((a2 & 0x1000000000000000) == 0)
    {
      LOBYTE(v7) = 1;
    }

    v8 = 4 << v7;
    v18 = a2 & 0xFFFFFFFFFFFFFFLL;
    v17 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v9 = a3 + 56;
    v10 = 15;
    while (1)
    {
      result = v10;
      if ((v10 & 0xC) == v8)
      {
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(v10, a1, a2);
      }

      v12 = result >> 16;
      if (result >> 16 >= v3)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        return result;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        result = String.UTF8View._foreignSubscript(position:)();
        v13 = result;
        if (!*(a3 + 16))
        {
          goto LABEL_24;
        }
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = v18;
        v13 = *(v19 + v12);
        if (!*(a3 + 16))
        {
          goto LABEL_24;
        }
      }

      else
      {
        result = v17;
        if ((a1 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v13 = *(result + v12);
        if (!*(a3 + 16))
        {
          goto LABEL_24;
        }
      }

      result = MEMORY[0x1865CD020](*(a3 + 40), v13, 1);
      v14 = -1 << *(a3 + 32);
      v15 = result & ~v14;
      if ((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
      {
        v16 = ~v14;
        while (*(*(a3 + 48) + v15) != v13)
        {
          v15 = (v15 + 1) & v16;
          if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
          {
            goto LABEL_24;
          }
        }

        return v10;
      }

LABEL_24:
      if ((v10 & 0xC) == v8)
      {
        result = _StringGuts._slowEnsureMatchingEncoding(_:)(v10, a1, a2);
        v10 = result;
        if ((a2 & 0x1000000000000000) == 0)
        {
LABEL_8:
          v10 = (v10 & 0xFFFFFFFFFFFF0000) + 65540;
          goto LABEL_9;
        }
      }

      else if ((a2 & 0x1000000000000000) == 0)
      {
        goto LABEL_8;
      }

      if (v3 <= v10 >> 16)
      {
        goto LABEL_37;
      }

      v10 = String.UTF8View._foreignIndex(after:)();
LABEL_9:
      if (v20 == v10 >> 14)
      {
        return 0;
      }
    }
  }

  return 0;
}

uint64_t specialized static StringProtocol.== infix<A>(_:_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
}

uint64_t specialized _SwiftURL.__allocating_init(string:encodingInvalidCharacters:)(uint64_t a1, unint64_t a2, char a3)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v4 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  type metadata accessor for _SwiftURL();
  v7 = swift_allocObject();
  type metadata accessor for _SwiftURL.ResourceInfo();
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd);
  v9 = swift_allocObject();
  *(v9 + 24) = 0;
  *(v9 + 16) = 0;
  *(v8 + 16) = v9;
  *(v7 + 56) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  *(v7 + 64) = v10;
  v11 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(a1, a2, a3 & 1, 1);

  if (!v11)
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  *(v7 + 16) = v11;
  if ((*(v11 + 48) & 1) == 0)
  {

    String.subscript.getter();
  }

  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  *(v7 + 40) = 4;
  *(v7 + 48) = 0;
  return v7;
}

uint64_t specialized _SwiftURL.init(url:)(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for _SwiftURL.ResourceInfo();
  v4 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = 0;
  *(v4 + 16) = v5;
  *(v2 + 56) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd);
  v6 = swift_allocObject();
  *(v6 + 24) = 0;
  *(v6 + 16) = 0;
  *(v2 + 64) = v6;
  *(v2 + 16) = *(a1 + 16);
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  if (v7)
  {
    ObjectType = swift_getObjectType();
    v10 = *(v8 + 128);

    swift_unknownObjectRetain();
    v10(v13, ObjectType, v8);
    v11 = v13[0];
    if (v13[0])
    {
      v8 = v13[1];
      swift_unknownObjectRelease();
      v7 = v11;
    }
  }

  else
  {
  }

  *(v2 + 24) = v7;
  *(v2 + 32) = v8;
  *(v2 + 40) = *(a1 + 40);
  *(v2 + 48) = *(a1 + 48);
  return v2;
}

uint64_t specialized _SwiftURL.__allocating_init(dataRepresentation:relativeTo:isAbsolute:)(uint64_t a1, unint64_t a2, uint64_t *a3, int a4)
{
  v4 = a2;
  v5 = a1;
  v6 = *a3;
  v7 = a3[1];
  v8 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v8 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_15;
    }
  }

  else if (v8)
  {
    if (a1 == a1 >> 32)
    {
LABEL_15:
      outlined consume of Data._Representation(a1, a2);
      swift_unknownObjectRelease();
      return 0;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_15;
  }

  LODWORD(v179) = a4;
  v9 = specialized Data.withContiguousStorageIfAvailable<A>(_:)(a1, a2);
  v178 = 0;
  if (v10 != 1)
  {
    v18 = v10;
    v19 = v9;
    if (!v10)
    {
      goto LABEL_25;
    }

    goto LABEL_19;
  }

  outlined copy of Data._Representation(v5, v4);
  v11 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCs5UInt8V_10Foundation4DataVTt0g5(v5, v4);
  v12 = (v11 + 32);
  v13 = *(v11 + 16);
  result = specialized Sequence<>.starts<A>(with:)(&outlined read-only object #0 of _SwiftURL.__allocating_init(dataRepresentation:relativeTo:isAbsolute:), v11 + 32, v13);
  if ((result & 1) == 0)
  {
LABEL_12:
    v16 = static String._tryFromUTF8(_:)();
    if (v17)
    {
      v18 = v17;
      v19 = v16;
    }

    else
    {
      v19 = _sSS10FoundationE11_validating2asSSSgq__xmtcs16_UnicodeEncodingRzSTR_7ElementQy_8CodeUnitRtzr0_lufCs0D0O4UTF8O_SRys5UInt8VGTt0t1g5(v12, v13);
      v18 = v20;

      if (!v18)
      {
        goto LABEL_25;
      }
    }

LABEL_19:
    v21 = v5;
    type metadata accessor for _SwiftURL();
    v22 = swift_allocObject();
    type metadata accessor for _SwiftURL.ResourceInfo();
    v23 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd);
    v24 = swift_allocObject();
    *(v24 + 24) = 0;
    *(v24 + 16) = 0;
    *(v23 + 16) = v24;
    *(v22 + 56) = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd);
    v25 = swift_allocObject();
    *(v25 + 24) = 0;
    *(v25 + 16) = 0;
    *(v22 + 64) = v25;
    swift_unknownObjectRetain();
    v26 = specialized static RFC3986Parser.compatibilityParse(urlString:encodingInvalidCharacters:)(v19, v18, 1);

    if (v26)
    {
      *(v22 + 16) = v26;
      if (v26[48])
      {
        if (v6)
        {
          ObjectType = swift_getObjectType();
          v28 = *(v7 + 128);

          v28(&v209, ObjectType, v7);

          v29 = v209;
          v30 = v6;
          if (v209)
          {
            v7 = v210;
            swift_unknownObjectRelease();
            v30 = v29;
          }
        }

        else
        {
          v30 = 0;
        }
      }

      else
      {

        String.subscript.getter();

        swift_unknownObjectRelease();

        v30 = 0;
        v7 = 0;
      }

      *(v22 + 24) = v30;
      *(v22 + 32) = v7;
      *(v22 + 40) = 4;
      *(v22 + 48) = 0;
      swift_unknownObjectRelease();
      if (v179)
      {
        goto LABEL_40;
      }

      goto LABEL_37;
    }

    swift_unknownObjectRelease();

    swift_deallocPartialClassInstance();
    v5 = v21;
LABEL_25:
    _sSS10FoundationE5bytes8encodingSSSgxh_SSAAE8EncodingVtcSTRzs5UInt8V7ElementRtzlufCAA4DataV_Tt1B5(v5, v4, 5);
    if (v32)
    {
      v33 = v31;
      v34 = v32;
      v21 = v5;
      type metadata accessor for _SwiftURL();
      v22 = swift_allocObject();
      type metadata accessor for _SwiftURL.ResourceInfo();
      v35 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd);
      v36 = swift_allocObject();
      *(v36 + 24) = 0;
      *(v36 + 16) = 0;
      *(v35 + 16) = v36;
      *(v22 + 56) = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd);
      v37 = swift_allocObject();
      *(v37 + 24) = 0;
      *(v37 + 16) = 0;
      *(v22 + 64) = v37;
      v38 = specialized static RFC3986Parser.compatibilityParse(urlString:encodingInvalidCharacters:)(v33, v34, 1);

      if (v38)
      {
        *(v22 + 16) = v38;
        if (v38[48])
        {
          if (v6)
          {
            v39 = swift_getObjectType();
            v40 = *(v7 + 128);

            v40(&v209, v39, v7);

            v41 = v209;
            if (v209)
            {
              v7 = v210;
              swift_unknownObjectRelease();
              v6 = v41;
            }
          }
        }

        else
        {

          String.subscript.getter();

          swift_unknownObjectRelease();
          v6 = 0;
          v7 = 0;
        }

        v43 = v179;
        *(v22 + 24) = v6;
        *(v22 + 32) = v7;
        *(v22 + 40) = 5;
        *(v22 + 48) = 0;
        if (v43)
        {
LABEL_40:
          v46 = *(v22 + 24);
          if (!v46)
          {

            v58 = v22;
LABEL_61:
            type metadata accessor for _SwiftURL();
            swift_allocObject();
            v45 = specialized _SwiftURL.init(url:)(v58);

            goto LABEL_62;
          }

          v169 = v4;
          v170 = v21;
          v168 = *(v22 + 32);
          v172 = v22;
          v47 = *(v22 + 16);

          swift_unknownObjectRetain();
          specialized _SwiftURL.URLStringBuilder.init(parseInfo:original:)(v47, 0, &v195);
          v48 = v196;
          v49 = *(&v197 + 1);
          v50 = v198;
          v51 = v199;
          v194 = v204;
          v171 = v203;
          v174 = *(&v198 + 1);
          v175 = v46;
          v179 = v202;
          v176 = v197;
          v177 = v195;
          v173 = *(&v197 + 1);
          if (*(&v195 + 1))
          {
            v166 = v196;
            v167 = v198;
            v52 = *(&v199 + 1);
            v53 = *(&v195 + 1);
            v165 = *(&v195 + 1);
            v54 = String.removingDotSegments.getter(v200, v201);
            v168 = v55;

            v209 = v177;
            v210 = v53;
            v211 = v48;
            v212 = v176;
            v213 = v173;
            v214 = v50;
            v215 = v51;
            v216 = v52;
            v217 = v54;
            v218 = v168;
            v219 = v179;
            v220 = v171;
            v221 = v204;
            v178 = _SwiftURL.URLStringBuilder.string.getter();
            v57 = v56;
            swift_unknownObjectRelease();
            v180 = v177;
            v181 = v165;
            v182 = v48;
            v183 = v176;
            v184 = v173;
            v185 = v167;
            v186 = v174;
            v187 = v51;
            v188 = v52;
            v189 = v54;
            v190 = v168;
            v191 = v179;
            v192 = v171;
LABEL_54:
            v193 = v204;
            outlined destroy of _SwiftURL.URLStringBuilder(&v180);
            v69 = v172;
LABEL_55:
            v70 = *(v69 + 40);
            type metadata accessor for _SwiftURL();
            v58 = swift_allocObject();
            type metadata accessor for _SwiftURL.ResourceInfo();
            v71 = swift_allocObject();
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd);
            v72 = swift_allocObject();
            *(v72 + 24) = 0;
            *(v72 + 16) = 0;
            *(v71 + 16) = v72;
            *(v58 + 56) = v71;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd);
            v73 = swift_allocObject();
            *(v73 + 24) = 0;
            *(v73 + 16) = 0;
            *(v58 + 64) = v73;
            v74 = specialized static RFC3986Parser.compatibilityParse(urlString:encodingInvalidCharacters:)(v178, v57, 1);

            v4 = v169;
            if (v74)
            {
              *(v58 + 16) = v74;
              if ((v74[48] & 1) == 0)
              {

                String.subscript.getter();
              }

              *(v58 + 24) = 0;
              *(v58 + 32) = 0;
              *(v58 + 40) = v70;
              *(v58 + 48) = 0;
            }

            else
            {

              swift_deallocPartialClassInstance();

              v58 = v69;
            }

            v21 = v170;
            goto LABEL_61;
          }

          v161 = v200;
          v162 = v199;
          v164 = v201;
          v165 = *(&v199 + 1);
          v163 = *(&v196 + 1);
          v59 = v196;
          v60 = swift_getObjectType();
          v61 = (*(v168 + 136))(v60, v168);
          if (v62)
          {
            v63 = v61;
          }

          else
          {
            v63 = v177;
          }

          v64 = v47[72];
          v160 = v62;
          v177 = v63;
          if ((v64 & 1) == 0 || (v47[96] & 1) == 0 || v47[120] != 1 || v47[144] != 1)
          {
            v209 = v63;
            v210 = v62;
            *&v211 = v59;
            *(&v211 + 1) = v163;
            v212 = v176;
            v213 = v49;
            *&v214 = v50;
            *(&v214 + 1) = v174;
            v215 = v162;
            v216 = v165;
            v217 = v161;
            v218 = v164;
            v219 = v179;
            v220 = v171;
            v221 = v204;
            v178 = _SwiftURL.URLStringBuilder.string.getter();
            v68 = v67;
            swift_unknownObjectRelease();
            v180 = v177;
            v181 = v160;
            *&v182 = v59;
            *(&v182 + 1) = v163;
            v183 = v176;
            v184 = v173;
            v185 = v50;
            v186 = v174;
            v187 = v162;
            v188 = v165;
            v189 = v161;
            v190 = v164;
            v191 = v179;
            v192 = v171;
            v57 = v68;
            goto LABEL_54;
          }

          v159 = v60;
          v209 = v175;
          v210 = v168;
          URL._swiftURL.getter();
          v166 = v59;
          v167 = v50;
          if (v65)
          {
            v66 = *(v65 + 16);
          }

          else
          {
            v66 = 0;
          }

          v75 = v174;
          v76 = (*(v168 + 168))(1, v159);
          v78 = v176;
          if (v77)
          {
            v79 = v76;
            v80 = v77;
            v208 = v196;
            outlined destroy of TermOfAddress?(&v208, &_sSSSgMd);
            v163 = v80;
            v166 = v79;
          }

          v81 = (*(v168 + 184))(1, v159);
          if (v82)
          {
            v83 = v81;
            v84 = v82;
            v207 = v197;
            outlined destroy of TermOfAddress?(&v207, &_sSSSgMd);
            v49 = v84;
            v78 = v83;
          }

          v205 = v198;
          v206 = v199;
          if (v66 && (*(v66 + 120) & 1) == 0)
          {

            v90 = String.subscript.getter();
            v92 = v91;
            v94 = v93;
            v96 = v95;

            v167 = MEMORY[0x1865CAE80](v90, v92, v94, v96);
            v75 = v97;

            outlined destroy of TermOfAddress?(&v205, &_sSSSgMd);
            v87 = v165;
          }

          else
          {
            v85 = (*(v168 + 200))(1, v159);
            v87 = v165;
            if (v86)
            {
              v88 = v85;
              v89 = v86;
              outlined destroy of TermOfAddress?(&v205, &_sSSSgMd);
              v167 = v88;
              v75 = v89;
            }

            if (!v66)
            {
              goto LABEL_76;
            }
          }

          if ((*(v66 + 144) & 1) == 0)
          {

            v101 = String.subscript.getter();
            v174 = v102;
            v104 = v103;
            v106 = v105;

            v162 = MEMORY[0x1865CAE80](v101, v174, v104, v106);
            v87 = v107;

            goto LABEL_79;
          }

LABEL_76:
          v98 = (*(v168 + 208))(v159);
          if (v99)
          {
            goto LABEL_80;
          }

          v209 = v98;
          v162 = dispatch thunk of CustomStringConvertible.description.getter();
          v87 = v100;
LABEL_79:
          outlined destroy of TermOfAddress?(&v206, &_sSSSgMd);
LABEL_80:
          v108 = HIBYTE(v164) & 0xF;
          if ((v164 & 0x2000000000000000) == 0)
          {
            v108 = v161 & 0xFFFFFFFFFFFFLL;
          }

          v173 = v49;
          v174 = v75;
          v176 = v78;
          v158 = v66;
          v165 = v87;
          if (!v108)
          {
            v113 = v203;
            v114 = (*(v168 + 248))(1, v159, v168);
            v116 = v115;

            if (v113)
            {
              v117 = v171;
              v118 = v179;
            }

            else
            {
              v129 = (*(v168 + 264))(1, v159, v168);
              v118 = v179;
              if (v130)
              {
                v118 = v129;
              }

              v117 = v171;
              if (v130)
              {
                v117 = v130;
              }
            }

            v131 = v163;
            v132 = v75;
            v69 = v172;
            v133 = v116;
            goto LABEL_105;
          }

          if ((specialized Collection.first.getter(v161, v164) & 0x1FF) == 0x2F)
          {
            v109 = v75;

            v110 = v164;
            v111 = v171;
            v69 = v172;
            v112 = v161;
          }

          else
          {
            v119 = (*(v168 + 152))(v159, v168);
            v120 = *(v168 + 248);
            v69 = v172;
            if ((v119 & 1) == 0)
            {
              goto LABEL_91;
            }

            v157 = v120(1, v159, v168);
            v122 = v121;

            v123 = HIBYTE(v122) & 0xF;
            if ((v122 & 0x2000000000000000) == 0)
            {
              v123 = v157 & 0xFFFFFFFFFFFFLL;
            }

            if (!v123)
            {
              v209 = 47;
              v210 = 0xE100000000000000;
              MEMORY[0x1865CB0E0](v161, v164);
              v112 = v209;
              v110 = v210;
              v111 = v171;
              v78 = v176;
              v109 = v174;
            }

            else
            {
LABEL_91:
              v124 = v120(1, v159, v168);
              v126 = v125;
              v127 = v164;
              v128 = specialized Collection.first.getter(v161, v164);
              if ((v128 & 0x1FF) == 0x2F)
              {
              }

              else
              {
                LOBYTE(v209) = 47;
                MEMORY[0x1EEE9AC00](v128);
                v156[2] = &v209;
                specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, v156, v124, v126);
                if ((v134 & 1) == 0)
                {
                  String.index(after:)();
                  v135 = String.subscript.getter();
                  v137 = v136;
                  v139 = v138;
                  v141 = v140;
                  v180 = 0;
                  v181 = 0xE000000000000000;
                  v142 = v164;
                  v143 = String.count.getter();
                  v178 = v139;
                  v144 = Substring.distance(from:to:)();
                  v145 = __OFADD__(v143, v144);
                  result = v143 + v144;
                  if (v145)
                  {
                    goto LABEL_106;
                  }

                  MEMORY[0x1865CAED0](result);
                  v209 = v135;
                  v210 = v137;
                  *&v211 = v178;
                  *(&v211 + 1) = v141;
                  lazy protocol witness table accessor for type Substring and conformance Substring();
                  String.append<A>(contentsOf:)();
                  v209 = v161;
                  v210 = v142;

                  String.append<A>(contentsOf:)();

                  v112 = v180;
                  v110 = v181;
                  v111 = v171;
                  v109 = v174;
                  v78 = v176;
                  goto LABEL_104;
                }

                v127 = v164;
              }

              v110 = v127;
              v111 = v171;
              v78 = v176;
              v109 = v174;
              v112 = v161;
            }
          }

LABEL_104:
          v146 = String.removingDotSegments.getter(v112, v110);
          v133 = v147;

          v114 = v146;

          v118 = v179;
          v131 = v163;
          v132 = v109;
          v117 = v111;
LABEL_105:
          v163 = v131;
          v179 = v118;
          v148 = v177;
          v149 = v160;
          v209 = v177;
          v210 = v160;
          *&v211 = v166;
          *(&v211 + 1) = v131;
          v212 = v78;
          v150 = v173;
          v213 = v173;
          *&v214 = v167;
          *(&v214 + 1) = v132;
          v215 = v162;
          v151 = v165;
          v216 = v165;
          v217 = v114;
          v152 = v133;
          v218 = v133;
          v219 = v118;
          v220 = v117;
          v221 = v194;
          v153 = v114;
          v154 = v117;
          v178 = _SwiftURL.URLStringBuilder.string.getter();
          v57 = v155;
          swift_unknownObjectRelease();

          v180 = v148;
          v181 = v149;
          *&v182 = v166;
          *(&v182 + 1) = v163;
          v183 = v176;
          v184 = v150;
          v185 = v167;
          v186 = v174;
          v187 = v162;
          v188 = v151;
          v189 = v153;
          v190 = v152;
          v191 = v179;
          v192 = v154;
          v193 = v194;
          outlined destroy of _SwiftURL.URLStringBuilder(&v180);
          goto LABEL_55;
        }

LABEL_37:
        type metadata accessor for _SwiftURL();
        swift_allocObject();

        v45 = specialized _SwiftURL.init(url:)(v44);

LABEL_62:
        outlined consume of Data._Representation(v21, v4);
        return v45;
      }

      swift_unknownObjectRelease();

      swift_deallocPartialClassInstance();
      v42 = v21;
    }

    else
    {
      swift_unknownObjectRelease();
      v42 = v5;
    }

    outlined consume of Data._Representation(v42, v4);
    return 0;
  }

  v15 = v13 >= 3;
  v13 -= 3;
  if (v15)
  {
    v12 = (v11 + 35);
    goto LABEL_12;
  }

  __break(1u);
LABEL_106:
  __break(1u);
  return result;
}

uint64_t specialized static _SwiftURL.windowsPath(for:slashDropper:)(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    goto LABEL_38;
  }

  LOBYTE(v7) = (a2 & 0x1000000000000000) == 0 || (a1 & 0x800000000000000) != 0;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_90;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = a1;
    goto LABEL_14;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    goto LABEL_92;
  }

  v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_12:
  v9 = *v8;
LABEL_14:
  for (i = 65540; ; i = String.UTF8View._foreignIndex(after:)())
  {
    if (v9 == 47)
    {
      v11 = 4 * v6;
      if (4 * v6 == i >> 14)
      {
        goto LABEL_17;
      }

      v72 = 4 << v7;
      v73 = i & 0xC;
      v74 = i;
      if (v73 == v72)
      {
        v74 = _StringGuts._slowEnsureMatchingEncoding(_:)(i, v5, a2);
      }

      v75 = v74 >> 16;
      if (v74 >> 16 >= v6)
      {
        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        v80 = v74;
        v76 = _StringGuts._slowEnsureMatchingEncoding(_:)(v74, v5, a2);
        v74 = v80;
LABEL_78:
        v77 = v76 >> 16;
        if (v76 >> 16 < v6)
        {
          v123 = v75;
          if ((a2 & 0x1000000000000000) == 0)
          {
            if ((a2 & 0x2000000000000000) == 0)
            {
              if ((v5 & 0x1000000000000000) != 0)
              {
                v78 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
                goto LABEL_85;
              }

              goto LABEL_145;
            }

            v125 = v5;
            v126 = a2 & 0xFFFFFFFFFFFFFFLL;
            v78 = &v125;
            goto LABEL_85;
          }

          v79 = v74;
          LOBYTE(v77) = String.UTF8View._foreignSubscript(position:)();
          v74 = v79;
          goto LABEL_86;
        }

        __break(1u);
        while (2)
        {
          v74 = _StringGuts._slowEnsureMatchingEncoding(_:)(v74, v5, a2);
          if ((a2 & 0x1000000000000000) != 0)
          {
LABEL_98:
            if (v6 > v74 >> 16)
            {
              v74 = String.UTF8View._foreignIndex(after:)();
              goto LABEL_100;
            }

            __break(1u);
LABEL_140:
            v116 = v74;
            v81 = _StringGuts._slowEnsureMatchingEncoding(_:)(v74, v5, a2);
            v74 = v116;
            goto LABEL_103;
          }

LABEL_88:
          v74 = (v74 & 0xFFFFFFFFFFFF0000) + 65540;
LABEL_100:
          if (v77 != 58 || v74 >> 14 == v11)
          {
            goto LABEL_17;
          }

          v73 = v74 & 0xC;
          v81 = v74;
          if (v73 == v72)
          {
            goto LABEL_140;
          }

LABEL_103:
          v82 = v81 >> 16;
          if (v81 >> 16 < v6)
          {
            if ((a2 & 0x1000000000000000) == 0)
            {
              if ((a2 & 0x2000000000000000) == 0)
              {
                if ((v5 & 0x1000000000000000) != 0)
                {
                  v83 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  goto LABEL_110;
                }

                goto LABEL_147;
              }

              v125 = v5;
              v126 = a2 & 0xFFFFFFFFFFFFFFLL;
              v83 = &v125;
              goto LABEL_110;
            }

            v84 = v74;
            v82 = String.UTF8View._foreignSubscript(position:)();
            v74 = v84;
            goto LABEL_111;
          }

          __break(1u);
LABEL_142:
          v74 = _StringGuts._slowEnsureMatchingEncoding(_:)(v74, v5, a2);
          if ((a2 & 0x1000000000000000) != 0)
          {
            while (v6 <= v74 >> 16)
            {
              __break(1u);
LABEL_147:
              v118 = v74;
              v83 = _StringObject.sharedUTF8.getter();
              v74 = v118;
LABEL_110:
              LOBYTE(v82) = *(v83 + v82);
LABEL_111:
              if (v73 == v72)
              {
                goto LABEL_142;
              }

              if ((a2 & 0x1000000000000000) == 0)
              {
                goto LABEL_115;
              }
            }

            String.UTF8View._foreignIndex(after:)();
          }

LABEL_115:
          if (v82 != 47)
          {
            goto LABEL_17;
          }

          specialized Collection.dropFirst(_:)(3uLL, v5, a2);
          swift_bridgeObjectRetain_n();
          v85 = Substring.init(_:)();
          v86 = MEMORY[0x1865CAE80](v85);
          v88 = v87;

          v89 = (a3)(v86, v88);
          a3 = v90;

          v125 = 0;
          v126 = 0xE000000000000000;
          Unicode.Scalar.write<A>(to:)();
          MEMORY[0x1865CB0E0](58, 0xE100000000000000);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
          v77 = static _SetStorage.allocate(capacity:)();
          v6 = v77 + 56;
          v73 = *(v77 + 40);
          v5 = byte_1EEED3CA8;
          v72 = 1;
          v74 = MEMORY[0x1865CD020](v73, byte_1EEED3CA8, 1);
          v91 = -1 << *(v77 + 32);
          v92 = v74 & ~v91;
          v93 = v92 >> 6;
          v94 = *(v77 + 56 + 8 * (v92 >> 6));
          v95 = 1 << v92;
          v96 = *(v77 + 48);
          if (((1 << v92) & v94) != 0)
          {
            v97 = ~v91;
            while (*(v96 + v92) != v5)
            {
              v92 = (v92 + 1) & v97;
              v93 = v92 >> 6;
              v94 = *(v6 + 8 * (v92 >> 6));
              v95 = 1 << v92;
              if (((1 << v92) & v94) == 0)
              {
                goto LABEL_120;
              }
            }

LABEL_122:
            v5 = byte_1EEED3CA9;
            v72 = 1;
            v74 = MEMORY[0x1865CD020](v73, byte_1EEED3CA9, 1);
            v100 = -1 << *(v77 + 32);
            v101 = v74 & ~v100;
            v102 = v101 >> 6;
            v103 = *(v6 + 8 * (v101 >> 6));
            v104 = 1 << v101;
            v105 = *(v77 + 48);
            if (((1 << v101) & v103) != 0)
            {
              v106 = ~v100;
              while (*(v105 + v101) != v5)
              {
                v101 = (v101 + 1) & v106;
                v102 = v101 >> 6;
                v103 = *(v6 + 8 * (v101 >> 6));
                v104 = 1 << v101;
                if (((1 << v101) & v103) == 0)
                {
                  goto LABEL_126;
                }
              }

LABEL_128:
              v109 = HIBYTE(a3) & 0xF;
              if ((a3 & 0x2000000000000000) == 0)
              {
                v109 = v89 & 0xFFFFFFFFFFFFLL;
              }

              if (v109)
              {
                v124[0] = v89;
                v124[1] = a3;
                MEMORY[0x1EEE9AC00](v74);
                v120 = v124;
                v121 = v77;
                v122 = 4;

                v110 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v119, v89, a3);
                if (v111 == 1)
                {
                  v112 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v89, a3, v77, 4);
                  v114 = v113;
                }

                else
                {
                  v114 = v111;
                  v112 = v110;
                }

                v115 = v112;
                if (!v114)
                {
LABEL_136:
                  v115 = 0;
                  v114 = 0xE000000000000000;
                }

                MEMORY[0x1865CB0E0](v115, v114);

                return v125;
              }

              goto LABEL_136;
            }

LABEL_126:
            *(v6 + 8 * v102) = v104 | v103;
            *(v105 + v101) = v5;
            v107 = *(v77 + 16);
            v23 = __OFADD__(v107, 1);
            v108 = v107 + 1;
            if (!v23)
            {
              *(v77 + 16) = v108;
              goto LABEL_128;
            }
          }

          else
          {
LABEL_120:
            *(v6 + 8 * v93) = v95 | v94;
            *(v96 + v92) = v5;
            v98 = *(v77 + 16);
            v23 = __OFADD__(v98, 1);
            v99 = v98 + 1;
            if (!v23)
            {
              *(v77 + 16) = v99;
              goto LABEL_122;
            }
          }

          __break(1u);
LABEL_145:
          v117 = v74;
          v78 = _StringObject.sharedUTF8.getter();
          v74 = v117;
LABEL_85:
          LOBYTE(v77) = *(v78 + v77);
LABEL_86:
          if (v73 == v72)
          {
            continue;
          }

          break;
        }

        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_98;
        }

        goto LABEL_88;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v74 = String.UTF8View._foreignSubscript(position:)();
        LODWORD(v75) = v74;
        if (v73 == v72)
        {
          goto LABEL_72;
        }
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v125 = v5;
        v126 = a2 & 0xFFFFFFFFFFFFFFLL;
        LODWORD(v75) = *(&v125 + v75);
        if (v73 == v72)
        {
          goto LABEL_72;
        }
      }

      else
      {
        if ((v5 & 0x1000000000000000) != 0)
        {
          v74 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v74 = _StringObject.sharedUTF8.getter();
        }

        LODWORD(v75) = *(v74 + v75);
        if (v73 == v72)
        {
LABEL_72:
          v74 = _StringGuts._slowEnsureMatchingEncoding(_:)(i, v5, a2);
          i = v74;
          if ((a2 & 0x1000000000000000) != 0)
          {
            goto LABEL_73;
          }

          goto LABEL_70;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
LABEL_73:
        if (v6 <= i >> 16)
        {
          goto LABEL_94;
        }

        v74 = String.UTF8View._foreignIndex(after:)();
LABEL_75:
        if (((v75 & 0xDF) - 91) >= 0xE6u && v74 >> 14 != v11)
        {
          v73 = v74 & 0xC;
          v76 = v74;
          if (v73 == v72)
          {
            goto LABEL_95;
          }

          goto LABEL_78;
        }

LABEL_17:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
        v12 = static _SetStorage.allocate(capacity:)();
        v7 = v12 + 56;
        v13 = *(v12 + 40);
        v6 = byte_1EEED3CD0;
        v14 = MEMORY[0x1865CD020](v13, byte_1EEED3CD0, 1);
        v15 = -1 << *(v12 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = *(v12 + 56 + 8 * (v16 >> 6));
        v19 = 1 << v16;
        v20 = *(v12 + 48);
        if (((1 << v16) & v18) != 0)
        {
          v21 = ~v15;
          while (*(v20 + v16) != v6)
          {
            v16 = (v16 + 1) & v21;
            v17 = v16 >> 6;
            v18 = *(v7 + 8 * (v16 >> 6));
            v19 = 1 << v16;
            if (((1 << v16) & v18) == 0)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
LABEL_21:
          *(v7 + 8 * v17) = v19 | v18;
          *(v20 + v16) = v6;
          v22 = *(v12 + 16);
          v23 = __OFADD__(v22, 1);
          v24 = v22 + 1;
          if (v23)
          {
LABEL_91:
            __break(1u);
LABEL_92:
            v8 = _StringObject.sharedUTF8.getter();
            goto LABEL_12;
          }

          *(v12 + 16) = v24;
        }

        v6 = byte_1EEED3CD1;
        v25 = MEMORY[0x1865CD020](v13, byte_1EEED3CD1, 1);
        v26 = -1 << *(v12 + 32);
        v27 = v25 & ~v26;
        v28 = v27 >> 6;
        v29 = *(v7 + 8 * (v27 >> 6));
        v30 = 1 << v27;
        v31 = *(v12 + 48);
        if (((1 << v27) & v29) != 0)
        {
          v32 = ~v26;
          while (*(v31 + v27) != v6)
          {
            v27 = (v27 + 1) & v32;
            v28 = v27 >> 6;
            v29 = *(v7 + 8 * (v27 >> 6));
            v30 = 1 << v27;
            if (((1 << v27) & v29) == 0)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_29;
        }

LABEL_27:
        *(v7 + 8 * v28) = v30 | v29;
        *(v31 + v27) = v6;
        v33 = *(v12 + 16);
        v23 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (!v23)
        {
          *(v12 + 16) = v34;
LABEL_29:
          v125 = v5;
          v126 = a2;
          MEMORY[0x1EEE9AC00](v25);
          v120 = &v125;
          v121 = v12;
          v122 = 4;
          swift_bridgeObjectRetain_n();
          v35 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v119, v5, a2);
          if (v36 == 1)
          {
            v35 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v5, a2, v12, 4);
          }

          v37 = v35;
          v38 = v36;

          if (v38)
          {
            v39 = v37;
          }

          else
          {
            v39 = 0;
          }

          if (v38)
          {
            v40 = v38;
          }

          else
          {
            v40 = 0xE000000000000000;
          }

          v41 = (a3)(v39, v40);

          return v41;
        }

        goto LABEL_91;
      }

LABEL_70:
      v74 = (i & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_75;
    }

LABEL_38:

    v43 = (a3)(v5, a2);
    a3 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
    v45 = static _SetStorage.allocate(capacity:)();
    v6 = v45 + 56;
    v46 = *(v45 + 40);
    v5 = byte_1EEED3CF8;
    LOBYTE(v7) = 1;
    v47 = MEMORY[0x1865CD020](v46, byte_1EEED3CF8, 1);
    v48 = -1 << *(v45 + 32);
    v49 = v47 & ~v48;
    v50 = v49 >> 6;
    v51 = *(v45 + 56 + 8 * (v49 >> 6));
    v52 = 1 << v49;
    v53 = *(v45 + 48);
    if (((1 << v49) & v51) != 0)
    {
      v54 = ~v48;
      while (*(v53 + v49) != v5)
      {
        v49 = (v49 + 1) & v54;
        v50 = v49 >> 6;
        v51 = *(v6 + 8 * (v49 >> 6));
        v52 = 1 << v49;
        if (((1 << v49) & v51) == 0)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
LABEL_42:
      *(v6 + 8 * v50) = v52 | v51;
      *(v53 + v49) = v5;
      v55 = *(v45 + 16);
      v23 = __OFADD__(v55, 1);
      v56 = v55 + 1;
      if (v23)
      {
        goto LABEL_89;
      }

      *(v45 + 16) = v56;
    }

    v5 = byte_1EEED3CF9;
    LOBYTE(v7) = 1;
    v57 = MEMORY[0x1865CD020](v46, byte_1EEED3CF9, 1);
    v58 = -1 << *(v45 + 32);
    v59 = v57 & ~v58;
    v60 = v59 >> 6;
    v61 = *(v6 + 8 * (v59 >> 6));
    v62 = 1 << v59;
    v63 = *(v45 + 48);
    if (((1 << v59) & v61) != 0)
    {
      break;
    }

LABEL_48:
    *(v6 + 8 * v60) = v62 | v61;
    *(v63 + v59) = v5;
    v65 = *(v45 + 16);
    v23 = __OFADD__(v65, 1);
    v66 = v65 + 1;
    if (!v23)
    {
      *(v45 + 16) = v66;
      goto LABEL_50;
    }

LABEL_89:
    __break(1u);
LABEL_90:
    v9 = String.UTF8View._foreignSubscript(position:)();
  }

  v64 = ~v58;
  while (*(v63 + v59) != v5)
  {
    v59 = (v59 + 1) & v64;
    v60 = v59 >> 6;
    v61 = *(v6 + 8 * (v59 >> 6));
    v62 = 1 << v59;
    if (((1 << v59) & v61) == 0)
    {
      goto LABEL_48;
    }
  }

LABEL_50:
  v67 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v67 = v43 & 0xFFFFFFFFFFFFLL;
  }

  if (v67)
  {
    v125 = v43;
    v126 = a3;
    MEMORY[0x1EEE9AC00](v57);
    v120 = &v125;
    v121 = v45;
    v122 = 4;
    v68 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(partial apply for specialized closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:), v119, v43, a3);
    if (v69 == 1)
    {
      v68 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v43, a3, v45, 4);
    }

    v70 = v68;
    v71 = v69;

    if (v71)
    {
      return v70;
    }

    else
    {
      return 0;
    }
  }

  else
  {

    return 0;
  }
}

unint64_t specialized static _SwiftURL.windowsPath(for:slashDropper:)(unint64_t a1, unint64_t a2)
{
  v3 = a1;
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
    goto LABEL_38;
  }

  v5 = 65540;
  LOBYTE(v6) = (a2 & 0x1000000000000000) == 0 || (a1 & 0x800000000000000) != 0;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_91;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = a1;
    goto LABEL_14;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
    goto LABEL_93;
  }

  v7 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_12:
  v8 = *v7;
LABEL_14:
  for (i = 65540; ; i = String.UTF8View._foreignIndex(after:)())
  {
    if (v8 == 47)
    {
      v10 = 4 * v4;
      if (4 * v4 == i >> 14)
      {
        goto LABEL_17;
      }

      v71 = 4 << v6;
      v72 = i & 0xC;
      v73 = i;
      if (v72 == v71)
      {
        v73 = _StringGuts._slowEnsureMatchingEncoding(_:)(i, v3, a2);
      }

      v74 = v73 >> 16;
      if (v73 >> 16 >= v4)
      {
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        v80 = v73;
        v76 = _StringGuts._slowEnsureMatchingEncoding(_:)(v73, v3, a2);
        v73 = v80;
LABEL_79:
        v77 = v76 >> 16;
        if (v76 >> 16 < v4)
        {
          if ((a2 & 0x1000000000000000) == 0)
          {
            if ((a2 & 0x2000000000000000) == 0)
            {
              if ((v3 & 0x1000000000000000) != 0)
              {
                v78 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
                goto LABEL_86;
              }

              goto LABEL_146;
            }

            v124 = v3;
            v125 = a2 & 0xFFFFFFFFFFFFFFLL;
            v78 = &v124;
            goto LABEL_86;
          }

          v79 = v73;
          LOBYTE(v77) = String.UTF8View._foreignSubscript(position:)();
          v73 = v79;
          goto LABEL_87;
        }

        __break(1u);
        while (2)
        {
          v73 = _StringGuts._slowEnsureMatchingEncoding(_:)(v73, v3, a2);
          if ((a2 & 0x1000000000000000) != 0)
          {
LABEL_99:
            if (v4 > v73 >> 16)
            {
              v73 = String.UTF8View._foreignIndex(after:)();
              goto LABEL_101;
            }

            __break(1u);
LABEL_141:
            v116 = v73;
            v81 = _StringGuts._slowEnsureMatchingEncoding(_:)(v73, v3, a2);
            v73 = v116;
            goto LABEL_104;
          }

LABEL_89:
          v73 = (v73 & 0xFFFFFFFFFFFF0000) + v5;
LABEL_101:
          if (v77 != 58 || v73 >> 14 == v10)
          {
            goto LABEL_17;
          }

          v5 = v73 & 0xC;
          v81 = v73;
          if (v5 == v71)
          {
            goto LABEL_141;
          }

LABEL_104:
          v82 = v81 >> 16;
          if (v81 >> 16 < v4)
          {
            if ((a2 & 0x1000000000000000) == 0)
            {
              if ((a2 & 0x2000000000000000) == 0)
              {
                if ((v3 & 0x1000000000000000) != 0)
                {
                  v83 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
                  goto LABEL_111;
                }

                goto LABEL_148;
              }

              v124 = v3;
              v125 = a2 & 0xFFFFFFFFFFFFFFLL;
              v83 = &v124;
              goto LABEL_111;
            }

            v84 = v73;
            v82 = String.UTF8View._foreignSubscript(position:)();
            v73 = v84;
            goto LABEL_112;
          }

          __break(1u);
LABEL_143:
          v73 = _StringGuts._slowEnsureMatchingEncoding(_:)(v73, v3, a2);
          if ((a2 & 0x1000000000000000) != 0)
          {
            while (v4 <= v73 >> 16)
            {
              __break(1u);
LABEL_148:
              v118 = v73;
              v83 = _StringObject.sharedUTF8.getter();
              v73 = v118;
LABEL_111:
              LOBYTE(v82) = *(v83 + v82);
LABEL_112:
              if (v5 == v71)
              {
                goto LABEL_143;
              }

              if ((a2 & 0x1000000000000000) == 0)
              {
                goto LABEL_116;
              }
            }

            String.UTF8View._foreignIndex(after:)();
          }

LABEL_116:
          if (v82 != 47)
          {
            goto LABEL_17;
          }

          specialized Collection.dropFirst(_:)(3uLL, v3, a2);
          swift_bridgeObjectRetain_n();
          v85 = Substring.init(_:)();
          v86 = MEMORY[0x1865CAE80](v85);
          v88 = v87;

          v4 = closure #1 in static _SwiftURL.fileSystemPath(for:style:compatibility:)(v86, v88);
          v3 = v89;

          v124 = 0;
          v125 = 0xE000000000000000;
          Unicode.Scalar.write<A>(to:)();
          MEMORY[0x1865CB0E0](58, 0xE100000000000000);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
          v90 = static _SetStorage.allocate(capacity:)();
          v5 = v90 + 56;
          v77 = *(v90 + 40);
          v71 = byte_1EEED3F28;
          v10 = 1;
          v73 = MEMORY[0x1865CD020](v77, byte_1EEED3F28, 1);
          v91 = -1 << *(v90 + 32);
          v92 = v73 & ~v91;
          v93 = v92 >> 6;
          v94 = *(v90 + 56 + 8 * (v92 >> 6));
          v95 = 1 << v92;
          v96 = *(v90 + 48);
          if (((1 << v92) & v94) != 0)
          {
            v97 = ~v91;
            while (*(v96 + v92) != v71)
            {
              v92 = (v92 + 1) & v97;
              v93 = v92 >> 6;
              v94 = *(v5 + 8 * (v92 >> 6));
              v95 = 1 << v92;
              if (((1 << v92) & v94) == 0)
              {
                goto LABEL_121;
              }
            }

LABEL_123:
            v71 = byte_1EEED3F29;
            v10 = 1;
            v73 = MEMORY[0x1865CD020](v77, byte_1EEED3F29, 1);
            v100 = -1 << *(v90 + 32);
            v101 = v73 & ~v100;
            v102 = v101 >> 6;
            v103 = *(v5 + 8 * (v101 >> 6));
            v104 = 1 << v101;
            v105 = *(v90 + 48);
            if (((1 << v101) & v103) != 0)
            {
              v106 = ~v100;
              while (*(v105 + v101) != v71)
              {
                v101 = (v101 + 1) & v106;
                v102 = v101 >> 6;
                v103 = *(v5 + 8 * (v101 >> 6));
                v104 = 1 << v101;
                if (((1 << v101) & v103) == 0)
                {
                  goto LABEL_127;
                }
              }

LABEL_129:
              v109 = HIBYTE(v3) & 0xF;
              if ((v3 & 0x2000000000000000) == 0)
              {
                v109 = v4 & 0xFFFFFFFFFFFFLL;
              }

              if (v109)
              {
                v123[0] = v4;
                v123[1] = v3;
                MEMORY[0x1EEE9AC00](v73);
                v120 = v123;
                v121 = v90;
                v122 = 4;

                v110 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v119, v4, v3);
                if (v111 == 1)
                {
                  v112 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v4, v3, v90, 4);
                  v114 = v113;
                }

                else
                {
                  v114 = v111;
                  v112 = v110;
                }

                v115 = v112;
                if (!v114)
                {
LABEL_137:
                  v115 = 0;
                  v114 = 0xE000000000000000;
                }

                MEMORY[0x1865CB0E0](v115, v114);

                return v124;
              }

              goto LABEL_137;
            }

LABEL_127:
            *(v5 + 8 * v102) = v104 | v103;
            *(v105 + v101) = v71;
            v107 = *(v90 + 16);
            v22 = __OFADD__(v107, 1);
            v108 = v107 + 1;
            if (!v22)
            {
              *(v90 + 16) = v108;
              goto LABEL_129;
            }
          }

          else
          {
LABEL_121:
            *(v5 + 8 * v93) = v95 | v94;
            *(v96 + v92) = v71;
            v98 = *(v90 + 16);
            v22 = __OFADD__(v98, 1);
            v99 = v98 + 1;
            if (!v22)
            {
              *(v90 + 16) = v99;
              goto LABEL_123;
            }
          }

          __break(1u);
LABEL_146:
          v117 = v73;
          v78 = _StringObject.sharedUTF8.getter();
          v73 = v117;
LABEL_86:
          LOBYTE(v77) = *(v78 + v77);
LABEL_87:
          if (v72 == v71)
          {
            continue;
          }

          break;
        }

        if ((a2 & 0x1000000000000000) != 0)
        {
          goto LABEL_99;
        }

        goto LABEL_89;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v73 = String.UTF8View._foreignSubscript(position:)();
        v75 = v73;
        if (v72 == v71)
        {
          goto LABEL_73;
        }
      }

      else if ((a2 & 0x2000000000000000) != 0)
      {
        v124 = v3;
        v125 = a2 & 0xFFFFFFFFFFFFFFLL;
        v75 = *(&v124 + v74);
        if (v72 == v71)
        {
          goto LABEL_73;
        }
      }

      else
      {
        if ((v3 & 0x1000000000000000) != 0)
        {
          v73 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        }

        else
        {
          v73 = _StringObject.sharedUTF8.getter();
        }

        v75 = *(v73 + v74);
        if (v72 == v71)
        {
LABEL_73:
          v73 = _StringGuts._slowEnsureMatchingEncoding(_:)(i, v3, a2);
          i = v73;
          if ((a2 & 0x1000000000000000) != 0)
          {
            goto LABEL_74;
          }

          goto LABEL_71;
        }
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
LABEL_74:
        if (v4 <= i >> 16)
        {
          goto LABEL_95;
        }

        v73 = String.UTF8View._foreignIndex(after:)();
LABEL_76:
        if (((v75 & 0xDF) - 91) >= 0xE6u && v73 >> 14 != v10)
        {
          v72 = v73 & 0xC;
          v76 = v73;
          if (v72 == v71)
          {
            goto LABEL_96;
          }

          goto LABEL_79;
        }

LABEL_17:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
        v11 = static _SetStorage.allocate(capacity:)();
        v6 = v11 + 56;
        v12 = *(v11 + 40);
        v4 = byte_1EEED3F00;
        v5 = 1;
        v13 = MEMORY[0x1865CD020](v12, byte_1EEED3F00, 1);
        v14 = -1 << *(v11 + 32);
        v15 = v13 & ~v14;
        v16 = v15 >> 6;
        v17 = *(v11 + 56 + 8 * (v15 >> 6));
        v18 = 1 << v15;
        v19 = *(v11 + 48);
        if (((1 << v15) & v17) != 0)
        {
          v20 = ~v14;
          while (*(v19 + v15) != v4)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = *(v6 + 8 * (v15 >> 6));
            v18 = 1 << v15;
            if (((1 << v15) & v17) == 0)
            {
              goto LABEL_21;
            }
          }
        }

        else
        {
LABEL_21:
          *(v6 + 8 * v16) = v18 | v17;
          *(v19 + v15) = v4;
          v21 = *(v11 + 16);
          v22 = __OFADD__(v21, 1);
          v23 = v21 + 1;
          if (v22)
          {
LABEL_92:
            __break(1u);
LABEL_93:
            v7 = _StringObject.sharedUTF8.getter();
            goto LABEL_12;
          }

          *(v11 + 16) = v23;
        }

        v4 = byte_1EEED3F01;
        v5 = 1;
        v24 = MEMORY[0x1865CD020](v12, byte_1EEED3F01, 1);
        v25 = -1 << *(v11 + 32);
        v26 = v24 & ~v25;
        v27 = v26 >> 6;
        v28 = *(v6 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        v30 = *(v11 + 48);
        if (((1 << v26) & v28) != 0)
        {
          v31 = ~v25;
          while (*(v30 + v26) != v4)
          {
            v26 = (v26 + 1) & v31;
            v27 = v26 >> 6;
            v28 = *(v6 + 8 * (v26 >> 6));
            v29 = 1 << v26;
            if (((1 << v26) & v28) == 0)
            {
              goto LABEL_27;
            }
          }

          goto LABEL_29;
        }

LABEL_27:
        *(v6 + 8 * v27) = v29 | v28;
        *(v30 + v26) = v4;
        v32 = *(v11 + 16);
        v22 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (!v22)
        {
          *(v11 + 16) = v33;
LABEL_29:
          v124 = v3;
          v125 = a2;
          MEMORY[0x1EEE9AC00](v24);
          v120 = &v124;
          v121 = v11;
          v122 = 4;
          swift_bridgeObjectRetain_n();
          v34 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v119, v3, a2);
          if (v35 == 1)
          {
            v34 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v3, a2, v11, 4);
          }

          v36 = v34;
          v37 = v35;

          if (v37)
          {
            v38 = v36;
          }

          else
          {
            v38 = 0;
          }

          if (v37)
          {
            v39 = v37;
          }

          else
          {
            v39 = 0xE000000000000000;
          }

          v40 = closure #1 in static _SwiftURL.fileSystemPath(for:style:compatibility:)(v38, v39);

          return v40;
        }

        goto LABEL_92;
      }

LABEL_71:
      v73 = (i & 0xFFFFFFFFFFFF0000) + v5;
      goto LABEL_76;
    }

LABEL_38:

    v4 = closure #1 in static _SwiftURL.fileSystemPath(for:style:compatibility:)(v3, a2);
    v3 = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
    v43 = static _SetStorage.allocate(capacity:)();
    v5 = v43 + 56;
    v44 = *(v43 + 40);
    LODWORD(v6) = byte_1EEED3ED8;
    v45 = MEMORY[0x1865CD020](v44, byte_1EEED3ED8, 1);
    v46 = -1 << *(v43 + 32);
    v47 = v45 & ~v46;
    v48 = v47 >> 6;
    v49 = *(v43 + 56 + 8 * (v47 >> 6));
    v50 = 1 << v47;
    v51 = *(v43 + 48);
    if (((1 << v47) & v49) != 0)
    {
      v52 = ~v46;
      while (*(v51 + v47) != v6)
      {
        v47 = (v47 + 1) & v52;
        v48 = v47 >> 6;
        v49 = *(v5 + 8 * (v47 >> 6));
        v50 = 1 << v47;
        if (((1 << v47) & v49) == 0)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
LABEL_42:
      *(v5 + 8 * v48) = v50 | v49;
      *(v51 + v47) = v6;
      v53 = *(v43 + 16);
      v22 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v22)
      {
        goto LABEL_90;
      }

      *(v43 + 16) = v54;
    }

    LODWORD(v6) = byte_1EEED3ED9;
    v55 = MEMORY[0x1865CD020](v44, byte_1EEED3ED9, 1);
    v56 = -1 << *(v43 + 32);
    v57 = v55 & ~v56;
    v58 = v57 >> 6;
    v59 = *(v5 + 8 * (v57 >> 6));
    v60 = 1 << v57;
    v61 = *(v43 + 48);
    if (((1 << v57) & v59) != 0)
    {
      break;
    }

LABEL_48:
    *(v5 + 8 * v58) = v60 | v59;
    *(v61 + v57) = v6;
    v63 = *(v43 + 16);
    v22 = __OFADD__(v63, 1);
    v64 = v63 + 1;
    if (!v22)
    {
      *(v43 + 16) = v64;
      goto LABEL_50;
    }

LABEL_90:
    __break(1u);
LABEL_91:
    v8 = String.UTF8View._foreignSubscript(position:)();
  }

  v62 = ~v56;
  while (*(v61 + v57) != v6)
  {
    v57 = (v57 + 1) & v62;
    v58 = v57 >> 6;
    v59 = *(v5 + 8 * (v57 >> 6));
    v60 = 1 << v57;
    if (((1 << v57) & v59) == 0)
    {
      goto LABEL_48;
    }
  }

LABEL_50:
  v65 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v65 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v65)
  {
    v124 = v4;
    v125 = v3;
    MEMORY[0x1EEE9AC00](v55);
    v120 = &v124;
    v121 = v43;
    v122 = 4;
    v66 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v119, v4, v3);
    if (v67 == 1)
    {
      v68 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v4, v3, v43, 4);
      v70 = v69;
    }

    else
    {
      v70 = v67;
      v68 = v66;
    }

    if (v70)
    {
      return v68;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t getEnumTagSinglePayload for _SwiftURL.URLStringBuilder(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for _SwiftURL.URLStringBuilder(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t URLComponents.scheme.getter()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v2 = 0;
  }

  if (!v1 && (*(v0 + 9) & 1) != 0)
  {
    if (*v0 && (*(*v0 + 48) & 1) == 0)
    {
      v3 = String.subscript.getter();
      v2 = MEMORY[0x1865CAE80](v3);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

unint64_t URLComponents.user.getter()
{
  v1 = v0[6];
  if (v1)
  {
    v2 = v0[5];
    v3 = v1;
  }

  else
  {
    v4 = *v0;
    v5 = *(v0 + 10) != 1 || v4 == 0;
    if (v5 || (*(v4 + 72) & 1) != 0)
    {
      if (!v0[8])
      {
        v7 = 0;
        if (!*(v0 + 11) || !v4)
        {
          return v7;
        }

        if (*(v4 + 96))
        {
          return 0;
        }

        v15 = String.subscript.getter();
        MEMORY[0x1865CAE80](v15);

        v1 = 0;
      }

      v6 = v1;

      v1 = v6;
      v2 = 0;
      v3 = 0xE000000000000000;
    }

    else
    {
      v8 = v0[6];
      v9 = String.subscript.getter();
      v2 = MEMORY[0x1865CAE80](v9);
      v3 = v10;

      v1 = v8;
    }
  }

  v11 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v11 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v17[0] = v2;
    v17[1] = v3;
    MEMORY[0x1EEE9AC00](v1);
    v16[2] = v17;
    v16[3] = MEMORY[0x1E69E7CD0];
    v16[4] = 4;

    v12 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(_sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA464509excluding8encodingSSSgShys5UInt8VG_SSAAE0D0VtFAFSRyAHGXEfU_SS_TG5TA_0, v16, v2, v3);
    if (v13 == 1)
    {
      v7 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v2, v3, MEMORY[0x1E69E7CD0], 4);
    }

    else
    {
      v7 = v12;
    }
  }

  else
  {

    return 0;
  }

  return v7;
}

unint64_t URLComponents.password.getter()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[7];
    v3 = v1;
  }

  else
  {
    v8 = *v0;
    v9 = *(v0 + 11) != 1 || v8 == 0;
    if (v9 || (*(v8 + 96) & 1) != 0)
    {
      return 0;
    }

    v11 = v0[8];
    v12 = String.subscript.getter();
    v2 = MEMORY[0x1865CAE80](v12);
    v3 = v13;

    v1 = v11;
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v15[0] = v2;
    v15[1] = v3;
    MEMORY[0x1EEE9AC00](v1);
    v14[2] = v15;
    v14[3] = MEMORY[0x1E69E7CD0];
    v14[4] = 4;

    v5 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v14, v2, v3);
    if (v6 == 1)
    {
      v7 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v2, v3, MEMORY[0x1E69E7CD0], 4);
    }

    else
    {
      v7 = v5;
    }

    swift_bridgeObjectRelease_n();

    return v7;
  }

  else
  {

    return 0;
  }
}

uint64_t URLComponents.port.getter()
{
  if (*(v0 + 96))
  {
    result = 0;
  }

  else
  {
    result = *(v0 + 88);
  }

  if (*(v0 + 96) == 1 && (*(v0 + 13) & 1) != 0)
  {
    if (!*v0 || (*(*v0 + 144) & 1) != 0)
    {
      return 0;
    }

    v2 = String.subscript.getter();
    v6 = v5;
    if (!((v2 ^ v3) >> 14))
    {

      return 0;
    }

    v7 = v2;
    v8 = v3;
    v9 = v4;
    v10 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v2, v3, v4, v5, 10);
    if ((v11 & 0x100) != 0)
    {
      v10 = specialized _parseInteger<A, B>(ascii:radix:)(v7, v8, v9, v6, 10);
    }

    v12 = v10;
    v13 = v11;

    if (v13)
    {
      return 0;
    }

    else
    {
      return v12;
    }
  }

  return result;
}

unint64_t URLComponents.fragment.getter()
{
  v1 = v0[18];
  if (v1)
  {
    v2 = v0[17];
    v3 = v1;
  }

  else
  {
    v8 = *v0;
    v9 = *(v0 + 16) != 1 || v8 == 0;
    if (v9 || (*(v8 + 216) & 1) != 0)
    {
      return 0;
    }

    v11 = v0[18];
    v12 = String.subscript.getter();
    v2 = MEMORY[0x1865CAE80](v12);
    v3 = v13;

    v1 = v11;
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v15[0] = v2;
    v15[1] = v3;
    MEMORY[0x1EEE9AC00](v1);
    v14[2] = v15;
    v14[3] = MEMORY[0x1E69E7CD0];
    v14[4] = 4;

    v5 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v14, v2, v3);
    if (v6 == 1)
    {
      v7 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v2, v3, MEMORY[0x1E69E7CD0], 4);
    }

    else
    {
      v7 = v5;
    }

    swift_bridgeObjectRelease_n();

    return v7;
  }

  else
  {

    return 0;
  }
}

uint64_t URLComponents.user.setter(unint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = a1;
  *(v2 + 8) = 0;
  *(v2 + 10) = 0;
  if (!a2)
  {
    goto LABEL_16;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v15 = v2;
    v23 = a1;
    v24 = a2;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v16 = String._bridgeToObjectiveCImpl()();

    v17 = [v16 _fastCharacterContents];
    v18 = v16;
    if (v17)
    {
      v23 = v4;
      v24 = v3;
      StringProtocol._ephemeralString.getter();
      v19 = String._bridgeToObjectiveCImpl()();

      v20 = [v19 length];
      swift_unknownObjectRelease();
      v7 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v17, v20, 2u, 0);
    }

    else
    {
      v7 = specialized Sequence.allSatisfy(_:)(v4, v3, 2);
    }

    v2 = v15;
    if (v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a2) & 0xF;
      v23 = a1;
      v24 = v3 & 0xFFFFFFFFFFFFFFLL;
      v5 = &v23;
    }

    else if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = _StringObject.sharedUTF8.getter();
    }

    v7 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v5, v6, 2u, 0);
    if (v7)
    {
      goto LABEL_16;
    }
  }

  v8 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v23 = v4;
    v24 = v3;
    MEMORY[0x1EEE9AC00](v7);
    v21[2] = &v23;
    v22 = 2;

    v9 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(_sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645015forURLComponent18skipAlreadyEncodedSSAA0M3SetACLLV_SbtFSSSRys5UInt8VGXEfU_SS_TG5TA_0, v21, v4, v3);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      swift_bridgeObjectRelease_n();
      v4 = v11;
    }

    else
    {
      v4 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v4, v3, 2u, 0);
      v12 = v13;
      swift_bridgeObjectRelease_n();
    }

    v3 = v12;
  }

  else
  {

    v4 = 0;
    v3 = 0xE000000000000000;
  }

LABEL_16:

  *(v2 + 40) = v4;
  *(v2 + 48) = v3;
  return result;
}

uint64_t URLComponents.password.setter(unint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = a1;
  *(v2 + 8) = 0;
  *(v2 + 11) = 0;
  if (!a2)
  {
    goto LABEL_16;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v15 = v2;
    v23 = a1;
    v24 = a2;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v16 = String._bridgeToObjectiveCImpl()();

    v17 = [v16 _fastCharacterContents];
    v18 = v16;
    if (v17)
    {
      v23 = v4;
      v24 = v3;
      StringProtocol._ephemeralString.getter();
      v19 = String._bridgeToObjectiveCImpl()();

      v20 = [v19 length];
      swift_unknownObjectRelease();
      v7 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v17, v20, 2u, 0);
    }

    else
    {
      v7 = specialized Sequence.allSatisfy(_:)(v4, v3, 2);
    }

    v2 = v15;
    if (v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a2) & 0xF;
      v23 = a1;
      v24 = v3 & 0xFFFFFFFFFFFFFFLL;
      v5 = &v23;
    }

    else if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = _StringObject.sharedUTF8.getter();
    }

    v7 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v5, v6, 2u, 0);
    if (v7)
    {
      goto LABEL_16;
    }
  }

  v8 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v23 = v4;
    v24 = v3;
    MEMORY[0x1EEE9AC00](v7);
    v21[2] = &v23;
    v22 = 2;

    v9 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v21, v4, v3);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      swift_bridgeObjectRelease_n();
      v4 = v11;
    }

    else
    {
      v4 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v4, v3, 2u, 0);
      v12 = v13;
      swift_bridgeObjectRelease_n();
    }

    v3 = v12;
  }

  else
  {

    v4 = 0;
    v3 = 0xE000000000000000;
  }

LABEL_16:

  *(v2 + 56) = v4;
  *(v2 + 64) = v3;
  return result;
}

uint64_t URLComponents.port.setter(uint64_t result, char a2)
{
  *(v2 + 8) = 0;
  *(v2 + 13) = 0;
  if ((a2 & 1) == 0 && result < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *(v2 + 88) = result;
    *(v2 + 96) = a2 & 1;
  }

  return result;
}

uint64_t URLComponents.query.setter(unint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = a1;
  *(v2 + 8) = 0;
  *(v2 + 15) = 0;
  if (!a2)
  {
    goto LABEL_16;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v15 = v2;
    v23 = a1;
    v24 = a2;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v16 = String._bridgeToObjectiveCImpl()();

    v17 = [v16 _fastCharacterContents];
    v18 = v16;
    if (v17)
    {
      v23 = v4;
      v24 = v3;
      StringProtocol._ephemeralString.getter();
      v19 = String._bridgeToObjectiveCImpl()();

      v20 = [v19 length];
      swift_unknownObjectRelease();
      v7 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v17, v20, 0x40u, 0);
    }

    else
    {
      v7 = specialized Sequence.allSatisfy(_:)(v4, v3, 64);
    }

    v2 = v15;
    if (v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a2) & 0xF;
      v23 = a1;
      v24 = v3 & 0xFFFFFFFFFFFFFFLL;
      v5 = &v23;
    }

    else if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = _StringObject.sharedUTF8.getter();
    }

    v7 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v5, v6, 0x40u, 0);
    if (v7)
    {
      goto LABEL_16;
    }
  }

  v8 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v23 = v4;
    v24 = v3;
    MEMORY[0x1EEE9AC00](v7);
    v21[2] = &v23;
    v22 = 64;

    v9 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v21, v4, v3);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      swift_bridgeObjectRelease_n();
      v4 = v11;
    }

    else
    {
      v4 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v4, v3, 0x40u, 0);
      v12 = v13;
      swift_bridgeObjectRelease_n();
    }

    v3 = v12;
  }

  else
  {

    v4 = 0;
    v3 = 0xE000000000000000;
  }

LABEL_16:

  *(v2 + 120) = v4;
  *(v2 + 128) = v3;
  return result;
}

uint64_t URLComponents.fragment.setter(unint64_t a1, unint64_t a2)
{
  v3 = a2;
  v4 = a1;
  *(v2 + 8) = 0;
  *(v2 + 16) = 0;
  if (!a2)
  {
    goto LABEL_16;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v15 = v2;
    v23 = a1;
    v24 = a2;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v16 = String._bridgeToObjectiveCImpl()();

    v17 = [v16 _fastCharacterContents];
    v18 = v16;
    if (v17)
    {
      v23 = v4;
      v24 = v3;
      StringProtocol._ephemeralString.getter();
      v19 = String._bridgeToObjectiveCImpl()();

      v20 = [v19 length];
      swift_unknownObjectRelease();
      v7 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v17, v20, 0x40u, 0);
    }

    else
    {
      v7 = specialized Sequence.allSatisfy(_:)(v4, v3, 64);
    }

    v2 = v15;
    if (v7)
    {
      goto LABEL_16;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a2) & 0xF;
      v23 = a1;
      v24 = v3 & 0xFFFFFFFFFFFFFFLL;
      v5 = &v23;
    }

    else if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = v4 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = _StringObject.sharedUTF8.getter();
    }

    v7 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v5, v6, 0x40u, 0);
    if (v7)
    {
      goto LABEL_16;
    }
  }

  v8 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v23 = v4;
    v24 = v3;
    MEMORY[0x1EEE9AC00](v7);
    v21[2] = &v23;
    v22 = 64;

    v9 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v21, v4, v3);
    if (v10)
    {
      v11 = v9;
      v12 = v10;
      swift_bridgeObjectRelease_n();
      v4 = v11;
    }

    else
    {
      v4 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v4, v3, 0x40u, 0);
      v12 = v13;
      swift_bridgeObjectRelease_n();
    }

    v3 = v12;
  }

  else
  {

    v4 = 0;
    v3 = 0xE000000000000000;
  }

LABEL_16:

  *(v2 + 136) = v4;
  *(v2 + 144) = v3;
  return result;
}

unint64_t specialized Sequence.allSatisfy(_:)(unint64_t a1, unint64_t a2, int a3)
{
  v18 = a3;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v6 = 4 * v5;
  v7 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  v16 = a2 & 0xFFFFFFFFFFFFFFLL;
  v15 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v9 = 15;
  while (1)
  {
    v10 = v9 >> 14;
    if (v9 >> 14 == v6)
    {
      return v10 == v6;
    }

    v11 = v9 & 0xC;
    result = v9;
    if (v11 == v8)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, a1, a2);
    }

    v13 = result >> 16;
    if (result >> 16 >= v5)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v14 = result;
      if (v11 != v8)
      {
        goto LABEL_18;
      }
    }

    else if ((a2 & 0x2000000000000000) != 0)
    {
      v17[0] = a1;
      v17[1] = v16;
      v14 = *(v17 + v13);
      if (v11 != v8)
      {
        goto LABEL_18;
      }
    }

    else
    {
      result = v15;
      if ((a1 & 0x1000000000000000) == 0)
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v14 = *(result + v13);
      if (v11 != v8)
      {
LABEL_18:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_19;
        }

        goto LABEL_23;
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v9, a1, a2);
    v9 = result;
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_19:
      v9 = (v9 & 0xFFFFFFFFFFFF0000) + 65540;
      if (v14 < 0)
      {
        return v10 == v6;
      }

      goto LABEL_25;
    }

LABEL_23:
    if (v5 <= v9 >> 16)
    {
      goto LABEL_28;
    }

    v9 = String.UTF8View._foreignIndex(after:)();
    if (v14 < 0)
    {
      return v10 == v6;
    }

LABEL_25:
    if ((UInt8.allowedURLComponents.getter(v14) & v18) == 0)
    {
      return v10 == v6;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD215LL10hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v29 = *MEMORY[0x1E69E9840];
  if (v2 > 2048)
  {
    return 0;
  }

  v6 = v2;
  v7 = v1;
  if (one-time initialization token for idnaTranscoder != -1)
  {
    v22 = v5;
    v23 = v4;
    v24 = v3;
    swift_once();
    v3 = v24;
    v4 = v23;
    v5 = v22;
  }

  if (byte_1ED436DC0 == 1)
  {
    return 0;
  }

  v8 = v3;
  v9 = v4;
  v10 = v5;
  v11 = static UIDNAHookICU.idnaTranscoder;
  result = swift_stdlib_isStackAllocationSafe();
  if ((result & 1) == 0)
  {
    result = swift_slowAlloc();
    v26 = 16;
    memset(v27, 0, sizeof(v27));
    v25 = 0;
    if (v7)
    {
      if (v6 >= 0xFFFFFFFF80000000)
      {
        v14 = result;
        v15 = v8(v11, v7, v6, result, 2048, &v26, &v25);
        if (v25 <= 0)
        {
          v19 = v15;
          v20 = v9(*&v27[1]);
          v16 = 0;
          if ((v20 & 1) != 0 && v19 > 0)
          {
            v16 = v10(v14, v19);
          }
        }

        else
        {
          v16 = 0;
        }

        v21 = v16;
        MEMORY[0x1865D2690](v14, -1, -1);
        return v21;
      }

LABEL_23:
      __break(1u);
    }

LABEL_25:
    __break(1u);
    return result;
  }

  v26 = 16;
  memset(v27, 0, sizeof(v27));
  v25 = 0;
  if (!v7)
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v6 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_23;
  }

  v13 = v8(v11, v7, v6, v28, 2048, &v26, &v25);
  if (v25 > 0)
  {
    return 0;
  }

  v17 = v13;
  v18 = v9(*&v27[1]);
  result = 0;
  if ((v18 & 1) != 0 && v17 > 0)
  {
    return v10(v28, v17);
  }

  return result;
}

uint64_t specialized Slice.initialize<A, B>(fromContentsOf:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a7)
  {
    v12 = (a7 + a5);
  }

  else
  {
    v12 = 0;
  }

  v13 = a6 - a5;
  v14 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5Si_Tg5041_sSr10initialize14fromContentsOfSiqd___t7g30Qyd__RszSlRd__lFSiSRyxGXEfU_s5i5V_Ss8jK4VTG5SryAKGTf1cn_n(a1, a2, a3, a4, v12, a6 - a5);
  if (v15)
  {
    v16 = specialized Sequence._copySequenceContents(initializing:)(v20, v12, v13, a1, a2, a3, a4);
    if ((v20[4] ^ v20[1]) >= 0x4000)
    {
LABEL_10:

      Substring.UTF8View.subscript.getter();
      Substring.UTF8View.formIndex(after:)();

      __break(1u);
      return result;
    }

    v17 = v16;

    v14 = v17;
  }

  v18 = __OFADD__(a5, v14);
  result = a5 + v14;
  if (v18)
  {
    __break(1u);
    goto LABEL_10;
  }

  return result;
}

unint64_t specialized ClosedRange.relative<A>(to:)(unint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = result;
  v5 = (result >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v5) = 1;
  }

  if ((a4 & 0xC) == 4 << v5)
  {
    v6 = a2;
    v7 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(a4, result, a2);
    a2 = v6;
    a3 = v7;
    a4 = result;
    if ((v6 & 0x1000000000000000) == 0)
    {
      return a3;
    }
  }

  else if ((a2 & 0x1000000000000000) == 0)
  {
    return a3;
  }

  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v8 > a4 >> 16)
  {
    v9 = a3;
    String.UTF8View._foreignIndex(after:)();
    return v9;
  }

  __break(1u);
  return result;
}

uint64_t _s10Foundation13RFC3986ParserV13percentEncode_9component18skipAlreadyEncodedSSSgxSg_AA13URLComponentsV9ComponentOSbtSyRzlFZSS_Tt2g5(uint64_t result, unint64_t a2, unsigned __int8 a3, unint64_t a4)
{
  if (!a2)
  {
    return result;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return 0;
  }

  if (a3 <= 4u)
  {
    if (a3 <= 1u)
    {
      if (a3 == 1)
      {
        goto LABEL_18;
      }

      goto LABEL_70;
    }

    if (a3 == 2)
    {
LABEL_18:
      v90 = result;
      v91 = a2;
      MEMORY[0x1EEE9AC00](result);
      v82 = &v90;
      LOBYTE(v83) = 2;
      v10 = v18 & 1;
      BYTE1(v83) = v18 & 1;
      v20 = v19;

      v13 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v81, v20, a2);
      if (!v21)
      {
        v15 = v20;
        v16 = a2;
        v17 = 2;
        goto LABEL_34;
      }

LABEL_41:
      v57 = v13;

      return v57;
    }

    if (a3 != 3)
    {
      v83 = 0;
      v82 = 217;
      goto LABEL_72;
    }

    v22 = a4;
    v23 = result;

    v24 = _s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v23, a2);
    if ((v24 & 1) == 0)
    {
      v90 = v23;
      v91 = a2;
      MEMORY[0x1EEE9AC00](v24);
      v82 = &v90;
      LOBYTE(v83) = 4;
      v54 = v22 & 1;
      BYTE1(v83) = v54;
      v13 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v81, v55, a2);
      if (!v56)
      {
        v15 = v23;
        v16 = a2;
        v17 = 4;
        v45 = v54;
        goto LABEL_35;
      }

      goto LABEL_41;
    }

    if (v22)
    {

      v23 = specialized Collection.dropFirst(_:)(1uLL, v23, a2);
      v26 = v25;
      v28 = v27;
      v22 = v29;
      swift_bridgeObjectRetain_n();
      if (!__OFSUB__(Substring.UTF8View.distance(from:to:)(), 1))
      {
        v30 = Substring.UTF8View.index(_:offsetBy:limitedBy:)();
        if (v31)
        {
          v32 = v26;
        }

        else
        {
          v32 = v30;
        }

        if (v32 >> 14 >= v23 >> 14)
        {
          v33 = _StringGuts.validateSubscalarRange(_:in:)(v23, v32, v23, v26, v28, v22);
          v35 = v34;
          v36 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5063_sSS8decoding2asSSx_q_mtcSlRzs16_UnicodeEncodingR_8CodeUnitQy_7g26Rtzr0_lufcSSSRyAGGXEfU_Ss8jK14V_s0C0O0H0OTG5Tf1cn_n(v33, v34, v28, v22);
          if (!v37)
          {
            v86 = v33;
            v87 = v35;
            v88 = v28;
            v89 = v22;

            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss19_HasContiguousBytes_pMd);
            if (swift_dynamicCast())
            {
              outlined init with take of Equatable(v84, &v90);
              __swift_project_boxed_opaque_existential_1(&v90, v93);
              if (dispatch thunk of _HasContiguousBytes._providesContiguousBytesNoCopy.getter())
              {

                __swift_project_boxed_opaque_existential_1(&v90, v93);
                dispatch thunk of _HasContiguousBytes.withUnsafeBytes<A>(_:)();
                v38 = *(&v84[0] + 1);
                v39 = *&v84[0];
                v40 = __swift_destroy_boxed_opaque_existential_1(&v90);
LABEL_59:
                v90 = 91;
                v91 = 0xE100000000000000;
                *&v84[0] = v39;
                *(&v84[0] + 1) = v38;
                MEMORY[0x1EEE9AC00](v40);
                v82 = v84;
                LOWORD(v83) = 260;
                v76 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v81, v39, v38);
                if (!v77)
                {
                  v76 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v39, v38, 4u, 1);
                }

                v78 = v76;
                v79 = v77;

                MEMORY[0x1865CB0E0](v78, v79);

                MEMORY[0x1865CB0E0](93, 0xE100000000000000);
                swift_bridgeObjectRelease_n();
                return v90;
              }

              __swift_destroy_boxed_opaque_existential_1(&v90);
            }

            else
            {
              v85 = 0;
              memset(v84, 0, sizeof(v84));
              outlined destroy of TermOfAddress?(v84, &_ss19_HasContiguousBytes_pSgMd);
            }

            v36 = _sSS44_fromNonContiguousUnsafeBitcastUTF8RepairingySS6result_Sb11repairsMadetxSlRzlFZSs0F4ViewV_Tt0g5(v33, v35, v28, v22);
          }

          v39 = v36;
          v38 = v37;

          goto LABEL_59;
        }

        goto LABEL_65;
      }

      __break(1u);
    }

    else if (_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v23, a2))
    {
      v58 = specialized Collection<>.firstIndex(of:)(37, v23, a2);
      if (v59)
      {
        if (_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v23, a2))
        {
          v90 = v23;
          v91 = a2;
          return String.init<A>(_:)();
        }

        else
        {

          return 0;
        }
      }

      v22 = v58;
      if ((a2 & 0x1000000000000000) == 0)
      {
        v60 = (v5 << 16) - 65532;
        goto LABEL_50;
      }

LABEL_66:
      v80 = String.UTF8View._foreignCount()();
      if (__OFSUB__(v80, 1))
      {
LABEL_69:
        __break(1u);
LABEL_70:
        v83 = 0;
        v82 = 209;
LABEL_72:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

      v60 = MEMORY[0x1865CB180](15, v80 - 1, v23, a2);
LABEL_50:
      if (v60 >> 14 >= v22 >> 14)
      {
        swift_bridgeObjectRetain_n();
        v61 = String.subscript.getter();
        v63 = v62;
        v65 = v64;
        v67 = v66;
        v90 = v61;
        v91 = v62;
        v92 = v64;
        v93 = v66;
        MEMORY[0x1EEE9AC00](v61);
        v82 = &v90;
        LOWORD(v83) = 8;

        v68 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v81, v61, v63, v65, v67);
        v70 = v69;

        if (!v70)
        {

          v68 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v61, v63, v65, v67, 8u, 0);
          v70 = v71;
        }

        v72 = String.subscript.getter();
        v73 = MEMORY[0x1865CAE80](v72);
        v75 = v74;

        v90 = v73;
        v91 = v75;
        MEMORY[0x1865CB0E0](v68, v70);

        MEMORY[0x1865CB0E0](93, 0xE100000000000000);
        swift_bridgeObjectRelease_n();

        return v90;
      }

      __break(1u);
      goto LABEL_69;
    }

    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  if (a3 <= 6u)
  {
    if (a3 == 5)
    {
      v6 = result;
      v7 = a4;

      v8 = _s10Foundation13RFC3986ParserV17percentEncodePath33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSx_SbtSyRzlFZSS_Tt1g5(v6, a2, v7 & 1);
LABEL_36:
      v46 = v8;

      return v46;
    }

    v90 = result;
    v91 = a2;
    MEMORY[0x1EEE9AC00](result);
    v82 = &v90;
    LOBYTE(v83) = 64;
    v10 = v41 & 1;
    BYTE1(v83) = v41 & 1;
    v43 = v42;

    v13 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v81, v43, a2);
    if (!v44)
    {
      v15 = v43;
      v16 = a2;
      v17 = 64;
      goto LABEL_34;
    }

    goto LABEL_41;
  }

  if (a3 == 7)
  {
    v90 = result;
    v91 = a2;
    MEMORY[0x1EEE9AC00](result);
    v82 = &v90;
    LOBYTE(v83) = 0x80;
    v10 = v9 & 1;
    BYTE1(v83) = v9 & 1;
    v12 = v11;

    v13 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v81, v12, a2);
    if (!v14)
    {
      v15 = v12;
      v16 = a2;
      v17 = 0x80;
LABEL_34:
      v45 = v10;
LABEL_35:
      v8 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v15, v16, v17, v45);
      goto LABEL_36;
    }

    goto LABEL_41;
  }

  v90 = result;
  v91 = a2;
  MEMORY[0x1EEE9AC00](result);
  v82 = &v90;
  LOBYTE(v83) = 64;
  v48 = v47 & 1;
  BYTE1(v83) = v47 & 1;
  v50 = v49;

  v51 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v81, v50, a2);
  if (!v52)
  {
    v51 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v50, a2, 0x40u, v48);
  }

  v53 = v51;

  return v53;
}

uint64_t URLComponents.percentEncodedPath.getter()
{
  if (v0[14])
  {
    v1 = v0[13];
  }

  else
  {
    v2 = *v0;
    if (*(v0 + 14) != 1 || v2 == 0)
    {
      v1 = 0;
    }

    else
    {
      if (*(v2 + 168))
      {
        v4 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v4 = String.subscript.getter();
      }

      v1 = MEMORY[0x1865CAE80](v4);
    }
  }

  return v1;
}

uint64_t URLComponents.percentEncodedPath.setter(unint64_t a1, unint64_t a2)
{
  *(v2 + 8) = 0;
  *(v2 + 14) = 0;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = v2;
    v15 = a1;
    v16 = a2;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v9 = String._bridgeToObjectiveCImpl()();

    v10 = [v9 _fastCharacterContents];
    v11 = v9;
    if (v10)
    {
      v15 = a1;
      v16 = a2;
      StringProtocol._ephemeralString.getter();
      v12 = String._bridgeToObjectiveCImpl()();

      v13 = [v12 length];
      swift_unknownObjectRelease();
      v14 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v10, v13, 0x10u, 1);
    }

    else
    {
      v14 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(a1, a2, 0x10u, 1);
    }

    v2 = v8;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a2) & 0xF;
      v15 = a1;
      v16 = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = &v15;
    }

    else if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = _StringObject.sharedUTF8.getter();
    }

    if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v5, v6, 0x10u, 1))
    {
LABEL_7:

      *(v2 + 104) = a1;
      *(v2 + 112) = a2;
      return result;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void URLComponents.url(relativeTo:)(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *v2;
  v7 = *(v2 + 8);
  v40 = *v2;
  v41 = v7;
  v48 = *(v2 + 105);
  v49 = *(v2 + 121);
  v50 = *(v2 + 137);
  v51 = *(v2 + 153);
  v44 = *(v2 + 41);
  v45 = *(v2 + 57);
  v46 = *(v2 + 73);
  v47 = *(v2 + 89);
  v42 = *(v2 + 9);
  v43 = *(v2 + 25);
  if (v7)
  {
    if (v6)
    {

      if (v4)
      {
        goto LABEL_4;
      }

LABEL_8:

      v29 = v6;
      v30[0] = v7;
      v36 = *(v2 + 105);
      v37 = *(v2 + 121);
      v38 = *(v2 + 137);
      v39 = *(v2 + 153);
      v32 = *(v2 + 41);
      v33 = *(v2 + 57);
      v34 = *(v2 + 73);
      v35 = *(v2 + 89);
      *&v30[1] = *(v2 + 9);
      v31 = *(v2 + 25);
      URLComponents.url.getter(a2);
      return;
    }

LABEL_9:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

  URLComponents._URLComponents.computedString.getter();
  if (!v8)
  {
    goto LABEL_9;
  }

  if (!v4)
  {
    goto LABEL_8;
  }

LABEL_4:
  swift_unknownObjectRetain();
  if (_foundation_swift_url_feature_enabled())
  {
    v29 = v4;
    *v30 = v5;
    URL.init(stringOrEmpty:relativeTo:)(a2);
    return;
  }

  v9 = *MEMORY[0x1E695E480];
  v10 = String._bridgeToObjectiveCImpl()();

  ObjectType = swift_getObjectType();
  v12 = (*(v5 + 432))(ObjectType, v5);
  v13 = CFURLCreateWithString(v9, v10, v12);
  swift_unknownObjectRelease();

  if (!v13)
  {
    swift_unknownObjectRelease();
    v18 = 0;
    goto LABEL_18;
  }

  if (!_foundation_swift_nsurl_feature_enabled())
  {
    v19 = type metadata accessor for _BridgedURL();
    v20 = objc_allocWithZone(v19);
    *&v20[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v13;
    v28.receiver = v20;
    v21 = v13;
    v22 = objc_msgSendSuper2(&v28, sel_init, v27.receiver, v27.super_class, v28.receiver, v19);
LABEL_17:
    v25 = v22;
    v13 = _BridgedURL.convertingFileReference()();
    v18 = v26;

    swift_unknownObjectRelease();
    goto LABEL_18;
  }

  type metadata accessor for _NSSwiftURL();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    v23 = type metadata accessor for _BridgedURL();
    v24 = objc_allocWithZone(v23);
    *&v24[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v13;
    v27.receiver = v24;
    v21 = v13;
    v22 = objc_msgSendSuper2(&v27, sel_init, v27.receiver, v23, v28.receiver, v28.super_class);
    goto LABEL_17;
  }

  v15 = v14;
  type metadata accessor for _BridgedNSSwiftURL();
  *(swift_allocObject() + 16) = v15;
  v16 = v13;
  v13 = _BridgedNSSwiftURL.convertingFileReference()();
  v18 = v17;

  swift_unknownObjectRelease();

LABEL_18:
  *a2 = v13;
  a2[1] = v18;
}

unint64_t _s10Foundation13RFC3986ParserV13percentDecode_9excluding8encodingSSSgxSg_Shys5UInt8VGSSAAE8EncodingVtSyRzlFZSS_Tt2B5(unint64_t result, unint64_t a2)
{
  if (a2)
  {
    v3 = HIBYTE(a2) & 0xF;
    if ((a2 & 0x2000000000000000) == 0)
    {
      v3 = result & 0xFFFFFFFFFFFFLL;
    }

    if (v3)
    {
      v14[0] = result;
      v14[1] = a2;
      MEMORY[0x1EEE9AC00](result);
      v13[2] = v14;
      v13[3] = v4;
      v5 = v4;
      v7 = v6;
      v13[4] = v6;
      v9 = v8;

      v10 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v13, v9, a2);
      if (v11 == 1)
      {
        v12 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v9, a2, v5, v7);
      }

      else
      {
        v12 = v10;
      }

      return v12;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t URLComponents.encodedHost.setter(unint64_t a1, unint64_t a2)
{
  *(v2 + 8) = 0;
  *(v2 + 12) = 0;
  *(v2 + 152) = 0;
  if (a2)
  {
    if (_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(a1, a2))
    {
      if (_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(a1, a2))
      {
LABEL_4:

        *(v2 + 72) = a1;
        *(v2 + 80) = a2;
        LOBYTE(v20) = 37;
        MEMORY[0x1EEE9AC00](v5);
        v18 = &v20;
        v6 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in BidirectionalCollection<>.lastIndex(of:), &v17, a1, a2);

        *(v2 + 152) = v6 & 1;
        return result;
      }
    }

    else
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        goto LABEL_14;
      }

      if ((a2 & 0x2000000000000000) != 0)
      {
        v9 = HIBYTE(a2) & 0xF;
        v20 = a1;
        v21 = a2 & 0xFFFFFFFFFFFFFFLL;
        v8 = &v20;
      }

      else if ((a1 & 0x1000000000000000) != 0)
      {
        v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v9 = a1 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v8 = _StringObject.sharedUTF8.getter();
      }

      if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v8, v9, 4u, 1))
      {
        goto LABEL_4;
      }
    }

    do
    {
      v19 = 0;
      v18 = 980;
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
LABEL_14:
      v10 = v2;
      v20 = a1;
      v21 = a2;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v11 = String._bridgeToObjectiveCImpl()();

      v12 = [v11 _fastCharacterContents];
      v13 = v11;
      if (v12)
      {
        v20 = a1;
        v21 = a2;
        StringProtocol._ephemeralString.getter();
        v14 = String._bridgeToObjectiveCImpl()();

        v15 = [v14 length];
        swift_unknownObjectRelease();
        v16 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v12, v15, 4u, 1);
      }

      else
      {
        v16 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(a1, a2, 4u, 1);
      }

      v2 = v10;
    }

    while ((v16 & 1) == 0);
    goto LABEL_4;
  }

  *(v2 + 72) = a1;
  *(v2 + 80) = 0;
  return result;
}

unint64_t URLComponents._URLComponents.user.getter()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = v1;
  }

  else if ((*(v0 + 10) & 1) != 0 && *v0 && (*(*v0 + 72) & 1) == 0)
  {
    v6 = *(v0 + 48);
    v7 = String.subscript.getter();
    v2 = MEMORY[0x1865CAE80](v7);
    v3 = v8;

    v1 = v6;
  }

  else
  {
    if (!*(v0 + 64))
    {
      if (*(v0 + 11) & 1) == 0 || !*v0 || (*(*v0 + 96))
      {
        return 0;
      }

      v13 = *(v0 + 48);
      v14 = String.subscript.getter();
      MEMORY[0x1865CAE80](v14);

      v1 = v13;
    }

    v4 = v1;

    v1 = v4;
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  v9 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v9 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v9)
  {
    v16[0] = v2;
    v16[1] = v3;
    MEMORY[0x1EEE9AC00](v1);
    v15[2] = v16;
    v15[3] = MEMORY[0x1E69E7CD0];
    v15[4] = 4;

    v10 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v15, v2, v3);
    if (v11 == 1)
    {
      v12 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v2, v3, MEMORY[0x1E69E7CD0], 4);
    }

    else
    {
      v12 = v10;
    }

    return v12;
  }

  else
  {

    return 0;
  }
}

unint64_t URLComponents._URLComponents.password.getter()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = v1;
  }

  else
  {
    if (*(v0 + 11) & 1) == 0 || !*v0 || (*(*v0 + 96))
    {
      return 0;
    }

    v9 = *(v0 + 64);
    v10 = String.subscript.getter();
    v2 = MEMORY[0x1865CAE80](v10);
    v3 = v11;

    v1 = v9;
  }

  v4 = HIBYTE(v3) & 0xF;
  if ((v3 & 0x2000000000000000) == 0)
  {
    v4 = v2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4)
  {
    v13[0] = v2;
    v13[1] = v3;
    MEMORY[0x1EEE9AC00](v1);
    v12[2] = v13;
    v12[3] = MEMORY[0x1E69E7CD0];
    v12[4] = 4;

    v5 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v12, v2, v3);
    if (v6 == 1)
    {
      v7 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v2, v3, MEMORY[0x1E69E7CD0], 4);
    }

    else
    {
      v7 = v5;
    }

    swift_bridgeObjectRelease_n();

    return v7;
  }

  else
  {

    return 0;
  }
}

uint64_t _s10Foundation13RFC3986ParserV23shouldPercentEncodeHost_9forSchemeSbx_q_SgtSyRzSyR_r0_lFZSS_SSTt1g5(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(a1, a2))
  {
    return 1;
  }

  if (!a4)
  {
    return 0;
  }

  v6 = String.lowercased()();
  if (one-time initialization token for schemesToPercentEncodeHost != -1)
  {
LABEL_13:
    swift_once();
  }

  v7 = 0;
  v8 = static RFC3986Parser.schemesToPercentEncodeHost;
  v9 = *(static RFC3986Parser.schemesToPercentEncodeHost + 2);
  v10 = static RFC3986Parser.schemesToPercentEncodeHost + 32;
  do
  {
    v5 = v9 != v7;
    if (v9 == v7)
    {
      break;
    }

    if (v7 >= v8[2])
    {
      __break(1u);
      goto LABEL_13;
    }

    v11 = v7 + 1;
    v12 = specialized Sequence<>.elementsEqual<A>(_:)(v6._countAndFlagsBits, v6._object, *&v10[8 * v7]);
    v7 = v11;
  }

  while ((v12 & 1) == 0);

  return v5;
}

uint64_t _s10Foundation13RFC3986ParserV23shouldPercentEncodeHost_9forSchemeSbx_q_SgtSyRzSyR_r0_lFZSs_SsTt1g5(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((a2 ^ a1) < 0x4000)
  {
    goto LABEL_7;
  }

  if (Substring.UTF8View.subscript.getter() != 91)
  {

    goto LABEL_7;
  }

  result = Substring.UTF8View.distance(from:to:)();
  if (!__OFSUB__(result, 1))
  {
    Substring.UTF8View.index(_:offsetBy:)();
    v10 = Substring.UTF8View.subscript.getter();

    if (v10 == 93)
    {
      return 1;
    }

LABEL_7:
    if (!a8)
    {
      return 0;
    }

    v12 = Substring.lowercased()();
    if (one-time initialization token for schemesToPercentEncodeHost != -1)
    {
LABEL_17:
      swift_once();
    }

    v13 = 0;
    v14 = static RFC3986Parser.schemesToPercentEncodeHost;
    v15 = *(static RFC3986Parser.schemesToPercentEncodeHost + 2);
    v16 = static RFC3986Parser.schemesToPercentEncodeHost + 32;
    do
    {
      v11 = v15 != v13;
      if (v15 == v13)
      {
        break;
      }

      if (v13 >= v14[2])
      {
        __break(1u);
        goto LABEL_17;
      }

      v17 = v13 + 1;
      v18 = specialized Sequence<>.elementsEqual<A>(_:)(v12._countAndFlagsBits, v12._object, *&v16[8 * v13]);
      v13 = v17;
    }

    while ((v18 & 1) == 0);

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t URLComponents._URLComponents.percentEncodedHost.getter()
{
  v104 = *MEMORY[0x1E69E9840];
  v2 = v0[10];
  if (v2)
  {
    v3 = v0[9];
    v4 = v0[10];
    goto LABEL_31;
  }

  if ((*(v0 + 12) & 1) != 0 && *v0 && (*(*v0 + 120) & 1) == 0)
  {
    v15 = v0[10];
    v16 = String.subscript.getter();
    v3 = MEMORY[0x1865CAE80](v16);
    v4 = v17;

    v2 = v15;
    goto LABEL_31;
  }

  if (v0[12])
  {
    if ((*(v0 + 13) & 1) != 0 && *v0 && (*(*v0 + 144) & 1) == 0)
    {
      v1 = v0[10];
      v5 = String.subscript.getter();
      v9 = v8;
      if ((v5 ^ v6) >> 14)
      {
        v10 = v5;
        v11 = v6;
        v12 = v7;
        _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v5, v6, v7, v8, 10);
        if ((v13 & 0x100) != 0)
        {
          specialized _parseInteger<A, B>(ascii:radix:)(v10, v11, v12, v9, 10);
          v19 = v18;

          if ((v19 & 1) == 0)
          {
LABEL_27:
            v3 = 0;
            v4 = 0xE000000000000000;
            v2 = v1;
            goto LABEL_31;
          }
        }

        else
        {
          v14 = v13;

          if ((v14 & 1) == 0)
          {
            goto LABEL_27;
          }
        }
      }

      else
      {
      }

      v2 = v1;
    }

    if (!v0[6])
    {
      if ((*(v0 + 10) & 1) != 0 && *v0 && (*(*v0 + 72) & 1) == 0)
      {
        v20 = v2;
        v23 = String.subscript.getter();
        MEMORY[0x1865CAE80](v23);
      }

      else
      {
        if (!v0[8])
        {
          if (*(v0 + 11) & 1) == 0 || !*v0 || (*(*v0 + 96))
          {
            goto LABEL_46;
          }

          v21 = v2;
          v22 = String.subscript.getter();
          MEMORY[0x1865CAE80](v22);

          v2 = v21;
        }

        v20 = v2;
      }

      v2 = v20;
    }
  }

  v3 = 0;
  v4 = 0xE000000000000000;
LABEL_31:
  v24 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v4 & 0x2000000000000000) != 0)
  {
    v25 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v25 = v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v25)
  {
    goto LABEL_59;
  }

  if (v0[19])
  {

    return v3;
  }

  if ((v4 & 0x1000000000000000) != 0)
  {

    goto LABEL_44;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    v1 = &v100;
    v100 = v3;
    v101 = v4 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v2);
    LOBYTE(v98) = 0;
    MEMORY[0x1EEE9AC00](v31);
    v95 = &v100;
    v96 = HIBYTE(v4) & 0xF;

    v28 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(&v100, v96, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v97, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v30 = v32;
    if (v32 != 1)
    {
      goto LABEL_80;
    }

LABEL_44:
    v1 = v0;
    v100 = v3;
    v101 = v4;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v33 = String._bridgeToObjectiveCImpl()();

    v34 = [v33 _fastCharacterContents];
    v35 = v33;
    if (v34)
    {
      v100 = v3;
      v101 = v4;
      StringProtocol._ephemeralString.getter();
      v36 = String._bridgeToObjectiveCImpl()();

      v37 = [v36 length];
      v38 = swift_unknownObjectRelease();
      MEMORY[0x1EEE9AC00](v38);
      LOBYTE(v98) = 0;
      MEMORY[0x1EEE9AC00](v39);
      v95 = v34;
      v96 = v37;
      v28 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v34);
      v30 = v40;
      swift_bridgeObjectRelease_n();
      v0 = v1;
      if (v30)
      {
        goto LABEL_81;
      }

LABEL_46:
      if ((v0[12] & 1) == 0)
      {
        return 0;
      }

      goto LABEL_47;
    }

    v100 = v3;
    v101 = v4;

    v52 = String.init<A>(_:)();
    v54 = v52;
    v55 = v53;
    if ((v53 & 0x1000000000000000) != 0)
    {
      v54 = static String._copying(_:)();
      v67 = v66;

      v55 = v67;
      v0 = v1;
      if ((v55 & 0x2000000000000000) == 0)
      {
        goto LABEL_65;
      }
    }

    else if ((v53 & 0x2000000000000000) == 0)
    {
LABEL_65:
      if ((v54 & 0x1000000000000000) == 0)
      {
        goto LABEL_109;
      }

      v56 = (v55 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_67;
    }

    v100 = v54;
    v101 = v55 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v52);
    LOBYTE(v98) = 0;
    MEMORY[0x1EEE9AC00](v68);
    v95 = &v100;
    v96 = v59;
    v58 = &v100;
    goto LABEL_79;
  }

  if ((v3 & 0x1000000000000000) != 0)
  {
    v26 = (v4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v63 = v2;
    v64 = _StringObject.sharedUTF8.getter();
    if (!v64)
    {
      goto LABEL_102;
    }

    v26 = v64;
    v24 = v65;
    v2 = v63;
  }

  MEMORY[0x1EEE9AC00](v2);
  LOBYTE(v98) = 0;
  MEMORY[0x1EEE9AC00](v27);
  v1 = &v94;
  v95 = v26;
  v96 = v24;

  v28 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v26, v24, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v97, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
  v30 = v29;
  if (v29 == 1)
  {
    goto LABEL_44;
  }

  while (1)
  {
    while (1)
    {
LABEL_80:
      swift_bridgeObjectRelease_n();
      if (!v30)
      {
        goto LABEL_46;
      }

LABEL_81:
      if ((v30 & 0x2000000000000000) != 0)
      {
        v3 = HIBYTE(v30) & 0xF;
      }

      else
      {
        v3 = v28 & 0xFFFFFFFFFFFFLL;
      }

      if (!v3)
      {
        goto LABEL_100;
      }

      v70 = _s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v28, v30);
      if ((v70 & 1) == 0)
      {
        v100 = v28;
        v101 = v30;
        MEMORY[0x1EEE9AC00](v70);
        v98 = &v100;
        v99 = 4;
        v73 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v97, v28, v30);
        if (!v74)
        {
          v73 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v28, v30, 4u, 0);
        }

        v3 = v73;
        swift_bridgeObjectRelease_n();
        return v3;
      }

      if (_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v28, v30))
      {
        break;
      }

      __break(1u);
LABEL_102:
      v92 = one-time initialization token for idnaTranscoder;

      if (v92 != -1)
      {
        swift_once();
      }

      if ((byte_1ED436DC0 & 1) == 0)
      {
        if (swift_stdlib_isStackAllocationSafe())
        {
          __break(1u);
        }

        swift_slowAlloc();
        __break(1u);
        goto LABEL_124;
      }

      v30 = 0;
      v28 = 0;
    }

    v71 = specialized Collection<>.firstIndex(of:)(37, v28, v30);
    if (v72)
    {
      if ((_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v28, v30) & 1) == 0)
      {
        goto LABEL_117;
      }

      v100 = v28;
      v101 = v30;
      v3 = String.init<A>(_:)();
LABEL_100:

      return v3;
    }

    v75 = v71;
    if ((v30 & 0x1000000000000000) == 0)
    {
      v76 = (v3 << 16) - 65532;
      goto LABEL_96;
    }

    v93 = String.UTF8View._foreignCount()();
    if (__OFSUB__(v93, 1))
    {
      break;
    }

    v76 = MEMORY[0x1865CB180](15, v93 - 1, v28, v30);
LABEL_96:
    if (v76 >> 14 >= v75 >> 14)
    {
      swift_bridgeObjectRetain_n();
      v77 = String.subscript.getter();
      v79 = v78;
      v81 = v80;
      v83 = v82;
      v100 = v77;
      v101 = v78;
      v102 = v80;
      v103 = v82;
      MEMORY[0x1EEE9AC00](v77);
      v98 = &v100;
      v99 = 8;

      v84 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SS_Tg5(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v97, v77, v79, v81, v83);
      v86 = v85;

      if (!v86)
      {

        v84 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSs_Ss8UTF8ViewVTt2g5(v77, v79, v81, v83, 8u, 0);
        v86 = v87;
      }

      v88 = String.subscript.getter();
      v89 = MEMORY[0x1865CAE80](v88);
      v91 = v90;

      v100 = v89;
      v101 = v91;
      MEMORY[0x1865CB0E0](v84, v86);

      MEMORY[0x1865CB0E0](93, 0xE100000000000000);

      swift_bridgeObjectRelease_n();
      v3 = v100;
      goto LABEL_100;
    }

    __break(1u);
LABEL_109:
    v56 = _StringObject.sharedUTF8.getter();
    if (!v56)
    {
      if (one-time initialization token for idnaTranscoder == -1)
      {
        goto LABEL_115;
      }

      goto LABEL_120;
    }

    v0 = v1;
LABEL_67:
    MEMORY[0x1EEE9AC00](v56);
    LOBYTE(v98) = 0;
    MEMORY[0x1EEE9AC00](v57);
    v95 = v58;
    v96 = v59;
LABEL_79:
    v28 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v58, v59, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v60, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v30 = v69;
  }

  __break(1u);
LABEL_120:
  swift_once();
LABEL_115:
  if (byte_1ED436DC0)
  {

    v0 = v1;
LABEL_117:
    swift_bridgeObjectRelease_n();
    if ((v0[12] & 1) == 0)
    {
      return 0;
    }

LABEL_47:
    if ((*(v0 + 13) & 1) != 0 && *v0 && (*(*v0 + 144) & 1) == 0)
    {
      v41 = String.subscript.getter();
      v45 = v44;
      if ((v41 ^ v42) >> 14)
      {
        v46 = v41;
        v47 = v42;
        v48 = v43;
        _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v41, v42, v43, v44, 10);
        if ((v49 & 0x100) != 0)
        {
          specialized _parseInteger<A, B>(ascii:radix:)(v46, v47, v48, v45, 10);
        }

        v50 = v49;

        if ((v50 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_54;
      }

      if (v0[6])
      {
        return 0;
      }
    }

    else
    {
LABEL_54:
      if (v0[6])
      {
        return 0;
      }
    }

    if ((*(v0 + 10) & 1) != 0 && *v0 && (*(*v0 + 72) & 1) == 0)
    {
      v61 = String.subscript.getter();
      MEMORY[0x1865CAE80](v61);
    }

    else
    {
      if (v0[8])
      {
        goto LABEL_59;
      }

      if (*(v0 + 11) & 1) == 0 || !*v0 || (*(*v0 + 96))
      {
        return 0;
      }

      v62 = String.subscript.getter();
      MEMORY[0x1865CAE80](v62);

LABEL_59:
    }

    return 0;
  }

LABEL_124:
  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  result = swift_slowAlloc();
  __break(1u);
  return result;
}

double URLComponents.init(string:encodingInvalidCharacters:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, _OWORD *a4@<X8>)
{

  specialized URLComponents._URLComponents.init(string:encodingInvalidCharacters:)(a1, a2, a3, v23);
  if (_s10Foundation13URLComponentsV01_B0VSgWOg(v23) == 1)
  {
    sub_18094C438(&v14);
  }

  else
  {
    v20 = v23[6];
    v21 = v23[7];
    v22[0] = v24[0];
    *(v22 + 10) = *(v24 + 10);
    v16 = v23[2];
    v17 = v23[3];
    v18 = v23[4];
    v19 = v23[5];
    v14 = v23[0];
    v15 = v23[1];
    _NSBundleDeallocatingImmortalBundle(&v14, v8);
  }

  v9 = v21;
  a4[6] = v20;
  a4[7] = v9;
  a4[8] = v22[0];
  *(a4 + 138) = *(v22 + 10);
  v10 = v17;
  a4[2] = v16;
  a4[3] = v10;
  v11 = v19;
  a4[4] = v18;
  a4[5] = v11;
  result = *&v14;
  v13 = v15;
  *a4 = v14;
  a4[1] = v13;
  return result;
}

uint64_t key path setter for URLComponents.scheme : URLComponents(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  specialized URLComponents.scheme.setter(v1, v2);
}

void (*URLComponents.scheme.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x2B0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 672) = v1;
  v5 = *v1;
  v6 = *(v1 + 9);
  v8 = v1[3];
  v7 = v1[4];
  v4[85] = v7;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v7;
  if (!v7 && (v6 & 1) != 0)
  {
    if (v5 && (*(v5 + 48) & 1) == 0)
    {
      v11 = String.subscript.getter();
      v9 = MEMORY[0x1865CAE80](v11);
      v10 = v12;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  v4[80] = v9;
  v4[81] = v10;

  return URLComponents.scheme.modify;
}

void URLComponents.scheme.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *a1 + 656;
  v4 = *(*a1 + 640);
  v5 = *(*a1 + 648);
  *(*(*a1 + 672) + 8) = 0;
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      v9 = specialized Collection.first.getter(v4, v5);
      if ((v9 & 0x100) != 0 || v9 < 0x41u)
      {
        goto LABEL_141;
      }

      if ((v5 & 0x1000000000000000) != 0)
      {
        *(v2 + 656) = v4;
        *(v2 + 664) = v5;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol._ephemeralString.getter();
        v137 = String._bridgeToObjectiveCImpl()();

        v138 = [v137 _fastCharacterContents];
        v139 = v137;
        if (v138)
        {
          *(v2 + 656) = v4;
          *(v2 + 664) = v5;
          StringProtocol._ephemeralString.getter();
          v140 = String._bridgeToObjectiveCImpl()();

          v141 = [v140 length];
          swift_unknownObjectRelease();
          if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v138, v141, 1u, 0))
          {
            goto LABEL_141;
          }
        }

        else if ((specialized Sequence.allSatisfy(_:)(v4, v5, 1) & 1) == 0)
        {
          goto LABEL_141;
        }
      }

      else
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v11 = HIBYTE(v5) & 0xF;
          *(v2 + 656) = v4;
          *(v2 + 664) = v5 & 0xFFFFFFFFFFFFFFLL;
          v10 = v3;
        }

        else if ((v4 & 0x1000000000000000) != 0)
        {
          v10 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v11 = v4 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v10 = _StringObject.sharedUTF8.getter();
        }

        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v10, v11, 1u, 0))
        {
          goto LABEL_141;
        }
      }
    }

    v23 = v2 + 320;
    v24 = *(v2 + 672);
    *(v24 + 24) = v4;
    *(v24 + 32) = v5;

    v25 = *(v24 + 32);
    v26 = *(v24 + 48);
    v27 = *(v24 + 64);
    *(v2 + 400) = *(v24 + 80);
    v28 = *(v24 + 96);
    v29 = *(v24 + 112);
    v30 = *(v24 + 128);
    *(v2 + 458) = *(v24 + 138);
    *(v2 + 432) = v29;
    *(v2 + 448) = v30;
    *(v2 + 416) = v28;
    v31 = *(v24 + 16);
    *(v2 + 320) = *v24;
    *(v2 + 336) = v31;
    *(v2 + 368) = v26;
    *(v2 + 384) = v27;
    *(v2 + 352) = v25;
    if (!*(v2 + 400))
    {
      if ((*(v2 + 332) & 1) != 0 && *v23 && (*(*v23 + 120) & 1) == 0)
      {
        v71 = String.subscript.getter();
        MEMORY[0x1865CAE80](v71);
      }

      else
      {
        URLComponents._URLComponents.port.getter();
        if (v32)
        {
          URLComponents._URLComponents.percentEncodedUser.getter();
          if (!v33)
          {
LABEL_127:

            free(v2);
            return;
          }
        }
      }
    }

    v72 = *(v2 + 672);

    v73 = v72[1];
    *(v2 + 480) = *v72;
    *(v2 + 496) = v73;
    v74 = v72[2];
    v75 = v72[3];
    v76 = v72[5];
    *(v2 + 544) = v72[4];
    *(v2 + 560) = v76;
    *(v2 + 512) = v74;
    *(v2 + 528) = v75;
    v77 = v72[6];
    v78 = v72[7];
    v79 = v72[8];
    *(v2 + 618) = *(v72 + 138);
    *(v2 + 592) = v78;
    *(v2 + 608) = v79;
    *(v2 + 576) = v77;
    v80 = URLComponents._URLComponents.encodedHost.getter();
    if (v81)
    {
      v82 = v81;
      v83 = HIBYTE(v81) & 0xF;
      v84 = v80 & 0xFFFFFFFFFFFFLL;
      if ((v81 & 0x2000000000000000) != 0)
      {
        v85 = HIBYTE(v81) & 0xF;
      }

      else
      {
        v85 = v80 & 0xFFFFFFFFFFFFLL;
      }

      if (v85)
      {
        if (*(v2 + 632))
        {
          *(v2 + 656) = v80;
          *(v2 + 664) = v81;
          MEMORY[0x1EEE9AC00](v80);
          v164 = v3;
          v165 = MEMORY[0x1E69E7CD0];
          v166 = 4;
          v87 = v86;
          v88 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v162, v86, v82);
          if (v89 == 1)
          {
            v90 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v87, v82, MEMORY[0x1E69E7CD0], 4);
          }

          else
          {
            v90 = v88;
          }

          v91 = v89;

          goto LABEL_125;
        }

        if ((v81 & 0x1000000000000000) != 0)
        {
          v92 = v80;
        }

        else if ((v81 & 0x2000000000000000) != 0)
        {
          v92 = v80;
          *(v2 + 656) = v80;
          *(v2 + 664) = v81 & 0xFFFFFFFFFFFFFFLL;
          MEMORY[0x1EEE9AC00](v80);
          LOBYTE(v166) = 0;
          MEMORY[0x1EEE9AC00](v97);
          v162 = v3;
          v163 = v83;

          v95 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v3, v83, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, &v164, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
          if (v96 != 1)
          {
            goto LABEL_124;
          }
        }

        else
        {
          if ((v80 & 0x1000000000000000) != 0)
          {
            v92 = v80;
            v93 = (v81 & 0xFFFFFFFFFFFFFFFLL) + 32;
          }

          else
          {
            v92 = v80;
            v80 = _StringObject.sharedUTF8.getter();
            if (!v80)
            {
              v161 = one-time initialization token for idnaTranscoder;

              if (v161 != -1)
              {
                swift_once();
              }

              if ((byte_1ED436DC0 & 1) == 0)
              {
                goto LABEL_144;
              }

              v96 = 0;
              v95 = 0;
              goto LABEL_124;
            }

            v93 = v80;
            v84 = v143;
          }

          MEMORY[0x1EEE9AC00](v80);
          LOBYTE(v166) = 0;
          MEMORY[0x1EEE9AC00](v94);
          v162 = v93;
          v163 = v84;

          v95 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v93, v84, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, &v164, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
          if (v96 != 1)
          {
LABEL_124:
            v90 = v95;
            v91 = v96;
            swift_bridgeObjectRelease_n();
LABEL_125:
            v81 = v91;
            v80 = v90;
            goto LABEL_126;
          }
        }

        *(v2 + 656) = v92;
        *(v2 + 664) = v82;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol._ephemeralString.getter();
        v98 = String._bridgeToObjectiveCImpl()();

        v99 = [v98 _fastCharacterContents];
        v100 = v98;
        if (v99)
        {
          *(v2 + 656) = v92;
          *(v2 + 664) = v82;
          StringProtocol._ephemeralString.getter();
          v101 = String._bridgeToObjectiveCImpl()();

          v102 = [v101 length];
          v103 = swift_unknownObjectRelease();
          MEMORY[0x1EEE9AC00](v103);
          LOBYTE(v166) = 0;
          MEMORY[0x1EEE9AC00](v104);
          v162 = v99;
          v163 = v102;
          v105 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v99);
          v107 = v106;
          swift_bridgeObjectRelease_n();
          v81 = v107;
          v80 = v105;
          goto LABEL_126;
        }

        *(v2 + 656) = v92;
        *(v2 + 664) = v82;

        v120 = String.init<A>(_:)();
        v122 = v120;
        v123 = v121;
        if ((v121 & 0x1000000000000000) != 0)
        {
          v122 = static String._copying(_:)();
          v153 = v152;

          v123 = v153;
          if ((v153 & 0x2000000000000000) == 0)
          {
LABEL_86:
            if ((v122 & 0x1000000000000000) != 0)
            {
              v124 = (v123 & 0xFFFFFFFFFFFFFFFLL) + 32;
            }

            else
            {
              v124 = _StringObject.sharedUTF8.getter();
              if (!v124)
              {
                if (one-time initialization token for idnaTranscoder != -1)
                {
                  swift_once();
                }

                if (byte_1ED436DC0 != 1)
                {
                  goto LABEL_150;
                }

                v129 = 0;
                v131 = 0;
                goto LABEL_89;
              }
            }

            MEMORY[0x1EEE9AC00](v124);
            LOBYTE(v166) = 0;
            MEMORY[0x1EEE9AC00](v125);
            v162 = v126;
            v163 = v127;
            v129 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v126, v127, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v128, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
            v131 = v130;
LABEL_89:

            swift_bridgeObjectRelease_n();
            v80 = v129;
            v81 = v131;
            goto LABEL_126;
          }
        }

        else if ((v121 & 0x2000000000000000) == 0)
        {
          goto LABEL_86;
        }

        *(v2 + 656) = v122;
        *(v2 + 664) = v123 & 0xFFFFFFFFFFFFFFLL;
        MEMORY[0x1EEE9AC00](v120);
        LOBYTE(v166) = 0;
        MEMORY[0x1EEE9AC00](v154);
        v162 = v3;
        v163 = v155;
        v157 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v3, v155, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v156, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
        v159 = v158;
        swift_bridgeObjectRelease_n();

        v81 = v159;
        v80 = v157;
        goto LABEL_126;
      }

      v80 = 0;
      v81 = 0xE000000000000000;
    }

LABEL_126:
    URLComponents._URLComponents.host.setter(v80, v81);
    goto LABEL_127;
  }

  if (!v5)
  {
    goto LABEL_18;
  }

  v6 = specialized Collection.first.getter(v4, v5);
  if ((v6 & 0x100) != 0 || v6 < 0x41u)
  {
  }

  else if ((v5 & 0x1000000000000000) != 0)
  {
    *(v2 + 656) = v4;
    *(v2 + 664) = v5;
    lazy protocol witness table accessor for type String and conformance String();

    StringProtocol._ephemeralString.getter();
    v132 = String._bridgeToObjectiveCImpl()();

    v133 = [v132 _fastCharacterContents];
    v134 = v132;
    if (v133)
    {
      *(v2 + 656) = v4;
      *(v2 + 664) = v5;
      StringProtocol._ephemeralString.getter();
      v135 = String._bridgeToObjectiveCImpl()();

      v136 = [v135 length];
      swift_unknownObjectRelease();
      if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v133, v136, 1u, 0))
      {
        goto LABEL_18;
      }
    }

    else if (specialized Sequence.allSatisfy(_:)(v4, v5, 1))
    {
      goto LABEL_18;
    }
  }

  else
  {
    if ((v5 & 0x2000000000000000) != 0)
    {
      v8 = HIBYTE(v5) & 0xF;
      *(v2 + 656) = v4;
      *(v2 + 664) = v5 & 0xFFFFFFFFFFFFFFLL;
      v7 = v3;
    }

    else if ((v4 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v4 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = _StringObject.sharedUTF8.getter();
    }

    v12 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v7, v8, 1u, 0);

    if (v12)
    {
LABEL_18:
      v13 = *(v2 + 672);
      *(v13 + 24) = v4;
      *(v13 + 32) = v5;

      v14 = *(v13 + 16);
      *v2 = *v13;
      *(v2 + 16) = v14;
      v15 = *(v13 + 32);
      v16 = *(v13 + 48);
      v17 = *(v13 + 80);
      *(v2 + 64) = *(v13 + 64);
      *(v2 + 80) = v17;
      *(v2 + 32) = v15;
      *(v2 + 48) = v16;
      v18 = *(v13 + 96);
      v19 = *(v13 + 112);
      v20 = *(v13 + 128);
      *(v2 + 138) = *(v13 + 138);
      *(v2 + 112) = v19;
      *(v2 + 128) = v20;
      *(v2 + 96) = v18;
      if (!*(v2 + 80))
      {
        if ((*(v2 + 12) & 1) != 0 && *v2 && (*(*v2 + 120) & 1) == 0)
        {
          v34 = String.subscript.getter();
          MEMORY[0x1865CAE80](v34);
        }

        else
        {
          URLComponents._URLComponents.port.getter();
          if (v21)
          {
            URLComponents._URLComponents.percentEncodedUser.getter();
            if (!v22)
            {
LABEL_119:

              goto LABEL_127;
            }
          }
        }
      }

      v35 = *(v2 + 672);

      v36 = v35[1];
      *(v2 + 160) = *v35;
      *(v2 + 176) = v36;
      v37 = v35[2];
      v38 = v35[3];
      v39 = v35[5];
      *(v2 + 224) = v35[4];
      *(v2 + 240) = v39;
      *(v2 + 192) = v37;
      *(v2 + 208) = v38;
      v40 = v35[6];
      v41 = v35[7];
      v42 = v35[8];
      *(v2 + 298) = *(v35 + 138);
      *(v2 + 272) = v41;
      *(v2 + 288) = v42;
      *(v2 + 256) = v40;
      v43 = URLComponents._URLComponents.encodedHost.getter();
      if (v44)
      {
        v45 = v44;
        v46 = HIBYTE(v44) & 0xF;
        v47 = v43 & 0xFFFFFFFFFFFFLL;
        if ((v44 & 0x2000000000000000) != 0)
        {
          v48 = HIBYTE(v44) & 0xF;
        }

        else
        {
          v48 = v43 & 0xFFFFFFFFFFFFLL;
        }

        if (v48)
        {
          if (*(v2 + 312))
          {
            *(v2 + 656) = v43;
            *(v2 + 664) = v44;
            MEMORY[0x1EEE9AC00](v43);
            v164 = v3;
            v165 = MEMORY[0x1E69E7CD0];
            v166 = 4;
            v50 = v49;
            v51 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v162, v49, v45);
            if (v52 == 1)
            {
              v53 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v50, v45, MEMORY[0x1E69E7CD0], 4);
            }

            else
            {
              v53 = v51;
            }

            v54 = v52;

            goto LABEL_117;
          }

          if ((v44 & 0x1000000000000000) != 0)
          {
            v55 = v43;

            goto LABEL_55;
          }

          if ((v44 & 0x2000000000000000) != 0)
          {
            v55 = v43;
            *(v2 + 656) = v43;
            *(v2 + 664) = v44 & 0xFFFFFFFFFFFFFFLL;
            MEMORY[0x1EEE9AC00](v43);
            LOBYTE(v166) = 0;
            MEMORY[0x1EEE9AC00](v60);
            v162 = v3;
            v163 = v46;

            v58 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v3, v46, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, &v164, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
            if (v59 == 1)
            {
              goto LABEL_55;
            }

LABEL_116:
            v53 = v58;
            v54 = v59;
            swift_bridgeObjectRelease_n();
LABEL_117:
            v44 = v54;
            v43 = v53;
            goto LABEL_118;
          }

          if ((v43 & 0x1000000000000000) != 0)
          {
            v55 = v43;
            v56 = (v44 & 0xFFFFFFFFFFFFFFFLL) + 32;
            goto LABEL_50;
          }

          v55 = v43;
          v43 = _StringObject.sharedUTF8.getter();
          if (v43)
          {
            v56 = v43;
            v47 = v142;
LABEL_50:
            MEMORY[0x1EEE9AC00](v43);
            LOBYTE(v166) = 0;
            MEMORY[0x1EEE9AC00](v57);
            v162 = v56;
            v163 = v47;

            v58 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v56, v47, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, &v164, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
            if (v59 != 1)
            {
              goto LABEL_116;
            }

LABEL_55:
            *(v2 + 656) = v55;
            *(v2 + 664) = v45;
            lazy protocol witness table accessor for type String and conformance String();
            StringProtocol._ephemeralString.getter();
            v61 = String._bridgeToObjectiveCImpl()();

            v62 = [v61 _fastCharacterContents];
            v63 = v61;
            if (v62)
            {
              *(v2 + 656) = v55;
              *(v2 + 664) = v45;
              StringProtocol._ephemeralString.getter();
              v64 = String._bridgeToObjectiveCImpl()();

              v65 = [v64 length];
              v66 = swift_unknownObjectRelease();
              MEMORY[0x1EEE9AC00](v66);
              LOBYTE(v166) = 0;
              MEMORY[0x1EEE9AC00](v67);
              v162 = v62;
              v163 = v65;
              v68 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v62);
              v70 = v69;
              swift_bridgeObjectRelease_n();
              v44 = v70;
              v43 = v68;
              goto LABEL_118;
            }

            *(v2 + 656) = v55;
            *(v2 + 664) = v45;

            v108 = String.init<A>(_:)();
            v110 = v108;
            v111 = v109;
            if ((v109 & 0x1000000000000000) != 0)
            {
              v110 = static String._copying(_:)();
              v145 = v144;

              v111 = v145;
              if ((v145 & 0x2000000000000000) == 0)
              {
                goto LABEL_80;
              }
            }

            else if ((v109 & 0x2000000000000000) == 0)
            {
LABEL_80:
              if ((v110 & 0x1000000000000000) != 0)
              {
                v112 = (v111 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_82:
                MEMORY[0x1EEE9AC00](v112);
                LOBYTE(v166) = 0;
                MEMORY[0x1EEE9AC00](v113);
                v162 = v114;
                v163 = v115;
                v117 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v114, v115, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v116, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
                v119 = v118;
LABEL_83:

                swift_bridgeObjectRelease_n();
                v43 = v117;
                v44 = v119;
                goto LABEL_118;
              }

              v112 = _StringObject.sharedUTF8.getter();
              if (v112)
              {
                goto LABEL_82;
              }

              if (one-time initialization token for idnaTranscoder != -1)
              {
                swift_once();
              }

              if (byte_1ED436DC0 == 1)
              {
                v117 = 0;
                v119 = 0;
                goto LABEL_83;
              }

              goto LABEL_148;
            }

            *(v2 + 656) = v110;
            *(v2 + 664) = v111 & 0xFFFFFFFFFFFFFFLL;
            MEMORY[0x1EEE9AC00](v108);
            LOBYTE(v166) = 0;
            MEMORY[0x1EEE9AC00](v146);
            v162 = v3;
            v163 = v147;
            v149 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v3, v147, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v148, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
            v151 = v150;
            swift_bridgeObjectRelease_n();

            v44 = v151;
            v43 = v149;
            goto LABEL_118;
          }

          v160 = one-time initialization token for idnaTranscoder;

          if (v160 != -1)
          {
            swift_once();
          }

          if (byte_1ED436DC0)
          {
            v59 = 0;
            v58 = 0;
            goto LABEL_116;
          }

          goto LABEL_142;
        }

        v43 = 0;
        v44 = 0xE000000000000000;
      }

LABEL_118:
      URLComponents._URLComponents.host.setter(v43, v44);
      goto LABEL_119;
    }
  }

LABEL_141:
  v167 = 0;
  v166 = 813;
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_142:
  if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
  {
LABEL_146:
    swift_slowAlloc();
    __break(1u);
    goto LABEL_147;
  }

  __break(1u);
LABEL_144:
  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
    goto LABEL_146;
  }

LABEL_147:
  swift_slowAlloc();
  __break(1u);
LABEL_148:
  if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
  {
LABEL_152:
    swift_slowAlloc();
    __break(1u);
    goto LABEL_153;
  }

  __break(1u);
LABEL_150:
  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
    goto LABEL_152;
  }

LABEL_153:
  swift_slowAlloc();
  __break(1u);
}

void (*URLComponents.user.modify(void *a1))(unint64_t **a1, char a2)
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
  v3[4] = v1;
  v3[5] = *(v1 + 48);
  *v3 = URLComponents.user.getter();
  v4[1] = v5;
  return URLComponents.user.modify;
}

void URLComponents.user.modify(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 2);
  v4 = (*a1)[4];
  v6 = **a1;
  v5 = (*a1)[1];
  *(v4 + 8) = 0;
  *(v4 + 10) = 0;
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      if ((v5 & 0x1000000000000000) == 0)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v10 = HIBYTE(v5) & 0xF;
          v2[2] = v6;
          v2[3] = v5 & 0xFFFFFFFFFFFFFFLL;
          v9 = v3;
        }

        else if ((v6 & 0x1000000000000000) != 0)
        {
          v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v10 = v6 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = _StringObject.sharedUTF8.getter();
        }

        v13 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v9, v10, 2u, 0);
        if (v13)
        {
          goto LABEL_17;
        }

LABEL_31:
        v31 = HIBYTE(v5) & 0xF;
        if ((v5 & 0x2000000000000000) == 0)
        {
          v31 = v6 & 0xFFFFFFFFFFFFLL;
        }

        if (v31)
        {
          v2[2] = v6;
          v2[3] = v5;
          MEMORY[0x1EEE9AC00](v13);
          v39 = v3;
          v40 = 2;

          v32 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v38, v6, v5);
          if (v33)
          {
            v34 = v32;
            v35 = v33;
            swift_bridgeObjectRelease_n();

            v6 = v34;
          }

          else
          {
            v6 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v6, v5, 2u, 0);
            v35 = v36;
            swift_bridgeObjectRelease_n();
          }

          v5 = v35;
        }

        else
        {

          v6 = 0;
          v5 = 0xE000000000000000;
        }

        goto LABEL_39;
      }

      v2[2] = v6;
      v2[3] = v5;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v26 = String._bridgeToObjectiveCImpl()();

      v27 = [v26 _fastCharacterContents];
      v28 = v26;
      if (v27)
      {
        v2[2] = v6;
        v2[3] = v5;
        StringProtocol._ephemeralString.getter();
        v29 = String._bridgeToObjectiveCImpl()();

        v30 = [v29 length];
        swift_unknownObjectRelease();
        v13 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v27, v30, 2u, 0);
        if ((v13 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v13 = specialized Sequence.allSatisfy(_:)(v6, v5, 2);
        if ((v13 & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

LABEL_17:

LABEL_39:
    v37 = v2[4];
    *(v37 + 40) = v6;
    *(v37 + 48) = v5;
    goto LABEL_40;
  }

  if (v5)
  {
    if ((v5 & 0x1000000000000000) == 0)
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v5) & 0xF;
        v2[2] = v6;
        v2[3] = v5 & 0xFFFFFFFFFFFFFFLL;
        v7 = v3;
      }

      else if ((v6 & 0x1000000000000000) != 0)
      {
        v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v8 = v6 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = _StringObject.sharedUTF8.getter();
      }

      v11 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v7, v8, 2u, 0);

      if (v11)
      {
        goto LABEL_14;
      }

LABEL_20:
      v19 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v19 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        v2[2] = v6;
        v2[3] = v5;
        MEMORY[0x1EEE9AC00](v12);
        v39 = v3;
        v40 = 2;

        v20 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v38, v6, v5);
        if (v21)
        {
          v22 = v20;
          v23 = v21;
          swift_bridgeObjectRelease_n();

          v6 = v22;
        }

        else
        {
          v6 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v6, v5, 2u, 0);
          v23 = v24;
          swift_bridgeObjectRelease_n();
        }

        v5 = v23;
      }

      else
      {

        v6 = 0;
        v5 = 0xE000000000000000;
      }

      goto LABEL_28;
    }

    v2[2] = v6;
    v2[3] = v5;
    lazy protocol witness table accessor for type String and conformance String();

    StringProtocol._ephemeralString.getter();
    v14 = String._bridgeToObjectiveCImpl()();

    v15 = [v14 _fastCharacterContents];
    v16 = v14;
    if (v15)
    {
      v2[2] = v6;
      v2[3] = v5;
      StringProtocol._ephemeralString.getter();
      v17 = String._bridgeToObjectiveCImpl()();

      v18 = [v17 length];
      swift_unknownObjectRelease();
      v12 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v15, v18, 2u, 0);
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v12 = specialized Sequence.allSatisfy(_:)(v6, v5, 2);
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_14:

LABEL_28:
  v25 = v2[4];
  *(v25 + 40) = v6;
  *(v25 + 48) = v5;

LABEL_40:
  free(v2);
}

void (*URLComponents.password.modify(void *a1))(unint64_t **a1, char a2)
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
  v3[4] = v1;
  v3[5] = *(v1 + 64);
  *v3 = URLComponents.password.getter();
  v4[1] = v5;
  return URLComponents.password.modify;
}

void URLComponents.password.modify(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 2);
  v4 = (*a1)[4];
  v6 = **a1;
  v5 = (*a1)[1];
  *(v4 + 8) = 0;
  *(v4 + 11) = 0;
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      if ((v5 & 0x1000000000000000) == 0)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v10 = HIBYTE(v5) & 0xF;
          v2[2] = v6;
          v2[3] = v5 & 0xFFFFFFFFFFFFFFLL;
          v9 = v3;
        }

        else if ((v6 & 0x1000000000000000) != 0)
        {
          v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v10 = v6 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = _StringObject.sharedUTF8.getter();
        }

        v13 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v9, v10, 2u, 0);
        if (v13)
        {
          goto LABEL_17;
        }

LABEL_31:
        v31 = HIBYTE(v5) & 0xF;
        if ((v5 & 0x2000000000000000) == 0)
        {
          v31 = v6 & 0xFFFFFFFFFFFFLL;
        }

        if (v31)
        {
          v2[2] = v6;
          v2[3] = v5;
          MEMORY[0x1EEE9AC00](v13);
          v39 = v3;
          v40 = 2;

          v32 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v38, v6, v5);
          if (v33)
          {
            v34 = v32;
            v35 = v33;
            swift_bridgeObjectRelease_n();

            v6 = v34;
          }

          else
          {
            v6 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v6, v5, 2u, 0);
            v35 = v36;
            swift_bridgeObjectRelease_n();
          }

          v5 = v35;
        }

        else
        {

          v6 = 0;
          v5 = 0xE000000000000000;
        }

        goto LABEL_39;
      }

      v2[2] = v6;
      v2[3] = v5;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v26 = String._bridgeToObjectiveCImpl()();

      v27 = [v26 _fastCharacterContents];
      v28 = v26;
      if (v27)
      {
        v2[2] = v6;
        v2[3] = v5;
        StringProtocol._ephemeralString.getter();
        v29 = String._bridgeToObjectiveCImpl()();

        v30 = [v29 length];
        swift_unknownObjectRelease();
        v13 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v27, v30, 2u, 0);
        if ((v13 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v13 = specialized Sequence.allSatisfy(_:)(v6, v5, 2);
        if ((v13 & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

LABEL_17:

LABEL_39:
    v37 = v2[4];
    *(v37 + 56) = v6;
    *(v37 + 64) = v5;
    goto LABEL_40;
  }

  if (v5)
  {
    if ((v5 & 0x1000000000000000) == 0)
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v5) & 0xF;
        v2[2] = v6;
        v2[3] = v5 & 0xFFFFFFFFFFFFFFLL;
        v7 = v3;
      }

      else if ((v6 & 0x1000000000000000) != 0)
      {
        v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v8 = v6 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = _StringObject.sharedUTF8.getter();
      }

      v11 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v7, v8, 2u, 0);

      if (v11)
      {
        goto LABEL_14;
      }

LABEL_20:
      v19 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v19 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        v2[2] = v6;
        v2[3] = v5;
        MEMORY[0x1EEE9AC00](v12);
        v39 = v3;
        v40 = 2;

        v20 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v38, v6, v5);
        if (v21)
        {
          v22 = v20;
          v23 = v21;
          swift_bridgeObjectRelease_n();

          v6 = v22;
        }

        else
        {
          v6 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v6, v5, 2u, 0);
          v23 = v24;
          swift_bridgeObjectRelease_n();
        }

        v5 = v23;
      }

      else
      {

        v6 = 0;
        v5 = 0xE000000000000000;
      }

      goto LABEL_28;
    }

    v2[2] = v6;
    v2[3] = v5;
    lazy protocol witness table accessor for type String and conformance String();

    StringProtocol._ephemeralString.getter();
    v14 = String._bridgeToObjectiveCImpl()();

    v15 = [v14 _fastCharacterContents];
    v16 = v14;
    if (v15)
    {
      v2[2] = v6;
      v2[3] = v5;
      StringProtocol._ephemeralString.getter();
      v17 = String._bridgeToObjectiveCImpl()();

      v18 = [v17 length];
      swift_unknownObjectRelease();
      v12 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v15, v18, 2u, 0);
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v12 = specialized Sequence.allSatisfy(_:)(v6, v5, 2);
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_14:

LABEL_28:
  v25 = v2[4];
  *(v25 + 56) = v6;
  *(v25 + 64) = v5;

LABEL_40:
  free(v2);
}

void (*URLComponents.host.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v61 = *MEMORY[0x1E69E9840];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xE8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 224) = v1;
  v5 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v5;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  *(v3 + 64) = v1[4];
  *(v3 + 80) = v8;
  *(v3 + 32) = v6;
  *(v3 + 48) = v7;
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  *(v3 + 138) = *(v1 + 138);
  *(v3 + 112) = v10;
  *(v3 + 128) = v11;
  *(v3 + 96) = v9;
  *(v3 + 160) = *(v1 + 72);
  v12 = *(v3 + 168);
  if (v12)
  {
    v13 = *(v3 + 160);
  }

  else if ((*(v3 + 12) & 1) != 0 && *v3 && (*(*v3 + 120) & 1) == 0)
  {
    v36 = String.subscript.getter();
    v13 = MEMORY[0x1865CAE80](v36);
    v12 = v37;
  }

  else
  {
    v3 = URLComponents._URLComponents.port.getter();
    if (v14)
    {
      v15 = URLComponents._URLComponents.percentEncodedUser.getter();
      if (!v16)
      {
        v21 = v15;
        v22 = 0;
        goto LABEL_40;
      }
    }

    v13 = 0;
    v12 = 0xE000000000000000;
  }

  v17 = v13 & 0xFFFFFFFFFFFFLL;
  if ((v12 & 0x2000000000000000) != 0)
  {
    v18 = HIBYTE(v12) & 0xF;
  }

  else
  {
    v18 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v18)
  {
    outlined init with copy of FloatingPointRoundingRule?(v4 + 160, v4 + 192, &_sSSSgMd);

    v21 = 0;
    v22 = 0xE000000000000000;
LABEL_40:
    *(v4 + 176) = v21;
    *(v4 + 184) = v22;
    return URLComponents.host.modify;
  }

  if (*(v4 + 152))
  {
    *(v4 + 192) = v13;
    *(v4 + 200) = v12;
    MEMORY[0x1EEE9AC00](v3);
    v59[0] = v4 + 192;
    v59[1] = MEMORY[0x1E69E7CD0];
    v60 = 4;
    outlined init with copy of FloatingPointRoundingRule?(v4 + 160, v4 + 208, &_sSSSgMd);

    v19 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v57, v13, v12);
    if (v20 == 1)
    {
      v19 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v13, v12, MEMORY[0x1E69E7CD0], 4);
    }

    v21 = v19;
    v22 = v20;
    goto LABEL_39;
  }

  if ((v12 & 0x1000000000000000) != 0)
  {
    outlined init with copy of FloatingPointRoundingRule?(v4 + 160, v4 + 192, &_sSSSgMd);
  }

  else if ((v12 & 0x2000000000000000) != 0)
  {
    *(v4 + 192) = v13;
    *(v4 + 200) = v12 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v3);
    LOBYTE(v60) = 0;
    MEMORY[0x1EEE9AC00](v26);
    v57 = v4 + 192;
    v58 = HIBYTE(v12) & 0xF;
    outlined init with copy of FloatingPointRoundingRule?(v4 + 160, v4 + 208, &_sSSSgMd);

    v21 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v4 + 192, v58, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v59, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v22 = v27;
    if (v27 != 1)
    {
LABEL_39:
      swift_bridgeObjectRelease_n();
      goto LABEL_40;
    }
  }

  else
  {
    if ((v13 & 0x1000000000000000) != 0)
    {
      v23 = (v12 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      v3 = _StringObject.sharedUTF8.getter();
      if (!v3)
      {
        outlined init with copy of FloatingPointRoundingRule?(v4 + 160, v4 + 192, &_sSSSgMd);
        v56 = one-time initialization token for idnaTranscoder;

        if (v56 != -1)
        {
          swift_once();
        }

        if (byte_1ED436DC0)
        {
          v22 = 0;
          v21 = 0;
          goto LABEL_39;
        }

        if (swift_stdlib_isStackAllocationSafe())
        {
          __break(1u);
        }

        swift_slowAlloc();
        __break(1u);
        goto LABEL_58;
      }

      v23 = v3;
      v17 = v49;
    }

    MEMORY[0x1EEE9AC00](v3);
    LOBYTE(v60) = 0;
    MEMORY[0x1EEE9AC00](v24);
    v57 = v23;
    v58 = v17;
    outlined init with copy of FloatingPointRoundingRule?(v4 + 160, v4 + 192, &_sSSSgMd);

    v21 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v23, v17, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v59, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v22 = v25;
    if (v25 != 1)
    {
      goto LABEL_39;
    }
  }

  *(v4 + 192) = v13;
  *(v4 + 200) = v12;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v28 = String._bridgeToObjectiveCImpl()();

  v29 = [v28 _fastCharacterContents];
  v30 = v28;
  if (v29)
  {
    *(v4 + 192) = v13;
    *(v4 + 200) = v12;
    StringProtocol._ephemeralString.getter();
    v31 = String._bridgeToObjectiveCImpl()();

    v32 = [v31 length];
    v33 = swift_unknownObjectRelease();
    MEMORY[0x1EEE9AC00](v33);
    LOBYTE(v60) = 0;
    MEMORY[0x1EEE9AC00](v34);
    v57 = v29;
    v58 = v32;
    v21 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs6UInt16V_Tt3g5(v29);
    v22 = v35;
    swift_bridgeObjectRelease_n();
    goto LABEL_40;
  }

  *(v4 + 192) = v13;
  *(v4 + 200) = v12;

  v38 = String.init<A>(_:)();
  v40 = v38;
  v41 = v39;
  if ((v39 & 0x1000000000000000) != 0)
  {
    v40 = static String._copying(_:)();
    v51 = v50;

    v41 = v51;
    if ((v51 & 0x2000000000000000) == 0)
    {
      goto LABEL_35;
    }

LABEL_45:
    *(v4 + 192) = v40;
    *(v4 + 200) = v41 & 0xFFFFFFFFFFFFFFLL;
    MEMORY[0x1EEE9AC00](v38);
    LOBYTE(v60) = 0;
    MEMORY[0x1EEE9AC00](v52);
    v57 = v4 + 192;
    v58 = v53;
    v21 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v4 + 192, v53, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v54, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v22 = v55;
    swift_bridgeObjectRelease_n();

    goto LABEL_40;
  }

  if ((v39 & 0x2000000000000000) != 0)
  {
    goto LABEL_45;
  }

LABEL_35:
  if ((v40 & 0x1000000000000000) != 0)
  {
    v42 = (v41 & 0xFFFFFFFFFFFFFFFLL) + 32;
LABEL_37:
    MEMORY[0x1EEE9AC00](v42);
    LOBYTE(v60) = 0;
    MEMORY[0x1EEE9AC00](v43);
    v57 = v44;
    v58 = v45;
    v21 = _s10Foundation12UIDNAHookICUV13IDNACodedHost33_438666AB1527AE198C118BCABA7FD21510hostBuffer9transcode11allowErrors12createStringSSSgSRyxG_s5Int32Vs13OpaquePointerVSg_SPyxGSgAMSpyxGSgAMSpySo9UIDNAInfoVGSgSpySo10UErrorCodeVGSgtXESbs6UInt32VXEAjS_SitXEts17FixedWidthIntegerRzlFZs4Int8V_Tt3g5(v44, v45, @nonobjc uidna_nameToUnicodeUTF8(_:_:_:_:_:_:_:), 0, closure #1 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply, v46, closure #2 in closure #1 in static UIDNAHookICU.IDNACodedHostUTF8(_:encodeToASCII:)partial apply);
    v22 = v47;
LABEL_38:

    goto LABEL_39;
  }

  v42 = _StringObject.sharedUTF8.getter();
  if (v42)
  {
    goto LABEL_37;
  }

  if (one-time initialization token for idnaTranscoder != -1)
  {
    swift_once();
  }

  if (byte_1ED436DC0 == 1)
  {
    v21 = 0;
    v22 = 0;
    goto LABEL_38;
  }

LABEL_58:
  if (swift_stdlib_isStackAllocationSafe())
  {
    __break(1u);
  }

  result = swift_slowAlloc();
  __break(1u);
  return result;
}

void URLComponents.host.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 176);
  v4 = *(*a1 + 184);
  if (a2)
  {

    URLComponents._URLComponents.host.setter(v3, v4);
  }

  else
  {
    URLComponents._URLComponents.host.setter(*(*a1 + 176), v4);
  }

  free(v2);
}

uint64_t key path setter for URLComponents.port : URLComponents(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  *(a2 + 8) = 0;
  *(a2 + 13) = 0;
  if ((v3 & 1) == 0 && v2 < 0)
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
    *(a2 + 88) = v2;
    *(a2 + 96) = v3;
  }

  return result;
}

uint64_t (*URLComponents.port.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 16) = v1;
  v3 = *(v1 + 88);
  v4 = *(v1 + 96);
  if (*(v1 + 96))
  {
    v3 = 0;
  }

  if (v4 == 1 && (*(v1 + 13) & 1) != 0)
  {
    v3 = *v1;
    if (!*v1)
    {
LABEL_8:
      LOBYTE(v4) = 1;
      goto LABEL_15;
    }

    if (*(v3 + 144))
    {
LABEL_7:
      v3 = 0;
      goto LABEL_8;
    }

    v5 = String.subscript.getter();
    v9 = v8;
    if (!((v5 ^ v6) >> 14))
    {

      goto LABEL_7;
    }

    v10 = v5;
    v11 = v6;
    v12 = v7;
    v13 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v5, v6, v7, v8, 10);
    if ((v14 & 0x100) != 0)
    {
      v13 = specialized _parseInteger<A, B>(ascii:radix:)(v10, v11, v12, v9, 10);
    }

    v15 = v13;
    LOBYTE(v4) = v14;

    if (v4)
    {
      v3 = 0;
    }

    else
    {
      v3 = v15;
    }
  }

LABEL_15:
  *a1 = v3;
  *(a1 + 8) = v4 & 1;
  return URLComponents.port.modify;
}

uint64_t URLComponents.port.modify(uint64_t result)
{
  v1 = *(result + 16);
  v2 = *result;
  v3 = *(result + 8);
  *(v1 + 8) = 0;
  *(v1 + 13) = 0;
  if (v2 >= 0)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v4)
  {
    *(v1 + 88) = v2;
    *(v1 + 96) = v3;
  }

  else
  {
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t (*URLComponents.path.modify(unint64_t *a1))(unint64_t *a1, char a2)
{
  a1[2] = v1;
  *a1 = URLComponents.path.getter();
  a1[1] = v3;
  return URLComponents.path.modify;
}

uint64_t URLComponents.path.modify(unint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  if ((a2 & 1) == 0)
  {
    return URLComponents.path.setter(*a1, v2);
  }

  URLComponents.path.setter(v3, v2);
}

void (*URLComponents.query.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xD8uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 208) = v1;
  v5 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v5;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  *(v3 + 64) = v1[4];
  *(v3 + 80) = v8;
  *(v3 + 32) = v6;
  *(v3 + 48) = v7;
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  *(v3 + 138) = *(v1 + 138);
  *(v3 + 112) = v10;
  *(v3 + 128) = v11;
  *(v3 + 96) = v9;
  *(v3 + 160) = *(v1 + 120);
  *(v3 + 176) = URLComponents._URLComponents.query.getter();
  *(v4 + 184) = v12;
  return URLComponents.query.modify;
}

void URLComponents.query.modify(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 176);
  v4 = *a1 + 192;
  v5 = *(*a1 + 208);
  v6 = *(*a1 + 184);
  *(v5 + 8) = 0;
  *(v5 + 15) = 0;
  if ((a2 & 1) == 0)
  {
    if (v6)
    {
      if ((v6 & 0x1000000000000000) == 0)
      {
        if ((v6 & 0x2000000000000000) != 0)
        {
          v10 = HIBYTE(v6) & 0xF;
          v2[24] = v3;
          v2[25] = v6 & 0xFFFFFFFFFFFFFFLL;
          v9 = v4;
        }

        else if ((v3 & 0x1000000000000000) != 0)
        {
          v9 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v10 = v3 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = _StringObject.sharedUTF8.getter();
        }

        v13 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v9, v10, 0x40u, 0);
        if (v13)
        {
          goto LABEL_17;
        }

LABEL_31:
        v31 = HIBYTE(v6) & 0xF;
        if ((v6 & 0x2000000000000000) == 0)
        {
          v31 = v3 & 0xFFFFFFFFFFFFLL;
        }

        if (v31)
        {
          v2[24] = v3;
          v2[25] = v6;
          MEMORY[0x1EEE9AC00](v13);
          v39 = v4;
          v40 = 64;

          v32 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v38, v3, v6);
          if (v33)
          {
            v34 = v32;
            v35 = v33;
            swift_bridgeObjectRelease_n();
            outlined destroy of TermOfAddress?((v2 + 20), &_sSSSgMd);
            v3 = v34;
          }

          else
          {
            v3 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v3, v6, 0x40u, 0);
            v35 = v36;
            swift_bridgeObjectRelease_n();
            outlined destroy of TermOfAddress?((v2 + 20), &_sSSSgMd);
          }

          v6 = v35;
        }

        else
        {

          outlined destroy of TermOfAddress?((v2 + 20), &_sSSSgMd);
          v3 = 0;
          v6 = 0xE000000000000000;
        }

        goto LABEL_39;
      }

      v2[24] = v3;
      v2[25] = v6;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v26 = String._bridgeToObjectiveCImpl()();

      v27 = [v26 _fastCharacterContents];
      v28 = v26;
      if (v27)
      {
        v2[24] = v3;
        v2[25] = v6;
        StringProtocol._ephemeralString.getter();
        v29 = String._bridgeToObjectiveCImpl()();

        v30 = [v29 length];
        swift_unknownObjectRelease();
        v13 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v27, v30, 0x40u, 0);
        if ((v13 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v13 = specialized Sequence.allSatisfy(_:)(v3, v6, 64);
        if ((v13 & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

LABEL_17:
    outlined destroy of TermOfAddress?((v2 + 20), &_sSSSgMd);
LABEL_39:
    v37 = v2[26];
    *(v37 + 120) = v3;
    *(v37 + 128) = v6;
    goto LABEL_40;
  }

  if (v6)
  {
    if ((v6 & 0x1000000000000000) == 0)
    {
      if ((v6 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v6) & 0xF;
        v2[24] = v3;
        v2[25] = v6 & 0xFFFFFFFFFFFFFFLL;
        v7 = v4;
      }

      else if ((v3 & 0x1000000000000000) != 0)
      {
        v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v8 = v3 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = _StringObject.sharedUTF8.getter();
      }

      v11 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v7, v8, 0x40u, 0);

      if (v11)
      {
        goto LABEL_14;
      }

LABEL_20:
      v19 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v19 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        v2[24] = v3;
        v2[25] = v6;
        MEMORY[0x1EEE9AC00](v12);
        v39 = v4;
        v40 = 64;

        v20 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v38, v3, v6);
        if (v21)
        {
          v22 = v20;
          v23 = v21;
          swift_bridgeObjectRelease_n();
          outlined destroy of TermOfAddress?((v2 + 20), &_sSSSgMd);
          v3 = v22;
        }

        else
        {
          v3 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v3, v6, 0x40u, 0);
          v23 = v24;
          swift_bridgeObjectRelease_n();
          outlined destroy of TermOfAddress?((v2 + 20), &_sSSSgMd);
        }

        v6 = v23;
      }

      else
      {

        outlined destroy of TermOfAddress?((v2 + 20), &_sSSSgMd);
        v3 = 0;
        v6 = 0xE000000000000000;
      }

      goto LABEL_28;
    }

    v2[24] = v3;
    v2[25] = v6;
    lazy protocol witness table accessor for type String and conformance String();

    StringProtocol._ephemeralString.getter();
    v14 = String._bridgeToObjectiveCImpl()();

    v15 = [v14 _fastCharacterContents];
    v16 = v14;
    if (v15)
    {
      v2[24] = v3;
      v2[25] = v6;
      StringProtocol._ephemeralString.getter();
      v17 = String._bridgeToObjectiveCImpl()();

      v18 = [v17 length];
      swift_unknownObjectRelease();
      v12 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v15, v18, 0x40u, 0);
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v12 = specialized Sequence.allSatisfy(_:)(v3, v6, 64);
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_14:
  outlined destroy of TermOfAddress?((v2 + 20), &_sSSSgMd);
LABEL_28:
  v25 = v2[26];
  *(v25 + 120) = v3;
  *(v25 + 128) = v6;

LABEL_40:
  free(v2);
}

void (*URLComponents.fragment.modify(void *a1))(unint64_t **a1, char a2)
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
  v3[4] = v1;
  v3[5] = *(v1 + 144);
  *v3 = URLComponents.fragment.getter();
  v4[1] = v5;
  return URLComponents.fragment.modify;
}

void URLComponents.fragment.modify(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 2);
  v4 = (*a1)[4];
  v6 = **a1;
  v5 = (*a1)[1];
  *(v4 + 8) = 0;
  *(v4 + 16) = 0;
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      if ((v5 & 0x1000000000000000) == 0)
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v10 = HIBYTE(v5) & 0xF;
          v2[2] = v6;
          v2[3] = v5 & 0xFFFFFFFFFFFFFFLL;
          v9 = v3;
        }

        else if ((v6 & 0x1000000000000000) != 0)
        {
          v9 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v10 = v6 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = _StringObject.sharedUTF8.getter();
        }

        v13 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v9, v10, 0x40u, 0);
        if (v13)
        {
          goto LABEL_17;
        }

LABEL_31:
        v31 = HIBYTE(v5) & 0xF;
        if ((v5 & 0x2000000000000000) == 0)
        {
          v31 = v6 & 0xFFFFFFFFFFFFLL;
        }

        if (v31)
        {
          v2[2] = v6;
          v2[3] = v5;
          MEMORY[0x1EEE9AC00](v13);
          v39 = v3;
          v40 = 64;

          v32 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v38, v6, v5);
          if (v33)
          {
            v34 = v32;
            v35 = v33;
            swift_bridgeObjectRelease_n();

            v6 = v34;
          }

          else
          {
            v6 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v6, v5, 0x40u, 0);
            v35 = v36;
            swift_bridgeObjectRelease_n();
          }

          v5 = v35;
        }

        else
        {

          v6 = 0;
          v5 = 0xE000000000000000;
        }

        goto LABEL_39;
      }

      v2[2] = v6;
      v2[3] = v5;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v26 = String._bridgeToObjectiveCImpl()();

      v27 = [v26 _fastCharacterContents];
      v28 = v26;
      if (v27)
      {
        v2[2] = v6;
        v2[3] = v5;
        StringProtocol._ephemeralString.getter();
        v29 = String._bridgeToObjectiveCImpl()();

        v30 = [v29 length];
        swift_unknownObjectRelease();
        v13 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v27, v30, 0x40u, 0);
        if ((v13 & 1) == 0)
        {
          goto LABEL_31;
        }
      }

      else
      {
        v13 = specialized Sequence.allSatisfy(_:)(v6, v5, 64);
        if ((v13 & 1) == 0)
        {
          goto LABEL_31;
        }
      }
    }

LABEL_17:

LABEL_39:
    v37 = v2[4];
    *(v37 + 136) = v6;
    *(v37 + 144) = v5;
    goto LABEL_40;
  }

  if (v5)
  {
    if ((v5 & 0x1000000000000000) == 0)
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
        v8 = HIBYTE(v5) & 0xF;
        v2[2] = v6;
        v2[3] = v5 & 0xFFFFFFFFFFFFFFLL;
        v7 = v3;
      }

      else if ((v6 & 0x1000000000000000) != 0)
      {
        v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v8 = v6 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v7 = _StringObject.sharedUTF8.getter();
      }

      v11 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v7, v8, 0x40u, 0);

      if (v11)
      {
        goto LABEL_14;
      }

LABEL_20:
      v19 = HIBYTE(v5) & 0xF;
      if ((v5 & 0x2000000000000000) == 0)
      {
        v19 = v6 & 0xFFFFFFFFFFFFLL;
      }

      if (v19)
      {
        v2[2] = v6;
        v2[3] = v5;
        MEMORY[0x1EEE9AC00](v12);
        v39 = v3;
        v40 = 64;

        v20 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.addingPercentEncoding(forURLComponent:skipAlreadyEncoded:)specialized partial apply, v38, v6, v5);
        if (v21)
        {
          v22 = v20;
          v23 = v21;
          swift_bridgeObjectRelease_n();

          v6 = v22;
        }

        else
        {
          v6 = _sSy10FoundationE21addingPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9component18skipAlreadyEncodedSSqd___AA15URLComponentSetACLLVSbtSlRd__s5UInt8V7ElementRtd__lFSS_SS8UTF8ViewVTt2g5(v6, v5, 0x40u, 0);
          v23 = v24;
          swift_bridgeObjectRelease_n();
        }

        v5 = v23;
      }

      else
      {

        v6 = 0;
        v5 = 0xE000000000000000;
      }

      goto LABEL_28;
    }

    v2[2] = v6;
    v2[3] = v5;
    lazy protocol witness table accessor for type String and conformance String();

    StringProtocol._ephemeralString.getter();
    v14 = String._bridgeToObjectiveCImpl()();

    v15 = [v14 _fastCharacterContents];
    v16 = v14;
    if (v15)
    {
      v2[2] = v6;
      v2[3] = v5;
      StringProtocol._ephemeralString.getter();
      v17 = String._bridgeToObjectiveCImpl()();

      v18 = [v17 length];
      swift_unknownObjectRelease();
      v12 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v15, v18, 0x40u, 0);
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      v12 = specialized Sequence.allSatisfy(_:)(v6, v5, 64);
      if ((v12 & 1) == 0)
      {
        goto LABEL_20;
      }
    }
  }

LABEL_14:

LABEL_28:
  v25 = v2[4];
  *(v25 + 136) = v6;
  *(v25 + 144) = v5;

LABEL_40:
  free(v2);
}

uint64_t URLComponents.percentEncodedUser.getter()
{
  if (v0[6])
  {
    v1 = v0[5];
    goto LABEL_15;
  }

  v2 = *v0;
  v3 = *(v0 + 11);
  v4 = v0[8];
  v5 = *(v0 + 10) != 1 || v2 == 0;
  if (!v5 && (*(v2 + 72) & 1) == 0)
  {
    v6 = String.subscript.getter();
    v1 = MEMORY[0x1865CAE80](v6);

    goto LABEL_15;
  }

  v1 = v0[8];
  if (v4)
  {
LABEL_9:

    v1 = 0;
    goto LABEL_15;
  }

  if (v3 && v2)
  {
    if (*(v2 + 96))
    {
      v1 = 0;
      goto LABEL_15;
    }

    v8 = String.subscript.getter();
    MEMORY[0x1865CAE80](v8);

    goto LABEL_9;
  }

LABEL_15:

  return v1;
}

uint64_t URLComponents.percentEncodedUser.setter(unint64_t a1, unint64_t a2)
{
  *(v2 + 8) = 0;
  *(v2 + 10) = 0;
  if (!a2)
  {
LABEL_8:

    *(v2 + 40) = a1;
    *(v2 + 48) = a2;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = v2;
    v15 = a1;
    v16 = a2;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v9 = String._bridgeToObjectiveCImpl()();

    v10 = [v9 _fastCharacterContents];
    v11 = v9;
    if (v10)
    {
      v15 = a1;
      v16 = a2;
      StringProtocol._ephemeralString.getter();
      v12 = String._bridgeToObjectiveCImpl()();

      v13 = [v12 length];
      swift_unknownObjectRelease();
      v14 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v10, v13, 2u, 1);
    }

    else
    {
      v14 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(a1, a2, 2u, 1);
    }

    v2 = v8;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a2) & 0xF;
      v15 = a1;
      v16 = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = &v15;
    }

    else if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = _StringObject.sharedUTF8.getter();
    }

    if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v5, v6, 2u, 1))
    {
      goto LABEL_8;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void (*URLComponents.percentEncodedUser.modify(uint64_t *a1))(unint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  v5 = *v1;
  v6 = *(v1 + 11);
  v8 = v1[5];
  v7 = v1[6];
  *(v3 + 40) = v7;
  if (v7)
  {
    v9 = v7;
    goto LABEL_18;
  }

  v10 = *(v1 + 10) != 1 || v5 == 0;
  if (!v10 && (*(v5 + 72) & 1) == 0)
  {
    v11 = String.subscript.getter();
    v8 = MEMORY[0x1865CAE80](v11);
    v9 = v12;

    goto LABEL_18;
  }

  if (v1[8])
  {
LABEL_12:

    v8 = 0;
    v9 = 0xE000000000000000;
    goto LABEL_18;
  }

  v8 = 0;
  v9 = 0;
  if (v6 && v5)
  {
    if (*(v5 + 96))
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_18;
    }

    v14 = String.subscript.getter();
    MEMORY[0x1865CAE80](v14);

    goto LABEL_12;
  }

LABEL_18:
  *v4 = v8;
  v4[1] = v9;

  return URLComponents.percentEncodedUser.modify;
}

void URLComponents.percentEncodedUser.modify(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = **a1;
  v5 = (*a1)[1];
  *(v3 + 8) = 0;
  *(v3 + 10) = 0;
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v2[2] = v4;
        v2[3] = v5;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol._ephemeralString.getter();
        v18 = String._bridgeToObjectiveCImpl()();

        v19 = [v18 _fastCharacterContents];
        v20 = v18;
        if (v19)
        {
          v2[2] = v4;
          v2[3] = v5;
          StringProtocol._ephemeralString.getter();
          v21 = String._bridgeToObjectiveCImpl()();

          v22 = [v21 length];
          swift_unknownObjectRelease();
          if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v19, v22, 2u, 1))
          {
            goto LABEL_32;
          }
        }

        else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v4, v5, 2u, 1) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v9 = HIBYTE(v5) & 0xF;
          v2[2] = v4;
          v2[3] = v5 & 0xFFFFFFFFFFFFFFLL;
          v8 = v2 + 2;
        }

        else if ((v4 & 0x1000000000000000) != 0)
        {
          v8 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v9 = v4 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = _StringObject.sharedUTF8.getter();
        }

        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v8, v9, 2u, 1))
        {
          goto LABEL_32;
        }
      }
    }

    v12 = v2[4];

    *(v12 + 40) = v4;
    *(v12 + 48) = v5;
    goto LABEL_18;
  }

  if (v5)
  {
    if ((v5 & 0x1000000000000000) == 0)
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
        v7 = HIBYTE(v5) & 0xF;
        v2[2] = v4;
        v2[3] = v5 & 0xFFFFFFFFFFFFFFLL;
        v6 = v2 + 2;
      }

      else if ((v4 & 0x1000000000000000) != 0)
      {
        v6 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = v4 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v6 = _StringObject.sharedUTF8.getter();
      }

      v10 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v6, v7, 2u, 1);

      if (v10)
      {
        goto LABEL_14;
      }

LABEL_32:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v2[2] = v4;
    v2[3] = v5;
    lazy protocol witness table accessor for type String and conformance String();

    StringProtocol._ephemeralString.getter();
    v13 = String._bridgeToObjectiveCImpl()();

    v14 = [v13 _fastCharacterContents];
    v15 = v13;
    if (v14)
    {
      v2[2] = v4;
      v2[3] = v5;
      StringProtocol._ephemeralString.getter();
      v16 = String._bridgeToObjectiveCImpl()();

      v17 = [v16 length];
      swift_unknownObjectRelease();
      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v14, v17, 2u, 1))
      {
        goto LABEL_32;
      }
    }

    else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v4, v5, 2u, 1) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_14:
  v11 = v2[4];

  *(v11 + 40) = v4;
  *(v11 + 48) = v5;

LABEL_18:

  free(v2);
}

uint64_t URLComponents.percentEncodedPassword.getter()
{
  v1 = *(v0 + 64);
  if (v1)
  {
    v2 = *(v0 + 56);
  }

  else
  {
    v2 = 0;
  }

  if (!v1 && (*(v0 + 11) & 1) != 0)
  {
    if (*v0 && (*(*v0 + 96) & 1) == 0)
    {
      v3 = String.subscript.getter();
      v2 = MEMORY[0x1865CAE80](v3);
    }

    else
    {
      v2 = 0;
    }
  }

  return v2;
}

uint64_t URLComponents.percentEncodedPassword.setter(unint64_t a1, unint64_t a2)
{
  *(v2 + 8) = 0;
  *(v2 + 11) = 0;
  if (!a2)
  {
LABEL_8:

    *(v2 + 56) = a1;
    *(v2 + 64) = a2;
    return result;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v8 = v2;
    v15 = a1;
    v16 = a2;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v9 = String._bridgeToObjectiveCImpl()();

    v10 = [v9 _fastCharacterContents];
    v11 = v9;
    if (v10)
    {
      v15 = a1;
      v16 = a2;
      StringProtocol._ephemeralString.getter();
      v12 = String._bridgeToObjectiveCImpl()();

      v13 = [v12 length];
      swift_unknownObjectRelease();
      v14 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v10, v13, 2u, 1);
    }

    else
    {
      v14 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(a1, a2, 2u, 1);
    }

    v2 = v8;
    if (v14)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v6 = HIBYTE(a2) & 0xF;
      v15 = a1;
      v16 = a2 & 0xFFFFFFFFFFFFFFLL;
      v5 = &v15;
    }

    else if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = _StringObject.sharedUTF8.getter();
    }

    if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v5, v6, 2u, 1))
    {
      goto LABEL_8;
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void (*URLComponents.percentEncodedPassword.modify(uint64_t *a1))(unint64_t **a1, char a2)
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
  *(v3 + 32) = v1;
  v5 = *v1;
  v6 = *(v1 + 11);
  v8 = v1[7];
  v7 = v1[8];
  v4[5] = v7;
  if (v7)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v7;
  if (!v7 && (v6 & 1) != 0)
  {
    if (v5 && (*(v5 + 96) & 1) == 0)
    {
      v11 = String.subscript.getter();
      v9 = MEMORY[0x1865CAE80](v11);
      v10 = v12;
    }

    else
    {
      v9 = 0;
      v10 = 0;
    }
  }

  *v4 = v9;
  v4[1] = v10;

  return URLComponents.percentEncodedPassword.modify;
}

void URLComponents.percentEncodedPassword.modify(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = **a1;
  v5 = (*a1)[1];
  *(v3 + 8) = 0;
  *(v3 + 11) = 0;
  if ((a2 & 1) == 0)
  {
    if (v5)
    {
      if ((v5 & 0x1000000000000000) != 0)
      {
        v2[2] = v4;
        v2[3] = v5;
        lazy protocol witness table accessor for type String and conformance String();
        StringProtocol._ephemeralString.getter();
        v18 = String._bridgeToObjectiveCImpl()();

        v19 = [v18 _fastCharacterContents];
        v20 = v18;
        if (v19)
        {
          v2[2] = v4;
          v2[3] = v5;
          StringProtocol._ephemeralString.getter();
          v21 = String._bridgeToObjectiveCImpl()();

          v22 = [v21 length];
          swift_unknownObjectRelease();
          if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v19, v22, 2u, 1))
          {
            goto LABEL_32;
          }
        }

        else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v4, v5, 2u, 1) & 1) == 0)
        {
          goto LABEL_32;
        }
      }

      else
      {
        if ((v5 & 0x2000000000000000) != 0)
        {
          v9 = HIBYTE(v5) & 0xF;
          v2[2] = v4;
          v2[3] = v5 & 0xFFFFFFFFFFFFFFLL;
          v8 = v2 + 2;
        }

        else if ((v4 & 0x1000000000000000) != 0)
        {
          v8 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v9 = v4 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v8 = _StringObject.sharedUTF8.getter();
        }

        if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v8, v9, 2u, 1))
        {
          goto LABEL_32;
        }
      }
    }

    v12 = v2[4];

    *(v12 + 56) = v4;
    *(v12 + 64) = v5;
    goto LABEL_18;
  }

  if (v5)
  {
    if ((v5 & 0x1000000000000000) == 0)
    {
      if ((v5 & 0x2000000000000000) != 0)
      {
        v7 = HIBYTE(v5) & 0xF;
        v2[2] = v4;
        v2[3] = v5 & 0xFFFFFFFFFFFFFFLL;
        v6 = v2 + 2;
      }

      else if ((v4 & 0x1000000000000000) != 0)
      {
        v6 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = v4 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v6 = _StringObject.sharedUTF8.getter();
      }

      v10 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v6, v7, 2u, 1);

      if (v10)
      {
        goto LABEL_14;
      }

LABEL_32:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return;
    }

    v2[2] = v4;
    v2[3] = v5;
    lazy protocol witness table accessor for type String and conformance String();

    StringProtocol._ephemeralString.getter();
    v13 = String._bridgeToObjectiveCImpl()();

    v14 = [v13 _fastCharacterContents];
    v15 = v13;
    if (v14)
    {
      v2[2] = v4;
      v2[3] = v5;
      StringProtocol._ephemeralString.getter();
      v16 = String._bridgeToObjectiveCImpl()();

      v17 = [v16 length];
      swift_unknownObjectRelease();
      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v14, v17, 2u, 1))
      {
        goto LABEL_32;
      }
    }

    else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v4, v5, 2u, 1) & 1) == 0)
    {
      goto LABEL_32;
    }
  }

LABEL_14:
  v11 = v2[4];

  *(v11 + 56) = v4;
  *(v11 + 64) = v5;

LABEL_18:

  free(v2);
}

uint64_t URLComponents.percentEncodedHost.setter(unint64_t a1, unint64_t a2)
{
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
    v6 = _s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(a1, a2);
    if (v6)
    {
      goto LABEL_4;
    }

LABEL_20:
    v33 = 0;
    v32 = 961;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    goto LABEL_21;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v25 = v2;
    v34 = a1;
    v35 = a2;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v26 = String._bridgeToObjectiveCImpl()();

    v3 = [v26 _fastCharacterContents];
    v27 = v26;
    if (v3)
    {
      v34 = a1;
      v35 = a2;
      StringProtocol._ephemeralString.getter();
      v28 = String._bridgeToObjectiveCImpl()();

      v29 = [v28 length];
      swift_unknownObjectRelease();
      v6 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v3, v29, 4u, 1);
    }

    else
    {
      v6 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(a1, a2, 4u, 1);
    }

    v2 = v25;
    if ((v6 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(a2) & 0xF;
      v34 = a1;
      v35 = a2 & 0xFFFFFFFFFFFFFFLL;
      v11 = &v34;
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

    v6 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v11, v12, 4u, 1);
    if ((v6 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

LABEL_4:
  LOBYTE(v34) = 37;
  MEMORY[0x1EEE9AC00](v6);
  v32 = &v34;
  LOBYTE(v3) = specialized Sequence.contains(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, v31, a1, a2);
  *(v2 + 152) = v3 & 1;
  v7 = *(v2 + 32);
  if (v7)
  {
    v8 = *(v2 + 24);
  }

  else
  {
    v8 = 0;
  }

  if (v7)
  {
    v9 = *(v2 + 32);
    goto LABEL_22;
  }

  v9 = 0;
  if (*(v2 + 9))
  {
    if (!*v2 || (*(*v2 + 48) & 1) != 0)
    {
      v8 = 0;
      v9 = 0;
      goto LABEL_22;
    }

LABEL_21:
    v13 = String.subscript.getter();
    v8 = MEMORY[0x1865CAE80](v13);
    v9 = v14;
  }

LABEL_22:

  v15 = _s10Foundation13RFC3986ParserV23shouldPercentEncodeHost_9forSchemeSbx_q_SgtSyRzSyR_r0_lFZSS_SSTt1g5(a1, a2, v8, v9);

  if ((v15 & 1) != 0 || (v3 & 1) == 0)
  {

    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
    return result;
  }

  v17 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v17 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v17)
  {
    v23 = 0;
    v24 = 0xE000000000000000;
LABEL_33:
    URLComponents._URLComponents.host.setter(v23, v24);
  }

  v34 = a1;
  v35 = a2;
  MEMORY[0x1EEE9AC00](v16);
  v31[0] = &v34;
  v31[1] = MEMORY[0x1E69E7CD0];
  v32 = 4;

  v18 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, &v30, a1, a2);
  if (v19 == 1)
  {
    v20 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(a1, a2, MEMORY[0x1E69E7CD0], 4);
    v22 = v21;
  }

  else
  {
    v22 = v19;
    v20 = v18;
  }

  v23 = v20;
  v24 = v22;
  if (v22)
  {
    goto LABEL_33;
  }

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
  *(v2 + 153) = 1;
  return result;
}

void (*URLComponents.percentEncodedHost.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0xF0uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 208) = v1;
  v5 = v1[1];
  *v3 = *v1;
  *(v3 + 16) = v5;
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[5];
  *(v3 + 64) = v1[4];
  *(v3 + 80) = v8;
  *(v3 + 32) = v6;
  *(v3 + 48) = v7;
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  *(v3 + 138) = *(v1 + 138);
  *(v3 + 112) = v10;
  *(v3 + 128) = v11;
  *(v3 + 96) = v9;
  *(v3 + 160) = *(v1 + 72);
  *(v3 + 216) = *v3;
  *(v3 + 154) = *(v3 + 9);
  *(v3 + 224) = *(v3 + 24);
  *(v3 + 176) = URLComponents._URLComponents.percentEncodedHost.getter();
  *(v4 + 184) = v12;
  return URLComponents.percentEncodedHost.modify;
}

void URLComponents.percentEncodedHost.modify(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 176);
  v4 = *a1 + 192;
  v5 = *(*a1 + 208);
  v6 = *(*a1 + 184);
  *(v5 + 8) = 0;
  *(v5 + 12) = 0;
  *(v5 + 152) = 0;
  if (a2)
  {
    if (v6)
    {
      if (_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v3, v6))
      {

        v7 = _s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v3, v6);
        if ((v7 & 1) == 0)
        {
          goto LABEL_83;
        }
      }

      else if ((v6 & 0x1000000000000000) != 0)
      {
        *(v2 + 192) = v3;
        *(v2 + 200) = v6;
        lazy protocol witness table accessor for type String and conformance String();

        v58 = v4;
        StringProtocol._ephemeralString.getter();
        v59 = String._bridgeToObjectiveCImpl()();

        v60 = [v59 _fastCharacterContents];
        v61 = v59;
        if (v60)
        {
          *(v2 + 192) = v3;
          *(v2 + 200) = v6;
          StringProtocol._ephemeralString.getter();
          v62 = String._bridgeToObjectiveCImpl()();

          v63 = [v62 length];
          swift_unknownObjectRelease();
          v64 = v60;
          v4 = v58;
          v7 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v64, v63, 4u, 1);
          if ((v7 & 1) == 0)
          {
            goto LABEL_83;
          }
        }

        else
        {
          v7 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v3, v6, 4u, 1);
          v4 = v58;
          if ((v7 & 1) == 0)
          {
            goto LABEL_83;
          }
        }
      }

      else
      {
        if ((v6 & 0x2000000000000000) != 0)
        {
          v12 = HIBYTE(v6) & 0xF;
          *(v2 + 192) = v3;
          *(v2 + 200) = v6 & 0xFFFFFFFFFFFFFFLL;
          v11 = v4;
        }

        else if ((v3 & 0x1000000000000000) != 0)
        {
          v11 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v12 = v3 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v11 = _StringObject.sharedUTF8.getter();
        }

        v15 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v11, v12, 4u, 1);

        if (!v15)
        {
          goto LABEL_83;
        }
      }

      v16 = *(v2 + 224);
      v17 = *(v2 + 232);
      *(v2 + 192) = 37;
      v18 = *(v2 + 154);
      MEMORY[0x1EEE9AC00](v7);
      v76 = v4;
      v75 = v4;
      v19 = specialized Sequence.contains(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, &v73, v3, v6);
      *(v5 + 152) = v19 & 1;
      if (v17 || (v18 & 1) == 0)
      {
        if (v17)
        {
          v21 = v16;
        }

        else
        {
          v21 = 0;
        }

        v22 = *(v2 + 232);
      }

      else
      {
        v20 = *(v2 + 216);
        if (v20 && (*(v20 + 48) & 1) == 0)
        {
          v30 = String.subscript.getter();
          v21 = MEMORY[0x1865CAE80](v30);
          v22 = v31;
        }

        else
        {
          v21 = 0;
          v22 = 0;
        }
      }

      v32 = _s10Foundation13RFC3986ParserV23shouldPercentEncodeHost_9forSchemeSbx_q_SgtSyRzSyR_r0_lFZSS_SSTt1g5(v3, v6, v21, v22);

      if ((v32 & 1) != 0 || (v19 & 1) == 0)
      {
        v40 = *(v2 + 208);
        outlined destroy of TermOfAddress?(v2 + 160, &_sSSSgMd);
        *(v40 + 72) = v3;
        *(v40 + 80) = v6;
      }

      else
      {
        v34 = HIBYTE(v6) & 0xF;
        if ((v6 & 0x2000000000000000) == 0)
        {
          v34 = v3 & 0xFFFFFFFFFFFFLL;
        }

        if (v34)
        {
          *(v2 + 192) = v3;
          *(v2 + 200) = v6;
          MEMORY[0x1EEE9AC00](v33);
          v73 = v76;
          v74 = MEMORY[0x1E69E7CD0];
          v75 = 4;

          v35 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v72, v3, v6);
          if (v36 == 1)
          {
            v37 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v3, v6, MEMORY[0x1E69E7CD0], 4);
            v39 = v38;
          }

          else
          {
            v39 = v36;
            v37 = v35;
          }

          v52 = v37;
          v53 = v39;
          if (!v39)
          {
            v56 = *(v2 + 208);
            outlined destroy of TermOfAddress?(v2 + 160, &_sSSSgMd);
            *(v56 + 72) = v3;
            *(v56 + 80) = v6;
            *(v5 + 153) = 1;
            goto LABEL_69;
          }
        }

        else
        {
          v52 = 0;
          v53 = 0xE000000000000000;
        }

        URLComponents._URLComponents.host.setter(v52, v53);
      }
    }

    else
    {
      v9 = *(v2 + 208);
      outlined destroy of TermOfAddress?(v2 + 160, &_sSSSgMd);
      *(v9 + 72) = v3;
      *(v9 + 80) = 0;
    }

LABEL_69:

    goto LABEL_70;
  }

  if (!v6)
  {
    v10 = *(v2 + 208);
    outlined destroy of TermOfAddress?(v2 + 160, &_sSSSgMd);
    *(v10 + 72) = v3;
    *(v10 + 80) = 0;
    goto LABEL_70;
  }

  if (_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v3, v6))
  {
    v8 = _s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v3, v6);
    if ((v8 & 1) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_33;
  }

  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      v14 = HIBYTE(v6) & 0xF;
      *(v2 + 192) = v3;
      *(v2 + 200) = v6 & 0xFFFFFFFFFFFFFFLL;
      v13 = v4;
    }

    else if ((v3 & 0x1000000000000000) != 0)
    {
      v13 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v14 = v3 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v13 = _StringObject.sharedUTF8.getter();
    }

    v8 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v13, v14, 4u, 1);
    if ((v8 & 1) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_33;
  }

  *(v2 + 192) = v3;
  *(v2 + 200) = v6;
  lazy protocol witness table accessor for type String and conformance String();
  v65 = v4;
  StringProtocol._ephemeralString.getter();
  v66 = String._bridgeToObjectiveCImpl()();

  v67 = [v66 _fastCharacterContents];
  v68 = v66;
  if (v67)
  {
    *(v2 + 192) = v3;
    *(v2 + 200) = v6;
    StringProtocol._ephemeralString.getter();
    v69 = String._bridgeToObjectiveCImpl()();

    v70 = [v69 length];
    swift_unknownObjectRelease();
    v71 = v70;
    v4 = v65;
    v8 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v67, v71, 4u, 1);
    if ((v8 & 1) == 0)
    {
      goto LABEL_83;
    }

    goto LABEL_33;
  }

  v8 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v3, v6, 4u, 1);
  if (v8)
  {
LABEL_33:
    v23 = *(v2 + 224);
    v24 = *(v2 + 232);
    *(v2 + 192) = 37;
    v25 = *(v2 + 154);
    MEMORY[0x1EEE9AC00](v8);
    v76 = v4;
    v75 = v4;
    v26 = specialized Sequence.contains(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, &v73, v3, v6);
    *(v5 + 152) = v26 & 1;
    if (v24 || (v25 & 1) == 0)
    {
      if (v24)
      {
        v28 = v23;
      }

      else
      {
        v28 = 0;
      }

      v29 = *(v2 + 232);
    }

    else
    {
      v27 = *(v2 + 216);
      if (v27 && (*(v27 + 48) & 1) == 0)
      {
        v41 = String.subscript.getter();
        v28 = MEMORY[0x1865CAE80](v41);
        v29 = v42;
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }
    }

    v43 = _s10Foundation13RFC3986ParserV23shouldPercentEncodeHost_9forSchemeSbx_q_SgtSyRzSyR_r0_lFZSS_SSTt1g5(v3, v6, v28, v29);

    if (v43 & 1) == 0 && (v26)
    {
      v45 = HIBYTE(v6) & 0xF;
      if ((v6 & 0x2000000000000000) == 0)
      {
        v45 = v3 & 0xFFFFFFFFFFFFLL;
      }

      if (v45)
      {
        *(v2 + 192) = v3;
        *(v2 + 200) = v6;
        MEMORY[0x1EEE9AC00](v44);
        v73 = v76;
        v74 = MEMORY[0x1E69E7CD0];
        v75 = 4;

        v46 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v72, v3, v6);
        if (v47 == 1)
        {
          v48 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v3, v6, MEMORY[0x1E69E7CD0], 4);
          v50 = v49;
        }

        else
        {
          v50 = v47;
          v48 = v46;
        }

        v54 = v48;
        v55 = v50;
        if (!v50)
        {
          v57 = *(v2 + 208);
          outlined destroy of TermOfAddress?(v2 + 160, &_sSSSgMd);
          *(v57 + 72) = v3;
          *(v57 + 80) = v6;
          *(v5 + 153) = 1;
          goto LABEL_70;
        }
      }

      else
      {
        v54 = 0;
        v55 = 0xE000000000000000;
      }

      URLComponents._URLComponents.host.setter(v54, v55);
      goto LABEL_69;
    }

    v51 = *(v2 + 208);
    outlined destroy of TermOfAddress?(v2 + 160, &_sSSSgMd);
    *(v51 + 72) = v3;
    *(v51 + 80) = v6;
LABEL_70:
    free(v2);
    return;
  }

LABEL_83:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

void (*URLComponents.encodedHost.modify(void *a1))(unint64_t **a1, char a2)
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
  v3[4] = v1;
  v3[5] = *(v1 + 80);
  *v3 = URLComponents.encodedHost.getter();
  v4[1] = v5;
  return URLComponents.encodedHost.modify;
}

void URLComponents.encodedHost.modify(unint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 2);
  v4 = (*a1)[4];
  v5 = **a1;
  v6 = (*a1)[1];
  *(v4 + 8) = 0;
  *(v4 + 12) = 0;
  *(v4 + 152) = 0;
  if (a2)
  {
    if (v6)
    {
      if (_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v5, v6))
      {

        if ((_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v5, v6) & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else if ((v6 & 0x1000000000000000) != 0)
      {
        v2[2] = v5;
        v2[3] = v6;
        lazy protocol witness table accessor for type String and conformance String();

        StringProtocol._ephemeralString.getter();
        v20 = String._bridgeToObjectiveCImpl()();

        v21 = [v20 _fastCharacterContents];
        v22 = v20;
        if (v21)
        {
          v2[2] = v5;
          v2[3] = v6;
          StringProtocol._ephemeralString.getter();
          v23 = String._bridgeToObjectiveCImpl()();

          v24 = [v23 length];
          swift_unknownObjectRelease();
          if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v21, v24, 4u, 1))
          {
            goto LABEL_39;
          }
        }

        else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v5, v6, 4u, 1) & 1) == 0)
        {
          goto LABEL_39;
        }
      }

      else
      {
        if ((v6 & 0x2000000000000000) != 0)
        {
          v10 = HIBYTE(v6) & 0xF;
          v2[2] = v5;
          v2[3] = v6 & 0xFFFFFFFFFFFFFFLL;
          v9 = v3;
        }

        else if ((v5 & 0x1000000000000000) != 0)
        {
          v9 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v10 = v5 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          v9 = _StringObject.sharedUTF8.getter();
        }

        v13 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v9, v10, 4u, 1);

        if (!v13)
        {
          goto LABEL_39;
        }
      }

      v14 = v2[4];

      *(v14 + 72) = v5;
      *(v14 + 80) = v6;
      *(v2 + 16) = 37;
      MEMORY[0x1EEE9AC00](v15);
      v31 = v3;
      v16 = specialized Sequence.contains(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, v30, v5, v6);

      *(v4 + 152) = v16 & 1;
    }

    else
    {
      v7 = v2[4];

      *(v7 + 72) = v5;
      *(v7 + 80) = 0;
    }

LABEL_27:
    free(v2);
    return;
  }

  if (!v6)
  {
    v8 = v2[4];

    *(v8 + 72) = v5;
    *(v8 + 80) = 0;
    goto LABEL_27;
  }

  if (_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v5, v6))
  {
    if ((_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(v5, v6) & 1) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  if ((v6 & 0x1000000000000000) == 0)
  {
    if ((v6 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(v6) & 0xF;
      v2[2] = v5;
      v2[3] = v6 & 0xFFFFFFFFFFFFFFLL;
      v11 = v3;
    }

    else if ((v5 & 0x1000000000000000) != 0)
    {
      v11 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v12 = v5 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = _StringObject.sharedUTF8.getter();
    }

    if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v11, v12, 4u, 1))
    {
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  v2[2] = v5;
  v2[3] = v6;
  lazy protocol witness table accessor for type String and conformance String();
  StringProtocol._ephemeralString.getter();
  v25 = String._bridgeToObjectiveCImpl()();

  v26 = [v25 _fastCharacterContents];
  v27 = v25;
  if (v26)
  {
    v2[2] = v5;
    v2[3] = v6;
    StringProtocol._ephemeralString.getter();
    v28 = String._bridgeToObjectiveCImpl()();

    v29 = [v28 length];
    swift_unknownObjectRelease();
    if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v26, v29, 4u, 1))
    {
      goto LABEL_39;
    }

    goto LABEL_26;
  }

  if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v5, v6, 4u, 1))
  {
LABEL_26:
    v17 = v2[4];

    *(v17 + 72) = v5;
    *(v17 + 80) = v6;
    *(v2 + 16) = 37;
    MEMORY[0x1EEE9AC00](v18);
    v31 = v3;
    v19 = specialized Sequence.contains(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, v30, v5, v6);

    *(v4 + 152) = v19 & 1;
    goto LABEL_27;
  }

LABEL_39:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}