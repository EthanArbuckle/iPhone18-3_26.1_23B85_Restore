uint64_t BinaryInteger.formatted<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v19[1] = a5;
  v19[2] = a6;
  v19[3] = a1;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  v15 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v17 = v19 - v16;
  (*(v10 + 16))(v12, v6, a2, v15);
  dispatch thunk of BinaryInteger.init<A>(_:)();
  (*(a4 + 48))(v17, a3, a4);
  return (*(v14 + 8))(v17, AssociatedTypeWitness);
}

uint64_t BinaryInteger.init<A>(_:strategy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25[2] = a7;
  v25[3] = a5;
  v25[0] = a8;
  v25[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v25 - v19;
  v21 = *(a6 + 48);
  v26 = a1;
  v21(a1, a4, a6, v18);
  if (v8)
  {
    (*(*(a4 - 8) + 8))(a2, a4);
    v22 = swift_getAssociatedTypeWitness();
    return (*(*(v22 - 8) + 8))(v26, v22);
  }

  else
  {
    (*(v14 + 16))(v16, v20, AssociatedTypeWitness);
    dispatch thunk of BinaryInteger.init<A>(_:)();
    (*(*(a4 - 8) + 8))(a2, a4);
    v24 = swift_getAssociatedTypeWitness();
    (*(*(v24 - 8) + 8))(v26, v24);
    return (*(v14 + 8))(v20, AssociatedTypeWitness);
  }
}

uint64_t BinaryInteger.init<A>(_:strategy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  (*(a6 + 48))(a1, a4, a6);
  (*(*(a4 - 8) + 8))(a2, a4);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return (*(*(AssociatedTypeWitness - 8) + 8))(a1, AssociatedTypeWitness);
}

id BinaryInteger.init(_:format:lenient:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  return BinaryInteger.init(_:format:lenient:)(a1, a2, a3, a4, a5, a6, type metadata accessor for IntegerFormatStyle, a7, IntegerFormatStyle.format(_:));
}

{
  return BinaryInteger.init(_:format:lenient:)(a1, a2, a3, a4, a5, a6, type metadata accessor for IntegerFormatStyle.Percent, a7, IntegerFormatStyle.Percent.format(_:));
}

{
  return BinaryInteger.init(_:format:lenient:)(a1, a2, a3, a4, a5, a6, type metadata accessor for IntegerFormatStyle.Currency, a7, IntegerFormatStyle.Currency.format(_:));
}

id BinaryInteger.init(_:format:lenient:)@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(uint64_t, uint64_t, uint64_t, double)@<X6>, uint64_t a8@<X8>, uint64_t (*a9)(char *, uint64_t))
{
  LODWORD(v171) = a4;
  v175 = a1;
  v164 = a8;
  v186[6] = *MEMORY[0x1E69E9840];
  v163 = *(*(a6 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v161 = &v156 - v14;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v160 = type metadata accessor for Optional();
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v17 = (&v156 - v16);
  v165 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v158 = &v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v157 = &v156 - v22;
  v23 = a7(255, a5, a6, v21);
  swift_getWitnessTable();
  v24 = type metadata accessor for IntegerParseStrategy();
  v169 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v156 - v25;
  v167 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v166 = &v156 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30.n128_f64[0] = MEMORY[0x1EEE9AC00](v29);
  v32 = &v156 - v31;
  v168 = *(v23 - 8);
  v33 = *(v168 + 16);
  v170 = a3;
  v173 = v23;
  v34 = v23;
  v36 = v35;
  v33(v26, a3, v34, v30);
  v37 = v175;
  v38 = *(v36 + 44);
  v176 = v26;
  v26[v38] = v171;
  v39 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v39 = v37 & 0xFFFFFFFFFFFFLL;
  }

  v174 = a2;
  if (v39)
  {
    specialized BidirectionalCollection._trimmingCharacters(while:)(v37, a2);
    v40 = String.init(_:)();
    v42 = v41;
  }

  else
  {
    v40 = 0;
    v42 = 0xE000000000000000;
  }

  v43 = HIBYTE(v42) & 0xF;
  if ((v42 & 0x2000000000000000) == 0)
  {
    v43 = v40;
  }

  v44 = 7;
  if (((v42 >> 60) & ((v40 & 0x800000000000000) == 0)) != 0)
  {
    v44 = 11;
  }

  v45 = v176;
  v46 = v172;
  IntegerParseStrategy.parse(_:startingAt:in:)(v40, v42, 0xFuLL, v44 | (v43 << 16), v36, v17);
  if (v46)
  {

    (*(v168 + 8))(v170, v173);
    return (*(v169 + 8))(v45, v36);
  }

  v48 = v165;
  if ((*(v165 + 48))(v17, 1, TupleTypeMetadata2) != 1)
  {

    (*(v169 + 8))(v176, v36);
    v60 = *(v48 + 32);
    v176 = 0;
    v61 = v157;
    v60(v157, v17, TupleTypeMetadata2);
    v62 = v158;
    v60(v158, v61, TupleTypeMetadata2);
    v63 = v167;
    (*(v167 + 32))(v32, &v62[*(TupleTypeMetadata2 + 48)], a5);
    (*(v63 + 16))(v166, v32, a5);
    dispatch thunk of BinaryInteger.init<A>(_:)();
    (*(v168 + 8))(v170, v173);
    return (*(v63 + 8))(v32, a5);
  }

  (*(v159 + 8))(v17, v160);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  v49 = v166;
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v50 = a9(v49, v173);
  v52 = v51;
  (*(v167 + 8))(v49, a5);
  v181 = v50;
  v182 = v52;
  isTaggedPointer = _objc_isTaggedPointer(@"NSDebugDescription");
  v54 = @"NSDebugDescription";
  v55 = v54;
  v172 = v36;
  v171 = v52;
  if (isTaggedPointer)
  {
    TaggedPointerTag = _objc_getTaggedPointerTag(v54);
    switch(TaggedPointerTag)
    {
      case 0:
        v179 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v71 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v72)
        {
          v57 = v71;
          v59 = v72;
        }

        else
        {
          [(__CFString *)v55 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v57 = v177;
          v59 = v178;
        }

        goto LABEL_42;
      case 0x16:
        result = [(__CFString *)v55 UTF8String];
        if (result)
        {
          result = String.init(utf8String:)(result);
          v66 = v174;
          if (v70)
          {
            v57 = result;
            v59 = v70;
LABEL_48:

            goto LABEL_52;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_171;
      case 2:
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        *(&v156 - 2) = v55;
        v57 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v59 = v58;

LABEL_42:
        v66 = v174;
        goto LABEL_52;
    }
  }

  LOBYTE(v177) = 0;
  v183 = 0;
  LOBYTE(v179) = 0;
  v180 = 0;
  IsCF = __CFStringIsCF();
  if (!IsCF)
  {
    v67 = v55;
    v68 = String.init(_nativeStorage:)();
    v66 = v174;
    if (v69)
    {
      v57 = v68;
      v59 = v69;

      goto LABEL_52;
    }

    v183 = [(__CFString *)v67 length];
    if (v183)
    {
      goto LABEL_50;
    }

LABEL_27:
    v57 = 0;
    v59 = 0xE000000000000000;
    goto LABEL_52;
  }

  v65 = v183;
  v66 = v174;
  if (!v183)
  {

    goto LABEL_27;
  }

  if (v180 == 1)
  {
    if (v177)
    {
      lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
    }

    else
    {
      lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
    }

    v73 = String.init<A>(_immortalCocoaString:count:encoding:)();
    goto LABEL_51;
  }

  if (v179)
  {
    if (v177 == 1)
    {
      MEMORY[0x1EEE9AC00](IsCF);
      *(&v156 - 4) = v55;
      *(&v156 - 3) = &v183;
      *(&v156 - 4) = 1536;
      *(&v156 - 1) = v65;
    }

    else
    {
      v75 = [(__CFString *)v55 lengthOfBytesUsingEncoding:4];
      MEMORY[0x1EEE9AC00](v75);
      *(&v156 - 4) = v55;
      *(&v156 - 3) = &v183;
      *(&v156 - 4) = 134217984;
      *(&v156 - 1) = v76;
    }

    v77 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
    v59 = v78;
    v79 = HIBYTE(v78) & 0xF;
    if ((v78 & 0x2000000000000000) == 0)
    {
      v79 = v77 & 0xFFFFFFFFFFFFLL;
    }

    if (v79)
    {
      v57 = v77;
      goto LABEL_48;
    }
  }

LABEL_50:
  v73 = String.init(_cocoaString:)();
LABEL_51:
  v57 = v73;
  v59 = v74;
LABEL_52:
  v186[0] = v57;
  v186[1] = v59;
  v183 = 0;
  v184 = 0xE000000000000000;
  _StringGuts.grow(_:)(73);
  MEMORY[0x1865CB0E0](0x7020746F6E6E6143, 0xED00002065737261);
  MEMORY[0x1865CB0E0](v175, v66);
  MEMORY[0x1865CB0E0](0xD000000000000038, 0x800000018147EBF0);
  v80 = MEMORY[0x1E69E6158];
  _print_unlocked<A, B>(_:_:)();
  v186[5] = v80;
  v186[2] = v183;
  v186[3] = v184;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd);
  v81 = static _DictionaryStorage.allocate(capacity:)();
  outlined init with copy of (String, Any)(v186, &v183);

  outlined destroy of (String, Any)(v186);
  v82 = v183;
  v83 = v184;
  v84 = specialized __RawDictionaryStorage.find<A>(_:)(v183, v184);
  v86 = v85;

  if (v86)
  {
    __break(1u);
    goto LABEL_167;
  }

  v81[(v84 >> 6) + 8] |= 1 << v84;
  v87 = (v81[6] + 16 * v84);
  *v87 = v82;
  v87[1] = v83;
  outlined init with take of Any(&v185, (v81[7] + 32 * v84));
  v88 = v81[2];
  v89 = __OFADD__(v88, 1);
  v90 = v88 + 1;
  if (v89)
  {
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v81[2] = v90;
  v91 = _objc_isTaggedPointer(@"NSCocoaErrorDomain");
  v92 = @"NSCocoaErrorDomain";
  v93 = v92;
  v94 = v91;
  if (!v91)
  {
    goto LABEL_59;
  }

  v95 = _objc_getTaggedPointerTag(v92);
  switch(v95)
  {
    case 0:
LABEL_70:
      v179 = 0;
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v101)
      {
        [(__CFString *)v93 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        goto LABEL_87;
      }

      goto LABEL_84;
    case 0x16:
      result = [(__CFString *)v93 UTF8String];
      if (result)
      {
        String.init(utf8String:)(result);
        if (v100)
        {
          goto LABEL_84;
        }

        __break(1u);
        goto LABEL_70;
      }

LABEL_171:
      __break(1u);
      goto LABEL_172;
    case 2:
      MEMORY[0x1EEE9AC00](v95);
      *(&v156 - 2) = v93;
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      goto LABEL_87;
  }

LABEL_59:
  LOBYTE(v177) = 0;
  v183 = 0;
  LOBYTE(v179) = 0;
  v180 = 0;
  v96 = __CFStringIsCF();
  if (!v96)
  {
    v98 = v93;
    String.init(_nativeStorage:)();
    if (v99 || (v183 = [(__CFString *)v98 length]) == 0)
    {

      goto LABEL_87;
    }

    goto LABEL_86;
  }

  v97 = v183;
  if (!v183)
  {
LABEL_84:

    goto LABEL_87;
  }

  if (v180 != 1)
  {
    if (v179)
    {
      if (v177 == 1)
      {
        MEMORY[0x1EEE9AC00](v96);
        *(&v156 - 4) = v93;
        *(&v156 - 3) = &v183;
        *(&v156 - 4) = 1536;
        *(&v156 - 1) = v97;
      }

      else
      {
        v102 = [(__CFString *)v93 lengthOfBytesUsingEncoding:4];
        MEMORY[0x1EEE9AC00](v102);
        *(&v156 - 4) = v93;
        *(&v156 - 3) = &v183;
        *(&v156 - 4) = 134217984;
        *(&v156 - 1) = v103;
      }

      v104 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v106 = HIBYTE(v105) & 0xF;
      if ((v105 & 0x2000000000000000) == 0)
      {
        v106 = v104 & 0xFFFFFFFFFFFFLL;
      }

      if (v106)
      {
        goto LABEL_84;
      }
    }

LABEL_86:
    String.init(_cocoaString:)();
    goto LABEL_87;
  }

  if (v177)
  {
    lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
  }

  else
  {
    lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
  }

  String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_87:
  v107 = objc_allocWithZone(NSError);
  v108 = String._bridgeToObjectiveCImpl()();

  v109 = [v107 initWithDomain:v108 code:2048 userInfo:_NativeDictionary.bridged()()];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v175 = v109;
  v110 = [v109 domain];
  if (!v110)
  {
    v116 = 0;
    v118 = 0xE000000000000000;
    goto LABEL_126;
  }

  v111 = v110;
  v112 = _objc_isTaggedPointer(v110);
  v113 = v111;
  v114 = v113;
  if ((v112 & 1) == 0)
  {
LABEL_93:
    LOBYTE(v177) = 0;
    v183 = 0;
    LOBYTE(v179) = 0;
    v180 = 0;
    v119 = __CFStringIsCF();
    if (v119)
    {
      v120 = v183;
      if (v183)
      {
        if (v180 == 1)
        {
          if (v177)
          {
            lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
          }

          else
          {
            lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
          }

          v127 = String.init<A>(_immortalCocoaString:count:encoding:)();
          goto LABEL_124;
        }

        if (v179)
        {
          if (v177 == 1)
          {
            MEMORY[0x1EEE9AC00](v119);
            *(&v156 - 4) = v114;
            *(&v156 - 3) = &v183;
            *(&v156 - 4) = 1536;
            *(&v156 - 1) = v120;
          }

          else
          {
            v129 = [v114 lengthOfBytesUsingEncoding_];
            MEMORY[0x1EEE9AC00](v129);
            *(&v156 - 4) = v114;
            *(&v156 - 3) = &v183;
            *(&v156 - 4) = 134217984;
            *(&v156 - 1) = v130;
          }

          v125 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v118 = v131;
          v132 = HIBYTE(v131) & 0xF;
          if ((v131 & 0x2000000000000000) == 0)
          {
            v132 = v125 & 0xFFFFFFFFFFFFLL;
          }

          if (v132)
          {
LABEL_120:
            v116 = v125;
            goto LABEL_121;
          }
        }

LABEL_123:
        v127 = String.init(_cocoaString:)();
LABEL_124:
        v116 = v127;
        v118 = v128;
        goto LABEL_125;
      }
    }

    else
    {
      v121 = v114;
      v122 = String.init(_nativeStorage:)();
      if (v123)
      {
        v118 = v123;
        v116 = v122;

        goto LABEL_126;
      }

      v183 = [v121 length];
      if (v183)
      {
        goto LABEL_123;
      }
    }

    v116 = 0;
    v118 = 0xE000000000000000;
    goto LABEL_126;
  }

  v115 = _objc_getTaggedPointerTag(v113);
  if (!v115)
  {
    v179 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v125 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v126)
    {
      [v114 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v116 = v177;
      v118 = v178;
LABEL_125:

LABEL_126:
      v133 = v93;
      v134 = v133;
      if (!v94)
      {
        goto LABEL_131;
      }

      v135 = _objc_getTaggedPointerTag(v133);
      if (!v135)
      {
        v179 = 0;
        _CFIndirectTaggedPointerStringGetContents();
        v146 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
        if (v147)
        {
          v136 = v146;
          v138 = v147;
        }

        else
        {
          [(__CFString *)v134 mutableCopy];
          _bridgeAnyObjectToAny(_:)();

          swift_unknownObjectRelease();
          swift_dynamicCast();
          v136 = v177;
          v138 = v178;
        }

        goto LABEL_160;
      }

      if (v135 != 22)
      {
        if (v135 == 2)
        {
          MEMORY[0x1EEE9AC00](v135);
          *(&v156 - 2) = v134;
          v136 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v138 = v137;

          v139 = v172;
          goto LABEL_161;
        }

LABEL_131:
        LOBYTE(v177) = 0;
        v183 = 0;
        LOBYTE(v179) = 0;
        v180 = 0;
        v140 = __CFStringIsCF();
        if (v140)
        {
          v141 = v183;
          if (v183)
          {
            v139 = v172;
            if (v180 == 1)
            {
              if (v177)
              {
                lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
              }

              else
              {
                lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              }

              v136 = String.init<A>(_immortalCocoaString:count:encoding:)();
              v138 = v148;
              goto LABEL_161;
            }

            if (v179)
            {
              if (v177 == 1)
              {
                MEMORY[0x1EEE9AC00](v140);
                *(&v156 - 4) = v134;
                *(&v156 - 3) = &v183;
                *(&v156 - 4) = 1536;
                *(&v156 - 1) = v141;
              }

              else
              {
                v149 = [(__CFString *)v134 lengthOfBytesUsingEncoding:4];
                MEMORY[0x1EEE9AC00](v149);
                *(&v156 - 4) = v134;
                *(&v156 - 3) = &v183;
                *(&v156 - 4) = 134217984;
                *(&v156 - 1) = v150;
              }

              v151 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
              v138 = v152;
              v153 = HIBYTE(v152) & 0xF;
              if ((v152 & 0x2000000000000000) == 0)
              {
                v153 = v151 & 0xFFFFFFFFFFFFLL;
              }

              if (v153)
              {
                v136 = v151;

                goto LABEL_160;
              }
            }

LABEL_159:
            v136 = String.init(_cocoaString:)();
            v138 = v154;
            goto LABEL_160;
          }
        }

        else
        {
          v142 = v134;
          v143 = String.init(_nativeStorage:)();
          if (v144)
          {
            v136 = v143;
            v138 = v144;

LABEL_160:
            v139 = v172;
LABEL_161:
            if (v116 == v136 && v118 == v138)
            {

LABEL_165:
              swift_willThrow();

              (*(v168 + 8))(v170, v173);

              return (*(v169 + 8))(v176, v139);
            }

            v155 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v155)
            {
              goto LABEL_165;
            }

LABEL_168:
            __break(1u);
          }

          v183 = [(__CFString *)v142 length];
          if (v183)
          {
            goto LABEL_159;
          }
        }

        v136 = 0;
        v138 = 0xE000000000000000;
        goto LABEL_160;
      }

      result = [(__CFString *)v134 UTF8String];
      if (result)
      {
        result = String.init(utf8String:)(result);
        v139 = v172;
        if (v145)
        {
          v136 = result;
          v138 = v145;

          goto LABEL_161;
        }

        goto LABEL_173;
      }

LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    v118 = v126;
    goto LABEL_120;
  }

  if (v115 != 22)
  {
    if (v115 == 2)
    {
      MEMORY[0x1EEE9AC00](v115);
      *(&v156 - 2) = v114;
      v116 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v118 = v117;

      goto LABEL_126;
    }

    goto LABEL_93;
  }

  result = [v114 UTF8String];
  if (!result)
  {
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  result = String.init(utf8String:)(result);
  if (v124)
  {
    v116 = result;
    v118 = v124;
LABEL_121:

    goto LABEL_125;
  }

LABEL_175:
  __break(1u);
  return result;
}

uint64_t outlined destroy of (String, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_yptMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall NSDecimal.FormatStyle.format(_:)(NSDecimal *a1)
{
  v91 = v2;
  v4 = v1;
  v103 = *MEMORY[0x1E69E9840];
  type metadata accessor for NSDecimal.FormatStyle(0);
  v5 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v7 = v6;
  v8 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 472))(ObjectType, v8);
  v12 = v11;
  if (one-time initialization token for cache != -1)
  {
    v31 = v10;
    swift_once();
    v10 = v31;
  }

  v14 = static ICUNumberFormatter.cache;
  v13 = *algn_1EA7B1D98;
  *&v98 = v5;
  *(&v98 + 1) = v7;
  v93 = v10;
  v99 = v10;
  v100 = v12;
  MEMORY[0x1EEE9AC00](v10);
  os_unfair_lock_lock((v13 + 24));
  LOBYTE(v15) = 0;
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v13 + 16, &v101);
  os_unfair_lock_unlock((v13 + 24));
  v16 = v101;
  if (v101 == 1)
  {
    type metadata accessor for ICUNumberFormatter();
    v16 = swift_allocObject();
    v16[3] = v5;
    v16[4] = v7;
    swift_bridgeObjectRetain_n();
    v17 = MEMORY[0x1865CB200](v5, v7);
    if (v17)
    {
      v18 = v17;
      v19 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v17, 0);

      v15 = specialized Sequence._copySequenceContents(initializing:)(&v101, (v19 + 4), v18, v5, v7);

      if (v15 != v18)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
    }

    LODWORD(v101) = 0;
    if (v19[2] >> 31)
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    LOBYTE(v15) = String.utf8CString.getter();
    v21 = unumf_openForSkeletonAndLocale();

    if (v21)
    {
      if (v101 < 1)
      {
        v16[2] = v21;
LABEL_14:
        os_unfair_lock_lock((v13 + 24));
        if (v14 < *(*(v13 + 16) + 16))
        {
          *(v13 + 16) = MEMORY[0x1E69E7CC8];
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v101 = *(v13 + 16);
        v19 = v101;
        *(v13 + 16) = 0x8000000000000000;
        v20 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7, v93, v12);
        v24 = v19[2];
        v25 = (v23 & 1) == 0;
        v26 = v24 + v25;
        if (!__OFADD__(v24, v25))
        {
          LOBYTE(v15) = v23;
          if (v19[3] < v26)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
            v27 = v101;
            v28 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7, v93, v12);
            if ((v15 & 1) != (v29 & 1))
            {
              goto LABEL_94;
            }

            v20 = v28;
LABEL_23:
            if (v15)
            {
LABEL_24:
              v30 = v20;

              *(v27[7] + 8 * v30) = v16;

LABEL_45:
              *(v13 + 16) = v27;

              os_unfair_lock_unlock((v13 + 24));

              outlined consume of ICUNumberFormatter??(1);
              goto LABEL_46;
            }

LABEL_44:
            specialized _NativeDictionary._insert(at:key:value:)(v20, v5, v7, v93, v12, v16, v27);
            goto LABEL_45;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v27 = v19;
            goto LABEL_23;
          }

LABEL_28:
          v81 = v20;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
          v32 = static _DictionaryStorage.copy(original:)();
          v27 = v32;
          if (v19[2])
          {
            v33 = (v32 + 64);
            v82 = (v19 + 8);
            v34 = ((1 << *(v27 + 32)) + 63) >> 6;
            if (v27 != v19 || v33 >= &v82[8 * v34])
            {
              memmove(v33, v82, 8 * v34);
            }

            v35 = 0;
            v27[2] = v19[2];
            v36 = 1 << *(v19 + 32);
            v37 = -1;
            if (v36 < 64)
            {
              v37 = ~(-1 << v36);
            }

            v38 = v37 & v19[8];
            v39 = (v36 + 63) >> 6;
            v83 = v39;
            if (!v38)
            {
              goto LABEL_36;
            }

            while (1)
            {
              v40 = __clz(__rbit64(v38));
              for (i = (v38 - 1) & v38; ; i = (v42 - 1) & v42)
              {
                v43 = v40 | (v35 << 6);
                v44 = (v19[6] + 32 * v43);
                v45 = v44[1];
                v46 = v44[2];
                v47 = v44[3];
                v48 = *(v19[7] + 8 * v43);
                v49 = (v27[6] + 32 * v43);
                *v49 = *v44;
                v49[1] = v45;
                v49[2] = v46;
                v49[3] = v47;
                *(v27[7] + 8 * v43) = v48;

                v39 = v83;
                v38 = i;
                if (i)
                {
                  break;
                }

LABEL_36:
                v41 = v35;
                do
                {
                  v35 = v41 + 1;
                  if (__OFADD__(v41, 1))
                  {
                    goto LABEL_92;
                  }

                  if (v35 >= v39)
                  {
                    goto LABEL_43;
                  }

                  v42 = *&v82[8 * v35];
                  ++v41;
                }

                while (!v42);
                v40 = __clz(__rbit64(v42));
              }
            }
          }

LABEL_43:

          v20 = v81;
          if (v15)
          {
            goto LABEL_24;
          }

          goto LABEL_44;
        }

        goto LABEL_26;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v16 = 0;
    goto LABEL_14;
  }

LABEL_46:

  if (v16)
  {
    v50 = v16[2];
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_initStackObject();
    v51 = a1;
    v52 = v91;
    ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v50, a1, v4, v91);

    v76 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
    v78 = v77;

    if (v78)
    {
      v74 = v78;
      v75 = v76;
      goto LABEL_95;
    }
  }

  else
  {
    v52 = v91;
    v51 = a1;
  }

  *&v101 = v51;
  *(&v101 + 1) = v4;
  v102 = v52;
  if (!_So9NSDecimala__length_getter(&v101))
  {
    *&v101 = v51;
    *(&v101 + 1) = v4;
    v102 = v52;
    if (_So9NSDecimala__isNegative_getter(&v101))
    {
      v74 = 0xE300000000000000;
      v75 = 5136718;
      goto LABEL_95;
    }
  }

  *&v101 = v51;
  *(&v101 + 1) = v4;
  v102 = v52;
  if (!_So9NSDecimala__length_getter(&v101))
  {
    v74 = 0xE100000000000000;
    v75 = 48;
    goto LABEL_95;
  }

  *&v95 = 0;
  *(&v95 + 1) = 0xE000000000000000;
  *&v101 = v51;
  *(&v101 + 1) = v4;
  v102 = v52;
  v98 = v101;
  LODWORD(v99) = v52;
  if (_So9NSDecimala__exponent_getter(&v98) >= 1)
  {
    do
    {
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      v98 = v101;
      LODWORD(v99) = v102;
      v53 = _So9NSDecimala__exponent_getter(&v98);
      _So9NSDecimala__exponent_setter((v53 - 1), &v101);
      v98 = v101;
      LODWORD(v99) = v102;
    }

    while (_So9NSDecimala__exponent_getter(&v98) > 0);
  }

  v98 = v101;
  LODWORD(v99) = v102;
  if (!_So9NSDecimala__exponent_getter(&v98))
  {
    _So9NSDecimala__exponent_setter(1, &v101);
  }

  v98 = v101;
  LODWORD(v99) = v102;
  if (!_So9NSDecimala__length_getter(&v98))
  {
LABEL_81:
    v98 = v101;
    LODWORD(v99) = v102;
    if (_So9NSDecimala__exponent_getter(&v98) <= 0)
    {
      while (1)
      {
        v98 = v101;
        LODWORD(v99) = v102;
        if (!_So9NSDecimala__exponent_getter(&v98))
        {
          break;
        }

        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        v98 = v101;
        LODWORD(v99) = v102;
        v79 = _So9NSDecimala__exponent_getter(&v98);
        _So9NSDecimala__exponent_setter((v79 + 1), &v101);
      }

      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
    }

    v98 = v101;
    LODWORD(v99) = v102;
    if (_So9NSDecimala__isNegative_getter(&v98))
    {
      MEMORY[0x1865CB0E0](45, 0xE100000000000000);
    }

    v98 = v95;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd);
    v75 = String.init<A>(_:)();
    goto LABEL_95;
  }

  while (1)
  {
    v98 = v101;
    LODWORD(v99) = v102;
    if (!_So9NSDecimala__exponent_getter(&v98))
    {
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    }

    v98 = v101;
    LODWORD(v99) = v102;
    v54 = _So9NSDecimala__exponent_getter(&v98);
    _So9NSDecimala__exponent_setter((v54 + 1), &v101);
    v55 = v101;
    v56 = WORD2(v101);
    v57 = WORD4(v101);
    v58 = WORD5(v101);
    v59 = WORD6(v101);
    v88 = WORD3(v101);
    v92 = HIWORD(v101);
    v94 = v102;
    v90 = HIWORD(v102);
    NSDecimal.asVariableLengthInteger()(v101 | (WORD2(v101) << 32) | (WORD3(v101) << 48), WORD4(v101) | (WORD5(v101) << 16) | (WORD6(v101) << 32) | (HIWORD(v101) << 48), v102 | (HIWORD(v102) << 16));
    v61 = v60;
    v62 = *(v60 + 16);
    v63._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v62);
    *&v98 = v63;
    if (v62)
    {
      v84 = v59;
      v85 = v58;
      v64 = v56;
      v65 = 0;
      v66 = v62 + 15;
      while ((v66 - 15) <= *(v61 + 16))
      {
        v67 = *(v61 + 2 * v66);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v63._rawValue);
        }

        if ((v66 - 15) > *(v63._rawValue + 2))
        {
          goto LABEL_90;
        }

        v68 = v67 | (v65 << 16);
        *(v63._rawValue + v66) = v68 / 0xA;
        v65 = v68 % 0xA;
        if (--v66 == 15)
        {

          *&v98 = v63;
          v69 = v65 | 0x30;
          v56 = v64;
          v58 = v85;
          v59 = v84;
          goto LABEL_66;
        }
      }

      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
LABEL_92:
      __break(1u);
    }

    v69 = 48;
LABEL_66:
    v70 = *(v63._rawValue + 2);
    for (j = v69; v70; v70 = *(v98 + 16))
    {
      if (*(v63._rawValue + v70 + 15))
      {
        break;
      }

      if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
      {
        specialized Array.remove(at:)(*(v98 + 16) - 1);
      }

      v63._rawValue = v98;
    }

    LODWORD(v98) = v55;
    WORD2(v98) = v56;
    WORD3(v98) = v88;
    WORD4(v98) = v57;
    WORD5(v98) = v58;
    WORD6(v98) = v59;
    HIWORD(v98) = v92;
    LOWORD(v99) = v94;
    WORD1(v99) = v90;
    NSDecimal.copyVariableLengthInteger(_:)(v63);
    if (v71)
    {
      break;
    }

    v72 = *(v63._rawValue + 2);

    if (HIDWORD(v72))
    {
      goto LABEL_91;
    }

    _So9NSDecimala__length_setter(v72, &v98);
    v101 = v98;
    v102 = v99;
    *&v96 = j;
    v73 = static String._uncheckedFromUTF8(_:)();
    MEMORY[0x1865CB0E0](v73);

    v96 = v101;
    v97 = v102;
    if (!_So9NSDecimala__length_getter(&v96))
    {
      goto LABEL_81;
    }
  }

  swift_unexpectedError();
  __break(1u);
LABEL_94:
  v75 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_95:
  result._object = v74;
  result._countAndFlagsBits = v75;
  return result;
}

Swift::String __swiftcall NSDecimal.FormatStyle.Currency.format(_:)(NSDecimal *a1)
{
  v95 = v2;
  v93 = v1;
  type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  v4 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
  v6 = v5;
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[1];
  ObjectType = swift_getObjectType();
  v11 = *(v9 + 472);

  v12 = v11(ObjectType, v9);
  *&v108 = v4;
  *(&v108 + 1) = v6;
  v13 = v6;
  *&v109 = v7;
  *(&v109 + 1) = v8;
  v97 = v8;
  *&v110 = v12;
  *(&v110 + 1) = v14;
  if (one-time initialization token for cache != -1)
  {
    v12 = swift_once();
  }

  v15 = static ICUCurrencyNumberFormatter.cache;
  v16 = qword_1EA7B5100;
  v105 = v108;
  v106 = v109;
  v107 = v110;
  MEMORY[0x1EEE9AC00](v12);
  os_unfair_lock_lock((v16 + 24));
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v16 + 16, &v102);
  os_unfair_lock_unlock((v16 + 24));
  v17 = v102;
  if (v102 == 1)
  {
    v18 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(v4, v13, v7, v97);
    v20 = v19;
    type metadata accessor for ICUCurrencyNumberFormatter();
    v21 = swift_allocObject();

    v17 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v18, v20);
    os_unfair_lock_lock((v16 + 24));
    if (v15 >= *(*(v16 + 16) + 16))
    {
    }

    else
    {
      *(v16 + 16) = MEMORY[0x1E69E7CC8];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v102 = *(v16 + 16);
    v23 = v102;
    *(v16 + 16) = 0x8000000000000000;
    v25 = specialized __RawDictionaryStorage.find<A>(_:)(&v108);
    v26 = *(v23 + 16);
    v27 = (v24 & 1) == 0;
    v28 = v26 + v27;
    if (__OFADD__(v26, v27))
    {
      __break(1u);
    }

    else
    {
      v21 = v24;
      if (*(v23 + 24) < v28)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, isUniquelyReferenced_nonNull_native);
        v29 = v102;
        v30 = specialized __RawDictionaryStorage.find<A>(_:)(&v108);
        if ((v21 & 1) != (v31 & 1))
        {
LABEL_82:
          v79 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_83;
        }

        v25 = v30;
        if ((v21 & 1) == 0)
        {
          goto LABEL_32;
        }

        goto LABEL_14;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = v23;
        if ((v24 & 1) == 0)
        {
LABEL_32:
          specialized _NativeDictionary._insert(at:key:value:)(v25, &v108, v17, v29);
          goto LABEL_33;
        }

LABEL_14:
        v32 = v25;

        *(*(v29 + 56) + 8 * v32) = v17;

LABEL_33:
        *(v16 + 16) = v29;

        os_unfair_lock_unlock((v16 + 24));

        outlined consume of ICUNumberFormatter??(1);
        goto LABEL_34;
      }
    }

    v85 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
    v33 = static _DictionaryStorage.copy(original:)();
    v29 = v33;
    if (*(v23 + 16))
    {
      v34 = (v33 + 64);
      v86 = (v23 + 64);
      v35 = ((1 << *(v29 + 32)) + 63) >> 6;
      if (v29 != v23 || v34 >= &v86[8 * v35])
      {
        memmove(v34, v86, 8 * v35);
      }

      v36 = 0;
      *(v29 + 16) = *(v23 + 16);
      v37 = 1 << *(v23 + 32);
      v38 = -1;
      if (v37 < 64)
      {
        v38 = ~(-1 << v37);
      }

      v39 = v38 & *(v23 + 64);
      v40 = (v37 + 63) >> 6;
      v87 = v40;
      if (v39)
      {
        do
        {
          v41 = __clz(__rbit64(v39));
          v89 = (v39 - 1) & v39;
LABEL_29:
          v44 = v41 | (v36 << 6);
          v45 = (*(v23 + 48) + 48 * v44);
          v46 = v45[1];
          v47 = v45[2];
          v48 = v45[3];
          v49 = *(*(v23 + 56) + 8 * v44);
          v50 = v45[4];
          v51 = v45[5];
          v52 = (*(v29 + 48) + 48 * v44);
          *v52 = *v45;
          v52[1] = v46;
          v52[2] = v47;
          v52[3] = v48;
          v52[4] = v50;
          v52[5] = v51;
          *(*(v29 + 56) + 8 * v44) = v49;

          v40 = v87;
          v39 = v89;
        }

        while (v89);
      }

      v42 = v36;
      while (1)
      {
        v36 = v42 + 1;
        if (__OFADD__(v42, 1))
        {
          goto LABEL_80;
        }

        if (v36 >= v40)
        {
          break;
        }

        v43 = *&v86[8 * v36];
        ++v42;
        if (v43)
        {
          v41 = __clz(__rbit64(v43));
          v89 = (v43 - 1) & v43;
          goto LABEL_29;
        }
      }
    }

    v25 = v85;
    if ((v21 & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_14;
  }

LABEL_34:

  if (v17)
  {
    v53 = v17[2];
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_initStackObject();
    v54 = a1;
    v55 = v93;
    v56 = v95;
    ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v53, a1, v93, v95);

    v80 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
    v82 = v81;

    if (v82)
    {
      v78 = v82;
      v79 = v80;
      goto LABEL_83;
    }
  }

  else
  {
    v56 = v95;
    v55 = v93;
    v54 = a1;
  }

  *&v105 = v54;
  *(&v105 + 1) = v55;
  LODWORD(v106) = v56;
  if (!_So9NSDecimala__length_getter(&v105))
  {
    *&v105 = v54;
    *(&v105 + 1) = v55;
    LODWORD(v106) = v56;
    if (_So9NSDecimala__isNegative_getter(&v105))
    {
      v78 = 0xE300000000000000;
      v79 = 5136718;
      goto LABEL_83;
    }
  }

  *&v105 = v54;
  *(&v105 + 1) = v55;
  LODWORD(v106) = v56;
  if (!_So9NSDecimala__length_getter(&v105))
  {
    v78 = 0xE100000000000000;
    v79 = 48;
    goto LABEL_83;
  }

  *&v104 = 0;
  *(&v104 + 1) = 0xE000000000000000;
  *&v105 = v54;
  *(&v105 + 1) = v55;
  LODWORD(v106) = v56;
  v102 = v105;
  v103 = v56;
  if (_So9NSDecimala__exponent_getter(&v102) >= 1)
  {
    do
    {
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      v102 = v105;
      v103 = v106;
      v57 = _So9NSDecimala__exponent_getter(&v102);
      _So9NSDecimala__exponent_setter((v57 - 1), &v105);
      v102 = v105;
      v103 = v106;
    }

    while (_So9NSDecimala__exponent_getter(&v102) > 0);
  }

  v102 = v105;
  v103 = v106;
  if (!_So9NSDecimala__exponent_getter(&v102))
  {
    _So9NSDecimala__exponent_setter(1, &v105);
  }

  v102 = v105;
  v103 = v106;
  if (_So9NSDecimala__length_getter(&v102))
  {
    while (1)
    {
      v102 = v105;
      v103 = v106;
      if (!_So9NSDecimala__exponent_getter(&v102))
      {
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      }

      v102 = v105;
      v103 = v106;
      v58 = _So9NSDecimala__exponent_getter(&v102);
      _So9NSDecimala__exponent_setter((v58 + 1), &v105);
      v59 = v105;
      v60 = WORD2(v105);
      v61 = WORD4(v105);
      v62 = WORD5(v105);
      v63 = WORD6(v105);
      v94 = WORD3(v105);
      v98 = HIWORD(v105);
      v99 = v106;
      v96 = WORD1(v106);
      NSDecimal.asVariableLengthInteger()(v105 | (WORD2(v105) << 32) | (WORD3(v105) << 48), WORD4(v105) | (WORD5(v105) << 16) | (WORD6(v105) << 32) | (HIWORD(v105) << 48), v106 | (WORD1(v106) << 16));
      v65 = v64;
      v66 = *(v64 + 16);
      v67._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v66);
      *&v102 = v67;
      if (v66)
      {
        break;
      }

      v73 = 48;
LABEL_54:
      v74 = *(v67._rawValue + 2);
      for (i = v73; v74; v74 = *(v102 + 16))
      {
        if (*(v67._rawValue + v74 + 15))
        {
          break;
        }

        if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
        {
          specialized Array.remove(at:)(*(v102 + 16) - 1);
        }

        v67._rawValue = v102;
      }

      LODWORD(v102) = v59;
      WORD2(v102) = v60;
      WORD3(v102) = v94;
      WORD4(v102) = v61;
      WORD5(v102) = v62;
      WORD6(v102) = v63;
      HIWORD(v102) = v98;
      LOWORD(v103) = v99;
      HIWORD(v103) = v96;
      NSDecimal.copyVariableLengthInteger(_:)(v67);
      if (v75)
      {
        goto LABEL_81;
      }

      v76 = *(v67._rawValue + 2);

      if (HIDWORD(v76))
      {
        goto LABEL_79;
      }

      _So9NSDecimala__length_setter(v76, &v102);
      v105 = v102;
      LODWORD(v106) = v103;
      *&v100 = i;
      v77 = static String._uncheckedFromUTF8(_:)();
      MEMORY[0x1865CB0E0](v77);

      v100 = v105;
      v101 = v106;
      if (!_So9NSDecimala__length_getter(&v100))
      {
        goto LABEL_69;
      }
    }

    v88 = v63;
    v90 = v62;
    v68 = v60;
    v69 = 0;
    v70 = v66 + 15;
    while ((v70 - 15) <= *(v65 + 16))
    {
      v71 = *(v65 + 2 * v70);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v67._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v67._rawValue);
      }

      if ((v70 - 15) > *(v67._rawValue + 2))
      {
        goto LABEL_78;
      }

      v72 = v71 | (v69 << 16);
      *(v67._rawValue + v70) = v72 / 0xA;
      v69 = v72 % 0xA;
      if (--v70 == 15)
      {

        *&v102 = v67;
        v73 = v69 | 0x30;
        v60 = v68;
        v62 = v90;
        v63 = v88;
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:

    swift_unexpectedError();
    __break(1u);
    goto LABEL_82;
  }

LABEL_69:
  v102 = v105;
  v103 = v106;
  if (_So9NSDecimala__exponent_getter(&v102) <= 0)
  {
    while (1)
    {
      v102 = v105;
      v103 = v106;
      if (!_So9NSDecimala__exponent_getter(&v102))
      {
        break;
      }

      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      v102 = v105;
      v103 = v106;
      v83 = _So9NSDecimala__exponent_getter(&v102);
      _So9NSDecimala__exponent_setter((v83 + 1), &v105);
    }

    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    MEMORY[0x1865CB0E0](48, 0xE100000000000000);
  }

  v102 = v105;
  v103 = v106;
  if (_So9NSDecimala__isNegative_getter(&v102))
  {
    MEMORY[0x1865CB0E0](45, 0xE100000000000000);
  }

  v102 = v104;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd);
  v79 = String.init<A>(_:)();
LABEL_83:
  result._object = v78;
  result._countAndFlagsBits = v79;
  return result;
}

Swift::String __swiftcall NSDecimal.FormatStyle.Percent.format(_:)(NSDecimal *a1)
{
  v91 = v2;
  v4 = v1;
  type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  v5 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v7 = v6;
  v8 = *(v3 + 8);
  ObjectType = swift_getObjectType();
  v10 = (*(v8 + 472))(ObjectType, v8);
  v12 = v11;
  if (one-time initialization token for cache != -1)
  {
    v30 = v10;
    swift_once();
    v10 = v30;
  }

  v13 = static ICUPercentNumberFormatter.cache;
  v14 = *algn_1EA7B0228;
  *&v100 = v5;
  *(&v100 + 1) = v7;
  v93 = v10;
  v101 = v10;
  v102 = v12;
  MEMORY[0x1EEE9AC00](v10);
  os_unfair_lock_lock((v14 + 24));
  partial apply for specialized closure #1 in FormatterCache.formatter(for:creator:)(v14 + 16, &v97);
  os_unfair_lock_unlock((v14 + 24));
  v15 = v97;
  if (v97 == 1)
  {
    *&v97 = 0x746E6563726570;
    *(&v97 + 1) = 0xE700000000000000;
    if (String.count.getter() > 0)
    {
      *&v95 = 32;
      *(&v95 + 1) = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v5, v7);
      MEMORY[0x1865CB0E0](32, 0xE100000000000000);
    }

    v16 = v97;
    type metadata accessor for ICUPercentNumberFormatter();
    swift_allocObject();

    v15 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v16, *(&v16 + 1));
    os_unfair_lock_lock((v14 + 24));
    if (v13 >= *(*(v14 + 16) + 16))
    {
    }

    else
    {
      *(v14 + 16) = MEMORY[0x1E69E7CC8];
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v97 = *(v14 + 16);
    v18 = v97;
    *(v14 + 16) = 0x8000000000000000;
    v20 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7, v93, v12);
    v21 = *(v18 + 16);
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      __break(1u);
    }

    else
    {
      if (*(v18 + 24) < v23)
      {
        v24 = v19;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v23, isUniquelyReferenced_nonNull_native);
        v25 = v97;
        v26 = v93;
        v27 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v7, v93, v12);
        if ((v24 & 1) != (v28 & 1))
        {
LABEL_84:
          v73 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_85;
        }

        v20 = v27;
        if ((v24 & 1) == 0)
        {
          goto LABEL_34;
        }

        goto LABEL_16;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        v25 = v18;
        v26 = v93;
        if ((v19 & 1) == 0)
        {
LABEL_34:
          specialized _NativeDictionary._insert(at:key:value:)(v20, v5, v7, v26, v12, v15, v25);
          goto LABEL_35;
        }

LABEL_16:
        v29 = v20;

        *(*(v25 + 56) + 8 * v29) = v15;

LABEL_35:
        *(v14 + 16) = v25;

        os_unfair_lock_unlock((v14 + 24));

        outlined consume of ICUNumberFormatter??(1);
        goto LABEL_36;
      }
    }

    v80 = v20;
    v81 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
    v31 = static _DictionaryStorage.copy(original:)();
    v25 = v31;
    v26 = v93;
    if (*(v18 + 16))
    {
      v32 = (v31 + 64);
      v82 = (v18 + 64);
      v33 = ((1 << *(v25 + 32)) + 63) >> 6;
      if (v25 != v18 || v32 >= &v82[8 * v33])
      {
        memmove(v32, v82, 8 * v33);
      }

      v34 = 0;
      *(v25 + 16) = *(v18 + 16);
      v35 = 1 << *(v18 + 32);
      v36 = -1;
      if (v35 < 64)
      {
        v36 = ~(-1 << v35);
      }

      v37 = v36 & *(v18 + 64);
      v79 = (v35 + 63) >> 6;
      if (v37)
      {
        do
        {
          v85 = (v37 - 1) & v37;
          v87 = v34;
          v38 = __clz(__rbit64(v37)) | (v34 << 6);
LABEL_31:
          v42 = (*(v18 + 48) + 32 * v38);
          v43 = v42[1];
          v44 = v42[2];
          v45 = v42[3];
          v46 = *(*(v18 + 56) + 8 * v38);
          v47 = (*(v25 + 48) + 32 * v38);
          *v47 = *v42;
          v47[1] = v43;
          v47[2] = v44;
          v47[3] = v45;
          *(*(v25 + 56) + 8 * v38) = v46;

          v26 = v93;
          v34 = v87;
          v37 = v85;
        }

        while (v85);
      }

      v39 = v34;
      while (1)
      {
        v40 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          goto LABEL_82;
        }

        if (v40 >= v79)
        {
          break;
        }

        v41 = *&v82[8 * v40];
        ++v39;
        if (v41)
        {
          v85 = (v41 - 1) & v41;
          v87 = v40;
          v38 = __clz(__rbit64(v41)) | (v40 << 6);
          goto LABEL_31;
        }
      }
    }

    v20 = v80;
    if ((v81 & 1) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_16;
  }

LABEL_36:

  if (v15)
  {
    v48 = v15[2];
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_initStackObject();
    v49 = a1;
    v50 = v91;
    ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v48, a1, v4, v91);

    v74 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
    v76 = v75;

    if (v76)
    {
      v72 = v76;
      v73 = v74;
      goto LABEL_85;
    }
  }

  else
  {
    v50 = v91;
    v49 = a1;
  }

  *&v100 = v49;
  *(&v100 + 1) = v4;
  LODWORD(v101) = v50;
  if (!_So9NSDecimala__length_getter(&v100))
  {
    *&v100 = v49;
    *(&v100 + 1) = v4;
    LODWORD(v101) = v50;
    if (_So9NSDecimala__isNegative_getter(&v100))
    {
      v72 = 0xE300000000000000;
      v73 = 5136718;
      goto LABEL_85;
    }
  }

  *&v100 = v49;
  *(&v100 + 1) = v4;
  LODWORD(v101) = v50;
  if (!_So9NSDecimala__length_getter(&v100))
  {
    v72 = 0xE100000000000000;
    v73 = 48;
    goto LABEL_85;
  }

  *&v99 = 0;
  *(&v99 + 1) = 0xE000000000000000;
  *&v100 = v49;
  *(&v100 + 1) = v4;
  LODWORD(v101) = v50;
  v97 = v100;
  v98 = v50;
  if (_So9NSDecimala__exponent_getter(&v97) >= 1)
  {
    do
    {
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      v97 = v100;
      v98 = v101;
      v51 = _So9NSDecimala__exponent_getter(&v97);
      _So9NSDecimala__exponent_setter((v51 - 1), &v100);
      v97 = v100;
      v98 = v101;
    }

    while (_So9NSDecimala__exponent_getter(&v97) > 0);
  }

  v97 = v100;
  v98 = v101;
  if (!_So9NSDecimala__exponent_getter(&v97))
  {
    _So9NSDecimala__exponent_setter(1, &v100);
  }

  v97 = v100;
  v98 = v101;
  if (_So9NSDecimala__length_getter(&v97))
  {
    while (1)
    {
      v97 = v100;
      v98 = v101;
      if (!_So9NSDecimala__exponent_getter(&v97))
      {
        MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      }

      v97 = v100;
      v98 = v101;
      v52 = _So9NSDecimala__exponent_getter(&v97);
      _So9NSDecimala__exponent_setter((v52 + 1), &v100);
      v53 = v100;
      v54 = WORD2(v100);
      v55 = WORD4(v100);
      v56 = WORD5(v100);
      v57 = WORD6(v100);
      v88 = WORD3(v100);
      v92 = HIWORD(v100);
      v94 = v101;
      v90 = WORD1(v101);
      NSDecimal.asVariableLengthInteger()(v100 | (WORD2(v100) << 32) | (WORD3(v100) << 48), WORD4(v100) | (WORD5(v100) << 16) | (WORD6(v100) << 32) | (HIWORD(v100) << 48), v101 | (WORD1(v101) << 16));
      v59 = v58;
      v60 = *(v58 + 16);
      v61._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v60);
      *&v97 = v61;
      if (v60)
      {
        break;
      }

      v67 = 48;
LABEL_56:
      v68 = *(v61._rawValue + 2);
      for (i = v67; v68; v68 = *(v97 + 16))
      {
        if (*(v61._rawValue + v68 + 15))
        {
          break;
        }

        if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
        {
          specialized Array.remove(at:)(*(v97 + 16) - 1);
        }

        v61._rawValue = v97;
      }

      LODWORD(v97) = v53;
      WORD2(v97) = v54;
      WORD3(v97) = v88;
      WORD4(v97) = v55;
      WORD5(v97) = v56;
      WORD6(v97) = v57;
      HIWORD(v97) = v92;
      LOWORD(v98) = v94;
      HIWORD(v98) = v90;
      NSDecimal.copyVariableLengthInteger(_:)(v61);
      if (v69)
      {
        goto LABEL_83;
      }

      v70 = *(v61._rawValue + 2);

      if (HIDWORD(v70))
      {
        goto LABEL_81;
      }

      _So9NSDecimala__length_setter(v70, &v97);
      v100 = v97;
      LODWORD(v101) = v98;
      *&v95 = i;
      v71 = static String._uncheckedFromUTF8(_:)();
      MEMORY[0x1865CB0E0](v71);

      v95 = v100;
      v96 = v101;
      if (!_So9NSDecimala__length_getter(&v95))
      {
        goto LABEL_71;
      }
    }

    v83 = v57;
    v84 = v56;
    v62 = v54;
    v63 = 0;
    v64 = v60 + 15;
    while ((v64 - 15) <= *(v59 + 16))
    {
      v65 = *(v59 + 2 * v64);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v61._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v61._rawValue);
      }

      if ((v64 - 15) > *(v61._rawValue + 2))
      {
        goto LABEL_80;
      }

      v66 = v65 | (v63 << 16);
      *(v61._rawValue + v64) = v66 / 0xA;
      v63 = v66 % 0xA;
      if (--v64 == 15)
      {

        *&v97 = v61;
        v67 = v63 | 0x30;
        v54 = v62;
        v56 = v84;
        v57 = v83;
        goto LABEL_56;
      }
    }

    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:

    swift_unexpectedError();
    __break(1u);
    goto LABEL_84;
  }

LABEL_71:
  v97 = v100;
  v98 = v101;
  if (_So9NSDecimala__exponent_getter(&v97) <= 0)
  {
    while (1)
    {
      v97 = v100;
      v98 = v101;
      if (!_So9NSDecimala__exponent_getter(&v97))
      {
        break;
      }

      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      v97 = v100;
      v98 = v101;
      v77 = _So9NSDecimala__exponent_getter(&v97);
      _So9NSDecimala__exponent_setter((v77 + 1), &v100);
    }

    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    MEMORY[0x1865CB0E0](48, 0xE100000000000000);
  }

  v97 = v100;
  v98 = v101;
  if (_So9NSDecimala__isNegative_getter(&v97))
  {
    MEMORY[0x1865CB0E0](45, 0xE100000000000000);
  }

  v97 = v99;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
  lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd);
  v73 = String.init<A>(_:)();
LABEL_85:
  result._object = v72;
  result._countAndFlagsBits = v73;
  return result;
}

__n128 NSDecimal.FormatStyle.locale(_:)@<Q0>(__n128 *a1@<X0>, uint64_t (*a2)(void)@<X1>, __n128 *a3@<X8>)
{
  outlined init with copy of NSDecimal.FormatStyle(v3, a3, a2);
  v7 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v7;
  *a3 = v7;
  return result;
}

__n128 NSDecimal.FormatStyle.locale.setter(__n128 *a1)
{
  swift_unknownObjectRelease();
  result = *a1;
  *v1 = *a1;
  return result;
}

__n128 NSDecimal.FormatStyle.init(locale:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for NSDecimal.FormatStyle(0) + 20);
  *v4 = 0;
  v4[8] = 1;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x1FFFFFFFELL;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  *(v4 + 18) = 131584;
  *(v4 + 38) = 512;
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *a1;
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  v8 = &v4[v5[10]];
  *v8 = 0;
  v8[8] = -1;
  v4[v5[11]] = 3;
  result = v10;
  *a2 = v10;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NSDecimal.FormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NSDecimal.FormatStyle.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NSDecimal.FormatStyle.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *v3;
  v12 = v10;
  v11 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  swift_unknownObjectRetain();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  swift_unknownObjectRelease();
  if (!v2)
  {
    type metadata accessor for NSDecimal.FormatStyle(0);
    LOBYTE(v12) = 1;
    type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t NSDecimal.FormatStyle.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v11 + *(v12 + 28);
  *v13 = 0;
  *(v13 + 8) = 1;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0x1FFFFFFFELL;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 48) = 0;
  *(v13 + 72) = 131584;
  *(v13 + 76) = 512;
  v14 = v3[9];
  v15 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  v16 = v13 + v3[10];
  *v16 = 0;
  *(v16 + 8) = -1;
  *(v13 + v3[11]) = 3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.CodingKeys and conformance NSDecimal.FormatStyle.CodingKeys();
  v17 = v25;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v20 = type metadata accessor for NumberFormatStyleConfiguration.Collection;
    v21 = v13;
  }

  else
  {
    v27 = 0;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    v18 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v11 = v26;
    LOBYTE(v26) = 1;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v23 + 8))(v8, v18);
    outlined assign with take of NumberFormatStyleConfiguration.Collection(v5, v13);
    outlined init with copy of NSDecimal.FormatStyle(v11, v22, type metadata accessor for NSDecimal.FormatStyle);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v20 = type metadata accessor for NSDecimal.FormatStyle;
    v21 = v11;
  }

  return outlined destroy of NumberFormatStyleConfiguration.Collection(v21, v20);
}

__n128 NSDecimal.FormatStyle.Percent.init(locale:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v4 = a2 + *(type metadata accessor for NSDecimal.FormatStyle.Percent(0) + 20);
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  v10 = *a1;
  (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  *v4 = 0x4059000000000000;
  v4[8] = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x1FFFFFFFELL;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  *(v4 + 18) = 131584;
  *(v4 + 38) = 512;
  v8 = &v4[v5[10]];
  *v8 = 0;
  v8[8] = -1;
  v4[v5[11]] = 3;
  result = v10;
  *a2 = v10;
  return result;
}

uint64_t NSDecimal.FormatStyle.grouping(_:)@<X0>(char *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  outlined init with copy of NSDecimal.FormatStyle(v4, a4, a2);
  result = a3(0);
  *(a4 + *(result + 20) + 73) = v7;
  return result;
}

__n128 NSDecimal.FormatStyle.precision(_:)@<Q0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  outlined init with copy of NSDecimal.FormatStyle(v4, a4, a2);
  v8 = a4 + *(a3(0) + 20);
  v9 = *(a1 + 16);
  *(v8 + 16) = *a1;
  *(v8 + 32) = v9;
  *(v8 + 48) = *(a1 + 32);
  result = *(a1 + 41);
  *(v8 + 57) = result;
  return result;
}

uint64_t NSDecimal.FormatStyle.sign(strategy:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  outlined init with copy of NSDecimal.FormatStyle(v4, a4, a2);
  if (v8)
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 | v7;
  result = a3(0);
  v13 = a4 + *(result + 20);
  *(v13 + 76) = v9 != 0;
  *(v13 + 74) = v11;
  return result;
}

uint64_t NSDecimal.FormatStyle.decimalSeparator(strategy:)@<X0>(char *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  outlined init with copy of NSDecimal.FormatStyle(v4, a4, a2);
  result = a3(0);
  *(a4 + *(result + 20) + 77) = v7;
  return result;
}

uint64_t NSDecimal.FormatStyle.rounded(rule:increment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v8 = v6;
  outlined init with copy of NSDecimal.FormatStyle(v8, a6, a4);
  v13 = a6 + *(a5(0) + 20);
  v14 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v15 = *(v14 + 36);
  outlined destroy of TermOfAddress?(v13 + v15, &_ss25FloatingPointRoundingRuleOSgMd);
  v16 = type metadata accessor for FloatingPointRoundingRule();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v13 + v15, a1, v16);
  result = (*(v17 + 56))(v13 + v15, 0, 1, v16);
  if ((a3 & 1) == 0)
  {
    v19 = v13 + *(v14 + 40);
    *v19 = a2;
    *(v19 + 8) = 0;
  }

  return result;
}

uint64_t NSDecimal.FormatStyle.scale(_:)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v7 = v4;
  outlined init with copy of NSDecimal.FormatStyle(v7, a3, a1);
  result = a2(0);
  v11 = a3 + *(result + 20);
  *v11 = a4;
  *(v11 + 8) = 0;
  return result;
}

uint64_t NSDecimal.FormatStyle.notation(_:)@<X0>(char *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  outlined init with copy of NSDecimal.FormatStyle(v4, a4, a2);
  v8 = a4 + *(a3(0) + 20);
  result = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  *(v8 + *(result + 44)) = v7;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NSDecimal.FormatStyle.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x697463656C6C6F63 && a2 == 0xEA00000000006E6FLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NSDecimal.FormatStyle.Percent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NSDecimal.FormatStyle.Percent.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NSDecimal.FormatStyle.Currency.currencyCode.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t NSDecimal.FormatStyle.Currency.currencyCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t NSDecimal.FormatStyle.Currency.init(code:locale:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *a3;
  *(a4 + 16) = a1;
  *(a4 + 24) = a2;
  v4 = a4 + *(type metadata accessor for NSDecimal.FormatStyle.Currency(0) + 24);
  v5 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  result = (*(*(v7 - 8) + 56))(v4 + v6, 1, 1, v7);
  *v4 = 0;
  *(v4 + 8) = 1;
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0x1FFFFFFFELL;
  *(v4 + 56) = 0;
  *(v4 + 64) = 0;
  *(v4 + 48) = 0;
  *(v4 + 72) = 512;
  *(v4 + 74) = 2;
  *(v4 + 78) = 2;
  v9 = v4 + v5[10];
  *v9 = 0;
  *(v9 + 8) = -1;
  *(v4 + v5[11]) = 1;
  *(v4 + v5[12]) = 3;
  return result;
}

uint64_t NSDecimal.FormatStyle.attributed.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of NSDecimal.FormatStyle(v2, a2, a1);
  type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t NSDecimal.FormatStyle.Currency.grouping(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  outlined init with copy of NSDecimal.FormatStyle(v2, a2, type metadata accessor for NSDecimal.FormatStyle.Currency);
  result = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  *(a2 + *(result + 24) + 73) = v4;
  return result;
}

__n128 NSDecimal.FormatStyle.Currency.precision(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of NSDecimal.FormatStyle(v2, a2, type metadata accessor for NSDecimal.FormatStyle.Currency);
  v5 = a2 + *(type metadata accessor for NSDecimal.FormatStyle.Currency(0) + 24);
  v6 = *(a1 + 16);
  *(v5 + 16) = *a1;
  *(v5 + 32) = v6;
  *(v5 + 48) = *(a1 + 32);
  result = *(a1 + 41);
  *(v5 + 57) = result;
  return result;
}

uint64_t NSDecimal.FormatStyle.Currency.sign(strategy:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  outlined init with copy of NSDecimal.FormatStyle(v2, a2, type metadata accessor for NSDecimal.FormatStyle.Currency);
  if (v5)
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8 | v4;
  if (v6)
  {
    v10 = 0x10000;
  }

  else
  {
    v10 = 0;
  }

  if (v7)
  {
    v11 = 0x1000000;
  }

  else
  {
    v11 = 0;
  }

  v12 = v9 | v10 | v11;
  result = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  *(a2 + *(result + 24) + 74) = v12;
  return result;
}

uint64_t NSDecimal.FormatStyle.Currency.decimalSeparator(strategy:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  outlined init with copy of NSDecimal.FormatStyle(v2, a2, type metadata accessor for NSDecimal.FormatStyle.Currency);
  result = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  *(a2 + *(result + 24) + 78) = v4;
  return result;
}

uint64_t NSDecimal.FormatStyle.Currency.rounded(rule:increment:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  outlined init with copy of NSDecimal.FormatStyle(v5, a4, type metadata accessor for NSDecimal.FormatStyle.Currency);
  v10 = a4 + *(type metadata accessor for NSDecimal.FormatStyle.Currency(0) + 24);
  v11 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  v12 = *(v11 + 36);
  outlined destroy of TermOfAddress?(v10 + v12, &_ss25FloatingPointRoundingRuleOSgMd);
  v13 = type metadata accessor for FloatingPointRoundingRule();
  v14 = *(v13 - 8);
  (*(v14 + 16))(v10 + v12, a1, v13);
  result = (*(v14 + 56))(v10 + v12, 0, 1, v13);
  if ((a3 & 1) == 0)
  {
    v16 = v10 + *(v11 + 40);
    *v16 = a2;
    *(v16 + 8) = 0;
  }

  return result;
}

uint64_t NSDecimal.FormatStyle.Currency.scale(_:)@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  outlined init with copy of NSDecimal.FormatStyle(v2, a1, type metadata accessor for NSDecimal.FormatStyle.Currency);
  result = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  v6 = a1 + *(result + 24);
  *v6 = a2;
  *(v6 + 8) = 0;
  return result;
}

uint64_t NSDecimal.FormatStyle.Currency.presentation(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  outlined init with copy of NSDecimal.FormatStyle(v2, a2, type metadata accessor for NSDecimal.FormatStyle.Currency);
  v5 = a2 + *(type metadata accessor for NSDecimal.FormatStyle.Currency(0) + 24);
  result = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  *(v5 + *(result + 44)) = v4;
  return result;
}

uint64_t NSDecimal.FormatStyle.Currency.notation(_:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  outlined init with copy of NSDecimal.FormatStyle(v2, a2, type metadata accessor for NSDecimal.FormatStyle.Currency);
  v5 = a2 + *(type metadata accessor for NSDecimal.FormatStyle.Currency(0) + 24);
  result = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  *(v5 + *(result + 48)) = v4;
  return result;
}

uint64_t NSDecimal.FormatStyle.Attributed.Style.encode(to:)(void *a1)
{
  v36 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v38 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v33 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v31 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v31 - v8;
  v31 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v31);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10AttributedV0G0O10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd);
  v15 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v17 = &v31 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of NSDecimal.FormatStyle(v39, v14, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = (v38 + 8);
  v20 = (v15 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v35;
      outlined init with take of NSDecimal.FormatStyle.Percent(v14, v35, type metadata accessor for NSDecimal.FormatStyle.Currency);
      v43 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v22 = v32;
      v23 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency and conformance NSDecimal.FormatStyle.Currency, type metadata accessor for NSDecimal.FormatStyle.Currency);
      v24 = v41;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*v19)(v22, v24);
      v25 = type metadata accessor for NSDecimal.FormatStyle.Currency;
    }

    else
    {
      v21 = v37;
      outlined init with take of NSDecimal.FormatStyle.Percent(v14, v37, type metadata accessor for NSDecimal.FormatStyle.Percent);
      v44 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v29 = v33;
      v23 = v40;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent and conformance NSDecimal.FormatStyle.Percent, type metadata accessor for NSDecimal.FormatStyle.Percent);
      v30 = v41;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*v19)(v29, v30);
      v25 = type metadata accessor for NSDecimal.FormatStyle.Percent;
    }

    outlined destroy of NumberFormatStyleConfiguration.Collection(v21, v25);
    return (*v20)(v17, v23);
  }

  else
  {
    outlined init with take of NSDecimal.FormatStyle.Percent(v14, v11, type metadata accessor for NSDecimal.FormatStyle);
    v42 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    v26 = v40;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle and conformance NSDecimal.FormatStyle, type metadata accessor for NSDecimal.FormatStyle);
    v27 = v41;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*v19)(v9, v27);
    outlined destroy of NumberFormatStyleConfiguration.Collection(v11, type metadata accessor for NSDecimal.FormatStyle);
    return (*v20)(v17, v26);
  }
}

uint64_t NSDecimal.FormatStyle.Attributed.Style.hash(into:)(Swift::Int a1)
{
  v194 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v194);
  v197 = &v184 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v193);
  v5 = &v184 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FloatingPointRoundingRule();
  v198 = *(v6 - 8);
  v199 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v196 = &v184 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v184 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v195 = &v184 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v184 - v14;
  v16 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v184 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v184 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NSDecimal.FormatStyle(v1, v21, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of NSDecimal.FormatStyle.Percent(v21, v5, type metadata accessor for NSDecimal.FormatStyle.Currency);
      MEMORY[0x1865CD060](1);
      v23 = *(v5 + 1);
      ObjectType = swift_getObjectType();
      if ((*(v23 + 48))(ObjectType, v23))
      {
        v25 = 1;
LABEL_11:
        Hasher._combine(_:)(v25);
        v36 = v198;
        v35 = v199;
        v37 = v193;
        goto LABEL_85;
      }

      Hasher._combine(_:)(0);
      (*(v23 + 64))(ObjectType, v23);
      String.hash(into:)();

      (*(v23 + 464))(&v200, ObjectType, v23);
      v213 = v206;
      v214[0] = v207[0];
      *(v214 + 12) = *(v207 + 12);
      *v210 = v202;
      *&v210[16] = v203;
      v211 = v204;
      v212 = v205;
      v208 = v200;
      v209 = v201;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v208) == 1)
      {
        v25 = 0;
        goto LABEL_11;
      }

      v41 = v200;
      v42 = *(&v200 + 1);
      v43 = *(&v201 + 1);
      v184 = v201;
      v44 = *(&v202 + 1);
      v185 = v202;
      v187 = v203;
      v188 = v204;
      v189 = v205;
      v45 = *&v207[0];
      *&v190[8] = v206;
      v186 = *(&v207[0] + 1);
      v191 = *&v207[1];
      v192 = BYTE8(v207[1]);
      v194 = BYTE9(v207[1]);
      v46 = BYTE10(v207[1]);
      LODWORD(v197) = BYTE11(v207[1]);
      Hasher._combine(_:)(1u);
      if (v41 == 2)
      {
        v47 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v47 = v41 & 1;
      }

      *&v190[24] = v45;
      Hasher._combine(_:)(v47);
      if (v42)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](*(v42 + 16));
        v59 = *(v42 + 16);
        if (v59)
        {
          v60 = v42 + 40;
          do
          {

            String.hash(into:)();

            v60 += 16;
            --v59;
          }

          while (v59);
        }

        if (v43)
        {
          goto LABEL_29;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v43)
        {
LABEL_29:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_46;
        }
      }

      Hasher._combine(_:)(0);
LABEL_46:
      v36 = v198;
      v35 = v199;
      *v190 = v46;
      if (v44)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v65 = v188;
      v66 = v187;
      if (v187)
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v66, v67, v68, v69, v70, v71, v72);
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v37 = v193;
      v73 = *(&v187 + 1);
      if (*(&v187 + 1))
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v73, v74, v75, v76, v77, v78, v79);
        if (v65)
        {
          goto LABEL_54;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (v65)
        {
LABEL_54:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*(&v188 + 1))
          {
            goto LABEL_55;
          }

          goto LABEL_62;
        }
      }

      Hasher._combine(_:)(0);
      if (*(&v188 + 1))
      {
LABEL_55:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (v189)
        {
          goto LABEL_56;
        }

        goto LABEL_63;
      }

LABEL_62:
      Hasher._combine(_:)(0);
      if (v189)
      {
LABEL_56:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v189 + 1))
        {
          goto LABEL_57;
        }

        goto LABEL_64;
      }

LABEL_63:
      Hasher._combine(_:)(0);
      if (*(&v189 + 1))
      {
LABEL_57:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*&v190[8])
        {
          goto LABEL_58;
        }

        goto LABEL_65;
      }

LABEL_64:
      Hasher._combine(_:)(0);
      if (*&v190[8])
      {
LABEL_58:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v80 = *&v190[16];
        if (*&v190[16])
        {
LABEL_59:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v80);
          goto LABEL_67;
        }

LABEL_66:
        Hasher._combine(_:)(0);
LABEL_67:
        v81 = v192;
        v82 = *&v190[24];
        if (*&v190[24])
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v82);
          if (v191)
          {
LABEL_69:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_72:
            v83 = *v190;
            if (v81 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v81 & 1);
            }

            v84 = v194;
            if (v194 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v84 & 1);
            }

            v85 = v197;
            if (v83 == 2)
            {
              v86 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v86 = v83 & 1;
            }

            Hasher._combine(_:)(v86);
            if (v85 == 2)
            {
              v87 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v87 = v85 & 1;
            }

            Hasher._combine(_:)(v87);
            outlined destroy of TermOfAddress?(&v200, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_85:
            String.hash(into:)();
            v88 = &v5[*(v37 + 24)];
            if (v88[8] == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v89 = *v88;
              Hasher._combine(_:)(1u);
              if ((v89 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v90 = v89;
              }

              else
              {
                v90 = 0;
              }

              MEMORY[0x1865CD090](v90);
            }

            v91 = *(v88 + 2);
            v208 = *(v88 + 1);
            v209 = v91;
            *v210 = *(v88 + 3);
            *&v210[9] = *(v88 + 57);
            specialized Optional<A>.hash(into:)();
            v92 = v88[73];
            if (v92 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v92 & 1);
            }

            v93 = *(v88 + 74);
            if (*(v88 + 74) == 2)
            {
              LOBYTE(v94) = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v93 & 1);
              MEMORY[0x1865CD060]((v93 >> 8) & 1);
              MEMORY[0x1865CD060](WORD1(v93) & 1);
              v94 = BYTE3(v93) & 1;
            }

            Hasher._combine(_:)(v94);
            v95 = v88[78];
            if (v95 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v95 & 1);
            }

            v96 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
            v97 = v195;
            outlined init with copy of FloatingPointRoundingRule?(&v88[v96[9]], v195);
            if ((*(v36 + 48))(v97, 1, v35) == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v98 = v196;
              (*(v36 + 32))(v196, v97, v35);
              Hasher._combine(_:)(1u);
              dispatch thunk of Hashable.hash(into:)();
              (*(v36 + 8))(v98, v35);
            }

            v99 = &v88[v96[10]];
            v100 = v99[8];
            if (v100 == 255)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              v101 = *v99;
              Hasher._combine(_:)(1u);
              if (v100)
              {
                MEMORY[0x1865CD060](1);
                if ((v101 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v102 = v101;
                }

                else
                {
                  v102 = 0;
                }

                MEMORY[0x1865CD090](v102);
              }

              else
              {
                MEMORY[0x1865CD060](0);
                MEMORY[0x1865CD060](v101);
              }
            }

            MEMORY[0x1865CD060](v88[v96[11]]);
            v103 = v88[v96[12]];
            if (v103 == 3)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v103);
            }

            v104 = type metadata accessor for NSDecimal.FormatStyle.Currency;
            v105 = v5;
            return outlined destroy of NumberFormatStyleConfiguration.Collection(v105, v104);
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          if (v191)
          {
            goto LABEL_69;
          }
        }

        Hasher._combine(_:)(0);
        goto LABEL_72;
      }

LABEL_65:
      Hasher._combine(_:)(0);
      v80 = *&v190[16];
      if (*&v190[16])
      {
        goto LABEL_59;
      }

      goto LABEL_66;
    }

    v30 = v197;
    outlined init with take of NSDecimal.FormatStyle.Percent(v21, v197, type metadata accessor for NSDecimal.FormatStyle.Percent);
    MEMORY[0x1865CD060](2);
    v31 = *(v30 + 8);
    v32 = swift_getObjectType();
    if ((*(v31 + 48))(v32, v31))
    {
      Hasher._combine(_:)(1u);
      v34 = v198;
      v33 = v199;
LABEL_16:
      v39 = v10;
      v40 = v194;
      goto LABEL_224;
    }

    Hasher._combine(_:)(0);
    (*(v31 + 64))(v32, v31);
    String.hash(into:)();

    (*(v31 + 464))(&v200, v32, v31);
    v213 = v206;
    v214[0] = v207[0];
    *(v214 + 12) = *(v207 + 12);
    *v210 = v202;
    *&v210[16] = v203;
    v211 = v204;
    v212 = v205;
    v208 = v200;
    v209 = v201;
    v38 = _s10Foundation17LocalePreferencesVSgWOg(&v208);
    v34 = v198;
    v33 = v199;
    if (v38 == 1)
    {
      Hasher._combine(_:)(0);
      goto LABEL_16;
    }

    v53 = v200;
    v54 = *(&v200 + 1);
    v55 = *(&v201 + 1);
    v56 = *(&v202 + 1);
    v185 = v202;
    v187 = v203;
    v188 = v204;
    v189 = v205;
    *v190 = v206;
    *&v190[8] = v201;
    *&v190[16] = *(&v206 + 1);
    v186 = *(&v207[0] + 1);
    *&v190[24] = *&v207[0];
    v191 = *&v207[1];
    v192 = BYTE8(v207[1]);
    v193 = BYTE9(v207[1]);
    v57 = BYTE10(v207[1]);
    LODWORD(v195) = BYTE11(v207[1]);
    Hasher._combine(_:)(1u);
    if (v53 == 2)
    {
      v58 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v58 = v53 & 1;
    }

    Hasher._combine(_:)(v58);
    if (v54)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v54 + 16));
      v63 = *(v54 + 16);
      if (v63)
      {
        v64 = v54 + 40;
        do
        {

          String.hash(into:)();

          v64 += 16;
          --v63;
        }

        while (v63);
      }

      if (v55)
      {
        goto LABEL_43;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v55)
      {
LABEL_43:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_185;
      }
    }

    Hasher._combine(_:)(0);
LABEL_185:
    v39 = v10;
    *&v190[8] = v57;
    v143 = *(&v187 + 1);
    if (v56)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v34 = v198;
    v33 = v199;
    v144 = *(&v188 + 1);
    v145 = v189;
    v146 = v187;
    if (v187)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v146, v147, v148, v149, v150, v151, v152);
      v40 = v194;
      if (v143)
      {
        goto LABEL_190;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v40 = v194;
      if (v143)
      {
LABEL_190:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v143, v153, v154, v155, v156, v157, v158);
        if (v188)
        {
          goto LABEL_191;
        }

        goto LABEL_196;
      }
    }

    Hasher._combine(_:)(0);
    if (v188)
    {
LABEL_191:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v144)
      {
        goto LABEL_192;
      }

      goto LABEL_197;
    }

LABEL_196:
    Hasher._combine(_:)(0);
    if (v144)
    {
LABEL_192:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v145)
      {
LABEL_193:
        v159 = *&v190[24];
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_199;
      }

LABEL_198:
      v159 = *&v190[24];
      Hasher._combine(_:)(0);
LABEL_199:
      if (*(&v189 + 1))
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v160 = v159;
      if (*v190)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v161 = *&v190[16];
        if (*&v190[16])
        {
          goto LABEL_204;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v161 = *&v190[16];
        if (*&v190[16])
        {
LABEL_204:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v161);
          v162 = v192;
          if (v160)
          {
            goto LABEL_205;
          }

          goto LABEL_209;
        }
      }

      Hasher._combine(_:)(0);
      v162 = v192;
      if (v160)
      {
LABEL_205:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v160);
        if (v191)
        {
LABEL_206:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
LABEL_211:
          v163 = v195;
          if (v162 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v162 & 1);
          }

          v164 = v193;
          if (v193 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v164 & 1);
          }

          v165 = v190[8];
          if (*&v190[8] == 2)
          {
            v166 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v166 = v165 & 1;
          }

          Hasher._combine(_:)(v166);
          if (v163 == 2)
          {
            v167 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v167 = v163 & 1;
          }

          Hasher._combine(_:)(v167);
          outlined destroy of TermOfAddress?(&v200, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_224:
          v168 = (v197 + *(v40 + 20));
          if (*(v168 + 8) == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v169 = *v168;
            Hasher._combine(_:)(1u);
            if ((v169 & 0x7FFFFFFFFFFFFFFFLL) != 0)
            {
              v170 = v169;
            }

            else
            {
              v170 = 0;
            }

            MEMORY[0x1865CD090](v170);
          }

          v171 = *(v168 + 2);
          v208 = *(v168 + 1);
          v209 = v171;
          *v210 = *(v168 + 3);
          *&v210[9] = *(v168 + 57);
          specialized Optional<A>.hash(into:)();
          v172 = *(v168 + 73);
          if (v172 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v172 & 1);
          }

          v173 = *(v168 + 37);
          v174 = v173 | (*(v168 + 76) << 16);
          if (v173 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v174 & 1);
            MEMORY[0x1865CD060]((v174 >> 8) & 1);
            MEMORY[0x1865CD060](HIWORD(v174) & 1);
          }

          v175 = *(v168 + 77);
          if (v175 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v175 & 1);
          }

          v176 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
          outlined init with copy of FloatingPointRoundingRule?(v168 + v176[9], v39);
          if ((*(v34 + 48))(v39, 1, v33) == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v177 = v196;
            (*(v34 + 32))(v196, v39, v33);
            Hasher._combine(_:)(1u);
            dispatch thunk of Hashable.hash(into:)();
            (*(v34 + 8))(v177, v33);
          }

          v178 = (v168 + v176[10]);
          v179 = *(v178 + 8);
          if (v179 == 255)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            v180 = *v178;
            Hasher._combine(_:)(1u);
            if (v179)
            {
              MEMORY[0x1865CD060](1);
              if ((v180 & 0x7FFFFFFFFFFFFFFFLL) != 0)
              {
                v181 = v180;
              }

              else
              {
                v181 = 0;
              }

              MEMORY[0x1865CD090](v181);
            }

            else
            {
              MEMORY[0x1865CD060](0);
              MEMORY[0x1865CD060](v180);
            }
          }

          v182 = *(v168 + v176[11]);
          if (v182 == 3)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v182);
          }

          v104 = type metadata accessor for NSDecimal.FormatStyle.Percent;
          v105 = v197;
          return outlined destroy of NumberFormatStyleConfiguration.Collection(v105, v104);
        }

LABEL_210:
        Hasher._combine(_:)(0);
        goto LABEL_211;
      }

LABEL_209:
      Hasher._combine(_:)(0);
      if (v191)
      {
        goto LABEL_206;
      }

      goto LABEL_210;
    }

LABEL_197:
    Hasher._combine(_:)(0);
    if (v145)
    {
      goto LABEL_193;
    }

    goto LABEL_198;
  }

  outlined init with take of NSDecimal.FormatStyle.Percent(v21, v18, type metadata accessor for NSDecimal.FormatStyle);
  MEMORY[0x1865CD060](0);
  v26 = *(v18 + 1);
  v27 = swift_getObjectType();
  if ((*(v26 + 48))(v27, v26))
  {
    Hasher._combine(_:)(1u);
    v29 = v198;
    v28 = v199;
    goto LABEL_153;
  }

  Hasher._combine(_:)(0);
  (*(v26 + 64))(v27, v26);
  String.hash(into:)();

  (*(v26 + 464))(&v200, v27, v26);
  v213 = v206;
  v214[0] = v207[0];
  *(v214 + 12) = *(v207 + 12);
  *v210 = v202;
  *&v210[16] = v203;
  v211 = v204;
  v212 = v205;
  v208 = v200;
  v209 = v201;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v208) == 1)
  {
    Hasher._combine(_:)(0);
    v29 = v198;
    v28 = v199;
    goto LABEL_153;
  }

  v48 = v200;
  v49 = *(&v200 + 1);
  v50 = *(&v201 + 1);
  v185 = v201;
  v51 = *(&v202 + 1);
  v186 = v202;
  v188 = v203;
  v189 = v204;
  *v190 = v205;
  *&v190[16] = v206;
  *&v187 = *(&v207[0] + 1);
  v191 = *&v207[0];
  v192 = *&v207[1];
  v193 = BYTE8(v207[1]);
  v194 = BYTE9(v207[1]);
  LODWORD(v195) = BYTE10(v207[1]);
  LODWORD(v197) = BYTE11(v207[1]);
  Hasher._combine(_:)(1u);
  if (v48 == 2)
  {
    v52 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v52 = v48 & 1;
  }

  *(&v187 + 1) = v51;
  Hasher._combine(_:)(v52);
  if (v49)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v49 + 16));
    v61 = *(v49 + 16);
    if (v61)
    {
      v62 = v49 + 40;
      do
      {

        String.hash(into:)();

        v62 += 16;
        --v61;
      }

      while (v61);
    }

    if (v50)
    {
      goto LABEL_36;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v50)
    {
LABEL_36:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_117;
    }
  }

  Hasher._combine(_:)(0);
LABEL_117:
  v29 = v198;
  v28 = v199;
  v106 = *(&v188 + 1);
  if (*(&v187 + 1))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    v107 = v188;
    if (v188)
    {
      goto LABEL_119;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v107 = v188;
    if (v188)
    {
LABEL_119:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v107, v108, v109, v110, v111, v112, v113);
      if (v106)
      {
        goto LABEL_120;
      }

      goto LABEL_131;
    }
  }

  Hasher._combine(_:)(0);
  if (v106)
  {
LABEL_120:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v106, v114, v115, v116, v117, v118, v119);
    if (v189)
    {
      goto LABEL_121;
    }

    goto LABEL_132;
  }

LABEL_131:
  Hasher._combine(_:)(0);
  if (v189)
  {
LABEL_121:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v189 + 1))
    {
      goto LABEL_122;
    }

    goto LABEL_133;
  }

LABEL_132:
  Hasher._combine(_:)(0);
  if (*(&v189 + 1))
  {
LABEL_122:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*v190)
    {
      goto LABEL_123;
    }

    goto LABEL_134;
  }

LABEL_133:
  Hasher._combine(_:)(0);
  if (*v190)
  {
LABEL_123:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v190[8])
    {
      goto LABEL_124;
    }

    goto LABEL_135;
  }

LABEL_134:
  Hasher._combine(_:)(0);
  if (*&v190[8])
  {
LABEL_124:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*&v190[16])
    {
      goto LABEL_125;
    }

    goto LABEL_136;
  }

LABEL_135:
  Hasher._combine(_:)(0);
  if (*&v190[16])
  {
LABEL_125:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    v120 = *&v190[24];
    if (*&v190[24])
    {
      goto LABEL_126;
    }

    goto LABEL_137;
  }

LABEL_136:
  Hasher._combine(_:)(0);
  v120 = *&v190[24];
  if (*&v190[24])
  {
LABEL_126:
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v120);
    v121 = v191;
    if (v191)
    {
      goto LABEL_127;
    }

LABEL_138:
    Hasher._combine(_:)(0);
    if (v192)
    {
      goto LABEL_128;
    }

LABEL_139:
    Hasher._combine(_:)(0);
    goto LABEL_140;
  }

LABEL_137:
  Hasher._combine(_:)(0);
  v121 = v191;
  if (!v191)
  {
    goto LABEL_138;
  }

LABEL_127:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v121);
  if (!v192)
  {
    goto LABEL_139;
  }

LABEL_128:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
LABEL_140:
  v122 = v193;
  if (v193 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v122 & 1);
  }

  v123 = v194;
  if (v194 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v123 & 1);
  }

  v124 = v195;
  if (v195 == 2)
  {
    v125 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v125 = v124 & 1;
  }

  v126 = v197;
  Hasher._combine(_:)(v125);
  if (v126 == 2)
  {
    v127 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v127 = v126 & 1;
  }

  Hasher._combine(_:)(v127);
  outlined destroy of TermOfAddress?(&v200, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_153:
  v128 = &v18[*(v16 + 20)];
  if (v128[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v129 = *v128;
    Hasher._combine(_:)(1u);
    if ((v129 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v130 = v129;
    }

    else
    {
      v130 = 0;
    }

    MEMORY[0x1865CD090](v130);
  }

  v131 = *(v128 + 2);
  v208 = *(v128 + 1);
  v209 = v131;
  *v210 = *(v128 + 3);
  *&v210[9] = *(v128 + 57);
  specialized Optional<A>.hash(into:)();
  v132 = v128[73];
  if (v132 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v132 & 1);
  }

  v133 = *(v128 + 37);
  v134 = v133 | (v128[76] << 16);
  if (v133 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v134 & 1);
    MEMORY[0x1865CD060]((v134 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v134) & 1);
  }

  v135 = v128[77];
  if (v135 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v135 & 1);
  }

  v136 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(&v128[v136[9]], v15);
  if ((*(v29 + 48))(v15, 1, v28) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v137 = v196;
    (*(v29 + 32))(v196, v15, v28);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v29 + 8))(v137, v28);
  }

  v138 = &v128[v136[10]];
  v139 = v138[8];
  if (v139 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v140 = *v138;
    Hasher._combine(_:)(1u);
    if (v139)
    {
      MEMORY[0x1865CD060](1);
      if ((v140 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v141 = v140;
      }

      else
      {
        v141 = 0;
      }

      MEMORY[0x1865CD090](v141);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v140);
    }
  }

  v142 = v128[v136[11]];
  if (v142 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v142);
  }

  v104 = type metadata accessor for NSDecimal.FormatStyle;
  v105 = v18;
  return outlined destroy of NumberFormatStyleConfiguration.Collection(v105, v104);
}

uint64_t NSDecimal.FormatStyle.Attributed.Style.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10Foundation33DefaultAssociatedValueCodingKeys1OGMd);
  v4 = *(v3 - 8);
  v51 = v3;
  v52 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v47 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v53 = &v47 - v9;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10AttributedV0G0O10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd);
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v11 = &v47 - v10;
  v12 = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v47 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v47 - v22;
  v24 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys();
  v25 = v59;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  v47 = v17;
  v48 = v20;
  v49 = v14;
  v50 = v12;
  v26 = v53;
  v27 = v54;
  v29 = v55;
  v28 = v56;
  v59 = v23;
  v30 = v57;
  v31 = KeyedDecodingContainer.allKeys.getter();
  v32 = (2 * *(v31 + 16)) | 1;
  v61 = v31;
  v62 = v31 + 32;
  v63 = 0;
  v64 = v32;
  v33 = specialized Collection<>.popFirst()();
  if (v33 == 3 || v63 != v64 >> 1)
  {
    v38 = type metadata accessor for DecodingError();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    *v40 = v50;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v58 + 8))(v11, v28);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v60);
  }

  if (v33)
  {
    if (v33 == 1)
    {
      v65 = 1;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v34 = v58;
      v35 = v30;
      type metadata accessor for NSDecimal.FormatStyle.Currency(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Currency and conformance NSDecimal.FormatStyle.Currency, type metadata accessor for NSDecimal.FormatStyle.Currency);
      v36 = v47;
      v37 = v51;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v52 + 8))(v27, v37);
      (*(v34 + 8))(v11, v28);
    }

    else
    {
      v65 = 2;
      lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
      v42 = v29;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v35 = v30;
      v43 = v58;
      type metadata accessor for NSDecimal.FormatStyle.Percent(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Percent and conformance NSDecimal.FormatStyle.Percent, type metadata accessor for NSDecimal.FormatStyle.Percent);
      v36 = v49;
      v44 = v51;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v52 + 8))(v42, v44);
      (*(v43 + 8))(v11, v28);
    }

    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    v65 = 0;
    lazy protocol witness table accessor for type DefaultAssociatedValueCodingKeys1 and conformance DefaultAssociatedValueCodingKeys1();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    type metadata accessor for NSDecimal.FormatStyle(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle and conformance NSDecimal.FormatStyle, type metadata accessor for NSDecimal.FormatStyle);
    v36 = v48;
    v45 = v51;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v52 + 8))(v26, v45);
    (*(v58 + 8))(v11, v28);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v35 = v30;
  }

  v46 = v59;
  outlined init with take of NSDecimal.FormatStyle.Percent(v36, v59, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  outlined init with take of NSDecimal.FormatStyle.Percent(v46, v35, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  return __swift_destroy_boxed_opaque_existential_1(v60);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NSDecimal.FormatStyle.Currency.CodingKeys()
{
  v1 = 0x79636E6572727563;
  if (*v0 != 1)
  {
    v1 = 0x697463656C6C6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C61636F6CLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NSDecimal.FormatStyle.Currency.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized NSDecimal.FormatStyle.Currency.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NSDecimal.FormatStyle.Currency.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NSDecimal.FormatStyle.Currency.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys()
{
  v1 = 0x79636E6572727563;
  if (*v0 != 1)
  {
    v1 = 0x746E6563726570;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C616D69636564;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = specialized NSDecimal.FormatStyle.Attributed.Style.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.Style.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.Style.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NSDecimal.FormatStyle.Attributed.format(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t *a4@<X8>)
{
  v183 = a3;
  v184 = a1;
  v182 = a4;
  v197 = *MEMORY[0x1E69E9840];
  v6 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v173 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v173 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NSDecimal.FormatStyle(v4, v17, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v185 = a2;
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of NSDecimal.FormatStyle.Percent(v17, v11, type metadata accessor for NSDecimal.FormatStyle.Currency);
      v19 = CurrencyFormatStyleConfiguration.Collection.skeleton.getter();
      v21 = v20;
      v23 = v11[2];
      v22 = v11[3];
      v24 = v11[1];
      ObjectType = swift_getObjectType();
      v25 = *(v24 + 472);

      v26 = v25(ObjectType, v24);
      LOBYTE(ObjectType) = v26;
      *&v194 = v19;
      *(&v194 + 1) = v21;
      v178 = v21;
      *&v195 = v23;
      *(&v195 + 1) = v22;
      v180 = v22;
      *&v196 = v26;
      *(&v196 + 1) = v28;
      i = v28;
      if (one-time initialization token for cache != -1)
      {
        v26 = swift_once();
      }

      v30 = static ICUCurrencyNumberFormatter.cache;
      v29 = qword_1EA7B5100;
      v191 = v194;
      v192 = v195;
      v193 = v196;
      MEMORY[0x1EEE9AC00](v26);
      *(&v173 - 2) = &v191;
      os_unfair_lock_lock((v29 + 24));
      closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v29 + 16, &v189);
      v181 = 0;
      os_unfair_lock_unlock((v29 + 24));
      v8 = v189;
      v31 = v178;
      if (v189 != 1)
      {
        goto LABEL_110;
      }

      v32 = specialized static ICUCurrencyNumberFormatter.skeleton(for:)(v19, v178, v23, v180);
      v34 = v33;
      type metadata accessor for ICUCurrencyNumberFormatter();
      swift_allocObject();

      v8 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v32, v34);
      os_unfair_lock_lock((v29 + 24));
      v35 = *(v29 + 16);
      if (v30 >= v35[2])
      {
      }

      else
      {
        *(v29 + 16) = MEMORY[0x1E69E7CC8];
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v189 = *(v29 + 16);
      v45 = v189;
      *(v29 + 16) = 0x8000000000000000;
      v47 = specialized __RawDictionaryStorage.find<A>(_:)(&v194);
      v57 = *(v45 + 16);
      v58 = (v56 & 1) == 0;
      v59 = __OFADD__(v57, v58);
      v60 = v57 + v58;
      if (v59)
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

      LOBYTE(ObjectType) = v56;
      if (*(v45 + 24) >= v60)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_62;
        }

        v61 = v45;
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v60, isUniquelyReferenced_nonNull_native);
        v61 = v189;
        v47 = specialized __RawDictionaryStorage.find<A>(_:)(&v194);
        if ((ObjectType & 1) != (v62 & 1))
        {
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_26;
        }
      }

      if ((ObjectType & 1) == 0)
      {
LABEL_108:
        specialized _NativeDictionary._insert(at:key:value:)(v47, &v194, v8, v61);
        goto LABEL_109;
      }

LABEL_34:
      v71 = v47;

      *(v61[7] + 8 * v71) = v8;

LABEL_109:
      *(v29 + 16) = v61;

      os_unfair_lock_unlock((v29 + 24));

      outlined consume of ICUNumberFormatter??(1);
LABEL_110:

      if (v8)
      {
        ICUCurrencyNumberFormatter.attributedFormat(_:)(v184, v185, v183 | 0x200000000);

        v144 = type metadata accessor for NSDecimal.FormatStyle.Currency;
        v145 = v11;
        return outlined destroy of NumberFormatStyleConfiguration.Collection(v145, v144);
      }

      outlined destroy of NumberFormatStyleConfiguration.Collection(v11, type metadata accessor for NSDecimal.FormatStyle.Currency);
      v146 = v185;
      v147 = v184;
LABEL_127:
      v151 = v183;
      *&v191 = v147;
      *(&v191 + 1) = v146;
      LODWORD(v192) = v183;
      if (_So9NSDecimala__length_getter(&v191) || (*&v191 = v147, *(&v191 + 1) = v146, LODWORD(v192) = v151, !_So9NSDecimala__isNegative_getter(&v191)))
      {
        *&v191 = v147;
        *(&v191 + 1) = v146;
        LODWORD(v192) = v151;
        if (_So9NSDecimala__length_getter(&v191))
        {
          *&v186 = 0;
          *(&v186 + 1) = 0xE000000000000000;
          *&v191 = v147;
          *(&v191 + 1) = v146;
          LODWORD(v192) = v151;
          v189 = v191;
          v190 = v151;
          if (_So9NSDecimala__exponent_getter(&v189) >= 1)
          {
            do
            {
              MEMORY[0x1865CB0E0](48, 0xE100000000000000);
              v189 = v191;
              v190 = v192;
              v152 = _So9NSDecimala__exponent_getter(&v189);
              _So9NSDecimala__exponent_setter((v152 - 1), &v191);
              v189 = v191;
              v190 = v192;
            }

            while (_So9NSDecimala__exponent_getter(&v189) > 0);
          }

          v189 = v191;
          v190 = v192;
          if (!_So9NSDecimala__exponent_getter(&v189))
          {
            _So9NSDecimala__exponent_setter(1, &v191);
          }

          v189 = v191;
          v190 = v192;
          if (_So9NSDecimala__length_getter(&v189))
          {
            do
            {
              v189 = v191;
              v190 = v192;
              if (!_So9NSDecimala__exponent_getter(&v189))
              {
                MEMORY[0x1865CB0E0](46, 0xE100000000000000);
              }

              v189 = v191;
              v190 = v192;
              v153 = _So9NSDecimala__exponent_getter(&v189);
              _So9NSDecimala__exponent_setter((v153 + 1), &v191);
              v154 = v191;
              v155 = WORD2(v191);
              v156 = WORD4(v191);
              v157 = WORD5(v191);
              v158 = WORD6(v191);
              v180 = WORD3(v191);
              v184 = HIWORD(v191);
              LODWORD(v185) = v192;
              v183 = WORD1(v192);
              NSDecimal.asVariableLengthInteger()(v191 | (WORD2(v191) << 32) | (WORD3(v191) << 48), WORD4(v191) | (WORD5(v191) << 16) | (WORD6(v191) << 32) | (HIWORD(v191) << 48), v192 | (WORD1(v192) << 16));
              v160 = v159;
              v161 = *(v159 + 16);
              v162._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v161);
              *&v189 = v162;
              if (v161)
              {
                v177 = v158;
                v178 = v157;
                i = v156;
                v163 = v155;
                LODWORD(v158) = 0;
                v164 = v161 + 15;
                while ((v164 - 15) <= *(v160 + 16))
                {
                  v165 = *(v160 + 2 * v164);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v162._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v162._rawValue);
                  }

                  if ((v164 - 15) > *(v162._rawValue + 2))
                  {
                    goto LABEL_167;
                  }

                  v166 = v165 | (v158 << 16);
                  *(v162._rawValue + v164) = v166 / 0xA;
                  LODWORD(v158) = v166 % 0xA;
                  if (--v164 == 15)
                  {

                    *&v189 = v162;
                    v167 = v158 | 0x30;
                    v155 = v163;
                    LOWORD(v156) = i;
                    LOWORD(v157) = v178;
                    LOWORD(v158) = v177;
                    goto LABEL_144;
                  }
                }

                __break(1u);
LABEL_167:
                __break(1u);
LABEL_168:
                __break(1u);
              }

              v167 = 48;
LABEL_144:
              v168 = *(v162._rawValue + 2);
              for (i = v167; v168; v168 = *(v189 + 16))
              {
                if (*(v162._rawValue + v168 + 15))
                {
                  break;
                }

                if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
                {
                  specialized Array.remove(at:)(*(v189 + 16) - 1);
                }

                v162._rawValue = v189;
              }

              LODWORD(v189) = v154;
              WORD2(v189) = v155;
              WORD3(v189) = v180;
              WORD4(v189) = v156;
              WORD5(v189) = v157;
              WORD6(v189) = v158;
              HIWORD(v189) = v184;
              LOWORD(v190) = v185;
              HIWORD(v190) = v183;
              NSDecimal.copyVariableLengthInteger(_:)(v162);
              v181 = v169;
              if (v169)
              {
                goto LABEL_172;
              }

              v170 = *(v162._rawValue + 2);

              if (HIDWORD(v170))
              {
                goto LABEL_168;
              }

              _So9NSDecimala__length_setter(v170, &v189);
              v191 = v189;
              LODWORD(v192) = v190;
              *&v187 = i;
              v171 = static String._uncheckedFromUTF8(_:)();
              MEMORY[0x1865CB0E0](v171);

              v187 = v191;
              v188 = v192;
            }

            while (_So9NSDecimala__length_getter(&v187));
          }

          v189 = v191;
          v190 = v192;
          if (_So9NSDecimala__exponent_getter(&v189) <= 0)
          {
            while (1)
            {
              v189 = v191;
              v190 = v192;
              if (!_So9NSDecimala__exponent_getter(&v189))
              {
                break;
              }

              MEMORY[0x1865CB0E0](48, 0xE100000000000000);
              v189 = v191;
              v190 = v192;
              v172 = _So9NSDecimala__exponent_getter(&v189);
              _So9NSDecimala__exponent_setter((v172 + 1), &v191);
            }

            MEMORY[0x1865CB0E0](46, 0xE100000000000000);
            MEMORY[0x1865CB0E0](48, 0xE100000000000000);
          }

          v189 = v191;
          v190 = v192;
          if (_So9NSDecimala__isNegative_getter(&v189))
          {
            MEMORY[0x1865CB0E0](45, 0xE100000000000000);
          }

          v189 = v186;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
          lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd);
          String.init<A>(_:)();
        }
      }

      BigString.init(_:)();
      result = AttributedString.init(_:attributes:)(&v191, MEMORY[0x1E69E7CC8], MEMORY[0x1E69E7CD0], &v189);
      *v182 = v189;
      return result;
    }

    outlined init with take of NSDecimal.FormatStyle.Percent(v17, v8, type metadata accessor for NSDecimal.FormatStyle.Percent);
    v30 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
    v29 = v48;
    v49 = v8[1];
    v50 = swift_getObjectType();
    v51 = (*(v49 + 472))(v50, v49);
    v31 = v52;
    if (one-time initialization token for cache != -1)
    {
      v86 = v51;
      swift_once();
      v51 = v86;
    }

    v11 = static ICUPercentNumberFormatter.cache;
    isUniquelyReferenced_nonNull_native = *algn_1EA7B0228;
    *&v194 = v30;
    *(&v194 + 1) = v29;
    v180 = v51;
    *&v195 = v51;
    *(&v195 + 1) = v31;
    MEMORY[0x1EEE9AC00](v51);
    *(&v173 - 2) = &v194;
    os_unfair_lock_lock((isUniquelyReferenced_nonNull_native + 24));
    closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(isUniquelyReferenced_nonNull_native + 16, &v191);
    v181 = 0;
    os_unfair_lock_unlock((isUniquelyReferenced_nonNull_native + 24));
    v35 = v191;
    if (v191 != 1)
    {
      goto LABEL_116;
    }

    *&v191 = 0x746E6563726570;
    *(&v191 + 1) = 0xE700000000000000;
    if (String.count.getter() > 0)
    {
      *&v189 = 32;
      *(&v189 + 1) = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v30, v29);
      MEMORY[0x1865CB0E0](v189, *(&v189 + 1));
    }

    v54 = v191;
    type metadata accessor for ICUPercentNumberFormatter();
    swift_allocObject();

    v35 = ICUNumberFormatterBase.init(skeleton:localeIdentifier:)(v54, *(&v54 + 1));
    os_unfair_lock_lock((isUniquelyReferenced_nonNull_native + 24));
    v55 = *(*(isUniquelyReferenced_nonNull_native + 16) + 16);
    i = *(isUniquelyReferenced_nonNull_native + 16);
    if (v11 < v55)
    {
      *(isUniquelyReferenced_nonNull_native + 16) = MEMORY[0x1E69E7CC8];
      goto LABEL_27;
    }

LABEL_26:

LABEL_27:

    LOBYTE(ObjectType) = swift_isUniquelyReferenced_nonNull_native();
    *&v191 = *(isUniquelyReferenced_nonNull_native + 16);
    v45 = v191;
    *(isUniquelyReferenced_nonNull_native + 16) = 0x8000000000000000;
    v47 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v29, v180, v31);
    v64 = *(v45 + 16);
    v65 = (v63 & 1) == 0;
    v59 = __OFADD__(v64, v65);
    v66 = v64 + v65;
    if (!v59)
    {
      if (*(v45 + 24) < v66)
      {
        v67 = v63;
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v66, ObjectType);
        v68 = v191;
        v69 = v180;
        v47 = specialized __RawDictionaryStorage.find<A>(_:)(v30, v29, v180, v31);
        if ((v67 & 1) != (v70 & 1))
        {
LABEL_173:
          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          goto LABEL_174;
        }

        LOBYTE(v63) = v67;
LABEL_37:
        if (v63)
        {
LABEL_38:
          v72 = v47;

          *(*(v68 + 56) + 8 * v72) = v35;

LABEL_115:
          *(isUniquelyReferenced_nonNull_native + 16) = v68;

          os_unfair_lock_unlock((isUniquelyReferenced_nonNull_native + 24));

          outlined consume of ICUNumberFormatter??(1);
LABEL_116:

          v147 = v184;
          if (v35)
          {
            ICUCurrencyNumberFormatter.attributedFormat(_:)(v184, v185, v183 | 0x200000000);

            v144 = type metadata accessor for NSDecimal.FormatStyle.Percent;
            v145 = v8;
            return outlined destroy of NumberFormatStyleConfiguration.Collection(v145, v144);
          }

          v148 = type metadata accessor for NSDecimal.FormatStyle.Percent;
          v149 = v8;
          goto LABEL_126;
        }

LABEL_114:
        specialized _NativeDictionary._insert(at:key:value:)(v47, v30, v29, v69, v31, v35, v68);
        goto LABEL_115;
      }

      if (ObjectType)
      {
        v68 = v45;
        v69 = v180;
        goto LABEL_37;
      }

      LODWORD(v174) = v63;
      v175 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation25ICUPercentNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
      v106 = static _DictionaryStorage.copy(original:)();
      v68 = v106;
      if (!*(v45 + 16))
      {
LABEL_113:

        v47 = v175;
        v69 = v180;
        if (v174)
        {
          goto LABEL_38;
        }

        goto LABEL_114;
      }

      v107 = (v106 + 64);
      v108 = 1 << *(v68 + 32);
      v176 = (v45 + 64);
      v109 = (v108 + 63) >> 6;
      if (v68 != v45 || v107 >= &v176[8 * v109])
      {
        memmove(v107, v176, 8 * v109);
      }

      v110 = 0;
      *(v68 + 16) = *(v45 + 16);
      v111 = 1 << *(v45 + 32);
      v112 = -1;
      if (v111 < 64)
      {
        v112 = ~(-1 << v111);
      }

      v178 = v112 & *(v45 + 64);
      v173 = (v111 + 63) >> 6;
      while (v178)
      {
        v113 = __clz(__rbit64(v178));
        v178 &= v178 - 1;
LABEL_91:
        v116 = v113 | (v110 << 6);
        v117 = *(v45 + 56);
        v118 = (*(v45 + 48) + 32 * v116);
        v119 = *v118;
        v177 = v118[1];
        v120 = v177;
        v121 = v118[2];
        v122 = v118[3];
        v123 = *(v117 + 8 * v116);
        v124 = (*(v68 + 48) + 32 * v116);
        *v124 = v119;
        v124[1] = v120;
        v124[2] = v121;
        v124[3] = v122;
        *(*(v68 + 56) + 8 * v116) = v123;
      }

      v114 = v110;
      while (1)
      {
        v110 = v114 + 1;
        if (__OFADD__(v114, 1))
        {
          goto LABEL_170;
        }

        if (v110 >= v173)
        {
          goto LABEL_113;
        }

        v115 = *&v176[8 * v110];
        ++v114;
        if (v115)
        {
          v113 = __clz(__rbit64(v115));
          v178 = (v115 - 1) & v115;
          goto LABEL_91;
        }
      }
    }

    goto LABEL_58;
  }

  outlined init with take of NSDecimal.FormatStyle.Percent(v17, v14, type metadata accessor for NSDecimal.FormatStyle);
  v36 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v8 = v37;
  v38 = *(v14 + 1);
  v39 = swift_getObjectType();
  v40 = (*(v38 + 472))(v39, v38);
  v11 = v41;
  if (one-time initialization token for cache != -1)
  {
    v85 = v40;
    swift_once();
    v40 = v85;
  }

  ObjectType = &v173;
  v42 = static ICUNumberFormatter.cache;
  v29 = *algn_1EA7B1D98;
  *&v191 = v36;
  *(&v191 + 1) = v8;
  v180 = v40;
  *&v192 = v40;
  *(&v192 + 1) = v11;
  MEMORY[0x1EEE9AC00](v40);
  *(&v173 - 2) = &v191;
  os_unfair_lock_lock((v29 + 24));
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v29 + 16, &v194);
  v181 = 0;
  os_unfair_lock_unlock((v29 + 24));
  v43 = v194;
  if (v194 != 1)
  {
LABEL_122:

    v147 = v184;
    if (v43)
    {
      ICUNumberFormatter.attributedFormat(_:)(v184, v185, v183 | 0x200000000, v182);

      v144 = type metadata accessor for NSDecimal.FormatStyle;
      v145 = v14;
      return outlined destroy of NumberFormatStyleConfiguration.Collection(v145, v144);
    }

    v148 = type metadata accessor for NSDecimal.FormatStyle;
    v149 = v14;
LABEL_126:
    outlined destroy of NumberFormatStyleConfiguration.Collection(v149, v148);
    v146 = v185;
    goto LABEL_127;
  }

  type metadata accessor for ICUNumberFormatter();
  v43 = swift_allocObject();
  v43[3] = v36;
  v43[4] = v8;
  swift_bridgeObjectRetain_n();
  v44 = MEMORY[0x1865CB200](v36, v8);
  if (v44)
  {
    v45 = v44;
    v46 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v44, 0);

    ObjectType = specialized Sequence._copySequenceContents(initializing:)(&v194, (v46 + 4), v45, v36, v8);

    if (ObjectType != v45)
    {
LABEL_61:
      __break(1u);
LABEL_62:
      v174 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation26ICUCurrencyNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
      v176 = static _DictionaryStorage.copy(original:)();
      if (*(v45 + 16))
      {
        v87 = v176 + 64;
        v88 = 1 << v176[32];
        v175 = (v45 + 64);
        v89 = (v88 + 63) >> 6;
        if (v176 != v45 || v87 >= &v175[8 * v89])
        {
          memmove(v87, v175, 8 * v89);
        }

        v90 = 0;
        *(v176 + 2) = *(v45 + 16);
        v91 = 1 << *(v45 + 32);
        v92 = -1;
        if (v91 < 64)
        {
          v92 = ~(-1 << v91);
        }

        v177 = v92 & *(v45 + 64);
        v173 = (v91 + 63) >> 6;
        while (v177)
        {
          v93 = __clz(__rbit64(v177));
          v177 &= v177 - 1;
LABEL_76:
          v96 = v93 | (v90 << 6);
          v97 = (*(v45 + 48) + 48 * v96);
          v98 = v97[1];
          v99 = v97[2];
          v100 = v97[3];
          v101 = *(*(v45 + 56) + 8 * v96);
          v102 = v97[4];
          v103 = v97[5];
          v104 = v176;
          v105 = (*(v176 + 6) + 48 * v96);
          *v105 = *v97;
          v105[1] = v98;
          v105[2] = v99;
          v105[3] = v100;
          v105[4] = v102;
          v105[5] = v103;
          *(*(v104 + 7) + 8 * v96) = v101;
        }

        v94 = v90;
        while (1)
        {
          v90 = v94 + 1;
          if (__OFADD__(v94, 1))
          {
            break;
          }

          if (v90 >= v173)
          {
            goto LABEL_107;
          }

          v95 = *&v175[8 * v90];
          ++v94;
          if (v95)
          {
            v93 = __clz(__rbit64(v95));
            v177 = (v95 - 1) & v95;
            goto LABEL_76;
          }
        }

        __break(1u);
LABEL_170:
        __break(1u);
LABEL_171:
        __break(1u);
LABEL_172:

        swift_unexpectedError();
        __break(1u);
        goto LABEL_173;
      }

LABEL_107:

      v47 = v174;
      v61 = v176;
      if ((ObjectType & 1) == 0)
      {
        goto LABEL_108;
      }

      goto LABEL_34;
    }
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
  }

  LODWORD(v194) = 0;
  v45 = v46[2];
  if (v45 >> 31)
  {
    goto LABEL_59;
  }

  String.utf8CString.getter();
  v73 = unumf_openForSkeletonAndLocale();

  if (!v73)
  {
    goto LABEL_44;
  }

  if (v194 >= 1)
  {
    unumf_close();
LABEL_44:

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v43 = 0;
    goto LABEL_46;
  }

  v43[2] = v73;
LABEL_46:
  os_unfair_lock_lock((v29 + 24));
  v74 = *(*(v29 + 16) + 16);
  i = *(v29 + 16);
  if (v42 < v74)
  {
    *(v29 + 16) = MEMORY[0x1E69E7CC8];
  }

  else
  {
  }

  LOBYTE(ObjectType) = swift_isUniquelyReferenced_nonNull_native();
  *&v194 = *(v29 + 16);
  v45 = v194;
  *(v29 + 16) = 0x8000000000000000;
  v76 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v8, v180, v11);
  v77 = *(v45 + 16);
  v78 = (v75 & 1) == 0;
  v47 = (v77 + v78);
  if (__OFADD__(v77, v78))
  {
    goto LABEL_60;
  }

  v79 = v75;
  if (*(v45 + 24) >= v47)
  {
    if (ObjectType)
    {
      v80 = v45;
      v81 = v180;
      if ((v75 & 1) == 0)
      {
LABEL_120:
        specialized _NativeDictionary._insert(at:key:value:)(v76, v36, v8, v81, v11, v43, v80);
        goto LABEL_121;
      }
    }

    else
    {
      v174 = v76;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
      v125 = static _DictionaryStorage.copy(original:)();
      v80 = v125;
      if (*(v45 + 16))
      {
        v126 = (v125 + 64);
        v127 = 1 << *(v80 + 32);
        v175 = (v45 + 64);
        v128 = (v127 + 63) >> 6;
        if (v80 != v45 || v126 >= &v175[8 * v128])
        {
          memmove(v126, v175, 8 * v128);
        }

        v129 = 0;
        *(v80 + 16) = *(v45 + 16);
        v130 = 1 << *(v45 + 32);
        v131 = -1;
        if (v130 < 64)
        {
          v131 = ~(-1 << v130);
        }

        v178 = v131 & *(v45 + 64);
        v173 = (v130 + 63) >> 6;
        while (v178)
        {
          v132 = __clz(__rbit64(v178));
          v178 &= v178 - 1;
LABEL_106:
          v135 = v132 | (v129 << 6);
          v136 = *(v45 + 56);
          v137 = (*(v45 + 48) + 32 * v135);
          v138 = *v137;
          v176 = v137[1];
          v139 = v176;
          v140 = v137[2];
          v177 = v137[3];
          v141 = v177;
          v142 = *(v136 + 8 * v135);
          v143 = (*(v80 + 48) + 32 * v135);
          *v143 = v138;
          v143[1] = v139;
          v143[2] = v140;
          v143[3] = v141;
          *(*(v80 + 56) + 8 * v135) = v142;
        }

        v133 = v129;
        while (1)
        {
          v129 = v133 + 1;
          if (__OFADD__(v133, 1))
          {
            goto LABEL_171;
          }

          if (v129 >= v173)
          {
            break;
          }

          v134 = *&v175[8 * v129];
          ++v133;
          if (v134)
          {
            v132 = __clz(__rbit64(v134));
            v178 = (v134 - 1) & v134;
            goto LABEL_106;
          }
        }
      }

      v81 = v180;
      v76 = v174;
      if ((v79 & 1) == 0)
      {
        goto LABEL_120;
      }
    }

LABEL_56:
    v84 = v76;

    *(*(v80 + 56) + 8 * v84) = v43;

LABEL_121:
    *(v29 + 16) = v80;

    os_unfair_lock_unlock((v29 + 24));

    outlined consume of ICUNumberFormatter??(1);
    goto LABEL_122;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v47, ObjectType);
  v80 = v194;
  v81 = v180;
  v82 = specialized __RawDictionaryStorage.find<A>(_:)(v36, v8, v180, v11);
  if ((v79 & 1) == (v83 & 1))
  {
    v76 = v82;
    if ((v79 & 1) == 0)
    {
      goto LABEL_120;
    }

    goto LABEL_56;
  }

LABEL_174:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t NSDecimal.FormatStyle.Attributed.locale(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = (&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a1;
  v18 = a1[1];
  outlined init with copy of NSDecimal.FormatStyle(v2, a2, type metadata accessor for NSDecimal.FormatStyle.Attributed);
  outlined init with copy of NSDecimal.FormatStyle(v2, v16, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of NSDecimal.FormatStyle.Percent(v16, v10, type metadata accessor for NSDecimal.FormatStyle.Currency);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *v10 = v17;
      v10[1] = v18;
      outlined destroy of NumberFormatStyleConfiguration.Collection(a2, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
      outlined init with copy of NSDecimal.FormatStyle(v10, a2, type metadata accessor for NSDecimal.FormatStyle.Currency);
      swift_storeEnumTagMultiPayload();
      v20 = type metadata accessor for NSDecimal.FormatStyle.Currency;
      v21 = v10;
    }

    else
    {
      outlined init with take of NSDecimal.FormatStyle.Percent(v16, v7, type metadata accessor for NSDecimal.FormatStyle.Percent);
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      *v7 = v17;
      v7[1] = v18;
      outlined destroy of NumberFormatStyleConfiguration.Collection(a2, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
      outlined init with copy of NSDecimal.FormatStyle(v7, a2, type metadata accessor for NSDecimal.FormatStyle.Percent);
      swift_storeEnumTagMultiPayload();
      v20 = type metadata accessor for NSDecimal.FormatStyle.Percent;
      v21 = v7;
    }
  }

  else
  {
    outlined init with take of NSDecimal.FormatStyle.Percent(v16, v13, type metadata accessor for NSDecimal.FormatStyle);
    swift_unknownObjectRetain();
    swift_unknownObjectRelease();
    *v13 = v17;
    v13[1] = v18;
    outlined destroy of NumberFormatStyleConfiguration.Collection(a2, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
    outlined init with copy of NSDecimal.FormatStyle(v13, a2, type metadata accessor for NSDecimal.FormatStyle);
    swift_storeEnumTagMultiPayload();
    v20 = type metadata accessor for NSDecimal.FormatStyle;
    v21 = v13;
  }

  return outlined destroy of NumberFormatStyleConfiguration.Collection(v21, v20);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance NSDecimal.FormatStyle.Attributed.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C797473 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance NSDecimal.FormatStyle.Attributed.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance NSDecimal.FormatStyle.Attributed.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t static NSDecimal.FormatStyle.== infix(_:_:)(__int128 *a1, __int128 *a2, uint64_t (*a3)(void))
{
  v6 = *a1;
  v10 = *a2;
  v11 = v6;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = specialized static Locale.== infix(_:_:)(&v11, &v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3(0) + 20);

  return specialized static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(a1 + v8, a2 + v8);
}

uint64_t NSDecimal.FormatStyle.Percent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE11FormatStyleV7PercentV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *v3;
  v12 = v10;
  v11 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  swift_unknownObjectRetain();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  swift_unknownObjectRelease();
  if (!v2)
  {
    type metadata accessor for NSDecimal.FormatStyle.Percent(0);
    LOBYTE(v12) = 1;
    type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void NSDecimal.FormatStyle.hash(into:)(Swift::Int a1, uint64_t (*a2)(void))
{
  v72 = a2;
  v73 = type metadata accessor for FloatingPointRoundingRule();
  v4 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v59 - v7;
  v9 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  if (((*(v9 + 48))(ObjectType, v9) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v9 + 64))(ObjectType, v9);
    String.hash(into:)();

    (*(v9 + 464))(&v74, ObjectType, v9);
    v87 = v80;
    v88[0] = v81[0];
    *(v88 + 12) = *(v81 + 12);
    *v84 = v76;
    *&v84[16] = v77;
    v85 = v78;
    v86 = v79;
    v82 = v74;
    v83 = v75;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v82) == 1)
    {
      v11 = 0;
      goto LABEL_5;
    }

    v14 = v74;
    v15 = *(&v74 + 1);
    v16 = *(&v75 + 1);
    v59[0] = v75;
    v60 = *(&v76 + 1);
    v59[1] = v76;
    v61 = v77;
    v62 = v78;
    v63 = v79;
    v64 = v80;
    v59[2] = *(&v81[0] + 1);
    v65 = *&v81[0];
    v66 = *&v81[1];
    v67 = BYTE8(v81[1]);
    v68 = BYTE9(v81[1]);
    v69 = BYTE10(v81[1]);
    v70 = BYTE11(v81[1]);
    Hasher._combine(_:)(1u);
    if (v14 == 2)
    {
      v17 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v17 = v14 & 1;
    }

    Hasher._combine(_:)(v17);
    if (v15)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v15 + 16));
      v18 = *(v15 + 16);
      if (v18)
      {
        v19 = v15 + 40;
        do
        {

          String.hash(into:)();

          v19 += 16;
          --v18;
        }

        while (v18);
      }

      if (v16)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v16)
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
LABEL_17:
    v12 = v4;
    v20 = *(&v62 + 1);
    v21 = *(&v61 + 1);
    v13 = v73;
    if (v60)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v22 = v61;
      if (v61)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v22 = v61;
      if (v61)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v22, v23, v24, v25, v26, v27, v28);
        v29 = v20;
        if (v21)
        {
LABEL_20:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v21, v30, v31, v32, v33, v34, v35);
          goto LABEL_24;
        }

LABEL_23:
        Hasher._combine(_:)(0);
LABEL_24:
        if (v62)
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (v29)
          {
            goto LABEL_26;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          if (v29)
          {
LABEL_26:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            if (v63)
            {
              goto LABEL_27;
            }

            goto LABEL_35;
          }
        }

        Hasher._combine(_:)(0);
        if (v63)
        {
LABEL_27:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*(&v63 + 1))
          {
            goto LABEL_28;
          }

          goto LABEL_36;
        }

LABEL_35:
        Hasher._combine(_:)(0);
        if (*(&v63 + 1))
        {
LABEL_28:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (v64)
          {
            goto LABEL_29;
          }

          goto LABEL_37;
        }

LABEL_36:
        Hasher._combine(_:)(0);
        if (v64)
        {
LABEL_29:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          v36 = *(&v64 + 1);
          if (*(&v64 + 1))
          {
            goto LABEL_30;
          }

          goto LABEL_38;
        }

LABEL_37:
        Hasher._combine(_:)(0);
        v36 = *(&v64 + 1);
        if (*(&v64 + 1))
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v36);
          v37 = v65;
          if (v65)
          {
            goto LABEL_31;
          }

          goto LABEL_39;
        }

LABEL_38:
        Hasher._combine(_:)(0);
        v37 = v65;
        if (v65)
        {
LABEL_31:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v37);
          if (v66)
          {
LABEL_32:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_41:
            v38 = v67;
            if (v67 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v38 & 1);
            }

            v39 = v68;
            if (v68 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v39 & 1);
            }

            v40 = v69;
            if (v69 == 2)
            {
              v41 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v41 = v40 & 1;
            }

            v42 = v70;
            Hasher._combine(_:)(v41);
            if (v42 == 2)
            {
              v43 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v43 = v42 & 1;
            }

            Hasher._combine(_:)(v43);
            outlined destroy of TermOfAddress?(&v74, &_s10Foundation17LocalePreferencesVSgMd);
            goto LABEL_54;
          }

LABEL_40:
          Hasher._combine(_:)(0);
          goto LABEL_41;
        }

LABEL_39:
        Hasher._combine(_:)(0);
        if (v66)
        {
          goto LABEL_32;
        }

        goto LABEL_40;
      }
    }

    Hasher._combine(_:)(0);
    v29 = v20;
    if (v21)
    {
      goto LABEL_20;
    }

    goto LABEL_23;
  }

  v11 = 1;
LABEL_5:
  Hasher._combine(_:)(v11);
  v12 = v4;
  v13 = v73;
LABEL_54:
  v44 = (v2 + *(v72(0) + 20));
  if (v44[1])
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v45 = *v44;
    Hasher._combine(_:)(1u);
    if ((v45 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    MEMORY[0x1865CD090](v46);
  }

  v47 = *(v44 + 2);
  v82 = *(v44 + 1);
  v83 = v47;
  *v84 = *(v44 + 3);
  *&v84[9] = *(v44 + 57);
  specialized Optional<A>.hash(into:)();
  v48 = *(v44 + 73);
  if (v48 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v48 & 1);
  }

  v49 = *(v44 + 37);
  v50 = v49 | (*(v44 + 76) << 16);
  if (v49 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v50 & 1);
    MEMORY[0x1865CD060]((v50 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v50) & 1);
  }

  v51 = *(v44 + 77);
  if (v51 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v51 & 1);
  }

  v52 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v44 + v52[9], v8);
  if ((*(v12 + 48))(v8, 1, v13) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v53 = v71;
    (*(v12 + 32))(v71, v8, v13);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v12 + 8))(v53, v13);
  }

  v54 = (v44 + v52[10]);
  v55 = *(v54 + 8);
  if (v55 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v56 = *v54;
    Hasher._combine(_:)(1u);
    if (v55)
    {
      MEMORY[0x1865CD060](1);
      if ((v56 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v57 = v56;
      }

      else
      {
        v57 = 0;
      }

      MEMORY[0x1865CD090](v57);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v56);
    }
  }

  v58 = *(v44 + v52[11]);
  if (v58 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v58);
  }
}

uint64_t NSDecimal.FormatStyle.Percent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySo9NSDecimala10FoundationE11FormatStyleV7PercentV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = v11 + *(v12 + 28);
  v14 = v3[9];
  v15 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v15 - 8) + 56))(v13 + v14, 1, 1, v15);
  *v13 = 0x4059000000000000;
  *(v13 + 8) = 0;
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = 0;
  *(v13 + 40) = 0x1FFFFFFFELL;
  *(v13 + 56) = 0;
  *(v13 + 64) = 0;
  *(v13 + 48) = 0;
  *(v13 + 72) = 131584;
  *(v13 + 76) = 512;
  v16 = v13 + v3[10];
  *v16 = 0;
  *(v16 + 8) = -1;
  *(v13 + v3[11]) = 3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.Percent.CodingKeys and conformance NSDecimal.FormatStyle.Percent.CodingKeys();
  v17 = v25;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v20 = type metadata accessor for NumberFormatStyleConfiguration.Collection;
    v21 = v13;
  }

  else
  {
    v27 = 0;
    lazy protocol witness table accessor for type Locale and conformance Locale();
    v18 = v24;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v11 = v26;
    LOBYTE(v26) = 1;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection, type metadata accessor for NumberFormatStyleConfiguration.Collection);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v23 + 8))(v8, v18);
    outlined assign with take of NumberFormatStyleConfiguration.Collection(v5, v13);
    outlined init with copy of NSDecimal.FormatStyle(v11, v22, type metadata accessor for NSDecimal.FormatStyle.Percent);
    __swift_destroy_boxed_opaque_existential_1(a1);
    v20 = type metadata accessor for NSDecimal.FormatStyle.Percent;
    v21 = v11;
  }

  return outlined destroy of NumberFormatStyleConfiguration.Collection(v21, v20);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSDecimal.FormatStyle(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v73 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v60 - v8;
  Hasher.init(_seed:)();
  v10 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  if (((*(v10 + 48))(ObjectType, v10) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v10 + 64))(ObjectType, v10);
    String.hash(into:)();

    (*(v10 + 464))(&v74, ObjectType, v10);
    v84[4] = v80;
    v85[0] = v81[0];
    *(v85 + 12) = *(v81 + 12);
    v84[0] = v76;
    v84[1] = v77;
    v84[2] = v78;
    v84[3] = v79;
    v82 = v74;
    v83 = v75;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v82) == 1)
    {
      Hasher._combine(_:)(0);
      goto LABEL_5;
    }

    v13 = v74;
    v14 = *(&v74 + 1);
    v60[1] = v75;
    v60[2] = v76;
    v61 = *(&v75 + 1);
    v62 = *(&v76 + 1);
    v63 = v77;
    v64 = v78;
    v65 = v79;
    v66 = v80;
    v60[3] = *(&v81[0] + 1);
    v67 = *&v81[0];
    v68 = *&v81[1];
    v69 = BYTE8(v81[1]);
    v70 = BYTE9(v81[1]);
    v71 = BYTE10(v81[1]);
    v15 = BYTE11(v81[1]);
    Hasher._combine(_:)(1u);
    if (v13 == 2)
    {
      v16 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v16 = v13 & 1;
    }

    v72 = v15;
    Hasher._combine(_:)(v16);
    if (v14)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v14 + 16));
      v17 = *(v14 + 16);
      if (v17)
      {
        v18 = v14 + 40;
        do
        {

          String.hash(into:)();

          v18 += 16;
          --v17;
        }

        while (v17);
      }

      if (v61)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v61)
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
LABEL_17:
    v12 = v9;
    v19 = *(&v64 + 1);
    v20 = *(&v63 + 1);
    if (v62)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v21 = v63;
      if (v63)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v21 = v63;
      if (v63)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v86, v21, v22, v23, v24, v25, v26, v27);
        if (v20)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }
    }

    Hasher._combine(_:)(0);
    if (v20)
    {
LABEL_20:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v86, v20, v28, v29, v30, v31, v32, v33);
      if (v64)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }

LABEL_25:
    Hasher._combine(_:)(0);
    if (v64)
    {
LABEL_21:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v19)
      {
LABEL_22:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_28;
      }

LABEL_27:
      Hasher._combine(_:)(0);
LABEL_28:
      v34 = v66;
      if (v65)
      {
        v35 = v67;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v65 + 1))
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_33;
        }
      }

      else
      {
        v35 = v67;
        Hasher._combine(_:)(0);
        if (*(&v65 + 1))
        {
          goto LABEL_30;
        }
      }

      Hasher._combine(_:)(0);
LABEL_33:
      v36 = v35;
      if (v34)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v37 = *(&v66 + 1);
      if (*(&v66 + 1))
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v86, v37);
        v38 = v69;
        if (v36)
        {
          goto LABEL_38;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v38 = v69;
        if (v36)
        {
LABEL_38:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v86, v36);
          if (v68)
          {
LABEL_39:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_43:
            v39 = v71;
            if (v38 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v38 & 1);
            }

            v40 = v70;
            if (v70 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v40 & 1);
            }

            v41 = v72;
            if (v39 == 2)
            {
              v42 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v42 = v39 & 1;
            }

            Hasher._combine(_:)(v42);
            if (v41 == 2)
            {
              v43 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v43 = v41 & 1;
            }

            Hasher._combine(_:)(v43);
            outlined destroy of TermOfAddress?(&v74, &_s10Foundation17LocalePreferencesVSgMd);
            goto LABEL_56;
          }

LABEL_42:
          Hasher._combine(_:)(0);
          goto LABEL_43;
        }
      }

      Hasher._combine(_:)(0);
      if (v68)
      {
        goto LABEL_39;
      }

      goto LABEL_42;
    }

LABEL_26:
    Hasher._combine(_:)(0);
    if (v19)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  Hasher._combine(_:)(1u);
LABEL_5:
  v12 = v9;
LABEL_56:
  v44 = (v2 + *(a2 + 20));
  if (*(v44 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v45 = *v44;
    Hasher._combine(_:)(1u);
    if ((v45 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    MEMORY[0x1865CD090](v46);
  }

  v47 = *(v44 + 2);
  v82 = *(v44 + 1);
  v83 = v47;
  v84[0] = *(v44 + 3);
  *(v84 + 9) = *(v44 + 57);
  specialized Optional<A>.hash(into:)();
  v48 = *(v44 + 73);
  if (v48 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v48 & 1);
  }

  v49 = *(v44 + 37);
  v50 = v49 | (*(v44 + 76) << 16);
  if (v49 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v50 & 1);
    MEMORY[0x1865CD060]((v50 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v50) & 1);
  }

  v51 = *(v44 + 77);
  if (v51 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v51 & 1);
  }

  v52 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v44 + v52[9], v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v53 = v73;
    (*(v5 + 32))(v73, v12, v4);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v53, v4);
  }

  v54 = (v44 + v52[10]);
  v55 = *(v54 + 8);
  if (v55 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v56 = *v54;
    Hasher._combine(_:)(1u);
    if (v55)
    {
      MEMORY[0x1865CD060](1);
      if ((v56 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v57 = v56;
      }

      else
      {
        v57 = 0;
      }

      MEMORY[0x1865CD090](v57);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v56);
    }
  }

  v58 = *(v44 + v52[11]);
  if (v58 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v58);
  }

  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance NSDecimal.FormatStyle(__int128 *a1, __int128 *a2, uint64_t a3)
{
  v6 = *a1;
  v10 = *a2;
  v11 = v6;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v7 = specialized static Locale.== infix(_:_:)(&v11, &v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);

  return static NumberFormatStyleConfiguration.Collection.== infix(_:_:)(a1 + v8, a2 + v8);
}

uint64_t NSDecimal.FormatStyle.Currency.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE11FormatStyleV8CurrencyV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = *v3;
  v12 = v10;
  v11 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  swift_unknownObjectRetain();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  swift_unknownObjectRelease();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for NSDecimal.FormatStyle.Currency(0);
    LOBYTE(v12) = 2;
    type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CurrencyFormatStyleConfiguration.Collection and conformance CurrencyFormatStyleConfiguration.Collection, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void NSDecimal.FormatStyle.Currency.hash(into:)(Swift::Int a1)
{
  v72 = type metadata accessor for FloatingPointRoundingRule();
  v3 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v71 = v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v59 - v6;
  v8 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  if (((*(v8 + 48))(ObjectType, v8) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v8 + 64))(ObjectType, v8);
    String.hash(into:)();

    (*(v8 + 464))(&v73, ObjectType, v8);
    v86 = v79;
    v87[0] = v80[0];
    *(v87 + 12) = *(v80 + 12);
    *v83 = v75;
    *&v83[16] = v76;
    v84 = v77;
    v85 = v78;
    v81 = v73;
    v82 = v74;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v81) == 1)
    {
      v10 = 0;
      goto LABEL_5;
    }

    v13 = v73;
    v14 = *(&v73 + 1);
    v15 = *(&v74 + 1);
    v59[1] = v74;
    v16 = *(&v75 + 1);
    v59[2] = v75;
    v61 = v76;
    v62 = v77;
    v63 = v78;
    v64 = v79;
    v59[3] = *(&v80[0] + 1);
    v65 = *&v80[0];
    v66 = *&v80[1];
    v67 = BYTE8(v80[1]);
    v68 = BYTE9(v80[1]);
    v69 = BYTE10(v80[1]);
    v70 = BYTE11(v80[1]);
    Hasher._combine(_:)(1u);
    if (v13 == 2)
    {
      v17 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v17 = v13 & 1;
    }

    v60 = v16;
    Hasher._combine(_:)(v17);
    if (v14)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v14 + 16));
      v18 = *(v14 + 16);
      if (v18)
      {
        v19 = v14 + 40;
        do
        {

          String.hash(into:)();

          v19 += 16;
          --v18;
        }

        while (v18);
      }

      if (v15)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v15)
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
LABEL_17:
    v11 = v3;
    v20 = v62;
    v21 = v61;
    v12 = v72;
    if (v60)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (v21)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v21)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v21, v22, v23, v24, v25, v26, v27);
        v28 = *(&v61 + 1);
        if (*(&v61 + 1))
        {
          goto LABEL_20;
        }

        goto LABEL_27;
      }
    }

    Hasher._combine(_:)(0);
    v28 = *(&v61 + 1);
    if (*(&v61 + 1))
    {
LABEL_20:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v28, v29, v30, v31, v32, v33, v34);
      if (v20)
      {
        goto LABEL_21;
      }

      goto LABEL_28;
    }

LABEL_27:
    Hasher._combine(_:)(0);
    if (v20)
    {
LABEL_21:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v62 + 1))
      {
        goto LABEL_22;
      }

      goto LABEL_29;
    }

LABEL_28:
    Hasher._combine(_:)(0);
    if (*(&v62 + 1))
    {
LABEL_22:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v63)
      {
        goto LABEL_23;
      }

      goto LABEL_30;
    }

LABEL_29:
    Hasher._combine(_:)(0);
    if (v63)
    {
LABEL_23:
      v35 = v65;
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (*(&v63 + 1))
      {
LABEL_24:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_32;
      }

LABEL_31:
      Hasher._combine(_:)(0);
LABEL_32:
      v36 = v35;
      if (v64)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        v37 = *(&v64 + 1);
        if (*(&v64 + 1))
        {
          goto LABEL_34;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v37 = *(&v64 + 1);
        if (*(&v64 + 1))
        {
LABEL_34:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v37);
          v38 = v67;
          if (v36)
          {
            goto LABEL_35;
          }

          goto LABEL_39;
        }
      }

      Hasher._combine(_:)(0);
      v38 = v67;
      if (v36)
      {
LABEL_35:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v36);
        if (v66)
        {
LABEL_36:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
LABEL_41:
          v39 = v69;
          if (v38 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v38 & 1);
          }

          v40 = v68;
          if (v68 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v40 & 1);
          }

          v41 = v70;
          if (v39 == 2)
          {
            v42 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v42 = v39 & 1;
          }

          Hasher._combine(_:)(v42);
          if (v41 == 2)
          {
            v43 = 0;
          }

          else
          {
            Hasher._combine(_:)(1u);
            v43 = v41 & 1;
          }

          Hasher._combine(_:)(v43);
          outlined destroy of TermOfAddress?(&v73, &_s10Foundation17LocalePreferencesVSgMd);
          goto LABEL_54;
        }

LABEL_40:
        Hasher._combine(_:)(0);
        goto LABEL_41;
      }

LABEL_39:
      Hasher._combine(_:)(0);
      if (v66)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }

LABEL_30:
    v35 = v65;
    Hasher._combine(_:)(0);
    if (*(&v63 + 1))
    {
      goto LABEL_24;
    }

    goto LABEL_31;
  }

  v10 = 1;
LABEL_5:
  Hasher._combine(_:)(v10);
  v11 = v3;
  v12 = v72;
LABEL_54:
  String.hash(into:)();
  v44 = (v1 + *(type metadata accessor for NSDecimal.FormatStyle.Currency(0) + 24));
  if (v44[1])
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v45 = *v44;
    Hasher._combine(_:)(1u);
    if ((v45 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    MEMORY[0x1865CD090](v46);
  }

  v47 = *(v44 + 2);
  v81 = *(v44 + 1);
  v82 = v47;
  *v83 = *(v44 + 3);
  *&v83[9] = *(v44 + 57);
  specialized Optional<A>.hash(into:)();
  v48 = *(v44 + 73);
  if (v48 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v48 & 1);
  }

  v49 = *(v44 + 74);
  if (*(v44 + 74) == 2)
  {
    LOBYTE(v50) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v49 & 1);
    MEMORY[0x1865CD060]((v49 >> 8) & 1);
    MEMORY[0x1865CD060](WORD1(v49) & 1);
    v50 = BYTE3(v49) & 1;
  }

  Hasher._combine(_:)(v50);
  v51 = *(v44 + 78);
  if (v51 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v51 & 1);
  }

  v52 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v44 + v52[9], v7);
  if ((*(v11 + 48))(v7, 1, v12) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v53 = v71;
    (*(v11 + 32))(v71, v7, v12);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v11 + 8))(v53, v12);
  }

  v54 = (v44 + v52[10]);
  v55 = *(v54 + 8);
  if (v55 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v56 = *v54;
    Hasher._combine(_:)(1u);
    if (v55)
    {
      MEMORY[0x1865CD060](1);
      if ((v56 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v57 = v56;
      }

      else
      {
        v57 = 0;
      }

      MEMORY[0x1865CD090](v57);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v56);
    }
  }

  MEMORY[0x1865CD060](*(v44 + v52[11]));
  v58 = *(v44 + v52[12]);
  if (v58 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v58);
  }
}

uint64_t NSDecimal.FormatStyle.hashValue.getter(void (*a1)(void), unint64_t *a2, void (*a3)(uint64_t))
{
  a1(0);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(a2, a3);

  return dispatch thunk of Hashable._rawHashValue(seed:)();
}

uint64_t NSDecimal.FormatStyle.Currency.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySo9NSDecimala10FoundationE11FormatStyleV8CurrencyV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  v10 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v23 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.Currency.CodingKeys and conformance NSDecimal.FormatStyle.Currency.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v23);
  }

  v14 = v21;
  v19[1] = v4;
  v15 = v12;
  v25 = 0;
  lazy protocol witness table accessor for type Locale and conformance Locale();
  v16 = v22;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v15 = v24;
  LOBYTE(v24) = 1;
  *(v15 + 16) = KeyedDecodingContainer.decode(_:forKey:)();
  *(v15 + 24) = v17;
  LOBYTE(v24) = 2;
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CurrencyFormatStyleConfiguration.Collection and conformance CurrencyFormatStyleConfiguration.Collection, type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v14 + 8))(v9, v16);
  outlined init with take of NSDecimal.FormatStyle.Percent(v6, v15 + *(v10 + 24), type metadata accessor for CurrencyFormatStyleConfiguration.Collection);
  outlined init with copy of NSDecimal.FormatStyle(v15, v20, type metadata accessor for NSDecimal.FormatStyle.Currency);
  __swift_destroy_boxed_opaque_existential_1(v23);
  return outlined destroy of NumberFormatStyleConfiguration.Collection(v15, type metadata accessor for NSDecimal.FormatStyle.Currency);
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance NSDecimal.FormatStyle@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, void, void)@<X3>, uint64_t *a3@<X8>)
{
  result = a2(*a1, *(a1 + 8), *(a1 + 16));
  *a3 = result;
  a3[1] = v5;
  return result;
}

__n128 protocol witness for FormatStyle.locale(_:) in conformance NSDecimal.FormatStyle@<Q0>(__n128 *a1@<X0>, uint64_t (*a2)(void)@<X3>, __n128 *a3@<X8>)
{
  outlined init with copy of NSDecimal.FormatStyle(v3, a3, a2);
  v7 = *a1;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  result = v7;
  *a3 = v7;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSDecimal.FormatStyle.Currency(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FloatingPointRoundingRule();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v73 = v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v60 - v8;
  Hasher.init(_seed:)();
  v10 = *(v2 + 8);
  ObjectType = swift_getObjectType();
  if (((*(v10 + 48))(ObjectType, v10) & 1) == 0)
  {
    Hasher._combine(_:)(0);
    (*(v10 + 64))(ObjectType, v10);
    String.hash(into:)();

    (*(v10 + 464))(&v74, ObjectType, v10);
    v84[4] = v80;
    v85[0] = v81[0];
    *(v85 + 12) = *(v81 + 12);
    v84[0] = v76;
    v84[1] = v77;
    v84[2] = v78;
    v84[3] = v79;
    v82 = v74;
    v83 = v75;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v82) == 1)
    {
      Hasher._combine(_:)(0);
      goto LABEL_5;
    }

    v13 = v74;
    v14 = *(&v74 + 1);
    v60[1] = v75;
    v60[2] = v76;
    v61 = *(&v75 + 1);
    v62 = *(&v76 + 1);
    v63 = v77;
    v64 = v78;
    v65 = v79;
    v66 = v80;
    v60[3] = *(&v81[0] + 1);
    v67 = *&v81[0];
    v68 = *&v81[1];
    v69 = BYTE8(v81[1]);
    v70 = BYTE9(v81[1]);
    v71 = BYTE10(v81[1]);
    v15 = BYTE11(v81[1]);
    Hasher._combine(_:)(1u);
    if (v13 == 2)
    {
      v16 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v16 = v13 & 1;
    }

    v72 = v15;
    Hasher._combine(_:)(v16);
    if (v14)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v14 + 16));
      v17 = *(v14 + 16);
      if (v17)
      {
        v18 = v14 + 40;
        do
        {

          String.hash(into:)();

          v18 += 16;
          --v17;
        }

        while (v17);
      }

      if (v61)
      {
        goto LABEL_14;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v61)
      {
LABEL_14:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_17;
      }
    }

    Hasher._combine(_:)(0);
LABEL_17:
    v12 = v9;
    v19 = *(&v64 + 1);
    v20 = *(&v63 + 1);
    if (v62)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      v21 = v63;
      if (v63)
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      v21 = v63;
      if (v63)
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v86, v21, v22, v23, v24, v25, v26, v27);
        if (v20)
        {
          goto LABEL_20;
        }

        goto LABEL_25;
      }
    }

    Hasher._combine(_:)(0);
    if (v20)
    {
LABEL_20:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(v86, v20, v28, v29, v30, v31, v32, v33);
      if (v64)
      {
        goto LABEL_21;
      }

      goto LABEL_26;
    }

LABEL_25:
    Hasher._combine(_:)(0);
    if (v64)
    {
LABEL_21:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      if (v19)
      {
LABEL_22:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_28;
      }

LABEL_27:
      Hasher._combine(_:)(0);
LABEL_28:
      v34 = v66;
      if (v65)
      {
        v35 = v67;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v65 + 1))
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_33;
        }
      }

      else
      {
        v35 = v67;
        Hasher._combine(_:)(0);
        if (*(&v65 + 1))
        {
          goto LABEL_30;
        }
      }

      Hasher._combine(_:)(0);
LABEL_33:
      v36 = v35;
      if (v34)
      {
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v37 = *(&v66 + 1);
      if (*(&v66 + 1))
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(v86, v37);
        v38 = v69;
        if (v36)
        {
          goto LABEL_38;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v38 = v69;
        if (v36)
        {
LABEL_38:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(v86, v36);
          if (v68)
          {
LABEL_39:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
LABEL_43:
            v39 = v71;
            if (v38 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v38 & 1);
            }

            v40 = v70;
            if (v70 == 2)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v40 & 1);
            }

            v41 = v72;
            if (v39 == 2)
            {
              v42 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v42 = v39 & 1;
            }

            Hasher._combine(_:)(v42);
            if (v41 == 2)
            {
              v43 = 0;
            }

            else
            {
              Hasher._combine(_:)(1u);
              v43 = v41 & 1;
            }

            Hasher._combine(_:)(v43);
            outlined destroy of TermOfAddress?(&v74, &_s10Foundation17LocalePreferencesVSgMd);
            goto LABEL_56;
          }

LABEL_42:
          Hasher._combine(_:)(0);
          goto LABEL_43;
        }
      }

      Hasher._combine(_:)(0);
      if (v68)
      {
        goto LABEL_39;
      }

      goto LABEL_42;
    }

LABEL_26:
    Hasher._combine(_:)(0);
    if (v19)
    {
      goto LABEL_22;
    }

    goto LABEL_27;
  }

  Hasher._combine(_:)(1u);
LABEL_5:
  v12 = v9;
LABEL_56:
  String.hash(into:)();
  v44 = (v2 + *(a2 + 24));
  if (*(v44 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v45 = *v44;
    Hasher._combine(_:)(1u);
    if ((v45 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v46 = v45;
    }

    else
    {
      v46 = 0;
    }

    MEMORY[0x1865CD090](v46);
  }

  v47 = *(v44 + 2);
  v82 = *(v44 + 1);
  v83 = v47;
  v84[0] = *(v44 + 3);
  *(v84 + 9) = *(v44 + 57);
  specialized Optional<A>.hash(into:)();
  v48 = *(v44 + 73);
  if (v48 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v48 & 1);
  }

  v49 = *(v44 + 74);
  if (*(v44 + 74) == 2)
  {
    LOBYTE(v50) = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v49 & 1);
    MEMORY[0x1865CD060]((v49 >> 8) & 1);
    MEMORY[0x1865CD060](WORD1(v49) & 1);
    v50 = BYTE3(v49) & 1;
  }

  Hasher._combine(_:)(v50);
  v51 = *(v44 + 78);
  if (v51 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v51 & 1);
  }

  v52 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(v44 + v52[9], v12);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v53 = v73;
    (*(v5 + 32))(v73, v12, v4);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v53, v4);
  }

  v54 = (v44 + v52[10]);
  v55 = *(v54 + 8);
  if (v55 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v56 = *v54;
    Hasher._combine(_:)(1u);
    if (v55)
    {
      MEMORY[0x1865CD060](1);
      if ((v56 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v57 = v56;
      }

      else
      {
        v57 = 0;
      }

      MEMORY[0x1865CD090](v57);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v56);
    }
  }

  MEMORY[0x1865CD060](*(v44 + v52[11]));
  v58 = *(v44 + v52[12]);
  if (v58 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v58);
  }

  return Hasher._finalize()();
}

uint64_t NSDecimal.FormatStyle.Attributed.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10AttributedV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style and conformance NSDecimal.FormatStyle.Attributed.Style, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t NSDecimal.FormatStyle.Attributed.hash(into:)(Swift::Int a1)
{
  v3 = type metadata accessor for FloatingPointRoundingRule();
  v213 = *(v3 - 8);
  v214 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v212 = &v198 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss25FloatingPointRoundingRuleOSgMd);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v211 = &v198 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v210 = &v198 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v198 - v10;
  v208 = type metadata accessor for NSDecimal.FormatStyle.Percent(0);
  MEMORY[0x1EEE9AC00](v208);
  v13 = &v198 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v209 = type metadata accessor for NSDecimal.FormatStyle.Currency(0);
  MEMORY[0x1EEE9AC00](v209);
  v15 = &v198 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for NSDecimal.FormatStyle(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v198 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v198 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of NSDecimal.FormatStyle(v1, v21, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      outlined init with take of NSDecimal.FormatStyle.Percent(v21, v15, type metadata accessor for NSDecimal.FormatStyle.Currency);
      MEMORY[0x1865CD060](1);
      v23 = *(v15 + 1);
      ObjectType = swift_getObjectType();
      if ((*(v23 + 48))(ObjectType, v23))
      {
        v25 = 1;
LABEL_11:
        Hasher._combine(_:)(v25);
        v34 = v214;
        v35 = v209;
        v36 = v210;
        goto LABEL_84;
      }

      Hasher._combine(_:)(0);
      (*(v23 + 64))(ObjectType, v23);
      String.hash(into:)();

      (*(v23 + 464))(&v215, ObjectType, v23);
      v228 = v221;
      v229[0] = v222[0];
      *(v229 + 12) = *(v222 + 12);
      *v225 = v217;
      *&v225[16] = v218;
      v226 = v219;
      v227 = v220;
      v223 = v215;
      v224 = v216;
      if (_s10Foundation17LocalePreferencesVSgWOg(&v223) == 1)
      {
        v25 = 0;
        goto LABEL_11;
      }

      v43 = v215;
      v44 = *(&v215 + 1);
      v45 = *(&v216 + 1);
      v198 = v216;
      v46 = *(&v217 + 1);
      v199 = v217;
      v201 = v218;
      v202 = v219;
      v203 = v220;
      *&v204[8] = v221;
      v200 = *(&v222[0] + 1);
      v205 = *&v222[0];
      v206 = *&v222[1];
      v47 = BYTE8(v222[1]);
      v208 = BYTE9(v222[1]);
      LODWORD(v207) = BYTE10(v222[1]);
      LODWORD(v211) = BYTE11(v222[1]);
      Hasher._combine(_:)(1u);
      if (v43 == 2)
      {
        v48 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v48 = v43 & 1;
      }

      Hasher._combine(_:)(v48);
      if (v44)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x1865CD060](*(v44 + 16));
        v61 = *(v44 + 16);
        if (v61)
        {
          v62 = v44 + 40;
          do
          {

            String.hash(into:)();

            v62 += 16;
            --v61;
          }

          while (v61);
        }

        *v204 = v47;
        if (v45)
        {
          goto LABEL_30;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        *v204 = v47;
        if (v45)
        {
LABEL_30:
          Hasher._combine(_:)(1u);
          String.hash(into:)();
          goto LABEL_47;
        }
      }

      Hasher._combine(_:)(0);
LABEL_47:
      v34 = v214;
      v35 = v209;
      v36 = v210;
      v67 = *(&v202 + 1);
      v68 = *(&v201 + 1);
      if (v46)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        v69 = v201;
        if (v201)
        {
          goto LABEL_49;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v69 = v201;
        if (v201)
        {
LABEL_49:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v69, v70, v71, v72, v73, v74, v75);
          if (v68)
          {
            goto LABEL_50;
          }

          goto LABEL_55;
        }
      }

      Hasher._combine(_:)(0);
      if (v68)
      {
LABEL_50:
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v68, v76, v77, v78, v79, v80, v81);
        if (v202)
        {
          goto LABEL_51;
        }

        goto LABEL_56;
      }

LABEL_55:
      Hasher._combine(_:)(0);
      if (v202)
      {
LABEL_51:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (v67)
        {
LABEL_52:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_58;
        }

LABEL_57:
        Hasher._combine(_:)(0);
LABEL_58:
        v82 = v205;
        if (v203)
        {
          v83 = v208;
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          if (*(&v203 + 1))
          {
LABEL_60:
            Hasher._combine(_:)(1u);
            type metadata accessor for CFDictionaryRef(0);
            lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
            _CFObject.hash(into:)();
            goto LABEL_63;
          }
        }

        else
        {
          v83 = v208;
          Hasher._combine(_:)(0);
          if (*(&v203 + 1))
          {
            goto LABEL_60;
          }
        }

        Hasher._combine(_:)(0);
LABEL_63:
        v84 = v83;
        if (*&v204[8])
        {
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
        }

        else
        {
          Hasher._combine(_:)(0);
        }

        v85 = v82;
        v86 = *&v204[16];
        if (*&v204[16])
        {
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v86);
          v87 = *v204;
          if (v85)
          {
            goto LABEL_68;
          }
        }

        else
        {
          Hasher._combine(_:)(0);
          v87 = *v204;
          if (v85)
          {
LABEL_68:
            Hasher._combine(_:)(1u);
            specialized Dictionary<>.hash(into:)(a1, v85);
            if (v206)
            {
LABEL_69:
              Hasher._combine(_:)(1u);
              String.hash(into:)();
              goto LABEL_73;
            }

LABEL_72:
            Hasher._combine(_:)(0);
LABEL_73:
            v88 = v207;
            if (v87 == 2)
            {
              Hasher._combine(_:)(0);
              if (v84 != 2)
              {
                goto LABEL_75;
              }
            }

            else
            {
              Hasher._combine(_:)(1u);
              MEMORY[0x1865CD060](v87 & 1);
              if (v84 != 2)
              {
LABEL_75:
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v84 & 1);
                if (v88 != 2)
                {
LABEL_76:
                  Hasher._combine(_:)(1u);
                  v89 = v88 & 1;
LABEL_80:
                  Hasher._combine(_:)(v89);
                  v90 = v211;
                  if (v211 == 2)
                  {
                    v91 = 0;
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    v91 = v90 & 1;
                  }

                  Hasher._combine(_:)(v91);
                  outlined destroy of TermOfAddress?(&v215, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_84:
                  String.hash(into:)();
                  v92 = &v15[*(v35 + 24)];
                  if (v92[8] == 1)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v93 = *v92;
                    Hasher._combine(_:)(1u);
                    if ((v93 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                    {
                      v94 = v93;
                    }

                    else
                    {
                      v94 = 0;
                    }

                    MEMORY[0x1865CD090](v94);
                  }

                  v95 = v213;
                  v96 = *(v92 + 2);
                  v223 = *(v92 + 1);
                  v224 = v96;
                  *v225 = *(v92 + 3);
                  *&v225[9] = *(v92 + 57);
                  specialized Optional<A>.hash(into:)();
                  v97 = v92[73];
                  if (v97 == 2)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v97 & 1);
                  }

                  v98 = *(v92 + 74);
                  if (*(v92 + 74) == 2)
                  {
                    LOBYTE(v99) = 0;
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v98 & 1);
                    MEMORY[0x1865CD060]((v98 >> 8) & 1);
                    MEMORY[0x1865CD060](WORD1(v98) & 1);
                    v99 = BYTE3(v98) & 1;
                  }

                  Hasher._combine(_:)(v99);
                  v100 = v92[78];
                  if (v100 == 2)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v100 & 1);
                  }

                  v101 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
                  outlined init with copy of FloatingPointRoundingRule?(&v92[v101[9]], v36);
                  if ((*(v95 + 48))(v36, 1, v34) == 1)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v102 = v212;
                    (*(v95 + 32))(v212, v36, v34);
                    Hasher._combine(_:)(1u);
                    dispatch thunk of Hashable.hash(into:)();
                    (*(v95 + 8))(v102, v34);
                  }

                  v103 = &v92[v101[10]];
                  v104 = v103[8];
                  if (v104 == 255)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    v105 = *v103;
                    Hasher._combine(_:)(1u);
                    if (v104)
                    {
                      MEMORY[0x1865CD060](1);
                      if ((v105 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                      {
                        v106 = v105;
                      }

                      else
                      {
                        v106 = 0;
                      }

                      MEMORY[0x1865CD090](v106);
                    }

                    else
                    {
                      MEMORY[0x1865CD060](0);
                      MEMORY[0x1865CD060](v105);
                    }
                  }

                  MEMORY[0x1865CD060](v92[v101[11]]);
                  v107 = v92[v101[12]];
                  if (v107 == 3)
                  {
                    Hasher._combine(_:)(0);
                  }

                  else
                  {
                    Hasher._combine(_:)(1u);
                    MEMORY[0x1865CD060](v107);
                  }

                  v108 = type metadata accessor for NSDecimal.FormatStyle.Currency;
                  v109 = v15;
                  return outlined destroy of NumberFormatStyleConfiguration.Collection(v109, v108);
                }

LABEL_79:
                v89 = 0;
                goto LABEL_80;
              }
            }

            Hasher._combine(_:)(0);
            if (v88 != 2)
            {
              goto LABEL_76;
            }

            goto LABEL_79;
          }
        }

        Hasher._combine(_:)(0);
        if (v206)
        {
          goto LABEL_69;
        }

        goto LABEL_72;
      }

LABEL_56:
      Hasher._combine(_:)(0);
      if (v67)
      {
        goto LABEL_52;
      }

      goto LABEL_57;
    }

    v30 = v13;
    outlined init with take of NSDecimal.FormatStyle.Percent(v21, v13, type metadata accessor for NSDecimal.FormatStyle.Percent);
    MEMORY[0x1865CD060](2);
    v31 = *(v13 + 1);
    v32 = swift_getObjectType();
    if ((*(v31 + 48))(v32, v31))
    {
      v33 = 1;
LABEL_17:
      Hasher._combine(_:)(v33);
      v40 = v213;
      v41 = v214;
      v42 = v208;
      goto LABEL_225;
    }

    Hasher._combine(_:)(0);
    (*(v31 + 64))(v32, v31);
    String.hash(into:)();

    (*(v31 + 464))(&v215, v32, v31);
    v228 = v221;
    v229[0] = v222[0];
    *(v229 + 12) = *(v222 + 12);
    *v225 = v217;
    *&v225[16] = v218;
    v226 = v219;
    v227 = v220;
    v223 = v215;
    v224 = v216;
    if (_s10Foundation17LocalePreferencesVSgWOg(&v223) == 1)
    {
      v33 = 0;
      goto LABEL_17;
    }

    v55 = v215;
    v56 = *(&v215 + 1);
    v57 = *(&v216 + 1);
    v198 = v216;
    v58 = *(&v217 + 1);
    v199 = v217;
    v201 = v218;
    v202 = v219;
    v203 = v220;
    *&v204[16] = *(&v221 + 1);
    *v204 = v221;
    v200 = *(&v222[0] + 1);
    v205 = *&v222[0];
    v206 = *&v222[1];
    v207 = BYTE8(v222[1]);
    v209 = BYTE9(v222[1]);
    v59 = BYTE10(v222[1]);
    LODWORD(v210) = BYTE11(v222[1]);
    Hasher._combine(_:)(1u);
    if (v55 == 2)
    {
      v60 = 0;
    }

    else
    {
      Hasher._combine(_:)(1u);
      v60 = v55 & 1;
    }

    Hasher._combine(_:)(v60);
    if (v56)
    {
      Hasher._combine(_:)(1u);
      MEMORY[0x1865CD060](*(v56 + 16));
      v65 = *(v56 + 16);
      if (v65)
      {
        v66 = v56 + 40;
        do
        {

          String.hash(into:)();

          v66 += 16;
          --v65;
        }

        while (v65);
      }

      *&v204[8] = v59;
      if (v57)
      {
        goto LABEL_44;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      *&v204[8] = v59;
      if (v57)
      {
LABEL_44:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_186;
      }
    }

    Hasher._combine(_:)(0);
LABEL_186:
    v40 = v213;
    v42 = v208;
    v153 = v203;
    v154 = v202;
    if (v58)
    {
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v30 = v13;
    v155 = v201;
    if (v201)
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v155, v156, v157, v158, v159, v160, v161);
    }

    else
    {
      Hasher._combine(_:)(0);
    }

    v41 = v214;
    v162 = *(&v201 + 1);
    if (*(&v201 + 1))
    {
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v162, v163, v164, v165, v166, v167, v168);
      if (v154)
      {
        goto LABEL_194;
      }
    }

    else
    {
      Hasher._combine(_:)(0);
      if (v154)
      {
LABEL_194:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*(&v202 + 1))
        {
          goto LABEL_195;
        }

        goto LABEL_199;
      }
    }

    Hasher._combine(_:)(0);
    if (*(&v202 + 1))
    {
LABEL_195:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      v169 = v206;
      if (v153)
      {
LABEL_196:
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        goto LABEL_201;
      }

LABEL_200:
      Hasher._combine(_:)(0);
LABEL_201:
      v170 = v169;
      if (*(&v203 + 1))
      {
        v171 = v209;
        Hasher._combine(_:)(1u);
        type metadata accessor for CFDictionaryRef(0);
        lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
        _CFObject.hash(into:)();
        if (*v204)
        {
LABEL_203:
          Hasher._combine(_:)(1u);
          type metadata accessor for CFDictionaryRef(0);
          lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
          _CFObject.hash(into:)();
          goto LABEL_206;
        }
      }

      else
      {
        v171 = v209;
        Hasher._combine(_:)(0);
        if (*v204)
        {
          goto LABEL_203;
        }
      }

      Hasher._combine(_:)(0);
LABEL_206:
      v172 = v171;
      v173 = v170;
      v174 = *&v204[16];
      if (*&v204[16])
      {
        Hasher._combine(_:)(1u);
        specialized Dictionary<>.hash(into:)(a1, v174);
        v175 = v205;
        if (v205)
        {
          goto LABEL_208;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        v175 = v205;
        if (v205)
        {
LABEL_208:
          Hasher._combine(_:)(1u);
          specialized Dictionary<>.hash(into:)(a1, v175);
          v176 = v210;
          if (v173)
          {
LABEL_209:
            Hasher._combine(_:)(1u);
            String.hash(into:)();
            goto LABEL_213;
          }

LABEL_212:
          Hasher._combine(_:)(0);
LABEL_213:
          v177 = v207;
          if (v207 == 2)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v177 & 1);
          }

          v178 = *&v204[8];
          if (v172 == 2)
          {
            Hasher._combine(_:)(0);
            if (v178 != 2)
            {
LABEL_218:
              Hasher._combine(_:)(1u);
              v179 = v178 & 1;
LABEL_221:
              Hasher._combine(_:)(v179);
              if (v176 == 2)
              {
                v180 = 0;
              }

              else
              {
                Hasher._combine(_:)(1u);
                v180 = v176 & 1;
              }

              Hasher._combine(_:)(v180);
              outlined destroy of TermOfAddress?(&v215, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_225:
              v181 = &v30[*(v42 + 20)];
              if (v181[8] == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v182 = *v181;
                Hasher._combine(_:)(1u);
                if ((v182 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                {
                  v183 = v182;
                }

                else
                {
                  v183 = 0;
                }

                MEMORY[0x1865CD090](v183);
              }

              v184 = *(v181 + 2);
              v223 = *(v181 + 1);
              v224 = v184;
              *v225 = *(v181 + 3);
              *&v225[9] = *(v181 + 57);
              specialized Optional<A>.hash(into:)();
              v185 = v181[73];
              if (v185 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v185 & 1);
              }

              v186 = *(v181 + 37);
              v187 = v186 | (v181[76] << 16);
              if (v186 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v187 & 1);
                MEMORY[0x1865CD060]((v187 >> 8) & 1);
                MEMORY[0x1865CD060](HIWORD(v187) & 1);
              }

              v188 = v181[77];
              if (v188 == 2)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v188 & 1);
              }

              v189 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
              v190 = v211;
              outlined init with copy of FloatingPointRoundingRule?(&v181[v189[9]], v211);
              if ((*(v40 + 48))(v190, 1, v41) == 1)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v191 = v212;
                (*(v40 + 32))(v212, v190, v41);
                Hasher._combine(_:)(1u);
                dispatch thunk of Hashable.hash(into:)();
                (*(v40 + 8))(v191, v41);
              }

              v192 = &v181[v189[10]];
              v193 = v192[8];
              if (v193 == 255)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                v194 = *v192;
                Hasher._combine(_:)(1u);
                if (v193)
                {
                  MEMORY[0x1865CD060](1);
                  if ((v194 & 0x7FFFFFFFFFFFFFFFLL) != 0)
                  {
                    v195 = v194;
                  }

                  else
                  {
                    v195 = 0;
                  }

                  MEMORY[0x1865CD090](v195);
                }

                else
                {
                  MEMORY[0x1865CD060](0);
                  MEMORY[0x1865CD060](v194);
                }
              }

              v196 = v181[v189[11]];
              if (v196 == 3)
              {
                Hasher._combine(_:)(0);
              }

              else
              {
                Hasher._combine(_:)(1u);
                MEMORY[0x1865CD060](v196);
              }

              v108 = type metadata accessor for NSDecimal.FormatStyle.Percent;
              v109 = v30;
              return outlined destroy of NumberFormatStyleConfiguration.Collection(v109, v108);
            }
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x1865CD060](v172 & 1);
            if (v178 != 2)
            {
              goto LABEL_218;
            }
          }

          v179 = 0;
          goto LABEL_221;
        }
      }

      Hasher._combine(_:)(0);
      v176 = v210;
      if (v173)
      {
        goto LABEL_209;
      }

      goto LABEL_212;
    }

LABEL_199:
    Hasher._combine(_:)(0);
    v169 = v206;
    if (v153)
    {
      goto LABEL_196;
    }

    goto LABEL_200;
  }

  v26 = v16;
  v211 = v11;
  outlined init with take of NSDecimal.FormatStyle.Percent(v21, v18, type metadata accessor for NSDecimal.FormatStyle);
  MEMORY[0x1865CD060](0);
  v27 = *(v18 + 1);
  v28 = swift_getObjectType();
  if ((*(v27 + 48))(v28, v27))
  {
    v29 = 1;
LABEL_14:
    Hasher._combine(_:)(v29);
    v38 = v213;
    v37 = v214;
    v39 = v26;
    goto LABEL_154;
  }

  Hasher._combine(_:)(0);
  (*(v27 + 64))(v28, v27);
  String.hash(into:)();

  (*(v27 + 464))(&v215, v28, v27);
  v228 = v221;
  v229[0] = v222[0];
  *(v229 + 12) = *(v222 + 12);
  *v225 = v217;
  *&v225[16] = v218;
  v226 = v219;
  v227 = v220;
  v223 = v215;
  v224 = v216;
  if (_s10Foundation17LocalePreferencesVSgWOg(&v223) == 1)
  {
    v29 = 0;
    goto LABEL_14;
  }

  v210 = v18;
  v49 = v215;
  v50 = *(&v215 + 1);
  v51 = *(&v216 + 1);
  v198 = v216;
  v52 = *(&v217 + 1);
  v199 = v217;
  v201 = v218;
  v202 = v219;
  v203 = v220;
  *v204 = v221;
  v200 = *(&v222[0] + 1);
  v205 = *&v222[0];
  v206 = *&v222[1];
  v207 = BYTE8(v222[1]);
  v208 = BYTE9(v222[1]);
  LODWORD(v209) = BYTE10(v222[1]);
  v53 = BYTE11(v222[1]);
  Hasher._combine(_:)(1u);
  if (v49 == 2)
  {
    v54 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v54 = v49 & 1;
  }

  Hasher._combine(_:)(v54);
  if (v50)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](*(v50 + 16));
    v63 = *(v50 + 16);
    if (v63)
    {
      v64 = v50 + 40;
      do
      {

        String.hash(into:)();

        v64 += 16;
        --v63;
      }

      while (v63);
    }

    *&v204[16] = v53;
    if (v51)
    {
      goto LABEL_37;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    *&v204[16] = v53;
    if (v51)
    {
LABEL_37:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      goto LABEL_116;
    }
  }

  Hasher._combine(_:)(0);
LABEL_116:
  v37 = v214;
  v39 = v26;
  v110 = v202;
  v18 = v210;
  v111 = v203;
  if (v52)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v38 = v213;
  v112 = v201;
  if (v201)
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v112, v113, v114, v115, v116, v117, v118);
    v119 = *(&v201 + 1);
    if (*(&v201 + 1))
    {
      goto LABEL_121;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    v119 = *(&v201 + 1);
    if (*(&v201 + 1))
    {
LABEL_121:
      Hasher._combine(_:)(1u);
      specialized Dictionary<>.hash(into:)(a1, v119, v120, v121, v122, v123, v124, v125);
      if (v110)
      {
        goto LABEL_122;
      }

      goto LABEL_127;
    }
  }

  Hasher._combine(_:)(0);
  if (v110)
  {
LABEL_122:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*(&v202 + 1))
    {
      goto LABEL_123;
    }

LABEL_128:
    Hasher._combine(_:)(0);
    if (v111)
    {
      goto LABEL_124;
    }

    goto LABEL_129;
  }

LABEL_127:
  Hasher._combine(_:)(0);
  if (!*(&v202 + 1))
  {
    goto LABEL_128;
  }

LABEL_123:
  Hasher._combine(_:)(1u);
  type metadata accessor for CFDictionaryRef(0);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
  _CFObject.hash(into:)();
  if (v111)
  {
LABEL_124:
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    goto LABEL_130;
  }

LABEL_129:
  Hasher._combine(_:)(0);
LABEL_130:
  v126 = v206;
  if (*(&v203 + 1))
  {
    v127 = v208;
    Hasher._combine(_:)(1u);
    type metadata accessor for CFDictionaryRef(0);
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
    _CFObject.hash(into:)();
    if (*v204)
    {
LABEL_132:
      Hasher._combine(_:)(1u);
      type metadata accessor for CFDictionaryRef(0);
      lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type CFDictionaryRef and conformance CFDictionaryRef, type metadata accessor for CFDictionaryRef);
      _CFObject.hash(into:)();
      goto LABEL_135;
    }
  }

  else
  {
    v127 = v208;
    Hasher._combine(_:)(0);
    if (*v204)
    {
      goto LABEL_132;
    }
  }

  Hasher._combine(_:)(0);
LABEL_135:
  v128 = v127;
  v129 = v126;
  v130 = *&v204[8];
  if (*&v204[8])
  {
    Hasher._combine(_:)(1u);
    specialized Dictionary<>.hash(into:)(a1, v130);
    v131 = v205;
    if (v205)
    {
      goto LABEL_137;
    }

LABEL_140:
    Hasher._combine(_:)(0);
    v132 = v209;
    if (v129)
    {
      goto LABEL_138;
    }

    goto LABEL_141;
  }

  Hasher._combine(_:)(0);
  v131 = v205;
  if (!v205)
  {
    goto LABEL_140;
  }

LABEL_137:
  Hasher._combine(_:)(1u);
  specialized Dictionary<>.hash(into:)(a1, v131);
  v132 = v209;
  if (v129)
  {
LABEL_138:
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    goto LABEL_142;
  }

LABEL_141:
  Hasher._combine(_:)(0);
LABEL_142:
  v133 = v207;
  if (v207 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v133 & 1);
  }

  v134 = *&v204[16];
  if (v128 != 2)
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v128 & 1);
    if (v132 != 2)
    {
      goto LABEL_147;
    }

LABEL_149:
    v135 = 0;
    goto LABEL_150;
  }

  Hasher._combine(_:)(0);
  if (v132 == 2)
  {
    goto LABEL_149;
  }

LABEL_147:
  Hasher._combine(_:)(1u);
  v135 = v132 & 1;
LABEL_150:
  Hasher._combine(_:)(v135);
  if (v134 == 2)
  {
    v136 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v136 = v134 & 1;
  }

  Hasher._combine(_:)(v136);
  outlined destroy of TermOfAddress?(&v215, &_s10Foundation17LocalePreferencesVSgMd);
LABEL_154:
  v137 = &v18[*(v39 + 20)];
  if (v137[8] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v138 = *v137;
    Hasher._combine(_:)(1u);
    if ((v138 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v139 = v138;
    }

    else
    {
      v139 = 0;
    }

    MEMORY[0x1865CD090](v139);
  }

  v140 = v211;
  v141 = *(v137 + 2);
  v223 = *(v137 + 1);
  v224 = v141;
  *v225 = *(v137 + 3);
  *&v225[9] = *(v137 + 57);
  specialized Optional<A>.hash(into:)();
  v142 = v137[73];
  if (v142 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v142 & 1);
  }

  v143 = *(v137 + 37);
  v144 = v143 | (v137[76] << 16);
  if (v143 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v144 & 1);
    MEMORY[0x1865CD060]((v144 >> 8) & 1);
    MEMORY[0x1865CD060](HIWORD(v144) & 1);
  }

  v145 = v137[77];
  if (v145 == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v145 & 1);
  }

  v146 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  outlined init with copy of FloatingPointRoundingRule?(&v137[v146[9]], v140);
  if ((*(v38 + 48))(v140, 1, v37) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v147 = v212;
    (*(v38 + 32))(v212, v140, v37);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v38 + 8))(v147, v37);
  }

  v148 = &v137[v146[10]];
  v149 = v148[8];
  if (v149 == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v150 = *v148;
    Hasher._combine(_:)(1u);
    if (v149)
    {
      MEMORY[0x1865CD060](1);
      if ((v150 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v151 = v150;
      }

      else
      {
        v151 = 0;
      }

      MEMORY[0x1865CD090](v151);
    }

    else
    {
      MEMORY[0x1865CD060](0);
      MEMORY[0x1865CD060](v150);
    }
  }

  v152 = v137[v146[11]];
  if (v152 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x1865CD060](v152);
  }

  v108 = type metadata accessor for NSDecimal.FormatStyle;
  v109 = v18;
  return outlined destroy of NumberFormatStyleConfiguration.Collection(v109, v108);
}

Swift::Int NSDecimal.FormatStyle.Attributed.hashValue.getter()
{
  Hasher.init(_seed:)();
  NSDecimal.FormatStyle.Attributed.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t NSDecimal.FormatStyle.Attributed.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10AttributedV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for NSDecimal.FormatStyle.Attributed(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style and conformance NSDecimal.FormatStyle.Attributed.Style, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    outlined init with take of NSDecimal.FormatStyle.Percent(v13, v11, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
    outlined init with take of NSDecimal.FormatStyle.Percent(v11, v12, type metadata accessor for NSDecimal.FormatStyle.Attributed);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance NSDecimal.FormatStyle.Attributed(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo9NSDecimala10FoundationE11FormatStyleV10AttributedV10CodingKeys33_93C8DFD00D540E29DFE48361BCDCE209LLOGMd);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type NSDecimal.FormatStyle.Attributed.CodingKeys and conformance NSDecimal.FormatStyle.Attributed.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for NSDecimal.FormatStyle.Attributed.Style(0);
  lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type NSDecimal.FormatStyle.Attributed.Style and conformance NSDecimal.FormatStyle.Attributed.Style, type metadata accessor for NSDecimal.FormatStyle.Attributed.Style);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance NSDecimal.FormatStyle.Attributed.Style(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance NSDecimal.FormatStyle.Attributed.Style(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t NSDecimal.FormatStyle.parseStrategy.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = v3;
  outlined init with copy of NSDecimal.FormatStyle(v6, a3, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  *(a3 + *(result + 36)) = 1;
  return result;
}

uint64_t protocol witness for ParseableFormatStyle.parseStrategy.getter in conformance NSDecimal.FormatStyle@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = v3;
  outlined init with copy of NSDecimal.FormatStyle(v5, a3, a1);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a2);
  *(a3 + *(result + 36)) = 1;
  return result;
}

uint64_t static FormatStyle<>.number.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v3 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  v4 = a1 + *(type metadata accessor for NSDecimal.FormatStyle(0) + 20);
  *v4 = 0;
  v4[8] = 1;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x1FFFFFFFELL;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  *(v4 + 18) = 131584;
  *(v4 + 38) = 512;
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  result = (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  v9 = &v4[v5[10]];
  *v9 = 0;
  v9[8] = -1;
  v4[v5[11]] = 3;
  *a1 = inited;
  a1[1] = v3;
  return result;
}

uint64_t static FormatStyle<>.percent.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v3 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  v4 = a1 + *(type metadata accessor for NSDecimal.FormatStyle.Percent(0) + 20);
  v5 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v6 = v5[9];
  v7 = type metadata accessor for FloatingPointRoundingRule();
  result = (*(*(v7 - 8) + 56))(&v4[v6], 1, 1, v7);
  *v4 = 0x4059000000000000;
  v4[8] = 0;
  *(v4 + 2) = 0;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0x1FFFFFFFELL;
  *(v4 + 7) = 0;
  *(v4 + 8) = 0;
  *(v4 + 6) = 0;
  *(v4 + 18) = 131584;
  *(v4 + 38) = 512;
  v9 = &v4[v5[10]];
  *v9 = 0;
  v9[8] = -1;
  v4[v5[11]] = 3;
  *a1 = inited;
  a1[1] = v3;
  return result;
}

uint64_t static FormatStyle<>.currency(code:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v7 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  *a3 = inited;
  a3[1] = v7;
  a3[2] = a1;
  a3[3] = a2;
  v8 = a3 + *(type metadata accessor for NSDecimal.FormatStyle.Currency(0) + 24);
  v9 = type metadata accessor for CurrencyFormatStyleConfiguration.Collection(0);
  v10 = v9[9];
  v11 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v11 - 8) + 56))(&v8[v10], 1, 1, v11);
  *v8 = 0;
  v8[8] = 1;
  *(v8 + 2) = 0;
  *(v8 + 3) = 0;
  *(v8 + 4) = 0;
  *(v8 + 5) = 0x1FFFFFFFELL;
  *(v8 + 7) = 0;
  *(v8 + 8) = 0;
  *(v8 + 6) = 0;
  *(v8 + 36) = 512;
  *(v8 + 74) = 2;
  v8[78] = 2;
  v12 = &v8[v9[10]];
  *v12 = 0;
  v12[8] = -1;
  v8[v9[11]] = 1;
  v8[v9[12]] = 3;
}

Swift::String __swiftcall NSDecimal.formatted()()
{
  LODWORD(v110) = v2;
  v3 = v1;
  v109 = v0;
  v121 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for NSDecimal.FormatStyle(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v101 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for _LocaleAutoupdating();
  inited = swift_initStaticObject();
  v9 = lazy protocol witness table accessor for type NumberFormatStyleConfiguration.Collection and conformance NumberFormatStyleConfiguration.Collection(&lazy protocol witness table cache variable for type _LocaleAutoupdating and conformance _LocaleAutoupdating, type metadata accessor for _LocaleAutoupdating);
  v10 = v7 + *(v5 + 28);
  *v10 = 0;
  v10[8] = 1;
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = 0;
  *(v10 + 5) = 0x1FFFFFFFELL;
  *(v10 + 7) = 0;
  *(v10 + 8) = 0;
  *(v10 + 6) = 0;
  *(v10 + 18) = 131584;
  *(v10 + 38) = 512;
  v11 = type metadata accessor for NumberFormatStyleConfiguration.Collection(0);
  v12 = v11[9];
  v13 = type metadata accessor for FloatingPointRoundingRule();
  (*(*(v13 - 8) + 56))(&v10[v12], 1, 1, v13);
  v14 = &v10[v11[10]];
  *v14 = 0;
  v14[8] = -1;
  v10[v11[11]] = 3;
  *v7 = inited;
  v7[1] = v9;
  v108 = v7;
  v15 = NumberFormatStyleConfiguration.Collection.skeleton.getter();
  v17 = v16;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v119 = static LocaleCache.cache;
  v120 = qword_1ED4404B0;
  LocaleCache._currentAndCache.getter();
  v19 = v18;
  ObjectType = swift_getObjectType();
  v21 = (*(v19 + 472))(ObjectType, v19);
  v23 = v22;
  v24 = swift_unknownObjectRelease();
  if (one-time initialization token for cache != -1)
  {
    v24 = swift_once();
  }

  v25 = &v101;
  v27 = static ICUNumberFormatter.cache;
  v26 = *algn_1EA7B1D98;
  *&v116 = v15;
  *(&v116 + 1) = v17;
  v111 = v21;
  v117 = v21;
  v118 = v23;
  MEMORY[0x1EEE9AC00](v24);
  *(&v101 - 2) = &v116;
  os_unfair_lock_lock((v26 + 24));
  closure #1 in FormatterCache.formatter(for:creator:)specialized partial apply(v26 + 16, &v119);
  v112 = 0;
  os_unfair_lock_unlock((v26 + 24));
  v28 = v119;
  if (v119 == 1)
  {
    type metadata accessor for ICUNumberFormatter();
    v28 = swift_allocObject();
    v28[3] = v15;
    v28[4] = v17;
    swift_bridgeObjectRetain_n();
    v29 = MEMORY[0x1865CB200](v15, v17);
    if (v29)
    {
      v30 = v29;
      v31 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs6UInt16V_Tt1gq5(v29, 0);

      v25 = specialized Sequence._copySequenceContents(initializing:)(&v119, (v31 + 4), v30, v15, v17);

      if (v25 != v30)
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }
    }

    else
    {

      v31 = MEMORY[0x1E69E7CC0];
    }

    LODWORD(v119) = 0;
    if (v31[2] >> 31)
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    LOBYTE(v25) = String.utf8CString.getter();
    v33 = unumf_openForSkeletonAndLocale();

    if (v33)
    {
      if (v119 < 1)
      {
        v28[2] = v33;
LABEL_16:
        os_unfair_lock_lock((v26 + 24));
        v34 = *(*(v26 + 16) + 16);
        v107 = *(v26 + 16);
        if (v27 < v34)
        {
          *(v26 + 16) = MEMORY[0x1E69E7CC8];
        }

        else
        {
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v119 = *(v26 + 16);
        v27 = v119;
        *(v26 + 16) = 0x8000000000000000;
        v32 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v17, v111, v23);
        v37 = *(v27 + 16);
        v38 = (v36 & 1) == 0;
        v39 = v37 + v38;
        if (!__OFADD__(v37, v38))
        {
          LOBYTE(v25) = v36;
          if (*(v27 + 24) < v39)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, isUniquelyReferenced_nonNull_native);
            v40 = v119;
            v41 = v111;
            v42 = specialized __RawDictionaryStorage.find<A>(_:)(v15, v17, v111, v23);
            if ((v25 & 1) != (v43 & 1))
            {
              goto LABEL_98;
            }

            v32 = v42;
            if ((v25 & 1) == 0)
            {
              goto LABEL_46;
            }

            goto LABEL_26;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            v40 = v27;
            v41 = v111;
            if ((v36 & 1) == 0)
            {
LABEL_46:
              specialized _NativeDictionary._insert(at:key:value:)(v32, v15, v17, v41, v23, v28, v40);
              goto LABEL_47;
            }

LABEL_26:
            v44 = v32;

            *(*(v40 + 56) + 8 * v44) = v28;

LABEL_47:
            *(v26 + 16) = v40;

            os_unfair_lock_unlock((v26 + 24));

            outlined consume of ICUNumberFormatter??(1);
            goto LABEL_48;
          }

LABEL_30:
          v101 = v32;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation18ICUNumberFormatterC9Signature33_1C58B5D80AA37B9371410D3343C91B53LLVAESgGMd);
          v45 = static _DictionaryStorage.copy(original:)();
          v40 = v45;
          if (*(v27 + 16))
          {
            v46 = (v45 + 64);
            v47 = 1 << *(v40 + 32);
            v102 = (v27 + 64);
            v48 = (v47 + 63) >> 6;
            if (v40 != v27 || v46 >= &v102[8 * v48])
            {
              memmove(v46, v102, 8 * v48);
            }

            v49 = 0;
            *(v40 + 16) = *(v27 + 16);
            v50 = 1 << *(v27 + 32);
            v51 = -1;
            if (v50 < 64)
            {
              v51 = ~(-1 << v50);
            }

            v52 = v51 & *(v27 + 64);
            v53 = (v50 + 63) >> 6;
            v103 = v53;
            if (!v52)
            {
              goto LABEL_38;
            }

            while (1)
            {
              v54 = __clz(__rbit64(v52));
              for (i = (v52 - 1) & v52; ; i = (v56 - 1) & v56)
              {
                v57 = v54 | (v49 << 6);
                v58 = *(v27 + 56);
                v59 = (*(v27 + 48) + 32 * v57);
                v60 = *v59;
                v104 = v59[1];
                v61 = v104;
                v62 = v59[2];
                v105 = v59[3];
                v63 = v105;
                v64 = *(v58 + 8 * v57);
                v65 = (*(v40 + 48) + 32 * v57);
                *v65 = v60;
                v65[1] = v61;
                v65[2] = v62;
                v65[3] = v63;
                *(*(v40 + 56) + 8 * v57) = v64;

                v53 = v103;
                v52 = i;
                if (i)
                {
                  break;
                }

LABEL_38:
                v55 = v49;
                do
                {
                  v49 = v55 + 1;
                  if (__OFADD__(v55, 1))
                  {
                    goto LABEL_96;
                  }

                  if (v49 >= v53)
                  {
                    goto LABEL_45;
                  }

                  v56 = *&v102[8 * v49];
                  ++v55;
                }

                while (!v56);
                v54 = __clz(__rbit64(v56));
              }
            }
          }

LABEL_45:

          v41 = v111;
          v32 = v101;
          if ((v25 & 1) == 0)
          {
            goto LABEL_46;
          }

          goto LABEL_26;
        }

        goto LABEL_28;
      }

      unumf_close();
    }

    type metadata accessor for ICUNumberFormatterBase();
    swift_deallocPartialClassInstance();
    v28 = 0;
    goto LABEL_16;
  }

LABEL_48:

  if (v28)
  {
    v66 = v28[2];
    type metadata accessor for ICUNumberFormatterBase.FormatResult();
    swift_initStackObject();
    v67 = v109;
    v68 = v110;
    v69 = v112;
    ICUNumberFormatterBase.FormatResult.init(formatter:value:)(v66, v109, v3, v110);
    if (v69)
    {

      v112 = 0;
    }

    else
    {
      v112 = 0;

      v91 = specialized _withResizingUCharBuffer(initialSize:_:)(32);
      v90 = v92;

      if (v90)
      {
        goto LABEL_83;
      }
    }
  }

  else
  {
    v68 = v110;
    v67 = v109;
  }

  *&v119 = v67;
  *(&v119 + 1) = v3;
  LODWORD(v120) = v68;
  if (!_So9NSDecimala__length_getter(&v119))
  {
    *&v119 = v67;
    *(&v119 + 1) = v3;
    LODWORD(v120) = v68;
    if (_So9NSDecimala__isNegative_getter(&v119))
    {
      v90 = 0xE300000000000000;
      v91 = 5136718;
LABEL_83:
      v93 = v108;
LABEL_92:
      outlined destroy of NumberFormatStyleConfiguration.Collection(v93, type metadata accessor for NSDecimal.FormatStyle);
      v98 = v91;
      v99 = v90;
      goto LABEL_99;
    }
  }

  *&v119 = v67;
  *(&v119 + 1) = v3;
  LODWORD(v120) = v68;
  if (!_So9NSDecimala__length_getter(&v119))
  {
    v90 = 0xE100000000000000;
    v91 = 48;
    goto LABEL_83;
  }

  *&v113 = 0;
  *(&v113 + 1) = 0xE000000000000000;
  *&v119 = v67;
  *(&v119 + 1) = v3;
  LODWORD(v120) = v68;
  v116 = v119;
  LODWORD(v117) = v68;
  if (_So9NSDecimala__exponent_getter(&v116) >= 1)
  {
    do
    {
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
      v116 = v119;
      LODWORD(v117) = v120;
      v70 = _So9NSDecimala__exponent_getter(&v116);
      _So9NSDecimala__exponent_setter((v70 - 1), &v119);
      v116 = v119;
      LODWORD(v117) = v120;
    }

    while (_So9NSDecimala__exponent_getter(&v116) > 0);
  }

  v116 = v119;
  LODWORD(v117) = v120;
  if (!_So9NSDecimala__exponent_getter(&v116))
  {
    _So9NSDecimala__exponent_setter(1, &v119);
  }

  v116 = v119;
  LODWORD(v117) = v120;
  if (!_So9NSDecimala__length_getter(&v116))
  {
LABEL_84:
    v116 = v119;
    LODWORD(v117) = v120;
    v94 = _So9NSDecimala__exponent_getter(&v116);
    v95 = v108;
    if (v94 <= 0)
    {
      while (1)
      {
        v116 = v119;
        LODWORD(v117) = v120;
        if (!_So9NSDecimala__exponent_getter(&v116))
        {
          break;
        }

        MEMORY[0x1865CB0E0](48, 0xE100000000000000);
        v116 = v119;
        LODWORD(v117) = v120;
        v96 = _So9NSDecimala__exponent_getter(&v116);
        _So9NSDecimala__exponent_setter((v96 + 1), &v119);
      }

      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
      MEMORY[0x1865CB0E0](48, 0xE100000000000000);
    }

    v116 = v119;
    LODWORD(v117) = v120;
    if (_So9NSDecimala__isNegative_getter(&v116))
    {
      MEMORY[0x1865CB0E0](45, 0xE100000000000000);
    }

    v116 = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18ReversedCollectionVySSGMd);
    lazy protocol witness table accessor for type ListFormatStyle<StringStyle, [String]> and conformance ListFormatStyle<A, B>(&lazy protocol witness table cache variable for type ReversedCollection<String> and conformance ReversedCollection<A>, &_ss18ReversedCollectionVySSGMd);
    v91 = String.init<A>(_:)();
    v90 = v97;
    v93 = v95;
    goto LABEL_92;
  }

  while (1)
  {
    v116 = v119;
    LODWORD(v117) = v120;
    if (!_So9NSDecimala__exponent_getter(&v116))
    {
      MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    }

    v116 = v119;
    LODWORD(v117) = v120;
    v71 = _So9NSDecimala__exponent_getter(&v116);
    _So9NSDecimala__exponent_setter((v71 + 1), &v119);
    v72 = v119;
    v73 = WORD2(v119);
    v74 = WORD4(v119);
    v75 = WORD5(v119);
    v76 = WORD6(v119);
    v107 = WORD3(v119);
    v110 = HIWORD(v119);
    LODWORD(v111) = v120;
    LODWORD(v109) = WORD1(v120);
    NSDecimal.asVariableLengthInteger()(v119 | (WORD2(v119) << 32) | (WORD3(v119) << 48), WORD4(v119) | (WORD5(v119) << 16) | (WORD6(v119) << 32) | (HIWORD(v119) << 48), v120 | (WORD1(v120) << 16));
    v78 = v77;
    v79 = *(v77 + 16);
    v80._rawValue = _sSa9repeating5countSayxGx_SitcfCs6UInt16V_Tt1g5(0, v79);
    *&v116 = v80;
    if (v79)
    {
      v104 = v76;
      v105 = v75;
      i = v74;
      v81 = v73;
      LODWORD(v76) = 0;
      v82 = v79 + 15;
      while ((v82 - 15) <= *(v78 + 16))
      {
        v83 = *(v78 + 2 * v82);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80._rawValue = specialized _ArrayBuffer._consumeAndCreateNew()(v80._rawValue);
        }

        if ((v82 - 15) > *(v80._rawValue + 2))
        {
          goto LABEL_94;
        }

        v84 = v83 | (v76 << 16);
        *(v80._rawValue + v82) = v84 / 0xA;
        LODWORD(v76) = v84 % 0xA;
        if (--v82 == 15)
        {

          *&v116 = v80;
          v85 = v76 | 0x30;
          v73 = v81;
          LOWORD(v74) = i;
          LOWORD(v75) = v105;
          LOWORD(v76) = v104;
          goto LABEL_69;
        }
      }

      __break(1u);
LABEL_94:
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
    }

    v85 = 48;
LABEL_69:
    v86 = *(v80._rawValue + 2);
    for (i = v85; v86; v86 = *(v116 + 16))
    {
      if (*(v80._rawValue + v86 + 15))
      {
        break;
      }

      if ((specialized Array._customRemoveLast()() & 0x10000) != 0)
      {
        specialized Array.remove(at:)(*(v116 + 16) - 1);
      }

      v80._rawValue = v116;
    }

    LODWORD(v116) = v72;
    WORD2(v116) = v73;
    WORD3(v116) = v107;
    WORD4(v116) = v74;
    WORD5(v116) = v75;
    WORD6(v116) = v76;
    HIWORD(v116) = v110;
    LOWORD(v117) = v111;
    WORD1(v117) = v109;
    NSDecimal.copyVariableLengthInteger(_:)(v80);
    v112 = v87;
    if (v87)
    {
      break;
    }

    v88 = *(v80._rawValue + 2);

    if (HIDWORD(v88))
    {
      goto LABEL_95;
    }

    _So9NSDecimala__length_setter(v88, &v116);
    v119 = v116;
    LODWORD(v120) = v117;
    *&v114 = i;
    v89 = static String._uncheckedFromUTF8(_:)();
    MEMORY[0x1865CB0E0](v89);

    v114 = v119;
    v115 = v120;
    if (!_So9NSDecimala__length_getter(&v114))
    {
      goto LABEL_84;
    }
  }

  swift_unexpectedError();
  __break(1u);
LABEL_98:
  v98 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_99:
  result._object = v99;
  result._countAndFlagsBits = v98;
  return result;
}