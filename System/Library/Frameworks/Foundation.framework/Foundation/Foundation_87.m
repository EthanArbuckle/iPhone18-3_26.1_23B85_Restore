Swift::Int AttributedString.WritingDirection.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](a1 & 1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance AttributedString.WritingDirection@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AttributedString.WritingDirection.init(from:)(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t _s10Foundation16AttributedStringV09_markdownC09including7options7baseURLACSS_xmAC22MarkdownParsingOptionsVAA0H0VSgtKcAA14AttributeScopeRzlufCAA0L6ScopesO0A10AttributesV_Tt1t4B5@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, int a3@<W2>, NSError *a4@<X3>, NSError *a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, NSError **a9@<X8>)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = static String._copying(_:)();
    v16 = v24;
  }

  else
  {

    v16 = a2;
  }

  if ((v16 & 0x2000000000000000) != 0)
  {

    v30[0] = a1;
    v30[1] = v16 & 0xFFFFFFFFFFFFFFLL;
    v27 = a8;
    v17 = v30;
    v20 = v30 + (HIBYTE(v16) & 0xF);
    v21 = a3 & 0x1FF01;
  }

  else
  {

    if ((a1 & 0x1000000000000000) != 0)
    {
      v17 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v18 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v25 = _StringObject.sharedUTF8.getter();
      v18 = v26;
      v17 = v25;
    }

    v19 = v17 + v18;
    if (v17)
    {
      v20 = v19;
    }

    else
    {
      v20 = 0;
    }

    v27 = a8;
    v21 = a3 & 0x1FF01;
  }

  v22 = v31[3];
  _s10Foundation16AttributedStringV14_parseMarkdown33_4C994178458EBF836D449F281EBCAF0912markdownData9including7options7baseURLAC6result_Sb23hasInflectionAttributestSW_xmAC0E14ParsingOptionsVAA0P0VSgtKAA14AttributeScopeRzlFZAA0W6ScopesO0aT0V_Tt1t4B5(v31, v17, v20, v21, a4, a5, a6 & 1, a7, v27);
  if (v22)
  {

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();

    *a9 = v31[0];
  }

  return result;
}

uint64_t specialized static AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v68 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 20);
  if (*(a1 + 20) > 1u)
  {
    if (*(a1 + 20) == 2)
    {
      return v4 == 2 && v2 == v3;
    }

    if (v4 != 3)
    {
      return 0;
    }

    v10 = *(a2 + 8);
    v50 = *(a2 + 16);
    v11 = *(a1 + 8);
    v62 = HIWORD(v11);
    v12 = *(a1 + 16);
    v56 = HIWORD(v12);
    v60 = HIWORD(*&v2);
    v61 = HIDWORD(v11);
    LODWORD(v66) = *a1;
    v55 = HIDWORD(*&v2);
    WORD2(v66) = WORD2(v2);
    v59 = v11 >> 16;
    WORD3(v66) = HIWORD(v2);
    *(&v66 + 1) = v11;
    v48 = v2;
    v67 = v12;
    v57 = _So9NSDecimala__exponent_getter(&v66);
    *&v66 = v3;
    v63 = HIDWORD(*&v3);
    v53 = v10 >> 16;
    v54 = HIWORD(*&v3);
    v13 = LODWORD(v3);
    *(&v66 + 1) = v10;
    v52 = HIDWORD(v10);
    v67 = v50;
    v14 = _So9NSDecimala__exponent_getter(&v66);
    v15 = LODWORD(v48);
    v16 = HIWORD(v12);
    v17 = HIDWORD(v11);
    v18 = HIWORD(v11);
    v20 = v11 >> 16;
    v19 = v60;
    v21 = v12;
    v22 = v55;
    v23 = v11;
    v51 = v11;
    if (v57 == v14)
    {
      LODWORD(v66) = LODWORD(v48);
      WORD2(v66) = v55;
      WORD3(v66) = v60;
      *(&v66 + 1) = v11;
      v67 = v12;
      LODWORD(v18) = _So9NSDecimala__length_getter(&v66);
      LODWORD(v66) = v13;
      WORD2(v66) = v63;
      WORD3(v66) = v54;
      *(&v66 + 1) = v10;
      v67 = v50;
      v24 = _So9NSDecimala__length_getter(&v66);
      v15 = LODWORD(v48);
      LOWORD(v16) = HIWORD(v12);
      v22 = v55;
      LOWORD(v20) = WORD1(v11);
      v19 = v60;
      v23 = v11;
      v5 = v18 == v24;
      LOWORD(v17) = WORD2(v11);
      LOWORD(v18) = HIWORD(v11);
      if (v5)
      {
        LODWORD(v66) = LODWORD(v48);
        WORD2(v66) = v55;
        WORD3(v66) = v60;
        *(&v66 + 1) = v11;
        v67 = v12;
        LODWORD(v18) = _So9NSDecimala__isNegative_getter(&v66);
        LODWORD(v66) = v13;
        WORD2(v66) = v63;
        WORD3(v66) = v54;
        *(&v66 + 1) = v10;
        v67 = v50;
        isNegative_getter = _So9NSDecimala__isNegative_getter(&v66);
        v15 = LODWORD(v48);
        LOWORD(v16) = HIWORD(v12);
        v22 = v55;
        LOWORD(v20) = WORD1(v11);
        v19 = v60;
        v23 = v11;
        v5 = v18 == isNegative_getter;
        LOWORD(v17) = WORD2(v11);
        LOWORD(v18) = HIWORD(v11);
        if (v5)
        {
          LODWORD(v66) = LODWORD(v48);
          WORD2(v66) = v55;
          WORD3(v66) = v60;
          *(&v66 + 1) = v11;
          v67 = v12;
          LODWORD(v18) = _So9NSDecimala__isCompact_getter(&v66);
          LODWORD(v66) = v13;
          WORD2(v66) = v63;
          WORD3(v66) = v54;
          *(&v66 + 1) = v10;
          v67 = v50;
          isCompact_getter = _So9NSDecimala__isCompact_getter(&v66);
          v15 = LODWORD(v48);
          LOWORD(v16) = HIWORD(v12);
          v22 = v55;
          LOWORD(v20) = WORD1(v11);
          v19 = v60;
          v23 = v11;
          v5 = v18 == isCompact_getter;
          LOWORD(v17) = WORD2(v11);
          LOWORD(v18) = HIWORD(v11);
          if (v5)
          {
            LODWORD(v66) = LODWORD(v48);
            WORD2(v66) = v55;
            WORD3(v66) = v60;
            *(&v66 + 1) = v11;
            v67 = v12;
            LODWORD(v18) = _So9NSDecimala__reserved_getter(&v66);
            LODWORD(v66) = v13;
            WORD2(v66) = v63;
            WORD3(v66) = v54;
            *(&v66 + 1) = v10;
            v67 = v50;
            v27 = _So9NSDecimala__reserved_getter(&v66);
            v15 = LODWORD(v48);
            LOWORD(v16) = HIWORD(v12);
            v22 = v55;
            LOWORD(v20) = WORD1(v11);
            v19 = v60;
            v23 = v11;
            v5 = v18 == v27;
            LOWORD(v17) = WORD2(v11);
            LOWORD(v18) = HIWORD(v11);
            if (v5 && WORD2(v48) == v63 && v60 == v54 && v11 == v10 && WORD1(v11) == WORD1(v10) && WORD2(v11) == WORD2(v10) && v62 == HIWORD(v10) && v12 == v50 && v56 == HIWORD(v50))
            {
              return 1;
            }
          }
        }
      }
    }

    v28 = v13;
    v58 = HIWORD(v10);
    v49 = v10;
    LODWORD(v66) = v15;
    WORD2(v66) = v22;
    WORD3(v66) = v19;
    WORD4(v66) = v23;
    WORD5(v66) = v20;
    WORD6(v66) = v17;
    HIWORD(v66) = v18;
    LOWORD(v67) = v12;
    HIWORD(v67) = v16;
    v29 = v19;
    v30 = v17;
    v31 = v23;
    v32 = v20;
    v33 = v22;
    v34 = v16;
    v35 = v15;
    if (_So9NSDecimala__length_getter(&v66) || (LODWORD(v66) = v35, WORD2(v66) = v33, WORD3(v66) = v29, WORD4(v66) = v31, WORD5(v66) = v32, WORD6(v66) = v30, HIWORD(v66) = v18, LOWORD(v67) = v21, HIWORD(v67) = v34, !_So9NSDecimala__isNegative_getter(&v66)))
    {
      LODWORD(v66) = v28;
      WORD2(v66) = v63;
      WORD3(v66) = v54;
      WORD4(v66) = v49;
      WORD5(v66) = v53;
      WORD6(v66) = v52;
      HIWORD(v66) = v58;
      v67 = v50;
      if (_So9NSDecimala__length_getter(&v66) || (LODWORD(v66) = v28, WORD2(v66) = v63, WORD3(v66) = v54, WORD4(v66) = v49, WORD5(v66) = v53, WORD6(v66) = v52, HIWORD(v66) = v58, v67 = v50, !_So9NSDecimala__isNegative_getter(&v66)))
      {
        LODWORD(v66) = v35;
        WORD2(v66) = v55;
        WORD3(v66) = v60;
        WORD4(v66) = v51;
        WORD5(v66) = v59;
        WORD6(v66) = v61;
        HIWORD(v66) = v62;
        LOWORD(v67) = v21;
        HIWORD(v67) = v56;
        v36 = _So9NSDecimala__isNegative_getter(&v66);
        LODWORD(v66) = v28;
        WORD2(v66) = v63;
        WORD3(v66) = v54;
        WORD4(v66) = v49;
        WORD5(v66) = v53;
        WORD6(v66) = v52;
        HIWORD(v66) = v58;
        v67 = v50;
        if (_So9NSDecimala__isNegative_getter(&v66) >= v36)
        {
          LODWORD(v66) = v35;
          WORD2(v66) = v55;
          WORD3(v66) = v60;
          WORD4(v66) = v51;
          WORD5(v66) = v59;
          WORD6(v66) = v61;
          HIWORD(v66) = v62;
          LOWORD(v67) = v21;
          HIWORD(v67) = v56;
          v37 = _So9NSDecimala__isNegative_getter(&v66);
          LODWORD(v66) = v28;
          WORD2(v66) = v63;
          WORD3(v66) = v54;
          WORD4(v66) = v49;
          WORD5(v66) = v53;
          WORD6(v66) = v52;
          HIWORD(v66) = v58;
          v67 = v50;
          if (v37 >= _So9NSDecimala__isNegative_getter(&v66))
          {
            LODWORD(v66) = v35;
            WORD2(v66) = v55;
            WORD3(v66) = v60;
            WORD4(v66) = v51;
            WORD5(v66) = v59;
            WORD6(v66) = v61;
            HIWORD(v66) = v62;
            LOWORD(v67) = v21;
            HIWORD(v67) = v56;
            if (_So9NSDecimala__length_getter(&v66))
            {
              LODWORD(v66) = v28;
              WORD2(v66) = v63;
              WORD3(v66) = v54;
              WORD4(v66) = v49;
              WORD5(v66) = v53;
              WORD6(v66) = v52;
              HIWORD(v66) = v58;
              v67 = v50;
              if (_So9NSDecimala__length_getter(&v66))
              {
                LODWORD(v64) = v35;
                WORD2(v64) = v55;
                WORD3(v64) = v60;
                WORD4(v64) = v51;
                WORD5(v64) = v59;
                WORD6(v64) = v61;
                HIWORD(v64) = v62;
                LOWORD(v65) = v21;
                HIWORD(v65) = v56;
                LODWORD(v66) = v28;
                WORD2(v66) = v63;
                WORD3(v66) = v54;
                WORD4(v66) = v49;
                WORD5(v66) = v53;
                WORD6(v66) = v52;
                HIWORD(v66) = v58;
                v67 = v50;
                specialized static NSDecimal._normalize(a:b:roundingMode:)(&v64, &v66);
                NSDecimal.asVariableLengthInteger()(v64, *(&v64 + 1), v65);
                v39 = v38;
                NSDecimal.asVariableLengthInteger()(v66, *(&v66 + 1), v67);
                v41 = v40;
                v42 = v39;
                v43 = *(v39 + 16);
                v44 = *(v41 + 16);
                if (v44 >= v43)
                {
                  if (v43 < v44)
                  {
LABEL_65:
                    v45 = -1;
                  }

                  else
                  {
                    v45 = 1;
                    while (v43)
                    {
                      v46 = *(v42 + 30 + 2 * v43);
                      v47 = *(v41 + 30 + 2 * v43);
                      if (v47 < v46)
                      {
                        goto LABEL_66;
                      }

                      --v43;
                      if (v46 < v47)
                      {
                        goto LABEL_65;
                      }
                    }

                    v45 = 0;
                  }
                }

                else
                {
                  v45 = 1;
                }

LABEL_66:

                if (_So9NSDecimala__isNegative_getter(&v64))
                {
                  v45 = qword_181231A30[v45 + 1];
                }
              }

              else
              {
                LODWORD(v66) = v35;
                WORD2(v66) = v55;
                WORD3(v66) = v60;
                WORD4(v66) = v51;
                WORD5(v66) = v59;
                WORD6(v66) = v61;
                HIWORD(v66) = v62;
                LOWORD(v67) = v21;
                HIWORD(v67) = v56;
                v45 = _So9NSDecimala__length_getter(&v66) != 0;
              }
            }

            else
            {
              LODWORD(v66) = v28;
              WORD2(v66) = v63;
              WORD3(v66) = v54;
              WORD4(v66) = v49;
              WORD5(v66) = v53;
              WORD6(v66) = v52;
              HIWORD(v66) = v58;
              v67 = v50;
              if (_So9NSDecimala__length_getter(&v66))
              {
                v45 = -1;
              }

              else
              {
                v45 = 0;
              }
            }

            return v45 == 0;
          }
        }
      }
    }

    else
    {
      LODWORD(v66) = v28;
      WORD2(v66) = v63;
      WORD3(v66) = v54;
      WORD4(v66) = v49;
      WORD5(v66) = v53;
      WORD6(v66) = v52;
      HIWORD(v66) = v58;
      v67 = v50;
      if (!_So9NSDecimala__length_getter(&v66))
      {
        LODWORD(v66) = v28;
        WORD2(v66) = v63;
        WORD3(v66) = v54;
        WORD4(v66) = v49;
        WORD5(v66) = v53;
        WORD6(v66) = v52;
        HIWORD(v66) = v58;
        v67 = v50;
        if (_So9NSDecimala__isNegative_getter(&v66))
        {
          v45 = 0;
          return v45 == 0;
        }
      }
    }

    v45 = -1;
    return v45 == 0;
  }

  if (*(a2 + 20))
  {
    v5 = 0;
  }

  else
  {
    v5 = *&v2 == *&v3;
  }

  v6 = v5;
  v8 = v4 == 1 && *&v2 == *&v3;
  if (*(a1 + 20))
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t specialized AttributedString.WritingDirection.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v20 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation16AttributedStringV16WritingDirectionO10CodingKeys33_163072BBDC91CE21DC09F272FDEEA67DLLOGMd);
  v21 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - v9;
  v11 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  lazy protocol witness table accessor for type AttributedString.WritingDirection.CodingKeys and conformance AttributedString.WritingDirection.CodingKeys();
  v12 = v22;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    goto LABEL_7;
  }

  v22 = a1;
  v13 = KeyedDecodingContainer.allKeys.getter();
  v11 = v13;
  if (*(v13 + 16) != 1)
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v17 = &type metadata for AttributedString.WritingDirection;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6AF8], v15);
    swift_willThrow();
    (*(v21 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v22;
LABEL_7:
    __swift_destroy_boxed_opaque_existential_1(a1);
    return v11;
  }

  v19 = v13;
  v11 = *(v13 + 32);
  if (v11)
  {
    v24 = 1;
    lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v14 = v21;
    (*(v20 + 8))(v4, v2);
  }

  else
  {
    v23 = 0;
    lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v14 = v21;
    (*(v20 + 8))(v7, v2);
  }

  (*(v14 + 8))(v10, v8);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v11;
}

uint64_t specialized static AttributeScopes.FoundationAttributes.ListItemDelimiterAttribute.decode(from:)(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    if (String.count.getter() == 1)
    {
      v2 = String.subscript.getter();

      __swift_destroy_boxed_opaque_existential_1(v7);
    }

    else
    {

      v3 = type metadata accessor for DecodingError();
      swift_allocError();
      v5 = v4;
      v2 = __swift_project_boxed_opaque_existential_1(v7, v8);
      dispatch thunk of SingleValueDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6B00], v3);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v7);
    }
  }

  return v2;
}

id specialized static AttributeScopes.FoundationAttributes.ListItemDelimiterAttribute.value(for:)(void *a1)
{
  isTaggedPointer = _objc_isTaggedPointer(a1);
  v3 = a1;
  v4 = v3;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v3);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_19;
        }

        goto LABEL_6;
      }

      result = [v4 UTF8String];
      if (!result)
      {
        __break(1u);
        goto LABEL_86;
      }

      String.init(utf8String:)(result);
      if (v9)
      {
        goto LABEL_7;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v10)
    {
      goto LABEL_7;
    }

    [v4 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    goto LABEL_19;
  }

LABEL_6:
  LOBYTE(v49) = 0;
  if (__CFStringIsCF())
  {
LABEL_7:

    goto LABEL_19;
  }

  v6 = v4;
  String.init(_nativeStorage:)();
  if (!v7 && [v6 length])
  {
    String.init(_cocoaString:)();
  }

  else
  {
  }

LABEL_19:
  if (String.count.getter() == 1)
  {
    v11 = String.subscript.getter();

    return v11;
  }

  v12 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v13 = @"NSCocoaErrorDomain";
  v14 = v13;
  if (v12)
  {
    v15 = _objc_getTaggedPointerTag(v13);
    if (!v15)
    {
LABEL_33:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (v19)
      {
        goto LABEL_27;
      }

      [(__CFString *)v14 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_39;
    }

    if (v15 != 22)
    {
      if (v15 == 2)
      {
        MEMORY[0x1EEE9AC00](v15);
        String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        goto LABEL_39;
      }

      goto LABEL_26;
    }

    result = [(__CFString *)v14 UTF8String];
    if (result)
    {
      String.init(utf8String:)(result);
      if (v18)
      {
        goto LABEL_27;
      }

      __break(1u);
      goto LABEL_33;
    }

LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

LABEL_26:
  LOBYTE(v49) = 0;
  if (__CFStringIsCF())
  {
LABEL_27:

    goto LABEL_39;
  }

  v16 = v14;
  String.init(_nativeStorage:)();
  if (!v17 && [(__CFString *)v16 length])
  {
    String.init(_cocoaString:)();
  }

  else
  {
  }

LABEL_39:
  v20 = objc_allocWithZone(NSError);
  v21 = String._bridgeToObjectiveCImpl()();

  v22 = [v20 initWithDomain:v21 code:4866 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = [v22 domain];
  if (!v23)
  {
LABEL_49:
    v29 = 0;
    v31 = 0xE000000000000000;
    goto LABEL_60;
  }

  v24 = v23;
  v25 = _objc_isTaggedPointer(v23);
  v26 = v24;
  v27 = v26;
  if ((v25 & 1) == 0)
  {
    goto LABEL_45;
  }

  v28 = _objc_getTaggedPointerTag(v26);
  if (!v28)
  {
    goto LABEL_53;
  }

  if (v28 != 22)
  {
    if (v28 == 2)
    {
      MEMORY[0x1EEE9AC00](v28);
      v29 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v31 = v30;

LABEL_60:
      v38 = v14;
      v39 = v38;
      if (!v12)
      {
        goto LABEL_65;
      }

      v40 = _objc_getTaggedPointerTag(v38);
      if (!v40)
      {
        goto LABEL_72;
      }

      if (v40 != 22)
      {
        if (v40 == 2)
        {
          MEMORY[0x1EEE9AC00](v40);
          v11 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v42 = v41;

          goto LABEL_78;
        }

LABEL_65:
        if (__CFStringIsCF())
        {
          v11 = 0;

          v42 = 0xE000000000000000;
        }

        else
        {
          v43 = v39;
          v44 = String.init(_nativeStorage:)();
          if (v45)
          {
            v11 = v44;
            v42 = v45;
          }

          else if ([(__CFString *)v43 length])
          {
            v11 = String.init(_cocoaString:)();
            v42 = v48;
          }

          else
          {

            v11 = 0;
            v42 = 0xE000000000000000;
          }
        }

        goto LABEL_78;
      }

      result = [(__CFString *)v39 UTF8String];
      if (result)
      {
        v46 = String.init(utf8String:)(result);
        if (v47)
        {
          goto LABEL_73;
        }

        __break(1u);
LABEL_72:
        _CFIndirectTaggedPointerStringGetContents();
        v46 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (!v47)
        {
          [(__CFString *)v39 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v11 = v49;
          v42 = v50;
LABEL_78:
          if (v29 == v11 && v31 == v42)
          {
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if ((v11 & 1) == 0)
            {
              __break(1u);
            }
          }

          swift_willThrow();
          return v11;
        }

LABEL_73:
        v11 = v46;
        v42 = v47;

        goto LABEL_78;
      }

      goto LABEL_87;
    }

LABEL_45:
    LOBYTE(v49) = 0;
    if (__CFStringIsCF())
    {

      goto LABEL_49;
    }

    v32 = v27;
    v33 = String.init(_nativeStorage:)();
    if (v34)
    {
      v29 = v33;
      v31 = v34;

      goto LABEL_60;
    }

    if (![v32 length])
    {

      goto LABEL_49;
    }

    v29 = String.init(_cocoaString:)();
    v31 = v37;
LABEL_59:

    goto LABEL_60;
  }

  result = [v27 UTF8String];
  if (result)
  {
    v35 = String.init(utf8String:)(result);
    if (v36)
    {
LABEL_54:
      v29 = v35;
      v31 = v36;

      goto LABEL_59;
    }

    __break(1u);
LABEL_53:
    _CFIndirectTaggedPointerStringGetContents();
    v35 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v36)
    {
      [v27 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v29 = v49;
      v31 = v50;
      goto LABEL_59;
    }

    goto LABEL_54;
  }

LABEL_88:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LinkAttribute and conformance AttributeScopes.FoundationAttributes.LinkAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type InflectionRule and conformance InflectionRule()
{
  result = lazy protocol witness table cache variable for type InflectionRule and conformance InflectionRule;
  if (!lazy protocol witness table cache variable for type InflectionRule and conformance InflectionRule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InflectionRule and conformance InflectionRule);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type InflectionRule and conformance InflectionRule;
  if (!lazy protocol witness table cache variable for type InflectionRule and conformance InflectionRule)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InflectionRule and conformance InflectionRule);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value and conformance AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value and conformance AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value and conformance AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value and conformance AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value and conformance AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value and conformance AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value and conformance AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PersonNameComponentAttribute and conformance AttributeScopes.FoundationAttributes.PersonNameComponentAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.NumberPartAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute and conformance AttributeScopes.FoundationAttributes.NumberFormatAttributes.SymbolAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DateFieldAttribute and conformance AttributeScopes.FoundationAttributes.DateFieldAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.PresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.PresentationIntentAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.PresentationIntentAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.PresentationIntentAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.PresentationIntentAttribute and conformance AttributeScopes.FoundationAttributes.PresentationIntentAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.MarkdownSourcePositionAttribute and conformance AttributeScopes.FoundationAttributes.MarkdownSourcePositionAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MarkdownSourcePositionAttribute and conformance AttributeScopes.FoundationAttributes.MarkdownSourcePositionAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MarkdownSourcePositionAttribute and conformance AttributeScopes.FoundationAttributes.MarkdownSourcePositionAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MarkdownSourcePositionAttribute and conformance AttributeScopes.FoundationAttributes.MarkdownSourcePositionAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.MarkdownSourcePosition and conformance AttributedString.MarkdownSourcePosition()
{
  result = lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition and conformance AttributedString.MarkdownSourcePosition;
  if (!lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition and conformance AttributedString.MarkdownSourcePosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition and conformance AttributedString.MarkdownSourcePosition);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition and conformance AttributedString.MarkdownSourcePosition;
  if (!lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition and conformance AttributedString.MarkdownSourcePosition)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.MarkdownSourcePosition and conformance AttributedString.MarkdownSourcePosition);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ImageURLAttribute and conformance AttributeScopes.FoundationAttributes.ImageURLAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ImageURLAttribute and conformance AttributeScopes.FoundationAttributes.ImageURLAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ImageURLAttribute and conformance AttributeScopes.FoundationAttributes.ImageURLAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ImageURLAttribute and conformance AttributeScopes.FoundationAttributes.ImageURLAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.MeasurementAttribute and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.MeasurementAttribute and conformance AttributeScopes.FoundationAttributes.MeasurementAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.ByteCountAttribute and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.ByteCountAttribute and conformance AttributeScopes.FoundationAttributes.ByteCountAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.DurationFieldAttribute and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.DurationFieldAttribute and conformance AttributeScopes.FoundationAttributes.DurationFieldAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.WritingDirectionAttribute and conformance AttributeScopes.FoundationAttributes.WritingDirectionAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributedString.WritingDirection and conformance AttributedString.WritingDirection()
{
  result = lazy protocol witness table cache variable for type AttributedString.WritingDirection and conformance AttributedString.WritingDirection;
  if (!lazy protocol witness table cache variable for type AttributedString.WritingDirection and conformance AttributedString.WritingDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.WritingDirection and conformance AttributedString.WritingDirection);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AttributedString.WritingDirection and conformance AttributedString.WritingDirection;
  if (!lazy protocol witness table cache variable for type AttributedString.WritingDirection and conformance AttributedString.WritingDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributedString.WritingDirection and conformance AttributedString.WritingDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateArgumentAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateArgumentAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateArgumentAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateArgumentAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateIntervalArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateIntervalArgumentAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateIntervalArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateIntervalArgumentAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateIntervalArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateIntervalArgumentAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateIntervalArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedDateIntervalArgumentAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedURLArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedURLArgumentAttribute()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedURLArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedURLArgumentAttribute;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedURLArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedURLArgumentAttribute)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedURLArgumentAttribute and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedURLArgumentAttribute);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [AttributedString.WritingDirection] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [AttributedString.WritingDirection] and conformance [A];
  if (!lazy protocol witness table cache variable for type [AttributedString.WritingDirection] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation16AttributedStringV16WritingDirectionOGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [AttributedString.WritingDirection] and conformance [A]);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AttributeScopes.FoundationAttributes.ByteCountAttribute.Component(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_20;
  }

  v2 = a2 + 11;
  if (a2 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 11;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 11;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 9)
  {
    v8 = v7 - 8;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 4)
  {
    return v8 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AttributeScopes.FoundationAttributes.ByteCountAttribute.Component(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 11;
  if (a3 + 11 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF5)
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for AttributeScopes.FoundationAttributes.ByteCountAttribute.Component(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 9)
  {
    return v1 - 8;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for AttributeScopes.FoundationAttributes.ByteCountAttribute.Component(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 8;
  }

  return result;
}

__n128 __swift_memcpy21_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 21))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 20);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 20) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value.Format and conformance AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value.Format()
{
  result = lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value.Format and conformance AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value.Format;
  if (!lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value.Format and conformance AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value.Format)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value.Format and conformance AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.Value.Format);
  }

  return result;
}

uint64_t specialized AttributeScopes.FoundationAttributes.ByteCountAttribute.Component.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6176 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4F64656C6C657073 && a2 == 0xEF65756C61567475 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x79426C6175746361 && a2 == 0xEF746E756F436574)
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

uint64_t specialized AttributeScopes.FoundationAttributes.ByteCountAttribute.Unit.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702132066 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 25195 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 25197 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 25191 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 25204 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 25200 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 25189 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 25210 && a2 == 0xE200000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 25209 && a2 == 0xE200000000000000)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t specialized AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953393013 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7630441 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C616D69636564 && a2 == 0xE700000000000000)
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

char *partial apply for specialized closure #2 in static AttributeScope.scopeDescription.getter(uint64_t a1)
{
  return specialized closure #2 in static AttributeScope.scopeDescription.getter(a1, *(v1 + 16), *(v1 + 24), &type metadata for AttributeScopes.FoundationAttributes.NumberFormatAttributes);
}

{
  return specialized closure #2 in static AttributeScope.scopeDescription.getter(a1, *(v1 + 16), *(v1 + 24));
}

{
  return specialized closure #2 in static AttributeScope.scopeDescription.getter(a1, *(v1 + 16), *(v1 + 24), &type metadata for AttributeScopes.FoundationAttributes);
}

uint64_t Calendar.ComponentSet.set.getter()
{
  v1 = *v0;
  v4 = MEMORY[0x1E69E7CD0];
  if (v1)
  {
    specialized Set._Variant.insert(_:)(&v3, 0);
    if ((v1 & 2) == 0)
    {
LABEL_3:
      if ((v1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_24;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_3;
  }

  specialized Set._Variant.insert(_:)(&v3, 1);
  if ((v1 & 4) == 0)
  {
LABEL_4:
    if ((v1 & 8) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_25;
  }

LABEL_24:
  specialized Set._Variant.insert(_:)(&v3, 2);
  if ((v1 & 8) == 0)
  {
LABEL_5:
    if ((v1 & 0x10) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_26;
  }

LABEL_25:
  specialized Set._Variant.insert(_:)(&v3, 3);
  if ((v1 & 0x10) == 0)
  {
LABEL_6:
    if ((v1 & 0x20) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_27;
  }

LABEL_26:
  specialized Set._Variant.insert(_:)(&v3, 4);
  if ((v1 & 0x20) == 0)
  {
LABEL_7:
    if ((v1 & 0x40) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_28;
  }

LABEL_27:
  specialized Set._Variant.insert(_:)(&v3, 5);
  if ((v1 & 0x40) == 0)
  {
LABEL_8:
    if ((v1 & 0x80) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_29;
  }

LABEL_28:
  specialized Set._Variant.insert(_:)(&v3, 6);
  if ((v1 & 0x80) == 0)
  {
LABEL_9:
    if ((v1 & 0x100) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_30;
  }

LABEL_29:
  specialized Set._Variant.insert(_:)(&v3, 7);
  if ((v1 & 0x100) == 0)
  {
LABEL_10:
    if ((v1 & 0x200) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_31;
  }

LABEL_30:
  specialized Set._Variant.insert(_:)(&v3, 8);
  if ((v1 & 0x200) == 0)
  {
LABEL_11:
    if ((v1 & 0x400) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_32;
  }

LABEL_31:
  specialized Set._Variant.insert(_:)(&v3, 9);
  if ((v1 & 0x400) == 0)
  {
LABEL_12:
    if ((v1 & 0x800) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_33;
  }

LABEL_32:
  specialized Set._Variant.insert(_:)(&v3, 10);
  if ((v1 & 0x800) == 0)
  {
LABEL_13:
    if ((v1 & 0x1000) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_34;
  }

LABEL_33:
  specialized Set._Variant.insert(_:)(&v3, 11);
  if ((v1 & 0x1000) == 0)
  {
LABEL_14:
    if ((v1 & 0x2000) == 0)
    {
      goto LABEL_15;
    }

    goto LABEL_35;
  }

LABEL_34:
  specialized Set._Variant.insert(_:)(&v3, 12);
  if ((v1 & 0x2000) == 0)
  {
LABEL_15:
    if ((v1 & 0x4000) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_36;
  }

LABEL_35:
  specialized Set._Variant.insert(_:)(&v3, 13);
  if ((v1 & 0x4000) == 0)
  {
LABEL_16:
    if ((v1 & 0x8000) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_37;
  }

LABEL_36:
  specialized Set._Variant.insert(_:)(&v3, 14);
  if ((v1 & 0x8000) == 0)
  {
LABEL_17:
    if ((v1 & 0x10000) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_38;
  }

LABEL_37:
  specialized Set._Variant.insert(_:)(&v3, 15);
  if ((v1 & 0x10000) == 0)
  {
LABEL_18:
    if ((v1 & 0x80000) == 0)
    {
      goto LABEL_19;
    }

LABEL_39:
    specialized Set._Variant.insert(_:)(&v3, 17);
    if ((v1 & 0x40000) == 0)
    {
      return v4;
    }

    goto LABEL_20;
  }

LABEL_38:
  specialized Set._Variant.insert(_:)(&v3, 16);
  if ((v1 & 0x80000) != 0)
  {
    goto LABEL_39;
  }

LABEL_19:
  if ((v1 & 0x40000) != 0)
  {
LABEL_20:
    specialized Set._Variant.insert(_:)(&v3, 18);
  }

  return v4;
}

uint64_t Calendar.firstWeekday.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 56))(ObjectType, v1);
}

uint64_t Calendar.minimumDaysInFirstWeek.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 72))(ObjectType, v1);
}

uint64_t Calendar.minimumDaysInFirstWeek.setter(uint64_t a1)
{
  v2 = v1;
  v4 = v1[1];
  ObjectType = swift_getObjectType();
  result = (*(v4 + 72))(ObjectType, v4);
  if (result != a1)
  {
    v11[0] = 0;
    v11[1] = 0;
    v10[0] = 0;
    v10[1] = 0;
    v7 = (*(v4 + 112))(v11, v10, 0, 1, a1, 0, ObjectType, v4);
    v9 = v8;
    result = swift_unknownObjectRelease();
    *v2 = v7;
    v2[1] = v9;
  }

  return result;
}

uint64_t Calendar.minimumRange(of:)(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = v2;
  return (*(v3 + 128))(&v6, ObjectType, v3);
}

uint64_t Calendar.maximumRange(of:)(char *a1)
{
  v2 = *a1;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v6 = v2;
  return (*(v3 + 136))(&v6, ObjectType, v3);
}

uint64_t Calendar.range(of:in:for:)(char *a1, char *a2, double *a3)
{
  v4 = *a2;
  v5 = *a3;
  v6 = *(v3 + 8);
  v13 = *a1;
  v12 = v4;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v7 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v5)
  {
    v7 = v5;
  }

  if (*&static Date.validCalendarRange >= v7)
  {
    v8 = *&static Date.validCalendarRange;
  }

  else
  {
    v8 = v7;
  }

  ObjectType = swift_getObjectType();
  v11 = v8;
  return (*(v6 + 144))(&v13, &v12, &v11, ObjectType, v6);
}

Swift::Int_optional __swiftcall Calendar.ordinality(of:in:for:)(Foundation::Calendar::Component of, Foundation::Calendar::Component in, Foundation::Date a3)
{
  v5 = *in;
  v6 = *v3;
  v7 = *(v4 + 8);
  v16 = *of;
  v15 = v5;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v8 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v8 = v6;
  }

  if (*&static Date.validCalendarRange >= v8)
  {
    v9 = *&static Date.validCalendarRange;
  }

  else
  {
    v9 = v8;
  }

  ObjectType = swift_getObjectType();
  v14 = v9;
  v11 = (*(v7 + 152))(&v16, &v15, &v14, ObjectType, v7);
  v13 = v12 & 1;
  result.value = v11;
  result.is_nil = v13;
  return result;
}

Swift::Bool __swiftcall Calendar.isDateInWeekend(_:)(Foundation::Date a1)
{
  v3 = *v1;
  v4 = *(v2 + 8);
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v5 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v3)
  {
    v5 = v3;
  }

  if (*&static Date.validCalendarRange >= v5)
  {
    v6 = *&static Date.validCalendarRange;
  }

  else
  {
    v6 = v5;
  }

  ObjectType = swift_getObjectType();
  v9 = v6;
  return (*(v4 + 168))(&v9, ObjectType, v4) & 1;
}

Foundation::DateInterval_optional __swiftcall Calendar.nextWeekend(startingAfter:direction:)(Foundation::Date startingAfter, Foundation::Calendar::SearchDirection direction)
{
  v5 = v3;
  v6 = *direction;
  v7 = *v2;
  v9 = *v4;
  v8 = v4[1];
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 32))(v60, ObjectType, v8);
  if (*&v60[0])
  {
    v11 = *(&v60[0] + 1);
  }

  else
  {
    if (one-time initialization token for cache != -1)
    {
      v10 = swift_once();
    }

    v12 = static LocaleCache.cache;
    MEMORY[0x1EEE9AC00](v10);
    os_unfair_lock_lock((v12 + 48));
    closure #1 in LocaleCache.fixed(_:)partial apply((v12 + 16), v59);
    os_unfair_lock_unlock((v12 + 48));
    v11 = v59[1];
  }

  v13 = swift_getObjectType();
  (*(v11 + 336))(v60, v13, v11);
  v14 = swift_unknownObjectRelease();
  if (v60[3])
  {
    *v5 = 0;
    *(v5 + 8) = 0;
    *(v5 + 16) = 1;
    goto LABEL_66;
  }

  v44 = v5;
  v17 = *v60;
  v18 = *&v60[1];
  v42 = BYTE8(v60[1]);
  v43 = BYTE8(v60[0]);
  v19 = v60[2];
  BYTE8(v60[2]) = 1;
  *&v60[3] = 0;
  BYTE8(v60[3]) = 1;
  *&v60[4] = 0;
  BYTE8(v60[4]) = 1;
  *&v60[5] = 0;
  BYTE8(v60[5]) = 1;
  *&v60[6] = 0;
  BYTE8(v60[6]) = 1;
  *&v60[7] = 0;
  BYTE8(v60[7]) = 1;
  *&v60[8] = 0;
  BYTE8(v60[8]) = 1;
  *&v60[9] = 0;
  BYTE8(v60[9]) = 1;
  *&v60[10] = 0;
  BYTE8(v60[10]) = 1;
  *&v60[11] = 0;
  BYTE8(v60[11]) = 1;
  *&v60[12] = 0;
  BYTE8(v60[12]) = 1;
  *&v60[13] = 0;
  BYTE8(v60[13]) = 1;
  *&v60[14] = 0;
  BYTE8(v60[14]) = 1;
  *&v60[15] = 0;
  BYTE8(v60[15]) = 1;
  BYTE8(v60[16]) = 1;
  *&v60[16] = 0;
  *&v60[17] = 0;
  BYTE8(v60[17]) = 1;
  *(&v60[17] + 9) = 514;
  memset(v60, 0, 40);
  v59[1] = 0;
  v59[0] = 0;
  DateComponents.timeZone.setter(v59);
  *&v60[2] = 0;
  BYTE8(v60[2]) = 1;
  *&v60[3] = 0;
  BYTE8(v60[3]) = 1;
  *&v60[4] = 0;
  BYTE8(v60[4]) = 1;
  *&v60[5] = 0;
  BYTE8(v60[5]) = 1;
  *&v60[7] = 0;
  BYTE8(v60[7]) = 1;
  *&v60[8] = 0;
  BYTE8(v60[8]) = 1;
  *&v60[9] = 0;
  BYTE8(v60[9]) = 1;
  *&v60[10] = 0;
  BYTE8(v60[10]) = 1;
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = 0;
  }

  else
  {
    v20 = v19;
  }

  *&v60[11] = v20;
  BYTE8(v60[11]) = v19 == 0x7FFFFFFFFFFFFFFFLL;
  *&v60[12] = 0;
  BYTE8(v60[12]) = 1;
  *&v60[13] = 0;
  BYTE8(v60[13]) = 1;
  *&v60[15] = 0;
  BYTE8(v60[15]) = 1;
  BYTE8(v60[16]) = 1;
  *&v60[16] = 0;
  *&v60[17] = 0;
  BYTE8(v60[17]) = 1;
  *&v60[6] = 0;
  BYTE8(v60[6]) = 1;
  memcpy(v59, v60, 0x11BuLL);
  memcpy(v58, v60, 0x11BuLL);
  *v56 = v9;
  *&v56[8] = v8;
  if (!DateComponents._validate(for:)(v56))
  {
    v14 = outlined destroy of DateComponents(v59);
    v22 = v5;
LABEL_47:
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 1;
    goto LABEL_66;
  }

  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v21 = *&static Date.validCalendarRange;
  v22 = v5;
  if (*&v6 < *&static Date.validCalendarRange || (v23 = *(&static Date.validCalendarRange + 1), *(&static Date.validCalendarRange + 1) < *&v6))
  {
LABEL_45:
    v35 = v59;
LABEL_46:
    v14 = outlined destroy of DateComponents(v35);
    goto LABEL_47;
  }

  v24 = 101;
  v25 = *&v6;
  while (1)
  {
    v55[0] = v9;
    v55[1] = v8;
    v48[0] = v6;
    memcpy(v58, v59, 0x11BuLL);
    LOBYTE(v51) = 0;
    LOBYTE(v49) = 0;
    v57 = v7;
    v46 = v25;
    v52 = 0.0;
    LOBYTE(v53) = 1;
    Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(v48, v58, &v51, &v49, &v57, &v46, &v52, v56);
    if (v56[8] != 2)
    {
      break;
    }

    v25 = *&v56[16];
    if (!--v24)
    {
      v55[0] = v6;
      *v56 = v9;
      *&v56[8] = v8;
      memcpy(v58, v59, 0x11BuLL);
      LOBYTE(v52) = v7;
      LOBYTE(v48[0]) = 0;
      LOBYTE(v46) = 0;
      _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(v55, v56, v58, &v52, v48, &v46);
      goto LABEL_45;
    }
  }

  v26 = *v56;
  if ((v43 & 1) == 0)
  {
    v26 = v17 + *v56;
  }

  LOBYTE(v55[0]) = 3;
  v27 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v26)
  {
    v27 = v26;
  }

  if (*&static Date.validCalendarRange >= v27)
  {
    v27 = *&static Date.validCalendarRange;
  }

  *v56 = v27;
  (*(v8 + 160))(v58, v55, v56, ObjectType, v8);
  if (v58[1])
  {
    v28 = v26 + -1.0;
  }

  else
  {
    v28 = *v58;
  }

  BYTE8(v58[2]) = 1;
  *&v58[3] = 0;
  BYTE8(v58[3]) = 1;
  *&v58[4] = 0;
  BYTE8(v58[4]) = 1;
  *&v58[5] = 0;
  BYTE8(v58[5]) = 1;
  *&v58[6] = 0;
  BYTE8(v58[6]) = 1;
  *&v58[7] = 0;
  BYTE8(v58[7]) = 1;
  *&v58[8] = 0;
  BYTE8(v58[8]) = 1;
  *&v58[9] = 0;
  BYTE8(v58[9]) = 1;
  *&v58[10] = 0;
  BYTE8(v58[10]) = 1;
  *&v58[11] = 0;
  BYTE8(v58[11]) = 1;
  *&v58[12] = 0;
  BYTE8(v58[12]) = 1;
  *&v58[13] = 0;
  BYTE8(v58[13]) = 1;
  *&v58[14] = 0;
  BYTE8(v58[14]) = 1;
  *&v58[15] = 0;
  BYTE8(v58[15]) = 1;
  BYTE8(v58[16]) = 1;
  *&v58[16] = 0;
  *&v58[17] = 0;
  BYTE8(v58[17]) = 1;
  *(&v58[17] + 9) = 514;
  memset(v58, 0, 40);
  *v56 = 0;
  *&v56[8] = 0;
  DateComponents.timeZone.setter(v56);
  *&v58[2] = 0;
  BYTE8(v58[2]) = 1;
  *&v58[3] = 0;
  BYTE8(v58[3]) = 1;
  *&v58[4] = 0;
  BYTE8(v58[4]) = 1;
  *&v58[5] = 0;
  BYTE8(v58[5]) = 1;
  *&v58[7] = 0;
  BYTE8(v58[7]) = 1;
  *&v58[8] = 0;
  BYTE8(v58[8]) = 1;
  *&v58[9] = 0;
  BYTE8(v58[9]) = 1;
  *&v58[10] = 0;
  BYTE8(v58[10]) = 1;
  if (*(&v19 + 1) == 0x7FFFFFFFFFFFFFFFLL)
  {
    v29 = 0;
  }

  else
  {
    v29 = *(&v19 + 1);
  }

  *&v58[11] = v29;
  BYTE8(v58[11]) = *(&v19 + 1) == 0x7FFFFFFFFFFFFFFFLL;
  *&v58[12] = 0;
  BYTE8(v58[12]) = 1;
  *&v58[13] = 0;
  BYTE8(v58[13]) = 1;
  *&v58[15] = 0;
  BYTE8(v58[15]) = 1;
  BYTE8(v58[16]) = 1;
  *&v58[16] = 0;
  *&v58[17] = 0;
  BYTE8(v58[17]) = 1;
  *&v58[6] = 0;
  BYTE8(v58[6]) = 1;
  memcpy(v56, v58, sizeof(v56));
  v30 = v28;
  if (v19 == *(&v19 + 1))
  {
    goto LABEL_34;
  }

  memcpy(v55, v58, 0x11BuLL);
  v52 = *&v9;
  v53 = v8;
  if (!DateComponents._validate(for:)(&v52) || v28 < v21 || v23 < v28)
  {
    outlined destroy of DateComponents(v56);
    goto LABEL_45;
  }

  v39 = 101;
  v40 = v28;
  while (1)
  {
    v48[0] = v9;
    v48[1] = v8;
    v51 = *&v28;
    memcpy(v55, v56, 0x11BuLL);
    v57 = 0;
    v50 = 0;
    v49 = v40;
    v46 = 0.0;
    v47 = 1;
    Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(&v51, v55, &v57, &v50 + 1, &v50, &v49, &v46, &v52);
    if (v53 != 2)
    {
      break;
    }

    v40 = v54;
    if (!--v39)
    {
      *v48 = v28;
      v52 = *&v9;
      v53 = v8;
      memcpy(v55, v56, 0x11BuLL);
      LOBYTE(v46) = 0;
      LOBYTE(v51) = 0;
      LOBYTE(v49) = 0;
      _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(v48, &v52, v55, &v46, &v51, &v49);
      outlined destroy of DateComponents(v59);
      v35 = v56;
      goto LABEL_46;
    }
  }

  v30 = v52;
LABEL_34:
  if (v42 & 1 | (v18 <= 0.0))
  {
    LOBYTE(v48[0]) = 3;
    v31 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v30)
    {
      v31 = v30;
    }

    if (*&static Date.validCalendarRange >= v31)
    {
      v31 = *&static Date.validCalendarRange;
    }

    v52 = v31;
    v32 = *(v8 + 160);
    v32(v55, v48, &v52, ObjectType, v8);
    v34 = v55[0];
    v33 = v55[1];
    if (v55[2])
    {
      outlined destroy of DateComponents(v56);
      v14 = outlined destroy of DateComponents(v59);
      *v44 = v34;
      *(v44 + 8) = v33;
      *(v44 + 16) = 1;
      goto LABEL_66;
    }

    v37 = *v55 + *&v55[1];
    LOBYTE(v48[0]) = 3;
    v38 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= *v55 + *&v55[1])
    {
      v38 = *v55 + *&v55[1];
    }

    if (*&static Date.validCalendarRange >= v38)
    {
      v38 = *&static Date.validCalendarRange;
    }

    v52 = v38;
    v32(v55, v48, &v52, ObjectType, v8);
    if (v55[2])
    {
      outlined destroy of DateComponents(v56);
      v14 = outlined destroy of DateComponents(v59);
      v36 = v37 + -1.0;
    }

    else
    {
      v36 = *v55;
      outlined destroy of DateComponents(v56);
      v14 = outlined destroy of DateComponents(v59);
    }

    v22 = v44;
  }

  else
  {
    outlined destroy of DateComponents(v56);
    v14 = outlined destroy of DateComponents(v59);
    v36 = v18 + v30;
  }

  if (v36 < v28)
  {
    __break(1u);
    for (i = v48[0]; ; i = v51)
    {

      _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }
  }

  v15 = v36 - v28;
  *v22 = v28;
  *(v22 + 8) = v36 - v28;
  *(v22 + 16) = 0;
LABEL_66:
  result.value.duration = v16;
  result.value.start._time = v15;
  result.is_nil = v14;
  return result;
}

uint64_t Calendar.date(_:matchesComponents:)(double *a1, const void *a2)
{
  v3 = 0;
  v136 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  memcpy(v135, a2, 0x11BuLL);
  v5 = v2[1];
  v86 = *v2;
  v87 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
  v6 = static _SetStorage.allocate(capacity:)();
  v7 = v6 + 56;
  v8 = -1;
  v83 = 0;
  do
  {
    v12 = outlined read-only object #0 of Calendar.date(_:matchesComponents:)[v3 + 32];
    Hasher.init(_seed:)();
    MEMORY[0x1865CD060](v12);
    v13 = Hasher._finalize()();
    v14 = ~(-1 << *(v6 + 32));
    v15 = v13 & v14;
    v16 = (v13 & v14) >> 6;
    v17 = *(v7 + 8 * v16);
    v18 = 1 << (v13 & v14);
    v19 = *(v6 + 48);
    if ((v18 & v17) != 0)
    {
      while (*(v19 + v15) != v12)
      {
        v15 = (v15 + 1) & v14;
        v16 = v15 >> 6;
        v17 = *(v7 + 8 * (v15 >> 6));
        v18 = 1 << v15;
        if (((1 << v15) & v17) == 0)
        {
          goto LABEL_2;
        }
      }
    }

    else
    {
LABEL_2:
      *(v7 + 8 * v16) = v18 | v17;
      *(v19 + v15) = v12;
      v9 = *(v6 + 16);
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
LABEL_110:
        __break(1u);
        goto LABEL_111;
      }

      *(v6 + 16) = v11;
    }

    ++v3;
  }

  while (v3 != 15);
  v8 = &v82;
  MEMORY[0x1EEE9AC00](v13);
  v81[2] = v135;
  v21 = *(v6 + 32);
  v84 = ((1 << v21) + 63) >> 6;
  if ((v21 & 0x3Fu) > 0xD)
  {
    goto LABEL_113;
  }

  while (1)
  {
    v85 = v81;
    MEMORY[0x1EEE9AC00](v20);
    v23 = (v81 - ((v22 + 15) & 0x3FFFFFFFFFFFFFF0));
    bzero(v23, v22);
    v24 = 0;
    v25 = 0;
    v26 = 1 << *(v6 + 32);
    v27 = -1;
    v28 = BYTE8(v135[6]);
    v29 = BYTE8(v135[10]);
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v30 = *(v6 + 56) & v27;
    v31 = BYTE8(v135[17]);
    v32 = (v26 + 63) >> 6;
    v33 = BYTE8(v135[16]);
    v34 = BYTE8(v135[15]);
    v35 = BYTE8(v135[13]);
    v36 = BYTE8(v135[12]);
    v37 = BYTE8(v135[11]);
    v38 = BYTE8(v135[9]);
    v39 = BYTE8(v135[8]);
    v40 = BYTE8(v135[7]);
    v41 = BYTE8(v135[5]);
    v42 = BYTE8(v135[4]);
    v43 = BYTE8(v135[3]);
    v44 = BYTE8(v135[2]);
    do
    {
      while (2)
      {
        if (!v30)
        {
          v46 = v25;
          while (1)
          {
            v25 = v46 + 1;
            if (__OFADD__(v46, 1))
            {
              break;
            }

            if (v25 >= v32)
            {
              goto LABEL_53;
            }

            v47 = *(v7 + 8 * v25);
            ++v46;
            if (v47)
            {
              v45 = __clz(__rbit64(v47));
              v30 = (v47 - 1) & v47;
              goto LABEL_20;
            }
          }

          __break(1u);
          goto LABEL_110;
        }

        v45 = __clz(__rbit64(v30));
        v30 &= v30 - 1;
LABEL_20:
        v48 = v45 | (v25 << 6);
        switch(*(*(v6 + 48) + v48))
        {
          case 1:
            if (v43)
            {
              continue;
            }

            break;
          case 2:
            if (v42)
            {
              continue;
            }

            break;
          case 3:
            if (v41)
            {
              continue;
            }

            break;
          case 4:
            if (v40)
            {
              continue;
            }

            break;
          case 5:
            if (v39)
            {
              continue;
            }

            break;
          case 6:
            if (v38)
            {
              continue;
            }

            break;
          case 7:
            if (v37)
            {
              continue;
            }

            break;
          case 8:
            if (v36)
            {
              continue;
            }

            break;
          case 9:
            if (v35)
            {
              continue;
            }

            break;
          case 0xA:
            if (v34)
            {
              continue;
            }

            break;
          case 0xB:
            if (v33)
            {
              continue;
            }

            break;
          case 0xC:
            if (v31)
            {
              continue;
            }

            break;
          case 0xD:
            if (v29)
            {
              continue;
            }

            break;
          case 0xE:
          case 0xF:
          case 0x10:
          case 0x11:
            continue;
          case 0x12:
            if (v28)
            {
              continue;
            }

            break;
          default:
            if (v44)
            {
              continue;
            }

            break;
        }

        break;
      }

      *(v23 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
      v10 = __OFADD__(v24++, 1);
    }

    while (!v10);
    __break(1u);
LABEL_53:
    if (!v24)
    {

      v49 = MEMORY[0x1E69E7CD0];
      goto LABEL_77;
    }

    if (v24 == *(v6 + 16))
    {
      v49 = v6;
      goto LABEL_77;
    }

    v82 = v8;
    v49 = static _SetStorage.allocate(capacity:)();
    v50 = 0;
    v8 = *v23;
    v7 = v49 + 56;
    while (v8)
    {
      v52 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_67:
      v55 = *(*(v6 + 48) + (v52 | (v50 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v55);
      v56 = Hasher._finalize()();
      v57 = -1 << *(v49 + 32);
      v58 = v56 & ~v57;
      v59 = v58 >> 6;
      if (((-1 << v58) & ~*(v7 + 8 * (v58 >> 6))) == 0)
      {
        v60 = 0;
        v61 = (63 - v57) >> 6;
        while (++v59 != v61 || (v60 & 1) == 0)
        {
          v62 = v59 == v61;
          if (v59 == v61)
          {
            v59 = 0;
          }

          v60 |= v62;
          v63 = *(v7 + 8 * v59);
          if (v63 != -1)
          {
            v51 = __clz(__rbit64(~v63)) + (v59 << 6);
            goto LABEL_59;
          }
        }

        goto LABEL_112;
      }

      v51 = __clz(__rbit64((-1 << v58) & ~*(v7 + 8 * (v58 >> 6)))) | v58 & 0x7FFFFFFFFFFFFFC0;
LABEL_59:
      *(v7 + ((v51 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v51;
      *(*(v49 + 48) + v51) = v55;
      ++*(v49 + 16);
      if (!--v24)
      {
LABEL_76:

        goto LABEL_77;
      }
    }

    v53 = v50;
    v8 = v82;
    while (1)
    {
      v50 = v53 + 1;
      if (__OFADD__(v53, 1))
      {
        break;
      }

      if (v50 >= v84)
      {
        goto LABEL_76;
      }

      v54 = v23[v50];
      ++v53;
      if (v54)
      {
        v52 = __clz(__rbit64(v54));
        v8 = (v54 - 1) & v54;
        goto LABEL_67;
      }
    }

LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v78 = swift_slowAlloc();

  v79 = v83;
  _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy10Foundation8CalendarV9ComponentOG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab20VKXEfU_10Foundation8j2V9K5O_TG5AMxSbs5Error_pRi_zRi0_zlyALIsgndzo_Tf1nc_n(v78, v84, v6, partial apply for closure #1 in Calendar.date(_:matchesComponents:));
  if (!v79)
  {
    v49 = v80;

    MEMORY[0x1865D2690](v78, -1, -1);
LABEL_77:
    v115[0] = v86;
    v115[1] = v87;
    Calendar.ComponentSet.init(_:)(v49, &v95);
    if (one-time initialization token for validCalendarRange != -1)
    {
      swift_once();
    }

    v64 = *(&static Date.validCalendarRange + 1);
    if (*(&static Date.validCalendarRange + 1) >= v4)
    {
      v64 = v4;
    }

    if (*&static Date.validCalendarRange >= v64)
    {
      v64 = *&static Date.validCalendarRange;
    }

    v94[0] = v64;
    Calendar._dateComponents(_:from:)(&v95, v94, v134);
    v130 = v135[6];
    v131 = v135[7];
    v132 = v135[8];
    v133 = v135[9];
    v126 = v135[2];
    v127 = v135[3];
    v128 = v135[4];
    v129 = v135[5];
    v124 = v135[0];
    v125 = v135[1];
    v65 = *&v135[10];
    v66 = BYTE8(v135[10]);
    v88 = BYTE8(v135[10]);
    v120 = *(&v135[14] + 9);
    v121 = *(&v135[15] + 9);
    v122 = *(&v135[16] + 9);
    v123 = *(&v135[17] + 9);
    v116 = *(&v135[10] + 9);
    v117 = *(&v135[11] + 9);
    v118 = *(&v135[12] + 9);
    v119 = *(&v135[13] + 9);
    if (BYTE9(v135[17]) == 2)
    {
      outlined init with copy of DateComponents(v135, v115);
    }

    else
    {
      *&v95 = 4;
      v67 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v4)
      {
        v67 = v4;
      }

      if (*&static Date.validCalendarRange >= v67)
      {
        v68 = *&static Date.validCalendarRange;
      }

      else
      {
        v68 = v67;
      }

      ObjectType = swift_getObjectType();
      v94[0] = v68;
      v70 = v87;
      v71 = *(v87 + 192);
      outlined init with copy of DateComponents(v135, v115);
      v71(v115, &v95, v94, ObjectType, v70);
      outlined destroy of DateComponents(v115);
      BYTE1(v134[35]) = BYTE1(v115[35]);
    }

    if (BYTE10(v135[17]) != 2)
    {
      *&v95 = 0x80000;
      v72 = *(&static Date.validCalendarRange + 1);
      if (*(&static Date.validCalendarRange + 1) >= v4)
      {
        v72 = v4;
      }

      if (*&static Date.validCalendarRange >= v72)
      {
        v73 = *&static Date.validCalendarRange;
      }

      else
      {
        v73 = v72;
      }

      v74 = swift_getObjectType();
      v94[0] = v73;
      (*(v87 + 192))(v115, &v95, v94, v74);
      outlined destroy of DateComponents(v115);
      BYTE2(v134[35]) = BYTE2(v115[35]);
    }

    if ((v134[21] & 1) == 0 && (BYTE8(v135[10]) & 1) == 0)
    {
      v75 = v134[20] - *&v135[10];
      if (__OFSUB__(v134[20], *&v135[10]))
      {
        __break(1u);
      }

      if (v75 < 0)
      {
        v75 = *&v135[10] - v134[20];
      }

      if (v75 >= 0x1F5)
      {
        v101 = v130;
        v102 = v131;
        v103 = v132;
        v104 = v133;
        v97 = v126;
        v98 = v127;
        v99 = v128;
        v100 = v129;
        v95 = v124;
        v96 = v125;
        v113 = v122;
        v111 = v120;
        v112 = v121;
        v107 = v116;
        v108 = v117;
        v109 = v118;
        v105 = v65;
        v106 = v66;
        v114 = v123;
        v110 = v119;
        outlined destroy of DateComponents(&v95);
        memcpy(v115, v134, 0x11BuLL);
        outlined destroy of DateComponents(v115);
        return 0;
      }

      v66 = 0;
      v65 = 0;
      v134[20] = 0;
      LOBYTE(v134[21]) = 0;
      v88 = 0;
    }

    v91[6] = v130;
    v91[7] = v131;
    v91[8] = v132;
    v91[9] = v133;
    v91[2] = v126;
    v91[3] = v127;
    v91[4] = v128;
    v91[5] = v129;
    v91[0] = v124;
    v91[1] = v125;
    *(&v91[16] + 9) = v122;
    *(&v91[14] + 9) = v120;
    *(&v91[15] + 9) = v121;
    *(&v91[10] + 9) = v116;
    *(&v91[11] + 9) = v117;
    *(&v91[12] + 9) = v118;
    *&v91[10] = v65;
    BYTE8(v91[10]) = v66;
    *(&v91[17] + 9) = v123;
    *(&v91[13] + 9) = v119;
    memcpy(v90, v91, 0x11BuLL);
    memcpy(v92, v134, 0x11BuLL);
    memcpy(v89, v134, 0x11BuLL);
    outlined init with copy of DateComponents(v91, v115);
    outlined init with copy of DateComponents(v92, v115);
    v76 = specialized static DateComponents.== infix(_:_:)(v90, v89);
    memcpy(v93, v89, 0x11BuLL);
    outlined destroy of DateComponents(v93);
    memcpy(v94, v90, 0x11BuLL);
    outlined destroy of DateComponents(v94);
    v101 = v130;
    v102 = v131;
    v103 = v132;
    v104 = v133;
    v97 = v126;
    v98 = v127;
    v99 = v128;
    v100 = v129;
    v95 = v124;
    v96 = v125;
    v113 = v122;
    v111 = v120;
    v112 = v121;
    v107 = v116;
    v108 = v117;
    v109 = v118;
    v105 = v65;
    v106 = v66;
    v114 = v123;
    v110 = v119;
    outlined destroy of DateComponents(&v95);
    memcpy(v115, v134, 0x11BuLL);
    outlined destroy of DateComponents(v115);
    return v76;
  }

  result = MEMORY[0x1865D2690](v78, -1, -1);
  __break(1u);
  return result;
}

Swift::Bool __swiftcall Calendar.nextWeekend(startingAfter:start:interval:direction:)(Foundation::Date startingAfter, Foundation::Date *start, Swift::Double *interval, Foundation::Calendar::SearchDirection direction)
{
  v5 = direction;
  v7._time = start->_time;
  v12 = *v4;
  time = v7._time;
  Calendar.nextWeekend(startingAfter:direction:)(v7, &time);
  v8 = v15;
  if ((v15 & 1) == 0)
  {
    v9 = v14;
    *interval = v13;
    *v5 = v9;
  }

  return v8 ^ 1;
}

uint64_t Calendar.nextDate(after:matching:matchingPolicy:repeatedTimePolicy:direction:)@<X0>(double *a1@<X0>, const void *a2@<X1>, unsigned __int8 *a3@<X2>, unsigned __int8 *a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a1;
  v10 = *a3;
  v11 = *a4;
  v12 = *a5;
  v14 = *v6;
  v13 = v6[1];
  memcpy(__dst, a2, 0x11BuLL);
  v30 = v14;
  v31 = v13;
  result = DateComponents._validate(for:)(&v30);
  if (result)
  {
    if (one-time initialization token for validCalendarRange != -1)
    {
      result = swift_once();
    }

    v16 = 1;
    if (v9 < *&static Date.validCalendarRange || *(&static Date.validCalendarRange + 1) < v9)
    {
      v18 = 0;
    }

    else
    {
      v21 = a6;
      v19 = 101;
      v20 = v9;
      while (1)
      {
        v24[0] = v14;
        v24[1] = v13;
        v29 = *&v9;
        memcpy(__dst, a2, 0x11BuLL);
        v28 = v10;
        v27 = v11;
        v26 = v12;
        v25 = v20;
        v22 = 0;
        LOBYTE(v23) = 1;
        result = Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(&v29, __dst, &v28, &v27, &v26, &v25, &v22, &v30);
        if (v31 != 2)
        {
          break;
        }

        v20 = v32;
        if (!--v19)
        {
          *v24 = v9;
          v30 = v14;
          v31 = v13;
          memcpy(__dst, a2, 0x11BuLL);
          LOBYTE(v22) = v12;
          LOBYTE(v29) = v10;
          LOBYTE(v25) = v11;
          result = _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(v24, &v30, __dst, &v22, &v29, &v25);
          v18 = 0;
          v16 = 1;
          goto LABEL_15;
        }
      }

      v16 = 0;
      v18 = v30;
LABEL_15:
      a6 = v21;
    }
  }

  else
  {
    v18 = 0;
    v16 = 1;
  }

  *a6 = v18;
  *(a6 + 8) = v16;
  return result;
}

Swift::Bool __swiftcall Calendar.dateInterval(of:start:interval:for:)(Foundation::Calendar::Component of, Foundation::Date *start, Swift::Double *interval, Foundation::Date a4)
{
  v8 = *of;
  v9 = *v4;
  v10 = *(v5 + 8);
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v11 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v12)
  {
    v12 = *&static Date.validCalendarRange;
  }

  v19 = v8;
  if (*(&static Date.validCalendarRange + 1) >= v12)
  {
    v11 = v12;
  }

  if (*&static Date.validCalendarRange >= v11)
  {
    v13 = *&static Date.validCalendarRange;
  }

  else
  {
    v13 = v11;
  }

  ObjectType = swift_getObjectType();
  v18 = v13;
  (*(v10 + 160))(v20, &v19, &v18, ObjectType, v10);
  v15 = v21;
  if ((v21 & 1) == 0)
  {
    v16 = v20[1];
    *&start->_time = v20[0];
    *interval = v16;
  }

  return v15 ^ 1;
}

uint64_t Calendar.ComponentSet.init(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      v4 |= qword_181232728[v6];
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

Foundation::Calendar::ComponentSet __swiftcall Calendar.ComponentSet.init(single:)(Foundation::Calendar::Component single)
{
  *v1 = qword_181232728[*single];
  LOBYTE(result.rawValue) = single;
  return result;
}

void __swiftcall WeekendRange.init(onsetTime:ceaseTime:start:end:)(Foundation::WeekendRange *__return_ptr retstr, Swift::Double_optional onsetTime, Swift::Double_optional ceaseTime, Swift::Int start, Swift::Int end)
{
  retstr->onsetTime.value = *&onsetTime.is_nil;
  retstr->onsetTime.is_nil = ceaseTime.is_nil;
  *(&retstr->ceaseTime.value + 7) = start;
  LOBYTE(retstr->start) = end & 1;
  retstr->end = v5;
  retstr[1].onsetTime.value = v6;
}

unint64_t Calendar.Identifier.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6169726F67657267;
  switch(a1)
  {
    case 1:
      result = 0x7473696864647562;
      break;
    case 2:
      result = 0x6573656E696863;
      break;
    case 3:
      result = 0x636974706F63;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0xD000000000000011;
      break;
    case 6:
      result = 0x776572626568;
      break;
    case 7:
      result = 0x313036386F7369;
      break;
    case 8:
      result = 0x6E6169646E69;
      break;
    case 9:
      result = 0x63696D616C7369;
      break;
    case 10:
      result = 0x4363696D616C7369;
      break;
    case 11:
      result = 0x6573656E6170616ALL;
      break;
    case 12:
      result = 0x6E616973726570;
      break;
    case 13:
      result = 0x63696C6275706572;
      break;
    case 14:
      result = 0x5463696D616C7369;
      break;
    case 15:
      result = 0xD000000000000010;
      break;
    case 16:
      result = 0x616C676E6162;
      break;
    case 17:
      result = 0x69746172616A7567;
      break;
    case 18:
      result = 0x6164616E6E616BLL;
      break;
    case 19:
      result = 0x616C6179616C616DLL;
      break;
    case 20:
      result = 0x6968746172616DLL;
      break;
    case 21:
      result = 1634296943;
      break;
    case 22:
      result = 0x6C696D6174;
      break;
    case 23:
      result = 0x7567756C6574;
      break;
    case 24:
      result = 0x6D61726B6976;
      break;
    case 25:
      result = 0x69676E6164;
      break;
    case 26:
      result = 0x656D616E74656976;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Calendar.Identifier.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Calendar.Identifier.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Calendar.Identifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Calendar.Identifier.CodingKeys and conformance Calendar.Identifier.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Calendar.Identifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Calendar.Identifier.CodingKeys and conformance Calendar.Identifier.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Calendar.ComponentSet.count.getter()
{
  v1 = vcnt_s8(*v0);
  v1.i16[0] = vaddlv_u8(v1);
  return v1.u32[0];
}

void Calendar.ComponentSet.highestSetUnit.getter(char *a1@<X8>)
{
  v2 = *v1;
  if (*v1)
  {
    *a1 = 0;
  }

  else if ((v2 & 2) != 0)
  {
    *a1 = 1;
  }

  else if ((v2 & 0x40000) != 0)
  {
    *a1 = 18;
  }

  else if ((v2 & 0x200) != 0)
  {
    *a1 = 9;
  }

  else if ((v2 & 4) != 0)
  {
    *a1 = 2;
  }

  else if ((v2 & 8) != 0)
  {
    *a1 = 3;
  }

  else if ((v2 & 0x10) != 0)
  {
    *a1 = 4;
  }

  else if ((v2 & 0x20) != 0)
  {
    *a1 = 5;
  }

  else if ((v2 & 0x40) != 0)
  {
    *a1 = 6;
  }

  else if ((v2 & 0x80) != 0)
  {
    *a1 = 7;
  }

  else if ((v2 & 0x100) != 0)
  {
    *a1 = 8;
  }

  else if ((v2 & 0x400) != 0)
  {
    *a1 = 10;
  }

  else if ((v2 & 0x800) != 0)
  {
    *a1 = 11;
  }

  else if ((v2 & 0x1000) != 0)
  {
    *a1 = 12;
  }

  else if ((v2 & 0x2000) != 0)
  {
    *a1 = 13;
  }

  else if ((v2 & 0x10000) != 0)
  {
    *a1 = 16;
  }

  else
  {
    if ((v2 & 0x80000) != 0)
    {
      v3 = 17;
    }

    else
    {
      v3 = 19;
    }

    *a1 = v3;
  }
}

uint64_t Calendar.Component.debugDescription.getter()
{
  result = 6386277;
  switch(*v0)
  {
    case 1:
      result = 1918985593;
      break;
    case 2:
      result = 0x68746E6F6DLL;
      break;
    case 3:
      result = 7954788;
      break;
    case 4:
      result = 1920298856;
      break;
    case 5:
      result = 0x6574756E696DLL;
      break;
    case 6:
      result = 0x646E6F636573;
      break;
    case 7:
      result = 0x7961646B656577;
      break;
    case 8:
      result = 0x4F7961646B656577;
      break;
    case 9:
      result = 0x72657472617571;
      break;
    case 0xA:
      v2 = 0x664F6B656577;
      goto LABEL_19;
    case 0xB:
      result = 0x6559664F6B656577;
      break;
    case 0xC:
      result = 0xD000000000000011;
      break;
    case 0xD:
      result = 0x6F6365736F6E616ELL;
      break;
    case 0xE:
      result = 0x7261646E656C6163;
      break;
    case 0xF:
      result = 0x656E6F5A656D6974;
      break;
    case 0x10:
      v2 = 0x7061654C7369;
LABEL_19:
      result = v2 & 0xFFFFFFFFFFFFLL | 0x6F4D000000000000;
      break;
    case 0x11:
      result = 0x7461657065527369;
      break;
    case 0x12:
      result = 0x616559664F796164;
      break;
    default:
      return result;
  }

  return result;
}

void *(*Calendar.locale.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 32))(v11, ObjectType, v3);
  v6 = v11[0];
  if (v11[0])
  {
    v7 = v11[1];
  }

  else
  {
    if (one-time initialization token for cache != -1)
    {
      v5 = swift_once();
    }

    v8 = static LocaleCache.cache;
    MEMORY[0x1EEE9AC00](v5);
    os_unfair_lock_lock((v8 + 48));
    closure #1 in LocaleCache.fixed(_:)partial apply((v8 + 16), v10);
    os_unfair_lock_unlock((v8 + 48));
    v6 = v10[0];
    v7 = v10[1];
  }

  *a1 = v6;
  a1[1] = v7;
  return Calendar.locale.modify;
}

void *Calendar.locale.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {
    v4 = *a1;
    v5 = v2;
    swift_unknownObjectRetain();
    Calendar.locale.setter(&v4);

    return swift_unknownObjectRelease();
  }

  else
  {
    v4 = *a1;
    v5 = v2;
    return Calendar.locale.setter(&v4);
  }
}

uint64_t (*Calendar.timeZone.modify(uint64_t a1))(uint64_t *a1, char a2)
{
  *(a1 + 16) = v1;
  v2 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  (*(v2 + 48))(ObjectType, v2);
  return Calendar.timeZone.modify;
}

uint64_t Calendar.timeZone.modify(uint64_t *a1, char a2)
{
  v2 = a1[1];
  if (a2)
  {
    v4 = *a1;
    v5 = v2;
    swift_unknownObjectRetain();
    Calendar.timeZone.setter(&v4);

    return swift_unknownObjectRelease();
  }

  else
  {
    v4 = *a1;
    v5 = v2;
    return Calendar.timeZone.setter(&v4);
  }
}

uint64_t (*Calendar.firstWeekday.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  *a1 = (*(v3 + 56))(ObjectType, v3);
  return Calendar.firstWeekday.modify;
}

uint64_t (*Calendar.minimumDaysInFirstWeek.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  *a1 = (*(v3 + 72))(ObjectType, v3);
  return Calendar.minimumDaysInFirstWeek.modify;
}

uint64_t Calendar.dates(byAdding:value:startingAt:in:wrappingComponents:)@<X0>(unsigned __int8 *a1@<X0>, __int128 a2@<X2:X1>, uint64_t *a3@<X3>, char a4@<W4>, uint64_t a5@<X8>)
{
  v8 = **(&a2 + 1);
  v9 = *a3;
  v10 = a3[1];
  v11 = *(a3 + 16);
  v16 = *v5;
  v17 = *a1;
  DateComponents.init(component:value:)(a2, &v17, __src);
  result = _s10Foundation13URLComponentsV01_B0VSgWOg(__src);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v13 = one-time initialization token for validCalendarRange;
    swift_unknownObjectRetain();
    if (v13 != -1)
    {
      swift_once();
    }

    v14 = *(&static Date.validCalendarRange + 1);
    v15 = *&static Date.validCalendarRange;
    if (*(&static Date.validCalendarRange + 1) >= v8)
    {
      v14 = v8;
    }

    *a5 = v16;
    if (v15 >= v14)
    {
      v14 = v15;
    }

    *(a5 + 16) = v14;
    *(a5 + 24) = v9;
    *(a5 + 32) = v10;
    *(a5 + 40) = v11;
    result = memcpy((a5 + 48), __src, 0x11BuLL);
    *(a5 + 331) = a4 & 1;
  }

  return result;
}

uint64_t Calendar.dates(byAdding:startingAt:in:wrappingComponents:)@<X0>(void *__src@<X0>, double *a2@<X1>, uint64_t *a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  memcpy(__dst, __src, 0x11BuLL);
  v11 = *a2;
  v12 = *a3;
  v13 = a3[1];
  v14 = *(a3 + 16);
  v15 = *v5;
  v16 = one-time initialization token for validCalendarRange;
  v20 = v15;
  swift_unknownObjectRetain();
  if (v16 != -1)
  {
    swift_once();
  }

  v17 = *(&static Date.validCalendarRange + 1);
  v18 = *&static Date.validCalendarRange;
  if (*(&static Date.validCalendarRange + 1) >= v11)
  {
    v17 = v11;
  }

  *a5 = v20;
  if (v18 >= v17)
  {
    v17 = v18;
  }

  *(a5 + 16) = v17;
  *(a5 + 24) = v12;
  *(a5 + 32) = v13;
  *(a5 + 40) = v14;
  memcpy((a5 + 48), __src, 0x11BuLL);
  *(a5 + 331) = a4 & 1;
  return outlined init with copy of DateComponents(__dst, v21);
}

BOOL Calendar.hasRepeatingMonths.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  v3 = *(v1 + 24);
  v3((&v5 + 7), ObjectType, v1);
  if (HIBYTE(v5) == 2)
  {
    return 1;
  }

  v3((&v5 + 6), ObjectType, v1);
  if (BYTE6(v5) == 25)
  {
    return 1;
  }

  v3((&v5 + 5), ObjectType, v1);
  if (BYTE5(v5) == 17)
  {
    return 1;
  }

  v3((&v5 + 4), ObjectType, v1);
  if (BYTE4(v5) == 18)
  {
    return 1;
  }

  v3((&v5 + 3), ObjectType, v1);
  if (BYTE3(v5) == 20)
  {
    return 1;
  }

  v3((&v5 + 2), ObjectType, v1);
  if (BYTE2(v5) == 23)
  {
    return 1;
  }

  v3((&v5 + 1), ObjectType, v1);
  if (BYTE1(v5) == 26)
  {
    return 1;
  }

  v3(&v5, ObjectType, v1);
  return v5 == 24;
}

Swift::Bool __swiftcall Calendar.dateIntervalOfWeekend(containing:start:interval:)(Foundation::Date containing, Foundation::Date *start, Swift::Double *interval)
{
  v4 = v3;
  Calendar.dateIntervalOfWeekend(containing:)(*&start->_time);
  if ((v9 & 1) == 0)
  {
    *interval = v7;
    *v4 = v8;
  }

  return v9 ^ 1;
}

Foundation::DateInterval_optional __swiftcall Calendar.dateIntervalOfWeekend(containing:)(Foundation::Date containing)
{
  v4 = v2;
  v5 = *v1;
  v6 = *v3;
  v7 = v3[1];
  v12 = *v3;
  v13 = v7;
  v11 = v5;
  result = Calendar.nextWeekend(startingAfter:direction:)(containing, &v11);
  if (v16)
  {
    v8 = v15;
    *v4 = v14;
    *(v4 + 8) = v8;
LABEL_3:
    *(v4 + 16) = 1;
    return result;
  }

  v12 = v6;
  v13 = v7;
  v11 = v14;
  result = Calendar.nextWeekend(startingAfter:direction:)(result.value.start, &v11);
  v9 = v15;
  if (v16)
  {
    *v4 = v14;
    *(v4 + 8) = v9;
    *(v4 + 16) = 1;
  }

  else
  {
    result.value.start._time = v14;
    result.value.duration = v14 + v15;
    if (v5 < v14 || v5 >= result.value.duration)
    {
      *v4 = 0;
      *(v4 + 8) = 0;
      goto LABEL_3;
    }

    *v4 = v14;
    *(v4 + 8) = v9;
    *(v4 + 16) = 0;
  }

  return result;
}

uint64_t Calendar.dates(byMatching:startingAt:in:matchingPolicy:repeatedTimePolicy:direction:)@<X0>(void *__src@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, _BYTE *a4@<X3>, _BYTE *a5@<X4>, _BYTE *a6@<X5>, uint64_t a7@<X8>)
{
  memcpy(__dst, __src, 0x11BuLL);
  v15 = *a2;
  LOBYTE(a2) = *(a3 + 16);
  LOBYTE(a4) = *a4;
  LOBYTE(a5) = *a5;
  LOBYTE(a6) = *a6;
  *a7 = *v7;
  memcpy((a7 + 48), __src, 0x11BuLL);
  *(a7 + 331) = a4;
  *(a7 + 332) = a5;
  *(a7 + 333) = a6;
  *(a7 + 16) = v15;
  *(a7 + 24) = *a3;
  *(a7 + 40) = a2;
  swift_unknownObjectRetain();
  return outlined init with copy of DateComponents(__dst, v17);
}

Foundation::Date_optional __swiftcall Calendar.date(bySetting:value:of:)(Foundation::Calendar::Component bySetting, Swift::Int value, Foundation::Date of)
{
  v7 = v4;
  v8 = *bySetting;
  v9 = *v3;
  v11 = *v5;
  v10 = v5[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation8CalendarV9ComponentOGMd);
  *(swift_allocObject() + 32) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
  v12 = static _SetStorage.allocate(capacity:)();
  v13 = v12 + 56;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v8);
  v14 = Hasher._finalize()();
  v15 = -1 << *(v12 + 32);
  v16 = v14 & ~v15;
  v17 = v16 >> 6;
  v18 = *(v12 + 56 + 8 * (v16 >> 6));
  v19 = 1 << v16;
  v20 = *(v12 + 48);
  if (((1 << v16) & v18) != 0)
  {
    v21 = ~v15;
    while (*(v20 + v16) != v8)
    {
      v16 = (v16 + 1) & v21;
      v17 = v16 >> 6;
      v18 = *(v13 + 8 * (v16 >> 6));
      v19 = 1 << v16;
      if (((1 << v16) & v18) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    *(v13 + 8 * v17) = v19 | v18;
    *(v20 + v16) = v8;
    v22 = *(v12 + 16);
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      __break(1u);

      v27 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      goto LABEL_70;
    }

    *(v12 + 16) = v24;
  }

  swift_setDeallocating();
  swift_deallocClassInstance();
  v77[1] = v11;
  v77[2] = v10;
  Calendar.ComponentSet.init(_:)(v12, v77);
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v25 = static Date.validCalendarRange;
  if (*(&static Date.validCalendarRange + 1) >= v9)
  {
    v26 = v9;
  }

  else
  {
    v26 = *(&static Date.validCalendarRange + 1);
  }

  if (*&static Date.validCalendarRange >= v26)
  {
    v26 = *&static Date.validCalendarRange;
  }

  *__src = v26;
  Calendar._dateComponents(_:from:)(v77, __src, v46);
  v27 = outlined destroy of DateComponents(v46);
  switch(v8)
  {
    case 1:
      if (v50)
      {
        goto LABEL_15;
      }

      if (v49 == value)
      {
        goto LABEL_57;
      }

      goto LABEL_60;
    case 2:
      if (v52)
      {
        goto LABEL_15;
      }

      if (v51 != value)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    case 3:
      if (v54)
      {
        goto LABEL_15;
      }

      if (v53 != value)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    case 4:
      if (v58)
      {
        goto LABEL_15;
      }

      if (v57 != value)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    case 5:
      if (v60)
      {
        goto LABEL_15;
      }

      if (v59 != value)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    case 6:
      if (v62)
      {
        goto LABEL_15;
      }

      if (v61 != value)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    case 7:
      if (v66)
      {
        goto LABEL_15;
      }

      if (v65 != value)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    case 8:
      if (v68)
      {
        goto LABEL_15;
      }

      if (v67 != value)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    case 9:
      if (v70)
      {
        goto LABEL_15;
      }

      if (v69 != value)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    case 10:
      if (v72)
      {
        goto LABEL_15;
      }

      if (v71 == value)
      {
        goto LABEL_57;
      }

      goto LABEL_60;
    case 11:
      if (v74)
      {
        goto LABEL_15;
      }

      if (v73 != value)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    case 12:
      if (v76)
      {
        goto LABEL_15;
      }

      if (v75 != value)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    case 13:
      if (v64)
      {
        goto LABEL_15;
      }

      if (v63 != value)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    case 14:
    case 15:
    case 16:
    case 17:
      goto LABEL_15;
    case 18:
      if (v56)
      {
        goto LABEL_15;
      }

      if (v55 != value)
      {
        goto LABEL_60;
      }

      goto LABEL_57;
    default:
      if (v48)
      {
LABEL_15:
        *v7 = 0;
        *(v7 + 8) = 1;
        goto LABEL_70;
      }

      if (v47 == value)
      {
LABEL_57:
        *v7 = v9;
        *(v7 + 8) = 0;
        goto LABEL_70;
      }

LABEL_60:
      v29 = 1;
      BYTE8(__src[2]) = 1;
      *&__src[3] = 0;
      BYTE8(__src[3]) = 1;
      *&__src[4] = 0;
      BYTE8(__src[4]) = 1;
      *&__src[5] = 0;
      BYTE8(__src[5]) = 1;
      *&__src[6] = 0;
      BYTE8(__src[6]) = 1;
      *&__src[7] = 0;
      BYTE8(__src[7]) = 1;
      *&__src[8] = 0;
      BYTE8(__src[8]) = 1;
      *&__src[9] = 0;
      BYTE8(__src[9]) = 1;
      *&__src[10] = 0;
      BYTE8(__src[10]) = 1;
      *&__src[11] = 0;
      BYTE8(__src[11]) = 1;
      *&__src[12] = 0;
      BYTE8(__src[12]) = 1;
      *&__src[13] = 0;
      BYTE8(__src[13]) = 1;
      *&__src[14] = 0;
      BYTE8(__src[14]) = 1;
      *&__src[15] = 0;
      BYTE8(__src[15]) = 1;
      BYTE8(__src[16]) = 1;
      *&__src[16] = 0;
      *&__src[17] = 0;
      BYTE8(__src[17]) = 1;
      *(&__src[17] + 9) = 514;
      memset(__src, 0, 40);
      __dst[0] = 0;
      __dst[1] = 0;
      DateComponents.timeZone.setter(__dst);
      *&__src[2] = 0;
      BYTE8(__src[2]) = 1;
      *&__src[3] = 0;
      BYTE8(__src[3]) = 1;
      *&__src[4] = 0;
      BYTE8(__src[4]) = 1;
      *&__src[5] = 0;
      BYTE8(__src[5]) = 1;
      *&__src[7] = 0;
      BYTE8(__src[7]) = 1;
      *&__src[8] = 0;
      BYTE8(__src[8]) = 1;
      *&__src[9] = 0;
      BYTE8(__src[9]) = 1;
      *&__src[10] = 0;
      BYTE8(__src[10]) = 1;
      *&__src[11] = 0;
      BYTE8(__src[11]) = 1;
      *&__src[12] = 0;
      BYTE8(__src[12]) = 1;
      *&__src[13] = 0;
      BYTE8(__src[13]) = 1;
      *&__src[15] = 0;
      BYTE8(__src[15]) = 1;
      BYTE8(__src[16]) = 1;
      *&__src[16] = 0;
      *&__src[17] = 0;
      BYTE8(__src[17]) = 1;
      *&__src[6] = 0;
      BYTE8(__src[6]) = 1;
      LOBYTE(__dst[0]) = v8;
      v78.value = value;
      v78.is_nil = 0;
      DateComponents.setValue(_:for:)(v78, __dst);
      memcpy(__dst, __src, 0x11BuLL);
      memcpy(v43, __src, 0x11BuLL);
      v40 = v11;
      v41 = v10;
      v30 = 0;
      if (!DateComponents._validate(for:)(&v40) || v9 < *&v25 || *(&v25 + 1) < v9)
      {
        goto LABEL_68;
      }

      v31 = 101;
      v32 = v9;
      break;
  }

  while (1)
  {
    v35[0] = v11;
    v35[1] = v10;
    v39 = *&v9;
    memcpy(v43, __dst, 0x11BuLL);
    v38 = 0;
    v37 = 0;
    v36 = v32;
    v33 = 0;
    LOBYTE(v34) = 1;
    Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(&v39, v43, &v38 + 1, &v38, &v37, &v36, &v33, &v40);
    if (v41 != 2)
    {
      break;
    }

    v32 = v42;
    if (!--v31)
    {
      *v35 = v9;
      v40 = v11;
      v41 = v10;
      memcpy(v43, __dst, 0x11BuLL);
      LOBYTE(v33) = 0;
      LOBYTE(v39) = 0;
      LOBYTE(v36) = 0;
      _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(v35, &v40, v43, &v33, &v39, &v36);
      v30 = 0;
      v29 = 1;
      goto LABEL_68;
    }
  }

  v29 = 0;
  v30 = v40;
LABEL_68:
  memcpy(v43, __src, 0x11BuLL);
  v27 = outlined destroy of DateComponents(v43);
  *v7 = v30;
  *(v7 + 8) = v29;
LABEL_70:
  result.value = *&v28;
  result.is_nil = v27;
  return result;
}

uint64_t closure #1 in Calendar.date(_:matchesComponents:)(_BYTE *a1, uint64_t a2)
{
  v2 = 40;
  switch(*a1)
  {
    case 1:
      v2 = 56;
      return (*(a2 + v2) ^ 1) & 1;
    case 2:
      v2 = 72;
      return (*(a2 + v2) ^ 1) & 1;
    case 3:
      v2 = 88;
      return (*(a2 + v2) ^ 1) & 1;
    case 4:
      v2 = 120;
      return (*(a2 + v2) ^ 1) & 1;
    case 5:
      v2 = 136;
      return (*(a2 + v2) ^ 1) & 1;
    case 6:
      v2 = 152;
      return (*(a2 + v2) ^ 1) & 1;
    case 7:
      v2 = 184;
      return (*(a2 + v2) ^ 1) & 1;
    case 8:
      v2 = 200;
      return (*(a2 + v2) ^ 1) & 1;
    case 9:
      v2 = 216;
      return (*(a2 + v2) ^ 1) & 1;
    case 0xA:
      v2 = 248;
      return (*(a2 + v2) ^ 1) & 1;
    case 0xB:
      v2 = 264;
      return (*(a2 + v2) ^ 1) & 1;
    case 0xC:
      v2 = 280;
      return (*(a2 + v2) ^ 1) & 1;
    case 0xD:
      v2 = 168;
      return (*(a2 + v2) ^ 1) & 1;
    case 0xE:
    case 0xF:
    case 0x10:
    case 0x11:
      return 0;
    case 0x12:
      v2 = 104;
      return (*(a2 + v2) ^ 1) & 1;
    default:
      return (*(a2 + v2) ^ 1) & 1;
  }
}

uint64_t Calendar.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 120))(a1, ObjectType, v3);
}

Swift::Int Calendar.hashValue.getter()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  ObjectType = swift_getObjectType();
  (*(v1 + 120))(v4, ObjectType, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Calendar()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  ObjectType = swift_getObjectType();
  (*(v1 + 120))(v4, ObjectType, v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Calendar(uint64_t a1)
{
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  return (*(v3 + 120))(a1, ObjectType, v3);
}

uint64_t Calendar.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v20[0] = a1;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss6MirrorV12DisplayStyleOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v20 - v7;
  v9 = *v1;
  v10 = v1[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSg5label_yp5valuetGMd);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18121C7A0;
  *(v11 + 32) = xmmword_181231A50;
  *(v11 + 72) = &type metadata for Calendar.Identifier;
  ObjectType = swift_getObjectType();
  (*(v10 + 24))(ObjectType, v10);
  *(v11 + 80) = xmmword_181231A60;
  *(v11 + 120) = ObjectType;
  *(v11 + 96) = v9;
  *(v11 + 128) = xmmword_181231A70;
  v21 = v9;
  v22 = v10;
  *(v11 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd);
  swift_unknownObjectRetain();
  Calendar.locale.getter((v11 + 144));
  *(v11 + 176) = xmmword_181231A80;
  *(v11 + 216) = &type metadata for TimeZone;
  (*(v10 + 48))(ObjectType, v10);
  *(v11 + 224) = xmmword_181231A90;
  v13 = (*(v10 + 56))(ObjectType, v10);
  v14 = MEMORY[0x1E69E6530];
  *(v11 + 240) = v13;
  *(v11 + 264) = v14;
  *(v11 + 272) = 0xD000000000000016;
  *(v11 + 280) = 0x800000018147E770;
  v15 = (*(v10 + 72))(ObjectType, v10);
  *(v11 + 312) = v14;
  *(v11 + 288) = v15;
  v21 = v9;
  v22 = v10;
  v20[1] = v11;
  v16 = *MEMORY[0x1E69E75B8];
  v17 = type metadata accessor for Mirror.DisplayStyle();
  v18 = *(v17 - 8);
  (*(v18 + 104))(v8, v16, v17);
  (*(v18 + 56))(v8, 0, 1, v17);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E75D8], v2);
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSSg5label_yp5valuetGMd);
  lazy protocol witness table accessor for type [(label: String?, value: Any)] and conformance [A]();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Calendar.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized Calendar.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

unint64_t protocol witness for CodingKey.init(intValue:) in conformance Calendar.CodingKeys@<X0>(unint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized FloatingPointRoundingRule.CodingValue.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Calendar.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Calendar.CodingKeys and conformance Calendar.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Calendar.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Calendar.CodingKeys and conformance Calendar.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Calendar.Identifier.encode(to:)(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v3 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v5 = &v14 - v4;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation8CalendarV10IdentifierO10CodingKeys33_F3BDB2D973DC43C399EBDEAB6295AE62LLOGMd);
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v14 - v7;
  v9 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Calendar.Identifier.CodingKeys and conformance Calendar.Identifier.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = (v6 + 8);
  switch(v9)
  {
    case 1:
      v11 = 1;
      goto LABEL_29;
    case 2:
      v11 = 2;
      goto LABEL_29;
    case 3:
      v11 = 3;
      goto LABEL_29;
    case 4:
      v11 = 4;
      goto LABEL_29;
    case 5:
      v11 = 5;
      goto LABEL_29;
    case 6:
      v11 = 6;
      goto LABEL_29;
    case 7:
      v11 = 7;
      goto LABEL_29;
    case 8:
      v11 = 8;
      goto LABEL_29;
    case 9:
      v11 = 9;
      goto LABEL_29;
    case 10:
      v11 = 10;
      goto LABEL_29;
    case 11:
      v11 = 11;
      goto LABEL_29;
    case 12:
      v11 = 12;
      goto LABEL_29;
    case 13:
      v11 = 13;
      goto LABEL_29;
    case 14:
      v11 = 14;
      goto LABEL_29;
    case 15:
      v11 = 15;
      goto LABEL_29;
    case 16:
      v11 = 16;
      goto LABEL_29;
    case 17:
      v11 = 17;
      goto LABEL_29;
    case 18:
      v11 = 18;
      goto LABEL_29;
    case 19:
      v11 = 19;
      goto LABEL_29;
    case 20:
      v11 = 20;
      goto LABEL_29;
    case 21:
      v11 = 21;
      goto LABEL_29;
    case 22:
      v11 = 22;
      goto LABEL_29;
    case 23:
      v11 = 23;
      goto LABEL_29;
    case 24:
      v11 = 24;
      goto LABEL_29;
    case 25:
      v11 = 25;
      goto LABEL_29;
    case 26:
      v11 = 26;
LABEL_29:
      v17 = v11;
      break;
    default:
      v17 = 0;
      break;
  }

  lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
  v12 = v16;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v3 + 8))(v5, v15);
  return (*v10)(v8, v12);
}

uint64_t Calendar.Identifier.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v101 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation15EmptyCodingKeysOGMd);
  v4 = *(v3 - 8);
  v94 = v3;
  v95 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v100 = v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v93 = v86 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v92 = v86 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v91 = v86 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v90 = v86 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v99 = v86 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v89 = v86 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v98 = v86 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v88 = v86 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v97 = v86 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v87 = v86 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v86[15] = v86 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v86[14] = v86 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v86[13] = v86 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v86[12] = v86 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v86[11] = v86 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v86[10] = v86 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v86[9] = v86 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v86[8] = v86 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v86[7] = v86 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v86[6] = v86 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v86[5] = v86 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v86[4] = v86 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v52 = v86 - v51;
  MEMORY[0x1EEE9AC00](v53);
  v55 = v86 - v54;
  MEMORY[0x1EEE9AC00](v56);
  v58 = v86 - v57;
  MEMORY[0x1EEE9AC00](v59);
  v61 = v86 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation8CalendarV10IdentifierO10CodingKeys33_F3BDB2D973DC43C399EBDEAB6295AE62LLOGMd);
  v96 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v64 = v86 - v63;
  v65 = a1[3];
  v102 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v65);
  lazy protocol witness table accessor for type Calendar.Identifier.CodingKeys and conformance Calendar.Identifier.CodingKeys();
  v66 = v103;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v66)
  {
LABEL_7:
    v82 = v102;
    return __swift_destroy_boxed_opaque_existential_1(v82);
  }

  v86[0] = v61;
  v86[1] = v58;
  v86[2] = v55;
  v86[3] = v52;
  v68 = v97;
  v67 = v98;
  v103 = 0;
  v70 = v99;
  v69 = v100;
  v71 = v101;
  v72 = v64;
  v73 = KeyedDecodingContainer.allKeys.getter();
  v74 = (2 * *(v73 + 16)) | 1;
  v104 = v73;
  v105 = v73 + 32;
  v106 = 0;
  v107 = v74;
  v75 = specialized Collection<>.popFirst()();
  if (v106 != v107 >> 1)
  {
LABEL_5:
    v78 = v62;
    v79 = type metadata accessor for DecodingError();
    swift_allocError();
    v81 = v80;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v81 = &type metadata for Calendar.Identifier;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v79 - 8) + 104))(v81, *MEMORY[0x1E69E6AF8], v79);
    swift_willThrow();
    (*(v96 + 8))(v72, v78);
LABEL_6:
    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v76 = v75;
  switch(v75)
  {
    case 0:
      v111 = 0;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v77 = &v103;
      goto LABEL_32;
    case 1:
      v111 = 1;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v77 = &v104;
      goto LABEL_32;
    case 2:
      v111 = 2;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v77 = &v105;
      goto LABEL_32;
    case 3:
      v111 = 3;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v77 = &v106;
      goto LABEL_32;
    case 4:
      v111 = 4;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v77 = &v107;
      goto LABEL_32;
    case 5:
      v111 = 5;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v77 = &v108;
      goto LABEL_32;
    case 6:
      v111 = 6;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v77 = &v109;
      goto LABEL_32;
    case 7:
      v111 = 7;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v77 = &v110;
      goto LABEL_32;
    case 8:
      v111 = 8;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v77 = &v112;
      goto LABEL_32;
    case 9:
      v111 = 9;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v77 = &v113;
      goto LABEL_32;
    case 10:
      v111 = 10;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v77 = &v114;
      goto LABEL_32;
    case 11:
      v111 = 11;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v77 = &v115;
      goto LABEL_32;
    case 12:
      v111 = 12;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v77 = &v116;
      goto LABEL_32;
    case 13:
      v111 = 13;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v77 = &v117;
      goto LABEL_32;
    case 14:
      v111 = 14;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v77 = &v118;
      goto LABEL_32;
    case 15:
      v111 = 15;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v77 = &v119;
LABEL_32:
      v67 = *(v77 - 32);
      goto LABEL_33;
    case 16:
      v111 = 16;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v67 = v87;
      goto LABEL_33;
    case 17:
      v111 = 17;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v67 = v68;
      goto LABEL_33;
    case 18:
      v111 = 18;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v67 = v88;
      goto LABEL_33;
    case 19:
      v111 = 19;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      goto LABEL_33;
    case 20:
      v111 = 20;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v67 = v89;
      goto LABEL_33;
    case 21:
      v111 = 21;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v84 = v103;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v84)
      {
        goto LABEL_34;
      }

      (*(v95 + 8))(v70, v94);
      goto LABEL_36;
    case 22:
      v111 = 22;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v67 = v90;
      goto LABEL_33;
    case 23:
      v111 = 23;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v67 = v91;
      goto LABEL_33;
    case 24:
      v111 = 24;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v67 = v92;
      goto LABEL_33;
    case 25:
      v111 = 25;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v67 = v93;
      goto LABEL_33;
    case 26:
      v111 = 26;
      lazy protocol witness table accessor for type EmptyCodingKeys and conformance EmptyCodingKeys();
      v67 = v69;
LABEL_33:
      v85 = v103;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v85)
      {
LABEL_34:
        (*(v96 + 8))(v72, v62);
        goto LABEL_6;
      }

      (*(v95 + 8))(v67, v94);
LABEL_36:
      (*(v96 + 8))(v72, v62);
      swift_unknownObjectRelease();
      v82 = v102;
      *v71 = v76;
      break;
    default:
      goto LABEL_5;
  }

  return __swift_destroy_boxed_opaque_existential_1(v82);
}

uint64_t WeekendRange.onsetTime.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t WeekendRange.ceaseTime.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t WeekendRange.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v4 = v0[4];
  v3 = v0[5];
  if (*(v0 + 8) != 1)
  {
    v6 = *v0;
    Hasher._combine(_:)(1u);
    if ((v6 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    MEMORY[0x1865CD090](v7);
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_11:
    Hasher._combine(_:)(0);
    goto LABEL_12;
  }

  Hasher._combine(_:)(0);
  if (v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v1;
  }

  else
  {
    v5 = 0;
  }

  MEMORY[0x1865CD090](v5);
LABEL_12:
  MEMORY[0x1865CD060](v4);
  return MEMORY[0x1865CD060](v3);
}

Swift::Int WeekendRange.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v6 = v0[4];
  v5 = v0[5];
  Hasher.init(_seed:)();
  if (v2 != 1)
  {
    Hasher._combine(_:)(1u);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v1;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1865CD090](v8);
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_11:
    Hasher._combine(_:)(0);
    goto LABEL_12;
  }

  Hasher._combine(_:)(0);
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x1865CD090](v7);
LABEL_12:
  MEMORY[0x1865CD060](v6);
  MEMORY[0x1865CD060](v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance WeekendRange()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v6 = v0[4];
  v5 = v0[5];
  Hasher.init(_seed:)();
  if (v2 != 1)
  {
    Hasher._combine(_:)(1u);
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v1;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1865CD090](v8);
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_11:
    Hasher._combine(_:)(0);
    goto LABEL_12;
  }

  Hasher._combine(_:)(0);
  if (v4)
  {
    goto LABEL_11;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x1865CD090](v7);
LABEL_12:
  MEMORY[0x1865CD060](v6);
  MEMORY[0x1865CD060](v5);
  return Hasher._finalize()();
}

uint64_t Calendar.MatchingPolicy.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    if (v5 >= 4)
    {
      v7 = type metadata accessor for DecodingError();
      swift_allocError();
      v9 = v8;
      __swift_project_boxed_opaque_existential_1(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B00], v7);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v11);
    }

    else
    {
      v6 = v5;
      __swift_destroy_boxed_opaque_existential_1(v11);
      *a2 = v6;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Calendar.MatchingPolicy.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t Calendar.RepeatedTimePolicy.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    if (!v5)
    {
      v6 = 0;
      goto LABEL_8;
    }

    if (v5 == 1)
    {
      v6 = 1;
LABEL_8:
      __swift_destroy_boxed_opaque_existential_1(v11);
      *a2 = v6;
      return __swift_destroy_boxed_opaque_existential_1(a1);
    }

    v8 = type metadata accessor for DecodingError();
    swift_allocError();
    v10 = v9;
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B00], v8);
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_1(v11);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Calendar.RepeatedTimePolicy.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance Calendar.RepeatedTimePolicy(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t NSCalendar._toCustomAnyHashable()()
{
  type metadata accessor for _NSSwiftCalendar();
  v1 = swift_dynamicCastClass();
  if (v1)
  {
    v2 = *(v1 + OBJC_IVAR____NSSwiftCalendar__lock);
    v3 = v0;
    os_unfair_lock_lock(v2 + 8);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock(v2 + 8);
  }

  else
  {
    type metadata accessor for _CalendarBridged();
    *(swift_allocObject() + 16) = v0;
    lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _CalendarBridged and conformance _CalendarBridged, type metadata accessor for _CalendarBridged);
    v4 = v0;
  }

  lazy protocol witness table accessor for type Calendar and conformance Calendar();
  return AnyHashable.init<A>(_:)();
}

void protocol witness for _HasCustomAnyHashableRepresentation._toCustomAnyHashable() in conformance NSCalendar()
{
  v1 = *v0;
  NSCalendar._toCustomAnyHashable()();
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3, Swift::Int a4, Swift::Int a5)
{
  v11 = *v5;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v12 = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (1)
    {
      v16 = *(v11 + 48) + 32 * v14;
      v17 = *(v16 + 16) == a4 && *(v16 + 24) == a5;
      if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v20 = (*(v11 + 48) + 32 * v14);
    v21 = v20[1];
    v22 = v20[2];
    v23 = v20[3];
    *a1 = *v20;
    a1[1] = v21;
    a1[2] = v22;
    a1[3] = v23;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v5;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, a4, a5, v14, isUniquelyReferenced_nonNull_native);
    *v5 = v24;
    *a1 = a2;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x1865CD020](*(*v2 + 40), a2, 1);
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  _BPlistEncodingFormat.Reference.hash(into:)(v5);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

__n128 specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, void *a2)
{
  AnyHashable._rawHashValue(seed:)(a2[5]);
  v4 = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << v4;
  v5 = a2[6] + 40 * v4;
  result = *a1;
  v7 = *(a1 + 16);
  *v5 = *a1;
  *(v5 + 16) = v7;
  *(v5 + 32) = *(a1 + 32);
  ++a2[2];
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, Swift::Int a3, Swift::Int a4, unint64_t a5, char a6)
{
  v11 = result;
  v12 = *v6;
  v13 = *(*v6 + 16);
  v14 = *(*v6 + 24);
  if (v14 > v13 && (a6 & 1) != 0)
  {
    v15 = *v6;
    goto LABEL_82;
  }

  v100 = v6;
  if (a6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation6LocaleV15NumberingSystemVGMd);
    v16 = static _SetStorage.resize(original:capacity:move:)();
    v15 = v16;
    if (*(v12 + 16))
    {
      v94 = v11;
      v97 = a2;
      v17 = 0;
      v18 = (v12 + 56);
      v19 = 1 << *(v12 + 32);
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v21 = v20 & *(v12 + 56);
      v22 = (v19 + 63) >> 6;
      v23 = v16 + 56;
      v104 = v12;
      while (v21)
      {
        v26 = __clz(__rbit64(v21));
        v21 &= v21 - 1;
LABEL_19:
        v29 = (*(v12 + 48) + 32 * (v26 | (v17 << 6)));
        v101 = v29[1];
        v103 = *v29;
        v30 = v29[2];
        v31 = v29[3];
        Hasher.init(_seed:)();
        String.hash(into:)();
        v32 = Hasher._finalize()();
        v33 = -1 << *(v15 + 32);
        v34 = v32 & ~v33;
        v35 = v34 >> 6;
        if (((-1 << v34) & ~*(v23 + 8 * (v34 >> 6))) == 0)
        {
          v36 = 0;
          v37 = (63 - v33) >> 6;
          while (++v35 != v37 || (v36 & 1) == 0)
          {
            v38 = v35 == v37;
            if (v35 == v37)
            {
              v35 = 0;
            }

            v36 |= v38;
            v39 = *(v23 + 8 * v35);
            if (v39 != -1)
            {
              v24 = __clz(__rbit64(~v39)) + (v35 << 6);
              goto LABEL_11;
            }
          }

LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v24 = __clz(__rbit64((-1 << v34) & ~*(v23 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
        *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        v25 = (*(v15 + 48) + 32 * v24);
        *v25 = v103;
        v25[1] = v101;
        v25[2] = v30;
        v25[3] = v31;
        ++*(v15 + 16);
        v12 = v104;
      }

      v27 = v17;
      while (1)
      {
        v17 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
          goto LABEL_85;
        }

        if (v17 >= v22)
        {
          break;
        }

        v28 = v18[v17];
        ++v27;
        if (v28)
        {
          v26 = __clz(__rbit64(v28));
          v21 = (v28 - 1) & v28;
          goto LABEL_19;
        }
      }

      v60 = 1 << *(v12 + 32);
      if (v60 >= 64)
      {
        bzero(v18, ((v60 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v18 = -1 << v60;
      }

      a2 = v97;
      v11 = v94;
      *(v12 + 16) = 0;
    }

    goto LABEL_72;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation6LocaleV15NumberingSystemVGMd);
  if (v14 <= v13)
  {
    v61 = static _SetStorage.resize(original:capacity:move:)();
    v15 = v61;
    if (!*(v12 + 16))
    {
LABEL_72:

LABEL_74:
      *v100 = v15;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v86 = -1 << *(v15 + 32);
      a5 = result & ~v86;
      if ((*(v15 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
      {
        v87 = ~v86;
        while (1)
        {
          v88 = *(v15 + 48) + 32 * a5;
          if (*(v88 + 16) == a3 && *(v88 + 24) == a4)
          {
            goto LABEL_90;
          }

          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if (result)
          {
            goto LABEL_90;
          }

          a5 = (a5 + 1) & v87;
          if (((*(v15 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_82;
    }

    v95 = v11;
    v99 = a2;
    v62 = 0;
    v106 = v12;
    v63 = v12 + 56;
    v64 = 1 << *(v12 + 32);
    if (v64 < 64)
    {
      v65 = ~(-1 << v64);
    }

    else
    {
      v65 = -1;
    }

    v66 = v65 & *(v12 + 56);
    v67 = (v64 + 63) >> 6;
    v68 = v61 + 56;
    while (v66)
    {
      v71 = __clz(__rbit64(v66));
      v102 = (v66 - 1) & v66;
LABEL_60:
      v74 = (*(v106 + 48) + 32 * (v71 | (v62 << 6)));
      v75 = v74[1];
      v96 = *v74;
      v77 = v74[2];
      v76 = v74[3];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v78 = Hasher._finalize()();
      v79 = -1 << *(v15 + 32);
      v80 = v78 & ~v79;
      v81 = v80 >> 6;
      if (((-1 << v80) & ~*(v68 + 8 * (v80 >> 6))) == 0)
      {
        v82 = 0;
        v83 = (63 - v79) >> 6;
        while (++v81 != v83 || (v82 & 1) == 0)
        {
          v84 = v81 == v83;
          if (v81 == v83)
          {
            v81 = 0;
          }

          v82 |= v84;
          v85 = *(v68 + 8 * v81);
          if (v85 != -1)
          {
            v69 = __clz(__rbit64(~v85)) + (v81 << 6);
            goto LABEL_52;
          }
        }

        goto LABEL_88;
      }

      v69 = __clz(__rbit64((-1 << v80) & ~*(v68 + 8 * (v80 >> 6)))) | v80 & 0x7FFFFFFFFFFFFFC0;
LABEL_52:
      *(v68 + ((v69 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v69;
      v70 = (*(v15 + 48) + 32 * v69);
      *v70 = v96;
      v70[1] = v75;
      v70[2] = v77;
      v70[3] = v76;
      ++*(v15 + 16);
      v66 = v102;
    }

    v72 = v62;
    while (1)
    {
      v62 = v72 + 1;
      if (__OFADD__(v72, 1))
      {
        break;
      }

      if (v62 >= v67)
      {

        a2 = v99;
        v11 = v95;
        goto LABEL_74;
      }

      v73 = *(v63 + 8 * v62);
      ++v72;
      if (v73)
      {
        v71 = __clz(__rbit64(v73));
        v102 = (v73 - 1) & v73;
        goto LABEL_60;
      }
    }
  }

  else
  {
    v98 = a2;
    v40 = static _SetStorage.copy(original:)();
    v15 = v40;
    v105 = v12;
    if (!*(v12 + 16))
    {
LABEL_69:

      a2 = v98;
      *v100 = v15;
LABEL_82:
      *(v15 + 8 * (a5 >> 6) + 56) |= 1 << a5;
      v90 = (*(v15 + 48) + 32 * a5);
      *v90 = v11;
      v90[1] = a2;
      v90[2] = a3;
      v90[3] = a4;
      v91 = *(v15 + 16);
      v92 = __OFADD__(v91, 1);
      v93 = v91 + 1;
      if (!v92)
      {
        *(v15 + 16) = v93;
        return result;
      }

      goto LABEL_89;
    }

    v41 = v11;
    v42 = (v40 + 56);
    v43 = v105 + 56;
    v44 = ((1 << *(v15 + 32)) + 63) >> 6;
    if (v15 != v105 || v42 >= v43 + 8 * v44)
    {
      memmove(v42, (v105 + 56), 8 * v44);
    }

    v45 = 0;
    *(v15 + 16) = *(v105 + 16);
    v46 = 1 << *(v105 + 32);
    v47 = *(v105 + 56);
    v48 = -1;
    if (v46 < 64)
    {
      v48 = ~(-1 << v46);
    }

    v49 = v48 & v47;
    v50 = (v46 + 63) >> 6;
    if ((v48 & v47) != 0)
    {
      do
      {
        v51 = __clz(__rbit64(v49));
        v49 &= v49 - 1;
LABEL_42:
        v54 = 32 * (v51 | (v45 << 6));
        v55 = (*(v105 + 48) + v54);
        v56 = v55[1];
        v57 = v55[2];
        v58 = v55[3];
        v59 = (*(v15 + 48) + v54);
        *v59 = *v55;
        v59[1] = v56;
        v59[2] = v57;
        v59[3] = v58;
      }

      while (v49);
    }

    v52 = v45;
    v11 = v41;
    while (1)
    {
      v45 = v52 + 1;
      if (__OFADD__(v52, 1))
      {
        break;
      }

      if (v45 >= v50)
      {
        goto LABEL_69;
      }

      v53 = *(v43 + 8 * v45);
      ++v52;
      if (v53)
      {
        v51 = __clz(__rbit64(v53));
        v49 = (v53 - 1) & v53;
        goto LABEL_42;
      }
    }

LABEL_86:
    __break(1u);
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy10Foundation8CalendarV9ComponentOG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab20VKXEfU_10Foundation8j2V9K5O_TG5AMxSbs5Error_pRi_zRi0_zlyALIsgndzo_Tf1nc_n(void *a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(char *))
{
  v43 = a4;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a2)
    {
      bzero(a1, 8 * a2);
    }

    v41 = a1;
    v8 = 0;
    v9 = 0;
    v10 = a3;
    v11 = a3 + 56;
    v12 = 1 << *(a3 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(a3 + 56);
    v15 = (v12 + 63) >> 6;
    while (1)
    {
      if (!v14)
      {
        v17 = v9;
        v18 = v10;
        while (1)
        {
          v9 = v17 + 1;
          if (__OFADD__(v17, 1))
          {
            break;
          }

          if (v9 >= v15)
          {
            goto LABEL_19;
          }

          v19 = *(v11 + 8 * v9);
          ++v17;
          if (v19)
          {
            v16 = __clz(__rbit64(v19));
            v14 = (v19 - 1) & v19;
            goto LABEL_14;
          }
        }

        __break(1u);
        goto LABEL_49;
      }

      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v18 = v16 | (v9 << 6);
      v42[0] = *(*(v10 + 48) + v18);
      v20 = v43(v42);
      if (v4)
      {
        v43 = v4;

        return;
      }

      if (v20)
      {
        *(v41 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
        v21 = __OFADD__(v8++, 1);
        if (v21)
        {
          break;
        }
      }
    }

    __break(1u);
LABEL_19:
    v43 = v4;
    if (!v8)
    {
LABEL_47:

      return;
    }

    if (v8 == *(v18 + 16))
    {
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation8CalendarV9ComponentOGMd);
    v22 = static _SetStorage.allocate(capacity:)();
    v23 = v22;
    if (a2)
    {
      v24 = v41;
      v25 = *v41;
    }

    else
    {
      v25 = 0;
      v24 = v41;
    }

    v26 = 0;
    v27 = v22 + 56;
    while (v25)
    {
      v28 = __clz(__rbit64(v25));
      v25 &= v25 - 1;
LABEL_35:
      v31 = *(*(v18 + 48) + (v28 | (v26 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x1865CD060](v31);
      v32 = Hasher._finalize()();
      v33 = -1 << *(v23 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v27 + 8 * (v34 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v33) >> 6;
        while (++v35 != v38 || (v37 & 1) == 0)
        {
          v39 = v35 == v38;
          if (v35 == v38)
          {
            v35 = 0;
          }

          v37 |= v39;
          v40 = *(v27 + 8 * v35);
          if (v40 != -1)
          {
            v36 = __clz(__rbit64(~v40)) + (v35 << 6);
            goto LABEL_45;
          }
        }

        goto LABEL_50;
      }

      v36 = __clz(__rbit64((-1 << v34) & ~*(v27 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_45:
      *(v27 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
      *(*(v23 + 48) + v36) = v31;
      ++*(v23 + 16);
      v21 = __OFSUB__(v8--, 1);
      if (v21)
      {
        goto LABEL_52;
      }

      v24 = v41;
      if (!v8)
      {
        goto LABEL_47;
      }
    }

    v29 = v26;
    while (1)
    {
      v26 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v26 >= a2)
      {
        goto LABEL_47;
      }

      v30 = v24[v26];
      ++v29;
      if (v30)
      {
        v28 = __clz(__rbit64(v30));
        v25 = (v30 - 1) & v30;
        goto LABEL_35;
      }
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
  }

  __break(1u);
LABEL_52:
  __break(1u);
}

BOOL specialized static WeekendRange.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 8);
  v4 = *(a2 + 32);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (v2 == v4)
    {
      v6 = *(a2 + 24);
    }

    else
    {
      v6 = 0;
    }

    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*(a2 + 24))
    {
      return 0;
    }

    if (*(a1 + 16) != *(a2 + 16) || v2 != v4)
    {
      return 0;
    }
  }

  return *(a1 + 40) == *(a2 + 40);
}

uint64_t lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t lazy protocol witness table accessor for type Calendar.Identifier.CodingKeys and conformance Calendar.Identifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Calendar.Identifier.CodingKeys and conformance Calendar.Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.Identifier.CodingKeys and conformance Calendar.Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Identifier.CodingKeys and conformance Calendar.Identifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.Identifier.CodingKeys and conformance Calendar.Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.Identifier.CodingKeys and conformance Calendar.Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Identifier.CodingKeys and conformance Calendar.Identifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.Identifier.CodingKeys and conformance Calendar.Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.Identifier.CodingKeys and conformance Calendar.Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Identifier.CodingKeys and conformance Calendar.Identifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.Identifier.CodingKeys and conformance Calendar.Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type Calendar.Identifier.CodingKeys and conformance Calendar.Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.Identifier.CodingKeys and conformance Calendar.Identifier.CodingKeys);
  }

  return result;
}

uint64_t specialized Calendar.Identifier.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6169726F67657267 && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473696864647562 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6573656E696863 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x636974706F63 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000181480DF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000181480E10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x776572626568 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x313036386F7369 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6169646E69 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x63696D616C7369 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x4363696D616C7369 && a2 == 0xEC0000006C697669 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6573656E6170616ALL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x6E616973726570 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x63696C6275706572 && a2 == 0xEF616E696843664FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x5463696D616C7369 && a2 == 0xEE0072616C756261 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000181480E30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x616C676E6162 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x69746172616A7567 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6164616E6E616BLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0x616C6179616C616DLL && a2 == 0xE90000000000006DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0x6968746172616DLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 1634296943 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0x6C696D6174 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0x7567756C6574 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0x6D61726B6976 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0x69676E6164 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0x656D616E74656976 && a2 == 0xEA00000000006573)
  {

    return 26;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 26;
    }

    else
    {
      return 27;
    }
  }
}

uint64_t specialized Calendar.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656E6F5A656D6974 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6565577473726966 && a2 == 0xEC0000007961646BLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x800000018147E770 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E6572727563 && a2 == 0xE700000000000000)
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

void specialized static Calendar._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t *a2)
{
  swift_unknownObjectRelease();
  type metadata accessor for _NSSwiftCalendar();
  v4 = swift_dynamicCastClass();
  if (v4)
  {
    v5 = *(v4 + OBJC_IVAR____NSSwiftCalendar__lock);
    v6 = a1;
    os_unfair_lock_lock((v5 + 32));
    v7 = *(v5 + 16);
    v8 = *(v5 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 32));
  }

  else
  {
    type metadata accessor for _CalendarBridged();
    v7 = swift_allocObject();
    *(v7 + 16) = a1;
    v8 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _CalendarBridged and conformance _CalendarBridged, type metadata accessor for _CalendarBridged);
    v9 = a1;
  }

  *a2 = v7;
  a2[1] = v8;
}

unint64_t lazy protocol witness table accessor for type Calendar.ComponentSet and conformance Calendar.ComponentSet()
{
  result = lazy protocol witness table cache variable for type Calendar.ComponentSet and conformance Calendar.ComponentSet;
  if (!lazy protocol witness table cache variable for type Calendar.ComponentSet and conformance Calendar.ComponentSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.ComponentSet and conformance Calendar.ComponentSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.ComponentSet and conformance Calendar.ComponentSet;
  if (!lazy protocol witness table cache variable for type Calendar.ComponentSet and conformance Calendar.ComponentSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.ComponentSet and conformance Calendar.ComponentSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.ComponentSet and conformance Calendar.ComponentSet;
  if (!lazy protocol witness table cache variable for type Calendar.ComponentSet and conformance Calendar.ComponentSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.ComponentSet and conformance Calendar.ComponentSet);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.ComponentSet and conformance Calendar.ComponentSet;
  if (!lazy protocol witness table cache variable for type Calendar.ComponentSet and conformance Calendar.ComponentSet)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.ComponentSet and conformance Calendar.ComponentSet);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Calendar.SearchDirection and conformance Calendar.SearchDirection()
{
  result = lazy protocol witness table cache variable for type Calendar.SearchDirection and conformance Calendar.SearchDirection;
  if (!lazy protocol witness table cache variable for type Calendar.SearchDirection and conformance Calendar.SearchDirection)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.SearchDirection and conformance Calendar.SearchDirection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Calendar.RepeatedTimePolicy and conformance Calendar.RepeatedTimePolicy()
{
  result = lazy protocol witness table cache variable for type Calendar.RepeatedTimePolicy and conformance Calendar.RepeatedTimePolicy;
  if (!lazy protocol witness table cache variable for type Calendar.RepeatedTimePolicy and conformance Calendar.RepeatedTimePolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RepeatedTimePolicy and conformance Calendar.RepeatedTimePolicy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RepeatedTimePolicy and conformance Calendar.RepeatedTimePolicy;
  if (!lazy protocol witness table cache variable for type Calendar.RepeatedTimePolicy and conformance Calendar.RepeatedTimePolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RepeatedTimePolicy and conformance Calendar.RepeatedTimePolicy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.RepeatedTimePolicy and conformance Calendar.RepeatedTimePolicy;
  if (!lazy protocol witness table cache variable for type Calendar.RepeatedTimePolicy and conformance Calendar.RepeatedTimePolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.RepeatedTimePolicy and conformance Calendar.RepeatedTimePolicy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Calendar.MatchingPolicy and conformance Calendar.MatchingPolicy()
{
  result = lazy protocol witness table cache variable for type Calendar.MatchingPolicy and conformance Calendar.MatchingPolicy;
  if (!lazy protocol witness table cache variable for type Calendar.MatchingPolicy and conformance Calendar.MatchingPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.MatchingPolicy and conformance Calendar.MatchingPolicy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.MatchingPolicy and conformance Calendar.MatchingPolicy;
  if (!lazy protocol witness table cache variable for type Calendar.MatchingPolicy and conformance Calendar.MatchingPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.MatchingPolicy and conformance Calendar.MatchingPolicy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Calendar.MatchingPolicy and conformance Calendar.MatchingPolicy;
  if (!lazy protocol witness table cache variable for type Calendar.MatchingPolicy and conformance Calendar.MatchingPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.MatchingPolicy and conformance Calendar.MatchingPolicy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type WeekendRange and conformance WeekendRange()
{
  result = lazy protocol witness table cache variable for type WeekendRange and conformance WeekendRange;
  if (!lazy protocol witness table cache variable for type WeekendRange and conformance WeekendRange)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type WeekendRange and conformance WeekendRange);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for Calendar(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type Calendar and conformance Calendar();
  a1[2] = lazy protocol witness table accessor for type Calendar and conformance Calendar();
  a1[3] = lazy protocol witness table accessor for type Calendar and conformance Calendar();
  result = lazy protocol witness table accessor for type Calendar and conformance Calendar();
  a1[4] = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Calendar.Component(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEE)
  {
    goto LABEL_17;
  }

  if (a2 + 18 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 18) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 18;
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

      return (*a1 | (v4 << 8)) - 18;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 18;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x13;
  v8 = v6 - 19;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Calendar.Component(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 18 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 18) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEE)
  {
    v4 = 0;
  }

  if (a2 > 0xED)
  {
    v5 = ((a2 - 238) >> 8) + 1;
    *result = a2 + 18;
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
    *result = a2 + 18;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Calendar.DatesByAdding and conformance Calendar.DatesByAdding()
{
  result = lazy protocol witness table cache variable for type Calendar.DatesByAdding and conformance Calendar.DatesByAdding;
  if (!lazy protocol witness table cache variable for type Calendar.DatesByAdding and conformance Calendar.DatesByAdding)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.DatesByAdding and conformance Calendar.DatesByAdding);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Calendar.DatesByMatching and conformance Calendar.DatesByMatching()
{
  result = lazy protocol witness table cache variable for type Calendar.DatesByMatching and conformance Calendar.DatesByMatching;
  if (!lazy protocol witness table cache variable for type Calendar.DatesByMatching and conformance Calendar.DatesByMatching)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.DatesByMatching and conformance Calendar.DatesByMatching);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Calendar.Identifier(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Calendar.Identifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t protocol witness for _CalendarProtocol.ordinality(of:in:for:) in conformance _CalendarAutoupdating(char *a1, char *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  CalendarCache.current.getter();
  v7 = v6;
  ObjectType = swift_getObjectType();
  v13 = v3;
  v12 = v4;
  v11 = v5;
  v9 = (*(v7 + 152))(&v13, &v12, &v11, ObjectType, v7);
  swift_unknownObjectRelease();
  return v9;
}

uint64_t specialized _CalendarAutoupdating.copy(changingLocale:changingTimeZone:changingFirstWeekday:changingMinimumDaysInFirstWeek:)(uint64_t *a1, uint64_t *a2, uint64_t a3, int a4, uint64_t a5, int a6)
{
  LODWORD(v6) = a6;
  v11 = *a1;
  v10 = a1[1];
  v12 = a2[1];
  v46 = *a2;
  v47 = v10;
  v45 = v12;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v13 = static CalendarCache.cache;
  os_unfair_lock_lock((static CalendarCache.cache + 32));
  v14 = *(v13 + 16);
  v15 = *(v13 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v13 + 32));
  if (!v14)
  {
    v40 = v11;
    v41 = a4;
    v42 = a3;
    v43 = v6;
    v44 = a5;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v39 = *(&static LocaleCache.cache + 8);
    v16 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v18 = *(v16 + 16);
    v17 = *(v16 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v16 + 32));
    if (!v18)
    {
      LocaleCache.preferences()(&v58);
      v20 = v19;
      type metadata accessor for _LocaleICU();
      v17 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v56 = v64;
      v57[0] = v65[0];
      *(v57 + 12) = *(v65 + 12);
      v52 = v60;
      v53 = v61;
      v54 = v62;
      v55 = v63;
      v51[0] = v58;
      v51[1] = v59;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v58, v50);
      v21 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v51, 0);
      if (v20)
      {
        MEMORY[0x1EEE9AC00](v21);
        os_unfair_lock_lock((v16 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v16 + 16), v51);
        os_unfair_lock_unlock((v16 + 32));
        outlined destroy of LocalePreferences(&v58);

        v17 = *(&v51[0] + 1);
      }

      else
      {
        outlined destroy of LocalePreferences(&v58);
      }
    }

    ObjectType = swift_getObjectType();
    (*(v17 + 200))(&v58, ObjectType, v17);
    swift_unknownObjectRelease();
    v23 = v58;
    if (v58 && v58 != 7)
    {
      *&v39 = type metadata accessor for _CalendarICU();
      v24 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
      v25 = type metadata accessor for _CalendarICU;
    }

    else
    {
      *&v39 = type metadata accessor for _CalendarGregorian();
      v24 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v25 = type metadata accessor for _CalendarGregorian;
    }

    v26 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(v24, 255, v25);
    v49 = v23;
    v48[0] = 0;
    v48[1] = 0;
    v27 = static LocaleCache.cache;
    v38 = *(&static LocaleCache.cache + 8);
    v28 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v29 = *(v28 + 16);
    v6 = *(v28 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v28 + 32));
    if (!v29)
    {
      v37[1] = 0;
      *&v51[0] = v27;
      *(v51 + 8) = v38;
      LocaleCache.preferences()(&v58);
      v31 = v30;
      type metadata accessor for _LocaleICU();
      v6 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v56 = v64;
      v57[0] = v65[0];
      *(v57 + 12) = *(v65 + 12);
      v52 = v60;
      v53 = v61;
      v54 = v62;
      v55 = v63;
      v51[0] = v58;
      v51[1] = v59;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v58, v50);
      v32 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v51, 0);
      v29 = v32;
      if (v31)
      {
        *&v38 = v37;
        MEMORY[0x1EEE9AC00](v32);
        os_unfair_lock_lock((v28 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v28 + 16), v51);
        os_unfair_lock_unlock((v28 + 32));
        outlined destroy of LocalePreferences(&v58);

        v6 = *(&v51[0] + 1);
        v29 = *&v51[0];
      }

      else
      {
        outlined destroy of LocalePreferences(&v58);
      }
    }

    *&v58 = v29;
    *(&v58 + 1) = v6;
    *&v51[0] = 0;
    BYTE8(v51[0]) = 1;
    v33 = (*(v26 + 16))(&v49, v48, &v58, 0, 1, 0, 1, v51, v39, v26);
    MEMORY[0x1EEE9AC00](v33);
    os_unfair_lock_lock((v13 + 32));
    closure #2 in CalendarCache.current.getterpartial apply((v13 + 16), &v58);
    os_unfair_lock_unlock((v13 + 32));
    swift_unknownObjectRelease();
    v15 = *(&v58 + 1);
    a5 = v44;
    LOBYTE(v6) = v43;
    a3 = v42;
    LOBYTE(a4) = v41;
    v11 = v40;
  }

  v34 = swift_getObjectType();
  *&v58 = v11;
  *(&v58 + 1) = v47;
  *&v51[0] = v46;
  *(&v51[0] + 1) = v45;
  v35 = (*(v15 + 112))(&v58, v51, a3, a4 & 1, a5, v6 & 1, v34, v15);
  swift_unknownObjectRelease();
  return v35;
}

uint64_t specialized _CalendarAutoupdating.maximumRange(of:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v2 = static CalendarCache.cache;
  os_unfair_lock_lock((static CalendarCache.cache + 32));
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 32));
  if (!v3)
  {
    v30 = v1;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v29 = *(&static LocaleCache.cache + 8);
    v5 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 32));
    if (!v7)
    {
      LocaleCache.preferences()(&v41);
      v9 = v8;
      type metadata accessor for _LocaleICU();
      v6 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v39 = v47;
      v40[0] = v48[0];
      *(v40 + 12) = *(v48 + 12);
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v38 = v46;
      v34[0] = v41;
      v34[1] = v42;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v41, v33);
      v10 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v34, 0);
      if (v9)
      {
        MEMORY[0x1EEE9AC00](v10);
        os_unfair_lock_lock((v5 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v5 + 16), v34);
        os_unfair_lock_unlock((v5 + 32));
        outlined destroy of LocalePreferences(&v41);

        v6 = *(&v34[0] + 1);
      }

      else
      {
        outlined destroy of LocalePreferences(&v41);
      }
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 200))(&v41, ObjectType, v6);
    swift_unknownObjectRelease();
    v12 = v41;
    if (v41 && v41 != 7)
    {
      *&v29 = type metadata accessor for _CalendarICU();
      v13 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
      v14 = type metadata accessor for _CalendarICU;
    }

    else
    {
      *&v29 = type metadata accessor for _CalendarGregorian();
      v13 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v14 = type metadata accessor for _CalendarGregorian;
    }

    v15 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(v13, 255, v14);
    v32 = v12;
    v31[0] = 0;
    v31[1] = 0;
    v16 = static LocaleCache.cache;
    v28 = *(&static LocaleCache.cache + 8);
    v17 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v17 + 32));
    if (!v19)
    {
      v27[1] = 0;
      *&v34[0] = v16;
      *(v34 + 8) = v28;
      LocaleCache.preferences()(&v41);
      v21 = v20;
      type metadata accessor for _LocaleICU();
      v18 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v39 = v47;
      v40[0] = v48[0];
      *(v40 + 12) = *(v48 + 12);
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v38 = v46;
      v34[0] = v41;
      v34[1] = v42;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v41, v33);
      v22 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v34, 0);
      v19 = v22;
      if (v21)
      {
        *&v28 = v27;
        MEMORY[0x1EEE9AC00](v22);
        os_unfair_lock_lock((v17 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v17 + 16), v34);
        os_unfair_lock_unlock((v17 + 32));
        outlined destroy of LocalePreferences(&v41);

        v18 = *(&v34[0] + 1);
        v19 = *&v34[0];
      }

      else
      {
        outlined destroy of LocalePreferences(&v41);
      }
    }

    *&v41 = v19;
    *(&v41 + 1) = v18;
    *&v34[0] = 0;
    BYTE8(v34[0]) = 1;
    v23 = (*(v15 + 16))(&v32, v31, &v41, 0, 1, 0, 1, v34, v29, v15);
    MEMORY[0x1EEE9AC00](v23);
    os_unfair_lock_lock((v2 + 32));
    closure #2 in CalendarCache.current.getterpartial apply((v2 + 16), &v41);
    os_unfair_lock_unlock((v2 + 32));
    swift_unknownObjectRelease();
    v4 = *(&v41 + 1);
    LOBYTE(v1) = v30;
  }

  v24 = swift_getObjectType();
  LOBYTE(v41) = v1;
  v25 = (*(v4 + 136))(&v41, v24, v4);
  swift_unknownObjectRelease();
  return v25;
}

uint64_t specialized _CalendarAutoupdating.minimumRange(of:)(unsigned __int8 *a1)
{
  v1 = *a1;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v2 = static CalendarCache.cache;
  os_unfair_lock_lock((static CalendarCache.cache + 32));
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v2 + 32));
  if (!v3)
  {
    v30 = v1;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v29 = *(&static LocaleCache.cache + 8);
    v5 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 32));
    if (!v7)
    {
      LocaleCache.preferences()(&v41);
      v9 = v8;
      type metadata accessor for _LocaleICU();
      v6 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v39 = v47;
      v40[0] = v48[0];
      *(v40 + 12) = *(v48 + 12);
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v38 = v46;
      v34[0] = v41;
      v34[1] = v42;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v41, v33);
      v10 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v34, 0);
      if (v9)
      {
        MEMORY[0x1EEE9AC00](v10);
        os_unfair_lock_lock((v5 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v5 + 16), v34);
        os_unfair_lock_unlock((v5 + 32));
        outlined destroy of LocalePreferences(&v41);

        v6 = *(&v34[0] + 1);
      }

      else
      {
        outlined destroy of LocalePreferences(&v41);
      }
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 200))(&v41, ObjectType, v6);
    swift_unknownObjectRelease();
    v12 = v41;
    if (v41 && v41 != 7)
    {
      *&v29 = type metadata accessor for _CalendarICU();
      v13 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
      v14 = type metadata accessor for _CalendarICU;
    }

    else
    {
      *&v29 = type metadata accessor for _CalendarGregorian();
      v13 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v14 = type metadata accessor for _CalendarGregorian;
    }

    v15 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(v13, 255, v14);
    v32 = v12;
    v31[0] = 0;
    v31[1] = 0;
    v16 = static LocaleCache.cache;
    v28 = *(&static LocaleCache.cache + 8);
    v17 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v17 + 32));
    if (!v19)
    {
      v27[1] = 0;
      *&v34[0] = v16;
      *(v34 + 8) = v28;
      LocaleCache.preferences()(&v41);
      v21 = v20;
      type metadata accessor for _LocaleICU();
      v18 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v39 = v47;
      v40[0] = v48[0];
      *(v40 + 12) = *(v48 + 12);
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v38 = v46;
      v34[0] = v41;
      v34[1] = v42;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v41, v33);
      v22 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v34, 0);
      v19 = v22;
      if (v21)
      {
        *&v28 = v27;
        MEMORY[0x1EEE9AC00](v22);
        os_unfair_lock_lock((v17 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v17 + 16), v34);
        os_unfair_lock_unlock((v17 + 32));
        outlined destroy of LocalePreferences(&v41);

        v18 = *(&v34[0] + 1);
        v19 = *&v34[0];
      }

      else
      {
        outlined destroy of LocalePreferences(&v41);
      }
    }

    *&v41 = v19;
    *(&v41 + 1) = v18;
    *&v34[0] = 0;
    BYTE8(v34[0]) = 1;
    v23 = (*(v15 + 16))(&v32, v31, &v41, 0, 1, 0, 1, v34, v29, v15);
    MEMORY[0x1EEE9AC00](v23);
    os_unfair_lock_lock((v2 + 32));
    closure #2 in CalendarCache.current.getterpartial apply((v2 + 16), &v41);
    os_unfair_lock_unlock((v2 + 32));
    swift_unknownObjectRelease();
    v4 = *(&v41 + 1);
    LOBYTE(v1) = v30;
  }

  v24 = swift_getObjectType();
  LOBYTE(v41) = v1;
  v25 = (*(v4 + 128))(&v41, v24, v4);
  swift_unknownObjectRelease();
  return v25;
}

uint64_t specialized _CalendarAutoupdating.range(of:in:for:)(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t *a3)
{
  v3 = *a1;
  LODWORD(v4) = *a2;
  v5 = *a3;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v6 = static CalendarCache.cache;
  os_unfair_lock_lock((static CalendarCache.cache + 32));
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v6 + 32));
  if (!v7)
  {
    v33 = v4;
    v34 = v3;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v32 = *(&static LocaleCache.cache + 8);
    v9 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v11 = *(v9 + 16);
    v10 = *(v9 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v9 + 32));
    if (!v11)
    {
      LocaleCache.preferences()(&v45);
      v13 = v12;
      type metadata accessor for _LocaleICU();
      v10 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v43 = v51;
      v44[0] = v52[0];
      *(v44 + 12) = *(v52 + 12);
      v39 = v47;
      v40 = v48;
      v41 = v49;
      v42 = v50;
      v38[0] = v45;
      v38[1] = v46;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v45, v37);
      v14 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v38, 0);
      if (v13)
      {
        MEMORY[0x1EEE9AC00](v14);
        os_unfair_lock_lock((v9 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v9 + 16), v38);
        os_unfair_lock_unlock((v9 + 32));
        outlined destroy of LocalePreferences(&v45);

        v10 = *(&v38[0] + 1);
      }

      else
      {
        outlined destroy of LocalePreferences(&v45);
      }
    }

    ObjectType = swift_getObjectType();
    (*(v10 + 200))(&v45, ObjectType, v10);
    swift_unknownObjectRelease();
    v16 = v45;
    if (v45 && v45 != 7)
    {
      *&v32 = type metadata accessor for _CalendarICU();
      v17 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
      v18 = type metadata accessor for _CalendarICU;
    }

    else
    {
      *&v32 = type metadata accessor for _CalendarGregorian();
      v17 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v18 = type metadata accessor for _CalendarGregorian;
    }

    v4 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(v17, 255, v18);
    v36 = v16;
    v35[0] = 0;
    v35[1] = 0;
    v19 = static LocaleCache.cache;
    v31 = *(&static LocaleCache.cache + 8);
    v20 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v22 = *(v20 + 16);
    v21 = *(v20 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v20 + 32));
    if (!v22)
    {
      v30[1] = 0;
      *&v38[0] = v19;
      *(v38 + 8) = v31;
      LocaleCache.preferences()(&v45);
      v24 = v23;
      type metadata accessor for _LocaleICU();
      v21 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v43 = v51;
      v44[0] = v52[0];
      *(v44 + 12) = *(v52 + 12);
      v39 = v47;
      v40 = v48;
      v41 = v49;
      v42 = v50;
      v38[0] = v45;
      v38[1] = v46;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v45, v37);
      v25 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v38, 0);
      v22 = v25;
      if (v24)
      {
        *&v31 = v30;
        MEMORY[0x1EEE9AC00](v25);
        os_unfair_lock_lock((v20 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v20 + 16), v38);
        os_unfair_lock_unlock((v20 + 32));
        outlined destroy of LocalePreferences(&v45);

        v21 = *(&v38[0] + 1);
        v22 = *&v38[0];
      }

      else
      {
        outlined destroy of LocalePreferences(&v45);
      }
    }

    *&v45 = v22;
    *(&v45 + 1) = v21;
    *&v38[0] = 0;
    BYTE8(v38[0]) = 1;
    v26 = (*(v4 + 16))(&v36, v35, &v45, 0, 1, 0, 1, v38, v32, v4);
    MEMORY[0x1EEE9AC00](v26);
    os_unfair_lock_lock((v6 + 32));
    closure #2 in CalendarCache.current.getterpartial apply((v6 + 16), &v45);
    os_unfair_lock_unlock((v6 + 32));
    swift_unknownObjectRelease();
    v8 = *(&v45 + 1);
    LOBYTE(v4) = v33;
    LOBYTE(v3) = v34;
  }

  v27 = swift_getObjectType();
  LOBYTE(v38[0]) = v3;
  v37[0] = v4;
  *&v45 = v5;
  v28 = (*(v8 + 144))(v38, v37, &v45, v27, v8);
  swift_unknownObjectRelease();
  return v28;
}

uint64_t specialized _CalendarAutoupdating.debugDescription.getter()
{
  v45 = 0;
  v46 = 0xE000000000000000;
  MEMORY[0x1865CB0E0](0x616470756F747561, 0xED000020676E6974);
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static CalendarCache.cache;
  os_unfair_lock_lock((static CalendarCache.cache + 32));
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v0 + 32));
  if (!v1)
  {
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v26 = *(&static LocaleCache.cache + 8);
    v3 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v5 = *(v3 + 16);
    v4 = *(v3 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v3 + 32));
    if (!v5)
    {
      LocaleCache.preferences()(&v37);
      v7 = v6;
      type metadata accessor for _LocaleICU();
      v4 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v35 = v43;
      v36[0] = v44[0];
      *(v36 + 12) = *(v44 + 12);
      v31 = v39;
      v32 = v40;
      v33 = v41;
      v34 = v42;
      v30[0] = v37;
      v30[1] = v38;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v37, v29);
      v8 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v30, 0);
      if (v7)
      {
        MEMORY[0x1EEE9AC00](v8);
        os_unfair_lock_lock((v3 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v3 + 16), v30);
        os_unfair_lock_unlock((v3 + 32));
        outlined destroy of LocalePreferences(&v37);

        v4 = *(&v30[0] + 1);
      }

      else
      {
        outlined destroy of LocalePreferences(&v37);
      }
    }

    ObjectType = swift_getObjectType();
    (*(v4 + 200))(&v37, ObjectType, v4);
    swift_unknownObjectRelease();
    v10 = v37;
    if (v37 && v37 != 7)
    {
      *&v26 = type metadata accessor for _CalendarICU();
      v11 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
      v12 = type metadata accessor for _CalendarICU;
    }

    else
    {
      *&v26 = type metadata accessor for _CalendarGregorian();
      v11 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v12 = type metadata accessor for _CalendarGregorian;
    }

    v13 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(v11, 255, v12);
    v28 = v10;
    v27[0] = 0;
    v27[1] = 0;
    v14 = static LocaleCache.cache;
    v25 = *(&static LocaleCache.cache + 8);
    v15 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v17 = *(v15 + 16);
    v16 = *(v15 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v15 + 32));
    if (!v17)
    {
      v24[1] = 0;
      *&v30[0] = v14;
      *(v30 + 8) = v25;
      LocaleCache.preferences()(&v37);
      v19 = v18;
      type metadata accessor for _LocaleICU();
      v16 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v35 = v43;
      v36[0] = v44[0];
      *(v36 + 12) = *(v44 + 12);
      v31 = v39;
      v32 = v40;
      v33 = v41;
      v34 = v42;
      v30[0] = v37;
      v30[1] = v38;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v37, v29);
      v20 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v30, 0);
      v17 = v20;
      if (v19)
      {
        *&v25 = v24;
        MEMORY[0x1EEE9AC00](v20);
        os_unfair_lock_lock((v15 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v15 + 16), v30);
        os_unfair_lock_unlock((v15 + 32));
        outlined destroy of LocalePreferences(&v37);

        v16 = *(&v30[0] + 1);
        v17 = *&v30[0];
      }

      else
      {
        outlined destroy of LocalePreferences(&v37);
      }
    }

    *&v37 = v17;
    *(&v37 + 1) = v16;
    *&v30[0] = 0;
    BYTE8(v30[0]) = 1;
    v21 = (*(v13 + 16))(&v28, v27, &v37, 0, 1, 0, 1, v30, v26, v13);
    MEMORY[0x1EEE9AC00](v21);
    os_unfair_lock_lock((v0 + 32));
    closure #2 in CalendarCache.current.getterpartial apply((v0 + 16), &v37);
    os_unfair_lock_unlock((v0 + 32));
    swift_unknownObjectRelease();
    v2 = *(&v37 + 1);
  }

  v22 = swift_getObjectType();
  (*(v2 + 24))(&v37, v22, v2);
  swift_unknownObjectRelease();
  LOBYTE(v30[0]) = v37;
  _print_unlocked<A, B>(_:_:)();
  return v45;
}

uint64_t getEnumTagSinglePayload for Calendar.DatesByMatching(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 334))
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

uint64_t storeEnumTagSinglePayload for Calendar.DatesByMatching(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 332) = 0;
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 334) = 1;
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

    *(result + 334) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Calendar.DatesByAdding(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 332))
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

uint64_t storeEnumTagSinglePayload for Calendar.DatesByAdding(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
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
    *(result + 328) = 0;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 332) = 1;
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

    *(result + 332) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CalendarEnumerationError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for CalendarEnumerationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Calendar.DatesByMatching.Iterator and conformance Calendar.DatesByMatching.Iterator()
{
  result = lazy protocol witness table cache variable for type Calendar.DatesByMatching.Iterator and conformance Calendar.DatesByMatching.Iterator;
  if (!lazy protocol witness table cache variable for type Calendar.DatesByMatching.Iterator and conformance Calendar.DatesByMatching.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.DatesByMatching.Iterator and conformance Calendar.DatesByMatching.Iterator);
  }

  return result;
}

uint64_t DateComponents.setUnits.getter@<X0>(uint64_t *a1@<X8>)
{
  result = v1[184];
  if (v1[56])
  {
    v3 = (v1[40] & 1) == 0;
  }

  else
  {
    v3 = ((v1[40] & 1) == 0) | 2;
  }

  if (!v1[216])
  {
    v3 |= 0x200uLL;
  }

  if (!v1[72])
  {
    v3 |= 4uLL;
  }

  if (!v1[88])
  {
    v3 |= 8uLL;
  }

  if (!v1[120])
  {
    v3 |= 0x10uLL;
  }

  if (!v1[136])
  {
    v3 |= 0x20uLL;
  }

  if (!v1[152])
  {
    v3 |= 0x40uLL;
  }

  if (!v1[184])
  {
    v3 |= 0x80uLL;
  }

  if (!v1[200])
  {
    v3 |= 0x100uLL;
  }

  if (!v1[248])
  {
    v3 |= 0x400uLL;
  }

  if (!v1[264])
  {
    v3 |= 0x800uLL;
  }

  if (!v1[280])
  {
    v3 |= 0x1000uLL;
  }

  if (!v1[104])
  {
    v3 |= 0x40000uLL;
  }

  if (!v1[168])
  {
    v3 |= 0x2000uLL;
  }

  if (v1[282] != 2)
  {
    v3 |= 0x80000uLL;
  }

  *a1 = v3;
  return result;
}

uint64_t DateComponents.mismatchedUnits(comparedTo:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(result + 40);
  if (*(v2 + 40))
  {
    if ((*(result + 40) & 1) == 0)
    {
LABEL_3:
      v4 = 1;
      goto LABEL_8;
    }
  }

  else
  {
    if (*(v2 + 32) != *(result + 32))
    {
      v3 = 1;
    }

    if (v3)
    {
      goto LABEL_3;
    }
  }

  v4 = 0;
LABEL_8:
  if (*(v2 + 56))
  {
    if (*(result + 56))
    {
      goto LABEL_16;
    }

LABEL_15:
    v4 |= 2uLL;
    goto LABEL_16;
  }

  if (*(v2 + 48) == *(result + 48))
  {
    v5 = *(result + 56);
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    goto LABEL_15;
  }

LABEL_16:
  if (*(v2 + 216))
  {
    if (*(result + 216))
    {
      goto LABEL_24;
    }

LABEL_23:
    v4 |= 0x200uLL;
    goto LABEL_24;
  }

  if (*(v2 + 208) == *(result + 208))
  {
    v6 = *(result + 216);
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (*(v2 + 72))
  {
    if (*(result + 72))
    {
      goto LABEL_32;
    }

LABEL_31:
    v4 |= 4uLL;
    goto LABEL_32;
  }

  if (*(v2 + 64) == *(result + 64))
  {
    v7 = *(result + 72);
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    goto LABEL_31;
  }

LABEL_32:
  if (*(v2 + 88))
  {
    if (*(result + 88))
    {
      goto LABEL_40;
    }

LABEL_39:
    v4 |= 8uLL;
    goto LABEL_40;
  }

  if (*(v2 + 80) == *(result + 80))
  {
    v8 = *(result + 88);
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    goto LABEL_39;
  }

LABEL_40:
  if (*(v2 + 120))
  {
    if (*(result + 120))
    {
      goto LABEL_48;
    }

LABEL_47:
    v4 |= 0x10uLL;
    goto LABEL_48;
  }

  if (*(v2 + 112) == *(result + 112))
  {
    v9 = *(result + 120);
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    goto LABEL_47;
  }

LABEL_48:
  if (*(v2 + 136))
  {
    if (*(result + 136))
    {
      goto LABEL_56;
    }

LABEL_55:
    v4 |= 0x20uLL;
    goto LABEL_56;
  }

  if (*(v2 + 128) == *(result + 128))
  {
    v10 = *(result + 136);
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    goto LABEL_55;
  }

LABEL_56:
  if (*(v2 + 152))
  {
    if (*(result + 152))
    {
      goto LABEL_64;
    }

LABEL_63:
    v4 |= 0x40uLL;
    goto LABEL_64;
  }

  if (*(v2 + 144) == *(result + 144))
  {
    v11 = *(result + 152);
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    goto LABEL_63;
  }

LABEL_64:
  if (*(v2 + 184))
  {
    if (*(result + 184))
    {
      goto LABEL_72;
    }

LABEL_71:
    v4 |= 0x80uLL;
    goto LABEL_72;
  }

  if (*(v2 + 176) == *(result + 176))
  {
    v12 = *(result + 184);
  }

  else
  {
    v12 = 1;
  }

  if (v12)
  {
    goto LABEL_71;
  }

LABEL_72:
  if (*(v2 + 200))
  {
    if (*(result + 200))
    {
      goto LABEL_80;
    }

LABEL_79:
    v4 |= 0x100uLL;
    goto LABEL_80;
  }

  if (*(v2 + 192) == *(result + 192))
  {
    v13 = *(result + 200);
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    goto LABEL_79;
  }

LABEL_80:
  if (*(v2 + 248))
  {
    if (*(result + 248))
    {
      goto LABEL_88;
    }

LABEL_87:
    v4 |= 0x400uLL;
    goto LABEL_88;
  }

  if (*(v2 + 240) == *(result + 240))
  {
    v14 = *(result + 248);
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    goto LABEL_87;
  }

LABEL_88:
  if (*(v2 + 264))
  {
    if (*(result + 264))
    {
      goto LABEL_96;
    }

LABEL_95:
    v4 |= 0x800uLL;
    goto LABEL_96;
  }

  if (*(v2 + 256) == *(result + 256))
  {
    v15 = *(result + 264);
  }

  else
  {
    v15 = 1;
  }

  if (v15)
  {
    goto LABEL_95;
  }

LABEL_96:
  v16 = *(result + 280);
  if (*(v2 + 280))
  {
    if (*(result + 280))
    {
      goto LABEL_103;
    }

LABEL_102:
    v4 |= 0x1000uLL;
    goto LABEL_103;
  }

  if (*(v2 + 272) != *(result + 272))
  {
    v16 = 1;
  }

  if (v16)
  {
    goto LABEL_102;
  }

LABEL_103:
  v17 = *(v2 + 281);
  if (*(v2 + 168))
  {
    if (*(result + 168))
    {
      goto LABEL_111;
    }

LABEL_110:
    v4 |= 0x2000uLL;
    goto LABEL_111;
  }

  if (*(v2 + 160) == *(result + 160))
  {
    v18 = *(result + 168);
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    goto LABEL_110;
  }

LABEL_111:
  v19 = *(result + 281);
  if (v17 == 2)
  {
    if (v19 == 2)
    {
      goto LABEL_122;
    }

LABEL_116:
    v4 |= 0x10000uLL;
    v20 = *(result + 104);
    if (*(v2 + 104))
    {
      goto LABEL_123;
    }

    goto LABEL_117;
  }

  if (v19 == 2 || ((v17 ^ v19) & 1) != 0)
  {
    goto LABEL_116;
  }

LABEL_122:
  v20 = *(result + 104);
  if (*(v2 + 104))
  {
LABEL_123:
    if (v20)
    {
      goto LABEL_121;
    }

    goto LABEL_120;
  }

LABEL_117:
  if (*(v2 + 96) != *(result + 96))
  {
    v20 = 1;
  }

  if (v20)
  {
LABEL_120:
    v4 |= 0x40000uLL;
  }

LABEL_121:
  *a2 = v4;
  return result;
}

uint64_t _handleCalendarError(_:date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(uint64_t a1, uint64_t *a2, uint64_t *a3, const void *a4, unsigned __int8 *a5, unsigned __int8 *a6, unsigned __int8 *a7)
{
  v14 = type metadata accessor for Mirror();
  v169 = *(v14 - 8);
  v170 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v166 = (&v161 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v16);
  v165 = (&v161 - v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v161 - v19;
  v21 = type metadata accessor for Logger();
  v174 = *(v21 - 8);
  v175 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v173 = (&v161 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v172 = &v161 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v161 - v26);
  v28 = *a1;
  v167 = *(a1 + 8);
  v168 = v28;
  v29 = *(a1 + 16);
  v30 = *a2;
  v31 = *a3;
  v32 = a3[1];
  memcpy(v191, a4, 0x11BuLL);
  v171 = *a5;
  v33 = *a6;
  v34 = *a7;
  if (!v29)
  {
    v172 = v20;
    v173 = v27;
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v43 = static Calendar.log;
    v36 = v173;
    Logger.init(_:)();
    swift_unknownObjectRetain();
    outlined init with copy of DateComponents(v191, v190);
    v37 = Logger.logObject.getter();
    v44 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    outlined destroy of DateComponents(v191);
    if (!os_log_type_enabled(v37, v44))
    {
      goto LABEL_18;
    }

    LODWORD(v165) = v44;
    v166 = v37;
    v45 = swift_slowAlloc();
    v162 = swift_slowAlloc();
    v189 = v162;
    *v45 = 134350850;
    *(v45 + 4) = v30;
    *(v45 + 12) = 2050;
    v46 = v168;
    *(v45 + 14) = v167;
    *(v45 + 22) = 2082;
    LOBYTE(v190[0]) = v46;
    v47 = Calendar.Component.debugDescription.getter();
    v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v189);

    *(v45 + 24) = v49;
    v168 = v45;
    *(v45 + 32) = 2082;
    v190[0] = 0;
    v190[1] = 0xE000000000000000;
    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(72);
    ObjectType = swift_getObjectType();
    (*(v32 + 24))(&v186, ObjectType, v32);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](10272, 0xE200000000000000);
    *&v186 = v31;
    *(&v186 + 1) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation17_CalendarProtocol_XlMd);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](0x656C61636F6C2029, 0xEA0000000000203ALL);
    v51 = (*(v32 + 32))(&v186, ObjectType, v32);
    v163 = v33;
    if (v186)
    {
      v52 = *(&v186 + 1);
    }

    else
    {
      if (one-time initialization token for cache != -1)
      {
        v51 = swift_once();
      }

      v98 = static LocaleCache.cache;
      MEMORY[0x1EEE9AC00](v51);
      *(&v161 - 2) = 0;
      *(&v161 - 1) = 0xE000000000000000;
      os_unfair_lock_lock((v98 + 48));
      closure #1 in LocaleCache.fixed(_:)partial apply((v98 + 16), &v181);
      os_unfair_lock_unlock((v98 + 48));
      v52 = *(&v181 + 1);
    }

    v99 = swift_getObjectType();
    v100 = (*(v52 + 64))(v99, v52);
    v102 = v101;
    swift_unknownObjectRelease();
    MEMORY[0x1865CB0E0](v100, v102);

    MEMORY[0x1865CB0E0](0x6F7A20656D697420, 0xEC000000203A656ELL);
    (*(v32 + 48))(&v186, ObjectType, v32);
    v103 = v186;
    swift_getObjectType();
    *&v181 = v103;
    v104 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
    MEMORY[0x1865CB0E0](v104);

    swift_unknownObjectRelease();
    MEMORY[0x1865CB0E0](0x6557747372696620, 0xEF203A7961646B65);
    *&v186 = (*(v32 + 56))(ObjectType, v32);
    v105 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v105);

    MEMORY[0x1865CB0E0](0xD000000000000015, 0x8000000181480D50);
    *&v186 = (*(v32 + 72))(ObjectType, v32);
    v106 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v106);
    swift_unknownObjectRelease();

    v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v190[0], v190[1], &v189);

    v108 = v168;
    *(v168 + 34) = v107;
    *(v108 + 42) = 2082;
    memcpy(v190, v191, 0x11BuLL);
    outlined init with copy of DateComponents(v191, &v186);
    v109 = v172;
    DateComponents.customMirror.getter(v172);
    v110 = Mirror.children.getter();
    (*(v169 + 8))(v109, v170);
    v111 = 0xE000000000000000;
    v184 = 0;
    v185 = 0xE000000000000000;
    dispatch thunk of _AnySequenceBox._makeIterator()();
    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (*(&v188 + 1))
    {
      v172 = v110;
      v164 = v34;
      do
      {
        v181 = v186;
        v182 = v187;
        v183 = v188;
        v179 = 0;
        v180 = 0xE000000000000000;
        outlined init with copy of (label: String?, value: Any)(&v181, &v176);
        if (v177)
        {
          v112 = v176;
        }

        else
        {
          v112 = 0;
        }

        if (v177)
        {
          v113 = v177;
        }

        else
        {
          v113 = 0xE000000000000000;
        }

        __swift_destroy_boxed_opaque_existential_1(v178);
        MEMORY[0x1865CB0E0](v112, v113);

        MEMORY[0x1865CB0E0](8250, 0xE200000000000000);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865CB0E0](32, 0xE100000000000000);
        MEMORY[0x1865CB0E0](v179, v180);

        outlined destroy of TermOfAddress?(&v181, &_sSSSg5label_yp5valuetMd);
        dispatch thunk of _AnyIteratorBoxBase.next()();
      }

      while (*(&v188 + 1));
      v114 = v184;
      v111 = v185;
      v34 = v164;
      v108 = v168;
    }

    else
    {
      v114 = 0;
    }

    outlined destroy of DateComponents(v191);

    v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v114, v111, &v189);

    *(v108 + 44) = v115;
    *(v108 + 52) = 2082;
    if (v171)
    {
      v116 = 0x647261776B636162;
    }

    else
    {
      v116 = 0x64726177726F66;
    }

    if (v171)
    {
      v117 = 0xE800000000000000;
    }

    else
    {
      v117 = 0xE700000000000000;
    }

    v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, &v189);

    *(v108 + 54) = v118;
    *(v108 + 62) = 2082;
    v119 = 0x8000000181480F30;
    v120 = 0xD000000000000027;
    if (v163 != 2)
    {
      v120 = 0x746369727473;
      v119 = 0xE600000000000000;
    }

    v121 = 0x8000000181480F60;
    v122 = 0xD000000000000023;
    if (!v163)
    {
      v122 = 0x656D69547478656ELL;
      v121 = 0xE800000000000000;
    }

    if (v163 <= 1)
    {
      v123 = v122;
    }

    else
    {
      v123 = v120;
    }

    if (v163 <= 1)
    {
      v124 = v121;
    }

    else
    {
      v124 = v119;
    }

    v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v123, v124, &v189);

    *(v108 + 64) = v125;
    *(v108 + 72) = 2080;
    if (v34)
    {
      v126 = 1953718636;
    }

    else
    {
      v126 = 0x7473726966;
    }

    if (v34)
    {
      v127 = 0xE400000000000000;
    }

    else
    {
      v127 = 0xE500000000000000;
    }

    v128 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v127, &v189);

    *(v108 + 74) = v128;
    v129 = v166;
    _os_log_impl(&dword_18075C000, v166, v165, "Out of range Calendar enumeration result: start: %{public}f test: %{public}f %{public}s %{public}s %{public}s %{public}s %{public}s %s", v108, 0x52u);
    v130 = v162;
    goto LABEL_130;
  }

  if (v29 != 1)
  {
    if (one-time initialization token for log != -1)
    {
      swift_once();
    }

    v53 = static Calendar.log;
    v36 = v173;
    Logger.init(_:)();
    swift_unknownObjectRetain();
    outlined init with copy of DateComponents(v191, v190);
    v37 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    swift_unknownObjectRelease();
    outlined destroy of DateComponents(v191);
    if (!os_log_type_enabled(v37, v54))
    {
      goto LABEL_18;
    }

    LODWORD(v162) = v54;
    v165 = v37;
    v55 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v189 = v161;
    *v55 = 134350850;
    *(v55 + 4) = v30;
    *(v55 + 12) = 2050;
    v56 = v168;
    *(v55 + 14) = v167;
    *(v55 + 22) = 2082;
    LOBYTE(v190[0]) = v56;
    v57 = Calendar.Component.debugDescription.getter();
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v57, v58, &v189);

    *(v55 + 24) = v59;
    v172 = v55;
    *(v55 + 32) = 2082;
    v190[0] = 0;
    v190[1] = 0xE000000000000000;
    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(72);
    v60 = swift_getObjectType();
    (*(v32 + 24))(&v186, v60, v32);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](10272, 0xE200000000000000);
    *&v186 = v31;
    *(&v186 + 1) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation17_CalendarProtocol_XlMd);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](0x656C61636F6C2029, 0xEA0000000000203ALL);
    v61 = (*(v32 + 32))(&v186, v60, v32);
    if (v186)
    {
      v62 = *(&v186 + 1);
    }

    else
    {
      if (one-time initialization token for cache != -1)
      {
        v61 = swift_once();
      }

      v131 = static LocaleCache.cache;
      MEMORY[0x1EEE9AC00](v61);
      *(&v161 - 2) = 0;
      *(&v161 - 1) = 0xE000000000000000;
      os_unfair_lock_lock((v131 + 48));
      closure #1 in LocaleCache.fixed(_:)partial apply((v131 + 16), &v181);
      os_unfair_lock_unlock((v131 + 48));
      v62 = *(&v181 + 1);
    }

    v132 = swift_getObjectType();
    v133 = (*(v62 + 64))(v132, v62);
    v135 = v134;
    swift_unknownObjectRelease();
    MEMORY[0x1865CB0E0](v133, v135);

    MEMORY[0x1865CB0E0](0x6F7A20656D697420, 0xEC000000203A656ELL);
    (*(v32 + 48))(&v186, v60, v32);
    v136 = v186;
    swift_getObjectType();
    *&v181 = v136;
    v137 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
    MEMORY[0x1865CB0E0](v137);

    swift_unknownObjectRelease();
    MEMORY[0x1865CB0E0](0x6557747372696620, 0xEF203A7961646B65);
    *&v186 = (*(v32 + 56))(v60, v32);
    v138 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v138);

    MEMORY[0x1865CB0E0](0xD000000000000015, 0x8000000181480D50);
    *&v186 = (*(v32 + 72))(v60, v32);
    v139 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v139);
    swift_unknownObjectRelease();

    v140 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v190[0], v190[1], &v189);

    v108 = v172;
    *(v172 + 34) = v140;
    *(v108 + 42) = 2082;
    memcpy(v190, v191, 0x11BuLL);
    outlined init with copy of DateComponents(v191, &v186);
    v141 = v166;
    DateComponents.customMirror.getter(v166);
    v142 = Mirror.children.getter();
    (*(v169 + 8))(v141, v170);
    v143 = 0xE000000000000000;
    v184 = 0;
    v185 = 0xE000000000000000;
    v170 = v142;
    dispatch thunk of _AnySequenceBox._makeIterator()();
    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (*(&v188 + 1))
    {
      v163 = v33;
      v164 = v34;
      do
      {
        v181 = v186;
        v182 = v187;
        v183 = v188;
        v179 = 0;
        v180 = 0xE000000000000000;
        outlined init with copy of (label: String?, value: Any)(&v181, &v176);
        if (v177)
        {
          v144 = v176;
        }

        else
        {
          v144 = 0;
        }

        if (v177)
        {
          v145 = v177;
        }

        else
        {
          v145 = 0xE000000000000000;
        }

        __swift_destroy_boxed_opaque_existential_1(v178);
        MEMORY[0x1865CB0E0](v144, v145);

        MEMORY[0x1865CB0E0](8250, 0xE200000000000000);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865CB0E0](32, 0xE100000000000000);
        MEMORY[0x1865CB0E0](v179, v180);

        outlined destroy of TermOfAddress?(&v181, &_sSSSg5label_yp5valuetMd);
        dispatch thunk of _AnyIteratorBoxBase.next()();
      }

      while (*(&v188 + 1));
      v146 = v184;
      v143 = v185;
      v33 = v163;
      v34 = v164;
      v108 = v172;
    }

    else
    {
      v146 = 0;
    }

    outlined destroy of DateComponents(v191);

    v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v146, v143, &v189);

    *(v108 + 44) = v147;
    *(v108 + 52) = 2082;
    if (v171)
    {
      v148 = 0x647261776B636162;
    }

    else
    {
      v148 = 0x64726177726F66;
    }

    if (v171)
    {
      v149 = 0xE800000000000000;
    }

    else
    {
      v149 = 0xE700000000000000;
    }

    v150 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v148, v149, &v189);

    *(v108 + 54) = v150;
    *(v108 + 62) = 2082;
    v151 = 0x8000000181480F30;
    v152 = 0xD000000000000027;
    if (v33 != 2)
    {
      v152 = 0x746369727473;
      v151 = 0xE600000000000000;
    }

    v153 = 0x8000000181480F60;
    v154 = 0xD000000000000023;
    if (!v33)
    {
      v154 = 0x656D69547478656ELL;
      v153 = 0xE800000000000000;
    }

    if (v33 <= 1)
    {
      v155 = v154;
    }

    else
    {
      v155 = v152;
    }

    if (v33 <= 1)
    {
      v156 = v153;
    }

    else
    {
      v156 = v151;
    }

    v157 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v155, v156, &v189);

    *(v108 + 64) = v157;
    *(v108 + 72) = 2080;
    if (v34)
    {
      v158 = 1953718636;
    }

    else
    {
      v158 = 0x7473726966;
    }

    if (v34)
    {
      v159 = 0xE400000000000000;
    }

    else
    {
      v159 = 0xE500000000000000;
    }

    v160 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v158, v159, &v189);

    *(v108 + 74) = v160;
    v129 = v165;
    _os_log_impl(&dword_18075C000, v165, v162, "Unexpected Calendar enumeration result: start: %{public}f test: %{public}f %{public}s %{public}s %{public}s %{public}s %{public}s %s", v108, 0x52u);
    v130 = v161;
LABEL_130:
    swift_arrayDestroy();
    MEMORY[0x1865D2690](v130, -1, -1);
    MEMORY[0x1865D2690](v108, -1, -1);

    return (*(v174 + 8))(v173, v175);
  }

  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v35 = static Calendar.log;
  v36 = v172;
  Logger.init(_:)();
  swift_unknownObjectRetain();
  outlined init with copy of DateComponents(v191, v190);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();
  outlined destroy of DateComponents(v191);
  if (!os_log_type_enabled(v37, v38))
  {
LABEL_18:

    return (*(v174 + 8))(v36, v175);
  }

  LODWORD(v166) = v38;
  v173 = v37;
  v39 = swift_slowAlloc();
  v162 = swift_slowAlloc();
  v189 = v162;
  *v39 = 134350850;
  *(v39 + 4) = v30;
  *(v39 + 12) = 2050;
  *(v39 + 14) = v168;
  *(v39 + 22) = 2050;
  *(v39 + 24) = v167;
  *(v39 + 32) = 2082;
  v190[0] = 0;
  v190[1] = 0xE000000000000000;
  swift_unknownObjectRetain();
  _StringGuts.grow(_:)(72);
  v40 = swift_getObjectType();
  (*(v32 + 24))(&v186, v40, v32);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](10272, 0xE200000000000000);
  *&v186 = v31;
  *(&v186 + 1) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation17_CalendarProtocol_XlMd);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x656C61636F6C2029, 0xEA0000000000203ALL);
  v41 = (*(v32 + 32))(&v186, v40, v32);
  v164 = v34;
  if (v186)
  {
    v42 = *(&v186 + 1);
  }

  else
  {
    v64 = v39;
    if (one-time initialization token for cache != -1)
    {
      v41 = swift_once();
    }

    v65 = static LocaleCache.cache;
    MEMORY[0x1EEE9AC00](v41);
    *(&v161 - 2) = 0;
    *(&v161 - 1) = 0xE000000000000000;
    os_unfair_lock_lock((v65 + 48));
    closure #1 in LocaleCache.fixed(_:)partial apply((v65 + 16), &v181);
    os_unfair_lock_unlock((v65 + 48));
    v42 = *(&v181 + 1);
    v39 = v64;
  }

  v66 = swift_getObjectType();
  v67 = (*(v42 + 64))(v66, v42);
  v69 = v68;
  swift_unknownObjectRelease();
  MEMORY[0x1865CB0E0](v67, v69);

  MEMORY[0x1865CB0E0](0x6F7A20656D697420, 0xEC000000203A656ELL);
  (*(v32 + 48))(&v186, v40, v32);
  v70 = v186;
  swift_getObjectType();
  *&v181 = v70;
  v71 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
  MEMORY[0x1865CB0E0](v71);

  swift_unknownObjectRelease();
  MEMORY[0x1865CB0E0](0x6557747372696620, 0xEF203A7961646B65);
  *&v186 = (*(v32 + 56))(v40, v32);
  v72 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v72);

  MEMORY[0x1865CB0E0](0xD000000000000015, 0x8000000181480D50);
  *&v186 = (*(v32 + 72))(v40, v32);
  v73 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x1865CB0E0](v73);
  swift_unknownObjectRelease();

  v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v190[0], v190[1], &v189);

  *(v39 + 34) = v74;
  *(v39 + 42) = 2082;
  memcpy(v190, v191, 0x11BuLL);
  outlined init with copy of DateComponents(v191, &v186);
  v75 = v165;
  DateComponents.customMirror.getter(v165);
  v76 = Mirror.children.getter();
  (*(v169 + 8))(v75, v170);
  v77 = 0xE000000000000000;
  v184 = 0;
  v185 = 0xE000000000000000;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  if (*(&v188 + 1))
  {
    v169 = v76;
    v170 = v39;
    v163 = v33;
    do
    {
      v181 = v186;
      v182 = v187;
      v183 = v188;
      v179 = 0;
      v180 = 0xE000000000000000;
      outlined init with copy of (label: String?, value: Any)(&v181, &v176);
      if (v177)
      {
        v78 = v176;
      }

      else
      {
        v78 = 0;
      }

      if (v177)
      {
        v79 = v177;
      }

      else
      {
        v79 = 0xE000000000000000;
      }

      __swift_destroy_boxed_opaque_existential_1(v178);
      MEMORY[0x1865CB0E0](v78, v79);

      MEMORY[0x1865CB0E0](8250, 0xE200000000000000);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x1865CB0E0](32, 0xE100000000000000);
      MEMORY[0x1865CB0E0](v179, v180);

      outlined destroy of TermOfAddress?(&v181, &_sSSSg5label_yp5valuetMd);
      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (*(&v188 + 1));
    v80 = v184;
    v77 = v185;
    v33 = v163;
    v39 = v170;
  }

  else
  {
    v80 = 0;
  }

  outlined destroy of DateComponents(v191);

  v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v80, v77, &v189);

  *(v39 + 44) = v81;
  *(v39 + 52) = 2082;
  if (v171)
  {
    v82 = 0x647261776B636162;
  }

  else
  {
    v82 = 0x64726177726F66;
  }

  if (v171)
  {
    v83 = 0xE800000000000000;
  }

  else
  {
    v83 = 0xE700000000000000;
  }

  v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v82, v83, &v189);

  *(v39 + 54) = v84;
  *(v39 + 62) = 2082;
  v85 = 0x8000000181480F30;
  v86 = 0xD000000000000027;
  if (v33 != 2)
  {
    v86 = 0x746369727473;
    v85 = 0xE600000000000000;
  }

  v87 = 0x8000000181480F60;
  v88 = 0xD000000000000023;
  if (!v33)
  {
    v88 = 0x656D69547478656ELL;
    v87 = 0xE800000000000000;
  }

  if (v33 <= 1)
  {
    v89 = v88;
  }

  else
  {
    v89 = v86;
  }

  if (v33 <= 1)
  {
    v90 = v87;
  }

  else
  {
    v90 = v85;
  }

  v91 = v164;
  v92 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v89, v90, &v189);

  *(v39 + 64) = v92;
  *(v39 + 72) = 2080;
  if (v91)
  {
    v93 = 1953718636;
  }

  else
  {
    v93 = 0x7473726966;
  }

  if (v91)
  {
    v94 = 0xE400000000000000;
  }

  else
  {
    v94 = 0xE500000000000000;
  }

  v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v94, &v189);

  *(v39 + 74) = v95;
  v96 = v173;
  _os_log_impl(&dword_18075C000, v173, v166, "Not advancing Calendar enumeration result: %{public}f next: %{public}f previous: %{public}f %{public}s %{public}s %{public}s %{public}s %s", v39, 0x52u);
  v97 = v162;
  swift_arrayDestroy();
  MEMORY[0x1865D2690](v97, -1, -1);
  MEMORY[0x1865D2690](v39, -1, -1);

  return (*(v174 + 8))(v172, v175);
}

uint64_t _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(uint64_t *a1, uint64_t *a2, const void *a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned __int8 *a6)
{
  v12 = type metadata accessor for Mirror();
  v71 = *(v12 - 8);
  v72 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Logger();
  v74 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v20 = *a2;
  v19 = a2[1];
  memcpy(v87, a3, 0x11BuLL);
  v73 = *a4;
  v21 = *a5;
  v22 = *a6;
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v23 = static Calendar.log;
  Logger.init(_:)();
  swift_unknownObjectRetain();
  outlined init with copy of DateComponents(v87, v86);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  swift_unknownObjectRelease();
  outlined destroy of DateComponents(v87);
  if (os_log_type_enabled(v24, v25))
  {
    v66 = v21;
    v67 = v22;
    v68 = v17;
    v69 = v15;
    v26 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v85 = v64;
    *v26 = 134350338;
    *(v26 + 4) = v18;
    v70 = v26;
    *(v26 + 12) = 2082;
    v86[0] = 0;
    v86[1] = 0xE000000000000000;
    swift_unknownObjectRetain();
    _StringGuts.grow(_:)(72);
    ObjectType = swift_getObjectType();
    (*(v19 + 24))(v83, ObjectType, v19);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](10272, 0xE200000000000000);
    *&v83[0] = v20;
    *(&v83[0] + 1) = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation17_CalendarProtocol_XlMd);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x1865CB0E0](0x656C61636F6C2029, 0xEA0000000000203ALL);
    v28 = (*(v19 + 32))(v83, ObjectType, v19);
    v65 = v25;
    if (*&v83[0])
    {
      v29 = *(&v83[0] + 1);
    }

    else
    {
      if (one-time initialization token for cache != -1)
      {
        v28 = swift_once();
      }

      v31 = static LocaleCache.cache;
      MEMORY[0x1EEE9AC00](v28);
      *(&v64 - 2) = 0;
      *(&v64 - 1) = 0xE000000000000000;
      os_unfair_lock_lock((v31 + 48));
      partial apply for closure #1 in LocaleCache.fixed(_:)((v31 + 16), v80);
      os_unfair_lock_unlock((v31 + 48));
      v29 = *(&v80[0] + 1);
    }

    v32 = swift_getObjectType();
    v33 = (*(v29 + 64))(v32, v29);
    v35 = v34;
    swift_unknownObjectRelease();
    MEMORY[0x1865CB0E0](v33, v35);

    MEMORY[0x1865CB0E0](0x6F7A20656D697420, 0xEC000000203A656ELL);
    (*(v19 + 48))(v83, ObjectType, v19);
    v36 = *&v83[0];
    swift_getObjectType();
    *&v80[0] = v36;
    v37 = dispatch thunk of CustomDebugStringConvertible.debugDescription.getter();
    MEMORY[0x1865CB0E0](v37);

    swift_unknownObjectRelease();
    MEMORY[0x1865CB0E0](0x6557747372696620, 0xEF203A7961646B65);
    *&v83[0] = (*(v19 + 56))(ObjectType, v19);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v38);

    MEMORY[0x1865CB0E0](0xD000000000000015, 0x8000000181480D50);
    *&v83[0] = (*(v19 + 72))(ObjectType, v19);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v39);
    swift_unknownObjectRelease();

    v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86[0], v86[1], &v85);

    v41 = v70;
    *(v70 + 14) = v40;
    *(v41 + 22) = 2082;
    memcpy(v86, v87, 0x11BuLL);
    outlined init with copy of DateComponents(v87, v83);
    DateComponents.customMirror.getter(v14);
    v42 = Mirror.children.getter();
    (*(v71 + 8))(v14, v72);
    v43 = 0xE000000000000000;
    v81 = 0;
    v82 = 0xE000000000000000;
    dispatch thunk of _AnySequenceBox._makeIterator()();
    dispatch thunk of _AnyIteratorBoxBase.next()();
    if (*(&v84 + 1))
    {
      v71 = v42;
      v72 = v24;
      do
      {
        v80[0] = v83[0];
        v80[1] = v83[1];
        v80[2] = v84;
        v78 = 0;
        v79 = 0xE000000000000000;
        outlined init with copy of (label: String?, value: Any)(v80, &v75);
        if (v76)
        {
          v44 = v75;
        }

        else
        {
          v44 = 0;
        }

        if (v76)
        {
          v45 = v76;
        }

        else
        {
          v45 = 0xE000000000000000;
        }

        __swift_destroy_boxed_opaque_existential_1(&v77);
        MEMORY[0x1865CB0E0](v44, v45);

        MEMORY[0x1865CB0E0](8250, 0xE200000000000000);
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x1865CB0E0](32, 0xE100000000000000);
        MEMORY[0x1865CB0E0](v78, v79);

        outlined destroy of TermOfAddress?(v80, &_sSSSg5label_yp5valuetMd);
        dispatch thunk of _AnyIteratorBoxBase.next()();
      }

      while (*(&v84 + 1));
      v46 = v81;
      v43 = v82;
      v24 = v72;
      v41 = v70;
    }

    else
    {
      v46 = 0;
    }

    outlined destroy of DateComponents(v87);

    v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v43, &v85);

    *(v41 + 24) = v47;
    *(v41 + 32) = 2082;
    if (v73)
    {
      v48 = 0x647261776B636162;
    }

    else
    {
      v48 = 0x64726177726F66;
    }

    if (v73)
    {
      v49 = 0xE800000000000000;
    }

    else
    {
      v49 = 0xE700000000000000;
    }

    v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, &v85);

    *(v41 + 34) = v50;
    *(v41 + 42) = 2082;
    v51 = 0x656D69547478656ELL;
    v52 = 0x8000000181480F30;
    v53 = 0xD000000000000027;
    v54 = v65;
    if (v66 != 2)
    {
      v53 = 0x746369727473;
      v52 = 0xE600000000000000;
    }

    v55 = 0x8000000181480F60;
    if (v66)
    {
      v51 = 0xD000000000000023;
    }

    else
    {
      v55 = 0xE800000000000000;
    }

    if (v66 <= 1)
    {
      v56 = v51;
    }

    else
    {
      v56 = v53;
    }

    if (v66 <= 1)
    {
      v57 = v55;
    }

    else
    {
      v57 = v52;
    }

    v58 = v69;
    v59 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v56, v57, &v85);

    *(v41 + 44) = v59;
    *(v41 + 52) = 2080;
    if (v67)
    {
      v60 = 1953718636;
    }

    else
    {
      v60 = 0x7473726966;
    }

    if (v67)
    {
      v61 = 0xE400000000000000;
    }

    else
    {
      v61 = 0xE500000000000000;
    }

    v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v85);

    *(v41 + 54) = v62;
    _os_log_impl(&dword_18075C000, v24, v54, "Unable to find Calendar enumeration result: %{public}f %{public}s %{public}s %{public}s %{public}s %s", v41, 0x3Eu);
    v63 = v64;
    swift_arrayDestroy();
    MEMORY[0x1865D2690](v63, -1, -1);
    MEMORY[0x1865D2690](v41, -1, -1);

    return (*(v74 + 8))(v68, v58);
  }

  else
  {

    return (*(v74 + 8))(v17, v15);
  }
}

Foundation::Date_optional __swiftcall Calendar.DatesByMatching.Iterator.next()()
{
  v4 = v0;
  if (v1[47])
  {
    *v0 = 0;
    *(v0 + 8) = 1;
  }

  else
  {
    v5 = v1;
    v6 = *(v1 + 7);
    v19 = *(v1 + 363);
    v7 = *(v1 + 364);
    v8 = *(v1 + 365);
    v9 = *v1;
    v10 = v5[1];
    v11 = *(v5 + 16);
    v18 = *(v5 + 4);
    memcpy(__dst, v5 + 10, 0x11BuLL);
    v12 = *&v9 + 1;
    if (__OFADD__(*&v9, 1))
    {
      __break(1u);

      v15 = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
    }

    else
    {
      v13 = *(v5 + 3);
      for (i = v18; ; i = v18)
      {
        v37 = i;
        v36 = v6;
        memcpy(__src, __dst, 0x11BuLL);
        v34 = v19;
        v33 = v7;
        v32 = v8;
        v31 = v13;
        v29 = v10;
        v30 = v11;
        swift_unknownObjectRetain();
        outlined init with copy of DateComponents(__dst, v28);
        Calendar._enumerateDatesStep(startingAfter:matching:matchingPolicy:repeatedTimePolicy:direction:inSearchingDate:previouslyReturnedMatchDate:)(&v36, __src, &v34, &v33, &v32, &v31, &v29, &v38);
        memcpy(v28, __src, 0x11BuLL);
        outlined destroy of DateComponents(v28);
        v15 = swift_unknownObjectRelease();
        v16 = v38;
        v17 = v39;
        v13 = v40;
        *(v5 + 3) = v40;
        if (v17 != 2)
        {
          break;
        }

        if (v12 >= v5[46])
        {
          *v5 = v12;
          v23 = v5[7];
          v26 = *(v5 + 4);
          memcpy(v24, v5 + 10, 0x11BuLL);
          memcpy(v20, v5 + 10, 0x11BuLL);
          v21[0] = *(v5 + 365);
          v27[0] = *(v5 + 363);
          v22[0] = *(v5 + 364);
          swift_unknownObjectRetain();
          outlined init with copy of DateComponents(v24, v25);
          _handleCalendarResultNotFound(date:calendar:comps:direction:matchingPolicy:repeatedTimePolicy:)(&v23, &v26, v20, v21, v27, v22);
          memcpy(v25, v20, 0x11BuLL);
          outlined destroy of DateComponents(v25);
          v15 = swift_unknownObjectRelease();
          goto LABEL_13;
        }

        ++v12;
      }

      *v5 = v12;
      if ((v5[6] & 1) != 0 || (v3 = v16, *(v5 + 4) <= v16) && *(v5 + 5) > v16)
      {
        *(v5 + 1) = v16;
        *(v5 + 16) = 0;
        *v4 = v16;
        *(v4 + 8) = 0;
        goto LABEL_15;
      }

LABEL_13:
      *(v5 + 376) = 1;
      *v4 = 0;
      *(v4 + 8) = 1;
    }
  }

LABEL_15:
  result.value = *&v3;
  result.is_nil = v15;
  return result;
}

BOOL Calendar.DatesByMatching.makeIterator()@<W0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  v6 = *(v1 + 40);
  memcpy(__dst, (v1 + 48), 0x11BuLL);
  v7 = *(v1 + 331);
  v8 = *(v1 + 332);
  v9 = *(v1 + 333);
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 368) = 100;
  *(a1 + 64) = v3;
  *(a1 + 72) = v4;
  *(a1 + 32) = *(v1 + 24);
  *(a1 + 48) = v6;
  memcpy((a1 + 80), (v1 + 48), 0x11BuLL);
  *(a1 + 363) = v7;
  *(a1 + 364) = v8;
  *(a1 + 365) = v9;
  *(a1 + 56) = v5;
  *a1 = -1;
  *(a1 + 24) = v5;
  memcpy(v13, (v1 + 48), sizeof(v13));
  v12[0] = v3;
  v12[1] = v4;
  swift_unknownObjectRetain();
  outlined init with copy of DateComponents(__dst, &v11);
  result = DateComponents._validate(for:)(v12);
  *(a1 + 376) = !result;
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance Calendar.DatesByMatching@<X0>(uint64_t a1@<X8>)
{
  Calendar.DatesByMatching.makeIterator()(a1);
  memcpy(v3, v1, 0x14EuLL);
  return outlined destroy of Calendar.DatesByMatching(v3);
}

uint64_t protocol witness for Sequence._copyToContiguousArray() in conformance Calendar.DatesByMatching()
{
  memcpy(__dst, v0, 0x14EuLL);
  v1 = specialized _copySequenceToContiguousArray<A>(_:)(__dst);
  outlined destroy of Calendar.DatesByMatching(__dst);
  return v1;
}

unint64_t lazy protocol witness table accessor for type Calendar.DatesByAdding.Iterator and conformance Calendar.DatesByAdding.Iterator()
{
  result = lazy protocol witness table cache variable for type Calendar.DatesByAdding.Iterator and conformance Calendar.DatesByAdding.Iterator;
  if (!lazy protocol witness table cache variable for type Calendar.DatesByAdding.Iterator and conformance Calendar.DatesByAdding.Iterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Calendar.DatesByAdding.Iterator and conformance Calendar.DatesByAdding.Iterator);
  }

  return result;
}

Foundation::Date_optional __swiftcall Calendar.DatesByAdding.Iterator.next()()
{
  v3 = v0;
  if (*(v1 + 332))
  {
    *v0 = 0;
LABEL_3:
    *(v3 + 8) = 1;
    goto LABEL_20;
  }

  memcpy(__dst, (v1 + 48), 0x11BuLL);
  memcpy(__src, (v1 + 48), 0x11BuLL);
  v4 = *(v1 + 336);
  DateComponents.scaled(by:)(v4, v16);
  memcpy(v18, __src, 0x11BuLL);
  outlined init with copy of DateComponents(__dst, v14);
  outlined destroy of DateComponents(v18);
  memcpy(v19, v16, 0x11BuLL);
  v5 = *(v1 + 8);
  v6 = *(v1 + 16);
  v7 = *(v1 + 331);
  memcpy(v16, v19, 0x11BuLL);
  v8 = one-time initialization token for validCalendarRange;
  swift_unknownObjectRetain();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v6)
  {
    v9 = v6;
  }

  if (*&static Date.validCalendarRange >= v9)
  {
    v10 = *&static Date.validCalendarRange;
  }

  else
  {
    v10 = v9;
  }

  ObjectType = swift_getObjectType();
  *v14 = v10;
  (*(v5 + 200))(__src, v16, v14, v7, ObjectType, v5);
  outlined destroy of DateComponents(v19);
  v12 = swift_unknownObjectRelease();
  v13 = __src[0];
  if (LOBYTE(__src[1]))
  {
    *(v1 + 332) = 1;
    *v3 = v13;
    *(v3 + 8) = 1;
    goto LABEL_20;
  }

  if ((*(v1 + 40) & 1) == 0)
  {
    v2 = __src[0];
    if (*(v1 + 24) > __src[0] || *(v1 + 32) <= __src[0])
    {
      *(v1 + 332) = 1;
      *v3 = 0;
      goto LABEL_3;
    }
  }

  if (__OFADD__(v4, 1))
  {
    __break(1u);
  }

  else
  {
    *(v1 + 336) = v4 + 1;
    *v3 = v13;
    *(v3 + 8) = 0;
  }

LABEL_20:
  result.value = *&v2;
  result.is_nil = v12;
  return result;
}