uint64_t sub_18D35965C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    type metadata accessor for LinkDestination.Configuration?(0);
    v8 = v7;
    v9 = *(*(v7 - 8) + 56);
    v10 = v5 + *(a4 + 52);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t CodableAttributedString.init(from:)@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v71 = a2;
  v4 = type metadata accessor for String.Encoding();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v74 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 8);
  isEscapingClosureAtFileLocation = *(a1 + 16);
  if (v6 >= isEscapingClosureAtFileLocation)
  {
    v8 = 0;
    v73 = MEMORY[0x1E69E7CC0];
    v9 = 0xE000000000000000;
LABEL_53:
    v72 = v2;
    *(a1 + 24) = 0;
    v41 = objc_allocWithZone(MEMORY[0x1E696AD40]);
    v42 = MEMORY[0x193ABEC20](v8, v9);

    v43 = [v41 initWithString_];

    v44 = v43;
    v45 = [v44 length];
    v46 = v73;
    v47 = *(v73 + 2);
    if (v47)
    {
      v74 = v45;
      type metadata accessor for NSAttributedStringKey(0);
      lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(&lazy protocol witness table cache variable for type NSAttributedStringKey and conformance NSAttributedStringKey, type metadata accessor for NSAttributedStringKey);
      v48 = v46 + 48;
      do
      {
        v49 = *(v48 - 2);
        v50 = *(v48 - 1);
        v48 += 24;

        isa = Dictionary._bridgeToObjectiveC()().super.isa;
        v84.location = v49;
        v84.length = v50;
        v85.location = 0;
        v85.length = v74;
        v52 = NSIntersectionRange(v84, v85);

        [v44 addAttributes:isa range:{v52.location, v52.length}];

        --v47;
      }

      while (v47);
    }

    isEscapingClosureAtFileLocation = v44;
    if (one-time initialization token for resolvableTextSegment != -1)
    {
      goto LABEL_73;
    }

    goto LABEL_57;
  }

  v8 = 0;
  v73 = MEMORY[0x1E69E7CC0];
  v9 = 0xE000000000000000;
  while (1)
  {
    v10 = *(a1 + 24);
    if (v10)
    {
      v11 = *(a1 + 32);
      if (v6 < v11)
      {
        goto LABEL_11;
      }

      if (v11 < v6)
      {
        goto LABEL_63;
      }

      *(a1 + 24) = 0;
    }

    v12 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_66;
    }

    v10 = v12;
    if (v12 < 8)
    {
      goto LABEL_63;
    }

LABEL_11:
    if (v10 >> 3 != 2)
    {
      break;
    }

    if ((v10 & 7) != 2)
    {
      goto LABEL_63;
    }

    ProtobufDecoder.beginMessage()();
    if (v2)
    {
LABEL_66:
      v72 = v2;
    }

    CodableAttributedString.Range.init(from:)(a1, &aBlock);
    v72 = 0;
    v24 = *(a1 + 40);
    if (!*(v24 + 2))
    {
      goto LABEL_71;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v25 = *(v24 + 2);
      if (!v25)
      {
        goto LABEL_72;
      }
    }

    else
    {
      v24 = specialized _ArrayBuffer._consumeAndCreateNew()(v24);
      v25 = *(v24 + 2);
      if (!v25)
      {
        goto LABEL_72;
      }
    }

    v26 = v25 - 1;
    isEscapingClosureAtFileLocation = *&v24[8 * v26 + 32];
    *(v24 + 2) = v26;
    *(a1 + 40) = v24;
    *(a1 + 16) = isEscapingClosureAtFileLocation;
    v27 = aBlock;
    v28 = v79;
    v29 = v80;
    v30 = v8;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v31 = v73;
    }

    else
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v73 + 2) + 1, 1, v73);
    }

    v33 = *(v31 + 2);
    v32 = *(v31 + 3);
    v2 = v72;
    if (v33 >= v32 >> 1)
    {
      v40 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
      v2 = v72;
      v31 = v40;
    }

    *(v31 + 2) = v33 + 1;
    v73 = v31;
    v34 = &v31[24 * v33];
    *(v34 + 4) = v27;
    *(v34 + 5) = v28;
    *(v34 + 6) = v29;
    v8 = v30;
LABEL_4:
    v6 = *(a1 + 8);
    if (v6 >= isEscapingClosureAtFileLocation)
    {
      goto LABEL_53;
    }
  }

  if (v10 >> 3 != 1)
  {
    v35 = v10 & 7;
    if (v35 > 1)
    {
      if (v35 == 2)
      {
        v39 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_66;
        }

        if (v39 < 0)
        {
          goto LABEL_78;
        }

        v36 = *(a1 + 8) + v39;
        if (isEscapingClosureAtFileLocation < v36)
        {
LABEL_63:

LABEL_64:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          v72 = swift_allocError();
          swift_willThrow();
        }
      }

      else
      {
        if (v35 != 5)
        {
          goto LABEL_63;
        }

        v36 = *(a1 + 8) + 4;
        if (isEscapingClosureAtFileLocation < v36)
        {
          goto LABEL_63;
        }
      }
    }

    else
    {
      if ((v10 & 7) == 0)
      {
        ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_66;
        }

        goto LABEL_4;
      }

      if (v35 != 1)
      {
        goto LABEL_63;
      }

      v36 = *(a1 + 8) + 8;
      if (isEscapingClosureAtFileLocation < v36)
      {
        goto LABEL_63;
      }
    }

    *(a1 + 8) = v36;
    goto LABEL_4;
  }

  if ((v10 & 7) != 2)
  {
    goto LABEL_64;
  }

  v13 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    v72 = v2;
  }

  v14 = v13;
  if ((v13 & 0x8000000000000000) == 0)
  {
    v15 = *(a1 + 8);
    if (isEscapingClosureAtFileLocation < v15 + v13)
    {
      goto LABEL_64;
    }

    *(a1 + 8) = v15 + v13;
    if (v13)
    {
      v16 = v15 - [*a1 bytes];
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;
      if (__OFADD__(v16, v14))
      {
        goto LABEL_75;
      }

      if (v16 + v14 < v16)
      {
        goto LABEL_76;
      }

      v20 = v17;
      v21 = Data._Representation.subscript.getter();
      v23 = v22;
      outlined consume of Data._Representation(v20, v19);
    }

    else
    {
      v21 = 0;
      v23 = 0xC000000000000000;
    }

    static String.Encoding.utf8.getter();
    v37 = String.init(data:encoding:)();
    if (!v38)
    {
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      v72 = swift_allocError();
      swift_willThrow();
      outlined consume of Data._Representation(v21, v23);
    }

    v8 = v37;
    v9 = v38;
    outlined consume of Data._Representation(v21, v23);
    goto LABEL_4;
  }

  __break(1u);
LABEL_71:
  __break(1u);
LABEL_72:
  __break(1u);
LABEL_73:
  swift_once();
LABEL_57:
  a1 = static NSAttributedStringKey.resolvableTextSegment;
  v53 = [isEscapingClosureAtFileLocation length];
  v54 = swift_allocObject();
  *(v54 + 16) = isEscapingClosureAtFileLocation;
  v55 = swift_allocObject();
  *(v55 + 16) = closure #1 in static ResolvableTextSegmentAttribute.toggleAttributes(in:)partial apply;
  *(v55 + 24) = v54;
  v82 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
  v83 = v55;
  aBlock = MEMORY[0x1E69E9820];
  v79 = 1107296256;
  v80 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v81 = &block_descriptor_23_0;
  v56 = _Block_copy(&aBlock);
  v57 = isEscapingClosureAtFileLocation;
  v58 = v56;
  v59 = v57;

  [v59 enumerateAttribute:a1 inRange:0 options:v53 usingBlock:{0, v58}];
  _Block_release(v58);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  if ([v59 length] <= 0)
  {

    v65 = 0;
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
LABEL_62:
    outlined destroy of _DisplayList_AnyEffectAnimator?(&v75, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule);
    result = outlined consume of (@escaping @callee_guaranteed (@in_guaranteed OpenURLAction.SystemHandlerInput) -> ())?(v65);
    *v71 = v59;
  }

  else
  {
    v77 = 0;
    v75 = 0u;
    v76 = 0u;
    v60 = [v59 length];
    v61 = swift_allocObject();
    *(v61 + 16) = v59;
    *(v61 + 24) = &v75;
    v62 = swift_allocObject();
    *(v62 + 16) = partial apply for closure #1 in NSMutableAttributedString.resolveUpdateSchedule(recalculate:);
    *(v62 + 24) = v61;
    v82 = thunk for @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()partial apply;
    v83 = v62;
    aBlock = MEMORY[0x1E69E9820];
    v79 = 1107296256;
    v80 = thunk for @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
    v81 = &block_descriptor_33;
    v63 = _Block_copy(&aBlock);
    v64 = v59;

    [v64 enumerateAttribute:a1 inRange:0 options:v60 usingBlock:{0, v63}];
    _Block_release(v63);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      outlined init with copy of TimelineSchedule?(&v75, &aBlock, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule);
      NSMutableAttributedString.setUpdateSchedule(_:)(&aBlock);

      outlined destroy of _DisplayList_AnyEffectAnimator?(&aBlock, &lazy cache variable for type metadata for TimelineSchedule?, &lazy cache variable for type metadata for TimelineSchedule);
      v65 = partial apply for closure #1 in NSMutableAttributedString.resolveUpdateSchedule(recalculate:);
      goto LABEL_62;
    }

LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
    __break(1u);
    result = specialized _ArrayBuffer._consumeAndCreateNew()(isEscapingClosureAtFileLocation);
    v69 = result;
    v70 = *(result + 16);
    if (v70)
    {
      v67 = v70 - 1;
      v68 = *(result + 8 * v67 + 32);
      *(result + 16) = v67;

      *(a1 + 40) = v69;
      *(a1 + 16) = v68;
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_18D35A08C()
{

  return swift_deallocObject();
}

uint64_t sub_18D35A0D4()
{

  return swift_deallocObject();
}

uint64_t ProtobufDecoder.preferredBundleLanguage.getter()
{
  v1 = *(v0 + 48);
  if (one-time initialization token for preferredBundleLanguageKey != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static ArchivedViewCore.preferredBundleLanguageKey);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v4, v8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t lazy protocol witness table accessor for type NSAttributedStringKey and conformance NSAttributedStringKey(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo21NSAttributedStringKeyaABSHSCWlTm_0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo21NSAttributedStringKeyaABSHSCWlTm_1(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t _sSo21NSAttributedStringKeyaABSHSCWlTm_2(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t _sypSgWOcTm_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

unint64_t _s7SwiftUI30AccessibilityNullableOptionSetV4fromACyxGAA15ProtobufDecoderVz_tKcfCAA0C10VisibilityV_Tt1g5@<X0>(unint64_t result@<X0>, _DWORD *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v8 = 0;
LABEL_47:
    v3[3] = 0;
    *a2 = v8;
    a2[1] = v7;
    return result;
  }

  v7 = 0;
  v8 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v9 = v3[4];
      if (v5 < v9)
      {
        goto LABEL_11;
      }

      if (v9 < v5)
      {
        goto LABEL_45;
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
LABEL_45:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_11:
    v10 = result & 7;
    if (result >> 3 == 2)
    {
      if ((result & 7) != 0)
      {
        if (v10 != 2)
        {
          goto LABEL_45;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_50;
        }

        v12 = v3[1] + result;
        if (v6 < v12)
        {
          goto LABEL_45;
        }

        v3[3] = 16;
        v3[4] = v12;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v7 = result;
      if (HIDWORD(result))
      {
        goto LABEL_49;
      }

      goto LABEL_4;
    }

    if (result >> 3 != 1)
    {
      if ((result & 7) > 1)
      {
        if (v10 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_52;
          }

          v13 = v3[1] + result;
          if (v6 < v13)
          {
            goto LABEL_45;
          }
        }

        else
        {
          if (v10 != 5)
          {
            goto LABEL_45;
          }

          v13 = v3[1] + 4;
          if (v6 < v13)
          {
            goto LABEL_45;
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

          goto LABEL_4;
        }

        if (v10 != 1)
        {
          goto LABEL_45;
        }

        v13 = v3[1] + 8;
        if (v6 < v13)
        {
          goto LABEL_45;
        }
      }

      v3[1] = v13;
      goto LABEL_4;
    }

    if ((result & 7) != 0)
    {
      if (v10 != 2)
      {
        goto LABEL_45;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if ((result & 0x8000000000000000) != 0)
      {
        goto LABEL_51;
      }

      v11 = v3[1] + result;
      if (v6 < v11)
      {
        goto LABEL_45;
      }

      v3[3] = 8;
      v3[4] = v11;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    v8 = result;
    if (HIDWORD(result))
    {
      break;
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
  return result;
}

id outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(void *a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    return outlined copy of AccessibilityText.Storage(a1, a2, a3 & 1);
  }

  else
  {
  }
}

id outlined copy of AccessibilityText.Storage(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

void outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(void *a1, uint64_t a2, char a3, char a4)
{
  if (a4)
  {
    outlined consume of AccessibilityText.Storage(a1, a2, a3 & 1);
  }

  else
  {
  }
}

uint64_t destroy for CodableAccessibilityAttachmentStorage.V3(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 34) != 255)
  {
    v4 = *(a1 + 32) | (*(a1 + 34) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 16), *(a1 + 24), v4, BYTE2(v4) & 1);
  }

  if (*(a1 + 58) != 255)
  {
    v5 = *(a1 + 56) | (*(a1 + 58) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 40), *(a1 + 48), v5, BYTE2(v5) & 1);
  }

  if (*(a1 + 82) != 255)
  {
    v6 = *(a1 + 80) | (*(a1 + 82) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 64), *(a1 + 72), v6, BYTE2(v6) & 1);
  }

  v7 = *(a1 + 232);
  if (v7 != 1)
  {
    if (*(a1 + 162) != 255)
    {
      v8 = *(a1 + 160) | (*(a1 + 162) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 144), *(a1 + 152), v8, BYTE2(v8) & 1);
      v7 = *(a1 + 232);
    }

    if (v7)
    {
      if (*(a1 + 202) != 255)
      {
        v9 = *(a1 + 200) | (*(a1 + 202) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 184), *(a1 + 192), v9, BYTE2(v9) & 1);
      }

      if (*(a1 + 226) != 255)
      {
        v10 = *(a1 + 224) | (*(a1 + 226) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 208), *(a1 + 216), v10, BYTE2(v10) & 1);
      }
    }

    if (*(a1 + 344))
    {
      if (*(a1 + 314) != 255)
      {
        v11 = *(a1 + 312) | (*(a1 + 314) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 296), *(a1 + 304), v11, BYTE2(v11) & 1);
      }

      if (*(a1 + 338) != 255)
      {
        v12 = *(a1 + 336) | (*(a1 + 338) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 320), *(a1 + 328), v12, BYTE2(v12) & 1);
      }
    }
  }

  v13 = *(type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0) + 52);
  v14 = type metadata accessor for LinkDestination.Configuration(0);
  if (!(*(*(v14 - 8) + 48))(a1 + v13, 1, v14))
  {
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 8))(a1 + v13, v15);
  }

  v16 = a1 + *(a2 + 24);
  v17 = *(v16 + 48);
  if (v17 != 1)
  {
    v18 = *(v16 + 16);
    if (v18 != 255)
    {
      outlined consume of AccessibilityText.Storage(*v16, *(v16 + 8), v18 & 1);
      v17 = *(v16 + 48);
    }

    if (v17)
    {
      __swift_destroy_boxed_opaque_existential_1(v16 + 24);
    }
  }
}

unint64_t ContentTransition.State.init(from:)@<X0>(unint64_t a1@<X0>, char *a2@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = static ContentTransition.default;
  v6 = dword_1ED536998 | (byte_1ED53699C << 32);
  LODWORD(v7) = byte_1ED53699D;
  v52 = byte_1ED53699E;
  outlined copy of ContentTransition.Storage(static ContentTransition.default, v6, byte_1ED53699D);
  outlined copy of ContentTransition.Storage(v5, v6, v7);
  outlined copy of ContentTransition.Storage(v5, v6, v7);
  outlined consume of ContentTransition.Storage(v5, v6, v7);
  v60 = v5;
  result = outlined consume of ContentTransition.Storage(v5, v6, v7);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v9 >= v10)
  {
    LOBYTE(v11) = 0;
    v53 = 0;
    v54 = 0;
LABEL_6:
    *(a1 + 24) = 0;
    *a2 = v60;
    *(a2 + 2) = v6;
    a2[12] = BYTE4(v6);
    a2[13] = v7;
    a2[14] = v52 & 1;
    a2[15] = v11;
    *(a2 + 2) = v54;
    *(a2 + 6) = v53;
    return result;
  }

  v11 = 0;
  v53 = 0;
  v54 = 0;
  while (1)
  {
    result = *(a1 + 24);
    if (result)
    {
      v12 = *(a1 + 32);
      if (v9 < v12)
      {
        goto LABEL_15;
      }

      if (v12 < v9)
      {
        goto LABEL_85;
      }

      *(a1 + 24) = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_97;
    }

    if (result <= 7)
    {
      goto LABEL_85;
    }

LABEL_15:
    v13 = result >> 3;
    if (result >> 3 <= 2)
    {
      break;
    }

    if (v13 == 3)
    {
      if ((result & 7) != 2)
      {
        goto LABEL_85;
      }

      v51 = v7;
      v7 = v11;
      v37 = *(a1 + 40);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
      }

      v39 = *(v37 + 2);
      v38 = *(v37 + 3);
      if (v39 >= v38 >> 1)
      {
        v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
      }

      *(v37 + 2) = v39 + 1;
      *&v37[8 * v39 + 32] = v10;
      *(a1 + 40) = v37;
      v40 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_89;
      }

      if (v40 < 0)
      {
        goto LABEL_100;
      }

      v41 = *(a1 + 8) + v40;
      if (v10 < v41)
      {
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
LABEL_89:
        v47 = v60;
        LOBYTE(v7) = v51;
        goto LABEL_98;
      }

      *(a1 + 16) = v41;
      v42 = specialized CodableAnimation.init(from:)(a1);
      v43 = *(a1 + 40);
      if (!*(v43 + 2))
      {
        goto LABEL_104;
      }

      v44 = v42;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v45 = *(v43 + 2);
        if (!v45)
        {
          goto LABEL_84;
        }
      }

      else
      {
        v43 = specialized _ArrayBuffer._consumeAndCreateNew()(v43);
        v45 = *(v43 + 2);
        if (!v45)
        {
LABEL_84:
          __break(1u);
LABEL_85:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_97:
          v47 = v60;
LABEL_98:
          outlined consume of ContentTransition.Storage(v47, v6, v7);
        }
      }

      v46 = v45 - 1;
      v10 = *&v43[8 * v46 + 32];
      *(v43 + 2) = v46;

      *(a1 + 40) = v43;
      *(a1 + 16) = v10;
      v54 = v44;
      v11 = v7;
      LODWORD(v7) = v51;
    }

    else
    {
      if (v13 != 4)
      {
LABEL_40:
        v24 = result & 7;
        if (v24 > 1)
        {
          if (v24 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              goto LABEL_97;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_108;
            }

            v25 = *(a1 + 8) + result;
            if (v10 < v25)
            {
              goto LABEL_85;
            }
          }

          else
          {
            if (v24 != 5)
            {
              goto LABEL_85;
            }

            v25 = *(a1 + 8) + 4;
            if (v10 < v25)
            {
              goto LABEL_85;
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
              goto LABEL_97;
            }

            goto LABEL_8;
          }

          if (v24 != 1)
          {
            goto LABEL_85;
          }

          v25 = *(a1 + 8) + 8;
          if (v10 < v25)
          {
            goto LABEL_85;
          }
        }

        *(a1 + 8) = v25;
        goto LABEL_8;
      }

      if ((result & 7) != 0)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_85;
        }

        v22 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_97;
        }

        if (v22 < 0)
        {
          goto LABEL_107;
        }

        v23 = *(a1 + 8) + v22;
        if (v10 < v23)
        {
          goto LABEL_85;
        }

        *(a1 + 24) = 32;
        *(a1 + 32) = v23;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_97;
      }

      v53 = result;
    }

LABEL_8:
    v9 = *(a1 + 8);
    if (v9 >= v10)
    {
      goto LABEL_6;
    }
  }

  if (v13 != 1)
  {
    if (v13 != 2)
    {
      goto LABEL_40;
    }

    if ((result & 7) != 2)
    {
      goto LABEL_85;
    }

    v14 = *(a1 + 40);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
    }

    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    *&v14[8 * v16 + 32] = v10;
    *(a1 + 40) = v14;
    v17 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_97;
    }

    if (v17 < 0)
    {
      goto LABEL_101;
    }

    v18 = *(a1 + 8) + v17;
    if (v10 < v18)
    {
      goto LABEL_85;
    }

    *(a1 + 16) = v18;
    ContentTransition.Style.init(from:)(a1, &v55);
    v19 = *(a1 + 40);
    if (!*(v19 + 16))
    {
      goto LABEL_102;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v20 = *(v19 + 16);
      if (!v20)
      {
        goto LABEL_106;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v19);
      v19 = result;
      v20 = *(result + 16);
      if (!v20)
      {
        goto LABEL_106;
      }
    }

    v21 = v20 - 1;
    v10 = *(v19 + 8 * v21 + 32);
    *(v19 + 16) = v21;
    *(a1 + 40) = v19;
    *(a1 + 16) = v10;
    v11 = v55;
    goto LABEL_8;
  }

  if ((result & 7) != 2)
  {
    goto LABEL_85;
  }

  v51 = v11;
  v26 = *(a1 + 40);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  *&v26[8 * v28 + 32] = v10;
  *(a1 + 40) = v26;
  v29 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    goto LABEL_97;
  }

  if ((v29 & 0x8000000000000000) == 0)
  {
    v30 = *(a1 + 8) + v29;
    if (v10 < v30)
    {
      goto LABEL_85;
    }

    *(a1 + 16) = v30;
    ContentTransition.init(from:)(a1, &v55);
    v31 = *(a1 + 40);
    if (!*(v31 + 2))
    {
      goto LABEL_103;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v32 = *(v31 + 2);
      if (!v32)
      {
        goto LABEL_105;
      }
    }

    else
    {
      v31 = specialized _ArrayBuffer._consumeAndCreateNew()(v31);
      v32 = *(v31 + 2);
      if (!v32)
      {
        goto LABEL_105;
      }
    }

    v33 = v32 - 1;
    v10 = *&v31[8 * v33 + 32];
    *(v31 + 2) = v33;
    *(a1 + 40) = v31;
    *(a1 + 16) = v10;
    v34 = v55;
    v35 = v56 | (v57 << 32);
    v36 = v58;
    v52 = v59;
    result = outlined consume of ContentTransition.Storage(v60, v6, v7);
    v60 = v34;
    v6 = v35;
    LODWORD(v7) = v36;
    v11 = v51;
    goto LABEL_8;
  }

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
LABEL_106:
  __break(1u);
LABEL_107:
  __break(1u);
LABEL_108:
  __break(1u);
  __break(1u);
LABEL_109:
  __break(1u);
  do
  {
    __break(1u);
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    v48 = *(a2 + 2);
    if (v48)
    {
      goto LABEL_96;
    }

    __break(1u);
    a2 = *(a1 + 40);
    if (!*(a2 + 2))
    {
      goto LABEL_109;
    }

    LOBYTE(v7) = v51;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v48 = *(a2 + 2);
      if (v48)
      {
        goto LABEL_96;
      }
    }

    else
    {
      a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
      v48 = *(a2 + 2);
      if (v48)
      {
        goto LABEL_96;
      }
    }

    __break(1u);
    a2 = *(a1 + 40);
  }

  while (!*(a2 + 2));
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v48 = *(a2 + 2);
    if (v48)
    {
LABEL_96:
      v49 = v48 - 1;
      v50 = *&a2[8 * v49 + 32];
      *(a2 + 2) = v49;
      *(a1 + 40) = a2;
      *(a1 + 16) = v50;
      goto LABEL_97;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    a2 = result;
    v48 = *(result + 16);
    if (v48)
    {
      goto LABEL_96;
    }
  }

  __break(1u);
  return result;
}

unint64_t ContentTransition.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v5 = static ContentTransition.default;
  v6 = dword_1ED536998 | (byte_1ED53699C << 32);
  v7 = byte_1ED53699D;
  v52 = byte_1ED53699E;
  v8 = a1[1];
  v9 = a1[2];
  isUniquelyReferenced_nonNull_native = static ContentTransition.default;
  v11 = v6;
  v12 = byte_1ED53699D;
  if (v8 >= v9)
  {
    goto LABEL_86;
  }

  outlined copy of ContentTransition.Storage(static ContentTransition.default, v6, byte_1ED53699D);
  while (1)
  {
    result = a1[3];
    if (result)
    {
      v14 = a1[4];
      if (v8 < v14)
      {
        goto LABEL_14;
      }

      if (v14 < v8)
      {
        goto LABEL_88;
      }

      a1[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of ContentTransition.Storage(v5, v6, v7);
    }

    if (result <= 7)
    {
      goto LABEL_88;
    }

LABEL_14:
    v15 = result >> 3;
    if (result >> 3 <= 2)
    {
      if (v15 != 1)
      {
        if (v15 == 2)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_88;
          }

          v16 = a1[5];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
          }

          v3 = *(v16 + 2);
          v17 = *(v16 + 3);
          if (v3 >= v17 >> 1)
          {
            v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v3 + 1, 1, v16);
          }

          *(v16 + 2) = v3 + 1;
          *&v16[8 * v3 + 32] = v9;
          a1[5] = v16;
          v18 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return outlined consume of ContentTransition.Storage(v5, v6, v7);
          }

          if ((v18 & 0x8000000000000000) == 0)
          {
            v19 = a1[1] + v18;
            if (v9 < v19)
            {
              goto LABEL_88;
            }

            a1[2] = v19;
            ContentTransition.CustomTransition.init(from:)(a1, &v49);
            v20 = a1[5];
            if (!*(v20 + 2))
            {
              goto LABEL_102;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v21 = *(v20 + 2);
              if (!v21)
              {
                goto LABEL_105;
              }
            }

            else
            {
              v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
              v21 = *(v20 + 2);
              if (!v21)
              {
                goto LABEL_105;
              }
            }

            v22 = v21 - 1;
            v9 = *&v20[8 * v22 + 32];
            *(v20 + 2) = v22;
            a1[5] = v20;
            a1[2] = v9;
            v3 = v49;
            v23 = v50 | (v51 << 32);
            result = outlined consume of ContentTransition.Storage(v5, v6, v7);
            v7 = 1;
            goto LABEL_5;
          }

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
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
          __break(1u);
LABEL_108:
          __break(1u);
          do
          {
            __break(1u);
            v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v45 = *(v3 + 16);
            if (v45)
            {
              goto LABEL_96;
            }

            __break(1u);
            v3 = a1[5];
            if (!*(v3 + 16))
            {
              goto LABEL_108;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v45 = *(v3 + 16);
              if (v45)
              {
                goto LABEL_96;
              }
            }

            else
            {
              v3 = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
              v45 = *(v3 + 16);
              if (v45)
              {
                goto LABEL_96;
              }
            }

            __break(1u);
            v3 = a1[5];
          }

          while (!*(v3 + 16));
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v45 = *(v3 + 16);
            if (v45)
            {
LABEL_96:
              v46 = v45 - 1;
              v47 = *(v3 + 8 * v46 + 32);
              *(v3 + 16) = v46;
              a1[5] = v3;
              a1[2] = v47;
              return outlined consume of ContentTransition.Storage(v5, v6, v7);
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
            v3 = result;
            v45 = *(result + 16);
            if (v45)
            {
              goto LABEL_96;
            }
          }

          __break(1u);
          return result;
        }

        goto LABEL_45;
      }

      if ((result & 7) != 2)
      {
        goto LABEL_88;
      }

      v35 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v35 + 2) + 1, 1, v35);
      }

      v3 = *(v35 + 2);
      v36 = *(v35 + 3);
      if (v3 >= v36 >> 1)
      {
        v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v3 + 1, 1, v35);
      }

      *(v35 + 2) = v3 + 1;
      *&v35[8 * v3 + 32] = v9;
      a1[5] = v35;
      v37 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of ContentTransition.Storage(v5, v6, v7);
      }

      if (v37 < 0)
      {
        goto LABEL_100;
      }

      v38 = a1[1] + v37;
      if (v9 < v38)
      {
        goto LABEL_88;
      }

      a1[2] = v38;
      ContentTransition.NamedTransition.init(from:)(a1, &v49);
      v39 = a1[5];
      if (!*(v39 + 16))
      {
        goto LABEL_101;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native)
      {
        v40 = *(v39 + 16);
        if (!v40)
        {
          goto LABEL_85;
        }

        goto LABEL_61;
      }

      isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew()(v39);
      v39 = isUniquelyReferenced_nonNull_native;
      v40 = *(isUniquelyReferenced_nonNull_native + 16);
      if (v40)
      {
LABEL_61:
        v41 = v40 - 1;
        v9 = *(v39 + 8 * v41 + 32);
        *(v39 + 16) = v41;
        a1[5] = v39;
        a1[2] = v9;
        v3 = v49;
        v23 = v50 | (v51 << 32);
        result = outlined consume of ContentTransition.Storage(v5, v6, v7);
        v7 = 0;
LABEL_5:
        v6 = v23;
        v5 = v3;
LABEL_6:
        v2 = 0;
        goto LABEL_7;
      }

LABEL_85:
      __break(1u);
LABEL_86:
      result = outlined copy of ContentTransition.Storage(isUniquelyReferenced_nonNull_native, v11, v12);
LABEL_87:
      v44 = v52 & 1;
      a1[3] = 0;
      *a2 = v5;
      *(a2 + 8) = v6;
      *(a2 + 12) = BYTE4(v6);
      *(a2 + 13) = v7;
      *(a2 + 14) = v44;
      return result;
    }

    if (v15 == 3)
    {
      break;
    }

    if (v15 == 4)
    {
      if ((result & 7) != 2)
      {
        goto LABEL_88;
      }

      v24 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v24 + 2) + 1, 1, v24);
      }

      v3 = *(v24 + 2);
      v25 = *(v24 + 3);
      if (v3 >= v25 >> 1)
      {
        v24 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v3 + 1, 1, v24);
      }

      *(v24 + 2) = v3 + 1;
      *&v24[8 * v3 + 32] = v9;
      a1[5] = v24;
      v26 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of ContentTransition.Storage(v5, v6, v7);
      }

      if (v26 < 0)
      {
        goto LABEL_99;
      }

      v27 = a1[1] + v26;
      if (v9 < v27)
      {
        goto LABEL_88;
      }

      a1[2] = v27;
      _SymbolEffect.ReplaceConfiguration.init(from:)(a1, &v49);
      v28 = a1[5];
      if (!*(v28 + 2))
      {
        goto LABEL_103;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v29 = *(v28 + 2);
        if (!v29)
        {
          goto LABEL_104;
        }
      }

      else
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
        v29 = *(v28 + 2);
        if (!v29)
        {
          goto LABEL_104;
        }
      }

      v30 = v29 - 1;
      v9 = *&v28[8 * v30 + 32];
      *(v28 + 2) = v30;
      a1[5] = v28;
      a1[2] = v9;
      v3 = v50;
      v31 = 0x100000000;
      if (!BYTE4(v49))
      {
        v31 = 0;
      }

      v32 = v31 | v49;
      result = outlined consume of ContentTransition.Storage(v5, v6, v7);
      v7 = 2;
      v6 = v3;
      v5 = v32;
      goto LABEL_6;
    }

LABEL_45:
    v33 = result & 7;
    if (v33 > 1)
    {
      if (v33 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of ContentTransition.Storage(v5, v6, v7);
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_107;
        }

        v34 = a1[1] + result;
        if (v9 < v34)
        {
          goto LABEL_88;
        }
      }

      else
      {
        if (v33 != 5)
        {
          goto LABEL_88;
        }

        v34 = a1[1] + 4;
        if (v9 < v34)
        {
          goto LABEL_88;
        }
      }

      goto LABEL_79;
    }

    if ((result & 7) != 0)
    {
      if (v33 != 1)
      {
        goto LABEL_88;
      }

      v34 = a1[1] + 8;
      if (v9 < v34)
      {
        goto LABEL_88;
      }

LABEL_79:
      a1[1] = v34;
      goto LABEL_7;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of ContentTransition.Storage(v5, v6, v7);
    }

LABEL_7:
    v8 = a1[1];
    if (v8 >= v9)
    {
      goto LABEL_87;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_68:
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of ContentTransition.Storage(v5, v6, v7);
    }

    v52 = result != 0;
    goto LABEL_7;
  }

  if ((result & 7) != 2)
  {
    goto LABEL_88;
  }

  v42 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return outlined consume of ContentTransition.Storage(v5, v6, v7);
  }

  if (v42 < 0)
  {
    goto LABEL_106;
  }

  v43 = a1[1] + v42;
  if (v9 >= v43)
  {
    a1[3] = 24;
    a1[4] = v43;
    goto LABEL_68;
  }

LABEL_88:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
  return outlined consume of ContentTransition.Storage(v5, v6, v7);
}

unint64_t ContentTransition.NamedTransition.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 < v6)
  {
    v7 = 0;
    v8 = 3;
    v50 = 2;
    v9 = 0x8000000000;
    while (1)
    {
      result = v3[3];
      if (result)
      {
        v10 = v3[4];
        if (v5 < v10)
        {
          goto LABEL_13;
        }

        if (v10 < v5)
        {
          goto LABEL_145;
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
        goto LABEL_145;
      }

LABEL_13:
      v11 = result >> 3;
      if (result >> 3 > 4)
      {
        if (result >> 3 > 6)
        {
          if (v11 == 7)
          {
            if ((result & 7) != 0)
            {
              if ((result & 7) != 2)
              {
                goto LABEL_145;
              }

              result = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_163;
              }

              v41 = v3[1] + result;
              if (v6 < v41)
              {
LABEL_145:
                lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
                swift_allocError();
                return swift_willThrow();
              }

              v3[3] = 56;
              v3[4] = v41;
            }

            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            v50 = result != 0;
            goto LABEL_6;
          }

          if (v11 == 8)
          {
            if ((result & 7) != 2)
            {
              goto LABEL_145;
            }

            v23 = v3[5];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
            }

            v25 = *(v23 + 2);
            v24 = *(v23 + 3);
            if (v25 >= v24 >> 1)
            {
              v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
            }

            *(v23 + 2) = v25 + 1;
            *&v23[8 * v25 + 32] = v6;
            v3[5] = v23;
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_156;
            }

            v26 = v3[1] + result;
            if (v6 < v26)
            {
              goto LABEL_145;
            }

            v3[2] = v26;
            ContentTransition.Style.init(from:)(v3, &v52);
            v27 = v3[5];
            if (!*(v27 + 16))
            {
              goto LABEL_158;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v27);
              v27 = result;
            }

            v28 = *(v27 + 16);
            if (!v28)
            {
              goto LABEL_160;
            }

            v29 = v28 - 1;
            v6 = *(v27 + 8 * v29 + 32);
            *(v27 + 16) = v29;
            v3[5] = v27;
            v3[2] = v6;
            v8 = v52;
            goto LABEL_6;
          }
        }

        else
        {
          if (v11 == 5)
          {
            if ((result & 7) != 2)
            {
              goto LABEL_145;
            }

            v32 = v3[5];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v32 + 2) + 1, 1, v32);
            }

            v34 = *(v32 + 2);
            v33 = *(v32 + 3);
            if (v34 >= v33 >> 1)
            {
              v32 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1, v32);
            }

            *(v32 + 2) = v34 + 1;
            *&v32[8 * v34 + 32] = v6;
            v3[5] = v32;
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_155;
            }

            v35 = v3[1] + result;
            if (v6 < v35)
            {
              goto LABEL_145;
            }

            v3[2] = v35;
            closure #1 in ContentTransition.NamedTransition.init(from:)(v3, &v51);
            v36 = v3[5];
            if (!*(v36 + 16))
            {
              goto LABEL_159;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if (result)
            {
              v37 = *(v36 + 16);
              if (!v37)
              {
                goto LABEL_161;
              }
            }

            else
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v36);
              v36 = result;
              v37 = *(result + 16);
              if (!v37)
              {
                goto LABEL_161;
              }
            }

            v7 = 0;
            v38 = v37 - 1;
            v6 = *(v36 + 8 * v38 + 32);
            *(v36 + 16) = v38;
            v3[5] = v36;
            v3[2] = v6;
            v9 = v51;
            goto LABEL_6;
          }

          if (v11 == 6)
          {
            if ((result & 7) != 2)
            {
              goto LABEL_145;
            }

            v14 = v3[5];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 2) + 1, 1, v14);
            }

            v16 = *(v14 + 2);
            v15 = *(v14 + 3);
            if (v16 >= v15 >> 1)
            {
              v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v15 > 1), v16 + 1, 1, v14);
            }

            *(v14 + 2) = v16 + 1;
            *&v14[8 * v16 + 32] = v6;
            v3[5] = v14;
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              __break(1u);
LABEL_155:
              __break(1u);
LABEL_156:
              __break(1u);
LABEL_157:
              __break(1u);
LABEL_158:
              __break(1u);
LABEL_159:
              __break(1u);
LABEL_160:
              __break(1u);
LABEL_161:
              __break(1u);
LABEL_162:
              __break(1u);
LABEL_163:
              __break(1u);
LABEL_164:
              __break(1u);
LABEL_165:
              __break(1u);
LABEL_166:
              __break(1u);
LABEL_167:
              __break(1u);
LABEL_168:
              __break(1u);
              __break(1u);
LABEL_169:
              __break(1u);
              do
              {
                __break(1u);
                result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
                a2 = result;
                v44 = *(result + 16);
                if (v44)
                {
                  goto LABEL_153;
                }

                __break(1u);
                a2 = v3[5];
                if (!*(a2 + 16))
                {
                  goto LABEL_169;
                }

                result = swift_isUniquelyReferenced_nonNull_native();
                if (result)
                {
                  v44 = *(a2 + 16);
                  if (v44)
                  {
                    goto LABEL_153;
                  }
                }

                else
                {
                  result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
                  a2 = result;
                  v44 = *(result + 16);
                  if (v44)
                  {
                    goto LABEL_153;
                  }
                }

                __break(1u);
                a2 = v3[5];
              }

              while (!*(a2 + 16));
              result = swift_isUniquelyReferenced_nonNull_native();
              if (result)
              {
                v44 = *(a2 + 16);
                if (v44)
                {
LABEL_153:
                  v45 = v44 - 1;
                  v46 = *(a2 + 8 * v45 + 32);
                  *(a2 + 16) = v45;
                  v3[5] = a2;
                  v3[2] = v46;
                  return result;
                }
              }

              else
              {
                result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
                a2 = result;
                v44 = *(result + 16);
                if (v44)
                {
                  goto LABEL_153;
                }
              }

              __break(1u);
              return result;
            }

            v17 = v3[1] + result;
            if (v6 < v17)
            {
              goto LABEL_145;
            }

            v3[2] = v17;
            ContentTransition.NumericTextConfiguration.init(from:)(v3, &v47);
            v18 = v3[5];
            if (!*(v18 + 16))
            {
              goto LABEL_157;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if (result)
            {
              v19 = *(v18 + 16);
              if (!v19)
              {
                goto LABEL_162;
              }
            }

            else
            {
              result = specialized _ArrayBuffer._consumeAndCreateNew()(v18);
              v18 = result;
              v19 = *(result + 16);
              if (!v19)
              {
                goto LABEL_162;
              }
            }

            v20 = v19 - 1;
            v6 = *(v18 + 8 * v20 + 32);
            *(v18 + 16) = v20;
            v3[5] = v18;
            v3[2] = v6;
            v7 = v48 | (v49 << 16);
            v9 = v47 & 0xFFFFFF01FFFFFFFFLL | 0x4000000000;
            goto LABEL_6;
          }
        }

LABEL_85:
        v42 = result & 7;
        if (v42 > 1)
        {
          if (v42 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_165;
            }

            v43 = v3[1] + result;
            if (v6 < v43)
            {
              goto LABEL_145;
            }
          }

          else
          {
            if (v42 != 5)
            {
              goto LABEL_145;
            }

            v43 = v3[1] + 4;
            if (v6 < v43)
            {
              goto LABEL_145;
            }
          }

          goto LABEL_5;
        }

        if ((result & 7) != 0)
        {
          if (v42 != 1)
          {
            goto LABEL_145;
          }

          v43 = v3[1] + 8;
          if (v6 < v43)
          {
            goto LABEL_145;
          }

LABEL_5:
          v3[1] = v43;
          goto LABEL_6;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        goto LABEL_6;
      }

      if (result >> 3 > 2)
      {
        if (v11 == 3)
        {
          v39 = result & 7;
          if (v39 > 1)
          {
            if (v39 == 2)
            {
              result = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_167;
              }

              v40 = v3[1] + result;
            }

            else
            {
              if (v39 != 5)
              {
                goto LABEL_145;
              }

              v40 = v3[1] + 4;
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

              v7 = 0;
              v9 = 0x8000000003;
              goto LABEL_6;
            }

            if (v39 != 1)
            {
              goto LABEL_145;
            }

            v40 = v3[1] + 8;
          }

          if (v6 < v40)
          {
            goto LABEL_145;
          }

          v7 = 0;
          v3[1] = v40;
          v9 = 0x8000000003;
        }

        else
        {
          if (v11 != 4)
          {
            goto LABEL_85;
          }

          v21 = result & 7;
          if (v21 > 1)
          {
            if (v21 == 2)
            {
              result = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_164;
              }

              v22 = v3[1] + result;
            }

            else
            {
              if (v21 != 5)
              {
                goto LABEL_145;
              }

              v22 = v3[1] + 4;
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

              v7 = 0;
              v9 = 0x8000000004;
              goto LABEL_6;
            }

            if (v21 != 1)
            {
              goto LABEL_145;
            }

            v22 = v3[1] + 8;
          }

          if (v6 < v22)
          {
            goto LABEL_145;
          }

          v7 = 0;
          v3[1] = v22;
          v9 = 0x8000000004;
        }
      }

      else
      {
        if (v11 == 1)
        {
          v30 = result & 7;
          if (v30 > 1)
          {
            if (v30 == 2)
            {
              result = ProtobufDecoder.decodeVarint()();
              if (v2)
              {
                return result;
              }

              if ((result & 0x8000000000000000) != 0)
              {
                goto LABEL_166;
              }

              v31 = v3[1] + result;
            }

            else
            {
              if (v30 != 5)
              {
                goto LABEL_145;
              }

              v31 = v3[1] + 4;
            }

LABEL_113:
            if (v6 < v31)
            {
              goto LABEL_145;
            }

            v7 = 0;
            v3[1] = v31;
          }

          else
          {
            if ((result & 7) != 0)
            {
              if (v30 != 1)
              {
                goto LABEL_145;
              }

              v31 = v3[1] + 8;
              goto LABEL_113;
            }

            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            v7 = 0;
          }

          v9 = 0x8000000001;
          goto LABEL_6;
        }

        if (v11 != 2)
        {
          goto LABEL_85;
        }

        v12 = result & 7;
        if (v12 > 1)
        {
          if (v12 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_168;
            }

            v13 = v3[1] + result;
          }

          else
          {
            if (v12 != 5)
            {
              goto LABEL_145;
            }

            v13 = v3[1] + 4;
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

            v7 = 0;
            v9 = 0x8000000002;
            goto LABEL_6;
          }

          if (v12 != 1)
          {
            goto LABEL_145;
          }

          v13 = v3[1] + 8;
        }

        if (v6 < v13)
        {
          goto LABEL_145;
        }

        v7 = 0;
        v3[1] = v13;
        v9 = 0x8000000002;
      }

LABEL_6:
      v5 = v3[1];
      if (v5 >= v6)
      {
        goto LABEL_4;
      }
    }
  }

  v7 = 0;
  v8 = 3;
  v50 = 2;
  v9 = 0x8000000000;
LABEL_4:
  v3[3] = 0;
  *a2 = v9;
  *(a2 + 8) = v7;
  *(a2 + 10) = BYTE2(v7);
  *(a2 + 11) = v50;
  *(a2 + 12) = v8;
  return result;
}

uint64_t _s7SwiftUI15ProtobufDecoderV19decodeAttachedValue2as9generatorxxm_x10Foundation4DataVKXEtKlFAA19CodablePlatformFontV_Tt0g503_s7a4UI15cd9V21decodef42MessagexyKAA0c9DecodableG0RzAA0c9Encodableu18RzlFx10Foundation4k11VKXEfU_AA19lmN5V_TG5SDys17CodingUserInfoKeyVypGTf1cn_n(uint64_t a1, uint64_t a2)
{
  v66 = a2;
  v5 = type metadata accessor for Data.Deallocator();
  MEMORY[0x1EEE9AC00](v5);
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  if (v9 >= v10)
  {
    *(a1 + 24) = 0;
LABEL_4:
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    goto LABEL_72;
  }

  v64 = (&v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v65 = v6;
  v2 = 0;
  v63 = *MEMORY[0x1E6969028];
  v62 = (v7 + 104);
  do
  {
    v11 = *(a1 + 24);
    if (v11)
    {
      v12 = *(a1 + 32);
      if (v9 < v12)
      {
        goto LABEL_14;
      }

      if (v12 < v9)
      {
        goto LABEL_68;
      }

      *(a1 + 24) = 0;
    }

    v11 = ProtobufDecoder.decodeVarint()();
    if (v3)
    {
      goto LABEL_69;
    }

    if (v11 < 8)
    {
      goto LABEL_68;
    }

LABEL_14:
    v13 = v11 & 7;
    if (v11 >> 3 == 1)
    {
      if ((v11 & 7) != 0)
      {
        if (v13 != 2)
        {
          goto LABEL_68;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_69;
        }

        if (result < 0)
        {
          goto LABEL_76;
        }

        v23 = *(a1 + 8) + result;
        if (v10 < v23)
        {
LABEL_68:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
LABEL_69:

          return v2;
        }

        *(a1 + 24) = 8;
        *(a1 + 32) = v23;
      }

      v24 = ProtobufDecoder.decodeVarint()();
      if (v3)
      {
        goto LABEL_69;
      }

      v25 = v24;
      v26 = *(a1 + 48);
      if (one-time initialization token for readerKey != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for CodingUserInfoKey();
      v28 = __swift_project_value_buffer(v27, static ArchiveReader.readerKey);
      if (*(v26 + 16))
      {
        v29 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
        if (v30)
        {
          outlined init with copy of Any(*(v26 + 56) + 32 * v29, &v68);
          type metadata accessor for ArchiveReader();
          if (swift_dynamicCast())
          {
            v31 = v67;
            if (one-time initialization token for cacheKey != -1)
            {
              swift_once();
            }

            v32 = __swift_project_value_buffer(v27, static ArchiveReader.cacheKey);
            if (*(v26 + 16) && (v33 = specialized __RawDictionaryStorage.find<A>(_:)(v32), (v34 & 1) != 0) && (outlined init with copy of Any(*(v26 + 56) + 32 * v33, &v68), type metadata accessor for MutableBox<[Int : Any]>(0, &lazy cache variable for type metadata for MutableBox<[Int : Any]>, type metadata accessor for [Int : Any], type metadata accessor for MutableBox), result = swift_dynamicCast(), (result & 1) != 0))
            {
              if (v25 < 0)
              {
                goto LABEL_78;
              }

              v35 = v67;
              swift_beginAccess();
              v36 = *(v35 + 16);
              if (*(v36 + 16) && (v37 = specialized __RawDictionaryStorage.find<A>(_:)(v25), (v38 & 1) != 0))
              {
                outlined init with copy of Any(*(v36 + 56) + 32 * v37, &v68);
                swift_endAccess();

                outlined init with take of Any(&v68, &v67);
                if (swift_dynamicCast())
                {
                  v2 = v71;
                }

                else
                {
                  v2 = 0;
                }
              }

              else
              {
                v61 = v35;
                result = swift_endAccess();
                v44 = *(v31 + 16);
                if (!v44)
                {
                  goto LABEL_81;
                }

                v45 = (*(v31 + 32) + 16 * v25);
                v46 = *v45;
                if (*v45 < 0)
                {
                  goto LABEL_79;
                }

                v47 = v45[1];

                if (v47 < 0)
                {
                  goto LABEL_80;
                }

                v48 = swift_allocObject();
                *(v48 + 16) = v31;
                v60 = v31;
                v50 = v64;
                v49 = v65;
                *v64 = OptionalAnchorValueBox.__ivar_destroyer;
                *(v50 + 8) = v48;
                (*v62)(v50, v63, v49);
                v51 = specialized Data.init(bytesNoCopy:count:deallocator:)(v44 + v46, v47, v50);
                v53 = v52;
                outlined copy of Data._Representation(v51, v52);
                v59 = v53;
                ProtobufDecoder.init(_:)(v51, v53, &v68);
                v54 = v66;

                v70 = v54;
                v55 = specialized CodablePlatformFont.init(from:)(&v68);
                v56 = v68;

                outlined consume of Data._Representation(v51, v59);
                v69 = &type metadata for CodablePlatformFont;
                *&v68 = v55;
                swift_beginAccess();
                v57 = v55;
                specialized Dictionary.subscript.setter(&v68, v25);
                swift_endAccess();

                v2 = v55;
              }
            }

            else
            {
            }
          }
        }
      }

      goto LABEL_6;
    }

    if (v11 >> 3 == 2)
    {
      if (v13 != 2)
      {
        goto LABEL_68;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v3)
      {
        goto LABEL_69;
      }

      v15 = result;
      if (result < 0)
      {
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
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        return result;
      }

      v16 = *(a1 + 8);
      if (v10 < v16 + result)
      {
        goto LABEL_68;
      }

      *(a1 + 8) = v16 + result;
      if (result)
      {
        v17 = v16 - [*a1 bytes];
        result = static Data._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;
        if (__OFADD__(v17, v15))
        {
          goto LABEL_74;
        }

        if (v17 + v15 < v17)
        {
          goto LABEL_75;
        }

        v20 = result;
        v15 = Data._Representation.subscript.getter();
        v22 = v21;
        outlined consume of Data._Representation(v20, v19);
      }

      else
      {
        v22 = 0xC000000000000000;
      }

      v40 = v2;
      outlined copy of Data._Representation(v15, v22);
      ProtobufDecoder.init(_:)(v15, v22, &v68);
      v41 = v66;

      v70 = v41;
      v42 = specialized CodablePlatformFont.init(from:)(&v68);
      v43 = v68;

      outlined consume of Data._Representation(v15, v22);
      v2 = v42;
LABEL_6:
      v3 = 0;
      goto LABEL_7;
    }

    if ((v11 & 7) > 1)
    {
      if (v13 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_69;
        }

        if (result < 0)
        {
          goto LABEL_77;
        }

        v39 = *(a1 + 8) + result;
        if (v10 < v39)
        {
          goto LABEL_68;
        }
      }

      else
      {
        if (v13 != 5)
        {
          goto LABEL_68;
        }

        v39 = *(a1 + 8) + 4;
        if (v10 < v39)
        {
          goto LABEL_68;
        }
      }

      goto LABEL_63;
    }

    if ((v11 & 7) != 0)
    {
      if (v13 != 1)
      {
        goto LABEL_68;
      }

      v39 = *(a1 + 8) + 8;
      if (v10 < v39)
      {
        goto LABEL_68;
      }

LABEL_63:
      *(a1 + 8) = v39;
      goto LABEL_7;
    }

    ProtobufDecoder.decodeVarint()();
    if (v3)
    {
      goto LABEL_69;
    }

LABEL_7:
    v9 = *(a1 + 8);
  }

  while (v9 < v10);
  *(a1 + 24) = 0;
  if (!v2)
  {
    goto LABEL_4;
  }

LABEL_72:

  return v2;
}

uint64_t specialized _NativeDictionary.ensureUnique(isUnique:capacity:)(char a1, uint64_t a2, void (*a3)(uint64_t, uint64_t), void (*a4)(void))
{
  v5 = *(*v4 + 24);
  if (v5 >= a2 && (a1 & 1) != 0)
  {
    return 0;
  }

  if ((a1 & 1) == 0)
  {
    if (v5 < a2)
    {
      v6 = a2;
      v7 = 0;
      goto LABEL_9;
    }

    a4();
    return 0;
  }

  v6 = a2;
  v7 = 1;
LABEL_9:
  a3(v6, v7);
  return 1;
}

uint64_t ProtobufDecoder.preferredCompositionLanguage.getter()
{
  v1 = *(v0 + 48);
  if (one-time initialization token for preferredCompositionLanguage != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for CodingUserInfoKey();
  v3 = __swift_project_value_buffer(v2, static ArchivedViewCore.preferredCompositionLanguage);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v4 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(v1 + 56) + 32 * v4, v8);
  type metadata accessor for CTCompositionLanguage(0);
  result = swift_dynamicCast();
  if (result)
  {
    return v7;
  }

  return result;
}

unint64_t DisplayList.Item.init(from:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v3 = result;
  v59 = *MEMORY[0x1E69E9840];
  v5 = ++static DisplayList.Version.lastValue;
  v6 = *(result + 8);
  v7 = *(result + 16);
  if (v6 >= v7)
  {
    v8 = 0;
    v50 = 0u;
    v51 = xmmword_18DDD8CE0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
LABEL_4:
    v3[3] = 0;
    *a2 = v12;
    *(a2 + 1) = v11;
    *(a2 + 2) = v10;
    *(a2 + 3) = v9;
    *(a2 + 4) = v5;
    *(a2 + 40) = v50;
    *(a2 + 56) = v51;
    *(a2 + 18) = v8;
    return result;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v50 = 0u;
  v51 = xmmword_18DDD8CE0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v16 = v3[4];
      if (v6 < v16)
      {
        goto LABEL_14;
      }

      if (v16 < v6)
      {
        goto LABEL_97;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_109;
    }

    if (result <= 7)
    {
      goto LABEL_97;
    }

LABEL_14:
    v17 = result >> 3;
    if (result >> 3 <= 2)
    {
      break;
    }

    switch(v17)
    {
      case 3uLL:
        if ((result & 7) != 2)
        {
          goto LABEL_97;
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
        *&v28[8 * v30 + 32] = v7;
        v3[5] = v28;
        v31 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_109;
        }

        if (v31 < 0)
        {
          goto LABEL_112;
        }

        v32 = v3[1] + v31;
        if (v7 < v32)
        {
          goto LABEL_97;
        }

        v3[2] = v32;
        v53 = 0u;
        v54 = 0u;
        closure #1 in EdgeInsets.init(from:)(&v53, v3, &v52);
        v33 = v3[5];
        if (!*(v33 + 16))
        {
          goto LABEL_117;
        }

        v11 = *(&v53 + 1);
        v12 = v53;
        v9 = *(&v54 + 1);
        v10 = v54;
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v34 = *(v33 + 16);
          if (!v34)
          {
            goto LABEL_120;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v33);
          v33 = result;
          v34 = *(result + 16);
          if (!v34)
          {
            goto LABEL_120;
          }
        }

        v35 = v34 - 1;
        v7 = *(v33 + 8 * v35 + 32);
        *(v33 + 16) = v35;
        v3[5] = v33;
        v3[2] = v7;
        goto LABEL_7;
      case 4uLL:
        if ((result & 7) != 0)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_97;
          }

          v36 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_109;
          }

          if (v36 < 0)
          {
            goto LABEL_121;
          }

          v37 = v3[1] + v36;
          if (v7 < v37)
          {
            goto LABEL_97;
          }

          v3[3] = 32;
          v3[4] = v37;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_109;
        }

        v8 = result;
        goto LABEL_7;
      case 5uLL:
        if ((result & 7) != 2)
        {
          goto LABEL_97;
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
        *&v18[8 * v20 + 32] = v7;
        v3[5] = v18;
        v21 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_109;
        }

        if (v21 < 0)
        {
          goto LABEL_113;
        }

        v22 = v3[1] + v21;
        if (v7 < v22)
        {
          goto LABEL_97;
        }

        v3[2] = v22;
        closure #3 in DisplayList.Item.init(from:)(v3, &v53);
        v13 = v3[5];
        if (!*(v13 + 2))
        {
          goto LABEL_116;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v14 = *(v13 + 2);
          if (!v14)
          {
            goto LABEL_118;
          }
        }

        else
        {
          v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
          v14 = *(v13 + 2);
          if (!v14)
          {
            goto LABEL_118;
          }
        }

LABEL_6:
        v15 = v14 - 1;
        v7 = *&v13[8 * v15 + 32];
        *(v13 + 2) = v15;
        v3[5] = v13;
        v3[2] = v7;
        v48 = v53;
        v49 = v54;
        result = outlined consume of DisplayList.Item.Value(v50, *(&v50 + 1), v51, DWORD2(v51));
        v50 = v48;
        v51 = v49;
        v2 = 0;
        goto LABEL_7;
    }

LABEL_76:
    v43 = result & 7;
    if (v43 > 1)
    {
      if (v43 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_109;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_122;
        }

        v44 = v3[1] + result;
        if (v7 < v44)
        {
          goto LABEL_97;
        }
      }

      else
      {
        if (v43 != 5)
        {
          goto LABEL_97;
        }

        v44 = v3[1] + 4;
        if (v7 < v44)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_90;
    }

    if ((result & 7) != 0)
    {
      if (v43 != 1)
      {
        goto LABEL_97;
      }

      v44 = v3[1] + 8;
      if (v7 < v44)
      {
        goto LABEL_97;
      }

LABEL_90:
      v3[1] = v44;
      goto LABEL_7;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_109;
    }

LABEL_7:
    v6 = v3[1];
    if (v6 >= v7)
    {
      goto LABEL_4;
    }
  }

  if (v17 == 1)
  {
    if ((result & 7) != 2)
    {
      goto LABEL_97;
    }

    v38 = v3[5];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v38 + 2) + 1, 1, v38);
    }

    v40 = *(v38 + 2);
    v39 = *(v38 + 3);
    if (v40 >= v39 >> 1)
    {
      v38 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1, v38);
    }

    *(v38 + 2) = v40 + 1;
    *&v38[8 * v40 + 32] = v7;
    v3[5] = v38;
    v41 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_109;
    }

    if (v41 < 0)
    {
      goto LABEL_111;
    }

    v42 = v3[1] + v41;
    if (v7 < v42)
    {
      goto LABEL_97;
    }

    v3[2] = v42;
    closure #1 in DisplayList.Item.init(from:)(v3, &v53);
    v13 = v3[5];
    if (!*(v13 + 2))
    {
      goto LABEL_115;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v14 = *(v13 + 2);
      if (!v14)
      {
        goto LABEL_119;
      }
    }

    else
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      v14 = *(v13 + 2);
      if (!v14)
      {
        goto LABEL_119;
      }
    }

    goto LABEL_6;
  }

  if (v17 != 2)
  {
    goto LABEL_76;
  }

  if ((result & 7) != 2)
  {
    goto LABEL_97;
  }

  v23 = v3[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v23 + 2) + 1, 1, v23);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  *&v23[8 * v25 + 32] = v7;
  v3[5] = v23;
  v26 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    goto LABEL_109;
  }

  if ((v26 & 0x8000000000000000) == 0)
  {
    v27 = v3[1] + v26;
    if (v7 < v27)
    {
      goto LABEL_97;
    }

    v3[2] = v27;
    closure #2 in DisplayList.Item.init(from:)(v3, &v53);
    v13 = v3[5];
    if (!*(v13 + 2))
    {
      goto LABEL_114;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v14 = *(v13 + 2);
      if (!v14)
      {
        goto LABEL_96;
      }
    }

    else
    {
      v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
      v14 = *(v13 + 2);
      if (!v14)
      {
LABEL_96:
        __break(1u);
LABEL_97:
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        swift_willThrow();
        goto LABEL_109;
      }
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
  do
  {
    __break(1u);
    a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
    v45 = *(a2 + 2);
    if (v45)
    {
      goto LABEL_108;
    }

    __break(1u);
    a2 = v3[5];
    if (!*(a2 + 2))
    {
      goto LABEL_123;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v45 = *(a2 + 2);
      if (v45)
      {
        goto LABEL_108;
      }
    }

    else
    {
      a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
      v45 = *(a2 + 2);
      if (v45)
      {
        goto LABEL_108;
      }
    }

    __break(1u);
    a2 = v3[5];
    if (!*(a2 + 2))
    {
      goto LABEL_124;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v45 = *(a2 + 2);
      if (v45)
      {
        goto LABEL_108;
      }
    }

    else
    {
      a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
      v45 = *(a2 + 2);
      if (v45)
      {
        goto LABEL_108;
      }
    }

    __break(1u);
    a2 = v3[5];
  }

  while (!*(a2 + 2));
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v45 = *(a2 + 2);
    if (v45)
    {
      goto LABEL_108;
    }

LABEL_132:
    __break(1u);
  }

  a2 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v45 = *(a2 + 2);
  if (!v45)
  {
    goto LABEL_132;
  }

LABEL_108:
  v46 = v45 - 1;
  v47 = *&a2[8 * v46 + 32];
  *(a2 + 2) = v46;
  v3[5] = a2;
  v3[2] = v47;
LABEL_109:
  *&v53 = v12;
  *(&v53 + 1) = v11;
  *&v54 = v10;
  *(&v54 + 1) = v9;
  v55 = v5;
  v56 = v50;
  v57 = v51;
  v58 = v8;
  return outlined destroy of DisplayList.Item(&v53);
}

uint64_t closure #1 in DisplayList.Effect.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    goto LABEL_65;
  }

  v50 = 0;
  v51 = 0;
  v6 = 0;
  v54 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 6;
  v10 = 1;
  while (1)
  {
    v11 = a1[3];
    if (v11)
    {
      v12 = a1[4];
      if (v4 < v12)
      {
        goto LABEL_11;
      }

      if (v12 < v4)
      {
        goto LABEL_67;
      }

      a1[3] = 0;
    }

    v11 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of Path.Storage(v51, v54, v7, v8, v9);
    }

    if (v11 < 8)
    {
      goto LABEL_67;
    }

LABEL_11:
    v13 = v11 >> 3;
    v14 = v11 & 7;
    if (v11 >> 3 == 3)
    {
      break;
    }

    if (v13 == 2)
    {
      if (v14 != 2)
      {
        goto LABEL_67;
      }

      v6 = v2;
      v26 = a1[5];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v26 + 2) + 1, 1, v26);
      }

      v28 = *(v26 + 2);
      v27 = *(v26 + 3);
      if (v28 >= v27 >> 1)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v26);
      }

      *(v26 + 2) = v28 + 1;
      *&v26[8 * v28 + 32] = v5;
      a1[5] = v26;
      v29 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of Path.Storage(v51, v54, v7, v8, v9);
      }

      if (v29 < 0)
      {
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
          v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v42 = *(v7 + 2);
          if (v42)
          {
            goto LABEL_72;
          }

          __break(1u);
          v6 = v7;
          v7 = a1[5];
        }

        while (!*(v7 + 2));
        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          v42 = *(v7 + 2);
          if (v42)
          {
LABEL_72:
            v43 = v42 - 1;
            v44 = *&v7[8 * v43 + 32];
            *(v7 + 2) = v43;
            result = outlined consume of Path.Storage(v51, v54, v6, v8, v9);
            a1[5] = v7;
            a1[2] = v44;
            return result;
          }
        }

        else
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
          v7 = result;
          v42 = *(result + 16);
          if (v42)
          {
            goto LABEL_72;
          }
        }

        __break(1u);
        return result;
      }

      v30 = a1[1] + v29;
      if (v5 < v30)
      {
        goto LABEL_67;
      }

      a1[2] = v30;
      v31 = specialized FillStyle.init(from:)(a1);
      v32 = a1[5];
      if (!*(v32 + 2))
      {
        goto LABEL_76;
      }

      v6 = v31;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v33 = *(v32 + 2);
        if (!v33)
        {
          goto LABEL_77;
        }
      }

      else
      {
        v32 = specialized _ArrayBuffer._consumeAndCreateNew()(v32);
        v33 = *(v32 + 2);
        if (!v33)
        {
          goto LABEL_77;
        }
      }

      v34 = v33 - 1;
      v5 = *&v32[8 * v34 + 32];
      *(v32 + 2) = v34;
      v10 = (v6 >> 8) & 1;
      a1[5] = v32;
      a1[2] = v5;
    }

    else
    {
      if (v13 == 1)
      {
        if (v14 != 2)
        {
          goto LABEL_67;
        }

        v48 = v6;
        v6 = v2;
        v15 = a1[5];
        v47 = v10;
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
        *&v15[8 * v17 + 32] = v5;
        a1[5] = v15;
        v18 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return outlined consume of Path.Storage(v51, v54, v7, v8, v9);
        }

        if (v18 < 0)
        {
          goto LABEL_74;
        }

        v19 = a1[1] + v18;
        if (v5 < v19)
        {
          goto LABEL_67;
        }

        a1[2] = v19;
        specialized Path.init(from:)(a1, v52);
        v20 = a1[5];
        if (!*(v20 + 2))
        {
          goto LABEL_75;
        }

        v21 = v7;
        v45 = v8;
        v46 = v9;
        v22 = v52[0];
        v23 = v52[1];
        v7 = v52[2];
        v8 = v52[3];
        v9 = v53;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v24 = *(v20 + 2);
          if (!v24)
          {
            goto LABEL_64;
          }

          goto LABEL_25;
        }

        v20 = specialized _ArrayBuffer._consumeAndCreateNew()(v20);
        v24 = *(v20 + 2);
        if (v24)
        {
LABEL_25:
          v25 = v24 - 1;
          v5 = *&v20[8 * v25 + 32];
          *(v20 + 2) = v25;
          outlined consume of Path.Storage(v51, v54, v21, v45, v46);
          v51 = v22;
          a1[5] = v20;
          a1[2] = v5;
          v54 = v23;
          v10 = v47;
          v6 = v48;
          goto LABEL_4;
        }

LABEL_64:
        __break(1u);
LABEL_65:
        v50 = 0;
        v51 = 0;
        LOBYTE(v6) = 0;
        v54 = 0;
        v7 = 0;
        v8 = 0;
        LOBYTE(v10) = 1;
        v9 = 6;
LABEL_66:
        a1[3] = 0;
        result = swift_allocObject();
        v41 = v54;
        *(result + 16) = v51;
        *(result + 24) = v41;
        *(result + 32) = v7;
        *(result + 40) = v8;
        *(result + 48) = v9;
        *(result + 49) = v6 & 1;
        *(result + 50) = v10 & 1;
        *(result + 52) = v50;
        *a2 = result;
        *(a2 + 8) = 0;
        *(a2 + 12) = 6;
        return result;
      }

      if ((v11 & 7) > 1)
      {
        if (v14 == 2)
        {
          v39 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return outlined consume of Path.Storage(v51, v54, v7, v8, v9);
          }

          if (v39 < 0)
          {
            goto LABEL_79;
          }

          v38 = a1[1] + v39;
          if (v5 < v38)
          {
            goto LABEL_67;
          }
        }

        else
        {
          if (v14 != 5)
          {
            goto LABEL_67;
          }

          v38 = a1[1] + 4;
          if (v5 < v38)
          {
            goto LABEL_67;
          }
        }

        goto LABEL_3;
      }

      if ((v11 & 7) != 0)
      {
        if (v14 != 1)
        {
          goto LABEL_67;
        }

        v38 = a1[1] + 8;
        if (v5 < v38)
        {
          goto LABEL_67;
        }

LABEL_3:
        a1[1] = v38;
        goto LABEL_4;
      }

      ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return outlined consume of Path.Storage(v51, v54, v7, v8, v9);
      }
    }

LABEL_4:
    v4 = a1[1];
    if (v4 >= v5)
    {
      goto LABEL_66;
    }
  }

  if ((v11 & 7) == 0)
  {
LABEL_44:
    v37 = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return outlined consume of Path.Storage(v51, v54, v7, v8, v9);
    }

    v50 = v37;
    goto LABEL_4;
  }

  if (v14 != 2)
  {
    goto LABEL_67;
  }

  v35 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return outlined consume of Path.Storage(v51, v54, v7, v8, v9);
  }

  if (v35 < 0)
  {
    goto LABEL_78;
  }

  v36 = a1[1] + v35;
  if (v5 >= v36)
  {
    a1[3] = 24;
    a1[4] = v36;
    goto LABEL_44;
  }

LABEL_67:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
  return outlined consume of Path.Storage(v51, v54, v7, v8, v9);
}

uint64_t specialized project #1 <A>(type:) in CodableViewFactory.init(from:)@<X0>(__int128 *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t *a6@<X8>)
{
  v15 = *a1;
  v17 = *a1;
  swift_beginAccess();
  v10 = *a2;
  v11 = a2[1];
  a6[3] = a3;
  a6[4] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a6);
  v13 = v15;

  outlined copy of Data._Representation(v10, v11);
  ProtobufDecoder.value<A>(fromBinaryPlist:type:)(a3, a4, boxed_opaque_existential_1);

  result = outlined consume of Data._Representation(v10, v11);
  if (v18)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a6);
  }

  return result;
}

uint64_t _DisplayList_Identity.init(from:)@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v13 = a2;
  type metadata accessor for KeyedEncodingContainer<_DisplayList_Identity.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<_DisplayList_Identity.CodingKeys>, lazy protocol witness table accessor for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys, &unk_1F0048590, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v13;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *v9 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t closure #1 in EdgeInsets.init(from:)(unint64_t result, void *a2, uint64_t *a3)
{
  v5 = a2[1];
  if (v5 >= a2[2])
  {
LABEL_43:
    a2[3] = 0;
    return result;
  }

  v7 = result;
  while (1)
  {
    result = a2[3];
    if (result)
    {
      v8 = a2[4];
      if (v5 < v8)
      {
        goto LABEL_11;
      }

      if (v8 < v5)
      {
        goto LABEL_41;
      }

      a2[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v3)
    {
      goto LABEL_42;
    }

    if (result <= 7)
    {
LABEL_41:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      v19 = swift_allocError();
      result = swift_willThrow();
      v3 = v19;
LABEL_42:
      *a3 = v3;
      return result;
    }

LABEL_11:
    if (result <= 0x27)
    {
      break;
    }

    v9 = result & 7;
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_42;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        v10 = a2[1] + result;
        if (a2[2] < v10)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v9 != 5)
        {
          goto LABEL_41;
        }

        v10 = a2[1] + 4;
        if (a2[2] < v10)
        {
          goto LABEL_41;
        }
      }

      goto LABEL_3;
    }

    if ((result & 7) != 0)
    {
      if (v9 != 1)
      {
        goto LABEL_41;
      }

      v10 = a2[1] + 8;
      if (a2[2] < v10)
      {
        goto LABEL_41;
      }

LABEL_3:
      a2[1] = v10;
      goto LABEL_4;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v3)
    {
      goto LABEL_42;
    }

LABEL_4:
    v5 = a2[1];
    if (v5 >= a2[2])
    {
      goto LABEL_43;
    }
  }

  v11 = (result >> 3) - 1;
  if (result >> 3)
  {
    if (v11 < 0)
    {
      goto LABEL_45;
    }

    v12 = result & 7;
    if (v12 == 5)
    {
      v17 = a2[1];
      if (a2[2] < (v17 + 1))
      {
        goto LABEL_41;
      }

      v18 = *v17;
      a2[1] = v17 + 1;
      v16 = v18;
    }

    else
    {
      if (v12 == 2)
      {
        v15 = result;
        result = ProtobufDecoder.decodeVarint()();
        if (v3)
        {
          goto LABEL_42;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_46;
        }

        v13 = a2[1];
        v14 = a2[2];
        if (v14 < v13 + result)
        {
          goto LABEL_41;
        }

        a2[3] = v15 & 0x38 | 1;
        a2[4] = v13 + result;
      }

      else
      {
        if (v12 != 1)
        {
          goto LABEL_41;
        }

        v13 = a2[1];
        v14 = a2[2];
      }

      if (v14 < (v13 + 1))
      {
        goto LABEL_41;
      }

      v16 = *v13;
      a2[1] = v13 + 1;
    }

    *(v7 + 8 * v11) = v16;
    goto LABEL_4;
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  return result;
}

uint64_t ProtobufDecoder.dataField(_:)(void *a1)
{
  if ((*a1 & 7) != 2)
  {
    lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
    swift_allocError();
    swift_willThrow();
    return v3;
  }

  v4 = ProtobufDecoder.decodeDataBuffer()();
  if (v2)
  {
    return v3;
  }

  v3 = 0;
  if (!v4)
  {
    return v3;
  }

  v6 = v5 - v4;
  if (v5 == v4)
  {
    return v3;
  }

  v7 = v4 - [*v1 bytes];
  result = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;
  if (__OFADD__(v7, v6))
  {
    __break(1u);
  }

  else if (v7 + v6 >= v7)
  {
    v11 = result;
    v3 = Data._Representation.subscript.getter();
    outlined consume of Data._Representation(v11, v10);
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t ProtobufDecoder.decodeDataBuffer()()
{
  result = ProtobufDecoder.decodeVarint()();
  if (!v1)
  {
    if (result < 0)
    {
      __break(1u);
    }

    else
    {
      v3 = result;
      result = *(v0 + 8);
      if (*(v0 + 16) >= (result + v3))
      {
        *(v0 + 8) = result + v3;
      }

      else
      {
        lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
        swift_allocError();
        return swift_willThrow();
      }
    }
  }

  return result;
}

unint64_t specialized CGPoint.init(from:)(unint64_t result)
{
  v2 = result;
  v3 = *(result + 8);
  v4 = *(result + 16);
  if (v3 >= v4)
  {
LABEL_2:
    v2[3] = 0;
    return result;
  }

  while (1)
  {
    result = v2[3];
    if (result)
    {
      v5 = v2[4];
      if (v3 < v5)
      {
        goto LABEL_13;
      }

      if (v5 < v3)
      {
        goto LABEL_51;
      }

      v2[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v1)
    {
      return result;
    }

    if (result <= 7)
    {
      goto LABEL_51;
    }

LABEL_13:
    v6 = result & 7;
    if (result >> 3 == 2)
    {
      break;
    }

    if (result >> 3 == 1)
    {
      if (v6 != 5)
      {
        if (v6 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_54;
          }

          v7 = v2[1];
          if (v4 < v7 + result)
          {
            goto LABEL_51;
          }

          v2[3] = 9;
          v2[4] = v7 + result;
        }

        else
        {
          if (v6 != 1)
          {
            goto LABEL_51;
          }

          v7 = v2[1];
        }

        v3 = v7 + 8;
        if (v4 < v7 + 8)
        {
          goto LABEL_51;
        }

        goto LABEL_5;
      }

      v3 = v2[1] + 4;
      if (v4 < v3)
      {
        goto LABEL_51;
      }

      v2[1] = v3;
    }

    else
    {
      if ((result & 7) > 1)
      {
        if (v6 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v1)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_51:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            return swift_willThrow();
          }

          v3 = v2[1] + result;
        }

        else
        {
          if (v6 != 5)
          {
            goto LABEL_51;
          }

          v3 = v2[1] + 4;
        }

LABEL_4:
        if (v4 < v3)
        {
          goto LABEL_51;
        }

LABEL_5:
        v2[1] = v3;
        goto LABEL_6;
      }

      if ((result & 7) != 0)
      {
        if (v6 != 1)
        {
          goto LABEL_51;
        }

        v3 = v2[1] + 8;
        goto LABEL_4;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v1)
      {
        return result;
      }

      v3 = v2[1];
    }

LABEL_6:
    if (v3 >= v4)
    {
      goto LABEL_2;
    }
  }

  if (v6 == 5)
  {
    v3 = v2[1] + 4;
    if (v4 < v3)
    {
      goto LABEL_51;
    }

    v2[1] = v3;
    goto LABEL_6;
  }

  if (v6 != 2)
  {
    if (v6 != 1)
    {
      goto LABEL_51;
    }

    v8 = v2[1];
    goto LABEL_40;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v1)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v8 = v2[1];
    if (v4 < v8 + result)
    {
      goto LABEL_51;
    }

    v2[3] = 17;
    v2[4] = v8 + result;
LABEL_40:
    v3 = v8 + 8;
    if (v4 < v8 + 8)
    {
      goto LABEL_51;
    }

    goto LABEL_5;
  }

  __break(1u);
LABEL_54:
  __break(1u);
  return result;
}

unint64_t closure #2 in DisplayList.Item.init(from:)@<X0>(unint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
LABEL_50:
    v9 = 0;
    v26 = 0x1400000000;
    v10 = MEMORY[0x1E69E7CC0];
    v27 = 0x40000000;
LABEL_51:
    v3[3] = 0;
    *a2 = v9;
    a2[1] = v26;
    a2[2] = v10;
    a2[3] = v27;
    return result;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
  v35 = 0;
  v36 = 20;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v3[3];
    if (v11)
    {
      v12 = v3[4];
      if (v5 < v12)
      {
        goto LABEL_11;
      }

      if (v12 < v5)
      {
        goto LABEL_52;
      }

      v3[3] = 0;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      goto LABEL_54;
    }

    v11 = result;
    if (result < 8)
    {
LABEL_52:

LABEL_53:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      swift_willThrow();
      return outlined consume of DisplayList.Effect(v9, v35, v36);
    }

LABEL_11:
    if (v11 >> 3 == 2)
    {
      break;
    }

    if (v11 >> 3 == 1)
    {
      if ((v11 & 7) != 2)
      {
        goto LABEL_52;
      }

      ProtobufDecoder.beginMessage()();
      if (v2)
      {
LABEL_54:

        return outlined consume of DisplayList.Effect(v9, v35, v36);
      }

      DisplayList.Effect.init(from:)(v3, &v32);
      v13 = v3[5];
      if (!*(v13 + 2))
      {
        goto LABEL_63;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v14 = *(v13 + 2);
        if (!v14)
        {
          goto LABEL_64;
        }
      }

      else
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
        v14 = *(v13 + 2);
        if (!v14)
        {
          goto LABEL_64;
        }
      }

      v15 = v14 - 1;
      v6 = *&v13[8 * v15 + 32];
      *(v13 + 2) = v15;
      result = outlined consume of DisplayList.Effect(v9, v35, v36);
      v3[5] = v13;
      v3[2] = v6;
      v9 = v32;
      v35 = v33;
      v36 = v34;
    }

    else
    {
      v24 = v11 & 7;
      if (v24 > 1)
      {
        if (v24 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_54;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_66;
          }

          v25 = v3[1] + result;
          if (v6 < v25)
          {
            goto LABEL_52;
          }
        }

        else
        {
          if (v24 != 5)
          {
            goto LABEL_52;
          }

          v25 = v3[1] + 4;
          if (v6 < v25)
          {
            goto LABEL_52;
          }
        }
      }

      else
      {
        if ((v11 & 7) == 0)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_54;
          }

          goto LABEL_4;
        }

        if (v24 != 1)
        {
          goto LABEL_52;
        }

        v25 = v3[1] + 8;
        if (v6 < v25)
        {
          goto LABEL_52;
        }
      }

      v3[1] = v25;
    }

LABEL_4:
    v5 = v3[1];
    if (v5 >= v6)
    {
      v26 = v35 | (v36 << 32);
      v27 = v8 | (v7 << 32) | 0x40000000;
      goto LABEL_51;
    }
  }

  if ((v11 & 7) != 2)
  {
    goto LABEL_53;
  }

  v16 = v3[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
  }

  v18 = *(v16 + 2);
  v17 = *(v16 + 3);
  if (v18 >= v17 >> 1)
  {
    v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
  }

  *(v16 + 2) = v18 + 1;
  *&v16[8 * v18 + 32] = v6;
  v3[5] = v16;
  v19 = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return outlined consume of DisplayList.Effect(v9, v35, v36);
  }

  if ((v19 & 0x8000000000000000) == 0)
  {
    v20 = v3[1] + v19;
    if (v6 < v20)
    {
      goto LABEL_53;
    }

    v3[2] = v20;
    DisplayList.init(from:)(&v32, v3);
    v21 = v3[5];
    if (!*(v21 + 16))
    {
      goto LABEL_65;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = *(v21 + 16);
      if (!v22)
      {
        goto LABEL_49;
      }
    }

    else
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
      v21 = result;
      v22 = *(result + 16);
      if (!v22)
      {
LABEL_49:
        __break(1u);
        goto LABEL_50;
      }
    }

    v23 = v22 - 1;
    v6 = *(v21 + 8 * v23 + 32);
    *(v21 + 16) = v23;
    v3[5] = v21;
    v3[2] = v6;
    v10 = v32;
    v8 = v33;
    v7 = v34;
    goto LABEL_4;
  }

  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
  __break(1u);
  v28 = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
  v29 = *(v28 + 2);
  if (v29)
  {
LABEL_61:
    v30 = v29 - 1;
    v31 = *&v28[8 * v30 + 32];
    *(v28 + 2) = v30;
    result = outlined consume of DisplayList.Effect(v9, v35, v36);
    v3[5] = v28;
    v3[2] = v31;
    return result;
  }

  __break(1u);
  v28 = v3[5];
  if (!*(v28 + 2))
  {
    __break(1u);
LABEL_69:
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v28);
    v28 = result;
    v29 = *(result + 16);
    if (!v29)
    {
      goto LABEL_70;
    }

    goto LABEL_61;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_69;
  }

  v29 = *(v28 + 2);
  if (v29)
  {
    goto LABEL_61;
  }

LABEL_70:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys;
  if (!lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys;
  if (!lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys;
  if (!lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys;
  if (!lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _DisplayList_Identity.CodingKeys and conformance _DisplayList_Identity.CodingKeys);
  }

  return result;
}

uint64_t closure #2 in DisplayList.Content.Value.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 < v5)
  {
    LOBYTE(v55) = 0;
    v6 = 0;
    v56 = 0;
    v57 = 0;
    v58 = 0;
    v7 = 0;
    v8 = 6;
    LOBYTE(v52) = 1;
    while (1)
    {
      v13 = a1[3];
      if (v13)
      {
        v14 = a1[4];
        if (v4 < v14)
        {
          goto LABEL_13;
        }

        if (v14 < v4)
        {
          goto LABEL_73;
        }

        a1[3] = 0;
      }

      v13 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        goto LABEL_74;
      }

      if (v13 < 8)
      {
        goto LABEL_73;
      }

LABEL_13:
      v15 = v13 >> 3;
      if (v13 >> 3 == 3)
      {
        if ((v13 & 7) != 2)
        {
          goto LABEL_73;
        }

        v37 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v37 + 2) + 1, 1, v37);
        }

        v39 = *(v37 + 2);
        v38 = *(v37 + 3);
        if (v39 >= v38 >> 1)
        {
          v37 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v38 > 1), v39 + 1, 1, v37);
        }

        *(v37 + 2) = v39 + 1;
        *&v37[8 * v39 + 32] = v5;
        a1[5] = v37;
        v40 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_74;
        }

        if (v40 < 0)
        {
          goto LABEL_87;
        }

        v41 = a1[1] + v40;
        if (v5 < v41)
        {
          goto LABEL_73;
        }

        a1[2] = v41;
        v55 = specialized FillStyle.init(from:)(a1);
        v42 = a1[5];
        if (!*(v42 + 2))
        {
          goto LABEL_89;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v43 = *(v42 + 2);
          if (!v43)
          {
            goto LABEL_92;
          }
        }

        else
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew()(v42);
          v43 = *(v42 + 2);
          if (!v43)
          {
            goto LABEL_92;
          }
        }

        v44 = v43 - 1;
        v5 = *&v42[8 * v44 + 32];
        *(v42 + 2) = v44;
        v52 = (v55 >> 8) & 1;
        a1[5] = v42;
        a1[2] = v5;
        goto LABEL_6;
      }

      if (v15 == 2)
      {
        if ((v13 & 7) != 2)
        {
          goto LABEL_73;
        }

        v29 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1, v29);
        }

        v31 = *(v29 + 2);
        v30 = *(v29 + 3);
        if (v31 >= v30 >> 1)
        {
          v29 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v29);
        }

        *(v29 + 2) = v31 + 1;
        *&v29[8 * v31 + 32] = v5;
        a1[5] = v29;
        v32 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_74;
        }

        if (v32 < 0)
        {
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
          __break(1u);
LABEL_94:
          __break(1u);
          do
          {
            __break(1u);
            v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            v48 = *(v7 + 2);
            if (v48)
            {
              goto LABEL_84;
            }

            __break(1u);
            v5 = v7;
            v7 = a1[5];
            if (!*(v7 + 2))
            {
              goto LABEL_94;
            }

            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v48 = *(v7 + 2);
              if (v48)
              {
                goto LABEL_84;
              }
            }

            else
            {
              v7 = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
              v48 = *(v7 + 2);
              if (v48)
              {
                goto LABEL_84;
              }
            }

            __break(1u);
            v5 = v7;
            v7 = a1[5];
          }

          while (!*(v7 + 2));
          result = swift_isUniquelyReferenced_nonNull_native();
          if (result)
          {
            v48 = *(v7 + 2);
            if (v48)
            {
LABEL_84:
              v49 = v48 - 1;
              v50 = *&v7[8 * v49 + 32];
              *(v7 + 2) = v49;
              outlined consume of Path.Storage(v56, v57, v58, v5, v8);

              a1[5] = v7;
              a1[2] = v50;
              return result;
            }
          }

          else
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew()(v7);
            v7 = result;
            v48 = *(result + 16);
            if (v48)
            {
              goto LABEL_84;
            }
          }

          __break(1u);
          return result;
        }

        v33 = a1[1] + v32;
        if (v5 < v33)
        {
          goto LABEL_73;
        }

        a1[2] = v33;
        CodableResolvedPaint.init(from:)(a1, &v61);
        v34 = a1[5];
        if (!*(v34 + 2))
        {
          goto LABEL_88;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v35 = *(v34 + 2);
          if (!v35)
          {
            goto LABEL_91;
          }
        }

        else
        {
          v34 = specialized _ArrayBuffer._consumeAndCreateNew()(v34);
          v35 = *(v34 + 2);
          if (!v35)
          {
            goto LABEL_91;
          }
        }

        v36 = v35 - 1;
        v5 = *&v34[8 * v36 + 32];
        *(v34 + 2) = v36;

        a1[5] = v34;
        a1[2] = v5;
        v6 = v61;
        goto LABEL_6;
      }

      if (v15 == 1)
      {
        if ((v13 & 7) != 2)
        {
          goto LABEL_73;
        }

        v16 = a1[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v16 + 2) + 1, 1, v16);
        }

        v18 = *(v16 + 2);
        v17 = *(v16 + 3);
        if (v18 >= v17 >> 1)
        {
          v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1, v16);
        }

        *(v16 + 2) = v18 + 1;
        *&v16[8 * v18 + 32] = v5;
        a1[5] = v16;
        v19 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          goto LABEL_74;
        }

        if (v19 < 0)
        {
          goto LABEL_86;
        }

        v20 = a1[1] + v19;
        if (v5 < v20)
        {
          goto LABEL_73;
        }

        a1[2] = v20;
        specialized Path.init(from:)(a1, v59);
        v21 = a1[5];
        if (!*(v21 + 2))
        {
          goto LABEL_90;
        }

        v22 = v7;
        v53 = v8;
        v54 = v6;
        v23 = v59[0];
        v24 = v59[1];
        v25 = v59[2];
        v7 = v59[3];
        v8 = v60;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v26 = *(v21 + 2);
          if (!v26)
          {
            goto LABEL_72;
          }
        }

        else
        {
          v21 = specialized _ArrayBuffer._consumeAndCreateNew()(v21);
          v26 = *(v21 + 2);
          if (!v26)
          {
LABEL_72:
            __break(1u);
LABEL_73:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
LABEL_74:
            outlined consume of Path.Storage(v56, v57, v58, v7, v8);
          }
        }

        v27 = v26 - 1;
        v28 = *&v21[8 * v27 + 32];
        *(v21 + 2) = v27;
        outlined consume of Path.Storage(v56, v57, v58, v22, v53);
        v56 = v23;
        v57 = v24;
        v5 = v28;
        a1[5] = v21;
        a1[2] = v28;
        v58 = v25;
        v6 = v54;
        goto LABEL_6;
      }

      v45 = v13 & 7;
      if (v45 > 1)
      {
        if (v45 == 2)
        {
          v47 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_74;
          }

          if (v47 < 0)
          {
            goto LABEL_93;
          }

          v46 = a1[1] + v47;
          if (v5 < v46)
          {
            goto LABEL_73;
          }
        }

        else
        {
          if (v45 != 5)
          {
            goto LABEL_73;
          }

          v46 = a1[1] + 4;
          if (v5 < v46)
          {
            goto LABEL_73;
          }
        }
      }

      else
      {
        if ((v13 & 7) == 0)
        {
          ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            goto LABEL_74;
          }

          goto LABEL_6;
        }

        if (v45 != 1)
        {
          goto LABEL_73;
        }

        v46 = a1[1] + 8;
        if (v5 < v46)
        {
          goto LABEL_73;
        }
      }

      a1[1] = v46;
LABEL_6:
      v4 = a1[1];
      if (v4 >= v5)
      {
        a1[3] = 0;
        if (v6)
        {
          result = swift_allocObject();
          *(result + 16) = v56;
          *(result + 24) = v57;
          *(result + 32) = v58;
          *(result + 40) = v7;
          *(result + 48) = v8;
          *(result + 56) = v6;
          *(result + 64) = v55 & 1;
          *(result + 65) = v52 & 1;
          *a2 = result | 0x4000000000000000;
          return result;
        }

        v10 = v57;
        v11 = v58;
        v9 = v56;
        goto LABEL_4;
      }
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v7 = 0;
  a1[3] = 0;
  v8 = 6;
LABEL_4:
  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
  return outlined consume of Path.Storage(v9, v10, v11, v7, v8);
}

uint64_t sub_18D35F034()
{
  outlined consume of Path.Storage(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));

  return swift_deallocObject();
}

uint64_t specialized Array._customRemoveLast()()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
LABEL_3:
      v4 = v3 - 1;
      result = *(v1 + 8 * v4 + 32);
      *(v1 + 16) = v4;
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result)
  {
    v3 = *(v1 + 16);
    if (v3)
    {
LABEL_3:
      v4 = v3 - 1;
      *(v1 + 16) = v4;
      result = *(v1 + v4 + 32);
      *v0 = v1;
      return result;
    }
  }

  else
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v1);
    v1 = result;
    v3 = *(result + 16);
    if (v3)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

uint64_t closure #1 in static ResolvableTextSegmentAttribute.toggleAttributes(in:)(uint64_t a1, Swift::Int a2, Swift::Int a3, uint64_t a4, NSMutableAttributedString a5)
{
  type metadata accessor for AttributedString.AdaptiveImageGlyph?(0, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, type metadata accessor for ResolvableTextSegmentAttribute.Value, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22[-v10];
  v12 = type metadata accessor for ResolvableTextSegmentAttribute.Value(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1E69E7CA0];
  _sypSgWOcTm_0(a1, v22, &lazy cache variable for type metadata for Any?, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6720], _sypSgMaTm_6);
  if (v23)
  {
    v17 = swift_dynamicCast();
    (*(v13 + 56))(v11, v17 ^ 1u, 1, v12);
    if ((*(v13 + 48))(v11, 1, v12) != 1)
    {
      v18 = _s7SwiftUI33ResolvableStringResolutionContextVWObTm_1(v11, v15, type metadata accessor for ResolvableTextSegmentAttribute.Value);
      v19 = MEMORY[0x193AC38C0](v18);
      v20.location = a2;
      v20.length = a3;
      ResolvableTextSegmentAttribute.Value.toggleAttributes(in:of:)(v20, a5);
      objc_autoreleasePoolPop(v19);
      return outlined destroy of ResolvableTextSegmentAttribute.Value(v15, type metadata accessor for ResolvableTextSegmentAttribute.Value);
    }
  }

  else
  {
    _sypSgWOhTm_8(v22, &lazy cache variable for type metadata for Any?, v16 + 8, MEMORY[0x1E69E6720], _sypSgMaTm_6);
    (*(v13 + 56))(v11, 1, 1, v12);
  }

  return outlined destroy of ResolvableStringAttribute?(v11, &lazy cache variable for type metadata for ResolvableTextSegmentAttribute.Value?, type metadata accessor for ResolvableTextSegmentAttribute.Value, MEMORY[0x1E69E6720], type metadata accessor for AttributedString.AdaptiveImageGlyph?);
}

void outlined consume of AccessibilityText.Storage(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>?(void *a1, uint64_t a2, int a3)
{
  if (BYTE2(a3) != 255)
  {
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(a1, a2, a3, BYTE2(a3) & 1);
  }
}

uint64_t outlined destroy of Locale?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = a5(0);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t initializeWithCopy for CodableAccessibilityAttachmentStorage.VBase(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = *(a2 + 34);
  v8 = *(a2 + 32);

  if (v7 == 255)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 31) = *(a2 + 31);
  }

  else
  {
    v9 = v8 & 0xFF00FFFF | (v7 << 16);
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v10, v11, v9, BYTE2(v9) & 1);
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    *(a1 + 32) = v9;
    *(a1 + 34) = BYTE2(v9) & 1;
  }

  if (*(a2 + 58) == 255)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 55) = *(a2 + 55);
  }

  else
  {
    v12 = *(a2 + 56) | (*(a2 + 58) << 16);
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v13, v14, *(a2 + 56), BYTE2(v12) & 1);
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
    *(a1 + 56) = v12;
    *(a1 + 58) = BYTE2(v12) & 1;
  }

  if (*(a2 + 82) == 255)
  {
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 79) = *(a2 + 79);
  }

  else
  {
    v15 = *(a2 + 80) | (*(a2 + 82) << 16);
    v16 = *(a2 + 64);
    v17 = *(a2 + 72);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v16, v17, *(a2 + 80), BYTE2(v15) & 1);
    *(a1 + 64) = v16;
    *(a1 + 72) = v17;
    *(a1 + 80) = v15;
    *(a1 + 82) = BYTE2(v15) & 1;
  }

  *(a1 + 84) = *(a2 + 84);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  v18 = *(a2 + 232);
  if (v18 == 1)
  {
    memcpy((a1 + 144), (a2 + 144), 0x108uLL);
  }

  else
  {
    if (*(a2 + 162) == 255)
    {
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 159) = *(a2 + 159);
    }

    else
    {
      v19 = *(a2 + 160) | (*(a2 + 162) << 16);
      v20 = *(a2 + 144);
      v21 = *(a2 + 152);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v20, v21, *(a2 + 160), BYTE2(v19) & 1);
      *(a1 + 144) = v20;
      *(a1 + 152) = v21;
      *(a1 + 160) = v19;
      *(a1 + 162) = BYTE2(v19) & 1;
      v18 = *(a2 + 232);
    }

    *(a1 + 163) = *(a2 + 163);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 177) = *(a2 + 177);
    v22 = (a1 + 184);
    v23 = (a2 + 184);
    if (v18)
    {
      if (*(a2 + 202) == 255)
      {
        *v22 = *v23;
        *(a1 + 199) = *(a2 + 199);
      }

      else
      {
        v27 = *(a2 + 200) | (*(a2 + 202) << 16);
        v28 = *(a2 + 184);
        v29 = *(a2 + 192);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v28, v29, *(a2 + 200), BYTE2(v27) & 1);
        *(a1 + 184) = v28;
        *(a1 + 192) = v29;
        *(a1 + 200) = v27;
        *(a1 + 202) = BYTE2(v27) & 1;
      }

      if (*(a2 + 226) == 255)
      {
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 223) = *(a2 + 223);
      }

      else
      {
        v30 = *(a2 + 224) | (*(a2 + 226) << 16);
        v31 = *(a2 + 208);
        v32 = *(a2 + 216);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v31, v32, *(a2 + 224), BYTE2(v30) & 1);
        *(a1 + 208) = v31;
        *(a1 + 216) = v32;
        *(a1 + 224) = v30;
        *(a1 + 226) = BYTE2(v30) & 1;
      }

      v33 = *(a2 + 240);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = v33;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
      v34 = *(a2 + 280);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 280) = v34;
      *(a1 + 288) = *(a2 + 288);
    }

    else
    {
      v24 = *(a2 + 264);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = v24;
      *(a1 + 280) = *(a2 + 280);
      v25 = *(a2 + 200);
      *v22 = *v23;
      *(a1 + 200) = v25;
      v26 = *(a2 + 232);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = v26;
    }

    v35 = (a1 + 296);
    v36 = (a2 + 296);
    if (*(a2 + 344))
    {
      if (*(a2 + 314) == 255)
      {
        *v35 = *v36;
        *(a1 + 311) = *(a2 + 311);
      }

      else
      {
        v40 = *(a2 + 312) | (*(a2 + 314) << 16);
        v41 = *(a2 + 296);
        v42 = *(a2 + 304);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v41, v42, *(a2 + 312), BYTE2(v40) & 1);
        *(a1 + 296) = v41;
        *(a1 + 304) = v42;
        *(a1 + 312) = v40;
        *(a1 + 314) = BYTE2(v40) & 1;
      }

      if (*(a2 + 338) == 255)
      {
        *(a1 + 320) = *(a2 + 320);
        *(a1 + 335) = *(a2 + 335);
      }

      else
      {
        v43 = *(a2 + 336) | (*(a2 + 338) << 16);
        v44 = *(a2 + 320);
        v45 = *(a2 + 328);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v44, v45, *(a2 + 336), BYTE2(v43) & 1);
        *(a1 + 320) = v44;
        *(a1 + 328) = v45;
        *(a1 + 336) = v43;
        *(a1 + 338) = BYTE2(v43) & 1;
      }

      v46 = *(a2 + 352);
      *(a1 + 344) = *(a2 + 344);
      *(a1 + 352) = v46;
      *(a1 + 360) = *(a2 + 360);
      *(a1 + 368) = *(a2 + 368);
      *(a1 + 376) = *(a2 + 376);
      v47 = *(a2 + 392);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 392) = v47;
      *(a1 + 400) = *(a2 + 400);
    }

    else
    {
      v37 = *(a2 + 376);
      *(a1 + 360) = *(a2 + 360);
      *(a1 + 376) = v37;
      *(a1 + 392) = *(a2 + 392);
      v38 = *(a2 + 312);
      *v35 = *v36;
      *(a1 + 312) = v38;
      v39 = *(a2 + 344);
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 344) = v39;
    }
  }

  v48 = *(a3 + 52);
  v49 = (a1 + v48);
  v50 = (a2 + v48);
  v51 = type metadata accessor for LinkDestination.Configuration(0);
  v52 = *(v51 - 8);
  if ((*(v52 + 48))(v50, 1, v51))
  {
    type metadata accessor for LinkDestination.Configuration?(0);
    memcpy(v49, v50, *(*(v53 - 8) + 64));
  }

  else
  {
    v54 = type metadata accessor for URL();
    (*(*(v54 - 8) + 16))(v49, v50, v54);
    *(v49 + *(v51 + 20)) = *(v50 + *(v51 + 20));
    (*(v52 + 56))(v49, 0, 1, v51);
  }

  *(a1 + *(a3 + 56)) = *(a2 + *(a3 + 56));

  return a1;
}

uint64_t sub_18D35FA2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t destroy for CodableAccessibilityAttachmentStorage.VBase(uint64_t a1, uint64_t a2)
{

  if (*(a1 + 34) != 255)
  {
    v4 = *(a1 + 32) | (*(a1 + 34) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 16), *(a1 + 24), v4, BYTE2(v4) & 1);
  }

  if (*(a1 + 58) != 255)
  {
    v5 = *(a1 + 56) | (*(a1 + 58) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 40), *(a1 + 48), v5, BYTE2(v5) & 1);
  }

  if (*(a1 + 82) != 255)
  {
    v6 = *(a1 + 80) | (*(a1 + 82) << 16);
    outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 64), *(a1 + 72), v6, BYTE2(v6) & 1);
  }

  v7 = *(a1 + 232);
  if (v7 != 1)
  {
    if (*(a1 + 162) != 255)
    {
      v8 = *(a1 + 160) | (*(a1 + 162) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 144), *(a1 + 152), v8, BYTE2(v8) & 1);
    }

    if (v7)
    {
      if (*(a1 + 202) != 255)
      {
        v9 = *(a1 + 200) | (*(a1 + 202) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 184), *(a1 + 192), v9, BYTE2(v9) & 1);
      }

      if (*(a1 + 226) != 255)
      {
        v10 = *(a1 + 224) | (*(a1 + 226) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 208), *(a1 + 216), v10, BYTE2(v10) & 1);
      }
    }

    if (*(a1 + 344))
    {
      if (*(a1 + 314) != 255)
      {
        v11 = *(a1 + 312) | (*(a1 + 314) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 296), *(a1 + 304), v11, BYTE2(v11) & 1);
      }

      if (*(a1 + 338) != 255)
      {
        v12 = *(a1 + 336) | (*(a1 + 338) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 320), *(a1 + 328), v12, BYTE2(v12) & 1);
      }
    }
  }

  v13 = *(a2 + 52);
  v14 = type metadata accessor for LinkDestination.Configuration(0);
  if (!(*(*(v14 - 8) + 48))(a1 + v13, 1, v14))
  {
    v15 = type metadata accessor for URL();
    (*(*(v15 - 8) + 8))(a1 + v13, v15);
  }
}

uint64_t initializeWithCopy for CodableAccessibilityAttachmentStorage.V3(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v6;
  v7 = *(a2 + 34);
  v8 = *(a2 + 32);

  if (v7 == 255)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 31) = *(a2 + 31);
  }

  else
  {
    v9 = v8 & 0xFF00FFFF | (v7 << 16);
    v10 = *(a2 + 16);
    v11 = *(a2 + 24);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v10, v11, v9, BYTE2(v9) & 1);
    *(a1 + 16) = v10;
    *(a1 + 24) = v11;
    *(a1 + 32) = v9;
    *(a1 + 34) = BYTE2(v9) & 1;
  }

  if (*(a2 + 58) == 255)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 55) = *(a2 + 55);
  }

  else
  {
    v12 = *(a2 + 56) | (*(a2 + 58) << 16);
    v13 = *(a2 + 40);
    v14 = *(a2 + 48);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v13, v14, *(a2 + 56), BYTE2(v12) & 1);
    *(a1 + 40) = v13;
    *(a1 + 48) = v14;
    *(a1 + 56) = v12;
    *(a1 + 58) = BYTE2(v12) & 1;
  }

  if (*(a2 + 82) == 255)
  {
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 79) = *(a2 + 79);
  }

  else
  {
    v15 = *(a2 + 80) | (*(a2 + 82) << 16);
    v16 = *(a2 + 64);
    v17 = *(a2 + 72);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v16, v17, *(a2 + 80), BYTE2(v15) & 1);
    *(a1 + 64) = v16;
    *(a1 + 72) = v17;
    *(a1 + 80) = v15;
    *(a1 + 82) = BYTE2(v15) & 1;
  }

  *(a1 + 84) = *(a2 + 84);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  v18 = *(a2 + 232);
  if (v18 == 1)
  {
    memcpy((a1 + 144), (a2 + 144), 0x108uLL);
  }

  else
  {
    if (*(a2 + 162) == 255)
    {
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 159) = *(a2 + 159);
    }

    else
    {
      v19 = *(a2 + 160) | (*(a2 + 162) << 16);
      v20 = *(a2 + 144);
      v21 = *(a2 + 152);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v20, v21, *(a2 + 160), BYTE2(v19) & 1);
      *(a1 + 144) = v20;
      *(a1 + 152) = v21;
      *(a1 + 160) = v19;
      *(a1 + 162) = BYTE2(v19) & 1;
      v18 = *(a2 + 232);
    }

    *(a1 + 163) = *(a2 + 163);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 177) = *(a2 + 177);
    v22 = (a1 + 184);
    v23 = (a2 + 184);
    if (v18)
    {
      if (*(a2 + 202) == 255)
      {
        *v22 = *v23;
        *(a1 + 199) = *(a2 + 199);
      }

      else
      {
        v27 = *(a2 + 200) | (*(a2 + 202) << 16);
        v28 = *(a2 + 184);
        v29 = *(a2 + 192);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v28, v29, *(a2 + 200), BYTE2(v27) & 1);
        *(a1 + 184) = v28;
        *(a1 + 192) = v29;
        *(a1 + 200) = v27;
        *(a1 + 202) = BYTE2(v27) & 1;
      }

      if (*(a2 + 226) == 255)
      {
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 223) = *(a2 + 223);
      }

      else
      {
        v30 = *(a2 + 224) | (*(a2 + 226) << 16);
        v31 = *(a2 + 208);
        v32 = *(a2 + 216);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v31, v32, *(a2 + 224), BYTE2(v30) & 1);
        *(a1 + 208) = v31;
        *(a1 + 216) = v32;
        *(a1 + 224) = v30;
        *(a1 + 226) = BYTE2(v30) & 1;
      }

      v33 = *(a2 + 240);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = v33;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
      v34 = *(a2 + 280);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 280) = v34;
      *(a1 + 288) = *(a2 + 288);
    }

    else
    {
      v24 = *(a2 + 264);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = v24;
      *(a1 + 280) = *(a2 + 280);
      v25 = *(a2 + 200);
      *v22 = *v23;
      *(a1 + 200) = v25;
      v26 = *(a2 + 232);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = v26;
    }

    v35 = (a1 + 296);
    v36 = (a2 + 296);
    if (*(a2 + 344))
    {
      if (*(a2 + 314) == 255)
      {
        *v35 = *v36;
        *(a1 + 311) = *(a2 + 311);
      }

      else
      {
        v40 = *(a2 + 312) | (*(a2 + 314) << 16);
        v41 = *(a2 + 296);
        v42 = *(a2 + 304);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v41, v42, *(a2 + 312), BYTE2(v40) & 1);
        *(a1 + 296) = v41;
        *(a1 + 304) = v42;
        *(a1 + 312) = v40;
        *(a1 + 314) = BYTE2(v40) & 1;
      }

      if (*(a2 + 338) == 255)
      {
        *(a1 + 320) = *(a2 + 320);
        *(a1 + 335) = *(a2 + 335);
      }

      else
      {
        v43 = *(a2 + 336) | (*(a2 + 338) << 16);
        v44 = *(a2 + 320);
        v45 = *(a2 + 328);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v44, v45, *(a2 + 336), BYTE2(v43) & 1);
        *(a1 + 320) = v44;
        *(a1 + 328) = v45;
        *(a1 + 336) = v43;
        *(a1 + 338) = BYTE2(v43) & 1;
      }

      v46 = *(a2 + 352);
      *(a1 + 344) = *(a2 + 344);
      *(a1 + 352) = v46;
      *(a1 + 360) = *(a2 + 360);
      *(a1 + 368) = *(a2 + 368);
      *(a1 + 376) = *(a2 + 376);
      v47 = *(a2 + 392);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 392) = v47;
      *(a1 + 400) = *(a2 + 400);
    }

    else
    {
      v37 = *(a2 + 376);
      *(a1 + 360) = *(a2 + 360);
      *(a1 + 376) = v37;
      *(a1 + 392) = *(a2 + 392);
      v38 = *(a2 + 312);
      *v35 = *v36;
      *(a1 + 312) = v38;
      v39 = *(a2 + 344);
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 344) = v39;
    }
  }

  v48 = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
  v49 = *(v48 + 52);
  v50 = (a1 + v49);
  v51 = (a2 + v49);
  v52 = type metadata accessor for LinkDestination.Configuration(0);
  v53 = *(v52 - 8);
  if ((*(v53 + 48))(v51, 1, v52))
  {
    type metadata accessor for LinkDestination.Configuration?(0);
    memcpy(v50, v51, *(*(v54 - 8) + 64));
  }

  else
  {
    v55 = type metadata accessor for URL();
    (*(*(v55 - 8) + 16))(v50, v51, v55);
    *(v50 + *(v52 + 20)) = *(v51 + *(v52 + 20));
    (*(v53 + 56))(v50, 0, 1, v52);
  }

  *(a1 + *(v48 + 56)) = *(a2 + *(v48 + 56));
  v56 = a3[5];
  v57 = a3[6];
  v58 = a1 + v56;
  v59 = a2 + v56;
  v60 = *(v59 + 8);
  *v58 = *v59;
  *(v58 + 8) = v60;
  v61 = *(v59 + 24);
  *(v58 + 16) = *(v59 + 16);
  *(v58 + 24) = v61;
  *(v58 + 32) = *(v59 + 32);
  *(v58 + 48) = *(v59 + 48);
  v62 = a1 + v57;
  v63 = (a2 + v57);
  v64 = *(a2 + v57 + 48);

  if (v64 != 1)
  {
    v67 = *(v63 + 16);
    if (v67 == 255)
    {
      *v62 = *v63;
      *(v62 + 16) = *(v63 + 8);
      if (v64)
      {
LABEL_40:
        v68 = v63[7];
        *(v62 + 48) = v64;
        *(v62 + 56) = v68;
        (**(v64 - 8))(v62 + 24, (v63 + 3), v64);
        goto LABEL_43;
      }
    }

    else
    {
      v69 = *v63;
      v70 = v63[1];
      v71 = v67 & 1;
      outlined copy of AccessibilityText.Storage(*v63, v70, v67 & 1);
      *v62 = v69;
      *(v62 + 8) = v70;
      *(v62 + 16) = v71;
      *(v62 + 17) = *(v63 + 17);
      v64 = v63[6];
      if (v64)
      {
        goto LABEL_40;
      }
    }

    *(v62 + 24) = *(v63 + 3);
    *(v62 + 40) = *(v63 + 5);
    *(v62 + 56) = v63[7];
    goto LABEL_43;
  }

  v65 = *(v63 + 1);
  *v62 = *v63;
  *(v62 + 16) = v65;
  v66 = *(v63 + 3);
  *(v62 + 32) = *(v63 + 2);
  *(v62 + 48) = v66;
LABEL_43:
  v72 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  v73 = a1 + v72;
  v74 = a2 + v72;
  *v73 = *v74;
  *(v73 + 16) = *(v74 + 16);
  v75 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v75) = *(a2 + v75);
  v76 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v76) = *(a2 + v76);
  v77 = a3[13];
  v78 = a3[14];
  v79 = (a1 + v77);
  v80 = (a2 + v77);
  v81 = v80[1];
  *v79 = *v80;
  v79[1] = v81;
  *(a1 + v78) = *(a2 + v78);

  return a1;
}

uint64_t sub_18D360458(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t initializeWithCopy for CodableAccessibilityAttachmentStorage(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v5 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v5;
  v6 = *(a2 + 32) | (*(a2 + 34) << 16);

  if (EnumCaseMultiPayload == 1)
  {
    if (BYTE2(v6) == 255)
    {
      *(a1 + 16) = *(a2 + 16);
      *(a1 + 31) = *(a2 + 31);
    }

    else
    {
      v7 = *(a2 + 16);
      v8 = *(a2 + 24);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v7, v8, v6, BYTE2(v6) & 1);
      *(a1 + 16) = v7;
      *(a1 + 24) = v8;
      *(a1 + 32) = v6;
      *(a1 + 34) = BYTE2(v6) & 1;
    }

    if (*(a2 + 58) == 255)
    {
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 55) = *(a2 + 55);
    }

    else
    {
      v11 = *(a2 + 56) | (*(a2 + 58) << 16);
      v12 = *(a2 + 40);
      v13 = *(a2 + 48);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v12, v13, *(a2 + 56), BYTE2(v11) & 1);
      *(a1 + 40) = v12;
      *(a1 + 48) = v13;
      *(a1 + 56) = v11;
      *(a1 + 58) = BYTE2(v11) & 1;
    }

    if (*(a2 + 82) == 255)
    {
      *(a1 + 64) = *(a2 + 64);
      *(a1 + 79) = *(a2 + 79);
    }

    else
    {
      v17 = *(a2 + 80) | (*(a2 + 82) << 16);
      v18 = *(a2 + 64);
      v19 = *(a2 + 72);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v18, v19, *(a2 + 80), BYTE2(v17) & 1);
      *(a1 + 64) = v18;
      *(a1 + 72) = v19;
      *(a1 + 80) = v17;
      *(a1 + 82) = BYTE2(v17) & 1;
    }

    *(a1 + 84) = *(a2 + 84);
    *(a1 + 96) = *(a2 + 96);
    *(a1 + 112) = *(a2 + 112);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 128) = *(a2 + 128);
    *(a1 + 136) = *(a2 + 136);
    v20 = *(a2 + 232);
    if (v20 == 1)
    {
      memcpy((a1 + 144), (a2 + 144), 0x108uLL);
    }

    else
    {
      if (*(a2 + 162) == 255)
      {
        *(a1 + 144) = *(a2 + 144);
        *(a1 + 159) = *(a2 + 159);
      }

      else
      {
        v25 = *(a2 + 160) | (*(a2 + 162) << 16);
        v26 = *(a2 + 144);
        v27 = *(a2 + 152);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v26, v27, *(a2 + 160), BYTE2(v25) & 1);
        *(a1 + 144) = v26;
        *(a1 + 152) = v27;
        *(a1 + 160) = v25;
        *(a1 + 162) = BYTE2(v25) & 1;
        v20 = *(a2 + 232);
      }

      *(a1 + 163) = *(a2 + 163);
      *(a1 + 168) = *(a2 + 168);
      *(a1 + 176) = *(a2 + 176);
      *(a1 + 177) = *(a2 + 177);
      v28 = (a1 + 184);
      v29 = (a2 + 184);
      if (v20)
      {
        if (*(a2 + 202) == 255)
        {
          *v28 = *v29;
          *(a1 + 199) = *(a2 + 199);
        }

        else
        {
          v41 = *(a2 + 200) | (*(a2 + 202) << 16);
          v42 = *(a2 + 184);
          v43 = *(a2 + 192);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v42, v43, *(a2 + 200), BYTE2(v41) & 1);
          *(a1 + 184) = v42;
          *(a1 + 192) = v43;
          *(a1 + 200) = v41;
          *(a1 + 202) = BYTE2(v41) & 1;
        }

        if (*(a2 + 226) == 255)
        {
          *(a1 + 208) = *(a2 + 208);
          *(a1 + 223) = *(a2 + 223);
        }

        else
        {
          v47 = *(a2 + 224) | (*(a2 + 226) << 16);
          v48 = *(a2 + 208);
          v49 = *(a2 + 216);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v48, v49, *(a2 + 224), BYTE2(v47) & 1);
          *(a1 + 208) = v48;
          *(a1 + 216) = v49;
          *(a1 + 224) = v47;
          *(a1 + 226) = BYTE2(v47) & 1;
        }

        v50 = *(a2 + 240);
        *(a1 + 232) = *(a2 + 232);
        *(a1 + 240) = v50;
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 256) = *(a2 + 256);
        *(a1 + 264) = *(a2 + 264);
        v51 = *(a2 + 280);
        *(a1 + 272) = *(a2 + 272);
        *(a1 + 280) = v51;
        *(a1 + 288) = *(a2 + 288);
      }

      else
      {
        v35 = *(a2 + 264);
        *(a1 + 248) = *(a2 + 248);
        *(a1 + 264) = v35;
        *(a1 + 280) = *(a2 + 280);
        v36 = *(a2 + 200);
        *v28 = *v29;
        *(a1 + 200) = v36;
        v37 = *(a2 + 232);
        *(a1 + 216) = *(a2 + 216);
        *(a1 + 232) = v37;
      }

      v52 = (a1 + 296);
      v53 = (a2 + 296);
      if (*(a2 + 344))
      {
        if (*(a2 + 314) == 255)
        {
          *v52 = *v53;
          *(a1 + 311) = *(a2 + 311);
        }

        else
        {
          v67 = *(a2 + 312) | (*(a2 + 314) << 16);
          v68 = *(a2 + 296);
          v69 = *(a2 + 304);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v68, v69, *(a2 + 312), BYTE2(v67) & 1);
          *(a1 + 296) = v68;
          *(a1 + 304) = v69;
          *(a1 + 312) = v67;
          *(a1 + 314) = BYTE2(v67) & 1;
        }

        if (*(a2 + 338) == 255)
        {
          *(a1 + 320) = *(a2 + 320);
          *(a1 + 335) = *(a2 + 335);
        }

        else
        {
          v73 = *(a2 + 336) | (*(a2 + 338) << 16);
          v74 = *(a2 + 320);
          v75 = *(a2 + 328);
          outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v74, v75, *(a2 + 336), BYTE2(v73) & 1);
          *(a1 + 320) = v74;
          *(a1 + 328) = v75;
          *(a1 + 336) = v73;
          *(a1 + 338) = BYTE2(v73) & 1;
        }

        v76 = *(a2 + 352);
        *(a1 + 344) = *(a2 + 344);
        *(a1 + 352) = v76;
        *(a1 + 360) = *(a2 + 360);
        *(a1 + 368) = *(a2 + 368);
        *(a1 + 376) = *(a2 + 376);
        v77 = *(a2 + 392);
        *(a1 + 384) = *(a2 + 384);
        *(a1 + 392) = v77;
        *(a1 + 400) = *(a2 + 400);
      }

      else
      {
        v54 = *(a2 + 376);
        *(a1 + 360) = *(a2 + 360);
        *(a1 + 376) = v54;
        *(a1 + 392) = *(a2 + 392);
        v55 = *(a2 + 312);
        *v52 = *v53;
        *(a1 + 312) = v55;
        v56 = *(a2 + 344);
        *(a1 + 328) = *(a2 + 328);
        *(a1 + 344) = v56;
      }
    }

    v78 = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
    v79 = *(v78 + 52);
    v80 = (a1 + v79);
    v81 = (a2 + v79);
    v82 = type metadata accessor for LinkDestination.Configuration(0);
    v83 = *(v82 - 8);
    if ((*(v83 + 48))(v81, 1, v82))
    {
      type metadata accessor for LinkDestination.Configuration?(0);
      memcpy(v80, v81, *(*(v84 - 8) + 64));
    }

    else
    {
      v85 = type metadata accessor for URL();
      (*(*(v85 - 8) + 16))(v80, v81, v85);
      *(v80 + *(v82 + 20)) = *(v81 + *(v82 + 20));
      (*(v83 + 56))(v80, 0, 1, v82);
    }

    *(a1 + *(v78 + 56)) = *(a2 + *(v78 + 56));
    v86 = type metadata accessor for CodableAccessibilityAttachmentStorage.V3(0);
    v87 = v86[5];
    v88 = a1 + v87;
    v89 = a2 + v87;
    v90 = *(v89 + 8);
    *v88 = *v89;
    *(v88 + 8) = v90;
    v91 = *(v89 + 24);
    *(v88 + 16) = *(v89 + 16);
    *(v88 + 24) = v91;
    *(v88 + 48) = *(v89 + 48);
    *(v88 + 32) = *(v89 + 32);
    v92 = v86[6];
    v93 = a1 + v92;
    v94 = (a2 + v92);
    v95 = *(a2 + v92 + 48);

    if (v95 == 1)
    {
      v96 = *(v94 + 1);
      *v93 = *v94;
      *(v93 + 16) = v96;
      v97 = *(v94 + 3);
      *(v93 + 32) = *(v94 + 2);
      *(v93 + 48) = v97;
LABEL_74:
      *(a1 + v86[7]) = *(a2 + v86[7]);
      v103 = v86[8];
      v104 = a1 + v103;
      v105 = a2 + v103;
      *v104 = *v105;
      *(v104 + 16) = *(v105 + 16);
      *(a1 + v86[9]) = *(a2 + v86[9]);
      *(a1 + v86[10]) = *(a2 + v86[10]);
      *(a1 + v86[11]) = *(a2 + v86[11]);
      *(a1 + v86[12]) = *(a2 + v86[12]);
      v106 = v86[13];
      v107 = (a1 + v106);
      v108 = (a2 + v106);
      v109 = v108[1];
      *v107 = *v108;
      v107[1] = v109;
      *(a1 + v86[14]) = *(a2 + v86[14]);

      goto LABEL_81;
    }

    v98 = *(v94 + 16);
    if (v98 == 255)
    {
      *v93 = *v94;
      *(v93 + 16) = *(v94 + 8);
      if (v95)
      {
LABEL_71:
        v99 = v94[7];
        *(v93 + 48) = v95;
        *(v93 + 56) = v99;
        (**(v95 - 8))(v93 + 24, (v94 + 3), v95);
        goto LABEL_74;
      }
    }

    else
    {
      v100 = *v94;
      v101 = v94[1];
      v102 = v98 & 1;
      outlined copy of AccessibilityText.Storage(*v94, v101, v98 & 1);
      *v93 = v100;
      *(v93 + 8) = v101;
      *(v93 + 16) = v102;
      *(v93 + 17) = *(v94 + 17);
      v95 = v94[6];
      if (v95)
      {
        goto LABEL_71;
      }
    }

    *(v93 + 24) = *(v94 + 3);
    *(v93 + 40) = *(v94 + 5);
    *(v93 + 56) = v94[7];
    goto LABEL_74;
  }

  if (BYTE2(v6) == 255)
  {
    *(a1 + 16) = *(a2 + 16);
    *(a1 + 31) = *(a2 + 31);
  }

  else
  {
    v9 = *(a2 + 16);
    v10 = *(a2 + 24);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v9, v10, v6, BYTE2(v6) & 1);
    *(a1 + 16) = v9;
    *(a1 + 24) = v10;
    *(a1 + 32) = v6;
    *(a1 + 34) = BYTE2(v6) & 1;
  }

  if (*(a2 + 58) == 255)
  {
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 55) = *(a2 + 55);
  }

  else
  {
    v14 = *(a2 + 56) | (*(a2 + 58) << 16);
    v15 = *(a2 + 40);
    v16 = *(a2 + 48);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v15, v16, *(a2 + 56), BYTE2(v14) & 1);
    *(a1 + 40) = v15;
    *(a1 + 48) = v16;
    *(a1 + 56) = v14;
    *(a1 + 58) = BYTE2(v14) & 1;
  }

  if (*(a2 + 82) == 255)
  {
    *(a1 + 64) = *(a2 + 64);
    *(a1 + 79) = *(a2 + 79);
  }

  else
  {
    v21 = *(a2 + 80) | (*(a2 + 82) << 16);
    v22 = *(a2 + 64);
    v23 = *(a2 + 72);
    outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v22, v23, *(a2 + 80), BYTE2(v21) & 1);
    *(a1 + 64) = v22;
    *(a1 + 72) = v23;
    *(a1 + 80) = v21;
    *(a1 + 82) = BYTE2(v21) & 1;
  }

  *(a1 + 84) = *(a2 + 84);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  v24 = *(a2 + 232);
  if (v24 == 1)
  {
    memcpy((a1 + 144), (a2 + 144), 0x108uLL);
  }

  else
  {
    if (*(a2 + 162) == 255)
    {
      *(a1 + 144) = *(a2 + 144);
      *(a1 + 159) = *(a2 + 159);
    }

    else
    {
      v30 = *(a2 + 160) | (*(a2 + 162) << 16);
      v31 = *(a2 + 144);
      v32 = *(a2 + 152);
      outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v31, v32, *(a2 + 160), BYTE2(v30) & 1);
      *(a1 + 144) = v31;
      *(a1 + 152) = v32;
      *(a1 + 160) = v30;
      *(a1 + 162) = BYTE2(v30) & 1;
      v24 = *(a2 + 232);
    }

    *(a1 + 163) = *(a2 + 163);
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
    *(a1 + 177) = *(a2 + 177);
    v33 = (a1 + 184);
    v34 = (a2 + 184);
    if (v24)
    {
      if (*(a2 + 202) == 255)
      {
        *v33 = *v34;
        *(a1 + 199) = *(a2 + 199);
      }

      else
      {
        v44 = *(a2 + 200) | (*(a2 + 202) << 16);
        v45 = *(a2 + 184);
        v46 = *(a2 + 192);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v45, v46, *(a2 + 200), BYTE2(v44) & 1);
        *(a1 + 184) = v45;
        *(a1 + 192) = v46;
        *(a1 + 200) = v44;
        *(a1 + 202) = BYTE2(v44) & 1;
      }

      if (*(a2 + 226) == 255)
      {
        *(a1 + 208) = *(a2 + 208);
        *(a1 + 223) = *(a2 + 223);
      }

      else
      {
        v57 = *(a2 + 224) | (*(a2 + 226) << 16);
        v58 = *(a2 + 208);
        v59 = *(a2 + 216);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v58, v59, *(a2 + 224), BYTE2(v57) & 1);
        *(a1 + 208) = v58;
        *(a1 + 216) = v59;
        *(a1 + 224) = v57;
        *(a1 + 226) = BYTE2(v57) & 1;
      }

      v60 = *(a2 + 240);
      *(a1 + 232) = *(a2 + 232);
      *(a1 + 240) = v60;
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 256) = *(a2 + 256);
      *(a1 + 264) = *(a2 + 264);
      v61 = *(a2 + 280);
      *(a1 + 272) = *(a2 + 272);
      *(a1 + 280) = v61;
      *(a1 + 288) = *(a2 + 288);
    }

    else
    {
      v38 = *(a2 + 264);
      *(a1 + 248) = *(a2 + 248);
      *(a1 + 264) = v38;
      *(a1 + 280) = *(a2 + 280);
      v39 = *(a2 + 200);
      *v33 = *v34;
      *(a1 + 200) = v39;
      v40 = *(a2 + 232);
      *(a1 + 216) = *(a2 + 216);
      *(a1 + 232) = v40;
    }

    v62 = (a1 + 296);
    v63 = (a2 + 296);
    if (*(a2 + 344))
    {
      if (*(a2 + 314) == 255)
      {
        *v62 = *v63;
        *(a1 + 311) = *(a2 + 311);
      }

      else
      {
        v70 = *(a2 + 312) | (*(a2 + 314) << 16);
        v71 = *(a2 + 296);
        v72 = *(a2 + 304);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v71, v72, *(a2 + 312), BYTE2(v70) & 1);
        *(a1 + 296) = v71;
        *(a1 + 304) = v72;
        *(a1 + 312) = v70;
        *(a1 + 314) = BYTE2(v70) & 1;
      }

      if (*(a2 + 338) == 255)
      {
        *(a1 + 320) = *(a2 + 320);
        *(a1 + 335) = *(a2 + 335);
      }

      else
      {
        v110 = *(a2 + 336) | (*(a2 + 338) << 16);
        v111 = *(a2 + 320);
        v112 = *(a2 + 328);
        outlined copy of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(v111, v112, *(a2 + 336), BYTE2(v110) & 1);
        *(a1 + 320) = v111;
        *(a1 + 328) = v112;
        *(a1 + 336) = v110;
        *(a1 + 338) = BYTE2(v110) & 1;
      }

      v113 = *(a2 + 352);
      *(a1 + 344) = *(a2 + 344);
      *(a1 + 352) = v113;
      *(a1 + 360) = *(a2 + 360);
      *(a1 + 368) = *(a2 + 368);
      *(a1 + 376) = *(a2 + 376);
      v114 = *(a2 + 392);
      *(a1 + 384) = *(a2 + 384);
      *(a1 + 392) = v114;
      *(a1 + 400) = *(a2 + 400);
    }

    else
    {
      v64 = *(a2 + 376);
      *(a1 + 360) = *(a2 + 360);
      *(a1 + 376) = v64;
      *(a1 + 392) = *(a2 + 392);
      v65 = *(a2 + 312);
      *v62 = *v63;
      *(a1 + 312) = v65;
      v66 = *(a2 + 344);
      *(a1 + 328) = *(a2 + 328);
      *(a1 + 344) = v66;
    }
  }

  v115 = type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0);
  v116 = *(v115 + 52);
  v117 = (a1 + v116);
  v118 = (a2 + v116);
  v119 = type metadata accessor for LinkDestination.Configuration(0);
  v120 = *(v119 - 8);
  if ((*(v120 + 48))(v118, 1, v119))
  {
    type metadata accessor for LinkDestination.Configuration?(0);
    memcpy(v117, v118, *(*(v121 - 8) + 64));
  }

  else
  {
    v122 = type metadata accessor for URL();
    (*(*(v122 - 8) + 16))(v117, v118, v122);
    *(v117 + *(v119 + 20)) = *(v118 + *(v119 + 20));
    (*(v120 + 56))(v117, 0, 1, v119);
  }

  *(a1 + *(v115 + 56)) = *(a2 + *(v115 + 56));
  v123 = type metadata accessor for CodableAccessibilityAttachmentStorage.V2(0);
  *(a1 + *(v123 + 20)) = *(a2 + *(v123 + 20));

LABEL_81:
  swift_storeEnumTagMultiPayload();
  return a1;
}

uint64_t destroy for CodableAccessibilityAttachmentStorage(uint64_t a1)
{
  type metadata accessor for CodableAccessibilityVersionStorage<CodableAccessibilityAttachmentStorage.V2, CodableAccessibilityAttachmentStorage.V3>();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();

  v3 = *(a1 + 32) | (*(a1 + 34) << 16);
  if (EnumCaseMultiPayload == 1)
  {
    if (*(a1 + 34) != 255)
    {
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 16), *(a1 + 24), v3, BYTE2(v3) & 1);
    }

    if (*(a1 + 58) != 255)
    {
      v4 = *(a1 + 56) | (*(a1 + 58) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 40), *(a1 + 48), v4, BYTE2(v4) & 1);
    }

    if (*(a1 + 82) != 255)
    {
      v5 = *(a1 + 80) | (*(a1 + 82) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 64), *(a1 + 72), v5, BYTE2(v5) & 1);
    }

    v6 = *(a1 + 232);
    if (v6 != 1)
    {
      if (*(a1 + 162) != 255)
      {
        v7 = *(a1 + 160) | (*(a1 + 162) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 144), *(a1 + 152), v7, BYTE2(v7) & 1);
        v6 = *(a1 + 232);
      }

      if (v6)
      {
        if (*(a1 + 202) != 255)
        {
          v8 = *(a1 + 200) | (*(a1 + 202) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 184), *(a1 + 192), v8, BYTE2(v8) & 1);
        }

        if (*(a1 + 226) != 255)
        {
          v9 = *(a1 + 224) | (*(a1 + 226) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 208), *(a1 + 216), v9, BYTE2(v9) & 1);
        }
      }

      if (*(a1 + 344))
      {
        if (*(a1 + 314) != 255)
        {
          v10 = *(a1 + 312) | (*(a1 + 314) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 296), *(a1 + 304), v10, BYTE2(v10) & 1);
        }

        if (*(a1 + 338) != 255)
        {
          v11 = *(a1 + 336) | (*(a1 + 338) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 320), *(a1 + 328), v11, BYTE2(v11) & 1);
        }
      }
    }

    v12 = *(type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0) + 52);
    v13 = type metadata accessor for LinkDestination.Configuration(0);
    if (!(*(*(v13 - 8) + 48))(a1 + v12, 1, v13))
    {
      v14 = type metadata accessor for URL();
      (*(*(v14 - 8) + 8))(a1 + v12, v14);
    }

    v15 = type metadata accessor for CodableAccessibilityAttachmentStorage.V3(0);

    v16 = a1 + *(v15 + 24);
    v17 = *(v16 + 48);
    if (v17 != 1)
    {
      v18 = *(v16 + 16);
      if (v18 != 255)
      {
        outlined consume of AccessibilityText.Storage(*v16, *(v16 + 8), v18 & 1);
        v17 = *(v16 + 48);
      }

      if (v17)
      {
        __swift_destroy_boxed_opaque_existential_1(v16 + 24);
      }
    }
  }

  else
  {
    if (*(a1 + 34) != 255)
    {
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 16), *(a1 + 24), v3, BYTE2(v3) & 1);
    }

    if (*(a1 + 58) != 255)
    {
      v20 = *(a1 + 56) | (*(a1 + 58) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 40), *(a1 + 48), v20, BYTE2(v20) & 1);
    }

    if (*(a1 + 82) != 255)
    {
      v21 = *(a1 + 80) | (*(a1 + 82) << 16);
      outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 64), *(a1 + 72), v21, BYTE2(v21) & 1);
    }

    v22 = *(a1 + 232);
    if (v22 != 1)
    {
      if (*(a1 + 162) != 255)
      {
        v23 = *(a1 + 160) | (*(a1 + 162) << 16);
        outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 144), *(a1 + 152), v23, BYTE2(v23) & 1);
        v22 = *(a1 + 232);
      }

      if (v22)
      {
        if (*(a1 + 202) != 255)
        {
          v24 = *(a1 + 200) | (*(a1 + 202) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 184), *(a1 + 192), v24, BYTE2(v24) & 1);
        }

        if (*(a1 + 226) != 255)
        {
          v25 = *(a1 + 224) | (*(a1 + 226) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 208), *(a1 + 216), v25, BYTE2(v25) & 1);
        }
      }

      if (*(a1 + 344))
      {
        if (*(a1 + 314) != 255)
        {
          v26 = *(a1 + 312) | (*(a1 + 314) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 296), *(a1 + 304), v26, BYTE2(v26) & 1);
        }

        if (*(a1 + 338) != 255)
        {
          v27 = *(a1 + 336) | (*(a1 + 338) << 16);
          outlined consume of CodableAccessibilityVersionStorage<CodableResolvedStyledText, AccessibilityText>(*(a1 + 320), *(a1 + 328), v27, BYTE2(v27) & 1);
        }
      }
    }

    v28 = *(type metadata accessor for CodableAccessibilityAttachmentStorage.VBase(0) + 52);
    v29 = type metadata accessor for LinkDestination.Configuration(0);
    if (!(*(*(v29 - 8) + 48))(a1 + v28, 1, v29))
    {
      v30 = type metadata accessor for URL();
      (*(*(v30 - 8) + 8))(a1 + v28, v30);
    }

    type metadata accessor for CodableAccessibilityAttachmentStorage.V2(0);
  }
}

uint64_t outlined init with take of AccessibilityNodeAttachment(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessibilityNodeAttachment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ProtobufDecoder.doubleField(_:)(SwiftUI::ProtobufFormat::Field a1)
{
  v3 = *a1.rawValue;
  v4 = *a1.rawValue & 7;
  switch(v4)
  {
    case 5:
      v9 = v1[1];
      if (v1[2] >= (v9 + 1))
      {
        v10 = *v9;
        v1[1] = v9 + 1;
        return v10;
      }

      break;
    case 2:
      v8 = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      if (v8 < 0)
      {
        __break(1u);
        return result;
      }

      v5 = v1[1];
      v6 = v1[2];
      if (v6 >= v5 + v8)
      {
        v1[3] = v3 & 0xFFFFFFFFFFFFFFF8 | 1;
        v1[4] = v5 + v8;
LABEL_5:
        if (v6 >= (v5 + 1))
        {
          result = *v5;
          v1[1] = v5 + 1;
          return result;
        }
      }

      break;
    case 1:
      v5 = v1[1];
      v6 = v1[2];
      goto LABEL_5;
  }

  lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
  swift_allocError();
  swift_willThrow();
  return result;
}

uint64_t ResolvedStyledText.needsDynamicRenderingInArchive.getter()
{
  v1 = *(v0 + 216);
  if (v1 && [*(v0 + 216) length] >= 1)
  {
    if (one-time initialization token for updateSchedule != -1)
    {
      swift_once();
    }

    v2 = static NSAttributedStringKey.updateSchedule;
    [v1 length];
    if ([v1 attribute:v2 atIndex:0 effectiveRange:0])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined destroy of Any?(v5);
      v3 = 1;
      return v3 & 1;
    }

    memset(v5, 0, sizeof(v5));
    outlined destroy of Any?(v5);
  }

  swift_beginAccess();
  if ((*(v0 + 160) & 2) != 0 && ResolvedStyledText.largerSizeVariant.getter(&largerSizeVariantKey))
  {
    v3 = ResolvedStyledText.needsDynamicRenderingInArchive.getter();
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t ArchivedViewCore.Metadata.archiveID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ArchivedViewCore.Metadata() + 36);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void sub_18D361C4C()
{
  if (MEMORY[0x1E69E7D58])
  {
    type metadata accessor for NamedImage.VectorInfo?(0, &lazy cache variable for type metadata for Mutex<NamedImage.Cache.Data>, &unk_1F0082C48, MEMORY[0x1E69E8300]);
  }
}

uint64_t _s7SwiftUI27StatefulMaterialProviderBox33_4075E3A4E56336DD739D990E781CBB12LLC8resolved2in0E0QzAA17EnvironmentValuesV_tFyAD5CacheVyx_GSgzYuYTXEfU0_(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v11 - v6;
  v8 = type metadata accessor for StatefulMaterialProviderBox.Cache();
  v9 = type metadata accessor for Optional();
  (*(*(v9 - 8) + 8))(a1, v9);
  (*(v5 + 16))(v7, a2, AssociatedTypeWitness);

  StatefulMaterialProviderBox.Cache.init(resolved:plist:)(v7, a1);
  return (*(*(v8 - 8) + 56))(a1, 0, 1, v8);
}

uint64_t StatefulMaterialProviderBox.resolveLayers(in:)@<X0>(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = v13 - v6;
  v8 = a1[1];
  v16 = *a1;
  v17 = v8;
  v9 = a1[3];
  v18 = a1[2];
  v19[0] = v9;
  *(v19 + 9) = *(a1 + 57);
  v15 = v16;
  outlined init with copy of Material.Context(&v16, v13);
  StatefulMaterialProviderBox.resolved(in:)(&v15, v7);

  v13[2] = v18;
  v14[0] = v19[0];
  *(v14 + 9) = *(v19 + 9);
  v13[1] = v17;
  v13[0] = v16;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 16))(v13, AssociatedTypeWitness, AssociatedConformanceWitness);
  result = (*(v5 + 8))(v7, AssociatedTypeWitness);
  *a2 = v11;
  return result;
}

uint64_t StatefulMaterialProviderBox.resolved(in:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v33 = a2;
  v5 = *v2;
  v6 = *(*v2 + 208);
  v7 = *(*v2 + 200);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v31 = &v22 - v10;
  v11 = swift_getAssociatedTypeWitness();
  v29 = *(v11 - 8);
  v30 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v22 - v12;
  v13 = type metadata accessor for Optional();
  v23 = *(v13 - 8);
  v24 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v22 - v14;
  v17 = *a1;
  v16 = a1[1];
  v18 = (v3 + *(v5 + 224));
  os_unfair_lock_lock(v18);
  type metadata accessor for StatefulMaterialProviderBox.Cache();
  type metadata accessor for Optional();
  v25 = *(type metadata accessor for Mutex() + 28);
  v26 = v16;
  v27 = v17;
  _s7SwiftUI27StatefulMaterialProviderBox33_4075E3A4E56336DD739D990E781CBB12LLC8resolved2in0E0QzAA17EnvironmentValuesV_tFAHSgAD5CacheVyx_GSgzYuYTXEfU_(v18 + v25, v17, v15);
  v22 = 0;
  os_unfair_lock_unlock(v18);
  v32 = v9;
  v19 = *(v9 + 48);
  v34 = AssociatedTypeWitness;
  if (v19(v15, 1, AssociatedTypeWitness) == 1)
  {
    (*(v23 + 8))(v15, v24);
    v20 = v28;
    (*(v6 + 48))(v7, v6);
    v36 = 0;
    v37 = 1;
    v38 = 0;
    v39 = 0;
    v35[0] = v27;
    v35[1] = v26;
    v24 = *(v6 + 56);

    v24(v20, v35, v7, v6);
    v15 = v31;
    (*(v6 + 64))(v20, v7, v6);
    os_unfair_lock_lock(v18);
    _s7SwiftUI27StatefulMaterialProviderBox33_4075E3A4E56336DD739D990E781CBB12LLC8resolved2in0E0QzAA17EnvironmentValuesV_tFyAD5CacheVyx_GSgzYuYTXEfU0_(v18 + v25, v15);
    os_unfair_lock_unlock(v18);

    (*(v29 + 8))(v20, v30);
  }

  return (*(v32 + 32))(v33, v15, v34);
}

uint64_t _s7SwiftUI27StatefulMaterialProviderBox33_4075E3A4E56336DD739D990E781CBB12LLC8resolved2in0E0QzAA17EnvironmentValuesV_tFAHSgAD5CacheVyx_GSgzYuYTXEfU_@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v22 = a3;
  v4 = type metadata accessor for StatefulMaterialProviderBox.Cache();
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  v9 = *(v4 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - v12;
  (*(v6 + 16))(v8, a1, v5, v11);
  if ((*(v9 + 48))(v8, 1, v4) == 1)
  {
    (*(v6 + 8))(v8, v5);
  }

  else
  {
    (*(v9 + 32))(v13, v8, v4);
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v15 = Strong;

      if (v15 == v21)
      {
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v19 = *(AssociatedTypeWitness - 8);
        v20 = v22;
        (*(v19 + 16))(v22, v13, AssociatedTypeWitness);
        (*(v9 + 8))(v13, v4);
        return (*(v19 + 56))(v20, 0, 1, AssociatedTypeWitness);
      }
    }

    (*(v9 + 8))(v13, v4);
  }

  v16 = swift_getAssociatedTypeWitness();
  return (*(*(v16 - 8) + 56))(v22, 1, 1, v16);
}

uint64_t static ViewDecoders.registerDecodableFactoryType<A, B>(_:forType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = _typeName(_:qualified:)();
  static ViewDecoders.registerDecodableFactoryType<A>(_:forID:)(a1, v9, v10, v11, a5, a6);
}

unint64_t type metadata accessor for Decodable & AnyViewFactory.Type()
{
  result = lazy cache variable for type metadata for Decodable & AnyViewFactory.Type;
  if (!lazy cache variable for type metadata for Decodable & AnyViewFactory.Type)
  {
    type metadata accessor for Decodable & AnyViewFactory();
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Decodable & AnyViewFactory.Type);
  }

  return result;
}

unint64_t type metadata accessor for Decodable & AnyViewFactory()
{
  result = lazy cache variable for type metadata for Decodable & AnyViewFactory;
  if (!lazy cache variable for type metadata for Decodable & AnyViewFactory)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &lazy cache variable for type metadata for Decodable & AnyViewFactory);
  }

  return result;
}

unint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA018DefaultPixelLengthI033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt1g5(void *a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (a1)
  {
    if (v4 == a1[8])
    {
LABEL_3:
      type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPixelLengthKey>, &type metadata for DefaultPixelLengthKey, &protocol witness table for DefaultPixelLengthKey, type metadata accessor for EnvironmentPropertyKey);
      v6 = v5;
      v7 = *(v3 + 32);
      if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
      {
        outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v21);
        outlined init with take of AnyTrackedValue(v21, &v22);
        v10 = v25;
        __swift_project_boxed_opaque_existential_1(&v22, v24);
        v11 = v10[1];
        type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for CGFloat?, MEMORY[0x1E69E7DE0], MEMORY[0x1E69E6720]);
        v11(v21);
        __swift_destroy_boxed_opaque_existential_1(&v22);
      }

      else
      {
        v15 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultPixelLengthS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
        if (v15)
        {
          v16 = v15[9];
          v17 = *(v15 + 80);
        }

        else
        {
          v16 = 0;
          v17 = 1;
        }

        *&v21[0] = v16;
        BYTE8(v21[0]) = v17;
        type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultPixelLengthKey>>();
        v24 = v18;
        v25 = &protocol witness table for TrackedValue<A>;
        v22 = v16;
        v23 = v17;
        specialized Dictionary.subscript.setter(&v22, v6);
      }

      goto LABEL_15;
    }
  }

  else if (!v4)
  {
    goto LABEL_3;
  }

  v12 = 1;
  *(v3 + 56) = 1;
  v13 = _s7SwiftUI4find33_D64CE6C88E7413721C59A34C0C940F2CLL_3keys9UnmanagedVyAA12TypedElementACLLCyxGGSgAFyAA12PropertyListV0P0CGSg_xmtAA0Q3KeyRzlFAA011EnvironmentqS0VyAA018DefaultPixelLengthS033_1B17C64D9E901A0054B49B69A4A2439DLLVG_Tt0g5(a1);
  if (v13)
  {
    v14 = v13[9];
    v12 = *(v13 + 80);
  }

  else
  {
    v14 = 0;
  }

  *&v21[0] = v14;
  BYTE8(v21[0]) = v12;
LABEL_15:
  v19 = *&v21[0];
  os_unfair_lock_unlock((v3 + 16));

  return v19;
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<DefaultPixelLengthKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultPixelLengthKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<DefaultPixelLengthKey>, &type metadata for DefaultPixelLengthKey, &protocol witness table for DefaultPixelLengthKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<DefaultPixelLengthKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<DefaultPixelLengthKey>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA06WindowJ4KeysO13AppearsActiveVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO13AppearsActiveVG_Tt2g5(a1) & 1;
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>, &type metadata for WindowEnvironmentKeys.AppearsActive, &protocol witness table for WindowEnvironmentKeys.AppearsActive, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v16;
    v11 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    (v11[1])(v14, MEMORY[0x1E69E6370], v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA06WindowG4KeysO13AppearsActiveVG_Tt2g5(a1) & 1;
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>, &type metadata for WindowEnvironmentKeys.AppearsActive, &protocol witness table for WindowEnvironmentKeys.AppearsActive, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<WindowEnvironmentKeys.AppearsActive>>);
    }
  }
}

uint64_t _s7SwiftUI12PropertyListV7TrackerC5value_3for5ValueQzAC_xmtAA0C3KeyRzlFAA011EnvironmentcI0VyAA025AccessibilityReduceMotionI033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt1g5(uint64_t a1)
{
  v3 = *(v1 + 16);

  os_unfair_lock_lock((v3 + 16));
  v4 = *(v3 + 24);
  if (!a1)
  {
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_7:
    *(v3 + 56) = 1;
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    goto LABEL_9;
  }

  if (v4 != *(a1 + 64))
  {
    goto LABEL_7;
  }

LABEL_3:
  type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(0, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityReduceMotionKey>, &type metadata for AccessibilityReduceMotionKey, &protocol witness table for AccessibilityReduceMotionKey, type metadata accessor for EnvironmentPropertyKey);
  v6 = v5;
  v7 = *(v3 + 32);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5), (v9 & 1) != 0))
  {
    outlined init with copy of AnyTrackedValue(*(v7 + 56) + 40 * v8, v14);
    outlined init with take of AnyTrackedValue(v14, v15);
    v10 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v11 = v10[1];
    type metadata accessor for [LayoutDirection](0, &lazy cache variable for type metadata for Bool?, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    v11(v14);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  else
  {
    LOBYTE(v14[0]) = _s7SwiftUI12PropertyListVy5ValueQzxmcAA0C3KeyRzluigAEyXEfU_AA011EnvironmentcF0VyAA025AccessibilityReduceMotionF033_1E80A5D8CD82563C298D64AC1337E839LLVG_Tt2g5(a1);
    type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityReduceMotionKey>>();
    v16 = v12;
    v17 = &protocol witness table for TrackedValue<A>;
    LOBYTE(v15[0]) = v14[0];
    specialized Dictionary.subscript.setter(v15, v6);
  }

LABEL_9:
  os_unfair_lock_unlock((v3 + 16));

  return LOBYTE(v14[0]);
}

void type metadata accessor for TrackedValue<EnvironmentPropertyKey<AccessibilityReduceMotionKey>>()
{
  if (!lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityReduceMotionKey>>)
  {
    type metadata accessor for EnvironmentPropertyKey<EnvironmentValues.__Key_glassEffectBackdropObserver>(255, &lazy cache variable for type metadata for EnvironmentPropertyKey<AccessibilityReduceMotionKey>, &type metadata for AccessibilityReduceMotionKey, &protocol witness table for AccessibilityReduceMotionKey, type metadata accessor for EnvironmentPropertyKey);
    lazy protocol witness table accessor for type EnvironmentPropertyKey<AccessibilityReduceMotionKey> and conformance EnvironmentPropertyKey<A>();
    v0 = type metadata accessor for TrackedValue();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for TrackedValue<EnvironmentPropertyKey<AccessibilityReduceMotionKey>>);
    }
  }
}

void AtomicBox.wrappedValue.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = *(a1 + 16);
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 20) & ~*(v6 + 80);
  os_unfair_lock_lock(v4 + 4);
  (*(v6 + 16))(a2, v4 + v7, v5);

  os_unfair_lock_unlock(v4 + 4);
}

uint64_t closure #1 in DisplayList.ViewRasterizer.drawingContent(list:time:)(CGFloat *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  v43 = a6;
  v10 = a4;
  v47 = a1;
  v14 = HIDWORD(a4);
  v15 = type metadata accessor for DispatchWorkItemFlags();
  v46 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v44 = *(v18 - 8);
  v45 = v18;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  value = printTree.value;
  if (printTree.value != 2)
  {
    swift_endAccess();
    if (!value)
    {
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  v22 = getenv("SWIFTUI_PRINT_TREE");
  if (!v22)
  {
    printTree.value = 0;
    swift_endAccess();
    goto LABEL_8;
  }

  v23 = atoi(v22);
  printTree.value = v23 != 0;
  swift_endAccess();
  if (v23)
  {
LABEL_6:
    type metadata accessor for _ContiguousArrayStorage<Any>();
    v24 = swift_allocObject();
    v42 = v15;
    v25 = v24;
    *(v24 + 16) = xmmword_18DDA6EB0;
    aBlock = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(17);
    MEMORY[0x193ABEDD0](0x2077656956, 0xE500000000000000);
    v54 = *&a2;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](544497952, 0xE400000000000000);
    v54 = a9;
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x193ABEDD0](2618, 0xE200000000000000);
    v54 = *&a3;
    v55 = v10;
    v56 = v14;
    DisplayList.description.getter();
    MEMORY[0x193ABEDD0]();

    v26 = aBlock;
    v27 = v49;
    v25[7] = MEMORY[0x1E69E6158];
    v25[4] = v26;
    v25[5] = v27;
    print(_:separator:terminator:)();
    v15 = v42;
  }

LABEL_8:
  v28 = *(a5 + 64);
  *(a5 + 72) = a9;
  *(a5 + 80) = 0x7FF0000000000000;
  aBlock = a3;
  LOWORD(v49) = v10;
  HIDWORD(v49) = v14;

  v29 = *(a5 + 48);
  v30 = *(a5 + 56);
  DisplayList.GraphicsRenderer.render(list:in:)(&aBlock, v47);
  swift_beginAccess();

  v31 = MEMORY[0x1E69E7CC8];
  *(a5 + 16) = MEMORY[0x1E69E7CC8];

  swift_beginAccess();
  v32 = *(a5 + 32);
  *(a5 + 32) = v31;
  *(a5 + 40) = v31;
  *(a5 + 16) = v32;
  swift_endAccess();
  *(a5 + 48) = v29;
  *(a5 + 56) = v30;
  *(a5 + 64) = v28;

  v34 = fmax(*(a5 + 80) - a9, 0.000001);
  if (v34 != INFINITY)
  {
    v35 = v43;
    swift_beginAccess();
    swift_unknownObjectWeakLoadStrong();
    v36 = *(v35 + 24);
    type metadata accessor for OS_dispatch_queue();
    v37 = static OS_dispatch_queue.main.getter();
    v38 = swift_allocObject();
    *(v38 + 24) = v36;
    swift_unknownObjectWeakInit();
    v39 = swift_allocObject();
    *(v39 + 16) = v38;
    *(v39 + 24) = v34;
    v52 = partial apply for closure #1 in closure #1 in DisplayList.ViewRasterizer.drawingContent(list:time:);
    v53 = v39;
    aBlock = MEMORY[0x1E69E9820];
    v49 = 1107296256;
    v50 = thunk for @escaping @callee_guaranteed () -> ();
    v51 = &block_descriptor_19;
    v40 = _Block_copy(&aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock = MEMORY[0x1E69E7CC0];
    lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
    type metadata accessor for ViewGraphRenderObserver?(0, &lazy cache variable for type metadata for [DispatchWorkItemFlags], MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    MEMORY[0x193ABFB70](0, v20, v17, v40);
    _Block_release(v40);
    swift_unknownObjectRelease();

    (*(v46 + 8))(v17, v15);
    return (*(v44 + 8))(v20, v45);
  }

  return result;
}

uint64_t sub_18D363914()
{

  return swift_deallocObject();
}

void AtomicBox.access<A>(_:)(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = (*(*(*(a3 + 16) - 8) + 80) + 20) & ~*(*(*(a3 + 16) - 8) + 80);
  os_unfair_lock_lock(v5 + 4);
  a1(v5 + v6);
  os_unfair_lock_unlock(v5 + 4);
}

unint64_t ContentTransition.CustomTransition.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 < v6)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      result = v3[3];
      if (result)
      {
        v9 = v3[4];
        if (v5 < v9)
        {
          goto LABEL_11;
        }

        if (v9 < v5)
        {
          goto LABEL_58;
        }

        v3[3] = 0;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
      }

      if (result < 8)
      {
        goto LABEL_58;
      }

LABEL_11:
      if (result >> 3 == 2)
      {
        if ((result & 7) != 2)
        {
          goto LABEL_60;
        }

        v12 = v3[5];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v12 + 2) + 1, 1, v12);
        }

        v14 = *(v12 + 2);
        v13 = *(v12 + 3);
        if (v14 >= v13 >> 1)
        {
          v12 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1, v12);
        }

        *(v12 + 2) = v14 + 1;
        *&v12[8 * v14 + 32] = v6;
        v3[5] = v12;
        v15 = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if (v15 < 0)
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          __break(1u);
          result = specialized _ArrayBuffer._consumeAndCreateNew()(a2);
          v27 = *(result + 16);
          if (!v27)
          {
            __break(1u);
            return result;
          }

          v25 = v27 - 1;
          v26 = *(result + 8 * v25 + 32);
          *(result + 16) = v25;
          v3[5] = result;
          v3[2] = v26;
        }

        v16 = v3[1] + v15;
        if (v6 < v16)
        {
LABEL_60:
          lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
          swift_allocError();
          swift_willThrow();
        }

        v3[2] = v16;
        ContentTransition.Effect.init(from:)(v3, v31);
        v17 = v3[5];
        if (!*(v17 + 2))
        {
          goto LABEL_65;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v18 = *(v17 + 2);
          if (!v18)
          {
            goto LABEL_66;
          }
        }

        else
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew()(v17);
          v18 = *(v17 + 2);
          if (!v18)
          {
            goto LABEL_66;
          }
        }

        v19 = v18 - 1;
        v6 = *&v17[8 * v19 + 32];
        *(v17 + 2) = v19;
        v3[5] = v17;
        v3[2] = v6;
        v28 = v31[0];
        v29 = v31[1];
        v30 = v32;
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1, v8);
          v8 = result;
        }

        v21 = *(v8 + 16);
        v20 = *(v8 + 24);
        if (v21 >= v20 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1, v8);
          v8 = result;
        }

        *(v8 + 16) = v21 + 1;
        v22 = v8 + 36 * v21;
        *(v22 + 64) = v30;
        *(v22 + 32) = v28;
        *(v22 + 48) = v29;
      }

      else if (result >> 3 == 1)
      {
        if ((result & 7) != 0)
        {
          if ((result & 7) != 2)
          {
            goto LABEL_58;
          }

          v10 = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
          }

          if (v10 < 0)
          {
            goto LABEL_67;
          }

          v11 = v3[1] + v10;
          if (v6 < v11)
          {
LABEL_58:
            lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
            swift_allocError();
            swift_willThrow();
          }

          v3[3] = 8;
          v3[4] = v11;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }

        if (HIDWORD(result))
        {
          v7 = 0;
        }

        else
        {
          v7 = result;
        }
      }

      else
      {
        v23 = result & 7;
        if (v23 > 1)
        {
          if (v23 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_68;
            }

            v24 = v3[1] + result;
            if (v6 < v24)
            {
              goto LABEL_58;
            }
          }

          else
          {
            if (v23 != 5)
            {
              goto LABEL_58;
            }

            v24 = v3[1] + 4;
            if (v6 < v24)
            {
              goto LABEL_58;
            }
          }

          goto LABEL_3;
        }

        if ((result & 7) != 0)
        {
          if (v23 != 1)
          {
            goto LABEL_58;
          }

          v24 = v3[1] + 8;
          if (v6 < v24)
          {
            goto LABEL_58;
          }

LABEL_3:
          v3[1] = v24;
          goto LABEL_4;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
        }
      }

LABEL_4:
      v5 = v3[1];
      if (v5 >= v6)
      {
        goto LABEL_57;
      }
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
LABEL_57:
  v3[3] = 0;
  *a2 = v8;
  *(a2 + 8) = v7;
  *(a2 + 12) = 2;
  return result;
}

unint64_t ContentTransition.Effect.init(from:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if (v5 >= v6)
  {
    v7 = 0;
    v29 = 0;
    v8 = 0;
    v9 = 1.0;
    v11 = 0.0;
    v10 = 2;
    v12 = 1;
    v13 = 2;
    v14 = 3;
LABEL_4:
    v3[3] = 0;
    *a2 = v12;
    *(a2 + 4) = v7;
    *(a2 + 8) = v10;
    *(a2 + 12) = v29;
    *(a2 + 16) = v13;
    *(a2 + 20) = v11;
    *(a2 + 24) = v9;
    *(a2 + 28) = v14;
    *(a2 + 32) = v8;
    return result;
  }

  v7 = 0;
  v29 = 0;
  v8 = 0;
  v9 = 1.0;
  v10 = 2;
  v11 = 0.0;
  v12 = 1;
  v13 = 2;
  v14 = 3;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v15 = v3[4];
      if (v5 < v15)
      {
        goto LABEL_13;
      }

      if (v15 < v5)
      {
        goto LABEL_120;
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
LABEL_120:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_13:
    v16 = result >> 3;
    v17 = result & 7;
    if (result >> 3 <= 4)
    {
      if (result >> 3 > 2)
      {
        if (v16 == 3)
        {
          if (v17 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_126;
            }

            v23 = v3[1];
            if (v6 < v23 + result)
            {
              goto LABEL_120;
            }

            v3[3] = 29;
            v3[4] = v23 + result;
          }

          else
          {
            if (v17 != 5)
            {
              goto LABEL_120;
            }

            v23 = v3[1];
          }

          if (v6 < (v23 + 1))
          {
            goto LABEL_120;
          }

          v13 = 0;
          v29 = *v23;
          v3[1] = v23 + 1;
          goto LABEL_6;
        }

        if (v16 == 4)
        {
          if (v17 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_128;
            }

            v20 = v3[1];
            if (v6 < v20 + result)
            {
              goto LABEL_120;
            }

            v3[3] = 37;
            v3[4] = v20 + result;
          }

          else
          {
            if (v17 != 5)
            {
              goto LABEL_120;
            }

            v20 = v3[1];
          }

          if (v6 < (v20 + 1))
          {
            goto LABEL_120;
          }

          v11 = *v20;
          v3[1] = v20 + 1;
          goto LABEL_6;
        }
      }

      else
      {
        if (v16 == 1)
        {
          if ((result & 7) != 0)
          {
            if (v17 != 2)
            {
              goto LABEL_120;
            }

            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_125;
            }

            v22 = v3[1] + result;
            if (v6 < v22)
            {
              goto LABEL_120;
            }

            v3[3] = 8;
            v3[4] = v22;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if (HIDWORD(result))
          {
            v12 = 0;
          }

          else
          {
            v12 = result;
          }

          goto LABEL_6;
        }

        if (v16 == 2)
        {
          if (v17 == 2)
          {
            result = ProtobufDecoder.decodeVarint()();
            if (v2)
            {
              return result;
            }

            if ((result & 0x8000000000000000) != 0)
            {
              goto LABEL_127;
            }

            v19 = v3[1];
            if (v6 < v19 + result)
            {
              goto LABEL_120;
            }

            v3[3] = 21;
            v3[4] = v19 + result;
          }

          else
          {
            if (v17 != 5)
            {
              goto LABEL_120;
            }

            v19 = v3[1];
          }

          if (v6 < (v19 + 1))
          {
            goto LABEL_120;
          }

          v10 = 0;
          v7 = *v19;
          v3[1] = v19 + 1;
          goto LABEL_6;
        }
      }

      goto LABEL_76;
    }

    if (result >> 3 <= 6)
    {
      if (v16 == 5)
      {
        if (v17 == 2)
        {
          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_129;
          }

          v25 = v3[1];
          if (v6 < v25 + result)
          {
            goto LABEL_120;
          }

          v3[3] = 45;
          v3[4] = v25 + result;
        }

        else
        {
          if (v17 != 5)
          {
            goto LABEL_120;
          }

          v25 = v3[1];
        }

        if (v6 < (v25 + 1))
        {
          goto LABEL_120;
        }

        v28 = *v25;
        v3[1] = v25 + 1;
        v9 = v28 - v11;
        goto LABEL_6;
      }

      if (v16 == 6)
      {
        if ((result & 7) != 0)
        {
          if (v17 != 2)
          {
            goto LABEL_120;
          }

          result = ProtobufDecoder.decodeVarint()();
          if (v2)
          {
            return result;
          }

          if ((result & 0x8000000000000000) != 0)
          {
            goto LABEL_130;
          }

          v21 = v3[1] + result;
          if (v6 < v21)
          {
            goto LABEL_120;
          }

          v3[3] = 48;
          v3[4] = v21;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if (HIDWORD(result))
        {
          v14 = 3;
        }

        else
        {
          v14 = result;
        }

        goto LABEL_6;
      }

      goto LABEL_76;
    }

    if (v16 == 7)
    {
      break;
    }

    if (v16 == 9)
    {
      if (v17 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_123;
        }

        v26 = v3[1];
        if (v6 < v26 + result)
        {
          goto LABEL_120;
        }

        v3[3] = 77;
        v3[4] = v26 + result;
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_120;
        }

        v26 = v3[1];
      }

      if (v6 < (v26 + 1))
      {
        goto LABEL_120;
      }

      v9 = *v26;
      v3[1] = v26 + 1;
      goto LABEL_6;
    }

    if (v16 == 10)
    {
      if ((result & 7) != 0)
      {
        if (v17 != 2)
        {
          goto LABEL_120;
        }

        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_124;
        }

        v18 = v3[1] + result;
        if (v6 < v18)
        {
          goto LABEL_120;
        }

        v3[3] = 80;
        v3[4] = v18;
      }

      result = ProtobufDecoder.decodeVarint()();
      if (v2)
      {
        return result;
      }

      v8 = result;
      goto LABEL_6;
    }

LABEL_76:
    if ((result & 7) > 1)
    {
      if (v17 == 2)
      {
        result = ProtobufDecoder.decodeVarint()();
        if (v2)
        {
          return result;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_131;
        }

        v27 = v3[1] + result;
        if (v6 < v27)
        {
          goto LABEL_120;
        }
      }

      else
      {
        if (v17 != 5)
        {
          goto LABEL_120;
        }

        v27 = v3[1] + 4;
        if (v6 < v27)
        {
          goto LABEL_120;
        }
      }

      goto LABEL_5;
    }

    if ((result & 7) != 0)
    {
      if (v17 != 1)
      {
        goto LABEL_120;
      }

      v27 = v3[1] + 8;
      if (v6 < v27)
      {
        goto LABEL_120;
      }

LABEL_5:
      v3[1] = v27;
      goto LABEL_6;
    }

    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

LABEL_6:
    v5 = v3[1];
    if (v5 >= v6)
    {
      goto LABEL_4;
    }
  }

  if ((result & 7) == 0)
  {
LABEL_68:
    result = ProtobufDecoder.decodeVarint()();
    if (v2)
    {
      return result;
    }

    v7 = result;
    v10 = 1;
    goto LABEL_6;
  }

  if (v17 != 2)
  {
    goto LABEL_120;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v24 = v3[1] + result;
    if (v6 < v24)
    {
      goto LABEL_120;
    }

    v3[3] = 56;
    v3[4] = v24;
    goto LABEL_68;
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

unint64_t specialized Color.ResolvedHDR.init(from:)@<X0>(unint64_t result@<X0>, float *a2@<X8>)
{
  v3 = result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  v7 = 0;
  v8 = 1.0;
  if (v5 >= v6)
  {
    v9 = 2143289344;
    v10 = 0;
    v11 = 0;
LABEL_77:
    v3[3] = 0;
    *a2 = v11;
    *(a2 + 1) = v10;
    *(a2 + 2) = v7;
    a2[3] = v8;
    *(a2 + 4) = v9;
    return result;
  }

  v9 = 2143289344;
  v10 = 0;
  v11 = 0;
  while (1)
  {
    result = v3[3];
    if (result)
    {
      v12 = v3[4];
      if (v5 < v12)
      {
        goto LABEL_9;
      }

      if (v12 < v5)
      {
        goto LABEL_78;
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
LABEL_78:
      lazy protocol witness table accessor for type ProtobufDecoder.DecodingError and conformance ProtobufDecoder.DecodingError();
      swift_allocError();
      return swift_willThrow();
    }

LABEL_9:
    v13 = result >> 3;
    v14 = result & 7;
    if (result >> 3 <= 2)
    {
      if (v13 == 1)
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
            goto LABEL_83;
          }

          v19 = v3[1];
          if (v6 < v19 + result)
          {
            goto LABEL_78;
          }

          v3[3] = 13;
          v3[4] = v19 + result;
        }

        else
        {
          if (v14 != 5)
          {
            goto LABEL_78;
          }

          v19 = v3[1];
        }

        v5 = (v19 + 1);
        if (v6 < (v19 + 1))
        {
          goto LABEL_78;
        }

        v11 = *v19;
        goto LABEL_73;
      }

      if (v13 == 2)
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
            goto LABEL_84;
          }

          v16 = v3[1];
          if (v6 < v16 + result)
          {
            goto LABEL_78;
          }

          v3[3] = 21;
          v3[4] = v16 + result;
        }

        else
        {
          if (v14 != 5)
          {
            goto LABEL_78;
          }

          v16 = v3[1];
        }

        v5 = (v16 + 1);
        if (v6 < (v16 + 1))
        {
          goto LABEL_78;
        }

        v10 = *v16;
        goto LABEL_73;
      }

      goto LABEL_30;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
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
          goto LABEL_81;
        }

        v18 = v3[1];
        if (v6 < v18 + result)
        {
          goto LABEL_78;
        }

        v3[3] = 37;
        v3[4] = v18 + result;
      }

      else
      {
        if (v14 != 5)
        {
          goto LABEL_78;
        }

        v18 = v3[1];
      }

      v5 = (v18 + 1);
      if (v6 < (v18 + 1))
      {
        goto LABEL_78;
      }

      v8 = *v18;
      goto LABEL_73;
    }

    if (v13 == 5)
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
          goto LABEL_82;
        }

        v15 = v3[1];
        if (v6 < v15 + result)
        {
          goto LABEL_78;
        }

        v3[3] = 45;
        v3[4] = v15 + result;
      }

      else
      {
        if (v14 != 5)
        {
          goto LABEL_78;
        }

        v15 = v3[1];
      }

      v5 = (v15 + 1);
      if (v6 < (v15 + 1))
      {
        goto LABEL_78;
      }

      v9 = *v15;
      goto LABEL_73;
    }

LABEL_30:
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
          goto LABEL_85;
        }

        v5 = v3[1] + result;
      }

      else
      {
        if (v14 != 5)
        {
          goto LABEL_78;
        }

        v5 = v3[1] + 4;
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

        v5 = v3[1];
        goto LABEL_74;
      }

      if (v14 != 1)
      {
        goto LABEL_78;
      }

      v5 = v3[1] + 8;
    }

    if (v6 < v5)
    {
      goto LABEL_78;
    }

LABEL_73:
    v3[1] = v5;
LABEL_74:
    if (v5 >= v6)
    {
      goto LABEL_77;
    }
  }

  if (v14 != 2)
  {
    if (v14 != 5)
    {
      goto LABEL_78;
    }

    v17 = v3[1];
LABEL_41:
    v5 = (v17 + 1);
    if (v6 < (v17 + 1))
    {
      goto LABEL_78;
    }

    v7 = *v17;
    goto LABEL_73;
  }

  result = ProtobufDecoder.decodeVarint()();
  if (v2)
  {
    return result;
  }

  if ((result & 0x8000000000000000) == 0)
  {
    v17 = v3[1];
    if (v6 < v17 + result)
    {
      goto LABEL_78;
    }

    v3[3] = 29;
    v3[4] = v17 + result;
    goto LABEL_41;
  }

  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  __break(1u);
LABEL_83:
  __break(1u);
LABEL_84:
  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type [CodableAccessibilityValueStorage] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [CodableAccessibilityValueStorage] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [CodableAccessibilityValueStorage] and conformance <A> [A])
  {
    type metadata accessor for CodableAccessibilityValueStorage?(255, &lazy cache variable for type metadata for [CodableAccessibilityValueStorage], &type metadata for CodableAccessibilityValueStorage, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type CodableAccessibilityValueStorage and conformance CodableAccessibilityValueStorage();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CodableAccessibilityValueStorage] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [CodableAccessibilityValueStorage] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [CodableAccessibilityValueStorage] and conformance <A> [A])
  {
    type metadata accessor for CodableAccessibilityValueStorage?(255, &lazy cache variable for type metadata for [CodableAccessibilityValueStorage], &type metadata for CodableAccessibilityValueStorage, MEMORY[0x1E69E62F8]);
    lazy protocol witness table accessor for type CodableAccessibilityValueStorage and conformance CodableAccessibilityValueStorage();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [CodableAccessibilityValueStorage] and conformance <A> [A]);
  }

  return result;
}

void type metadata accessor for CodableAccessibilityValueStorage?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t CodableAccessibilityValueStorage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  type metadata accessor for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>(0, &lazy cache variable for type metadata for KeyedDecodingContainer<CodableAccessibilityValueStorage.CodingKeys>, lazy protocol witness table accessor for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys, &unk_1F008EE20, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16[-1] - v7;
  v18 = 0;
  v19 = 0;
  v20 = 255;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = v6;
    v10 = v15;
    v23 = 0;
    lazy protocol witness table accessor for type AccessibilityText and conformance AccessibilityText();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v11 = v16[0];
    v12 = v16[1];
    v13 = v17;
    outlined consume of AccessibilityText?(v18, v19, v20);
    v18 = v11;
    v19 = v12;
    v20 = v13;
    v23 = 1;
    lazy protocol witness table accessor for type AnyAccessibilityValue and conformance AnyAccessibilityValue();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v9 + 8))(v8, v5);
    outlined assign with take of AnyAccessibilityValue?(v16, v21);
    outlined init with copy of CodableAccessibilityValueStorage(&v18, v10);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return outlined destroy of CodableAccessibilityValueStorage(&v18);
}

void type metadata accessor for KeyedEncodingContainer<AccessibilityEmptyValue.CodingKeys>(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t lazy protocol witness table accessor for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys;
  if (!lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CodableAccessibilityValueStorage.CodingKeys and conformance CodableAccessibilityValueStorage.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AccessibilityText and conformance AccessibilityText()
{
  result = lazy protocol witness table cache variable for type AccessibilityText and conformance AccessibilityText;
  if (!lazy protocol witness table cache variable for type AccessibilityText and conformance AccessibilityText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityText and conformance AccessibilityText);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AccessibilityText and conformance AccessibilityText;
  if (!lazy protocol witness table cache variable for type AccessibilityText and conformance AccessibilityText)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AccessibilityText and conformance AccessibilityText);
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CodableAccessibilityCustomContentList.CodableEntry.CodableValue.Content.CodingKeys()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t specialized CodableByProtobuf.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v18, v18[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    isa = v15.super.isa;
    v6 = v16;
    outlined copy of Data._Representation(v15.super.isa, v16);
    ProtobufDecoder.init(_:)(v15.super.isa, v16, &v15);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = dispatch thunk of Decoder.userInfo.getter();

    v17 = v7;
    AccessibilityText.init(from:)(&v15, &v12);
    outlined consume of Data._Representation(isa, v6);
    v8 = v13;
    v9 = v14;
    *a2 = v12;
    *(a2 + 16) = v8;
    *(a2 + 17) = v9;
    v10 = v15.super.isa;

    __swift_destroy_boxed_opaque_existential_1(v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v20, v20[3]);
    lazy protocol witness table accessor for type Data and conformance Data();
    dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
    isa = v17.super.isa;
    v6 = v18;
    outlined copy of Data._Representation(v17.super.isa, v18);
    ProtobufDecoder.init(_:)(v17.super.isa, v18, &v17);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v7 = dispatch thunk of Decoder.userInfo.getter();

    v19 = v7;
    ResolvedGradient.init(from:)(&v17, &v13);
    outlined consume of Data._Representation(isa, v6);
    v8 = v14;
    v9 = v15;
    v10 = v16;
    *a2 = v13;
    *(a2 + 8) = v8;
    *(a2 + 12) = v9;
    *(a2 + 16) = v10;
    v11 = v17.super.isa;

    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
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

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for LayoutSubviews(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 18) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 18) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void outlined consume of AccessibilityText?(void *a1, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    outlined consume of AccessibilityText.Storage(a1, a2, a3 & 1);
  }
}

uint64_t outlined assign with take of AnyAccessibilityValue?(uint64_t a1, uint64_t a2)
{
  type metadata accessor for AnyAccessibilityValue?(0, &lazy cache variable for type metadata for AnyAccessibilityValue?, &type metadata for AnyAccessibilityValue, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t initializeWithCopy for CodableAccessibilityValueStorage(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (*(a2 + 16) != 0xFF)
  {
    v7 = v4 >> 8;
    v8 = *a2;
    v9 = *(a2 + 8);
    v10 = v4 & 1;
    outlined copy of AccessibilityText.Storage(*a2, v9, v4 & 1);
    *a1 = v8;
    *(a1 + 8) = v9;
    *(a1 + 16) = v10;
    *(a1 + 17) = v7;
    v5 = *(a2 + 48);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_5:
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    *(a1 + 56) = *(a2 + 56);
    return a1;
  }

  *a1 = *a2;
  *(a1 + 16) = *(a2 + 16);
  v5 = *(a2 + 48);
  if (!v5)
  {
    goto LABEL_5;
  }

LABEL_3:
  v6 = *(a2 + 56);
  *(a1 + 48) = v5;
  *(a1 + 56) = v6;
  (**(v5 - 8))(a1 + 24, a2 + 24);
  return a1;
}

void destroy for CodableAccessibilityValueStorage(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != 255)
  {
    outlined consume of AccessibilityText.Storage(*a1, *(a1 + 8), v2 & 1);
  }

  if (*(a1 + 48))
  {

    __swift_destroy_boxed_opaque_existential_1(a1 + 24);
  }
}

uint64_t outlined assign with take of CodableAccessibilityValueStorage?(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4)
{
  type metadata accessor for CodableAccessibilityValueStorage?(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t getEnumTagSinglePayload for CodableAccessibilityValueStorage(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for CodableAccessibilityValueStorage(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t ProtobufDecoder.decodeMessage<A>()(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  result = ProtobufDecoder.beginMessage()();
  if (!v3)
  {
    (*(a2 + 8))(v2, a1, a2);
    v8 = *(v2 + 40);
    if (*(v8 + 16))
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        v9 = *(v8 + 16);
        if (v9)
        {
LABEL_5:
          v10 = v9 - 1;
          v11 = *(v8 + 8 * v10 + 32);
          *(v8 + 16) = v10;
          *(v4 + 40) = v8;
          *(v4 + 16) = v11;
          return result;
        }

LABEL_9:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew()(v8);
    v8 = result;
    v9 = *(result + 16);
    if (v9)
    {
      goto LABEL_5;
    }

    goto LABEL_9;
  }

  return result;
}