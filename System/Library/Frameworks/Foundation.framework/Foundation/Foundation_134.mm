void thunk for @escaping @callee_guaranteed (@guaranteed NSAttributedStringKey, @unowned _NSRange) -> ()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2();
}

uint64_t closure #8 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;

  _sSn10FoundationAA16AttributedStringV5IndexVRszrlE_2inSnyAEGSgSo8_NSRangeV_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(a1, a2, v6, &v117);
  v7 = v119;
  if (v119 == 2)
  {
    return 0;
  }

  v74 = v118;
  v72 = v117;
  v8 = *a3;
  v9 = *(v8 + 40);
  v144 = *(v8 + 24);
  v145 = v9;
  v146 = *(v8 + 56);
  v110[0] = v8;
  v110[1] = BigString.startIndex.getter();
  v110[2] = v10;
  v110[3] = v11;
  v110[4] = v12;
  v110[5] = BigString.endIndex.getter();
  v110[6] = v13;
  v110[7] = v14;
  v110[8] = v15;
  v110[9] = 0;
  swift_retain_n();
  outlined destroy of AttributedString.CharacterView(v110);
  v136[3] = v72;
  v137 = v74;
  v138 = v7;
  v139 = v120;
  v140 = v121;
  v16 = *(v8 + 40);
  v141 = *(v8 + 24);
  v142 = v16;
  v143 = *(v8 + 56);
  swift_unknownObjectRetain();

  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();

  outlined destroy of BigSubstring.UnicodeScalarView(v122);
  v106 = v123;
  v107 = v124;
  v108 = v125;
  v109 = v126;
  v113 = v124;
  v114 = v125;
  v115 = v126;
  v112 = v123;
  v111 = v8;
  v116 = 0;
  v17 = *(v8 + 24);
  v18 = *(v8 + 56);
  v136[1] = *(v8 + 40);
  v136[2] = v18;
  v136[0] = v17;
  outlined init with copy of AttributedSubstring(&v111, &v76);
  outlined init with copy of BigString(v136, &v76);
  BigString.subscript.getter();
  outlined destroy of BigString(v136);
  outlined destroy of BigSubstring(v127);
  v102 = *v128;
  v103 = *&v128[16];
  v104 = v129;
  v105 = v130;
  *&v135[8] = *v128;
  *&v135[24] = *&v128[16];
  *&v135[40] = v129;
  *&v135[56] = v130;
  *v135 = v8;
  *&v135[72] = 0;
  v20 = *&v128[8];
  v19 = *v128;
  v21 = *&v128[24];
  v22 = *&v128[16];
  v23 = v129;
  v63 = v130;
  v101 = *&v128[24];
  v99 = *(&v130 + 1);
  v100 = *&v128[8];
  v98 = *&v135[48];
  v24 = *(v8 + 16);
  v25 = swift_allocObject();
  v26 = *&v135[48];
  v25[3] = *&v135[32];
  v25[4] = v26;
  v25[5] = *&v135[64];
  v27 = *&v135[16];
  v25[1] = *v135;
  v25[2] = v27;
  v64 = v25;
  v28 = v23 >> 10;
  outlined init with copy of AttributedString.CharacterView(v135, &v76);
  outlined init with copy of AttributedString.CharacterView(v135, &v76);
  result = outlined init with copy of AttributedString.CharacterView(v135, &v76);
  v65 = v20;
  v66 = v19;
  v30 = v20;
  v67 = v22;
  v68 = v21;
  v31 = v22;
  v69 = v24;
  v70 = v19 >> 10;
  if (v19 >> 10 == v23 >> 10)
  {
LABEL_3:
    outlined destroy of AttributedString.CharacterView(v135);
    outlined destroy of AttributedSubstring(&v111);
    outlined destroy of AttributedString.CharacterView(v135);
    v76 = v8;
    v77 = v66;
    v78 = v100;
    v79 = v101;
    v80 = v23;
    v81 = v98;
    v82 = v99;
    v83 = v66;
    v84 = v65;
    v85 = v67;
    v86 = v68;
    v87 = v24;
    v88 = v23;
    v89 = v63;
    v90 = v24;
    v91 = v19;
    v92 = v30;
    v93 = v31;
    v94 = v21;
    v95 = v69;
    v96 = partial apply for closure #1 in closure #8 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
    v97 = v64;
    outlined destroy of TermOfAddress?(&v76, &_ss18LazyFilterSequenceV8IteratorVySIy10Foundation16AttributedStringV13CharacterViewVG_GMd);
    return 0;
  }

  v32 = v19 >> 10;
  while (v32 >= v70 && v28 >= v32)
  {
    v34 = *(v8 + 24);
    v35 = *(v8 + 56);
    v134[1] = *(v8 + 40);
    v134[2] = v35;
    v134[0] = v34;
    v36 = *(v8 + 24);
    v37 = *(v8 + 40);
    v148 = *(v8 + 56);
    v147[0] = v36;
    v147[1] = v37;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v147, &v76);
    v19 = BigString.index(after:)();
    v73 = v38;
    v75 = v39;
    v41 = v40;
    result = outlined destroy of BigString(v134);
    if (v32 >= v28)
    {
      goto LABEL_26;
    }

    v32 = v19 >> 10;
    if (v28 < v19 >> 10)
    {
      goto LABEL_26;
    }

    v71 = v41;
    v69 = *(v8 + 16);
    v42 = *(v8 + 24);
    v43 = *(v8 + 56);
    v133[1] = *(v8 + 40);
    v133[2] = v43;
    v133[0] = v42;
    v44 = *(v8 + 24);
    v45 = *(v8 + 40);
    v150 = *(v8 + 56);
    v149[0] = v44;
    v149[1] = v45;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v149, &v76);
    v46 = BigString.subscript.getter();
    v48 = v47;
    outlined destroy of BigString(v133);
    if (v46 == 37 && v48 == 0xE100000000000000)
    {
    }

    else
    {
      v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v49 & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    v50 = *(v8 + 24);
    v51 = *(v8 + 56);
    v132[1] = *(v8 + 40);
    v132[2] = v51;
    v132[0] = v50;
    v52 = *(v8 + 24);
    v53 = *(v8 + 40);
    v152 = *(v8 + 56);
    v151[0] = v52;
    v151[1] = v53;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v151, &v76);
    v54 = BigString.index(after:)();
    result = outlined destroy of BigString(v132);
    v55 = v54 >> 10;
    if (v28 < v54 >> 10)
    {
      goto LABEL_27;
    }

    if (v55 != v28)
    {
      if (v55 < v70 || v55 >= v28)
      {
        goto LABEL_28;
      }

      v56 = *(v8 + 24);
      v57 = *(v8 + 56);
      v131[1] = *(v8 + 40);
      v131[2] = v57;
      v131[0] = v56;
      v58 = *(v8 + 24);
      v59 = *(v8 + 40);
      v154 = *(v8 + 56);
      v153[0] = v58;
      v153[1] = v59;
      outlined init with copy of Rope<BigString._Chunk>._Node?(v153, &v76);
      v60 = BigString.subscript.getter();
      v62 = v61;
      outlined destroy of BigString(v131);
      if (v60 == 37 && v62 == 0xE100000000000000)
      {
      }

      else
      {
        v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v33 & 1) == 0)
        {
          outlined destroy of AttributedString.CharacterView(v135);
          v76 = v8;
          v77 = v66;
          v78 = v100;
          v79 = v101;
          v80 = v23;
          v81 = v98;
          v82 = v99;
          v83 = v66;
          v84 = v65;
          v85 = v67;
          v86 = v68;
          v87 = v24;
          v88 = v23;
          v89 = v63;
          v90 = v24;
          v91 = v19;
          v92 = v73;
          v93 = v75;
          v94 = v71;
          v95 = v69;
          v96 = partial apply for closure #1 in closure #8 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
          v97 = v64;
          outlined destroy of TermOfAddress?(&v76, &_ss18LazyFilterSequenceV8IteratorVySIy10Foundation16AttributedStringV13CharacterViewVG_GMd);
          outlined destroy of AttributedString.CharacterView(v135);
          outlined destroy of AttributedSubstring(&v111);
          return 1;
        }
      }
    }

LABEL_8:
    v21 = v71;
    v30 = v73;
    v31 = v75;
    if (v32 == v28)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

void *closure #1 in closure #8 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)(void *result, void *a2)
{
  v2 = *result >> 10;
  if (v2 < a2[1] >> 10 || v2 >= a2[5] >> 10)
  {
    __break(1u);
  }

  else
  {
    v4 = *a2;
    v5 = *(*a2 + 24);
    v6 = *(*a2 + 56);
    v14[1] = *(*a2 + 40);
    v14[2] = v6;
    v14[0] = v5;
    v7 = *(v4 + 24);
    v16 = *(v4 + 56);
    v8 = *(v4 + 40);
    v15[0] = v7;
    v15[1] = v8;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v15, v13);
    v9 = BigString.subscript.getter();
    v11 = v10;
    outlined destroy of BigString(v14);
    if (v9 == 37 && v11 == 0xE100000000000000)
    {

      v12 = 1;
    }

    else
    {
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return (v12 & 1);
  }

  return result;
}

id closure #9 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X8>)
{
  *&v563 = a1;
  v605 = *MEMORY[0x1E69E9840];
  v523 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionH0O_GMd);
  MEMORY[0x1EEE9AC00](v523);
  v556 = &v508 - v9;
  v527 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionG0OGMd);
  MEMORY[0x1EEE9AC00](v527);
  v522 = &v508 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v521 = &v508 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v529 = &v508 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V010MorphologyH0O_GMd);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v508 - v16);
  v534 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V010MorphologyG0OGMd);
  MEMORY[0x1EEE9AC00](v534);
  v19 = &v508 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v530 = &v508 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v508 - v23;
  v538 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd);
  MEMORY[0x1EEE9AC00](v538);
  v544 = &v508 - v25;
  v547 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
  MEMORY[0x1EEE9AC00](v547);
  v539 = &v508 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v549 = &v508 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v551 = &v508 - v30;
  v560 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v553 = *(v560 - 8);
  MEMORY[0x1EEE9AC00](v560);
  v528 = &v508 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v531 = &v508 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v535 = &v508 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v540 = &v508 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v550 = &v508 - v39;
  v561 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v561);
  v558 = &v508 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v559 = &v508 - v42;
  v555 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v543 = *(v555 - 8);
  MEMORY[0x1EEE9AC00](v555);
  v524 = &v508 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v44);
  v557 = &v508 - v45;
  MEMORY[0x1EEE9AC00](v46);
  v536 = &v508 - v47;
  MEMORY[0x1EEE9AC00](v48);
  v554 = &v508 - v49;
  MEMORY[0x1EEE9AC00](v50);
  v548 = &v508 - v51;
  v542 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v542);
  v526 = &v508 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  v525 = (&v508 - v54);
  MEMORY[0x1EEE9AC00](v55);
  v533 = &v508 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v537 = &v508 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v532 = &v508 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v546 = &v508 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v552 = &v508 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v545 = &v508 - v66;
  *&v562 = a4;
  v67 = *a4;

  result = _sSn10FoundationAA16AttributedStringV5IndexVRszrlE_2inSnyAEGSgSo8_NSRangeV_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(a2, a3, v67, &v578);
  v69 = *(&v579[0] + 1);
  if (*(&v579[0] + 1) == 2)
  {
    *(a5 + 24) = MEMORY[0x1E69E6370];
    *a5 = 0;
    return result;
  }

  v509 = v15;
  v510 = v19;
  v513 = v24;
  v541 = v17;
  v520 = a5;
  v70 = v578;
  v71 = *(&v579[1] + 1);
  v72 = *&v579[2];
  v600 = v578;
  v516 = *&v579[0];
  v517 = *&v579[3];
  v601 = v579[0];
  v602 = v579[1];
  v603 = v579[2];
  v518 = *(&v579[2] + 1);
  v604 = v579[3];
  isTaggedPointer = _objc_isTaggedPointer(@"NSLanguage");
  v74 = @"NSLanguage";
  v75 = v74;
  if (!isTaggedPointer)
  {
    goto LABEL_8;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v74);
  switch(TaggedPointerTag)
  {
    case 0:
      LOWORD(v564) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v85 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v86)
      {
        [(__CFString *)v75 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v514 = 0;
        v78 = *(&v569 + 1);
        v519 = v569;
        goto LABEL_38;
      }

      v78 = v86;
      v519 = v85;
LABEL_22:

      v514 = 0;
      goto LABEL_38;
    case 0x16:
      result = [(__CFString *)v75 UTF8String];
      if (!result)
      {
        goto LABEL_347;
      }

      result = String.init(utf8String:)(result);
      v519 = result;
      if (!v84)
      {
        goto LABEL_349;
      }

      v78 = v84;
      goto LABEL_22;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      *(&v508 - 2) = v75;
      v519 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v78 = v77;
      v514 = 0;

      goto LABEL_38;
  }

LABEL_8:
  LOBYTE(v569) = 0;
  *&v578 = 0;
  LOBYTE(v564) = 0;
  v571[0] = 0;
  IsCF = __CFStringIsCF();
  if (!IsCF)
  {
    v81 = v75;
    v82 = String.init(_nativeStorage:)();
    if (v83)
    {
      v78 = v83;
      v519 = v82;

      v514 = 0;
      goto LABEL_38;
    }

    *&v578 = [(__CFString *)v81 length];
    if (v578)
    {
      goto LABEL_27;
    }

LABEL_16:
    v519 = 0;
    v514 = 0;
    v78 = 0xE000000000000000;
    goto LABEL_38;
  }

  v80 = v578;
  if (!v578)
  {

    goto LABEL_16;
  }

  if (v571[0] != 1)
  {
    if (v564)
    {
      if (v569 == 1)
      {
        MEMORY[0x1EEE9AC00](IsCF);
        *(&v508 - 4) = v75;
        *(&v508 - 3) = &v578;
        *(&v508 - 4) = 1536;
        *(&v508 - 1) = v80;
      }

      else
      {
        v89 = [(__CFString *)v75 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v89);
        *(&v508 - 4) = v75;
        *(&v508 - 3) = &v578;
        *(&v508 - 4) = 134217984;
        *(&v508 - 1) = v90;
      }

      v91 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v78 = v92;
      v93 = HIBYTE(v92) & 0xF;
      if ((v92 & 0x2000000000000000) == 0)
      {
        v93 = v91 & 0xFFFFFFFFFFFFLL;
      }

      v514 = 0;
      if (v93)
      {
        v519 = v91;

        goto LABEL_38;
      }

LABEL_28:
      v519 = String.init(_cocoaString:)();
      v78 = v87;
      goto LABEL_38;
    }

LABEL_27:
    v514 = 0;
    goto LABEL_28;
  }

  if (v569)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  v519 = String.init<A>(_immortalCocoaString:count:encoding:)();
  v78 = v88;
  v514 = 0;
LABEL_38:
  v94 = v563;
  v95 = _objc_isTaggedPointer(v563);
  v96 = v94;
  v97 = v96;
  v515 = v72;
  v511 = v95;
  v512 = v96;
  if (!v95)
  {
    goto LABEL_43;
  }

  v98 = _objc_getTaggedPointerTag(v96);
  if (v98)
  {
    if (v98 != 22)
    {
      if (v98 == 2)
      {
        v99 = v71;
        v100 = *(&v70 + 1);
        v101 = v70;
        MEMORY[0x1EEE9AC00](v98);
        *(&v508 - 2) = v97;
        v102 = v514;
        v103 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v104 = v97;
        v105 = v103;
        v107 = v106;
        v514 = v102;

        goto LABEL_76;
      }

LABEL_43:
      LOBYTE(v569) = 0;
      *&v578 = 0;
      LOBYTE(v564) = 0;
      v571[0] = 0;
      v108 = __CFStringIsCF();
      if (v108)
      {
        v109 = v578;
        if (v578)
        {
          v99 = v71;
          v100 = *(&v70 + 1);
          if (v571[0] == 1)
          {
            v101 = v70;
            if (v569)
            {
              lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
            }

            else
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
            }

            v117 = String.init<A>(_immortalCocoaString:count:encoding:)();
            goto LABEL_75;
          }

          if (v564)
          {
            v101 = v70;
            if (v569 == 1)
            {
              MEMORY[0x1EEE9AC00](v108);
              *(&v508 - 4) = v97;
              *(&v508 - 3) = &v578;
              *(&v508 - 4) = 1536;
              *(&v508 - 1) = v109;
            }

            else
            {
              v119 = [v97 lengthOfBytesUsingEncoding_];
              MEMORY[0x1EEE9AC00](v119);
              *(&v508 - 4) = v97;
              *(&v508 - 3) = &v578;
              *(&v508 - 4) = 134217984;
              *(&v508 - 1) = v120;
            }

            v121 = v514;
            v122 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
            v123 = v97;
            v107 = v124;
            v125 = HIBYTE(v124) & 0xF;
            if ((v124 & 0x2000000000000000) == 0)
            {
              v125 = v122 & 0xFFFFFFFFFFFFLL;
            }

            v514 = v121;
            if (v125)
            {
              v105 = v122;

              goto LABEL_76;
            }
          }

          else
          {
            v101 = v70;
          }

LABEL_74:
          v117 = String.init(_cocoaString:)();
LABEL_75:
          v105 = v117;
          v107 = v118;
          goto LABEL_76;
        }

        v99 = v71;
        v100 = *(&v70 + 1);
        v101 = v70;
      }

      else
      {
        v99 = v71;
        v100 = *(&v70 + 1);
        v110 = v97;
        v111 = String.init(_nativeStorage:)();
        if (v112)
        {
          v105 = v111;
          v107 = v112;
          v101 = v70;

          goto LABEL_76;
        }

        v101 = v70;
        *&v578 = [v110 length];
        if (v578)
        {
          goto LABEL_74;
        }
      }

      v105 = 0;
      v107 = 0xE000000000000000;
      goto LABEL_76;
    }

    v99 = v71;
    v100 = *(&v70 + 1);
    result = [v97 UTF8String];
    if (!result)
    {
      goto LABEL_348;
    }

    v101 = v70;
    result = String.init(utf8String:)(result);
    if (!v113)
    {
      goto LABEL_350;
    }

    v105 = result;
    v107 = v113;
  }

  else
  {
    v99 = v71;
    v100 = *(&v70 + 1);
    v101 = v70;
    LOWORD(v564) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v114 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    v116 = v97;
    if (v115)
    {
      v105 = v114;
      v107 = v115;
    }

    else
    {
      [v97 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v107 = *(&v569 + 1);
      v105 = v569;
    }
  }

LABEL_76:
  if (v519 == v105 && v78 == v107)
  {

    goto LABEL_80;
  }

  v126 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v126)
  {
LABEL_80:
    v127 = *v562;
    v128 = *(*v562 + 40);
    v597 = *(*v562 + 24);
    v598 = v128;
    v599 = *(v127 + 56);
    BigString.startIndex.getter();
    BigString.endIndex.getter();
    *&v586 = v101;
    *(&v586 + 1) = v100;
    *&v587 = v516;
    *(&v587 + 1) = v69;
    *&v588 = v99;
    *(&v588 + 1) = v515;
    v589 = v518;
    v590 = v517;
    v129 = *(v127 + 40);
    v594 = *(v127 + 24);
    v595 = v129;
    v596 = *(v127 + 56);
    swift_unknownObjectRetain();
    swift_retain_n();
    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();

    outlined destroy of BigSubstring.UnicodeScalarView(&v578);
    *&v571[8] = v579[2];
    *&v571[24] = v579[3];
    *&v571[40] = v579[4];
    *&v571[56] = v579[5];
    *v571 = v127;
    *&v571[72] = 0;
    v564 = v579[2];
    v565 = v579[3];
    v566 = v579[4];
    v567 = v579[5];
    outlined init with copy of AttributedSubstring(v571, &v569);
    lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
    RangeSet.init(_:)();
    v558 = v127;
    *v552 = v127;
    RangeSet.init()();
    v130 = v550;
    RangeSet.ranges.getter();
    v131 = v553;
    v133 = v559;
    v132 = v560;
    (*(v553 + 16))(v559, v130, v560);
    v134 = *(v561 + 36);
    v135 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
    dispatch thunk of Collection.startIndex.getter();
    v136 = *(v131 + 8);
    v137 = v133;
    v553 = v131 + 8;
    v136(v130, v132);
    dispatch thunk of Collection.endIndex.getter();
    v138 = *&v133[v134];
    v541 = v136;
    if (v138 != v569)
    {
      v556 = v134;
      v557 = v135;
      do
      {
        v149 = dispatch thunk of Collection.subscript.read();
        v151 = v150[5];
        *&v563 = v150[4];
        v561 = v150[6];
        *&v562 = v151;
        v149(&v569, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v152 = v558;
        v153 = *(v558 + 40);
        v591 = *(v558 + 24);
        v592 = v153;
        v593 = *(v558 + 56);
        swift_unknownObjectRetain();
        v154 = BigString.UnicodeScalarView.index(roundingDown:)();
        v156 = v155;
        v158 = v157;
        v160 = v159;
        swift_unknownObjectRelease();
        v161 = *(v152 + 40);
        v583 = *(v152 + 24);
        v584 = v161;
        v585 = *(v152 + 56);
        swift_unknownObjectRetain();
        v162 = BigString.UnicodeScalarView.index(roundingDown:)();
        v164 = v163;
        v166 = v165;
        v168 = v167;
        swift_unknownObjectRelease();
        *&v569 = v154;
        *(&v569 + 1) = v156;
        *&v570[0] = v158;
        *(&v570[0] + 1) = v160;
        *&v570[1] = v162;
        *(&v570[1] + 1) = v164;
        v132 = v560;
        *&v570[2] = v166;
        *(&v570[2] + 1) = v168;
        if ((v162 ^ v154) >= 0x400)
        {
          v169 = RangeSet._ranges.modify();
          RangeSet.Ranges._insert(contentsOf:)();
          v169(&v564, 0);
        }

        v137 = v559;
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*(v137 + v556) != v569);
    }

    outlined destroy of TermOfAddress?(v137, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
    v140 = v542;
    v139 = v543;
    v141 = v132;
    v142 = v552;
    v143 = v555;
    (*(v543 + 16))(&v552[*(v542 + 24)], v554, v555);
    v144 = v550;
    RangeSet.ranges.getter();
    v145 = RangeSet.Ranges.count.getter();
    v541(v144, v141);
    v146 = *(v140 + 28);
    LODWORD(v542) = v145 > 1;
    v142[v146] = v542;
    v147 = v540;
    RangeSet.ranges.getter();
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (v564 == v569)
    {
      v541(v147, v141);
      v148 = v544;
    }

    else
    {
      v170 = dispatch thunk of Collection.subscript.read();
      v172 = *v171;
      v536 = v171[1];
      v537 = v172;
      v173 = v171[2];
      v533 = v171[3];
      v534 = v173;
      v170(&v569, 0);
      v541(v147, v141);
      v174 = v535;
      RangeSet.ranges.getter();
      v175 = dispatch thunk of Collection.isEmpty.getter();
      v148 = v544;
      if ((v175 & 1) == 0)
      {
        dispatch thunk of Collection.endIndex.getter();
        lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
        dispatch thunk of BidirectionalCollection.index(before:)();
        v231 = dispatch thunk of Collection.subscript.read();
        v233 = v232[4];
        v234 = v232[5];
        v235 = v232[7];
        v540 = v232[6];
        v532 = v235;
        v231(&v569, 0);
        v541(v174, v141);
        v236 = v558;
        AttributedString.Guts.findRun(at:)(v537, v533, &v569);
        *&v563 = *(&v569 + 1);
        v556 = v569;
        v527 = *(&v570[0] + 1);
        v528 = *&v570[0];
        v535 = *(&v570[1] + 1);
        v531 = *&v570[2];
        v561 = *&v570[3];
        *&v562 = *(&v570[2] + 1);
        v237 = *(v236 + 40);
        v580 = *(v236 + 24);
        v581 = v237;
        v582 = *(v236 + 56);
        v238 = BigString.endIndex.getter();
        v529 = v234;
        v530 = v233;
        if ((v238 ^ v233) > 0x3FF)
        {
          AttributedString.Guts.findRun(at:)(v233, v532, &v569);
          v557 = *(&v569 + 1);
          v269 = v139;
          v559 = v569;
          v526 = *(&v570[0] + 1);
          v560 = *&v570[0];
          v200 = *(&v570[1] + 1);
          v202 = *(&v570[2] + 1);
          v201 = *&v570[2];
          v203 = *&v570[3];
          v270 = v550;
          RangeSet.ranges.getter();
          v217 = RangeSet.Ranges.count.getter();
          v271 = *(v269 + 8);
          v543 = v269 + 8;
          v271(v548, v555);
          v541(v270, v141);
          v148 = v544;
          v271(v554, v555);
          v213 = v561;
          v208 = v560;
          v207 = v526;
          v204 = v527;
          v216 = v530;
          v190 = v531;
          v209 = 0;
          v206 = v542;
          v218 = v563;
          v211 = v536;
          v210 = v537;
          v215 = v533;
          v214 = v534;
          v188 = v535;
          v212 = v562;
          v205 = v528;
          v197 = v529;
          v198 = v540;
          v199 = v532;
        }

        else
        {
          v239 = *(v236 + 9);
          if (v239)
          {
            v240 = *(v236 + 10);
          }

          else
          {
            v240 = 0;
          }

          v526 = v240;
          v241 = *(v236 + 12);
          v242 = swift_unknownObjectRetain();
          v559 = v241;
          v557 = specialized Rope._endPath.getter(v242);
          if (v239)
          {
            swift_unknownObjectRelease();
          }

          v243 = v550;
          v244 = v555;
          RangeSet.ranges.getter();
          v245 = v560;
          v217 = RangeSet.Ranges.count.getter();
          v246 = *(v139 + 8);
          v246(v548, v244);
          v541(v243, v245);
          v246(v554, v244);
          v209 = 0;
          v208 = 0;
          v197 = v529;
          v216 = v530;
          v200 = v530;
          v201 = v529;
          v198 = v540;
          v202 = v540;
          v199 = v532;
          v215 = v533;
          v203 = v532;
          v206 = v542;
          v218 = v563;
          v211 = v536;
          v210 = v537;
          v214 = v534;
          v188 = v535;
          v190 = v531;
          v213 = v561;
          v212 = v562;
          v204 = v527;
          v205 = v528;
          v207 = v526;
        }

        goto LABEL_101;
      }

      v541(v174, v141);
    }

    v176 = v558;
    v177 = *(v558 + 9);
    if (v177)
    {
      *&v563 = *(v177 + 18);
    }

    else
    {
      *&v563 = 0;
    }

    v556 = *(v558 + 12);
    v187 = *(v558 + 40);
    v580 = *(v558 + 24);
    v581 = v187;
    v582 = *(v558 + 56);
    v188 = BigString.startIndex.getter();
    v190 = v189;
    v561 = v192;
    *&v562 = v191;
    v193 = *(v176 + 9);
    v559 = *(v176 + 12);
    if (v193)
    {
      v557 = *(v193 + 18);
      v194 = *(v139 + 8);
      swift_unknownObjectRetain();
      v194(v548, v143);
      v194(v554, v143);
      swift_unknownObjectRelease();
    }

    else
    {
      v195 = *(v139 + 8);
      v195(v548, v143);
      v195(v554, v143);
      v557 = 0;
    }

    v196 = *(v176 + 40);
    v579[6] = *(v176 + 24);
    v579[7] = v196;
    v579[8] = *(v176 + 56);
    v200 = BigString.startIndex.getter();
    v201 = v197;
    v202 = v198;
    v203 = v199;
    v204 = 0;
    v205 = 0;
    v206 = 0;
    v207 = 0;
    v208 = 0;
    v209 = -1;
    v210 = v188;
    v211 = v190;
    v213 = v561;
    v212 = v562;
    v214 = v562;
    v215 = v561;
    v216 = v200;
    v217 = -1;
    v218 = v563;
LABEL_101:
    v219 = v552;
    *(v552 + 1) = v204;
    *(v219 + 16) = v556;
    *(v219 + 24) = v218;
    *(v219 + 32) = v205;
    *(v219 + 40) = v188;
    *(v219 + 48) = v190;
    *(v219 + 56) = v212;
    *(v219 + 64) = v213;
    *(v219 + 72) = v210;
    *(v219 + 80) = v211;
    *(v219 + 88) = v214;
    *(v219 + 96) = v215;
    *(v219 + 104) = v209;
    *(v219 + 112) = 0;
    *(v219 + 113) = v206;
    v220 = v559;
    *(v219 + 120) = v207;
    *(v219 + 128) = v220;
    *(v219 + 136) = v557;
    *(v219 + 144) = v208;
    *(v219 + 152) = v200;
    *(v219 + 160) = v201;
    *(v219 + 168) = v202;
    *(v219 + 176) = v203;
    *(v219 + 184) = v216;
    *(v219 + 192) = v197;
    *(v219 + 200) = v198;
    *(v219 + 208) = v199;
    *(v219 + 216) = v217;
    *(v219 + 224) = 0;
    *(v219 + 225) = v206;
    v221 = v545;
    outlined init with take of AttributedString.Runs(v219, v545);
    outlined destroy of AttributedSubstring(v571);
    v222 = v221;
    v223 = v546;
    outlined init with copy of AttributedString.Runs(v222, v546);
    v224 = v223;
    v225 = v551;
    outlined init with copy of AttributedString.Runs(v224, v551);
    *(v225 + *(v547 + 36)) = &outlined read-only object #0 of closure #9 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
    v226 = static _SetStorage.allocate(capacity:)();
    v227 = v226 + 56;
    v228 = qword_1EEED47A8;
    v229 = unk_1EEED47B0;
    Hasher.init(_seed:)();
    if (v229 == 1)
    {
      Hasher._combine(_:)(0);
      v230 = v549;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v230 = v549;
      if (v229)
      {
        MEMORY[0x1865CD060](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1865CD060](0);
      }
    }

    v249 = Hasher._finalize()();
    v250 = -1 << *(v226 + 32);
    v251 = v249 & ~v250;
    v252 = v251 >> 6;
    v253 = *(v227 + 8 * (v251 >> 6));
    v254 = 1 << v251;
    if (((1 << v251) & v253) != 0)
    {
      v255 = ~v250;
      while (1)
      {
        v256 = (*(v226 + 48) + 16 * v251);
        v257 = *v256;
        v258 = v256[1];
        if (v258 == 1)
        {
          break;
        }

        if (v229 == 1)
        {
          goto LABEL_124;
        }

        if (v258)
        {
          if (v229)
          {
            if (v257 == v228 && v258 == v229)
            {
              outlined copy of AttributedString.AttributeRunBoundaries?(v228, v229);
              outlined copy of AttributedString.AttributeRunBoundaries?(v228, v229);

              goto LABEL_157;
            }

            v262 = _stringCompareWithSmolCheck(_:_:expecting:)();
            outlined copy of AttributedString.AttributeRunBoundaries?(v257, v258);
            outlined copy of AttributedString.AttributeRunBoundaries?(v228, v229);
            outlined copy of AttributedString.AttributeRunBoundaries?(v257, v258);

            if (v262)
            {
              outlined consume of AttributedString.AttributeRunBoundaries?(v228, v229);
              v228 = v257;
              v229 = v258;
              v230 = v549;
LABEL_157:
              v267 = v228;
              v268 = v229;
LABEL_159:
              outlined consume of AttributedString.AttributeRunBoundaries?(v267, v268);
              v148 = v544;
LABEL_160:
              outlined destroy of TermOfAddress?(&qword_1EEED47A8, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
              outlined destroy of AttributedString.Runs(v546);
              outlined destroy of AttributedString.Runs(v545);
              v277 = v551;
              *(v551 + *(v547 + 40)) = v226;
              outlined init with copy of FloatingPointRoundingRule?(v277, v230, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
              v278 = v539;
              outlined init with copy of FloatingPointRoundingRule?(v230, v539, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
              result = outlined init with copy of FloatingPointRoundingRule?(v278, v148, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
              v279 = *(v278 + 96);
              if (v279 == 2)
              {
                __break(1u);
                goto LABEL_346;
              }

              v280 = *(v278 + 88);
              v563 = *(v278 + 72);
              outlined destroy of TermOfAddress?(v230, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
              v281 = *(*v278 + 16);
              outlined destroy of TermOfAddress?(v278, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
              v282 = v148 + *(v538 + 36);
              *v282 = v563;
              *(v282 + 16) = v280;
              *(v282 + 24) = v279;
              *(v282 + 32) = v281;
              specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(&v569);
              v283 = v569;
              v572[2] = v570[2];
              v572[3] = v570[3];
              v572[4] = v570[4];
              v572[0] = v570[0];
              v572[1] = v570[1];
              if (*(&v569 + 1) != 1)
              {
                while (1)
                {
                  v567 = v570[2];
                  v568[0] = v570[3];
                  v568[1] = v570[4];
                  v564 = v569;
                  v565 = v570[0];
                  v566 = v570[1];
                  if (*(&v569 + 1))
                  {
                    break;
                  }

                  outlined destroy of TermOfAddress?(&v564, &_sSSSg_Sny10Foundation16AttributedStringV5IndexVGtSgMd);
                  specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(&v569);
                  v283 = v569;
                  v572[2] = v570[2];
                  v572[3] = v570[3];
                  v572[4] = v570[4];
                  v572[0] = v570[0];
                  v572[1] = v570[1];
                  if (*(&v569 + 1) == 1)
                  {
                    goto LABEL_164;
                  }
                }

                outlined destroy of TermOfAddress?(v148, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd);
                result = outlined destroy of TermOfAddress?(v551, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
                v285 = *(&v564 + 1);
                v283 = v564;
                v575 = v567;
                v576 = v568[0];
                v577 = v568[1];
                v573 = v565;
                v574 = v566;
                v284 = v520;
                if (*(&v564 + 1))
                {
                  if (*(&v564 + 1) != 1)
                  {
                    *(v520 + 24) = MEMORY[0x1E69E6158];
                    *v284 = v283;
                    *(v284 + 8) = v285;
                    return result;
                  }

LABEL_165:
                  *&v564 = v283;
                  *(&v564 + 1) = 1;
                  v567 = v575;
                  v568[0] = v576;
                  v568[1] = v577;
                  v565 = v573;
                  v566 = v574;
                  result = outlined destroy of TermOfAddress?(&v564, &_sSSSg_Sny10Foundation16AttributedStringV5IndexVGtSgMd);
                }

                *v284 = 0u;
                *(v284 + 16) = 0u;
                return result;
              }

LABEL_164:

              outlined destroy of TermOfAddress?(v148, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V018LanguageIdentifierH0O_GMd);
              outlined destroy of TermOfAddress?(v551, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V018LanguageIdentifierG0OGMd);
              v575 = v572[2];
              v576 = v572[3];
              v577 = v572[4];
              v573 = v572[0];
              v574 = v572[1];
              v284 = v520;
              goto LABEL_165;
            }

            v249 = outlined consume of AttributedString.AttributeRunBoundaries?(v257, v258);
            v230 = v549;
            goto LABEL_126;
          }

          outlined copy of AttributedString.AttributeRunBoundaries?(*v256, v256[1]);
          outlined copy of AttributedString.AttributeRunBoundaries?(v228, 0);
          outlined copy of AttributedString.AttributeRunBoundaries?(v257, v258);

          v259 = v257;
          v260 = v258;
        }

        else
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v256, 0);
          if (!v229)
          {
            swift_bridgeObjectRelease_n();
            v267 = v257;
            v268 = 0;
            goto LABEL_159;
          }

          outlined copy of AttributedString.AttributeRunBoundaries?(v228, v229);

          v259 = v257;
          v260 = 0;
        }

LABEL_125:
        v249 = outlined consume of AttributedString.AttributeRunBoundaries?(v259, v260);
LABEL_126:
        v251 = (v251 + 1) & v255;
        v252 = v251 >> 6;
        v253 = *(v227 + 8 * (v251 >> 6));
        v254 = 1 << v251;
        if ((v253 & (1 << v251)) == 0)
        {
          v148 = v544;
          goto LABEL_139;
        }
      }

      if (v229 == 1)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v256, 1);
        v267 = v257;
        v268 = 1;
        goto LABEL_159;
      }

LABEL_124:
      outlined copy of AttributedString.AttributeRunBoundaries?(*v256, v256[1]);
      outlined copy of AttributedString.AttributeRunBoundaries?(v228, v229);
      outlined consume of AttributedString.AttributeRunBoundaries?(v257, v258);
      v259 = v228;
      v260 = v229;
      goto LABEL_125;
    }

LABEL_139:
    *(v227 + 8 * v252) = v253 | v254;
    v263 = (*(v226 + 48) + 16 * v251);
    *v263 = v228;
    v263[1] = v229;
    v264 = *(v226 + 16);
    v265 = __OFADD__(v264, 1);
    v266 = v264 + 1;
    if (!v265)
    {
      *(v226 + 16) = v266;
      goto LABEL_160;
    }

    __break(1u);
LABEL_341:
    v506 = v249;
    swift_once();
    v249 = v506;
    goto LABEL_240;
  }

  v178 = _objc_isTaggedPointer(@"NSMorphology");
  v179 = @"NSMorphology";
  v180 = v179;
  v181 = v537;
  if (!v178)
  {
    goto LABEL_112;
  }

  v182 = _objc_getTaggedPointerTag(v179);
  switch(v182)
  {
    case 0:
      goto LABEL_149;
    case 0x16:
      result = [(__CFString *)v180 UTF8String];
      if (!result)
      {
        goto LABEL_352;
      }

      v275 = String.init(utf8String:)(result);
      if (v276)
      {
LABEL_150:
        v184 = v275;
        v186 = v276;
LABEL_151:

        goto LABEL_183;
      }

      __break(1u);
LABEL_149:
      LOWORD(v564) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v275 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v276)
      {
        [(__CFString *)v180 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v186 = *(&v569 + 1);
        v184 = v569;
        goto LABEL_183;
      }

      goto LABEL_150;
    case 2:
      MEMORY[0x1EEE9AC00](v182);
      *(&v508 - 2) = v180;
      v183 = v514;
      v184 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v186 = v185;
      v514 = v183;

      goto LABEL_183;
  }

LABEL_112:
  LOBYTE(v569) = 0;
  *&v578 = 0;
  LOBYTE(v564) = 0;
  v571[0] = 0;
  v247 = __CFStringIsCF();
  if (!v247)
  {
    v272 = v180;
    v273 = String.init(_nativeStorage:)();
    if (v274)
    {
      v184 = v273;
      v186 = v274;

      goto LABEL_183;
    }

    *&v578 = [(__CFString *)v272 length];
    if (v578)
    {
      goto LABEL_181;
    }

LABEL_145:
    v184 = 0;
    v186 = 0xE000000000000000;
    goto LABEL_183;
  }

  v248 = v578;
  if (!v578)
  {

    goto LABEL_145;
  }

  if (v571[0] == 1)
  {
    if (v569)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    v286 = String.init<A>(_immortalCocoaString:count:encoding:)();
    goto LABEL_182;
  }

  if (v564)
  {
    if (v569 == 1)
    {
      MEMORY[0x1EEE9AC00](v247);
      *(&v508 - 4) = v180;
      *(&v508 - 3) = &v578;
      *(&v508 - 4) = 1536;
      *(&v508 - 1) = v248;
    }

    else
    {
      v288 = [(__CFString *)v180 lengthOfBytesUsingEncoding:4];
      MEMORY[0x1EEE9AC00](v288);
      *(&v508 - 4) = v180;
      *(&v508 - 3) = &v578;
      *(&v508 - 4) = 134217984;
      *(&v508 - 1) = v289;
    }

    v290 = v514;
    v291 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v186 = v292;
    v293 = HIBYTE(v292) & 0xF;
    if ((v292 & 0x2000000000000000) == 0)
    {
      v293 = v291 & 0xFFFFFFFFFFFFLL;
    }

    v514 = v290;
    if (v293)
    {
      v184 = v291;
      goto LABEL_151;
    }
  }

LABEL_181:
  v286 = String.init(_cocoaString:)();
LABEL_182:
  v184 = v286;
  v186 = v287;
LABEL_183:
  v294 = v512;
  v295 = v294;
  if (!v511)
  {
    goto LABEL_188;
  }

  v296 = _objc_getTaggedPointerTag(v294);
  if (!v296)
  {
    goto LABEL_200;
  }

  if (v296 == 22)
  {
    result = [v295 UTF8String];
    if (!result)
    {
      goto LABEL_353;
    }

    v306 = String.init(utf8String:)(result);
    if (v307)
    {
LABEL_201:
      v298 = v306;
      v300 = v307;

      goto LABEL_218;
    }

    __break(1u);
LABEL_200:
    LOWORD(v564) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v306 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v307)
    {
      [v295 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v300 = *(&v569 + 1);
      v298 = v569;
      goto LABEL_218;
    }

    goto LABEL_201;
  }

  if (v296 != 2)
  {
LABEL_188:
    LOBYTE(v569) = 0;
    *&v578 = 0;
    LOBYTE(v564) = 0;
    v571[0] = 0;
    v301 = __CFStringIsCF();
    if (v301)
    {
      v302 = v578;
      if (v578)
      {
        if (v571[0] == 1)
        {
          if (v569)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v308 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_217;
        }

        if (v564)
        {
          if (v569 == 1)
          {
            MEMORY[0x1EEE9AC00](v301);
            *(&v508 - 4) = v295;
            *(&v508 - 3) = &v578;
            *(&v508 - 4) = 1536;
            *(&v508 - 1) = v302;
          }

          else
          {
            v310 = [v295 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v310);
            *(&v508 - 4) = v295;
            *(&v508 - 3) = &v578;
            *(&v508 - 4) = 134217984;
            *(&v508 - 1) = v311;
          }

          v312 = v514;
          v313 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v300 = v314;
          v315 = HIBYTE(v314) & 0xF;
          if ((v314 & 0x2000000000000000) == 0)
          {
            v315 = v313 & 0xFFFFFFFFFFFFLL;
          }

          v514 = v312;
          if (v315)
          {
            v298 = v313;

            goto LABEL_218;
          }
        }

LABEL_216:
        v308 = String.init(_cocoaString:)();
LABEL_217:
        v298 = v308;
        v300 = v309;
        goto LABEL_218;
      }
    }

    else
    {
      v303 = v295;
      v304 = String.init(_nativeStorage:)();
      if (v305)
      {
        v298 = v304;
        v300 = v305;

        goto LABEL_218;
      }

      *&v578 = [v303 length];
      if (v578)
      {
        goto LABEL_216;
      }
    }

    v298 = 0;
    v300 = 0xE000000000000000;
    goto LABEL_218;
  }

  MEMORY[0x1EEE9AC00](v296);
  *(&v508 - 2) = v295;
  v297 = v514;
  v298 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v300 = v299;
  v514 = v297;

LABEL_218:
  if (v184 == v298 && v186 == v300)
  {
  }

  else
  {
    v316 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v316 & 1) == 0)
    {
      v363 = static String._unconditionallyBridgeFromObjectiveC(_:)(@"NSAssumedFallbackInflection");
      v365 = v364;
      v227 = &v564;
      if (v363 == static String._unconditionallyBridgeFromObjectiveC(_:)(v563) && v365 == v366)
      {
      }

      else
      {
        v455 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v456 = v520;
        if ((v455 & 1) == 0)
        {
          *v520 = 0u;
          *(v456 + 16) = 0u;
          return result;
        }
      }

      v429 = *v562;

      specialized AttributedString.subscript.getter(v429, v572);
      v573 = v572[0];
      v574 = v572[1];
      v575 = v572[2];
      v576 = v572[3];
      v577 = v572[4];
      v457 = *&v572[0];
      v569 = *(v572 + 8);
      v570[0] = *(&v572[1] + 8);
      v570[1] = *(&v572[2] + 8);
      v570[2] = *(&v572[3] + 8);
      outlined init with copy of AttributedSubstring(&v573, &v578);
      lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
      v458 = v524;
      RangeSet.init(_:)();
      v459 = v525;
      AttributedString.Runs.init(_:in:)(v457, v458, v525);
      outlined destroy of AttributedSubstring(&v573);
      v460 = v526;
      outlined init with copy of AttributedString.Runs(v459, v526);
      v226 = v529;
      outlined init with copy of AttributedString.Runs(v460, v529);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
      v427 = swift_allocObject();
      *(v427 + 16) = xmmword_181218E20;
      if (one-time initialization token for name == -1)
      {
        goto LABEL_289;
      }

      goto LABEL_343;
    }
  }

  v317 = *v562;

  v551 = v317;
  specialized AttributedString.subscript.getter(v317, v572);
  v573 = v572[0];
  v574 = v572[1];
  v575 = v572[2];
  v576 = v572[3];
  v577 = v572[4];
  v318 = *&v572[0];
  v569 = *(v572 + 8);
  v570[0] = *(&v572[1] + 8);
  v570[1] = *(&v572[2] + 8);
  v570[2] = *(&v572[3] + 8);
  outlined init with copy of AttributedSubstring(&v573, &v578);
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  RangeSet.init(_:)();
  v559 = v318;
  *v181 = v318;
  RangeSet.init()();
  v319 = v550;
  RangeSet.ranges.getter();
  v320 = v553;
  v321 = v558;
  v322 = v560;
  (*(v553 + 16))(v558, v319, v560);
  v323 = *(v561 + 36);
  v324 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  v325 = *(v320 + 8);
  v326 = v321;
  v553 = v320 + 8;
  v325(v319, v322);
  dispatch thunk of Collection.endIndex.getter();
  v327 = *&v323[v321];
  v552 = v325;
  if (v327 != v578)
  {
    v556 = v324;
    v554 = v323;
    do
    {
      v342 = dispatch thunk of Collection.subscript.read();
      v344 = v343[5];
      *&v563 = v343[4];
      v561 = v343[6];
      *&v562 = v344;
      v342(&v578, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v345 = v559;
      v346 = *(v559 + 40);
      v586 = *(v559 + 24);
      v587 = v346;
      v588 = *(v559 + 56);
      swift_unknownObjectRetain();
      v347 = BigString.UnicodeScalarView.index(roundingDown:)();
      v349 = v348;
      v351 = v350;
      v353 = v352;
      swift_unknownObjectRelease();
      v354 = *(v345 + 40);
      v597 = *(v345 + 24);
      v598 = v354;
      v599 = *(v345 + 56);
      swift_unknownObjectRetain();
      v355 = BigString.UnicodeScalarView.index(roundingDown:)();
      v357 = v356;
      v359 = v358;
      v361 = v360;
      swift_unknownObjectRelease();
      *&v578 = v347;
      *(&v578 + 1) = v349;
      *&v579[0] = v351;
      *(&v579[0] + 1) = v353;
      *&v579[1] = v355;
      *(&v579[1] + 1) = v357;
      v322 = v560;
      *&v579[2] = v359;
      *(&v579[2] + 1) = v361;
      if ((v355 ^ v347) >= 0x400)
      {
        v362 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v362(&v569, 0);
      }

      v326 = v558;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*&v554[v326] != v578);
  }

  outlined destroy of TermOfAddress?(v326, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v328 = v542;
  v329 = v543;
  v330 = *(v542 + 24);
  v331 = v537;
  (*(v543 + 16))(&v330[v537], v557, v555);
  v332 = v550;
  RangeSet.ranges.getter();
  v333 = RangeSet.Ranges.count.getter();
  (v552)(v332, v322);
  v334 = *(v328 + 28);
  LODWORD(v554) = v333 > 1;
  *(v331 + v334) = v554;
  v335 = v531;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v569 == v578 || (v336 = dispatch thunk of Collection.subscript.read(), v338 = *v337, v548 = v337[1], v549 = v338, v339 = v337[2], v546 = v337[3], v547 = v339, v336(&v578, 0), (v552)(v335, v322), v335 = v528, RangeSet.ranges.getter(), (dispatch thunk of Collection.isEmpty.getter() & 1) != 0))
  {
    (v552)(v335, v322);
    v340 = v559;
    v341 = *(v559 + 9);
    if (v341)
    {
      *&v563 = *(v341 + 18);
    }

    else
    {
      *&v563 = 0;
    }

    *&v562 = *(v559 + 12);
    v367 = *(v559 + 40);
    v594 = *(v559 + 24);
    v595 = v367;
    v596 = *(v559 + 56);
    v368 = BigString.startIndex.getter();
    v561 = v369;
    v227 = v370;
    v558 = v371;
    v372 = *(v340 + 9);
    v373 = *(v340 + 12);
    if (v372)
    {
      v556 = *(v372 + 18);
      v374 = *(v329 + 8);
      swift_unknownObjectRetain();
      v375 = v373;
      v376 = v555;
      v374(v536, v555);
      v377 = v376;
      v373 = v375;
      v374(v557, v377);
      swift_unknownObjectRelease();
    }

    else
    {
      v378 = *(v329 + 8);
      v379 = v555;
      v378(v536, v555);
      v378(v557, v379);
      v556 = 0;
    }

    v380 = *(v340 + 40);
    v591 = *(v340 + 24);
    v592 = v380;
    v593 = *(v340 + 56);
    v381 = BigString.startIndex.getter();
    v385 = 0;
    v386 = 0;
    v387 = 0;
    v388 = 0;
    v389 = 0;
    v390 = -1;
    v391 = v368;
    v393 = v561;
    v392 = v562;
    v394 = v561;
    v395 = v227;
    v396 = v558;
    v397 = v558;
    v398 = v381;
    v399 = v382;
    v400 = v383;
    v401 = v384;
    v402 = -1;
    v403 = v563;
  }

  else
  {
    v531 = v330;
    dispatch thunk of Collection.endIndex.getter();
    lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
    dispatch thunk of BidirectionalCollection.index(before:)();
    v412 = dispatch thunk of Collection.subscript.read();
    v398 = v413[4];
    v545 = v413[5];
    v415 = v413[6];
    v414 = v413[7];
    v412(&v578, 0);
    (v552)(v335, v322);
    v416 = v559;
    AttributedString.Guts.findRun(at:)(v549, v546, &v578);
    v417 = *(&v578 + 1);
    v535 = *(&v579[0] + 1);
    v538 = *&v579[0];
    v544 = *(&v579[1] + 1);
    v561 = *&v579[2];
    *&v562 = v578;
    v542 = *(&v579[2] + 1);
    v558 = *&v579[3];
    v418 = *(v416 + 40);
    v594 = *(v416 + 24);
    v595 = v418;
    v596 = *(v416 + 56);
    v419 = BigString.endIndex.getter();
    *&v563 = v417;
    v539 = v414;
    v540 = v415;
    if ((v419 ^ v398) > 0x3FF)
    {
      AttributedString.Guts.findRun(at:)(v398, v414, &v578);
      v556 = *(&v578 + 1);
      v466 = *(&v579[0] + 1);
      v389 = *&v579[0];
      v559 = *(&v579[1] + 1);
      v560 = v578;
      v528 = *(&v579[2] + 1);
      v529 = *&v579[2];
      v527 = *&v579[3];
      v467 = v550;
      v468 = v555;
      RangeSet.ranges.getter();
      v402 = RangeSet.Ranges.count.getter();
      v469 = *(v543 + 8);
      v469(v536, v468);
      v470 = v322;
      v373 = v560;
      (v552)(v467, v470);
      v471 = v468;
      v331 = v537;
      v469(v557, v471);
      v388 = v466;
      v403 = v563;
      v384 = v527;
      v383 = v528;
      v382 = v529;
      v396 = v558;
      v381 = v559;
      v390 = 0;
      v394 = v548;
      v391 = v549;
      v393 = v561;
      v392 = v562;
      v397 = v546;
      v395 = v547;
      v368 = v544;
      v399 = v545;
      v227 = v542;
      v387 = v554;
      v401 = v539;
      v400 = v540;
      v386 = v538;
      v385 = v535;
    }

    else
    {
      v420 = *(v416 + 9);
      if (v420)
      {
        v421 = *(v416 + 10);
      }

      else
      {
        v421 = 0;
      }

      v529 = v421;
      v373 = *(v416 + 12);
      v422 = swift_unknownObjectRetain();
      v556 = specialized Rope._endPath.getter(v422);
      if (v420)
      {
        swift_unknownObjectRelease();
      }

      v423 = v550;
      v424 = v555;
      RangeSet.ranges.getter();
      v425 = v560;
      v402 = RangeSet.Ranges.count.getter();
      v426 = *(v543 + 8);
      v426(v536, v424);
      (v552)(v423, v425);
      v426(v557, v424);
      v390 = 0;
      v389 = 0;
      v381 = v398;
      v399 = v545;
      v397 = v546;
      v382 = v545;
      v401 = v539;
      v400 = v540;
      v383 = v540;
      v384 = v539;
      v403 = v563;
      v394 = v548;
      v391 = v549;
      v393 = v561;
      v392 = v562;
      v395 = v547;
      v368 = v544;
      v227 = v542;
      v396 = v558;
      v387 = v554;
      v386 = v538;
      v385 = v535;
      v388 = v529;
    }
  }

  *(v331 + 8) = v385;
  *(v331 + 16) = v392;
  *(v331 + 24) = v403;
  *(v331 + 32) = v386;
  *(v331 + 40) = v368;
  *(v331 + 48) = v393;
  *(v331 + 56) = v227;
  *(v331 + 64) = v396;
  *(v331 + 72) = v391;
  *(v331 + 80) = v394;
  *(v331 + 88) = v395;
  *(v331 + 96) = v397;
  *(v331 + 104) = v390;
  *(v331 + 112) = 0;
  *(v331 + 113) = v387;
  *(v331 + 120) = v388;
  *(v331 + 128) = v373;
  *(v331 + 136) = v556;
  *(v331 + 144) = v389;
  *(v331 + 152) = v381;
  *(v331 + 160) = v382;
  *(v331 + 168) = v383;
  *(v331 + 176) = v384;
  *(v331 + 184) = v398;
  *(v331 + 192) = v399;
  *(v331 + 200) = v400;
  *(v331 + 208) = v401;
  *(v331 + 216) = v402;
  *(v331 + 224) = 0;
  *(v331 + 225) = v387;
  v404 = v532;
  outlined init with take of AttributedString.Runs(v331, v532);
  outlined destroy of AttributedSubstring(&v573);
  v405 = v404;
  v406 = v533;
  outlined init with copy of AttributedString.Runs(v405, v533);
  v226 = v513;
  outlined init with copy of AttributedString.Runs(v406, v513);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v249 = swift_allocObject();
  *(v249 + 16) = xmmword_181218E20;
  if (one-time initialization token for name != -1)
  {
    goto LABEL_341;
  }

LABEL_240:
  v407 = *algn_1EA7B2688;
  *(v249 + 32) = static AttributeScopes.FoundationAttributes.MorphologyAttribute.name;
  *(v249 + 40) = v407;
  *(v226 + *(v534 + 36)) = v249;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v408 = static _SetStorage.allocate(capacity:)();
  v409 = v408 + 56;

  v410 = qword_1EEED47D8;
  v411 = unk_1EEED47E0;
  Hasher.init(_seed:)();
  if (v411 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if (v411)
    {
      MEMORY[0x1865CD060](1);
      String.hash(into:)();
    }

    else
    {
      MEMORY[0x1865CD060](0);
    }
  }

  v427 = Hasher._finalize()();
  v428 = -1 << *(v408 + 32);
  v429 = v427 & ~v428;
  v430 = v429 >> 6;
  v431 = *(v409 + 8 * (v429 >> 6));
  v432 = 1 << v429;
  if (((1 << v429) & v431) != 0)
  {
    v226 = ~v428;
    v227 = 1;
    while (1)
    {
      v433 = (*(v408 + 48) + 16 * v429);
      v434 = *v433;
      v435 = v433[1];
      if (v435 == 1)
      {
        break;
      }

      if (v411 == 1)
      {
        goto LABEL_258;
      }

      if (!v435)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v433, 0);
        if (!v411)
        {
          swift_bridgeObjectRelease_n();
          outlined consume of AttributedString.AttributeRunBoundaries?(v434, 0);
          goto LABEL_275;
        }

        outlined copy of AttributedString.AttributeRunBoundaries?(v410, v411);

        v436 = v434;
        v437 = 0;
        goto LABEL_259;
      }

      if (!v411)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v433, v433[1]);
        outlined copy of AttributedString.AttributeRunBoundaries?(v410, 0);
        outlined copy of AttributedString.AttributeRunBoundaries?(v434, v435);

        v436 = v434;
        v437 = v435;
        goto LABEL_259;
      }

      if (v434 == v410 && v435 == v411)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(v410, v411);
        outlined copy of AttributedString.AttributeRunBoundaries?(v410, v411);

        goto LABEL_321;
      }

      v439 = _stringCompareWithSmolCheck(_:_:expecting:)();
      outlined copy of AttributedString.AttributeRunBoundaries?(v434, v435);
      outlined copy of AttributedString.AttributeRunBoundaries?(v410, v411);
      outlined copy of AttributedString.AttributeRunBoundaries?(v434, v435);

      if (v439)
      {
        outlined consume of AttributedString.AttributeRunBoundaries?(v410, v411);
        v410 = v434;
        v411 = v435;
LABEL_321:
        outlined consume of AttributedString.AttributeRunBoundaries?(v410, v411);
LABEL_275:
        v443 = v541;
        v444 = v513;
        outlined destroy of TermOfAddress?(&qword_1EEED47D8, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
        outlined destroy of AttributedString.Runs(v533);
        outlined destroy of AttributedString.Runs(v532);
        *(v444 + *(v534 + 40)) = v408;
        v445 = v530;
        outlined init with copy of FloatingPointRoundingRule?(v444, v530, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V010MorphologyG0OGMd);
        v446 = v510;
        outlined init with copy of FloatingPointRoundingRule?(v445, v510, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V010MorphologyG0OGMd);
        result = outlined init with copy of FloatingPointRoundingRule?(v446, v443, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V010MorphologyG0OGMd);
        v447 = *(v446 + 96);
        if (v447 != 2)
        {
          v448 = *(v446 + 88);
          v563 = *(v446 + 72);
          outlined destroy of TermOfAddress?(v445, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V010MorphologyG0OGMd);
          v449 = *(*v446 + 16);
          outlined destroy of TermOfAddress?(v446, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V010MorphologyG0OGMd);
          v450 = v443 + *(v509 + 36);
          *v450 = v563;
          *(v450 + 2) = v448;
          *(v450 + 3) = v447;
          *(v450 + 4) = v449;
          specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V010MorphologyH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V010MorphologyH0O_GMR, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V010MorphologyG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V010MorphologyG0OGMR, &one-time initialization token for name, algn_1EA7B2688, &static AttributeScopes.FoundationAttributes.MorphologyAttribute.name, one-time initialization function for name, &v578);
          v451 = v578;
          *&v571[32] = *(&v579[2] + 5);
          *&v571[48] = *(&v579[3] + 5);
          *&v571[64] = *(&v579[4] + 5);
          *&v571[79] = DWORD1(v579[5]);
          *v571 = *(v579 + 5);
          *&v571[16] = *(&v579[1] + 5);
          if (*(&v578 + 1) == 1)
          {
            v452 = LODWORD(v579[0]) | (BYTE4(v579[0]) << 32);
            v453 = v520;
LABEL_281:

            outlined destroy of TermOfAddress?(v443, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V010MorphologyH0O_GMd);
            outlined destroy of TermOfAddress?(v444, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V010MorphologyG0OGMd);
            v567 = *&v571[48];
            v568[0] = *&v571[64];
            *(v568 + 15) = *&v571[79];
            v564 = *v571;
            v565 = *&v571[16];
            v566 = *&v571[32];
            goto LABEL_282;
          }

          while (1)
          {
            v570[3] = v579[3];
            v570[4] = v579[4];
            *&v570[5] = *&v579[5];
            v569 = v578;
            v570[0] = v579[0];
            v570[1] = v579[1];
            v570[2] = v579[2];
            if (*(&v578 + 1))
            {
              break;
            }

            outlined destroy of TermOfAddress?(&v569, &_s10Foundation10MorphologyVSg_SnyAA16AttributedStringV5IndexVGtSgMd);
            specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V010MorphologyH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V010MorphologyH0O_GMR, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V010MorphologyG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V010MorphologyG0OGMR, &one-time initialization token for name, algn_1EA7B2688, &static AttributeScopes.FoundationAttributes.MorphologyAttribute.name, one-time initialization function for name, &v578);
            v451 = v578;
            *&v571[32] = *(&v579[2] + 5);
            *&v571[48] = *(&v579[3] + 5);
            *&v571[64] = *(&v579[4] + 5);
            *&v571[79] = DWORD1(v579[5]);
            *v571 = *(v579 + 5);
            *&v571[16] = *(&v579[1] + 5);
            if (*(&v578 + 1) == 1)
            {
              v452 = LODWORD(v579[0]) | (BYTE4(v579[0]) << 32);
              v453 = v520;
              v443 = v541;
              v444 = v513;
              goto LABEL_281;
            }
          }

          outlined destroy of TermOfAddress?(v541, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V010MorphologyH0O_GMd);
          result = outlined destroy of TermOfAddress?(v513, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V010MorphologyG0OGMd);
          v454 = *(&v569 + 1);
          v451 = v569;
          v567 = *(&v570[3] + 5);
          v568[0] = *(&v570[4] + 5);
          *(v568 + 15) = DWORD1(v570[5]);
          v564 = *(v570 + 5);
          v565 = *(&v570[1] + 5);
          v566 = *(&v570[2] + 5);
          v453 = v520;
          if (*(&v569 + 1))
          {
            v452 = LODWORD(v570[0]) | (BYTE4(v570[0]) << 32);
            if (*(&v569 + 1) != 1)
            {
              *(v520 + 24) = &type metadata for Morphology;
              *v453 = v451;
              *(v453 + 8) = v454;
              *(v453 + 16) = v452;
              *(v453 + 20) = BYTE4(v452);
              return result;
            }

LABEL_282:
            *(&v570[2] + 5) = v566;
            *(&v570[3] + 5) = v567;
            *(&v570[4] + 5) = v568[0];
            *(v570 + 5) = v564;
            *&v569 = v451;
            *(&v569 + 1) = 1;
            LODWORD(v570[0]) = v452;
            BYTE4(v570[0]) = BYTE4(v452);
            DWORD1(v570[5]) = *(v568 + 15);
            *(&v570[1] + 5) = v565;
            result = outlined destroy of TermOfAddress?(&v569, &_s10Foundation10MorphologyVSg_SnyAA16AttributedStringV5IndexVGtSgMd);
          }

          *v453 = 0u;
          *(v453 + 16) = 0u;
          return result;
        }

LABEL_346:
        __break(1u);
LABEL_347:
        __break(1u);
LABEL_348:
        __break(1u);
LABEL_349:
        __break(1u);
LABEL_350:
        __break(1u);
LABEL_351:
        __break(1u);
LABEL_352:
        __break(1u);
LABEL_353:
        __break(1u);
        return result;
      }

      v427 = outlined consume of AttributedString.AttributeRunBoundaries?(v434, v435);
      v227 = 1;
LABEL_260:
      v429 = (v429 + 1) & v226;
      v430 = v429 >> 6;
      v431 = *(v409 + 8 * (v429 >> 6));
      v432 = 1 << v429;
      if ((v431 & (1 << v429)) == 0)
      {
        goto LABEL_273;
      }
    }

    if (v411 == 1)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(*v433, 1);
      outlined consume of AttributedString.AttributeRunBoundaries?(v434, 1);
      goto LABEL_275;
    }

LABEL_258:
    outlined copy of AttributedString.AttributeRunBoundaries?(*v433, v433[1]);
    outlined copy of AttributedString.AttributeRunBoundaries?(v410, v411);
    outlined consume of AttributedString.AttributeRunBoundaries?(v434, v435);
    v436 = v410;
    v437 = v411;
LABEL_259:
    v427 = outlined consume of AttributedString.AttributeRunBoundaries?(v436, v437);
    goto LABEL_260;
  }

LABEL_273:
  *(v409 + 8 * v430) = v431 | v432;
  v440 = (*(v408 + 48) + 16 * v429);
  *v440 = v410;
  v440[1] = v411;
  v441 = *(v408 + 16);
  v265 = __OFADD__(v441, 1);
  v442 = v441 + 1;
  if (!v265)
  {
    *(v408 + 16) = v442;
    goto LABEL_275;
  }

  __break(1u);
LABEL_343:
  v507 = v427;
  swift_once();
  v427 = v507;
LABEL_289:
  v461 = *algn_1EA7B2598;
  *(v427 + 32) = static AttributeScopes.FoundationAttributes.AssumedFallbackInflectionAttribute.name;
  *(v427 + 40) = v461;
  *(v226 + *(v527 + 36)) = v427;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
  v462 = static _SetStorage.allocate(capacity:)();
  v463 = v462 + 56;

  v464 = qword_1EEED4808;
  v465 = unk_1EEED4810;
  Hasher.init(_seed:)();
  *&v563 = v429;
  if (v465 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    if (v465)
    {
      MEMORY[0x1865CD060](1);
      String.hash(into:)();
    }

    else
    {
      MEMORY[0x1865CD060](0);
    }
  }

  v472 = Hasher._finalize()();
  v473 = -1 << *(v462 + 32);
  v474 = v472 & ~v473;
  v475 = v474 >> 6;
  v476 = *(v463 + 8 * (v474 >> 6));
  v477 = 1 << v474;
  if (((1 << v474) & v476) == 0)
  {
LABEL_317:
    *(v463 + 8 * v475) = v476 | v477;
    v486 = (*(v462 + 48) + 16 * v474);
    *v486 = v464;
    v486[1] = v465;
    v487 = *(v462 + 16);
    v265 = __OFADD__(v487, 1);
    v488 = v487 + 1;
    if (v265)
    {
      __break(1u);
    }

    *(v462 + 16) = v488;
    v489 = v556;
    goto LABEL_328;
  }

  v478 = ~v473;
  while (1)
  {
    v479 = (*(v462 + 48) + 16 * v474);
    v480 = *v479;
    v481 = v479[1];
    if (v481 == 1)
    {
      if (v465 == 1)
      {
        outlined copy of AttributedString.AttributeRunBoundaries?(*v479, 1);
        v490 = v480;
        v491 = 1;
        goto LABEL_327;
      }

LABEL_302:
      outlined copy of AttributedString.AttributeRunBoundaries?(*v479, v479[1]);
      outlined copy of AttributedString.AttributeRunBoundaries?(v464, v465);
      outlined consume of AttributedString.AttributeRunBoundaries?(v480, v481);
      v482 = v464;
      v483 = v465;
LABEL_303:
      outlined consume of AttributedString.AttributeRunBoundaries?(v482, v483);
      goto LABEL_304;
    }

    if (v465 == 1)
    {
      goto LABEL_302;
    }

    if (!v481)
    {
      break;
    }

    if (!v465)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(*v479, v479[1]);
      outlined copy of AttributedString.AttributeRunBoundaries?(v464, 0);
      outlined copy of AttributedString.AttributeRunBoundaries?(v480, v481);

      v482 = v480;
      v483 = v481;
      goto LABEL_303;
    }

    if (v480 == v464 && v481 == v465)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v464, v465);
      outlined copy of AttributedString.AttributeRunBoundaries?(v464, v465);

LABEL_325:
      v490 = v464;
      v491 = v465;
      goto LABEL_327;
    }

    v485 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of AttributedString.AttributeRunBoundaries?(v480, v481);
    outlined copy of AttributedString.AttributeRunBoundaries?(v464, v465);
    outlined copy of AttributedString.AttributeRunBoundaries?(v480, v481);

    if (v485)
    {
      outlined consume of AttributedString.AttributeRunBoundaries?(v464, v465);
      v464 = v480;
      v465 = v481;
      goto LABEL_325;
    }

    outlined consume of AttributedString.AttributeRunBoundaries?(v480, v481);
LABEL_304:
    v474 = (v474 + 1) & v478;
    v475 = v474 >> 6;
    v476 = *(v463 + 8 * (v474 >> 6));
    v477 = 1 << v474;
    if ((v476 & (1 << v474)) == 0)
    {
      v227 = &v564;
      v226 = v529;
      goto LABEL_317;
    }
  }

  outlined copy of AttributedString.AttributeRunBoundaries?(*v479, 0);
  if (v465)
  {
    outlined copy of AttributedString.AttributeRunBoundaries?(v464, v465);

    v482 = v480;
    v483 = 0;
    goto LABEL_303;
  }

  swift_bridgeObjectRelease_n();
  v490 = v480;
  v491 = 0;
LABEL_327:
  outlined consume of AttributedString.AttributeRunBoundaries?(v490, v491);
  v227 = &v564;
  v489 = v556;
  v226 = v529;
LABEL_328:
  outlined destroy of TermOfAddress?(&qword_1EEED4808, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
  outlined destroy of AttributedString.Runs(v526);
  outlined destroy of AttributedString.Runs(v525);
  *(v226 + *(v527 + 40)) = v462;
  v492 = v521;
  outlined init with copy of FloatingPointRoundingRule?(v226, v521, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionG0OGMd);
  v493 = v522;
  outlined init with copy of FloatingPointRoundingRule?(v492, v522, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionG0OGMd);
  result = outlined init with copy of FloatingPointRoundingRule?(v493, v489, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionG0OGMd);
  v494 = *(v493 + 96);
  if (v494 == 2)
  {
    goto LABEL_351;
  }

  v495 = *(v493 + 88);
  v562 = *(v493 + 72);
  outlined destroy of TermOfAddress?(v492, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionG0OGMd);
  v496 = *(*v493 + 16);
  outlined destroy of TermOfAddress?(v493, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionG0OGMd);
  v497 = v489 + *(v523 + 36);
  *v497 = v562;
  *(v497 + 16) = v495;
  *(v497 + 24) = v494;
  *(v497 + 32) = v496;
  specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionH0O_GMR, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionG0OGMR, &one-time initialization token for name, algn_1EA7B2598, &static AttributeScopes.FoundationAttributes.AssumedFallbackInflectionAttribute.name, one-time initialization function for name, &v578);
  v498 = v578;
  *&v571[32] = *(&v579[2] + 5);
  *&v571[48] = *(&v579[3] + 5);
  *&v571[64] = *(&v579[4] + 5);
  *&v571[79] = DWORD1(v579[5]);
  *v571 = *(v579 + 5);
  *&v571[16] = *(&v579[1] + 5);
  if (*(&v578 + 1) == 1)
  {
    v499 = LODWORD(v579[0]) | (BYTE4(v579[0]) << 32);
    v500 = v520;
LABEL_334:

    outlined destroy of TermOfAddress?(v489, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionH0O_GMd);
    outlined destroy of TermOfAddress?(v529, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionG0OGMd);
    v501 = *&v571[32];
    v502 = *&v571[64];
    *(v227 + 48) = *&v571[48];
    *(v227 + 64) = v502;
    *(v227 + 79) = *&v571[79];
    v564 = *v571;
    v565 = *&v571[16];
    v566 = v501;
LABEL_335:
    *(v227 + 213) = v566;
    v503 = *(v227 + 64);
    *(v227 + 229) = *(v227 + 48);
    *(v227 + 245) = v503;
    v504 = v565;
    *(v227 + 181) = v564;
    *&v569 = v498;
    *(&v569 + 1) = 1;
    LODWORD(v570[0]) = v499;
    BYTE4(v570[0]) = BYTE4(v499);
    DWORD1(v570[5]) = *(v227 + 79);
    *(v227 + 197) = v504;
    result = outlined destroy of TermOfAddress?(&v569, &_s10Foundation10MorphologyVSg_SnyAA16AttributedStringV5IndexVGtSgMd);
LABEL_336:
    *v500 = 0u;
    *(v500 + 16) = 0u;
  }

  else
  {
    while (1)
    {
      v570[3] = v579[3];
      v570[4] = v579[4];
      *&v570[5] = *&v579[5];
      v569 = v578;
      v570[0] = v579[0];
      v570[1] = v579[1];
      v570[2] = v579[2];
      if (*(&v578 + 1))
      {
        break;
      }

      outlined destroy of TermOfAddress?(&v569, &_s10Foundation10MorphologyVSg_SnyAA16AttributedStringV5IndexVGtSgMd);
      specialized AttributedString.Runs.AttributesSlice1.Iterator.next()(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionH0O_GMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionH0O_GMR, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionG0OGMd, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionG0OGMR, &one-time initialization token for name, algn_1EA7B2598, &static AttributeScopes.FoundationAttributes.AssumedFallbackInflectionAttribute.name, one-time initialization function for name, &v578);
      v498 = v578;
      *&v571[32] = *(&v579[2] + 5);
      *&v571[48] = *(&v579[3] + 5);
      *&v571[64] = *(&v579[4] + 5);
      *&v571[79] = DWORD1(v579[5]);
      *v571 = *(v579 + 5);
      *&v571[16] = *(&v579[1] + 5);
      if (*(&v578 + 1) == 1)
      {
        v499 = LODWORD(v579[0]) | (BYTE4(v579[0]) << 32);
        v500 = v520;
        v227 = &v564;
        v489 = v556;
        goto LABEL_334;
      }
    }

    outlined destroy of TermOfAddress?(v556, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1V8IteratorVy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionH0O_GMd);
    result = outlined destroy of TermOfAddress?(v529, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V025AssumedFallbackInflectionG0OGMd);
    v505 = *(&v569 + 1);
    v498 = v569;
    v227 = &v564;
    v567 = *(&v570[3] + 5);
    v568[0] = *(&v570[4] + 5);
    *(v568 + 15) = DWORD1(v570[5]);
    v564 = *(v570 + 5);
    v565 = *(&v570[1] + 5);
    v566 = *(&v570[2] + 5);
    v500 = v520;
    if (!*(&v569 + 1))
    {
      goto LABEL_336;
    }

    v499 = LODWORD(v570[0]) | (BYTE4(v570[0]) << 32);
    if (*(&v569 + 1) == 1)
    {
      goto LABEL_335;
    }

    *(v520 + 24) = &type metadata for Morphology;
    *v500 = v498;
    *(v500 + 8) = v505;
    *(v500 + 16) = v499;
    *(v500 + 20) = BYTE4(v499);
  }

  return result;
}

id thunk for @escaping @callee_guaranteed (@guaranteed NSAttributedStringKey, @unowned _NSRange) -> (@out Any?)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v2(v12);

  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t closure #10 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v6 = *a3;

  _sSn10FoundationAA16AttributedStringV5IndexVRszrlE_2inSnyAEGSgSo8_NSRangeV_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(a1, a2, v6, &v10);
  if (v12 == 2)
  {
    return 0;
  }

  v8 = *a3;
  v9 = *(*a3 + 40);
  v20 = *(*a3 + 24);
  v21 = v9;
  v22 = *(v8 + 56);
  v15 = v10;
  v16 = v11;
  v17 = v12;
  v18 = v13;
  v19 = v14;
  swift_unknownObjectRetain();
  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();
  return MEMORY[0x1865CAF60](&v10);
}

id thunk for @escaping @callee_guaranteed (@unowned _NSRange) -> (@owned String)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  (*(a1 + 32))(a2, a3);
  v3 = String._bridgeToObjectiveCImpl()();

  return v3;
}

void closure #11 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a3;
  *(v10 + 24) = a4;
  v12[4] = partial apply for closure #1 in closure #11 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:);
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = thunk for @escaping @callee_guaranteed (@guaranteed String?, @unowned _NSRange, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v12[3] = &block_descriptor_96;
  v11 = _Block_copy(v12);

  [a5 enumerateSubstringsInRange:a1 options:a2 usingBlock:{3, v11}];
  _Block_release(v11);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned _NSRange, @guaranteed @escaping @callee_guaranteed (@in_guaranteed Any?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, uint64_t a5, uint64_t a6)
{
  v9 = *(a1 + 32);
  v10 = _Block_copy(aBlock);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v9(a2, a3, a6, v11);
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSString?, @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    a2 = String._bridgeToObjectiveCImpl()();
  }

  v7 = a2;
  (*(a6 + 16))(a6);
}

uint64_t closure #12 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5)
{
  v9 = *a4;

  result = _sSn10FoundationAA16AttributedStringV5IndexVRszrlE_2inSnyAEGSgSo8_NSRangeV_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(a1, a2, v9, &v170);
  v11 = *(&v171 + 1);
  if (*(&v171 + 1) == 2)
  {
    return result;
  }

  v143 = a5;
  v144 = a1;
  v12 = *(&v170 + 1);
  v13 = v171;
  v15 = *(&v172 + 1);
  v14 = v172;
  v16 = *(&v173 + 1);
  v17 = v173;
  v18 = v174;
  v145 = a2;
  v146 = v170;
  v166[0] = v170;
  v166[1] = v171;
  v166[2] = v172;
  v166[3] = v173;
  v166[4] = v174;
  outlined init with copy of Any(a3, &v170);
  if ((swift_dynamicCast() & 1) == 0)
  {
    outlined init with copy of Any(a3, &v170);
    if (swift_dynamicCast())
    {
      v142 = *v152;
      *&v167 = v146;
      *(&v167 + 1) = v12;
      *&v168 = v13;
      *(&v168 + 1) = v11;
      v169 = v14;
      v180[0] = v146;
      v180[1] = v12;
      v180[2] = v13;
      v180[3] = v11;
      v180[4] = v15;
      v180[5] = v17;
      v180[6] = v16;
      v180[7] = v18;

      v28 = AttributedString.Guts.getUniformValues(in:)(v180);
      v50 = v49;

      v164 = v28;
      v165 = v50;
      if (one-time initialization token for name != -1)
      {
        swift_once();
      }

      v27 = static AttributeScopes.FoundationAttributes.InflectionAlternativeAttribute.name;
      v21 = unk_1EA7B25D8;
      v163 = 0;
      v19 = v152;
      v161 = 0u;
      v162 = 0u;
      v159 = 0u;
      v160 = 0u;
      outlined init with copy of FloatingPointRoundingRule?(&v159, v152, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
      if (!*&v152[24])
      {

        outlined destroy of TermOfAddress?(v152, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
        v59 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v21);
        v22 = a4;
        if (v60)
        {
          a3 = v59;
          v61 = v164;
          v62 = v142;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            goto LABEL_66;
          }

          v63 = v61;
          goto LABEL_33;
        }

        v158 = 0;
        v156 = 0u;
        v157 = 0u;
        v154 = 0u;
        v155 = 0u;
LABEL_61:
        v62 = v142;
        while (1)
        {
          AttributedString._AttributeStorage._attributeModified(_:old:new:)(v27, v21, &v154, &v159);
          outlined destroy of TermOfAddress?(&v159, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
          outlined destroy of TermOfAddress?(&v154, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

          specialized AttributedString.replaceSubrange<A, B>(_:with:)(v166, v62);
          a3 = *v22;
          v96 = *(v62 + 40);
          v177 = *(v62 + 24);
          v178 = v96;
          v179 = *(v62 + 56);
          v97 = BigString.startIndex.getter();
          v21 = v98;
          v27 = v99;
          v61 = v100;
          v101 = BigString.endIndex.getter();
          *v152 = v62;
          *&v152[8] = v97;
          *&v152[16] = v21;
          *&v152[24] = v27;
          *&v152[32] = v61;
          *&v152[40] = v101;
          *&v152[48] = v102;
          *&v152[56] = v103;
          *&v152[64] = v104;
          v153 = 0;
          v105 = *(v62 + 24);
          v106 = *(v62 + 40);
          v107 = *(v62 + 56);
          v174 = *&v152[24];
          v175 = *&v152[40];
          v176 = *&v152[56];
          v170 = v105;
          v171 = v106;
          v172 = v107;
          v173 = *&v152[8];
          swift_unknownObjectRetain();

          BigSubstring.count.getter();
          outlined destroy of AttributedString.CharacterView(v152);
          outlined destroy of BigSubstring(&v170);
          specialized AttributedStringProtocol.index(_:offsetByCharacters:)(&v167, a3, v149);

          v108 = *v149;
          if (*v149 >> 10 >= v146 >> 10)
          {
            v109 = *&v149[8];
            v110 = *&v149[24];
            *v149 = v167;
            *&v149[16] = v168;
            *&v149[32] = v169;
            *&v149[40] = v108;
            v150 = v109;
            v151 = v110;
            specialized AttributedString._addAttributesNotPresentMergingInlinePresentationIntents(_:to:)(v164, v149);

            v111 = *(v62 + 40);
            *v149 = *(v62 + 24);
            *&v149[16] = v111;
            *&v149[32] = *(v62 + 56);
            v182 = *(v62 + 56);
            v181[0] = *v149;
            v181[1] = v111;
            outlined init with copy of Rope<BigString._Chunk>._Node?(v181, v148);
            MEMORY[0x1865CAF80](v149);
            v112 = String._bridgeToObjectiveCImpl()();

            [v143 replaceCharactersInRange:v144 withString:{v145, v112}];
            swift_unknownObjectRelease();
          }

          __break(1u);
LABEL_66:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
          v113 = static _DictionaryStorage.copy(original:)();
          v63 = v113;
          if (*(v61 + 16))
          {
            v114 = (v113 + 64);
            __srca = (v61 + 64);
            v115 = ((1 << *(v63 + 32)) + 63) >> 6;
            if (v63 != v61 || v114 >= &__srca[8 * v115])
            {
              memmove(v114, __srca, 8 * v115);
            }

            v116 = 0;
            *(v63 + 16) = *(v61 + 16);
            v117 = 1 << *(v61 + 32);
            v118 = -1;
            if (v117 < 64)
            {
              v118 = ~(-1 << v117);
            }

            v119 = (v117 + 63) >> 6;
            v120 = v118 & *(v61 + 64);
            if (!v120)
            {
              goto LABEL_74;
            }

            while (1)
            {
              v121 = __clz(__rbit64(v120));
              for (i = (v120 - 1) & v120; ; i = (v123 - 1) & v123)
              {
                v124 = v121 | (v116 << 6);
                v125 = 16 * v124;
                v126 = (*(v61 + 48) + 16 * v124);
                v127 = v126[1];
                v139 = *v126;
                v128 = 72 * v124;
                outlined init with copy of AttributedString._AttributeValue(*(v61 + 56) + 72 * v124, &v170);
                v129 = (*(v63 + 48) + v125);
                *v129 = v139;
                v129[1] = v127;
                v130 = *(v63 + 56) + v128;
                *v130 = v170;
                v131 = v171;
                v132 = v172;
                v133 = v173;
                *(v130 + 64) = v174;
                *(v130 + 32) = v132;
                *(v130 + 48) = v133;
                *(v130 + 16) = v131;

                v120 = i;
                if (i)
                {
                  break;
                }

LABEL_74:
                v122 = v116;
                do
                {
                  v116 = v122 + 1;
                  if (__OFADD__(v122, 1))
                  {
                    goto LABEL_83;
                  }

                  if (v116 >= v119)
                  {
                    goto LABEL_81;
                  }

                  v123 = *&__srca[8 * v116];
                  ++v122;
                }

                while (!v123);
                v121 = __clz(__rbit64(v123));
              }
            }
          }

LABEL_81:

          v22 = a4;
          v62 = v142;
LABEL_33:

          v64 = *(v63 + 56) + 72 * a3;
          v154 = *v64;
          v66 = *(v64 + 32);
          v65 = *(v64 + 48);
          v67 = *(v64 + 64);
          v155 = *(v64 + 16);
          v156 = v66;
          v158 = v67;
          v157 = v65;
          specialized _NativeDictionary._delete(at:)(a3, v63);
          v164 = v63;
        }
      }

      v172 = *&v152[32];
      v173 = *&v152[48];
      *&v174 = *&v152[64];
      v170 = *v152;
      v171 = *&v152[16];
      outlined init with copy of AttributedString._AttributeValue(&v170, v152);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v177 = v28;
      v23 = v28;
      a3 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v21);
      v52 = *(v28 + 16);
      v53 = (v51 & 1) == 0;
      v54 = v52 + v53;
      v22 = a4;
      if (__OFADD__(v52, v53))
      {
        goto LABEL_40;
      }

      v55 = v51;
      if (*(v28 + 24) < v54)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v54, isUniquelyReferenced_nonNull_native);
        v56 = v177;
        v57 = specialized __RawDictionaryStorage.find<A>(_:)(v27, v21);
        if ((v55 & 1) != (v58 & 1))
        {
          goto LABEL_86;
        }

        a3 = v57;
        if ((v55 & 1) == 0)
        {
          goto LABEL_59;
        }

LABEL_36:
        v68 = *(v56 + 56) + 72 * a3;
        v70 = *(v68 + 16);
        v69 = *(v68 + 32);
        v71 = *(v68 + 48);
        v158 = *(v68 + 64);
        v157 = v71;
        v154 = *v68;
        v155 = v70;
        v156 = v69;
        v72 = *(v56 + 56) + 72 * a3;
        v73 = *&v152[16];
        v74 = *&v152[32];
        v75 = *&v152[48];
        *(v72 + 64) = *&v152[64];
        *(v72 + 32) = v74;
        *(v72 + 48) = v75;
        *(v72 + 16) = v73;
        *v72 = *v152;
        outlined destroy of AttributedString._AttributeValue(&v170);
LABEL_60:
        v164 = v56;
        goto LABEL_61;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v56 = v28;
        if (v51)
        {
          goto LABEL_36;
        }

LABEL_59:
        specialized _NativeDictionary._insert(at:key:value:)(a3, v27, v21, v152, v56);

        outlined destroy of AttributedString._AttributeValue(&v170);
        v154 = 0u;
        v155 = 0u;
        v156 = 0u;
        v157 = 0u;
        v158 = 0;
        goto LABEL_60;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
      v76 = static _DictionaryStorage.copy(original:)();
      v56 = v76;
      if (!*(v28 + 16))
      {
LABEL_58:

        v22 = a4;
        if (v55)
        {
          goto LABEL_36;
        }

        goto LABEL_59;
      }

      v77 = (v76 + 64);
      __src = (v28 + 64);
      v78 = ((1 << *(v56 + 32)) + 63) >> 6;
      if (v56 != v28 || v77 >= &__src[8 * v78])
      {
        memmove(v77, __src, 8 * v78);
      }

      v79 = 0;
      *(v56 + 16) = *(v28 + 16);
      v80 = 1 << *(v28 + 32);
      v81 = -1;
      if (v80 < 64)
      {
        v81 = ~(-1 << v80);
      }

      v135 = (v80 + 63) >> 6;
      v82 = v81 & *(v28 + 64);
      if (v82)
      {
LABEL_50:
        v83 = __clz(__rbit64(v82));
        v140 = (v82 - 1) & v82;
        goto LABEL_56;
      }

LABEL_51:
      v84 = v79;
      while (1)
      {
        v79 = v84 + 1;
        if (__OFADD__(v84, 1))
        {
          break;
        }

        if (v79 >= v135)
        {
          goto LABEL_58;
        }

        v85 = *&__src[8 * v79];
        ++v84;
        if (v85)
        {
          v83 = __clz(__rbit64(v85));
          v140 = (v85 - 1) & v85;
LABEL_56:
          v86 = v83 | (v79 << 6);
          v87 = 16 * v86;
          v88 = (*(v28 + 48) + 16 * v86);
          v89 = v88[1];
          v138 = *v88;
          v90 = 72 * v86;
          outlined init with copy of AttributedString._AttributeValue(*(v28 + 56) + 72 * v86, v149);
          v91 = (*(v56 + 48) + v87);
          *v91 = v138;
          v91[1] = v89;
          v92 = *(v56 + 56) + v90;
          *v92 = *v149;
          v93 = *&v149[16];
          v94 = *&v149[32];
          v95 = v150;
          *(v92 + 64) = v151;
          *(v92 + 32) = v94;
          *(v92 + 48) = v95;
          *(v92 + 16) = v93;

          v82 = v140;
          if (v140)
          {
            goto LABEL_50;
          }

          goto LABEL_51;
        }
      }

      __break(1u);
LABEL_83:
      __break(1u);
    }

    *&v170 = 0;
    *(&v170 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    *&v170 = 0xD00000000000001DLL;
    *(&v170 + 1) = 0x80000001814895E0;
    __swift_project_boxed_opaque_existential_1(a3, *(a3 + 24));
    swift_getDynamicType();
    v134 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v134);

    goto LABEL_85;
  }

  v14 = *&v152[8];
  v146 = *v152;
  v19 = a4;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v21 = &unk_1EA7B2000;
  v22 = MEMORY[0x1E69E7CC0];
  v23 = &static AttributedString.Guts._nextVersion;
  if (v20)
  {
    goto LABEL_13;
  }

  v24 = *a4;
  v25 = *(*a4 + 24);
  v26 = *(*a4 + 56);
  *&v152[16] = *(*a4 + 40);
  *&v152[32] = v26;
  *v152 = v25;
  a3 = v24[9];
  v27 = v24[10];
  v28 = v24[11];
  v17 = v24[12];
  type metadata accessor for AttributedString.Guts();
  isUniquelyReferenced_nonNull_native = swift_allocObject();
  v23 = (BigString.isEmpty.getter() & 1);
  outlined init with copy of BigString(v152, &v170);
  v30 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v30);
  if (a3)
  {
    v31 = v28 == 0;
  }

  else
  {
    v31 = 1;
  }

  v32 = v31;
  if (v32 != v23)
  {
    goto LABEL_41;
  }

  v23 = &static AttributedString.Guts._nextVersion;
  if (one-time initialization token for _nextVersion != -1)
  {
    goto LABEL_42;
  }

  while (1)
  {
    add_explicit = atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
    *(isUniquelyReferenced_nonNull_native + 24) = *v152;
    v34 = *&v152[32];
    *(isUniquelyReferenced_nonNull_native + 40) = *&v152[16];
    *(isUniquelyReferenced_nonNull_native + 16) = add_explicit;
    *(isUniquelyReferenced_nonNull_native + 56) = v34;
    *(isUniquelyReferenced_nonNull_native + 72) = a3;
    *(isUniquelyReferenced_nonNull_native + 80) = v27;
    *(isUniquelyReferenced_nonNull_native + 88) = v28;
    *(isUniquelyReferenced_nonNull_native + 96) = v17;
    *(isUniquelyReferenced_nonNull_native + 104) = v22;
    *v19 = isUniquelyReferenced_nonNull_native;

LABEL_13:
    v35 = *v19;
    if (v21[147] != -1)
    {
      swift_once();
    }

    v21 = v23;
    *(v35 + 16) = atomic_fetch_add_explicit(v23, 1uLL, memory_order_relaxed);
    *&v170 = *v19;
    v36 = *(v170 + 40);
    *v149 = *(v170 + 24);
    *&v149[16] = v36;
    *&v149[32] = *(v170 + 56);
    v37 = BigString.startIndex.getter();
    v27 = v38;
    v28 = v39;
    v17 = v40;
    v41 = BigString.endIndex.getter();
    *(&v170 + 1) = v37;
    *&v171 = v27;
    *(&v171 + 1) = v28;
    *&v172 = v17;
    *(&v172 + 1) = v41;
    *&v173 = v42;
    *(&v173 + 1) = v43;
    *&v174 = v44;
    v23 = one-time initialization token for currentIdentity;

    if (v23 != -1)
    {
      swift_once();
    }

    isUniquelyReferenced_nonNull_native = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v45 = *(isUniquelyReferenced_nonNull_native + 16);
    a3 = v45 + 1;
    if (__OFADD__(v45, 1))
    {
      __break(1u);
      goto LABEL_39;
    }

    v27 = v22;
    *(isUniquelyReferenced_nonNull_native + 16) = a3;
    os_unfair_lock_unlock((isUniquelyReferenced_nonNull_native + 24));
    *(&v174 + 1) = a3;
    BigString.init()();
    *&v154 = 0;
    MEMORY[0x1865D26B0](&v154, 8);
    v22 = v154;
    type metadata accessor for AttributedString.Guts();
    isUniquelyReferenced_nonNull_native = swift_allocObject();
    v23 = &v159;
    if (BigString.isEmpty.getter())
    {
      break;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
  }

  v46 = atomic_fetch_add_explicit(v21, 1uLL, memory_order_relaxed);
  v47 = v160;
  *(isUniquelyReferenced_nonNull_native + 24) = v159;
  *(isUniquelyReferenced_nonNull_native + 16) = v46;
  *(isUniquelyReferenced_nonNull_native + 40) = v47;
  *(isUniquelyReferenced_nonNull_native + 56) = v161;
  *(isUniquelyReferenced_nonNull_native + 72) = 0;
  *(isUniquelyReferenced_nonNull_native + 80) = 0;
  *(isUniquelyReferenced_nonNull_native + 88) = 0;
  *(isUniquelyReferenced_nonNull_native + 96) = v22;
  *(isUniquelyReferenced_nonNull_native + 104) = v27;
  *v19 = isUniquelyReferenced_nonNull_native;

  specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)(v166, v146, v14);
  if (*(&v174 + 1) == a3)
  {
    *v19 = v170;

    v48 = String._bridgeToObjectiveCImpl()();

    [v143 replaceCharactersInRange:v144 withString:{v145, v48}];
    return swift_unknownObjectRelease();
  }

LABEL_85:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_86:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned _NSRange, @in_guaranteed Any) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a4;
  swift_unknownObjectRetain();
  v7(a2, a3, v9);
  return __swift_destroy_boxed_opaque_existential_1(v9);
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned _NSRange, @guaranteed NSAttributedStringKey, @in_guaranteed Any) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = *(a1 + 32);
  v12[3] = swift_getObjectType();
  v12[0] = a5;
  v10 = a4;
  swift_unknownObjectRetain();
  v9(a2, a3, v10, v12);

  return __swift_destroy_boxed_opaque_existential_1(v12);
}

double closure #14 in AttributedString.inflected(locale:userTermOfAddress:replacements:concepts:preflight:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  outlined init with copy of Any(a1, v8);
  if (swift_dynamicCast())
  {
    v6 = v7;
    v7 = a2;
    *(a3 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd);

    AttributedString.formatInflectionAlternative(_:replacements:)(&v6);
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

void AttributedString.formatInflectionAlternative(_:replacements:)(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v3 = v2;
  v454 = v4;
  v6 = *v5;
  v450 = *v1;
  v7 = *(*v5 + 24);
  v8 = *(*v5 + 40);
  v650 = *(*v5 + 56);
  v649 = v8;
  v648 = v7;
  v9 = BigString.startIndex.getter();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v16 = *(v6 + 16);
  v452 = v3 & 0xFFFFFFFFFFFFFF8;
  v453 = v3;
  v451 = v3 & 0xC000000000000001;
  v449 = v3 + 32;

  while (1)
  {
    while (1)
    {
      v647[0] = v9;
      v647[1] = v11;
      v647[2] = v13;
      v647[3] = v15;
      v647[4] = v16;
      specialized AttributedString.subscript.getter(v647, v6, v512);
      v550[4] = *&v512[64];
      v550[3] = *&v512[48];
      v550[2] = *&v512[32];
      v550[0] = *v512;
      v550[1] = *&v512[16];
      v17 = *v512;
      v645[3] = *&v512[8];
      v645[4] = *&v512[24];
      v645[5] = *&v512[40];
      v645[6] = *&v512[56];
      v18 = *(*v512 + 24);
      v19 = *(*v512 + 40);
      v646[2] = *(*v512 + 56);
      v646[1] = v19;
      v646[0] = v18;
      outlined init with copy of AttributedSubstring(v550, v537);
      outlined init with copy of BigString(v646, v537);
      BigString.subscript.getter();
      outlined destroy of BigString(v646);
      outlined destroy of BigSubstring(v551);
      v522 = v552;
      v523 = v553;
      v524 = v554;
      v525 = v555;
      *&v537[8] = v552;
      *&v537[24] = v553;
      *&v537[40] = v554;
      *&v537[56] = v555;
      *v537 = v17;
      *&v537[72] = 0;
      lazy protocol witness table accessor for type AttributedString.CharacterView and conformance AttributedString.CharacterView();
      v20 = Substring.init<A>(_:)();
      v22 = v21;
      *v537 = 123;
      *&v537[8] = 0xE100000000000000;
      v23 = Substring.init<A>(_:)();
      v473 = v6;
      if ((v20 ^ v22) < 0x4000 || (v23 ^ v24) < 0x4000)
      {

LABEL_110:

        outlined destroy of AttributedSubstring(v550);
        v311 = *(v6 + 40);
        v492 = *(v6 + 24);
        v493 = v311;
        v494 = *(v6 + 56);
        v312 = BigString.startIndex.getter();
        v314 = v313;
        v315 = v6;
        v317 = v316;
        v319 = v318;
        v320 = *(v315 + 16);
        while (1)
        {
          v577[0] = v312;
          v577[1] = v314;
          v577[2] = v317;
          v577[3] = v319;
          v577[4] = v320;
          specialized AttributedString.subscript.getter(v577, v473, v549);
          v505 = *&v549[48];
          v506 = *&v549[64];
          v502 = *v549;
          v503 = *&v549[16];
          v504 = *&v549[32];
          v321 = *v549;
          v532 = *&v549[8];
          v533 = *&v549[24];
          v534 = *&v549[40];
          v535 = *&v549[56];
          v322 = *(*v549 + 24);
          v323 = *(*v549 + 56);
          v488 = *(*v549 + 40);
          v489 = v323;
          v487 = v322;
          outlined init with copy of AttributedSubstring(&v502, v512);
          outlined init with copy of BigString(&v487, v512);
          BigString.subscript.getter();
          outlined destroy of BigString(&v487);
          outlined destroy of BigSubstring(v537);
          *&v548[16] = *&v537[64];
          *v548 = *&v537[48];
          *&v548[32] = v538;
          *&v548[48] = v539;
          *&v512[8] = *&v537[48];
          *&v512[24] = *&v537[64];
          *&v512[40] = v538;
          *&v512[56] = v539;
          *v512 = v321;
          *&v512[72] = 0;
          v324 = Substring.init<A>(_:)();
          v326 = v325;
          *v512 = 32125;
          *&v512[8] = 0xE200000000000000;
          v327 = Substring.init<A>(_:)();
          if ((v324 ^ v326) < 0x4000 || (v327 ^ v328) < 0x4000)
          {
            break;
          }

          specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v327, v328, v329, v330, 0, 0, 0, 0, 0, v324, v326);
          v332 = v331;

          if (v332)
          {
            goto LABEL_141;
          }

          v333 = Substring.UTF8View.distance(from:to:)();

          v334 = Substring.UTF8View.distance(from:to:)();

          v335 = *(&v502 + 1) >> 11;
          if (__OFADD__(*(&v502 + 1) >> 11, v333))
          {
            goto LABEL_165;
          }

          v336 = *(v321 + 24);
          v337 = *(v321 + 56);
          v483 = *(v321 + 40);
          v484 = v337;
          v482 = v336;
          v338 = *(v321 + 40);
          v475 = *(v321 + 24);
          v476 = v338;
          v477 = *(v321 + 56);
          BigString.startIndex.getter();
          outlined init with copy of AttributedSubstring(&v502, v512);
          outlined init with copy of BigString(&v482, v512);
          v339 = BigString.UTF8View.index(_:offsetBy:)();
          v341 = v340;
          v343 = v342;
          v345 = v344;
          outlined destroy of BigString(&v482);
          outlined destroy of AttributedSubstring(&v502);
          if (__OFADD__(v335, v334))
          {
            goto LABEL_166;
          }

          v470 = *(v321 + 16);
          v472 = v345;
          v346 = *(v321 + 24);
          v347 = *(v321 + 40);
          v590 = *(v321 + 56);
          v589 = v347;
          v588 = v346;
          v348 = *(v321 + 40);
          v585 = *(v321 + 24);
          v586 = v348;
          v587 = *(v321 + 56);
          BigString.startIndex.getter();
          outlined init with copy of AttributedSubstring(&v502, v512);
          outlined init with copy of BigString(&v588, v512);
          v349 = BigString.UTF8View.index(_:offsetBy:)();
          v351 = v350;
          v353 = v352;
          v355 = v354;
          outlined destroy of BigString(&v588);
          outlined destroy of AttributedSubstring(&v502);
          v356 = *(v321 + 16);
          outlined destroy of AttributedSubstring(&v502);
          if (v349 >> 10 < v339 >> 10)
          {
            goto LABEL_167;
          }

          *&v522 = v339;
          *(&v522 + 1) = v341;
          *&v523 = v343;
          *(&v523 + 1) = v472;
          *&v524 = v470;
          *(&v524 + 1) = v349;
          *&v525 = v351;
          *(&v525 + 1) = v353;
          *&v526 = v355;
          *(&v526 + 1) = v356;
          v357 = v473;
          v358 = *(v473 + 24);
          v359 = *(v473 + 40);
          v584 = *(v473 + 56);
          v583 = v359;
          v582 = v358;
          v360 = BigString.startIndex.getter();
          v362 = v361;
          v364 = v363;
          v366 = v365;
          v367 = BigString.endIndex.getter();
          *v548 = v473;
          *&v548[8] = v360;
          *&v548[16] = v362;
          *&v548[24] = v364;
          *&v548[32] = v366;
          *&v548[40] = v367;
          *&v548[48] = v368;
          *&v548[56] = v369;
          *&v548[64] = v370;
          v371 = *(v473 + 16);
          *v543 = v360;
          *&v543[8] = v362;
          *&v543[16] = v364;
          *&v543[24] = v366;
          *&v543[32] = v371;
          v497 = v522;
          v498 = v523;
          *&v499 = v524;

          v372 = AttributedString.CharacterView._distance(from:to:)(v543, &v497);
          *&v512[32] = *&v548[32];
          *&v512[48] = *&v548[48];
          *&v512[64] = *&v548[64];
          *v512 = *v548;
          *&v512[16] = *&v548[16];
          outlined destroy of AttributedString.CharacterView(v512);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v373 = *(v473 + 40);
            v579 = *(v473 + 24);
            v580 = v373;
            v581 = *(v473 + 56);
            v374 = *(v473 + 72);
            v375 = *(v473 + 80);
            v377 = *(v473 + 88);
            v376 = *(v473 + 96);
            type metadata accessor for AttributedString.Guts();
            v357 = swift_allocObject();
            v378 = BigString.isEmpty.getter() & 1;
            outlined init with copy of BigString(&v579, v548);
            v379 = swift_unknownObjectRetain();
            specialized Rope._endPath.getter(v379);
            if (v374)
            {
              v380 = v377 == 0;
            }

            else
            {
              v380 = 1;
            }

            v381 = v380;
            if (v381 != v378)
            {
              goto LABEL_178;
            }

            if (one-time initialization token for _nextVersion != -1)
            {
              swift_once();
            }

            *(v357 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
            v382 = v580;
            *(v357 + 24) = v579;
            *(v357 + 40) = v382;
            *(v357 + 56) = v581;
            *(v357 + 72) = v374;
            *(v357 + 80) = v375;
            *(v357 + 88) = v377;
            *(v357 + 96) = v376;
            *(v357 + 104) = MEMORY[0x1E69E7CC0];
          }

          if (one-time initialization token for _nextVersion != -1)
          {
            swift_once();
          }

          *(v357 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
          *v548 = v357;
          v383 = *(v357 + 24);
          v384 = *(v357 + 40);
          v578[8] = *(v357 + 56);
          v578[7] = v384;
          v578[6] = v383;
          v385 = BigString.startIndex.getter();
          v387 = v386;
          v389 = v388;
          v391 = v390;
          v392 = BigString.endIndex.getter();
          *&v548[8] = v385;
          *&v548[16] = v387;
          *&v548[24] = v389;
          *&v548[32] = v391;
          *&v548[40] = v392;
          *&v548[48] = v393;
          *&v548[56] = v394;
          *&v548[64] = v395;
          v396 = one-time initialization token for currentIdentity;

          if (v396 != -1)
          {
            swift_once();
          }

          v397 = static AttributedString.currentIdentity;
          os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
          v398 = *(v397 + 16);
          v399 = v398 + 1;
          if (__OFADD__(v398, 1))
          {
            goto LABEL_168;
          }

          *(v397 + 16) = v399;
          os_unfair_lock_unlock((v397 + 24));
          *&v548[72] = v399;
          BigString.init()();
          *v543 = 0;
          MEMORY[0x1865D26B0](v543, 8);
          v400 = *v543;
          type metadata accessor for AttributedString.Guts();
          v401 = swift_allocObject();
          if ((BigString.isEmpty.getter() & 1) == 0)
          {
            goto LABEL_169;
          }

          *(v401 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
          v402 = v569;
          *(v401 + 24) = v568;
          *(v401 + 40) = v402;
          *(v401 + 56) = v570;
          *(v401 + 72) = 0;
          *(v401 + 80) = 0;
          *(v401 + 88) = 0;
          *(v401 + 96) = v400;
          *(v401 + 104) = MEMORY[0x1E69E7CC0];

          specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)(&v522, 125, 0xE100000000000000);
          if (*&v548[72] != v399)
          {
            goto LABEL_195;
          }

          v403 = *v548;

          v404 = *(v403 + 40);
          v578[3] = *(v403 + 24);
          v578[4] = v404;
          v578[5] = *(v403 + 56);
          v405 = BigString.startIndex.getter();
          v407 = v406;
          v409 = v408;
          v411 = v410;
          v412 = BigString.endIndex.getter();
          *v543 = v403;
          *&v543[8] = v405;
          *&v543[16] = v407;
          *&v543[24] = v409;
          *&v543[32] = v411;
          *&v543[40] = v412;
          *&v543[48] = v413;
          *&v543[56] = v414;
          *&v543[64] = v415;
          if (__OFADD__(v372, 1))
          {
            goto LABEL_170;
          }

          v416 = v405 >> 10;
          v417 = v412 >> 10;
          if (v412 >> 10 < v405 >> 10)
          {
            goto LABEL_171;
          }

          v418 = *(v403 + 40);
          v578[0] = *(v403 + 24);
          v578[1] = v418;
          v578[2] = *(v403 + 56);

          outlined init with copy of BigString(v578, &v497);
          v312 = BigString.index(_:offsetBy:)();
          v314 = v419;
          v317 = v420;
          v319 = v421;
          outlined destroy of BigString(v578);
          v473 = v403;
          v320 = *(v403 + 16);
          outlined destroy of AttributedString.CharacterView(v543);
          if (v312 >> 10 < v416 || v417 < v312 >> 10)
          {
            goto LABEL_172;
          }
        }

LABEL_141:

        outlined destroy of AttributedSubstring(&v502);
        specialized AttributedString.subscript.getter(v577, v473, v548);
        v422 = *v548;
        v497 = *&v548[8];
        v498 = *&v548[24];
        v499 = *&v548[40];
        v500 = *&v548[56];
        v423 = *(*v548 + 24);
        v424 = *(*v548 + 40);
        v576[2] = *(*v548 + 56);
        v576[1] = v424;
        v576[0] = v423;
        outlined init with copy of AttributedSubstring(v548, v512);
        outlined init with copy of BigString(v576, v512);
        BigString.subscript.getter();
        outlined destroy of BigString(v576);
        outlined destroy of BigSubstring(v512);
        v545 = *&v512[64];
        v544 = *&v512[48];
        v547 = v514;
        v546 = v513;
        *&v543[8] = *&v512[48];
        *&v543[24] = *&v512[64];
        *&v543[40] = v513;
        *&v543[56] = v514;
        *v543 = v422;
        *&v543[72] = 0;
        v425 = Substring.init<A>(_:)();
        v427 = v426;
        *v543 = 125;
        *&v543[8] = 0xE100000000000000;
        v428 = Substring.init<A>(_:)();
        if ((v425 ^ v427) < 0x4000 || (v428 ^ v429) < 0x4000)
        {
        }

        else
        {
          specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v428, v429, v430, v431, 0, 0, 0, 0, 0, v425, v427);
          v433 = v432;

          if ((v433 & 1) == 0)
          {

            v434 = Substring.UTF8View.distance(from:to:)();

            v435 = Substring.UTF8View.distance(from:to:)();

            v436 = *&v548[8] >> 11;
            if (__OFADD__(*&v548[8] >> 11, v434))
            {
              goto LABEL_192;
            }

            v437 = *(v422 + 24);
            v438 = *(v422 + 40);
            v575[2] = *(v422 + 56);
            v575[1] = v438;
            v575[0] = v437;
            v439 = *(v422 + 40);
            v574[3] = *(v422 + 24);
            v574[4] = v439;
            v574[5] = *(v422 + 56);
            BigString.startIndex.getter();
            outlined init with copy of AttributedSubstring(v548, v543);
            outlined init with copy of BigString(v575, v543);
            v440 = BigString.UTF8View.index(_:offsetBy:)();
            outlined destroy of BigString(v575);
            outlined destroy of AttributedSubstring(v548);
            if (__OFADD__(v436, v435))
            {
LABEL_193:
              __break(1u);
            }

            else
            {
              v441 = *(v422 + 24);
              v442 = *(v422 + 40);
              v574[2] = *(v422 + 56);
              v574[1] = v442;
              v574[0] = v441;
              v443 = *(v422 + 40);
              v571 = *(v422 + 24);
              v572 = v443;
              v573 = *(v422 + 56);
              BigString.startIndex.getter();
              outlined init with copy of AttributedSubstring(v548, v543);
              outlined init with copy of BigString(v574, v543);
              v444 = BigString.UTF8View.index(_:offsetBy:)();
              outlined destroy of BigString(v574);
              outlined destroy of AttributedSubstring(v548);
              outlined destroy of AttributedSubstring(v548);
              if (v444 >> 10 >= v440 >> 10)
              {
                goto LABEL_152;
              }
            }

            __break(1u);
LABEL_195:
            _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return;
          }
        }

        outlined destroy of AttributedSubstring(v548);
        *v454 = v473;
        return;
      }

      specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v23, v24, v25, v26, 0, 0, 0, 0, 0, v20, v22);
      v28 = v27;

      if (v28)
      {
        goto LABEL_110;
      }

      v29 = Substring.UTF8View.distance(from:to:)();

      v30 = Substring.UTF8View.distance(from:to:)();

      v31 = *(&v550[0] + 1) >> 11;
      if (__OFADD__(*(&v550[0] + 1) >> 11, v29))
      {
        goto LABEL_161;
      }

      v32 = *(v17 + 24);
      v33 = *(v17 + 40);
      v645[2] = *(v17 + 56);
      v645[1] = v33;
      v645[0] = v32;
      v34 = *(v17 + 40);
      v644[3] = *(v17 + 24);
      v644[4] = v34;
      v644[5] = *(v17 + 56);
      BigString.startIndex.getter();
      outlined init with copy of AttributedSubstring(v550, v537);
      outlined init with copy of BigString(v645, v537);
      v35 = BigString.UTF8View.index(_:offsetBy:)();
      v459 = v36;
      v38 = v37;
      v40 = v39;
      outlined destroy of BigString(v645);
      outlined destroy of AttributedSubstring(v550);
      if (__OFADD__(v31, v30))
      {
        goto LABEL_162;
      }

      *&v458 = v38;
      *(&v458 + 1) = v40;
      v457 = *(v17 + 16);
      v41 = *(v17 + 24);
      v42 = *(v17 + 40);
      v644[2] = *(v17 + 56);
      v644[1] = v42;
      v644[0] = v41;
      v43 = *(v17 + 40);
      v643[3] = *(v17 + 24);
      v643[4] = v43;
      v643[5] = *(v17 + 56);
      BigString.startIndex.getter();
      outlined init with copy of AttributedSubstring(v550, v537);
      outlined init with copy of BigString(v644, v537);
      v44 = BigString.UTF8View.index(_:offsetBy:)();
      *(&v466 + 1) = v45;
      *&v469 = v46;
      *(&v469 + 1) = v47;
      outlined destroy of BigString(v644);
      outlined destroy of AttributedSubstring(v550);
      v462 = *(v17 + 16);
      outlined destroy of AttributedSubstring(v550);
      *&v466 = v44;
      v48 = v44 >> 10;
      if (v48 < v35 >> 10)
      {
        goto LABEL_163;
      }

      v463 = v35;
      v49 = *(v6 + 40);
      v643[0] = *(v6 + 24);
      v643[1] = v49;
      v643[2] = *(v6 + 56);
      v50 = BigString.endIndex.getter();
      v54 = v50 >> 10;
      if (v48 == v50 >> 10)
      {
        goto LABEL_152;
      }

      v55 = v50;
      v56 = v52;
      v57 = v51;
      v460 = v53;
      v58 = BigString.startIndex.getter();
      if (v48 >= v54)
      {
        goto LABEL_164;
      }

      v62 = v58;
      if (v48 < v58 >> 10)
      {
        goto LABEL_164;
      }

      v63 = v59;
      v64 = v60;
      v65 = v61;
      v455 = v48;

      outlined init with copy of BigString(v643, v512);
      v66 = BigString.subscript.getter();
      v68 = v67;
      outlined destroy of BigString(v643);
      *v549 = v473;
      *&v549[8] = v62;
      *&v549[16] = v63;
      *&v549[24] = v64;
      *&v549[32] = v65;
      *&v549[40] = v55;
      *&v549[48] = v57;
      *&v549[56] = v56;
      *&v549[64] = v460;
      outlined destroy of AttributedString.CharacterView(v549);
      if (v66 == 123 && v68 == 0xE100000000000000)
      {

        v69 = v463;
        goto LABEL_15;
      }

      v70 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v69 = v463;
      if ((v70 & 1) == 0)
      {
        break;
      }

LABEL_15:
      *&v592 = v69;
      *(&v592 + 1) = v459;
      v593 = v458;
      v594 = v457;
      v595 = v466;
      v596 = v469;
      v597 = v462;
      v71 = v473;
      v72 = *(v473 + 40);
      v604 = *(v473 + 24);
      v605 = v72;
      v606 = *(v473 + 56);
      v73 = BigString.startIndex.getter();
      v75 = v74;
      v77 = v76;
      v79 = v78;
      v80 = BigString.endIndex.getter();
      *v537 = v473;
      *&v537[8] = v73;
      *&v537[16] = v75;
      *&v537[24] = v77;
      *&v537[32] = v79;
      *&v537[40] = v80;
      *&v537[48] = v81;
      *&v537[56] = v82;
      *&v537[64] = v83;
      v84 = *(v473 + 16);
      *&v522 = v73;
      *(&v522 + 1) = v75;
      *&v523 = v77;
      *(&v523 + 1) = v79;
      *&v524 = v84;
      v502 = v592;
      v503 = v593;
      *&v504 = v594;

      v85 = AttributedString.CharacterView._distance(from:to:)(&v522, &v502);
      *&v512[32] = *&v537[32];
      *&v512[48] = *&v537[48];
      *&v512[64] = *&v537[64];
      *v512 = *v537;
      *&v512[16] = *&v537[16];
      outlined destroy of AttributedString.CharacterView(v512);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v86 = *(v473 + 40);
        v601 = *(v473 + 24);
        v602 = v86;
        v603 = *(v473 + 56);
        v87 = *(v473 + 72);
        v88 = *(v473 + 80);
        v89 = *(v473 + 88);
        v90 = *(v473 + 96);
        type metadata accessor for AttributedString.Guts();
        v91 = swift_allocObject();
        v92 = BigString.isEmpty.getter() & 1;
        outlined init with copy of BigString(&v601, v537);
        v93 = swift_unknownObjectRetain();
        specialized Rope._endPath.getter(v93);
        if (v87)
        {
          v94 = v89 == 0;
        }

        else
        {
          v94 = 1;
        }

        v95 = v94;
        if (v95 != v92)
        {
          goto LABEL_179;
        }

        if (one-time initialization token for _nextVersion != -1)
        {
          swift_once();
        }

        *(v91 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
        v96 = v602;
        *(v91 + 24) = v601;
        *(v91 + 40) = v96;
        *(v91 + 56) = v603;
        *(v91 + 72) = v87;
        *(v91 + 80) = v88;
        *(v91 + 88) = v89;
        *(v91 + 96) = v90;
        *(v91 + 104) = MEMORY[0x1E69E7CC0];

        v71 = v91;
      }

      if (one-time initialization token for _nextVersion != -1)
      {
        swift_once();
      }

      *(v71 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
      *v537 = v71;
      v97 = *(v71 + 24);
      v98 = *(v71 + 40);
      v600 = *(v71 + 56);
      v599 = v98;
      v598 = v97;
      v99 = BigString.startIndex.getter();
      v101 = v100;
      v103 = v102;
      v105 = v104;
      v106 = BigString.endIndex.getter();
      *&v537[8] = v99;
      *&v537[16] = v101;
      *&v537[24] = v103;
      *&v537[32] = v105;
      *&v537[40] = v106;
      *&v537[48] = v107;
      *&v537[56] = v108;
      *&v537[64] = v109;
      v110 = one-time initialization token for currentIdentity;

      if (v110 != -1)
      {
        swift_once();
      }

      v111 = static AttributedString.currentIdentity;
      os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
      v112 = *(v111 + 16);
      v113 = v112 + 1;
      if (__OFADD__(v112, 1))
      {
        goto LABEL_173;
      }

      *(v111 + 16) = v113;
      os_unfair_lock_unlock((v111 + 24));
      *&v537[72] = v113;
      BigString.init()();
      *&v522 = 0;
      MEMORY[0x1865D26B0](&v522, 8);
      v114 = v522;
      type metadata accessor for AttributedString.Guts();
      v115 = swift_allocObject();
      if ((BigString.isEmpty.getter() & 1) == 0)
      {
        goto LABEL_174;
      }

      *(v115 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
      v116 = v557;
      *(v115 + 24) = v556;
      *(v115 + 40) = v116;
      *(v115 + 56) = v558;
      *(v115 + 72) = 0;
      *(v115 + 80) = 0;
      *(v115 + 88) = 0;
      *(v115 + 96) = v114;
      *(v115 + 104) = MEMORY[0x1E69E7CC0];

      specialized RangeReplaceableCollection.replaceSubrange<A, B>(_:with:)(&v592, 123, 0xE100000000000000);
      if (*&v537[72] != v113)
      {
        goto LABEL_195;
      }

      v6 = *v537;

      v117 = *(v6 + 40);
      v591[3] = *(v6 + 24);
      v591[4] = v117;
      v591[5] = *(v6 + 56);
      v118 = BigString.startIndex.getter();
      v120 = v119;
      v122 = v121;
      v124 = v123;
      v125 = BigString.endIndex.getter();
      *&v522 = v6;
      *(&v522 + 1) = v118;
      *&v523 = v120;
      *(&v523 + 1) = v122;
      *&v524 = v124;
      *(&v524 + 1) = v125;
      *&v525 = v126;
      *(&v525 + 1) = v127;
      v526 = v128;
      if (__OFADD__(v85, 1))
      {
        goto LABEL_175;
      }

      v129 = v118 >> 10;
      v130 = v125 >> 10;
      if (v125 >> 10 < v118 >> 10)
      {
        goto LABEL_176;
      }

      v131 = *(v6 + 40);
      v591[0] = *(v6 + 24);
      v591[1] = v131;
      v591[2] = *(v6 + 56);

      outlined init with copy of BigString(v591, &v502);
      v9 = BigString.index(_:offsetBy:)();
      v11 = v132;
      v13 = v133;
      v15 = v134;
      outlined destroy of BigString(v591);
      v16 = *(v6 + 16);
      outlined destroy of AttributedString.CharacterView(&v522);
      if (v9 >> 10 < v129 || v130 < v9 >> 10)
      {
        goto LABEL_177;
      }
    }

    v641[0] = v466;
    v641[1] = v469;
    v642 = v462;
    specialized AttributedString.subscript.getter(v641, v473, v543);
    *&v548[64] = *&v543[64];
    *&v548[48] = *&v543[48];
    *&v548[32] = *&v543[32];
    *v548 = *v543;
    *&v548[16] = *&v543[16];
    v135 = *v543;
    v639[3] = *&v543[8];
    v639[4] = *&v543[24];
    v639[5] = *&v543[40];
    v639[6] = *&v543[56];
    v136 = *(*v543 + 24);
    v137 = *(*v543 + 40);
    v640[2] = *(*v543 + 56);
    v640[1] = v137;
    v640[0] = v136;
    outlined init with copy of AttributedSubstring(v548, v512);
    outlined init with copy of BigString(v640, v512);
    BigString.subscript.getter();
    outlined destroy of BigString(v640);
    outlined destroy of BigSubstring(v559);
    *&v537[16] = v561;
    *v537 = v560;
    *&v537[32] = v562;
    *&v537[48] = v563;
    *&v512[8] = v560;
    *&v512[24] = v561;
    *&v512[40] = v562;
    *&v512[56] = v563;
    *v512 = v135;
    *&v512[72] = 0;
    v138 = Substring.init<A>(_:)();
    v140 = v139;
    *v512 = 125;
    *&v512[8] = 0xE100000000000000;
    v141 = Substring.init<A>(_:)();
    if ((v138 ^ v140) < 0x4000 || (v141 ^ v142) < 0x4000)
    {

LABEL_151:

      outlined destroy of AttributedSubstring(v548);
      goto LABEL_152;
    }

    specialized _StringCompareOptionsIterable._range<A>(of:toHalfWidth:diacriticsInsensitive:caseFold:anchored:backwards:)(v141, v142, v143, v144, 0, 0, 0, 0, 0, v138, v140);
    v146 = v145;

    if (v146)
    {
      goto LABEL_151;
    }

    v147 = Substring.UTF8View.distance(from:to:)();

    v148 = Substring.UTF8View.distance(from:to:)();

    v149 = *&v548[8] >> 11;
    if (__OFADD__(*&v548[8] >> 11, v147))
    {
      goto LABEL_180;
    }

    v150 = *(v135 + 24);
    v151 = *(v135 + 40);
    v639[2] = *(v135 + 56);
    v639[1] = v151;
    v639[0] = v150;
    v152 = *(v135 + 40);
    v638[3] = *(v135 + 24);
    v638[4] = v152;
    v638[5] = *(v135 + 56);
    BigString.startIndex.getter();
    outlined init with copy of AttributedSubstring(v548, v512);
    outlined init with copy of BigString(v639, v512);
    v153 = BigString.UTF8View.index(_:offsetBy:)();
    v155 = v154;
    v157 = v156;
    v159 = v158;
    outlined destroy of BigString(v639);
    outlined destroy of AttributedSubstring(v548);
    if (__OFADD__(v149, v148))
    {
      goto LABEL_181;
    }

    v464 = v159;
    v461 = *(v135 + 16);
    v160 = *(v135 + 24);
    v161 = *(v135 + 40);
    v638[2] = *(v135 + 56);
    v638[1] = v161;
    v638[0] = v160;
    v162 = *(v135 + 40);
    v637[6] = *(v135 + 24);
    v637[7] = v162;
    v637[8] = *(v135 + 56);
    BigString.startIndex.getter();
    outlined init with copy of AttributedSubstring(v548, v512);
    outlined init with copy of BigString(v638, v512);
    v163 = BigString.UTF8View.index(_:offsetBy:)();
    v165 = v164;
    v167 = v166;
    v169 = v168;
    outlined destroy of BigString(v638);
    outlined destroy of AttributedSubstring(v548);
    v170 = *(v135 + 16);
    outlined destroy of AttributedSubstring(v548);
    if (v153 >> 10 > v163 >> 10)
    {
      goto LABEL_182;
    }

    if (v153 >> 10 < v455)
    {
      goto LABEL_183;
    }

    v445 = v170;
    v446 = v169;
    v447 = v167;
    v448 = v165;
    v456 = v163;
    *(&v526 + 1) = 0;
    *&v522 = v473;
    v171 = *(v473 + 40);
    v637[3] = *(v473 + 24);
    v637[4] = v171;
    v637[5] = *(v473 + 56);
    v172 = BigString.startIndex.getter();
    v174 = v173;
    v176 = v175;
    v178 = v177;
    v179 = BigString.endIndex.getter();
    *(&v522 + 1) = v172;
    *&v523 = v174;
    *(&v523 + 1) = v176;
    *&v524 = v178;
    *(&v524 + 1) = v179;
    *&v525 = v180;
    *(&v525 + 1) = v181;
    *&v526 = v182;
    v502 = v466;
    v503 = v469;
    *&v504 = v462;
    *(&v504 + 1) = v153;
    *&v505 = v155;
    *(&v505 + 1) = v157;
    *&v506 = v464;
    *(&v506 + 1) = v461;

    AttributedString.CharacterView.subscript.getter(&v502, v512);
    v534 = v524;
    v535 = v525;
    v536 = v526;
    v533 = v523;
    v532 = v522;
    outlined destroy of AttributedString.CharacterView(&v532);
    v539 = v514;
    v540 = v515;
    v541 = v516;
    v542 = v517;
    *&v537[32] = *&v512[32];
    *&v537[48] = *&v512[48];
    *&v537[64] = *&v512[64];
    v538 = v513;
    *v537 = *v512;
    *&v537[16] = *&v512[16];
    v183 = *(&v515 + 1);
    v184 = *(&v513 + 1);
    v185 = v513;
    v186 = *v512;
    v468 = *&v512[16];
    v471 = *&v512[8];
    v187 = *&v512[32];
    v528 = v514;
    v529 = v515;
    v530 = v516;
    v531 = v517;
    v524 = *&v512[32];
    v525 = *&v512[48];
    v526 = *&v512[64];
    v527 = v513;
    v188 = *&v512[40] >> 10;
    v522 = *v512;
    v523 = *&v512[16];
    outlined init with copy of FloatingPointRoundingRule?(v537, v512, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd);
    v189 = v186 >> 10;
    if (v186 >> 10 != v188)
    {
      v465 = v186 >> 10;
      v467 = v184 >> 10;
      v190 = v183 >> 10;
      v191 = v186 >> 10;
      while (v191 >= v189 && v191 < v188)
      {
        if (v191 < v467)
        {
          goto LABEL_158;
        }

        if (v191 >= v190)
        {
          goto LABEL_159;
        }

        v192 = *(v185 + 24);
        v193 = *(v185 + 40);
        v637[2] = *(v185 + 56);
        v637[1] = v193;
        v637[0] = v192;
        v194 = *(v185 + 24);
        v195 = *(v185 + 40);
        v652 = *(v185 + 56);
        v651[0] = v194;
        v651[1] = v195;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v651, v512);
        BigString.subscript.getter();
        outlined destroy of BigString(v637);
        v196 = *(v185 + 24);
        v197 = *(v185 + 40);
        v636[2] = *(v185 + 56);
        v636[1] = v197;
        v636[0] = v196;
        v198 = *(v185 + 24);
        v654 = *(v185 + 56);
        v199 = *(v185 + 40);
        v653[0] = v198;
        v653[1] = v199;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v653, v512);
        v186 = BigString.index(after:)();
        v471 = v200;
        v202 = v201;
        v204 = v203;
        outlined destroy of BigString(v636);
        v191 = v186 >> 10;
        if (v190 < v186 >> 10)
        {
          goto LABEL_160;
        }

        *&v468 = v202;
        *(&v468 + 1) = v204;
        v187 = *(v185 + 16);
        v205 = Character.isNumber.getter();

        if ((v205 & 1) == 0)
        {
          outlined destroy of TermOfAddress?(v537, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd);
          v514 = v528;
          v515 = v529;
          v516 = v530;
          v517 = v531;
          *&v512[32] = v524;
          *&v512[48] = v525;
          *&v512[64] = v526;
          v513 = v527;
          *v512 = v522;
          *&v512[16] = v523;
          v518 = v186;
          v519 = v471;
          v520 = v468;
          v521 = v187;
          v309 = &_ss16IndexingIteratorVys5SliceVy10Foundation16AttributedStringV13CharacterViewVGGMd;
          v310 = v512;
          goto LABEL_108;
        }

        v189 = v465;
        if (v191 == v188)
        {
          goto LABEL_54;
        }
      }

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
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      __break(1u);
LABEL_175:
      __break(1u);
LABEL_176:
      __break(1u);
LABEL_177:
      __break(1u);
LABEL_178:
      __break(1u);
LABEL_179:
      __break(1u);
LABEL_180:
      __break(1u);
LABEL_181:
      __break(1u);
LABEL_182:
      __break(1u);
LABEL_183:
      __break(1u);
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
LABEL_186:
      __break(1u);
LABEL_187:
      __break(1u);
LABEL_188:
      __break(1u);
LABEL_189:
      __break(1u);
LABEL_190:
      __break(1u);
LABEL_191:
      __break(1u);
LABEL_192:
      __break(1u);
      goto LABEL_193;
    }

LABEL_54:
    v514 = v528;
    v515 = v529;
    v516 = v530;
    v517 = v531;
    *&v512[32] = v524;
    *&v512[48] = v525;
    *&v512[64] = v526;
    v513 = v527;
    *v512 = v522;
    *&v512[16] = v523;
    v518 = v186;
    v519 = v471;
    v520 = v468;
    v521 = v187;
    outlined destroy of TermOfAddress?(v512, &_ss16IndexingIteratorVys5SliceVy10Foundation16AttributedStringV13CharacterViewVGGMd);
    v508 = v539;
    v509 = v540;
    v510 = v541;
    v511 = v542;
    v504 = *&v537[32];
    v505 = *&v537[48];
    v506 = *&v537[64];
    v507 = v538;
    v502 = *v537;
    v503 = *&v537[16];
    v206 = Slice<>._characters.getter(v564);
    v207 = MEMORY[0x1865CAF70](v564, v206);
    v208 = _ss17FixedWidthIntegerPsEyxSgSScfCs5Int64V_Tt1g5(v207);
    if (v209)
    {
      v309 = &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd;
      v310 = v537;
LABEL_108:
      outlined destroy of TermOfAddress?(v310, v309);
      goto LABEL_152;
    }

    v210 = v208;
    v211 = v208 - 1;
    v212 = v473;
    if (v208 < 1)
    {
      goto LABEL_106;
    }

    if (v453 >> 62)
    {
      v308 = __CocoaSet.count.getter();
      if (v308 < 0)
      {
        goto LABEL_184;
      }

      v214 = v308;
      v213 = v452;
    }

    else
    {
      v213 = v452;
      v214 = *(v452 + 16);
    }

    v215 = v463;
    if (v210 > v214)
    {
      break;
    }

    if (v451)
    {
      v216 = MEMORY[0x1865CC0E0](v211, v453);
    }

    else
    {
      if (v210 > *(v213 + 16))
      {
        goto LABEL_190;
      }

      v216 = *(v449 + 8 * v211);
    }

    v217 = v216;
    v218 = [v216 index];

    v215 = v463;
    if (v218 != v210)
    {
      goto LABEL_67;
    }

    v219 = v450;
    if (v451)
    {
      v220 = MEMORY[0x1865CC0E0](v211, v453);
    }

    else
    {
      v220 = *(v449 + 8 * v211);
    }

    v223 = v220;
LABEL_78:
    v224 = v223;
    v225 = [v224 replacementRangeInResult];
    v227 = v226;

    _sSn10FoundationAA16AttributedStringV5IndexVRszrlE_2inSnyAEGSgSo8_NSRangeV_qd__tcAA0bC8ProtocolRd__lufCAC_Tt2B5(v225, v227, v219, &v497);
    v228 = *(&v498 + 1);
    if (*(&v498 + 1) == 2)
    {

      outlined destroy of TermOfAddress?(v537, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd);

      goto LABEL_153;
    }

    v229 = *(v219 + 40);
    v633 = *(v219 + 24);
    v634 = v229;
    v635 = *(v219 + 56);
    v230 = BigString.startIndex.getter();
    v232 = v231;
    v234 = v233;
    v236 = v235;
    v237 = BigString.endIndex.getter();
    *&v487 = v219;
    *(&v487 + 1) = v230;
    *&v488 = v232;
    *(&v488 + 1) = v234;
    *&v489 = v236;
    *(&v489 + 1) = v237;
    *&v490 = v238;
    *(&v490 + 1) = v239;
    v491 = v240;
    v494 = v489;
    v495 = v490;
    v496 = v240;
    v492 = v487;
    v493 = v488;
    v482 = v497;
    *&v483 = v498;
    *(&v483 + 1) = v228;
    v484 = v499;
    v485 = v500;
    v486 = v501;

    AttributedString.CharacterView.subscript.getter(&v482, &v502);
    outlined destroy of AttributedString.CharacterView(&v487);
    v620 = v508;
    v621 = v509;
    v622 = v510;
    v623 = v511;
    *v618 = v504;
    *&v618[16] = v505;
    *&v618[32] = v506;
    v619 = v507;
    v616 = v502;
    v617 = v503;
    *&v608 = v215;
    *(&v608 + 1) = v459;
    v609 = v458;
    v610 = v457;
    v611 = v456;
    v612 = v448;
    v613 = v447;
    v614 = v446;
    v615 = v445;
    v241 = *(v473 + 40);
    v630 = *(v473 + 24);
    v631 = v241;
    v632 = *(v473 + 56);
    v242 = BigString.startIndex.getter();
    v244 = v243;
    v246 = v245;
    v248 = v247;
    v249 = BigString.endIndex.getter();
    *&v502 = v473;
    *(&v502 + 1) = v242;
    *&v503 = v244;
    *(&v503 + 1) = v246;
    *&v504 = v248;
    *(&v504 + 1) = v249;
    *&v505 = v250;
    *(&v505 + 1) = v251;
    v506 = v252;
    v253 = *(v473 + 16);
    *&v482 = v242;
    *(&v482 + 1) = v244;
    *&v483 = v246;
    *(&v483 + 1) = v248;
    *&v484 = v253;
    v475 = v608;
    v476 = v609;
    *&v477 = v610;

    v254 = AttributedString.CharacterView._distance(from:to:)(&v482, &v475);
    v494 = v504;
    v495 = v505;
    v496 = v506;
    v492 = v502;
    v493 = v503;
    outlined destroy of AttributedString.CharacterView(&v492);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v255 = *(v473 + 40);
      v627 = *(v473 + 24);
      v628 = v255;
      v629 = *(v473 + 56);
      v256 = *(v473 + 72);
      v257 = *(v473 + 80);
      v258 = *(v473 + 88);
      v259 = *(v473 + 96);
      type metadata accessor for AttributedString.Guts();
      v260 = swift_allocObject();
      v261 = BigString.isEmpty.getter() & 1;
      outlined init with copy of BigString(&v627, &v502);
      v262 = swift_unknownObjectRetain();
      specialized Rope._endPath.getter(v262);
      if (v256)
      {
        v263 = v258 == 0;
      }

      else
      {
        v263 = 1;
      }

      v264 = v263;
      if (v264 != v261)
      {
        goto LABEL_191;
      }

      if (one-time initialization token for _nextVersion != -1)
      {
        swift_once();
      }

      *(v260 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
      v265 = v628;
      *(v260 + 24) = v627;
      *(v260 + 40) = v265;
      *(v260 + 56) = v629;
      *(v260 + 72) = v256;
      *(v260 + 80) = v257;
      *(v260 + 88) = v258;
      *(v260 + 96) = v259;
      *(v260 + 104) = MEMORY[0x1E69E7CC0];

      v212 = v260;
    }

    if (one-time initialization token for _nextVersion != -1)
    {
      swift_once();
    }

    *(v212 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    *&v482 = v212;
    v266 = *(v212 + 24);
    v267 = *(v212 + 40);
    v626 = *(v212 + 56);
    v625 = v267;
    v624 = v266;
    v268 = BigString.startIndex.getter();
    v270 = v269;
    v272 = v271;
    v274 = v273;
    v275 = BigString.endIndex.getter();
    *(&v482 + 1) = v268;
    *&v483 = v270;
    *(&v483 + 1) = v272;
    *&v484 = v274;
    *(&v484 + 1) = v275;
    *&v485 = v276;
    *(&v485 + 1) = v277;
    *&v486 = v278;
    v279 = one-time initialization token for currentIdentity;

    if (v279 != -1)
    {
      swift_once();
    }

    v280 = static AttributedString.currentIdentity;
    os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
    v281 = *(v280 + 16);
    v282 = v281 + 1;
    if (__OFADD__(v281, 1))
    {
      goto LABEL_185;
    }

    *(v280 + 16) = v282;
    os_unfair_lock_unlock((v280 + 24));
    *(&v486 + 1) = v282;
    BigString.init()();
    *&v502 = 0;
    MEMORY[0x1865D26B0](&v502, 8);
    v283 = v502;
    type metadata accessor for AttributedString.Guts();
    v284 = swift_allocObject();
    if ((BigString.isEmpty.getter() & 1) == 0)
    {
      goto LABEL_186;
    }

    v474 = v224;
    *(v284 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
    v285 = v566;
    *(v284 + 24) = v565;
    *(v284 + 40) = v285;
    *(v284 + 56) = v567;
    *(v284 + 72) = 0;
    *(v284 + 80) = 0;
    *(v284 + 88) = 0;
    *(v284 + 96) = v283;
    *(v284 + 104) = MEMORY[0x1E69E7CC0];

    specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)(&v608, &v616);
    if (*(&v486 + 1) != v282)
    {
      goto LABEL_195;
    }

    v6 = v482;

    v286 = *(v6 + 40);
    v607[3] = *(v6 + 24);
    v607[4] = v286;
    v607[5] = *(v6 + 56);
    v287 = BigString.startIndex.getter();
    v289 = v288;
    v291 = v290;
    v293 = v292;
    v294 = BigString.endIndex.getter();
    v588 = v616;
    v589 = v617;
    v585 = *&v618[8];
    v586 = *&v618[24];
    v508 = v620;
    v509 = v621;
    v510 = v622;
    v511 = v623;
    v504 = *v618;
    v505 = *&v618[16];
    v506 = *&v618[32];
    v507 = v619;
    *&v475 = v6;
    *(&v475 + 1) = v287;
    *&v476 = v289;
    *(&v476 + 1) = v291;
    *&v477 = v293;
    *(&v477 + 1) = v294;
    v478 = v295;
    v479 = v296;
    v480 = v297;
    v481 = 0;
    *&v590 = *v618;
    *&v587 = *&v618[40];
    v502 = v616;
    v503 = v617;

    if (__OFADD__(v254, AttributedString.CharacterView._distance(from:to:)(&v588, &v585)))
    {
      goto LABEL_187;
    }

    v298 = *(&v475 + 1) >> 10;
    if (v287 >> 10 < *(&v475 + 1) >> 10)
    {
      goto LABEL_188;
    }

    v299 = *(&v477 + 1) >> 10;
    if (*(&v477 + 1) >> 10 < v287 >> 10)
    {
      goto LABEL_188;
    }

    v300 = v475;
    v301 = *(v475 + 24);
    v302 = *(v475 + 40);
    v607[2] = *(v475 + 56);
    v607[1] = v302;
    v607[0] = v301;
    v303 = *(v475 + 24);
    v656 = *(v475 + 56);
    v304 = *(v475 + 40);
    v655[0] = v303;
    v655[1] = v304;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v655, &v502);
    v9 = BigString.index(_:offsetBy:)();
    v11 = v305;
    v13 = v306;
    v15 = v307;
    outlined destroy of BigString(v607);
    v16 = *(v300 + 16);

    outlined destroy of TermOfAddress?(&v616, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd);
    outlined destroy of TermOfAddress?(v537, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd);
    outlined destroy of AttributedString.CharacterView(&v475);
    if (v9 >> 10 < v298 || v299 < v9 >> 10)
    {
      goto LABEL_189;
    }
  }

  if (v214)
  {
LABEL_67:
    for (i = 0; v214 != i; ++i)
    {
      if (v451)
      {
        v222 = MEMORY[0x1865CC0E0](i, v453);
      }

      else
      {
        if (i >= *(v213 + 16))
        {
          __break(1u);
          goto LABEL_157;
        }

        v222 = *(v453 + 8 * i + 32);
      }

      v223 = v222;
      if ([v222 index] == v210)
      {
        v219 = v450;
        goto LABEL_78;
      }
    }
  }

LABEL_106:
  outlined destroy of TermOfAddress?(v537, &_ss5SliceVy10Foundation16AttributedStringV13CharacterViewVGMd);
LABEL_152:

LABEL_153:
  *v454 = 0;
}

id thunk for @escaping @callee_guaranteed (@in_guaranteed Any) -> (@out Any?)(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v14[3] = swift_getObjectType();
  v14[0] = a2;
  swift_unknownObjectRetain();
  v3(v12, v14);
  v4 = v13;
  if (v13)
  {
    v5 = __swift_project_boxed_opaque_existential_1(v12, v13);
    v6 = *(v4 - 8);
    v7 = MEMORY[0x1EEE9AC00](v5);
    v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9, v7);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    v10 = 0;
  }

  __swift_destroy_boxed_opaque_existential_1(v14);

  return v10;
}

uint64_t _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV016ReplacementIndexD0O_Tt0g5Tf4x_n(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000012, 0x800000018147CCD0);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of AttributedString._AttributeValue(*(a1 + 56) + 72 * v2, v7);
  outlined init with copy of Hashable & Sendable(v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
  result = swift_dynamicCast();
  if (result)
  {
    outlined destroy of AttributedString._AttributeValue(v7);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV018LanguageIdentifierD0O_Tt0g5Tf4x_n(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(0x6175676E614C534ELL, 0xEA00000000006567);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of AttributedString._AttributeValue(*(a1 + 56) + 72 * v2, v7);
  outlined init with copy of Hashable & Sendable(v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
  result = swift_dynamicCast();
  if (result)
  {
    outlined destroy of AttributedString._AttributeValue(v7);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV024InlinePresentationIntentD0O_Tt0g5Tf4x_n(uint64_t a1)
{
  if (one-time initialization token for name == -1)
  {
    if (!*(a1 + 16))
    {
      return 0;
    }
  }

  else
  {
    swift_once();
    if (!*(a1 + 16))
    {
      return 0;
    }
  }

  v2 = specialized __RawDictionaryStorage.find<A>(_:)(static AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute.name, unk_1EA7B26A0);
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of AttributedString._AttributeValue(*(a1 + 56) + 72 * v2, v7);
  outlined init with copy of Hashable & Sendable(v7, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSH_s8SendablepMd);
  type metadata accessor for NSInlinePresentationIntent(0);
  result = swift_dynamicCast();
  if (result)
  {
    outlined destroy of AttributedString._AttributeValue(v7);
    return v5;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t *specialized RangeReplaceableCollection.replaceSubrange<A, B>(_:with:)(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result[5] >> 10;
  v5 = v3[5] >> 10;
  if (v4 >= v3[1] >> 10 && v5 >= v4)
  {
    v7 = result;
    v9 = *v3;
    v10 = *(*v3 + 24);
    v11 = *(*v3 + 56);
    v32[1] = *(*v3 + 40);
    v32[2] = v11;
    v32[0] = v10;
    v12 = *(v9 + 24);
    v34 = *(v9 + 56);
    v13 = *(v9 + 40);
    v33[0] = v12;
    v33[1] = v13;
    outlined init with copy of Rope<BigString._Chunk>._Node?(v33, v25);
    v14 = BigString.index(after:)();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    result = outlined destroy of BigString(v32);
    if (v5 >= v14 >> 10)
    {
      v21 = *(v9 + 16);
      v22 = v7[4];
      v23 = *(v7 + 1);
      v25[0] = *v7;
      v25[1] = v23;
      v26 = v22;
      v27 = v14;
      v28 = v16;
      v29 = v18;
      v30 = v20;
      v31 = v21;
      return specialized AttributedString.CharacterView.replaceSubrange<A>(_:with:)(v25, a2, a3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized AttributedString.enumerateFormattableRanges(in:editor:)(__int128 *a1, int64_t *a2, void (*a3)(uint64_t, unint64_t, uint64_t, char *), uint64_t a4, uint64_t *a5)
{
  v294 = a4;
  v295 = a5;
  v293 = a3;
  v385 = *MEMORY[0x1E69E9840];
  v300 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionV8IteratorVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AE15AttributeScopesO0dH0V021LocalizedNumberFormatJ0OG_GMd);
  MEMORY[0x1EEE9AC00](v300);
  v298 = &v278 - v7;
  v305 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021LocalizedNumberFormatG0OGMd);
  MEMORY[0x1EEE9AC00](v305);
  v302 = &v278 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v310 = &v278 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v322 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v299 = &v278 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v303 = &v278 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v278 - v16;
  v324 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd) - 8;
  MEMORY[0x1EEE9AC00](v324);
  v315 = &v278 - v18;
  v323 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v311 = *(v323 - 8);
  MEMORY[0x1EEE9AC00](v323);
  v20 = &v278 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v278 - v22;
  v307 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v307);
  v309 = &v278 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = (&v278 - v26);
  MEMORY[0x1EEE9AC00](v28);
  v308 = &v278 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AC15AttributeScopesO0cG0V021LocalizedNumberFormatI0OGGMd);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v301 = &v278 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v296 = &v278 - v33;
  v34 = *a2;
  v370 = *(*a2 + 24);
  v371 = *(v34 + 40);
  v372 = *(v34 + 56);
  BigString.startIndex.getter();
  BigString.endIndex.getter();
  v35 = *a1;
  v364 = a1[1];
  v363 = v35;
  v36 = *(a1 + 40);
  v366 = *(a1 + 56);
  v365 = v36;
  v367 = *(v34 + 24);
  v368 = *(v34 + 40);
  v369 = *(v34 + 56);
  swift_unknownObjectRetain();
  swift_retain_n();
  BigString.UnicodeScalarView.subscript.getter();
  swift_unknownObjectRelease();

  outlined destroy of BigSubstring.UnicodeScalarView(&v336);
  v332 = v337;
  v333 = v338;
  v334 = v339;
  v335 = v340;
  v380 = v337;
  v381 = v338;
  v382 = v339;
  v383 = v340;
  v379 = v34;
  v384 = 0;
  v326 = v337;
  v327 = v338;
  v328 = v339;
  v329 = v340;
  outlined init with copy of AttributedSubstring(&v379, v331);
  lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
  RangeSet.init(_:)();
  v306 = v27;
  v316 = v34;
  *v27 = v34;
  v37 = v315;
  v312 = v20;
  RangeSet.init()();
  v304 = v23;
  RangeSet.ranges.getter();
  v38 = v322;
  (*(v322 + 16))(v37, v17, v11);
  v39 = *(v324 + 44);
  v40 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
  dispatch thunk of Collection.startIndex.getter();
  v41 = *(v38 + 8);
  v321 = v17;
  v322 = v38 + 8;
  v320 = v41;
  v41(v17, v11);
  dispatch thunk of Collection.endIndex.getter();
  v42 = *(v39 + v37);
  v324 = v11;
  if (v42 != *v331)
  {
    v313 = v39;
    v314 = v40;
    do
    {
      v52 = dispatch thunk of Collection.subscript.read();
      v54 = v53[4];
      v318 = v53[5];
      v319 = v54;
      v317 = v53[7];
      v52(v331, 0);
      dispatch thunk of Collection.formIndex(after:)();
      v55 = v316;
      v360 = *(v316 + 24);
      v361 = *(v316 + 40);
      v362 = *(v316 + 56);
      swift_unknownObjectRetain();
      v56 = BigString.UnicodeScalarView.index(roundingDown:)();
      v58 = v57;
      v60 = v59;
      v62 = v61;
      swift_unknownObjectRelease();
      v357 = *(v55 + 24);
      v358 = *(v55 + 40);
      v359 = *(v55 + 56);
      swift_unknownObjectRetain();
      v63 = BigString.UnicodeScalarView.index(roundingDown:)();
      v65 = v64;
      v67 = v66;
      v69 = v68;
      swift_unknownObjectRelease();
      *v331 = v56;
      *&v331[8] = v58;
      v11 = v324;
      *&v331[16] = v60;
      *&v331[24] = v62;
      *&v331[32] = v63;
      *&v331[40] = v65;
      *&v331[48] = v67;
      *&v331[56] = v69;
      if ((v63 ^ v56) >= 0x400)
      {
        v70 = RangeSet._ranges.modify();
        RangeSet.Ranges._insert(contentsOf:)();
        v70(&v326, 0);
      }

      v37 = v315;
      dispatch thunk of Collection.endIndex.getter();
    }

    while (*(v313 + v37) != *v331);
  }

  outlined destroy of TermOfAddress?(v37, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  v43 = v306;
  v44 = v307;
  v45 = *(v307 + 24);
  (*(v311 + 16))(&v45[v306], v312, v323);
  v46 = v321;
  RangeSet.ranges.getter();
  v47 = RangeSet.Ranges.count.getter();
  v48 = v320;
  v320(v46, v11);
  v49 = *(v44 + 28);
  LODWORD(v313) = v47 > 1;
  *(v43 + v49) = v313;
  v50 = v303;
  RangeSet.ranges.getter();
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (v326 == *v331)
  {
    v48(v50, v11);
    v51 = v316;
  }

  else
  {
    v71 = dispatch thunk of Collection.subscript.read();
    v73 = *(v72 + 8);
    v297 = *v72;
    v74 = *(v72 + 24);
    v291 = *(v72 + 16);
    v292 = v73;
    v290 = v74;
    v71(v331, 0);
    v48(v50, v11);
    v303 = v45;
    v75 = v299;
    RangeSet.ranges.getter();
    v76 = dispatch thunk of Collection.isEmpty.getter();
    v51 = v316;
    if ((v76 & 1) == 0)
    {
      v131 = v75;
      dispatch thunk of Collection.endIndex.getter();
      lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
      dispatch thunk of BidirectionalCollection.index(before:)();
      v132 = dispatch thunk of Collection.subscript.read();
      v112 = v133[4];
      v289 = v133[5];
      v134 = v133[6];
      v135 = v133[7];
      v132(v331, 0);
      v48(v131, v11);
      AttributedString.Guts.findRun(at:)(v297, v290, v331);
      v318 = *v331;
      v319 = *&v331[8];
      v284 = *&v331[24];
      v285 = *&v331[16];
      v299 = *&v331[40];
      v288 = *&v331[48];
      v314 = *&v331[56];
      v317 = *&v331[64];
      v136 = *(v51 + 40);
      v354 = *(v51 + 24);
      v355 = v136;
      v356 = *(v51 + 56);
      v137 = BigString.endIndex.getter();
      v286 = v135;
      v287 = v134;
      if ((v137 ^ v112) > 0x3FF)
      {
        AttributedString.Guts.findRun(at:)(v112, v135, v331);
        v315 = *&v331[8];
        v316 = *v331;
        v104 = *&v331[16];
        v282 = *&v331[40];
        v283 = *&v331[24];
        v280 = *&v331[56];
        v281 = *&v331[48];
        v279 = *&v331[64];
        v168 = v321;
        v169 = v323;
        RangeSet.ranges.getter();
        v116 = RangeSet.Ranges.count.getter();
        v170 = *(v311 + 8);
        v170(v304, v169);
        v171 = v168;
        v43 = v306;
        v320(v171, v11);
        v170(v312, v169);
        v96 = v282;
        v103 = v283;
        v99 = v279;
        v98 = v280;
        v97 = v281;
        v105 = 0;
        v94 = v310;
        v102 = v313;
        v110 = v318;
        v117 = v319;
        v106 = v297;
        v108 = v291;
        v107 = v292;
        v113 = v289;
        v111 = v290;
        v82 = v299;
        v114 = v287;
        v83 = v288;
        v84 = v314;
        v109 = v317;
        v101 = v285;
        v115 = v286;
        v100 = v284;
      }

      else
      {
        v138 = v289;
        v139 = *(v51 + 72);
        if (v139)
        {
          v140 = *(v51 + 80);
        }

        else
        {
          v140 = 0;
        }

        v283 = v140;
        v141 = *(v51 + 96);
        v142 = swift_unknownObjectRetain();
        v316 = v141;
        v315 = specialized Rope._endPath.getter(v142);
        if (v139)
        {
          swift_unknownObjectRelease();
        }

        v143 = v321;
        v144 = v323;
        RangeSet.ranges.getter();
        v145 = v324;
        v116 = RangeSet.Ranges.count.getter();
        v146 = *(v311 + 8);
        v146(v304, v144);
        v48(v143, v145);
        v147 = v144;
        v43 = v306;
        v146(v312, v147);
        v105 = 0;
        v104 = 0;
        v96 = v112;
        v113 = v138;
        v97 = v138;
        v115 = v286;
        v114 = v287;
        v98 = v287;
        v99 = v286;
        v94 = v310;
        v102 = v313;
        v110 = v318;
        v117 = v319;
        v106 = v297;
        v108 = v291;
        v107 = v292;
        v111 = v290;
        v82 = v299;
        v83 = v288;
        v84 = v314;
        v109 = v317;
        v100 = v284;
        v101 = v285;
        v103 = v283;
      }

      goto LABEL_17;
    }

    v48(v75, v11);
  }

  v77 = *(v51 + 72);
  if (v77)
  {
    v319 = *(v77 + 18);
  }

  else
  {
    v319 = 0;
  }

  v318 = *(v51 + 96);
  v78 = *(v51 + 40);
  v354 = *(v51 + 24);
  v355 = v78;
  v356 = *(v51 + 56);
  v79 = BigString.startIndex.getter();
  v82 = v79;
  v83 = v80;
  v84 = v81;
  v85 = *(v51 + 72);
  v316 = *(v51 + 96);
  v317 = v86;
  if (v85)
  {
    v87 = *(v85 + 18);
    v314 = v81;
    v315 = v87;
    v88 = v80;
    v89 = v79;
    v90 = *(v311 + 8);
    swift_unknownObjectRetain();
    v91 = v323;
    v90(v304, v323);
    v90(v312, v91);
    v82 = v89;
    v83 = v88;
    v84 = v314;
    swift_unknownObjectRelease();
  }

  else
  {
    v92 = *(v311 + 8);
    v93 = v323;
    v92(v304, v323);
    v92(v312, v93);
    v315 = 0;
  }

  v94 = v310;
  v95 = *(v51 + 40);
  v353[3] = *(v51 + 24);
  v353[4] = v95;
  v353[5] = *(v51 + 56);
  v96 = BigString.startIndex.getter();
  v100 = 0;
  v101 = 0;
  v102 = 0;
  v103 = 0;
  v104 = 0;
  v105 = -1;
  v106 = v82;
  v107 = v83;
  v108 = v84;
  v109 = v317;
  v110 = v318;
  v111 = v317;
  v112 = v96;
  v113 = v97;
  v114 = v98;
  v115 = v99;
  v116 = -1;
  v117 = v319;
LABEL_17:
  *(v43 + 8) = v100;
  *(v43 + 16) = v110;
  *(v43 + 24) = v117;
  *(v43 + 32) = v101;
  *(v43 + 40) = v82;
  *(v43 + 48) = v83;
  *(v43 + 56) = v84;
  *(v43 + 64) = v109;
  *(v43 + 72) = v106;
  *(v43 + 80) = v107;
  *(v43 + 88) = v108;
  *(v43 + 96) = v111;
  *(v43 + 104) = v105;
  *(v43 + 112) = 0;
  *(v43 + 113) = v102;
  v118 = v315;
  v119 = v316;
  *(v43 + 120) = v103;
  *(v43 + 128) = v119;
  *(v43 + 136) = v118;
  *(v43 + 144) = v104;
  *(v43 + 152) = v96;
  *(v43 + 160) = v97;
  *(v43 + 168) = v98;
  *(v43 + 176) = v99;
  *(v43 + 184) = v112;
  *(v43 + 192) = v113;
  *(v43 + 200) = v114;
  *(v43 + 208) = v115;
  *(v43 + 216) = v116;
  *(v43 + 224) = 0;
  *(v43 + 225) = v102;
  v120 = v308;
  outlined init with take of AttributedString.Runs(v43, v308);
  outlined destroy of AttributedSubstring(&v379);
  v121 = v120;
  v122 = v309;
  outlined init with copy of AttributedString.Runs(v121, v309);
  outlined init with copy of AttributedString.Runs(v122, v94);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  isUniquelyReferenced_nonNull_native = swift_allocObject();
  *(isUniquelyReferenced_nonNull_native + 16) = xmmword_181218E20;
  if (one-time initialization token for name != -1)
  {
    goto LABEL_159;
  }

  while (2)
  {
    v124 = unk_1EA7B24E0;
    *(isUniquelyReferenced_nonNull_native + 32) = static AttributeScopes.FoundationAttributes.LocalizedNumberFormatAttribute.name;
    *(isUniquelyReferenced_nonNull_native + 40) = v124;
    v125 = v305;
    *(v94 + *(v305 + 36)) = isUniquelyReferenced_nonNull_native;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation16AttributedStringV22AttributeRunBoundariesOSgGMd);
    v126 = static _SetStorage.allocate(capacity:)();
    v127 = v126 + 56;

    v128 = qword_1EEED4748;
    v129 = unk_1EEED4750;
    Hasher.init(_seed:)();
    v130 = v298;
    if (v129 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      if (v129)
      {
        MEMORY[0x1865CD060](1);
        String.hash(into:)();
      }

      else
      {
        MEMORY[0x1865CD060](0);
      }
    }

    v148 = Hasher._finalize()();
    v149 = -1 << *(v126 + 32);
    v150 = v148 & ~v149;
    v151 = v150 >> 6;
    v152 = *(v127 + 8 * (v150 >> 6));
    v153 = 1 << v150;
    if (((1 << v150) & v152) == 0)
    {
      goto LABEL_51;
    }

    v154 = ~v149;
    while (1)
    {
      v155 = (*(v126 + 48) + 16 * v150);
      v156 = *v155;
      v157 = v155[1];
      if (v157 == 1)
      {
        if (v129 == 1)
        {
          outlined copy of AttributedString.AttributeRunBoundaries?(*v155, 1);
          v166 = v156;
          v167 = 1;
          goto LABEL_58;
        }

        goto LABEL_36;
      }

      if (v129 != 1)
      {
        break;
      }

LABEL_36:
      outlined copy of AttributedString.AttributeRunBoundaries?(*v155, v155[1]);
      outlined copy of AttributedString.AttributeRunBoundaries?(v128, v129);
      outlined consume of AttributedString.AttributeRunBoundaries?(v156, v157);
      v158 = v128;
      v159 = v129;
LABEL_37:
      outlined consume of AttributedString.AttributeRunBoundaries?(v158, v159);
LABEL_38:
      v150 = (v150 + 1) & v154;
      v151 = v150 >> 6;
      v152 = *(v127 + 8 * (v150 >> 6));
      v153 = 1 << v150;
      if ((v152 & (1 << v150)) == 0)
      {
        v130 = v298;
LABEL_51:
        *(v127 + 8 * v151) = v152 | v153;
        v162 = (*(v126 + 48) + 16 * v150);
        *v162 = v128;
        v162[1] = v129;
        v163 = *(v126 + 16);
        v164 = __OFADD__(v163, 1);
        v165 = v163 + 1;
        if (!v164)
        {
          *(v126 + 16) = v165;
          goto LABEL_59;
        }

        __break(1u);
LABEL_161:
        __break(1u);
LABEL_162:
        __break(1u);
      }
    }

    if (!v157)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(*v155, 0);
      if (!v129)
      {
        swift_bridgeObjectRelease_n();
        v166 = v156;
        v167 = 0;
        goto LABEL_58;
      }

      outlined copy of AttributedString.AttributeRunBoundaries?(v128, v129);

      v158 = v156;
      v159 = 0;
      goto LABEL_37;
    }

    if (!v129)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(*v155, v155[1]);
      outlined copy of AttributedString.AttributeRunBoundaries?(v128, 0);
      outlined copy of AttributedString.AttributeRunBoundaries?(v156, v157);

      v158 = v156;
      v159 = v157;
      goto LABEL_37;
    }

    v160 = v156 == v128 && v157 == v129;
    if (v160)
    {
      outlined copy of AttributedString.AttributeRunBoundaries?(v128, v129);
      outlined copy of AttributedString.AttributeRunBoundaries?(v128, v129);

      goto LABEL_56;
    }

    v161 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of AttributedString.AttributeRunBoundaries?(v156, v157);
    outlined copy of AttributedString.AttributeRunBoundaries?(v128, v129);
    outlined copy of AttributedString.AttributeRunBoundaries?(v156, v157);

    if ((v161 & 1) == 0)
    {
      outlined consume of AttributedString.AttributeRunBoundaries?(v156, v157);
      v125 = v305;
      goto LABEL_38;
    }

    outlined consume of AttributedString.AttributeRunBoundaries?(v128, v129);
    v128 = v156;
    v129 = v157;
    v125 = v305;
LABEL_56:
    v166 = v128;
    v167 = v129;
LABEL_58:
    outlined consume of AttributedString.AttributeRunBoundaries?(v166, v167);
    v130 = v298;
LABEL_59:
    v173 = v301;
    v172 = v302;
    outlined destroy of TermOfAddress?(&qword_1EEED4748, &_s10Foundation16AttributedStringV22AttributeRunBoundariesOSgMd);
    outlined destroy of AttributedString.Runs(v309);
    outlined destroy of AttributedString.Runs(v308);
    v174 = v310;
    *&v310[*(v125 + 40)] = v126;
    v175 = v296;
    outlined init with take of IntegerFormatStyle<Int>.Percent(v174, v296, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021LocalizedNumberFormatG0OGMd);
    outlined init with copy of FloatingPointRoundingRule?(v175, v173, &_ss18ReversedCollectionVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AC15AttributeScopesO0cG0V021LocalizedNumberFormatI0OGGMd);
    outlined init with take of IntegerFormatStyle<Int>.Percent(v173, v172, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021LocalizedNumberFormatG0OGMd);
    outlined init with copy of FloatingPointRoundingRule?(v172, v130, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021LocalizedNumberFormatG0OGMd);
    v176 = v172[26];
    if (v176 == 2)
    {
      goto LABEL_161;
    }

    v178 = v172[24];
    v177 = v172[25];
    v179 = v172[23];
    v180 = v130 + *(v300 + 36);
    v181 = *(*v172 + 16);
    *v180 = v179;
    *(v180 + 8) = v178;
    *(v180 + 16) = v177;
    *(v180 + 24) = v176;
    v319 = v176;
    *(v180 + 32) = v181;
    isUniquelyReferenced_nonNull_native = outlined destroy of TermOfAddress?(v172, &_s10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AA15AttributeScopesO0aE0V021LocalizedNumberFormatG0OGMd);
    if (*(v130 + 96) == 2)
    {
      goto LABEL_162;
    }

    v94 = v179 >> 10;
    v299 = (*(v130 + 72) >> 10);
    v292 = v180;
    if ((v179 >> 10) != v299)
    {
      v297 = MEMORY[0x1E69E7CC0];
LABEL_63:
      if (!*(*(v130 + *(v125 + 36)) + 16))
      {
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
        goto LABEL_158;
      }

      v308 = *(v130 + *(v125 + 36));
      v315 = v177;
      v317 = *(v130 + *(v125 + 40));
      v318 = v179;
      v182 = *(v130 + 184);
      v183 = v182 >> 10;
      if (*(v130 + 208) != 2 && v94 == v183)
      {
        v311 = *(v130 + 208);
        v191 = *(v130 + 192);
        v309 = *(v130 + 200);
        v310 = v191;
        v192 = v321;
        RangeSet.ranges.getter();
        v193 = v324;
        v189 = RangeSet.Ranges.count.getter();
        isUniquelyReferenced_nonNull_native = (v320)(v192, v193);
        goto LABEL_78;
      }

      v314 = v178;
      v185 = v321;
      RangeSet.ranges.getter();
      v186 = v324;
      v180 = v185;
      v187 = RangeSet.Ranges.count.getter();
      v320(v185, v186);
      if (v187 < 1)
      {
LABEL_135:
        __break(1u);
LABEL_136:
        __break(1u);
LABEL_137:
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
        break;
      }

      v188 = 0;
      while (2)
      {
        if (__OFADD__(v188, v187))
        {
          goto LABEL_138;
        }

        v189 = (v188 + v187) / 2;
        v190 = v321;
        RangeSet.ranges.getter();
        v180 = v190;
        RangeSet.Ranges.subscript.getter();
        isUniquelyReferenced_nonNull_native = (v320)(v190, v186);
        v182 = *v331;
        v183 = *v331 >> 10;
        if (v94 < *v331 >> 10)
        {
          v187 = (v188 + v187) / 2;
          goto LABEL_71;
        }

        if (v94 >= *&v331[32] >> 10)
        {
          v188 = v189 + 1;
LABEL_71:
          v186 = v324;
          if (v188 >= v187)
          {
            goto LABEL_135;
          }

          continue;
        }

        break;
      }

      v309 = *&v331[16];
      v310 = *&v331[8];
      v311 = *&v331[24];
      v178 = v314;
LABEL_78:
      v160 = v183 == v94;
      v94 = v318;
      v194 = v319;
      v195 = v315;
      if (v160)
      {
        if (v189 >= 1)
        {
          v196 = v321;
          RangeSet.ranges.getter();
          v197 = v324;
          RangeSet.Ranges.subscript.getter();
          v320(v196, v197);
          v182 = *v331;
          v309 = *&v331[16];
          v310 = *&v331[8];
          v311 = *&v331[24];
          v94 = *&v331[32];
          v178 = *&v331[40];
          v195 = *&v331[48];
          v194 = *&v331[56];
          goto LABEL_82;
        }

        goto LABEL_154;
      }

LABEL_82:
      if (*(v317 + 16) == 1 && (isUniquelyReferenced_nonNull_native = specialized Set.contains(_:)(0, 1, v317), (isUniquelyReferenced_nonNull_native & 1) == 0))
      {
        v222 = *v130;
        v223 = *(*v130 + 24);
        v224 = *(*v130 + 56);
        v353[1] = *(*v130 + 40);
        v353[2] = v224;
        v353[0] = v223;
        if (v94 >> 10 < v182 >> 10)
        {
          goto LABEL_157;
        }

        v352[0] = v182;
        v352[1] = v310;
        v352[2] = v309;
        v352[3] = v311;
        v352[4] = v94;
        v352[5] = v178;
        v352[6] = v195;
        v352[7] = v194;
        v225 = *(v222 + 24);
        v374 = *(v222 + 56);
        v313 = v222;
        v373[1] = *(v222 + 40);
        v373[0] = v225;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v373, v331);
        v226 = v353;
        v227 = v352;
      }

      else
      {
        v198 = *v130;
        v199 = (v198 + 24);
        v200 = *(v198 + 40);
        v349 = *(v198 + 24);
        v350 = v200;
        v351 = *(v198 + 56);
        swift_unknownObjectRetain();
        v318 = v94;
        v180 = BigString.UTF8View.index(before:)();
        v94 = v201;
        v302 = v203;
        v303 = v202;
        isUniquelyReferenced_nonNull_native = swift_unknownObjectRelease();
        v204 = v198;
        v130 = *(v198 + 72);
        v205 = v204[11];
        v312 = v205;
        if (!v130)
        {
          v205 = 0;
        }

        v316 = v180 >> 11;
        if (v205 < (v180 >> 11))
        {
          goto LABEL_152;
        }

        v300 = v94;
        v301 = v180;
        v319 = v194;
        v206 = v204[10];
        v313 = v204;
        v314 = v178;
        v306 = v204[12];
        v304 = v206;
        if (v130 && v316 < v312 && (v207 = (v130 + 16), LODWORD(v208) = *(v130 + 16), *(v130 + 16)))
        {
          v315 = v195;
          v94 = *(v130 + 18);
          isUniquelyReferenced_nonNull_native = swift_unknownObjectRetain_n();
          if (v94)
          {
            v209 = v316;
            v210 = v94;
            v211 = v130;
            do
            {
              v212 = *v207;
              if (*v207)
              {
                v213 = 0;
                v214 = (v211 + 40);
                while (1)
                {
                  v215 = *v214;
                  v214 += 3;
                  v216 = v209 - v215;
                  if (__OFSUB__(v209, v215))
                  {
                    goto LABEL_136;
                  }

                  if (__OFADD__(v216, 1))
                  {
                    goto LABEL_137;
                  }

                  if ((v216 + 1) < 1)
                  {
                    break;
                  }

                  ++v213;
                  v209 = v216;
                  if (v212 == v213)
                  {
                    goto LABEL_102;
                  }
                }

                v212 = v213;
              }

              else
              {
                v216 = v209;
LABEL_102:
                if (v216)
                {
                  goto LABEL_141;
                }

                v209 = 0;
              }

              v210 = (v212 << ((4 * v94 + 8) & 0x3C)) | ((-15 << ((4 * v94 + 8) & 0x3C)) - 1) & v210;
              v180 = *(v211 + 24 + 24 * v212);
              swift_unknownObjectRetain();
              isUniquelyReferenced_nonNull_native = swift_unknownObjectRelease();
              v207 = (v180 + 16);
              v94 = *(v180 + 18);
              v211 = v180;
            }

            while (*(v180 + 18));
            LODWORD(v208) = *v207;
            if (*v207)
            {
              goto LABEL_111;
            }

            v208 = 0;
            v218 = v306;
LABEL_116:
            if (!v209)
            {
              v94 = 0;
              goto LABEL_119;
            }

LABEL_158:
            __break(1u);
LABEL_159:
            v277 = isUniquelyReferenced_nonNull_native;
            swift_once();
            isUniquelyReferenced_nonNull_native = v277;
            continue;
          }

          v210 = 0;
          v209 = v316;
          v180 = v130;
LABEL_111:
          v218 = v306;
          v228 = 0;
          v229 = 24;
          v94 = v209;
          v208 = v208;
          while (1)
          {
            v230 = *(v180 + v229);
            v209 = v94 - v230;
            if (__OFSUB__(v94, v230))
            {
              goto LABEL_139;
            }

            if (__OFADD__(v209, 1))
            {
              goto LABEL_140;
            }

            if ((v209 + 1) < 1)
            {
              break;
            }

            ++v228;
            v229 += 24;
            v94 -= v230;
            if (v208 == v228)
            {
              goto LABEL_116;
            }
          }

          v208 = v228;
LABEL_119:
          swift_unknownObjectRelease();
          v219 = v210 & 0xFFFFFFFFFFFFF0FFLL | (v208 << 8);
          v220 = v315;
LABEL_105:
          v221 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v218, v219, v180, v130, v304);
          isUniquelyReferenced_nonNull_native = swift_unknownObjectRelease();
        }

        else
        {
          v217 = swift_unknownObjectRetain();
          v218 = v306;
          isUniquelyReferenced_nonNull_native = specialized Rope._endPath.getter(v217);
          v219 = isUniquelyReferenced_nonNull_native;
          v180 = 0;
          v94 = 0;
          v220 = v195;
          if (v130)
          {
            goto LABEL_105;
          }

          v221 = 0;
        }

        v130 = v298;
        if (__OFSUB__(v316, v94))
        {
          goto LABEL_153;
        }

        v348[0] = v218;
        v348[1] = v219;
        v348[2] = v180;
        v348[3] = v221;
        v348[4] = v316 - v94;
        isUniquelyReferenced_nonNull_native = AttributedString.Runs._firstOfMatchingRuns(with:comparing:)(v348, v308, v341);
        if (v341[4] >= (v182 >> 11))
        {
          v234 = *(v313 + 5);
          v347[3] = *(v313 + 3);
          v347[4] = v234;
          v347[5] = *(v313 + 7);
          swift_unknownObjectRetain();
          v94 = BigString.UTF8View.index(_:offsetBy:)();
          v236 = v235;
          v238 = v237;
          v240 = v239;
          isUniquelyReferenced_nonNull_native = swift_unknownObjectRelease();
          v241 = v199[1];
          v347[0] = *v199;
          v347[1] = v241;
          v347[2] = v199[2];
          if (v318 >> 10 < v94 >> 10)
          {
            goto LABEL_155;
          }

          v346[0] = v94;
          v346[1] = v236;
          v346[2] = v238;
          v346[3] = v240;
          v346[4] = v318;
          v346[5] = v314;
          v346[6] = v220;
          v346[7] = v319;
          v242 = *v199;
          v243 = v199[1];
          v376 = *(v199 + 4);
          v375[1] = v243;
          v375[0] = v242;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v375, v331);
          v226 = v347;
          v227 = v346;
        }

        else
        {
          v231 = v199[1];
          v345[0] = *v199;
          v345[1] = v231;
          v345[2] = v199[2];
          if (v318 >> 10 < v182 >> 10)
          {
            goto LABEL_156;
          }

          v344[0] = v182;
          v344[1] = v310;
          v344[2] = v309;
          v344[3] = v311;
          v344[4] = v318;
          v344[5] = v314;
          v344[6] = v220;
          v344[7] = v319;
          v232 = *v199;
          v233 = v199[1];
          v378 = *(v199 + 4);
          v377[1] = v233;
          v377[0] = v232;
          outlined init with copy of Rope<BigString._Chunk>._Node?(v377, v331);
          v226 = v345;
          v227 = v344;
        }
      }

      v179 = BigString._lastConstraintBreak(in:with:)(v227, v317);
      v178 = v244;
      v177 = v245;
      v247 = v246;
      outlined destroy of BigString(v226);
      v248 = v313[2];
      v343[0] = v179;
      v343[1] = v178;
      v343[2] = v177;
      v343[3] = v247;
      v343[4] = v248;
      isUniquelyReferenced_nonNull_native = specialized AttributedString.Runs.AttributesSlice1.subscript.getter(v331, &v331[8], v343);
      v328 = *&v331[40];
      v329 = *&v331[56];
      v330 = *&v331[72];
      v326 = *&v331[8];
      v327 = *&v331[24];
      v125 = v305;
      v319 = v247;
      if ((v331[0] & 1) == 0)
      {
        v249 = [objc_opt_self() automatic];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v297[2] + 1, 1, v297);
          v297 = isUniquelyReferenced_nonNull_native;
        }

        v251 = v297[2];
        v250 = v297[3];
        if (v251 >= v250 >> 1)
        {
          isUniquelyReferenced_nonNull_native = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v250 > 1), v251 + 1, 1, v297);
          v297 = isUniquelyReferenced_nonNull_native;
        }

        *&v331[48] = v329;
        *&v331[64] = v330;
        *&v331[16] = v327;
        *&v331[32] = v328;
        v252 = v326;
        *v331 = v326;
        v253 = v297;
        v297[2] = v251 + 1;
        v254 = &v253[11 * v251];
        *(v254 + 2) = v252;
        v255 = *&v331[16];
        v256 = *&v331[32];
        v257 = *&v331[64];
        *(v254 + 5) = *&v331[48];
        *(v254 + 6) = v257;
        *(v254 + 3) = v255;
        *(v254 + 4) = v256;
        v254[14] = v249;
      }

      v94 = v179 >> 10;
      if ((v179 >> 10) == v299)
      {
        goto LABEL_143;
      }

      goto LABEL_63;
    }

    break;
  }

  v248 = *(v180 + 32);
  v319 = *(v180 + 24);
  v178 = *(v180 + 8);
  v177 = *(v180 + 16);
  v179 = *v180;
  v297 = MEMORY[0x1E69E7CC0];
LABEL_143:
  v258 = v292;
  *v292 = v179;
  v258[1] = v178;
  v259 = v319;
  v258[2] = v177;
  v258[3] = v259;
  v258[4] = v248;
  outlined destroy of TermOfAddress?(v296, &_ss18ReversedCollectionVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AC15AttributeScopesO0cG0V021LocalizedNumberFormatI0OGGMd);
  outlined destroy of TermOfAddress?(v130, &_ss18ReversedCollectionV8IteratorVy10Foundation16AttributedStringV4RunsV16AttributesSlice1Vy__AE15AttributeScopesO0dH0V021LocalizedNumberFormatJ0OG_GMd);
  v260 = v297;
  v261 = v297[2];
  if (v261)
  {
    v262 = 0;
    v263 = v261 - 1;
    for (i = 4; ; i += 11)
    {
      v269 = *&v260[i + 2];
      *v331 = *&v260[i];
      *&v331[16] = v269;
      v270 = *&v260[i + 4];
      v271 = *&v260[i + 6];
      v272 = *&v260[i + 8];
      *&v331[80] = v260[i + 10];
      *&v331[48] = v271;
      *&v331[64] = v272;
      *&v331[32] = v270;
      v273 = *&v260[i + 8];
      v275 = *&v260[i + 2];
      v274 = *&v260[i + 4];
      v342[3] = *&v260[i + 6];
      v342[4] = v273;
      v342[1] = v275;
      v342[2] = v274;
      v342[0] = *&v260[i];
      if (v262)
      {
        if (!v263)
        {
        }

        v262 = 1;
      }

      else
      {
        v265 = *&v331[80];
        v325 = 0;
        v266 = *v295;
        outlined init with copy of FloatingPointRoundingRule?(v331, &v326, &_sSny10Foundation16AttributedStringV5IndexVG_So27NSLocalizedNumberFormatRuleCtMd);

        v267 = _sSo8_NSRangeV10FoundationE_2inABx_q_tcSXRzAC24AttributedStringProtocolR_AC0dE0V5IndexV5BoundRtzr0_lufCSnyAIG_AGTt1B5(v342, v266);
        v293(v265, v267, v268, &v325);
        v262 = v325;
        outlined destroy of TermOfAddress?(v331, &_sSny10Foundation16AttributedStringV5IndexVG_So27NSLocalizedNumberFormatRuleCtMd);
        if (!v263)
        {
        }
      }

      --v263;
    }
  }
}

void specialized AttributedString._addAttributesNotPresentMergingInlinePresentationIntents(_:to:)(uint64_t a1, uint64_t a2)
{
  v580 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GMd);
  v584 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v534 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v567 = &v534 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v585 = &v534 - v10;
  v583 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
  MEMORY[0x1EEE9AC00](v583);
  v12 = &v534 - v11;
  v586 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss8RangeSetVy19CollectionsInternal9BigStringV5IndexVGMd);
  v13 = *(v586 - 8);
  MEMORY[0x1EEE9AC00](v586);
  v579 = &v534 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v571 = &v534 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v534 - v18;
  v576 = type metadata accessor for AttributedString.Runs();
  MEMORY[0x1EEE9AC00](v576);
  v21 = &v534 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v534 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
  MEMORY[0x1EEE9AC00](v25);
  v581 = &v534 - v27;
  if (*(a1 + 16))
  {
    *&v565 = v6;
    *(&v565 + 1) = v26;
    v566 = v24;
    v569 = v21;
    v570 = v13;
    v568 = v19;
    v540 = a1;
    v542 = _s10Foundation16AttributedStringV17_AttributeStorageVy5ValueQzSgxmcAA0bC3KeyRzs8SendableAGRQluigAA0D6ScopesO0A10AttributesV024InlinePresentationIntentD0O_Tt0g5Tf4x_n(a1);
    v541 = v28;
    v554 = v2;
    v29 = *v2;
    v30 = *(*v2 + 40);
    v716 = *(*v2 + 24);
    v717 = v30;
    v718 = *(v29 + 56);
    v31 = BigString.startIndex.getter();
    v33 = v32;
    v582 = v4;
    v35 = v34;
    v37 = v36;
    v38 = BigString.endIndex.getter();
    v613[0] = v29;
    v613[1] = v31;
    v613[2] = v33;
    v613[3] = v35;
    v39 = v582;
    v613[4] = v37;
    v613[5] = v38;
    v613[6] = v40;
    v613[7] = v41;
    v613[8] = v42;
    v613[9] = 0;
    swift_retain_n();
    outlined destroy of AttributedString.CharacterView(v613);
    v43 = *(v580 + 16);
    v709 = *v580;
    v710 = v43;
    v44 = *(v580 + 56);
    v711 = *(v580 + 40);
    v712 = v44;
    v45 = *(v29 + 40);
    v713 = *(v29 + 24);
    v714 = v45;
    v715 = *(v29 + 56);
    swift_unknownObjectRetain();

    BigString.UnicodeScalarView.subscript.getter();
    swift_unknownObjectRelease();

    outlined destroy of BigSubstring.UnicodeScalarView(&v620);
    v615 = v621;
    v616 = v622;
    v617 = v623;
    v618 = v624;
    v614 = v29;
    v619 = 0;
    v625[0] = v621;
    v625[1] = v622;
    v625[2] = v623;
    v626 = v624;
    outlined init with copy of AttributedSubstring(&v614, &v687);
    lazy protocol witness table accessor for type BigString.Index and conformance BigString.Index();
    RangeSet.init(_:)();
    v575 = v29;
    *v569 = v29;
    RangeSet.init()();
    v46 = v585;
    RangeSet.ranges.getter();
    v47 = v584;
    (*(v584 + 16))(v12, v46, v39);
    v48 = *(v583 + 36);
    v49 = lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
    dispatch thunk of Collection.startIndex.getter();
    v583 = *(v47 + 8);
    v584 = v47 + 8;
    (v583)(v46, v39);
    v50 = v12;
    dispatch thunk of Collection.endIndex.getter();
    if (*&v12[v48] != v687)
    {
      v573 = v49;
      v574 = v12;
      v572 = v48;
      do
      {
        v61 = dispatch thunk of Collection.subscript.read();
        v580 = v62[4];
        v63 = v62[6];
        v577 = v62[7];
        v578 = v63;
        v61(&v687, 0);
        dispatch thunk of Collection.formIndex(after:)();
        v64 = v575;
        v65 = *(v575 + 40);
        v706 = *(v575 + 24);
        v707 = v65;
        v708 = *(v575 + 56);
        swift_unknownObjectRetain();
        v66 = BigString.UnicodeScalarView.index(roundingDown:)();
        v68 = v67;
        v70 = v69;
        v72 = v71;
        swift_unknownObjectRelease();
        v73 = *(v64 + 40);
        v703 = *(v64 + 24);
        v704 = v73;
        v705 = *(v64 + 56);
        swift_unknownObjectRetain();
        v74 = BigString.UnicodeScalarView.index(roundingDown:)();
        v76 = v75;
        v78 = v77;
        v80 = v79;
        swift_unknownObjectRelease();
        *&v687 = v66;
        *(&v687 + 1) = v68;
        v39 = v582;
        *&v688 = v70;
        *(&v688 + 1) = v72;
        *&v689 = v74;
        *(&v689 + 1) = v76;
        *&v690 = v78;
        *(&v690 + 1) = v80;
        if ((v74 ^ v66) >= 0x400)
        {
          v81 = RangeSet._ranges.modify();
          RangeSet.Ranges._insert(contentsOf:)();
          v81(v625, 0);
        }

        v50 = v574;
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*(v50 + v572) != v687);
    }

    outlined destroy of TermOfAddress?(v50, &_ss16IndexingIteratorVys8RangeSetV6RangesVy19CollectionsInternal9BigStringV5IndexV_GGMd);
    v51 = v576;
    v52 = v569;
    v53 = v569 + *(v576 + 24);
    v537 = *(v570 + 16);
    v538 = v570 + 16;
    v537(v53, v571, v586);
    v54 = v585;
    RangeSet.ranges.getter();
    v55 = RangeSet.Ranges.count.getter();
    v56 = v54;
    v57 = v583;
    (v583)(v56, v39);
    v58 = *(v51 + 28);
    LODWORD(v564) = v55 > 1;
    *(v52 + v58) = v564;
    v59 = v567;
    RangeSet.ranges.getter();
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (*&v625[0] == v687)
    {
      v60 = v59;
    }

    else
    {
      v82 = dispatch thunk of Collection.subscript.read();
      v84 = *v83;
      v562 = v83[1];
      v563 = v84;
      v85 = v83[2];
      v560 = v83[3];
      v561 = v85;
      v82(&v687, 0);
      v57(v59, v39);
      v86 = v565;
      RangeSet.ranges.getter();
      if ((dispatch thunk of Collection.isEmpty.getter() & 1) == 0)
      {
        dispatch thunk of Collection.endIndex.getter();
        lazy protocol witness table accessor for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges(&lazy protocol witness table cache variable for type RangeSet<BigString.Index>.Ranges and conformance RangeSet<A>.Ranges);
        dispatch thunk of BidirectionalCollection.index(before:)();
        v511 = dispatch thunk of Collection.subscript.read();
        v513 = v512[4];
        v556 = v512[5];
        v514 = v512[7];
        v559 = v512[6];
        v511(&v687, 0);
        v57(v86, v39);
        v515 = v575;
        AttributedString.Guts.findRun(at:)(v563, v560, &v687);
        v580 = *(&v687 + 1);
        v552 = *(&v688 + 1);
        v553 = v688;
        v558 = *(&v689 + 1);
        v577 = v690;
        v578 = v687;
        v573 = v691;
        v574 = *(&v690 + 1);
        v516 = *(v515 + 40);
        v700 = *(v515 + 24);
        v701 = v516;
        v702 = *(v515 + 56);
        v517 = BigString.endIndex.getter();
        v518 = v513;
        v519 = (v517 ^ v513) > 0x3FF;
        v520 = v571;
        v557 = v518;
        v555 = v514;
        if (v519)
        {
          v529 = v556;
          AttributedString.Guts.findRun(at:)(v518, v514, &v687);
          v572 = *(&v687 + 1);
          v128 = v687;
          v567 = *(&v688 + 1);
          v575 = v688;
          *&v565 = *(&v689 + 1);
          v550 = *(&v690 + 1);
          v551 = v690;
          v549 = v691;
          v530 = v585;
          v531 = v586;
          v532 = v529;
          RangeSet.ranges.getter();
          v126 = RangeSet.Ranges.count.getter();
          v533 = *(v570 + 8);
          v533(v568, v531);
          (v583)(v530, v39);
          v533(v520, v531);
          v122 = v557;
          v113 = v558;
          v108 = v549;
          v107 = v550;
          v105 = v565;
          v112 = 0;
          v127 = v580;
          v91 = v581;
          v92 = v566;
          v111 = v564;
          v117 = v562;
          v114 = v563;
          v116 = v577;
          v115 = v578;
          v121 = v560;
          v120 = v561;
          v119 = v573;
          v118 = v574;
          v123 = v532;
          v124 = v559;
          v125 = v555;
          v110 = v553;
          v106 = v551;
          v109 = v552;
          goto LABEL_18;
        }

        v521 = *(v515 + 72);
        if (v521)
        {
          v522 = *(v515 + 80);
        }

        else
        {
          v522 = 0;
        }

        v567 = v522;
        v523 = *(v515 + 96);
        v524 = swift_unknownObjectRetain();
        *&v565 = v523;
        v572 = specialized Rope._endPath.getter(v524);
        if (v521)
        {
          swift_unknownObjectRelease();
        }

        v525 = v585;
        v526 = v586;
        RangeSet.ranges.getter();
        v527 = v582;
        v126 = RangeSet.Ranges.count.getter();
        v528 = *(v570 + 8);
        v528(v568, v526);
        (v583)(v525, v527);
        v528(v520, v526);
        v112 = 0;
        v575 = 0;
        v123 = v556;
        v122 = v557;
        v105 = v557;
        v106 = v556;
        v124 = v559;
        v121 = v560;
        v107 = v559;
        v125 = v555;
        v108 = v555;
        v127 = v580;
        v91 = v581;
        v92 = v566;
        v111 = v564;
        v117 = v562;
        v114 = v563;
        v116 = v577;
        v115 = v578;
        v120 = v561;
        v113 = v558;
        v119 = v573;
        v118 = v574;
        v109 = v552;
        v110 = v553;
LABEL_17:
        v128 = v565;
LABEL_18:
        v129 = v569;
        v569[1] = v109;
        *(v129 + 16) = v115;
        *(v129 + 24) = v127;
        *(v129 + 32) = v110;
        *(v129 + 40) = v113;
        *(v129 + 48) = v116;
        *(v129 + 56) = v118;
        *(v129 + 64) = v119;
        *(v129 + 72) = v114;
        *(v129 + 80) = v117;
        *(v129 + 88) = v120;
        *(v129 + 96) = v121;
        *(v129 + 104) = v112;
        *(v129 + 112) = 0;
        *(v129 + 113) = v111;
        *(v129 + 120) = v567;
        *(v129 + 128) = v128;
        v130 = v575;
        *(v129 + 136) = v572;
        *(v129 + 144) = v130;
        *(v129 + 152) = v105;
        *(v129 + 160) = v106;
        *(v129 + 168) = v107;
        *(v129 + 176) = v108;
        *(v129 + 184) = v122;
        *(v129 + 192) = v123;
        *(v129 + 200) = v124;
        *(v129 + 208) = v125;
        *(v129 + 216) = v126;
        *(v129 + 224) = 0;
        *(v129 + 225) = v111;
        outlined init with take of AttributedString.Runs(v129, v92);
        outlined destroy of AttributedSubstring(&v614);
        outlined init with copy of AttributedString.Runs(v92, v91);
        v131 = v91 + *(*(&v565 + 1) + 36);
        v132 = *(v92 + 8);
        v133 = *(v92 + 16);
        v134 = *(v92 + 48);
        v610 = *(v92 + 32);
        v611 = v134;
        v135 = *(v92 + 72);
        v612 = *(v92 + 64);
        v608 = *(v92 + 80);
        v609 = v133;
        v607 = *(v92 + 112);
        v136 = *(v92 + 96);
        v606 = *(v92 + 104);
        outlined destroy of AttributedString.Runs(v92);
        v137 = v608;
        *(v131 + 8) = v609;
        v138 = v611;
        *(v131 + 24) = v610;
        v139 = (v570 + 8);
        v140 = v542;
        if (v541)
        {
          v140 = 0;
        }

        v539 = v140;
        v567 = v132;
        *v131 = v132;
        *(v131 + 40) = v138;
        *(v131 + 56) = v612;
        *(v131 + 64) = v135;
        *&v565 = v135;
        *(&v565 + 1) = v136;
        *(v131 + 72) = v137;
        *(v131 + 88) = v136;
        *(v131 + 96) = v606;
        v534 = v131 + 96;
        v535 = v139;
        v564 = v131;
        *(v131 + 104) = v607;
        v536 = xmmword_1812187D0;
LABEL_22:
        v142 = v585;
        if (v567 == *(v91 + 120))
        {
          v143 = *(v91 + 208);
          if (*(&v565 + 1) == 2)
          {
            if (v143 == 2)
            {
LABEL_340:
              outlined destroy of TermOfAddress?(v91, &_ss16IndexingIteratorVy10Foundation16AttributedStringV4RunsVGMd);
              return;
            }
          }

          else if (v143 != 2 && (*(v91 + 184) ^ v565) < 0x400)
          {
            goto LABEL_340;
          }
        }

        v144 = v564[1];
        v681 = *v564;
        v145 = v564[5];
        v685 = v564[4];
        v686[0] = v145;
        *(v686 + 10) = *(v564 + 90);
        v146 = v564[3];
        v683 = v564[2];
        v684 = v146;
        v682 = v144;
        v147 = v681;
        v575 = v685;
        v562 = v145;
        v563 = *(&v685 + 1);
        v577 = *(&v686[0] + 1);
        v148 = *(v91 + 24);
        v687 = *(v91 + 8);
        v688 = v148;
        v149 = *(v91 + 40);
        v150 = *(v91 + 56);
        v151 = *(v91 + 88);
        v691 = *(v91 + 72);
        v692 = v151;
        v689 = v149;
        v690 = v150;
        v152 = *(v91 + 104);
        v153 = *(v91 + 120);
        v154 = *(v91 + 152);
        v695 = *(v91 + 136);
        v696 = v154;
        v693 = v152;
        v694 = v153;
        v155 = *(v91 + 168);
        v156 = *(v91 + 184);
        v157 = *(v91 + 200);
        *(v699 + 10) = *(v91 + 210);
        v698 = v156;
        v699[0] = v157;
        v697 = v155;
        v158 = v687;
        v159 = v691;
        v160 = *(&v692 + 1);
        v161 = specialized Range.contains(_:)(&v681);
        if (v147 < v158 || (v161 & 1) == 0)
        {
          goto LABEL_349;
        }

        v162 = v158 < v147 || v160 == 2;
        v163 = v162;
        if (!v162)
        {
          if (v577 == 2)
          {
LABEL_376:
            __break(1u);
            goto LABEL_377;
          }

          if (v575 >> 10 < v159 >> 10)
          {
            goto LABEL_364;
          }
        }

        if (v694 < v147)
        {
          goto LABEL_350;
        }

        v164 = v147 < v694 || v577 == 2;
        v165 = v164;
        LODWORD(v557) = v165;
        if (!v164)
        {
          if (*(&v699[0] + 1) == 2)
          {
LABEL_377:
            __break(1u);
            goto LABEL_378;
          }

          if (v698 >> 10 < v575 >> 10)
          {
            goto LABEL_365;
          }
        }

        LODWORD(v558) = v163;
        v559 = v694;
        v560 = *(&v699[0] + 1);
        v561 = v698;
        v166 = *(&v681 + 1);
        v571 = *(&v683 + 1);
        v572 = v683;
        v570 = v684;
        v573 = *(&v681 + 1);
        v574 = *(&v684 + 1);
        v569 = (v683 >> 11);
        v565 = v682;
        v567 = v147;
        v543 = v159;
        if (*(&v682 + 1) == 1 || (v578 = *v91, *(&v681 + 1) != *(v578 + 96)))
        {
          if (*(v91 + *(v576 + 28)))
          {
LABEL_359:
            __break(1u);
LABEL_360:
            __break(1u);
            goto LABEL_361;
          }

          v173 = *(*v91 + 72);
          v172 = *(*v91 + 80);
          v578 = *v91;
          if (v173)
          {
            v174 = v172;
          }

          else
          {
            v174 = 0;
          }

          if (v147 < 0 || v174 < v147)
          {
            goto LABEL_360;
          }

          v175 = *(v578 + 88);
          v176 = *(v578 + 96);
          if (v173)
          {
            v177 = (v173 + 16);
            v178 = *(v173 + 16);
            if (*(v173 + 16))
            {
              if (v147 < v172)
              {
                v566 = *(v578 + 96);
                v91 = *(v173 + 18);
                swift_unknownObjectRetain_n();
                if (v91)
                {
                  v580 = v175;
                  v179 = v91;
                  v180 = v173;
                  do
                  {
                    v181 = *v177;
                    if (*v177)
                    {
                      v183 = 0;
                      v184 = (v180 + 32);
                      while (1)
                      {
                        v185 = *v184;
                        v184 += 3;
                        v186 = v147 - v185;
                        if (__OFSUB__(v147, v185))
                        {
                          goto LABEL_335;
                        }

                        if (__OFADD__(v186, 1))
                        {
                          goto LABEL_336;
                        }

                        if (v186 + 1 < 1)
                        {
                          v181 = v183;
                          goto LABEL_66;
                        }

                        ++v183;
                        v147 = v186;
                        if (v181 == v183)
                        {
                          goto LABEL_75;
                        }
                      }
                    }

                    v186 = v147;
LABEL_75:
                    if (v186)
                    {
                      goto LABEL_346;
                    }

                    v147 = 0;
LABEL_66:
                    v179 = (v181 << ((4 * v91 + 8) & 0x3C)) | ((-15 << ((4 * v91 + 8) & 0x3C)) - 1) & v179;
                    v182 = *(v180 + 24 + 24 * v181);
                    swift_unknownObjectRetain();
                    swift_unknownObjectRelease();
                    v177 = (v182 + 16);
                    v91 = *(v182 + 18);
                    v180 = v182;
                  }

                  while (*(v182 + 18));
                  v189 = v182;
                  v178 = *v177;
                  if (*v177)
                  {
                    v175 = v580;
                    goto LABEL_83;
                  }

                  v175 = v580;
                  v192 = 0;
                  if (!v147)
                  {
LABEL_92:
                    swift_unknownObjectRelease();
                    v188 = v179 & 0xFFFFFFFFFFFFF0FFLL | (v192 << 8);
                    v176 = v566;
                    v555 = v188;
                    goto LABEL_78;
                  }

                  goto LABEL_372;
                }

                v179 = 0;
                v189 = v173;
LABEL_83:
                v191 = 0;
                v192 = v147 & ~(v147 >> 63);
                while ((v147 ^ v191) != 0x8000000000000000)
                {
                  if (v192 == v191)
                  {
                    goto LABEL_92;
                  }

                  if (v178 == ++v191)
                  {
                    v192 = v178;
                    if (v147 == v191)
                    {
                      goto LABEL_92;
                    }

                    goto LABEL_372;
                  }
                }

                goto LABEL_345;
              }
            }
          }

          v187 = swift_unknownObjectRetain();
          v188 = specialized Rope._endPath.getter(v187);
          v189 = 0;
          v555 = v188;
          if (v173)
          {
LABEL_78:
            v190 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v176, v188, v189, v173, v172, v175);
            swift_unknownObjectRelease();
          }

          else
          {
            v190 = 0;
          }

          v142 = v585;
        }

        else
        {
          if (v574 == 2)
          {
            v167 = *(v578 + 72);
            v168 = v565;
            if (v167)
            {
              v170 = *(v578 + 80);
              v169 = *(v578 + 88);
              swift_unknownObjectRetain();
              v171 = *(&v565 + 1);
              specialized Rope._Node.distanceFromStart<A>(to:in:)(v166, v168, *(&v565 + 1), v167, v170, v169);
              swift_unknownObjectRelease();
            }

            else
            {
              v171 = *(&v565 + 1);
            }

            v545 = 0;
            LODWORD(v568) = 1;
            v555 = v168;
            v556 = v171;
            v566 = v166;
            goto LABEL_98;
          }

          v176 = *(&v681 + 1);
          v189 = *(&v565 + 1);
          v555 = v565;
          v190 = v569;
        }

        LODWORD(v568) = v574 == 2;
        v545 = v574 != 2;
        v566 = v176;
        v556 = v189;
        if (v574 != 2 && v569 == v190)
        {
          v672 = *(v578 + 24);
          v673 = *(v578 + 40);
          v674 = *(v578 + 56);
          swift_unknownObjectRetain();
          v193 = BigString.UTF8View.index(roundingDown:)();
          v195 = v194;
          v197 = v196;
          v199 = v198;
          swift_unknownObjectRelease();
          LODWORD(v568) = 0;
          goto LABEL_99;
        }

LABEL_98:
        v200 = *(v578 + 24);
        v679 = *(v578 + 40);
        v680 = *(v578 + 56);
        v678 = v200;
        v675 = *(v578 + 24);
        v676 = *(v578 + 40);
        v677 = *(v578 + 56);
        BigString.startIndex.getter();
        v719[0] = v678;
        v719[1] = v679;
        v720 = v680;
        outlined init with copy of Rope<BigString._Chunk>._Node?(v719, &v596);
        v193 = BigString.UTF8View.index(_:offsetBy:)();
        v195 = v201;
        v197 = v202;
        v199 = v203;
        outlined destroy of BigString(&v678);
LABEL_99:
        v204 = v581;
        v544 = BYTE8(v686[1]);
        v580 = *&v686[1];
        if (BYTE8(v686[1]))
        {
          v550 = v199;
          v551 = v197;
          v552 = v195;
          v553 = v193;
          if (v577 == 2)
          {
            v205 = v193;
          }

          else
          {
            v205 = v575;
          }

          v91 = *(v576 + 24);
          RangeSet.ranges.getter();
          v206 = v582;
          v207 = RangeSet.Ranges.count.getter();
          (v583)(v142, v206);
          if (v207 >= 1)
          {
            v208 = 0;
            v209 = v205 >> 10;
            while (!__OFADD__(v208, v207))
            {
              v210 = (v208 + v207) / 2;
              v211 = v585;
              RangeSet.ranges.getter();
              v212 = v582;
              RangeSet.Ranges.subscript.getter();
              (v583)(v211, v212);
              v213 = v596;
              if (v209 >= v596 >> 10)
              {
                v214 = *v598;
                if (v209 < *v598 >> 10)
                {
                  v216 = *(&v596 + 1);
                  v218 = *(&v597 + 1);
                  v217 = v597;
                  v204 = v581;
                  v195 = v552;
                  v193 = v553;
                  v199 = v550;
                  v197 = v551;
                  goto LABEL_115;
                }

                v208 = v210 + 1;
                v210 = v207;
              }

              v207 = v210;
              if (v208 >= v210)
              {
                goto LABEL_334;
              }
            }

            __break(1u);
LABEL_343:
            __break(1u);
LABEL_344:
            __break(1u);
LABEL_345:
            __break(1u);
LABEL_346:
            __break(1u);
LABEL_347:
            __break(1u);
LABEL_348:
            __break(1u);
LABEL_349:
            __break(1u);
LABEL_350:
            __break(1u);
LABEL_351:
            __break(1u);
LABEL_352:
            __break(1u);
LABEL_353:
            __break(1u);
            goto LABEL_354;
          }

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
LABEL_339:
          __break(1u);
          goto LABEL_340;
        }

        RangeSet.ranges.getter();
        v215 = v582;
        RangeSet.Ranges.subscript.getter();
        (v583)(v142, v215);
        v216 = *(&v596 + 1);
        v213 = v596;
        v218 = *(&v597 + 1);
        v217 = v597;
        v214 = *v598;
        if (v577 != 2 && (v575 >> 10 < v596 >> 10 || v575 >> 10 >= *v598 >> 10))
        {
          goto LABEL_370;
        }

LABEL_115:
        v551 = v218;
        v552 = v217;
        v553 = v216;
        v219 = v571;
        v220 = v572;
        v221 = v570;
        v222 = v574;
        if (v568)
        {
          v220 = v193;
          v219 = v195;
          v221 = v197;
          v222 = v199;
        }

        v548 = v221;
        v549 = v222;
        v550 = v219;
        if (v577 == 2)
        {
          v223 = v193;
        }

        else
        {
          v223 = v575;
        }

        if (v577 == 2)
        {
          v224 = v195;
        }

        else
        {
          v224 = v563;
        }

        v225 = v562;
        if (v577 == 2)
        {
          v225 = v197;
        }

        v562 = v225;
        v563 = v224;
        if (v577 == 2)
        {
          v226 = v199;
        }

        else
        {
          v226 = v577;
        }

        v546 = v226;
        v547 = v223;
        v227 = v578;
        v228 = *(v578 + 72);
        v229 = *(v578 + 80);
        v231 = *(v578 + 88);
        v230 = *(v578 + 96);
        swift_unknownObjectRetain();
        v232 = specialized Rope.subscript.getter(v566, v555, v556, v228, v229, v231, v230);
        v234 = v233;
        v236 = v235;
        swift_unknownObjectRelease();
        if (v213 >> 10 >= v220 >> 10)
        {
          v237 = v213;
        }

        else
        {
          v237 = v220;
        }

        if (v213 >> 10 >= v220 >> 10)
        {
          v238 = v553;
        }

        else
        {
          v238 = v550;
        }

        if (v213 >> 10 >= v220 >> 10)
        {
          v239 = v552;
        }

        else
        {
          v239 = v548;
        }

        if (v213 >> 10 >= v220 >> 10)
        {
          v240 = v551;
        }

        else
        {
          v240 = v549;
        }

        v241 = v232 + (v220 >> 11);
        if (__OFADD__(v232, v220 >> 11))
        {
          goto LABEL_351;
        }

        v242 = v236;
        v243 = v234;
        if ((v214 >> 11) < v241)
        {
          v241 = v214 >> 11;
        }

        v669 = *(v227 + 24);
        v244 = *(v227 + 40);
        v245 = *(v227 + 56);
        v553 = (v227 + 24);
        v670 = v244;
        v671 = v245;
        if (__OFSUB__(v241, v547 >> 11))
        {
          goto LABEL_352;
        }

        v578 = v227;
        v246 = v237;
        v555 = v238;
        v556 = v239;
        v566 = v240;
        swift_unknownObjectRetain();
        v247 = BigString.UTF8View.index(_:offsetBy:)();
        v249 = v248;
        v251 = v250;
        v253 = v252;
        swift_unknownObjectRelease();
        v644 = v243;
        v645 = v242;
        *&v646 = v246;
        v254 = v578;
        *(&v646 + 1) = v555;
        *&v647 = v556;
        *(&v647 + 1) = v566;
        *&v648 = v247;
        *(&v648 + 1) = v249;
        *&v649 = v251;
        *(&v649 + 1) = v253;
        v650 = v578;
        if (v558)
        {
          v255 = v567;
          v256 = v560;
          v258 = *(&v565 + 1);
          v257 = v565;
          v259 = v561;
          if (v567 < v559)
          {
            goto LABEL_154;
          }

          if (v560 != 2)
          {
            if (v577 == 2)
            {
              goto LABEL_154;
            }

            v260 = v575 >> 10;
            goto LABEL_153;
          }
        }

        else
        {
          v255 = v567;
          v258 = *(&v565 + 1);
          v257 = v565;
          v256 = v560;
          v259 = v561;
          if (v577 == 2)
          {
LABEL_378:
            __break(1u);
            goto LABEL_379;
          }

          v260 = v575 >> 10;
          if (v575 >> 10 < v543 >> 10)
          {
            goto LABEL_366;
          }

          if (v567 < v559)
          {
LABEL_154:
            if (!v557)
            {
              if (v256 == 2)
              {
LABEL_380:
                __break(1u);
                goto LABEL_381;
              }

              if (v259 >> 10 < v575 >> 10)
              {
                goto LABEL_367;
              }
            }

            if (v258 == 1 || v573 != *(v578 + 96))
            {
              if (v204[*(v576 + 28)])
              {
LABEL_361:
                __break(1u);
LABEL_362:
                __break(1u);
                goto LABEL_363;
              }

              v270 = *(v578 + 72);
              v271 = *(v578 + 80);
              if (v270)
              {
                v272 = *(v578 + 80);
              }

              else
              {
                v272 = 0;
              }

              if (v255 < 0 || v272 < v255)
              {
                goto LABEL_362;
              }

              v273 = *(v578 + 88);
              v573 = *(v578 + 96);
              if (v270)
              {
                v274 = (v270 + 16);
                v275 = *(v270 + 16);
                if (*(v270 + 16))
                {
                  if (v255 < v271)
                  {
                    v566 = v271;
                    v91 = *(v270 + 18);
                    swift_unknownObjectRetain_n();

                    if (v91)
                    {
                      v276 = v91;
                      v277 = v270;
                      do
                      {
                        v278 = *v274;
                        if (*v274)
                        {
                          v280 = 0;
                          v281 = (v277 + 32);
                          while (1)
                          {
                            v282 = *v281;
                            v281 += 3;
                            v283 = v255 - v282;
                            if (__OFSUB__(v255, v282))
                            {
                              goto LABEL_338;
                            }

                            if (__OFADD__(v283, 1))
                            {
                              goto LABEL_339;
                            }

                            if (v283 + 1 < 1)
                            {
                              v278 = v280;
                              goto LABEL_174;
                            }

                            ++v280;
                            v255 = v283;
                            if (v278 == v280)
                            {
                              goto LABEL_183;
                            }
                          }
                        }

                        v283 = v255;
LABEL_183:
                        if (v283)
                        {
                          goto LABEL_348;
                        }

                        v255 = 0;
LABEL_174:
                        v276 = (v278 << ((4 * v91 + 8) & 0x3C)) | ((-15 << ((4 * v91 + 8) & 0x3C)) - 1) & v276;
                        v279 = *(v277 + 24 + 24 * v278);
                        swift_unknownObjectRetain();
                        swift_unknownObjectRelease();
                        v274 = (v279 + 16);
                        v91 = *(v279 + 18);
                        v277 = v279;
                      }

                      while (*(v279 + 18));
                      v287 = v279;
                      v275 = *v274;
                      if (*v274)
                      {
                        v254 = v578;
                        goto LABEL_191;
                      }

                      v254 = v578;
                      v258 = v287;
                      v290 = 0;
                      if (!v255)
                      {
LABEL_199:
                        v285 = v273;
                        swift_unknownObjectRelease();
                        v257 = v276 & 0xFFFFFFFFFFFFF0FFLL | (v290 << 8);
                        v271 = v566;
                        v255 = v567;
                        goto LABEL_200;
                      }

                      goto LABEL_373;
                    }

                    v276 = 0;
                    v287 = v270;
LABEL_191:
                    v288 = 0;
                    v289 = v275;
                    v290 = v255 & ~(v255 >> 63);
                    v258 = v287;
                    while ((v255 ^ v288) != 0x8000000000000000)
                    {
                      if (v290 == v288)
                      {
                        goto LABEL_199;
                      }

                      if (v289 == ++v288)
                      {
                        v290 = v289;
                        if (v255 == v288)
                        {
                          goto LABEL_199;
                        }

                        goto LABEL_373;
                      }
                    }

                    goto LABEL_347;
                  }
                }
              }

              v284 = swift_unknownObjectRetain();
              v285 = v273;
              v257 = specialized Rope._endPath.getter(v284);
              v258 = 0;
              if (v270)
              {
LABEL_200:
                v264 = v573;
                v265 = v257;
                v266 = v258;
                v267 = v270;
                v268 = v271;
                v269 = v285;
                goto LABEL_201;
              }
            }

            else
            {
              if ((v568 & 1) == 0)
              {

                v286 = v569;
                goto LABEL_203;
              }

              v261 = *(v578 + 72);
              if (v261)
              {
                v262 = *(v578 + 80);
                v263 = *(v578 + 88);

                swift_unknownObjectRetain();
                v264 = v573;
                v265 = v257;
                v266 = v258;
                v267 = v261;
                v268 = v262;
                v269 = v263;
LABEL_201:
                v286 = specialized Rope._Node.distanceFromStart<A>(to:in:)(v264, v265, v266, v267, v268, v269);
                swift_unknownObjectRelease();
                goto LABEL_203;
              }
            }

            v286 = 0;
LABEL_203:
            v291 = v545;
            if (v569 != v286)
            {
              v291 = 0;
            }

            v566 = v286;
            if (v291)
            {
              v292 = *(v254 + 40);
              v660 = *(v254 + 24);
              v661 = v292;
              v662 = *(v254 + 56);
              swift_unknownObjectRetain();
              v293 = BigString.UTF8View.index(roundingDown:)();
              swift_unknownObjectRelease();
            }

            else
            {
              v294 = *v553;
              v667 = v553[1];
              v668 = v553[2];
              v666 = v294;
              v295 = *(v254 + 40);
              v663 = *(v254 + 24);
              v664 = v295;
              v665 = *(v254 + 56);
              BigString.startIndex.getter();
              v721[0] = v666;
              v721[1] = v667;
              v722 = v668;
              outlined init with copy of Rope<BigString._Chunk>._Node?(v721, &v596);
              v255 = v567;
              v293 = BigString.UTF8View.index(_:offsetBy:)();
              outlined destroy of BigString(&v666);
            }

            v296 = v254;
            v297 = *(v254 + 72);
            v298 = v296[10];
            v299 = v296[11];
            v300 = v296[12];
            v301 = v573;
            *&v596 = v573;
            *(&v596 + 1) = v257;
            *&v597 = v258;
            v567 = (v255 + 1);
            if (__OFADD__(v255, 1))
            {
              goto LABEL_353;
            }

            *(&v565 + 1) = v293;
            swift_unknownObjectRetain();
            v302 = v257;
            v303 = specialized Rope.subscript.getter(v301, v257, v258, v297, v298, v299, v300);

            v304 = v566 + v303;
            if (__OFADD__(v566, v303))
            {
LABEL_354:
              __break(1u);
              goto LABEL_355;
            }

            if (v301 != v300)
            {
LABEL_355:
              __break(1u);
              goto LABEL_356;
            }

            if (v302 >= specialized Rope._endPath.getter(v297))
            {
LABEL_356:
              __break(1u);
LABEL_357:
              __break(1u);
              goto LABEL_358;
            }

            if (v258 && (v305 = (4 * *(v258 + 18) + 8) & 0x3C, v306 = ((v302 >> v305) & 0xF) + 1, v306 < *(v258 + 16)))
            {
              swift_unknownObjectRelease();
              v307 = (v306 << v305) | ((-15 << v305) - 1) & v302;
              v91 = v582;
            }

            else
            {
              v308 = specialized Rope._Node.formSuccessor(of:)(&v596, v297);
              v91 = v582;
              if (v308)
              {
                swift_unknownObjectRelease();
                v307 = *(&v596 + 1);
              }

              else
              {
                v307 = specialized Rope._endPath.getter(v297);
                swift_unknownObjectRelease();
                *&v596 = v301;
                *(&v596 + 1) = v307;
                *&v597 = 0;
              }
            }

            v573 = v596;
            v309 = v597;
            v310 = *(v576 + 24);
            v311 = v583;
            if (v544)
            {
              v566 = v304;
              *&v565 = v307;
              v312 = v597;
              v537(v579, &v581[v310], v586);
              if (v577 == 2)
              {
                v313 = *(&v565 + 1);
              }

              else
              {
                v313 = v575;
              }

              v314 = v585;
              RangeSet.ranges.getter();
              v315 = RangeSet.Ranges.count.getter();
              v311(v314, v91);
              if (v315 >= 1)
              {
                v316 = 0;
                v317 = v313 >> 10;
                while (!__OFADD__(v316, v315))
                {
                  v318 = (v316 + v315) / 2;
                  v319 = v585;
                  RangeSet.ranges.getter();
                  RangeSet.Ranges.subscript.getter();
                  v320 = v319;
                  v311 = v583;
                  (v583)(v320, v91);
                  if (v317 < v596 >> 10)
                  {
                    v315 = (v316 + v315) / 2;
                    if (v316 >= v318)
                    {
                      goto LABEL_337;
                    }
                  }

                  else
                  {
                    v580 = (v316 + v315) / 2;
                    v321 = *v598;
                    if (v317 < *v598 >> 10)
                    {
                      (*v535)(v579, v586);
                      v309 = v312;
                      v307 = v565;
                      v304 = v566;
                      goto LABEL_232;
                    }

                    v316 = v580 + 1;
                    if ((v580 + 1) >= v315)
                    {
                      goto LABEL_337;
                    }
                  }
                }

                goto LABEL_344;
              }

              goto LABEL_337;
            }

            v322 = v585;
            RangeSet.ranges.getter();
            RangeSet.Ranges.subscript.getter();
            v311(v322, v91);
            v321 = *v598;
LABEL_232:
            if (v304 >= (v321 >> 11))
            {
              v333 = v580 + 1;
              if (__OFADD__(v580, 1))
              {
LABEL_368:
                __break(1u);
                goto LABEL_369;
              }

              v334 = v311;
              v335 = v581;
              v336 = v585;
              RangeSet.ranges.getter();
              v337 = RangeSet.Ranges.count.getter();
              v334(v336, v91);
              if (v333 == v337)
              {
                v338 = *(v335 + 15);
                v339 = *(v335 + 9);
                v596 = *(v335 + 8);
                v597 = v339;
                *v598 = *(v335 + 10);
                v340 = *(v335 + 22);
                v341 = *(v335 + 23);
                v590 = *(v335 + 12);
                v343 = *(v335 + 26);
                v342 = *(v335 + 27);
                v344 = *(v335 + 112);
                v345 = v339;
                v346 = v564;
                *(v564 + 40) = *v598;
                v347 = v596;
                *(v346 + 24) = v345;
                *&v598[16] = v340;
                *&v600[0] = v342;
                WORD4(v600[0]) = v344;
                v567 = v338;
                *v346 = v338;
                *(v346 + 8) = v347;
                *(v346 + 7) = v340;
                *(v346 + 8) = v341;
                *&v565 = v341;
                *(&v565 + 1) = v343;
                *(v346 + 72) = v590;
                *(v346 + 11) = v343;
                v348 = v342;
                LOWORD(v342) = v344;
                v349 = v534;
                *(v534 + 8) = v342;
                *v349 = v348;
              }

              else
              {
                RangeSet.ranges.getter();
                RangeSet.Ranges.subscript.getter();
                v334(v336, v91);
                v357 = v596;
                v358 = v597;
                AttributedString.Guts.findRun(at:)(v596, *(&v597 + 1), &v596);
                v359 = v597;
                v360 = v596;
                v361 = *&v598[8];
                v362 = *&v598[24];
                v363 = v335[*(v576 + 28)];
                LOBYTE(v596) = 0;
                v364 = v564;
                v567 = *(&v597 + 1);
                *v564 = *(&v597 + 1);
                *(v364 + 8) = v360;
                *(v364 + 3) = v359;
                v364[2] = v361;
                v364[3] = v362;
                *&v565 = v357;
                *(&v565 + 1) = *(&v358 + 1);
                v364[4] = v357;
                v364[5] = v358;
                *(v364 + 12) = v333;
                *(v364 + 104) = 0;
                *(v364 + 105) = v363;
              }
            }

            else
            {
              if (v568)
              {
                v323 = *v553;
                v324 = v553[2];
                v658 = v553[1];
                v659 = v324;
                v325 = *(v578 + 40);
                v654 = *(v578 + 24);
                v655 = v325;
                v656 = *(v578 + 56);
                v657 = v323;
                BigString.startIndex.getter();
                v723[0] = v657;
                v723[1] = v658;
                v724 = v659;
                outlined init with copy of Rope<BigString._Chunk>._Node?(v723, &v596);
                v326 = BigString.UTF8View.index(_:offsetBy:)();
                v328 = v327;
                v330 = v329;
                v332 = v331;
                outlined destroy of BigString(&v657);
              }

              else
              {
                v350 = *(v578 + 40);
                v651 = *(v578 + 24);
                v652 = v350;
                v653 = *(v578 + 56);
                if (__OFSUB__(v304, v569))
                {
LABEL_371:
                  __break(1u);
LABEL_372:
                  __break(1u);
LABEL_373:
                  __break(1u);
LABEL_374:
                  __break(1u);
LABEL_375:
                  __break(1u);
                  goto LABEL_376;
                }

                swift_unknownObjectRetain();
                v326 = BigString.UTF8View.index(_:offsetBy:)();
                v328 = v351;
                v330 = v352;
                v332 = v353;
                swift_unknownObjectRelease();
              }

              v354 = v581[*(v576 + 28)];
              LOBYTE(v596) = 0;
              v355 = v564;
              v356 = v573;
              *v564 = v567;
              *(v355 + 1) = v356;
              *(v355 + 2) = v307;
              *(v355 + 3) = v309;
              *(v355 + 4) = v326;
              *(v355 + 5) = v328;
              *(v355 + 6) = v330;
              *(v355 + 7) = v332;
              *&v565 = v326;
              *(&v565 + 1) = v332;
              *(v355 + 8) = v326;
              *(v355 + 9) = v328;
              *(v355 + 10) = v330;
              *(v355 + 11) = v332;
              *(v355 + 12) = v580;
              *(v355 + 104) = 0;
              *(v355 + 105) = v354;
            }

            v365 = v554;
            v366 = v540;
            v367 = _s10Foundation16AttributedStringV4RunsV3RunVy5ValueQzSgxmcAA0bC3KeyRzluigAA15AttributeScopesO0A10AttributesV024InlinePresentationIntentH0O_Tt0B5();
            v369 = v368;
            if (v368)
            {
              v370 = v542;
            }

            else
            {
              v370 = v367 | v539;
            }

            v725 = v645;
            v726 = v644;
            v604 = v644;
            v605 = v645;
            LOBYTE(v590) = 1;
            outlined init with copy of FloatingPointRoundingRule?(&v726, &v596, &_sSDySS10Foundation16AttributedStringV15_AttributeValueVGMd);
            outlined init with copy of FloatingPointRoundingRule?(&v725, &v596, &_sShySSGMd);
            specialized AttributedString._AttributeStorage.mergeIn(_:mergePolicy:)(v366, &v590);
            if (one-time initialization token for name != -1)
            {
              swift_once();
            }

            v372 = static AttributeScopes.FoundationAttributes.InlinePresentationIntentAttribute.name;
            v371 = unk_1EA7B26A0;
            if (v369 & v541)
            {
              memset(v598, 0, 32);
              v596 = 0u;
              v597 = 0u;
            }

            else
            {
              type metadata accessor for NSInlinePresentationIntent(0);
              *(&v597 + 1) = v373;
              *v598 = lazy protocol witness table accessor for type NSInlinePresentationIntent and conformance NSInlinePresentationIntent();
              *&v596 = v370;
              *&v598[8] = v536;
              v598[24] = 1;
            }

            *&v598[32] = 0;
            outlined init with copy of FloatingPointRoundingRule?(&v596, &v590, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
            if (!*(&v591 + 1))
            {

              outlined destroy of TermOfAddress?(&v590, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              v393 = v604;
              v394 = specialized __RawDictionaryStorage.find<A>(_:)(v372, v371);
              if ((v395 & 1) == 0)
              {
                v594 = 0;
                v592 = 0u;
                v593 = 0u;
                v590 = 0u;
                v591 = 0u;
                goto LABEL_264;
              }

              v396 = v394;
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                v383 = v393;
              }

              else
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
                v487 = static _DictionaryStorage.copy(original:)();
                v383 = v487;
                if (*(v393 + 16))
                {
                  v488 = (v487 + 64);
                  v489 = (v393 + 64);
                  v490 = ((1 << *(v383 + 32)) + 63) >> 6;
                  v575 = v393 + 64;
                  if (v383 != v393 || v488 >= &v489[8 * v490])
                  {
                    memmove(v488, v489, 8 * v490);
                  }

                  v491 = 0;
                  *(v383 + 16) = *(v393 + 16);
                  v492 = 1 << *(v393 + 32);
                  if (v492 < 64)
                  {
                    v493 = ~(-1 << v492);
                  }

                  else
                  {
                    v493 = -1;
                  }

                  v494 = v493 & *(v393 + 64);
                  v495 = (v492 + 63) >> 6;
                  if (v494)
                  {
                    do
                    {
                      v496 = __clz(__rbit64(v494));
                      v580 = (v494 - 1) & v494;
LABEL_323:
                      v499 = v496 | (v491 << 6);
                      v500 = 16 * v499;
                      v501 = *(v393 + 56);
                      v502 = (*(v393 + 48) + 16 * v499);
                      v503 = *v502;
                      v577 = v502[1];
                      v578 = v503;
                      v504 = 72 * v499;
                      outlined init with copy of AttributedString._AttributeValue(v501 + 72 * v499, &v590);
                      v505 = (*(v383 + 48) + v500);
                      v506 = v577;
                      *v505 = v578;
                      v505[1] = v506;
                      v507 = *(v383 + 56) + v504;
                      *v507 = v590;
                      v508 = v591;
                      v509 = v592;
                      v510 = v593;
                      *(v507 + 64) = v594;
                      *(v507 + 32) = v509;
                      *(v507 + 48) = v510;
                      *(v507 + 16) = v508;

                      v365 = v554;
                      v494 = v580;
                    }

                    while (v580);
                  }

                  v497 = v491;
                  while (1)
                  {
                    v491 = v497 + 1;
                    if (__OFADD__(v497, 1))
                    {
                      goto LABEL_375;
                    }

                    if (v491 >= v495)
                    {
                      break;
                    }

                    v498 = *(v575 + 8 * v491);
                    ++v497;
                    if (v498)
                    {
                      v496 = __clz(__rbit64(v498));
                      v580 = (v498 - 1) & v498;
                      goto LABEL_323;
                    }
                  }
                }
              }

              v397 = *(v383 + 56) + 72 * v396;
              v590 = *v397;
              v399 = *(v397 + 32);
              v398 = *(v397 + 48);
              v400 = *(v397 + 64);
              v591 = *(v397 + 16);
              v594 = v400;
              v592 = v399;
              v593 = v398;
              specialized _NativeDictionary._delete(at:)(v396, v383);
LABEL_263:
              v604 = v383;
LABEL_264:
              AttributedString._AttributeStorage._attributeModified(_:old:new:)(v372, v371, &v590, &v596);
              outlined destroy of TermOfAddress?(&v596, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);
              outlined destroy of TermOfAddress?(&v590, &_s10Foundation16AttributedStringV15_AttributeValueVSgMd);

              v729 = v646;
              v730 = v647;
              v727 = v648;
              v728 = v649;
              v580 = v604;
              v578 = v605;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v402 = *v365;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v403 = *(v402 + 40);
                v643[0] = *(v402 + 24);
                v643[1] = v403;
                v643[2] = *(v402 + 56);
                v404 = *(v402 + 72);
                v405 = *(v402 + 80);
                v407 = *(v402 + 88);
                v406 = *(v402 + 96);
                type metadata accessor for AttributedString.Guts();
                swift_allocObject();
                outlined init with copy of BigString(v643, &v596);
                swift_unknownObjectRetain();
                v402 = AttributedString.Guts.init(string:runs:)(v643, v404, v405, v407, v406);

                *v365 = v402;
              }

              if (one-time initialization token for _nextVersion != -1)
              {
                swift_once();
              }

              *(v402 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
              v408 = *(v402 + 40);
              v642[10] = *(v402 + 24);
              v642[11] = v408;
              v642[12] = *(v402 + 56);
              v409 = BigString.startIndex.getter();
              v411 = v410;
              v413 = v412;
              v415 = v414;
              v416 = BigString.endIndex.getter();
              *&v596 = v402;
              *(&v596 + 1) = v409;
              *&v597 = v411;
              *(&v597 + 1) = v413;
              *v598 = v415;
              *&v598[8] = v416;
              *&v598[16] = v417;
              *&v598[24] = v418;
              *&v598[32] = v419;
              v599 = 0;

              outlined destroy of AttributedString.CharacterView(&v596);
              v592 = v727;
              v593 = v728;
              v642[3] = v729;
              v642[4] = v730;
              v642[5] = v727;
              v642[6] = v728;
              v420 = *(v402 + 40);
              v642[7] = *(v402 + 24);
              v642[8] = v420;
              v642[9] = *(v402 + 56);
              swift_unknownObjectRetain();

              BigString.UnicodeScalarView.subscript.getter();
              swift_unknownObjectRelease();
              outlined destroy of BigSubstring.UnicodeScalarView(v625);
              v422 = *(&v626 + 1);
              v421 = v626;
              v577 = v627;
              v574 = v629;
              v575 = v628;
              v572 = v631;
              v573 = v630;
              v571 = v632;
              if (one-time initialization token for currentIdentity != -1)
              {
                swift_once();
              }

              v423 = static AttributedString.currentIdentity;
              os_unfair_lock_lock((static AttributedString.currentIdentity + 24));
              v424 = *(v423 + 16);
              v380 = __OFADD__(v424, 1);
              v425 = v424 + 1;
              if (v380)
              {
                goto LABEL_357;
              }

              v570 = v425;
              *(v423 + 16) = v425;
              os_unfair_lock_unlock((v423 + 24));
              BigString.init()();
              *&v590 = 0;
              MEMORY[0x1865D26B0](&v590, 8);
              v426 = v590;
              type metadata accessor for AttributedString.Guts();
              v427 = swift_allocObject();
              if ((BigString.isEmpty.getter() & 1) == 0)
              {
LABEL_358:
                __break(1u);
                goto LABEL_359;
              }

              *(v427 + 16) = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
              v428 = v634;
              *(v427 + 24) = v633;
              *(v427 + 40) = v428;
              *(v427 + 56) = v635;
              *(v427 + 72) = 0;
              *(v427 + 80) = 0;
              *(v427 + 88) = 0;
              *(v427 + 96) = v426;
              *(v427 + 104) = MEMORY[0x1E69E7CC0];

              *v365 = v427;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v429 = *(v402 + 40);
                v642[0] = *(v402 + 24);
                v642[1] = v429;
                v642[2] = *(v402 + 56);
                v430 = v421;
                v431 = *(v402 + 72);
                v432 = *(v402 + 80);
                v433 = v422;
                v434 = *(v402 + 88);
                v435 = *(v402 + 96);
                swift_allocObject();
                outlined init with copy of BigString(v642, &v590);
                swift_unknownObjectRetain();
                v436 = v432;
                v421 = v430;
                v437 = v435;
                v422 = v433;
                v438 = AttributedString.Guts.init(string:runs:)(v642, v431, v436, v434, v437);

                v402 = v438;
              }

              v439 = *(v402 + 40);
              v639 = *(v402 + 24);
              v640 = v439;
              v641 = *(v402 + 56);
              swift_unknownObjectRetain();
              v568 = v422;
              v569 = v421;
              v440 = BigString.UnicodeScalarView.index(roundingDown:)();
              swift_unknownObjectRelease();
              v441 = *(v402 + 40);
              v636 = *(v402 + 24);
              v637 = v441;
              v638 = *(v402 + 56);
              swift_unknownObjectRetain();
              v442 = BigString.UnicodeScalarView.index(roundingDown:)();
              swift_unknownObjectRelease();
              v443 = v442 >> 11;
              v566 = v440 >> 11;
              v444 = v580;
              specialized AttributedString._InternalRuns.replaceUTF8Subrange<A>(_:with:)(v440 >> 11, v442 >> 11, (v442 >> 11) - (v440 >> 11), v580, v578);
              v445 = v444 + 64;
              v446 = 1 << *(v444 + 32);
              if (v446 < 64)
              {
                v447 = ~(-1 << v446);
              }

              else
              {
                v447 = -1;
              }

              v448 = v447 & *(v444 + 64);
              v449 = (v446 + 63) >> 6;

              v450 = 0;
              v451 = MEMORY[0x1E69E7CC0];
              if (!v448)
              {
                goto LABEL_280;
              }

              do
              {
LABEL_278:
                while (1)
                {
                  v452 = __clz(__rbit64(v448));
                  v448 &= v448 - 1;
                  outlined init with copy of AttributedString._AttributeValue(*(v580 + 56) + 72 * (v452 | (v450 << 6)), v600);
                  v453 = *(&v601 + 1);
                  v454 = v602;
                  outlined copy of AttributedString.AttributeRunBoundaries?(*(&v601 + 1), v602);
                  outlined destroy of AttributedString._AttributeValue(v600);
                  if (v454 != 1)
                  {
                    break;
                  }

                  if (!v448)
                  {
                    goto LABEL_280;
                  }
                }

                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v451 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v451 + 2) + 1, 1, v451);
                }

                v457 = *(v451 + 2);
                v456 = *(v451 + 3);
                v458 = v457 + 1;
                if (v457 >= v456 >> 1)
                {
                  v563 = v457 + 1;
                  v460 = v451;
                  v461 = v457;
                  v462 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v456 > 1), v457 + 1, 1, v460);
                  v458 = v563;
                  v457 = v461;
                  v451 = v462;
                }

                *(v451 + 2) = v458;
                v459 = &v451[16 * v457];
                *(v459 + 4) = v453;
                *(v459 + 5) = v454;
              }

              while (v448);
LABEL_280:
              while (1)
              {
                v455 = v450 + 1;
                if (__OFADD__(v450, 1))
                {
                  goto LABEL_343;
                }

                if (v455 >= v449)
                {

                  AttributedString.Guts.enforceAttributeConstraintsAfterMutation(in:type:constraintsInvolved:)(v566, v443, 0, v451);
                  outlined destroy of AttributedString.Runs.Run(&v644);

                  v141 = v554;

                  *v141 = v402;
                  *&v590 = v402;
                  *(&v590 + 1) = v569;
                  *&v591 = v568;
                  *(&v591 + 1) = v577;
                  *&v592 = v575;
                  *(&v592 + 1) = v574;
                  *&v593 = v573;
                  *(&v593 + 1) = v572;
                  v594 = v571;
                  v595 = v570;
                  outlined destroy of AttributedSubstring(&v590);
                  v91 = v581;
                  goto LABEL_22;
                }

                v448 = *(v445 + 8 * v455);
                ++v450;
                if (v448)
                {
                  v450 = v455;
                  goto LABEL_278;
                }
              }
            }

            v601 = v592;
            v602 = v593;
            v603 = v594;
            v600[0] = v590;
            v600[1] = v591;
            outlined init with copy of AttributedString._AttributeValue(v600, v588);

            v374 = v604;
            v375 = swift_isUniquelyReferenced_nonNull_native();
            v587 = v374;
            v376 = specialized __RawDictionaryStorage.find<A>(_:)(v372, v371);
            v378 = *(v374 + 16);
            v379 = (v377 & 1) == 0;
            v380 = __OFADD__(v378, v379);
            v381 = v378 + v379;
            if (v380)
            {
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
              goto LABEL_368;
            }

            v382 = v377;
            if (*(v374 + 24) >= v381)
            {
              if (v375)
              {
                v383 = v374;
                if (v377)
                {
LABEL_255:
                  v385 = *(v383 + 56) + 72 * v376;
                  v387 = *(v385 + 16);
                  v386 = *(v385 + 32);
                  v388 = *(v385 + 48);
                  v594 = *(v385 + 64);
                  v593 = v388;
                  v590 = *v385;
                  v591 = v387;
                  v592 = v386;
                  v389 = *(v383 + 56) + 72 * v376;
                  v390 = v588[1];
                  v391 = v588[2];
                  v392 = v588[3];
                  *(v389 + 64) = v589;
                  *(v389 + 32) = v391;
                  *(v389 + 48) = v392;
                  *(v389 + 16) = v390;
                  *v389 = v588[0];
                  outlined destroy of AttributedString._AttributeValue(v600);
                  goto LABEL_263;
                }
              }

              else
              {
                v575 = v376;
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation16AttributedStringV15_AttributeValueVGMd);
                v463 = static _DictionaryStorage.copy(original:)();
                v383 = v463;
                if (*(v374 + 16))
                {
                  v464 = (v463 + 64);
                  v465 = (v374 + 64);
                  v466 = ((1 << *(v383 + 32)) + 63) >> 6;
                  v574 = (v374 + 64);
                  if (v383 != v374 || v464 >= &v465[8 * v466])
                  {
                    memmove(v464, v465, 8 * v466);
                  }

                  v467 = 0;
                  *(v383 + 16) = *(v374 + 16);
                  v468 = 1 << *(v374 + 32);
                  if (v468 < 64)
                  {
                    v469 = ~(-1 << v468);
                  }

                  else
                  {
                    v469 = -1;
                  }

                  v470 = v469 & *(v374 + 64);
                  v471 = (v468 + 63) >> 6;
                  if (v470)
                  {
                    do
                    {
                      v472 = __clz(__rbit64(v470));
                      v580 = (v470 - 1) & v470;
LABEL_305:
                      v475 = v472 | (v467 << 6);
                      v476 = 16 * v475;
                      v477 = *(v374 + 56);
                      v478 = (*(v374 + 48) + 16 * v475);
                      v479 = *v478;
                      v577 = v478[1];
                      v578 = v479;
                      v480 = 72 * v475;
                      outlined init with copy of AttributedString._AttributeValue(v477 + 72 * v475, &v590);
                      v481 = (*(v383 + 48) + v476);
                      v482 = v577;
                      *v481 = v578;
                      v481[1] = v482;
                      v483 = *(v383 + 56) + v480;
                      *v483 = v590;
                      v484 = v591;
                      v485 = v592;
                      v486 = v593;
                      *(v483 + 64) = v594;
                      *(v483 + 32) = v485;
                      *(v483 + 48) = v486;
                      *(v483 + 16) = v484;

                      v365 = v554;
                      v470 = v580;
                    }

                    while (v580);
                  }

                  v473 = v467;
                  while (1)
                  {
                    v467 = v473 + 1;
                    if (__OFADD__(v473, 1))
                    {
                      goto LABEL_374;
                    }

                    if (v467 >= v471)
                    {
                      break;
                    }

                    v474 = *&v574[8 * v467];
                    ++v473;
                    if (v474)
                    {
                      v472 = __clz(__rbit64(v474));
                      v580 = (v474 - 1) & v474;
                      goto LABEL_305;
                    }
                  }
                }

                v376 = v575;
                if (v382)
                {
                  goto LABEL_255;
                }
              }
            }

            else
            {
              specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v381, v375);
              v383 = v587;
              v376 = specialized __RawDictionaryStorage.find<A>(_:)(v372, v371);
              if ((v382 & 1) != (v384 & 1))
              {
LABEL_381:
                KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                return;
              }

              if (v382)
              {
                goto LABEL_255;
              }
            }

            specialized _NativeDictionary._insert(at:key:value:)(v376, v372, v371, v588, v383);

            outlined destroy of AttributedString._AttributeValue(v600);
            v590 = 0u;
            v591 = 0u;
            v592 = 0u;
            v593 = 0u;
            v594 = 0;
            goto LABEL_263;
          }

          if (v560 != 2)
          {
LABEL_153:
            if (v260 >= v259 >> 10)
            {
LABEL_369:
              __break(1u);
LABEL_370:
              __break(1u);
              goto LABEL_371;
            }

            goto LABEL_154;
          }
        }

LABEL_379:
        __break(1u);
        goto LABEL_380;
      }

      v60 = v86;
    }

    v57(v60, v39);
    v87 = v570;
    v88 = v571;
    v89 = v575;
    v90 = *(v575 + 72);
    v91 = v581;
    v92 = v566;
    if (v90)
    {
      v90 = *(v90 + 18);
    }

    v580 = v90;
    v578 = *(v575 + 96);
    v93 = *(v575 + 40);
    v700 = *(v575 + 24);
    v701 = v93;
    v702 = *(v575 + 56);
    v94 = BigString.startIndex.getter();
    v577 = v95;
    v573 = v97;
    v574 = v96;
    v98 = *(v89 + 72);
    *&v565 = *(v89 + 96);
    if (v98)
    {
      v572 = *(v98 + 18);
      v99 = *(v87 + 8);
      swift_unknownObjectRetain();
      v100 = v586;
      v99(v568, v586);
      v101 = v100;
      v89 = v575;
      v99(v88, v101);
      swift_unknownObjectRelease();
    }

    else
    {
      v102 = *(v87 + 8);
      v103 = v586;
      v102(v568, v586);
      v102(v88, v103);
      v572 = 0;
    }

    v104 = *(v89 + 40);
    v699[2] = *(v89 + 24);
    v699[3] = v104;
    v699[4] = *(v89 + 56);
    v105 = BigString.startIndex.getter();
    v109 = 0;
    v110 = 0;
    v111 = 0;
    v567 = 0;
    v575 = 0;
    v112 = -1;
    v113 = v94;
    v114 = v94;
    v116 = v577;
    v115 = v578;
    v117 = v577;
    v119 = v573;
    v118 = v574;
    v120 = v574;
    v121 = v573;
    v122 = v105;
    v123 = v106;
    v124 = v107;
    v125 = v108;
    v126 = -1;
    v127 = v580;
    goto LABEL_17;
  }
}

unint64_t lazy protocol witness table accessor for type NSInlinePresentationIntent and conformance NSInlinePresentationIntent()
{
  result = lazy protocol witness table cache variable for type NSInlinePresentationIntent and conformance NSInlinePresentationIntent;
  if (!lazy protocol witness table cache variable for type NSInlinePresentationIntent and conformance NSInlinePresentationIntent)
  {
    type metadata accessor for NSInlinePresentationIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSInlinePresentationIntent and conformance NSInlinePresentationIntent);
  }

  return result;
}

uint64_t objectdestroy_80Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double _s10Foundation16AttributedStringV22MarkdownSourcePositionVSg_SnyAC5IndexVGtSgWOi0_(uint64_t a1)
{
  result = 0.0;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 2;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  return result;
}

__n128 PersonNameComponents.FormatStyle.locale.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *(v1 + 8) = *a1;
  return result;
}

uint64_t PersonNameComponents.FormatStyle.attributed.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *v1;
  *(a1 + 8) = *(v1 + 8);
  return swift_unknownObjectRetain();
}

__n128 PersonNameComponents.FormatStyle.init(style:locale:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  result = *a2;
  *(a3 + 8) = *a2;
  return result;
}

uint64_t PersonNameComponents.FormatStyle.locale(_:)@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *v2;
  *(a2 + 8) = *a1;
  return swift_unknownObjectRetain();
}

id PersonNameComponents.FormatStyle.format(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v4 = *(v1 + 2);
  v5 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
  [v5 setStyle_];
  ObjectType = swift_getObjectType();
  v7 = (*(v4 + 488))(ObjectType, v4);
  [v5 setLocale_];

  [*(v2 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSPersonNameComponents();
  swift_dynamicCast();
  v8 = [v5 stringFromPersonNameComponents_];

  if (!v8)
  {

    return 0;
  }

  isTaggedPointer = _objc_isTaggedPointer(v8);
  v10 = v8;
  v11 = v10;
  if ((isTaggedPointer & 1) == 0)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v10);
  if (!TaggedPointerTag)
  {
    _CFIndirectTaggedPointerStringGetContents();
    v21 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (v22)
    {
      v23 = v21;

LABEL_23:
      return v23;
    }

    [v11 mutableCopy];
    _bridgeAnyObjectToAny(_:)();

    swift_unknownObjectRelease();
    swift_dynamicCast();
    v23 = v24;
LABEL_22:

    goto LABEL_23;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v13 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      return v13;
    }

LABEL_7:
    if (__CFStringIsCF())
    {

      return 0;
    }

    v15 = v11;
    v16 = String.init(_nativeStorage:)();
    if (v17)
    {
      v18 = v16;

      return v18;
    }

    if (![v15 length])
    {

      return 0;
    }

    v23 = String.init(_cocoaString:)();
    goto LABEL_22;
  }

  result = [v11 UTF8String];
  if (result)
  {
    result = String.init(utf8String:)(result);
    if (v19)
    {
      v20 = result;

      return v20;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t PersonNameComponents.FormatStyle.Style.init(rawValue:)@<X0>(unint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 0x302010004uLL >> (8 * result);
  if (result >= 5)
  {
    LOBYTE(v2) = 4;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonNameComponents.FormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonNameComponents.FormatStyle.CodingKeys and conformance PersonNameComponents.FormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonNameComponents.FormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonNameComponents.FormatStyle.CodingKeys and conformance PersonNameComponents.FormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id protocol witness for FormatStyle.format(_:) in conformance PersonNameComponents.FormatStyle@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = PersonNameComponents.FormatStyle.format(_:)(a1);
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t PersonNameComponents.AttributedStyle.format(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = *v2;
  v7 = *(v2 + 2);
  v8 = [objc_allocWithZone(NSPersonNameComponentsFormatter) init];
  [v8 setStyle_];
  ObjectType = swift_getObjectType();
  v10 = (*(v7 + 488))(ObjectType, v7);
  [v8 setLocale_];

  [*(v5 + 16) copy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  type metadata accessor for NSPersonNameComponents();
  swift_dynamicCast();
  v11 = [v8 annotatedStringFromPersonNameComponents_];

  v12 = _s10Foundation14AttributeScopePAAE16scopeDescription33_4D406B8DD906487F9F362CE42830919ELLAA0cE0AELLVvgZAA0B6ScopesO0A10AttributesV_Ttg5();

  v13 = [v11 string];
  if (v13)
  {
    v14 = v13;
    isTaggedPointer = _objc_isTaggedPointer(v13);
    v16 = v14;
    v17 = v16;
    if (isTaggedPointer)
    {
      TaggedPointerTag = _objc_getTaggedPointerTag(v16);
      switch(TaggedPointerTag)
      {
        case 0:
          v50[0] = 0;
          _CFIndirectTaggedPointerStringGetContents();
          _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (v23)
          {
          }

          else
          {
            [v17 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
          }

LABEL_21:

          goto LABEL_22;
        case 0x16:
          v21 = [v17 UTF8String];
          if (v21)
          {
            String.init(utf8String:)(v21);
            if (v22)
            {
              goto LABEL_8;
            }
          }

          else
          {
            __break(1u);
          }

          __break(1u);
          goto LABEL_42;
        case 2:
          v3 = &v44;
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          goto LABEL_22;
      }
    }

    LOBYTE(v51[0]) = 0;
    *&v60 = 0;
    LOBYTE(v50[0]) = 0;
    LOBYTE(v56) = 0;
    if (__CFStringIsCF())
    {
LABEL_8:

      goto LABEL_22;
    }

    v19 = v17;
    String.init(_nativeStorage:)();
    if (v20 || (*&v60 = [v19 length], !v60))
    {

      goto LABEL_22;
    }

    String.init(_cocoaString:)();
    goto LABEL_21;
  }

LABEL_22:
  BigString.init(_:)();
  v51[0] = 0;
  MEMORY[0x1865D26B0](v51, 8);
  v56 = 0;
  v57 = 0;
  v58 = 0;
  v59 = v51[0];
  v55 = 0;
  v54[0] = BigString.startIndex.getter();
  v54[1] = v24;
  v54[2] = v25;
  v54[3] = v26;
  v53[0] = v54[0];
  v53[1] = v24;
  v53[2] = v25;
  v53[3] = v26;
  v47 = 0;
  v48 = MEMORY[0x1E69E7CC8];
  v49 = MEMORY[0x1E69E7CD0];
  v46 = 0;
  v27 = [v11 length];
  v28 = swift_allocObject();
  v29 = v61;
  *(v28 + 56) = v60;
  *(v28 + 16) = v12;
  *(v28 + 24) = 0;
  *(v28 + 32) = &v55;
  *(v28 + 40) = v53;
  *(v28 + 48) = v54;
  *(v28 + 72) = v29;
  *(v28 + 88) = v62;
  *(v28 + 104) = &v47;
  *(v28 + 112) = &v56;
  *(v28 + 120) = &v46;
  v30 = swift_allocObject();
  *(v30 + 16) = partial apply for closure #1 in AttributedString.init(_:attributeTable:options:);
  *(v30 + 24) = v28;
  v51[4] = _sSDySo21NSAttributedStringKeyaypGSo8_NSRangeVSpy10ObjectiveC8ObjCBoolVGIggyy_AceIIeggyy_TRTA_0;
  v52 = v30;
  v51[0] = MEMORY[0x1E69E9820];
  v51[1] = 1107296256;
  v51[2] = thunk for @escaping @callee_guaranteed (@guaranteed [NSAttributedStringKey : Any], @unowned _NSRange, @unowned UnsafeMutablePointer<ObjCBool>) -> ();
  v51[3] = &block_descriptor_27;
  v31 = _Block_copy(v51);
  v32 = v52;

  outlined init with copy of BigString(&v60, v50);

  [v11 enumerateAttributesInRange:0 options:v27 usingBlock:{0, v31}];
  _Block_release(v31);
  LOBYTE(v27) = swift_isEscapingClosureAtFileLocation();

  if (v27)
  {
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v17 = v55;
  if (v55)
  {
LABEL_42:
    swift_willThrow();
    v43 = v17;
    outlined destroy of BigString(&v60);

    swift_unknownObjectRelease();
    result = swift_unexpectedError();
    __break(1u);
    return result;
  }

  v45 = a2;
  v33 = v47;
  if (v47 >= 1)
  {
    v34 = v48;
    v35 = v49;

    specialized Rope.append(_:)(v33, v34, v35);
  }

  v32 = v56;
  v3 = v57;
  a2 = v58;
  v31 = v59;
  type metadata accessor for AttributedString.Guts();
  v30 = swift_allocObject();
  v36 = BigString.isEmpty.getter() & 1;
  outlined init with copy of BigString(&v60, v51);
  v37 = swift_unknownObjectRetain();
  specialized Rope._endPath.getter(v37);
  if (v32)
  {
    v38 = a2 == 0;
  }

  else
  {
    v38 = 1;
  }

  v39 = v38;
  if (v39 != v36)
  {
    goto LABEL_38;
  }

  if (one-time initialization token for _nextVersion != -1)
  {
LABEL_39:
    swift_once();
  }

  add_explicit = atomic_fetch_add_explicit(&static AttributedString.Guts._nextVersion, 1uLL, memory_order_relaxed);
  v41 = v61;
  *(v30 + 24) = v60;
  *(v30 + 16) = add_explicit;
  *(v30 + 40) = v41;
  *(v30 + 56) = v62;
  *(v30 + 72) = v32;
  *(v30 + 80) = v3;
  *(v30 + 88) = a2;
  *(v30 + 96) = v31;
  *(v30 + 104) = MEMORY[0x1E69E7CC0];
  if (v46 == 1)
  {
    AttributedString.Guts.adjustConstrainedAttributesForUntrustedRuns()();
  }

  outlined destroy of BigString(&v60);

  result = swift_unknownObjectRelease();
  *v45 = v30;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PersonNameComponents.FormatStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C797473 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PersonNameComponents.AttributedStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonNameComponents.AttributedStyle.CodingKeys and conformance PersonNameComponents.AttributedStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PersonNameComponents.AttributedStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PersonNameComponents.AttributedStyle.CodingKeys and conformance PersonNameComponents.AttributedStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PersonNameComponents.FormatStyle.encode(to:)(void *a1, uint64_t *a2, uint64_t a3, void (*a4)(void))
{
  v14 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  v10 = *v4;
  v13 = *(v4 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v14();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = v10;
  v17 = 0;
  lazy protocol witness table accessor for type PersonNameComponents.FormatStyle.Style and conformance PersonNameComponents.FormatStyle.Style();
  v11 = v15;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v11)
  {
    v16 = v13;
    v17 = 1;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    swift_unknownObjectRetain();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    swift_unknownObjectRelease();
  }

  return (*(v7 + 8))(v9, v6);
}

void PersonNameComponents.FormatStyle.hash(into:)(Swift::Int a1)
{
  v3 = *(v1 + 2);
  MEMORY[0x1865CD060](*v1 + 1);
  ObjectType = swift_getObjectType();
  if ((*(v3 + 48))(ObjectType, v3))
  {
    v5 = 1;
LABEL_5:
    Hasher._combine(_:)(v5);
    return;
  }

  Hasher._combine(_:)(0);
  (*(v3 + 64))(ObjectType, v3);
  String.hash(into:)();

  (*(v3 + 464))(&v45, ObjectType, v3);
  v53[6] = v51;
  v54[0] = *v52;
  *(v54 + 12) = *&v52[12];
  v53[2] = v47;
  v53[3] = v48;
  v53[4] = v49;
  v53[5] = v50;
  v53[0] = v45;
  v53[1] = v46;
  if (_s10Foundation17LocalePreferencesVSgWOg(v53) == 1)
  {
    v5 = 0;
    goto LABEL_5;
  }

  v6 = v45;
  v7 = *(&v45 + 1);
  v8 = *(&v46 + 1);
  v9 = *(&v47 + 1);
  v38 = v48;
  v10 = v50;
  v39 = v49;
  v40 = *(&v50 + 1);
  v41 = v51;
  v11 = *v52;
  v12 = v52[24];
  v42 = *&v52[16];
  v43 = v52[25];
  v44 = v52[26];
  v13 = v52[27];
  Hasher._combine(_:)(1u);
  if (v6 == 2)
  {
    v14 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v14 = v6 & 1;
  }

  Hasher._combine(_:)(v14);
  if (v7)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v7 + 16));
    v15 = *(v7 + 16);
    if (v15)
    {
      v16 = v7 + 40;
      do
      {

        String.hash(into:)();

        v16 += 16;
        --v15;
      }

      while (v15);
    }

    if (v8)
    {
      goto LABEL_14;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v8)
    {
LABEL_14:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_17;
    }
  }

  Hasher._combine(_:)(0);
LABEL_17:
  v17 = v12;
  if (v9)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v18 = v10;
  if (v38)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v38, v19, v20, v21, v22, v23, v24);
    v25 = v43;
    if (*(&v38 + 1))
    {
LABEL_22:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, *(&v38 + 1), v26, v27, v28, v29, v30, v31);
      goto LABEL_25;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v25 = v43;
    if (*(&v38 + 1))
    {
      goto LABEL_22;
    }
  }

  Hasher._combine(_:)(0);
LABEL_25:
  if (v39)
  {
    v32 = v17;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v39 + 1))
    {
      goto LABEL_27;
    }

LABEL_30:
    Hasher._combine(_:)(0);
    v33 = v32;
    if (v18)
    {
      goto LABEL_28;
    }

    goto LABEL_31;
  }

  v32 = v17;
  Hasher._combine(_:)(0);
  if (!*(&v39 + 1))
  {
    goto LABEL_30;
  }

LABEL_27:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  v33 = v32;
  if (v18)
  {
LABEL_28:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_32;
  }

LABEL_31:
  Hasher._combine(_:)(0);
LABEL_32:
  if (v40)
  {
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v34 = *(&v41 + 1);
    if (v41)
    {
      goto LABEL_34;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v34 = *(&v41 + 1);
    if (v41)
    {
LABEL_34:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      _sSo15CFDictionaryRefaAB14CoreFoundation9_CFObjectSCWlTm_2(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v34)
      {
        goto LABEL_35;
      }

      goto LABEL_43;
    }
  }

  Hasher._combine(_:)(0);
  if (v34)
  {
LABEL_35:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v34);
    if (v11)
    {
      goto LABEL_36;
    }

    goto LABEL_44;
  }

LABEL_43:
  Hasher._combine(_:)(0);
  if (v11)
  {
LABEL_36:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v11);
    v35 = v13;
    if (v42)
    {
      goto LABEL_37;
    }

    goto LABEL_45;
  }

LABEL_44:
  Hasher._combine(_:)(0);
  v35 = v13;
  if (v42)
  {
LABEL_37:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v33 == 2)
    {
      goto LABEL_38;
    }

    goto LABEL_46;
  }

LABEL_45:
  Hasher._combine(_:)(0);
  if (v33 == 2)
  {
LABEL_38:
    Hasher._combine(_:)(0);
    if (v25 != 2)
    {
      goto LABEL_39;
    }

LABEL_47:
    Hasher._combine(_:)(0);
    if (v44 != 2)
    {
      goto LABEL_40;
    }

LABEL_48:
    v36 = 0;
    goto LABEL_49;
  }

LABEL_46:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v33 & 1);
  if (v25 == 2)
  {
    goto LABEL_47;
  }

LABEL_39:
  Hasher._combine(_:)(1u);
  MEMORY[0x1865CD060](v25 & 1);
  if (v44 == 2)
  {
    goto LABEL_48;
  }

LABEL_40:
  Hasher._combine(_:)(1u);
  v36 = v44 & 1;
LABEL_49:
  Hasher._combine(_:)(v36);
  if (v35 == 2)
  {
    v37 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v37 = v35 & 1;
  }

  Hasher._combine(_:)(v37);
  outlined destroy of LocalePreferences?(&v45);
}