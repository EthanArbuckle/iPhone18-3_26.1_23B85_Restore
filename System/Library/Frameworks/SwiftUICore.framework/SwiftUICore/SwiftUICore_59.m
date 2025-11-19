uint64_t sub_18D373500()
{

  v1 = *(v0 + 24);
  if (v1 >= 3)
  {
  }

  return swift_deallocObject();
}

Class specialized static CodableCGImage.import(from:)()
{
  v0.super.isa = Data._bridgeToObjectiveC()().super.isa;
  v1 = CGImageSourceCreateWithData(v0.super.isa, 0);

  if (v1)
  {
    ImageAtIndex = CGImageSourceCreateImageAtIndex(v1, 0, 0);
    if (ImageAtIndex)
    {
      v0.super.isa = ImageAtIndex;
    }

    else
    {
      lazy protocol witness table accessor for type CodableCGImage.Error and conformance CodableCGImage.Error();
      swift_allocError();
      *v4 = 0;
      swift_willThrow();
    }
  }

  else
  {
    lazy protocol witness table accessor for type CodableCGImage.Error and conformance CodableCGImage.Error();
    swift_allocError();
    *v3 = 0;
    swift_willThrow();
  }

  return v0.super.isa;
}

uint64_t outlined destroy of LinkDestination.Configuration(uint64_t a1)
{
  v2 = type metadata accessor for LinkDestination.Configuration(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t FixedRoundedRect.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v41 = *MEMORY[0x1E69E9840];
  v37 = 0;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v29 = 0;
    v9 = 0uLL;
    v7 = 0;
    v8 = 0;
    v10 = 0uLL;
LABEL_64:
    v3[3] = 0;
    *a2 = v9;
    *(a2 + 16) = v10;
    *(a2 + 32) = v7;
    *(a2 + 40) = v8;
    *(a2 + 48) = v29;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0uLL;
  v10 = 0uLL;
  while (1)
  {
    result = v3[3];
    v33 = v10;
    v35 = v9;
    if (result)
    {
      v12 = v3[4];
      if (v5 < v12)
      {
        goto LABEL_11;
      }

      if (v12 < v5)
      {
        goto LABEL_65;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    v10 = v33;
    v9 = v35;
    if (result <= 7)
    {
      goto LABEL_65;
    }

LABEL_11:
    v13 = result >> 3;
    v14 = result & 7;
    if (result >> 3 == 3)
    {
      break;
    }

    if (v13 == 2)
    {
      if (v14 != 2)
      {
        goto LABEL_65;
      }

      v21 = v3[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
      }

      v23 = *(v21 + 2);
      v22 = *(v21 + 3);
      if (v23 >= v22 >> 1)
      {
        v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
      }

      *(v21 + 2) = v23 + 1;
      *&v21[8 * v23 + 32] = v6;
      v3[5] = v21;
      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_73:
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
        __break(1u);
        do
        {
          __break(1u);
          result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
          a2 = result;
          v30 = *(result + 16);
          if (v30)
          {
            goto LABEL_71;
          }

          __break(1u);
          a2 = v3[5];
        }

        while (!*(a2 + 16));
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v30 = *(a2 + 16);
          if (v30)
          {
LABEL_71:
            v31 = v30 - 1;
            v32 = *(a2 + 8 * v31 + 32);
            *(a2 + 16) = v31;
            v3[5] = a2;
            v3[2] = v32;
            return result;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
          a2 = result;
          v30 = *(result + 16);
          if (v30)
          {
            goto LABEL_71;
          }
        }

        __break(1u);
      }

      v24 = v3[1] + result;
      if (v6 < v24)
      {
        goto LABEL_65;
      }

      v3[2] = v24;
      specialized CGPoint.init(from:)(v3);
      v19 = v3[5];
      if (!*(v19 + 16))
      {
        goto LABEL_75;
      }

      v7 = v25;
      v8 = v26;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
        v19 = result;
      }

      v20 = *(v19 + 16);
      v10 = v33;
      v9 = v35;
      if (!v20)
      {
        goto LABEL_77;
      }
    }

    else
    {
      if (v13 != 1)
      {
        if ((result & 7) > 1)
        {
          if (v14 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_79;
            }

            v28 = v3[1] + result;
            v10 = v33;
            v9 = v35;
            if (v6 < v28)
            {
              goto LABEL_65;
            }
          }

          else
          {
            if (v14 != 5)
            {
              goto LABEL_65;
            }

            v28 = v3[1] + 4;
            if (v6 < v28)
            {
              goto LABEL_65;
            }
          }

          goto LABEL_62;
        }

        if ((result & 7) != 0)
        {
          if (v14 != 1)
          {
            goto LABEL_65;
          }

          v28 = v3[1] + 8;
          if (v6 < v28)
          {
            goto LABEL_65;
          }

LABEL_62:
          v3[1] = v28;
          goto LABEL_4;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

LABEL_58:
        v10 = v33;
        v9 = v35;
        goto LABEL_4;
      }

      if (v14 != 2)
      {
        goto LABEL_65;
      }

      v15 = v3[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v15 + 2) + 1, 1, v15);
      }

      v17 = *(v15 + 2);
      v16 = *(v15 + 3);
      if (v17 >= v16 >> 1)
      {
        v15 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v15);
      }

      *(v15 + 2) = v17 + 1;
      *&v15[8 * v17 + 32] = v6;
      v3[5] = v15;
      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_73;
      }

      v18 = v3[1] + result;
      if (v6 < v18)
      {
        goto LABEL_65;
      }

      v3[2] = v18;
      v39 = 0u;
      v40 = 0u;
      closure #1 in EdgeInsets.init(from:)(&v39, v3, &v38);
      v19 = v3[5];
      if (!*(v19 + 16))
      {
        goto LABEL_74;
      }

      v34 = v40;
      v36 = v39;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
        v19 = result;
      }

      v20 = *(v19 + 16);
      v10 = v34;
      v9 = v36;
      if (!v20)
      {
        goto LABEL_76;
      }
    }

    v2 = 0;
    v11 = v20 - 1;
    v6 = *(v19 + 8 * v11 + 32);
    *(v19 + 16) = v11;
    v3[5] = v19;
    v3[2] = v6;
LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      v29 = v37;
      goto LABEL_64;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_46:
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    v37 = result == 1;
    goto LABEL_58;
  }

  if (v14 != 2)
  {
    goto LABEL_65;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    goto LABEL_78;
  }

  v27 = v3[1] + result;
  if (v6 >= v27)
  {
    v3[3] = 24;
    v3[4] = v27;
    goto LABEL_46;
  }

LABEL_65:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  return swift_willThrow();
}

uint64_t LinkDestination.Configuration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v21 = type metadata accessor for URL();
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for KeyedEncodingContainer<LinkDestination.Configuration.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<LinkDestination.Configuration.CodingKeys>, MEMORY[0x1E69E6F48]);
  v22 = v6;
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = type metadata accessor for LinkDestination.Configuration(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v11;
  v12 = v19;
  v24 = 0;
  lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL);
  v13 = v21;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v17;
  (*(v12 + 32))(v17, v5, v13);
  v23 = 1;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v20 + 8))(v8, v22);
  *(v14 + *(v9 + 20)) = v15 & 1;
  outlined init with copy of LinkDestination.Configuration(v14, v18);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of LinkDestination.Configuration(v14);
}

unint64_t closure #1 in closure #3 in DisplayList.Item.init(from:)@<X0>(unint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v37 = a2;
  v3 = result;
  v4 = *(result + 8);
  v5 = *(result + 16);
  if (v4 >= v5)
  {
LABEL_55:
    LODWORD(v6) = 0;
    LOWORD(v7) = 0;
    v8 = 0;
    v34 = 0u;
    v9 = MEMORY[0x1E69E7CC0];
LABEL_56:
    v3[3] = 0;
    v30 = v37;
    *v37 = v34;
    *(v30 + 4) = v8;
    *(v30 + 3) = v9;
    *(v30 + 16) = v7;
    *(v30 + 9) = v6;
    return result;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v34 = 0u;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v3[3];
    if (v10)
    {
      v11 = v3[4];
      if (v4 < v11)
      {
        goto LABEL_11;
      }

      if (v11 < v4)
      {
        goto LABEL_57;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
    }

    v10 = result;
    if (result < 8)
    {
LABEL_57:

LABEL_58:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    if (v10 >> 3 != 2)
    {
      break;
    }

    if ((v10 & 7) != 2)
    {
      goto LABEL_58;
    }

    v21 = v3[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v21 + 2) + 1, 1, v21);
    }

    v23 = *(v21 + 2);
    v22 = *(v21 + 3);
    if (v23 >= v22 >> 1)
    {
      v21 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v21);
    }

    *(v21 + 2) = v23 + 1;
    *&v21[8 * v23 + 32] = v5;
    v3[5] = v21;
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      goto LABEL_67;
    }

    v24 = v3[1] + result;
    if (v5 < v24)
    {
      goto LABEL_58;
    }

    v3[2] = v24;
    DisplayList.init(from:)(&v35, v3);
    v25 = v3[5];
    if (!*(v25 + 16))
    {
      goto LABEL_69;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v26 = *(v25 + 16);
      if (!v26)
      {
        goto LABEL_54;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v25);
      v25 = result;
      v26 = *(result + 16);
      if (!v26)
      {
LABEL_54:
        __break(1u);
        goto LABEL_55;
      }
    }

    v27 = v26 - 1;
    v5 = *(v25 + 8 * v27 + 32);
    *(v25 + 16) = v27;
    v3[5] = v25;
    v3[2] = v5;
    v9 = v35;
    v7 = WORD4(v35);
    v6 = HIDWORD(v35);
LABEL_4:
    v4 = v3[1];
    if (v4 >= v5)
    {
      goto LABEL_56;
    }
  }

  if (v10 >> 3 != 1)
  {
    v28 = v10 & 7;
    if (v28 > 1)
    {
      if (v28 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_71;
        }

        v29 = v3[1] + result;
        if (v5 < v29)
        {
          goto LABEL_57;
        }
      }

      else
      {
        if (v28 != 5)
        {
          goto LABEL_57;
        }

        v29 = v3[1] + 4;
        if (v5 < v29)
        {
          goto LABEL_57;
        }
      }
    }

    else
    {
      if ((v10 & 7) == 0)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        goto LABEL_4;
      }

      if (v28 != 1)
      {
        goto LABEL_57;
      }

      v29 = v3[1] + 8;
      if (v5 < v29)
      {
        goto LABEL_57;
      }
    }

    v3[1] = v29;
    goto LABEL_4;
  }

  if ((v10 & 7) != 2)
  {
    goto LABEL_57;
  }

  v12 = v3[5];
  v13 = v6;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
  }

  v15 = *(v12 + 2);
  v14 = *(v12 + 3);
  if (v15 >= v14 >> 1)
  {
    v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v12);
  }

  *(v12 + 2) = v15 + 1;
  *&v12[8 * v15 + 32] = v5;
  v3[5] = v12;
  v16 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
  }

  if ((v16 & 0x8000000000000000) == 0)
  {
    v17 = v3[1] + v16;
    if (v5 < v17)
    {
      goto LABEL_57;
    }

    v3[2] = v17;
    StrongHash.init(from:)(v3, &v35);
    v18 = v3[5];
    if (!*(v18 + 16))
    {
      goto LABEL_68;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
      v18 = result;
    }

    v6 = v13;
    v19 = *(v18 + 16);
    if (!v19)
    {
      goto LABEL_70;
    }

    v20 = v19 - 1;
    v5 = *(v18 + 8 * v20 + 32);
    *(v18 + 16) = v20;
    v3[5] = v18;
    v3[2] = v5;
    v34 = v35;
    v8 = v36;
    goto LABEL_4;
  }

  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
LABEL_71:
  __break(1u);
  __break(1u);
  do
  {
    __break(1u);
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
    v31 = *(result + 16);
    if (v31)
    {
      goto LABEL_64;
    }

    __break(1u);
    v7 = v3[5];
  }

  while (!*(v7 + 16));
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v31 = *(v7 + 16);
    if (v31)
    {
LABEL_64:
      v32 = v31 - 1;
      v33 = *(v7 + 8 * v32 + 32);
      *(v7 + 16) = v32;
      v3[5] = v7;
      v3[2] = v33;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
    v7 = result;
    v31 = *(result + 16);
    if (v31)
    {
      goto LABEL_64;
    }
  }

  __break(1u);
  return result;
}

unint64_t closure #3 in DisplayList.Item.init(from:)@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v5 >= v6)
  {
LABEL_45:
    v3[3] = 0;
    *a2 = v7;
    a2[1] = 0;
    a2[2] = 0;
    a2[3] = 0x80000000;
    return result;
  }

  while (1)
  {
    result = v3[3];
    if (result)
    {
      v8 = v3[4];
      if (v5 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v5)
      {
        goto LABEL_46;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
    }

    if (result < 8)
    {
LABEL_46:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
    }

LABEL_11:
    if ((result & 0xFFFFFFFFFFFFFFF8) != 8)
    {
      v20 = result & 7;
      if (v20 > 1)
      {
        if (v20 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          v21 = v3[1] + result;
          if (v6 < v21)
          {
            goto LABEL_46;
          }
        }

        else
        {
          if (v20 != 5)
          {
            goto LABEL_46;
          }

          v21 = v3[1] + 4;
          if (v6 < v21)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
          }

          goto LABEL_4;
        }

        if (v20 != 1)
        {
          goto LABEL_46;
        }

        v21 = v3[1] + 8;
        if (v6 < v21)
        {
          goto LABEL_46;
        }
      }

      v3[1] = v21;
      goto LABEL_4;
    }

    if ((result & 7) != 2)
    {
      goto LABEL_46;
    }

    v9 = v3[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v11 = *(v9 + 2);
    v10 = *(v9 + 3);
    if (v11 >= v10 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v9);
    }

    *(v9 + 2) = v11 + 1;
    *&v9[8 * v11 + 32] = v6;
    v3[5] = v9;
    v12 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
    }

    if (v12 < 0)
    {
      break;
    }

    v13 = v3[1] + v12;
    if (v6 < v13)
    {
      goto LABEL_46;
    }

    v3[2] = v13;
    closure #1 in closure #3 in DisplayList.Item.init(from:)(v3, v29);
    v14 = v3[5];
    if (!*(v14 + 2))
    {
      goto LABEL_50;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v15 = *(v14 + 2);
      if (!v15)
      {
        goto LABEL_51;
      }
    }

    else
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
      v15 = *(v14 + 2);
      if (!v15)
      {
        goto LABEL_51;
      }
    }

    v16 = v15 - 1;
    v6 = *&v14[8 * v16 + 32];
    *(v14 + 2) = v16;
    v3[5] = v14;
    v3[2] = v6;
    v26 = v29[0];
    v27 = v29[1];
    v28 = v30;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7[2] + 1, 1, v7);
      v7 = result;
    }

    v18 = v7[2];
    v17 = v7[3];
    if (v18 >= v17 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v7);
      v7 = result;
    }

    v7[2] = v18 + 1;
    v19 = &v7[5 * v18];
    v19[8] = v28;
    *(v19 + 2) = v26;
    *(v19 + 3) = v27;
LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v24 = result;
  v25 = *(result + 16);
  if (v25)
  {
    v22 = v25 - 1;
    v23 = *(result + 8 * v22 + 32);
    *(result + 16) = v22;

    v3[5] = v24;
    v3[2] = v23;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined init with copy of LinkDestination.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkDestination.Configuration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance LinkDestination.Configuration.CodingKeys()
{
  if (*v0)
  {
    return 0x7469736E65537369;
  }

  else
  {
    return 7107189;
  }
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(StrongHash, DisplayList)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(StrongHash, DisplayList)>)
  {
    type metadata accessor for (Path, FillStyle)(255, &lazy cache variable for type metadata for (StrongHash, DisplayList));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(StrongHash, DisplayList)>);
    }
  }
}

unint64_t Image.ResizingInfo.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v28 = *MEMORY[0x1E69E9840];
  if (one-time initialization token for resizable != -1)
  {
    result = swift_once();
  }

  v22 = unk_1EAB12458;
  v23 = static Image.ResizingInfo.resizable;
  v5 = byte_1EAB12468;
  v24 = byte_1EAB12468;
  v6 = v3[1];
  v7 = v3[2];
  if (v6 >= v7)
  {
LABEL_54:
    v3[3] = 0;
    *a2 = v23;
    *(a2 + 16) = v22;
    *(a2 + 32) = v5;
    return result;
  }

  while (1)
  {
    result = v3[3];
    if (result)
    {
      v8 = v3[4];
      if (v6 < v8)
      {
        goto LABEL_13;
      }

      if (v8 < v6)
      {
        goto LABEL_52;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
      goto LABEL_52;
    }

LABEL_13:
    v9 = result & 7;
    if (result >> 3 == 2)
    {
      break;
    }

    if (result >> 3 == 1)
    {
      if ((result & 7) != 0)
      {
        if (v9 != 2)
        {
          goto LABEL_52;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_59;
        }

        v10 = v3[1] + result;
        if (v7 < v10)
        {
          goto LABEL_52;
        }

        v3[3] = 8;
        v3[4] = v10;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v24 = result != 1;
    }

    else
    {
      if ((result & 7) > 1)
      {
        if (v9 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_60;
          }

          v18 = v3[1] + result;
          if (v7 < v18)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v9 != 5)
          {
            goto LABEL_52;
          }

          v18 = v3[1] + 4;
          if (v7 < v18)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
        if ((result & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          goto LABEL_6;
        }

        if (v9 != 1)
        {
          goto LABEL_52;
        }

        v18 = v3[1] + 8;
        if (v7 < v18)
        {
          goto LABEL_52;
        }
      }

      v3[1] = v18;
    }

LABEL_6:
    v6 = v3[1];
    if (v6 >= v7)
    {
      v5 = v24;
      goto LABEL_54;
    }
  }

  if (v9 != 2)
  {
    goto LABEL_52;
  }

  v11 = v3[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  *&v11[8 * v13 + 32] = v7;
  v3[5] = v11;
  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v14 = v3[1] + result;
    if (v7 < v14)
    {
      goto LABEL_52;
    }

    v3[2] = v14;
    v26 = 0u;
    v27 = 0u;
    closure #1 in EdgeInsets.init(from:)(&v26, v3, &v25);
    v15 = v3[5];
    if (!*(v15 + 16))
    {
      goto LABEL_58;
    }

    v22 = v27;
    v23 = v26;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v16 = *(v15 + 16);
      if (!v16)
      {
        goto LABEL_51;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v15);
      v15 = result;
      v16 = *(result + 16);
      if (!v16)
      {
LABEL_51:
        __break(1u);
LABEL_52:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        return swift_willThrow();
      }
    }

    v17 = v16 - 1;
    v7 = *(v15 + 8 * v17 + 32);
    *(v15 + 16) = v17;
    v3[5] = v15;
    v3[2] = v7;
    goto LABEL_6;
  }

  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
  __break(1u);
  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v21 = *(result + 16);
  if (!v21)
  {
    __break(1u);
  }

  v19 = v21 - 1;
  v20 = *(result + 8 * v19 + 32);
  *(result + 16) = v19;
  v3[5] = result;
  v3[2] = v20;
  return result;
}

unint64_t lazy protocol witness table accessor for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys()
{
  result = lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys;
  if (!lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys);
  }

  return result;
}

void type metadata accessor for KeyedEncodingContainer<LinkDestination.Configuration.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *, unint64_t))
{
  if (!*a2)
  {
    v6 = lazy protocol witness table accessor for type LinkDestination.Configuration.CodingKeys and conformance LinkDestination.Configuration.CodingKeys();
    v7 = a3(a1, &unk_1F0061D08, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void *specialized ContainerRelativeShape.path(in:)@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  v6 = _threadGeometryProxyData();
  if (v6)
  {
    v7 = *v6;
    v8 = *(v6 + 4);
    v9 = *(v6 + 8);
    v10 = *(v6 + 16);
    v11 = *(v6 + 20);
    v35[0] = *(v6 + 24);
    *(v35 + 12) = *(v6 + 36);
    specialized static Update.begin()();
    if (AGWeakAttributeGetAttribute() == *MEMORY[0x1E698D3F8])
    {
      EnvironmentValues.init()(v36);
      v12 = *(&v36[0] + 1);
      v13 = *&v36[0];
      static Update.end()();
      if (v12)
      {
LABEL_4:

        _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA014ContainerShapeI033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt1g5(v13, &v32);

LABEL_9:

        v20 = *(&v32 + 1);
        v21 = v33;
        v22 = *v34;
        v23 = *&v34[8];
        v24 = *&v34[24];
        *&v32 = __PAIR64__(v8, v7);
        *(&v32 + 1) = v9;
        v33 = __PAIR64__(v11, v10);
        *v34 = v35[0];
        *&v34[12] = *(v35 + 12);
        v29 = v22;
        v30 = v23;
        v31 = v24;
        result = (*(v20 + 8))(v36, &v32, v21, &v29, a2, a3, a4, a5);
        v15 = v36[0];
        v17 = v36[1];
        v16 = v37;
        goto LABEL_11;
      }
    }

    else
    {
      AGWeakAttributeGetAttribute();
      InputValue = AGGraphGetInputValue();
      v13 = *InputValue;
      v19 = *(InputValue + 8);

      static Update.end()();
      if (v19)
      {
        goto LABEL_4;
      }
    }

    _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA014ContainerShapeF033_E7F652304F78E63E0DE3A54ABB60E18ALLVG_Tt2g5(v13, &v32);
    goto LABEL_9;
  }

  *&v38.origin.x = a2.n128_u64[0];
  *&v38.size.width = a4.n128_u64[0];
  *&v38.origin.y = a3.n128_u64[0];
  *&v38.size.height = a5.n128_u64[0];
  result = CGRectIsNull(v38);
  if (result)
  {
    v15 = 0uLL;
    v16 = 6;
    v17 = 0uLL;
  }

  else
  {
    v16 = 0;
    *&v15 = a2.n128_u64[0];
    *(&v15 + 1) = a3.n128_u64[0];
    *&v17 = a4.n128_u64[0];
    *(&v17 + 1) = a5.n128_u64[0];
  }

LABEL_11:
  *a1 = v15;
  *(a1 + 16) = v17;
  *(a1 + 32) = v16;
  return result;
}

double protocol witness for Shape.path(in:) in conformance ContainerRelativeShape@<D0>(uint64_t a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>)
{
  specialized ContainerRelativeShape.path(in:)(v8, a2, a3, a4, a5);
  result = *v8;
  v7 = v8[1];
  *a1 = v8[0];
  *(a1 + 16) = v7;
  *(a1 + 32) = v9;
  return result;
}

uint64_t DisplayList.UnaryInterpolatorGroup.rewriteInterpolation(serial:list:time:frame:contentOrigin:contentOffset:version:)(double a1, double a2, double a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t *a12)
{
  v20 = *a12;
  v21 = *(a10 + 8);
  v22 = *(a10 + 12);
  *&v51[0] = *a10;
  WORD4(v51[0]) = v21;
  HIDWORD(v51[0]) = v22;
  swift_beginAccess();

  DisplayList.InterpolatorLayer.setDisplayList(_:origin:)(v51, a5, a6);
  swift_endAccess();

  if (*(*(v12 + 80) + 16))
  {
    Value = AGGraphGetValue();
    if (*(v12 + 88) != *Value)
    {
      *(v12 + 88) = *Value;
      *(v12 + 107) = 1;
    }

    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v24 = swift_dynamicCastClassUnconditional();
    v25 = *AGGraphGetValue();
    swift_beginAccess();
    v26 = *(v24 + 376);
    if (v25 < v26)
    {
      v26 = v25;
    }

    *(v24 + 376) = v26;

    v27 = *(v12 + 108);
    swift_beginAccess();
    v28 = *(v12 + 16);
    swift_beginAccess();
    DisplayList.InterpolatorLayer.updateInterpolators(contentsScale:maxDuration:)(v27, v28);
    swift_endAccess();
    v29 = *(v12 + 72);
    v51[2] = *(v12 + 56);
    v51[3] = v29;
    v51[4] = *(v12 + 88);
    v52 = *(v12 + 104);
    v30 = *(v12 + 40);
    v51[0] = *(v12 + 24);
    v51[1] = v30;
    v31 = *(v12 + 72);
    v47 = *(v12 + 56);
    v48 = v31;
    v49 = *(v12 + 88);
    v50 = *(v12 + 104);
    v32 = *(v12 + 40);
    v45 = *(v12 + 24);
    v46 = v32;
    v44 = v20;
    v33 = *(v12 + 116);
    v34 = *(v12 + 120);
    v35 = *(v12 + 124);
    v40 = *(v12 + 112);
    v41 = v33;
    v42 = v34;
    v43 = v35;
    outlined init with copy of DisplayList.InterpolatorLayer(v51, v53);
    v38 = DisplayList.InterpolatorLayer.updateOutput(list:frame:contentOffset:version:rasterizationOptions:)(a10, &v44, &v40, v36, v37, a3, a4, a7, a8);
    v53[2] = v47;
    v53[3] = v48;
    v53[4] = v49;
    v54 = v50;
    v53[0] = v45;
    v53[1] = v46;
    outlined destroy of DisplayList.InterpolatorLayer(v53);
  }

  else
  {
    v38 = 0;
  }

  return v38 & 1;
}

void closure #1 in ViewGraphTransform.apply(to:)(void *a1, uint64_t a2, uint64_t *a3)
{
  v10 = a3;
  v14 = a1[5];
  v12 = a1[6];
  v13 = a1 + 5;
  v15 = (a1 + 7);
  v16 = a1[7];
  v17 = a1[8];
  v18 = v17 >> 30;
  v224 = a2;
  if (v17 >> 30 <= 1)
  {
    v221 = a1[5];
    if (!v18)
    {
      if (v14 >> 60 != 11)
      {
        return;
      }

      v219 = a1[6];
      v220 = a1;
      v217 = a1[8];
      v4 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
      v19 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
      v6 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      v7 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
      LODWORD(v3) = v217;
      v20 = v219;
      if ((v19 & 0x60) == 0 && ((v19 & 0x80) == 0 || !*(*(a2 + 16) + 16)))
      {
        return;
      }

      v211 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x3C);
      v212 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x38);
      LOBYTE(v213) = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x35);
      v214 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x34);
      v215 = *((v14 & 0xFFFFFFFFFFFFFFFLL) + 0x30);
      *v231 = 0;
      v17 = *(v4 + 2);
      outlined copy of DisplayList.Item.Value(v14, v12, v16, v217);
      v223 = v17;
      v218 = v10;
      v216 = v16;
      if (!v17)
      {

        v147 = 0;
        v21 = 0;
        LOWORD(v16) = 0;
LABEL_226:
        if (v147 <= v220[4])
        {
          v148 = v220[4];
        }

        else
        {
          v148 = v147;
        }

        v220[4] = v148;
        v149 = swift_allocObject();
        *(v149 + 16) = v4;
        *(v149 + 24) = v16;
        *(v149 + 28) = v21;
        *(v149 + 32) = v6;
        *(v149 + 40) = v7;
        *(v149 + 48) = v215;
        *(v149 + 52) = v214;
        *(v149 + 53) = v213;
        *(v149 + 56) = v212;
        *(v149 + 60) = v211;
        if (v148)
        {
          v150 = (2 * (((33 * WORD1(v148)) ^ v148) & 0x7FFF)) | 1;
        }

        else
        {
          v150 = 0;
        }

        v151 = v149 | 0xB000000000000000;
        outlined consume of DisplayList.Item.Value(v220[5], v220[6], v220[7], v220[8]);
        v220[5] = v151;
        v220[6] = v150;
        *v15 = 0;
        *(v15 + 8) = 0;
        v152 = *v218;
        if (v147 > *v218)
        {
          v152 = v147;
        }

        *v218 = v152;

        outlined consume of DisplayList.Item.Value(v14, v219, v216, v217);
        return;
      }

      outlined copy of DisplayList.Item.Value(v14, v219, v16, v217);

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (*(v4 + 2))
        {
LABEL_8:
          LODWORD(v16) = 0;
          v21 = 0;
          v22 = 0;
          v222 = v4 + 32;
          v23 = 1;
          while (1)
          {
            v17 = v22;
            v22 = v23;
            v20 = &v222[80 * v17];
            closure #1 in ViewGraphTransform.apply(to:)(v20, a2, v231);
            if (v17 >= *(v4 + 2))
            {
              __break(1u);
LABEL_358:
              __break(1u);
LABEL_359:
              __break(1u);
LABEL_360:
              __break(1u);
LABEL_361:
              __break(1u);
LABEL_362:
              __break(1u);
LABEL_363:
              __break(1u);
LABEL_364:
              __break(1u);
LABEL_365:
              __break(1u);
LABEL_366:
              __break(1u);
LABEL_367:
              __break(1u);
LABEL_368:
              __break(1u);
              goto LABEL_369;
            }

            v227 = *(v20 + 1);
            v228 = *(v20 + 2);
            v229[0] = *(v20 + 3);
            *(v229 + 12) = *(v20 + 60);
            v226 = *v20;
            DisplayList.Item.features.getter(&v230);
            v24 = *(v4 + 2);
            if (v17 >= v24)
            {
              goto LABEL_358;
            }

            v16 = v230 | v16;
            v3 = *(v20 + 5);
            v5 = *(v20 + 8);
            v25 = v5 >> 30;
            if (v5 >> 30 > 1)
            {
              if (v25 != 2)
              {
                goto LABEL_9;
              }

              v27 = *(v3 + 16);
              if (v27)
              {
                if (v27 > 7)
                {
                  v28 = v27 & 0x7FFFFFFFFFFFFFF8;
                  v30 = (v3 + 188);
                  v31 = 0uLL;
                  v32 = v27 & 0x7FFFFFFFFFFFFFF8;
                  v33 = 0uLL;
                  do
                  {
                    v34.i32[0] = *(v30 - 30);
                    v34.i32[1] = *(v30 - 20);
                    v34.i32[2] = *(v30 - 10);
                    v34.i32[3] = *v30;
                    v35.i32[0] = v30[10];
                    v35.i32[1] = v30[20];
                    v35.i32[2] = v30[30];
                    v35.i32[3] = v30[40];
                    v31 = vorrq_s8(v34, v31);
                    v33 = vorrq_s8(v35, v33);
                    v30 += 80;
                    v32 -= 8;
                  }

                  while (v32);
                  v36 = vorrq_s8(v33, v31);
                  *v36.i8 = vorr_s8(*v36.i8, *&vextq_s8(v36, v36, 8uLL));
                  v26 = v36.i32[0] | v36.i32[1];
                  if (v27 == v28)
                  {
                    goto LABEL_37;
                  }
                }

                else
                {
                  v26 = 0;
                  v28 = 0;
                }

                v37 = v27 - v28;
                v38 = (v3 + 40 * v28 + 68);
                do
                {
                  v39 = *v38;
                  v38 += 10;
                  v26 |= v39;
                  --v37;
                }

                while (v37);
              }

              else
              {
                v26 = 0;
              }
            }

            else if (v25)
            {
              v29 = *(v20 + 6);
              if (BYTE4(v29) == 2)
              {
                outlined copy of DisplayList.Effect(*(v20 + 5), *(v20 + 6), 2);
                v17 = v3;
              }

              else
              {
                v20 = *(v20 + 7);
                if (BYTE4(v29) == 7)
                {
                  v17 = *(v3 + 28);
                  outlined copy of DisplayList.Item.Value(v3, v29, v20, v5);
                  outlined consume of DisplayList.Effect(v3, v29, 7);
                }

                else if (BYTE4(v29) == 18)
                {
                  (*(*v3 + 120))(&v226);
                  outlined copy of DisplayList.Item.Value(v3, v29, v20, v5);
                  outlined consume of DisplayList.Effect(v3, v29, 18);

                  v17 = v226;
                }

                else
                {
                  outlined copy of DisplayList.Effect(v3, v29, SBYTE4(v29));

                  outlined consume of DisplayList.Effect(v3, v29, SBYTE4(v29));

                  v17 = 0;
                }
              }

              v26 = v17 | HIDWORD(v5);
              a2 = v224;
            }

            else
            {
              if (v3 >> 60 != 6 && v3 >> 60 != 11)
              {
LABEL_9:
                if (v22 == v223)
                {
                  goto LABEL_221;
                }

                goto LABEL_10;
              }

              v26 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            }

LABEL_37:
            v21 |= v26;
            if (v22 == v223)
            {
LABEL_221:
              v14 = v221;
              outlined consume of DisplayList.Item.Value(v221, v219, v216, v217);
              v147 = *v231;
              goto LABEL_226;
            }

            v24 = *(v4 + 2);
LABEL_10:
            v23 = v22 + 1;
            if (v22 >= v24)
            {
              goto LABEL_376;
            }
          }
        }

        goto LABEL_376;
      }

LABEL_375:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      if (*(v4 + 2))
      {
        goto LABEL_8;
      }

LABEL_376:
      __break(1u);
      goto LABEL_377;
    }

    v15 = a1[8];
    *v231 = a1[7];
    *&v231[8] = v17;
    *&v231[12] = HIDWORD(v17);
    v219 = v12;
    v220 = a1;
    switch(BYTE4(v12))
    {
      case 7u:
        v4 = *(v14 + 16);
        LODWORD(v217) = *(v14 + 24);
        v214 = *(v14 + 28);
        v215 = *(v14 + 32);
        v218 = a3;
        if ((v17 & 0x60) != 0 || (v17 & 0x80) != 0 && *(*(a2 + 16) + 16))
        {
          v230 = 0;
          *&v231[8] = 0;
          *&v231[12] = 0;
          v20 = *(v16 + 16);
          outlined copy of DisplayList.Item.Value(v14, v12, v16, v17);

          v223 = v20;
          if (v20)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              goto LABEL_379;
            }

            if (*(v16 + 16))
            {
              goto LABEL_150;
            }

LABEL_380:
            __break(1u);
LABEL_381:
            v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
LABEL_59:
            LODWORD(v222) = v3;
            if (!*(v16 + 16))
            {
              goto LABEL_359;
            }

            v49 = 0;
            LODWORD(v5) = 0;
            v50 = 0;
            v4 = (v16 + 32);
            v51 = 1;
            while (1)
            {
              v17 = v50;
              v50 = v51;
              v20 = &v4[80 * v17];
              closure #1 in ViewGraphTransform.apply(to:)(v20, a2, &v230);
              if (v17 >= *(v16 + 16))
              {
                goto LABEL_362;
              }

              v227 = *(v20 + 1);
              v228 = *(v20 + 2);
              v229[0] = *(v20 + 3);
              *(v229 + 12) = *(v20 + 60);
              v226 = *v20;
              DisplayList.Item.features.getter(&v225);
              v52 = *(v16 + 16);
              if (v17 >= v52)
              {
                goto LABEL_366;
              }

              v15 = v16;
              v49 |= v225;
              v53 = *(v20 + 5);
              v54 = *(v20 + 8);
              v55 = v54 >> 30;
              if (v54 >> 30 > 1)
              {
                if (v55 != 2)
                {
                  v16 = v15;
                  if (v50 == v223)
                  {
                    goto LABEL_239;
                  }

                  goto LABEL_62;
                }

                v57 = *(v53 + 16);
                if (!v57)
                {
                  v56 = 0;
LABEL_92:
                  v16 = v15;
                  goto LABEL_93;
                }

                v16 = v15;
                if (v57 > 7)
                {
                  v58 = v57 & 0x7FFFFFFFFFFFFFF8;
                  v60 = (v53 + 188);
                  v61 = 0uLL;
                  v62 = v57 & 0x7FFFFFFFFFFFFFF8;
                  v63 = 0uLL;
                  do
                  {
                    v64.i32[0] = *(v60 - 30);
                    v64.i32[1] = *(v60 - 20);
                    v64.i32[2] = *(v60 - 10);
                    v64.i32[3] = *v60;
                    v65.i32[0] = v60[10];
                    v65.i32[1] = v60[20];
                    v65.i32[2] = v60[30];
                    v65.i32[3] = v60[40];
                    v61 = vorrq_s8(v64, v61);
                    v63 = vorrq_s8(v65, v63);
                    v60 += 80;
                    v62 -= 8;
                  }

                  while (v62);
                  v66 = vorrq_s8(v63, v61);
                  *v66.i8 = vorr_s8(*v66.i8, *&vextq_s8(v66, v66, 8uLL));
                  v56 = v66.i32[0] | v66.i32[1];
                  if (v57 == v58)
                  {
                    goto LABEL_93;
                  }
                }

                else
                {
                  v56 = 0;
                  v58 = 0;
                }

                v67 = v57 - v58;
                v68 = (v53 + 40 * v58 + 68);
                do
                {
                  v69 = *v68;
                  v68 += 10;
                  v56 |= v69;
                  --v67;
                }

                while (v67);
              }

              else
              {
                if (v55)
                {
                  v59 = *(v20 + 6);
                  if (BYTE4(v59) == 2)
                  {
                    outlined copy of DisplayList.Effect(*(v20 + 5), *(v20 + 6), 2);
                    v17 = v53;
                  }

                  else
                  {
                    v20 = *(v20 + 7);
                    if (BYTE4(v59) == 7)
                    {
                      v17 = *(v53 + 28);
                      outlined copy of DisplayList.Item.Value(v53, v59, v20, v54);
                      outlined consume of DisplayList.Effect(v53, v59, 7);
                    }

                    else if (BYTE4(v59) == 18)
                    {
                      (*(*v53 + 120))(&v226);
                      outlined copy of DisplayList.Item.Value(v53, v59, v20, v54);
                      outlined consume of DisplayList.Effect(v53, v59, 18);

                      v17 = v226;
                    }

                    else
                    {
                      outlined copy of DisplayList.Effect(v53, v59, SBYTE4(v59));

                      outlined consume of DisplayList.Effect(v53, v59, SBYTE4(v59));

                      v17 = 0;
                    }
                  }

                  v56 = v17 | HIDWORD(v54);
                  a2 = v224;
                  goto LABEL_92;
                }

                if (v53 >> 60 == 6)
                {
                  v56 = *((v53 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                  goto LABEL_92;
                }

                v16 = v15;
                if (v53 >> 60 != 11)
                {
                  if (v50 == v223)
                  {
                    goto LABEL_239;
                  }

                  goto LABEL_62;
                }

                v56 = *((v53 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
              }

LABEL_93:
              LODWORD(v5) = v56 | v5;
              if (v50 == v223)
              {
LABEL_239:
                *v231 = v16;
                *&v231[12] = v5;
                *&v231[8] = v49;
                v16 = v230;
                v10 = v218;
                v14 = v221;
                goto LABEL_326;
              }

              v52 = *(v16 + 16);
LABEL_62:
              v51 = v50 + 1;
              if (v50 >= v52)
              {
                goto LABEL_359;
              }
            }
          }
        }

        else
        {
          outlined copy of DisplayList.Item.Value(v14, v12, v16, v17);
        }

        v16 = 0;
        goto LABEL_282;
      case 0x10u:
        v218 = a3;
        v6 = *(v14 + 16);
        v7 = *(v14 + 24);
        LODWORD(v47) = *(v14 + 32);
        v17 = a1[4];
        v3 = a2 + 16;
        v20 = *(a2 + 16);
        outlined copy of DisplayList.Effect(v14, v12, 16);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a2 + 16) = v20;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_373;
        }

        goto LABEL_105;
      case 0x11u:
        v3 = *(v14 + 16);
        v7 = *(v14 + 24);
        v8 = *(v14 + 32);
        v9 = *(v14 + 40);
        v6 = *(v14 + 48);
        if ((v17 & 0x60) == 0 && ((v17 & 0x80) == 0 || !*(*(a2 + 16) + 16)))
        {
          outlined copy of DisplayList.Effect(v14, v12, 17);

LABEL_325:
          v16 = 0;
LABEL_326:
          v200 = *a2;
          *&v226 = *(a2 + 8);
          DisplayList.InterpolatorGroup.rewriteDisplayList(_:time:contentOrigin:contentOffset:version:)(v231, v200, &v226, v7, v8, v9, v6);
          if (v201)
          {
            v16 = *(a2 + 8);
          }

          v175 = v14;
          v176 = v219;
          v177 = 17;
          goto LABEL_329;
        }

        v230 = 0;
        *&v231[8] = 0;
        *&v231[12] = 0;
        v20 = *(v16 + 16);
        outlined copy of DisplayList.Effect(v14, v12, 17);

        v223 = v20;
        if (!v20)
        {
          goto LABEL_325;
        }

        v218 = v10;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_59;
        }

        goto LABEL_381;
    }

    v17 = HIDWORD(v12);
    if ((v15 & 0x60) == 0 && ((v15 & 0x80) == 0 || !*(*(a2 + 16) + 16)))
    {
      v202 = v12;
      outlined copy of DisplayList.Effect(v14, v12, SBYTE4(v12));

      v153 = v202;
      v16 = 0;
      goto LABEL_342;
    }

    v230 = 0;
    *&v231[8] = 0;
    *&v231[12] = 0;
    v125 = *(v16 + 16);
    outlined copy of DisplayList.Effect(v14, v12, SBYTE4(v12));

    v223 = v125;
    if (!v125)
    {
      v16 = 0;
      v153 = v219;
      goto LABEL_342;
    }

    v222 = v17;
    v218 = v10;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      if (*(v16 + 16))
      {
LABEL_190:
        v15 = v16;
        v126 = 0;
        v127 = 0;
        v128 = 0;
        v5 = (v15 + 32);
        v129 = 1;
        do
        {
          v17 = v128;
          v128 = v129;
          v20 = &v5[80 * v17];
          closure #1 in ViewGraphTransform.apply(to:)(v20, a2, &v230);
          if (v17 >= *(v15 + 16))
          {
            goto LABEL_363;
          }

          v227 = *(v20 + 1);
          v228 = *(v20 + 2);
          v229[0] = *(v20 + 3);
          *(v229 + 12) = *(v20 + 60);
          v226 = *v20;
          DisplayList.Item.features.getter(&v225);
          v130 = *(v15 + 16);
          if (v17 >= v130)
          {
            goto LABEL_367;
          }

          v126 |= v225;
          v3 = *(v20 + 5);
          v4 = *(v20 + 8);
          v131 = v4 >> 30;
          if (v4 >> 30 > 1)
          {
            if (v131 != 2)
            {
              goto LABEL_191;
            }

            v133 = *(v3 + 16);
            if (v133)
            {
              if (v133 > 7)
              {
                v134 = v133 & 0x7FFFFFFFFFFFFFF8;
                v137 = (v3 + 188);
                v138 = 0uLL;
                v139 = v133 & 0x7FFFFFFFFFFFFFF8;
                v140 = 0uLL;
                do
                {
                  v141.i32[0] = *(v137 - 30);
                  v141.i32[1] = *(v137 - 20);
                  v141.i32[2] = *(v137 - 10);
                  v141.i32[3] = *v137;
                  v142.i32[0] = v137[10];
                  v142.i32[1] = v137[20];
                  v142.i32[2] = v137[30];
                  v142.i32[3] = v137[40];
                  v138 = vorrq_s8(v141, v138);
                  v140 = vorrq_s8(v142, v140);
                  v137 += 80;
                  v139 -= 8;
                }

                while (v139);
                v143 = vorrq_s8(v140, v138);
                *v143.i8 = vorr_s8(*v143.i8, *&vextq_s8(v143, v143, 8uLL));
                v132 = v143.i32[0] | v143.i32[1];
                if (v133 == v134)
                {
                  goto LABEL_219;
                }
              }

              else
              {
                v132 = 0;
                v134 = 0;
              }

              v144 = v133 - v134;
              v145 = (v3 + 40 * v134 + 68);
              do
              {
                v146 = *v145;
                v145 += 10;
                v132 |= v146;
                --v144;
              }

              while (v144);
            }

            else
            {
              v132 = 0;
            }
          }

          else if (v131)
          {
            v135 = *(v20 + 6);
            if (BYTE4(v135) == 2)
            {
              outlined copy of DisplayList.Effect(*(v20 + 5), *(v20 + 6), 2);
              v17 = v3;
            }

            else
            {
              v136 = *(v20 + 7);
              if (BYTE4(v135) == 7)
              {
                v17 = *(v3 + 28);
                outlined copy of DisplayList.Item.Value(v3, v135, v136, v4);
                outlined consume of DisplayList.Effect(v3, v135, 7);
              }

              else if (BYTE4(v135) == 18)
              {
                (*(*v3 + 120))(&v226);
                outlined copy of DisplayList.Item.Value(v3, v135, v136, v4);
                outlined consume of DisplayList.Effect(v3, v135, 18);

                v17 = v226;
              }

              else
              {
                outlined copy of DisplayList.Effect(v3, v135, SBYTE4(v135));

                outlined consume of DisplayList.Effect(v3, v135, SBYTE4(v135));

                v17 = 0;
              }
            }

            v132 = v17 | HIDWORD(v4);
            a2 = v224;
          }

          else
          {
            if (v3 >> 60 != 6 && v3 >> 60 != 11)
            {
LABEL_191:
              if (v128 == v223)
              {
                goto LABEL_240;
              }

              goto LABEL_192;
            }

            v132 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
          }

LABEL_219:
          v127 |= v132;
          if (v128 == v223)
          {
LABEL_240:
            *v231 = v15;
            *&v231[12] = v127;
            *&v231[8] = v126;
            v16 = v230;
            v10 = v218;
            v153 = v219;
            v14 = v221;
            LOBYTE(v17) = v222;
            goto LABEL_342;
          }

          v130 = *(v15 + 16);
LABEL_192:
          v129 = v128 + 1;
        }

        while (v128 < v130);
      }
    }

    else
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      if (*(v16 + 16))
      {
        goto LABEL_190;
      }
    }

    __break(1u);
    goto LABEL_384;
  }

  if (v18 != 2)
  {
    return;
  }

  v4 = (a2 + 16);
  if (!*(*(a2 + 16) + 16))
  {
    return;
  }

  v40 = a1[6];
  v220 = a1;

  specialized Array._customRemoveLast()(&v226);
  if (v228)
  {
    specialized Array.remove(at:)(*(*v4 + 16) - 1, &v226);
  }

  v15 = v226;
  LODWORD(v5) = DWORD1(v226);
  v217 = *(&v227 + 1);
  v41 = *(v14 + 16);
  LODWORD(v222) = HIDWORD(v226);
  LODWORD(v223) = DWORD2(v226);
  LODWORD(v221) = v227;
  if (!v41)
  {
LABEL_95:
    outlined consume of DisplayList.Item.Value(v14, v40, v16, v17);
    outlined consume of DisplayList.Item.Value(v220[5], v220[6], v220[7], v220[8]);
    v70 = v220;
    *v13 = 0;
    v13[1] = 0;
    v13[2] = 0;
    v220[8] = 3221225472;
LABEL_96:
    v71 = v70[4];
    v17 = v217;
    if (v217 > v71)
    {
      v71 = v217;
    }

    v70[4] = v71;
    if (v71 <= *v10)
    {
      v71 = *v10;
    }

    *v10 = v71;
    v20 = *v4;
    v72 = swift_isUniquelyReferenced_nonNull_native();
    *v4 = v20;
    if ((v72 & 1) == 0)
    {
LABEL_370:
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
      *v4 = v20;
    }

    v74 = *(v20 + 2);
    v73 = *(v20 + 3);
    v75 = v223;
    v76 = v222;
    v77 = v221;
    if (v74 >= v73 >> 1)
    {
      v210 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v73 > 1), v74 + 1, 1, v20);
      v77 = v221;
      v76 = v222;
      v75 = v223;
      v20 = v210;
      *v4 = v210;
    }

    *(v20 + 2) = v74 + 1;
    v78 = &v20[32 * v74];
    *(v78 + 8) = v15;
    *(v78 + 9) = v5;
    *(v78 + 10) = v75;
    *(v78 + 11) = v76;
    *(v78 + 12) = v77;
    *(v78 + 7) = v17;
    return;
  }

  v3 = v231;
  v42 = v14 + 32;
  while (1)
  {
    v43 = *(v42 + 32);
    v44 = *(v42 + 16);
    *v231 = *v42;
    *&v231[16] = v44;
    v232 = v43;
    if (*v231 == v226 && *&v231[4] == __PAIR128__(__PAIR64__(v227, HIDWORD(v226)), *(&v226 + 4)))
    {
      break;
    }

    v42 += 40;
    if (!--v41)
    {
      goto LABEL_95;
    }
  }

  outlined init with copy of (StrongHash, DisplayList)(v231, &v226);
  outlined consume of DisplayList.Item.Value(v14, v40, v16, v17);
  v17 = *&v231[24];
  LODWORD(v14) = v232;
  v45 = v220;
  if ((v232 & 0x60) == 0)
  {
    v16 = HIDWORD(v232);
    if ((v14 & 0x80) == 0 || !*(*v4 + 16))
    {
LABEL_356:
      outlined consume of DisplayList.Item.Value(v45[5], v45[6], v45[7], v45[8]);
      v70 = v220;
      *(v220 + 5) = xmmword_18DDA6ED0;
      v220[7] = v17;
      v220[8] = v14 | (v16 << 32) | 0x40000000;
      goto LABEL_96;
    }
  }

  v230 = 0;
  v46 = *(*&v231[24] + 16);
  v219 = v46;
  if (!v46)
  {
    LODWORD(v14) = 0;
    v16 = 0;
LABEL_353:
    if (v46 <= v220[4])
    {
      v46 = v220[4];
    }

    v45 = v220;
    v220[4] = v46;
    goto LABEL_356;
  }

  v218 = v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_386;
  }

  if (!*(v17 + 16))
  {
LABEL_387:
    __break(1u);
    return;
  }

  while (2)
  {
    v14 = 0;
    v16 = 0;
    v47 = 0;
    v216 = v17 + 32;
    v48 = 1;
    while (1)
    {
      v154 = v47;
      v47 = v48;
      v20 = (v216 + 80 * v154);
      closure #1 in ViewGraphTransform.apply(to:)(v20, v224, &v230);
      if (v154 >= *(v17 + 16))
      {
        break;
      }

      v227 = *(v20 + 1);
      v228 = *(v20 + 2);
      v229[0] = *(v20 + 3);
      *(v229 + 12) = *(v20 + 60);
      v226 = *v20;
      v3 = &v226;
      DisplayList.Item.features.getter(&v225);
      v155 = *(v17 + 16);
      if (v154 >= v155)
      {
        goto LABEL_372;
      }

      v14 = v225 | v14;
      v3 = *(v20 + 5);
      v156 = *(v20 + 8);
      v157 = v156 >> 30;
      if (v156 >> 30 > 1)
      {
        if (v157 != 2)
        {
          goto LABEL_241;
        }

        v159 = *(v3 + 16);
        if (v159)
        {
          if (v159 > 7)
          {
            v160 = v159 & 0x7FFFFFFFFFFFFFF8;
            v164 = (v3 + 188);
            v165 = 0uLL;
            v166 = v159 & 0x7FFFFFFFFFFFFFF8;
            v167 = 0uLL;
            do
            {
              v168.i32[0] = *(v164 - 30);
              v168.i32[1] = *(v164 - 20);
              v168.i32[2] = *(v164 - 10);
              v168.i32[3] = *v164;
              v169.i32[0] = v164[10];
              v169.i32[1] = v164[20];
              v169.i32[2] = v164[30];
              v169.i32[3] = v164[40];
              v165 = vorrq_s8(v168, v165);
              v167 = vorrq_s8(v169, v167);
              v164 += 80;
              v166 -= 8;
            }

            while (v166);
            v170 = vorrq_s8(v167, v165);
            *v170.i8 = vorr_s8(*v170.i8, *&vextq_s8(v170, v170, 8uLL));
            v158 = v170.i32[0] | v170.i32[1];
            if (v159 == v160)
            {
              goto LABEL_269;
            }
          }

          else
          {
            v158 = 0;
            v160 = 0;
          }

          v171 = v159 - v160;
          v172 = (v3 + 40 * v160 + 68);
          do
          {
            v173 = *v172;
            v172 += 10;
            v158 |= v173;
            --v171;
          }

          while (v171);
        }

        else
        {
          v158 = 0;
        }
      }

      else if (v157)
      {
        v215 = v14;
        v161 = *(v20 + 6);
        if (BYTE4(v161) == 2)
        {
          outlined copy of DisplayList.Effect(v3, *(v20 + 6), 2);
          v163 = v3;
        }

        else
        {
          v162 = *(v20 + 7);
          if (BYTE4(v161) == 7)
          {
            v174 = v162;
            v214 = v162;
            v163 = *(v3 + 28);
            outlined copy of DisplayList.Item.Value(v3, v161, v174, v156);
            outlined consume of DisplayList.Effect(v3, v161, 7);
          }

          else if (BYTE4(v161) == 18)
          {
            (*(*v3 + 120))(&v226);
            outlined copy of DisplayList.Item.Value(v3, v161, v162, v156);
            outlined consume of DisplayList.Effect(v3, v161, 18);

            v163 = v226;
          }

          else
          {
            v213 = HIDWORD(v161);
            outlined copy of DisplayList.Effect(v3, v161, SBYTE4(v161));

            outlined consume of DisplayList.Effect(v3, v161, SBYTE4(v161));

            v163 = 0;
          }
        }

        v158 = v163 | HIDWORD(v156);
        v14 = v215;
      }

      else
      {
        if (v3 >> 60 != 6 && v3 >> 60 != 11)
        {
LABEL_241:
          if (v47 == v219)
          {
            goto LABEL_348;
          }

          goto LABEL_242;
        }

        v158 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      }

LABEL_269:
      v16 = v158 | v16;
      if (v47 == v219)
      {
LABEL_348:
        v46 = v230;
        v10 = v218;
        goto LABEL_353;
      }

      v155 = *(v17 + 16);
LABEL_242:
      v48 = v47 + 1;
      if (v47 >= v155)
      {
        goto LABEL_387;
      }
    }

    __break(1u);
LABEL_372:
    __break(1u);
LABEL_373:
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v20 + 2) + 1, 1, v20);
    *v3 = v20;
LABEL_105:
    v81 = *(v20 + 2);
    v80 = *(v20 + 3);
    v4 = (v81 + 1);
    if (v81 >= v80 >> 1)
    {
      v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v80 > 1), v81 + 1, 1, v20);
      *v3 = v20;
    }

    *(v20 + 2) = v4;
    v82 = &v20[32 * v81];
    *(v82 + 4) = v6;
    *(v82 + 5) = v7;
    *(v82 + 12) = v47;
    *(v82 + 7) = v17;
    v83 = *v3;
    a2 = v224;
    if ((v15 & 0x60) == 0 && ((v15 & 0x80) == 0 || !*(v83 + 16)) || (v230 = 0, *&v231[8] = 0, *&v231[12] = 0, (v223 = *(v16 + 16)) == 0))
    {
      v16 = 0;
LABEL_274:
      v10 = v218;
      if (!*(v83 + 16))
      {
        __break(1u);
        goto LABEL_375;
      }

      specialized Array._customRemoveLast()(&v226);
      if (v228)
      {
        specialized Array.remove(at:)(*(*v3 + 16) - 1, &v226);
      }

      v175 = v14;
      v176 = v219;
      v177 = 16;
LABEL_329:
      outlined consume of DisplayList.Effect(v175, v176, v177);
      v14 = 0;
      v153 = 0;
      LOBYTE(v17) = 20;
      goto LABEL_342;
    }

    v222 = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_377:
      v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
      if (!*(v16 + 16))
      {
        goto LABEL_378;
      }

LABEL_111:
      v84 = 0;
      LODWORD(v5) = 0;
      v85 = 0;
      v4 = (v16 + 32);
      v86 = 1;
      while (1)
      {
        v17 = v85;
        v85 = v86;
        v20 = &v4[80 * v17];
        closure #1 in ViewGraphTransform.apply(to:)(v20, a2, &v230);
        if (v17 >= *(v16 + 16))
        {
          goto LABEL_360;
        }

        v227 = *(v20 + 1);
        v228 = *(v20 + 2);
        v229[0] = *(v20 + 3);
        *(v229 + 12) = *(v20 + 60);
        v226 = *v20;
        DisplayList.Item.features.getter(&v225);
        v87 = *(v16 + 16);
        if (v17 >= v87)
        {
          goto LABEL_364;
        }

        v15 = v16;
        v84 |= v225;
        v3 = *(v20 + 5);
        v88 = *(v20 + 8);
        v89 = v88 >> 30;
        if (v88 >> 30 > 1)
        {
          if (v89 != 2)
          {
            v16 = v15;
            if (v85 == v223)
            {
              goto LABEL_237;
            }

            goto LABEL_113;
          }

          v91 = *(v3 + 16);
          if (!v91)
          {
            v90 = 0;
LABEL_143:
            v16 = v15;
            goto LABEL_144;
          }

          v16 = v15;
          if (v91 > 7)
          {
            v92 = v91 & 0x7FFFFFFFFFFFFFF8;
            v94 = (v3 + 188);
            v95 = 0uLL;
            v96 = v91 & 0x7FFFFFFFFFFFFFF8;
            v97 = 0uLL;
            do
            {
              v98.i32[0] = *(v94 - 30);
              v98.i32[1] = *(v94 - 20);
              v98.i32[2] = *(v94 - 10);
              v98.i32[3] = *v94;
              v99.i32[0] = v94[10];
              v99.i32[1] = v94[20];
              v99.i32[2] = v94[30];
              v99.i32[3] = v94[40];
              v95 = vorrq_s8(v98, v95);
              v97 = vorrq_s8(v99, v97);
              v94 += 80;
              v96 -= 8;
            }

            while (v96);
            v100 = vorrq_s8(v97, v95);
            *v100.i8 = vorr_s8(*v100.i8, *&vextq_s8(v100, v100, 8uLL));
            v90 = v100.i32[0] | v100.i32[1];
            if (v91 == v92)
            {
              goto LABEL_144;
            }
          }

          else
          {
            v90 = 0;
            v92 = 0;
          }

          v101 = v91 - v92;
          v102 = (v3 + 40 * v92 + 68);
          do
          {
            v103 = *v102;
            v102 += 10;
            v90 |= v103;
            --v101;
          }

          while (v101);
        }

        else
        {
          if (v89)
          {
            v93 = *(v20 + 6);
            if (BYTE4(v93) == 2)
            {
              outlined copy of DisplayList.Effect(*(v20 + 5), *(v20 + 6), 2);
              v17 = v3;
            }

            else
            {
              v20 = *(v20 + 7);
              if (BYTE4(v93) == 7)
              {
                v17 = *(v3 + 28);
                outlined copy of DisplayList.Item.Value(v3, v93, v20, v88);
                outlined consume of DisplayList.Effect(v3, v93, 7);
              }

              else if (BYTE4(v93) == 18)
              {
                (*(*v3 + 120))(&v226);
                outlined copy of DisplayList.Item.Value(v3, v93, v20, v88);
                outlined consume of DisplayList.Effect(v3, v93, 18);

                v17 = v226;
              }

              else
              {
                outlined copy of DisplayList.Effect(v3, v93, SBYTE4(v93));

                outlined consume of DisplayList.Effect(v3, v93, SBYTE4(v93));

                v17 = 0;
              }
            }

            v90 = v17 | HIDWORD(v88);
            a2 = v224;
            goto LABEL_143;
          }

          if (v3 >> 60 == 6)
          {
            v90 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            goto LABEL_143;
          }

          v16 = v15;
          if (v3 >> 60 != 11)
          {
            if (v85 == v223)
            {
              goto LABEL_237;
            }

            goto LABEL_113;
          }

          v90 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
        }

LABEL_144:
        LODWORD(v5) = v90 | v5;
        if (v85 == v223)
        {
LABEL_237:
          *v231 = v16;
          *&v231[12] = v5;
          *&v231[8] = v84;
          v16 = v230;
          v14 = v221;
          v3 = v222;
          v83 = *v222;
          goto LABEL_274;
        }

        v87 = *(v16 + 16);
LABEL_113:
        v86 = v85 + 1;
        if (v85 >= v87)
        {
          goto LABEL_378;
        }
      }
    }

    if (*(v16 + 16))
    {
      goto LABEL_111;
    }

LABEL_378:
    __break(1u);
LABEL_379:
    v16 = specialized _ArrayBuffer._consumeAndCreateNew()(v16);
    if (!*(v16 + 16))
    {
      goto LABEL_380;
    }

LABEL_150:
    LODWORD(v15) = 0;
    v104 = 0;
    v105 = 0;
    v222 = (v16 + 32);
    v106 = 1;
    while (2)
    {
      v17 = v105;
      v105 = v106;
      v20 = &v222[80 * v17];
      closure #1 in ViewGraphTransform.apply(to:)(v20, a2, &v230);
      if (v17 >= *(v16 + 16))
      {
        goto LABEL_361;
      }

      v227 = *(v20 + 1);
      v228 = *(v20 + 2);
      v229[0] = *(v20 + 3);
      *(v229 + 12) = *(v20 + 60);
      v226 = *v20;
      DisplayList.Item.features.getter(&v225);
      v107 = *(v16 + 16);
      if (v17 >= v107)
      {
        goto LABEL_365;
      }

      v5 = v4;
      v108 = v16;
      LODWORD(v15) = v225 | v15;
      v3 = *(v20 + 5);
      v109 = *(v20 + 8);
      v110 = v109 >> 30;
      if (v109 >> 30 > 1)
      {
        if (v110 != 2)
        {
          v16 = v108;
          v4 = v5;
          if (v105 == v223)
          {
            goto LABEL_238;
          }

          goto LABEL_152;
        }

        v112 = *(v3 + 16);
        if (!v112)
        {
          v111 = 0;
          break;
        }

        v16 = v108;
        if (v112 > 7)
        {
          v113 = v112 & 0x7FFFFFFFFFFFFFF8;
          v115 = (v3 + 188);
          v116 = 0uLL;
          v117 = v112 & 0x7FFFFFFFFFFFFFF8;
          v118 = 0uLL;
          v4 = v5;
          do
          {
            v119.i32[0] = *(v115 - 30);
            v119.i32[1] = *(v115 - 20);
            v119.i32[2] = *(v115 - 10);
            v119.i32[3] = *v115;
            v120.i32[0] = v115[10];
            v120.i32[1] = v115[20];
            v120.i32[2] = v115[30];
            v120.i32[3] = v115[40];
            v116 = vorrq_s8(v119, v116);
            v118 = vorrq_s8(v120, v118);
            v115 += 80;
            v117 -= 8;
          }

          while (v117);
          v121 = vorrq_s8(v118, v116);
          *v121.i8 = vorr_s8(*v121.i8, *&vextq_s8(v121, v121, 8uLL));
          v111 = v121.i32[0] | v121.i32[1];
          if (v112 == v113)
          {
            goto LABEL_184;
          }
        }

        else
        {
          v111 = 0;
          v113 = 0;
          v4 = v5;
        }

        v122 = v112 - v113;
        v123 = (v3 + 40 * v113 + 68);
        do
        {
          v124 = *v123;
          v123 += 10;
          v111 |= v124;
          --v122;
        }

        while (v122);
        goto LABEL_184;
      }

      if (v110)
      {
        v114 = *(v20 + 6);
        if (BYTE4(v114) == 2)
        {
          outlined copy of DisplayList.Effect(*(v20 + 5), *(v20 + 6), 2);
          v17 = v3;
        }

        else
        {
          v20 = *(v20 + 7);
          if (BYTE4(v114) == 7)
          {
            v17 = *(v3 + 28);
            outlined copy of DisplayList.Item.Value(v3, v114, v20, v109);
            outlined consume of DisplayList.Effect(v3, v114, 7);
          }

          else if (BYTE4(v114) == 18)
          {
            (*(*v3 + 120))(&v226);
            outlined copy of DisplayList.Item.Value(v3, v114, v20, v109);
            outlined consume of DisplayList.Effect(v3, v114, 18);

            v17 = v226;
          }

          else
          {
            outlined copy of DisplayList.Effect(v3, v114, SBYTE4(v114));

            outlined consume of DisplayList.Effect(v3, v114, SBYTE4(v114));

            v17 = 0;
          }
        }

        v111 = v17 | HIDWORD(v109);
        a2 = v224;
      }

      else
      {
        if (v3 >> 60 != 6)
        {
          v16 = v108;
          if (v3 >> 60 == 11)
          {
            v111 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
            goto LABEL_183;
          }

          v4 = v5;
          if (v105 == v223)
          {
            goto LABEL_238;
          }

LABEL_152:
          v106 = v105 + 1;
          if (v105 >= v107)
          {
            goto LABEL_380;
          }

          continue;
        }

        v111 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
      }

      break;
    }

    v16 = v108;
LABEL_183:
    v4 = v5;
LABEL_184:
    v104 |= v111;
    if (v105 != v223)
    {
      v107 = *(v16 + 16);
      goto LABEL_152;
    }

LABEL_238:
    *v231 = v16;
    *&v231[12] = v104;
    *&v231[8] = v15;
    v16 = v230;
    v14 = v221;
LABEL_282:
    v15 = v217;
    if ((v217 & 0x60) == 0 && ((v217 & 0x80) == 0 || !*(*(a2 + 16) + 16)))
    {
      v10 = v218;
      v203 = v215;
      LODWORD(v5) = v214;
      goto LABEL_341;
    }

    v230 = 0;
    v178 = *(v4 + 2);
    v223 = v178;
    if (v178)
    {
      v222 = v16;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        if (*(v4 + 2))
        {
          goto LABEL_286;
        }

LABEL_385:
        __break(1u);
LABEL_386:
        v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
        if (!*(v17 + 16))
        {
          goto LABEL_387;
        }

        continue;
      }

LABEL_384:
      v4 = specialized _ArrayBuffer._consumeAndCreateNew()(v4);
      if (!*(v4 + 2))
      {
        goto LABEL_385;
      }

LABEL_286:
      v179 = 0;
      LODWORD(v5) = 0;
      v180 = 0;
      v15 = (v4 + 32);
      v181 = 1;
      while (2)
      {
        v17 = v180;
        v180 = v181;
        v20 = (v15 + 80 * v17);
        closure #1 in ViewGraphTransform.apply(to:)(v20, a2, &v230);
        if (v17 >= *(v4 + 2))
        {
          goto LABEL_368;
        }

        v227 = *(v20 + 1);
        v228 = *(v20 + 2);
        v229[0] = *(v20 + 3);
        *(v229 + 12) = *(v20 + 60);
        v226 = *v20;
        DisplayList.Item.features.getter(&v225);
        v182 = *(v4 + 2);
        if (v17 >= v182)
        {
LABEL_369:
          __break(1u);
          goto LABEL_370;
        }

        v179 |= v225;
        v3 = *(v20 + 5);
        v183 = *(v20 + 8);
        v184 = v183 >> 30;
        if (v183 >> 30 > 1)
        {
          if (v184 != 2)
          {
            v14 = v221;
            if (v180 == v223)
            {
              goto LABEL_321;
            }

            goto LABEL_288;
          }

          v186 = *(v3 + 16);
          v14 = v221;
          if (v186)
          {
            if (v186 > 7)
            {
              v187 = v186 & 0x7FFFFFFFFFFFFFF8;
              v190 = (v3 + 188);
              v191 = 0uLL;
              v192 = v186 & 0x7FFFFFFFFFFFFFF8;
              v193 = 0uLL;
              do
              {
                v194.i32[0] = *(v190 - 30);
                v194.i32[1] = *(v190 - 20);
                v194.i32[2] = *(v190 - 10);
                v194.i32[3] = *v190;
                v195.i32[0] = v190[10];
                v195.i32[1] = v190[20];
                v195.i32[2] = v190[30];
                v195.i32[3] = v190[40];
                v191 = vorrq_s8(v194, v191);
                v193 = vorrq_s8(v195, v193);
                v190 += 80;
                v192 -= 8;
              }

              while (v192);
              v196 = vorrq_s8(v193, v191);
              *v196.i8 = vorr_s8(*v196.i8, *&vextq_s8(v196, v196, 8uLL));
              v185 = v196.i32[0] | v196.i32[1];
              if (v186 == v187)
              {
                break;
              }
            }

            else
            {
              v185 = 0;
              v187 = 0;
            }

            v197 = v186 - v187;
            v198 = (v3 + 40 * v187 + 68);
            do
            {
              v199 = *v198;
              v198 += 10;
              v185 |= v199;
              --v197;
            }

            while (v197);
          }

          else
          {
            v185 = 0;
          }
        }

        else
        {
          if (v184)
          {
            v188 = *(v20 + 6);
            if (BYTE4(v188) == 2)
            {
              outlined copy of DisplayList.Effect(*(v20 + 5), *(v20 + 6), 2);
              v17 = v3;
            }

            else
            {
              v189 = *(v20 + 7);
              if (BYTE4(v188) == 7)
              {
                v17 = *(v3 + 28);
                outlined copy of DisplayList.Item.Value(v3, v188, v189, v183);
                outlined consume of DisplayList.Effect(v3, v188, 7);
              }

              else if (BYTE4(v188) == 18)
              {
                (*(*v3 + 120))(&v226);
                outlined copy of DisplayList.Item.Value(v3, v188, v189, v183);
                outlined consume of DisplayList.Effect(v3, v188, 18);

                v17 = v226;
              }

              else
              {
                outlined copy of DisplayList.Effect(v3, v188, SBYTE4(v188));

                outlined consume of DisplayList.Effect(v3, v188, SBYTE4(v188));

                v17 = 0;
              }
            }

            v185 = v17 | HIDWORD(v183);
            a2 = v224;
          }

          else
          {
            if (v3 >> 60 != 6)
            {
              v14 = v221;
              if (v3 >> 60 == 11)
              {
                v185 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
                break;
              }

              if (v180 == v223)
              {
                goto LABEL_321;
              }

LABEL_288:
              v181 = v180 + 1;
              if (v180 >= v182)
              {
                goto LABEL_385;
              }

              continue;
            }

            v185 = *((v3 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
          }

          v14 = v221;
        }

        break;
      }

      LODWORD(v5) = v185 | v5;
      if (v180 == v223)
      {
LABEL_321:
        v178 = v230;
        LOWORD(v15) = v179;
        v16 = v222;
        goto LABEL_338;
      }

      v182 = *(v4 + 2);
      goto LABEL_288;
    }

    break;
  }

  LODWORD(v5) = 0;
  LOWORD(v15) = 0;
LABEL_338:
  if (v178 > v16)
  {
    v16 = v178;
  }

  v10 = v218;
  v203 = v215;
LABEL_341:
  v204 = swift_allocObject();
  *(v204 + 16) = v4;
  *(v204 + 24) = v15;
  *(v204 + 28) = v5;
  *(v204 + 32) = v203;
  LOBYTE(v17) = 7;
  outlined consume of DisplayList.Effect(v14, v219, 7);
  v153 = 0;
  v14 = v204;
LABEL_342:
  v205 = *v231;
  v206 = v153 | (v17 << 32);
  v207 = *&v231[8] | (*&v231[12] << 32) | 0x40000000;
  outlined consume of DisplayList.Item.Value(v220[5], v220[6], v220[7], v220[8]);
  v220[6] = v206;
  v220[7] = v205;
  v220[8] = v207;
  v208 = v220[4];
  if (v16 > v208)
  {
    v208 = v16;
  }

  v220[4] = v208;
  v220[5] = v14;
  v209 = *v10;
  if (v16 > *v10)
  {
    v209 = v16;
  }

  *v10 = v209;
}

uint64_t sub_18D377310()
{

  return swift_deallocObject();
}

uint64_t sub_18D377348()
{

  return swift_deallocObject();
}

void specialized DisplayList.transform(_:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  *(a1 + 8) = 0;
  *(a1 + 12) = 0;
  v3 = *a1;
  v4 = *(*a1 + 16);
  if (v4)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_39;
    }

    while (*(v3 + 2))
    {
      v7 = 0;
      v8 = 0;
      v9 = 0;
      v38 = a2;
      v10 = 1;
      v37 = v4;
      while (1)
      {
        v11 = v9;
        v9 = v10;
        v12 = &v3[80 * v11 + 32];
        closure #1 in ViewGraphTransform.apply(to:)(v12, a2, a3);
        if (v11 >= *(v3 + 2))
        {
          break;
        }

        v13 = *(v12 + 48);
        v40[2] = *(v12 + 32);
        v41[0] = v13;
        *(v41 + 12) = *(v12 + 60);
        v14 = *(v12 + 16);
        v40[0] = *v12;
        v40[1] = v14;
        DisplayList.Item.features.getter(&v39);
        v15 = *(v3 + 2);
        if (v11 >= v15)
        {
          goto LABEL_38;
        }

        v7 |= v39;
        v16 = *(v12 + 40);
        v17 = *(v12 + 64);
        v18 = v17 >> 30;
        if (v17 >> 30 > 1)
        {
          if (v18 != 2)
          {
            goto LABEL_5;
          }

          v20 = *(v16 + 16);
          if (v20)
          {
            if (v20 > 7)
            {
              v21 = v20 & 0x7FFFFFFFFFFFFFF8;
              v26 = (v16 + 188);
              v27 = 0uLL;
              v28 = v20 & 0x7FFFFFFFFFFFFFF8;
              v29 = 0uLL;
              do
              {
                v30.i32[0] = *(v26 - 30);
                v30.i32[1] = *(v26 - 20);
                v30.i32[2] = *(v26 - 10);
                v30.i32[3] = *v26;
                v31.i32[0] = v26[10];
                v31.i32[1] = v26[20];
                v31.i32[2] = v26[30];
                v31.i32[3] = v26[40];
                v27 = vorrq_s8(v30, v27);
                v29 = vorrq_s8(v31, v29);
                v26 += 80;
                v28 -= 8;
              }

              while (v28);
              v32 = vorrq_s8(v29, v27);
              *v32.i8 = vorr_s8(*v32.i8, *&vextq_s8(v32, v32, 8uLL));
              v19 = v32.i32[0] | v32.i32[1];
              if (v20 == v21)
              {
                goto LABEL_33;
              }
            }

            else
            {
              v19 = 0;
              v21 = 0;
            }

            v33 = v20 - v21;
            v34 = (v16 + 40 * v21 + 68);
            do
            {
              v35 = *v34;
              v34 += 10;
              v19 |= v35;
              --v33;
            }

            while (v33);
          }

          else
          {
            v19 = 0;
          }
        }

        else if (v18)
        {
          v22 = a3;
          v23 = *(v12 + 48);
          if (BYTE4(v23) == 2)
          {
            outlined copy of DisplayList.Effect(*(v12 + 40), *(v12 + 48), 2);
            v25 = v16;
          }

          else
          {
            v24 = *(v12 + 56);
            if (BYTE4(v23) == 7)
            {
              v25 = *(v16 + 28);
              outlined copy of DisplayList.Item.Value(v16, v23, v24, v17);
              outlined consume of DisplayList.Effect(v16, v23, 7);
            }

            else if (BYTE4(v23) == 18)
            {
              (*(*v16 + 120))(v40);
              outlined copy of DisplayList.Item.Value(v16, v23, v24, v17);
              outlined consume of DisplayList.Effect(v16, v23, 18);

              v25 = v40[0];
            }

            else
            {
              outlined copy of DisplayList.Effect(v16, v23, SBYTE4(v23));

              outlined consume of DisplayList.Effect(v16, v23, SBYTE4(v23));

              v25 = 0;
            }
          }

          v19 = v25 | HIDWORD(v17);
          a3 = v22;
          v4 = v37;
          a2 = v38;
        }

        else
        {
          if (v16 >> 60 != 6 && v16 >> 60 != 11)
          {
LABEL_5:
            if (v9 == v4)
            {
              goto LABEL_35;
            }

            goto LABEL_6;
          }

          v19 = *((v16 & 0xFFFFFFFFFFFFFFFLL) + 0x1C);
        }

LABEL_33:
        v8 |= v19;
        if (v9 == v4)
        {
LABEL_35:
          *a1 = v3;
          *(a1 + 12) = v8;
          *(a1 + 8) = v7;
          return;
        }

        v15 = *(v3 + 2);
LABEL_6:
        v10 = v9 + 1;
        if (v9 >= v15)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    }

LABEL_40:
    __break(1u);
  }
}

uint64_t initializeWithCopy for LinkDestination.Configuration(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  (*(*(v6 - 8) + 16))(a1, a2, v6);
  *(a1 + *(a3 + 20)) = *(a2 + *(a3 + 20));
  return a1;
}

uint64_t outlined init with take of LinkDestination.Configuration(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LinkDestination.Configuration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined copy of Environment<OpenURLAction>.Content(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, char a6)
{
  if (a6)
  {
    return outlined copy of OpenURLAction.Handler(a1, a2, a3, a4, a5 & 1);
  }

  else
  {
  }
}

uint64_t specialized Color.Resolved.draw(path:style:in:bounds:)(uint64_t a1, uint64_t a2, double *a3, float a4, float a5, float a6, float a7)
{
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  type metadata accessor for ColorBox<Color.OpacityColor>(0, &lazy cache variable for type metadata for ColorBox<ResolvedColorProvider>, lazy protocol witness table accessor for type ResolvedColorProvider and conformance ResolvedColorProvider);
  v16 = swift_allocObject();
  *(v16 + 16) = a4;
  *(v16 + 20) = a5;
  *(v16 + 24) = a6;
  *(v16 + 28) = a7;
  *(v16 + 32) = 2143289344;
  *&v22[0] = v16;
  v23[24] = 1;
  v17 = *(a2 + 16);
  v19[0] = *a2;
  v19[1] = v17;
  v20 = v14;
  v21 = v15;
  GraphicsContext.draw(_:with:style:)(a1, v22, v19, a3);
  v24[2] = v22[2];
  v25[0] = *v23;
  *(v25 + 9) = *&v23[9];
  v24[0] = v22[0];
  v24[1] = v22[1];
  return outlined destroy of GraphicsContext.Shading(v24);
}

unint64_t lazy protocol witness table accessor for type _DisplayList_Identity and conformance _DisplayList_Identity()
{
  result = lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity;
  if (!lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity;
  if (!lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_Identity and conformance _DisplayList_Identity);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RedactionReasons and conformance RedactionReasons()
{
  result = lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons;
  if (!lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons;
  if (!lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons;
  if (!lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons;
  if (!lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RedactionReasons and conformance RedactionReasons);
  }

  return result;
}

uint64_t type metadata completion function for ArchivedViewCore.Metadata()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t one-time initialization function for readerKey()
{
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for CodingUserInfoKey?, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v3, static ArchiveReader.readerKey);
  v4 = __swift_project_value_buffer(v3, static ArchiveReader.readerKey);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for cacheKey()
{
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for CodingUserInfoKey?, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v3, static ArchiveReader.cacheKey);
  v4 = __swift_project_value_buffer(v3, static ArchiveReader.cacheKey);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for namedImagesKey()
{
  type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for CodingUserInfoKey?, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v3, static ArchiveReader.namedImagesKey);
  v4 = __swift_project_value_buffer(v3, static ArchiveReader.namedImagesKey);
  CodingUserInfoKey.init(rawValue:)();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for preferredBundleLanguageKey(uint64_t a1, uint64_t *a2)
{
  type metadata accessor for [ResolvableTextSegmentAttribute.Value](0, &lazy cache variable for type metadata for CodingUserInfoKey?, MEMORY[0x1E69E6D30], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for CodingUserInfoKey();
  __swift_allocate_value_buffer(v6, a2);
  v7 = __swift_project_value_buffer(v6, a2);
  CodingUserInfoKey.init(rawValue:)();
  v8 = *(v6 - 8);
  result = (*(v8 + 48))(v5, 1, v6);
  if (result != 1)
  {
    return (*(v8 + 32))(v7, v5, v6);
  }

  __break(1u);
  return result;
}

uint64_t type metadata completion function for CodableAccessibilityAttachmentStorage.V2()
{
  result = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata completion function for CodableAccessibilityAttachmentStorage.VBase()
{
  type metadata accessor for LinkDestination.Configuration?(319);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

unint64_t lazy protocol witness table accessor for type ContainerRelativeShape and conformance ContainerRelativeShape()
{
  result = lazy protocol witness table cache variable for type ContainerRelativeShape and conformance ContainerRelativeShape;
  if (!lazy protocol witness table cache variable for type ContainerRelativeShape and conformance ContainerRelativeShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerRelativeShape and conformance ContainerRelativeShape);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ContainerRelativeShape and conformance ContainerRelativeShape;
  if (!lazy protocol witness table cache variable for type ContainerRelativeShape and conformance ContainerRelativeShape)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ContainerRelativeShape and conformance ContainerRelativeShape);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for ContainerRelativeShape(uint64_t a1)
{
  result = lazy protocol witness table accessor for type ContainerRelativeShape and conformance ContainerRelativeShape();
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type ContainerRelativeShape and conformance ContainerRelativeShape();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type ViewBodyAccessor<ContainerRelativeShape> and conformance ViewBodyAccessor<A>()
{
  result = lazy protocol witness table cache variable for type ViewBodyAccessor<ContainerRelativeShape> and conformance ViewBodyAccessor<A>;
  if (!lazy protocol witness table cache variable for type ViewBodyAccessor<ContainerRelativeShape> and conformance ViewBodyAccessor<A>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<ContainerRelativeShape>, &type metadata for ContainerRelativeShape, &protocol witness table for ContainerRelativeShape, type metadata accessor for ViewBodyAccessor);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ViewBodyAccessor<ContainerRelativeShape> and conformance ViewBodyAccessor<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EnvironmentPropertyKey<FontDefinitionKey> and conformance EnvironmentPropertyKey<A>()
{
  result = lazy protocol witness table cache variable for type EnvironmentPropertyKey<FontDefinitionKey> and conformance EnvironmentPropertyKey<A>;
  if (!lazy protocol witness table cache variable for type EnvironmentPropertyKey<FontDefinitionKey> and conformance EnvironmentPropertyKey<A>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<FontDefinitionKey>, &type metadata for FontDefinitionKey, &protocol witness table for FontDefinitionKey, type metadata accessor for EnvironmentPropertyKey);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EnvironmentPropertyKey<FontDefinitionKey> and conformance EnvironmentPropertyKey<A>);
  }

  return result;
}

void type metadata completion function for ReferenceDateModifier()
{
  type metadata accessor for TimeZone?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata completion function for AccessibilityNodeAttachment.Storage()
{
  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>();
  if (v0 <= 0x3F)
  {
    swift_initEnumMetadataMultiPayload();
  }
}

uint64_t type metadata completion function for CodableAccessibilityAttachmentStorage.V3()
{
  result = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityValueStorage and conformance CodableAccessibilityValueStorage()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityValueStorage and conformance CodableAccessibilityValueStorage;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityValueStorage and conformance CodableAccessibilityValueStorage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityValueStorage and conformance CodableAccessibilityValueStorage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityValueStorage and conformance CodableAccessibilityValueStorage;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityValueStorage and conformance CodableAccessibilityValueStorage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityValueStorage and conformance CodableAccessibilityValueStorage);
  }

  return result;
}

uint64_t type metadata completion function for AccessibilityNodeAttachment()
{
  result = type metadata accessor for AccessibilityNodeAttachment.Storage(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void type metadata completion function for CodableAccessibilityAttachmentStorage()
{
  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>();
  if (v0 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

void type metadata accessor for _ShapeView<Path, ForegroundStyle>()
{
  if (!lazy cache variable for type metadata for _ShapeView<Path, ForegroundStyle>)
  {
    lazy protocol witness table accessor for type Path and conformance Path();
    v0 = type metadata accessor for _ShapeView();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ShapeView<Path, ForegroundStyle>);
    }
  }
}

uint64_t closure #2 in static _MaskAlignmentEffect._makeView(modifier:inputs:body:)(uint64_t a1)
{
  v5[2] = type metadata accessor for _MaskAlignmentEffect();
  v2 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1, _s14AttributeGraph13PointerOffsetV2ofyACyxq_Gq_zFZAESPyq_GXEfU_TA_4, v5, &type metadata for Alignment, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v3);
  return v5[5];
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Path@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

uint64_t closure #1 in makeMask #1 <A>(inputs:) in static _MaskAlignmentEffect._makeView(modifier:inputs:body:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for _MaskAlignmentEffect();
  v5 = *(v4 + 36);
  v9[2] = v4;
  v9[3] = a2;
  v6 = type metadata accessor for PointerOffset();
  _ss17withUnsafePointer2to_q0_xz_q0_SPyxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lF(a1 + v5, closure #1 in static PointerOffset.of(_:)partial apply, v9, a2, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v7);
  return v9[5];
}

uint64_t protocol witness for static View._makeView(view:inputs:) in conformance Rectangle@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 48);
  v7[2] = *(a2 + 32);
  v7[3] = v4;
  v7[4] = *(a2 + 64);
  v8 = *(a2 + 80);
  v5 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v5;
  return specialized static View.makeView(view:inputs:)(v3, v7, a3);
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA9RectangleV_AA15ForegroundStyleVTt2B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) != 0 || (result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6), (result))
  {
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    v10 = *(a2 + 16);
    v20[2] = *(a2 + 32);
    v20[3] = v8;
    v11 = *(a2 + 36);
    v20[4] = v9;
    v21 = *(a2 + 80);
    v20[0] = *a2;
    v20[1] = v10;
    LOBYTE(v16) = 0;
    swift_beginAccess();
    v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v20, &v16, 0x100000000);
    swift_endAccess();
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA9RectangleVAA010ForegroundS0VG_Tt5B5(a1, a2, v12, 0, &v17);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v13 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_13;
      }
    }

    else if (static Semantics.forced < v13)
    {
      goto LABEL_13;
    }

    if ((v11 & 2) != 0)
    {
      v16 = a1;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<_ShapeView<Rectangle, ForegroundStyle>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<_ShapeView<Rectangle, ForegroundStyle>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<_ShapeView<Rectangle, ForegroundStyle>>);
      result = Attribute.init<A>(body:value:flags:update:)();
      v14 = v18 | 0x80;
LABEL_14:
      *a3 = v17;
      *(a3 + 8) = v14;
      *(a3 + 12) = result;
      return result;
    }

LABEL_13:
    v14 = v18;
    result = v19;
    goto LABEL_14;
  }

  *a3 = MEMORY[0x1E69E7CC0];
  v15 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v15;
  return result;
}

uint64_t _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA9RectangleVAA010ForegroundS0VG_Tt5B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v65 = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E69E7CC0];
  v56 = MEMORY[0x1E69E7CC0];
  LODWORD(v57) = 0;
  HIDWORD(v57) = *MEMORY[0x1E698D3F8];
  v52 = *MEMORY[0x1E698D3F8];
  v55 = *(a2 + 48);
  if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v55) & 1) == 0)
  {
    goto LABEL_7;
  }

  v9 = ++lastIdentity;
  v10 = *a2;
  v11 = *(a2 + 16);
  if ((*(a2 + 37) & 1) == 0)
  {
LABEL_3:
    OffsetAttribute2 = AGGraphCreateOffsetAttribute2();
    v13 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v13;
    v63 = *(a2 + 64);
    v64 = *(a2 + 80);
    v14 = *(a2 + 16);
    v59 = *a2;
    v60 = v14;
    swift_beginAccess();
    v15 = CachedEnvironment.animatedSize(for:)(&v59);
    v16 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v16;
    v63 = *(a2 + 64);
    v64 = *(a2 + 80);
    v17 = *(a2 + 16);
    v59 = *a2;
    v60 = v17;
    v18 = CachedEnvironment.animatedPosition(for:)(&v59);
    swift_endAccess();
    v19 = *(v11 + 16);
    BloomFilter.init(hashValue:)(&type metadata for DisplayList.Options);
    v20 = _s7SwiftUI5find133_D64CE6C88E7413721C59A34C0C940F2CLL_3key6filters9UnmanagedVyAA12TypedElementACLLCyxGGSgAGyAA12PropertyListV0Q0CGSg_xmAA11BloomFilterVtAA0R3KeyRzlFAA07DisplayS0V7OptionsV_Tt0B5(v10, v59);
    v51 = a5;
    if (v20)
    {
      v21 = *(v20 + 72);
    }

    else
    {
      v21 = 0;
    }

    v47 = v21;
    v48 = *(a2 + 60);
    v49 = *(a2 + 68);
    v50 = *(a2 + 76);
    *&v59 = a4;
    *(&v59 + 1) = __PAIR64__(a1, v9);
    *&v60 = __PAIR64__(OffsetAttribute2, a3);
    *(&v60 + 1) = __PAIR64__(v18, v15);
    *&v61 = __PAIR64__(v48, v49);
    *(&v61 + 1) = __PAIR64__(v50, v19);
    LOBYTE(v62) = v21;
    WORD1(v62) = 0;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledDisplayList<_ShapeView<Rectangle, ForegroundStyle>> and conformance ShapeStyledDisplayList<A>, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, ForegroundStyle>>);
    v22 = v19;

    v23 = Attribute.init<A>(body:value:flags:update:)();
    *&v59 = a4;
    *(&v59 + 1) = __PAIR64__(a1, v9);
    *&v60 = __PAIR64__(OffsetAttribute2, a3);
    *(&v60 + 1) = __PAIR64__(v18, v15);
    *&v61 = __PAIR64__(v48, v49);
    *(&v61 + 1) = __PAIR64__(v50, v22);
    LOBYTE(v62) = v47;
    WORD1(v62) = 0;
    outlined destroy of ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>>(&v59, type metadata accessor for ShapeStyledDisplayList<_ShapeView<Rectangle, ForegroundStyle>>);
    LOBYTE(v58[0]) = 0;
    PreferencesOutputs.subscript.setter(v23, &type metadata for DisplayList.Key, &protocol witness table for DisplayList.Key);
    a5 = v51;
    v8 = MEMORY[0x1E69E7CC0];
LABEL_7:
    v24 = *(a2 + 48);
    v25 = *(a2 + 64);
    v26 = *(a2 + 16);
    v61 = *(a2 + 32);
    v62 = v24;
    v63 = v25;
    v64 = *(a2 + 80);
    v59 = *a2;
    v60 = v26;
    swift_beginAccess();
    v27 = CachedEnvironment.animatedSize(for:)(&v59);
    v28 = *(a2 + 48);
    v61 = *(a2 + 32);
    v62 = v28;
    v63 = *(a2 + 64);
    v64 = *(a2 + 80);
    v29 = *(a2 + 16);
    v59 = *a2;
    v60 = v29;
    v30 = CachedEnvironment.animatedPosition(for:)(&v59);
    swift_endAccess();
    v31 = *(a2 + 60);
    type metadata accessor for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle.AsymmetricalInset, ForegroundStyle>>>(0, &lazy cache variable for type metadata for LeafViewResponder<ShapeStyledResponderData<_ShapeView<Rectangle, ForegroundStyle>>>, type metadata accessor for ShapeStyledResponderData<_ShapeView<Rectangle, ForegroundStyle>>, &protocol witness table for ShapeStyledResponderData<A>, type metadata accessor for LeafViewResponder);
    v32 = swift_allocObject();
    *(v32 + 40) = 0u;
    *(v32 + 56) = 0u;
    *(v32 + 72) = 0u;
    *(v32 + 88) = 0u;
    *(v32 + 104) = 0u;
    *(v32 + 120) = v8;
    *(v32 + 24) = 0;
    *(v32 + 128) = 0u;
    *(v32 + 144) = 0u;
    swift_unknownObjectWeakInit();
    swift_weakInit();
    specialized static GraphHost.currentHost.getter();
    type metadata accessor for ViewGraph();
    v33 = swift_dynamicCastClassUnconditional();
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v34 = *(v33 + 208);

    swift_beginAccess();
    *(v32 + 24) = v34;
    swift_unknownObjectWeakAssign();
    swift_unknownObjectRelease();
    v35 = v55;
    *&v59 = v55;
    v36 = PreferenceKeys._index(of:)(&type metadata for ViewRespondersKey);
    v37 = *(v55 + 16);
    if (v36 != v37)
    {
      if (v36 >= v37)
      {
        __break(1u);
        goto LABEL_20;
      }

      if (*(v55 + 16 * v36 + 32) == &type metadata for ViewRespondersKey)
      {
        *&v59 = __PAIR64__(a3, a1);
        *(&v59 + 1) = __PAIR64__(v30, v27);
        LODWORD(v60) = v31;
        *(&v60 + 1) = v32;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for [ViewResponder](0, &lazy cache variable for type metadata for [ViewResponder], type metadata accessor for ViewResponder, MEMORY[0x1E69E62F8]);
        type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Rectangle, ForegroundStyle>>(0);
        lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ShapeStyledResponderFilter<_ShapeView<Rectangle, ForegroundStyle>> and conformance ShapeStyledResponderFilter<A>, type metadata accessor for ShapeStyledResponderFilter<_ShapeView<Rectangle, ForegroundStyle>>);
        v35 = v55;
        v38 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v59) = 0;
        PreferencesOutputs.subscript.setter(v38, &type metadata for ViewRespondersKey, &protocol witness table for ViewRespondersKey);
      }
    }

    if ((_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA20ContentShapePathDataV_TtB5Tf4dn_n(v35) & 1) == 0)
    {
      goto LABEL_16;
    }

    v39 = v35;
    v40 = *(a2 + 64);
    v41 = AGGraphCreateOffsetAttribute2();
    *&v59 = __PAIR64__(v40, v31);
    *(&v59 + 1) = __PAIR64__(a1, v41);
    LODWORD(v60) = v52;
    protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
    type metadata accessor for ContentResponderPathDataRule<_ShapeView<Rectangle, ForegroundStyle>>(0);
    lazy protocol witness table accessor for type ShapeStyledDisplayList<_ShapeView<Rectangle, LinearGradient>> and conformance ShapeStyledDisplayList<A>(&lazy protocol witness table cache variable for type ContentResponderPathDataRule<_ShapeView<Rectangle, ForegroundStyle>> and conformance ContentResponderPathDataRule<A>, type metadata accessor for ContentResponderPathDataRule<_ShapeView<Rectangle, ForegroundStyle>>);
    v42 = Attribute.init<A>(body:value:flags:update:)();
    *&v59 = v39;
    v43 = PreferenceKeys._index(of:)(&type metadata for ContentShapePathData);
    if (v43 == v37)
    {
      goto LABEL_16;
    }

    if (v43 < v37)
    {
      if (*(v55 + 16 * v43 + 32) == &type metadata for ContentShapePathData)
      {
        LODWORD(v59) = v42;
        protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ContentShapePathData?, &type metadata for ContentShapePathData, MEMORY[0x1E69E6720]);
        type metadata accessor for ContentShapePathData?(0, &lazy cache variable for type metadata for ToOptional<ContentShapePathData>, &type metadata for ContentShapePathData, type metadata accessor for ToOptional);
        lazy protocol witness table accessor for type ToOptional<ContentShapePathData> and conformance ToOptional<A>();
        v44 = Attribute.init<A>(body:value:flags:update:)();
        LOBYTE(v59) = 0;
        PreferencesOutputs.subscript.setter(v44, &type metadata for ContentShapePathData, &protocol witness table for ContentShapePathData);
      }

LABEL_16:

      *a5 = v56;
      a5[1] = v57;
      return result;
    }

LABEL_20:
    __break(1u);
  }

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA08_DisplayD20_StableIdentityScopeV_Tt2G5(*a2, &v59);
  result = AGWeakAttributeGetAttribute();
  if (result != v52)
  {
    v58[0] = v9;
    v46 = Attribute<A>.subscript.modify();
    _DisplayList_StableIdentityScope.pushIdentity(_:)(v58);
    v46(&v59, 0);
    goto LABEL_3;
  }

  __break(1u);
  return result;
}

uint64_t Path.mix(with:by:)@<X0>(uint64_t a1@<X8>)
{
  Path.retainRBPath()();
  Path.retainRBPath()();
  v2 = RBPathCopyInterpolatedPath();
  v4 = v3;
  if (RBPathIsNull(v2, v3))
  {
    v5 = 0;
    v6 = -1;
  }

  else
  {
    type metadata accessor for Path.PathBox();
    v5 = swift_allocObject();
    *(v5 + 40) = 0u;
    *(v5 + 56) = 0u;
    *(v5 + 72) = 0u;
    *(v5 + 88) = 0u;
    *(v5 + 104) = 0u;
    *(v5 + 16) = 1;
    v6 = 5;
    *(v5 + 24) = v2;
    *(v5 + 32) = v4;
  }

  RBPathRelease();
  result = RBPathRelease();
  *a1 = v5;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = v6;
  return result;
}

uint64_t static Font.default.getter()
{
  type metadata accessor for FontBox<Font.DefaultProvider>();

  return swift_allocObject();
}

uint64_t protocol witness for FontProvider.resolveDescriptor(in:) in conformance Font.DefaultProvider(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  return (*(**(a1 + 32) + 96))(v3, *(a1 + 32));
}

uint64_t destroy for Font.Resolved()
{
}

unint64_t lazy protocol witness table accessor for type RBImageRendererProperty and conformance RBImageRendererProperty()
{
  result = lazy protocol witness table cache variable for type RBImageRendererProperty and conformance RBImageRendererProperty;
  if (!lazy protocol witness table cache variable for type RBImageRendererProperty and conformance RBImageRendererProperty)
  {
    type metadata accessor for RBImageRendererProperty(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RBImageRendererProperty and conformance RBImageRendererProperty);
  }

  return result;
}

uint64_t GraphicsContext.addSDFGradientFilter(_:)(uint64_t result)
{
  if (result)
  {
    if (result == 1)
    {
      v1 = 0x3F00000000000000;
      v2 = 3204448256;
    }

    else
    {
      v1 = 0;
      v2 = 3212836864;
    }

    if (one-time initialization token for system != -1)
    {
      swift_once();
    }

    v3 = static ShaderLibrary.system;
    type metadata accessor for _ContiguousArrayStorage<Shader.Argument>();
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_18DDA6EB0;
    *(v4 + 32) = v2 | v1;
    *(v4 + 40) = 0;
    *(v4 + 48) = 0;
    *(v4 + 52) = 1;
    *&v6 = v3;
    *(&v6 + 1) = 0xD000000000000010;
    *&v7 = 0x800000018DD79660;
    *(&v7 + 1) = v4;
    v8 = 0u;
    v9 = 0u;
    *&v10 = 0;
    v11 = 3221225472;
    v5 = v3;
    GraphicsContext.addFilter(_:options:)(&v6, 0);
    v12[3] = v9;
    v12[4] = v10;
    v13 = v11;
    v12[0] = v6;
    v12[1] = v7;
    v12[2] = v8;
    return outlined destroy of GraphicsContext.Filter(v12);
  }

  return result;
}

void type metadata accessor for _ContiguousArrayStorage<Shader.Argument>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<Shader.Argument>)
  {
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<Shader.Argument>);
    }
  }
}

uint64_t outlined copy of Shader.Argument.Storage(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 5u)
  {
    if (a4 != 4)
    {
      if (a4 != 5)
      {
        return a1;
      }
    }
  }

  switch(a4)
  {
    case 6u:

    case 8u:

    case 9u:
      return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t outlined consume of Shader.Argument.Storage(uint64_t a1, unint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 <= 5u)
  {
    if (a4 != 4)
    {
      if (a4 != 5)
      {
        return a1;
      }
    }
  }

  switch(a4)
  {
    case 6u:

    case 8u:

    case 9u:
      return outlined consume of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t initializeWithCopy for _ResolvedKeyframes.Track(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  v4 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v4;

  return a1;
}

uint64_t destroy for _ResolvedKeyframes.Track()
{
}

uint64_t implicit closure #1 in _ResolvedKeyframes.duration.getter()
{

  swift_getAtKeyPath();
}

uint64_t KeyframeTimeline.value(time:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, uint64_t, double)@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  (*(*(*(a1 + 16) - 8) + 16))(a3, v4, *(a1 + 16));
  v8 = type metadata accessor for _ResolvedKeyframes();

  a2(a3, v8, a4);
}

uint64_t _ResolvedKeyframes.update(value:time:)(uint64_t a1, double a2)
{
  v5 = *v2;
  v6 = type metadata accessor for _ResolvedKeyframes.Track();

  if (MEMORY[0x193ABF2C0](v7, v6))
  {
    v8 = 0;
    v9 = v5 + 64;
    while (1)
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      result = Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (!IsNativeType)
      {
        break;
      }

      v12 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_10;
      }

      v13 = *(v9 - 24);

      v13(a1, a2);

      ++v8;
      v9 += 40;
      if (v12 == MEMORY[0x193ABF2C0](v5, v6))
      {
        goto LABEL_6;
      }
    }

    result = _ArrayBuffer._getElementSlowPath(_:)();
    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
LABEL_6:
  }

  return result;
}

uint64_t specialized FluidSpringAnimation.animate<A>(value:time:context:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, float64_t a3@<D0>, float64_t a4@<D1>, float64_t a5@<D2>, float64_t a6@<D3>, double a7@<D4>, double a8@<D5>, double a9@<D6>, double a10@<D7>)
{
  _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVyAHy12CoreGraphics7CGFloatVAKGALG_AA06SpringD033_73E5E3E568519775ECB92F029EBA0DDALLVyAMGTt0B5(*a1, &v89);
  v16 = a8;
  if (a10 > 0.0)
  {
    v16 = a8;
    if (*(&v96 + 1) != 0.0)
    {
      v17 = (a7 - *&v96) / a10;
      if (v17 <= 1.0)
      {
        v18 = (a7 - *&v96) / a10;
      }

      else
      {
        v18 = 1.0;
      }

      v19 = v17 < 0.0;
      v20 = 0.0;
      if (!v19)
      {
        v20 = v18;
      }

      v16 = *(&v96 + 1) * (1.0 - v20 * v20 * (3.0 - (v20 + v20))) + a8;
    }
  }

  if (v16 <= 0.0)
  {
    v21 = INFINITY;
  }

  else
  {
    v21 = 6.28318531 / v16 * (6.28318531 / v16);
  }

  if (v21 > 45000.0)
  {
    v21 = 45000.0;
  }

  if (v16 <= a7 - *(&v95 + 1))
  {
    *(a1 + 17) = 1;
  }

  v22 = *&v95;
  if (a7 - *&v95 > 1.0)
  {
    v22 = a7 + -0.0166666667;
    *&v95 = a7 + -0.0166666667;
  }

  v23 = v89;
  v24 = v90;
  if (v22 >= a7)
  {
    v80 = v91;
    v81 = v92;
    v39 = v93.f64[1];
    v40.f64[0] = a3;
    v40.f64[1] = a4;
    v38 = v94.f64[1];
    v78 = v94.f64[0];
    v79 = v93.f64[0];
    v41.f64[0] = a5;
    v41.f64[1] = a6;
    v70 = vsubq_f64(v40, v89);
    v71 = vsubq_f64(v41, v90);
    v76 = v90;
    v77 = v89;
  }

  else
  {
    v25 = sqrt(v21) * -2.0 * a9;
    v26 = v93;
    v27 = v94;
    v28.f64[0] = a5;
    v28.f64[1] = a6;
    v29.f64[0] = a3;
    v29.f64[1] = a4;
    v30 = vdupq_n_s64(0x3F5B4E81B4E81B4FuLL);
    v31 = v91;
    v32 = v92;
    v33 = vdupq_n_s64(0x3F6B4E81B4E81B4FuLL);
    do
    {
      v34 = vaddq_f64(vmulq_f64(v26, v30), v31);
      v35 = vaddq_f64(vmulq_f64(v27, v30), v32);
      v23 = vaddq_f64(v23, vmulq_f64(v34, v33));
      v24 = vaddq_f64(v24, vmulq_f64(v35, v33));
      v36 = vsubq_f64(v28, v24);
      v37 = vsubq_f64(v29, v23);
      v27 = vaddq_f64(vmulq_n_f64(v35, v25), vmulq_n_f64(v36, v21));
      v26 = vaddq_f64(vmulq_n_f64(v34, v25), vmulq_n_f64(v37, v21));
      v32 = vaddq_f64(v35, vmulq_f64(v27, v30));
      v31 = vaddq_f64(v34, vmulq_f64(v26, v30));
      v22 = v22 + 0.00333333333;
    }

    while (v22 < a7);
    v70 = v37;
    v71 = v36;
    v91 = v31;
    v92 = v32;
    v38 = v27.f64[1];
    v39 = v26.f64[1];
    v93 = v26;
    v94 = v27;
    *&v95 = v22;
    v89 = v23;
    v90 = v24;
    v76 = v24;
    v77 = v23;
    v78 = v27.f64[0];
    v79 = v26.f64[0];
    v80 = v31;
    v81 = v32;
  }

  type metadata accessor for SpringState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(0, &lazy cache variable for type metadata for SpringState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>, type metadata accessor for SpringState);
  v43 = v42;
  *&v85.f64[1] = v42;
  v44 = swift_allocObject();
  *&v84.f64[0] = v44;
  *(v44 + 16) = v77;
  *(v44 + 32) = v76;
  *(v44 + 48) = v80;
  *(v44 + 64) = v81;
  *(v44 + 80) = v79;
  *(v44 + 88) = v39;
  *(v44 + 96) = v78;
  *(v44 + 104) = v38;
  v45 = v96;
  *(v44 + 112) = v95;
  *(v44 + 128) = v45;
  specialized Dictionary.subscript.setter(&v84, v43);
  v46 = *(a1 + 16);
  result = _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVyAHy12CoreGraphics7CGFloatVAKGALG_AA0c19FinishingDefinitionF033_2DFC163B2FD0FA7B91FDE1127AAEDE04LLVyAMGTt0B5(*a1);
  if (result)
  {
    v49 = result;
    v50 = v48;
    v51 = 6.28318531 / a8 * (6.28318531 / a8);
    v52 = sqrt(v51);
    v53 = (v52 + v52) * a9 / v51;
    v68 = vmulq_n_f64(v80, v53);
    v69 = vmulq_n_f64(v81, v53);
    if ((v46 & 1) != 0 || (WeakValue = AGGraphGetWeakValue()) == 0)
    {
      EnvironmentValues.init()(&v83);
      v55 = v83;
    }

    else
    {
      v67 = *WeakValue;

      v55 = v67;
    }

    v84 = v70;
    v85 = v71;
    v86 = v68;
    v87 = v69;
    v88 = v55;
    v56 = (*(v50 + 24))(&v84, v49, v50);
    v82[2] = v86;
    v82[3] = v87;
    v82[4] = v88;
    v82[0] = v84;
    v82[1] = v85;
    result = outlined destroy of AnimationSettlingContext<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(v82);
    if (v56)
    {
      goto LABEL_37;
    }
  }

  v57 = vmuld_n_f64(v80.f64[0], v80.f64[0]) + vmuld_lane_f64(v80.f64[1], v80, 1) + vmuld_n_f64(v81.f64[0], v81.f64[0]) + vmuld_lane_f64(v81.f64[1], v81, 1);
  if (v57 <= v79 * v79 + v39 * v39 + v78 * v78 + v38 * v38)
  {
    v57 = v79 * v79 + v39 * v39 + v78 * v78 + v38 * v38;
  }

  if (v57 <= 0.0036)
  {
    v61.f64[0] = a3;
    v61.f64[1] = a5;
    v62 = vdupq_n_s64(0x3F847AE147AE147BuLL);
    v63 = vmulq_f64(v61, v62);
    v64.f64[0] = a4;
    v64.f64[1] = a6;
    v65 = vmulq_f64(v64, v62);
    v66 = vaddvq_f64(vaddq_f64(vmulq_f64(v63, v63), vmulq_f64(v65, v65)));
    if (v66 > 0.0)
    {
      v19 = v66 < vmuld_n_f64(v70.f64[0], v70.f64[0]) + vmuld_lane_f64(v70.f64[1], v70, 1) + vmuld_n_f64(v71.f64[0], v71.f64[0]) + vmuld_lane_f64(v71.f64[1], v71, 1);
      v60 = v76;
      v59 = v77;
      if (v19)
      {
        v58 = 0;
        goto LABEL_38;
      }
    }

LABEL_37:
    v59 = 0uLL;
    v58 = 1;
    v60 = 0uLL;
    goto LABEL_38;
  }

  v58 = 0;
  v60 = v76;
  v59 = v77;
LABEL_38:
  *a2 = v59;
  *(a2 + 16) = v60;
  *(a2 + 32) = v58;
  return result;
}

uint64_t KeyframeTimeline.value(progress:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  (*(*(*(a1 + 16) - 8) + 16))(a2, v3, *(a1 + 16));

  type metadata accessor for _ResolvedKeyframes();
  v6 = _ResolvedKeyframes.duration.getter();
  _ResolvedKeyframes.update(value:time:)(a2, v6 * a3);
}

void GraphicsFilter.init(from:)(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v217 = *MEMORY[0x1E69E9840];
  __asm { FMOV            V0.4S, #1.0 }

  v210 = _Q0;
  LODWORD(v211) = 2143289344;
  _s7SwiftUI14GraphicsFilterOWOi6_(&v210);
  v207 = v214;
  v208 = v215;
  v209[0] = v216[0];
  *(v209 + 12) = *(v216 + 12);
  v203 = v210;
  v204 = v211;
  v205 = v212;
  v206 = v213;
  v11 = a1[1];
  v12 = a1[2];
  if (v11 >= v12)
  {
    goto LABEL_229;
  }

  v13 = 0;
  while (1)
  {
    v16 = a1[3];
    if (!v16)
    {
      break;
    }

    v17 = a1[4];
    if (v11 >= v17)
    {
      if (v17 < v11)
      {
        goto LABEL_230;
      }

      a1[3] = 0;
      break;
    }

LABEL_11:
    switch(v16 >> 3)
    {
      case 1uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v18 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
        }

        v19 = *(v18 + 2);
        v20 = *(v18 + 3);
        v21 = v19 + 1;
        if (v19 >= v20 >> 1)
        {
          v173 = v19 + 1;
          v150 = v18;
          v151 = *(v18 + 2);
          v152 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v19 + 1, 1, v150);
          v19 = v151;
          v21 = v173;
          v18 = v152;
        }

        *(v18 + 2) = v21;
        *&v18[8 * v19 + 32] = v12;
        a1[5] = v18;
        v22 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_231;
        }

        if (v22 < 0)
        {
          goto LABEL_242;
        }

        v23 = a1[1] + v22;
        if (v12 < v23)
        {
          goto LABEL_230;
        }

        a1[2] = v23;
        BlurStyle.init(from:)(a1, __dst);
        v24 = a1[5];
        if (!*(v24 + 2))
        {
          goto LABEL_249;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v25 = *(v24 + 2);
          if (!v25)
          {
            goto LABEL_253;
          }
        }

        else
        {
          v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
          v25 = *(v24 + 2);
          if (!v25)
          {
            goto LABEL_253;
          }
        }

        v26 = v25 - 1;
        v27 = *&v24[8 * v26 + 32];
        *(v24 + 2) = v26;
        outlined destroy of GraphicsFilter(&v203);
        a1[5] = v24;
        a1[2] = v27;
        *v192 = *__dst;
        *&v192[8] = *&__dst[8];
        _s7SwiftUI14GraphicsFilterOWOi_(v192);
        goto LABEL_200;
      case 2uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v79 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v79 + 2) + 1, 1, v79);
        }

        v80 = *(v79 + 2);
        v81 = *(v79 + 3);
        v82 = v80 + 1;
        if (v80 >= v81 >> 1)
        {
          v174 = v80 + 1;
          v153 = v79;
          v154 = *(v79 + 2);
          v155 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v80 + 1, 1, v153);
          v80 = v154;
          v82 = v174;
          v79 = v155;
        }

        *(v79 + 2) = v82;
        *&v79[8 * v80 + 32] = v12;
        a1[5] = v79;
        v83 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_231;
        }

        if (v83 < 0)
        {
          goto LABEL_241;
        }

        v84 = a1[1] + v83;
        if (v12 < v84)
        {
          goto LABEL_230;
        }

        a1[2] = v84;
        ResolvedShadowStyle.init(from:)(a1, __dst);
        v85 = a1[5];
        if (!*(v85 + 2))
        {
          goto LABEL_245;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v86 = *(v85 + 2);
          if (!v86)
          {
            goto LABEL_256;
          }
        }

        else
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew()(v85);
          v86 = *(v85 + 2);
          if (!v86)
          {
            goto LABEL_256;
          }
        }

        v87 = v86 - 1;
        v88 = *&v85[8 * v87 + 32];
        *(v85 + 2) = v87;
        outlined destroy of GraphicsFilter(&v203);
        a1[5] = v85;
        a1[2] = v88;
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
        *v193 = *v189;
        *&v193[13] = *&v189[13];
        _s7SwiftUI14GraphicsFilterOWOi3_(v192);
        goto LABEL_200;
      case 3uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v34 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v34 + 2) + 1, 1, v34);
        }

        v35 = *(v34 + 2);
        v36 = *(v34 + 3);
        v37 = v35 + 1;
        if (v35 >= v36 >> 1)
        {
          v169 = v35 + 1;
          v138 = v34;
          v139 = *(v34 + 2);
          v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v35 + 1, 1, v138);
          v35 = v139;
          v37 = v169;
          v34 = v140;
        }

        *(v34 + 2) = v37;
        *&v34[8 * v35 + 32] = v12;
        a1[5] = v34;
        v38 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_231;
        }

        if (v38 < 0)
        {
          goto LABEL_239;
        }

        v39 = a1[1] + v38;
        if (v12 < v39)
        {
          goto LABEL_230;
        }

        a1[2] = v39;
        *&__dst[16] = 0uLL;
        *__dst = 0x3FF0000000000000uLL;
        *v189 = 0x3FF0000000000000uLL;
        *&v189[16] = 0uLL;
        *v190 = 0x3FF0000000000000;
        closure #1 in ProjectionTransform.init(from:)(__dst, a1, &v183);
        v180 = *v189;
        v181 = *&v189[16];
        v182 = *v190;
        v178 = *__dst;
        v179 = *&__dst[16];
        v40 = a1[5];
        if (!*(v40 + 2))
        {
          goto LABEL_252;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v41 = *(v40 + 2);
          if (!v41)
          {
            goto LABEL_255;
          }
        }

        else
        {
          v40 = specialized _ArrayBuffer._consumeAndCreateNew()(v40);
          v41 = *(v40 + 2);
          if (!v41)
          {
            goto LABEL_255;
          }
        }

        v42 = v41 - 1;
        v43 = *&v40[8 * v42 + 32];
        *(v40 + 2) = v42;
        outlined destroy of GraphicsFilter(&v203);
        a1[5] = v40;
        a1[2] = v43;
        *v193 = v180;
        *&v193[16] = v181;
        *v194 = v182;
        *v192 = v178;
        *&v192[16] = v179;
        _s7SwiftUI14GraphicsFilterOWOi4_(v192);
        goto LABEL_200;
      case 4uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        specialized ProtobufDecoder.decodeMessage<A>()(__dst);
        if (v3)
        {
          goto LABEL_231;
        }

        outlined destroy of GraphicsFilter(&v203);
        *v193 = *v189;
        *&v193[16] = *&v189[16];
        *v194 = *v190;
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
        v194[16] = 0;
        _s7SwiftUI14GraphicsFilterOWOi5_(v192);
        goto LABEL_200;
      case 5uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v44 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v44 + 2) + 1, 1, v44);
        }

        v45 = *(v44 + 2);
        v46 = *(v44 + 3);
        v47 = v45 + 1;
        if (v45 >= v46 >> 1)
        {
          v170 = v45 + 1;
          v141 = v44;
          v142 = *(v44 + 2);
          v143 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v45 + 1, 1, v141);
          v45 = v142;
          v47 = v170;
          v44 = v143;
        }

        *(v44 + 2) = v47;
        *&v44[8 * v45 + 32] = v12;
        a1[5] = v44;
        v48 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_231;
        }

        if (v48 < 0)
        {
          goto LABEL_237;
        }

        v49 = a1[1] + v48;
        if (v12 < v49)
        {
          goto LABEL_230;
        }

        a1[2] = v49;
        specialized Color.ResolvedHDR.init(from:)(a1, &v184);
        v50 = a1[5];
        if (!*(v50 + 2))
        {
          goto LABEL_251;
        }

        v168 = v184;
        v51 = v185;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v52 = *(v50 + 2);
          if (!v52)
          {
            goto LABEL_259;
          }
        }

        else
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew()(v50);
          v52 = *(v50 + 2);
          if (!v52)
          {
            goto LABEL_259;
          }
        }

        v53 = v52 - 1;
        v54 = *&v50[8 * v53 + 32];
        *(v50 + 2) = v53;
        outlined destroy of GraphicsFilter(&v203);
        a1[5] = v50;
        a1[2] = v54;
        *v192 = v168;
        *&v192[16] = v51;
        _s7SwiftUI14GraphicsFilterOWOi6_(v192);
        goto LABEL_200;
      case 6uLL:
        *__dst = v16;
        v73 = ProtobufDecoder.doubleField(_:)(__dst);
        v3 = v74;
        if (v74)
        {
          goto LABEL_231;
        }

        v75 = v73;
        outlined destroy of GraphicsFilter(&v203);
        *v192 = v75;
        _s7SwiftUI14GraphicsFilterOWOi8_(v192);
        goto LABEL_200;
      case 7uLL:
        *__dst = v16;
        v90 = ProtobufDecoder.doubleField(_:)(__dst);
        v3 = v91;
        if (v91)
        {
          goto LABEL_231;
        }

        v92 = v90;
        outlined destroy of GraphicsFilter(&v203);
        *v192 = v92;
        _s7SwiftUI14GraphicsFilterOWOi9_(v192);
        goto LABEL_200;
      case 8uLL:
        *__dst = v16;
        v93 = ProtobufDecoder.doubleField(_:)(__dst);
        v3 = v94;
        if (v94)
        {
          goto LABEL_231;
        }

        v95 = v93;
        outlined destroy of GraphicsFilter(&v203);
        *v192 = v95;
        _s7SwiftUI14GraphicsFilterOWOi10_(v192);
        goto LABEL_200;
      case 9uLL:
        *__dst = v16;
        v111 = ProtobufDecoder.doubleField(_:)(__dst);
        v3 = v112;
        if (v112)
        {
          goto LABEL_231;
        }

        v113 = v111;
        outlined destroy of GraphicsFilter(&v203);
        *v192 = v113;
        _s7SwiftUI14GraphicsFilterOWOi11_(v192);
        goto LABEL_200;
      case 0xAuLL:
        v107 = v16;
        outlined destroy of GraphicsFilter(&v203);
        _s7SwiftUI14GraphicsFilterOWOi23_(v192);
        v32 = v107 & 7;
        if (v32 <= 1)
        {
          goto LABEL_145;
        }

        if (v32 != 2)
        {
          goto LABEL_190;
        }

        v33 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          return;
        }

        if ((v33 & 0x8000000000000000) == 0)
        {
          goto LABEL_197;
        }

        goto LABEL_261;
      case 0xBuLL:
        v31 = v16;
        outlined destroy of GraphicsFilter(&v203);
        _s7SwiftUI14GraphicsFilterOWOi24_(v192);
        v32 = v31 & 7;
        if (v32 > 1)
        {
          if (v32 != 2)
          {
            goto LABEL_190;
          }

          v33 = ProtobufDecoder.decodeVarint()();
          if (v3)
          {
            return;
          }

          if (v33 < 0)
          {
            goto LABEL_262;
          }

          goto LABEL_197;
        }

LABEL_145:
        if (!v32)
        {
          goto LABEL_142;
        }

        goto LABEL_146;
      case 0xCuLL:
        *__dst = v16;
        v76 = ProtobufDecoder.doubleField(_:)(__dst);
        v3 = v77;
        if (v77)
        {
          goto LABEL_231;
        }

        v78 = v76;
        outlined destroy of GraphicsFilter(&v203);
        *v192 = v78;
        _s7SwiftUI14GraphicsFilterOWOi12_(v192);
        goto LABEL_200;
      case 0xDuLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v55 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v55 + 2) + 1, 1, v55);
        }

        v56 = *(v55 + 2);
        v57 = *(v55 + 3);
        v58 = v56 + 1;
        if (v56 >= v57 >> 1)
        {
          v171 = v56 + 1;
          v144 = v55;
          v145 = *(v55 + 2);
          v146 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v56 + 1, 1, v144);
          v56 = v145;
          v58 = v171;
          v55 = v146;
        }

        *(v55 + 2) = v58;
        *&v55[8 * v56 + 32] = v12;
        a1[5] = v55;
        v59 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_231;
        }

        if (v59 < 0)
        {
          goto LABEL_240;
        }

        v60 = a1[1] + v59;
        if (v12 < v60)
        {
          goto LABEL_230;
        }

        a1[2] = v60;
        GraphicsFilter.ColorMonochrome.init(from:)(a1, __dst);
        v61 = a1[5];
        if (!*(v61 + 2))
        {
          goto LABEL_246;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v62 = *(v61 + 2);
          if (!v62)
          {
            goto LABEL_254;
          }
        }

        else
        {
          v61 = specialized _ArrayBuffer._consumeAndCreateNew()(v61);
          v62 = *(v61 + 2);
          if (!v62)
          {
            goto LABEL_254;
          }
        }

        v63 = v62 - 1;
        v64 = *&v61[8 * v63 + 32];
        *(v61 + 2) = v63;
        outlined destroy of GraphicsFilter(&v203);
        a1[5] = v61;
        a1[2] = v64;
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
        *&v192[24] = *&__dst[24];
        _s7SwiftUI14GraphicsFilterOWOi13_(v192);
        goto LABEL_200;
      case 0xEuLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        specialized ProtobufDecoder.decodeMessage<A>()(__dst);
        if (v3)
        {
          goto LABEL_231;
        }

        outlined destroy of GraphicsFilter(&v203);
        *v193 = *v189;
        *&v193[16] = *&v189[16];
        *v194 = *v190;
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
        *&v194[16] = 2139095040;
        v194[20] = 0;
        goto LABEL_42;
      case 0xFuLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v96 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v96 + 2) + 1, 1, v96);
        }

        v97 = *(v96 + 2);
        v98 = *(v96 + 3);
        v99 = v97 + 1;
        if (v97 >= v98 >> 1)
        {
          v175 = v97 + 1;
          v156 = v96;
          v157 = *(v96 + 2);
          v158 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v98 > 1), v97 + 1, 1, v156);
          v97 = v157;
          v99 = v175;
          v96 = v158;
        }

        *(v96 + 2) = v99;
        *&v96[8 * v97 + 32] = v12;
        a1[5] = v96;
        v100 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_231;
        }

        if (v100 < 0)
        {
          goto LABEL_235;
        }

        v101 = a1[1] + v100;
        if (v12 < v101)
        {
          goto LABEL_230;
        }

        a1[2] = v101;
        GraphicsFilter.LuminanceCurve.init(from:)(a1, __dst);
        v102 = a1[5];
        if (!*(v102 + 2))
        {
          goto LABEL_247;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v103 = *(v102 + 2);
          if (!v103)
          {
            goto LABEL_257;
          }
        }

        else
        {
          v102 = specialized _ArrayBuffer._consumeAndCreateNew()(v102);
          v103 = *(v102 + 2);
          if (!v103)
          {
            goto LABEL_257;
          }
        }

        v104 = v103 - 1;
        v105 = *&v102[8 * v104 + 32];
        *(v102 + 2) = v104;
        outlined destroy of GraphicsFilter(&v203);
        a1[5] = v102;
        a1[2] = v105;
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
        _s7SwiftUI14GraphicsFilterOWOi15_(v192);
        goto LABEL_200;
      case 0x10uLL:
        v106 = v16;
        outlined destroy of GraphicsFilter(&v203);
        _s7SwiftUI14GraphicsFilterOWOi22_(v192);
        v32 = v106 & 7;
        if (v32 > 1)
        {
          if (v32 == 2)
          {
            v33 = ProtobufDecoder.decodeVarint()();
            if (v3)
            {
              return;
            }

            if (v33 < 0)
            {
              goto LABEL_263;
            }

LABEL_197:
            v108 = a1[1] + v33;
          }

          else
          {
LABEL_190:
            if (v32 != 5)
            {
              goto LABEL_233;
            }

            v108 = a1[1] + 4;
          }
        }

        else
        {
          if ((v106 & 7) == 0)
          {
LABEL_142:
            ProtobufDecoder.decodeVarint()();
            if (v3)
            {
              return;
            }

            goto LABEL_200;
          }

LABEL_146:
          if (v32 != 1)
          {
            goto LABEL_233;
          }

          v108 = a1[1] + 8;
        }

        if (v12 < v108)
        {
LABEL_233:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
          return;
        }

        a1[1] = v108;
        goto LABEL_200;
      case 0x11uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        ProtobufDecoder.beginMessage()();
        if (v3)
        {
          goto LABEL_231;
        }

        GraphicsFilter.ShaderFilter.init(from:)(a1, __dst);
        v3 = 0;
        if (!*(a1[5] + 16))
        {
          goto LABEL_243;
        }

        v124 = specialized Array._customRemoveLast()();
        if (!v124)
        {
          v124 = specialized Array.remove(at:)(*(a1[5] + 16) - 1);
        }

        v125 = v124;
        outlined destroy of GraphicsFilter(&v203);
        a1[2] = v125;
        *v192 = *__dst;
        *&v192[8] = *&__dst[8];
        *&v192[24] = *&__dst[24];
        *v193 = *v189;
        _s7SwiftUI14GraphicsFilterOWOi17_(v192);
        goto LABEL_200;
      case 0x12uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v114 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v114 + 2) + 1, 1, v114);
        }

        v115 = *(v114 + 2);
        v116 = *(v114 + 3);
        v117 = v115 + 1;
        if (v115 >= v116 >> 1)
        {
          v176 = v115 + 1;
          v159 = v114;
          v160 = *(v114 + 2);
          v161 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v116 > 1), v115 + 1, 1, v159);
          v115 = v160;
          v117 = v176;
          v114 = v161;
        }

        *(v114 + 2) = v117;
        *&v114[8 * v115 + 32] = v12;
        a1[5] = v114;
        v118 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_231;
        }

        if (v118 < 0)
        {
          goto LABEL_236;
        }

        v119 = a1[1] + v118;
        if (v12 < v119)
        {
          goto LABEL_230;
        }

        a1[2] = v119;
        VariableBlurStyle.init(from:)(a1, v192);
        v120 = a1[5];
        if (!*(v120 + 2))
        {
          goto LABEL_244;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v121 = *(v120 + 2);
          if (!v121)
          {
            goto LABEL_258;
          }
        }

        else
        {
          v120 = specialized _ArrayBuffer._consumeAndCreateNew()(v120);
          v121 = *(v120 + 2);
          if (!v121)
          {
            goto LABEL_258;
          }
        }

        v122 = v121 - 1;
        v123 = *&v120[8 * v122 + 32];
        *(v120 + 2) = v122;
        outlined destroy of GraphicsFilter(&v203);
        a1[5] = v120;
        a1[2] = v123;
        *v190 = *v194;
        *&v190[16] = *&v194[16];
        *v191 = *v195;
        *&v191[12] = *&v195[12];
        *__dst = *v192;
        *&__dst[16] = *&v192[16];
        *v189 = *v193;
        *&v189[16] = *&v193[16];
        _s7SwiftUI14GraphicsFilterOWOi0_(__dst);
        v200 = *v190;
        v201 = *&v190[16];
        v202[0] = *v191;
        *(v202 + 12) = *&v191[12];
        v196 = *__dst;
        v197 = *&__dst[16];
        v198 = *v189;
        v199 = *&v189[16];
        if (v13)
        {
          goto LABEL_201;
        }

        goto LABEL_3;
      case 0x13uLL:
        if ((v16 & 7) == 0)
        {
          goto LABEL_30;
        }

        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v28 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_231;
        }

        if (v28 < 0)
        {
          goto LABEL_260;
        }

        v29 = a1[1] + v28;
        if (v12 < v29)
        {
          goto LABEL_230;
        }

        a1[3] = 152;
        a1[4] = v29;
LABEL_30:
        v30 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_231;
        }

        v200 = v207;
        v201 = v208;
        v202[0] = v209[0];
        *(v202 + 12) = *(v209 + 12);
        v196 = v203;
        v197 = v204;
        v198 = v205;
        v199 = v206;
        if (!v30)
        {
          goto LABEL_3;
        }

        goto LABEL_201;
      case 0x14uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v65 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v65 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v65 + 2) + 1, 1, v65);
        }

        v66 = *(v65 + 2);
        v67 = *(v65 + 3);
        v68 = v66 + 1;
        if (v66 >= v67 >> 1)
        {
          v172 = v66 + 1;
          v147 = v65;
          v148 = *(v65 + 2);
          v149 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v67 > 1), v66 + 1, 1, v147);
          v66 = v148;
          v68 = v172;
          v65 = v149;
        }

        *(v65 + 2) = v68;
        *&v65[8 * v66 + 32] = v12;
        a1[5] = v65;
        v69 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_231;
        }

        if (v69 < 0)
        {
          __break(1u);
LABEL_235:
          __break(1u);
LABEL_236:
          __break(1u);
LABEL_237:
          __break(1u);
LABEL_238:
          __break(1u);
LABEL_239:
          __break(1u);
LABEL_240:
          __break(1u);
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          __break(1u);
LABEL_244:
          __break(1u);
LABEL_245:
          __break(1u);
LABEL_246:
          __break(1u);
LABEL_247:
          __break(1u);
LABEL_248:
          __break(1u);
LABEL_249:
          __break(1u);
LABEL_250:
          __break(1u);
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
LABEL_253:
          __break(1u);
LABEL_254:
          __break(1u);
LABEL_255:
          __break(1u);
LABEL_256:
          __break(1u);
LABEL_257:
          __break(1u);
LABEL_258:
          __break(1u);
LABEL_259:
          __break(1u);
LABEL_260:
          __break(1u);
LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
          __break(1u);
          __break(1u);
        }

        v70 = a1[1] + v69;
        if (v12 < v70)
        {
          goto LABEL_230;
        }

        a1[2] = v70;
        GraphicsFilter.ColorCurves.init(from:)(a1, __dst);
        if (!*(a1[5] + 16))
        {
          goto LABEL_250;
        }

        v71 = specialized Array._customRemoveLast()();
        if (!v71)
        {
          v71 = specialized Array.remove(at:)(*(a1[5] + 16) - 1);
        }

        v72 = v71;
        outlined destroy of GraphicsFilter(&v203);
        a1[2] = v72;
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
        *v193 = *v189;
        *&v193[16] = *&v189[16];
        _s7SwiftUI14GraphicsFilterOWOi16_(v192);
        goto LABEL_200;
      case 0x15uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        v126 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v126 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v126 + 2) + 1, 1, v126);
        }

        v127 = *(v126 + 2);
        v128 = *(v126 + 3);
        v129 = v127 + 1;
        if (v127 >= v128 >> 1)
        {
          v177 = v127 + 1;
          v162 = v126;
          v163 = *(v126 + 2);
          v164 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v128 > 1), v127 + 1, 1, v162);
          v127 = v163;
          v129 = v177;
          v126 = v164;
        }

        *(v126 + 2) = v129;
        *&v126[8 * v127 + 32] = v12;
        a1[5] = v126;
        v130 = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_231;
        }

        if (v130 < 0)
        {
          goto LABEL_238;
        }

        v131 = a1[1] + v130;
        if (v12 < v131)
        {
          goto LABEL_230;
        }

        a1[2] = v131;
        GraphicsFilter.AlphaThreshold.init(from:)(a1, __dst);
        v132 = a1[5];
        if (!*(v132 + 2))
        {
          goto LABEL_248;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v133 = *(v132 + 2);
          if (!v133)
          {
            goto LABEL_228;
          }

          goto LABEL_184;
        }

        v132 = specialized _ArrayBuffer._consumeAndCreateNew()(v132);
        v133 = *(v132 + 2);
        if (!v133)
        {
LABEL_228:
          __break(1u);
LABEL_229:
          a1[3] = 0;
          v165 = v208;
          a2[4] = v207;
          a2[5] = v165;
          a2[6] = v209[0];
          *(a2 + 108) = *(v209 + 12);
          v166 = v204;
          *a2 = v203;
          a2[1] = v166;
          v167 = v206;
          a2[2] = v205;
          a2[3] = v167;
          return;
        }

LABEL_184:
        v134 = v133 - 1;
        v135 = *&v132[8 * v134 + 32];
        *(v132 + 2) = v134;
        outlined destroy of GraphicsFilter(&v203);
        a1[5] = v132;
        a1[2] = v135;
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
        _s7SwiftUI14GraphicsFilterOWOi18_(v192);
LABEL_200:
        v200 = *v194;
        v201 = *&v194[16];
        v202[0] = *v195;
        *(v202 + 12) = *&v195[12];
        v196 = *v192;
        v197 = *&v192[16];
        v198 = *v193;
        v199 = *&v193[16];
        if (v13)
        {
LABEL_201:
          *v194 = v200;
          *&v194[16] = v201;
          *v195 = v202[0];
          *&v195[12] = *(v202 + 12);
          *v192 = v196;
          *&v192[16] = v197;
          *v193 = v198;
          *&v193[16] = v199;
          if (_s7SwiftUI14GraphicsFilterOWOg(v192) == 6)
          {
            v136 = _s7SwiftUI14GraphicsFilterOWOj6_(v192);
            memmove(__dst, v136, 0x50uLL);
            v13 = 1;
            v190[16] = 1;
            _s7SwiftUI14GraphicsFilterOWOi5_(__dst);
            v207 = *v190;
            v208 = *&v190[16];
            v209[0] = *v191;
            *(v209 + 12) = *&v191[12];
            v203 = *__dst;
            v204 = *&__dst[16];
            v14 = *v189;
            v15 = *&v189[16];
          }

          else
          {
            v207 = v200;
            v208 = v201;
            v209[0] = v202[0];
            *(v209 + 12) = *(v202 + 12);
            v203 = v196;
            v204 = v197;
            v14 = v198;
            v15 = v199;
            v13 = 1;
          }
        }

        else
        {
LABEL_3:
          v13 = 0;
          v207 = v200;
          v208 = v201;
          v209[0] = v202[0];
          *(v209 + 12) = *(v202 + 12);
          v203 = v196;
          v204 = v197;
          v14 = v198;
          v15 = v199;
        }

        v205 = v14;
        v206 = v15;
        v11 = a1[1];
        v12 = a1[2];
        if (v11 >= v12)
        {
          goto LABEL_229;
        }

        break;
      case 0x16uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        specialized ProtobufDecoder.decodeMessage<A>()(__dst);
        if (v3)
        {
          goto LABEL_231;
        }

        outlined destroy of GraphicsFilter(&v203);
        *v194 = *v190;
        *&v194[16] = *&v190[16];
        *v195 = *v191;
        *&v195[16] = *&v191[16];
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
        *v193 = *v189;
        *&v193[16] = *&v189[16];
        _s7SwiftUI14GraphicsFilterOWOi1_(v192);
        goto LABEL_200;
      case 0x17uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        specialized ProtobufDecoder.decodeMessage<A>()(__dst);
        if (v3)
        {
          goto LABEL_231;
        }

        outlined destroy of GraphicsFilter(&v203);
        *v194 = *v190;
        *&v194[16] = *&v190[16];
        *v195 = *v191;
        *&v195[16] = *&v191[16];
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
        *v193 = *v189;
        *&v193[16] = *&v189[16];
        _s7SwiftUI14GraphicsFilterOWOi2_(v192);
        goto LABEL_200;
      case 0x18uLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        specialized ProtobufDecoder.decodeMessage<A>()(__dst);
        if (v3)
        {
          goto LABEL_231;
        }

        outlined destroy of GraphicsFilter(&v203);
        *v192 = *__dst;
        *&v192[8] = *&__dst[8];
        _s7SwiftUI14GraphicsFilterOWOi19_(v192);
        goto LABEL_200;
      case 0x1AuLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        specialized ProtobufDecoder.decodeMessage<A>()(&v186);
        if (v3)
        {
          goto LABEL_231;
        }

        v89 = v187;
        outlined destroy of GraphicsFilter(&v203);
        *v192 = v186;
        *&v192[16] = v89;
        _s7SwiftUI14GraphicsFilterOWOi7_(v192);
        goto LABEL_200;
      case 0x1BuLL:
        if ((v16 & 7) != 2)
        {
          goto LABEL_230;
        }

        specialized ProtobufDecoder.decodeMessage<A>()(__dst);
        if (v3)
        {
          goto LABEL_231;
        }

        outlined destroy of GraphicsFilter(&v203);
        *v193 = *v189;
        *&v193[16] = *&v189[16];
        *v194 = *v190;
        *&v194[13] = *&v190[13];
        *v192 = *__dst;
        *&v192[16] = *&__dst[16];
LABEL_42:
        _s7SwiftUI14GraphicsFilterOWOi14_(v192);
        goto LABEL_200;
      default:
        v109 = v16 & 7;
        if (v109 > 1)
        {
          if (v109 == 2)
          {
            v137 = ProtobufDecoder.decodeVarint()();
            if (v3)
            {
              goto LABEL_231;
            }

            if (v137 < 0)
            {
              goto LABEL_264;
            }

            v110 = a1[1] + v137;
          }

          else
          {
            if (v109 != 5)
            {
              goto LABEL_230;
            }

            v110 = a1[1] + 4;
          }
        }

        else
        {
          if ((v16 & 7) == 0)
          {
            ProtobufDecoder.decodeVarint()();
            if (v3)
            {
              goto LABEL_231;
            }

            goto LABEL_211;
          }

          if (v109 != 1)
          {
            goto LABEL_230;
          }

          v110 = a1[1] + 8;
        }

        if (v12 < v110)
        {
          goto LABEL_230;
        }

        a1[1] = v110;
LABEL_211:
        v200 = v207;
        v201 = v208;
        v202[0] = v209[0];
        *(v202 + 12) = *(v209 + 12);
        v196 = v203;
        v197 = v204;
        v198 = v205;
        v199 = v206;
        if (v13)
        {
          goto LABEL_201;
        }

        goto LABEL_3;
    }
  }

  v16 = ProtobufDecoder.decodeVarint()();
  if (v3)
  {
    goto LABEL_231;
  }

  if (v16 >= 8)
  {
    goto LABEL_11;
  }

LABEL_230:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
LABEL_231:
  outlined destroy of GraphicsFilter(&v203);
}

uint64_t LinkDestination.init(configuration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = swift_getKeyPath();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 31) = 0;
  *(a2 + 40) = swift_getKeyPath();
  v4 = type metadata accessor for LinkDestination(0);
  *(a2 + 56) = 0;
  *(a2 + 64) = 0;
  *(a2 + 48) = 0;
  *(a2 + 71) = 0;
  v5 = a2 + *(v4 + 24);

  return outlined init with take of LinkDestination.Configuration(a1, v5);
}

uint64_t initializeWithCopy for LinkDestination(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = *(a2 + 34);
  v11 = *(a2 + 32);
  outlined copy of Environment<OpenURLAction>.Content(*a2, v7, v8, v9, v11, v10);
  *a1 = v6;
  *(a1 + 8) = v7;
  *(a1 + 16) = v8;
  *(a1 + 24) = v9;
  *(a1 + 32) = v11;
  *(a1 + 34) = v10;
  v12 = *(a2 + 40);
  v13 = *(a2 + 48);
  v14 = *(a2 + 56);
  v15 = *(a2 + 64);
  v16 = *(a2 + 74);
  v17 = *(a2 + 72);
  outlined copy of Environment<OpenURLAction>.Content(v12, v13, v14, v15, v17, v16);
  *(a1 + 40) = v12;
  *(a1 + 48) = v13;
  *(a1 + 56) = v14;
  *(a1 + 64) = v15;
  *(a1 + 72) = v17;
  *(a1 + 74) = v16;
  v18 = *(a3 + 24);
  v19 = a1 + v18;
  v20 = a2 + v18;
  v21 = type metadata accessor for URL();
  (*(*(v21 - 8) + 16))(v19, v20, v21);
  v22 = type metadata accessor for LinkDestination.Configuration(0);
  *(v19 + *(v22 + 20)) = *(v20 + *(v22 + 20));
  return a1;
}

uint64_t protocol witness for StronglyHashable.hash(into:) in conformance Bool(CC_SHA1_CTX *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  data = *v1;
  return CC_SHA1_Update(a1, &data, 1u);
}

uint64_t specialized Array._customRemoveLast()@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      v7 = v3 + 32 * v5;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      *a1 = *v7;
      *(a1 + 16) = v8;
      *(a1 + 24) = v9;
      *(v3 + 16) = v6;
      *v1 = v3;
      *(a1 + 32) = 0;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v3 + 20 * v5;
      v7 = *(v6 + 28);
      *a1 = *(v6 + 12);
      *(a1 + 16) = v7;
      *(v3 + 16) = v5 - 1;
      *v1 = v3;
      *(a1 + 20) = 0;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v5 = *(v3 + 16);
    if (v5)
    {
LABEL_3:
      v6 = v5 - 1;
      v7 = v3 + 48 * v5;
      v8 = *v7;
      v9 = *(v7 + 24);
      *a1 = *(v7 - 16);
      *(a1 + 16) = v8;
      *(a1 + 24) = *(v7 + 8);
      *(a1 + 40) = v9;
      *(v3 + 16) = v6;
      *v1 = v3;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
    v5 = *(result + 16);
    if (v5)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

void RBFill.setImage(_:destRect:in:)(__int128 *a1, int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v12 = a1[5];
  v41 = a1[4];
  v42[0] = v12;
  *(v42 + 12) = *(a1 + 92);
  v13 = a1[1];
  v37 = *a1;
  v38 = v13;
  v14 = a1[3];
  v39 = a1[2];
  v40 = v14;
  v15 = v37;
  if (BYTE8(v37) > 3u)
  {
    if (BYTE8(v37) == 4)
    {
      v34 = *(v37 + 32);
      if (a2 != 2)
      {
        RBColorFromLinear();
      }

      [v6 setColor_];
      v30 = sel_setHeadroom_;
      v31 = v6;
      LODWORD(v26) = v34;

      goto LABEL_20;
    }

    if (BYTE8(v37) == 255)
    {
LABEL_16:
      v26 = 0.0;
      v27 = 0.0;
      v28 = 0.0;
      v29 = 0.0;
      if (a2 != 2)
      {
        RBColorFromLinear();
      }

      v30 = sel_setColor_;
      v31 = v6;

LABEL_20:
      [v31 v30];
      return;
    }
  }

  else
  {
    if (!BYTE8(v37))
    {
      outlined init with copy of GraphicsImage(&v37, v35);
      outlined init with copy of GraphicsImage(&v37, v35);
      goto LABEL_22;
    }

    if (BYTE8(v37) == 1)
    {
      IOSurface = RBImageMakeIOSurface();
      closure #1 in RBFill.setImage(_:destRect:in:)(IOSurface, v17, v6, &v37, a2, a3, a4, a5, a6);
      return;
    }
  }

  v18 = a1[5];
  v35[4] = a1[4];
  v36[0] = v18;
  *(v36 + 12) = *(a1 + 92);
  v19 = a1[1];
  v35[0] = *a1;
  v35[1] = v19;
  v20 = a1[3];
  v21 = 0.0;
  v35[2] = a1[2];
  v35[3] = v20;
  v22 = 0.0;
  if (*&v38 != 0.0)
  {
    v23 = *(&v38 + 1);
    if (BYTE8(v39) <= 3u)
    {
      v24 = *&v39;
    }

    else
    {
      v24 = *(&v38 + 1);
    }

    if (BYTE8(v39) > 3u)
    {
      v23 = *&v39;
    }

    v21 = 1.0 / *&v38 * v23;
    v22 = 1.0 / *&v38 * v24;
  }

  v25.value = GraphicsImage.render(at:prefersMask:)(__PAIR128__(*&v22, *&v21), 0).value;
  if (!v25.value)
  {
    goto LABEL_16;
  }

  v15 = v25.value;
LABEL_22:
  CGImage = RBImageMakeCGImage();
  closure #1 in RBFill.setImage(_:destRect:in:)(CGImage, v33, v6, &v37, a2, a3, a4, a5, a6);
}

id closure #1 in RBFill.setImage(_:destRect:in:)(unsigned int a1, uint64_t a2, void *a3, uint64_t a4, int a5, CGFloat a6, CGFloat a7, CGFloat a8, CGFloat a9)
{
  if (*(a4 + 64))
  {
    v17 = 0;
    v19 = *MEMORY[0x1E69C7148];
    v18 = *(MEMORY[0x1E69C7148] + 4);
    v20 = *(MEMORY[0x1E69C7148] + 8);
    v21 = *(MEMORY[0x1E69C7148] + 12);
  }

  else
  {
    v19 = *(a4 + 44);
    v18 = *(a4 + 48);
    v20 = *(a4 + 52);
    v21 = *(a4 + 56);
    if (a5 != 2)
    {
      RBColorFromLinear();
      v19 = v22;
      v18 = v23;
      v20 = v24;
      v21 = v25;
    }

    v17 = 1;
  }

  v26 = *(a4 + 104);
  if (v26 == 2)
  {
    v81 = 0u;
    v84 = 0u;
    LOBYTE(v26) = 1;
  }

  else
  {
    v81 = *(a4 + 72);
    v84 = *(a4 + 88);
  }

  v27 = *(a4 + 80);
  v91 = *(a4 + 64);
  v92[0] = v27;
  *(v92 + 12) = *(a4 + 92);
  v28 = *(a4 + 16);
  *&t1.a = *a4;
  *&t1.c = v28;
  v29 = *(a4 + 48);
  *&t1.tx = *(a4 + 32);
  v90 = v29;
  v30 = GraphicsImage.bitmapOrientation.getter();
  if (vmaxv_u16(vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqzq_f64(v81), vceqzq_f64(v84))))))
  {
    v31 = *(a4 + 16);
    v32 = 0.0;
    v33 = 0.0;
    if (v31 != 0.0)
    {
      v34 = *(a4 + 24);
      if (*(a4 + 40) <= 3u)
      {
        v35 = *(a4 + 32);
      }

      else
      {
        v35 = *(a4 + 24);
      }

      if (*(a4 + 40) > 3u)
      {
        v34 = *(a4 + 32);
      }

      v36 = 1.0 / v31;
      v32 = v36 * v34;
      v33 = v36 * v35;
    }

    v75 = v21;
    v76 = v18;
    v73 = 1.0 / v32;
    v74 = a9;
    v72 = 1.0 / v33;
    RBImageSimpleTransform();
    tx = t1.tx;
    ty = t1.ty;
    v77 = *&t1.a;
    v78 = *&t1.c;
    if (v30 > 3u)
    {
      v39 = a8;
      v40 = a6;
      v42 = xmmword_18DDAA020;
      if (v30 <= 5u)
      {
        v41 = a7;
        if (v30 == 4)
        {
          v43 = xmmword_18DDBA6A0;
        }

        else
        {
          v43 = xmmword_18DDAB500;
        }

        goto LABEL_41;
      }

      if (v30 == 6)
      {
        v43 = xmmword_18DDAB500;
      }

      else
      {
        v43 = xmmword_18DDBA6A0;
      }
    }

    else
    {
      v39 = a8;
      if (v30 <= 1u)
      {
        v40 = a6;
        v41 = a7;
        if (!v30)
        {
LABEL_42:
          v93.origin.x = v40;
          v93.origin.y = v41;
          v93.size.width = v39;
          v93.size.height = v74;
          v55 = v73 * CGRectGetWidth(v93);
          v94.origin.x = v40;
          v94.origin.y = v41;
          v94.size.width = v39;
          v94.size.height = v74;
          Height = CGRectGetHeight(v94);
          v57 = dword_18DDD7E00[*(a4 + 106)];
          *&t1.a = v77;
          *&t1.c = v78;
          t1.tx = tx;
          t1.ty = ty;
          return [a3 set9PartRBImage:a1 transform:a2 destinationRect:&t1 capInsets:(v26 & 1) == 0 repeat:v57 interpolation:v17 tintColor:0.0 flags:{0.0, v55, v72 * Height, v72 * v81.f64[0], vmuld_lane_f64(v73, v81, 1), v72 * v84.f64[0], vmuld_lane_f64(v73, v84, 1), __PAIR64__(v76, v19), __PAIR64__(v75, v20)}];
        }

        v42 = xmmword_18DDAB500;
        v43 = xmmword_18DDBA6B0;
LABEL_41:
        *&t1.a = v43;
        *&t1.c = v42;
        __asm { FMOV            V0.2D, #0.5 }

        *&t1.tx = _Q0;
        CGAffineTransformTranslate(&t2, &t1, -0.5, -0.5);
        t1 = t2;
        *&t2.a = v77;
        *&t2.c = v78;
        t2.tx = tx;
        t2.ty = ty;
        CGAffineTransformConcat(&v87, &t1, &t2);
        v77 = *&v87.a;
        v78 = *&v87.c;
        tx = v87.tx;
        ty = v87.ty;
        goto LABEL_42;
      }

      v42 = xmmword_18DDAB500;
      v40 = a6;
      if (v30 == 2)
      {
        v43 = xmmword_18DDBA6B0;
      }

      else
      {
        v43 = xmmword_18DDAA020;
      }
    }

    v41 = a7;
    v42 = vnegq_f64(v42);
    goto LABEL_41;
  }

  if (v26)
  {
    RBImageSimpleTransform();
    v45 = *&t1.a;
    v46 = *&t1.c;
    v47 = *&t1.tx;
    if (v30 > 3u)
    {
      v82 = *&t1.c;
      v85 = *&t1.a;
      v79 = *&t1.tx;
      v48 = xmmword_18DDAA020;
      if (v30 <= 5u)
      {
        if (v30 == 4)
        {
          v49 = xmmword_18DDBA6A0;
        }

        else
        {
          v49 = xmmword_18DDAB500;
        }

        goto LABEL_62;
      }

      if (v30 == 6)
      {
        v49 = xmmword_18DDAB500;
      }

      else
      {
        v49 = xmmword_18DDBA6A0;
      }
    }

    else
    {
      if (v30 <= 1u)
      {
        if (!v30)
        {
LABEL_63:
          v69 = dword_18DDD7E00[*(a4 + 106)];
          *&t1.a = v45;
          *&t1.c = v46;
          *&t1.tx = v47;
          LODWORD(v45) = v19;
          LODWORD(v46) = v18;
          LODWORD(v47) = v20;
          LODWORD(v44) = v21;
          return [a3 setRBImage:a1 transform:a2 interpolation:&t1 tintColor:v69 flags:{v17, *&v45, *&v46, *&v47, v44}];
        }

        v79 = *&t1.tx;
        v82 = *&t1.c;
        v85 = *&t1.a;
        v48 = xmmword_18DDAB500;
        v49 = xmmword_18DDBA6B0;
LABEL_62:
        *&t1.a = v49;
        *&t1.c = v48;
        __asm { FMOV            V0.2D, #0.5 }

        *&t1.tx = _Q0;
        CGAffineTransformTranslate(&t2, &t1, -0.5, -0.5);
        t1 = t2;
        *&t2.a = v85;
        *&t2.c = v82;
        *&t2.tx = v79;
        CGAffineTransformConcat(&v87, &t1, &t2);
        v45 = *&v87.a;
        v46 = *&v87.c;
        v47 = *&v87.tx;
        goto LABEL_63;
      }

      v82 = *&t1.c;
      v85 = *&t1.a;
      v48 = xmmword_18DDAB500;
      v79 = *&t1.tx;
      if (v30 == 2)
      {
        v49 = xmmword_18DDBA6B0;
      }

      else
      {
        v49 = xmmword_18DDAA020;
      }
    }

    v48 = vnegq_f64(v48);
    goto LABEL_62;
  }

  RBTiledImageTransform();
  v63 = *&t1.a;
  v64 = *&t1.c;
  v65 = *&t1.tx;
  if (v30 > 3u)
  {
    v83 = *&t1.c;
    v86 = *&t1.a;
    v80 = *&t1.tx;
    v66 = xmmword_18DDAA020;
    if (v30 <= 5u)
    {
      if (v30 == 4)
      {
        v67 = xmmword_18DDBA6A0;
      }

      else
      {
        v67 = xmmword_18DDAB500;
      }

      goto LABEL_68;
    }

    if (v30 == 6)
    {
      v67 = xmmword_18DDAB500;
    }

    else
    {
      v67 = xmmword_18DDBA6A0;
    }

    goto LABEL_67;
  }

  if (v30 > 1u)
  {
    v83 = *&t1.c;
    v86 = *&t1.a;
    v66 = xmmword_18DDAB500;
    v80 = *&t1.tx;
    if (v30 == 2)
    {
      v67 = xmmword_18DDBA6B0;
    }

    else
    {
      v67 = xmmword_18DDAA020;
    }

LABEL_67:
    v66 = vnegq_f64(v66);
    goto LABEL_68;
  }

  if (v30)
  {
    v80 = *&t1.tx;
    v83 = *&t1.c;
    v86 = *&t1.a;
    v66 = xmmword_18DDAB500;
    v67 = xmmword_18DDBA6B0;
LABEL_68:
    *&t1.a = v67;
    *&t1.c = v66;
    __asm { FMOV            V0.2D, #0.5 }

    *&t1.tx = _Q0;
    CGAffineTransformTranslate(&t2, &t1, -0.5, -0.5);
    t1 = t2;
    *&t2.a = v86;
    *&t2.c = v83;
    *&t2.tx = v80;
    CGAffineTransformConcat(&v87, &t1, &t2);
    v63 = *&v87.a;
    v64 = *&v87.c;
    v65 = *&v87.tx;
  }

  v71 = dword_18DDD7E00[*(a4 + 106)];
  *&t1.a = v63;
  *&t1.c = v64;
  *&t1.tx = v65;
  LODWORD(v59) = v19;
  LODWORD(v60) = v18;
  LODWORD(v61) = v20;
  LODWORD(v62) = v21;
  return [a3 setTiledRBImage:a1 transform:a2 sourceRect:&t1 interpolation:v71 tintColor:v17 flags:{0.0, 0.0, 1.0, 1.0, v59, v60, v61, v62, 0, 0, 0x3FF0000000000000, 0x3FF0000000000000}];
}

double StrongHash.init<A>(of:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  memset(&v10, 0, sizeof(v10));
  CC_SHA1_Init(&v10);
  c = v10;
  (*(a3 + 8))(&c, a2, a3);
  memset(&v10, 0, 20);
  CC_SHA1_Final(&v10, &c);
  (*(*(a2 - 8) + 8))(a1, a2);
  h4 = v10.h4;
  result = *&v10.h0;
  *a4 = *&v10.h0;
  *(a4 + 16) = h4;
  return result;
}

void type metadata accessor for _ContiguousArrayStorage<(StrongHash, DisplayList.Version)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(StrongHash, DisplayList.Version)>)
  {
    type metadata accessor for (Path, FillStyle)(255, &lazy cache variable for type metadata for (StrongHash, DisplayList.Version));
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(StrongHash, DisplayList.Version)>);
    }
  }
}

uint64_t EnvironmentValues.contentTransitionState.setter(uint64_t a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = *(a1 + 8) | (*(a1 + 12) << 32);
  v5 = *(a1 + 13);
  v6 = *(a1 + 14);
  v7 = *(a1 + 16);
  v8 = *(a1 + 24);
  v9 = *v2;
  v10 = *(a1 + 15);
  swift_retain_n();
  outlined copy of ContentTransition.Storage(v3, v4, v5);
  v11 = 0x1000000000000;
  if (!v6)
  {
    v11 = 0;
  }

  v12 = v4 | (v5 << 40) | v11 | (v10 << 56);

  _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluisyyXEfU_AA011EnvironmentcF0VyAA17ContentTransitionV5StateVG_Tt2B5(v2, v3, v12, v7, v8);

  outlined consume of ContentTransition.Storage(v3, v4, v5);

  if (v2[1])
  {
    _s7SwiftUI12PropertyListV7TrackerC15invalidateValue3for4from2toyxm_A2CtAA0C3KeyRzlFAA011EnvironmentcK0VyAA17ContentTransitionV5StateVG_Ttg5(v9, *v2);
  }

  outlined consume of ContentTransition.Storage(v3, v4, v5);
}

unint64_t ResolvedShadowStyle.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v41 = xmmword_18DD85540;
    v8 = 0.5;
    v9 = 0.0;
    v10 = 2143289344;
    v11 = 0;
    v12 = 0;
LABEL_4:
    v3[3] = 0;
    *a2 = v41;
    *(a2 + 16) = v10;
    *(a2 + 24) = v9;
    *(a2 + 32) = v11;
    *(a2 + 40) = v12;
    *(a2 + 48) = v8;
    *(a2 + 52) = v7;
    return result;
  }

  v7 = 0;
  v41 = xmmword_18DD85540;
  v8 = 0.5;
  v9 = 0.0;
  v10 = 2143289344;
  v11 = 0;
  v12 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v13 = v3[4];
      if (v5 < v13)
      {
        goto LABEL_13;
      }

      if (v13 < v5)
      {
        goto LABEL_91;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    if (result <= 7)
    {
      goto LABEL_91;
    }

LABEL_13:
    v14 = result >> 3;
    v15 = result & 7;
    if (result >> 3 > 2)
    {
      break;
    }

    if (v14 == 1)
    {
      if (v15 != 2)
      {
        goto LABEL_91;
      }

      v28 = v3[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
      }

      v30 = *(v28 + 2);
      v29 = *(v28 + 3);
      if (v30 >= v29 >> 1)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1, v28);
      }

      *(v28 + 2) = v30 + 1;
      *&v28[8 * v30 + 32] = v6;
      v3[5] = v28;
      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_98;
      }

      v31 = v3[1] + result;
      if (v6 < v31)
      {
        goto LABEL_91;
      }

      v3[2] = v31;
      specialized Color.ResolvedHDR.init(from:)(v3, &v42);
      v32 = v3[5];
      if (!*(v32 + 16))
      {
        goto LABEL_100;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v33 = *(v32 + 16);
        if (!v33)
        {
          goto LABEL_90;
        }
      }

      else
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
        v32 = result;
        v33 = *(result + 16);
        if (!v33)
        {
LABEL_90:
          __break(1u);
LABEL_91:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          return swift_willThrow();
        }
      }

      v34 = v33 - 1;
      v6 = *(v32 + 8 * v34 + 32);
      *(v32 + 16) = v34;
      v3[5] = v32;
      v3[2] = v6;
      v41 = v42;
      v10 = v43;
    }

    else
    {
      if (v14 != 2)
      {
LABEL_58:
        if ((result & 7) > 1)
        {
          if (v15 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_105;
            }

            v35 = v3[1] + result;
            if (v6 < v35)
            {
              goto LABEL_91;
            }
          }

          else
          {
            if (v15 != 5)
            {
              goto LABEL_91;
            }

            v35 = v3[1] + 4;
            if (v6 < v35)
            {
              goto LABEL_91;
            }
          }
        }

        else
        {
          if ((result & 7) == 0)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            goto LABEL_6;
          }

          if (v15 != 1)
          {
            goto LABEL_91;
          }

          v35 = v3[1] + 8;
          if (v6 < v35)
          {
            goto LABEL_91;
          }
        }

        v3[1] = v35;
        goto LABEL_6;
      }

      if (v15 == 5)
      {
        v36 = v3[1];
        if (v6 < (v36 + 1))
        {
          goto LABEL_91;
        }

        v37 = *v36;
        v3[1] = v36 + 1;
        v9 = v37;
      }

      else
      {
        if (v15 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_104;
          }

          v17 = v3[1];
          if (v6 < v17 + result)
          {
            goto LABEL_91;
          }

          v3[3] = 17;
          v3[4] = v17 + result;
        }

        else
        {
          if (v15 != 1)
          {
            goto LABEL_91;
          }

          v17 = v3[1];
        }

        if (v6 < (v17 + 1))
        {
          goto LABEL_91;
        }

        v9 = *v17;
        v3[1] = v17 + 1;
      }
    }

LABEL_6:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if (v14 != 3)
  {
    if (v14 == 4)
    {
      if ((result & 7) != 0)
      {
        if (v15 != 2)
        {
          goto LABEL_91;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_103;
        }

        v27 = v3[1] + result;
        if (v6 < v27)
        {
          goto LABEL_91;
        }

        v3[3] = 32;
        v3[4] = v27;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v7 = result;
    }

    else
    {
      if (v14 != 5)
      {
        goto LABEL_58;
      }

      if (v15 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_102;
        }

        v16 = v3[1];
        if (v6 < v16 + result)
        {
          goto LABEL_91;
        }

        v3[3] = 45;
        v3[4] = v16 + result;
      }

      else
      {
        if (v15 != 5)
        {
          goto LABEL_91;
        }

        v16 = v3[1];
      }

      if (v6 < (v16 + 1))
      {
        goto LABEL_91;
      }

      v8 = *v16;
      v3[1] = v16 + 1;
    }

    goto LABEL_6;
  }

  if (v15 != 2)
  {
    goto LABEL_91;
  }

  v18 = v3[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v18 + 2) + 1, 1, v18);
  }

  v20 = *(v18 + 2);
  v19 = *(v18 + 3);
  if (v20 >= v19 >> 1)
  {
    v18 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v18);
  }

  *(v18 + 2) = v20 + 1;
  *&v18[8 * v20 + 32] = v6;
  v3[5] = v18;
  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v21 = v3[1] + result;
    if (v6 < v21)
    {
      goto LABEL_91;
    }

    v3[2] = v21;
    specialized CGPoint.init(from:)(v3);
    v24 = v3[5];
    if (!*(v24 + 16))
    {
      goto LABEL_99;
    }

    v11 = v22;
    v12 = v23;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v25 = *(v24 + 16);
      if (!v25)
      {
        goto LABEL_101;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
      v24 = result;
      v25 = *(result + 16);
      if (!v25)
      {
        goto LABEL_101;
      }
    }

    v26 = v25 - 1;
    v6 = *(v24 + 8 * v26 + 32);
    *(v24 + 16) = v26;
    v3[5] = v24;
    v3[2] = v6;
    goto LABEL_6;
  }

  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
  __break(1u);
  do
  {
    __break(1u);
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    a2 = result;
    v38 = *(result + 16);
    if (v38)
    {
      goto LABEL_96;
    }

    __break(1u);
    a2 = v3[5];
  }

  while (!*(a2 + 16));
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v38 = *(a2 + 16);
    if (v38)
    {
LABEL_96:
      v39 = v38 - 1;
      v40 = *(a2 + 8 * v39 + 32);
      *(a2 + 16) = v39;
      v3[5] = a2;
      v3[2] = v40;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    a2 = result;
    v38 = *(result + 16);
    if (v38)
    {
      goto LABEL_96;
    }
  }

  __break(1u);
  return result;
}

uint64_t DefaultLayoutViewResponder.__deallocating_deinit()
{
  DefaultLayoutViewResponder.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for _DisplayList_ViewFactory.makeView() in conformance EmptyViewFactory()
{
  type metadata accessor for AnyViewStorage<EmptyView>();

  return swift_allocObject();
}

void type metadata accessor for AnyViewStorage<EmptyView>()
{
  if (!lazy cache variable for type metadata for AnyViewStorage<EmptyView>)
  {
    v0 = type metadata accessor for AnyViewStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for AnyViewStorage<EmptyView>);
    }
  }
}

void *assignWithCopy for DynamicViewContainer.Value(void *a1, void *a2)
{
  *a1 = *a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 80);
  v7 = ((a1 + v6 + 8) & ~v6);
  v8 = ((a2 + v6 + 8) & ~v6);
  v9 = *(v5 + 48);
  v10 = v9(v7, 1, AssociatedTypeWitness);
  v11 = v9(v8, 1, AssociatedTypeWitness);
  if (v10)
  {
    if (!v11)
    {
      (*(v5 + 16))(v7, v8, AssociatedTypeWitness);
      (*(v5 + 56))(v7, 0, 1, AssociatedTypeWitness);
      goto LABEL_12;
    }

    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  else
  {
    if (!v11)
    {
      (*(v5 + 24))(v7, v8, AssociatedTypeWitness);
      goto LABEL_12;
    }

    (*(v5 + 8))(v7, AssociatedTypeWitness);
    v12 = *(v5 + 84);
    v13 = *(v5 + 64);
  }

  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 + 1;
  }

  memcpy(v7, v8, v14);
LABEL_12:
  if (*(v5 + 84))
  {
    v15 = *(v5 + 64);
  }

  else
  {
    v15 = *(v5 + 64) + 1;
  }

  v16 = ((v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  v17 = *((v8 + v15 + 7) & 0xFFFFFFFFFFFFFFF8);
  v18 = *v16;
  *v16 = v17;
  v19 = v17;

  return a1;
}

void destroy for DynamicViewContainer.Value(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(AssociatedTypeWitness - 8);
  v4 = (a1 + *(v3 + 80) + 8) & ~*(v3 + 80);
  if (!(*(v3 + 48))(v4, 1, AssociatedTypeWitness))
  {
    (*(v3 + 8))(v4, AssociatedTypeWitness);
  }

  v5 = v4 + *(v3 + 64);
  if (!*(v3 + 84))
  {
    ++v5;
  }

  v6 = *((v5 + 7) & 0xFFFFFFFFFFFFFFF8);
}

uint64_t specialized GraphicsContext.clipToLayer(opacity:options:content:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  GraphicsContext.copyOnWrite()();
  v7 = *a2;
  v8 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v9 = swift_allocObject();
  *(v9 + 32) = xmmword_18DD85500;
  *(v9 + 48) = 1065353216;
  *(v9 + 56) = 0x7FF8000000000000;
  v10 = v7[2];
  v11 = *(v10 + 64);
  if (v11 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v9 + 16) = v10;
  }

  else
  {
    v12 = RBDrawingStateGetDisplayList();
    v13 = v7[4];
    v14 = v13;
    v15 = v7[5];
    if (v13 == 1)
    {
      v14 = *(v10 + 48);
      v15 = *(v10 + 56);
    }

    v19 = v14;
    v20 = v15;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v13);
    *(v9 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v12, &v19);
  }

  *(v9 + 24) = v8;
  *(v9 + 64) = 0;
  v18 = v9;
  v19 = a4;
  LOWORD(v20) = a5;
  HIDWORD(v20) = HIDWORD(a5);

  DisplayList.GraphicsRenderer.render(list:in:)(&v19, &v18);

  RBDrawingStateClipLayer();
}

{
  GraphicsContext.copyOnWrite()();
  v8 = *a2;
  v9 = RBDrawingStateBeginLayer();
  type metadata accessor for GraphicsContext.Storage();
  v10 = swift_allocObject();
  *(v10 + 32) = xmmword_18DD85500;
  *(v10 + 48) = 1065353216;
  *(v10 + 56) = 0x7FF8000000000000;
  v11 = v8[2];
  v12 = *(v11 + 64);
  v36 = a4;
  v37 = a5;
  v34 = v9;
  if (v12 == RBDrawingStateGetDefaultColorSpace())
  {
    *(v10 + 16) = v11;

    v13 = v10;
  }

  else
  {
    v14 = RBDrawingStateGetDisplayList();
    v15 = v8[4];
    v16 = v15;
    v17 = v8[5];
    if (v15 == 1)
    {
      v16 = *(v11 + 48);
      v17 = *(v11 + 56);
    }

    v44[0] = v16;
    v44[1] = v17;
    type metadata accessor for GraphicsContext.Storage.Shared();
    swift_allocObject();
    outlined copy of EnvironmentValues?(v15);
    v18 = GraphicsContext.Storage.Shared.init(list:environment:)(v14, v44);
    v13 = v10;
    *(v10 + 16) = v18;
    a4 = v36;
  }

  *(v13 + 24) = v34;
  *(v13 + 64) = 0;
  v46 = v13;
  v19 = *(a3 + 16);
  if (v19)
  {

    v20 = (a3 + 80);
    __asm { FMOV            V0.4S, #1.0 }

    v35 = _Q0;
    v39 = v13;
    do
    {
      if (((*(v20 - 1) ^ a5) & a4) == 0)
      {
        v26 = *(v20 - 6);
        v27 = *(v20 - 5);
        v28 = *(v20 - 4);
        v29 = *(v20 - 3);
        v30 = *(v20 - 16);
        if (*v20)
        {
          v31 = 23;
        }

        else
        {
          v31 = 0;
        }

        v32 = *(v39 + 52);
        outlined copy of Path.Storage(*(v20 - 6), *(v20 - 5), *(v20 - 4), *(v20 - 3), *(v20 - 16));
        if (v32 != v31)
        {
          GraphicsContext.copyOnWrite()();
          v39 = v46;
          *(v46 + 52) = v31;
        }

        v47[0] = v26;
        v47[1] = v27;
        v47[2] = v28;
        v47[3] = v29;
        v48 = v30;
        *v44 = v35;
        v45 = 2;
        v40 = 256;
        v41 = 0u;
        v42 = 0u;
        v43 = 0;
        outlined copy of Path.Storage(v26, v27, v28, v29, v30);
        GraphicsContext.draw(_:with:style:)(v47, v44, &v40, v39);
        outlined consume of Path.Storage(v26, v27, v28, v29, v30);
        outlined consume of Path.Storage(v26, v27, v28, v29, v30);
        a4 = v36;
        a5 = v37;
      }

      v20 += 56;
      --v19;
    }

    while (v19);
  }

  RBDrawingStateClipLayer();
}

uint64_t initializeWithCopy for PathDrawingStyle(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  outlined copy of PathDrawingStyle(*a2, v4, v5, v6, v7, v8);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  *(a1 + 32) = v7;
  *(a1 + 40) = v8;
  return a1;
}

uint64_t outlined consume of PathDrawingStyle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  return result;
}

void type metadata accessor for StaticBody<ViewBodyAccessor<Path>, MainThreadFlags>()
{
  if (!lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Path>, MainThreadFlags>)
  {
    type metadata accessor for InterfaceIdiomBox<PhoneInterfaceIdiom>(255, &lazy cache variable for type metadata for ViewBodyAccessor<Path>, &type metadata for Path, &protocol witness table for Path, type metadata accessor for ViewBodyAccessor);
    lazy protocol witness table accessor for type ViewBodyAccessor<Path> and conformance ViewBodyAccessor<A>();
    v0 = type metadata accessor for StaticBody();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for StaticBody<ViewBodyAccessor<Path>, MainThreadFlags>);
    }
  }
}

void type metadata accessor for FontBox<Font.DefaultProvider>()
{
  if (!lazy cache variable for type metadata for FontBox<Font.DefaultProvider>)
  {
    lazy protocol witness table accessor for type Font.DefaultProvider and conformance Font.DefaultProvider();
    v0 = type metadata accessor for FontBox();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for FontBox<Font.DefaultProvider>);
    }
  }
}

BOOL LinearGradient._Paint.isOpaque.getter()
{
  v1 = *(*v0 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = (*v0 + 44);
  LOBYTE(result) = 1;
  v4 = 1 - v1;
  do
  {
    if (result)
    {
      result = *v2 == 1.0;
      if (!v4)
      {
        return result;
      }
    }

    else
    {
      result = 0;
      if (!v4)
      {
        return result;
      }
    }

    ++v4;
    v2 += 12;
  }

  while (v4 != 1);
  __break(1u);
  return result;
}

uint64_t initializeWithCopy for PathSet.Element(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  outlined copy of Path.Storage(*a2, v5, v6, v7, v8);
  *a1 = v4;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = v8;
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 52) = *(a2 + 52);
  return a1;
}

void type metadata accessor for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>()
{
  if (!lazy cache variable for type metadata for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>)
  {
    type metadata accessor for (RBImageRendererProperty, Any)();
    v0 = type metadata accessor for _ContiguousArrayStorage();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for _ContiguousArrayStorage<(RBImageRendererProperty, Any)>);
    }
  }
}

void type metadata accessor for (RBImageRendererProperty, Any)()
{
  if (!lazy cache variable for type metadata for (RBImageRendererProperty, Any))
  {
    type metadata accessor for RBImageRendererProperty(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (RBImageRendererProperty, Any));
    }
  }
}

void *outlined copy of GraphicsContext.Filter.Storage(void *result, id a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v11 = a11 >> 27;
  if (a11 >> 27 <= 0x11)
  {
    if (a11 >> 27 > 5)
    {
      if (v11 != 6 && v11 != 8)
      {
        return result;
      }
    }

    else if (v11 != 3)
    {
      if (v11 == 5)
      {

        return outlined copy of Path.Storage(a5, a6, a7, a8, a9);
      }

      return result;
    }

    goto LABEL_14;
  }

  if (a11 >> 27 > 0x13)
  {
    if (v11 == 20)
    {
      v13 = a2 & 1;

      return outlined copy of EitherGradient(result, v13);
    }

    else if (v11 == 24)
    {
      v12 = result;
    }
  }

  else
  {
    if (v11 != 18)
    {
      if (v11 != 19)
      {
        return result;
      }

LABEL_14:
    }

    return outlined copy of GraphicsContext.Shading.Storage(a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  }

  return result;
}

uint64_t Shader.ResolvedShader.rbFilterFlags.getter()
{
  v1 = *(v0 + 24);
  if ((v1 & 2) != 0)
  {
    if ((v1 & 1) == 0)
    {
      result = 1;
      if ((v1 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    result = 17;
    if ((v1 & 8) != 0)
    {
LABEL_8:
      result = result | 0x40;
    }
  }

  else if ((v1 & 4) != 0)
  {
    if (v1)
    {
      result = 18;
      if ((v1 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    result = 2;
    if ((v1 & 8) != 0)
    {
      goto LABEL_8;
    }
  }

  else
  {
    if ((v1 & 1) == 0)
    {
      result = 0;
      if ((v1 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    result = 16;
    if ((v1 & 8) != 0)
    {
      goto LABEL_8;
    }
  }

LABEL_9:
  if ((v1 & 0x10) != 0)
  {
    return result | 0x80;
  }

  return result;
}

BOOL KeyframeTrackState.isInitial.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    (*(v2 + 8))(v5, a1);
  }

  return EnumCaseMultiPayload == 2;
}

uint64_t KeyframeTrackState.updateAnimation(time:)(double *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for KeyframeTrackState.RepeatingState();
  v45 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v42 - v7;
  v9 = type metadata accessor for KeyframeTimeline();
  v44 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v42 - v10;
  v12 = *(a2 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *a1;
  v18 = *(v12 + 16);
  v43 = v3;
  v18(v16, v3, a2, v14);
  result = swift_getEnumCaseMultiPayload();
  if (!result)
  {
    v24 = v44;
    v25 = *v16;
    if ((v16[1] & 0x8000000000000000) == 0)
    {
      goto LABEL_19;
    }

    v29 = *(v12 + 8);

    v30 = v43;
    v29(v43, a2);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v32 = swift_projectBox();
    v33 = v32 + *(TupleTypeMetadata2 + 48);
    v34 = *v33;
    v35 = *(v33 + 8);
    (*(v24 + 16))(v11, v32, v9);
    if ((v35 & 1) == 0)
    {
      if (v17 <= v34)
      {
        v38 = 0;
        goto LABEL_17;
      }

      v34 = v17;
    }

    if (KeyframeTimeline.duration.getter() < v17 - v34)
    {
      v36 = swift_allocBox();
      KeyframeTimeline.value(progress:)(v9, v37, 1.0);
      (*(v24 + 8))(v11, v9);

LABEL_18:
      *v30 = v25;
      v30[1] = v36;
      swift_storeEnumTagMultiPayload();

LABEL_19:
    }

    v38 = 1;
LABEL_17:
    v39 = swift_allocBox();
    v41 = v40 + *(TupleTypeMetadata2 + 48);
    (*(v24 + 32))(v40, v11, v9);
    *v41 = v34;
    *(v41 + 8) = v38;

    v36 = v39 | 0x8000000000000000;
    goto LABEL_18;
  }

  if (result == 1)
  {
    v20 = v45;
    v21 = *(v45 + 32);
    v21(v8, v16, v6);
    v22 = &v8[*(v6 + 44)];
    v23 = *(v22 + 1);
    if (v23 < 0)
    {
      v45 = *(v22 + 2);
      v26 = *v22;
      v27 = v43;
      (*(v12 + 8))(v43, a2);
      v28 = v17;
      if (((v17 > v26) & ~v23) == 0)
      {
        v28 = v26;
      }

      *v22 = v28;
      *(v22 + 1) = v23 & 1u | (v17 > v26) | 0x8000000000000000;
      *(v22 + 2) = v45;
      v21(v27, v8, v6);
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      return (*(v20 + 8))(v8, v6);
    }
  }

  return result;
}

uint64_t AnimationPath.update(value:time:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness - 8);
  v11 = v13 - v10;
  v13[1] = a3;
  type metadata accessor for AnimationPath.Element();
  type metadata accessor for Array();
  swift_getWitnessTable();
  result = Collection.isEmpty.getter();
  if ((result & 1) == 0)
  {
    AnimationPath.animatableData(at:)(a3, a4, a5, v11, a1);
    return (*(a5 + 32))(v11, a4, a5);
  }

  return result;
}

uint64_t AnimationPath.animatableData(at:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  v45 = a4;
  v9 = type metadata accessor for AnimationPath.Element();
  v10 = type metadata accessor for Optional();
  v38 = *(v10 - 8);
  v39 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v35 - v11;
  v40 = a3;
  v41 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = type metadata accessor for Optional();
  v36 = *(v12 - 8);
  v37 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v43 = &v35 - v13;
  v14 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v35 - v20;
  if (MEMORY[0x193ABF2C0](a1, v9, v19))
  {
    v22 = 0;
    v23 = (v14 + 8);
    do
    {
      IsNativeType = Array._hoistableIsNativeTypeChecked()();
      Array._checkSubscript(_:wasNativeTypeChecked:)();
      if (IsNativeType)
      {
        (*(v14 + 16))(v21, a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v22, v9);
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = _ArrayBuffer._getElementSlowPath(_:)();
        if (v35 != 8)
        {
          __break(1u);
          return result;
        }

        v46 = result;
        (*(v14 + 16))(v21, &v46, v9);
        swift_unknownObjectRelease();
        v25 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
LABEL_11:
          __break(1u);
          break;
        }
      }

      (*(v14 + 32))(v17, v21, v9);
      if (a5 <= AnimationPath.Element.duration.getter(v9))
      {
        AnimationPath.Element.animatableData(at:)(v9, v45, a5);
        return (*v23)(v17, v9);
      }

      v26 = AnimationPath.Element.duration.getter(v9);
      (*v23)(v17, v9);
      a5 = a5 - v26;
      ++v22;
    }

    while (v25 != MEMORY[0x193ABF2C0](a1, v9));
  }

  v46 = a1;
  type metadata accessor for Array();
  swift_getWitnessTable();
  v28 = v42;
  BidirectionalCollection.last.getter();
  v29 = (*(v14 + 48))(v28, 1, v9);
  v30 = AssociatedTypeWitness;
  if (v29 == 1)
  {
    (*(v38 + 8))(v28, v39);
    v31 = *(v30 - 8);
    v32 = v43;
    (*(v31 + 56))(v43, 1, 1, v30);
    swift_getAssociatedConformanceWitness();
    dispatch thunk of static AdditiveArithmetic.zero.getter();
    result = (*(v31 + 48))(v32, 1, v30);
    if (result != 1)
    {
      return (*(v36 + 8))(v32, v37);
    }
  }

  else
  {
    v33 = v43;
    AnimationPath.Element.end.getter(v9, v43);
    (*(v14 + 8))(v28, v9);
    v34 = *(v30 - 8);
    (*(v34 + 56))(v33, 0, 1, v30);
    return (*(v34 + 32))(v45, v33, v30);
  }

  return result;
}

double _s7SwiftUI14AnimationStateVy5ValueQyd__qd__mcAA0cD3KeyRd__luigAA14AnimatablePairVyAHy12CoreGraphics7CGFloatVAKGALG_AA06SpringD033_73E5E3E568519775ECB92F029EBA0DDALLVyAMGTt0B5@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  if (*(a1 + 16) && (type metadata accessor for SpringState<AnimatablePair<AnimatablePair<CGFloat, CGFloat>, AnimatablePair<CGFloat, CGFloat>>>(), v5 = specialized __RawDictionaryStorage.find<A>(_:)(v4), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a1 + 56) + 32 * v5, v8);
    outlined init with take of Any(v8, v9);
    outlined init with take of Any(v9, v8);
    swift_dynamicCast();
  }

  else
  {
    result = 0.0;
    a2[6] = 0u;
    a2[7] = 0u;
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t DelayAnimation.animate<A, B>(base:value:time:context:)(__n128 a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  a1.n128_f64[0] = a1.n128_f64[0] - a2;
  if (a1.n128_f64[0] <= 0.0)
  {
    a1.n128_f64[0] = 0.0;
  }

  return (*(a9 + 16))(a4, a5, a6, a8, a7, a9, a1);
}

unint64_t _s7SwiftUI10_ShapeViewV05_makeD04view6inputsAA01_D7OutputsVAA11_GraphValueVyACyxq_GG_AA01_D6InputsVtFZAA4PathV_AA15ForegroundStyleVTt2B5@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 48);
  if (_s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA11DisplayListV0I0V_TtB5Tf4dn_n(v6) & 1) != 0 || (result = _s7SwiftUI17PreferencesInputsV8contains_011includeHostC0Sbxm_SbtAA13PreferenceKeyRzlFAA014ViewRespondersI0V_TtB5Tf4dn_n(v6), (result))
  {
    v8 = *(a2 + 48);
    v9 = *(a2 + 64);
    v10 = *(a2 + 16);
    v20[2] = *(a2 + 32);
    v20[3] = v8;
    v11 = *(a2 + 36);
    v20[4] = v9;
    v21 = *(a2 + 80);
    v20[0] = *a2;
    v20[1] = v10;
    LOBYTE(v16) = 0;
    swift_beginAccess();
    v12 = CachedEnvironment.resolvedShapeStyles(for:role:mode:)(v20, &v16, 0x100000000);
    swift_endAccess();
    _s7SwiftUI19ShapeStyledLeafViewPAAE04makeeF04view6inputs6styles17interpolatorGroup4dataAA01_F7OutputsVAA11_GraphValueVyxG_AA01_F6InputsV09AttributeO00R0VyAA01_C10Style_PackVGAA01_cs13_InterpolatorL0CSg0C10UpdateDataQztFZAA01_cF0VyAA4PathVAA010ForegroundS0VG_Tt5B5(a1, a2, v12, 0, &v17);
    if (one-time initialization token for v4 != -1)
    {
      swift_once();
    }

    v13 = static Semantics.v4;
    if (one-time initialization token for forced != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    if (byte_1ED53C51C)
    {
      if (!dyld_program_sdk_at_least())
      {
        goto LABEL_13;
      }
    }

    else if (static Semantics.forced < v13)
    {
      goto LABEL_13;
    }

    if ((v11 & 2) != 0)
    {
      v16 = a1;
      protocol witness for static _AttributeBody._hasDestroySelf.getter in conformance ResetDeltaModifier.ChildPhase();
      type metadata accessor for LeafLayoutComputer<_ShapeView<Path, ForegroundStyle>>(0);
      lazy protocol witness table accessor for type StaticBody<ViewBodyAccessor<GlassItemView>, AsyncThreadFlags> and conformance StaticBody<A, B>(&lazy protocol witness table cache variable for type LeafLayoutComputer<_ShapeView<Path, ForegroundStyle>> and conformance LeafLayoutComputer<A>, type metadata accessor for LeafLayoutComputer<_ShapeView<Path, ForegroundStyle>>);
      result = Attribute.init<A>(body:value:flags:update:)();
      v14 = v18 | 0x80;
LABEL_14:
      *a3 = v17;
      *(a3 + 8) = v14;
      *(a3 + 12) = result;
      return result;
    }

LABEL_13:
    v14 = v18;
    result = v19;
    goto LABEL_14;
  }

  *a3 = MEMORY[0x1E69E7CC0];
  v15 = *MEMORY[0x1E698D3F8];
  *(a3 + 8) = 0;
  *(a3 + 12) = v15;
  return result;
}

uint64_t Font.resolve(in:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  if (a1[1])
  {

    _s7SwiftUI12PropertyListV7TrackerC12derivedValue_3for0G0QzAC_xmtAA07DerivedC3KeyRzlFAA0i11EnvironmentcJ033_0CBA6217BE011883F496E97230B6CF8FLLVyAA0K6ValuesV011FontContextJ033_3D5D82E35921924EBCD40D1BFB222CC3LLVG_Tt1g5(v5, v9);
  }

  else
  {
    v8[0] = *a1;
    v8[1] = 0;

    static EnvironmentValues.FontContextKey.value(in:)(v8, v9);
  }

  *a3 = a2;
  v6 = v9[1];
  *(a3 + 8) = v9[0];
  *(a3 + 24) = v6;
  *(a3 + 40) = v9[2];
}

uint64_t Font.Resolved.ctFont.getter()
{
  v1 = *v0;
  v2 = *(v0 + 5);
  v3 = *(v0 + 3);
  v14 = *(v0 + 1);
  v15 = v3;
  v16 = v2;
  *&v13[0] = *(&v2 + 1);

  v4 = MEMORY[0x1E69E7CC0];
  specialized Array.append<A>(contentsOf:)(MEMORY[0x1E69E7CC0]);
  v5 = *&v13[0];
  outlined init with copy of Font.Context(&v14, v13);

  v10 = v14;
  v11 = v15;
  v12 = v16;
  v17[0] = v14;
  v17[1] = v15;
  *&v18 = v16;
  *(&v18 + 1) = v4;
  v13[1] = v14;
  v13[2] = v15;
  v13[3] = v18;
  *&v13[0] = v1;
  *(&v13[0] + 1) = v5;
  outlined init with copy of Font.Context(v17, v19);
  v6 = one-time initialization token for shared;

  if (v6 != -1)
  {
    swift_once();
  }

  specialized ObjectCache.subscript.getter(v13);
  v8 = v7;
  outlined destroy of Font.FontCache.Key(v13);
  v19[0] = v10;
  v19[1] = v11;
  v20 = v12;
  v21 = v4;
  outlined destroy of Font.Context(v19);
  return v8;
}

uint64_t closure #1 in SDFLayer.update(shape:size:in:backdropGroupID:)(uint64_t *a1, uint64_t a2, char a3, char a4, double a5, double a6, double a7, double a8, double a9, double a10, float a11)
{
  v107 = *MEMORY[0x1E69E9840];
  if (a5 != 0.0 || a6 != 0.0)
  {
    GraphicsContext.copyOnWrite()();
    RBDrawingStateTranslateCTM();
  }

  v18 = 0;
  v19 = *(a2 + 16);
  v88 = *a2;
  v89 = v19;
  v20 = *(a2 + 32);
  v90 = v20;
  v21 = *a2;
  v22 = *(a2 + 8);
  *&v106[0] = 256;
  v71 = *(a2 + 16);
  v72 = *(a2 + 24);
  memset(v106 + 8, 0, 33);
  if (a3)
  {
    v18 = a4 == 2 ? 2 : 1;
    if (a11 != 0.0)
    {
      if (v90 > 2u)
      {
        if (v90 == 5)
        {
          if (*(v88 + 16))
          {
            v23 = v22;
            v69 = v18;
            if (*(v88 + 16) == 1)
            {

              RBPathGetBoundingRect();
            }

            else
            {

              v28 = MEMORY[0x193AC3640](v88 + 24);
            }

            v39 = v28;
            v40 = v29;
            v41 = v30;
            v42 = v31;
            outlined destroy of PathSet.Element(a2);
            v27 = v42;
            v26 = v41;
            v25 = v40;
            v24 = v39;
            v18 = v69;
          }

          else
          {
            v32 = *(v88 + 24);
            if (!v32)
            {
              __break(1u);
              goto LABEL_60;
            }

            v23 = v22;
            v33 = v18;
            v34 = v32;

            PathBoundingBox = CGPathGetPathBoundingBox(v34);
            x = PathBoundingBox.origin.x;
            y = PathBoundingBox.origin.y;
            width = PathBoundingBox.size.width;
            height = PathBoundingBox.size.height;

            outlined destroy of PathSet.Element(a2);
            v27 = height;
            v26 = width;
            v25 = y;
            v24 = x;
            v18 = v33;
          }
        }

        else
        {
          if (v90 != 6)
          {
            goto LABEL_60;
          }

          v23 = v22;
          v24 = *MEMORY[0x1E695F050];
          v25 = *(MEMORY[0x1E695F050] + 8);
          v26 = *(MEMORY[0x1E695F050] + 16);
          v27 = *(MEMORY[0x1E695F050] + 24);
        }
      }

      else
      {
        v23 = v22;
        if (v90 && v90 != 1)
        {
          v24 = *(v88 + 16);
          v25 = *(v88 + 24);
          v26 = *(v88 + 32);
          v27 = *(v88 + 40);
        }

        else
        {
          v25 = *(&v88 + 1);
          v24 = *&v88;
          v27 = *(&v89 + 1);
          v26 = *&v89;
        }
      }

      v43 = v18;
      GraphicsContext.addSDFGradientOvalizationFilter(_:ovalization:bounds:)(v18, a11, v24, v25, v26, v27);
      v18 = v43;
      v22 = v23;
    }
  }

  GraphicsContext.addSDFGradientFilter(_:)(v18);
  __asm { FMOV            V0.4S, #1.0 }

  v77 = _Q0;
  LODWORD(v78) = 2143289344;
  _s7SwiftUI15GraphicsContextV15ResolvedShadingOWOi0_(&v77);
  v103 = v85;
  v104 = v86;
  v105 = v87;
  v99 = v81;
  v100 = v82;
  v101 = v83;
  v102 = v84;
  v95 = v77;
  v96 = v78;
  v97 = v79;
  v98 = v80;
  v92 = v90;
  v91[0] = v88;
  v91[1] = v89;
  if (((1 << v90) & 0x47) == 0)
  {
    if (v90 == 5)
    {
      type metadata accessor for Path.PathBox();
      v21 = swift_allocObject();
      *(v21 + 40) = 0u;
      *(v21 + 56) = 0u;
      *(v21 + 72) = 0u;
      *(v21 + 88) = 0u;
      *(v21 + 104) = 0u;
      *(v21 + 24) = 0u;
      *(v21 + 16) = 2;
      RBPathStorageInit();
      LOWORD(v75[0]) = 0;
      MEMORY[0x193AC35E0](v21 + 24, 20, 0, v75);
      Path.append(to:)(v21 + 24);
      MEMORY[0x193AC35E0](v21 + 24, 16, 0, 0);
      v22 = 0;
      v71 = 0;
      v72 = 0;
      v20 = 5;
      goto LABEL_27;
    }

    while (1)
    {
LABEL_60:
      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  outlined init with copy of Path.Storage(v91, v75);
LABEL_27:
  *&v93[0] = v21;
  *&v93[1] = v22;
  *&v93[2] = v71;
  *&v93[3] = v72;
  v94 = v20;
  v49 = *a1;
  if (a9 != 0.0 && a10 != 0.0)
  {
    v70 = v20;
    outlined copy of Path.Storage(v21, v22, v71, v72, v20);
    v50 = RBDrawingStateBeginLayer();
    type metadata accessor for GraphicsContext.Storage();
    v51 = swift_allocObject();
    *(v51 + 32) = xmmword_18DD85500;
    *(v51 + 48) = 1065353216;
    *(v51 + 56) = 0x7FF8000000000000;
    v52 = *(v49 + 16);
    v53 = *(v52 + 64);
    if (v53 == RBDrawingStateGetDefaultColorSpace())
    {
      *(v51 + 16) = v52;
    }

    else
    {
      v68 = RBDrawingStateGetDisplayList();
      v56 = *(v49 + 32);
      v57 = v56;
      v58 = *(v49 + 40);
      if (v56 == 1)
      {
        v57 = *(v52 + 48);
        v58 = *(v52 + 56);
      }

      *&v75[0] = v57;
      *(&v75[0] + 1) = v58;
      type metadata accessor for GraphicsContext.Storage.Shared();
      swift_allocObject();
      outlined copy of EnvironmentValues?(v56);
      *(v51 + 16) = GraphicsContext.Storage.Shared.init(list:environment:)(v68, v75);
    }

    *(v51 + 24) = v50;
    *(v51 + 64) = 0;
    *&v75[0] = v51;

    closure #1 in GraphicsContext.drawSDF(of:style:distanceRange:gradient:ovalization:)(v75, v93, &v95, v106, a9, a10);

    RBDrawingStateDrawLayer();

    outlined consume of Path.Storage(v21, v22, v71, v72, v70);
    v59 = v21;
    v60 = v22;
    v61 = v71;
    v62 = v72;
    v63 = v70;
    return outlined consume of Path.Storage(v59, v60, v61, v62, v63);
  }

  GraphicsContext._shapeRenderingMode.getter(*a1, v75);
  v54 = v22;
  if (a10 == 0.0)
  {
    if (a9 < 0.0)
    {
      v55 = -a9;
    }

    else
    {
      v55 = 0.0;
    }
  }

  else if (a10 > 0.0)
  {
    v55 = -a10;
  }

  else
  {
    v55 = -0.0;
  }

  v64 = v75[0];
  v65 = *(v75 + 1);
  if (*(v49 + 56) != v55)
  {
    GraphicsContext.copyOnWrite()();
    v49 = *a1;
    *(*a1 + 56) = v55;
  }

  v75[7] = v102;
  v75[8] = v103;
  v75[9] = v104;
  v76 = v105;
  v75[5] = v100;
  v75[6] = v101;
  v75[0] = v95;
  v75[1] = v96;
  v75[3] = v98;
  v75[4] = v99;
  v75[2] = v97;
  v73 = v106[0];
  v74[0] = v106[1];
  *(v74 + 9) = *(&v106[1] + 9);
  GraphicsContext.draw(_:with:style:)(v93, v75, &v73, v49);
  if (v64 == 3)
  {
    if (v65 > 0.0)
    {
      v65 = -v65;
    }

    else
    {
      v65 = -0.0;
    }
  }

  else
  {
    if (v64 != 2)
    {
      v65 = NAN;
      v66 = v54;
      goto LABEL_58;
    }

    if (v65 <= 0.0)
    {
      v65 = 0.0;
    }
  }

  v66 = v54;
  if (*(v49 + 56) == v65)
  {
    v59 = v21;
    v60 = v54;
    v61 = v71;
    v62 = v72;
    v63 = v20;
    return outlined consume of Path.Storage(v59, v60, v61, v62, v63);
  }

LABEL_58:
  GraphicsContext.copyOnWrite()();
  result = outlined consume of Path.Storage(v21, v66, v71, v72, v20);
  *(*a1 + 56) = v65;
  return result;
}

void *initializeWithCopy for GraphicsContext.Filter(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *(a2 + 40);
  v9 = *(a2 + 48);
  v10 = *(a2 + 56);
  v11 = *(a2 + 64);
  v13 = *(a2 + 72);
  v14 = *(a2 + 80);
  outlined copy of GraphicsContext.Filter.Storage(*a2, v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  *a1 = v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[9] = v13;
  a1[10] = v14;
  return a1;
}

uint64_t Shader.makeRBShader(in:)(uint64_t *a1)
{
  v126 = *MEMORY[0x1E69E9840];
  type metadata accessor for Text.Style?();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v102 = &v94 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for ImageResolutionContext();
  MEMORY[0x1EEE9AC00](v99);
  v98 = (&v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = a1[1];
  v107 = *a1;
  v8 = *v1;
  v7 = *(v1 + 8);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = objc_allocWithZone(MEMORY[0x1E69C70F0]);
  v12 = v8;
  v13 = MEMORY[0x193ABEC20](v7, v9);
  v14 = [v11 initWithLibrary:v12 function:v13];

  v109 = v10;
  v15 = *(v10 + 16);
  if (!v15)
  {
    return v14;
  }

  v16 = 0;
  v94 = 0;
  v17 = v109 + 32;
  v95 = *MEMORY[0x1E698D3F8];
  v108 = v6;
  v100 = v14;
  v103 = v109 + 32;
  v104 = v15;
  while (1)
  {
    if (v16 >= *(v109 + 16))
    {
      __break(1u);
LABEL_66:
      __break(1u);
    }

    v23 = v17 + 24 * v16;
    v25 = *v23;
    v24 = *(v23 + 8);
    v26 = *(v23 + 16);
    v27 = *(v23 + 20);
    if (v27 <= 4)
    {
      if (v27 <= 1)
      {
        if (v27)
        {
          *&v119 = v25;
          v42 = v26;
          outlined copy of Shader.Argument.Storage(v25, v24, v26, 1u);
          [v14 setArgumentBytes:&v119 atIndex:v16 type:2 count:1 flags:0];
          v19 = v25;
          v20 = v24;
          v21 = v42;
          v22 = 1;
        }

        else
        {
          LODWORD(v119) = v25;
          v31 = v26;
          outlined copy of Shader.Argument.Storage(v25, v24, v26, 0);
          [v14 setArgumentBytes:&v119 atIndex:v16 type:1 count:1 flags:0];
          v19 = v25;
          v20 = v24;
          v21 = v31;
          v22 = 0;
        }
      }

      else if (v27 == 2)
      {
        *&v119 = v25;
        DWORD2(v119) = v24;
        v18 = v26;
        outlined copy of Shader.Argument.Storage(v25, v24, v26, 2u);
        [v14 setArgumentBytes:&v119 atIndex:v16 type:3 count:1 flags:0];
        v19 = v25;
        v20 = v24;
        v21 = v18;
        v22 = 2;
      }

      else if (v27 == 3)
      {
        *&v119 = v25;
        *(&v119 + 1) = v24;
        v29 = v26;
        outlined copy of Shader.Argument.Storage(v25, v24, v26, 3u);
        [v14 setArgumentBytes:&v119 atIndex:v16 type:4 count:1 flags:0];
        v19 = v25;
        v20 = v24;
        v21 = v29;
        v22 = 3;
      }

      else
      {
        v40 = v25[2];
        v41 = v26;
        outlined copy of Shader.Argument.Storage(v25, v24, v26, 4u);
        [v14 setArgumentBytes:v25 + 4 atIndex:v16 type:1 count:v40 flags:3];
        v19 = v25;
        v20 = v24;
        v21 = v41;
        v22 = 4;
      }

      goto LABEL_4;
    }

    if (v27 <= 7)
    {
      break;
    }

    if (v27 == 8)
    {
      v106 = v24;
      v37 = v107;
      if (v107 != 1)
      {
        v105 = v26;
        v49 = type metadata accessor for Text.Style(0);
        v50 = *(*(v49 - 8) + 56);
        v50(v102, 1, 1, v49);
        v51 = v98;
        v52 = v99;
        v98[2] = 0;
        v101 = v52[6];
        v50(v51 + v101, 1, 1, v49);
        v53 = v52[7];
        v54 = v51 + v52[8];
        *v54 = 520;
        v54[2] = 2;
        *(v51 + v52[9]) = 3;
        *(v51 + v52[10]) = 1;
        *v51 = v37;
        v51[1] = v6;
        outlined copy of EnvironmentValues?(v37);
        outlined copy of Shader.Argument.Storage(v25, v106, v105, 8u);
        outlined copy of EnvironmentValues?(v37);
        outlined assign with take of Text.Style?(v102, v51 + v101);
        *(v51 + v53) = v95;
        (*(*v25 + 80))(&v112, v51);
        outlined destroy of ImageResolutionContext(v51);
        v124[3] = v117[3];
        v124[4] = v117[4];
        v125[0] = v118[0];
        *(v125 + 11) = *(v118 + 11);
        v123 = v116;
        v124[0] = v117[0];
        v124[1] = v117[1];
        v124[2] = v117[2];
        v119 = v112;
        v120 = v113;
        v121 = v114;
        v122 = v115;
        if (BYTE8(v112) > 3u)
        {
          v17 = v103;
          v15 = v104;
          if (BYTE8(v112) == 4)
          {
            outlined destroy of Image.Resolved(&v119);
            outlined consume of Shader.Argument.Storage(v25, v106, v105, 8u);
            v6 = v108;
            outlined consume of EnvironmentValues?(v107);
            v14 = v100;
            goto LABEL_5;
          }

          v56 = v107;
          v6 = v108;
          v14 = v100;
          v57 = v106;
          if (BYTE8(v112) == 255)
          {
            goto LABEL_60;
          }

LABEL_46:
          v116 = v123;
          v117[0] = v124[0];
          *(v117 + 12) = *(v124 + 12);
          v112 = v119;
          v113 = v120;
          v81 = 0.0;
          v114 = v121;
          v115 = v122;
          v82 = 0.0;
          if (*&v120 != 0.0)
          {
            v83 = *&v121;
            if (BYTE8(v121) > 3u)
            {
              v84 = *(&v120 + 1);
            }

            else
            {
              v84 = *&v121;
              v83 = *(&v120 + 1);
            }

            v81 = 1.0 / *&v120 * v83;
            v82 = 1.0 / *&v120 * v84;
          }

          v89.value = GraphicsImage.render(at:prefersMask:)(__PAIR128__(*&v82, *&v81), 0).value;
          if (!v89.value)
          {
            goto LABEL_60;
          }

          isa = v89.value;
        }

        else
        {
          isa = v119;
          if (BYTE8(v112))
          {
            v56 = v107;
            v6 = v108;
            v14 = v100;
            v17 = v103;
            v15 = v104;
            v57 = v106;
            if (BYTE8(v112) == 1)
            {
              LODWORD(v112) = RBImageMakeIOSurface();
              *(&v112 + 1) = v58;
              [v14 setArgumentBytes:&v112 atIndex:v16 type:7 count:1 flags:0];
LABEL_60:
              outlined destroy of Image.Resolved(&v119);
              outlined consume of Shader.Argument.Storage(v25, v57, v105, 8u);
              outlined consume of EnvironmentValues?(v56);
              goto LABEL_5;
            }

            goto LABEL_46;
          }

          outlined init with copy of GraphicsImage(&v119, &v112);
          outlined init with copy of GraphicsImage(&v119, &v112);
          v56 = v107;
          v6 = v108;
          v14 = v100;
          v17 = v103;
          v15 = v104;
          v57 = v106;
        }

        LODWORD(v112) = RBImageMakeCGImage();
        *(&v112 + 1) = v90;
        [v14 setArgumentBytes:&v112 atIndex:v16 type:7 count:1 flags:0];

        outlined destroy of Image.Resolved(&v119);
        outlined consume of Shader.Argument.Storage(v25, v57, v105, 8u);
        outlined consume of EnvironmentValues?(v56);
LABEL_59:

        goto LABEL_5;
      }

      LODWORD(v119) = 0;
      *(&v119 + 1) = 0;
      v38 = v106;
      v39 = v26;
      outlined copy of Shader.Argument.Storage(v25, v106, v26, 8u);
      [v14 setArgumentBytes:&v119 atIndex:v16 type:7 count:1 flags:0];
      v19 = v25;
      v20 = v38;
      v21 = v39;
      v22 = 8;
    }

    else
    {
      v30 = v26;
      if (v27 == 9)
      {
        outlined copy of Shader.Argument.Storage(v25, v24, v26, 9u);
        if (v107 != 1)
        {
          isa = Data._bridgeToObjectiveC()().super.isa;
          [v14 setArgumentData:isa atIndex:v16 type:0 flags:3];
          outlined consume of Shader.Argument.Storage(v25, v24, v30, 9u);
          goto LABEL_59;
        }

        [v14 setArgumentBytes_atIndex_type_count_flags_];
        v19 = v25;
        v20 = v24;
        v21 = v30;
        v22 = 9;
      }

      else
      {
        outlined copy of Shader.Argument.Storage(v25, v24, v26, 0xAu);
        [v14 setArgumentBytes_atIndex_type_count_flags_];
        v19 = v25;
        v20 = v24;
        v21 = v30;
        v22 = 10;
      }
    }

LABEL_4:
    outlined consume of Shader.Argument.Storage(v19, v20, v21, v22);
LABEL_5:
    if (++v16 == v15)
    {
      return v14;
    }
  }

  if (v27 == 5)
  {
    v32 = v24;
    v33 = v107;
    if (v107 == 1)
    {
      v119 = 0uLL;
      v34 = v32;
      v35 = v26;
      outlined copy of Shader.Argument.Storage(v25, v32, v26, 5u);
      v36 = 2143289344;
    }

    else
    {
      *&v119 = v107;
      *(&v119 + 1) = v6;
      v46 = *(*v25 + 120);
      v35 = v26;
      outlined copy of Shader.Argument.Storage(v25, v32, v26, 5u);
      outlined copy of EnvironmentValues?(v33);
      v46(&v110, &v119);
      v17 = v103;
      v6 = v108;
      v47 = v33;
      v34 = v32;
      outlined consume of EnvironmentValues?(v47);
      v119 = v110;
      v36 = v111;
    }

    [v14 setArgumentBytes:&v119 atIndex:v16 type:5 count:1 flags:{0, v94}];
    [v14 setArgumentColorSpace:2 atIndex:v16];
    v15 = v104;
    LODWORD(v48) = v36;
    [v14 setArgumentHeadroom:v16 atIndex:v48];
    v19 = v25;
    v20 = v34;
    v21 = v35;
    v22 = 5;
    goto LABEL_4;
  }

  if (v27 != 6)
  {
    *&v119 = v25;
    v43 = v26;
    *(&v119 + 1) = v24;
    v44 = v26;
    outlined copy of Shader.Argument.Storage(v25, v24, v26, 7u);
    [v14 setArgumentBytes:&v119 atIndex:v16 type:5 count:1 flags:0];
    [v14 setArgumentColorSpace:2 atIndex:v16];
    LODWORD(v45) = v43;
    [v14 setArgumentHeadroom:v16 atIndex:v45];
    v19 = v25;
    v20 = v24;
    v21 = v44;
    v22 = 7;
    goto LABEL_4;
  }

  if (v107 == 1)
  {
    v28 = v26;
    outlined copy of Shader.Argument.Storage(v25, v24, v26, 6u);
    [v14 setArgumentBytes_atIndex_type_count_flags_];
    v19 = v25;
    v20 = v24;
    v21 = v28;
    v22 = 6;
    goto LABEL_4;
  }

  v59 = v25[2];
  if (v59 >> 59)
  {
    goto LABEL_66;
  }

  v60 = v25 + 4;
  v61 = 16 * v59;
  v62 = v26;
  v101 = v25[2];
  outlined copy of Shader.Argument.Storage(v25, v24, v26, 6u);
  v63 = v107;
  outlined copy of EnvironmentValues?(v107);
  v105 = v62;
  isStackAllocationSafe = outlined copy of Shader.Argument.Storage(v25, v24, v62, 6u);
  if (v61 < 1025 || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    v106 = v24;
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v66 = &v94 - v65;
    v67 = v101;
    v96 = v66;
    v97 = v68;
    if (v101)
    {
      v69 = (v66 + 8);
      v70 = v107;
      do
      {
        v71 = *v60++;
        *&v119 = v70;
        *(&v119 + 1) = v6;
        v72 = *(*v71 + 112);

        v73 = v72(&v119);
        v6 = v108;
        v74 = v73;
        v76 = v75;
        v78 = v77;
        v80 = v79;

        *(v69 - 2) = v74;
        *(v69 - 1) = v76;
        *v69 = v78;
        *(v69 + 1) = v80;
        v69 += 4;
        --v67;
      }

      while (v67);
    }

    else
    {
      v70 = v107;
    }

    v14 = v100;
    [v100 setArgumentBytes:v96 atIndex:v16 type:5 count:v101 flags:{3, v94}];
    [v14 setArgumentColorSpace:2 atIndex:v16];
    outlined consume of EnvironmentValues?(v70);
    v85 = v106;
    v86 = v105;
    outlined consume of Shader.Argument.Storage(v25, v106, v105, 6u);
    v87 = v25;
    v88 = v85;
    goto LABEL_51;
  }

  v91 = swift_slowAlloc();
  v92 = v94;
  closure #1 in closure #3 in Shader.makeRBShader(in:)(v91, v101, v25 + 4, v101, v63, v6, v14, v16);
  v94 = v92;
  if (!v92)
  {
    MEMORY[0x193AC4820](v91, -1, -1);
    outlined consume of EnvironmentValues?(v63);
    v86 = v105;
    outlined consume of Shader.Argument.Storage(v25, v24, v105, 6u);
    v87 = v25;
    v88 = v24;
LABEL_51:
    outlined consume of Shader.Argument.Storage(v87, v88, v86, 6u);
    v17 = v103;
    v15 = v104;
    goto LABEL_5;
  }

  result = MEMORY[0x193AC4820](v91, -1, -1);
  __break(1u);
  return result;
}

uint64_t @objc closure #7 in closure #1 in variable initialization expression of static Path.PathBox.bufferCallbacks()
{

  BezierOrder = RBPathStorageGetBezierOrder();

  return BezierOrder;
}

_DWORD *destroy for KeyframeTrackState(_DWORD *result, uint64_t a2)
{
  v2 = ((((*(*(*(a2 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 24;
  if (v2 <= 0x10)
  {
    v2 = 16;
  }

  v3 = v2;
  v4 = *(result + v2);
  if (v4 >= 2 && v3 != 0)
  {
    v4 = *result + 2;
  }

  if (v4 == 1)
  {
    (*(*(*(a2 + 16) - 8) + 8))();
  }

  else if (!v4)
  {
  }

  return result;
}

double _ResolvedKeyframes.duration.getter()
{
  KeyPath = swift_getKeyPath();
  type metadata accessor for _ResolvedKeyframes.Track();
  v1 = type metadata accessor for Array();

  WitnessTable = swift_getWitnessTable();
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for implicit closure #1 in _ResolvedKeyframes.duration.getter, KeyPath, v1, MEMORY[0x1E69E63B0], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v3);

  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = *(v4 + 32);
    v7 = v5 - 1;
    if (v7)
    {
      v8 = (v4 + 40);
      do
      {
        v9 = *v8++;
        v10 = v9;
        if (v6 < v9)
        {
          v6 = v10;
        }

        --v7;
      }

      while (v7);
    }
  }

  else
  {
    v6 = 0.0;
  }

  return v6;
}

uint64_t closure #1 in _ResolvedKeyframes.append<A>(keyPath:path:)(double a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, void, uint64_t, double))
{
  v10 = *a4;
  v11 = swift_modifyAtWritableKeyPath();
  a6(v12, a3, *(v10 + *MEMORY[0x1E69E6CE8] + 8), a5, a1);
  return v11(&v14, 0);
}

double AnimationPath.Element.duration.getter(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for AnimationPath.SpringElement();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - v6;
  v8 = type metadata accessor for AnimationPath.CurveElement();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - v10;
  v12 = *(a1 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v16, v2, a1, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v5 + 32))(v7, v16, v4);
      v18 = *&v7[*(v4 + 52)];
      (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v12 + 8))(v16, a1);
      return 0.0;
    }
  }

  else
  {
    (*(v9 + 32))(v11, v16, v8);
    v18 = *&v11[*(v8 + 36)];
    (*(v9 + 8))(v11, v8);
  }

  return v18;
}