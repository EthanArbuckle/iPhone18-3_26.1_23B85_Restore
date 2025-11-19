void TermOfAddress.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v81 = *MEMORY[0x1E69E9840];
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSTermOfAddress);
  v4 = objc_opt_self();
  v5 = [v4 neutral];
  v6 = static NSObject.== infix(_:_:)();

  if (v6)
  {

    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
LABEL_70:
    *a2 = v7;
    a2[1] = v8;
    a2[2] = v9;
    a2[3] = v10;
    a2[4] = v11;
    a2[5] = v12;
    a2[6] = v13;
    a2[7] = v14;
    a2[8] = v15;
    a2[9] = v16;
    a2[10] = v17;
    a2[11] = v18;
    a2[12] = v19;
    return;
  }

  v20 = [v4 feminine];
  v21 = static NSObject.== infix(_:_:)();

  if (v21)
  {

    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 1;
    goto LABEL_70;
  }

  v22 = [v4 masculine];
  v23 = static NSObject.== infix(_:_:)();

  if (v23)
  {

    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 2;
    goto LABEL_70;
  }

  v24 = [v4 currentUser];
  v25 = static NSObject.== infix(_:_:)();

  if (v25)
  {

    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 3;
    goto LABEL_70;
  }

  v26 = [a1 languageIdentifier];
  if (v26)
  {
    v27 = v26;
    isTaggedPointer = _objc_isTaggedPointer(v26);
    v29 = v27;
    v30 = v29;
    if (!isTaggedPointer)
    {
LABEL_15:
      *&v78 = 0;
      if (__CFStringIsCF())
      {

        goto LABEL_30;
      }

      v32 = v30;
      String.init(_nativeStorage:)();
      if (v33 || ![v32 length])
      {

        goto LABEL_30;
      }

      String.init(_cocoaString:)();
LABEL_29:

LABEL_30:
      memset(v80, 0, sizeof(v80));
      v78 = 0u;
      v79 = 0u;

      outlined destroy of Locale.Language.Components(&v78);
      String.utf8CString.getter();
      Language = uloc_getLanguage();

      v7 = 0;
      v8 = 0;
      if (Language > 0)
      {
        v77[Language] = 0;
        v7 = MEMORY[0x1865CAEB0](v77);
        v8 = v38;
      }

      String.utf8CString.getter();
      Script = uloc_getScript();

      v11 = 0;
      v40 = 0;
      if (Script > 0)
      {
        v76[Script] = 0;
        v11 = MEMORY[0x1865CAEB0](v76);
        v40 = v41;
      }

      String.utf8CString.getter();
      Country = uloc_getCountry();

      v43 = 0;
      v44 = 0;
      if (Country > 0)
      {
        v75[Country] = 0;
        v43 = MEMORY[0x1865CAEB0](v75, 0);
      }

      v72 = v44;
      v73 = v43;
      if (v8)
      {
        v45 = String.lowercased()();
        object = v45._object;
        countAndFlagsBits = v45._countAndFlagsBits;
        if (v40)
        {
          goto LABEL_38;
        }
      }

      else
      {
        v7 = 0;
        object = 0;
        countAndFlagsBits = 0;
        if (v40)
        {
LABEL_38:

          String.init<A>(_:)();
          v46 = String._capitalized()();
          v67 = v46._object;
          v68 = v46._countAndFlagsBits;

          if (v72)
          {
LABEL_39:
            v47 = String.uppercased()();
            v65 = v47._object;
            v66 = v47._countAndFlagsBits;
LABEL_43:
            v71 = v40;
            outlined consume of Locale.LanguageCode?(0, 0);
            outlined consume of Locale.LanguageCode?(0, 0);
            outlined consume of Locale.LanguageCode?(0, 0);
            swift_bridgeObjectRelease_n();
            goto LABEL_44;
          }

LABEL_42:
          v73 = 0;
          v65 = 0;
          v66 = 0;
          goto LABEL_43;
        }
      }

      v11 = 0;
      v67 = 0;
      v68 = 0;
      if (v72)
      {
        goto LABEL_39;
      }

      goto LABEL_42;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v29);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_30;
        }

        goto LABEL_15;
      }

      v34 = [v30 UTF8String];
      if (!v34)
      {
        goto LABEL_75;
      }

      String.init(utf8String:)(v34);
      if (v35)
      {
LABEL_24:

        goto LABEL_29;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v36)
    {
      [v30 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      goto LABEL_29;
    }

    goto LABEL_24;
  }

  v7 = 0;
  object = 0;
  countAndFlagsBits = 0;
  v11 = 0;
  v71 = 0;
  v72 = 0;
  v67 = 0;
  v68 = 0;
  v73 = 0;
  v65 = 0;
  v66 = 0;
  v8 = 1;
LABEL_44:
  v48 = [a1 pronouns];
  if (v48)
  {
    v49 = v48;
    type metadata accessor for __SwiftDeferredNSArray();
    if (swift_dynamicCastClass())
    {
    }

    else
    {
      v50 = v49;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19NSMorphologyPronounCGMd);
    v74 = swift_dynamicCastClass();
    if (v74)
    {
    }

    else
    {
      swift_unknownObjectRelease();
      [v49 copy];
      type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMorphologyPronoun);
      v51 = _bridgeCocoaArray<A>(_:)();

      swift_unknownObjectRelease();
      v74 = v51;
      if (v51 >> 62)
      {
        goto LABEL_73;
      }
    }

    for (i = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
    {
      v61 = v11;
      v62 = v8;
      v63 = v7;
      v64 = a1;
      if (!i)
      {
        break;
      }

      v8 = 0;
      v11 = v74 & 0xC000000000000001;
      v7 = v74 & 0xFFFFFFFFFFFFFF8;
      v19 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if (v11)
        {
          v53 = MEMORY[0x1865CC0E0](v8, v74);
        }

        else
        {
          if (v8 >= *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_72;
          }

          v53 = *(v74 + 8 * v8 + 32);
        }

        v54 = v53;
        a1 = (v8 + 1);
        if (__OFADD__(v8, 1))
        {
          break;
        }

        implicit closure #2 in TermOfAddress.init(_:)(v53, &v78);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v19 + 16) + 1, 1, v19);
        }

        v56 = *(v19 + 16);
        v55 = *(v19 + 24);
        if (v56 >= v55 >> 1)
        {
          v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1, v19);
        }

        *(v19 + 16) = v56 + 1;
        v57 = (v19 + (v56 << 6));
        v58 = v78;
        v59 = v79;
        v60 = v80[0];
        *(v57 + 77) = *(v80 + 13);
        v57[3] = v59;
        v57[4] = v60;
        v57[2] = v58;
        ++v8;
        if (a1 == i)
        {
          goto LABEL_67;
        }
      }

      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      ;
    }

    v19 = MEMORY[0x1E69E7CC0];
LABEL_67:

    v7 = v63;
    a1 = v64;
    v11 = v61;
    v8 = v62;
  }

  else
  {
    v19 = MEMORY[0x1E69E7CC0];
  }

  v12 = v71;
  if (v8 != 1)
  {

    v16 = v72;
    v15 = v73;
    v10 = object;
    v9 = countAndFlagsBits;
    v14 = v67;
    v13 = v68;
    v18 = v65;
    v17 = v66;
    goto LABEL_70;
  }

  __break(1u);
LABEL_75:
  __break(1u);
}

id implicit closure #2 in TermOfAddress.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1;
  v4 = [v3 pronoun];
  if (!v4)
  {
    goto LABEL_18;
  }

  v5 = v4;
  isTaggedPointer = _objc_isTaggedPointer(v4);
  v7 = v5;
  v8 = v7;
  if (!isTaggedPointer)
  {
LABEL_7:
    v29 = 0;
    if (__CFStringIsCF())
    {
      v10 = 0;

      v12 = 0xE000000000000000;
      goto LABEL_22;
    }

    v13 = v8;
    v14 = String.init(_nativeStorage:)();
    if (v15)
    {
      v10 = v14;
      v12 = v15;

      goto LABEL_22;
    }

    v29 = [v13 length];
    if (!v29)
    {

LABEL_18:
      v10 = 0;
      v12 = 0xE000000000000000;
      goto LABEL_22;
    }

    v10 = String.init(_cocoaString:)();
    v12 = v19;
LABEL_21:

    goto LABEL_22;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v7);
  if (!TaggedPointerTag)
  {
    goto LABEL_14;
  }

  if (TaggedPointerTag == 22)
  {
    result = [v8 UTF8String];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v17 = String.init(utf8String:)(result);
    if (v18)
    {
LABEL_15:
      v10 = v17;
      v12 = v18;

      goto LABEL_21;
    }

    __break(1u);
LABEL_14:
    _CFIndirectTaggedPointerStringGetContents();
    v17 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v18)
    {
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v10 = v26;
      v12 = v27;
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  if (TaggedPointerTag != 2)
  {
    goto LABEL_7;
  }

  MEMORY[0x1EEE9AC00](TaggedPointerTag);
  v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v12 = v11;

LABEL_22:
  v33 = Morphology.init(_:)([v3 morphology]);
  v20 = [v3 dependentMorphology];
  if (v20)
  {
    v21 = v20;
    v22 = v20;
    Morphology.init(_:)(v21);

    v23 = v29;
    v24 = v30;
    v25 = v31 | (v32 << 32);
  }

  else
  {

    v23 = 0;
    v24 = 0;
    v25 = 0;
  }

  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = *v28;
  *(a2 + 29) = *&v28[13];
  *(a2 + 40) = v23;
  *(a2 + 48) = v24;
  *(a2 + 56) = v25;
  *(a2 + 60) = BYTE4(v25);
  return result;
}

void __swiftcall TermOfAddress._bridgeToObjectiveC()(NSTermOfAddress *__return_ptr retstr)
{
  v2 = *(v1 + 12);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = [objc_opt_self() masculine];
      goto LABEL_12;
    }

    if (v2 == 3)
    {
      v3 = [objc_opt_self() currentUser];
      goto LABEL_12;
    }
  }

  else
  {
    if (!v2)
    {
      v3 = [objc_opt_self() neutral];
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = [objc_opt_self() feminine];
LABEL_12:

      v10 = v3;
      return;
    }
  }

  v4 = v1[3];
  *v49 = v1[2];
  *&v49[16] = v4;
  v5 = v1[5];
  v50 = v1[4];
  v51 = v5;
  v6 = v1[1];
  v7 = v1;
  v47 = *v1;
  v48 = v6;
  Locale.Language.languageCode.getter(&v44);
  v8 = v45;
  if (v45)
  {
    v9 = v44;

    outlined consume of Locale.LanguageCode?(v9, v8);
  }

  else
  {
    v11 = v7[3];
    *v49 = v7[2];
    *&v49[16] = v11;
    v12 = v7[5];
    v50 = v7[4];
    v51 = v12;
    v13 = v7[1];
    v47 = *v7;
    v48 = v13;
    Locale.Language.maximalIdentifier.getter();
  }

  v14 = String._bridgeToObjectiveCImpl()();

  v15 = *(v2 + 16);
  v16 = MEMORY[0x1E69E7CC0];
  if (v15)
  {
    v39 = v14;
    v46 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    if (*(v2 + 16))
    {
      v17 = 0;
      v18 = (v2 + 32);
      v40 = v2;
      v41 = v15 - 1;
      do
      {
        v19 = *(v18 + 45);
        v20 = v18[2];
        v21 = *v18;
        v48 = v18[1];
        *v49 = v20;
        v47 = v21;
        *&v49[13] = v19;
        v22 = v48;
        v23 = BYTE1(v48);
        v24 = BYTE2(v48);
        v25 = v20;
        v26 = BYTE2(v20);
        v27 = BYTE3(v20);
        v42 = BYTE4(v20);
        v43 = String._bridgeToObjectiveCImpl()();
        v28 = objc_allocWithZone(NSMorphology);
        outlined init with copy of Morphology.Pronoun(&v47, &v44);

        v29 = [v28 init];
        v30 = v29;
        if (v22 == 3)
        {
          if (v24 == 6)
          {
            goto LABEL_21;
          }
        }

        else
        {
          [v29 setGrammaticalGender_];
          if (v24 == 6)
          {
LABEL_21:
            if (v23 == 14)
            {
              goto LABEL_22;
            }

            goto LABEL_46;
          }
        }

        [v30 setNumber_];
        if (v23 == 14)
        {
LABEL_22:
          if (v25 == 14)
          {
            goto LABEL_23;
          }

          goto LABEL_47;
        }

LABEL_46:
        [v30 setPartOfSpeech_];
        if (v25 == 14)
        {
LABEL_23:
          if (v27 == 2)
          {
            goto LABEL_24;
          }

          goto LABEL_48;
        }

LABEL_47:
        [v30 setGrammaticalCase_];
        if (v27 == 2)
        {
LABEL_24:
          if (v26 == 3)
          {
            goto LABEL_26;
          }

LABEL_25:
          [v30 setPronounType_];
          goto LABEL_26;
        }

LABEL_48:
        [v30 setDetermination_];
        if (v26 != 3)
        {
          goto LABEL_25;
        }

LABEL_26:

        if (v42 != 2)
        {
          [v30 setDefiniteness_];
        }

        if (*&v49[16])
        {
          v31 = v49[28];
          v32 = *&v49[24];
          v33 = *&v49[8];
          v34 = objc_allocWithZone(NSMorphology);

          v35 = [v34 init];
          v36 = v35;
          if (v33 != 3)
          {
            [v35 setGrammaticalGender_];
          }

          if ((*&v33 & 0xFF0000) != 0x60000)
          {
            [v36 setNumber_];
          }

          if ((v33 & 0xFF00) != 0xE00)
          {
            [v36 setPartOfSpeech_];
          }

          v37 = v32 | (v31 << 32);
          if (v32 != 14)
          {
            [v36 setGrammaticalCase_];
          }

          if (BYTE3(v32) != 2)
          {
            [v36 setDetermination_];
          }

          if (BYTE2(v32) != 3)
          {
            [v36 setPronounType_];
          }

          if (v31 != 2)
          {
            [v36 setDefiniteness_];
          }
        }

        else
        {
          v36 = 0;
        }

        [objc_allocWithZone(NSMorphologyPronoun) initWithPronoun:v43 morphology:v30 dependentMorphology:v36];
        outlined destroy of Morphology.Pronoun(&v47);

        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v41 == v17)
        {
          goto LABEL_54;
        }

        ++v17;
        v18 += 4;
      }

      while (v17 < *(v40 + 16));
    }

    __break(1u);
LABEL_54:
    v16 = v46;
    v14 = v39;
  }

  if (v16 >> 62)
  {
    if (v16 < 0)
    {
      v38 = v16;
    }

    else
    {
      v38 = v16 & 0xFFFFFFFFFFFFFF8;
    }
  }

  else
  {
    type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSMorphologyPronoun);
    v38 = _ContiguousArrayBuffer._asCocoaArray()();
  }

  [objc_opt_self() localizedForLanguageIdentifier:v14 withPronouns:v38];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

__n128 static TermOfAddress._forceBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v4;
  v11 = *(a2 + 96);
  v5 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v5;
  v6 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v6;
  outlined destroy of TermOfAddress?(v10, &_s10Foundation13TermOfAddressVSgMd);
  TermOfAddress.init(_:)(a1, v12);
  v7 = v12[5];
  *(a2 + 64) = v12[4];
  *(a2 + 80) = v7;
  *(a2 + 96) = v13;
  v8 = v12[1];
  *a2 = v12[0];
  *(a2 + 16) = v8;
  result = v12[3];
  *(a2 + 32) = v12[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t static TermOfAddress._conditionallyBridgeFromObjectiveC(_:result:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v4;
  v12 = *(a2 + 96);
  v5 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v5;
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  outlined destroy of TermOfAddress?(v11, &_s10Foundation13TermOfAddressVSgMd);
  TermOfAddress.init(_:)(a1, v13);
  v7 = v13[5];
  *(a2 + 64) = v13[4];
  *(a2 + 80) = v7;
  *(a2 + 96) = v14;
  v8 = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = v8;
  v9 = v13[3];
  *(a2 + 32) = v13[2];
  *(a2 + 48) = v9;
  return 1;
}

void static TermOfAddress._unconditionallyBridgeFromObjectiveC(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;

    TermOfAddress.init(_:)(v3, a2);
  }

  else
  {
    __break(1u);
  }
}

__n128 protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance TermOfAddress(void *a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  v10[4] = *(a2 + 64);
  v10[5] = v4;
  v11 = *(a2 + 96);
  v5 = *(a2 + 16);
  v10[0] = *a2;
  v10[1] = v5;
  v6 = *(a2 + 48);
  v10[2] = *(a2 + 32);
  v10[3] = v6;
  outlined destroy of TermOfAddress?(v10, &_s10Foundation13TermOfAddressVSgMd);
  TermOfAddress.init(_:)(a1, v12);
  v7 = v12[5];
  *(a2 + 64) = v12[4];
  *(a2 + 80) = v7;
  *(a2 + 96) = v13;
  v8 = v12[1];
  *a2 = v12[0];
  *(a2 + 16) = v8;
  result = v12[3];
  *(a2 + 32) = v12[2];
  *(a2 + 48) = result;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance TermOfAddress(void *a1, uint64_t a2)
{
  v4 = *(a2 + 80);
  v11[4] = *(a2 + 64);
  v11[5] = v4;
  v12 = *(a2 + 96);
  v5 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v5;
  v6 = *(a2 + 48);
  v11[2] = *(a2 + 32);
  v11[3] = v6;
  outlined destroy of TermOfAddress?(v11, &_s10Foundation13TermOfAddressVSgMd);
  TermOfAddress.init(_:)(a1, v13);
  v7 = v13[5];
  *(a2 + 64) = v13[4];
  *(a2 + 80) = v7;
  *(a2 + 96) = v14;
  v8 = v13[1];
  *a2 = v13[0];
  *(a2 + 16) = v8;
  v9 = v13[3];
  *(a2 + 32) = v13[2];
  *(a2 + 48) = v9;
  return 1;
}

void protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance TermOfAddress(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = a1;

    TermOfAddress.init(_:)(v3, a2);
  }

  else
  {
    __break(1u);
  }
}

uint64_t specialized static TermOfAddress.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[5];
  v35 = a1[4];
  v36 = v3;
  v4 = a1[1];
  v32[0] = *a1;
  v32[1] = v4;
  v5 = a1[3];
  v7 = *a1;
  v6 = a1[1];
  v33 = a1[2];
  v34 = v5;
  v8 = a2[1];
  v38[0] = *a2;
  v38[1] = v8;
  v9 = a2[3];
  v10 = a2[5];
  v41 = a2[4];
  v42 = v10;
  v11 = a2[3];
  v12 = *a2;
  v13 = a2[1];
  v39 = a2[2];
  v40 = v11;
  v44[0] = v7;
  v44[1] = v6;
  v14 = a1[5];
  v44[4] = v35;
  v44[5] = v14;
  v44[2] = v33;
  v44[3] = v2;
  v48 = v39;
  v47 = v13;
  v37 = *(a1 + 12);
  v43 = *(a2 + 12);
  v15 = *(a1 + 12);
  v46 = v12;
  v16 = a2[5];
  v17 = *(a2 + 12);
  v45 = v15;
  v52 = v17;
  v51 = v16;
  v50 = v41;
  v49 = v9;
  v18 = v37;
  v19 = v43;
  if (v37 <= 1)
  {
    if (v37)
    {
      if (v37 == 1)
      {
        if (v43 == 1)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      }

      goto LABEL_10;
    }

    if (v43)
    {
      goto LABEL_15;
    }

LABEL_17:
    outlined init with copy of TermOfAddress._TermOfAddress(v38, v31);
    v20 = 1;
    goto LABEL_20;
  }

  if (v37 == 2)
  {
    if (v43 != 2)
    {
      goto LABEL_15;
    }

    goto LABEL_17;
  }

  if (v37 != 3)
  {
LABEL_10:
    if (v43 >= 4)
    {
      outlined init with copy of TermOfAddress._TermOfAddress(v38, v31);
      outlined init with copy of TermOfAddress._TermOfAddress(v32, v31);
      v22 = Locale.Language.maximalIdentifier.getter();
      v24 = v23;
      v25 = a2[3];
      v31[2] = a2[2];
      v31[3] = v25;
      v26 = a2[5];
      v31[4] = a2[4];
      v31[5] = v26;
      v27 = a2[1];
      v31[0] = *a2;
      v31[1] = v27;
      if (v22 == Locale.Language.maximalIdentifier.getter() && v24 == v28)
      {
      }

      else
      {
        v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v20 = 0;
        if ((v29 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v20 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ10Foundation10MorphologyV7PronounV_Tt1g5(v18, v19);
      goto LABEL_20;
    }

    goto LABEL_15;
  }

  if (v43 != 3)
  {
LABEL_15:
    outlined init with copy of TermOfAddress._TermOfAddress(v38, v31);
    outlined init with copy of TermOfAddress._TermOfAddress(v32, v31);
    v20 = 0;
    goto LABEL_20;
  }

  v20 = 1;
LABEL_20:
  outlined destroy of TermOfAddress?(v44, &_s10Foundation13TermOfAddressV01_bcD0O_AEtMd);
  return v20 & 1;
}

unint64_t lazy protocol witness table accessor for type TermOfAddress.CodingKeys and conformance TermOfAddress.CodingKeys()
{
  result = lazy protocol witness table cache variable for type TermOfAddress.CodingKeys and conformance TermOfAddress.CodingKeys;
  if (!lazy protocol witness table cache variable for type TermOfAddress.CodingKeys and conformance TermOfAddress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TermOfAddress.CodingKeys and conformance TermOfAddress.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TermOfAddress.CodingKeys and conformance TermOfAddress.CodingKeys;
  if (!lazy protocol witness table cache variable for type TermOfAddress.CodingKeys and conformance TermOfAddress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TermOfAddress.CodingKeys and conformance TermOfAddress.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TermOfAddress.CodingKeys and conformance TermOfAddress.CodingKeys;
  if (!lazy protocol witness table cache variable for type TermOfAddress.CodingKeys and conformance TermOfAddress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TermOfAddress.CodingKeys and conformance TermOfAddress.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TermOfAddress.CodingKeys and conformance TermOfAddress.CodingKeys;
  if (!lazy protocol witness table cache variable for type TermOfAddress.CodingKeys and conformance TermOfAddress.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TermOfAddress.CodingKeys and conformance TermOfAddress.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Morphology.GrammaticalGender and conformance Morphology.GrammaticalGender()
{
  result = lazy protocol witness table cache variable for type Morphology.GrammaticalGender and conformance Morphology.GrammaticalGender;
  if (!lazy protocol witness table cache variable for type Morphology.GrammaticalGender and conformance Morphology.GrammaticalGender)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.GrammaticalGender and conformance Morphology.GrammaticalGender);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.GrammaticalGender and conformance Morphology.GrammaticalGender;
  if (!lazy protocol witness table cache variable for type Morphology.GrammaticalGender and conformance Morphology.GrammaticalGender)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.GrammaticalGender and conformance Morphology.GrammaticalGender);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.GrammaticalGender and conformance Morphology.GrammaticalGender;
  if (!lazy protocol witness table cache variable for type Morphology.GrammaticalGender and conformance Morphology.GrammaticalGender)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.GrammaticalGender and conformance Morphology.GrammaticalGender);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Morphology.Pronoun and conformance Morphology.Pronoun()
{
  result = lazy protocol witness table cache variable for type Morphology.Pronoun and conformance Morphology.Pronoun;
  if (!lazy protocol witness table cache variable for type Morphology.Pronoun and conformance Morphology.Pronoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.Pronoun and conformance Morphology.Pronoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.Pronoun and conformance Morphology.Pronoun;
  if (!lazy protocol witness table cache variable for type Morphology.Pronoun and conformance Morphology.Pronoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.Pronoun and conformance Morphology.Pronoun);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Morphology.Pronoun and conformance Morphology.Pronoun;
  if (!lazy protocol witness table cache variable for type Morphology.Pronoun and conformance Morphology.Pronoun)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Morphology.Pronoun and conformance Morphology.Pronoun);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Morphology.Pronoun] and conformance <A> [A](unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation10MorphologyV7PronounVGMd);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type TermOfAddress and conformance TermOfAddress()
{
  result = lazy protocol witness table cache variable for type TermOfAddress and conformance TermOfAddress;
  if (!lazy protocol witness table cache variable for type TermOfAddress and conformance TermOfAddress)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TermOfAddress and conformance TermOfAddress);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TermOfAddress and conformance TermOfAddress;
  if (!lazy protocol witness table cache variable for type TermOfAddress and conformance TermOfAddress)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TermOfAddress and conformance TermOfAddress);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type TermOfAddress and conformance TermOfAddress;
  if (!lazy protocol witness table cache variable for type TermOfAddress and conformance TermOfAddress)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type TermOfAddress and conformance TermOfAddress);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation13TermOfAddressV01_bcD0O(uint64_t a1)
{
  v1 = *(a1 + 96);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for TermOfAddress(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFB && *(a1 + 104))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 96);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 4;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for TermOfAddress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483644;
    if (a3 > 0x7FFFFFFB)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFB)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 96) = a2 + 3;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TermOfAddress._TermOfAddress(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 104))
  {
    return (*a1 + 2147483644);
  }

  v3 = *(a1 + 96);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for TermOfAddress._TermOfAddress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *(result + 96) = 0;
    *(result + 64) = 0u;
    *(result + 80) = 0u;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 104) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 104) = 0;
    }

    if (a2)
    {
      *(result + 96) = a2 + 3;
    }
  }

  return result;
}

double destructiveInjectEnumTag for TermOfAddress._TermOfAddress(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 72) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 96) = (a2 - 1);
  }

  return result;
}

unint64_t specialized TermOfAddress.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of TermOfAddress.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t outlined consume of PresentationIntent.Kind(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 3)
  {
  }

  return result;
}

uint64_t outlined copy of PresentationIntent.Kind(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2 || a3 == 3)
  {
  }

  return result;
}

id NSAttributedString.init(contentsOf:options:baseURL:)(uint64_t a1, char *a2, uint64_t *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = a2[1];
  v6 = a2[2];
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v21 = a2[24];
  v9 = *a3;
  v10 = a3[1];
  ObjectType = swift_getObjectType();
  v12 = (*(v3 + 432))(ObjectType, v3);
  swift_unknownObjectRelease();
  type metadata accessor for NSAttributedStringMarkdownParsingOptions();
  LOBYTE(v22[0]) = v4;
  BYTE1(v22[0]) = v5;
  BYTE2(v22[0]) = v6;
  v22[1] = v7;
  v22[2] = v8;
  v23 = v21;
  v13 = NSAttributedStringMarkdownParsingOptions.init(_:)(v22);
  if (v9)
  {
    v14 = swift_getObjectType();
    v15 = (*(v10 + 432))(v14, v10);
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0;
  }

  v16 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v22[0] = 0;
  v17 = [v16 initWithContentsOfMarkdownFileAtURL:v12 options:v13 baseURL:v15 error:v22];

  if (v17)
  {
    v18 = v22[0];
  }

  else
  {
    if (v22[0])
    {
      v22[0];
    }

    else
    {
      if (one-time initialization token for _nilObjCError != -1)
      {
        swift_once();
      }

      v19 = _nilObjCError;
    }

    swift_willThrow();
  }

  return v17;
}

unint64_t type metadata accessor for NSAttributedStringMarkdownParsingOptions()
{
  result = lazy cache variable for type metadata for NSAttributedStringMarkdownParsingOptions;
  if (!lazy cache variable for type metadata for NSAttributedStringMarkdownParsingOptions)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for NSAttributedStringMarkdownParsingOptions);
  }

  return result;
}

id NSAttributedString.init(markdown:options:baseURL:)(uint64_t a1, unint64_t a2, char *a3, uint64_t *a4)
{
  v6 = a1;
  v30 = *MEMORY[0x1E69E9840];
  v7 = a3[1];
  v8 = a3[2];
  v9 = *(a3 + 1);
  v10 = *a4;
  v11 = a4[1];
  v12 = a2 >> 62;
  v25 = *a3;
  v24 = *(a3 + 2);
  v23 = a3[24];
  if ((a2 >> 62) <= 1)
  {
    if (!v12)
    {
      v26 = a1;
      LOWORD(v27) = a2;
      BYTE2(v27) = BYTE2(a2);
      BYTE3(v27) = BYTE3(a2);
      BYTE4(v27) = BYTE4(a2);
      BYTE5(v27) = BYTE5(a2);
      v13 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:&v26 length:BYTE6(a2)];
      goto LABEL_9;
    }

    a1 = a1;
    v14 = v6 >> 32;
    if (v6 >> 32 < v6)
    {
      __break(1u);
      goto LABEL_21;
    }

    goto LABEL_7;
  }

  if (v12 == 2)
  {
    a1 = *(a1 + 16);
    v14 = *(v6 + 24);
LABEL_7:
    v13 = __DataStorage.bridgedReference(_:)(a1, v14);
    goto LABEL_9;
  }

  v13 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) init];
LABEL_9:
  v15 = v13;
  type metadata accessor for NSAttributedStringMarkdownParsingOptions();
  LOBYTE(v26) = v25;
  BYTE1(v26) = v7;
  BYTE2(v26) = v8;
  v27 = v9;
  v28 = v24;
  v29 = v23;
  v16 = NSAttributedStringMarkdownParsingOptions.init(_:)(&v26);
  if (v10)
  {
    ObjectType = swift_getObjectType();
    v18 = (*(v11 + 432))(ObjectType, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v18 = 0;
  }

  v19 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v26 = 0;
  v4 = [v19 initWithMarkdown:v15 options:v16 baseURL:v18 error:&v26];

  if (!v4)
  {
    if (v26)
    {
      v26;
LABEL_18:
      swift_willThrow();
      outlined consume of Data._Representation(v6, a2);
      return v4;
    }

    if (one-time initialization token for _nilObjCError == -1)
    {
LABEL_17:
      v21 = _nilObjCError;
      goto LABEL_18;
    }

LABEL_21:
    swift_once();
    goto LABEL_17;
  }

  v20 = v26;
  outlined consume of Data._Representation(v6, a2);
  return v4;
}

id NSAttributedString.init(markdown:options:baseURL:)(uint64_t a1, uint64_t a2, char *a3, uint64_t *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v5 = a3[1];
  v6 = a3[2];
  v7 = *(a3 + 1);
  v8 = *(a3 + 2);
  v9 = a3[24];
  v10 = *a4;
  v11 = a4[1];
  v20 = String._bridgeToObjectiveCImpl()();

  type metadata accessor for NSAttributedStringMarkdownParsingOptions();
  LOBYTE(v21[0]) = v4;
  BYTE1(v21[0]) = v5;
  BYTE2(v21[0]) = v6;
  v21[1] = v7;
  v21[2] = v8;
  v22 = v9;
  v12 = NSAttributedStringMarkdownParsingOptions.init(_:)(v21);
  if (v10)
  {
    ObjectType = swift_getObjectType();
    v14 = (*(v11 + 432))(ObjectType, v11);
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0;
  }

  v15 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v21[0] = 0;
  v16 = [v15 initWithMarkdownString:v20 options:v12 baseURL:v14 error:v21];
  swift_unknownObjectRelease();

  if (v16)
  {
    v17 = v21[0];
  }

  else
  {
    if (v21[0])
    {
      v21[0];
    }

    else
    {
      if (one-time initialization token for _nilObjCError != -1)
      {
        swift_once();
      }

      v18 = _nilObjCError;
    }

    swift_willThrow();
  }

  return v16;
}

uint64_t closure #1 in NSObject.__NS_swiftOverlay_keyPathsForValuesAffectingValueForKey(_:original:)@<X0>(uint64_t *a1@<X8>)
{
  result = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v3)
  {
    *a1 = result;
    a1[1] = v3;
  }

  else
  {
    _StringGuts.grow(_:)(42);
    MEMORY[0x1865CB0E0](0xD000000000000028, 0x800000018147D780);
    type metadata accessor for AnyKeyPath();
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t __KVOKeyPathBridgeMachinery.BridgeKey.isEqual(_:)(uint64_t a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCC10FoundationP33_6DA0945A07226B3278459E9368612FF427__KVOKeyPathBridgeMachinery9BridgeKey_value);
  v3 = *(v1 + OBJC_IVAR____TtCC10FoundationP33_6DA0945A07226B3278459E9368612FF427__KVOKeyPathBridgeMachinery9BridgeKey_value + 8);
  outlined init with copy of Any?(a1, v10);
  if (!v11)
  {
    outlined destroy of TermOfAddress?(v10, &_sypSgMd);
    goto LABEL_9;
  }

  type metadata accessor for __KVOKeyPathBridgeMachinery.BridgeKey();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    v7 = 0;
    return v7 & 1;
  }

  v5 = *&v9[OBJC_IVAR____TtCC10FoundationP33_6DA0945A07226B3278459E9368612FF427__KVOKeyPathBridgeMachinery9BridgeKey_value];
  v4 = *&v9[OBJC_IVAR____TtCC10FoundationP33_6DA0945A07226B3278459E9368612FF427__KVOKeyPathBridgeMachinery9BridgeKey_value + 8];

  if (v2 == v5 && v3 == v4)
  {

    v7 = 1;
  }

  else
  {
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v7 & 1;
}

id __KVOKeyPathBridgeMachinery.BridgeKey.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id NSKeyValueObservation.Helper.__deallocating_deinit()
{
  NSKeyValueObservation.Helper.invalidate()();
  MEMORY[0x1865D2690](*&v0[OBJC_IVAR____TtCC10Foundation21NSKeyValueObservationP33_6DA0945A07226B3278459E9368612FF46Helper_lock], -1, -1);
  v2.receiver = v0;
  v2.super_class = type metadata accessor for NSKeyValueObservation.Helper();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id NSKeyValueObservation.__deallocating_deinit()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    NSKeyValueObservation.Helper.invalidate()();
  }

  swift_unknownObjectWeakAssign();
  v5.receiver = v1;
  v5.super_class = type metadata accessor for NSKeyValueObservation();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

id NSKeyValueObservation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t specialized _setUpCast<A, B>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v58 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Optional();
  v59 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = v3 & 0xC000000000000001;
  if ((v3 & 0xC000000000000001) != 0)
  {
    v16 = __CocoaSet.count.getter();
    v53 = v11;
    if (v16)
    {
      goto LABEL_3;
    }

LABEL_6:
    v17 = MEMORY[0x1E69E7CD0];
    v51 = v6;
    v52 = v8;
    if (v15)
    {
      goto LABEL_4;
    }

LABEL_7:
    v23 = -1 << *(v3 + 32);
    v19 = v3 + 56;
    v20 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v21 = v25 & *(v3 + 56);

    v60 = 0;
    goto LABEL_11;
  }

  v22 = *(v3 + 16);
  v53 = v11;
  if (!v22)
  {
    goto LABEL_6;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys11AnyHashableVGMd);
  v17 = static _SetStorage.allocate(capacity:)();
  v51 = v6;
  v52 = v8;
  if (!v15)
  {
    goto LABEL_7;
  }

LABEL_4:

  __CocoaSet.makeIterator()();
  result = Set.Iterator.init(_cocoa:)();
  v3 = v65;
  v19 = v66;
  v20 = v67;
  v60 = v68;
  v21 = v69;
LABEL_11:
  v61 = (v4 + 56);
  v50 = v59 + 2;
  v49 = (v4 + 48);
  v48 = (v59 + 1);
  v59 = (v4 + 32);
  v54 = v20;
  v55 = v4;
  v26 = (v20 + 64) >> 6;
  v56 = v3;
  v57 = v4 + 16;
  v27 = v17 + 56;
  while (v3 < 0)
  {
    v33 = __CocoaSet.Iterator.next()();
    if (!v33)
    {
LABEL_38:
      (*v61)(v14, 1, 1, a2);
      outlined consume of Set<AnyKeyPath>.Iterator._Variant();

      return v17;
    }

    v34 = v33;
    isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
    v36 = v61;
    if (isClassOrObjCExistentialType)
    {
      *&v62 = v34;
      swift_dynamicCast();
      v37 = *v36;
    }

    else
    {
      v37 = *v61;
      (*v61)(v53, 1, 1, a2);
      _bridgeNonVerbatimFromObjectiveC<A>(_:_:_:)();
      (*v50)(v52, v53, v51);
      result = (*v49)(v52, 1, a2);
      if (result == 1)
      {
        goto LABEL_40;
      }

      (*v48)(v53, v51);
      swift_unknownObjectRelease();
      (*v59)(v14, v52, a2);
    }

    v37(v14, 0, 1, a2);
    v4 = v55;
    v3 = v56;
LABEL_27:
    (*v59)(v58, v14, a2);
    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(*(v17 + 40));
    v40 = -1 << *(v17 + 32);
    v41 = result & ~v40;
    v42 = v41 >> 6;
    if (((-1 << v41) & ~*(v27 + 8 * (v41 >> 6))) != 0)
    {
      v28 = __clz(__rbit64((-1 << v41) & ~*(v27 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v43 = 0;
      v44 = (63 - v40) >> 6;
      do
      {
        if (++v42 == v44 && (v43 & 1) != 0)
        {
          __break(1u);
          goto LABEL_39;
        }

        v45 = v42 == v44;
        if (v42 == v44)
        {
          v42 = 0;
        }

        v43 |= v45;
        v46 = *(v27 + 8 * v42);
      }

      while (v46 == -1);
      v28 = __clz(__rbit64(~v46)) + (v42 << 6);
    }

    *(v27 + ((v28 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v28;
    v29 = *(v17 + 48) + 40 * v28;
    v30 = v62;
    v31 = v63;
    *(v29 + 32) = v64;
    *v29 = v30;
    *(v29 + 16) = v31;
    ++*(v17 + 16);
  }

  if (v21)
  {
    v32 = v60;
LABEL_26:
    v39 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    (*(v4 + 16))(v14, *(v3 + 48) + *(v4 + 72) * (v39 | (v32 << 6)), a2);
    (*(v4 + 56))(v14, 0, 1, a2);
    goto LABEL_27;
  }

  v38 = v60;
  while (1)
  {
    v32 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v32 >= v26)
    {
      goto LABEL_38;
    }

    v21 = *(v19 + 8 * v32);
    ++v38;
    if (v21)
    {
      v60 = v32;
      goto LABEL_26;
    }
  }

LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
  return result;
}

uint64_t _KeyValueCodingAndObserving.willChange<A>(_:valuesAt:for:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, SEL *a5)
{
  v7 = *(*a3 + *MEMORY[0x1E69E77B0]);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = *v9;
  (*(v11 + 16))(v18 - v12, v13, v7, v8);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  swift_dynamicCast();
  v14 = v18[5];
  [*(v10 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSIndexSet);
  swift_dynamicCast();
  v15 = v18[0];
  _bridgeKeyPathToString(_:)();
  v16 = String._bridgeToObjectiveCImpl()();

  [v14 *a5];

  swift_unknownObjectRelease();
}

uint64_t _KeyValueCodingAndObserving.willChangeValue<A>(for:withSetMutation:using:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, SEL *a6)
{
  v9 = *a1;
  v10 = MEMORY[0x1E69E77B0];
  v11 = *(*a1 + *MEMORY[0x1E69E77B0]);
  v12 = MEMORY[0x1EEE9AC00](a1);
  (*(v13 + 16))(v19 - v14, v15, v11, v12);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  swift_dynamicCast();
  v16 = v19[1];
  _bridgeKeyPathToString(_:)();
  v17 = String._bridgeToObjectiveCImpl()();

  specialized _setUpCast<A, B>(_:)(a3, *(v9 + *v10 + 8));
  [v16 *a6];

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t getEnumTagSinglePayload for NSKeyValueObservedChange(unsigned __int8 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = v4;
  v6 = *(v4 + 84);
  if (v6)
  {
    v7 = v6 - 1;
  }

  else
  {
    v7 = 0;
  }

  if (v7 <= 0x7FFFFFFE)
  {
    v8 = 2147483646;
  }

  else
  {
    v8 = v7;
  }

  v9 = *(v4 + 80);
  v10 = *(*(*(a3 + 16) - 8) + 64);
  if (!v6)
  {
    ++v10;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = v10 + v9;
  v12 = v10 + 7;
  if (v8 >= a2)
  {
    goto LABEL_33;
  }

  v13 = ((v12 + ((v11 + ((v9 + 8) & ~v9)) & ~v9)) & 0xFFFFFFFFFFFFFFF8) + 9;
  v14 = (a2 - v8 + 255) >> 8;
  if (v13 <= 3)
  {
    v15 = v14 + 1;
  }

  else
  {
    v15 = 2;
  }

  if (v15 >= 0x10000)
  {
    v16 = 4;
  }

  else
  {
    v16 = 2;
  }

  if (v15 < 0x100)
  {
    v16 = 1;
  }

  if (v15 >= 2)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  if (v17 > 1)
  {
    if (v17 == 2)
    {
      v18 = *&a1[v13];
      if (!*&a1[v13])
      {
        goto LABEL_33;
      }
    }

    else
    {
      v18 = *&a1[v13];
      if (!v18)
      {
        goto LABEL_33;
      }
    }

LABEL_29:
    v20 = (v18 - 1) << (8 * v13);
    if (v13 <= 3)
    {
      v21 = *a1;
    }

    else
    {
      v20 = 0;
      v21 = *a1;
    }

    return v8 + (v21 | v20) + 1;
  }

  if (v17)
  {
    v18 = a1[v13];
    if (a1[v13])
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  v22 = &a1[v9 + 8] & ~v9;
  if (v7 < 0x7FFFFFFE)
  {
    v24 = *((v12 + ((v11 + v22) & ~v9)) & 0xFFFFFFFFFFFFFFF8);
    if (v24 >= 0xFFFFFFFF)
    {
      LODWORD(v24) = -1;
    }

    if ((v24 + 1) >= 2)
    {
      return v24;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v23 = (*(v5 + 48))(v22);
    if (v23 >= 2)
    {
      return v23 - 1;
    }

    else
    {
      return 0;
    }
  }
}

void storeEnumTagSinglePayload for NSKeyValueObservedChange(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = 0;
  v7 = *(*(a4 + 16) - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  if (v9 <= 0x7FFFFFFE)
  {
    v10 = 2147483646;
  }

  else
  {
    v10 = v9;
  }

  v11 = *(v7 + 80);
  v12 = *(*(*(a4 + 16) - 8) + 64);
  if (!v8)
  {
    ++v12;
  }

  v13 = ((v12 + 7 + ((v12 + v11 + ((v11 + 8) & ~v11)) & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 9;
  if (v10 < a3)
  {
    v14 = (a3 - v10 + 255) >> 8;
    if (v13 <= 3)
    {
      v15 = v14 + 1;
    }

    else
    {
      v15 = 2;
    }

    if (v15 >= 0x10000)
    {
      v16 = 4;
    }

    else
    {
      v16 = 2;
    }

    if (v15 < 0x100)
    {
      v16 = 1;
    }

    if (v15 >= 2)
    {
      v6 = v16;
    }

    else
    {
      v6 = 0;
    }
  }

  if (v10 >= a2)
  {
    if (v6 > 1)
    {
      if (v6 != 2)
      {
        *&a1[v13] = 0;
        if (!a2)
        {
          return;
        }

        goto LABEL_38;
      }

      *&a1[v13] = 0;
    }

    else if (v6)
    {
      a1[v13] = 0;
      if (!a2)
      {
        return;
      }

LABEL_38:
      v19 = (&a1[v11 + 8] & ~v11);
      if (v9 < 0x7FFFFFFE)
      {
        v23 = ((v12 + 7 + (&v19[v12 + v11] & ~v11)) & 0xFFFFFFFFFFFFFFF8);
        if (a2 > 0x7FFFFFFE)
        {
          *v23 = 0;
          *v23 = a2 - 0x7FFFFFFF;
        }

        else
        {
          *v23 = a2;
        }
      }

      else if (v9 >= a2)
      {
        v24 = *(v7 + 56);
        v25 = a2 + 1;

        v24(v19, v25);
      }

      else
      {
        if (v12 <= 3)
        {
          v20 = ~(-1 << (8 * v12));
        }

        else
        {
          v20 = -1;
        }

        if (v12)
        {
          v21 = v20 & (~v9 + a2);
          if (v12 <= 3)
          {
            v22 = v12;
          }

          else
          {
            v22 = 4;
          }

          bzero(v19, v12);
          if (v22 > 2)
          {
            if (v22 == 3)
            {
              *v19 = v21;
              v19[2] = BYTE2(v21);
            }

            else
            {
              *v19 = v21;
            }
          }

          else if (v22 == 1)
          {
            *v19 = v21;
          }

          else
          {
            *v19 = v21;
          }
        }
      }

      return;
    }

    if (!a2)
    {
      return;
    }

    goto LABEL_38;
  }

  v17 = ~v10 + a2;
  bzero(a1, v13);
  if (v13 <= 3)
  {
    v18 = (v17 >> 8) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v13 <= 3)
  {
    *a1 = v17;
    if (v6 > 1)
    {
LABEL_26:
      if (v6 == 2)
      {
        *&a1[v13] = v18;
      }

      else
      {
        *&a1[v13] = v18;
      }

      return;
    }
  }

  else
  {
    *a1 = v17;
    if (v6 > 1)
    {
      goto LABEL_26;
    }
  }

  if (v6)
  {
    a1[v13] = v18;
  }
}

void specialized LazyMapSequence.Iterator.next()()
{
  if ((*v0 & 0x8000000000000000) != 0)
  {
    v4 = __CocoaSet.Iterator.next()();
    if (v4)
    {
      v12 = v4;
      type metadata accessor for AnyKeyPath();
      swift_dynamicCast();
      v5 = v11;
      if (v11)
      {
LABEL_15:
        v10 = v0[5];
        v12 = v5;
        v10(&v11, &v12);
      }
    }
  }

  else
  {
    v1 = v0[3];
    v2 = v0[4];
    if (v2)
    {
      v3 = v0[3];
LABEL_14:
      v9 = (v2 - 1) & v2;
      v5 = *(*(*v0 + 48) + ((v3 << 9) | (8 * __clz(__rbit64(v2)))));

      v0[3] = v3;
      v0[4] = v9;
      if (v5)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v6 = (v0[2] + 64) >> 6;
      if (v6 <= v1 + 1)
      {
        v7 = v1 + 1;
      }

      else
      {
        v7 = (v0[2] + 64) >> 6;
      }

      v8 = v7 - 1;
      while (1)
      {
        v3 = v1 + 1;
        if (__OFADD__(v1, 1))
        {
          break;
        }

        if (v3 >= v6)
        {
          v0[3] = v8;
          v0[4] = 0;
          return;
        }

        v2 = *(v0[1] + 8 * v3);
        ++v1;
        if (v2)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }
}

uint64_t specialized static __KVOKeyPathBridgeMachinery._bridgeKeyPath(_:)(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v4 = objc_opt_self();

  v5 = [v4 currentThread];
  v6 = [v5 threadDictionary];

  v7 = type metadata accessor for __KVOKeyPathBridgeMachinery.BridgeKey();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR____TtCC10FoundationP33_6DA0945A07226B3278459E9368612FF427__KVOKeyPathBridgeMachinery9BridgeKey_value];
  *v9 = a1;
  *(v9 + 1) = a2;
  v16.receiver = v8;
  v16.super_class = v7;
  v10 = objc_msgSendSuper2(&v16, sel_init);
  v11 = [v6 objectForKeyedSubscript_];

  if (v11)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v14 = 0u;
    v15 = 0u;
  }

  v17[0] = v14;
  v17[1] = v15;
  if (*(&v15 + 1))
  {
    type metadata accessor for AnyKeyPath();
    if (swift_dynamicCast())
    {
      return v13;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of TermOfAddress?(v17, &_sypSgMd);
    return 0;
  }
}

id bestUnitForUsage<A>(_:dimension:usage:)(uint64_t a1, void *a2, char *a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 8);
  v5 = *a3;
  if (type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSUnitTemperature) == a4)
  {
    ObjectType = swift_getObjectType();
    (*(v4 + 456))(&v39, ObjectType, v4);
    v10 = v39;
    if (v39 != 2)
    {
      v20 = objc_opt_self();
      if (v10)
      {
        v21 = [v20 celsius];
      }

      else
      {
        v21 = [v20 fahrenheit];
      }

      v25 = v21;

      return swift_dynamicCastUnknownClassUnconditional();
    }
  }

  else
  {
    ObjectType = swift_getObjectType();
    (*(v4 + 448))(&v39, ObjectType, v4);
    v7 = v40;
    if (v40)
    {
      v8 = v39;
      v9 = (*(v4 + 64))(ObjectType, v4);
      v39 = 29549;
      v40 = 0xE200000000000000;
      specialized static Locale.identifierWithKeywordValue(_:key:value:)(v9);

      outlined consume of Locale.LanguageCode?(v8, v7);

      goto LABEL_6;
    }
  }

  (*(v4 + 64))(ObjectType, v4);
LABEL_6:
  v11 = [swift_getObjCClassFromMetadata() icuType];
  if (!v11)
  {
    Usage.rawValue.getter(v5);
    goto LABEL_40;
  }

  v12 = v11;
  isTaggedPointer = _objc_isTaggedPointer(v11);
  v14 = v12;
  v15 = v14;
  if (!isTaggedPointer)
  {
    goto LABEL_12;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v14);
  if (TaggedPointerTag)
  {
    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v17 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v19 = v18;

        goto LABEL_36;
      }

LABEL_12:
      v39 = 0;
      if (__CFStringIsCF())
      {
        if (v39)
        {
LABEL_34:
          v17 = String.init(_cocoaString:)();
          v19 = v32;
          goto LABEL_35;
        }
      }

      else
      {
        v22 = v15;
        v23 = String.init(_nativeStorage:)();
        if (v24)
        {
          v17 = v23;
          v19 = v24;

          goto LABEL_36;
        }

        v39 = [v22 length];
        if (v39)
        {
          goto LABEL_34;
        }
      }

      v27 = Usage.rawValue.getter(v5);
      v29 = v28;
      goto LABEL_41;
    }

    result = [v15 UTF8String];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v30 = String.init(utf8String:)(result);
    if (v31)
    {
      goto LABEL_30;
    }

    __break(1u);
  }

  _CFIndirectTaggedPointerStringGetContents();
  v30 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (!v31)
  {
    [v15 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v17 = v37;
    v19 = v38;
    goto LABEL_35;
  }

LABEL_30:
  v17 = v30;
  v19 = v31;

LABEL_35:
LABEL_36:
  v27 = Usage.rawValue.getter(v5);
  v29 = v33;
  if (v19)
  {
    if (v17 == 0x796772656E65 && v19 == 0xE600000000000000)
    {
LABEL_42:
      if (v27 == 0x746C7561666564 && v29 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        v34 = 0;
        goto LABEL_47;
      }

LABEL_46:
      v34 = 0;
      goto LABEL_47;
    }

LABEL_41:
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

LABEL_40:
  v34 = 1;
LABEL_47:
  String.utf8CString.getter();

  if ((v34 & 1) == 0)
  {
    String.utf8CString.getter();
  }

  String.utf8CString.getter();
  uameasfmt_getUnitsForUsage();

  swift_unknownObjectRelease();

  v35 = getDimensionUnitFromUnitSpecifier(0);

  if (v35)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return a2;
}

id NSDimension.init(forLocale:)(__int128 *a1)
{
  v8 = *a1;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [ObjCClassFromMetadata baseUnit];
  static MeasurementFormatUnitUsage.general.getter(&v7);
  v4 = bestUnitForUsage<A>(_:dimension:usage:)(&v8, v3, &v7, v1);

  result = [objc_allocWithZone(ObjCClassFromMetadata) initWithDimension_];
  if (result)
  {
    v6 = result;
    swift_unknownObjectRelease();

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NSUnitEnergy.init(forLocale:usage:)(uint64_t a1, char *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = *a2;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v41 = [ObjCClassFromMetadata baseUnit];
  ObjectType = swift_getObjectType();
  (*(v2 + 448))(&v45, ObjectType, v2);
  v5 = v46;
  if (v46)
  {
    v6 = v45;
    v7 = (*(v2 + 64))(ObjectType, v2);
    v45 = 29549;
    v46 = 0xE200000000000000;
    specialized static Locale.identifierWithKeywordValue(_:key:value:)(v7);

    outlined consume of Locale.LanguageCode?(v6, v5);
  }

  else
  {
    (*(v2 + 64))(ObjectType, v2);
  }

  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSUnitEnergy);
  v8 = [swift_getObjCClassFromMetadata() icuType];
  if (!v8)
  {
    Usage.rawValue.getter(v3);
LABEL_31:
    v28 = 1;
    goto LABEL_38;
  }

  v9 = v8;
  isTaggedPointer = _objc_isTaggedPointer(v8);
  v11 = v9;
  v12 = v11;
  if (!isTaggedPointer)
  {
    goto LABEL_10;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v11);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_21;
    case 0x16:
      result = [v12 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      v24 = String.init(utf8String:)(result);
      if (v25)
      {
        goto LABEL_22;
      }

      __break(1u);
LABEL_21:
      _CFIndirectTaggedPointerStringGetContents();
      v24 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v25)
      {
        [v12 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v14 = v43;
        v16 = v44;

        goto LABEL_27;
      }

LABEL_22:
      v14 = v24;
      v16 = v25;

      goto LABEL_27;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v14 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v16 = v15;

      goto LABEL_27;
  }

LABEL_10:
  v45 = 0;
  if (!__CFStringIsCF())
  {
    v17 = v12;
    v18 = String.init(_nativeStorage:)();
    if (v19)
    {
      v14 = v18;
      v16 = v19;

      goto LABEL_27;
    }

    v45 = [v17 length];
    if (v45)
    {
      goto LABEL_26;
    }

LABEL_17:
    v20 = Usage.rawValue.getter(v3);
    v22 = v21;
    goto LABEL_32;
  }

  if (!v45)
  {

    goto LABEL_17;
  }

LABEL_26:
  v14 = String.init(_cocoaString:)();
  v16 = v26;

LABEL_27:
  v20 = Usage.rawValue.getter(v3);
  v22 = v27;
  if (!v16)
  {
    goto LABEL_31;
  }

  if (v14 != 0x796772656E65 || v16 != 0xE600000000000000)
  {
LABEL_32:
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_37;
    }
  }

  if (v20 == 0x746C7561666564 && v22 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v28 = 0;
    goto LABEL_38;
  }

LABEL_37:
  v28 = 0;
LABEL_38:
  String.utf8CString.getter();

  if ((v28 & 1) == 0)
  {
    String.utf8CString.getter();
  }

  String.utf8CString.getter();
  uameasfmt_getUnitsForUsage();

  swift_unknownObjectRelease();

  v39 = getDimensionUnitFromUnitSpecifier(0);

  if (!v39)
  {
    v29 = ObjCClassFromMetadata;
LABEL_42:
    v30 = v41;
    goto LABEL_43;
  }

  objc_opt_self();
  v40 = swift_dynamicCastObjCClass();
  v29 = ObjCClassFromMetadata;
  if (!v40)
  {

    goto LABEL_42;
  }

  v30 = v40;

LABEL_43:
  v31 = objc_opt_self();
  v32 = v30;
  v33 = [v31 foodcalories];
  v34 = v32;
  if (!v33)
  {
LABEL_46:

    v32 = v34;
    goto LABEL_47;
  }

  v35 = v33;
  v36 = static NSObject.== infix(_:_:)();

  if (v36)
  {
    v34 = [v31 kilocalories];
    goto LABEL_46;
  }

LABEL_47:
  v37 = [objc_allocWithZone(v29) initWithDimension_];
  if (!v37)
  {
    __break(1u);
  }

  v38 = v37;

  swift_unknownObjectRelease();
  return v38;
}

id NSUnitMass.init(forLocale:usage:)(uint64_t a1, char *a2)
{

  return NSUnitLength.init(forLocale:usage:)(a1, a2, &lazy cache variable for type metadata for NSUnitMass);
}

id NSUnitVolume.init(forLocale:usage:)(uint64_t a1, char *a2)
{

  return NSUnitLength.init(forLocale:usage:)(a1, a2, &lazy cache variable for type metadata for NSUnitVolume);
}

uint64_t _sSS10FoundationE17LocalizationValueV14FormatArgumentV7StorageO06StringD7WrapperV_6formatAIx_q_tcs8SendableRz0D5InputQy_RszAA0D5StyleR_sAKR_Sy0D6OutputRp_r0_lufCSo9NSDecimala_AE07DecimaledL0VTt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for NSDecimal(0);
  *(a5 + 56) = v14;
  *(a5 + 32) = a1;
  *(a5 + 40) = a2;
  *(a5 + 48) = a3;
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(a4, v13, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
  v23 = *(a5 + 32);
  v24 = *(a5 + 48);
  v15 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v16 = (v12 + v15 + 3) & 0xFFFFFFFFFFFFFFFCLL;
  v17 = swift_allocObject();
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v13, v17 + v15, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
  v18 = v17 + v16;
  *v18 = v23;
  *(v18 + 16) = v24;
  *a5 = partial apply for specialized closure #1 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:);
  *(a5 + 8) = v17;
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(a4, v13, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
  v23 = *(a5 + 32);
  v24 = *(a5 + 48);
  v19 = swift_allocObject();
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v13, v19 + v15, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
  v20 = v19 + v16;
  *v20 = v23;
  *(v20 + 16) = v24;
  *(a5 + 16) = partial apply for specialized closure #2 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:);
  *(a5 + 24) = v19;
  *(a5 + 88) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((a5 + 64));
  return outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(a4, boxed_opaque_existential_0, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
}

uint64_t _sSS10FoundationE17LocalizationValueV14FormatArgumentV7StorageO06StringD7WrapperV_6formatAIx_q_tcs8SendableRz0D5InputQy_RszAA0D5StyleR_sAKR_Sy0D6OutputRp_r0_lufCSnyAA4DateVG_AR08IntervaldL0VTt2B5@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>)
{
  *(a2 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation4DateVGMd);
  *(a2 + 32) = a3;
  *(a2 + 40) = a4;
  *(a2 + 88) = &type metadata for Date.IntervalFormatStyle;
  v8 = swift_allocObject();
  *(a2 + 64) = v8;
  v9 = a1[4];
  v10 = a1[5];
  *(v8 + 80) = v9;
  *(v8 + 96) = v10;
  v11 = *(a1 + 48);
  *(v8 + 112) = v11;
  v12 = *a1;
  v13 = a1[1];
  *(v8 + 16) = *a1;
  *(v8 + 32) = v13;
  v15 = a1[2];
  v14 = a1[3];
  *(v8 + 48) = v15;
  *(v8 + 64) = v14;
  v29[0] = v12;
  v29[1] = v13;
  v30 = v11;
  v29[2] = v15;
  v29[3] = v14;
  v29[4] = v9;
  v29[5] = v10;
  v16 = swift_allocObject();
  v17 = a1[5];
  *(v16 + 80) = a1[4];
  *(v16 + 96) = v17;
  *(v16 + 112) = *(a1 + 48);
  v18 = a1[1];
  *(v16 + 16) = *a1;
  *(v16 + 32) = v18;
  v19 = a1[3];
  *(v16 + 48) = a1[2];
  *(v16 + 64) = v19;
  *(v16 + 120) = a3;
  *(v16 + 128) = a4;
  *a2 = partial apply for specialized closure #1 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:);
  *(a2 + 8) = v16;
  v32 = *(a1 + 48);
  v20 = a1[5];
  v31[4] = a1[4];
  v31[5] = v20;
  v21 = a1[3];
  v31[2] = a1[2];
  v31[3] = v21;
  v22 = a1[1];
  v31[0] = *a1;
  v31[1] = v22;
  v23 = swift_allocObject();
  v24 = a1[5];
  *(v23 + 80) = a1[4];
  *(v23 + 96) = v24;
  *(v23 + 112) = *(a1 + 48);
  v25 = a1[1];
  *(v23 + 16) = *a1;
  *(v23 + 32) = v25;
  v26 = a1[3];
  *(v23 + 48) = a1[2];
  *(v23 + 64) = v26;
  *(v23 + 120) = a3;
  *(v23 + 128) = a4;
  *(a2 + 16) = partial apply for specialized closure #2 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:);
  *(a2 + 24) = v23;
  outlined init with copy of Date.IntervalFormatStyle(v29, v28);
  return outlined init with copy of Date.IntervalFormatStyle(v31, v28);
}

uint64_t _sSS10FoundationE17LocalizationValueV14FormatArgumentV7StorageO06StringD7WrapperV_6formatAIx_q_tcs8SendableRz0D5InputQy_RszAA0D5StyleR_sAKR_Sy0D6OutputRp_r0_lufCAA4DateV_AE0nedL0VTt2B5@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *(a2 + 56) = &type metadata for Date;
  *(a2 + 32) = a3;
  *(a2 + 88) = &type metadata for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle;
  v6 = swift_allocObject();
  *(a2 + 64) = v6;
  v7 = a1[4];
  v8 = a1[5];
  v6[5] = v7;
  v6[6] = v8;
  v9 = a1[6];
  v6[7] = v9;
  v10 = *(a1 + 106);
  *(v6 + 122) = v10;
  v11 = *a1;
  v12 = a1[1];
  v6[1] = *a1;
  v6[2] = v12;
  v13 = a1[2];
  v14 = a1[3];
  v6[3] = v13;
  v6[4] = v14;
  *(v29 + 10) = v10;
  v28[5] = v8;
  v29[0] = v9;
  v28[3] = v14;
  v28[4] = v7;
  v28[1] = v12;
  v28[2] = v13;
  v28[0] = v11;
  v15 = swift_allocObject();
  v16 = a1[5];
  *(v15 + 80) = a1[4];
  *(v15 + 96) = v16;
  *(v15 + 112) = a1[6];
  *(v15 + 122) = *(a1 + 106);
  v17 = a1[1];
  *(v15 + 16) = *a1;
  *(v15 + 32) = v17;
  v18 = a1[3];
  *(v15 + 48) = a1[2];
  *(v15 + 64) = v18;
  *(v15 + 144) = a3;
  *a2 = partial apply for specialized closure #1 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:);
  *(a2 + 8) = v15;
  v19 = a1[3];
  v30[2] = a1[2];
  v30[3] = v19;
  v20 = a1[1];
  v30[0] = *a1;
  v30[1] = v20;
  *(v31 + 10) = *(a1 + 106);
  v21 = a1[6];
  v30[5] = a1[5];
  v31[0] = v21;
  v30[4] = a1[4];
  v22 = swift_allocObject();
  v23 = a1[5];
  *(v22 + 80) = a1[4];
  *(v22 + 96) = v23;
  *(v22 + 112) = a1[6];
  *(v22 + 122) = *(a1 + 106);
  v24 = a1[1];
  *(v22 + 16) = *a1;
  *(v22 + 32) = v24;
  v25 = a1[3];
  *(v22 + 48) = a1[2];
  *(v22 + 64) = v25;
  *(v22 + 144) = a3;
  *(a2 + 16) = partial apply for specialized closure #2 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:);
  *(a2 + 24) = v22;
  outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle(v28, v27);
  return outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle(v30, v27);
}

uint64_t specialized closure #1 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v182 = a4;
  v191 = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
  MEMORY[0x1EEE9AC00](v6);
  v179 = &v171 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
  MEMORY[0x1EEE9AC00](v8);
  v180 = (&v171 - v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation18IntegerFormatStyleVySiGMd);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v171 - v11;
  v13 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v171 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v188 = a1;
  *(&v188 + 1) = a2;
  String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.locale(_:)(&v188, v18);
  v181 = v18;
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(v18, v15, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.Format);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v20 = v180;
      outlined init with take of IntegerFormatStyle<Int>.Percent(v15, v180, &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd);
      v21 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
      v23 = v22;
      v24 = v20[2];
      v25 = v20[3];
      v26 = v20[1];
      ObjectType = swift_getObjectType();
      v28 = *(v26 + 472);

      v29 = v28(ObjectType, v26);
      *&v188 = v21;
      *(&v188 + 1) = v23;
      v178 = v23;
      *&v189 = v24;
      *(&v189 + 1) = v25;
      v179 = v25;
      v31 = v30;
      *&v190 = v29;
      *(&v190 + 1) = v30;
      if (one-time initialization token for cache != -1)
      {
        v29 = swift_once();
      }

      v33 = static ICUCurrencyNumberFormatter.cache;
      v32 = qword_1EA7B5100;
      v183 = v188;
      v184 = v189;
      v185 = v190;
      MEMORY[0x1EEE9AC00](v29);
      *(&v171 - 2) = &v183;
      os_unfair_lock_lock((v32 + 24));
      v34 = 0;
      closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v32 + 16, &v186);
      os_unfair_lock_unlock((v32 + 24));
      v35 = v186;
      v36 = v178;
      if (v186 != 1)
      {
LABEL_110:

        v156 = v182;
        if (v35)
        {
          type metadata accessor for ICUNumberFormatterBase.FormatResult();
          swift_initStackObject();
          ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
          if (v34)
          {
          }

          else
          {

            v157 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
            v159 = v162;

            if (v159)
            {
              goto LABEL_114;
            }
          }
        }

        *&v183 = v156;
        lazy protocol witness table accessor for type Int and conformance Int();
        v157 = String.init<A>(_:radix:uppercase:)();
        v159 = v158;
LABEL_114:
        outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v181, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
        v160 = &_s10Foundation18IntegerFormatStyleV8CurrencyVySi_GMd;
        v161 = v180;
LABEL_135:
        outlined destroy of TermOfAddress?(v161, v160);
        *&v183 = v157;
        *(&v183 + 1) = v159;
        return String.init<A>(_:)();
      }

      v177 = 0;
      v37 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(v21, v178, v24, v179);
      v39 = v38;
      type metadata accessor for ICUCurrencyNumberFormatter();
      swift_allocObject();

      v35 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v37, v39);
      os_unfair_lock_lock((v32 + 24));
      v40 = *(v32 + 16);
      if (v33 >= *(v40 + 16))
      {

        LOBYTE(v41) = v40;
      }

      else
      {
        LOBYTE(v41) = MEMORY[0x1E69E7CC8];
        *(v32 + 16) = MEMORY[0x1E69E7CC8];
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v186 = *(v32 + 16);
      v47 = v186;
      *(v32 + 16) = 0x8000000000000000;
      v55 = specialized __RawDictionaryStorage.find<A>(_:)(&v188);
      v68 = v47[2];
      v69 = (v67 & 1) == 0;
      v70 = __OFADD__(v68, v69);
      v71 = v68 + v69;
      if (v70)
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      LOBYTE(v41) = v67;
      if (v47[3] >= v71)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_62;
        }

        v72 = v47;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v71, isUniquelyReferenced_nonNull_native);
        v72 = v186;
        v55 = specialized __RawDictionaryStorage.find<A>(_:)(&v188);
        if ((v41 & 1) != (v73 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_26;
        }
      }

      if ((v41 & 1) == 0)
      {
LABEL_108:
        specialized _NativeDictionary._insert(at:key:value:)(v55, &v188, v35, v72);
        goto LABEL_109;
      }

LABEL_34:
      v84 = v55;

      *(*(v72 + 56) + 8 * v84) = v35;

LABEL_109:
      *(v32 + 16) = v72;

      os_unfair_lock_unlock((v32 + 24));

      outlined consume of ICUNumberFormatter??(1);
      v34 = v177;
      goto LABEL_110;
    }

    v36 = v179;
    outlined init with take of IntegerFormatStyle<Int>.Percent(v15, v179, &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd);
    v33 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v32 = v56;
    v57 = *(v36 + 8);
    v58 = swift_getObjectType();
    v59 = (*(v57 + 472))(v58, v57);
    v31 = v60;
    if (one-time initialization token for cache != -1)
    {
      v99 = v59;
      swift_once();
      v59 = v99;
    }

    v61 = static ICUPercentNumberFormatter.cache;
    v35 = *algn_1EA7B0228;
    *&v188 = v33;
    *(&v188 + 1) = v32;
    v180 = v59;
    *&v189 = v59;
    *(&v189 + 1) = v31;
    MEMORY[0x1EEE9AC00](v59);
    *(&v171 - 2) = &v188;
    os_unfair_lock_lock((v35 + 24));
    v62 = 0;
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v35 + 16, &v183);
    os_unfair_lock_unlock((v35 + 24));
    v47 = v183;
    if (v183 != 1)
    {
LABEL_120:

      v163 = v182;
      if (v47)
      {
        type metadata accessor for ICUNumberFormatterBase.FormatResult();
        swift_initStackObject();
        ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
        if (v62)
        {
        }

        else
        {

          v157 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
          v159 = v165;

          if (v159)
          {
            goto LABEL_124;
          }
        }
      }

      *&v188 = v163;
      lazy protocol witness table accessor for type Int and conformance Int();
      v157 = String.init<A>(_:radix:uppercase:)();
      v159 = v164;
LABEL_124:
      outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v181, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
      v160 = &_s10Foundation18IntegerFormatStyleV7PercentVySi_GMd;
      v161 = v36;
      goto LABEL_135;
    }

    v178 = 0;
    *&v183 = 0x746E6563726570;
    *(&v183 + 1) = 0xE700000000000000;
    if (String.count.getter() > 0)
    {
      v186 = 32;
      v187 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v33, v32);
      MEMORY[0x1865CB0E0](v186, v187);
    }

    v64 = *(&v183 + 1);
    v63 = v183;
    type metadata accessor for ICUPercentNumberFormatter();
    swift_allocObject();

    v47 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v63, v64);
    os_unfair_lock_lock((v35 + 24));
    v41 = *(v35 + 16);
    v65 = *(v41 + 16);
    v177 = v41;
    if (v61 < v65)
    {
      LOBYTE(v41) = MEMORY[0x1E69E7CC8];
      *(v35 + 16) = MEMORY[0x1E69E7CC8];
      goto LABEL_27;
    }

LABEL_26:

LABEL_27:

    v74 = swift_isUniquelyReferenced_nonNull_native();
    *&v183 = *(v35 + 16);
    v75 = v183;
    *(v35 + 16) = 0x8000000000000000;
    v77 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v32, v180, v31);
    v78 = *(v75 + 16);
    v79 = (v76 & 1) == 0;
    v55 = (v78 + v79);
    if (!__OFADD__(v78, v79))
    {
      v80 = v76;
      if (*(v75 + 24) < v55)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v55, v74);
        v81 = v183;
        v82 = specialized __RawDictionaryStorage.find<A>(_:)(v33, v32, v180, v31);
        if ((v80 & 1) == (v83 & 1))
        {
          v77 = v82;
          goto LABEL_37;
        }

        goto LABEL_141;
      }

      if (v74)
      {
        v81 = v75;
LABEL_37:
        v62 = v178;
        if (v80)
        {
LABEL_38:
          v85 = v77;

          *(*(v81 + 56) + 8 * v85) = v47;

LABEL_119:
          *(v35 + 16) = v81;

          os_unfair_lock_unlock((v35 + 24));

          outlined consume of ICUNumberFormatter??(1);
          goto LABEL_120;
        }

LABEL_118:
        specialized _NativeDictionary._insert(at:key:value:)(v77, v33, v32, v180, v31, v47, v81);
        goto LABEL_119;
      }

      v173 = v77;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
      v119 = static _DictionaryStorage.copy(original:)();
      v81 = v119;
      if (!*(v75 + 16))
      {
LABEL_117:

        v36 = v179;
        v62 = v178;
        v77 = v173;
        if (v80)
        {
          goto LABEL_38;
        }

        goto LABEL_118;
      }

      v120 = (v119 + 64);
      v121 = 1 << *(v81 + 32);
      v174 = (v75 + 64);
      v122 = (v121 + 63) >> 6;
      if (v81 != v75 || v120 >= &v174[8 * v122])
      {
        memmove(v120, v174, 8 * v122);
      }

      v123 = 0;
      *(v81 + 16) = *(v75 + 16);
      v124 = 1 << *(v75 + 32);
      v125 = -1;
      if (v124 < 64)
      {
        v125 = ~(-1 << v124);
      }

      v176 = v125 & *(v75 + 64);
      v172 = (v124 + 63) >> 6;
      while (v176)
      {
        v126 = __clz(__rbit64(v176));
        v176 &= v176 - 1;
LABEL_91:
        v129 = v126 | (v123 << 6);
        v130 = *(v75 + 56);
        v131 = (*(v75 + 48) + 32 * v129);
        v132 = *v131;
        v175 = v131[1];
        v133 = v175;
        v134 = v131[2];
        v135 = v131[3];
        v136 = *(v130 + 8 * v129);
        v137 = (*(v81 + 48) + 32 * v129);
        *v137 = v132;
        v137[1] = v133;
        v137[2] = v134;
        v137[3] = v135;
        *(*(v81 + 56) + 8 * v129) = v136;
      }

      v127 = v123;
      while (1)
      {
        v123 = v127 + 1;
        if (__OFADD__(v127, 1))
        {
          goto LABEL_139;
        }

        if (v123 >= v172)
        {
          goto LABEL_117;
        }

        v128 = *&v174[8 * v123];
        ++v127;
        if (v128)
        {
          v126 = __clz(__rbit64(v128));
          v176 = (v128 - 1) & v128;
          goto LABEL_91;
        }
      }
    }

    goto LABEL_58;
  }

  outlined init with take of IntegerFormatStyle<Int>.Percent(v15, v12, &_s10Foundation18IntegerFormatStyleVySiGMd);
  v35 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v43 = v42;
  v44 = *(v12 + 1);
  v180 = v12;
  v45 = swift_getObjectType();
  v46 = (*(v44 + 472))(v45, v44);
  v47 = v46;
  v31 = v48;
  if (one-time initialization token for cache != -1)
  {
    v46 = swift_once();
  }

  v49 = static ICUNumberFormatter.cache;
  v32 = *algn_1EA7B1D98;
  *&v183 = v35;
  *(&v183 + 1) = v43;
  *&v184 = v47;
  *(&v184 + 1) = v31;
  MEMORY[0x1EEE9AC00](v46);
  *(&v171 - 2) = &v183;
  os_unfair_lock_lock((v32 + 24));
  v50 = 0;
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v32 + 16, &v188);
  os_unfair_lock_unlock((v32 + 24));
  v51 = v188;
  if (v188 != 1)
  {
LABEL_130:

    v166 = v182;
    v167 = v180;
    if (v51)
    {
      type metadata accessor for ICUNumberFormatterBase.FormatResult();
      swift_initStackObject();
      ICUNumberFormatterBase.FormatResult.init(formatter:value:)();
      if (v50)
      {
      }

      else
      {

        v157 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
        v159 = v170;

        if (v159)
        {
          goto LABEL_134;
        }
      }
    }

    *&v188 = v166;
    lazy protocol witness table accessor for type Int and conformance Int();
    v157 = String.init<A>(_:radix:uppercase:)();
    v159 = v168;
LABEL_134:
    outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v181, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
    v160 = &_s10Foundation18IntegerFormatStyleVySiGMd;
    v161 = v167;
    goto LABEL_135;
  }

  type metadata accessor for ICUNumberFormatter();
  v51 = swift_allocObject();
  v51[3] = v35;
  v51[4] = v43;
  swift_bridgeObjectRetain_n();
  v52 = MEMORY[0x1865CB200](v35, v43);
  if (v52)
  {
    v176 = v31;
    v177 = v47;
    v47 = v49;
    v53 = v52;
    v41 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v52, 0);

    v31 = v35;
    v54 = specialized Sequence._copySequenceContents(initializing:)(&v188, v41 + 32, v53, v35, v43);

    if (v54 != v53)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      v173 = v31;
      v174 = v55;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
      v100 = static _DictionaryStorage.copy(original:)();
      v72 = v100;
      if (v47[2])
      {
        v101 = (v100 + 64);
        v102 = 1 << *(v72 + 32);
        v175 = (v47 + 8);
        v103 = (v102 + 63) >> 6;
        if (v72 != v47 || v101 >= &v175[8 * v103])
        {
          memmove(v101, v175, 8 * v103);
        }

        v104 = 0;
        *(v72 + 16) = v47[2];
        v105 = 1 << *(v47 + 32);
        v106 = -1;
        if (v105 < 64)
        {
          v106 = ~(-1 << v105);
        }

        v176 = v106 & v47[8];
        v172 = (v105 + 63) >> 6;
        while (v176)
        {
          v107 = __clz(__rbit64(v176));
          v176 &= v176 - 1;
LABEL_76:
          v110 = v107 | (v104 << 6);
          v111 = (v47[6] + 48 * v110);
          v112 = v111[1];
          v113 = v111[2];
          v114 = v111[3];
          v115 = *(v47[7] + 8 * v110);
          v116 = v111[4];
          v117 = v111[5];
          v118 = (*(v72 + 48) + 48 * v110);
          *v118 = *v111;
          v118[1] = v112;
          v118[2] = v113;
          v118[3] = v114;
          v118[4] = v116;
          v118[5] = v117;
          *(*(v72 + 56) + 8 * v110) = v115;
        }

        v108 = v104;
        while (1)
        {
          v104 = v108 + 1;
          if (__OFADD__(v108, 1))
          {
            break;
          }

          if (v104 >= v172)
          {
            goto LABEL_107;
          }

          v109 = *&v175[8 * v104];
          ++v108;
          if (v109)
          {
            v107 = __clz(__rbit64(v109));
            v176 = (v109 - 1) & v109;
            goto LABEL_76;
          }
        }

        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_142;
      }

LABEL_107:

      v55 = v174;
      if ((v41 & 1) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_34;
    }

    v47 = v177;
    v31 = v176;
  }

  else
  {

    v41 = MEMORY[0x1E69E7CC0];
  }

  v179 = 0;
  LODWORD(v188) = 0;
  if (*(v41 + 16) >> 31)
  {
    goto LABEL_59;
  }

  String.utf8CString.getter();
  v86 = unumf_openForSkeletonAndLocale();

  if (!v86)
  {
    goto LABEL_44;
  }

  if (v188 >= 1)
  {
    unumf_close();
LABEL_44:

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v51 = 0;
    goto LABEL_46;
  }

  v51[2] = v86;
LABEL_46:
  os_unfair_lock_lock((v32 + 24));
  v41 = *(v32 + 16);
  v87 = *(v41 + 16);
  v178 = v41;
  if (v49 < v87)
  {
    LOBYTE(v41) = MEMORY[0x1E69E7CC8];
    *(v32 + 16) = MEMORY[0x1E69E7CC8];
  }

  else
  {
  }

  v88 = swift_isUniquelyReferenced_nonNull_native();
  *&v188 = *(v32 + 16);
  v89 = v188;
  *(v32 + 16) = 0x8000000000000000;
  v91 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v43, v47, v31);
  v92 = *(v89 + 16);
  v93 = (v90 & 1) == 0;
  v55 = (v92 + v93);
  if (__OFADD__(v92, v93))
  {
    goto LABEL_60;
  }

  v94 = v90;
  if (*(v89 + 24) >= v55)
  {
    if ((v88 & 1) == 0)
    {
      v176 = v31;
      v173 = v35;
      v177 = v47;
      v174 = v91;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
      v138 = static _DictionaryStorage.copy(original:)();
      v95 = v138;
      if (*(v89 + 16))
      {
        v139 = (v138 + 64);
        v140 = 1 << *(v95 + 32);
        v175 = (v89 + 64);
        v141 = (v140 + 63) >> 6;
        if (v95 != v89 || v139 >= &v175[8 * v141])
        {
          memmove(v139, v175, 8 * v141);
        }

        v142 = 0;
        *(v95 + 16) = *(v89 + 16);
        v143 = 1 << *(v89 + 32);
        v144 = -1;
        if (v143 < 64)
        {
          v144 = ~(-1 << v143);
        }

        v145 = v144 & *(v89 + 64);
        v172 = (v143 + 63) >> 6;
        while (v145)
        {
          v146 = __clz(__rbit64(v145));
          v145 &= v145 - 1;
LABEL_105:
          v149 = v146 | (v142 << 6);
          v150 = (*(v89 + 48) + 32 * v149);
          v151 = v150[1];
          v152 = v150[2];
          v153 = v150[3];
          v154 = *(*(v89 + 56) + 8 * v149);
          v155 = (*(v95 + 48) + 32 * v149);
          *v155 = *v150;
          v155[1] = v151;
          v155[2] = v152;
          v155[3] = v153;
          *(*(v95 + 56) + 8 * v149) = v154;
        }

        v147 = v142;
        while (1)
        {
          v142 = v147 + 1;
          if (__OFADD__(v147, 1))
          {
            goto LABEL_140;
          }

          if (v142 >= v172)
          {
            break;
          }

          v148 = *&v175[8 * v142];
          ++v147;
          if (v148)
          {
            v146 = __clz(__rbit64(v148));
            v145 = (v148 - 1) & v148;
            goto LABEL_105;
          }
        }
      }

      v50 = v179;
      v91 = v174;
      v47 = v177;
      v35 = v173;
      v31 = v176;
      if (v94)
      {
        goto LABEL_56;
      }

      goto LABEL_128;
    }

    v95 = v89;
LABEL_55:
    v50 = v179;
    if (v94)
    {
LABEL_56:
      v98 = v91;

      *(*(v95 + 56) + 8 * v98) = v51;

LABEL_129:
      *(v32 + 16) = v95;

      os_unfair_lock_unlock((v32 + 24));

      outlined consume of ICUNumberFormatter??(1);
      goto LABEL_130;
    }

LABEL_128:
    specialized _NativeDictionary._insert(at:key:value:)(v91, v35, v43, v47, v31, v51, v95);
    goto LABEL_129;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v55, v88);
  v95 = v188;
  v96 = specialized __RawDictionaryStorage.find<A>(_:)(v35, v43, v47, v31);
  if ((v94 & 1) == (v97 & 1))
  {
    v91 = v96;
    goto LABEL_55;
  }

LABEL_142:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:)(uint64_t a1, uint64_t a2, double a3)
{
  v8 = a3;
  *&v9[0] = a1;
  *(&v9[0] + 1) = a2;
  v3._time = String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.locale(_:)(v9, v6);
  v4 = String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.format(_:)(v3);
  v9[4] = v6[4];
  v9[5] = v6[5];
  v10[0] = v7[0];
  *(v10 + 10) = *(v7 + 10);
  v9[0] = v6[0];
  v9[1] = v6[1];
  v9[2] = v6[2];
  v9[3] = v6[3];
  outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle(v9);
  v7[2] = v4;
  return String.init<A>(_:)();
}

uint64_t closure #1 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = *a1;
  (*(a6 + 56))(&v15, a5, a6);
  (*(a6 + 48))(a3, a5, a6);
  (*(v10 + 8))(v12, a5);
  return String.init<A>(_:)();
}

uint64_t specialized closure #2 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10FoundationE17LocalizationValueV14FormatArgumentV07DecimaleD5StyleVSgMd);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v26 - v11;
  v13 = type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1 + 64, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd);
  v17 = swift_dynamicCast();
  v18 = *(v14 + 56);
  if (v17)
  {
    v18(v12, 0, 1, v13);
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v12, v16, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
    v19 = specialized static String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format.== infix(_:_:)(a2, v16);
    outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v16, type metadata accessor for String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle);
    v20 = 0;
    if ((v19 & 1) == 0)
    {
      return v20 & 1;
    }
  }

  else
  {
    v18(v12, 1, 1, v13);
    outlined destroy of TermOfAddress?(v12, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV07DecimaleD5StyleVSgMd);
  }

  type metadata accessor for NSDecimal(0);
  v29 = v21;
  v27[0] = a3;
  v27[1] = a4;
  v28 = a5;
  v22 = *(a1 + 56);
  v23 = __swift_project_boxed_opaque_existential_1((a1 + 32), v22);
  v26[3] = v22;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v26);
  (*(*(v22 - 8) + 16))(boxed_opaque_existential_0, v23, v22);
  v20 = specialized static String.LocalizationValue.FormatArgument.Storage._equalValues(_:_:)(v27, v26);
  __swift_destroy_boxed_opaque_existential_1(v26);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return v20 & 1;
}

uint64_t specialized closure #2 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:)(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - v7;
  v9 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1 + 64, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd);
  v13 = swift_dynamicCast();
  v14 = *(v10 + 56);
  if (v13)
  {
    v14(v8, 0, 1, v9);
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v8, v12, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
    v15 = specialized static String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle.== infix(_:_:)(a2, v12);
    outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v12, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
    v16 = 0;
    if ((v15 & 1) == 0)
    {
      return v16 & 1;
    }
  }

  else
  {
    v14(v8, 1, 1, v9);
    outlined destroy of TermOfAddress?(v8, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV013FloatingPointeD5StyleVSgMd);
  }

  v22[3] = MEMORY[0x1E69E63B0];
  *v22 = a3;
  v17 = *(a1 + 56);
  v18 = __swift_project_boxed_opaque_existential_1((a1 + 32), v17);
  v21[3] = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, v18, v17);
  v16 = specialized static String.LocalizationValue.FormatArgument.Storage._equalValues(_:_:)(v22, v21);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v16 & 1;
}

uint64_t specialized closure #2 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleVSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - v7;
  v9 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1 + 64, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd);
  v13 = swift_dynamicCast();
  v14 = *(v10 + 56);
  if (v13)
  {
    v14(v8, 0, 1, v9);
    outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v8, v12, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
    v15 = specialized static String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle.== infix(_:_:)(a2, v12);
    outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v12, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
    v16 = 0;
    if ((v15 & 1) == 0)
    {
      return v16 & 1;
    }
  }

  else
  {
    v14(v8, 1, 1, v9);
    outlined destroy of TermOfAddress?(v8, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV07IntegereD5StyleVSgMd);
  }

  v22[3] = MEMORY[0x1E69E6530];
  v22[0] = a3;
  v17 = *(a1 + 56);
  v18 = __swift_project_boxed_opaque_existential_1((a1 + 32), v17);
  v21[3] = v17;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v21);
  (*(*(v17 - 8) + 16))(boxed_opaque_existential_0, v18, v17);
  v16 = specialized static String.LocalizationValue.FormatArgument.Storage._equalValues(_:_:)(v22, v21);
  __swift_destroy_boxed_opaque_existential_1(v21);
  __swift_destroy_boxed_opaque_existential_1(v22);
  return v16 & 1;
}

uint64_t specialized closure #2 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:)(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = *(a2 + 80);
  v38[4] = *(a2 + 64);
  v38[5] = v7;
  v39 = *(a2 + 96);
  v8 = *(a2 + 16);
  v38[0] = *a2;
  v38[1] = v8;
  v9 = *(a2 + 48);
  v38[2] = *(a2 + 32);
  v38[3] = v9;
  outlined init with copy of Any(a1 + 64, v30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd);
  if (!swift_dynamicCast())
  {
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0;
    outlined destroy of TermOfAddress?(&v16, &_s10Foundation4DateV19IntervalFormatStyleVSgMd);
    goto LABEL_5;
  }

  v35 = v27;
  v36 = v28;
  v37 = v29;
  v31 = v23;
  v32 = v24;
  v33 = v25;
  v34 = v26;
  v10 = specialized static Date.IntervalFormatStyle.== infix(_:_:)(v38, &v31);
  v20 = v35;
  v21 = v36;
  v22 = v37;
  v16 = v31;
  v17 = v32;
  v18 = v33;
  v19 = v34;
  outlined destroy of Date.IntervalFormatStyle(&v16);
  if (v10)
  {
LABEL_5:
    *(&v32 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation4DateVGMd);
    *&v31 = a3;
    *(&v31 + 1) = a4;
    v12 = *(a1 + 56);
    v13 = __swift_project_boxed_opaque_existential_1((a1 + 32), v12);
    *(&v24 + 1) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v23);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v13, v12);
    v11 = specialized static String.LocalizationValue.FormatArgument.Storage._equalValues(_:_:)(&v31, &v23);
    __swift_destroy_boxed_opaque_existential_1(&v23);
    __swift_destroy_boxed_opaque_existential_1(&v31);
    return v11 & 1;
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t specialized closure #2 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:)(uint64_t a1, __int128 *a2, double a3)
{
  outlined init with copy of Any(a1 + 64, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd);
  if (!swift_dynamicCast())
  {
    _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleVSgWOi0_(&v30);
    v48 = v34;
    v49 = v35;
    v50[0] = v36[0];
    *(v50 + 10) = *(v36 + 10);
    v44 = v30;
    v45 = v31;
    v46 = v32;
    v47 = v33;
    v37 = v30;
    v38 = v31;
    v39 = v32;
    v40 = v33;
    v41 = v34;
    v42 = v35;
    v43[0] = v36[0];
    *(v43 + 10) = *(v36 + 10);
    outlined destroy of TermOfAddress?(&v37, &_sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleVSgMd);
    goto LABEL_5;
  }

  _NSBundleDeallocatingImmortalBundle(&v44, v6);
  v20 = v48;
  v21 = v49;
  v22[0] = v50[0];
  *(v22 + 10) = *(v50 + 10);
  v16 = v44;
  v17 = v45;
  v18 = v46;
  v19 = v47;
  v7 = a2[5];
  v27 = a2[4];
  v28 = v7;
  v29[0] = a2[6];
  *(v29 + 10) = *(a2 + 106);
  v8 = a2[1];
  v23 = *a2;
  v24 = v8;
  v9 = a2[3];
  v25 = a2[2];
  v26 = v9;
  outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle(a2, &v37);
  v10 = specialized static String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.== infix(_:_:)(&v23, &v16);
  v34 = v20;
  v35 = v21;
  v36[0] = v22[0];
  *(v36 + 10) = *(v22 + 10);
  v30 = v16;
  v31 = v17;
  v32 = v18;
  v33 = v19;
  outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v30);
  v41 = v27;
  v42 = v28;
  v43[0] = v29[0];
  *(v43 + 10) = *(v29 + 10);
  v37 = v23;
  v38 = v24;
  v39 = v25;
  v40 = v26;
  outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v37);
  if (v10)
  {
LABEL_5:
    *(&v45 + 1) = &type metadata for Date;
    *&v44 = a3;
    v12 = *(a1 + 56);
    v13 = __swift_project_boxed_opaque_existential_1((a1 + 32), v12);
    *(&v38 + 1) = v12;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v37);
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_0, v13, v12);
    v11 = specialized static String.LocalizationValue.FormatArgument.Storage._equalValues(_:_:)(&v44, &v37);
    __swift_destroy_boxed_opaque_existential_1(&v37);
    __swift_destroy_boxed_opaque_existential_1(&v44);
    return v11 & 1;
  }

  v11 = 0;
  return v11 & 1;
}

uint64_t String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void (*a7)(char *, char *, uint64_t)@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v47 = a8;
  v43 = a9;
  v44 = a7;
  v53 = a6;
  v54 = a2;
  v55 = a5;
  v51 = a1;
  v13 = *(a3 - 8);
  v52 = *(v13 + 64);
  v48 = a11;
  v46 = a10;
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = v15;
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v17 + 16);
  v42(v21, v20);
  v50 = *(v13 + 16);
  v41 = v13 + 16;
  v50(v15, v51, a3);
  v22 = *(v17 + 80);
  v23 = (v22 + 48) & ~v22;
  v24 = *(v13 + 80);
  v45 = v13;
  v25 = (v18 + v24 + v23) & ~v24;
  v39 = v23;
  v40 = v22 | v24;
  v26 = swift_allocObject();
  *(v26 + 2) = a3;
  *(v26 + 3) = a4;
  v27 = v53;
  *(v26 + 4) = v55;
  *(v26 + 5) = v27;
  v44 = *(v17 + 32);
  v44(&v26[v23], v21, a4);
  v38 = *(v13 + 32);
  v28 = v49;
  v38(&v26[v25], v49, a3);
  v29 = v43;
  *v43 = v47;
  v29[1] = v26;
  (v42)(v21, v54, a4);
  v30 = v51;
  v50(v28, v51, a3);
  v31 = swift_allocObject();
  *(v31 + 2) = a3;
  *(v31 + 3) = a4;
  v32 = v53;
  *(v31 + 4) = v55;
  *(v31 + 5) = v32;
  v33 = v21;
  v34 = v44;
  v44(&v31[v39], v33, a4);
  v38(&v31[v25], v49, a3);
  v29[2] = v48;
  v29[3] = v31;
  v29[7] = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29 + 4);
  v50(boxed_opaque_existential_0, v30, a3);
  v29[11] = a4;
  v36 = __swift_allocate_boxed_opaque_existential_0(v29 + 8);
  v34(v36, v54, a4);
  return (*(v45 + 8))(v30, a3);
}

uint64_t closure #1 in String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper.init<A, B>(_:format:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, void (**a5)(void *__return_ptr, void, void)@<X6>, uint64_t *a6@<X8>)
{
  v19 = a5;
  v11 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = (&v18 - v15);
  v20 = *a1;
  (*(a4 + 56))(&v20, a3, a4);
  (*(a4 + 48))(a2, a3, a4);
  (*(v11 + 8))(v13, a3);
  return AttributedString.init<A>(_:)(v16, AssociatedTypeWitness, v19, a6);
}

uint64_t closure #2 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Any(a1 + 64, v28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd);
  v16 = swift_dynamicCast();
  v17 = *(v12 + 56);
  if (v16)
  {
    v17(v11, 0, 1, a5);
    (*(v12 + 32))(v15, v11, a5);
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v12 + 8))(v15, a5);
    v19 = 0;
    if ((v18 & 1) == 0)
    {
      return v19 & 1;
    }
  }

  else
  {
    v17(v11, 1, 1, a5);
    (*(v9 + 8))(v11, v8);
  }

  v28[3] = a4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
  (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, v26, a4);
  v21 = *(a1 + 56);
  v22 = __swift_project_boxed_opaque_existential_1((a1 + 32), v21);
  v27[3] = v21;
  v23 = __swift_allocate_boxed_opaque_existential_0(v27);
  (*(*(v21 - 8) + 16))(v23, v22, v21);
  v19 = specialized static String.LocalizationValue.FormatArgument.Storage._equalValues(_:_:)(v28, v27);
  __swift_destroy_boxed_opaque_existential_1(v27);
  __swift_destroy_boxed_opaque_existential_1(v28);
  return v19 & 1;
}

uint64_t openEquatable #1 <A>(_:) in static String.LocalizationValue.FormatArgument.Storage._equalValues(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-v7];
  v9 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of Any(a2, v17);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v8, 0, 1, a3);
    (*(v9 + 32))(v12, v8, a3);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v9 + 8))(v12, a3);
  }

  else
  {
    v14(v8, 1, 1, a3);
    (*(v6 + 8))(v8, v5);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t String.LocalizationValue.FormatArgument.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = __swift_project_boxed_opaque_existential_1(a1, v4);
  *(a2 + 24) = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a2);
  (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v5, v4);
  *(a2 + 104) = 0;
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void *String.LocalizationValue.FormatArgument.init(_:_:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  *(a3 + 8) = v3;
  *(a3 + 104) = 1;
  return result;
}

uint64_t _sSS10FoundationE17LocalizationValueV14FormatArgumentV_6formatAEx_q_tc0D5InputQy_RszAA0D5StyleR_Sy0D6OutputRp_r0_lufCSi_AE07IntegeredH0VTt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2;
  v6 = type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a3 + 88) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((a3 + 64));
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(a2, boxed_opaque_existential_0, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
  *(a3 + 56) = MEMORY[0x1E69E6530];
  *(a3 + 32) = a1;
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(boxed_opaque_existential_0, v9, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v9, v14 + v12, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
  *(v14 + v13) = a1;
  *a3 = partial apply for specialized closure #1 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:);
  *(a3 + 8) = v14;
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(boxed_opaque_existential_0, v9, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
  v15 = swift_allocObject();
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v9, v15 + v12, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
  *(v15 + v13) = a1;
  *(a3 + 16) = partial apply for specialized closure #2 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:);
  *(a3 + 24) = v15;
  result = outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v18, type metadata accessor for String.LocalizationValue.FormatArgument.IntegerArgumentFormatStyle);
  *(a3 + 104) = 2;
  return result;
}

uint64_t _sSS10FoundationE17LocalizationValueV14FormatArgumentV_6formatAEx_q_tc0D5InputQy_RszAA0D5StyleR_Sy0D6OutputRp_r0_lufCSd_AE013FloatingPointedH0VTt2g5@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + 88) = v10;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((a2 + 64));
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(a1, boxed_opaque_existential_0, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
  *(a2 + 56) = MEMORY[0x1E69E63B0];
  *(a2 + 32) = a3;
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(boxed_opaque_existential_0, v9, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = (v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v9, v14 + v12, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
  *(v14 + v13) = a3;
  *a2 = partial apply for specialized closure #1 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:);
  *(a2 + 8) = v14;
  outlined init with copy of String.LocalizationValue.FormatArgument.CodableStorage(boxed_opaque_existential_0, v9, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
  v15 = swift_allocObject();
  outlined init with take of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(v9, v15 + v12, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
  *(v15 + v13) = a3;
  *(a2 + 16) = partial apply for specialized closure #2 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:);
  *(a2 + 24) = v15;
  result = outlined destroy of String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle(a1, type metadata accessor for String.LocalizationValue.FormatArgument.FloatingPointArgumentFormatStyle);
  *(a2 + 104) = 2;
  return result;
}

uint64_t String.LocalizationValue.FormatArgument.init<A, B>(_:format:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v24 = a6;
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v21, a1, v19);
  (*(v13 + 16))(v15, a2, a4);
  String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:)(v21, v15, a3, a4, a5, v24, &unk_1EEED7EC0, partial apply for closure #1 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:), a7, &unk_1EEED7EE8, partial apply for closure #2 in String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:));
  (*(v13 + 8))(a2, a4);
  result = (*(v17 + 8))(a1, a3);
  *(a7 + 104) = 2;
  return result;
}

{
  v24 = a6;
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v23 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v21, a1, v19);
  (*(v13 + 16))(v15, a2, a4);
  String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper.init<A, B>(_:format:)(v21, v15, a3, a4, a5, v24, &unk_1EEED7E70, partial apply for closure #1 in String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper.init<A, B>(_:format:), a7, &unk_1EEED7E98, partial apply for closure #2 in String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper.init<A, B>(_:format:));
  (*(v13 + 8))(a2, a4);
  result = (*(v17 + 8))(a1, a3);
  *(a7 + 104) = 3;
  return result;
}

__n128 String.LocalizationValue.FormatArgument.init(resource:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 80);
  *(a2 + 64) = *(a1 + 64);
  *(a2 + 80) = v2;
  *(a2 + 96) = *(a1 + 96);
  v3 = *(a1 + 16);
  *a2 = *a1;
  *(a2 + 16) = v3;
  result = *(a1 + 48);
  *(a2 + 32) = *(a1 + 32);
  *(a2 + 48) = result;
  *(a2 + 104) = 4;
  return result;
}

__n128 String.LocalizationValue.FormatArgument.init(resourceList:format:)@<Q0>(unint64_t a1@<X0>, uint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v3 = *a2;
  v4 = *(a2 + 1);
  a3->n128_u64[0] = a1;
  a3->n128_u8[8] = v3;
  a3->n128_u8[9] = v4;
  result = *(a2 + 8);
  a3[1] = result;
  a3[6].n128_u8[8] = 5;
  return result;
}

_BYTE *String.LocalizationValue.FormatArgument.init(placeholder:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *result;
  a2[104] = 6;
  return result;
}

uint64_t String.LocalizationValue.FormatArgument.buildAttributeContainerForArgument()@<X0>(uint64_t *a1@<X8>)
{
  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(v1, &v22);
  if (v28 == 3)
  {
    v18 = v24;
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v16 = v22;
    v17 = v23;
    v10 = *(&v25 + 1);
    v11 = __swift_project_boxed_opaque_existential_1(&v18, *(&v25 + 1));
    v15 = v10;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v14);
    (*(*(v10 - 8) + 16))(boxed_opaque_existential_0, v11, v10);
    closure #1 in String.LocalizationValue.FormatArgument.buildAttributeContainerForArgument()(v14, a1);
    outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v16);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  if (v28 == 2)
  {
    v18 = v24;
    v19 = v25;
    v20 = v26;
    v21 = v27;
    v16 = v22;
    v17 = v23;
    v7 = *(&v25 + 1);
    v8 = __swift_project_boxed_opaque_existential_1(&v18, *(&v25 + 1));
    v15 = v7;
    v9 = __swift_allocate_boxed_opaque_existential_0(v14);
    (*(*(v7 - 8) + 16))(v9, v8, v7);
    closure #1 in String.LocalizationValue.FormatArgument.buildAttributeContainerForArgument()(v14, a1);
    outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v16);
    return __swift_destroy_boxed_opaque_existential_1(v14);
  }

  if (v28)
  {
    v13 = MEMORY[0x1E69E7CD0];
    *a1 = MEMORY[0x1E69E7CC8];
    a1[1] = v13;
    return outlined destroy of String.LocalizationValue.FormatArgument.Storage(&v22);
  }

  else
  {
    outlined init with take of Any(&v22, &v16);
    v3 = *(&v17 + 1);
    v4 = __swift_project_boxed_opaque_existential_1(&v16, *(&v17 + 1));
    v15 = v3;
    v5 = __swift_allocate_boxed_opaque_existential_0(v14);
    (*(*(v3 - 8) + 16))(v5, v4, v3);
    closure #1 in String.LocalizationValue.FormatArgument.buildAttributeContainerForArgument()(v14, a1);
    __swift_destroy_boxed_opaque_existential_1(v14);
    return __swift_destroy_boxed_opaque_existential_1(&v16);
  }
}

unint64_t closure #1 in String.LocalizationValue.FormatArgument.buildAttributeContainerForArgument()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = &v384;
  outlined init with copy of Any(a1, &v384);
  if (!swift_dynamicCast())
  {
    outlined init with copy of Any(a1, &v384);
    if (swift_dynamicCast())
    {
      v2 = v379;
      v17 = MEMORY[0x1E69E7CC8];
      v18 = MEMORY[0x1E69E7CD0];
      *a2 = MEMORY[0x1E69E7CC8];
      a2[1] = v18;
      v387 = &type metadata for AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value;
      v388 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value();
      v384 = v2;
      v385 = 0;
      v386 = 1;
      v389 = xmmword_1812187D0;
      v390 = 1;
      v391 = 0;
      outlined init with copy of FloatingPointRoundingRule?(&v384, &v379, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (*(&v380 + 1))
      {
        v376 = v381;
        v377 = v382;
        v378 = v383;
        v374 = v379;
        v375 = v380;
        outlined init with copy of AttributedString._AttributeValue(&v374, v372);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v371 = v17;
        result = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000018147D910);
        v20 = *(v17 + 16);
        v21 = (v19 & 1) == 0;
        v14 = __OFADD__(v20, v21);
        v15 = v20 + v21;
        if (v14)
        {
          __break(1u);
          goto LABEL_200;
        }

        LOBYTE(v2) = v19;
        if (*(v17 + 24) >= v15)
        {
          v5 = MEMORY[0x1E69E7CC8];
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v346 = result;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
            v22 = static _DictionaryStorage.copy(original:)();
            v16 = v22;
            v23 = *(v5 + 2);
            if (v23)
            {
              v24 = (v22 + 64);
              v25 = ((1 << *(v16 + 32)) + 63) >> 6;
              if (v16 != v5 || v24 >= v5 + 8 * v25 + 64)
              {
                memmove(v24, v5 + 4, 8 * v25);
              }

              v26 = 0;
              *(v16 + 16) = v23;
              v27 = 1 << *(v5 + 32);
              v28 = -1;
              if (v27 < 64)
              {
                v28 = ~(-1 << v27);
              }

              v29 = (v27 + 63) >> 6;
              v30 = v28 & v5[4];
              if (v30)
              {
                do
                {
                  v359 = (v30 - 1) & v30;
                  v31 = __clz(__rbit64(v30)) | (v26 << 6);
LABEL_24:
                  v34 = 16 * v31;
                  v35 = (*(v5 + 6) + 16 * v31);
                  v36 = v35[1];
                  v347 = *v35;
                  v37 = 72 * v31;
                  outlined init with copy of AttributedString._AttributeValue(*(v5 + 7) + 72 * v31, &v379);
                  v38 = (*(v16 + 48) + v34);
                  *v38 = v347;
                  v38[1] = v36;
                  v39 = *(v16 + 56) + v37;
                  *v39 = v379;
                  v40 = v380;
                  v41 = v381;
                  v42 = v382;
                  *(v39 + 64) = v383;
                  *(v39 + 32) = v41;
                  *(v39 + 48) = v42;
                  *(v39 + 16) = v40;

                  v30 = v359;
                }

                while (v359);
              }

              while (1)
              {
                v32 = v26 + 1;
                if (__OFADD__(v26, 1))
                {
                  goto LABEL_251;
                }

                if (v32 >= v29)
                {
                  break;
                }

                v33 = *(v5 + v32 + 8);
                ++v26;
                if (v33)
                {
                  v359 = (v33 - 1) & v33;
                  v31 = __clz(__rbit64(v33)) | (v32 << 6);
                  v26 = v32;
                  goto LABEL_24;
                }
              }
            }

LABEL_232:

            result = v346;
            if (v2)
            {
              goto LABEL_137;
            }

            goto LABEL_184;
          }

          goto LABEL_183;
        }

        goto LABEL_135;
      }

      outlined destroy of TermOfAddress?(&v379, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      v120 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000018147D910);
      if ((v121 & 1) == 0)
      {
        goto LABEL_181;
      }

      v71 = v120;
      v122 = MEMORY[0x1E69E7CC8];
      v16 = MEMORY[0x1E69E7CC8];
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_180;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      v123 = static _DictionaryStorage.copy(original:)();
      v16 = v123;
      v124 = *(v122 + 16);
      if (v124)
      {
        v125 = (v123 + 64);
        v126 = ((1 << *(v16 + 32)) + 63) >> 6;
        if (v16 != v122 || v125 >= v122 + 8 * v126 + 64)
        {
          memmove(v125, (v122 + 64), 8 * v126);
        }

        v127 = 0;
        *(v16 + 16) = v124;
        v128 = 1 << *(v122 + 32);
        v129 = -1;
        if (v128 < 64)
        {
          v129 = ~(-1 << v128);
        }

        v130 = (v128 + 63) >> 6;
        v131 = v129 & *(v122 + 64);
        if (v131)
        {
          do
          {
            v363 = (v131 - 1) & v131;
            v132 = __clz(__rbit64(v131)) | (v127 << 6);
LABEL_94:
            v135 = 16 * v132;
            v136 = (*(v122 + 48) + 16 * v132);
            v137 = v136[1];
            v351 = *v136;
            v138 = 72 * v132;
            outlined init with copy of AttributedString._AttributeValue(*(v122 + 56) + 72 * v132, &v379);
            v139 = (*(v16 + 48) + v135);
            *v139 = v351;
            v139[1] = v137;
            v140 = *(v16 + 56) + v138;
            *v140 = v379;
            v141 = v380;
            v142 = v381;
            v143 = v382;
            *(v140 + 64) = v383;
            *(v140 + 32) = v142;
            *(v140 + 48) = v143;
            *(v140 + 16) = v141;

            v131 = v363;
          }

          while (v363);
        }

        while (1)
        {
          v133 = v127 + 1;
          if (__OFADD__(v127, 1))
          {
            goto LABEL_252;
          }

          if (v133 >= v130)
          {
            break;
          }

          v134 = *(v122 + 8 * v133 + 64);
          ++v127;
          if (v134)
          {
            v363 = (v134 - 1) & v134;
            v132 = __clz(__rbit64(v134)) | (v133 << 6);
            v127 = v133;
            goto LABEL_94;
          }
        }
      }

LABEL_248:

      goto LABEL_180;
    }

    outlined init with copy of Any(a1, &v384);
    if (swift_dynamicCast())
    {
      v2 = v379;
      v43 = MEMORY[0x1E69E7CC8];
      v44 = MEMORY[0x1E69E7CD0];
      *a2 = MEMORY[0x1E69E7CC8];
      a2[1] = v44;
      v387 = &type metadata for AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value;
      v388 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value();
      v384 = v2;
      v385 = 0;
      v386 = 0;
      v389 = xmmword_1812187D0;
      v390 = 1;
      v391 = 0;
      outlined init with copy of FloatingPointRoundingRule?(&v384, &v379, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (!*(&v380 + 1))
      {
        outlined destroy of TermOfAddress?(&v379, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v171 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000018147D910);
        if ((v172 & 1) == 0)
        {
          goto LABEL_181;
        }

        v71 = v171;
        v173 = MEMORY[0x1E69E7CC8];
        v16 = MEMORY[0x1E69E7CC8];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_180;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v174 = static _DictionaryStorage.copy(original:)();
        v16 = v174;
        v175 = *(v173 + 16);
        if (v175)
        {
          v176 = (v174 + 64);
          v177 = ((1 << *(v16 + 32)) + 63) >> 6;
          if (v16 != v173 || v176 >= v173 + 8 * v177 + 64)
          {
            memmove(v176, (v173 + 64), 8 * v177);
          }

          v178 = 0;
          *(v16 + 16) = v175;
          v179 = 1 << *(v173 + 32);
          v180 = -1;
          if (v179 < 64)
          {
            v180 = ~(-1 << v179);
          }

          v365 = v180 & *(v173 + 64);
          v181 = (v179 + 63) >> 6;
          while (v365)
          {
            v182 = __clz(__rbit64(v365));
            v365 &= v365 - 1;
            v183 = v182 | (v178 << 6);
LABEL_129:
            v186 = 16 * v183;
            v187 = (*(v173 + 48) + 16 * v183);
            v188 = v187[1];
            v353 = *v187;
            v189 = 72 * v183;
            outlined init with copy of AttributedString._AttributeValue(*(v173 + 56) + 72 * v183, &v379);
            v190 = (*(v16 + 48) + v186);
            *v190 = v353;
            v190[1] = v188;
            v191 = *(v16 + 56) + v189;
            *v191 = v379;
            v192 = v380;
            v193 = v381;
            v194 = v382;
            *(v191 + 64) = v383;
            *(v191 + 32) = v193;
            *(v191 + 48) = v194;
            *(v191 + 16) = v192;
          }

          while (1)
          {
            v184 = v178 + 1;
            if (__OFADD__(v178, 1))
            {
              goto LABEL_254;
            }

            if (v184 >= v181)
            {
              goto LABEL_248;
            }

            v185 = *(v173 + 8 * v184 + 64);
            ++v178;
            if (v185)
            {
              v365 = (v185 - 1) & v185;
              v183 = __clz(__rbit64(v185)) | (v184 << 6);
              v178 = v184;
              goto LABEL_129;
            }
          }
        }

        goto LABEL_248;
      }

      v376 = v381;
      v377 = v382;
      v378 = v383;
      v374 = v379;
      v375 = v380;
      outlined init with copy of AttributedString._AttributeValue(&v374, v372);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v371 = v43;
      result = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000018147D910);
      v46 = *(v43 + 16);
      v47 = (v45 & 1) == 0;
      v14 = __OFADD__(v46, v47);
      v15 = v46 + v47;
      if (!v14)
      {
        LOBYTE(v2) = v45;
        if (*(v43 + 24) >= v15)
        {
          v5 = MEMORY[0x1E69E7CC8];
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v346 = result;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
            v48 = static _DictionaryStorage.copy(original:)();
            v16 = v48;
            v49 = *(v5 + 2);
            if (v49)
            {
              v50 = (v48 + 64);
              v51 = ((1 << *(v16 + 32)) + 63) >> 6;
              if (v16 != v5 || v50 >= v5 + 8 * v51 + 64)
              {
                memmove(v50, v5 + 4, 8 * v51);
              }

              v52 = 0;
              *(v16 + 16) = v49;
              v53 = 1 << *(v5 + 32);
              v54 = -1;
              if (v53 < 64)
              {
                v54 = ~(-1 << v53);
              }

              v360 = v54 & v5[4];
              v55 = (v53 + 63) >> 6;
              while (v360)
              {
                v56 = __clz(__rbit64(v360));
                v360 &= v360 - 1;
                v57 = v56 | (v52 << 6);
LABEL_43:
                v60 = 16 * v57;
                v61 = (*(v5 + 6) + 16 * v57);
                v62 = v61[1];
                v348 = *v61;
                v63 = 72 * v57;
                outlined init with copy of AttributedString._AttributeValue(*(v5 + 7) + 72 * v57, &v379);
                v64 = (*(v16 + 48) + v60);
                *v64 = v348;
                v64[1] = v62;
                v65 = *(v16 + 56) + v63;
                *v65 = v379;
                v66 = v380;
                v67 = v381;
                v68 = v382;
                *(v65 + 64) = v383;
                *(v65 + 32) = v67;
                *(v65 + 48) = v68;
                *(v65 + 16) = v66;
              }

              while (1)
              {
                v58 = v52 + 1;
                if (__OFADD__(v52, 1))
                {
                  goto LABEL_253;
                }

                if (v58 >= v55)
                {
                  goto LABEL_232;
                }

                v59 = *(v5 + v58 + 8);
                ++v52;
                if (v59)
                {
                  v360 = (v59 - 1) & v59;
                  v57 = __clz(__rbit64(v59)) | (v58 << 6);
                  v52 = v58;
                  goto LABEL_43;
                }
              }
            }

            goto LABEL_232;
          }

LABEL_183:
          v16 = v5;
          if (v2)
          {
            goto LABEL_137;
          }

          goto LABEL_184;
        }

LABEL_135:
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, isUniquelyReferenced_nonNull_native);
        v16 = v371;
        result = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000018147D910);
        if ((v2 & 1) == (v200 & 1))
        {
LABEL_136:
          if (v2)
          {
LABEL_137:
            v201 = *(v16 + 56) + 72 * result;
            v379 = *v201;
            v202 = *(v201 + 16);
            v203 = *(v201 + 32);
            v204 = *(v201 + 48);
            v383 = *(v201 + 64);
            v381 = v203;
            v382 = v204;
            v380 = v202;
            v205 = v372[1];
            v206 = v372[2];
            v207 = v372[3];
            *(v201 + 64) = v373;
            *(v201 + 32) = v206;
            *(v201 + 48) = v207;
            *v201 = v372[0];
            *(v201 + 16) = v205;
            outlined destroy of AttributedString._AttributeValue(&v374);
LABEL_185:
            *a2 = v16;
            goto LABEL_186;
          }

LABEL_184:
          specialized _NativeDictionary._insert(at:key:value:)(result, 0xD00000000000002CLL, 0x800000018147D910, v372, v16);
          outlined destroy of AttributedString._AttributeValue(&v374);
          v379 = 0u;
          v380 = 0u;
          v381 = 0u;
          v382 = 0u;
          v383 = 0;
          goto LABEL_185;
        }

        goto LABEL_261;
      }

      __break(1u);
      goto LABEL_215;
    }

    outlined init with copy of Any(a1, &v384);
    if (swift_dynamicCast())
    {
      v2 = v379;
      v94 = MEMORY[0x1E69E7CC8];
      v95 = MEMORY[0x1E69E7CD0];
      *a2 = MEMORY[0x1E69E7CC8];
      a2[1] = v95;
      v387 = &type metadata for AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value;
      v388 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value();
      v384 = v2;
      v385 = 0;
      v386 = 0;
      v389 = xmmword_1812187D0;
      v390 = 1;
      v391 = 0;
      outlined init with copy of FloatingPointRoundingRule?(&v384, &v379, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (!*(&v380 + 1))
      {
        outlined destroy of TermOfAddress?(&v379, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v208 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000018147D910);
        if ((v209 & 1) == 0)
        {
          goto LABEL_181;
        }

        v71 = v208;
        v210 = MEMORY[0x1E69E7CC8];
        v16 = MEMORY[0x1E69E7CC8];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_180;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v211 = static _DictionaryStorage.copy(original:)();
        v16 = v211;
        v212 = *(v210 + 16);
        if (v212)
        {
          v213 = (v211 + 64);
          v214 = ((1 << *(v16 + 32)) + 63) >> 6;
          if (v16 != v210 || v213 >= v210 + 8 * v214 + 64)
          {
            memmove(v213, (v210 + 64), 8 * v214);
          }

          v215 = 0;
          *(v16 + 16) = v212;
          v216 = 1 << *(v210 + 32);
          v217 = -1;
          if (v216 < 64)
          {
            v217 = ~(-1 << v216);
          }

          v366 = v217 & *(v210 + 64);
          v218 = (v216 + 63) >> 6;
          while (v366)
          {
            v219 = __clz(__rbit64(v366));
            v366 &= v366 - 1;
            v220 = v219 | (v215 << 6);
LABEL_152:
            v223 = 16 * v220;
            v224 = (*(v210 + 48) + 16 * v220);
            v225 = v224[1];
            v354 = *v224;
            v226 = 72 * v220;
            outlined init with copy of AttributedString._AttributeValue(*(v210 + 56) + 72 * v220, &v379);
            v227 = (*(v16 + 48) + v223);
            *v227 = v354;
            v227[1] = v225;
            v228 = *(v16 + 56) + v226;
            *v228 = v379;
            v229 = v380;
            v230 = v381;
            v231 = v382;
            *(v228 + 64) = v383;
            *(v228 + 32) = v230;
            *(v228 + 48) = v231;
            *(v228 + 16) = v229;
          }

          while (1)
          {
            v221 = v215 + 1;
            if (__OFADD__(v215, 1))
            {
              goto LABEL_256;
            }

            if (v221 >= v218)
            {
              goto LABEL_248;
            }

            v222 = *(v210 + 8 * v221 + 64);
            ++v215;
            if (v222)
            {
              v366 = (v222 - 1) & v222;
              v220 = __clz(__rbit64(v222)) | (v221 << 6);
              v215 = v221;
              goto LABEL_152;
            }
          }
        }

        goto LABEL_248;
      }

      v376 = v381;
      v377 = v382;
      v378 = v383;
      v374 = v379;
      v375 = v380;
      outlined init with copy of AttributedString._AttributeValue(&v374, v372);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v371 = v94;
      result = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000018147D910);
      v97 = *(v94 + 16);
      v98 = (v96 & 1) == 0;
      v14 = __OFADD__(v97, v98);
      v15 = v97 + v98;
      if (!v14)
      {
        LOBYTE(v2) = v96;
        if (*(v94 + 24) >= v15)
        {
          v5 = MEMORY[0x1E69E7CC8];
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v346 = result;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
            v99 = static _DictionaryStorage.copy(original:)();
            v16 = v99;
            v100 = *(v5 + 2);
            if (v100)
            {
              v101 = (v99 + 64);
              v102 = ((1 << *(v16 + 32)) + 63) >> 6;
              if (v16 != v5 || v101 >= v5 + 8 * v102 + 64)
              {
                memmove(v101, v5 + 4, 8 * v102);
              }

              v103 = 0;
              *(v16 + 16) = v100;
              v104 = 1 << *(v5 + 32);
              v105 = -1;
              if (v104 < 64)
              {
                v105 = ~(-1 << v104);
              }

              v362 = v105 & v5[4];
              v106 = (v104 + 63) >> 6;
              while (v362)
              {
                v107 = __clz(__rbit64(v362));
                v362 &= v362 - 1;
                v108 = v107 | (v103 << 6);
LABEL_78:
                v111 = 16 * v108;
                v112 = (*(v5 + 6) + 16 * v108);
                v113 = v112[1];
                v350 = *v112;
                v114 = 72 * v108;
                outlined init with copy of AttributedString._AttributeValue(*(v5 + 7) + 72 * v108, &v379);
                v115 = (*(v16 + 48) + v111);
                *v115 = v350;
                v115[1] = v113;
                v116 = *(v16 + 56) + v114;
                *v116 = v379;
                v117 = v380;
                v118 = v381;
                v119 = v382;
                *(v116 + 64) = v383;
                *(v116 + 32) = v118;
                *(v116 + 48) = v119;
                *(v116 + 16) = v117;
              }

              while (1)
              {
                v109 = v103 + 1;
                if (__OFADD__(v103, 1))
                {
                  goto LABEL_255;
                }

                if (v109 >= v106)
                {
                  goto LABEL_232;
                }

                v110 = *(v5 + v109 + 8);
                ++v103;
                if (v110)
                {
                  v362 = (v110 - 1) & v110;
                  v108 = __clz(__rbit64(v110)) | (v109 << 6);
                  v103 = v109;
                  goto LABEL_78;
                }
              }
            }

            goto LABEL_232;
          }

          goto LABEL_183;
        }

        goto LABEL_135;
      }

LABEL_215:
      __break(1u);
LABEL_216:
      __break(1u);
      goto LABEL_217;
    }

    outlined init with copy of Any(a1, &v384);
    if (swift_dynamicCast())
    {
      *&v144 = *&v379;
      v145 = MEMORY[0x1E69E7CC8];
      v146 = MEMORY[0x1E69E7CD0];
      *a2 = MEMORY[0x1E69E7CC8];
      a2[1] = v146;
      v387 = &type metadata for AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value;
      v388 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value();
      v384 = v144;
      v385 = 0;
      v386 = 2;
      v389 = xmmword_1812187D0;
      v390 = 1;
      v391 = 0;
      outlined init with copy of FloatingPointRoundingRule?(&v384, &v379, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (!*(&v380 + 1))
      {
        outlined destroy of TermOfAddress?(&v379, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v235 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000018147D910);
        if ((v236 & 1) == 0)
        {
          goto LABEL_181;
        }

        v71 = v235;
        v237 = MEMORY[0x1E69E7CC8];
        v16 = MEMORY[0x1E69E7CC8];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_180;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v238 = static _DictionaryStorage.copy(original:)();
        v16 = v238;
        v239 = *(v237 + 16);
        if (v239)
        {
          v240 = (v238 + 64);
          v241 = ((1 << *(v16 + 32)) + 63) >> 6;
          if (v16 != v237 || v240 >= v237 + 8 * v241 + 64)
          {
            memmove(v240, (v237 + 64), 8 * v241);
          }

          v242 = 0;
          *(v16 + 16) = v239;
          v243 = 1 << *(v237 + 32);
          v244 = -1;
          if (v243 < 64)
          {
            v244 = ~(-1 << v243);
          }

          v367 = v244 & *(v237 + 64);
          v245 = (v243 + 63) >> 6;
          while (v367)
          {
            v246 = __clz(__rbit64(v367));
            v367 &= v367 - 1;
            v247 = v246 | (v242 << 6);
LABEL_172:
            v250 = 16 * v247;
            v251 = (*(v237 + 48) + 16 * v247);
            v252 = v251[1];
            v355 = *v251;
            v253 = 72 * v247;
            outlined init with copy of AttributedString._AttributeValue(*(v237 + 56) + 72 * v247, &v379);
            v254 = (*(v16 + 48) + v250);
            *v254 = v355;
            v254[1] = v252;
            v255 = *(v16 + 56) + v253;
            *v255 = v379;
            v256 = v380;
            v257 = v381;
            v258 = v382;
            *(v255 + 64) = v383;
            *(v255 + 32) = v257;
            *(v255 + 48) = v258;
            *(v255 + 16) = v256;
          }

          while (1)
          {
            v248 = v242 + 1;
            if (__OFADD__(v242, 1))
            {
              goto LABEL_258;
            }

            if (v248 >= v245)
            {
              goto LABEL_248;
            }

            v249 = *(v237 + 8 * v248 + 64);
            ++v242;
            if (v249)
            {
              v367 = (v249 - 1) & v249;
              v247 = __clz(__rbit64(v249)) | (v248 << 6);
              v242 = v248;
              goto LABEL_172;
            }
          }
        }

        goto LABEL_248;
      }

      v376 = v381;
      v377 = v382;
      v378 = v383;
      v374 = v379;
      v375 = v380;
      outlined init with copy of AttributedString._AttributeValue(&v374, v372);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v371 = v145;
      result = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000018147D910);
      v148 = *(v145 + 16);
      v149 = (v147 & 1) == 0;
      v14 = __OFADD__(v148, v149);
      v15 = v148 + v149;
      if (!v14)
      {
        LOBYTE(v2) = v147;
        if (*(v145 + 24) >= v15)
        {
          v5 = MEMORY[0x1E69E7CC8];
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v346 = result;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
            v150 = static _DictionaryStorage.copy(original:)();
            v16 = v150;
            v151 = *(v5 + 2);
            if (v151)
            {
              v152 = (v150 + 64);
              v153 = ((1 << *(v16 + 32)) + 63) >> 6;
              if (v16 != v5 || v152 >= v5 + 8 * v153 + 64)
              {
                memmove(v152, v5 + 4, 8 * v153);
              }

              v154 = 0;
              *(v16 + 16) = v151;
              v155 = 1 << *(v5 + 32);
              v156 = -1;
              if (v155 < 64)
              {
                v156 = ~(-1 << v155);
              }

              v364 = v156 & v5[4];
              v157 = (v155 + 63) >> 6;
              while (v364)
              {
                v158 = __clz(__rbit64(v364));
                v364 &= v364 - 1;
                v159 = v158 | (v154 << 6);
LABEL_113:
                v162 = 16 * v159;
                v163 = (*(v5 + 6) + 16 * v159);
                v164 = v163[1];
                v352 = *v163;
                v165 = 72 * v159;
                outlined init with copy of AttributedString._AttributeValue(*(v5 + 7) + 72 * v159, &v379);
                v166 = (*(v16 + 48) + v162);
                *v166 = v352;
                v166[1] = v164;
                v167 = *(v16 + 56) + v165;
                *v167 = v379;
                v168 = v380;
                v169 = v381;
                v170 = v382;
                *(v167 + 64) = v383;
                *(v167 + 32) = v169;
                *(v167 + 48) = v170;
                *(v167 + 16) = v168;
              }

              while (1)
              {
                v160 = v154 + 1;
                if (__OFADD__(v154, 1))
                {
                  goto LABEL_257;
                }

                if (v160 >= v157)
                {
                  goto LABEL_232;
                }

                v161 = *(v5 + v160 + 8);
                ++v154;
                if (v161)
                {
                  v364 = (v161 - 1) & v161;
                  v159 = __clz(__rbit64(v161)) | (v160 << 6);
                  v154 = v160;
                  goto LABEL_113;
                }
              }
            }

            goto LABEL_232;
          }

          goto LABEL_183;
        }

        goto LABEL_135;
      }

      goto LABEL_216;
    }

    outlined init with copy of Any(a1, &v384);
    if (swift_dynamicCast())
    {
      v2 = v379;
      v195 = MEMORY[0x1E69E7CC8];
      v196 = MEMORY[0x1E69E7CD0];
      *a2 = MEMORY[0x1E69E7CC8];
      a2[1] = v196;
      v387 = &type metadata for AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value;
      v388 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value();
      v384 = v2;
      v385 = 0;
      v386 = 2;
      v389 = xmmword_1812187D0;
      v390 = 1;
      v391 = 0;
      outlined init with copy of FloatingPointRoundingRule?(&v384, &v379, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (!*(&v380 + 1))
      {
        outlined destroy of TermOfAddress?(&v379, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v263 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000018147D910);
        if ((v264 & 1) == 0)
        {
          goto LABEL_181;
        }

        v71 = v263;
        v265 = MEMORY[0x1E69E7CC8];
        v16 = MEMORY[0x1E69E7CC8];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          goto LABEL_180;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v325 = static _DictionaryStorage.copy(original:)();
        v16 = v325;
        v326 = *(v265 + 16);
        if (v326)
        {
          v327 = (v325 + 64);
          v328 = ((1 << *(v16 + 32)) + 63) >> 6;
          if (v16 != v265 || v327 >= v265 + 8 * v328 + 64)
          {
            memmove(v327, (v265 + 64), 8 * v328);
          }

          v329 = 0;
          *(v16 + 16) = v326;
          v330 = 1 << *(v265 + 32);
          v331 = -1;
          if (v330 < 64)
          {
            v331 = ~(-1 << v330);
          }

          v370 = v331 & *(v265 + 64);
          v332 = (v330 + 63) >> 6;
          while (v370)
          {
            v333 = __clz(__rbit64(v370));
            v370 &= v370 - 1;
            v334 = v333 | (v329 << 6);
LABEL_246:
            v337 = 16 * v334;
            v338 = (*(v265 + 48) + 16 * v334);
            v339 = v338[1];
            v358 = *v338;
            v340 = 72 * v334;
            outlined init with copy of AttributedString._AttributeValue(*(v265 + 56) + 72 * v334, &v379);
            v341 = (*(v16 + 48) + v337);
            *v341 = v358;
            v341[1] = v339;
            v342 = *(v16 + 56) + v340;
            *v342 = v379;
            v343 = v380;
            v344 = v381;
            v345 = v382;
            *(v342 + 64) = v383;
            *(v342 + 32) = v344;
            *(v342 + 48) = v345;
            *(v342 + 16) = v343;
          }

          while (1)
          {
            v335 = v329 + 1;
            if (__OFADD__(v329, 1))
            {
              goto LABEL_260;
            }

            if (v335 >= v332)
            {
              goto LABEL_248;
            }

            v336 = *(v265 + 8 * v335 + 64);
            ++v329;
            if (v336)
            {
              v370 = (v336 - 1) & v336;
              v334 = __clz(__rbit64(v336)) | (v335 << 6);
              v329 = v335;
              goto LABEL_246;
            }
          }
        }

        goto LABEL_248;
      }

      v376 = v381;
      v377 = v382;
      v378 = v383;
      v374 = v379;
      v375 = v380;
      outlined init with copy of AttributedString._AttributeValue(&v374, v372);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v371 = v195;
      result = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000018147D910);
      v198 = *(v195 + 16);
      v199 = (v197 & 1) == 0;
      v14 = __OFADD__(v198, v199);
      v15 = v198 + v199;
      if (!v14)
      {
        LOBYTE(v2) = v197;
        if (*(v195 + 24) < v15)
        {
          goto LABEL_135;
        }

        v5 = MEMORY[0x1E69E7CC8];
        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_183;
        }

LABEL_218:
        v346 = result;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v304 = static _DictionaryStorage.copy(original:)();
        v16 = v304;
        v305 = *(v5 + 2);
        if (v305)
        {
          v306 = (v304 + 64);
          v307 = ((1 << *(v16 + 32)) + 63) >> 6;
          if (v16 != v5 || v306 >= v5 + 8 * v307 + 64)
          {
            memmove(v306, v5 + 4, 8 * v307);
          }

          v308 = 0;
          *(v16 + 16) = v305;
          v309 = 1 << *(v5 + 32);
          v310 = -1;
          if (v309 < 64)
          {
            v310 = ~(-1 << v309);
          }

          v369 = v310 & v5[4];
          v311 = (v309 + 63) >> 6;
          while (v369)
          {
            v312 = __clz(__rbit64(v369));
            v369 &= v369 - 1;
            v313 = v312 | (v308 << 6);
LABEL_230:
            v316 = 16 * v313;
            v317 = (*(v5 + 6) + 16 * v313);
            v318 = v317[1];
            v357 = *v317;
            v319 = 72 * v313;
            outlined init with copy of AttributedString._AttributeValue(*(v5 + 7) + 72 * v313, &v379);
            v320 = (*(v16 + 48) + v316);
            *v320 = v357;
            v320[1] = v318;
            v321 = *(v16 + 56) + v319;
            *v321 = v379;
            v322 = v380;
            v323 = v381;
            v324 = v382;
            *(v321 + 64) = v383;
            *(v321 + 32) = v323;
            *(v321 + 48) = v324;
            *(v321 + 16) = v322;
          }

          while (1)
          {
            v314 = v308 + 1;
            if (__OFADD__(v308, 1))
            {
              goto LABEL_259;
            }

            if (v314 >= v311)
            {
              goto LABEL_232;
            }

            v315 = *(v5 + v314 + 8);
            ++v308;
            if (v315)
            {
              v369 = (v315 - 1) & v315;
              v313 = __clz(__rbit64(v315)) | (v314 << 6);
              v308 = v314;
              goto LABEL_230;
            }
          }
        }

        goto LABEL_232;
      }

LABEL_217:
      __break(1u);
      goto LABEL_218;
    }

    outlined init with copy of Any(a1, &v384);
    if (swift_dynamicCast())
    {
      v232 = v379;
      v233 = MEMORY[0x1E69E7CD0];
      *a2 = MEMORY[0x1E69E7CC8];
      a2[1] = v233;
      v387 = &type metadata for AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value;
      v388 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value();
      v384 = v232;
      v385 = 0;
      v386 = 2;
    }

    else
    {
      outlined init with copy of Any(a1, &v379);
      type metadata accessor for NSDecimal(0);
      if (swift_dynamicCast())
      {
        v259 = v374;
        v260 = v375;
        v261 = MEMORY[0x1E69E7CD0];
        *a2 = MEMORY[0x1E69E7CC8];
        a2[1] = v261;
        v387 = &type metadata for AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value;
        v388 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value();
        v384 = v259;
        v385 = v260;
        v386 = 3;
        v389 = xmmword_1812187D0;
        v390 = 1;
        v391 = 0;
        v234 = 0x800000018147D910;
        goto LABEL_176;
      }

      outlined init with copy of Any(a1, &v384);
      if (swift_dynamicCast())
      {
        v270 = v379;
        v271 = MEMORY[0x1E69E7CD0];
        *a2 = MEMORY[0x1E69E7CC8];
        a2[1] = v271;
        v387 = &type metadata for AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value;
        v388 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value();
        v384 = v270;
        v385 = 0;
        v386 = 1;
        v389 = xmmword_1812187D0;
        goto LABEL_157;
      }

      outlined init with copy of Any(a1, &v384);
      if (!swift_dynamicCast())
      {
        outlined init with copy of Any(a1, &v384);
        if (swift_dynamicCast())
        {
          v274 = v379;
          v275 = MEMORY[0x1E69E7CD0];
          *a2 = MEMORY[0x1E69E7CC8];
          a2[1] = v275;
          v387 = &type metadata for Date;
          v388 = lazy protocol witness table accessor for type Date and conformance Date();
          *&v384 = v274;
          v389 = xmmword_1812187D0;
          v390 = 1;
          v391 = 0;
          v262 = 0xD000000000000029;
          v234 = 0x800000018147D8E0;
        }

        else
        {
          outlined init with copy of Any(a1, &v384);
          v276 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSny10Foundation4DateVGMd);
          if (swift_dynamicCast())
          {
            v277 = v379;
            v278 = MEMORY[0x1E69E7CD0];
            *a2 = MEMORY[0x1E69E7CC8];
            a2[1] = v278;
            v387 = v276;
            v388 = lazy protocol witness table accessor for type Range<Date> and conformance <> Range<A>();
            v384 = v277;
            v389 = xmmword_1812187D0;
            v390 = 1;
            v391 = 0;
            v262 = 0xD000000000000031;
            v234 = 0x800000018147D8A0;
          }

          else
          {
            outlined init with copy of Any(a1, &v384);
            result = swift_dynamicCast();
            if ((result & 1) == 0)
            {
LABEL_198:
              v282 = MEMORY[0x1E69E7CD0];
              *a2 = MEMORY[0x1E69E7CC8];
              a2[1] = v282;
              return result;
            }

            v279 = lazy protocol witness table accessor for type URL and conformance URL();
            v280 = v379;
            v281 = MEMORY[0x1E69E7CD0];
            *a2 = MEMORY[0x1E69E7CC8];
            a2[1] = v281;
            v387 = &type metadata for URL;
            v388 = v279;
            v384 = v280;
            v389 = xmmword_1812187D0;
            v390 = 1;
            v391 = 0;
            v262 = 0xD000000000000028;
            v234 = 0x800000018147D870;
          }
        }

        return specialized AttributedString._AttributeStorage.subscript.setter(&v384, v262, v234);
      }

      v272 = v379;
      v273 = MEMORY[0x1E69E7CD0];
      *a2 = MEMORY[0x1E69E7CC8];
      a2[1] = v273;
      v387 = &type metadata for AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value;
      v388 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value();
      v384 = v272;
      v385 = 0;
      v386 = 0;
    }

    v389 = xmmword_1812187D0;
LABEL_157:
    v390 = 1;
    v391 = 0;
    v234 = 0x800000018147D910;
LABEL_176:
    v262 = 0xD00000000000002CLL;
    return specialized AttributedString._AttributeStorage.subscript.setter(&v384, v262, v234);
  }

  v6 = v379;
  v7 = MEMORY[0x1E69E7CC8];
  v8 = MEMORY[0x1E69E7CD0];
  *a2 = MEMORY[0x1E69E7CC8];
  a2[1] = v8;
  v387 = &type metadata for AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value;
  v388 = lazy protocol witness table accessor for type AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value and conformance AttributeScopes.FoundationAttributes.LocalizedStringArgumentAttributes.LocalizedNumericArgumentAttribute.Value();
  v384 = v6;
  v385 = 0;
  v386 = 1;
  v389 = xmmword_1812187D0;
  v390 = 1;
  v391 = 0;
  outlined init with copy of FloatingPointRoundingRule?(&v384, &v379, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  if (!*(&v380 + 1))
  {
    outlined destroy of TermOfAddress?(&v379, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    v69 = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000018147D910);
    if (v70)
    {
      v71 = v69;
      v72 = MEMORY[0x1E69E7CC8];
      v16 = MEMORY[0x1E69E7CC8];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
        v73 = static _DictionaryStorage.copy(original:)();
        v16 = v73;
        v74 = *(v72 + 16);
        if (v74)
        {
          v75 = (v73 + 64);
          v76 = ((1 << *(v16 + 32)) + 63) >> 6;
          if (v16 != v72 || v75 >= v72 + 8 * v76 + 64)
          {
            memmove(v75, (v72 + 64), 8 * v76);
          }

          v77 = 0;
          *(v16 + 16) = v74;
          v78 = 1 << *(v72 + 32);
          v79 = -1;
          if (v78 < 64)
          {
            v79 = ~(-1 << v78);
          }

          v80 = (v78 + 63) >> 6;
          v81 = v79 & *(v72 + 64);
          if (v81)
          {
            do
            {
              v361 = (v81 - 1) & v81;
              v82 = __clz(__rbit64(v81)) | (v77 << 6);
LABEL_59:
              v85 = 16 * v82;
              v86 = (*(v72 + 48) + 16 * v82);
              v87 = v86[1];
              v349 = *v86;
              v88 = 72 * v82;
              outlined init with copy of AttributedString._AttributeValue(*(v72 + 56) + 72 * v82, &v379);
              v89 = (*(v16 + 48) + v85);
              *v89 = v349;
              v89[1] = v87;
              v90 = *(v16 + 56) + v88;
              *v90 = v379;
              v91 = v380;
              v92 = v381;
              v93 = v382;
              *(v90 + 64) = v383;
              *(v90 + 32) = v92;
              *(v90 + 48) = v93;
              *(v90 + 16) = v91;

              v81 = v361;
            }

            while (v361);
          }

          while (1)
          {
            v83 = v77 + 1;
            if (__OFADD__(v77, 1))
            {
              goto LABEL_250;
            }

            if (v83 >= v80)
            {
              goto LABEL_248;
            }

            v84 = *(v72 + 8 * v83 + 64);
            ++v77;
            if (v84)
            {
              v361 = (v84 - 1) & v84;
              v82 = __clz(__rbit64(v84)) | (v83 << 6);
              v77 = v83;
              goto LABEL_59;
            }
          }
        }

        goto LABEL_248;
      }

LABEL_180:

      v266 = *(v16 + 56) + 72 * v71;
      v379 = *v266;
      v268 = *(v266 + 32);
      v267 = *(v266 + 48);
      v269 = *(v266 + 64);
      v380 = *(v266 + 16);
      v381 = v268;
      v383 = v269;
      v382 = v267;
      specialized _NativeDictionary._delete(at:)(v71, v16);
      goto LABEL_185;
    }

LABEL_181:
    v383 = 0;
    v381 = 0u;
    v382 = 0u;
    v379 = 0u;
    v380 = 0u;
LABEL_186:
    AttributedString._AttributeStorage._attributeModified(_:old:new:)(0xD00000000000002CLL, 0x800000018147D910, &v379, &v384);
    outlined destroy of TermOfAddress?(&v384, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
    return outlined destroy of TermOfAddress?(&v379, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
  }

  v376 = v381;
  v377 = v382;
  v378 = v383;
  v374 = v379;
  v375 = v380;
  outlined init with copy of AttributedString._AttributeValue(&v374, v372);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v371 = v7;
  result = specialized __RawDictionaryStorage.find<A>(_:)(0xD00000000000002CLL, 0x800000018147D910);
  v12 = *(v7 + 16);
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
    __break(1u);
    goto LABEL_198;
  }

  LOBYTE(v2) = v11;
  if (*(v7 + 24) < v15)
  {
    goto LABEL_135;
  }

  v5 = MEMORY[0x1E69E7CC8];
  if (isUniquelyReferenced_nonNull_native)
  {
    v16 = MEMORY[0x1E69E7CC8];
    goto LABEL_136;
  }

LABEL_200:
  v346 = result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
  v283 = static _DictionaryStorage.copy(original:)();
  v16 = v283;
  v284 = *(v5 + 2);
  if (!v284)
  {
    goto LABEL_232;
  }

  v285 = (v283 + 64);
  v286 = ((1 << *(v16 + 32)) + 63) >> 6;
  if (v16 != v5 || v285 >= v5 + 8 * v286 + 64)
  {
    memmove(v285, v5 + 4, 8 * v286);
  }

  v287 = 0;
  *(v16 + 16) = v284;
  v288 = 1 << *(v5 + 32);
  v289 = -1;
  if (v288 < 64)
  {
    v289 = ~(-1 << v288);
  }

  v290 = (v288 + 63) >> 6;
  v291 = v289 & v5[4];
  if (v291)
  {
    do
    {
      v368 = (v291 - 1) & v291;
      v292 = __clz(__rbit64(v291)) | (v287 << 6);
LABEL_212:
      v295 = 16 * v292;
      v296 = (*(v5 + 6) + 16 * v292);
      v297 = v296[1];
      v356 = *v296;
      v298 = 72 * v292;
      outlined init with copy of AttributedString._AttributeValue(*(v5 + 7) + 72 * v292, &v379);
      v299 = (*(v16 + 48) + v295);
      *v299 = v356;
      v299[1] = v297;
      v300 = *(v16 + 56) + v298;
      *v300 = v379;
      v301 = v380;
      v302 = v381;
      v303 = v382;
      *(v300 + 64) = v383;
      *(v300 + 32) = v302;
      *(v300 + 48) = v303;
      *(v300 + 16) = v301;

      v291 = v368;
    }

    while (v368);
  }

  while (1)
  {
    v293 = v287 + 1;
    if (__OFADD__(v287, 1))
    {
      break;
    }

    if (v293 >= v290)
    {
      goto LABEL_232;
    }

    v294 = *(v5 + v293 + 8);
    ++v287;
    if (v294)
    {
      v368 = (v294 - 1) & v294;
      v292 = __clz(__rbit64(v294)) | (v293 << 6);
      v287 = v293;
      goto LABEL_212;
    }
  }

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
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t String.LocalizationValue.FormatArgument.CodableStorage.init(coercing:fallbackLocale:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = a2[1];
  outlined init with copy of String.LocalizationValue.FormatArgument.Storage(a1, &v31);
  if (v38 > 2u)
  {
    if (v38 > 4u)
    {
      if (v38 == 5)
      {
        outlined destroy of String.LocalizationValue.FormatArgument.Storage(a1);
        swift_unknownObjectRelease();
        v8 = BYTE8(v31);
        v9 = BYTE9(v31);
        *a3 = v31;
        *(a3 + 8) = v8;
        *(a3 + 9) = v9;
        *(a3 + 16) = v32;
      }

      else
      {
        outlined destroy of String.LocalizationValue.FormatArgument.Storage(a1);
        swift_unknownObjectRelease();
        *a3 = v31;
      }

      type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v38 != 3)
    {
      outlined destroy of String.LocalizationValue.FormatArgument.Storage(a1);
      swift_unknownObjectRelease();
      v19 = v36;
      *(a3 + 64) = v35;
      *(a3 + 80) = v19;
      *(a3 + 96) = v37;
      v20 = v32;
      *a3 = v31;
      *(a3 + 16) = v20;
      v21 = v34;
      *(a3 + 32) = v33;
      *(a3 + 48) = v21;
      type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
      return swift_storeEnumTagMultiPayload();
    }

    v27 = v33;
    v28 = v34;
    v29 = v35;
    v30 = v36;
    v25 = v31;
    v26 = v32;
    v22 = v5;
    v23 = v6;
    (v31)(&v24, &v22);
    outlined destroy of String.LocalizationValue.FormatArgument.Storage(a1);
    swift_unknownObjectRelease();
    outlined destroy of String.LocalizationValue.FormatArgument.Storage.AttributedStringFormatWrapper(&v25);
    *a3 = v24;
    *(a3 + 8) = 0;
LABEL_8:
    type metadata accessor for String.LocalizationValue.FormatArgument.CodableStorage(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v38)
  {
    if (v38 == 1)
    {
      outlined destroy of String.LocalizationValue.FormatArgument.Storage(a1);
      swift_unknownObjectRelease();
      v7 = *(&v31 + 1);
      *a3 = v31;
      *(a3 + 8) = v7;
    }

    else
    {
      v27 = v33;
      v28 = v34;
      v29 = v35;
      v30 = v36;
      v25 = v31;
      v26 = v32;
      v22 = v5;
      v23 = v6;
      v16 = (v31)(&v22);
      v18 = v17;
      outlined destroy of String.LocalizationValue.FormatArgument.Storage(a1);
      swift_unknownObjectRelease();
      outlined destroy of String.LocalizationValue.FormatArgument.Storage.StringFormatWrapper(&v25);
      *a3 = v16;
      *(a3 + 8) = v18;
    }

    goto LABEL_8;
  }

  outlined init with take of Any(&v31, &v25);
  outlined init with copy of Any(&v25, &v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8Sendable_pMd);
  type metadata accessor for NSMorphologyPronoun(0, &lazy cache variable for type metadata for NSObject);
  result = swift_dynamicCast();
  if (result)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_181218E20;
    outlined init with copy of Any(&v25, &v22);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss7CVarArg_pMd);
    v12 = swift_dynamicCast();
    MEMORY[0x1EEE9AC00](v12);
    v13 = specialized withVaList<A>(_:_:)(inited, partial apply for closure #1 in String.init(format:locale:arguments:));
    v15 = v14;
    swift_unknownObjectRelease();
    swift_setDeallocating();
    swift_arrayDestroy();
    outlined destroy of String.LocalizationValue.FormatArgument.Storage(a1);
    __swift_destroy_boxed_opaque_existential_1(&v25);
    *a3 = v13;
    *(a3 + 8) = v15;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1865CD060](v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys()
{
  if (*v0)
  {
    return 0x736E6F6974706FLL;
  }

  else
  {
    return 12383;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.AttributedStringCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys and conformance String.LocalizationValue.FormatArgument.CodableStorage.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.encode(to:)(void *a1)
{
  v2 = v1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v46 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v44 = &v43 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v43 - v11;
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV04DatehG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMd);
  v13 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v15 = &v43 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v2[5];
  v55[4] = v2[4];
  v55[5] = v16;
  v56[0] = v2[6];
  *(v56 + 10) = *(v2 + 106);
  v17 = v2[1];
  v55[0] = *v2;
  v55[1] = v17;
  v18 = v2[3];
  v55[2] = v2[2];
  v55[3] = v18;
  v19 = _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOg(v55);
  v20 = (v46 + 8);
  v21 = (v13 + 8);
  v22 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v55);
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      LOBYTE(v48) = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v31 = v44;
      v23 = v47;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v32 = *v22;
      v33 = v22[1];
      v34 = v22[3];
      v50 = v22[2];
      v51 = v34;
      v48 = v32;
      v49 = v33;
      lazy protocol witness table accessor for type Date.VerbatimFormatStyle and conformance Date.VerbatimFormatStyle();
    }

    else
    {
      LOBYTE(v48) = 3;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v31 = v45;
      v23 = v47;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v40 = *v22;
      v41 = v22[2];
      v49 = v22[1];
      v50 = v41;
      v48 = v40;
      lazy protocol witness table accessor for type Date.RelativeFormatStyle and conformance Date.RelativeFormatStyle();
    }

    v42 = v57;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*v20)(v31, v42);
  }

  else
  {
    if (v19)
    {
      LOBYTE(v48) = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v35 = v47;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v36 = *v22;
      v37 = v22[2];
      v49 = v22[1];
      v50 = v37;
      v48 = v36;
      lazy protocol witness table accessor for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle();
      v38 = v57;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*v20)(v9, v38);
      return (*v21)(v15, v35);
    }

    LOBYTE(v48) = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v23 = v47;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v24 = *v22;
    v25 = v22[1];
    v26 = v22[3];
    v50 = v22[2];
    v51 = v26;
    v48 = v24;
    v49 = v25;
    v27 = v22[4];
    v28 = v22[5];
    v29 = v22[6];
    *(v54 + 10) = *(v22 + 106);
    v53 = v28;
    v54[0] = v29;
    v52 = v27;
    lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle();
    v30 = v57;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*v20)(v12, v30);
  }

  return (*v21)(v15, v23);
}

void String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.hash(into:)(uint64_t a1)
{
  v3 = v1[5];
  v168[4] = v1[4];
  v168[5] = v3;
  v169[0] = v1[6];
  *(v169 + 10) = *(v1 + 106);
  v4 = v1[1];
  v168[0] = *v1;
  v168[1] = v4;
  v5 = v1[3];
  v168[2] = v1[2];
  v168[3] = v5;
  v6 = _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOg(v168);
  v7 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v168);
  v8 = v7;
  if (v6 <= 1)
  {
    if (v6)
    {
      MEMORY[0x1865CD060](1);
      v21 = v8[1];
      v22 = *(v8 + 1);
      v23 = *(v8 + 5);
      String.hash(into:)();

      ObjectType = swift_getObjectType();
      (*(v23 + 120))(a1, ObjectType, v23);
      MEMORY[0x1865CD060](v22);
      String.hash(into:)();

      Hasher._combine(_:)(v21);
      String.hash(into:)();

      String.hash(into:)();

      return;
    }

    MEMORY[0x1865CD060](0);
    v9 = *(v8 + 24);
    v10 = *(v8 + 1);
    v166[2] = *v8;
    v166[3] = v10;
    v166[4] = *(v8 + 2);
    v167 = v9;
    v11 = *(v8 + 7);
    v12 = v8[64];
    specialized Optional<A>.hash(into:)(a1);
    if (v12 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v11);
    }

    v32 = *(v8 + 10);
    v33 = swift_getObjectType();
    if ((*(v32 + 48))(v33, v32))
    {
      v34 = 1;
LABEL_20:
      Hasher._combine(_:)(v34);
LABEL_113:
      v97 = *(v8 + 12);
      v98 = *(v8 + 14);
      v99 = v8[120];
      v100 = v8[121];
      v101 = swift_getObjectType();
      (*(v97 + 120))(a1, v101, v97);
      v102 = swift_getObjectType();
      (*(v98 + 120))(a1, v102, v98);
      MEMORY[0x1865CD060](v99);
      Hasher._combine(_:)(v100);
      return;
    }

    Hasher._combine(_:)(0);
    (*(v32 + 64))(v33, v32);
    String.hash(into:)();

    (*(v32 + 464))(&v151, v33, v32);
    v165 = v157;
    v166[0] = *v158;
    *(v166 + 12) = *&v158[12];
    v161 = v153;
    v162 = v154;
    v163 = v155;
    v164 = v156;
    v159 = v151;
    v160 = v152;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v159) == 1)
    {
      v34 = 0;
      goto LABEL_20;
    }

    v43 = v151;
    v44 = *(&v151 + 1);
    v45 = *(&v152 + 1);
    v46 = *(&v153 + 1);
    v125 = v154;
    v129 = v155;
    v135 = v156;
    v47 = v157;
    v142 = *v158;
    v145 = *&v158[16];
    v147 = v158[24];
    v150 = v158[25];
    v48 = v158[26];
    v49 = v158[27];
    Hasher._combine(_:)(1u);
    if (v43 == 2)
    {
      v50 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v50 = v43 & 1;
    }

    Hasher._combine(_:)(v50);
    if (v44)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v44 + 16));
      v63 = *(v44 + 16);
      if (v63)
      {
        v64 = v44 + 40;
        do
        {

          String.hash(into:)();

          v64 += 16;
          --v63;
        }

        while (v63);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v134 = v48;
    if (v45)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v46)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v125)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v125, v79, v80, v81, v82, v83, v84);
      if (*(&v125 + 1))
      {
        goto LABEL_68;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (*(&v125 + 1))
      {
LABEL_68:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, *(&v125 + 1), v85, v86, v87, v88, v89, v90);
        if (v129)
        {
          goto LABEL_69;
        }

        goto LABEL_94;
      }
    }

    Hasher._combine(_:)(0);
    if (v129)
    {
LABEL_69:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v129 + 1))
      {
        goto LABEL_70;
      }

      goto LABEL_95;
    }

LABEL_94:
    Hasher._combine(_:)(0);
    if (*(&v129 + 1))
    {
LABEL_70:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v135)
      {
        goto LABEL_71;
      }

      goto LABEL_96;
    }

LABEL_95:
    Hasher._combine(_:)(0);
    if (v135)
    {
LABEL_71:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v91 = v145;
      if (*(&v135 + 1))
      {
        goto LABEL_72;
      }

      goto LABEL_97;
    }

LABEL_96:
    Hasher._combine(_:)(0);
    v91 = v145;
    if (*(&v135 + 1))
    {
LABEL_72:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v47)
      {
        goto LABEL_73;
      }

      goto LABEL_98;
    }

LABEL_97:
    Hasher._combine(_:)(0);
    if (v47)
    {
LABEL_73:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v92 = v147;
      v93 = v150;
      if (*(&v47 + 1))
      {
        goto LABEL_74;
      }

      goto LABEL_99;
    }

LABEL_98:
    Hasher._combine(_:)(0);
    v92 = v147;
    v93 = v150;
    if (*(&v47 + 1))
    {
LABEL_74:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, *(&v47 + 1));
      if (v142)
      {
        goto LABEL_75;
      }

      goto LABEL_100;
    }

LABEL_99:
    Hasher._combine(_:)(0);
    if (v142)
    {
LABEL_75:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v142);
      if (v91)
      {
        goto LABEL_76;
      }

      goto LABEL_101;
    }

LABEL_100:
    Hasher._combine(_:)(0);
    if (v91)
    {
LABEL_76:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v92 == 2)
      {
LABEL_77:
        Hasher._combine(_:)(0);
LABEL_103:
        if (v93 == 2)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          MEMORY[0x1865CD060](v93 & 1);
        }

        if (v134 == 2)
        {
          v95 = 0;
        }

        else
        {
          Hasher._combine(_:)(1u);
          v95 = v134 & 1;
        }

        Hasher._combine(_:)(v95);
        if (v49 == 2)
        {
          v96 = 0;
        }

        else
        {
          Hasher._combine(_:)(1u);
          v96 = v49 & 1;
        }

        Hasher._combine(_:)(v96);
        outlined destroy of TermOfAddress?(&v151, &_s10Foundation17LocalePreferencesVSgMd);
        goto LABEL_113;
      }

LABEL_102:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v92 & 1);
      goto LABEL_103;
    }

LABEL_101:
    Hasher._combine(_:)(0);
    if (v92 == 2)
    {
      goto LABEL_77;
    }

    goto LABEL_102;
  }

  if (v6 == 2)
  {
    v13 = *(v7 + 1);
    v14 = *(v7 + 3);
    v16 = *(v7 + 4);
    v15 = *(v7 + 5);
    MEMORY[0x1865CD060](2);
    v17 = swift_getObjectType();
    (*(v13 + 120))(a1, v17, v13);
    v18 = swift_getObjectType();
    (*(v14 + 120))(a1, v18, v14);
    if (!v16)
    {
      goto LABEL_22;
    }

    Hasher._combine(_:)(1u);
    v19 = swift_getObjectType();
    if ((*(v15 + 48))(v19, v15))
    {
      v20 = 1;
LABEL_23:
      Hasher._combine(_:)(v20);
LABEL_24:
      String.hash(into:)();
      return;
    }

    Hasher._combine(_:)(0);
    (*(v15 + 64))(v19, v15);
    String.hash(into:)();

    (*(v15 + 464))(&v151, v19, v15);
    v165 = v157;
    v166[0] = *v158;
    *(v166 + 12) = *&v158[12];
    v161 = v153;
    v162 = v154;
    v163 = v155;
    v164 = v156;
    v159 = v151;
    v160 = v152;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v159) == 1)
    {
LABEL_22:
      v20 = 0;
      goto LABEL_23;
    }

    v51 = v151;
    v52 = *(&v151 + 1);
    v53 = *(&v152 + 1);
    v54 = *(&v153 + 1);
    v126 = v154;
    v55 = v156;
    v130 = v155;
    v133 = *(&v156 + 1);
    v56 = v157;
    v57 = *v158;
    v140 = *&v158[16];
    v58 = v158[24];
    v146 = v158[25];
    v59 = v158[26];
    v148 = v158[27];
    Hasher._combine(_:)(1u);
    if (v51 == 2)
    {
      v60 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v60 = v51 & 1;
    }

    v143 = v58;
    Hasher._combine(_:)(v60);
    if (v52)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v52 + 16));
      v105 = *(v52 + 16);
      if (v105)
      {
        v106 = v52 + 40;
        do
        {

          String.hash(into:)();

          v106 += 16;
          --v105;
        }

        while (v105);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v53)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v54)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v126)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v126, v107, v108, v109, v110, v111, v112);
      v113 = *(&v126 + 1);
      if (*(&v126 + 1))
      {
        goto LABEL_139;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v113 = *(&v126 + 1);
      if (*(&v126 + 1))
      {
LABEL_139:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v113, v114, v115, v116, v117, v118, v119);
        if (v130)
        {
          goto LABEL_140;
        }

        goto LABEL_146;
      }
    }

    Hasher._combine(_:)(0);
    if (v130)
    {
LABEL_140:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v130 + 1))
      {
        goto LABEL_141;
      }

      goto LABEL_147;
    }

LABEL_146:
    Hasher._combine(_:)(0);
    if (*(&v130 + 1))
    {
LABEL_141:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v55)
      {
        goto LABEL_142;
      }

      goto LABEL_148;
    }

LABEL_147:
    Hasher._combine(_:)(0);
    if (v55)
    {
LABEL_142:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v133)
      {
LABEL_143:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_150;
      }

LABEL_149:
      Hasher._combine(_:)(0);
LABEL_150:
      if (v56)
      {
        v120 = v148;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v121 = *(&v56 + 1);
        if (*(&v56 + 1))
        {
LABEL_152:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v121);
          goto LABEL_155;
        }
      }

      else
      {
        v120 = v148;
        Hasher._combine(_:)(0);
        v121 = *(&v56 + 1);
        if (*(&v56 + 1))
        {
          goto LABEL_152;
        }
      }

      Hasher._combine(_:)(0);
LABEL_155:
      if (v57)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v57);
        if (v140)
        {
LABEL_157:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
LABEL_160:
          if (v143 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v143 & 1);
          }

          if (v146 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v146 & 1);
          }

          if (v59 == 2)
          {
            v122 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v122 = v59 & 1;
          }

          Hasher._combine(_:)(v122);
          if (v120 == 2)
          {
            v123 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v123 = v120 & 1;
          }

          Hasher._combine(_:)(v123);
          outlined destroy of TermOfAddress?(&v151, &_s10Foundation17LocalePreferencesVSgMd);
          goto LABEL_24;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v140)
        {
          goto LABEL_157;
        }
      }

      Hasher._combine(_:)(0);
      goto LABEL_160;
    }

LABEL_148:
    Hasher._combine(_:)(0);
    if (v133)
    {
      goto LABEL_143;
    }

    goto LABEL_149;
  }

  v25 = *v7;
  v26 = v7[1];
  v27 = v7[2];
  v28 = *(v7 + 2);
  v29 = *(v7 + 4);
  v149 = *(v7 + 5);
  MEMORY[0x1865CD060](3);
  MEMORY[0x1865CD060](v25);
  MEMORY[0x1865CD060](v26);
  MEMORY[0x1865CD060](v27);
  v30 = swift_getObjectType();
  if (((*(v28 + 48))(v30, v28) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v28 + 64))(v30, v28);
    String.hash(into:)();

    (*(v28 + 464))(&v151, v30, v28);
    v165 = v157;
    v166[0] = *v158;
    *(v166 + 12) = *&v158[12];
    v161 = v153;
    v162 = v154;
    v163 = v155;
    v164 = v156;
    v159 = v151;
    v160 = v152;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v159) == 1)
    {
      v31 = 0;
      goto LABEL_17;
    }

    v35 = v151;
    v36 = *(&v151 + 1);
    v37 = *(&v152 + 1);
    v38 = *(&v153 + 1);
    v124 = v154;
    v39 = *(&v155 + 1);
    v127 = v155;
    v128 = *(&v156 + 1);
    v131 = v156;
    v132 = v157;
    v40 = *v158;
    v136 = *(&v157 + 1);
    v138 = *&v158[16];
    v139 = v158[24];
    v141 = v158[25];
    v144 = v158[26];
    v41 = v158[27];
    Hasher._combine(_:)(1u);
    if (v35 == 2)
    {
      v42 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v42 = v35 & 1;
    }

    v137 = v40;
    Hasher._combine(_:)(v42);
    if (v36)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v36 + 16));
      v61 = *(v36 + 16);
      if (v61)
      {
        v62 = v36 + 40;
        do
        {

          String.hash(into:)();

          v62 += 16;
          --v61;
        }

        while (v61);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v37)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v38)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v124)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v124, v65, v66, v67, v68, v69, v70);
      if (*(&v124 + 1))
      {
        goto LABEL_58;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (*(&v124 + 1))
      {
LABEL_58:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, *(&v124 + 1), v71, v72, v73, v74, v75, v76);
        if (v127)
        {
          goto LABEL_59;
        }

        goto LABEL_80;
      }
    }

    Hasher._combine(_:)(0);
    if (v127)
    {
LABEL_59:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v39)
      {
        goto LABEL_60;
      }

      goto LABEL_81;
    }

LABEL_80:
    Hasher._combine(_:)(0);
    if (v39)
    {
LABEL_60:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v131)
      {
        goto LABEL_61;
      }

      goto LABEL_82;
    }

LABEL_81:
    Hasher._combine(_:)(0);
    if (v131)
    {
LABEL_61:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v128)
      {
        goto LABEL_62;
      }

      goto LABEL_83;
    }

LABEL_82:
    Hasher._combine(_:)(0);
    if (v128)
    {
LABEL_62:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v77 = v138;
      if (v132)
      {
        goto LABEL_63;
      }

      goto LABEL_84;
    }

LABEL_83:
    Hasher._combine(_:)(0);
    v77 = v138;
    if (v132)
    {
LABEL_63:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v78 = v136;
      if (v136)
      {
LABEL_64:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v78);
        goto LABEL_86;
      }

LABEL_85:
      Hasher._combine(_:)(0);
LABEL_86:
      if (v137)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v137);
        if (v77)
        {
          goto LABEL_88;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v77)
        {
LABEL_88:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          if (v139 == 2)
          {
            goto LABEL_89;
          }

          goto LABEL_116;
        }
      }

      Hasher._combine(_:)(0);
      if (v139 == 2)
      {
LABEL_89:
        Hasher._combine(_:)(0);
        if (v141 != 2)
        {
          goto LABEL_90;
        }

        goto LABEL_117;
      }

LABEL_116:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v139 & 1);
      if (v141 != 2)
      {
LABEL_90:
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v141 & 1);
        if (v144 != 2)
        {
LABEL_91:
          Hasher._combine(_:)(1u);
          v94 = v144 & 1;
LABEL_119:
          Hasher._combine(_:)(v94);
          if (v41 == 2)
          {
            v103 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v103 = v41 & 1;
          }

          Hasher._combine(_:)(v103);
          outlined destroy of TermOfAddress?(&v151, &_s10Foundation17LocalePreferencesVSgMd);
          goto LABEL_123;
        }

LABEL_118:
        v94 = 0;
        goto LABEL_119;
      }

LABEL_117:
      Hasher._combine(_:)(0);
      if (v144 != 2)
      {
        goto LABEL_91;
      }

      goto LABEL_118;
    }

LABEL_84:
    Hasher._combine(_:)(0);
    v78 = v136;
    if (v136)
    {
      goto LABEL_64;
    }

    goto LABEL_85;
  }

  v31 = 1;
LABEL_17:
  Hasher._combine(_:)(v31);
LABEL_123:
  v104 = swift_getObjectType();
  (*(v29 + 120))(a1, v104, v29);
  specialized Set.hash(into:)(a1, v149);
}

uint64_t String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v50 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v53 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v50 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV04DatehG5StyleV0G033_52A34860FC1D9F87FB0A99C608112EB3LLO10CodingKeysOGMd);
  v54 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  v18 = a1[3];
  v81 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.CodingKeys();
  v19 = v55;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v55 = v14;
    v20 = v53;
    v21 = v17;
    v22 = KeyedDecodingContainer.allKeys.getter();
    v23 = (2 * *(v22 + 16)) | 1;
    v77 = v22;
    v78 = v22 + 32;
    v79 = 0;
    v80 = v23;
    v24 = specialized Collection<>.popFirst()();
    v25 = v15;
    if (v24 != 4 && v79 == v80 >> 1)
    {
      if (v24 > 1u)
      {
        v34 = v21;
        if (v24 == 2)
        {
          LOBYTE(v63) = 2;
          lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
          v35 = v8;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v36 = v54;
          lazy protocol witness table accessor for type Date.VerbatimFormatStyle and conformance Date.VerbatimFormatStyle();
          v37 = v51;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v52 + 8))(v35, v37);
          (*(v36 + 8))(v21, v25);
          swift_unknownObjectRelease();
          v63 = v56;
          v64 = v57;
          v65 = v58;
          v66 = v59;
          _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi1_(&v63);
        }

        else
        {
          LOBYTE(v63) = 3;
          lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
          v39 = v20;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v40 = v54;
          lazy protocol witness table accessor for type Date.RelativeFormatStyle and conformance Date.RelativeFormatStyle();
          v43 = v51;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v52 + 8))(v39, v43);
          (*(v40 + 8))(v34, v15);
          swift_unknownObjectRelease();
          v63 = v56;
          v64 = v57;
          v65 = v58;
          _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi2_(&v63);
        }
      }

      else
      {
        v26 = v21;
        if (!v24)
        {
          LOBYTE(v63) = 0;
          lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
          v27 = v55;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v28 = v52;
          lazy protocol witness table accessor for type Date.FormatStyle and conformance Date.FormatStyle();
          v29 = v51;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v28 + 8))(v27, v29);
          (*(v54 + 8))(v26, v25);
          swift_unknownObjectRelease();
          v60 = v67;
          v61 = v68;
          v62[0] = v69[0];
          *(v62 + 10) = *(v69 + 10);
          v56 = v63;
          v57 = v64;
          v58 = v65;
          v59 = v66;
          _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi_(&v56);
          v74 = v60;
          v75 = v61;
          v76[0] = v62[0];
          *(v76 + 10) = *(v62 + 10);
          v70 = v56;
          v71 = v57;
          v44 = v58;
          v45 = v59;
LABEL_14:
          v72 = v44;
          v73 = v45;
          v46 = v50;
          v47 = v75;
          v50[4] = v74;
          v46[5] = v47;
          v46[6] = v76[0];
          *(v46 + 106) = *(v76 + 10);
          v48 = v71;
          *v46 = v70;
          v46[1] = v48;
          v49 = v73;
          v46[2] = v72;
          v46[3] = v49;
          return __swift_destroy_boxed_opaque_existential_1(v81);
        }

        LOBYTE(v63) = 1;
        lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v38 = v52;
        lazy protocol witness table accessor for type Date.ISO8601FormatStyle and conformance Date.ISO8601FormatStyle();
        v41 = v51;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v42 = (v54 + 8);
        (*(v38 + 8))(v11, v41);
        (*v42)(v21, v25);
        swift_unknownObjectRelease();
        v63 = v56;
        v64 = v57;
        v65 = v58;
        _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi0_(&v63);
      }

      v74 = v67;
      v75 = v68;
      v76[0] = v69[0];
      *(v76 + 10) = *(v69 + 10);
      v70 = v63;
      v71 = v64;
      v44 = v65;
      v45 = v66;
      goto LABEL_14;
    }

    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v32 = &unk_1EEED8630;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v54 + 8))(v21, v25);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v81);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.CodingKeys()
{
  v1 = 0x656D695465746164;
  v2 = 0x6D69746162726576;
  if (*v0 != 2)
  {
    v2 = 0x65766974616C6572;
  }

  if (*v0)
  {
    v1 = 0x313036386F7369;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.CodingKeys and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format()
{
  v1 = v0[5];
  v10 = v0[4];
  v11 = v1;
  v12[0] = v0[6];
  *(v12 + 10) = *(v0 + 106);
  v2 = v0[1];
  v6 = *v0;
  v7 = v2;
  v3 = v0[3];
  v8 = v0[2];
  v9 = v3;
  Hasher.init(_seed:)();
  String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.hash(into:)(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format()
{
  v1 = v0[5];
  v10 = v0[4];
  v11 = v1;
  v12[0] = v0[6];
  *(v12 + 10) = *(v0 + 106);
  v2 = v0[1];
  v6 = *v0;
  v7 = v2;
  v3 = v0[3];
  v8 = v0[2];
  v9 = v3;
  Hasher.init(_seed:)();
  String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format.hash(into:)(v5);
  return Hasher._finalize()();
}

Swift::String __swiftcall String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.format(_:)(Foundation::Date a1)
{
  v140 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = v2[5];
  v135 = v2[4];
  v136 = v4;
  v137[0] = v2[6];
  v5 = v137[0];
  *(v137 + 10) = *(v2 + 106);
  v6 = v2[1];
  v131 = *v2;
  v132 = v6;
  v7 = v2[3];
  v133 = v2[2];
  v134 = v7;
  *(v139 + 10) = *(v137 + 10);
  v138[5] = v4;
  v139[0] = v5;
  v138[3] = v7;
  v138[4] = v135;
  v138[1] = v6;
  v138[2] = v133;
  v138[0] = v131;
  v8 = _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOg(v138);
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      v14 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v138);
      v128 = v135;
      v129 = v136;
      v130[0] = v137[0];
      *(v130 + 10) = *(v137 + 10);
      v124 = v131;
      v125 = v132;
      v126 = v133;
      v127 = v134;
      v15 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v124);
      v123[0] = *v14;
      v123[1] = v14[1];
      v123[2] = v14[2];
      v123[3] = v14[3];
      outlined init with copy of Date.VerbatimFormatStyle(v15, &v117);
      outlined init with copy of Date.VerbatimFormatStyle(v14, &v117);
      ICUDateFormatter.DateFormatInfo.init(_:)(v123, &v117);
      v16 = specialized static ICUDateFormatter.cachedFormatter(for:)(&v117.tv_sec);
      v113 = v119;
      v114 = v120;
      v115 = v121;
      v116 = v122;
      v111 = v117;
      v112 = v118;
      outlined destroy of ICUDateFormatter.DateFormatInfo(&v111);
      if (v16)
      {
        v11 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
        v13 = v17;

        if (v13)
        {
          goto LABEL_68;
        }
      }

      v18 = [objc_allocWithZone(MEMORY[0x1E695DF00]) initWithTimeIntervalSinceReferenceDate_];
      v19 = [v18 description];

      if (!v19)
      {
        goto LABEL_17;
      }

      isTaggedPointer = _objc_isTaggedPointer(v19);
      v21 = v19;
      v22 = v21;
      if ((isTaggedPointer & 1) == 0)
      {
LABEL_24:
        LOBYTE(v123[0]) = 0;
        v117.tv_sec = 0;
        LOBYTE(v110) = 0;
        if (__CFStringIsCF())
        {
          if (v117.tv_sec)
          {
LABEL_66:
            v11 = String.init(_cocoaString:)();
            v13 = v77;
LABEL_67:

LABEL_68:
            outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v131);
            goto LABEL_69;
          }
        }

        else
        {
          v66 = v22;
          v67 = String.init(_nativeStorage:)();
          if (v68)
          {
            v69 = v67;
            v70 = v68;

            outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v131);
            object = v70;
            countAndFlagsBits = v69;
            goto LABEL_95;
          }

          v117.tv_sec = [v66 length];
          if (v117.tv_sec)
          {
            goto LABEL_66;
          }
        }

LABEL_17:
        outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v131);
LABEL_18:
        countAndFlagsBits = 0;
        object = 0xE000000000000000;
        goto LABEL_95;
      }

      TaggedPointerTag = _objc_getTaggedPointerTag(v21);
      if (!TaggedPointerTag)
      {
        LOWORD(v110) = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v75 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v76)
        {
          v11 = v75;
          v13 = v76;
        }

        else
        {
          [v22 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v13 = *(&v123[0] + 1);
          v11 = *&v123[0];
        }

        goto LABEL_67;
      }

      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v24 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v26 = v25;

          outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v131);
          object = v26;
          countAndFlagsBits = v24;
          goto LABEL_95;
        }

        goto LABEL_24;
      }

      v71 = [v22 UTF8String];
      if (v71)
      {
        v72 = String.init(utf8String:)(v71);
        if (v73)
        {
          v74 = v72;
          v65 = v73;

          outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v131);
          countAndFlagsBits = v74;
          goto LABEL_54;
        }

        goto LABEL_93;
      }

LABEL_92:
      __break(1u);
LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    v31 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v138);
    v128 = v135;
    v129 = v136;
    v130[0] = v137[0];
    *(v130 + 10) = *(v137 + 10);
    v124 = v131;
    v125 = v132;
    v126 = v133;
    v127 = v134;
    v32 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v124);
    v117.tv_sec = 0;
    v117.tv_nsec = 0;
    outlined init with copy of Date.RelativeFormatStyle(v32, &v111);
    clock_gettime(_CLOCK_REALTIME, &v117);
    v111 = *v31;
    v112 = *(v31 + 1);
    v113 = *(v31 + 2);
    *v123 = v3;
    v110 = v117.tv_sec + -978307200.0 + v117.tv_nsec * 0.000000001;
    v33 = *v31;
    Date.RelativeFormatStyle._largestNonZeroComponent(_:reference:adjustComponent:)(v123, &v110, &v117.tv_sec);
    if (LOBYTE(v117.tv_sec) == 19)
    {
      goto LABEL_17;
    }

    tv_sec_low = LOBYTE(v117.tv_sec);
    v108 = v33;
    tv_nsec = v117.tv_nsec;
    v34 = v31[1];
    v35 = *(v31 + 2);
    ObjectType = swift_getObjectType();
    v37 = (*(v35 + 64))(ObjectType, v35);
    *(&v109 + 1) = v38;
    if (v34 > 1)
    {
      v40 = 0;
      if (v34 == 2)
      {
        v39 = 1;
        v41 = 1;
      }

      else
      {
        v41 = 1;
        v39 = 2;
      }
    }

    else
    {
      v39 = 0;
      if (v34)
      {
        v41 = 0;
        v40 = 5;
      }

      else
      {
        v40 = 0;
        v41 = 1;
      }
    }

    *&v109 = v37;
    v42 = dword_18121A8C4[v31[2]];
    if (one-time initialization token for cache != -1)
    {
      v37 = swift_once();
    }

    v43 = qword_1EA822118;
    v104 = static ICURelativeDateFormatter.cache;
    v111 = v109;
    LODWORD(v112) = v40;
    BYTE4(v112) = v41;
    *(&v112 + 1) = __PAIR64__(v42, v39);
    MEMORY[0x1EEE9AC00](v37);
    os_unfair_lock_lock((v43 + 24));
    partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v43 + 16, &v117.tv_sec);
    os_unfair_lock_unlock((v43 + 24));
    tv_sec = v117.tv_sec;
    if (v117.tv_sec != 1)
    {
      goto LABEL_44;
    }

    type metadata accessor for ICURelativeDateFormatter();
    swift_allocObject();

    v102 = v41;
    LOBYTE(v117.tv_sec) = v41;
    v101 = v40;
    v103 = v39 | (v42 << 32);
    tv_sec = ICURelativeDateFormatter.init(signature:)(v109, *(&v109 + 1), v40 | (v41 << 32));
    os_unfair_lock_lock((v43 + 24));
    v45 = v109;
    if (v104 >= *(*(v43 + 16) + 16))
    {
    }

    else
    {
      *(v43 + 16) = MEMORY[0x1E69E7CC8];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v117.tv_sec = *(v43 + 16);
    v47 = v117.tv_sec;
    *(v43 + 16) = 0x8000000000000000;
    LOBYTE(v123[0]) = v41;
    v49 = specialized __RawDictionaryStorage.find<A>(_:)(v109, *(&v109 + 1), v101 | (v41 << 32), v103);
    v50 = *(v47 + 16);
    v51 = (v48 & 1) == 0;
    v52 = v50 + v51;
    if (__OFADD__(v50, v51))
    {
      __break(1u);
    }

    else
    {
      if (*(v47 + 24) < v52)
      {
        v53 = v48;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v52, isUniquelyReferenced_nonNull_native);
        v54 = v117.tv_sec;
        LOBYTE(v123[0]) = v102;
        v55 = specialized __RawDictionaryStorage.find<A>(_:)(v109, *(&v109 + 1), v101 | (v102 << 32), v103);
        if ((v53 & 1) != (v56 & 1))
        {
LABEL_94:
          countAndFlagsBits = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_95;
        }

        v49 = v55;
        if (v53)
        {
          goto LABEL_39;
        }

        goto LABEL_42;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v54 = v47;
        if (v48)
        {
LABEL_39:
          v57 = v49;

          *(*(v54 + 56) + 8 * v57) = tv_sec;

LABEL_43:
          *(v43 + 16) = v54;

          os_unfair_lock_unlock((v43 + 24));

          outlined consume of ICUNumberFormatter??(1);
LABEL_44:
          if (!tv_sec)
          {
LABEL_91:
            __break(1u);
            goto LABEL_92;
          }

          if (one-time initialization token for componentsToURelativeDateUnit != -1)
          {
            swift_once();
          }

          v58 = static ICURelativeDateFormatter.componentsToURelativeDateUnit;
          if (*(static ICURelativeDateFormatter.componentsToURelativeDateUnit + 16) && (v59 = specialized __RawDictionaryStorage.find<A>(_:)(tv_sec_low), (v60 & 1) != 0))
          {
            v61 = *(*(v58 + 56) + 4 * v59);

            if (v108)
            {
              v62 = specialized _withResizingUCharBuffer(initialSize:_:)(32, tv_sec, tv_nsec, v61);
            }

            else
            {
              v62 = specialized _withResizingUCharBuffer(initialSize:_:)(32, tv_sec, tv_nsec, v61);
            }

            v64 = v62;
            v65 = v63;

            if (v65)
            {
              outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v131);
              countAndFlagsBits = v64;
LABEL_54:
              object = v65;
              goto LABEL_95;
            }
          }

          else
          {
          }

          __break(1u);
LABEL_90:
          __break(1u);
          goto LABEL_91;
        }

LABEL_42:
        LOBYTE(v123[0]) = v102;
        specialized _NativeDictionary._insert(at:key:value:)(v49, v45, *(&v109 + 1), v101 | (v102 << 32), v103, tv_sec, v54);
        goto LABEL_43;
      }
    }

    v99 = v49;
    v100 = v48;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation24ICURelativeDateFormatterC9SignatureVAESgGMd);
    v78 = static _DictionaryStorage.copy(original:)();
    v54 = v78;
    if (*(v47 + 16))
    {
      v79 = (v78 + 64);
      v105 = (v47 + 64);
      v80 = ((1 << *(v54 + 32)) + 63) >> 6;
      if (v54 != v47 || v79 >= &v105[8 * v80])
      {
        memmove(v79, v105, 8 * v80);
      }

      v81 = 0;
      *(v54 + 16) = *(v47 + 16);
      v82 = 1 << *(v47 + 32);
      v83 = *(v47 + 64);
      v84 = -1;
      if (v82 < 64)
      {
        v84 = ~(-1 << v82);
      }

      v85 = v84 & v83;
      v86 = (v82 + 63) >> 6;
      if ((v84 & v83) != 0)
      {
        do
        {
          v87 = __clz(__rbit64(v85));
          v85 &= v85 - 1;
LABEL_84:
          v90 = v87 | (v81 << 6);
          v91 = *(v47 + 48) + 32 * v90;
          v92 = *(v91 + 8);
          v93 = *(v91 + 16);
          v94 = *(*(v47 + 56) + 8 * v90);
          v95 = *(v91 + 20);
          v96 = *(v54 + 48) + 32 * v90;
          v97 = *(v91 + 24);
          *v96 = *v91;
          *(v96 + 8) = v92;
          *(v96 + 16) = v93;
          *(v96 + 20) = v95;
          *(v96 + 24) = v97;
          *(*(v54 + 56) + 8 * v90) = v94;
        }

        while (v85);
      }

      v88 = v81;
      while (1)
      {
        v81 = v88 + 1;
        if (__OFADD__(v88, 1))
        {
          goto LABEL_90;
        }

        if (v81 >= v86)
        {
          break;
        }

        v89 = *&v105[8 * v81];
        ++v88;
        if (v89)
        {
          v87 = __clz(__rbit64(v89));
          v85 = (v89 - 1) & v89;
          goto LABEL_84;
        }
      }
    }

    v45 = v109;
    v49 = v99;
    if (v100)
    {
      goto LABEL_39;
    }

    goto LABEL_42;
  }

  if (!v8)
  {
    v9 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v138);
    v128 = v9[4];
    v129 = v9[5];
    v130[0] = v9[6];
    *(v130 + 10) = *(v9 + 106);
    v124 = *v9;
    v125 = v9[1];
    v126 = v9[2];
    v127 = v9[3];
    outlined init with copy of Date.FormatStyle(v9, &v111);
    ICUDateFormatter.DateFormatInfo.init(_:)(&v124, &v111);
    v10 = specialized static ICUDateFormatter.cachedFormatter(for:)(&v111.tv_sec);
    v119 = v113;
    v120 = v114;
    v121 = v115;
    v122 = v116;
    v117 = v111;
    v118 = v112;
    outlined destroy of ICUDateFormatter.DateFormatInfo(&v117);
    if (!v10)
    {
      goto LABEL_18;
    }

    v11 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
    v13 = v12;

    if (!v13)
    {
      goto LABEL_18;
    }

LABEL_69:
    object = v13;
    countAndFlagsBits = v11;
    goto LABEL_95;
  }

  v29 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v138);
  v124 = *v29;
  v125 = v29[1];
  v126 = v29[2];
  *&v111.tv_sec = v3;
  v30 = Date.ISO8601FormatStyle.format(_:)(v126);
  object = v30._object;
  countAndFlagsBits = v30._countAndFlagsBits;
LABEL_95:
  result._object = object;
  result._countAndFlagsBits = countAndFlagsBits;
  return result;
}

double String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.locale(_:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = v2[3];
  v5 = v2[5];
  v51 = v2[4];
  v52 = v5;
  v6 = v2[5];
  v53[0] = v2[6];
  *(v53 + 10) = *(v2 + 106);
  v7 = v2[1];
  v47 = *v2;
  v48 = v7;
  v8 = v2[3];
  v49 = v2[2];
  v50 = v8;
  v54[2] = v49;
  v54[3] = v4;
  v54[0] = v47;
  v54[1] = v7;
  *&v55[10] = *(v2 + 106);
  v9 = v2[6];
  v54[5] = v6;
  *v55 = v9;
  v10 = *a1;
  v11 = a1[1];
  v54[4] = v51;
  v12 = _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOg(v54);
  if (v12 > 1)
  {
    if (v12 == 2)
    {
      v14 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v54);
      v34 = *v14;
      v37 = v14[1];
      v30 = v14[3];
      outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v47, &v42);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v42 = v34;
      *v43 = v37;
      *&v43[16] = v10;
      *&v43[24] = v11;
      v44 = v30;
      _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi1_(&v42);
    }

    else
    {
      v24 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v54);
      v25 = *v24;
      v35 = *(v24 + 24);
      v38 = *(v24 + 40);
      outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v47, &v42);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *&v42 = v25;
      *(&v42 + 1) = v10;
      *&v43[8] = v35;
      *v43 = v11;
      *&v43[24] = v38;
      _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi2_(&v42);
    }
  }

  else
  {
    if (v12)
    {
      destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v54);
      v15 = v51;
      v16 = v52;
      a2[4] = v51;
      a2[5] = v16;
      v17 = v53[0];
      a2[6] = v53[0];
      v18 = *(v53 + 10);
      *(a2 + 106) = *(v53 + 10);
      v19 = v47;
      v20 = v48;
      *a2 = v47;
      a2[1] = v20;
      v21 = v49;
      v22 = v50;
      a2[2] = v49;
      a2[3] = v22;
      *&v46[26] = v18;
      *v46 = v16;
      *&v46[16] = v17;
      v44 = v22;
      v45 = v15;
      *v43 = v20;
      *&v43[16] = v21;
      v42 = v19;
      destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v42);
      swift_unknownObjectRetain();
      swift_unknownObjectRetain();
      return result;
    }

    v13 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v54);
    v41 = *(v13 + 64);
    v39 = *(v13 + 32);
    v40 = *(v13 + 48);
    v33 = *v13;
    v36 = *(v13 + 16);
    v29 = *(v13 + 88);
    v31 = *(v13 + 104);
    v32 = *(v13 + 120);
    outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v47, &v42);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *&v43[16] = v39;
    v44 = v40;
    v42 = v33;
    *v43 = v36;
    *&v46[8] = v29;
    *&v45 = v41;
    *(&v45 + 1) = v10;
    *v46 = v11;
    *&v46[24] = v31;
    *&v46[40] = v32;
    _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOi_(&v42);
  }

  v26 = *v46;
  a2[4] = v45;
  a2[5] = v26;
  a2[6] = *&v46[16];
  *(a2 + 106) = *&v46[26];
  v27 = *v43;
  *a2 = v42;
  a2[1] = v27;
  result = *&v43[16];
  v28 = v44;
  a2[2] = *&v43[16];
  a2[3] = v28;
  return result;
}

uint64_t String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySS10FoundationE17LocalizationValueV14FormatArgumentV04DatehG5StyleV10CodingKeys33_52A34860FC1D9F87FB0A99C608112EB3LLOGMd);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = v1[5];
  v24 = v1[4];
  v25 = v7;
  v26[0] = v1[6];
  *(v26 + 10) = *(v1 + 106);
  v8 = v1[1];
  v20 = *v1;
  v21 = v8;
  v9 = v1[3];
  v22 = v1[2];
  v23 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined init with copy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(&v20, &v13);
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = v24;
  v18 = v25;
  v19[0] = v26[0];
  *(v19 + 10) = *(v26 + 10);
  v13 = v20;
  v14 = v21;
  v15 = v22;
  v16 = v23;
  lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v11[4] = v17;
  v11[5] = v18;
  v12[0] = v19[0];
  *(v12 + 10) = *(v19 + 10);
  v11[0] = v13;
  v11[1] = v14;
  v11[2] = v15;
  v11[3] = v16;
  outlined destroy of String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v11);
  return (*(v4 + 8))(v6, v3);
}

void String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.hash(into:)(uint64_t a1)
{
  v3 = v1[5];
  v168[4] = v1[4];
  v168[5] = v3;
  v169[0] = v1[6];
  *(v169 + 10) = *(v1 + 106);
  v4 = v1[1];
  v168[0] = *v1;
  v168[1] = v4;
  v5 = v1[3];
  v168[2] = v1[2];
  v168[3] = v5;
  v6 = _sSS10FoundationE17LocalizationValueV14FormatArgumentV04DateeD5StyleV0D033_52A34860FC1D9F87FB0A99C608112EB3LLOWOg(v168);
  v7 = destructiveProjectEnumData for String.LocalizationValue.FormatArgument.DateArgumentFormatStyle.Format(v168);
  v8 = v7;
  if (v6 <= 1)
  {
    if (v6)
    {
      MEMORY[0x1865CD060](1);
      v21 = v8[1];
      v22 = *(v8 + 1);
      v23 = *(v8 + 5);
      String.hash(into:)();

      ObjectType = swift_getObjectType();
      (*(v23 + 120))(a1, ObjectType, v23);
      MEMORY[0x1865CD060](v22);
      String.hash(into:)();

      Hasher._combine(_:)(v21);
      String.hash(into:)();

      String.hash(into:)();

      return;
    }

    MEMORY[0x1865CD060](0);
    v9 = *(v8 + 24);
    v10 = *(v8 + 1);
    v166[2] = *v8;
    v166[3] = v10;
    v166[4] = *(v8 + 2);
    v167 = v9;
    v11 = *(v8 + 7);
    v12 = v8[64];
    specialized Optional<A>.hash(into:)(a1);
    if (v12)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v11);
    }

    v32 = *(v8 + 10);
    v33 = swift_getObjectType();
    if ((*(v32 + 48))(v33, v32))
    {
      v34 = 1;
LABEL_20:
      Hasher._combine(_:)(v34);
LABEL_113:
      v97 = *(v8 + 12);
      v98 = *(v8 + 14);
      v99 = v8[120];
      v100 = v8[121];
      v101 = swift_getObjectType();
      (*(v97 + 120))(a1, v101, v97);
      v102 = swift_getObjectType();
      (*(v98 + 120))(a1, v102, v98);
      MEMORY[0x1865CD060](v99);
      Hasher._combine(_:)(v100);
      return;
    }

    Hasher._combine(_:)(0);
    (*(v32 + 64))(v33, v32);
    String.hash(into:)();

    (*(v32 + 464))(&v151, v33, v32);
    v165 = v157;
    v166[0] = *v158;
    *(v166 + 12) = *&v158[12];
    v161 = v153;
    v162 = v154;
    v163 = v155;
    v164 = v156;
    v159 = v151;
    v160 = v152;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v159) == 1)
    {
      v34 = 0;
      goto LABEL_20;
    }

    v43 = v151;
    v44 = *(&v151 + 1);
    v45 = *(&v152 + 1);
    v46 = *(&v153 + 1);
    v125 = v154;
    v129 = v155;
    v135 = v156;
    v47 = v157;
    v142 = *v158;
    v145 = *&v158[16];
    v147 = v158[24];
    v150 = v158[25];
    v48 = v158[26];
    v49 = v158[27];
    Hasher._combine(_:)(1u);
    if (v43 == 2)
    {
      v50 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v50 = v43 & 1;
    }

    Hasher._combine(_:)(v50);
    if (v44)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v44 + 16));
      v63 = *(v44 + 16);
      if (v63)
      {
        v64 = v44 + 40;
        do
        {

          String.hash(into:)();

          v64 += 16;
          --v63;
        }

        while (v63);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v134 = v48;
    if (v45)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v46)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v125)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v125, v79, v80, v81, v82, v83, v84);
      if (*(&v125 + 1))
      {
        goto LABEL_68;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (*(&v125 + 1))
      {
LABEL_68:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, *(&v125 + 1), v85, v86, v87, v88, v89, v90);
        if (v129)
        {
          goto LABEL_69;
        }

        goto LABEL_94;
      }
    }

    Hasher._combine(_:)(0);
    if (v129)
    {
LABEL_69:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v129 + 1))
      {
        goto LABEL_70;
      }

      goto LABEL_95;
    }

LABEL_94:
    Hasher._combine(_:)(0);
    if (*(&v129 + 1))
    {
LABEL_70:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v135)
      {
        goto LABEL_71;
      }

      goto LABEL_96;
    }

LABEL_95:
    Hasher._combine(_:)(0);
    if (v135)
    {
LABEL_71:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v91 = v145;
      if (*(&v135 + 1))
      {
        goto LABEL_72;
      }

      goto LABEL_97;
    }

LABEL_96:
    Hasher._combine(_:)(0);
    v91 = v145;
    if (*(&v135 + 1))
    {
LABEL_72:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v47)
      {
        goto LABEL_73;
      }

      goto LABEL_98;
    }

LABEL_97:
    Hasher._combine(_:)(0);
    if (v47)
    {
LABEL_73:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v92 = v147;
      v93 = v150;
      if (*(&v47 + 1))
      {
        goto LABEL_74;
      }

      goto LABEL_99;
    }

LABEL_98:
    Hasher._combine(_:)(0);
    v92 = v147;
    v93 = v150;
    if (*(&v47 + 1))
    {
LABEL_74:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, *(&v47 + 1));
      if (v142)
      {
        goto LABEL_75;
      }

      goto LABEL_100;
    }

LABEL_99:
    Hasher._combine(_:)(0);
    if (v142)
    {
LABEL_75:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v142);
      if (v91)
      {
        goto LABEL_76;
      }

      goto LABEL_101;
    }

LABEL_100:
    Hasher._combine(_:)(0);
    if (v91)
    {
LABEL_76:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v92 == 2)
      {
LABEL_77:
        Hasher._combine(_:)(0);
LABEL_103:
        if (v93 == 2)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          MEMORY[0x1865CD060](v93 & 1);
        }

        if (v134 == 2)
        {
          v95 = 0;
        }

        else
        {
          Hasher._combine(_:)(1u);
          v95 = v134 & 1;
        }

        Hasher._combine(_:)(v95);
        if (v49 == 2)
        {
          v96 = 0;
        }

        else
        {
          Hasher._combine(_:)(1u);
          v96 = v49 & 1;
        }

        Hasher._combine(_:)(v96);
        outlined destroy of TermOfAddress?(&v151, &_s10Foundation17LocalePreferencesVSgMd);
        goto LABEL_113;
      }

LABEL_102:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v92 & 1);
      goto LABEL_103;
    }

LABEL_101:
    Hasher._combine(_:)(0);
    if (v92 == 2)
    {
      goto LABEL_77;
    }

    goto LABEL_102;
  }

  if (v6 == 2)
  {
    v13 = *(v7 + 1);
    v14 = *(v7 + 3);
    v16 = *(v7 + 4);
    v15 = *(v7 + 5);
    MEMORY[0x1865CD060](2);
    v17 = swift_getObjectType();
    (*(v13 + 120))(a1, v17, v13);
    v18 = swift_getObjectType();
    (*(v14 + 120))(a1, v18, v14);
    if (!v16)
    {
      goto LABEL_22;
    }

    Hasher._combine(_:)(1u);
    v19 = swift_getObjectType();
    if ((*(v15 + 48))(v19, v15))
    {
      v20 = 1;
LABEL_23:
      Hasher._combine(_:)(v20);
LABEL_24:
      String.hash(into:)();
      return;
    }

    Hasher._combine(_:)(0);
    (*(v15 + 64))(v19, v15);
    String.hash(into:)();

    (*(v15 + 464))(&v151, v19, v15);
    v165 = v157;
    v166[0] = *v158;
    *(v166 + 12) = *&v158[12];
    v161 = v153;
    v162 = v154;
    v163 = v155;
    v164 = v156;
    v159 = v151;
    v160 = v152;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v159) == 1)
    {
LABEL_22:
      v20 = 0;
      goto LABEL_23;
    }

    v51 = v151;
    v52 = *(&v151 + 1);
    v53 = *(&v152 + 1);
    v54 = *(&v153 + 1);
    v126 = v154;
    v55 = v156;
    v130 = v155;
    v133 = *(&v156 + 1);
    v56 = v157;
    v57 = *v158;
    v140 = *&v158[16];
    v58 = v158[24];
    v146 = v158[25];
    v59 = v158[26];
    v148 = v158[27];
    Hasher._combine(_:)(1u);
    if (v51 == 2)
    {
      v60 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v60 = v51 & 1;
    }

    v143 = v58;
    Hasher._combine(_:)(v60);
    if (v52)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v52 + 16));
      v105 = *(v52 + 16);
      if (v105)
      {
        v106 = v52 + 40;
        do
        {

          String.hash(into:)();

          v106 += 16;
          --v105;
        }

        while (v105);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v53)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v54)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v126)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v126, v107, v108, v109, v110, v111, v112);
      v113 = *(&v126 + 1);
      if (*(&v126 + 1))
      {
        goto LABEL_139;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v113 = *(&v126 + 1);
      if (*(&v126 + 1))
      {
LABEL_139:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v113, v114, v115, v116, v117, v118, v119);
        if (v130)
        {
          goto LABEL_140;
        }

        goto LABEL_146;
      }
    }

    Hasher._combine(_:)(0);
    if (v130)
    {
LABEL_140:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v130 + 1))
      {
        goto LABEL_141;
      }

      goto LABEL_147;
    }

LABEL_146:
    Hasher._combine(_:)(0);
    if (*(&v130 + 1))
    {
LABEL_141:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v55)
      {
        goto LABEL_142;
      }

      goto LABEL_148;
    }

LABEL_147:
    Hasher._combine(_:)(0);
    if (v55)
    {
LABEL_142:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v133)
      {
LABEL_143:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_150;
      }

LABEL_149:
      Hasher._combine(_:)(0);
LABEL_150:
      if (v56)
      {
        v120 = v148;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v121 = *(&v56 + 1);
        if (*(&v56 + 1))
        {
LABEL_152:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v121);
          goto LABEL_155;
        }
      }

      else
      {
        v120 = v148;
        Hasher._combine(_:)(0);
        v121 = *(&v56 + 1);
        if (*(&v56 + 1))
        {
          goto LABEL_152;
        }
      }

      Hasher._combine(_:)(0);
LABEL_155:
      if (v57)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v57);
        if (v140)
        {
LABEL_157:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
LABEL_160:
          if (v143 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v143 & 1);
          }

          if (v146 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v146 & 1);
          }

          if (v59 == 2)
          {
            v122 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v122 = v59 & 1;
          }

          Hasher._combine(_:)(v122);
          if (v120 == 2)
          {
            v123 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v123 = v120 & 1;
          }

          Hasher._combine(_:)(v123);
          outlined destroy of TermOfAddress?(&v151, &_s10Foundation17LocalePreferencesVSgMd);
          goto LABEL_24;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v140)
        {
          goto LABEL_157;
        }
      }

      Hasher._combine(_:)(0);
      goto LABEL_160;
    }

LABEL_148:
    Hasher._combine(_:)(0);
    if (v133)
    {
      goto LABEL_143;
    }

    goto LABEL_149;
  }

  v25 = *v7;
  v26 = v7[1];
  v27 = v7[2];
  v28 = *(v7 + 2);
  v29 = *(v7 + 4);
  v149 = *(v7 + 5);
  MEMORY[0x1865CD060](3);
  MEMORY[0x1865CD060](v25);
  MEMORY[0x1865CD060](v26);
  MEMORY[0x1865CD060](v27);
  v30 = swift_getObjectType();
  if (((*(v28 + 48))(v30, v28) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v28 + 64))(v30, v28);
    String.hash(into:)();

    (*(v28 + 464))(&v151, v30, v28);
    v165 = v157;
    v166[0] = *v158;
    *(v166 + 12) = *&v158[12];
    v161 = v153;
    v162 = v154;
    v163 = v155;
    v164 = v156;
    v159 = v151;
    v160 = v152;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v159) == 1)
    {
      v31 = 0;
      goto LABEL_17;
    }

    v35 = v151;
    v36 = *(&v151 + 1);
    v37 = *(&v152 + 1);
    v38 = *(&v153 + 1);
    v124 = v154;
    v39 = *(&v155 + 1);
    v127 = v155;
    v128 = *(&v156 + 1);
    v131 = v156;
    v132 = v157;
    v40 = *v158;
    v136 = *(&v157 + 1);
    v138 = *&v158[16];
    v139 = v158[24];
    v141 = v158[25];
    v144 = v158[26];
    v41 = v158[27];
    Hasher._combine(_:)(1u);
    if (v35 == 2)
    {
      v42 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v42 = v35 & 1;
    }

    v137 = v40;
    Hasher._combine(_:)(v42);
    if (v36)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v36 + 16));
      v61 = *(v36 + 16);
      if (v61)
      {
        v62 = v36 + 40;
        do
        {

          String.hash(into:)();

          v62 += 16;
          --v61;
        }

        while (v61);
      }
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v37)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v38)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    if (v124)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v124, v65, v66, v67, v68, v69, v70);
      if (*(&v124 + 1))
      {
        goto LABEL_58;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (*(&v124 + 1))
      {
LABEL_58:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, *(&v124 + 1), v71, v72, v73, v74, v75, v76);
        if (v127)
        {
          goto LABEL_59;
        }

        goto LABEL_80;
      }
    }

    Hasher._combine(_:)(0);
    if (v127)
    {
LABEL_59:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v39)
      {
        goto LABEL_60;
      }

      goto LABEL_81;
    }

LABEL_80:
    Hasher._combine(_:)(0);
    if (v39)
    {
LABEL_60:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v131)
      {
        goto LABEL_61;
      }

      goto LABEL_82;
    }

LABEL_81:
    Hasher._combine(_:)(0);
    if (v131)
    {
LABEL_61:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v128)
      {
        goto LABEL_62;
      }

      goto LABEL_83;
    }

LABEL_82:
    Hasher._combine(_:)(0);
    if (v128)
    {
LABEL_62:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v77 = v138;
      if (v132)
      {
        goto LABEL_63;
      }

      goto LABEL_84;
    }

LABEL_83:
    Hasher._combine(_:)(0);
    v77 = v138;
    if (v132)
    {
LABEL_63:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format and conformance String.LocalizationValue.FormatArgument.DecimalArgumentFormatStyle.Format(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v78 = v136;
      if (v136)
      {
LABEL_64:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v78);
        goto LABEL_86;
      }

LABEL_85:
      Hasher._combine(_:)(0);
LABEL_86:
      if (v137)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v137);
        if (v77)
        {
          goto LABEL_88;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v77)
        {
LABEL_88:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          if (v139 == 2)
          {
            goto LABEL_89;
          }

          goto LABEL_116;
        }
      }

      Hasher._combine(_:)(0);
      if (v139 == 2)
      {
LABEL_89:
        Hasher._combine(_:)(0);
        if (v141 != 2)
        {
          goto LABEL_90;
        }

        goto LABEL_117;
      }

LABEL_116:
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](v139 & 1);
      if (v141 != 2)
      {
LABEL_90:
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](v141 & 1);
        if (v144 != 2)
        {
LABEL_91:
          Hasher._combine(_:)(1u);
          v94 = v144 & 1;
LABEL_119:
          Hasher._combine(_:)(v94);
          if (v41 == 2)
          {
            v103 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v103 = v41 & 1;
          }

          Hasher._combine(_:)(v103);
          outlined destroy of TermOfAddress?(&v151, &_s10Foundation17LocalePreferencesVSgMd);
          goto LABEL_123;
        }

LABEL_118:
        v94 = 0;
        goto LABEL_119;
      }

LABEL_117:
      Hasher._combine(_:)(0);
      if (v144 != 2)
      {
        goto LABEL_91;
      }

      goto LABEL_118;
    }

LABEL_84:
    Hasher._combine(_:)(0);
    v78 = v136;
    if (v136)
    {
      goto LABEL_64;
    }

    goto LABEL_85;
  }

  v31 = 1;
LABEL_17:
  Hasher._combine(_:)(v31);
LABEL_123:
  v104 = swift_getObjectType();
  (*(v29 + 120))(a1, v104, v29);
  specialized Set.hash(into:)(a1, v149);
}