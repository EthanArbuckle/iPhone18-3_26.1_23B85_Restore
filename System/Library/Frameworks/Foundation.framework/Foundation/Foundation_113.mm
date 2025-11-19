char *_BridgedURL.pathComponents.getter()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url) pathComponents];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v2 = v1;
  type metadata accessor for __SwiftDeferredNSArray();
  if (swift_dynamicCastClass())
  {
  }

  else
  {
    v4 = v2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd);
  v5 = swift_dynamicCastClass();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    swift_unknownObjectRelease();
    [v2 copy];
    v7 = _bridgeCocoaArray<A>(_:)();
    swift_unknownObjectRelease();
    v6 = specialized _arrayForceCast<A, B>(_:)(v7);
  }

  return v6;
}

id @objc _BridgedURL.description.getter(char *a1, uint64_t a2, SEL *a3)
{
  v4 = *&a1[OBJC_IVAR____TtC10Foundation11_BridgedURL__url];
  v5 = a1;
  v6 = [v4 *a3];
  static String._unconditionallyBridgeFromObjectiveC(_:)(v6);

  v7 = String._bridgeToObjectiveCImpl()();

  return v7;
}

id protocol witness for _URLProtocol.init(filePath:directoryHint:relativeTo:) in conformance _BridgedURL(unint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t *a4)
{
  v10 = *a3;
  v8 = objc_allocWithZone(v4);
  return _BridgedURL.init(filePath:directoryHint:relativeTo:)(a1, a2, &v10, a4);
}

id protocol witness for _URLProtocol.dataRepresentation.getter in conformance _BridgedURL()
{
  v1 = [*(v0 + OBJC_IVAR____TtC10Foundation11_BridgedURL__url) dataRepresentation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = specialized Data.init(referencing:)(v2);

  return v3;
}

uint64_t _BridgedNSSwiftURL.init(stringOrEmpty:relativeTo:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v4 = v3;
  v6 = *a3;
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    v9 = a3[1];
    type metadata accessor for _SwiftURL();
    v35[0] = v6;
    v35[1] = v9;
    v10 = _SwiftURL.__allocating_init(stringOrEmpty:relativeTo:)(a1, a2, v35);
    if (v10)
    {
      v11 = v10;
      v12 = type metadata accessor for _NSSwiftURL();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____NSSwiftURL_url] = v11;
      v14 = *(v11 + 16);
      v15 = *(v14 + 24);
      v16 = &v13[OBJC_IVAR____NSSwiftURL_string];
      *v16 = *(v14 + 16);
      v16[1] = v15;
      if (*(v14 + 48) == 1)
      {

        v17 = 1;
      }

      else
      {

        String.subscript.getter();

        v18 = *(v11 + 16);
        if (v18[72] == 1 && v18[96] == 1 && v18[120] == 1 && v18[144] == 1)
        {
          if (v18[168])
          {
            v19 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
          }

          else
          {
            v19 = String.subscript.getter();
          }

          if ((v19 ^ v20) >= 0x4000)
          {
            v33 = Substring.UTF8View.subscript.getter();

            v17 = v33 == 47;
          }

          else
          {

            v17 = 0;
          }
        }

        else
        {
          v17 = 1;
        }
      }

      v13[OBJC_IVAR____NSSwiftURL_isDecomposable] = v17;
      v21 = *(v11 + 16);
      v22 = URLParseInfo.netLocationRange.getter();
      if (v24)
      {
        v25 = 0;
        v26 = 0;
        v13[OBJC_IVAR____NSSwiftURL_hasNetLocation] = 0;
        if (!v17)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v25 = ((v22 ^ v23) & 0xFFFFFFFFFFFFC000) != 0;
        v13[OBJC_IVAR____NSSwiftURL_hasNetLocation] = v25;
        if (!v17)
        {
          v26 = 0;
LABEL_25:
          v13[OBJC_IVAR____NSSwiftURL_hasPath] = v26;
          v34.receiver = v13;
          v34.super_class = v12;
          v31 = objc_msgSendSuper2(&v34, sel_init);

          *(v4 + 16) = v31;
          return v4;
        }
      }

      if (*(v21 + 168))
      {
        v27 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      }

      else
      {
        v27 = String.subscript.getter();
      }

      v29 = v27;
      v30 = v28;

      v26 = ((v29 ^ v30) & 0xFFFFFFFFFFFFC000) != 0 || v25;
      goto LABEL_25;
    }
  }

  else
  {

    swift_unknownObjectRelease();
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t _BridgedNSSwiftURL.init(fileURLWithPath:isDirectory:relativeTo:)(uint64_t a1, unint64_t a2, char a3, __int128 *a4)
{
  v5 = v4;
  v7 = *a4;
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v8)
  {
    v13 = *a4;

    v7 = v13;
    a2 = 0xE100000000000000;
    a1 = 46;
  }

  v14 = v7;
  v9 = specialized _SwiftURL.__allocating_init(fileURLWithPath:isDirectory:relativeTo:)(a1, a2, a3 & 1, &v14);
  v10 = objc_allocWithZone(type metadata accessor for _NSSwiftURL());
  v11 = specialized _NSSwiftURL.init(url:)(v9);

  *(v5 + 16) = v11;
  return v5;
}

uint64_t _BridgedNSSwiftURL.init(fileURLWithPath:relativeTo:)(unint64_t a1, unint64_t a2, __int128 *a3)
{
  v4 = v3;
  v5 = *a3;
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6)
  {
    v11 = *a3;

    v5 = v11;
    a2 = 0xE100000000000000;
    a1 = 46;
  }

  v12 = v5;
  v7 = specialized _SwiftURL.__allocating_init(fileURLWithPath:relativeTo:)(a1, a2, &v12);
  v8 = objc_allocWithZone(type metadata accessor for _NSSwiftURL());
  v9 = specialized _NSSwiftURL.init(url:)(v7);

  *(v4 + 16) = v9;
  return v4;
}

uint64_t _BridgedNSSwiftURL.init(filePath:directoryHint:relativeTo:)(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = *a3;
  v8 = *a4;
  v7 = a4[1];
  v9 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    a2 = 0xE200000000000000;
    v10 = 12078;
    if (v6 <= 1)
    {
      goto LABEL_5;
    }

LABEL_12:
    if (v6 == 2)
    {
      v26 = v8;
      v27 = v7;
      v16 = specialized _SwiftURL.__allocating_init(fileURLWithPath:relativeTo:)(v10, a2, &v26);
    }

    else
    {
      v19 = a2;
      v20 = (specialized BidirectionalCollection.last.getter(v10, a2) & 0x1FF) == 47;
      v26 = v8;
      v27 = v7;
      v16 = specialized _SwiftURL.__allocating_init(fileURLWithPath:isDirectory:relativeTo:)(v10, v19, v20, &v26);
    }

    goto LABEL_19;
  }

  v10 = a1;
  if (*a3 > 1u)
  {
    goto LABEL_12;
  }

LABEL_5:
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    if (!v11)
    {

      a2 = 0xE100000000000000;
      v10 = 46;
    }

    v17 = a2;

    v13 = specialized String.withFileSystemRepresentation<A>(_:)(v10, v17, v10, v17);
    v15 = v18;

    v25[0] = 1;
  }

  else
  {
    if (!v11)
    {

      a2 = 0xE100000000000000;
      v10 = 46;
    }

    v12 = a2;

    v13 = specialized String.withFileSystemRepresentation<A>(_:)(v10, v12, v10, v12);
    v15 = v14;

    v25[0] = 0;
  }

  v26 = v8;
  v27 = v7;
  type metadata accessor for _SwiftURL();
  swift_allocObject();
  v16 = _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v13, v15, 0, v25, &v26);
LABEL_19:
  v21 = v16;
  v22 = objc_allocWithZone(type metadata accessor for _NSSwiftURL());
  v23 = specialized _NSSwiftURL.init(url:)(v21);

  *(v5 + 16) = v23;
  return v5;
}

uint64_t _BridgedNSSwiftURL.init(dataRepresentation:relativeTo:isAbsolute:)(uint64_t a1, unint64_t a2, __int128 *a3, char a4)
{
  v5 = v4;
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2 || *(a1 + 16) == *(a1 + 24))
    {
      goto LABEL_10;
    }
  }

  else if (v9)
  {
    if (a1 == a1 >> 32)
    {
LABEL_10:
      swift_unknownObjectRelease();
      goto LABEL_11;
    }
  }

  else if ((a2 & 0xFF000000000000) == 0)
  {
    goto LABEL_10;
  }

  v15 = *a3;
  outlined copy of Data._Representation(a1, a2);
  v10 = specialized _SwiftURL.__allocating_init(dataRepresentation:relativeTo:isAbsolute:)(a1, a2, &v15, a4 & 1);
  if (!v10)
  {
LABEL_11:
    outlined consume of Data._Representation(a1, a2);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v11 = v10;
  v12 = objc_allocWithZone(type metadata accessor for _NSSwiftURL());
  v13 = specialized _NSSwiftURL.init(url:)(v11);

  outlined consume of Data._Representation(a1, a2);
  *(v5 + 16) = v13;
  return v5;
}

void _BridgedNSSwiftURL.absoluteURL.getter(uint64_t *a1@<X8>)
{
  v142 = *(*(v1 + 16) + OBJC_IVAR____NSSwiftURL_url);
  v2 = v142[4];
  v141 = v142[3];
  if (!v141)
  {
    v15 = 0;
LABEL_22:
    *a1 = v15;
    a1[1] = v2;
    return;
  }

  v135 = v2;
  v136 = a1;
  v3 = v142[2];

  swift_unknownObjectRetain();
  specialized _SwiftURL.URLStringBuilder.init(parseInfo:original:)(v3, 0, &v158);
  v4 = v159;
  v5 = *(&v160 + 1);
  v6 = v161;
  v7 = v162;
  v157 = v167;
  v138 = v158;
  v139 = v165;
  v140 = v166;
  v137 = *(&v161 + 1);
  if (*(&v158 + 1))
  {
    v8 = *(&v160 + 1);
    v132 = v160;
    v133 = *(&v159 + 1);
    v9 = v162;
    v131 = v159;
    v10 = *(&v158 + 1);
    v134 = String.removingDotSegments.getter(v163, v164);
    v12 = v11;

    v172 = v138;
    v173 = v10;
    v174 = v4;
    v175 = v132;
    v176 = v8;
    v177 = v6;
    v178 = v137;
    v179 = v9;
    v180 = v134;
    v181 = v12;
    v182 = v139;
    v183 = v140;
    v184 = v167;
    v13 = _SwiftURL.URLStringBuilder.string.getter();
    v135 = v14;
    swift_unknownObjectRelease();
    v143 = v138;
    v144 = v10;
    v145 = v131;
    v146 = *(&v4 + 1);
    v147 = v132;
    v148 = v8;
    v149 = v6;
    v150 = v137;
    v151 = v9;
    v152 = v134;
    v153 = v12;
LABEL_15:
    v154 = v139;
    v155 = v140;
    v28 = v167;
LABEL_16:
    v156 = v28;
    outlined destroy of _SwiftURL.URLStringBuilder(&v143);
    v29 = v142[5];
    type metadata accessor for _SwiftURL();
    v15 = swift_allocObject();
    type metadata accessor for _SwiftURL.ResourceInfo();
    v30 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd);
    v31 = swift_allocObject();
    *(v31 + 24) = 0;
    *(v31 + 16) = 0;
    *(v30 + 16) = v31;
    *(v15 + 56) = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd);
    v32 = swift_allocObject();
    *(v32 + 24) = 0;
    *(v32 + 16) = 0;
    *(v15 + 64) = v32;
    v33 = specialized static RFC3986Parser.compatibilityParse(urlString:encodingInvalidCharacters:)(v13, v135, 1);

    if (v33)
    {
      *(v15 + 16) = v33;
      if ((v33[48] & 1) == 0)
      {

        String.subscript.getter();
      }

      *(v15 + 24) = 0;
      *(v15 + 32) = 0;
      *(v15 + 40) = v29;
      *(v15 + 48) = 0;

      v2 = &protocol witness table for _SwiftURL;
    }

    else
    {

      swift_deallocPartialClassInstance();
      v2 = &protocol witness table for _SwiftURL;
      v15 = v142;
    }

    a1 = v136;
    goto LABEL_22;
  }

  v128 = v163;
  v129 = v161;
  v134 = v164;
  v16 = *(&v161 + 1);
  v130 = *(&v162 + 1);
  v17 = v159;
  v18 = v160;
  ObjectType = swift_getObjectType();
  v20 = v135[17];
  v126 = ObjectType;
  v21 = v20(ObjectType, v135);
  if (v22)
  {
    v23 = v21;
  }

  else
  {
    v23 = v138;
  }

  v24 = v3[72];
  v127 = v22;
  v138 = v23;
  if ((v24 & 1) == 0 || (v3[96] & 1) == 0 || v3[120] != 1 || v3[144] != 1)
  {
    v172 = v23;
    v173 = v22;
    v174 = v4;
    v175 = v18;
    v176 = v5;
    v177 = v129;
    v178 = v16;
    *&v179 = v7;
    *(&v179 + 1) = v130;
    v180 = v128;
    v181 = v134;
    v182 = v139;
    v183 = v140;
    v184 = v167;
    v13 = _SwiftURL.URLStringBuilder.string.getter();
    v135 = v27;
    swift_unknownObjectRelease();
    v143 = v138;
    v144 = v127;
    v145 = v17;
    v146 = *(&v4 + 1);
    v147 = v18;
    v148 = v5;
    v149 = v129;
    v150 = v137;
    *&v151 = v7;
    *(&v151 + 1) = v130;
    v152 = v128;
    v153 = v134;
    goto LABEL_15;
  }

  v172 = v141;
  v173 = v135;
  URL._swiftURL.getter();
  v124 = v5;
  v132 = v18;
  if (v25)
  {
    v26 = *(v25 + 16);
  }

  else
  {
    v26 = 0;
  }

  v34 = *(&v4 + 1);
  v35 = (v135[21])(1, v126);
  v37 = v4;
  v38 = v139;
  if (v36)
  {
    v39 = v35;
    v40 = v36;
    v171 = v159;
    outlined destroy of String?(&v171);
    v34 = v40;
    v37 = v39;
  }

  v133 = v34;
  v41 = (v135[23])(1, v126);
  v43 = v129;
  v44 = v26;
  if (v42)
  {
    v45 = v41;
    v46 = v42;
    v170 = v160;
    outlined destroy of String?(&v170);
    v124 = v46;
    v132 = v45;
  }

  v168 = v161;
  v169 = v162;
  if (v26 && (*(v26 + 120) & 1) == 0)
  {
    v54 = v37;

    v55 = String.subscript.getter();
    v57 = v56;
    v59 = v58;
    v61 = v60;

    v62 = v55;
    v37 = v54;
    v43 = MEMORY[0x1865CAE80](v62, v57, v59, v61);
    v50 = v63;

    outlined destroy of String?(&v168);
    v47 = v135;
  }

  else
  {
    v47 = v135;
    v48 = (v135[25])(1, v126, v135);
    v50 = v137;
    if (v49)
    {
      v51 = v48;
      v52 = v49;
      outlined destroy of String?(&v168);
      v43 = v51;
      v50 = v52;
    }

    if (!v44)
    {
      v53 = v130;
      goto LABEL_36;
    }
  }

  v53 = v130;
  if ((*(v44 + 144) & 1) == 0)
  {

    v67 = String.subscript.getter();
    v69 = v68;
    v71 = v70;
    v73 = v72;
    v123 = v44;

    v7 = MEMORY[0x1865CAE80](v67, v69, v71, v73);
    v53 = v74;

    goto LABEL_39;
  }

LABEL_36:
  v123 = v44;
  v64 = (*(v47 + 208))(v126, v47);
  if (v65)
  {
    goto LABEL_40;
  }

  v172 = v64;
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  v53 = v66;
LABEL_39:
  outlined destroy of String?(&v169);
LABEL_40:
  v137 = v50;
  v75 = HIBYTE(v134) & 0xF;
  if ((v134 & 0x2000000000000000) == 0)
  {
    v75 = v128 & 0xFFFFFFFFFFFFLL;
  }

  v130 = v53;
  v131 = v37;
  v125 = v7;
  v129 = v43;
  if (!v75)
  {
    v78 = v166;
    v79 = (v135[31])(1, v126, v135);
    v81 = v80;

    if (!v78)
    {
      v82 = (v135[33])(1, v126, v135);
      if (v83)
      {
        v38 = v82;
      }

      v139 = v38;
      v84 = v140;
      if (v83)
      {
        v84 = v83;
      }

      goto LABEL_66;
    }

LABEL_65:
    v84 = v140;
LABEL_66:
    v140 = v84;
    v114 = v137;
    v113 = v138;
    v115 = v127;
    v172 = v138;
    v173 = v127;
    *&v174 = v37;
    *(&v174 + 1) = v133;
    v116 = v132;
    v117 = v124;
    v175 = v132;
    v176 = v124;
    v118 = v129;
    v177 = v129;
    v178 = v137;
    *&v179 = v125;
    *(&v179 + 1) = v130;
    v180 = v79;
    v181 = v81;
    v134 = v81;
    v119 = v139;
    v182 = v139;
    v183 = v84;
    v184 = v157;
    v120 = v79;
    v13 = _SwiftURL.URLStringBuilder.string.getter();
    v135 = v121;
    swift_unknownObjectRelease();

    v143 = v113;
    v144 = v115;
    v145 = v131;
    v146 = v133;
    v147 = v116;
    v148 = v117;
    v149 = v118;
    v150 = v114;
    *&v151 = v125;
    *(&v151 + 1) = v130;
    v152 = v120;
    v153 = v134;
    v154 = v119;
    v155 = v140;
    v28 = v157;
    goto LABEL_16;
  }

  if ((specialized Collection.first.getter(v128, v134) & 0x1FF) == 0x2F)
  {

    v76 = v134;
    v77 = v128;
LABEL_64:
    v111 = String.removingDotSegments.getter(v77, v76);
    v81 = v112;

    v79 = v111;

    goto LABEL_65;
  }

  v85 = v126;
  v86 = (v135[19])(v126, v135);
  v87 = v135[31];
  if (v86)
  {
    v88 = v87(1, v126, v135);
    v90 = v89;

    v91 = HIBYTE(v90) & 0xF;
    v85 = v126;
    if ((v90 & 0x2000000000000000) == 0)
    {
      v91 = v88 & 0xFFFFFFFFFFFFLL;
    }

    if (!v91)
    {
      v172 = 47;
      v173 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v128, v134);
      v77 = v172;
      v76 = v173;
      goto LABEL_63;
    }
  }

  v92 = v87(1, v85, v135);
  v94 = v93;
  v95 = v134;
  v96 = specialized Collection.first.getter(v128, v134);
  if ((v96 & 0x1FF) == 0x2F)
  {

LABEL_59:

    v76 = v95;
    v77 = v128;
LABEL_63:
    v37 = v131;
    goto LABEL_64;
  }

  LOBYTE(v172) = 47;
  MEMORY[0x1EEE9AC00](v96);
  v122[2] = &v172;
  specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v122, v92, v94);
  if (v97)
  {

    v95 = v134;
    goto LABEL_59;
  }

  String.index(after:)();
  v98 = String.subscript.getter();
  v100 = v99;
  v102 = v101;
  v104 = v103;
  v143 = 0;
  v144 = 0xE000000000000000;
  v105 = v128;
  v106 = v134;
  v107 = String.count.getter();
  v108 = Substring.distance(from:to:)();
  v109 = __OFADD__(v107, v108);
  v110 = v107 + v108;
  if (!v109)
  {
    MEMORY[0x1865CAED0](v110);
    v172 = v98;
    v173 = v100;
    *&v174 = v102;
    *(&v174 + 1) = v104;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();
    v172 = v105;
    v173 = v106;

    String.append<A>(contentsOf:)();

    v77 = v143;
    v76 = v144;
    goto LABEL_63;
  }

  __break(1u);
}

uint64_t _BridgedNSSwiftURL.isFileURL.getter()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____NSSwiftURL_url);
  if ((*(v1 + 48) & 1) == 0)
  {
    if (*(*(v1 + 16) + 48))
    {
      if (!*(v1 + 24))
      {
        v2 = 0;
        return v2 & 1;
      }

      v3 = *(v1 + 32);
      ObjectType = swift_getObjectType();
      v5 = *(v3 + 136);

      v5(ObjectType, v3);
      v2 = v6;
      if (!v6)
      {
        goto LABEL_11;
      }
    }

    else
    {

      v7 = String.subscript.getter();
      MEMORY[0x1865CAE80](v7);
    }

    v8 = String.lowercased()();

    if (one-time initialization token for fileSchemeUTF8 != -1)
    {
      swift_once();
    }

    v2 = specialized Sequence<>.elementsEqual<A>(_:)(static _SwiftURL.fileSchemeUTF8, v8._countAndFlagsBits, v8._object);

LABEL_11:

    return v2 & 1;
  }

  v2 = 1;
  return v2 & 1;
}

uint64_t _BridgedNSSwiftURL.hasAuthority.getter()
{
  v1 = *(v0 + 16);
  v2 = OBJC_IVAR____NSSwiftURL_url;

  _SwiftURL.user.getter();
  v4 = v3;

  if (!v4)
  {

    _SwiftURL.password.getter();
    v6 = v5;

    if (!v6)
    {

      _SwiftURL.host.getter();
      v8 = v7;

      if (!v8)
      {
        v11 = *(v1 + v2);
        v12 = v11[2];
        if (v12[72] == 1 && v12[96] == 1 && v12[120] == 1 && (v12[144] & 1) != 0)
        {
          if (v11[3])
          {
            v13 = v11[4];
            ObjectType = swift_getObjectType();
            v15 = *(v13 + 208);

            swift_unknownObjectRetain();
            v15(ObjectType, v13);
            v17 = v16;
            swift_unknownObjectRelease();

LABEL_18:
            v9 = v17 ^ 1;
            return v9 & 1;
          }
        }

        else if ((v12[144] & 1) == 0)
        {

          v18 = String.subscript.getter();
          v22 = v21;
          if (!((v18 ^ v19) >> 14))
          {

            v9 = 0;
            return v9 & 1;
          }

          v23 = v18;
          v24 = v19;
          v25 = v20;
          _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5SiSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5I15VGXEfU_Si_SsTG5SiTf1cn_n(v18, v19, v20, v21, 10);
          if ((v26 & 0x100) != 0)
          {
            specialized _parseInteger<A, B>(ascii:radix:)(v23, v24, v25, v22, 10);
          }

          v17 = v26;

          goto LABEL_18;
        }

        v9 = 0;
        return v9 & 1;
      }
    }
  }

  v9 = 1;
  return v9 & 1;
}

uint64_t _BridgedNSSwiftURL.relativePath.getter()
{
  if (*(*(*(*(v0 + 16) + OBJC_IVAR____NSSwiftURL_url) + 16) + 168))
  {

    v1 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {

    v1 = String.subscript.getter();
  }

  v2 = MEMORY[0x1865CAE80](v1);
  v4 = v3;

  v5 = String._droppingTrailingSlashes.getter(v2, v4);
  v7 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
  v8 = static _SetStorage.allocate(capacity:)();
  v9 = v8 + 56;
  v10 = *(v8 + 40);
  v11 = byte_1EEED3A78;
  result = MEMORY[0x1865CD020](v10, byte_1EEED3A78, 1);
  v13 = -1 << *(v8 + 32);
  v14 = result & ~v13;
  v15 = v14 >> 6;
  v16 = *(v8 + 56 + 8 * (v14 >> 6));
  v17 = 1 << v14;
  v18 = *(v8 + 48);
  if (((1 << v14) & v16) != 0)
  {
    v19 = ~v13;
    while (*(v18 + v14) != v11)
    {
      v14 = (v14 + 1) & v19;
      v15 = v14 >> 6;
      v16 = *(v9 + 8 * (v14 >> 6));
      v17 = 1 << v14;
      if (((1 << v14) & v16) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    *(v9 + 8 * v15) = v17 | v16;
    *(v18 + v14) = v11;
    v20 = *(v8 + 16);
    v21 = __OFADD__(v20, 1);
    v22 = v20 + 1;
    if (v21)
    {
      goto LABEL_27;
    }

    *(v8 + 16) = v22;
  }

  v23 = byte_1EEED3A79;
  result = MEMORY[0x1865CD020](v10, byte_1EEED3A79, 1);
  v24 = -1 << *(v8 + 32);
  v25 = result & ~v24;
  v26 = v25 >> 6;
  v27 = *(v9 + 8 * (v25 >> 6));
  v28 = 1 << v25;
  v29 = *(v8 + 48);
  if (((1 << v25) & v27) != 0)
  {
    v30 = ~v24;
    while (*(v29 + v25) != v23)
    {
      v25 = (v25 + 1) & v30;
      v26 = v25 >> 6;
      v27 = *(v9 + 8 * (v25 >> 6));
      v28 = 1 << v25;
      if (((1 << v25) & v27) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_16;
  }

LABEL_14:
  *(v9 + 8 * v26) = v28 | v27;
  *(v29 + v25) = v23;
  v31 = *(v8 + 16);
  v21 = __OFADD__(v31, 1);
  v32 = v31 + 1;
  if (v21)
  {
LABEL_27:
    __break(1u);
    return result;
  }

  *(v8 + 16) = v32;
LABEL_16:
  v33 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v33 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    v40[0] = v5;
    v40[1] = v7;
    MEMORY[0x1EEE9AC00](result);
    v39[2] = v40;
    v39[3] = v8;
    v39[4] = 4;

    v34 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v39, v5, v7);
    if (v35 == 1)
    {
      v36 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v5, v7, v8, 4);
      v38 = v37;
    }

    else
    {
      v38 = v35;
      v36 = v34;
    }

    if (v38)
    {
      return v36;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t _BridgedNSSwiftURL.path.getter()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____NSSwiftURL_url);

  v2 = _SwiftURL.isFileURL.getter();
  v3 = _SwiftURL.absolutePath(percentEncoded:)(1);
  if ((v2 & 1) == 0)
  {
    if ((*(*(v1 + 16) + 220) & 8) != 0)
    {
      v48 = (v3._object >> 56) & 0xF;
      if ((v3._object & 0x2000000000000000) == 0)
      {
        v48 = v3._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v48)
      {
        v60 = v3;
        MEMORY[0x1EEE9AC00](v3._countAndFlagsBits);
        v57 = &v60;
        v58 = MEMORY[0x1E69E7CD0];
        v59 = 4;
        v50 = v49;
        v42 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v56, v49, v3._object);
        if (v43 == 1)
        {
          v44 = MEMORY[0x1E69E7CD0];
          v45 = v50;
          object = v3._object;
          v47 = 4;
          goto LABEL_30;
        }

LABEL_33:
        v53 = v43;
        v51 = v42;
        goto LABEL_34;
      }
    }

    else
    {
      v38 = (v3._object >> 56) & 0xF;
      if ((v3._object & 0x2000000000000000) == 0)
      {
        v38 = v3._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v38)
      {
        v39 = *(v1 + 40);
        v60 = v3;
        MEMORY[0x1EEE9AC00](v3._countAndFlagsBits);
        v57 = &v60;
        v58 = MEMORY[0x1E69E7CD0];
        v59 = v39;
        v41 = v40;
        v42 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v56, v40, v3._object);
        if (v43 == 1)
        {
          v44 = MEMORY[0x1E69E7CD0];
          v45 = v41;
          object = v3._object;
          v47 = v39;
LABEL_30:
          v51 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v45, object, v44, v47);
          v53 = v52;
LABEL_34:

          if (!v53)
          {
            goto LABEL_40;
          }

          v54 = v51;
LABEL_36:
          v55 = String._droppingTrailingSlashes.getter(v54, v53);

          return v55;
        }

        goto LABEL_33;
      }
    }

    v54 = 0;
    v53 = 0xE000000000000000;
    goto LABEL_36;
  }

  v4 = String._droppingTrailingSlashes.getter(v3._countAndFlagsBits, v3._object);
  v6 = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
  v7 = static _SetStorage.allocate(capacity:)();
  v8 = v7 + 56;
  v9 = *(v7 + 40);
  v10 = byte_1EEECE4A0;
  result = MEMORY[0x1865CD020](v9, byte_1EEECE4A0, 1);
  v12 = -1 << *(v7 + 32);
  v13 = result & ~v12;
  v14 = v13 >> 6;
  v15 = *(v7 + 56 + 8 * (v13 >> 6));
  v16 = 1 << v13;
  v17 = *(v7 + 48);
  if (((1 << v13) & v15) != 0)
  {
    v18 = ~v12;
    while (*(v17 + v13) != v10)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = *(v8 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    *(v8 + 8 * v14) = v16 | v15;
    *(v17 + v13) = v10;
    v19 = *(v7 + 16);
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      goto LABEL_42;
    }

    *(v7 + 16) = v21;
  }

  v22 = byte_1EEECE4A1;
  result = MEMORY[0x1865CD020](v9, byte_1EEECE4A1, 1);
  v23 = -1 << *(v7 + 32);
  v24 = result & ~v23;
  v25 = v24 >> 6;
  v26 = *(v8 + 8 * (v24 >> 6));
  v27 = 1 << v24;
  v28 = *(v7 + 48);
  if (((1 << v24) & v26) != 0)
  {
    v29 = ~v23;
    while (*(v28 + v24) != v22)
    {
      v24 = (v24 + 1) & v29;
      v25 = v24 >> 6;
      v26 = *(v8 + 8 * (v24 >> 6));
      v27 = 1 << v24;
      if (((1 << v24) & v26) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_14;
  }

LABEL_12:
  *(v8 + 8 * v25) = v27 | v26;
  *(v28 + v24) = v22;
  v30 = *(v7 + 16);
  v20 = __OFADD__(v30, 1);
  v31 = v30 + 1;
  if (!v20)
  {
    *(v7 + 16) = v31;
LABEL_14:
    v32 = HIBYTE(v6) & 0xF;
    if ((v6 & 0x2000000000000000) == 0)
    {
      v32 = v4 & 0xFFFFFFFFFFFFLL;
    }

    if (v32)
    {
      v60._countAndFlagsBits = v4;
      v60._object = v6;
      MEMORY[0x1EEE9AC00](result);
      v57 = &v60;
      v58 = v7;
      v59 = 4;

      v33 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v56, v4, v6);
      if (v34 == 1)
      {
        v35 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v4, v6, v7, 4);
        v37 = v36;
      }

      else
      {
        v37 = v34;
        v35 = v33;
      }

      if (v37)
      {
        return v35;
      }

      return 0;
    }

LABEL_40:

    return 0;
  }

LABEL_42:
  __break(1u);
  return result;
}

uint64_t _BridgedNSSwiftURL.fragment.getter()
{
  if (*(*(*(*(v0 + 16) + OBJC_IVAR____NSSwiftURL_url) + 16) + 216))
  {
    return 0;
  }

  v2 = String.subscript.getter();
  v3 = MEMORY[0x1865CAE80](v2);

  return v3;
}

uint64_t _BridgedNSSwiftURL.withUnsafeFileSystemRepresentation<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v76 = a3;
  v71 = a1;
  v72 = a2;
  v73 = a4;
  v5 = *(*(*(v4 + 16) + OBJC_IVAR____NSSwiftURL_url) + 48);

  v6 = _SwiftURL.absolutePath(percentEncoded:)(1);
  v7 = String._droppingTrailingSlashes.getter(v6._countAndFlagsBits, v6._object);
  v9 = v8;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
  v10 = static _SetStorage.allocate(capacity:)();
  v11 = v10;
  v12 = v10 + 56;
  v13 = *(v10 + 40);
  if (v5 == 1)
  {
    v14 = byte_1EEECEEE0;
    result = MEMORY[0x1865CD020](*(v10 + 40), byte_1EEECEEE0, 1);
    v16 = -1 << *(v11 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    v19 = *(v12 + 8 * (v17 >> 6));
    v20 = 1 << v17;
    v21 = *(v11 + 48);
    if (((1 << v17) & v19) != 0)
    {
      v22 = ~v16;
      while (*(v21 + v17) != v14)
      {
        v17 = (v17 + 1) & v22;
        v18 = v17 >> 6;
        v19 = *(v12 + 8 * (v17 >> 6));
        v20 = 1 << v17;
        if (((1 << v17) & v19) == 0)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      *(v12 + 8 * v18) = v20 | v19;
      *(v21 + v17) = v14;
      v23 = *(v11 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
LABEL_43:
        __break(1u);
        goto LABEL_44;
      }

      *(v11 + 16) = v25;
    }

    v26 = byte_1EEECEEE1;
    result = MEMORY[0x1865CD020](v13, byte_1EEECEEE1, 1);
    v27 = -1 << *(v11 + 32);
    v28 = result & ~v27;
    v29 = v28 >> 6;
    v30 = *(v12 + 8 * (v28 >> 6));
    v31 = 1 << v28;
    v32 = *(v11 + 48);
    if (((1 << v28) & v30) != 0)
    {
      v33 = ~v27;
      while (*(v32 + v28) != v26)
      {
        v28 = (v28 + 1) & v33;
        v29 = v28 >> 6;
        v30 = *(v12 + 8 * (v28 >> 6));
        v31 = 1 << v28;
        if (((1 << v28) & v30) == 0)
        {
          goto LABEL_12;
        }
      }

      goto LABEL_14;
    }

LABEL_12:
    *(v12 + 8 * v29) = v31 | v30;
    *(v32 + v28) = v26;
    v34 = *(v11 + 16);
    v24 = __OFADD__(v34, 1);
    v35 = v34 + 1;
    if (!v24)
    {
      *(v11 + 16) = v35;
LABEL_14:
      v36 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v36 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v36)
      {
        v74 = v7;
        v75 = v9;
        MEMORY[0x1EEE9AC00](result);
        v68 = &v74;
        v69 = v11;
        v70 = 4;

        specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v67, v7, v9);
        if (v37 == 1)
        {
          _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v7, v9, v11, 4);
        }

        v38 = v76;
        v39 = v72;
      }

      else
      {

        v38 = v76;
        v39 = v72;
      }

      MEMORY[0x1EEE9AC00](v40);
      v68 = v38;
      v69 = v71;
      v70 = v39;
      String.withCString<A>(_:)();
LABEL_42:
    }

    goto LABEL_43;
  }

  v41 = byte_1EEECEF08;
  result = MEMORY[0x1865CD020](*(v10 + 40), byte_1EEECEF08, 1);
  v42 = -1 << *(v11 + 32);
  v43 = result & ~v42;
  v44 = v43 >> 6;
  v45 = *(v12 + 8 * (v43 >> 6));
  v46 = 1 << v43;
  v47 = *(v11 + 48);
  if (((1 << v43) & v45) != 0)
  {
    v48 = ~v42;
    while (*(v47 + v43) != v41)
    {
      v43 = (v43 + 1) & v48;
      v44 = v43 >> 6;
      v45 = *(v12 + 8 * (v43 >> 6));
      v46 = 1 << v43;
      if (((1 << v43) & v45) == 0)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
LABEL_24:
    *(v12 + 8 * v44) = v46 | v45;
    *(v47 + v43) = v41;
    v49 = *(v11 + 16);
    v24 = __OFADD__(v49, 1);
    v50 = v49 + 1;
    if (v24)
    {
      goto LABEL_44;
    }

    *(v11 + 16) = v50;
  }

  v51 = byte_1EEECEF09;
  result = MEMORY[0x1865CD020](v13, byte_1EEECEF09, 1);
  v52 = -1 << *(v11 + 32);
  v53 = result & ~v52;
  v54 = v53 >> 6;
  v55 = *(v12 + 8 * (v53 >> 6));
  v56 = 1 << v53;
  v57 = *(v11 + 48);
  if (((1 << v53) & v55) != 0)
  {
    v58 = ~v52;
    while (*(v57 + v53) != v51)
    {
      v53 = (v53 + 1) & v58;
      v54 = v53 >> 6;
      v55 = *(v12 + 8 * (v53 >> 6));
      v56 = 1 << v53;
      if (((1 << v53) & v55) == 0)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_32;
  }

LABEL_30:
  *(v12 + 8 * v54) = v56 | v55;
  *(v57 + v53) = v51;
  v59 = *(v11 + 16);
  v24 = __OFADD__(v59, 1);
  v60 = v59 + 1;
  if (!v24)
  {
    *(v11 + 16) = v60;
LABEL_32:
    v61 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v61 = v7 & 0xFFFFFFFFFFFFLL;
    }

    if (v61)
    {
      v74 = v7;
      v75 = v9;
      MEMORY[0x1EEE9AC00](result);
      v68 = &v74;
      v69 = v11;
      v70 = 4;

      specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v67, v7, v9);
      if (v62 == 1)
      {
        _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v7, v9, v11, 4);
      }

      v63 = v76;
      v65 = v72;
      v64 = v73;
    }

    else
    {

      v63 = v76;
      v65 = v72;
      v64 = v73;
    }

    MEMORY[0x1EEE9AC00](v66);
    v68 = v63;
    v69 = v71;
    v70 = v65;
    String.withFileSystemRepresentation<A>(_:)(partial apply for closure #2 in _SwiftURL.withUnsafeFileSystemRepresentation<A>(_:), v63, v64);
    goto LABEL_42;
  }

LABEL_44:
  __break(1u);
  return result;
}

uint64_t _BridgedNSSwiftURL.lastPathComponent.getter()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____NSSwiftURL_url);

  v2 = _SwiftURL.absolutePath(percentEncoded:)(1);
  Path = String._lastPathComponent.getter(v2._countAndFlagsBits, v2._object);
  v5 = v4;

  v6 = _SwiftURL.isFileURL.getter();
  if (v6)
  {
    v7 = String._droppingTrailingSlashes.getter(Path, v5);
    v9 = v8;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = v10 + 56;
    v12 = *(v10 + 40);
    v13 = byte_1EEED30D0;
    result = MEMORY[0x1865CD020](v12, byte_1EEED30D0, 1);
    v15 = -1 << *(v10 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    v18 = *(v10 + 56 + 8 * (v16 >> 6));
    v19 = 1 << v16;
    v20 = *(v10 + 48);
    if (((1 << v16) & v18) != 0)
    {
      v21 = ~v15;
      while (*(v20 + v16) != v13)
      {
        v16 = (v16 + 1) & v21;
        v17 = v16 >> 6;
        v18 = *(v11 + 8 * (v16 >> 6));
        v19 = 1 << v16;
        if (((1 << v16) & v18) == 0)
        {
          goto LABEL_6;
        }
      }
    }

    else
    {
LABEL_6:
      *(v11 + 8 * v17) = v19 | v18;
      *(v20 + v16) = v13;
      v22 = *(v10 + 16);
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
        goto LABEL_34;
      }

      *(v10 + 16) = v24;
    }

    v25 = byte_1EEED30D1;
    result = MEMORY[0x1865CD020](v12, byte_1EEED30D1, 1);
    v26 = -1 << *(v10 + 32);
    v27 = result & ~v26;
    v28 = v27 >> 6;
    v29 = *(v11 + 8 * (v27 >> 6));
    v30 = 1 << v27;
    v31 = *(v10 + 48);
    if (((1 << v27) & v29) != 0)
    {
      v32 = ~v26;
      while (*(v31 + v27) != v25)
      {
        v27 = (v27 + 1) & v32;
        v28 = v27 >> 6;
        v29 = *(v11 + 8 * (v27 >> 6));
        v30 = 1 << v27;
        if (((1 << v27) & v29) == 0)
        {
          goto LABEL_12;
        }
      }

LABEL_14:
      v35 = HIBYTE(v9) & 0xF;
      if ((v9 & 0x2000000000000000) == 0)
      {
        v35 = v7 & 0xFFFFFFFFFFFFLL;
      }

      if (v35)
      {
        v52 = v7;
        v53 = v9;
        MEMORY[0x1EEE9AC00](result);
        v49 = &v52;
        v50 = v10;
        v51 = 4;

        v36 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v48, v7, v9);
        if (v37 == 1)
        {
          v38 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v7, v9, v10, 4);
          v40 = v39;
        }

        else
        {
          v40 = v37;
          v38 = v36;
        }

        if (v40)
        {
          return v38;
        }
      }

      else
      {
      }

      return 0;
    }

LABEL_12:
    *(v11 + 8 * v28) = v30 | v29;
    *(v31 + v27) = v25;
    v33 = *(v10 + 16);
    v23 = __OFADD__(v33, 1);
    v34 = v33 + 1;
    if (!v23)
    {
      *(v10 + 16) = v34;
      goto LABEL_14;
    }

LABEL_34:
    __break(1u);
    return result;
  }

  v41 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v41 = Path & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v42 = *(v1 + 40);
    v52 = Path;
    v53 = v5;
    MEMORY[0x1EEE9AC00](v6);
    v49 = &v52;
    v50 = MEMORY[0x1E69E7CD0];
    v51 = v42;

    v43 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v48, Path, v5);
    if (v44 == 1)
    {
      v45 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(Path, v5, MEMORY[0x1E69E7CD0], v42);
      v47 = v46;
    }

    else
    {
      v47 = v44;
      v45 = v43;
    }

    swift_bridgeObjectRelease_n();

    if (v47)
    {
      return v45;
    }
  }

  else
  {
  }

  return 0;
}

uint64_t _BridgedNSSwiftURL.deletingLastPathComponent()@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____NSSwiftURL_url);
  if (*(*(v3 + 16) + 168))
  {

    v4 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {

    v4 = String.subscript.getter();
  }

  v5 = MEMORY[0x1865CAE80](v4);
  v7 = v6;

  if (!_SwiftURL.pathResolvesAgainstBase.getter())
  {
    v14 = 0;
    goto LABEL_21;
  }

  v8 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v8 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    if (String._lastPathComponent.getter(v5, v7) == 46 && v9 == 0xE100000000000000)
    {
LABEL_19:

      goto LABEL_20;
    }

    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      if (String._lastPathComponent.getter(v5, v7) != 11822 || v12 != 0xE200000000000000)
      {
        v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

LABEL_20:
  v14 = 1;
LABEL_21:
  *&v70 = v5;
  *(&v70 + 1) = v7;

  if (String._lastPathComponent.getter(v5, v7) == 11822 && v15 == 0xE200000000000000)
  {

    Path = v5;
    v19 = v7;
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    Path = v5;
    v19 = v7;
    if ((v17 & 1) == 0)
    {
      Path = String._deletingLastPathComponent()(v5, v7);
      v19 = v20;

      *&v70 = Path;
      *(&v70 + 1) = v19;
    }
  }

  if (v14)
  {
    Path = String._appendingPathComponent(_:)(11822, 0xE200000000000000, Path, v19);
    v22 = v21;

    *&v70 = Path;
    *(&v70 + 1) = v22;
    v19 = v22;
  }

  v23 = HIBYTE(v19) & 0xF;
  v24 = Path & 0xFFFFFFFFFFFFLL;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v23 = Path & 0xFFFFFFFFFFFFLL;
  }

  if (!v23 && _SwiftURL.pathResolvesAgainstBase.getter())
  {

    Path = 46;
    v19 = 0xE100000000000000;
    *&v70 = 46;
    *(&v70 + 1) = 0xE100000000000000;
LABEL_36:
    v24 = HIBYTE(v19) & 0xF;
    goto LABEL_37;
  }

  if ((v19 & 0x2000000000000000) != 0)
  {
    goto LABEL_36;
  }

LABEL_37:
  if (v24 && (specialized BidirectionalCollection.last.getter(Path, v19) & 0x1FF) != 0x2F)
  {
    MEMORY[0x1865CB0E0](47, 0xE100000000000000);
  }

  specialized URLComponents._URLComponents.init(parseInfo:)(v25, &v71);
  v26 = v71;
  v68 = v72;
  v69 = v73;
  v65 = v76;
  v66 = v77;
  v67[0] = *v78;
  *(v67 + 9) = *&v78[9];
  v63 = v74;
  v64 = v75;
  v62 = v79;
  v60 = *&v78[41];
  v61 = *&v78[57];
  v80 = *&v78[25];
  if (one-time initialization token for compatibility1 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility1 == 1)
  {
    if (v5 == 47 && v7 == 0xE100000000000000)
    {

      goto LABEL_58;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v28)
    {
LABEL_58:
      v81[0] = xmmword_1812DB720;
      if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v81, 4, 0x10u, 1))
      {
        v29 = 0xE400000000000000;
        v30 = 791555631;
        goto LABEL_60;
      }

LABEL_68:
      result = _assertionFailure(_:_:file:line:flags:)();
      __break(1u);
      return result;
    }
  }

  else
  {
  }

  v29 = *(&v70 + 1);
  v30 = v70;
  if ((*(&v70 + 1) & 0x1000000000000000) != 0)
  {
    v81[0] = v70;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v37 = String._bridgeToObjectiveCImpl()();

    v38 = [v37 _fastCharacterContents];
    v39 = v37;
    if (v38)
    {
      v81[0] = v70;
      StringProtocol._ephemeralString.getter();
      v40 = String._bridgeToObjectiveCImpl()();

      v41 = [v40 length];
      swift_unknownObjectRelease();
      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v38, v41, 0x10u, 1))
      {
        goto LABEL_68;
      }
    }

    else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v70, *(&v70 + 1), 0x10u, 1) & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  else
  {
    if ((*(&v70 + 1) & 0x2000000000000000) != 0)
    {
      v32 = HIBYTE(*(&v70 + 1)) & 0xFLL;
      *&v81[0] = v70;
      *(&v81[0] + 1) = *(&v70 + 1) & 0xFFFFFFFFFFFFFFLL;
      v31 = v81;
    }

    else if ((v70 & 0x1000000000000000) != 0)
    {
      v31 = ((*(&v70 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
      v32 = v70 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v31 = _StringObject.sharedUTF8.getter();
    }

    if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v31, v32, 0x10u, 1))
    {
      goto LABEL_68;
    }
  }

LABEL_60:
  outlined destroy of String?(&v80);
  *v43 = v26;
  v43[8] = 0;
  *&v43[9] = v68;
  *&v43[13] = v69;
  *&v43[47] = v65;
  *&v43[63] = v66;
  *&v43[79] = v67[0];
  *&v43[88] = *(v67 + 9);
  *&v43[15] = v63;
  *&v43[31] = v64;
  *&v43[104] = v30;
  *v44 = v29;
  *&v44[8] = v60;
  *&v44[24] = v61;
  *&v44[40] = v62;
  v81[2] = *&v43[32];
  v81[3] = *&v43[48];
  v81[4] = *&v43[64];
  v81[5] = *&v43[80];
  v81[0] = *v43;
  v81[1] = *&v43[16];
  v81[6] = *&v43[96];
  v81[7] = *v44;
  v82[0] = *&v44[16];
  *(v82 + 10) = *&v44[26];
  outlined init with copy of URLComponents(v43, &v45);
  v33 = URLComponents._URLComponents._uncheckedString(original:)(0);
  outlined destroy of URLComponents(v43);
  v42 = *(v3 + 24);
  swift_unknownObjectRetain();
  v34 = specialized _SwiftURL.__allocating_init(stringOrEmpty:relativeTo:)(v33._countAndFlagsBits, v33._object, &v42);

  v52 = v65;
  v53 = v66;
  *v54 = v67[0];
  *&v54[9] = *(v67 + 9);
  v50 = v63;
  v51 = v64;
  v57 = v60;
  v45 = v26;
  v46 = 0;
  v47 = v68;
  v48 = v69;
  v49 = 0;
  v55 = v30;
  v56 = v29;
  v58 = v61;
  v59 = v62;
  outlined destroy of URLComponents(&v45);
  v35 = &protocol witness table for _SwiftURL;
  if (!v34)
  {
    v35 = 0;
  }

  *a1 = v34;
  a1[1] = v35;
}

uint64_t _BridgedNSSwiftURL.appending<A>(path:directoryHint:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{

  _SwiftURL.appending<A>(path:directoryHint:encodingSlashes:compatibility:)(a1, 0, 0, a2, a3);
}

uint64_t _BridgedNSSwiftURL.appending<A>(component:directoryHint:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{

  if (_SwiftURL.isFileURL.getter())
  {
    v6 = a3;
    v7 = a1;
    v8 = 0;
  }

  else
  {
    v6 = a3;
    v7 = a1;
    v8 = 1;
  }

  _SwiftURL.appending<A>(path:directoryHint:encodingSlashes:compatibility:)(v7, v8, 0, a2, v6);
}

uint64_t _BridgedNSSwiftURL.standardized.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____NSSwiftURL_url);

  if (!_SwiftURL.isDecomposable.getter())
  {

    *a1 = 0;
    a1[1] = 0;
    return result;
  }

  if (one-time initialization token for compatibility1 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility1 & 1) != 0 && ((*(*(v3 + 16) + 168) & 1) == 0 ? (v4 = String.subscript.getter()) : (v4 = MEMORY[0x1865CBC20](0, 0xE000000000000000)), v9 = specialized static StringProtocol.== infix<A>(_:_:)(v4, v5, v6, v7, 791555631, 0xE400000000000000), , (v9))
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    if (*(*(v3 + 16) + 168))
    {
      v12 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v12 = String.subscript.getter();
    }

    v13 = MEMORY[0x1865CAE80](v12);
    v15 = v14;

    v10 = String.removingDotSegments.getter(v13, v15);
    v11 = v16;
  }

  specialized URLComponents._URLComponents.init(parseInfo:)(v17, v54);
  v52[0] = v58[0];
  v52[1] = v58[1];
  v53[0] = v59[0];
  *(v53 + 10) = *(v59 + 10);
  v49 = v55;
  v50 = v56;
  v51[0] = v57[0];
  v51[1] = v57[1];
  v47 = v54[0];
  v48 = v54[1];
  v18 = String.removingDotSegments.getter(v10, v11);
  v20 = v18;
  v21 = v19;
  BYTE8(v47) = 0;
  BYTE14(v47) = 0;
  if ((v19 & 0x1000000000000000) != 0)
  {
    *&v62[0] = v18;
    *(&v62[0] + 1) = v19;
    v40 = lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v41 = String._bridgeToObjectiveCImpl()();

    v34 = [v41 _fastCharacterContents];
    v35 = v41;
    v41 = v34;
    if (v34)
    {
      *&v62[0] = v20;
      *(&v62[0] + 1) = v21;
      StringProtocol._ephemeralString.getter();
      v40 = String._bridgeToObjectiveCImpl()();

      v39 = [v40 length];
      swift_unknownObjectRelease();
      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v41, v39, 0x10u, 1))
      {
        goto LABEL_51;
      }
    }

    else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v20, v21, 0x10u, 1) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if ((v19 & 0x2000000000000000) != 0)
    {
      v23 = HIBYTE(v19) & 0xF;
      *&v62[0] = v18;
      *(&v62[0] + 1) = v21 & 0xFFFFFFFFFFFFFFLL;
      v22 = v62;
    }

    else if ((v18 & 0x1000000000000000) != 0)
    {
      v22 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v23 = v20 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = _StringObject.sharedUTF8.getter();
    }

    if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v22, v23, 0x10u, 1))
    {
      goto LABEL_51;
    }
  }

  v24 = v55;
  v61 = *(v58 + 8);
  outlined destroy of String?(&v61);
  *(&v52[0] + 1) = v20;
  *&v52[1] = v21;
  if (v24)
  {

    if ((v11 & 0x2000000000000000) == 0)
    {
      goto LABEL_23;
    }
  }

  else
  {
    if (BYTE9(v54[0]) & 1) == 0 || !*&v54[0] || (*(*&v54[0] + 48))
    {
      goto LABEL_37;
    }

    v25 = String.subscript.getter();
    MEMORY[0x1865CAE80](v25);

    if ((v11 & 0x2000000000000000) == 0)
    {
LABEL_23:
      if ((v10 & 0xFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_36;
      }

      goto LABEL_32;
    }
  }

  if ((v11 & 0xF00000000000000) != 0)
  {
    goto LABEL_36;
  }

LABEL_32:
  v26 = URLParseInfo.netLocationRange.getter();
  if ((v28 & 1) == 0 && !((v26 ^ v27) >> 14))
  {
    BYTE8(v47) = 0;
    BYTE14(v47) = 0;
    v62[0] = xmmword_1812DB730;
    if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v62, 1, 0x10u, 1))
    {

      *(v52 + 8) = xmmword_1812DB740;
      goto LABEL_36;
    }

LABEL_51:
    v38 = 0;
    v37 = 1001;
    goto LABEL_52;
  }

LABEL_36:
  URLComponents.encodedHost.getter();
  if (!v29)
  {
    BYTE8(v47) = 0;
    BYTE12(v47) = 0;
    BYTE9(v53[1]) = 0;
    if (_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(0, 0xE000000000000000))
    {
      if ((_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(0, 0xE000000000000000) & 1) == 0)
      {
LABEL_40:
        v38 = 0;
        v37 = 980;
LABEL_52:
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v62[0] = 0uLL;
      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v62, 0, 4u, 1))
      {
        goto LABEL_40;
      }
    }

    v60 = *(v57 + 8);
    v30 = outlined destroy of String?(&v60);
    *(v51 + 8) = xmmword_1812476D0;
    LOBYTE(v62[0]) = 37;
    MEMORY[0x1EEE9AC00](v30);
    v37 = v62;
    BYTE8(v53[1]) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v36, 0, 0xE000000000000000) & 1;
    goto LABEL_43;
  }

LABEL_37:

LABEL_43:
  v43[6] = v52[0];
  v43[7] = v52[1];
  v44[0] = v53[0];
  *(v44 + 10) = *(v53 + 10);
  v43[2] = v49;
  v43[3] = v50;
  v43[4] = v51[0];
  v43[5] = v51[1];
  v43[0] = v47;
  v43[1] = v48;
  v62[6] = v52[0];
  v62[7] = v52[1];
  v63[0] = v53[0];
  *(v63 + 10) = *(v53 + 10);
  v62[2] = v49;
  v62[3] = v50;
  v62[4] = v51[0];
  v62[5] = v51[1];
  v62[0] = v47;
  v62[1] = v48;
  outlined init with copy of URLComponents(v43, v45);
  v31 = URLComponents._URLComponents._uncheckedString(original:)(0);
  outlined destroy of URLComponents(v43);
  v42 = *(v3 + 24);
  swift_unknownObjectRetain();
  v32 = specialized _SwiftURL.__allocating_init(stringOrEmpty:relativeTo:)(v31._countAndFlagsBits, v31._object, &v42);

  v45[6] = v52[0];
  v45[7] = v52[1];
  v46[0] = v53[0];
  *(v46 + 10) = *(v53 + 10);
  v45[2] = v49;
  v45[3] = v50;
  v45[4] = v51[0];
  v45[5] = v51[1];
  v45[0] = v47;
  v45[1] = v48;
  result = outlined destroy of URLComponents(v45);
  v33 = &protocol witness table for _SwiftURL;
  if (!v32)
  {
    v33 = 0;
  }

  *a1 = v32;
  a1[1] = v33;
  return result;
}

void _BridgedNSSwiftURL.standardizedFileURL.getter(uint64_t *a1@<X8>)
{
  v3 = *(*(v1 + 16) + OBJC_IVAR____NSSwiftURL_url);
  if (*(v3 + 48) == 1)
  {
  }

  else
  {
    if (*(*(v3 + 16) + 48))
    {
      if (!*(v3 + 24))
      {
LABEL_53:
        *a1 = 0;
        a1[1] = 0;
        return;
      }

      v4 = *(v3 + 32);
      ObjectType = swift_getObjectType();
      v6 = *(v4 + 136);

      v6(ObjectType, v4);
      if (!v7)
      {
LABEL_52:

        goto LABEL_53;
      }
    }

    else
    {

      v8 = String.subscript.getter();
      MEMORY[0x1865CAE80](v8);
    }

    v9 = String.lowercased()();

    if (one-time initialization token for fileSchemeUTF8 != -1)
    {
      swift_once();
    }

    v10 = specialized Sequence<>.elementsEqual<A>(_:)(static _SwiftURL.fileSchemeUTF8, v9._countAndFlagsBits, v9._object);

    if ((v10 & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  v11 = _SwiftURL.absolutePath(percentEncoded:)(1);
  v12 = String._droppingTrailingSlashes.getter(v11._countAndFlagsBits, v11._object);
  v14 = v13;

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
  v16 = static _SetStorage.allocate(capacity:)();
  v17 = v16 + 56;
  v18 = *(v16 + 40);
  v19 = byte_1EEED3B68;
  v20 = MEMORY[0x1865CD020](v18, byte_1EEED3B68, 1);
  v21 = -1 << *(v16 + 32);
  v22 = v20 & ~v21;
  v23 = v22 >> 6;
  v24 = *(v16 + 56 + 8 * (v22 >> 6));
  v25 = 1 << v22;
  v26 = *(v16 + 48);
  if (((1 << v22) & v24) != 0)
  {
    v27 = ~v21;
    while (*(v26 + v22) != v19)
    {
      v22 = (v22 + 1) & v27;
      v23 = v22 >> 6;
      v24 = *(v17 + 8 * (v22 >> 6));
      v25 = 1 << v22;
      if (((1 << v22) & v24) == 0)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
LABEL_15:
    *(v17 + 8 * v23) = v25 | v24;
    *(v26 + v22) = v19;
    v28 = *(v16 + 16);
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (v29)
    {
      goto LABEL_64;
    }

    *(v16 + 16) = v30;
  }

  v31 = byte_1EEED3B69;
  v20 = MEMORY[0x1865CD020](v18, byte_1EEED3B69, 1);
  v32 = -1 << *(v16 + 32);
  v33 = v20 & ~v32;
  v34 = v33 >> 6;
  v35 = *(v17 + 8 * (v33 >> 6));
  v36 = 1 << v33;
  v37 = *(v16 + 48);
  if (((1 << v33) & v35) == 0)
  {
LABEL_21:
    *(v17 + 8 * v34) = v36 | v35;
    *(v37 + v33) = v31;
    v39 = *(v16 + 16);
    v29 = __OFADD__(v39, 1);
    v40 = v39 + 1;
    if (!v29)
    {
      *(v16 + 16) = v40;
      goto LABEL_23;
    }

LABEL_64:
    __break(1u);
    goto LABEL_65;
  }

  v38 = ~v32;
  while (*(v37 + v33) != v31)
  {
    v33 = (v33 + 1) & v38;
    v34 = v33 >> 6;
    v35 = *(v17 + 8 * (v33 >> 6));
    v36 = 1 << v33;
    if (((1 << v33) & v35) == 0)
    {
      goto LABEL_21;
    }
  }

LABEL_23:
  v41 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v41 = v12 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {
    v93 = v12;
    v94 = v14;
    MEMORY[0x1EEE9AC00](v20);
    v89 = &v93;
    v90 = v16;
    v91 = 4;

    v18 = 0;
    v42 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v88, v12, v14);
    if (v43 == 1)
    {
      v42 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v12, v14, v16, 4);
    }

    v44 = v42;
    v45 = v43;

    if (!v45)
    {
      v46 = 0;
      v45 = 0xE000000000000000;
      goto LABEL_32;
    }
  }

  else
  {

    v44 = 0;
    v18 = 0;
    v45 = 0xE000000000000000;
  }

  v46 = v44 & 0xFFFFFFFFFFFFLL;
LABEL_32:

  v47 = HIBYTE(v45) & 0xF;
  if ((v45 & 0x2000000000000000) == 0)
  {
    v47 = v46;
  }

  if (!v47)
  {
    goto LABEL_52;
  }

  v48 = _SwiftURL.absolutePath(percentEncoded:)(1);
  v49 = String._droppingTrailingSlashes.getter(v48._countAndFlagsBits, v48._object);
  v51 = v50;

  v16 = static _SetStorage.allocate(capacity:)();
  v52 = v16 + 56;
  v15 = *(v16 + 40);
  v53 = byte_1EEED3B90;
  v20 = MEMORY[0x1865CD020](v15, byte_1EEED3B90, 1);
  v54 = -1 << *(v16 + 32);
  v55 = v20 & ~v54;
  v56 = v55 >> 6;
  v57 = *(v16 + 56 + 8 * (v55 >> 6));
  v58 = 1 << v55;
  v59 = *(v16 + 48);
  if (((1 << v55) & v57) != 0)
  {
    v60 = ~v54;
    while (*(v59 + v55) != v53)
    {
      v55 = (v55 + 1) & v60;
      v56 = v55 >> 6;
      v57 = *(v52 + 8 * (v55 >> 6));
      v58 = 1 << v55;
      if (((1 << v55) & v57) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
LABEL_39:
    *(v52 + 8 * v56) = v58 | v57;
    *(v59 + v55) = v53;
    v61 = *(v16 + 16);
    v29 = __OFADD__(v61, 1);
    v62 = v61 + 1;
    if (v29)
    {
      goto LABEL_65;
    }

    *(v16 + 16) = v62;
  }

  v63 = byte_1EEED3B91;
  v20 = MEMORY[0x1865CD020](v15, byte_1EEED3B91, 1);
  v64 = -1 << *(v16 + 32);
  v65 = v20 & ~v64;
  v66 = v65 >> 6;
  v67 = *(v52 + 8 * (v65 >> 6));
  v68 = 1 << v65;
  v69 = *(v16 + 48);
  if (((1 << v65) & v67) != 0)
  {
    v70 = ~v64;
    while (*(v69 + v65) != v63)
    {
      v65 = (v65 + 1) & v70;
      v66 = v65 >> 6;
      v67 = *(v52 + 8 * (v65 >> 6));
      v68 = 1 << v65;
      if (((1 << v65) & v67) == 0)
      {
        goto LABEL_45;
      }
    }

LABEL_47:
    v73 = HIBYTE(v51) & 0xF;
    if ((v51 & 0x2000000000000000) == 0)
    {
      v73 = v49 & 0xFFFFFFFFFFFFLL;
    }

    if (v73)
    {
      v93 = v49;
      v94 = v51;
      MEMORY[0x1EEE9AC00](v20);
      v89 = &v93;
      v90 = v16;
      v91 = 4;

      v74 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v88, v49, v51);
      if (v75 == 1)
      {
        v76 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v49, v51, v16, 4);
        v78 = v77;
      }

      else
      {
        v78 = v75;
        v76 = v74;
      }

      v79 = v76;
      if (v78)
      {
LABEL_58:
        v18 = String.standardizingPath.getter(v79, v78);
        v15 = v80;

        LOBYTE(v20) = _SwiftURL.hasDirectoryPath.getter();
        LOBYTE(v16) = 1;
        if (one-time initialization token for compatibility2 == -1)
        {
          goto LABEL_59;
        }

        goto LABEL_66;
      }
    }

    else
    {
    }

    v79 = 0;
    v78 = 0xE000000000000000;
    goto LABEL_58;
  }

LABEL_45:
  *(v52 + 8 * v66) = v68 | v67;
  *(v69 + v65) = v63;
  v71 = *(v16 + 16);
  v29 = __OFADD__(v71, 1);
  v72 = v71 + 1;
  if (!v29)
  {
    *(v16 + 16) = v72;
    goto LABEL_47;
  }

LABEL_65:
  __break(1u);
LABEL_66:
  v87 = v20;
  swift_once();
  LOBYTE(v20) = v87;
LABEL_59:
  v81 = v16 & ~v20;
  if (static URL.compatibility2 == 1 || (_foundation_swift_url_feature_enabled() & 1) == 0)
  {
    v82 = type metadata accessor for _BridgedURL();
    v83 = &protocol witness table for _BridgedURL;
  }

  else
  {
    v82 = type metadata accessor for _SwiftURL();
    v83 = &protocol witness table for _SwiftURL;
  }

  v92[0] = v81;
  v93 = 0;
  v94 = 0;
  (v83[9])(v18, v15, v92, &v93);
  v84 = (v83[56])(v82, v83);
  v86 = v85;
  swift_unknownObjectRelease();

  *a1 = v84;
  a1[1] = v86;
}

Swift::Bool __swiftcall _BridgedNSSwiftURL.isFileReferenceURL()()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____NSSwiftURL_url);
  if (*(v1 + 48) == 1)
  {

LABEL_11:
    LOBYTE(v2) = *(*(v1 + 16) + 219);
LABEL_13:

    return v2;
  }

  if ((*(*(v1 + 16) + 48) & 1) == 0)
  {

    v7 = String.subscript.getter();
    MEMORY[0x1865CAE80](v7);

LABEL_8:
    v8 = String.lowercased()();

    if (one-time initialization token for fileSchemeUTF8 != -1)
    {
      swift_once();
    }

    v9 = specialized Sequence<>.elementsEqual<A>(_:)(static _SwiftURL.fileSchemeUTF8, v8._countAndFlagsBits, v8._object);

    if (v9)
    {
      goto LABEL_11;
    }

LABEL_12:
    LOBYTE(v2) = 0;
    goto LABEL_13;
  }

  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 32);
    ObjectType = swift_getObjectType();
    v5 = *(v3 + 136);

    v5(ObjectType, v3);
    if (!v6)
    {
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  return v2;
}

uint64_t protocol witness for _URLProtocol.init(fileURLWithPath:isDirectory:relativeTo:) in conformance _BridgedNSSwiftURL(uint64_t a1, unint64_t a2, char a3, __int128 *a4)
{
  v8 = swift_allocObject();
  _BridgedNSSwiftURL.init(fileURLWithPath:isDirectory:relativeTo:)(a1, a2, a3, a4);
  return v8;
}

uint64_t protocol witness for _URLProtocol.init(fileURLWithPath:relativeTo:) in conformance _BridgedNSSwiftURL(unint64_t a1, unint64_t a2, __int128 *a3)
{
  v6 = swift_allocObject();
  _BridgedNSSwiftURL.init(fileURLWithPath:relativeTo:)(a1, a2, a3);
  return v6;
}

uint64_t protocol witness for _URLProtocol.init(filePath:directoryHint:relativeTo:) in conformance _BridgedNSSwiftURL(uint64_t a1, unint64_t a2, unsigned __int8 *a3, uint64_t *a4)
{
  v9 = *a3;
  v7 = swift_allocObject();
  _BridgedNSSwiftURL.init(filePath:directoryHint:relativeTo:)(a1, a2, &v9, a4);
  return v7;
}

uint64_t protocol witness for _URLProtocol.relativeString.getter in conformance _BridgedNSSwiftURL()
{
  v1 = *(*(*(*(v0 + 16) + OBJC_IVAR____NSSwiftURL_url) + 16) + 16);

  return v1;
}

uint64_t protocol witness for _URLProtocol.port.getter in conformance _BridgedNSSwiftURL()
{

  v0 = _SwiftURL.port.getter();

  return v0;
}

uint64_t protocol witness for _URLProtocol.absoluteString.getter in conformance _BridgedNSSwiftURL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{

  v6 = a4(a3);

  return v6;
}

uint64_t protocol witness for _URLProtocol.user(percentEncoded:) in conformance _BridgedNSSwiftURL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{

  v6 = a4(a1);

  return v6;
}

uint64_t protocol witness for _URLProtocol.fileSystemPath(style:resolveAgainstBase:compatibility:) in conformance _BridgedNSSwiftURL(char a1, char a2, char a3)
{

  v6 = _SwiftURL.fileSystemPath(style:resolveAgainstBase:compatibility:)(a1 & 1, a2, a3);

  return v6;
}

uint64_t protocol witness for _URLProtocol.hasDirectoryPath.getter in conformance _BridgedNSSwiftURL()
{

  v0 = _SwiftURL.hasDirectoryPath.getter();

  return v0 & 1;
}

char *protocol witness for _URLProtocol.pathComponents.getter in conformance _BridgedNSSwiftURL()
{

  v0 = _SwiftURL.pathComponents.getter();

  return v0;
}

uint64_t protocol witness for _URLProtocol.appendingPathComponent(_:isDirectory:) in conformance _BridgedNSSwiftURL@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char a3@<W2>, uint64_t *a4@<X8>)
{

  specialized _SwiftURL.appending<A>(path:directoryHint:encodingSlashes:compatibility:)(a1, a2, (a3 & 1) == 0, 0, 0, a4);
}

uint64_t protocol witness for _URLProtocol.appendingPathComponent(_:) in conformance _BridgedNSSwiftURL@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  specialized _SwiftURL.appending<A>(path:directoryHint:encodingSlashes:compatibility:)(a1, a2, 2uLL, 0, 0, a3);
}

uint64_t protocol witness for _URLProtocol.appendingPathExtension(_:) in conformance _BridgedNSSwiftURL@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  _SwiftURL.appendingPathExtension(_:compatibility:)(a1, a2, 0, a3);
}

uint64_t protocol witness for _URLProtocol.deletingPathExtension() in conformance _BridgedNSSwiftURL(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{

  a3(v4);
}

uint64_t protocol witness for _URLProtocol.dataRepresentation.getter in conformance _BridgedNSSwiftURL(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{

  v5 = a3(v4);

  return v5;
}

id specialized _BridgedURL.__allocating_init(string:)(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for _BridgedURL();
  v5 = objc_allocWithZone(v4);
  v6 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v6 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    v7 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
    v8 = String._bridgeToObjectiveCImpl()();

    v9 = [v7 initWithString_];
    swift_unknownObjectRelease();
    if (v9)
    {
      *&v5[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v9;
      v11.receiver = v5;
      v11.super_class = v4;
      return objc_msgSendSuper2(&v11, sel_init);
    }
  }

  else
  {
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t specialized _BridgedNSSwiftURL.__allocating_init(fileURLWithPath:)(unint64_t a1, unint64_t a2)
{
  type metadata accessor for _BridgedNSSwiftURL();
  v4 = swift_allocObject();
  v5 = a2;
  v6 = v4;
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    v5 = 0xE100000000000000;
    a1 = 46;
  }

  v8 = specialized _SwiftURL.__allocating_init(fileURLWithPath:)(a1, v5);
  v9 = objc_allocWithZone(type metadata accessor for _NSSwiftURL());
  v10 = specialized _NSSwiftURL.init(url:)(v8);

  *(v6 + 16) = v10;
  return v6;
}

uint64_t specialized _BridgedNSSwiftURL.__allocating_init(fileURLWithPath:isDirectory:)(uint64_t a1, unint64_t a2, char a3)
{
  type metadata accessor for _BridgedNSSwiftURL();
  v6 = swift_allocObject();
  v7 = a2;
  v8 = v6;
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    v7 = 0xE100000000000000;
    a1 = 46;
  }

  v10 = specialized _SwiftURL.__allocating_init(fileURLWithPath:isDirectory:)(a1, v7, a3 & 1);
  v11 = objc_allocWithZone(type metadata accessor for _NSSwiftURL());
  v12 = specialized _NSSwiftURL.init(url:)(v10);

  *(v8 + 16) = v12;
  return v8;
}

uint64_t specialized _BridgedNSSwiftURL.__allocating_init(string:)(uint64_t a1, unint64_t a2)
{
  type metadata accessor for _BridgedNSSwiftURL();
  v4 = swift_allocObject();
  v5 = a2;
  v6 = v4;
  v7 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v7 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {

    goto LABEL_7;
  }

  v8 = specialized _SwiftURL.__allocating_init(string:)(a1, v5);
  if (!v8)
  {
LABEL_7:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v9 = v8;
  v10 = objc_allocWithZone(type metadata accessor for _NSSwiftURL());
  v11 = specialized _NSSwiftURL.init(url:)(v9);

  *(v6 + 16) = v11;
  return v6;
}

uint64_t specialized _BridgedNSSwiftURL.__allocating_init(string:relativeTo:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  type metadata accessor for _BridgedNSSwiftURL();
  v6 = swift_allocObject();
  v7 = a2;
  v8 = v6;
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    swift_unknownObjectRelease();
    goto LABEL_7;
  }

  v10 = a3[1];
  v16[0] = *a3;
  v16[1] = v10;
  v11 = specialized _SwiftURL.__allocating_init(stringOrEmpty:relativeTo:)(a1, v7, v16);
  if (!v11)
  {
LABEL_7:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v12 = v11;
  v13 = objc_allocWithZone(type metadata accessor for _NSSwiftURL());
  v14 = specialized _NSSwiftURL.init(url:)(v12);

  *(v8 + 16) = v14;
  return v8;
}

uint64_t specialized _BridgedNSSwiftURL.__allocating_init(fileURLWithFileSystemRepresentation:isDirectory:relativeTo:)(uint64_t a1, char a2, uint64_t *a3)
{
  type metadata accessor for _BridgedNSSwiftURL();
  v5 = swift_allocObject();
  v6 = *a3;
  v7 = a3[1];
  v8 = String.init(cString:)();
  v10 = v9;
  v16 = a2 ^ 1;
  v15[0] = v6;
  v15[1] = v7;
  type metadata accessor for _SwiftURL();
  swift_allocObject();
  v11 = _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v8, v10, 0, &v16, v15);
  v12 = objc_allocWithZone(type metadata accessor for _NSSwiftURL());
  v13 = specialized _NSSwiftURL.init(url:)(v11);

  *(v5 + 16) = v13;
  return v5;
}

id specialized _BridgedURL.__allocating_init(string:encodingInvalidCharacters:)(uint64_t a1, unint64_t a2, char a3)
{
  v6 = type metadata accessor for _BridgedURL();
  v7 = objc_allocWithZone(v6);
  v8 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = objc_allocWithZone(MEMORY[0x1E695DFF8]);
    v10 = String._bridgeToObjectiveCImpl()();

    v11 = [v9 initWithString:v10 encodingInvalidCharacters:a3 & 1];
    swift_unknownObjectRelease();
    if (v11)
    {
      *&v7[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v11;
      v13.receiver = v7;
      v13.super_class = v6;
      return objc_msgSendSuper2(&v13, sel_init);
    }
  }

  else
  {
  }

  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t specialized _BridgedNSSwiftURL.__allocating_init(string:encodingInvalidCharacters:)(uint64_t a1, unint64_t a2, char a3)
{
  type metadata accessor for _BridgedNSSwiftURL();
  v6 = swift_allocObject();
  v7 = a2;
  v8 = v6;
  v9 = HIBYTE(v7) & 0xF;
  if ((v7 & 0x2000000000000000) == 0)
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {

    goto LABEL_7;
  }

  v10 = specialized _SwiftURL.__allocating_init(string:encodingInvalidCharacters:)(a1, v7, a3 & 1);
  if (!v10)
  {
LABEL_7:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v11 = v10;
  v12 = objc_allocWithZone(type metadata accessor for _NSSwiftURL());
  v13 = specialized _NSSwiftURL.init(url:)(v11);

  *(v8 + 16) = v13;
  return v8;
}

id @objc static NSURL._cfurlWith(string:encoding:relativeToURL:encodingInvalidCharacters:forceBaseURL:)(uint64_t a1, uint64_t a2, void *a3, CFStringEncoding a4, void *a5, char a6, char a7)
{
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v13 = v12;
  if (a5)
  {
    v14 = v11;
    static URL._unconditionallyBridgeFromObjectiveC(_:)(a5, &v18);
    v11 = v14;
    v15 = v18;
  }

  else
  {
    v15 = 0uLL;
  }

  v18 = v15;
  v16 = specialized static NSURL._cfurlWith(string:encoding:relativeToURL:encodingInvalidCharacters:forceBaseURL:)(v11, v13, a4, &v18, a6, a7);

  swift_unknownObjectRelease();

  return v16;
}

id @objc static NSURL._urlWith(string:relativeToURL:encodingInvalidCharacters:)(uint64_t a1, uint64_t a2, void *a3, void *a4, char a5)
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v9 = v8;
  if (a4)
  {
    v10 = v7;
    static URL._unconditionallyBridgeFromObjectiveC(_:)(a4, &v14);
    v7 = v10;
    v11 = v14;
  }

  else
  {
    v11 = 0uLL;
  }

  v14 = v11;
  v12 = specialized static NSURL._urlWith(string:relativeToURL:encodingInvalidCharacters:)(v7, v9, &v14, a5);

  swift_unknownObjectRelease();

  return v12;
}

id @objc static NSURL._urlWith(dataRepresentation:relativeToURL:isAbsolute:)(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v7 = a3;
  v8 = a4;
  v9 = specialized Data.init(referencing:)(v7);
  v11 = v10;

  if (v8)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v8, &v18);

    v12 = v18;
  }

  else
  {
    v12 = 0uLL;
  }

  v18 = v12;
  outlined copy of Data._Representation(v9, v11);
  swift_unknownObjectRetain();
  v13 = specialized _SwiftURL.__allocating_init(dataRepresentation:relativeTo:isAbsolute:)(v9, v11, &v18, a5);
  if (v13)
  {
    v14 = v13;
    v15 = objc_allocWithZone(type metadata accessor for _NSSwiftURL());
    v16 = specialized _NSSwiftURL.init(url:)(v14);
  }

  else
  {
    v16 = 0;
  }

  outlined consume of Data._Representation(v9, v11);
  swift_unknownObjectRelease();

  return v16;
}

id @objc static NSURL._fileURLWith(path:relativeToURL:)(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v7 = v6;
  if (a4)
  {
    v8 = v5;
    static URL._unconditionallyBridgeFromObjectiveC(_:)(a4, &v12);
    v5 = v8;
    v9 = v12;
  }

  else
  {
    v9 = 0uLL;
  }

  v12 = v9;
  v10 = specialized static NSURL._fileURLWith(path:relativeToURL:)(v5, v7, &v12);

  swift_unknownObjectRelease();

  return v10;
}

id @objc static NSURL._fileURLWith(path:isDirectory:relativeToURL:)(uint64_t a1, uint64_t a2, void *a3, char a4, void *a5)
{
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v9 = v8;
  if (a5)
  {
    v10 = v7;
    static URL._unconditionallyBridgeFromObjectiveC(_:)(a5, &v14);
    v7 = v10;
    v11 = v14;
  }

  else
  {
    v11 = 0uLL;
  }

  v14 = v11;
  v12 = specialized static NSURL._fileURLWith(path:isDirectory:relativeToURL:)(v7, v9, a4, &v14);

  swift_unknownObjectRelease();

  return v12;
}

id @objc static NSURL._fileURLWith(path:pathStyle:isDirectory:relativeToURL:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, char a5, void *a6)
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)(a3);
  v11 = v10;
  if (a6)
  {
    v12 = v9;
    static URL._unconditionallyBridgeFromObjectiveC(_:)(a6, &v16);
    v9 = v12;
    v13 = v16;
  }

  else
  {
    v13 = 0uLL;
  }

  v16 = v13;
  v14 = specialized static NSURL._fileURLWith(path:pathStyle:isDirectory:relativeToURL:)(v9, v11, a4, a5, &v16);

  swift_unknownObjectRelease();

  return v14;
}

uint64_t _NSSwiftURL.isEqual(_:)(uint64_t a1)
{
  outlined init with copy of Any?(a1, v12);
  if (!v13)
  {
    outlined destroy of TermOfAddress?(v12, &_sypSgMd);
LABEL_5:
    outlined init with copy of Any?(a1, v12);
    if (v13)
    {
      type metadata accessor for NSURL();
      if (swift_dynamicCast())
      {
        v6 = *(v1 + OBJC_IVAR____NSSwiftURL_url);
        v7 = [v11 _trueSelf];
        static URL._unconditionallyBridgeFromObjectiveC(_:)(v7, v12);

        URL._swiftURL.getter();
        v9 = v8;
        swift_unknownObjectRelease();
        if (v9)
        {
          v5 = specialized static _SwiftURL.== infix(_:_:)(v6, v9);

          return v5 & 1;
        }
      }
    }

    else
    {
      outlined destroy of TermOfAddress?(v12, &_sypSgMd);
    }

    v5 = 0;
    return v5 & 1;
  }

  type metadata accessor for _NSSwiftURL();
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v3 = *(v1 + OBJC_IVAR____NSSwiftURL_url);
  v4 = *&v11[OBJC_IVAR____NSSwiftURL_url];

  v5 = specialized static _SwiftURL.== infix(_:_:)(v3, v4);

  return v5 & 1;
}

id _NSSwiftURL.absoluteString.getter()
{
  v189 = *MEMORY[0x1E69E9840];
  v1 = [v0 relativeString];
  isTaggedPointer = _objc_isTaggedPointer(v1);
  v3 = v1;
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
          v127 = v4;
          v6 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v8 = v7;

          goto LABEL_20;
        }

        goto LABEL_6;
      }

      result = [v4 UTF8String];
      if (!result)
      {
        goto LABEL_85;
      }

      v13 = String.init(utf8String:)(result);
      if (v14)
      {
LABEL_14:
        v6 = v13;
        v8 = v14;

        goto LABEL_19;
      }

      __break(1u);
    }

    LOWORD(v146) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v13 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v14)
    {
      [v4 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v8 = *(&v161 + 1);
      v6 = v161;
      goto LABEL_19;
    }

    goto LABEL_14;
  }

LABEL_6:
  LOBYTE(v161) = 0;
  v175 = 0;
  LOBYTE(v146) = 0;
  LOBYTE(v174) = 0;
  if (__CFStringIsCF())
  {
    v6 = v175;

    v8 = 0xE000000000000000;
    goto LABEL_20;
  }

  v9 = v4;
  v10 = String.init(_nativeStorage:)();
  if (v11)
  {
    v6 = v10;
    v8 = v11;

    goto LABEL_20;
  }

  v175 = [v9 length];
  if (!v175)
  {

    v6 = 0;
    v8 = 0xE000000000000000;
    goto LABEL_20;
  }

  v6 = String.init(_cocoaString:)();
  v8 = v15;
LABEL_19:

LABEL_20:

  if ((v8 & 0x2000000000000000) == 0)
  {
    if ((v6 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_22;
    }

LABEL_26:
    v29 = [v0 baseURL];
    if (!v29)
    {
      return 0;
    }

    v30 = v29;
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v29, &v175);

    v31 = v176;
    ObjectType = swift_getObjectType();
    v28 = (*(v31 + 112))(ObjectType, v31);
    swift_unknownObjectRelease();
    return v28;
  }

  if ((v8 & 0xF00000000000000) == 0)
  {
    goto LABEL_26;
  }

LABEL_22:
  v16 = *&v0[OBJC_IVAR____NSSwiftURL_url];
  v17 = v16[3];
  if (!v17)
  {
    v28 = *(v16[2] + 16);

    return v28;
  }

  v133 = 0;
  v137 = v16[4];
  v18 = v16[2];

  swift_unknownObjectRetain();
  specialized _SwiftURL.URLStringBuilder.init(parseInfo:original:)(v18, 0, &v161);
  v19 = *(&v161 + 1);
  v20 = v162;
  v21 = v163;
  v22 = v164;
  v139 = *(&v165 + 1);
  v23 = v165;
  v140 = v17;
  v160 = v170;
  v144 = v169;
  v145 = v168;
  v142 = *(&v163 + 1);
  v143 = v161;
  v138 = v163;
  v141 = *(&v164 + 1);
  if (*(&v161 + 1))
  {
    v24 = *(&v163 + 1);
    v25 = *(&v162 + 1);
    v136 = v162;
    v26 = String.removingDotSegments.getter(v166, v167);
    v137 = v27;

    v175 = v143;
    v176 = v19;
    *&v177 = v20;
    *(&v177 + 1) = v25;
    v178 = v21;
    v179 = v24;
    v180 = v22;
    v181 = v141;
    v182 = v23;
    v183 = v139;
    v184 = v26;
    v185 = v137;
    v186 = v145;
    v187 = v144;
    v188 = v170;
    v28 = _SwiftURL.URLStringBuilder.string.getter();
    swift_unknownObjectRelease();
    v146 = v143;
    v147 = v19;
    *&v148 = v136;
    *(&v148 + 1) = v25;
    v149 = v138;
    v150 = v142;
    v151 = v22;
    v152 = v141;
    v153 = v23;
    v154 = v139;
    v155 = v26;
    v156 = v137;
    v157 = v145;
    v158 = v144;
LABEL_40:
    v42 = v170;
LABEL_41:
    v159 = v42;
    outlined destroy of _SwiftURL.URLStringBuilder(&v146);
    return v28;
  }

  v132 = v166;
  v134 = v164;
  v135 = v167;
  v33 = v165;
  v34 = v162;
  v35 = swift_getObjectType();
  v36 = (*(v137 + 136))(v35, v137);
  if (v37)
  {
    v38 = v36;
  }

  else
  {
    v38 = v143;
  }

  v39 = v18[72];
  v131 = v37;
  v143 = v38;
  if ((v39 & 1) == 0 || (v18[96] & 1) == 0 || v18[120] != 1 || v18[144] != 1)
  {
    v175 = v38;
    v176 = v37;
    v177 = v34;
    v178 = v138;
    v179 = v142;
    v180 = v134;
    v181 = v141;
    v182 = v33;
    v183 = v139;
    v184 = v132;
    v185 = v135;
    v186 = v145;
    v187 = v144;
    v188 = v170;
    v28 = _SwiftURL.URLStringBuilder.string.getter();
    swift_unknownObjectRelease();
    v146 = v143;
    v147 = v131;
    v148 = v34;
    v149 = v138;
    v150 = v142;
    v151 = v134;
    v152 = v141;
    v153 = v33;
    v154 = v139;
    v155 = v132;
    v156 = v135;
    v157 = v145;
    v158 = v144;
    goto LABEL_40;
  }

  v130 = v35;
  v175 = v140;
  v176 = v137;
  URL._swiftURL.getter();
  v128 = *(&v34 + 1);
  v129 = v33;
  v136 = v34;
  if (v40)
  {
    v41 = *(v40 + 16);
  }

  else
  {
    v41 = 0;
  }

  v43 = v141;
  v44 = (*(v137 + 168))(1, v130, v137);
  if (v45)
  {
    v46 = v44;
    v47 = v45;
    v174 = v162;
    outlined destroy of TermOfAddress?(&v174, &_sSSSgMd);
    v136 = v46;
    v128 = v47;
  }

  v48 = (*(v137 + 184))(1, v130, v137);
  if (v49)
  {
    v50 = v48;
    v51 = v49;
    v173 = v163;
    outlined destroy of TermOfAddress?(&v173, &_sSSSgMd);
    v138 = v50;
    v142 = v51;
  }

  v171 = v164;
  v172 = v165;
  if (v41 && (*(v41 + 120) & 1) == 0)
  {
    v58 = v41;

    v59 = String.subscript.getter();
    v61 = v60;
    v63 = v62;
    v65 = v64;

    v66 = v63;
    v41 = v58;
    v54 = MEMORY[0x1865CAE80](v59, v61, v66, v65);
    v43 = v67;

    outlined destroy of TermOfAddress?(&v171, &_sSSSgMd);
  }

  else
  {
    v52 = (*(v137 + 200))(1, v130, v137);
    v54 = v134;
    if (v53)
    {
      v55 = v52;
      v56 = v53;
      outlined destroy of TermOfAddress?(&v171, &_sSSSgMd);
      v54 = v55;
      v43 = v56;
    }

    if (!v41)
    {
      v57 = v129;
      goto LABEL_56;
    }
  }

  v57 = v129;
  if ((*(v41 + 144) & 1) == 0)
  {

    v71 = String.subscript.getter();
    v73 = v72;
    v75 = v74;
    v77 = v76;
    v134 = v41;

    v57 = MEMORY[0x1865CAE80](v71, v73, v75, v77);
    v139 = v78;

    goto LABEL_59;
  }

LABEL_56:
  v134 = v41;
  v68 = (*(v137 + 208))(v130, v137);
  if ((v69 & 1) == 0)
  {
    v175 = v68;
    v57 = dispatch thunk of CustomStringConvertible.description.getter();
    v139 = v70;
LABEL_59:
    outlined destroy of TermOfAddress?(&v172, &_sSSSgMd);
  }

  v79 = v135;
  v80 = HIBYTE(v135) & 0xF;
  if ((v135 & 0x2000000000000000) == 0)
  {
    v80 = v132 & 0xFFFFFFFFFFFFLL;
  }

  v129 = v57;
  v141 = v43;
  if (!v80)
  {
    v81 = v54;
    v82 = v169;
    v83 = (*(v137 + 248))(1, v130, v137);
    v85 = v84;

    if (v82)
    {
      v86 = v144;
      v87 = v145;
    }

    else
    {
      v100 = (*(v137 + 264))(1, v130, v137);
      v86 = v144;
      v87 = v145;
      if (v101)
      {
        v87 = v100;
        v86 = v101;
      }
    }

    v102 = v142;
    v103 = v138;
    v104 = v85;
    goto LABEL_80;
  }

  if ((specialized Collection.first.getter(v132, v135) & 0x1FF) == 0x2F)
  {
    v81 = v54;
LABEL_78:

    v106 = v79;
    v107 = v132;
LABEL_79:
    v83 = String.removingDotSegments.getter(v107, v106);
    v104 = v108;

    v86 = v144;
    v87 = v145;
    v102 = v142;
    v103 = v138;
LABEL_80:
    v138 = v103;
    v142 = v102;
    v144 = v86;
    v145 = v87;
    v109 = v143;
    v110 = v131;
    v175 = v143;
    v176 = v131;
    v112 = v128;
    v111 = v129;
    *&v177 = v136;
    *(&v177 + 1) = v128;
    v178 = v103;
    v179 = v102;
    v113 = v141;
    v180 = v81;
    v181 = v141;
    v114 = v139;
    v182 = v129;
    v183 = v139;
    v137 = v83;
    v184 = v83;
    v185 = v104;
    v135 = v104;
    v186 = v87;
    v187 = v86;
    v188 = v160;
    v28 = _SwiftURL.URLStringBuilder.string.getter();
    swift_unknownObjectRelease();

    v146 = v109;
    v147 = v110;
    *&v148 = v136;
    *(&v148 + 1) = v112;
    v149 = v138;
    v150 = v142;
    v151 = v81;
    v152 = v113;
    v153 = v111;
    v154 = v114;
    v155 = v137;
    v156 = v135;
    v157 = v145;
    v158 = v144;
    v42 = v160;
    goto LABEL_41;
  }

  v88 = v130;
  v89 = (*(v137 + 152))(v130, v137);
  v90 = *(v137 + 248);
  if (v89)
  {
    v91 = v90(1, v130, v137);
    v93 = v92;

    v94 = HIBYTE(v93) & 0xF;
    v95 = v91 & 0xFFFFFFFFFFFFLL;
    v88 = v130;
    if ((v93 & 0x2000000000000000) == 0)
    {
      v94 = v95;
    }

    if (!v94)
    {
      v81 = v54;
      v175 = 47;
      v176 = 0xE100000000000000;
      MEMORY[0x1865CB0E0](v132, v135);
      v107 = v175;
      v106 = v176;
      goto LABEL_79;
    }
  }

  v96 = v90(1, v88, v137);
  v98 = v97;
  v79 = v135;
  v99 = specialized Collection.first.getter(v132, v135);
  if ((v99 & 0x1FF) == 0x2F)
  {
    v81 = v54;

    goto LABEL_78;
  }

  LOBYTE(v175) = 47;
  MEMORY[0x1EEE9AC00](v99);
  v127 = &v175;
  specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, &v126, v96, v98);
  if (v105)
  {
    v81 = v54;

    v79 = v135;
    goto LABEL_78;
  }

  String.index(after:)();
  v115 = String.subscript.getter();
  v117 = v116;
  v119 = v118;
  v121 = v120;
  v146 = 0;
  v147 = 0xE000000000000000;
  v122 = v135;
  v123 = String.count.getter();
  v137 = v119;
  v124 = Substring.distance(from:to:)();
  v125 = __OFADD__(v123, v124);
  result = (v123 + v124);
  if (!v125)
  {
    v81 = v54;
    MEMORY[0x1865CAED0](result);
    v175 = v115;
    v176 = v117;
    *&v177 = v137;
    *(&v177 + 1) = v121;
    lazy protocol witness table accessor for type Substring and conformance Substring();
    String.append<A>(contentsOf:)();
    v175 = v132;
    v176 = v122;

    String.append<A>(contentsOf:)();

    v107 = v146;
    v106 = v147;
    goto LABEL_79;
  }

  __break(1u);
LABEL_85:
  __break(1u);
  return result;
}

void _NSSwiftURL.absoluteURL.getter(uint64_t *a1@<X8>)
{
  v347 = *MEMORY[0x1E69E9840];
  v3 = [v1 baseURL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v3, &v334);

    swift_unknownObjectRelease();
    v5 = [v304 relativeString];
    isTaggedPointer = _objc_isTaggedPointer(v5);
    v7 = v5;
    v8 = v7;
    if (!isTaggedPointer)
    {
      goto LABEL_7;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v7);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
          v284 = v8;
          v10 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v12 = v11;

          goto LABEL_30;
        }

LABEL_7:
        LOBYTE(v320) = 0;
        *&v334 = 0;
        LOBYTE(v305) = 0;
        LOBYTE(v333) = 0;
        if (__CFStringIsCF())
        {
          if (v334)
          {
            if (v333 == 1)
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              v22 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_28:
              v10 = v22;
              v12 = v23;
              goto LABEL_29;
            }

LABEL_27:
            v22 = String.init(_cocoaString:)();
            goto LABEL_28;
          }
        }

        else
        {
          v16 = v8;
          v17 = String.init(_nativeStorage:)();
          if (v18)
          {
            v10 = v17;
            v12 = v18;

            goto LABEL_30;
          }

          *&v334 = [v16 length];
          if (v334)
          {
            goto LABEL_27;
          }
        }

        v10 = 0;
        v12 = 0xE000000000000000;
        goto LABEL_30;
      }

      v19 = [v8 UTF8String];
      if (!v19)
      {
LABEL_201:
        __break(1u);
        goto LABEL_202;
      }

      v20 = String.init(utf8String:)(v19);
      if (v21)
      {
        goto LABEL_22;
      }

      __break(1u);
    }

    LOWORD(v305) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v20 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v21)
    {
      [v8 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v12 = *(&v320 + 1);
      v10 = v320;
      goto LABEL_29;
    }

LABEL_22:
    v10 = v20;
    v12 = v21;

LABEL_29:
LABEL_30:

    if ((v12 & 0x2000000000000000) != 0)
    {
      v24 = HIBYTE(v12) & 0xF;
    }

    else
    {
      v24 = v10 & 0xFFFFFFFFFFFFLL;
    }

    v25 = [v304 baseURL];
    if (!v24)
    {
      if (v25)
      {
        v44 = v25;
        static URL._unconditionallyBridgeFromObjectiveC(_:)(v25, &v334);

        *a1 = v334;
      }

      else
      {
        *a1 = 0u;
      }

      return;
    }

    if (!v25)
    {
LABEL_38:
      v29 = *(v304 + OBJC_IVAR____NSSwiftURL_url);
      v31 = v29[3];
      v30 = v29[4];
      if (!v31)
      {
        *a1 = 0;
        a1[1] = v30;
        return;
      }

      v296 = v29[4];
      v297 = v29;
      v291 = 0;
      v299 = a1;
      v32 = v29[2];

      swift_unknownObjectRetain();
      specialized _SwiftURL.URLStringBuilder.init(parseInfo:original:)(v32, 0, &v320);
      v33 = *(&v320 + 1);
      v34 = v321;
      v35 = v322;
      v36 = v323;
      v319 = v329;
      v303 = v328;
      v304 = *(&v324 + 1);
      v301 = v320;
      v302 = v327;
      v300 = *(&v321 + 1);
      v298 = v31;
      if (*(&v320 + 1))
      {
        v37 = v321;
        *(&v294 + 1) = v321;
        v38 = *(&v323 + 1);
        v39 = v324;
        v40 = String.removingDotSegments.getter(v325, v326);
        v295 = v41;

        *&v334 = v301;
        *(&v334 + 1) = v33;
        v335 = v37;
        v336 = v300;
        v337 = v35;
        v338 = v36;
        v339 = v38;
        v340 = v39;
        v341 = v304;
        v342 = v40;
        v343 = v295;
        v344 = v302;
        v345 = v303;
        v346 = v329;
        v296 = _SwiftURL.URLStringBuilder.string.getter();
        v43 = v42;
        swift_unknownObjectRelease();
        v305 = v301;
        v306 = v33;
        v307 = *(&v294 + 1);
        v308 = v300;
        v309 = v35;
        v310 = v36;
        v311 = v38;
        v312 = v39;
        v313 = v304;
        v314 = v40;
        v315 = v295;
        v316 = v302;
        v317 = v303;
LABEL_55:
        v55 = v329;
        goto LABEL_56;
      }

      v292 = v326;
      v293 = v325;
      *&v294 = *(&v323 + 1);
      v295 = v323;
      v289 = *(&v322 + 1);
      v290 = v324;
      v45 = v322;
      ObjectType = swift_getObjectType();
      v47 = (v296[17])(ObjectType, v296);
      if (v48)
      {
        v49 = v47;
      }

      else
      {
        v49 = v301;
      }

      v50 = v32[72];
      *(&v288 + 1) = v48;
      if ((v50 & 1) == 0 || (v32[96] & 1) == 0 || v32[120] != 1 || v32[144] != 1)
      {
        *&v334 = v49;
        *(&v334 + 1) = v48;
        v335 = v34;
        v336 = v300;
        *&v337 = v45;
        *(&v337 + 1) = v289;
        v338 = v295;
        v339 = v294;
        v340 = v290;
        v341 = v304;
        v342 = v293;
        v343 = v292;
        v344 = v302;
        v345 = v303;
        v346 = v329;
        v53 = v49;
        v296 = _SwiftURL.URLStringBuilder.string.getter();
        v43 = v54;
        swift_unknownObjectRelease();
        v305 = v53;
        v306 = *(&v288 + 1);
        v307 = v34;
        v308 = v300;
        *&v309 = v45;
        *(&v309 + 1) = v289;
        v310 = v295;
        v311 = v294;
        v312 = v290;
        v313 = v304;
        v314 = v293;
        v315 = v292;
        v316 = v302;
        v317 = v303;
        goto LABEL_55;
      }

      *&v288 = v49;
      *&v334 = v31;
      *(&v334 + 1) = v296;
      URL._swiftURL.getter();
      if (v51)
      {
        v52 = *(v51 + 16);
      }

      else
      {
        v52 = 0;
      }

      v85 = v45;
      v86 = (v296[21])(1, ObjectType);
      if (v87)
      {
        v88 = v86;
        v89 = v87;
        v333 = v321;
        outlined destroy of TermOfAddress?(&v333, &_sSSSgMd);
        v34 = v88;
        v300 = v89;
      }

      v90 = (v296[23])(1, ObjectType);
      if (v91)
      {
        v92 = v90;
        v93 = v91;
        v332 = v322;
        outlined destroy of TermOfAddress?(&v332, &_sSSSgMd);
        v85 = v92;
        v289 = v93;
      }

      v301 = v85;
      v330 = v323;
      v331 = v324;
      *(&v294 + 1) = v34;
      if (v52 && (*(v52 + 120) & 1) == 0)
      {
        v102 = v52;

        v103 = String.subscript.getter();
        v105 = v104;
        v107 = v106;
        v109 = v108;

        v110 = v103;
        v52 = v102;
        v295 = MEMORY[0x1865CAE80](v110, v105, v107, v109);
        *&v294 = v111;

        outlined destroy of TermOfAddress?(&v330, &_sSSSgMd);
        v98 = v290;
        v97 = v304;
        v94 = v296;
      }

      else
      {
        v94 = v296;
        v95 = (v296[25])(1, ObjectType, v296);
        v97 = v304;
        v98 = v290;
        if (v96)
        {
          v99 = v95;
          v100 = v96;
          outlined destroy of TermOfAddress?(&v330, &_sSSSgMd);
          v295 = v99;
          *&v294 = v100;
        }

        if (!v52)
        {
          goto LABEL_98;
        }
      }

      if ((*(v52 + 144) & 1) == 0)
      {

        v115 = String.subscript.getter();
        v117 = v116;
        v119 = v118;
        v121 = v120;

        v98 = MEMORY[0x1865CAE80](v115, v117, v119, v121);
        v97 = v122;

        goto LABEL_101;
      }

LABEL_98:
      v112 = (*(v94 + 208))(ObjectType, v94);
      if (v113)
      {
LABEL_102:
        v123 = HIBYTE(v292) & 0xF;
        if ((v292 & 0x2000000000000000) == 0)
        {
          v123 = v293 & 0xFFFFFFFFFFFFLL;
        }

        v290 = v98;
        v291 = v52;
        v304 = v97;
        if (!v123)
        {
          v127 = v328;
          v128 = (*(v94 + 248))(1, ObjectType, v94);
          v130 = v129;

          if (v127)
          {
            v132 = v302;
            v131 = v303;
          }

          else
          {
            v177 = (*(v94 + 264))(1, ObjectType, v94);
            v132 = v302;
            v131 = v303;
            if (v178)
            {
              v132 = v177;
              v131 = v178;
            }
          }

          v179 = v289;
          v180 = v300;
          v181 = v295;
          v126 = v294;
          goto LABEL_153;
        }

        if ((specialized Collection.first.getter(v293, v292) & 0x1FF) == 0x2F)
        {

          v124 = v292;
          v125 = v293;
LABEL_107:
          v126 = v294;
LABEL_152:
          v128 = String.removingDotSegments.getter(v125, v124);
          v184 = v183;

          v130 = v184;

          v132 = v302;
          v131 = v303;
          v179 = v289;
          v180 = v300;
          v181 = v295;
LABEL_153:
          v302 = v132;
          v303 = v131;
          v293 = v130;
          *&v294 = v126;
          v295 = v181;
          v300 = v180;
          v185 = v288;
          v334 = v288;
          v186 = *(&v294 + 1);
          v335 = *(&v294 + 1);
          v336 = v180;
          v187 = v301;
          *&v337 = v301;
          *(&v337 + 1) = v179;
          v338 = v181;
          v339 = v126;
          v188 = v290;
          v189 = *(&v288 + 1);
          v190 = v304;
          v340 = v290;
          v341 = v304;
          v342 = v128;
          v343 = v130;
          v344 = v132;
          v345 = v131;
          v346 = v319;
          v296 = _SwiftURL.URLStringBuilder.string.getter();
          v43 = v191;
          swift_unknownObjectRelease();

          v305 = v185;
          v306 = v189;
          v307 = v186;
          v308 = v300;
          *&v309 = v187;
          *(&v309 + 1) = v179;
          v310 = v295;
          v311 = v294;
          v312 = v188;
          v313 = v190;
          v314 = v128;
          v315 = v293;
          v316 = v302;
          v317 = v303;
          v55 = v319;
LABEL_56:
          v318 = v55;
          outlined destroy of _SwiftURL.URLStringBuilder(&v305);
          v56 = v297;
          v57 = v297[5];
          type metadata accessor for _SwiftURL();
          v58 = swift_allocObject();
          type metadata accessor for _SwiftURL.ResourceInfo();
          v59 = swift_allocObject();
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd);
          v60 = swift_allocObject();
          *(v60 + 24) = 0;
          *(v60 + 16) = 0;
          *(v59 + 16) = v60;
          *(v58 + 56) = v59;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd);
          v61 = swift_allocObject();
          *(v61 + 24) = 0;
          *(v61 + 16) = 0;
          *(v58 + 64) = v61;
          v62 = specialized static RFC3986Parser.compatibilityParse(urlString:encodingInvalidCharacters:)(v296, v43, 1);

          if (v62)
          {
            *(v58 + 16) = v62;
            if ((v62[48] & 1) == 0)
            {

              String.subscript.getter();
            }

            *(v58 + 24) = 0;
            *(v58 + 32) = 0;
            *(v58 + 40) = v57;
            *(v58 + 48) = 0;
            v63 = v299;
            *v299 = v58;
            v63[1] = &protocol witness table for _SwiftURL;
          }

          else
          {

            swift_deallocPartialClassInstance();
            v64 = v299;
            *v299 = v56;
            v64[1] = &protocol witness table for _SwiftURL;
          }

          return;
        }

        v133 = (*(v94 + 152))(ObjectType, v94);
        v134 = *(v94 + 248);
        if (v133)
        {
          v135 = v134(1, ObjectType, v94);
          v137 = v136;

          v138 = HIBYTE(v137) & 0xF;
          if ((v137 & 0x2000000000000000) == 0)
          {
            v138 = v135 & 0xFFFFFFFFFFFFLL;
          }

          if (!v138)
          {
            *&v334 = 47;
            *(&v334 + 1) = 0xE100000000000000;
            MEMORY[0x1865CB0E0](v293, v292);
            v124 = *(&v334 + 1);
            v125 = v334;
            goto LABEL_107;
          }
        }

        v139 = v134(1, ObjectType, v94);
        v141 = v140;
        v142 = v292;
        v143 = specialized Collection.first.getter(v293, v292);
        if ((v143 & 0x1FF) == 0x2F)
        {

LABEL_151:

          v124 = v142;
          v125 = v293;
          v126 = v294;
          goto LABEL_152;
        }

        LOBYTE(v334) = 47;
        MEMORY[0x1EEE9AC00](v143);
        v284 = &v334;
        specialized BidirectionalCollection.lastIndex(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v283, v139, v141);
        if (v182)
        {

          v142 = v292;
          goto LABEL_151;
        }

        String.index(after:)();
        v192 = String.subscript.getter();
        v194 = v193;
        v196 = v195;
        v198 = v197;
        v305 = 0;
        v306 = 0xE000000000000000;
        v199 = v292;
        v200 = String.count.getter();
        v296 = v196;
        v201 = Substring.distance(from:to:)();
        v202 = __OFADD__(v200, v201);
        v203 = v200 + v201;
        if (!v202)
        {
          MEMORY[0x1865CAED0](v203);
          *&v334 = v192;
          *(&v334 + 1) = v194;
          v335 = v296;
          v336 = v198;
          lazy protocol witness table accessor for type Substring and conformance Substring();
          String.append<A>(contentsOf:)();
          *&v334 = v293;
          *(&v334 + 1) = v199;

          String.append<A>(contentsOf:)();

          v125 = v305;
          v124 = v306;
          goto LABEL_107;
        }

        __break(1u);
        goto LABEL_201;
      }

      *&v334 = v112;
      v98 = dispatch thunk of CustomStringConvertible.description.getter();
      v97 = v114;
LABEL_101:
      outlined destroy of TermOfAddress?(&v331, &_sSSSgMd);
      goto LABEL_102;
    }

    v26 = v25;
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v25, &v334);

    v27 = *(&v334 + 1);
    v28 = swift_getObjectType();
    if (v27[55](v28, v27) & 1) == 0 || (v27[38](v28, v27))
    {
      swift_unknownObjectRelease();
      goto LABEL_38;
    }

    v65 = v27[54](v28, v27);
    v66 = [v65 filePathURL];

    if (!v66)
    {
      goto LABEL_128;
    }

    static URL._unconditionallyBridgeFromObjectiveC(_:)(v66, &v334);

    v68 = *(&v334 + 1);
    v67 = v334;
    v69 = [v304 relativeString];
    v70 = _objc_isTaggedPointer(v69);
    v71 = v69;
    v72 = v71;
    if (!v70)
    {
      goto LABEL_67;
    }

    v73 = _objc_getTaggedPointerTag(v71);
    if (v73)
    {
      if (v73 != 22)
      {
        if (v73 == 2)
        {
          v304 = v68;
          MEMORY[0x1EEE9AC00](v73);
          v284 = v72;
          v74 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v76 = v75;

          goto LABEL_119;
        }

LABEL_67:
        LOBYTE(v320) = 0;
        *&v334 = 0;
        LOBYTE(v305) = 0;
        LOBYTE(v333) = 0;
        if (__CFStringIsCF())
        {
          if (v334)
          {
            if (v333 == 1)
            {
              lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
              v83 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_117:
              v74 = v83;
              v76 = v84;
              goto LABEL_118;
            }

LABEL_116:
            v83 = String.init(_cocoaString:)();
            goto LABEL_117;
          }
        }

        else
        {
          v77 = v72;
          v78 = String.init(_nativeStorage:)();
          if (v79)
          {
            v74 = v78;
            v76 = v79;

            goto LABEL_119;
          }

          *&v334 = [v77 length];
          if (v334)
          {
            goto LABEL_116;
          }
        }

        v74 = 0;
        v76 = 0xE000000000000000;
        goto LABEL_119;
      }

      v80 = [v72 UTF8String];
      if (!v80)
      {
LABEL_203:
        __break(1u);
        return;
      }

      v81 = String.init(utf8String:)(v80);
      if (v82)
      {
LABEL_79:
        v74 = v81;
        v76 = v82;

LABEL_118:
LABEL_119:
        if ((v76 & 0x2000000000000000) == 0)
        {
          goto LABEL_120;
        }

        goto LABEL_95;
      }

      __break(1u);
    }

    LOWORD(v305) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v81 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v82)
    {
      [v72 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v76 = *(&v320 + 1);
      v74 = v320;

      if ((*(&v320 + 1) & 0x2000000000000000) == 0)
      {
LABEL_120:
        v101 = v74 & 0xFFFFFFFFFFFFLL;
LABEL_121:
        if (v101)
        {
          *&v334 = v67;
          *(&v334 + 1) = v68;
          swift_unknownObjectRetain();
          v144 = specialized _SwiftURL.__allocating_init(stringOrEmpty:relativeTo:)(v74, v76, &v334);
          if (v144)
          {
            v291 = 0;
            v146 = v144[3];
            v145 = v144[4];
            if (!v146)
            {

              swift_unknownObjectRelease();
              swift_unknownObjectRelease();
              *a1 = 0;
              a1[1] = v145;
              return;
            }

            v293 = v144[4];
            v298 = v67;
            v299 = a1;
            v296 = v144;
            v147 = v144[2];

            swift_unknownObjectRetain();
            specialized _SwiftURL.URLStringBuilder.init(parseInfo:original:)(v147, 0, &v320);
            v148 = v321;
            v149 = v324;
            v319 = v329;
            v300 = v320;
            v301 = v328;
            v302 = v327;
            v303 = *(&v321 + 1);
            v295 = v146;
            v294 = v322;
            v297 = *(&v324 + 1);
            v304 = *(&v323 + 1);
            if (*(&v320 + 1))
            {
              v150 = v322;
              v151 = v323;
              v152 = *(&v320 + 1);
              v292 = *(&v320 + 1);
              v153 = String.removingDotSegments.getter(v325, v326);
              v155 = v154;

              *&v334 = v300;
              *(&v334 + 1) = v152;
              v335 = v148;
              v336 = v303;
              *&v337 = v150;
              *(&v337 + 1) = *(&v294 + 1);
              v338 = v151;
              v339 = v304;
              v340 = v149;
              v341 = v297;
              v342 = v153;
              v343 = v155;
              v344 = v302;
              v345 = v301;
              v346 = v329;
              v293 = _SwiftURL.URLStringBuilder.string.getter();
              v157 = v156;
              swift_unknownObjectRelease();
              v305 = v300;
              v306 = v292;
              v307 = v148;
              v308 = v303;
              v309 = v294;
              v310 = v151;
              v311 = v304;
              v312 = v149;
              v313 = v297;
              v314 = v153;
              v315 = v155;
              v316 = v302;
              v317 = v301;
LABEL_140:
              v318 = v329;
              outlined destroy of _SwiftURL.URLStringBuilder(&v305);
              v168 = v296;
              goto LABEL_141;
            }

            v289 = v326;
            v290 = v325;
            v292 = v323;
            *&v288 = v324;
            *(&v288 + 1) = v321;
            v158 = swift_getObjectType();
            v159 = (*(v293 + 136))(v158, v293);
            if (v160)
            {
              v161 = v159;
            }

            else
            {
              v161 = v300;
            }

            v162 = v147[72];
            v300 = v161;
            v287 = v160;
            if ((v162 & 1) == 0 || (v147[96] & 1) == 0 || v147[120] != 1 || v147[144] != 1)
            {
              *&v334 = v161;
              *(&v334 + 1) = v160;
              v335 = *(&v288 + 1);
              v336 = v303;
              v337 = v294;
              v338 = v292;
              v339 = v304;
              v340 = v288;
              v341 = v297;
              v342 = v290;
              v343 = v289;
              v344 = v302;
              v345 = v301;
              v346 = v329;
              v293 = _SwiftURL.URLStringBuilder.string.getter();
              v157 = v167;
              swift_unknownObjectRelease();
              v305 = v300;
              v306 = v287;
              v307 = *(&v288 + 1);
              v308 = v303;
              v309 = v294;
              v310 = v292;
              v311 = v304;
              v312 = v288;
              v313 = v297;
              v314 = v290;
              v315 = v289;
              v316 = v302;
              v317 = v301;
              goto LABEL_140;
            }

            v286 = v158;
            v163 = v160;
            *&v334 = v295;
            *(&v334 + 1) = v293;
            URL._swiftURL.getter();
            v165 = v303;
            if (v164)
            {
              v166 = *(v164 + 16);
            }

            else
            {
              v166 = 0;
            }

            v204 = (*(v293 + 168))(1, v286);
            if (v205)
            {
              v206 = v204;
              v207 = v205;
              v333 = v321;
              outlined destroy of TermOfAddress?(&v333, &_sSSSgMd);
              v165 = v207;
              *(&v288 + 1) = v206;
            }

            v208 = (*(v293 + 184))(1, v286);
            if (v209)
            {
              v210 = v208;
              v211 = v209;
              v332 = v322;
              outlined destroy of TermOfAddress?(&v332, &_sSSSgMd);
              *&v294 = v210;
              *(&v294 + 1) = v211;
            }

            v330 = v323;
            v331 = v324;
            if (v166 && (*(v166 + 120) & 1) == 0)
            {

              v216 = String.subscript.getter();
              v218 = v217;
              v220 = v219;
              v222 = v221;

              v292 = MEMORY[0x1865CAE80](v216, v218, v220, v222);
              v304 = v223;

              outlined destroy of TermOfAddress?(&v330, &_sSSSgMd);
            }

            else
            {
              v212 = (*(v293 + 200))(1, v286);
              if (v213)
              {
                v214 = v212;
                v215 = v213;
                outlined destroy of TermOfAddress?(&v330, &_sSSSgMd);
                v304 = v215;
                v292 = v214;
              }

              if (!v166)
              {
                goto LABEL_170;
              }
            }

            if ((*(v166 + 144) & 1) == 0)
            {

              v228 = String.subscript.getter();
              v230 = v229;
              v232 = v231;
              v234 = v233;
              v285 = v166;

              v226 = MEMORY[0x1865CAE80](v228, v230, v232, v234);
              v227 = v235;

              goto LABEL_174;
            }

LABEL_170:
            v285 = v166;
            v224 = (*(v293 + 208))(v286);
            if (v225)
            {
              v226 = v288;
              v227 = v297;
              goto LABEL_175;
            }

            *&v334 = v224;
            v226 = dispatch thunk of CustomStringConvertible.description.getter();
            v227 = v236;
LABEL_174:
            outlined destroy of TermOfAddress?(&v331, &_sSSSgMd);
LABEL_175:
            v237 = HIBYTE(v289) & 0xF;
            if ((v289 & 0x2000000000000000) == 0)
            {
              v237 = v290 & 0xFFFFFFFFFFFFLL;
            }

            v303 = v165;
            *&v288 = v226;
            v297 = v227;
            if (!v237)
            {
              v240 = v328;
              v241 = (*(v293 + 248))(1, v286);
              v243 = v242;

              if (v240)
              {
                v168 = v296;
                v244 = v302;
              }

              else
              {
                v257 = (*(v293 + 264))(1, v286);
                v259 = v301;
                v244 = v302;
                if (v258)
                {
                  v244 = v257;
                  v259 = v258;
                }

                v301 = v259;
                v168 = v296;
              }

              v260 = *(&v294 + 1);
              v261 = v294;
              v262 = *(&v288 + 1);
              v239 = v304;
              v263 = v292;
              v264 = v241;
              goto LABEL_199;
            }

            if ((specialized Collection.first.getter(v290, v289) & 0x1FF) == 0x2F)
            {

              v238 = v289;
              v168 = v296;
              v239 = v304;
LABEL_198:
              v264 = String.removingDotSegments.getter(v290, v238);
              v243 = v276;

              v244 = v302;
              v260 = *(&v294 + 1);
              v261 = v294;
              v262 = *(&v288 + 1);
              v263 = v292;
LABEL_199:
              *&v294 = v261;
              *(&v294 + 1) = v260;
              v302 = v244;
              v291 = v243;
              v292 = v263;
              v304 = v239;
              *(&v288 + 1) = v262;
              v277 = v300;
              *&v334 = v300;
              *(&v334 + 1) = v163;
              v278 = v303;
              v335 = v262;
              v336 = v303;
              *&v337 = v261;
              *(&v337 + 1) = v260;
              v338 = v263;
              v339 = v239;
              v279 = v288;
              v280 = v297;
              v340 = v288;
              v341 = v297;
              v342 = v264;
              v343 = v243;
              v281 = v301;
              v344 = v244;
              v345 = v301;
              v346 = v319;
              v293 = _SwiftURL.URLStringBuilder.string.getter();
              v157 = v282;
              swift_unknownObjectRelease();

              v305 = v277;
              v306 = v287;
              v307 = *(&v288 + 1);
              v308 = v278;
              v309 = v294;
              v310 = v292;
              v311 = v304;
              v312 = v279;
              v313 = v280;
              v314 = v264;
              v315 = v291;
              v316 = v302;
              v317 = v281;
              v318 = v319;
              outlined destroy of _SwiftURL.URLStringBuilder(&v305);
LABEL_141:
              v169 = *(v168 + 40);
              type metadata accessor for _SwiftURL();
              v170 = swift_allocObject();
              type metadata accessor for _SwiftURL.ResourceInfo();
              v171 = swift_allocObject();
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyyXlSg_GMd);
              v172 = swift_allocObject();
              *(v172 + 24) = 0;
              *(v172 + 16) = 0;
              *(v171 + 16) = v172;
              *(v170 + 56) = v171;
              __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCySo5NSURLCSg_GMd);
              v173 = swift_allocObject();
              *(v173 + 24) = 0;
              *(v173 + 16) = 0;
              *(v170 + 64) = v173;
              v174 = specialized static RFC3986Parser.compatibilityParse(urlString:encodingInvalidCharacters:)(v293, v157, 1);

              if (v174)
              {
                *(v170 + 16) = v174;
                if ((v174[48] & 1) == 0)
                {

                  String.subscript.getter();
                }

                *(v170 + 24) = 0;
                *(v170 + 32) = 0;
                *(v170 + 40) = v169;
                *(v170 + 48) = 0;

                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
                v175 = v299;
                *v299 = v170;
                v175[1] = &protocol witness table for _SwiftURL;
              }

              else
              {

                swift_deallocPartialClassInstance();
                v176 = v299;
                *v299 = v168;
                v176[1] = &protocol witness table for _SwiftURL;
                swift_unknownObjectRelease();
                swift_unknownObjectRelease();
              }

              return;
            }

            v245 = (*(v293 + 152))(v286, v293);
            v246 = *(v293 + 248);
            if ((v245 & 1) == 0)
            {
              goto LABEL_186;
            }

            v247 = v246(1, v286, v293);
            v249 = v248;

            v250 = HIBYTE(v249) & 0xF;
            if ((v249 & 0x2000000000000000) == 0)
            {
              v250 = v247 & 0xFFFFFFFFFFFFLL;
            }

            if (!v250)
            {
              *&v334 = 47;
              *(&v334 + 1) = 0xE100000000000000;
              MEMORY[0x1865CB0E0](v290, v289);
              v238 = *(&v334 + 1);
              v275 = v334;
            }

            else
            {
LABEL_186:
              v251 = v246(1, v286, v293);
              v253 = v252;
              v254 = specialized Collection.first.getter(v290, v289);
              if (v254 & 0x1FF) == 0x2F || (LOBYTE(v334) = 47, MEMORY[0x1EEE9AC00](v254), v284 = &v334, specialized BidirectionalCollection.lastIndex(where:)(closure #1 in BidirectionalCollection<>.lastIndex(of:)specialized partial apply, v283, v251, v253), (v255))
              {

                v256 = v289;

                v238 = v256;
LABEL_197:
                v168 = v296;
                v239 = v304;
                goto LABEL_198;
              }

              String.index(after:)();
              v265 = String.subscript.getter();
              v267 = v266;
              v269 = v268;
              v271 = v270;
              v305 = 0;
              v306 = 0xE000000000000000;
              v272 = String.count.getter();
              v273 = Substring.distance(from:to:)();
              v202 = __OFADD__(v272, v273);
              v274 = v272 + v273;
              if (v202)
              {
LABEL_202:
                __break(1u);
                goto LABEL_203;
              }

              MEMORY[0x1865CAED0](v274);
              *&v334 = v265;
              *(&v334 + 1) = v267;
              v335 = v269;
              v336 = v271;
              lazy protocol witness table accessor for type Substring and conformance Substring();
              String.append<A>(contentsOf:)();
              *&v334 = v290;
              *(&v334 + 1) = v289;

              String.append<A>(contentsOf:)();

              v275 = v305;
              v238 = v306;
            }

            v290 = v275;
            goto LABEL_197;
          }

          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

LABEL_128:
        swift_unknownObjectRelease();
        *a1 = 0;
        a1[1] = 0;
        return;
      }

LABEL_95:
      v101 = HIBYTE(v76) & 0xF;
      goto LABEL_121;
    }

    goto LABEL_79;
  }

  type metadata accessor for _BridgedNSSwiftURL();
  v13 = swift_allocObject();
  v14 = v304;
  *(v13 + 16) = v304;
  *a1 = v13;
  a1[1] = &protocol witness table for _BridgedNSSwiftURL;

  v15 = v14;
}

uint64_t _NSSwiftURL.scheme.getter()
{
  v1 = *(v0 + OBJC_IVAR____NSSwiftURL_url);
  if (*(v1[2] + 48))
  {
    if (v1[3])
    {
      v2 = v1[4];
      ObjectType = swift_getObjectType();
      return (*(v2 + 136))(ObjectType, v2);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v5 = String.subscript.getter();
    v6 = MEMORY[0x1865CAE80](v5);

    return v6;
  }
}

id _NSSwiftURL.resourceSpecifier.getter()
{
  v1 = v0;
  v73 = *MEMORY[0x1E69E9840];
  v2 = [v0 scheme];
  if (!v2)
  {
LABEL_4:
    v5 = [v0 relativeString];
    isTaggedPointer = _objc_isTaggedPointer(v5);
    v7 = v5;
    v1 = v7;
    if (!isTaggedPointer)
    {
      goto LABEL_10;
    }

    TaggedPointerTag = _objc_getTaggedPointerTag(v7);
    if (TaggedPointerTag)
    {
      if (TaggedPointerTag != 22)
      {
        if (TaggedPointerTag == 2)
        {
          MEMORY[0x1EEE9AC00](TaggedPointerTag);
LABEL_9:
          v9 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

          return v9;
        }

LABEL_10:
        v71 = 0;
        if (__CFStringIsCF())
        {
          if (v71)
          {
            goto LABEL_42;
          }

          goto LABEL_36;
        }

        goto LABEL_34;
      }

      result = [v1 UTF8String];
      if (result)
      {
        result = String.init(utf8String:)(result);
        if (v25)
        {
          goto LABEL_30;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_112;
    }

LABEL_26:
    _CFIndirectTaggedPointerStringGetContents();
    result = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v24)
    {
      [v1 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v9 = v67;

      return v9;
    }

LABEL_30:
    v9 = result;

    return v9;
  }

  v3 = [v0 baseURL];
  if (v3)
  {
    v4 = v3;
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v3, &v71);

    swift_unknownObjectRelease();
    goto LABEL_4;
  }

  if (*(v0 + OBJC_IVAR____NSSwiftURL_isDecomposable) != 1)
  {
    v19 = [v0 _cfurlResourceSpecifier];
    if (!v19)
    {
      return 0;
    }

    v14 = v19;
    v20 = _objc_isTaggedPointer(v19);
    v21 = v14;
    v1 = v21;
    if (v20)
    {
      v22 = _objc_getTaggedPointerTag(v21);
      switch(v22)
      {
        case 0:
          goto LABEL_26;
        case 0x16:
LABEL_49:
          result = [v1 UTF8String];
          if (!result)
          {
LABEL_113:
            __break(1u);
            goto LABEL_114;
          }

          result = String.init(utf8String:)(result);
          if (v35)
          {
            goto LABEL_30;
          }

          __break(1u);
LABEL_52:
          _CFIndirectTaggedPointerStringGetContents();
          v33 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v34)
          {
            [v14 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v16 = v67;
            v18 = v70;
            goto LABEL_58;
          }

          goto LABEL_53;
        case 2:
          MEMORY[0x1EEE9AC00](v22);
          goto LABEL_9;
      }
    }

    v71 = 0;
    if (__CFStringIsCF())
    {
LABEL_36:

      return 0;
    }

LABEL_34:
    v26 = v1;
    v27 = String.init(_nativeStorage:)();
    if (v28)
    {
      v9 = v27;

      return v9;
    }

    v71 = [v26 length];
    if (v71)
    {
LABEL_42:
      v9 = String.init(_cocoaString:)();

      return v9;
    }

    return 0;
  }

  v10 = [v0 _netLocation];
  if (!v10)
  {
    v9 = 0;
    v29 = 0;
    goto LABEL_60;
  }

  v11 = v10;
  v12 = _objc_isTaggedPointer(v10);
  v13 = v11;
  v14 = v13;
  if (!v12)
  {
    goto LABEL_31;
  }

  v15 = _objc_getTaggedPointerTag(v13);
  if (!v15)
  {
    goto LABEL_52;
  }

  if (v15 == 22)
  {
    result = [v14 UTF8String];
    if (!result)
    {
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v33 = String.init(utf8String:)(result);
    if (v34)
    {
LABEL_53:
      v16 = v33;
      v18 = v34;

      goto LABEL_58;
    }

    __break(1u);
    goto LABEL_49;
  }

  if (v15 != 2)
  {
LABEL_31:
    LOBYTE(v67) = 0;
    v71 = 0;
    if (__CFStringIsCF())
    {

LABEL_45:
      v16 = 0;
      v18 = 0xE000000000000000;
      goto LABEL_59;
    }

    v30 = v14;
    v31 = String.init(_nativeStorage:)();
    if (v32)
    {
      v16 = v31;
      v18 = v32;

      goto LABEL_59;
    }

    if (![v30 length])
    {

      goto LABEL_45;
    }

    v16 = String.init(_cocoaString:)();
    v18 = v36;
LABEL_58:

    goto LABEL_59;
  }

  MEMORY[0x1EEE9AC00](v15);
  v16 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
  v18 = v17;

LABEL_59:
  v71 = 12079;
  v72 = 0xE200000000000000;
  MEMORY[0x1865CB0E0](v16, v18);

  v9 = 12079;
  v29 = 0xE200000000000000;
LABEL_60:
  v37 = [v1 _relativePath_];
  if (!v37)
  {
    goto LABEL_85;
  }

  v38 = v37;
  v39 = _objc_isTaggedPointer(v37);
  v40 = v38;
  v41 = v40;
  if (v39)
  {
    v42 = _objc_getTaggedPointerTag(v40);
    if (v42)
    {
      if (v42 != 22)
      {
        if (v42 == 2)
        {
          MEMORY[0x1EEE9AC00](v42);
          v43 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v45 = v44;

          goto LABEL_82;
        }

        goto LABEL_66;
      }

      result = [v41 UTF8String];
      if (!result)
      {
LABEL_114:
        __break(1u);
        goto LABEL_115;
      }

      v49 = String.init(utf8String:)(result);
      if (v50)
      {
LABEL_75:
        v43 = v49;
        v45 = v50;

        goto LABEL_81;
      }

      __break(1u);
    }

    _CFIndirectTaggedPointerStringGetContents();
    v49 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v50)
    {
      [v41 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v43 = v68;
      v45 = v70;

      if (!v29)
      {
        goto LABEL_83;
      }

      goto LABEL_84;
    }

    goto LABEL_75;
  }

LABEL_66:
  LOBYTE(v68) = 0;
  v71 = 0;
  if (__CFStringIsCF())
  {

LABEL_70:
    v43 = 0;
    v45 = 0xE000000000000000;
    goto LABEL_82;
  }

  v46 = v41;
  v47 = String.init(_nativeStorage:)();
  if (v48)
  {
    v43 = v47;
    v45 = v48;

    goto LABEL_82;
  }

  if (![v46 length])
  {

    goto LABEL_70;
  }

  v43 = String.init(_cocoaString:)();
  v45 = v51;
LABEL_81:

LABEL_82:
  if (!v29)
  {
LABEL_83:
    v9 = 0;
    v29 = 0xE000000000000000;
  }

LABEL_84:
  v71 = v9;
  v72 = v29;

  MEMORY[0x1865CB0E0](v43, v45);

LABEL_85:
  v52 = [v1 _cfurlResourceSpecifier];
  if (!v52)
  {
    return v9;
  }

  v53 = v52;
  v54 = _objc_isTaggedPointer(v52);
  v55 = v53;
  v56 = v55;
  if (!v54)
  {
LABEL_91:
    v71 = 0;
    if (__CFStringIsCF())
    {
      v58 = v71;

      v60 = 0xE000000000000000;
      goto LABEL_106;
    }

    v61 = v56;
    v62 = String.init(_nativeStorage:)();
    if (v63)
    {
      v58 = v62;
      v60 = v63;

      goto LABEL_106;
    }

    if (![v61 length])
    {

      v58 = 0;
      v60 = 0xE000000000000000;
      goto LABEL_106;
    }

    v58 = String.init(_cocoaString:)();
    v60 = v66;
LABEL_105:

LABEL_106:
    if (!v29)
    {
LABEL_107:
      v9 = 0;
      v29 = 0xE000000000000000;
    }

LABEL_108:
    v71 = v9;
    v72 = v29;

    MEMORY[0x1865CB0E0](v58, v60);

    return v9;
  }

  v57 = _objc_getTaggedPointerTag(v55);
  if (!v57)
  {
    goto LABEL_98;
  }

  if (v57 != 22)
  {
    if (v57 == 2)
    {
      MEMORY[0x1EEE9AC00](v57);
      v58 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v60 = v59;

      goto LABEL_106;
    }

    goto LABEL_91;
  }

  result = [v56 UTF8String];
  if (result)
  {
    v64 = String.init(utf8String:)(result);
    if (v65)
    {
LABEL_99:
      v58 = v64;
      v60 = v65;

      goto LABEL_105;
    }

    __break(1u);
LABEL_98:
    _CFIndirectTaggedPointerStringGetContents();
    v64 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v65)
    {
      [v56 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v58 = v69;
      v60 = v70;

      if (!v29)
      {
        goto LABEL_107;
      }

      goto LABEL_108;
    }

    goto LABEL_99;
  }

LABEL_115:
  __break(1u);
  return result;
}

id @objc _NSSwiftURL.user.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();
  v6 = v5;

  if (v6)
  {
    v7 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t _NSSwiftURL.path.getter()
{
  if (v0[OBJC_IVAR____NSSwiftURL_isDecomposable] != 1)
  {
    return 0;
  }

  if (![v0 isFileURL])
  {
    v6 = *&v0[OBJC_IVAR____NSSwiftURL_url];
    v7 = _SwiftURL.isFileURL.getter();
    v8 = _SwiftURL.absolutePath(percentEncoded:)(1);
    if (v7)
    {
      v9 = String._droppingTrailingSlashes.getter(v8._countAndFlagsBits, v8._object);
      v11 = v10;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
      v12 = static _SetStorage.allocate(capacity:)();
      v13 = v12 + 56;
      v14 = *(v12 + 40);
      v15 = byte_1EEED3D98;
      result = MEMORY[0x1865CD020](v14, byte_1EEED3D98, 1);
      v16 = -1 << *(v12 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      v19 = *(v12 + 56 + 8 * (v17 >> 6));
      v20 = 1 << v17;
      v21 = *(v12 + 48);
      if (((1 << v17) & v19) != 0)
      {
        v22 = ~v16;
        while (*(v21 + v17) != v15)
        {
          v17 = (v17 + 1) & v22;
          v18 = v17 >> 6;
          v19 = *(v13 + 8 * (v17 >> 6));
          v20 = 1 << v17;
          if (((1 << v17) & v19) == 0)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:
        *(v13 + 8 * v18) = v20 | v19;
        *(v21 + v17) = v15;
        v23 = *(v12 + 16);
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          goto LABEL_100;
        }

        *(v12 + 16) = v25;
      }

      v26 = byte_1EEED3D99;
      result = MEMORY[0x1865CD020](v14, byte_1EEED3D99, 1);
      v27 = -1 << *(v12 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      v30 = *(v13 + 8 * (v28 >> 6));
      v31 = 1 << v28;
      v32 = *(v12 + 48);
      if (((1 << v28) & v30) != 0)
      {
        v33 = ~v27;
        while (*(v32 + v28) != v26)
        {
          v28 = (v28 + 1) & v33;
          v29 = v28 >> 6;
          v30 = *(v13 + 8 * (v28 >> 6));
          v31 = 1 << v28;
          if (((1 << v28) & v30) == 0)
          {
            goto LABEL_18;
          }
        }

        goto LABEL_20;
      }

LABEL_18:
      *(v13 + 8 * v29) = v31 | v30;
      *(v32 + v28) = v26;
      v34 = *(v12 + 16);
      v24 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (!v24)
      {
        *(v12 + 16) = v35;
LABEL_20:
        v36 = HIBYTE(v11) & 0xF;
        if ((v11 & 0x2000000000000000) == 0)
        {
          v36 = v9 & 0xFFFFFFFFFFFFLL;
        }

        if (!v36)
        {
LABEL_96:

          return 0;
        }

        v139._countAndFlagsBits = v9;
        v139._object = v11;
        MEMORY[0x1EEE9AC00](result);
        v136 = &v139;
        v137 = v12;
        v138 = 4;

        v37 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v135, v9, v11);
        if (v38 == 1)
        {
          v39 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v9, v11, v12, 4);
          v41 = v40;
        }

        else
        {
          v41 = v38;
          v39 = v37;
        }

        result = v39;
        if (v41)
        {
          return result;
        }

        return 0;
      }

LABEL_100:
      __break(1u);
      goto LABEL_101;
    }

    if ((*(*(v6 + 16) + 220) & 8) != 0)
    {
      v63 = (v8._object >> 56) & 0xF;
      if ((v8._object & 0x2000000000000000) == 0)
      {
        v63 = v8._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v63)
      {
        v139 = v8;
        MEMORY[0x1EEE9AC00](v8._countAndFlagsBits);
        v136 = &v139;
        v137 = MEMORY[0x1E69E7CD0];
        v138 = 4;
        v65 = v64;
        v50 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v135, v64, v8._object);
        if (v51 == 1)
        {
          v52 = MEMORY[0x1E69E7CD0];
          v53 = v65;
          object = v8._object;
          v55 = 4;
          goto LABEL_42;
        }

LABEL_47:
        v68 = v51;
        v66 = v50;
        goto LABEL_48;
      }
    }

    else
    {
      v46 = (v8._object >> 56) & 0xF;
      if ((v8._object & 0x2000000000000000) == 0)
      {
        v46 = v8._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v46)
      {
        v47 = *(v6 + 40);
        v139 = v8;
        MEMORY[0x1EEE9AC00](v8._countAndFlagsBits);
        v136 = &v139;
        v137 = MEMORY[0x1E69E7CD0];
        v138 = v47;
        v49 = v48;
        v50 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v135, v48, v8._object);
        if (v51 == 1)
        {
          v52 = MEMORY[0x1E69E7CD0];
          v53 = v49;
          object = v8._object;
          v55 = v47;
LABEL_42:
          v66 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v53, object, v52, v55);
          v68 = v67;
LABEL_48:

          if (!v68)
          {
            return 0;
          }

          v70 = v66;
LABEL_50:
          v71 = String._droppingTrailingSlashes.getter(v70, v68);

          return v71;
        }

        goto LABEL_47;
      }
    }

    v70 = 0;
    v68 = 0xE000000000000000;
    goto LABEL_50;
  }

  if (v0[OBJC_IVAR____NSSwiftURL_hasPath] == 1)
  {
    v1 = *&v0[OBJC_IVAR____NSSwiftURL_url];
    if (*(*(v1 + 16) + 168))
    {
      v2 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
      v4 = v3;
    }

    else
    {

      v2 = String.subscript.getter();
      v4 = v56;
    }

    result = [v0 baseURL];
    if (!((v2 ^ v4) >> 14))
    {
      if (result)
      {
        v57 = result;
        static URL._unconditionallyBridgeFromObjectiveC(_:)(result, &v139._countAndFlagsBits);

        v58 = v139._object;
        ObjectType = swift_getObjectType();
        v60 = v58[36](0, 1, 1, ObjectType, v58);
        Path = String._deletingLastPathComponent()(v60, v61);
        swift_unknownObjectRelease();

        return Path;
      }

      return result;
    }

    if (result)
    {
      v69 = result;
      static URL._unconditionallyBridgeFromObjectiveC(_:)(result, &v139._countAndFlagsBits);

      swift_unknownObjectRelease();
LABEL_57:
      v73 = _SwiftURL.absolutePath(percentEncoded:)(1);
      v74 = closure #1 in static _SwiftURL.fileSystemPath(for:style:compatibility:)(v73._countAndFlagsBits, v73._object);
      v76 = v75;

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
      v77 = static _SetStorage.allocate(capacity:)();
      v78 = v77 + 56;
      v79 = *(v77 + 40);
      v80 = byte_1EEED3D48;
      result = MEMORY[0x1865CD020](v79, byte_1EEED3D48, 1);
      v81 = -1 << *(v77 + 32);
      v82 = result & ~v81;
      v83 = v82 >> 6;
      v84 = *(v77 + 56 + 8 * (v82 >> 6));
      v85 = 1 << v82;
      v86 = *(v77 + 48);
      if (((1 << v82) & v84) != 0)
      {
        v87 = ~v81;
        while (*(v86 + v82) != v80)
        {
          v82 = (v82 + 1) & v87;
          v83 = v82 >> 6;
          v84 = *(v78 + 8 * (v82 >> 6));
          v85 = 1 << v82;
          if (((1 << v82) & v84) == 0)
          {
            goto LABEL_61;
          }
        }

        goto LABEL_63;
      }

LABEL_61:
      *(v78 + 8 * v83) = v85 | v84;
      *(v86 + v82) = v80;
      v88 = *(v77 + 16);
      v24 = __OFADD__(v88, 1);
      v89 = v88 + 1;
      if (!v24)
      {
        *(v77 + 16) = v89;
LABEL_63:
        v90 = byte_1EEED3D49;
        result = MEMORY[0x1865CD020](v79, byte_1EEED3D49, 1);
        v91 = -1 << *(v77 + 32);
        v92 = result & ~v91;
        v93 = v92 >> 6;
        v94 = *(v78 + 8 * (v92 >> 6));
        v95 = 1 << v92;
        v96 = *(v77 + 48);
        if (((1 << v92) & v94) != 0)
        {
          v97 = ~v91;
          while (*(v96 + v92) != v90)
          {
            v92 = (v92 + 1) & v97;
            v93 = v92 >> 6;
            v94 = *(v78 + 8 * (v92 >> 6));
            v95 = 1 << v92;
            if (((1 << v92) & v94) == 0)
            {
              goto LABEL_67;
            }
          }

LABEL_69:
          v100 = HIBYTE(v76) & 0xF;
          if ((v76 & 0x2000000000000000) == 0)
          {
            v100 = v74 & 0xFFFFFFFFFFFFLL;
          }

          if (v100)
          {
            v139._countAndFlagsBits = v74;
            v139._object = v76;
            MEMORY[0x1EEE9AC00](result);
            v136 = &v139;
            v137 = v77;
            v138 = 4;

LABEL_73:
            v101 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v135, v74, v76);
            if (v102 == 1)
            {
              v101 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v74, v76, v77, 4);
            }

            v103 = v101;
            v104 = v102;

            if (v104)
            {
              return v103;
            }

            else
            {
              return 0;
            }
          }

          goto LABEL_96;
        }

LABEL_67:
        *(v78 + 8 * v93) = v95 | v94;
        *(v96 + v92) = v90;
        v98 = *(v77 + 16);
        v24 = __OFADD__(v98, 1);
        v99 = v98 + 1;
        if (!v24)
        {
          *(v77 + 16) = v99;
          goto LABEL_69;
        }
      }

LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    if (![v0 isFileReferenceURL])
    {
      goto LABEL_57;
    }

    if (*(*(v1 + 16) + 168))
    {
      v72 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v72 = String.subscript.getter();
    }

    v105 = MEMORY[0x1865CAE80](v72);
    v107 = v106;

    v108 = _NSSwiftURL.filePath(for:)(v105, v107);
    v110 = v109;

    if (!v110)
    {
      return v108;
    }

    v74 = closure #1 in static _SwiftURL.fileSystemPath(for:style:compatibility:)(v108, v110);
    v76 = v111;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
    v77 = static _SetStorage.allocate(capacity:)();
    v112 = v77 + 56;
    v113 = *(v77 + 40);
    v114 = byte_1EEED3D70;
    result = MEMORY[0x1865CD020](v113, byte_1EEED3D70, 1);
    v115 = -1 << *(v77 + 32);
    v116 = result & ~v115;
    v117 = v116 >> 6;
    v118 = *(v77 + 56 + 8 * (v116 >> 6));
    v119 = 1 << v116;
    v120 = *(v77 + 48);
    if (((1 << v116) & v118) != 0)
    {
      v121 = ~v115;
      while (*(v120 + v116) != v114)
      {
        v116 = (v116 + 1) & v121;
        v117 = v116 >> 6;
        v118 = *(v112 + 8 * (v116 >> 6));
        v119 = 1 << v116;
        if (((1 << v116) & v118) == 0)
        {
          goto LABEL_84;
        }
      }
    }

    else
    {
LABEL_84:
      *(v112 + 8 * v117) = v119 | v118;
      *(v120 + v116) = v114;
      v122 = *(v77 + 16);
      v24 = __OFADD__(v122, 1);
      v123 = v122 + 1;
      if (v24)
      {
        goto LABEL_102;
      }

      *(v77 + 16) = v123;
    }

    v124 = byte_1EEED3D71;
    result = MEMORY[0x1865CD020](v113, byte_1EEED3D71, 1);
    v125 = -1 << *(v77 + 32);
    v126 = result & ~v125;
    v127 = v126 >> 6;
    v128 = *(v112 + 8 * (v126 >> 6));
    v129 = 1 << v126;
    v130 = *(v77 + 48);
    if (((1 << v126) & v128) != 0)
    {
      v131 = ~v125;
      while (*(v130 + v126) != v124)
      {
        v126 = (v126 + 1) & v131;
        v127 = v126 >> 6;
        v128 = *(v112 + 8 * (v126 >> 6));
        v129 = 1 << v126;
        if (((1 << v126) & v128) == 0)
        {
          goto LABEL_90;
        }
      }

LABEL_92:
      v134 = HIBYTE(v76) & 0xF;
      if ((v76 & 0x2000000000000000) == 0)
      {
        v134 = v74 & 0xFFFFFFFFFFFFLL;
      }

      if (v134)
      {
        v139._countAndFlagsBits = v74;
        v139._object = v76;
        MEMORY[0x1EEE9AC00](result);
        v136 = &v139;
        v137 = v77;
        v138 = 4;

        goto LABEL_73;
      }

      goto LABEL_96;
    }

LABEL_90:
    *(v112 + 8 * v127) = v129 | v128;
    *(v130 + v126) = v124;
    v132 = *(v77 + 16);
    v24 = __OFADD__(v132, 1);
    v133 = v132 + 1;
    if (!v24)
    {
      *(v77 + 16) = v133;
      goto LABEL_92;
    }

LABEL_102:
    __break(1u);
    return result;
  }

  result = [v0 baseURL];
  if (result)
  {
    v42 = result;
    static URL._unconditionallyBridgeFromObjectiveC(_:)(result, &v139._countAndFlagsBits);

    v43 = v139._object;
    v44 = swift_getObjectType();
    v45 = v43[36](0, 1, 1, v44, v43);
    swift_unknownObjectRelease();
    return v45;
  }

  return result;
}

id _NSSwiftURL.filePath(for:)(uint64_t a1, unint64_t a2)
{
  v229 = *MEMORY[0x1E69E9840];

  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = static String._copying(_:)();
    v67 = v66;

    a2 = v67;
    if ((v67 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((a2 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((a1 & 0x1000000000000000) != 0)
    {
      v5 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      v6 = a1 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v5 = _StringObject.sharedUTF8.getter();
      v6 = v188;
    }

    if (one-time initialization token for fileIDPrefix != -1)
    {
      swift_once();
    }

    v7 = static URL.fileIDPrefix;
    if ((specialized Sequence<>.starts<A>(with:)(static URL.fileIDPrefix, v5, v6) & 1) == 0)
    {
      goto LABEL_141;
    }

    v8 = *(v7 + 16);
    if (v6 >= v8)
    {
      if (v8 == v6)
      {
        goto LABEL_141;
      }

      v9 = 0;
      v10 = v5;
      while (*(v10 + v8) != 46)
      {
        ++v10;
        if (v8 - v6 == --v9)
        {
          goto LABEL_141;
        }
      }

      if (!__OFADD__(v8, -v9))
      {
        if (v8 - v9 >= v8)
        {
          v11 = static String._fromUTF8Repairing(_:)();
          _ss17FixedWidthIntegerPsEyxSgSScfCs5Int64V_Tt1g5(v11);
          if ((v12 & 1) == 0)
          {
            v13 = v8 - v9 + 1;
            if (!__OFADD__(v8 - v9, 1))
            {
              if (v6 >= v13)
              {
                v14 = v6;
                if (v13 != v6)
                {
                  v14 = v8 - v9 + 1;
                  while (*(v5 + v14) != 47)
                  {
                    if (v6 == ++v14)
                    {
                      v14 = v6;
                      break;
                    }
                  }
                }

                if (!__OFADD__(v13, v14 - v13))
                {
                  if (v14 >= v13)
                  {
                    v15 = static String._fromUTF8Repairing(_:)();
                    _ss17FixedWidthIntegerPsEyxSgSScfCs5Int64V_Tt1g5(v15);
                    v16 = __CFURLCreatePathForFileID();
                    isTaggedPointer = _objc_isTaggedPointer(v16);
                    v18 = v16;
                    v19 = v18;
                    if (!isTaggedPointer)
                    {
LABEL_31:
                      LOBYTE(v211) = 0;
                      *&v220 = 0;
                      LOBYTE(v202) = 0;
                      LOBYTE(v194) = 0;
                      if (__CFStringIsCF())
                      {

                        v21 = 0;
                        v23 = 0xE000000000000000;
                      }

                      else
                      {
                        v24 = v19;
                        v25 = String.init(_nativeStorage:)();
                        if (v26)
                        {
                          v21 = v25;
                          v23 = v26;
                        }

                        else
                        {
                          *&v220 = [v24 length];
                          if (v220)
                          {
                            v21 = String.init(_cocoaString:)();
                            v23 = v30;
                          }

                          else
                          {

                            v21 = 0;
                            v23 = 0xE000000000000000;
                          }
                        }
                      }

LABEL_45:
                      if ((v23 & 0x2000000000000000) == 0)
                      {
                        goto LABEL_46;
                      }

                      goto LABEL_43;
                    }

                    TaggedPointerTag = _objc_getTaggedPointerTag(v18);
                    if (TaggedPointerTag)
                    {
                      if (TaggedPointerTag != 22)
                      {
                        if (TaggedPointerTag == 2)
                        {
                          v193 = &v189;
                          MEMORY[0x1EEE9AC00](TaggedPointerTag);
                          v21 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                          v23 = v22;

                          goto LABEL_45;
                        }

                        goto LABEL_31;
                      }

                      result = [v19 UTF8String];
                      if (!result)
                      {
LABEL_281:
                        __break(1u);
                        goto LABEL_282;
                      }

                      v28 = String.init(utf8String:)(result);
                      if (v29)
                      {
LABEL_39:
                        v21 = v28;
                        v23 = v29;

                        goto LABEL_45;
                      }

                      __break(1u);
                    }

                    LOWORD(v202) = 0;
                    _CFIndirectTaggedPointerStringGetContents();
                    v28 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                    if (!v29)
                    {
                      [v19 mutableCopy];
                      _bridgeAnyObjectToAny(_:)();

                      swift_unknownObjectRelease();
                      swift_dynamicCast();
                      v23 = *(&v211 + 1);
                      v21 = v211;

                      if ((*(&v211 + 1) & 0x2000000000000000) == 0)
                      {
LABEL_46:
                        v31 = v21 & 0xFFFFFFFFFFFFLL;
LABEL_47:
                        if (v31)
                        {
                          v32 = _s10Foundation13RFC3986ParserV13percentEncode_9component18skipAlreadyEncodedSSSgxSg_AA13URLComponentsV9ComponentOSbtSyRzlFZSS_Tt2g5(v21, v23, 5u, 0);
                          v34 = v33;

                          if (!v34)
                          {
                            goto LABEL_142;
                          }

                          if (!__OFADD__(v14, v6 - v14))
                          {
                            if (v6 >= v14)
                            {
                              v35 = static String._fromUTF8Repairing(_:)();
                              v37 = v36;
                              *&v220 = v32;
                              *(&v220 + 1) = v34;

                              MEMORY[0x1865CB0E0](v35, v37);

                              v38 = *(&v220 + 1);
                              v32 = v220;
                              v39 = [v2 query];
                              if (!v39)
                              {
                                goto LABEL_142;
                              }

                              v40 = v39;
                              v41 = static String._unconditionallyBridgeFromObjectiveC(_:)(v39);
                              v43 = v42;

                              URLComponents.init()(&v211);
                              BYTE8(v211) = 0;
                              HIBYTE(v211) = 0;
                              v44 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(v41, v43, 64, 0);
                              v193 = v43;
                              if (v44 == 2)
                              {
                                *&v220 = v41;
                                *(&v220 + 1) = v43;
                                lazy protocol witness table accessor for type String and conformance String();

                                StringProtocol._ephemeralString.getter();
                                v45 = String._bridgeToObjectiveCImpl()();

                                v46 = [v45 _fastCharacterContents];
                                v47 = v45;
                                v48 = v46;
                                v49 = v47;
                                if (v48)
                                {
                                  *&v220 = v41;
                                  *(&v220 + 1) = v43;
                                  StringProtocol._ephemeralString.getter();
                                  v50 = String._bridgeToObjectiveCImpl()();

                                  v51 = [v50 length];
                                  swift_unknownObjectRelease();
                                  if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v48, v51, 0x40u, 0))
                                  {
LABEL_55:
                                    v41 = _s10Foundation13RFC3986ParserV13percentEncode_9component18skipAlreadyEncodedSSSgxSg_AA13URLComponentsV9ComponentOSbtSyRzlFZSS_Tt2g5(v41, v43, 6u, 0);
                                    v53 = v52;

LABEL_59:

                                    *(&v218 + 1) = v41;
                                    *&v219[0] = v53;
                                    *(v228 + 10) = *(v219 + 10);
                                    v222 = v213;
                                    v223 = v214;
                                    v224 = v215;
                                    v225 = v216;
                                    v220 = v211;
                                    v221 = v212;
                                    v226 = v217;
                                    v227 = v218;
                                    v228[0] = v219[0];
                                    v55 = URLComponents._URLComponents.queryItems(percentEncoded:)(1);
                                    if (v55)
                                    {
                                      v191 = 0;
                                      v192 = v55;
                                      v56 = *(v55 + 16);
                                      v57 = 0;
                                      if (v56)
                                      {
                                        v58 = (v55 + 56);
                                        do
                                        {
                                          v59 = *(v58 - 1);
                                          v60 = *v58;
                                          if (specialized Sequence<>.elementsEqual<A>(_:)(0x65766C6F7365722EuLL, 0xE800000000000000, *(v58 - 3), *(v58 - 2)))
                                          {
                                            if (v60)
                                            {

                                              v61 = _ss17FixedWidthIntegerPsEyxSgSScfCs6UInt32V_Tt1g5(v59, v60);
                                              if ((v61 & 0x100000000) == 0)
                                              {
                                                v57 |= v61;
                                              }
                                            }
                                          }

                                          v58 += 4;
                                          --v56;
                                        }

                                        while (v56);
                                      }

                                      v208 = v217;
                                      v209 = v218;
                                      v210[0] = v219[0];
                                      *(v210 + 10) = *(v219 + 10);
                                      v204 = v213;
                                      v205 = v214;
                                      v206 = v215;
                                      v207 = v216;
                                      v202 = v211;
                                      v203 = v212;
                                      outlined destroy of URLComponents(&v202);
                                      if (!v57 || (specialized Collection.first.getter(v32, v38) & 0x1FF) != 0x2F)
                                      {
                                        goto LABEL_142;
                                      }

                                      if ((specialized Sequence<>.starts<A>(with:)(0x2E2FuLL, 0xE200000000000000, v32, v38) & 1) == 0)
                                      {
                                        goto LABEL_235;
                                      }

                                      if (specialized Sequence<>.starts<A>(with:)(0x6C6C6F666F6E2E2FuLL, 0xEB000000002F776FLL, v32, v38))
                                      {
                                        if (v57 == 1)
                                        {
                                          goto LABEL_142;
                                        }

                                        LODWORD(v62) = 1;
                                        v63 = 10;
                                        goto LABEL_236;
                                      }

                                      if ((specialized Sequence<>.starts<A>(with:)(0x766C6F7365722E2FuLL, 0xEA00000000002F65, v32, v38) & 1) == 0)
                                      {
LABEL_235:
                                        v63 = 0;
                                        LODWORD(v62) = 0;
LABEL_236:
                                        if ((v38 & 0x1000000000000000) != 0)
                                        {
                                          goto LABEL_268;
                                        }

                                        if ((v63 & 0x8000000000000000) != 0)
                                        {
                                          __break(1u);
                                        }

                                        else
                                        {
                                          v175 = HIBYTE(v38) & 0xF;
                                          if ((v38 & 0x2000000000000000) == 0)
                                          {
                                            v175 = v32 & 0xFFFFFFFFFFFFLL;
                                          }

                                          if (v175 >= v63)
                                          {
                                            v176 = (v63 << 16) | 4;
LABEL_242:
                                            v177 = v62 | v57;
                                            v178 = specialized Collection.suffix(from:)(v176, v32, v38);
                                            v180 = v179;
                                            v182 = v181;
                                            v184 = v183;

                                            if (v177 == 1)
                                            {
                                              v185 = 0x6C6C6F666F6E2E2FLL;
                                              v186 = 0xEA0000000000776FLL;
                                            }

                                            else
                                            {
                                              v194 = 0x766C6F7365722E2FLL;
                                              v195 = 0xEA00000000002F65;
                                              LODWORD(v200) = v177;
                                              v187 = dispatch thunk of CustomStringConvertible.description.getter();
                                              MEMORY[0x1865CB0E0](v187);

                                              v185 = v194;
                                              v186 = v195;
                                            }

                                            v200 = v185;
                                            v201 = v186;
                                            v194 = v178;
                                            v195 = v180;
                                            v196 = v182;
                                            v197 = v184;
                                            lazy protocol witness table accessor for type Substring and conformance Substring();
                                            String.append<A>(contentsOf:)();

                                            v32 = v200;
                                            goto LABEL_142;
                                          }
                                        }

                                        __break(1u);
                                        goto LABEL_271;
                                      }

                                      if ((v38 & 0x1000000000000000) != 0)
                                      {
                                        v156 = (v32 >> 59) & 1;
                                      }

                                      else
                                      {
                                        v156 = 1;
                                      }

                                      v193 = v156;
                                      if ((v38 & 0x1000000000000000) == 0)
                                      {
                                        v157 = v38 & 0x2000000000000000;
                                        v158 = HIBYTE(v38) & 0xE;
                                        if ((v38 & 0x2000000000000000) == 0)
                                        {
                                          v158 = v32 & 0xFFFFFFFFFFFELL;
                                        }

                                        if (v158 < 0xA)
                                        {
                                          __break(1u);
                                          goto LABEL_275;
                                        }

                                        v62 = 655364;
                                        goto LABEL_218;
                                      }

LABEL_273:
                                      v62 = MEMORY[0x1865CB180](15, 10, v32, v38);
                                      v157 = v38 & 0x2000000000000000;
LABEL_218:
                                      if (v157)
                                      {
                                        v159 = HIBYTE(v38) & 0xF;
                                      }

                                      else
                                      {
                                        v159 = v32 & 0xFFFFFFFFFFFFLL;
                                      }

                                      v192 = v159;
                                      if (v62 >> 14 == 4 * v159)
                                      {
                                        goto LABEL_142;
                                      }

                                      v160 = specialized Collection.suffix(from:)(v62, v32, v38);
                                      v164 = specialized Collection<>.firstIndex(of:)(47, v160, v161, v162, v163);
                                      v166 = v165;

                                      if (v166)
                                      {
                                        goto LABEL_142;
                                      }

                                      v190 = v164;
                                      if (v62 >> 14 > v164 >> 14)
                                      {
                                        goto LABEL_277;
                                      }

                                      v167 = String.subscript.getter();
                                      v189 = v170;
                                      v171 = v169;
                                      if (!((v167 ^ v168) >> 14))
                                      {
                                        goto LABEL_275;
                                      }

                                      v172 = v167;
                                      v173 = v168;
                                      v56 = v191;
                                      v174 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5s6UInt32VSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5i9VGXEfU_s6L7V_SsTG5SiTf1cn_n(v167, v168, v189, v169, 10);
                                      if ((v174 & 0x10000000000) != 0)
                                      {
                                        v174 = specialized _parseInteger<A, B>(ascii:radix:)(v172, v173, v189, v171, 10);
                                      }

                                      v62 = v174;

                                      if ((v62 & 0x100000000) != 0)
                                      {
                                        goto LABEL_142;
                                      }

                                      if ((v190 & 0xC) == 4 << v193)
                                      {
                                        result = _StringGuts._slowEnsureMatchingEncoding(_:)(v190, v32, v38);
                                        v190 = result;
                                      }

                                      v63 = v190 >> 16;
                                      if ((v38 & 0x1000000000000000) != 0)
                                      {
                                        if (v192 < v63)
                                        {
LABEL_280:
                                          __break(1u);
                                          goto LABEL_281;
                                        }

                                        v63 = String.UTF8View._foreignDistance(from:to:)();
                                      }

                                      if ((v57 | v62) == v62)
                                      {
                                        goto LABEL_142;
                                      }

                                      goto LABEL_236;
                                    }

                                    v208 = v217;
                                    v209 = v218;
                                    v210[0] = v219[0];
                                    *(v210 + 10) = *(v219 + 10);
                                    v204 = v213;
                                    v205 = v214;
                                    v206 = v215;
                                    v207 = v216;
                                    v64 = v211;
                                    v65 = v212;
LABEL_169:
                                    v202 = v64;
                                    v203 = v65;
                                    outlined destroy of URLComponents(&v202);
                                    goto LABEL_142;
                                  }
                                }

                                else if ((specialized Sequence.allSatisfy(_:)(v41, v43, 64) & 1) == 0)
                                {
                                  goto LABEL_55;
                                }
                              }

                              else
                              {
                                v54 = v44;

                                if ((v54 & 1) == 0)
                                {
                                  goto LABEL_55;
                                }
                              }

                              v53 = v43;
                              goto LABEL_59;
                            }

LABEL_264:
                            __break(1u);
                          }

LABEL_263:
                          __break(1u);
                          goto LABEL_264;
                        }

                        goto LABEL_140;
                      }

LABEL_43:
                      v31 = HIBYTE(v23) & 0xF;
                      goto LABEL_47;
                    }

                    goto LABEL_39;
                  }

                  goto LABEL_259;
                }

                goto LABEL_257;
              }

              goto LABEL_255;
            }

            goto LABEL_253;
          }

LABEL_141:
          v32 = 0;
          goto LABEL_142;
        }

        goto LABEL_251;
      }

      goto LABEL_249;
    }

    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
    goto LABEL_252;
  }

  v68 = HIBYTE(a2) & 0xF;
  v200 = a1;
  v201 = a2 & 0xFFFFFFFFFFFFFFLL;
  if (one-time initialization token for fileIDPrefix != -1)
  {
    swift_once();
  }

  v69 = static URL.fileIDPrefix;
  if ((specialized Sequence<>.starts<A>(with:)(static URL.fileIDPrefix, &v200, HIBYTE(a2) & 0xF) & 1) == 0)
  {
    goto LABEL_141;
  }

  v70 = *(v69 + 16);
  if (v68 < v70)
  {
    goto LABEL_248;
  }

  if (v70 == v68)
  {
    goto LABEL_141;
  }

  v71 = 0;
  v72 = &v200;
  while (*(v72 + v70) != 46)
  {
    v72 = (v72 + 1);
    if (v70 - v68 == --v71)
    {
      goto LABEL_141;
    }
  }

  if (__OFADD__(v70, -v71))
  {
    goto LABEL_250;
  }

  if ((v70 - v71) < v70)
  {
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
    goto LABEL_254;
  }

  v73 = static String._fromUTF8Repairing(_:)();
  _ss17FixedWidthIntegerPsEyxSgSScfCs5Int64V_Tt1g5(v73);
  if (v74)
  {
    goto LABEL_141;
  }

  v75 = v70 - v71 + 1;
  if (__OFADD__(v70 - v71, 1))
  {
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
    goto LABEL_256;
  }

  if (v68 < v75)
  {
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
LABEL_259:
    __break(1u);
    goto LABEL_260;
  }

  if (v75 == v68)
  {
LABEL_96:
    v76 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v76 = v70 - v71 + 1;
    while (*(&v200 + v76) != 47)
    {
      if (v68 == ++v76)
      {
        goto LABEL_96;
      }
    }
  }

  if (__OFADD__(v75, v76 - v75))
  {
    goto LABEL_258;
  }

  if (v76 < v75)
  {
LABEL_260:
    __break(1u);
LABEL_261:
    __break(1u);
    goto LABEL_262;
  }

  v77 = static String._fromUTF8Repairing(_:)();
  _ss17FixedWidthIntegerPsEyxSgSScfCs5Int64V_Tt1g5(v77);
  v78 = __CFURLCreatePathForFileID();
  v79 = _objc_isTaggedPointer(v78);
  v80 = v78;
  v81 = v80;
  if (!v79)
  {
LABEL_104:
    LOBYTE(v211) = 0;
    *&v220 = 0;
    LOBYTE(v202) = 0;
    LOBYTE(v194) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      if (!v220)
      {

        v83 = 0;
        v85 = 0xE000000000000000;
        goto LABEL_133;
      }

      if (v194 == 1)
      {
        if (v211)
        {
          lazy protocol witness table accessor for type Unicode.ASCII and conformance Unicode.ASCII();
        }

        else
        {
          lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        }

        v83 = String.init<A>(_immortalCocoaString:count:encoding:)();
        v85 = v93;
        goto LABEL_132;
      }

      if (v202)
      {
        if (v211 != 1)
        {
          IsCF = [v81 lengthOfBytesUsingEncoding_];
        }

        MEMORY[0x1EEE9AC00](IsCF);
        v95 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
        v85 = v96;
        v97 = HIBYTE(v96) & 0xF;
        if ((v96 & 0x2000000000000000) == 0)
        {
          v97 = v95 & 0xFFFFFFFFFFFFLL;
        }

        if (v97)
        {
          v83 = v95;

          goto LABEL_132;
        }
      }
    }

    else
    {
      v87 = v81;
      v88 = String.init(_nativeStorage:)();
      if (v89)
      {
        v83 = v88;
        v85 = v89;

        goto LABEL_133;
      }

      *&v220 = [v87 length];
      if (!v220)
      {

        v83 = 0;
        v85 = 0xE000000000000000;
        goto LABEL_133;
      }
    }

    v83 = String.init(_cocoaString:)();
    v85 = v92;
LABEL_132:

LABEL_133:
    if ((v85 & 0x2000000000000000) == 0)
    {
      goto LABEL_134;
    }

    goto LABEL_125;
  }

  v82 = _objc_getTaggedPointerTag(v80);
  if (!v82)
  {
    goto LABEL_115;
  }

  if (v82 != 22)
  {
    if (v82 == 2)
    {
      MEMORY[0x1EEE9AC00](v82);
      v83 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v85 = v84;

      goto LABEL_133;
    }

    goto LABEL_104;
  }

  result = [v81 UTF8String];
  if (result)
  {
    v90 = String.init(utf8String:)(result);
    if (v91)
    {
LABEL_116:
      v83 = v90;
      v85 = v91;

      goto LABEL_132;
    }

    __break(1u);
LABEL_115:
    LOWORD(v202) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v90 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v91)
    {
      [v81 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v85 = *(&v211 + 1);
      v83 = v211;

      if ((v85 & 0x2000000000000000) == 0)
      {
LABEL_134:
        v94 = v83 & 0xFFFFFFFFFFFFLL;
LABEL_135:
        if (!v94)
        {
LABEL_140:

          goto LABEL_141;
        }

        v98 = HIBYTE(v85) & 0xF;
        if ((v85 & 0x2000000000000000) == 0)
        {
          v98 = v83 & 0xFFFFFFFFFFFFLL;
        }

        if (v98)
        {

          v99 = _s10Foundation13RFC3986ParserV17percentEncodePath33_A90579D1FA072CB135F95EF00BA46450LL_18skipAlreadyEncodedSSx_SbtSyRzlFZSS_Tt1g5(v83, v85, 0);
          v101 = v100;
          swift_bridgeObjectRelease_n();
        }

        else
        {

          v99 = 0;
          v101 = 0xE000000000000000;
        }

        if (__OFADD__(v76, v68 - v76))
        {
          goto LABEL_261;
        }

        if (v68 < v76)
        {
LABEL_262:
          __break(1u);
          goto LABEL_263;
        }

        v102 = static String._fromUTF8Repairing(_:)();
        v104 = v103;
        *&v220 = v99;
        *(&v220 + 1) = v101;

        MEMORY[0x1865CB0E0](v102, v104);

        v38 = *(&v220 + 1);
        v32 = v220;
        v105 = [v2 query];
        if (!v105)
        {
          goto LABEL_142;
        }

        v106 = v105;
        v107 = static String._unconditionallyBridgeFromObjectiveC(_:)(v105);
        v109 = v108;

        URLComponents.init()(&v211);
        BYTE8(v211) = 0;
        HIBYTE(v211) = 0;
        v110 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(v107, v109, 64, 0);
        v192 = 0;
        v193 = v109;
        if (v110 == 2)
        {
          *&v220 = v107;
          *(&v220 + 1) = v109;
          lazy protocol witness table accessor for type String and conformance String();

          StringProtocol._ephemeralString.getter();
          v111 = String._bridgeToObjectiveCImpl()();

          v112 = [v111 _fastCharacterContents];
          v113 = v111;
          if (v112)
          {
            *&v220 = v107;
            *(&v220 + 1) = v109;
            StringProtocol._ephemeralString.getter();
            v114 = String._bridgeToObjectiveCImpl()();

            v115 = [v114 length];
            swift_unknownObjectRelease();
            if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v112, v115, 0x40u, 0))
            {
LABEL_150:
              v107 = _s10Foundation13RFC3986ParserV13percentEncode_9component18skipAlreadyEncodedSSSgxSg_AA13URLComponentsV9ComponentOSbtSyRzlFZSS_Tt2g5(v107, v109, 6u, 0);
              v117 = v116;

              goto LABEL_153;
            }
          }

          else if ((specialized Sequence.allSatisfy(_:)(v107, v109, 64) & 1) == 0)
          {
            goto LABEL_150;
          }
        }

        else
        {
          v118 = v110;

          if ((v118 & 1) == 0)
          {
            goto LABEL_150;
          }
        }

        v117 = v109;
LABEL_153:

        *(&v218 + 1) = v107;
        *&v219[0] = v117;
        v226 = v217;
        *(v228 + 10) = *(v219 + 10);
        v222 = v213;
        v223 = v214;
        v224 = v215;
        v225 = v216;
        v220 = v211;
        v221 = v212;
        v227 = v218;
        v228[0] = v219[0];
        v119 = URLComponents._URLComponents.queryItems(percentEncoded:)(1);
        if (!v119)
        {

          v208 = v217;
          v209 = v218;
          v210[0] = v219[0];
          *(v210 + 10) = *(v219 + 10);
          v204 = v213;
          v205 = v214;
          v206 = v215;
          v207 = v216;
          v64 = v211;
          v65 = v212;
          goto LABEL_169;
        }

        v120 = *(v119 + 16);
        v191 = v119;
        v57 = 0;
        if (v120)
        {
          v121 = (v119 + 56);
          do
          {
            v122 = *(v121 - 1);
            v123 = *v121;
            if (specialized Sequence<>.elementsEqual<A>(_:)(0x65766C6F7365722EuLL, 0xE800000000000000, *(v121 - 3), *(v121 - 2)))
            {
              if (v123)
              {

                v124 = _ss17FixedWidthIntegerPsEyxSgSScfCs6UInt32V_Tt1g5(v122, v123);
                if ((v124 & 0x100000000) == 0)
                {
                  v57 |= v124;
                }
              }
            }

            v121 += 4;
            --v120;
          }

          while (v120);
        }

        v208 = v217;
        v209 = v218;
        v210[0] = v219[0];
        *(v210 + 10) = *(v219 + 10);
        v204 = v213;
        v205 = v214;
        v206 = v215;
        v207 = v216;
        v202 = v211;
        v203 = v212;
        outlined destroy of URLComponents(&v202);
        if (!v57 || (specialized Collection.first.getter(v32, v38) & 0x1FF) != 0x2F)
        {
          goto LABEL_142;
        }

        if (specialized Sequence<>.starts<A>(with:)(0x2E2FuLL, 0xE200000000000000, v32, v38))
        {
          if (specialized Sequence<>.starts<A>(with:)(0x6C6C6F666F6E2E2FuLL, 0xEB000000002F776FLL, v32, v38))
          {
            if (v57 == 1)
            {
              goto LABEL_142;
            }

            LODWORD(v62) = 1;
            v63 = 10;
LABEL_199:
            if ((v38 & 0x1000000000000000) != 0)
            {
              v144 = MEMORY[0x1865CB180](15, v63, v32, v38);
              goto LABEL_205;
            }

            if ((v63 & 0x8000000000000000) != 0)
            {
              __break(1u);
            }

            else
            {
              v143 = HIBYTE(v38) & 0xF;
              if ((v38 & 0x2000000000000000) == 0)
              {
                v143 = v32 & 0xFFFFFFFFFFFFLL;
              }

              if (v143 >= v63)
              {
                v144 = (v63 << 16) | 4;
LABEL_205:
                v145 = v62 | v57;
                v146 = specialized Collection.suffix(from:)(v144, v32, v38);
                v148 = v147;
                v150 = v149;
                v152 = v151;

                if (v145 == 1)
                {
                  v153 = 0x6C6C6F666F6E2E2FLL;
                  v154 = 0xEA0000000000776FLL;
                }

                else
                {
                  v194 = 0x766C6F7365722E2FLL;
                  v195 = 0xEA00000000002F65;
                  LODWORD(v198) = v145;
                  v155 = dispatch thunk of CustomStringConvertible.description.getter();
                  MEMORY[0x1865CB0E0](v155);

                  v153 = v194;
                  v154 = v195;
                }

                v198 = v153;
                v199 = v154;
                v194 = v146;
                v195 = v148;
                v196 = v150;
                v197 = v152;
                lazy protocol witness table accessor for type Substring and conformance Substring();
                String.append<A>(contentsOf:)();

                v32 = v198;
                goto LABEL_142;
              }
            }

            __break(1u);
LABEL_268:
            v176 = MEMORY[0x1865CB180](15, v63, v32, v38);
            goto LABEL_242;
          }

          if (specialized Sequence<>.starts<A>(with:)(0x766C6F7365722E2FuLL, 0xEA00000000002F65, v32, v38))
          {
            if ((v38 & 0x1000000000000000) != 0)
            {
              v56 = (v32 >> 59) & 1;
            }

            else
            {
              v56 = 1;
            }

            if ((v38 & 0x1000000000000000) != 0)
            {
LABEL_271:
              v62 = MEMORY[0x1865CB180](15, 10, v32, v38);
              v125 = v38 & 0x2000000000000000;
              goto LABEL_182;
            }

            v125 = v38 & 0x2000000000000000;
            v126 = HIBYTE(v38) & 0xE;
            if ((v38 & 0x2000000000000000) == 0)
            {
              v126 = v32 & 0xFFFFFFFFFFFELL;
            }

            if (v126 >= 0xA)
            {
              v62 = 655364;
LABEL_182:
              if (v125)
              {
                v127 = HIBYTE(v38) & 0xF;
              }

              else
              {
                v127 = v32 & 0xFFFFFFFFFFFFLL;
              }

              if (v62 >> 14 == 4 * v127)
              {
                goto LABEL_142;
              }

              v193 = v56;
              v191 = v127;
              v128 = specialized Collection.suffix(from:)(v62, v32, v38);
              v132 = specialized Collection<>.firstIndex(of:)(47, v128, v129, v130, v131);
              v134 = v133;

              if (v134)
              {
                goto LABEL_142;
              }

              if (v62 >> 14 <= v132 >> 14)
              {
                v190 = v132;
                v135 = String.subscript.getter();
                v139 = v138;
                if ((v135 ^ v136) >> 14)
                {
                  v140 = v135;
                  v141 = v136;
                  v189 = v137;
                  v142 = _ss5SliceV32withContiguousStorageIfAvailableyqd__Sgqd__SRy7ElementQzGKXEKlFSRyxGq_s5Error_pRi_zRi0_zRi__Ri0__r0_lys5UInt8Vqd__Isgyrzo_ABySS8UTF8ViewVGADsAI_pAMRszr__lIetMggrzo_Tpq5s6UInt32VSg_Tg5061_ss17FixedWidthIntegerPsE_5radixxSgqd___SitcSyRd__lufcADSRys5i9VGXEfU_s6L7V_SsTG5SiTf1cn_n(v135, v136, v137, v138, 10);
                  if ((v142 & 0x10000000000) != 0)
                  {
                    v142 = specialized _parseInteger<A, B>(ascii:radix:)(v140, v141, v189, v139, 10);
                  }

                  v62 = v142;

                  if ((v62 & 0x100000000) != 0)
                  {
                    goto LABEL_142;
                  }

                  if ((v190 & 0xC) != 4 << v193)
                  {
                    goto LABEL_193;
                  }

                  goto LABEL_278;
                }

LABEL_275:

                goto LABEL_142;
              }

              __break(1u);
LABEL_277:
              __break(1u);
LABEL_278:
              result = _StringGuts._slowEnsureMatchingEncoding(_:)(v190, v32, v38);
              v190 = result;
LABEL_193:
              v63 = v190 >> 16;
              if ((v38 & 0x1000000000000000) == 0)
              {
                goto LABEL_196;
              }

              if (v191 >= v63)
              {
                v63 = String.UTF8View._foreignDistance(from:to:)();
LABEL_196:
                if ((v57 | v62) != v62)
                {
                  goto LABEL_199;
                }

LABEL_142:

                return v32;
              }

              __break(1u);
              goto LABEL_280;
            }

            __break(1u);
            goto LABEL_273;
          }
        }

        v63 = 0;
        LODWORD(v62) = 0;
        goto LABEL_199;
      }

LABEL_125:
      v94 = HIBYTE(v85) & 0xF;
      goto LABEL_135;
    }

    goto LABEL_116;
  }

LABEL_282:
  __break(1u);
  return result;
}

uint64_t _NSSwiftURL.relativePath.getter()
{
  if (v0[OBJC_IVAR____NSSwiftURL_hasPath] != 1)
  {
    return 0;
  }

  v1 = *&v0[OBJC_IVAR____NSSwiftURL_url];
  if (*(*(v1 + 16) + 168))
  {
    v2 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    v4 = v3;
  }

  else
  {

    v2 = String.subscript.getter();
    v4 = v6;
  }

  if (!((v2 ^ v4) >> 14))
  {
    return 0;
  }

  if (![v0 isFileReferenceURL])
  {
    if (*(*(v1 + 16) + 168))
    {
      v8 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v8 = String.subscript.getter();
    }

    v43 = MEMORY[0x1865CAE80](v8);
    v45 = v44;

    v15 = closure #1 in static _SwiftURL.fileSystemPath(for:style:compatibility:)(v43, v45);
    v17 = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
    v18 = static _SetStorage.allocate(capacity:)();
    v47 = v18 + 56;
    v48 = *(v18 + 40);
    v49 = byte_1EEED3D48;
    result = MEMORY[0x1865CD020](v48, byte_1EEED3D48, 1);
    v50 = -1 << *(v18 + 32);
    v51 = result & ~v50;
    v52 = v51 >> 6;
    v53 = *(v18 + 56 + 8 * (v51 >> 6));
    v54 = 1 << v51;
    v55 = *(v18 + 48);
    if (((1 << v51) & v53) != 0)
    {
      v56 = ~v50;
      while (*(v55 + v51) != v49)
      {
        v51 = (v51 + 1) & v56;
        v52 = v51 >> 6;
        v53 = *(v47 + 8 * (v51 >> 6));
        v54 = 1 << v51;
        if (((1 << v51) & v53) == 0)
        {
          goto LABEL_35;
        }
      }
    }

    else
    {
LABEL_35:
      *(v47 + 8 * v52) = v54 | v53;
      *(v55 + v51) = v49;
      v57 = *(v18 + 16);
      v30 = __OFADD__(v57, 1);
      v58 = v57 + 1;
      if (v30)
      {
        goto LABEL_54;
      }

      *(v18 + 16) = v58;
    }

    v59 = byte_1EEED3D49;
    result = MEMORY[0x1865CD020](v48, byte_1EEED3D49, 1);
    v60 = -1 << *(v18 + 32);
    v61 = result & ~v60;
    v62 = v61 >> 6;
    v63 = *(v47 + 8 * (v61 >> 6));
    v64 = 1 << v61;
    v65 = *(v18 + 48);
    if (((1 << v61) & v63) != 0)
    {
      v66 = ~v60;
      while (*(v65 + v61) != v59)
      {
        v61 = (v61 + 1) & v66;
        v62 = v61 >> 6;
        v63 = *(v47 + 8 * (v61 >> 6));
        v64 = 1 << v61;
        if (((1 << v61) & v63) == 0)
        {
          goto LABEL_41;
        }
      }

LABEL_43:
      v69 = HIBYTE(v17) & 0xF;
      if ((v17 & 0x2000000000000000) == 0)
      {
        v69 = v15 & 0xFFFFFFFFFFFFLL;
      }

      if (v69)
      {
        goto LABEL_46;
      }

      goto LABEL_51;
    }

LABEL_41:
    *(v47 + 8 * v62) = v64 | v63;
    *(v65 + v61) = v59;
    v67 = *(v18 + 16);
    v30 = __OFADD__(v67, 1);
    v68 = v67 + 1;
    if (!v30)
    {
      *(v18 + 16) = v68;
      goto LABEL_43;
    }

LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (*(*(v1 + 16) + 168))
  {
    v7 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v7 = String.subscript.getter();
  }

  v9 = MEMORY[0x1865CAE80](v7);
  v11 = v10;

  v12 = _NSSwiftURL.filePath(for:)(v9, v11);
  v14 = v13;

  if (!v14)
  {
    return v12;
  }

  v15 = closure #1 in static _SwiftURL.fileSystemPath(for:style:compatibility:)(v12, v14);
  v17 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
  v18 = static _SetStorage.allocate(capacity:)();
  v19 = v18 + 56;
  v20 = *(v18 + 40);
  v21 = byte_1EEED3DC0;
  result = MEMORY[0x1865CD020](v20, byte_1EEED3DC0, 1);
  v22 = -1 << *(v18 + 32);
  v23 = result & ~v22;
  v24 = v23 >> 6;
  v25 = *(v18 + 56 + 8 * (v23 >> 6));
  v26 = 1 << v23;
  v27 = *(v18 + 48);
  if (((1 << v23) & v25) != 0)
  {
    v28 = ~v22;
    while (*(v27 + v23) != v21)
    {
      v23 = (v23 + 1) & v28;
      v24 = v23 >> 6;
      v25 = *(v19 + 8 * (v23 >> 6));
      v26 = 1 << v23;
      if (((1 << v23) & v25) == 0)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
LABEL_18:
    *(v19 + 8 * v24) = v26 | v25;
    *(v27 + v23) = v21;
    v29 = *(v18 + 16);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_55;
    }

    *(v18 + 16) = v31;
  }

  v32 = byte_1EEED3DC1;
  result = MEMORY[0x1865CD020](v20, byte_1EEED3DC1, 1);
  v33 = -1 << *(v18 + 32);
  v34 = result & ~v33;
  v35 = v34 >> 6;
  v36 = *(v19 + 8 * (v34 >> 6));
  v37 = 1 << v34;
  v38 = *(v18 + 48);
  if (((1 << v34) & v36) == 0)
  {
LABEL_24:
    *(v19 + 8 * v35) = v37 | v36;
    *(v38 + v34) = v32;
    v40 = *(v18 + 16);
    v30 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (!v30)
    {
      *(v18 + 16) = v41;
      goto LABEL_26;
    }

LABEL_55:
    __break(1u);
    return result;
  }

  v39 = ~v33;
  while (*(v38 + v34) != v32)
  {
    v34 = (v34 + 1) & v39;
    v35 = v34 >> 6;
    v36 = *(v19 + 8 * (v34 >> 6));
    v37 = 1 << v34;
    if (((1 << v34) & v36) == 0)
    {
      goto LABEL_24;
    }
  }

LABEL_26:
  v42 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v42 = v15 & 0xFFFFFFFFFFFFLL;
  }

  if (!v42)
  {
LABEL_51:

    return 0;
  }

LABEL_46:
  v75[0] = v15;
  v75[1] = v17;
  MEMORY[0x1EEE9AC00](result);
  v74[2] = v75;
  v74[3] = v18;
  v74[4] = 4;

  v70 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v74, v15, v17);
  if (v71 == 1)
  {
    v70 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v15, v17, v18, 4);
  }

  v72 = v70;
  v73 = v71;

  if (v73)
  {
    return v72;
  }

  else
  {
    return 0;
  }
}

uint64_t _NSSwiftURL.fragment.getter()
{
  if (*(v0 + OBJC_IVAR____NSSwiftURL_isDecomposable) != 1 || (*(*(*(v0 + OBJC_IVAR____NSSwiftURL_url) + 16) + 216) & 1) != 0)
  {
    return 0;
  }

  v2 = String.subscript.getter();
  v3 = MEMORY[0x1865CAE80](v2);

  return v3;
}

uint64_t _NSSwiftURL.hasDirectoryPath.getter()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____NSSwiftURL_url];
  if (_SwiftURL.hasDirectoryPath.getter())
  {
    v3 = 1;
    return v3 & 1;
  }

  v4 = _SwiftURL.isFileURL.getter();
  v5 = _SwiftURL.absolutePath(percentEncoded:)(1);
  if ((v4 & 1) == 0)
  {
    if ((*(*(v2 + 16) + 220) & 8) != 0)
    {
      v49 = (v5._object >> 56) & 0xF;
      if ((v5._object & 0x2000000000000000) == 0)
      {
        v49 = v5._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v49)
      {
        v66 = v5;
        MEMORY[0x1EEE9AC00](v5._countAndFlagsBits);
        v63 = &v66;
        v64 = MEMORY[0x1E69E7CD0];
        v65 = 4;
        v51 = v50;
        v43 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v62, v50, v5._object);
        if (v44 == 1)
        {
          v45 = MEMORY[0x1E69E7CD0];
          v46 = v51;
          object = v5._object;
          v48 = 4;
          goto LABEL_34;
        }

LABEL_37:
        v54 = v44;
        v52 = v43;
        goto LABEL_38;
      }
    }

    else
    {
      v39 = (v5._object >> 56) & 0xF;
      if ((v5._object & 0x2000000000000000) == 0)
      {
        v39 = v5._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
      }

      if (v39)
      {
        v40 = *(v2 + 40);
        v66 = v5;
        MEMORY[0x1EEE9AC00](v5._countAndFlagsBits);
        v63 = &v66;
        v64 = MEMORY[0x1E69E7CD0];
        v65 = v40;
        v42 = v41;
        v43 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v62, v41, v5._object);
        if (v44 == 1)
        {
          v45 = MEMORY[0x1E69E7CD0];
          v46 = v42;
          object = v5._object;
          v48 = v40;
LABEL_34:
          v52 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v46, object, v45, v48);
          v54 = v53;
LABEL_38:

          if (!v54)
          {
LABEL_41:
            v37 = 0;
            v38 = 0xE000000000000000;
            goto LABEL_42;
          }

          v55 = v52;
LABEL_40:
          v37 = String._droppingTrailingSlashes.getter(v55, v54);
          v38 = v56;

LABEL_42:

          v57 = HIBYTE(v38) & 0xF;
          if ((v38 & 0x2000000000000000) == 0)
          {
            v57 = v37 & 0xFFFFFFFFFFFFLL;
          }

          if (v57 || (v58 = [v1 baseURL]) == 0)
          {
            v3 = 0;
          }

          else
          {
            v59 = v58;
            static URL._unconditionallyBridgeFromObjectiveC(_:)(v58, &v66._countAndFlagsBits);

            v60 = v66._object;
            ObjectType = swift_getObjectType();
            v3 = v60[38](ObjectType, v60);
            swift_unknownObjectRelease();
          }

          return v3 & 1;
        }

        goto LABEL_37;
      }
    }

    v55 = 0;
    v54 = 0xE000000000000000;
    goto LABEL_40;
  }

  v6 = String._droppingTrailingSlashes.getter(v5._countAndFlagsBits, v5._object);
  v8 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
  v9 = static _SetStorage.allocate(capacity:)();
  v10 = v9 + 56;
  v11 = *(v9 + 40);
  v12 = byte_1EEED3DE8;
  result = MEMORY[0x1865CD020](v11, byte_1EEED3DE8, 1);
  v14 = -1 << *(v9 + 32);
  v15 = result & ~v14;
  v16 = v15 >> 6;
  v17 = *(v9 + 56 + 8 * (v15 >> 6));
  v18 = 1 << v15;
  v19 = *(v9 + 48);
  if (((1 << v15) & v17) != 0)
  {
    v20 = ~v14;
    while (*(v19 + v15) != v12)
    {
      v15 = (v15 + 1) & v20;
      v16 = v15 >> 6;
      v17 = *(v10 + 8 * (v15 >> 6));
      v18 = 1 << v15;
      if (((1 << v15) & v17) == 0)
      {
        goto LABEL_8;
      }
    }
  }

  else
  {
LABEL_8:
    *(v10 + 8 * v16) = v18 | v17;
    *(v19 + v15) = v12;
    v21 = *(v9 + 16);
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      goto LABEL_49;
    }

    *(v9 + 16) = v23;
  }

  v24 = byte_1EEED3DE9;
  result = MEMORY[0x1865CD020](v11, byte_1EEED3DE9, 1);
  v25 = -1 << *(v9 + 32);
  v26 = result & ~v25;
  v27 = v26 >> 6;
  v28 = *(v10 + 8 * (v26 >> 6));
  v29 = 1 << v26;
  v30 = *(v9 + 48);
  if (((1 << v26) & v28) != 0)
  {
    v31 = ~v25;
    while (*(v30 + v26) != v24)
    {
      v26 = (v26 + 1) & v31;
      v27 = v26 >> 6;
      v28 = *(v10 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) == 0)
      {
        goto LABEL_14;
      }
    }

LABEL_16:
    v34 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v34 = v6 & 0xFFFFFFFFFFFFLL;
    }

    if (v34)
    {
      v66._countAndFlagsBits = v6;
      v66._object = v8;
      MEMORY[0x1EEE9AC00](result);
      v63 = &v66;
      v64 = v9;
      v65 = 4;

      v35 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v62, v6, v8);
      if (v36 == 1)
      {
        v35 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v6, v8, v9, 4);
      }

      v37 = v35;
      v38 = v36;

      if (v38)
      {
        goto LABEL_42;
      }
    }

    else
    {
    }

    goto LABEL_41;
  }

LABEL_14:
  *(v10 + 8 * v27) = v29 | v28;
  *(v30 + v26) = v24;
  v32 = *(v9 + 16);
  v22 = __OFADD__(v32, 1);
  v33 = v32 + 1;
  if (!v22)
  {
    *(v9 + 16) = v33;
    goto LABEL_16;
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t _NSSwiftURL.isFileURL.getter()
{
  v1 = *(v0 + OBJC_IVAR____NSSwiftURL_url);
  if (*(v1 + 48))
  {
    return 1;
  }

  if (*(*(v1 + 16) + 48))
  {
    if (!*(v1 + 24))
    {
      return 0;
    }

    v3 = *(v1 + 32);
    ObjectType = swift_getObjectType();
    (*(v3 + 136))(ObjectType, v3);
    if (!v5)
    {
      return 0;
    }
  }

  else
  {
    v6 = String.subscript.getter();
    MEMORY[0x1865CAE80](v6);
  }

  v7 = String.lowercased()();

  if (one-time initialization token for fileSchemeUTF8 != -1)
  {
    swift_once();
  }

  v8 = specialized Sequence<>.elementsEqual<A>(_:)(static _SwiftURL.fileSchemeUTF8, v7._countAndFlagsBits, v7._object);

  return v8 & 1;
}

id _NSSwiftURL.standardized.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____NSSwiftURL_url];
  if (!_SwiftURL.isDecomposable.getter())
  {
    goto LABEL_44;
  }

  v43 = a1;
  if (one-time initialization token for compatibility1 != -1)
  {
    swift_once();
  }

  if (static URL.compatibility1 == 1 && ((*(*(v4 + 16) + 168) & 1) == 0 ? (v5 = String.subscript.getter()) : (v5 = MEMORY[0x1865CBC20](0, 0xE000000000000000)), v9 = specialized static StringProtocol.== infix<A>(_:_:)(v5, v6, v7, v8, 791555631, 0xE400000000000000), , (v9 & 1) != 0))
  {
    v10 = 0;
    v11 = 0xE000000000000000;
  }

  else
  {
    if (*(*(v4 + 16) + 168))
    {
      v12 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
    }

    else
    {
      v12 = String.subscript.getter();
    }

    v13 = MEMORY[0x1865CAE80](v12);
    v15 = v14;

    v10 = String.removingDotSegments.getter(v13, v15);
    v11 = v16;
  }

  specialized URLComponents._URLComponents.init(parseInfo:)(v17, v56);
  v54[0] = v60[0];
  v54[1] = v60[1];
  v55[0] = v61[0];
  *(v55 + 10) = *(v61 + 10);
  v51 = v57;
  v52 = v58;
  v53[0] = v59[0];
  v53[1] = v59[1];
  v49 = v56[0];
  v50 = v56[1];
  v18 = String.removingDotSegments.getter(v10, v11);
  v20 = v18;
  v21 = v19;
  BYTE8(v49) = 0;
  BYTE14(v49) = 0;
  if ((v19 & 0x1000000000000000) != 0)
  {
    *&v64[0] = v18;
    *(&v64[0] + 1) = v19;
    v41 = lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v42 = String._bridgeToObjectiveCImpl()();

    v35 = [v42 _fastCharacterContents];
    v36 = v42;
    v42 = v35;
    if (v35)
    {
      *&v64[0] = v20;
      *(&v64[0] + 1) = v21;
      StringProtocol._ephemeralString.getter();
      v41 = String._bridgeToObjectiveCImpl()();

      v40 = [v41 length];
      swift_unknownObjectRelease();
      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v42, v40, 0x10u, 1))
      {
        goto LABEL_51;
      }
    }

    else if ((_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v20, v21, 0x10u, 1) & 1) == 0)
    {
      goto LABEL_51;
    }
  }

  else
  {
    if ((v19 & 0x2000000000000000) != 0)
    {
      v23 = HIBYTE(v19) & 0xF;
      *&v64[0] = v18;
      *(&v64[0] + 1) = v21 & 0xFFFFFFFFFFFFFFLL;
      v22 = v64;
    }

    else if ((v18 & 0x1000000000000000) != 0)
    {
      v22 = ((v19 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v23 = v20 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v22 = _StringObject.sharedUTF8.getter();
    }

    if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v22, v23, 0x10u, 1))
    {
      goto LABEL_51;
    }
  }

  v24 = v57;
  v63 = *(v60 + 8);
  outlined destroy of TermOfAddress?(&v63, &_sSSSgMd);
  *(&v54[0] + 1) = v20;
  *&v54[1] = v21;
  if (v24)
  {

    if ((v11 & 0x2000000000000000) == 0)
    {
      goto LABEL_22;
    }
  }

  else
  {
    if (BYTE9(v56[0]) & 1) == 0 || !*&v56[0] || (*(*&v56[0] + 48))
    {
      goto LABEL_36;
    }

    v25 = String.subscript.getter();
    MEMORY[0x1865CAE80](v25);

    if ((v11 & 0x2000000000000000) == 0)
    {
LABEL_22:
      if ((v10 & 0xFFFFFFFFFFFFLL) != 0)
      {
        goto LABEL_35;
      }

      goto LABEL_31;
    }
  }

  if ((v11 & 0xF00000000000000) != 0)
  {
    goto LABEL_35;
  }

LABEL_31:
  v26 = URLParseInfo.netLocationRange.getter();
  if ((v28 & 1) == 0 && !((v26 ^ v27) >> 14))
  {
    BYTE8(v49) = 0;
    BYTE14(v49) = 0;
    v64[0] = xmmword_1812DB730;
    if (_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v64, 1, 0x10u, 1))
    {

      *(v54 + 8) = xmmword_1812DB740;
      goto LABEL_35;
    }

LABEL_51:
    v39 = 0;
    v38 = 1001;
    goto LABEL_52;
  }

LABEL_35:
  URLComponents.encodedHost.getter();
  if (v29)
  {
LABEL_36:

    goto LABEL_42;
  }

  BYTE8(v49) = 0;
  BYTE12(v49) = 0;
  BYTE9(v55[1]) = 0;
  if ((_s10Foundation13RFC3986ParserV18looksLikeIPLiteral33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(0, 0xE000000000000000) & 1) == 0)
  {
    v64[0] = 0uLL;
    if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v64, 0, 4u, 1))
    {
      goto LABEL_39;
    }

LABEL_41:
    v62 = *(v59 + 8);
    v30 = outlined destroy of TermOfAddress?(&v62, &_sSSSgMd);
    *(v53 + 8) = xmmword_1812476D0;
    LOBYTE(v64[0]) = 37;
    MEMORY[0x1EEE9AC00](v30);
    v38 = v64;
    BYTE8(v55[1]) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v37, 0, 0xE000000000000000) & 1;
LABEL_42:
    v45[6] = v54[0];
    v45[7] = v54[1];
    v46[0] = v55[0];
    *(v46 + 10) = *(v55 + 10);
    v45[2] = v51;
    v45[3] = v52;
    v45[4] = v53[0];
    v45[5] = v53[1];
    v45[0] = v49;
    v45[1] = v50;
    v64[6] = v54[0];
    v64[7] = v54[1];
    v65[0] = v55[0];
    *(v65 + 10) = *(v55 + 10);
    v64[2] = v51;
    v64[3] = v52;
    v64[4] = v53[0];
    v64[5] = v53[1];
    v64[0] = v49;
    v64[1] = v50;
    outlined init with copy of URLComponents(v45, v47);
    v31 = URLComponents._URLComponents._uncheckedString(original:)(0);
    outlined destroy of URLComponents(v45);
    v44 = *(v4 + 24);
    swift_unknownObjectRetain();
    v32 = specialized _SwiftURL.__allocating_init(stringOrEmpty:relativeTo:)(v31._countAndFlagsBits, v31._object, &v44);
    v47[6] = v54[0];
    v47[7] = v54[1];
    v48[0] = v55[0];
    *(v48 + 10) = *(v55 + 10);
    v47[2] = v51;
    v47[3] = v52;
    v47[4] = v53[0];
    v47[5] = v53[1];
    v47[0] = v49;
    v47[1] = v50;
    result = outlined destroy of URLComponents(v47);
    a1 = v43;
    if (v32)
    {
      v34 = &protocol witness table for _SwiftURL;
LABEL_45:
      *a1 = v32;
      a1[1] = v34;
      return result;
    }

LABEL_44:
    type metadata accessor for _BridgedNSSwiftURL();
    v32 = swift_allocObject();
    *(v32 + 16) = v2;
    result = v2;
    v34 = &protocol witness table for _BridgedNSSwiftURL;
    goto LABEL_45;
  }

  if (_s10Foundation13RFC3986ParserV21validateIPLiteralHost33_A90579D1FA072CB135F95EF00BA46450LLySbxSyRzlFZSS_Tt0g5(0, 0xE000000000000000))
  {
    goto LABEL_41;
  }

LABEL_39:
  v39 = 0;
  v38 = 980;
LABEL_52:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

Swift::Bool __swiftcall _NSSwiftURL.isFileReferenceURL()()
{
  v1 = *(v0 + OBJC_IVAR____NSSwiftURL_url);
  if (*(v1 + 48))
  {
    return *(*(v1 + 16) + 219);
  }

  if (*(*(v1 + 16) + 48))
  {
    if (!*(v1 + 24))
    {
      return 0;
    }

    v2 = *(v1 + 32);
    ObjectType = swift_getObjectType();
    (*(v2 + 136))(ObjectType, v2);
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    v5 = String.subscript.getter();
    MEMORY[0x1865CAE80](v5);
  }

  v6 = String.lowercased()();

  if (one-time initialization token for fileSchemeUTF8 != -1)
  {
    swift_once();
  }

  v7 = specialized Sequence<>.elementsEqual<A>(_:)(static _SwiftURL.fileSchemeUTF8, v6._countAndFlagsBits, v6._object);

  if (v7)
  {
    return *(*(v1 + 16) + 219);
  }

  return 0;
}

id _NSSwiftURL._lastPathComponent.getter()
{
  v83 = *MEMORY[0x1E69E9840];
  if (![v0 isFileReferenceURL] || (v1 = objc_msgSend(v0, sel_filePathURL)) == 0)
  {
    if (v0[OBJC_IVAR____NSSwiftURL_hasPath] != 1)
    {
      return 0;
    }

    v11 = *&v0[OBJC_IVAR____NSSwiftURL_url];
    v12 = _SwiftURL.absolutePath(percentEncoded:)(1);
    Path = String._lastPathComponent.getter(v12._countAndFlagsBits, v12._object);
    v15 = v14;

    v16 = _SwiftURL.isFileURL.getter();
    if ((v16 & 1) == 0)
    {
      v50 = HIBYTE(v15) & 0xF;
      if ((v15 & 0x2000000000000000) == 0)
      {
        v50 = Path & 0xFFFFFFFFFFFFLL;
      }

      if (v50)
      {
        v51 = *(v11 + 40);
        v81 = Path;
        v82 = v15;
        MEMORY[0x1EEE9AC00](v16);
        v75 = &v81;
        v76 = MEMORY[0x1E69E7CD0];
        v77 = v51;

        v52 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v74, Path, v15);
        if (v53 == 1)
        {
          v52 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(Path, v15, MEMORY[0x1E69E7CD0], v51);
        }

        v6 = v52;
        v49 = v53;
        swift_bridgeObjectRelease_n();
        if (!v49)
        {
          goto LABEL_47;
        }

        goto LABEL_37;
      }

LABEL_47:
      v6 = 0;
      goto LABEL_48;
    }

    v17 = String._droppingTrailingSlashes.getter(Path, v15);
    v19 = v18;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
    v20 = static _SetStorage.allocate(capacity:)();
    v21 = v20 + 56;
    v22 = *(v20 + 40);
    v23 = byte_1EEED3E10;
    v24 = MEMORY[0x1865CD020](v22, byte_1EEED3E10, 1);
    v25 = -1 << *(v20 + 32);
    v26 = v24 & ~v25;
    v27 = v26 >> 6;
    v28 = *(v20 + 56 + 8 * (v26 >> 6));
    v29 = 1 << v26;
    v30 = *(v20 + 48);
    if (((1 << v26) & v28) != 0)
    {
      v31 = ~v25;
      while (*(v30 + v26) != v23)
      {
        v26 = (v26 + 1) & v31;
        v27 = v26 >> 6;
        v28 = *(v21 + 8 * (v26 >> 6));
        v29 = 1 << v26;
        if (((1 << v26) & v28) == 0)
        {
          goto LABEL_15;
        }
      }
    }

    else
    {
LABEL_15:
      *(v21 + 8 * v27) = v29 | v28;
      *(v30 + v26) = v23;
      v32 = *(v20 + 16);
      v33 = __OFADD__(v32, 1);
      v34 = v32 + 1;
      if (v33)
      {
        goto LABEL_70;
      }

      *(v20 + 16) = v34;
    }

    v35 = byte_1EEED3E11;
    v36 = MEMORY[0x1865CD020](v22, byte_1EEED3E11, 1);
    v37 = -1 << *(v20 + 32);
    v38 = v36 & ~v37;
    v39 = v38 >> 6;
    v40 = *(v21 + 8 * (v38 >> 6));
    v41 = 1 << v38;
    v42 = *(v20 + 48);
    if (((1 << v38) & v40) != 0)
    {
      v43 = ~v37;
      while (*(v42 + v38) != v35)
      {
        v38 = (v38 + 1) & v43;
        v39 = v38 >> 6;
        v40 = *(v21 + 8 * (v38 >> 6));
        v41 = 1 << v38;
        if (((1 << v38) & v40) == 0)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_23;
    }

LABEL_21:
    *(v21 + 8 * v39) = v41 | v40;
    *(v42 + v38) = v35;
    v44 = *(v20 + 16);
    v33 = __OFADD__(v44, 1);
    v45 = v44 + 1;
    if (!v33)
    {
      *(v20 + 16) = v45;
LABEL_23:
      v46 = HIBYTE(v19) & 0xF;
      if ((v19 & 0x2000000000000000) == 0)
      {
        v46 = v17 & 0xFFFFFFFFFFFFLL;
      }

      if (v46)
      {
        v81 = v17;
        v82 = v19;
        MEMORY[0x1EEE9AC00](v36);
        v75 = &v81;
        v76 = v20;
        v77 = 4;

        v47 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v74, v17, v19);
        if (v48 == 1)
        {
          v47 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v17, v19, v20, 4);
        }

        v6 = v47;
        v49 = v48;

        if (!v49)
        {
          goto LABEL_47;
        }

LABEL_37:
        if (v6 == 47 && v49 == 0xE100000000000000)
        {
          v6 = 47;
          goto LABEL_49;
        }

LABEL_48:
        if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          return v6;
        }

LABEL_49:
        if (*(*(v11 + 16) + 168))
        {
          v54 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
          v58 = v57;
        }

        else
        {

          v59 = String.subscript.getter();
          v61 = v60;
          v63 = v62;
          v58 = v64;

          v56 = v63;
          v55 = v61;
          v54 = v59;
        }

        v65 = specialized static StringProtocol.== infix<A>(_:_:)(v54, v55, v56, v58, 47, 0xE100000000000000);

        if ((v65 & 1) == 0)
        {

          return 0;
        }

        return v6;
      }

      goto LABEL_47;
    }

LABEL_70:
    __break(1u);
  }

  v2 = v1;
  static URL._unconditionallyBridgeFromObjectiveC(_:)(v1, &v81);

  v3 = v82;
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 432))(ObjectType, v3);
  v6 = [v5 _lastPathComponent];

  if (!v6)
  {
    swift_unknownObjectRelease();
    return v6;
  }

  isTaggedPointer = _objc_isTaggedPointer(v6);
  v8 = v6;
  v9 = v8;
  if (!isTaggedPointer)
  {
LABEL_40:
    LOBYTE(v78) = 0;
    v81 = 0;
    LOBYTE(v79) = 0;
    v80 = 0;
    if (!__CFStringIsCF())
    {
      v66 = v9;
      v67 = String.init(_nativeStorage:)();
      if (v68)
      {
        v6 = v67;
        swift_unknownObjectRelease();

        return v6;
      }

      v81 = [v66 length];
      if (!v81)
      {
        swift_unknownObjectRelease();

        return 0;
      }

      goto LABEL_67;
    }

    v6 = v81;
    if (v81)
    {
      if (v80 == 1)
      {
        lazy protocol witness table accessor for type Unicode.UTF16 and conformance Unicode.UTF16();
        v73 = String.init<A>(_immortalCocoaString:count:encoding:)();
LABEL_68:
        v6 = v73;
        goto LABEL_69;
      }

LABEL_67:
      v73 = String.init(_cocoaString:)();
      goto LABEL_68;
    }

LABEL_56:
    swift_unknownObjectRelease();

    return v6;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v8);
  if (!TaggedPointerTag)
  {
    goto LABEL_61;
  }

  if (TaggedPointerTag != 22)
  {
    if (TaggedPointerTag == 2)
    {
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v77 = v9;
      v6 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      swift_unknownObjectRelease();

      return v6;
    }

    goto LABEL_40;
  }

  result = [v9 UTF8String];
  if (result)
  {
    v70 = String.init(utf8String:)(result);
    if (v71)
    {
LABEL_62:
      v6 = v70;
      goto LABEL_56;
    }

    __break(1u);
LABEL_61:
    v79 = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v70 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v72)
    {
      [v9 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v6 = v78;
LABEL_69:

      swift_unknownObjectRelease();
      return v6;
    }

    goto LABEL_62;
  }

  __break(1u);
  return result;
}

void _NSSwiftURL.deletingLastPathComponent.getter(uint64_t *a1@<X8>)
{
  v2 = v1;
  if ([v1 isFileReferenceURL])
  {
    v4 = [v1 filePathURL];
    if (v4)
    {
      v5 = v4;
      static URL._unconditionallyBridgeFromObjectiveC(_:)(v4, &v307);

      v7 = *(&v307 + 1);
      v6 = v307;
      ObjectType = swift_getObjectType();
      (*(v7 + 368))(&v307, ObjectType, v7);
      v9 = v307;
      if (v307)
      {
        v7 = *(&v307 + 1);
        swift_unknownObjectRelease();
        v6 = v9;
      }

      *a1 = v6;
      a1[1] = v7;
      return;
    }

LABEL_27:
    *a1 = 0;
    a1[1] = 0;
    return;
  }

  if (v1[OBJC_IVAR____NSSwiftURL_hasPath] != 1)
  {
    goto LABEL_27;
  }

  v283 = a1;
  v10 = *&v1[OBJC_IVAR____NSSwiftURL_url];
  v11 = _SwiftURL.isFileURL.getter();
  v12 = _SwiftURL.absolutePath(percentEncoded:)(1);
  v13 = *(&v12 + 1);
  if ((v11 & 1) == 0)
  {
    v49 = HIBYTE(*(&v12 + 1)) & 0xFLL;
    if ((*(*(v10 + 16) + 220) & 8) != 0)
    {
      if ((*(&v12 + 1) & 0x2000000000000000) == 0)
      {
        v49 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v49)
      {
        v307 = v12;
        MEMORY[0x1EEE9AC00](v12);
        v277 = &v307;
        v278 = MEMORY[0x1E69E7CD0];
        v279 = 4;
        v59 = v58;
        v60 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v276, v58, *(&v12 + 1));
        if (v61 == 1)
        {
          v55 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v59, *(&v12 + 1), MEMORY[0x1E69E7CD0], 4);
          v57 = v62;
        }

        else
        {
          v57 = v61;
          v55 = v60;
        }

        if (!v57)
        {
          goto LABEL_50;
        }

        goto LABEL_43;
      }
    }

    else
    {
      if ((*(&v12 + 1) & 0x2000000000000000) == 0)
      {
        v49 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v49)
      {
        v50 = *(v10 + 40);
        v307 = v12;
        MEMORY[0x1EEE9AC00](v12);
        v277 = &v307;
        v278 = MEMORY[0x1E69E7CD0];
        v279 = v50;
        v52 = v51;
        v53 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v276, v51, *(&v12 + 1));
        if (v54 == 1)
        {
          v55 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v52, *(&v12 + 1), MEMORY[0x1E69E7CD0], v50);
          v57 = v56;
        }

        else
        {
          v57 = v54;
          v55 = v53;
        }

        if (!v57)
        {
          goto LABEL_50;
        }

LABEL_43:
        v63 = v55;
        goto LABEL_44;
      }
    }

    v63 = 0;
    v57 = 0xE000000000000000;
LABEL_44:
    v47 = String._droppingTrailingSlashes.getter(v63, v57);
    v48 = v64;

    goto LABEL_45;
  }

  v282 = v10;
  v14 = String._droppingTrailingSlashes.getter(v12, *(&v12 + 1));
  v16 = v15;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
  v17 = static _SetStorage.allocate(capacity:)();
  v18 = v17 + 56;
  v19 = *(v17 + 40);
  v20 = byte_1EEED3E38;
  v21 = 1;
  v22 = MEMORY[0x1865CD020](v19, byte_1EEED3E38, 1);
  v23 = -1 << *(v17 + 32);
  v24 = v22 & ~v23;
  v25 = v24 >> 6;
  v26 = *(v17 + 56 + 8 * (v24 >> 6));
  v27 = 1 << v24;
  v28 = *(v17 + 48);
  if (((1 << v24) & v26) != 0)
  {
    v29 = ~v23;
    while (*(v28 + v24) != v20)
    {
      v24 = (v24 + 1) & v29;
      v25 = v24 >> 6;
      v26 = *(v18 + 8 * (v24 >> 6));
      v27 = 1 << v24;
      if (((1 << v24) & v26) == 0)
      {
        goto LABEL_12;
      }
    }
  }

  else
  {
LABEL_12:
    *(v18 + 8 * v25) = v27 | v26;
    *(v28 + v24) = v20;
    v30 = *(v17 + 16);
    v31 = __OFADD__(v30, 1);
    v32 = v30 + 1;
    if (v31)
    {
      goto LABEL_233;
    }

    *(v17 + 16) = v32;
  }

  v33 = byte_1EEED3E39;
  v21 = 1;
  v34 = MEMORY[0x1865CD020](v19, byte_1EEED3E39, 1);
  v35 = -1 << *(v17 + 32);
  v36 = v34 & ~v35;
  v37 = v36 >> 6;
  v38 = *(v18 + 8 * (v36 >> 6));
  v39 = 1 << v36;
  v40 = *(v17 + 48);
  if (((1 << v36) & v38) == 0)
  {
LABEL_18:
    *(v18 + 8 * v37) = v39 | v38;
    *(v40 + v36) = v33;
    v42 = *(v17 + 16);
    v31 = __OFADD__(v42, 1);
    v43 = v42 + 1;
    if (!v31)
    {
      *(v17 + 16) = v43;
      goto LABEL_20;
    }

LABEL_233:
    __break(1u);
    goto LABEL_234;
  }

  v41 = ~v35;
  while (*(v40 + v36) != v33)
  {
    v36 = (v36 + 1) & v41;
    v37 = v36 >> 6;
    v38 = *(v18 + 8 * (v36 >> 6));
    v39 = 1 << v36;
    if (((1 << v36) & v38) == 0)
    {
      goto LABEL_18;
    }
  }

LABEL_20:
  v44 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v44 = v14 & 0xFFFFFFFFFFFFLL;
  }

  if (v44)
  {
    *&v307 = v14;
    *(&v307 + 1) = v16;
    MEMORY[0x1EEE9AC00](v34);
    v277 = &v307;
    v278 = v17;
    v279 = 4;

    v45 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v276, v14, v16);
    if (v46 == 1)
    {
      v45 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v14, v16, v17, 4);
    }

    v47 = v45;
    v48 = v46;

    v10 = v282;
    if (!v48)
    {
      goto LABEL_50;
    }
  }

  else
  {

    v47 = 0;
    v48 = 0xE000000000000000;
    v10 = v282;
  }

LABEL_45:
  if (v47 == 47 && v48 == 0xE100000000000000)
  {
    goto LABEL_90;
  }

LABEL_50:
  v65 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v65)
  {
LABEL_91:
    specialized _SwiftURL.appending<A>(path:directoryHint:encodingSlashes:compatibility:)(3092014, 0xE300000000000000, 0, 0, 0, v283);
    return;
  }

  v66 = _SwiftURL.isFileURL.getter();
  v67 = _SwiftURL.absolutePath(percentEncoded:)(1);
  v13 = *(&v67 + 1);
  if ((v66 & 1) == 0)
  {
    if ((*(*(v10 + 16) + 220) & 8) != 0)
    {
      v107 = HIBYTE(*(&v67 + 1)) & 0xFLL;
      if ((*(&v67 + 1) & 0x2000000000000000) == 0)
      {
        v107 = v67 & 0xFFFFFFFFFFFFLL;
      }

      if (v107)
      {
        v307 = v67;
        MEMORY[0x1EEE9AC00](v67);
        v277 = &v307;
        v278 = MEMORY[0x1E69E7CD0];
        v279 = 4;
        v109 = v108;
        v110 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v276, v108, *(&v67 + 1));
        if (v111 == 1)
        {
          v104 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v109, *(&v67 + 1), MEMORY[0x1E69E7CD0], 4);
          v106 = v112;
        }

        else
        {
          v106 = v111;
          v104 = v110;
        }

        if (!v106)
        {
          goto LABEL_94;
        }

        goto LABEL_86;
      }
    }

    else
    {
      v98 = HIBYTE(*(&v67 + 1)) & 0xFLL;
      if ((*(&v67 + 1) & 0x2000000000000000) == 0)
      {
        v98 = v67 & 0xFFFFFFFFFFFFLL;
      }

      if (v98)
      {
        v99 = *(v10 + 40);
        v307 = v67;
        MEMORY[0x1EEE9AC00](v67);
        v277 = &v307;
        v278 = MEMORY[0x1E69E7CD0];
        v279 = v99;
        v101 = v100;
        v102 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v276, v100, *(&v67 + 1));
        if (v103 == 1)
        {
          v104 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v101, *(&v67 + 1), MEMORY[0x1E69E7CD0], v99);
          v106 = v105;
        }

        else
        {
          v106 = v103;
          v104 = v102;
        }

        if (!v106)
        {
          goto LABEL_94;
        }

LABEL_86:
        v113 = v104;
        goto LABEL_87;
      }
    }

    v113 = 0;
    v106 = 0xE000000000000000;
LABEL_87:
    v96 = String._droppingTrailingSlashes.getter(v113, v106);
    v97 = v114;

    goto LABEL_88;
  }

  v281 = 0;
  v282 = v10;
  v68 = String._droppingTrailingSlashes.getter(v67, *(&v67 + 1));
  v16 = v69;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
  v70 = static _SetStorage.allocate(capacity:)();
  v71 = v70 + 56;
  v72 = *(v70 + 40);
  v21 = byte_1EEED3E60;
  v14 = 1;
  v73 = MEMORY[0x1865CD020](v72, byte_1EEED3E60, 1);
  v74 = -1 << *(v70 + 32);
  v75 = v73 & ~v74;
  v76 = v75 >> 6;
  v77 = *(v70 + 56 + 8 * (v75 >> 6));
  v78 = 1 << v75;
  v79 = *(v70 + 48);
  if (((1 << v75) & v77) != 0)
  {
    v80 = ~v74;
    while (*(v79 + v75) != v21)
    {
      v75 = (v75 + 1) & v80;
      v76 = v75 >> 6;
      v77 = *(v71 + 8 * (v75 >> 6));
      v78 = 1 << v75;
      if (((1 << v75) & v77) == 0)
      {
        goto LABEL_56;
      }
    }
  }

  else
  {
LABEL_56:
    *(v71 + 8 * v76) = v78 | v77;
    *(v79 + v75) = v21;
    v81 = *(v70 + 16);
    v31 = __OFADD__(v81, 1);
    v82 = v81 + 1;
    if (v31)
    {
      goto LABEL_234;
    }

    *(v70 + 16) = v82;
  }

  v21 = byte_1EEED3E61;
  v14 = 1;
  v83 = MEMORY[0x1865CD020](v72, byte_1EEED3E61, 1);
  v84 = -1 << *(v70 + 32);
  v85 = v83 & ~v84;
  v86 = v85 >> 6;
  v87 = *(v71 + 8 * (v85 >> 6));
  v88 = 1 << v85;
  v89 = *(v70 + 48);
  if (((1 << v85) & v87) == 0)
  {
LABEL_62:
    *(v71 + 8 * v86) = v88 | v87;
    *(v89 + v85) = v21;
    v91 = *(v70 + 16);
    v31 = __OFADD__(v91, 1);
    v92 = v91 + 1;
    if (!v31)
    {
      *(v70 + 16) = v92;
      goto LABEL_64;
    }

LABEL_234:
    __break(1u);
    goto LABEL_235;
  }

  v90 = ~v84;
  while (*(v89 + v85) != v21)
  {
    v85 = (v85 + 1) & v90;
    v86 = v85 >> 6;
    v87 = *(v71 + 8 * (v85 >> 6));
    v88 = 1 << v85;
    if (((1 << v85) & v87) == 0)
    {
      goto LABEL_62;
    }
  }

LABEL_64:
  v93 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v93 = v68 & 0xFFFFFFFFFFFFLL;
  }

  if (v93)
  {
    *&v307 = v68;
    *(&v307 + 1) = v16;
    MEMORY[0x1EEE9AC00](v83);
    v277 = &v307;
    v278 = v70;
    v279 = 4;

    v94 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v276, v68, v16);
    if (v95 == 1)
    {
      v94 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v68, v16, v70, 4);
    }

    v96 = v94;
    v97 = v95;

    v10 = v282;
    if (!v97)
    {
      goto LABEL_94;
    }
  }

  else
  {

    v96 = 0;
    v97 = 0xE000000000000000;
    v10 = v282;
  }

LABEL_88:
  if (v96 == 11823 && v97 == 0xE200000000000000)
  {
    goto LABEL_90;
  }

LABEL_94:
  v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v115)
  {
    goto LABEL_91;
  }

  v116 = _SwiftURL.absolutePath(percentEncoded:)(1);
  Path = String._lastPathComponent.getter(v116._countAndFlagsBits, v116._object);
  v119 = v118;

  v282 = v10;
  v120 = _SwiftURL.isFileURL.getter();
  if (v120)
  {
    v13 = String._droppingTrailingSlashes.getter(Path, v119);
    v16 = v121;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
    v122 = static _SetStorage.allocate(capacity:)();
    v123 = v122 + 56;
    v124 = *(v122 + 40);
    v21 = byte_1EEED3E88;
    v14 = 1;
    v125 = MEMORY[0x1865CD020](v124, byte_1EEED3E88, 1);
    v126 = -1 << *(v122 + 32);
    v127 = v125 & ~v126;
    v128 = v127 >> 6;
    v129 = *(v122 + 56 + 8 * (v127 >> 6));
    v130 = 1 << v127;
    v131 = *(v122 + 48);
    if (((1 << v127) & v129) != 0)
    {
      v132 = ~v126;
      while (*(v131 + v127) != v21)
      {
        v127 = (v127 + 1) & v132;
        v128 = v127 >> 6;
        v129 = *(v123 + 8 * (v127 >> 6));
        v130 = 1 << v127;
        if (((1 << v127) & v129) == 0)
        {
          goto LABEL_100;
        }
      }
    }

    else
    {
LABEL_100:
      *(v123 + 8 * v128) = v130 | v129;
      *(v131 + v127) = v21;
      v133 = *(v122 + 16);
      v31 = __OFADD__(v133, 1);
      v134 = v133 + 1;
      if (v31)
      {
        goto LABEL_235;
      }

      *(v122 + 16) = v134;
    }

    v21 = byte_1EEED3E89;
    v14 = 1;
    v135 = MEMORY[0x1865CD020](v124, byte_1EEED3E89, 1);
    v136 = -1 << *(v122 + 32);
    v137 = v135 & ~v136;
    v138 = v137 >> 6;
    v139 = *(v123 + 8 * (v137 >> 6));
    v140 = 1 << v137;
    v141 = *(v122 + 48);
    if (((1 << v137) & v139) != 0)
    {
      v142 = ~v136;
      while (*(v141 + v137) != v21)
      {
        v137 = (v137 + 1) & v142;
        v138 = v137 >> 6;
        v139 = *(v123 + 8 * (v137 >> 6));
        v140 = 1 << v137;
        if (((1 << v137) & v139) == 0)
        {
          goto LABEL_106;
        }
      }

      goto LABEL_108;
    }

LABEL_106:
    *(v123 + 8 * v138) = v140 | v139;
    *(v141 + v137) = v21;
    v143 = *(v122 + 16);
    v31 = __OFADD__(v143, 1);
    v144 = v143 + 1;
    if (!v31)
    {
      *(v122 + 16) = v144;
LABEL_108:
      v145 = HIBYTE(v16) & 0xF;
      if ((v16 & 0x2000000000000000) == 0)
      {
        v145 = v13 & 0xFFFFFFFFFFFFLL;
      }

      if (v145)
      {
        *&v307 = v13;
        *(&v307 + 1) = v16;
        MEMORY[0x1EEE9AC00](v135);
        v277 = &v307;
        v278 = v122;
        v279 = 4;

        v146 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v276, v13, v16);
        if (v147 == 1)
        {
          v148 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v13, v16, v122, 4);
          v150 = v149;
        }

        else
        {
          v150 = v147;
          v148 = v146;
        }

        goto LABEL_125;
      }

LABEL_120:
      v156 = v282;
      goto LABEL_128;
    }

LABEL_235:
    __break(1u);
    goto LABEL_236;
  }

  v151 = HIBYTE(v119) & 0xF;
  if ((v119 & 0x2000000000000000) == 0)
  {
    v151 = Path & 0xFFFFFFFFFFFFLL;
  }

  if (!v151)
  {

    goto LABEL_120;
  }

  v152 = *(v282 + 40);
  *&v307 = Path;
  *(&v307 + 1) = v119;
  MEMORY[0x1EEE9AC00](v120);
  v277 = &v307;
  v278 = MEMORY[0x1E69E7CD0];
  v279 = v152;

  v153 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v276, Path, v119);
  if (v154 == 1)
  {
    v148 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(Path, v119, MEMORY[0x1E69E7CD0], v152);
    v150 = v155;
  }

  else
  {
    v150 = v154;
    v148 = v153;
  }

  swift_bridgeObjectRelease_n();
LABEL_125:
  v156 = v282;
  if (v150 && v148 == 11822 && v150 == 0xE200000000000000)
  {
LABEL_90:

    goto LABEL_91;
  }

LABEL_128:
  v157 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v157)
  {
    goto LABEL_91;
  }

  v158 = _SwiftURL.absolutePath(percentEncoded:)(1);
  v159 = String._lastPathComponent.getter(v158._countAndFlagsBits, v158._object);
  v161 = v160;

  v162 = _SwiftURL.isFileURL.getter();
  if ((v162 & 1) == 0)
  {
    v193 = HIBYTE(v161) & 0xF;
    if ((v161 & 0x2000000000000000) == 0)
    {
      v193 = v159 & 0xFFFFFFFFFFFFLL;
    }

    if (!v193)
    {

      goto LABEL_162;
    }

    v194 = *(v156 + 40);
    *&v307 = v159;
    *(&v307 + 1) = v161;
    MEMORY[0x1EEE9AC00](v162);
    v277 = &v307;
    v278 = MEMORY[0x1E69E7CD0];
    v279 = v194;

    v195 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v276, v159, v161);
    if (v196 == 1)
    {
      v190 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v159, v161, MEMORY[0x1E69E7CD0], v194);
      v192 = v197;
    }

    else
    {
      v192 = v196;
      v190 = v195;
    }

    swift_bridgeObjectRelease_n();
    if (v192)
    {
      goto LABEL_159;
    }

LABEL_162:
    v198 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v199 = v282;
    if ((v198 & 1) == 0)
    {
      goto LABEL_175;
    }

    goto LABEL_163;
  }

  v13 = String._droppingTrailingSlashes.getter(v159, v161);
  v16 = v163;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys5UInt8VGMd);
  v164 = static _SetStorage.allocate(capacity:)();
  v165 = v164 + 56;
  v166 = *(v164 + 40);
  v21 = byte_1EEED3EB0;
  v14 = 1;
  v167 = MEMORY[0x1865CD020](v166, byte_1EEED3EB0, 1);
  v168 = -1 << *(v164 + 32);
  v169 = v167 & ~v168;
  v170 = v169 >> 6;
  v171 = *(v164 + 56 + 8 * (v169 >> 6));
  v172 = 1 << v169;
  v173 = *(v164 + 48);
  if (((1 << v169) & v171) != 0)
  {
    v174 = ~v168;
    while (*(v173 + v169) != v21)
    {
      v169 = (v169 + 1) & v174;
      v170 = v169 >> 6;
      v171 = *(v165 + 8 * (v169 >> 6));
      v172 = 1 << v169;
      if (((1 << v169) & v171) == 0)
      {
        goto LABEL_134;
      }
    }
  }

  else
  {
LABEL_134:
    *(v165 + 8 * v170) = v172 | v171;
    *(v173 + v169) = v21;
    v175 = *(v164 + 16);
    v31 = __OFADD__(v175, 1);
    v176 = v175 + 1;
    if (v31)
    {
      goto LABEL_236;
    }

    *(v164 + 16) = v176;
  }

  v21 = byte_1EEED3EB1;
  v14 = 1;
  v177 = MEMORY[0x1865CD020](v166, byte_1EEED3EB1, 1);
  v178 = -1 << *(v164 + 32);
  v179 = v177 & ~v178;
  v180 = v179 >> 6;
  v181 = *(v165 + 8 * (v179 >> 6));
  v182 = 1 << v179;
  v183 = *(v164 + 48);
  if (((1 << v179) & v181) == 0)
  {
LABEL_140:
    *(v165 + 8 * v180) = v182 | v181;
    *(v183 + v179) = v21;
    v185 = *(v164 + 16);
    v31 = __OFADD__(v185, 1);
    v186 = v185 + 1;
    if (!v31)
    {
      *(v164 + 16) = v186;
      goto LABEL_142;
    }

LABEL_236:
    __break(1u);
LABEL_237:
    swift_once();
    goto LABEL_206;
  }

  v184 = ~v178;
  while (*(v183 + v179) != v21)
  {
    v179 = (v179 + 1) & v184;
    v180 = v179 >> 6;
    v181 = *(v165 + 8 * (v179 >> 6));
    v182 = 1 << v179;
    if (((1 << v179) & v181) == 0)
    {
      goto LABEL_140;
    }
  }

LABEL_142:
  v187 = HIBYTE(v16) & 0xF;
  if ((v16 & 0x2000000000000000) == 0)
  {
    v187 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v187)
  {

    goto LABEL_162;
  }

  *&v307 = v13;
  *(&v307 + 1) = v16;
  MEMORY[0x1EEE9AC00](v177);
  v277 = &v307;
  v278 = v164;
  v279 = 4;

  v188 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(closure #1 in StringProtocol.removingURLPercentEncoding(excluding:encoding:)specialized partial apply, v276, v13, v16);
  if (v189 == 1)
  {
    v190 = _sSy10FoundationE26removingURLPercentEncoding33_A90579D1FA072CB135F95EF00BA4645010utf8Buffer9excluding8encodingSSSgqd___Shys5UInt8VGSSAAE0D0VtSlRd__AI7ElementRtd__lFSS_SS8UTF8ViewVTt2B5(v13, v16, v164, 4);
    v192 = v191;
  }

  else
  {
    v192 = v189;
    v190 = v188;
  }

  if (!v192)
  {
    goto LABEL_162;
  }

LABEL_159:
  if (v190 != 46 || v192 != 0xE100000000000000)
  {
    goto LABEL_162;
  }

LABEL_163:

  specialized URLComponents._URLComponents.init(parseInfo:)(v200, v301);
  v313 = v302[0];
  v314 = v302[1];
  v315[0] = v303[0];
  *(v315 + 10) = *(v303 + 10);
  v309 = v301[2];
  v310 = v301[3];
  v311 = v301[4];
  v312 = v301[5];
  v307 = v301[0];
  v308 = v301[1];
  v201 = URLComponents.percentEncodedPath.getter();
  String._droppingTrailingSlashes.getter(v201, v202);

  v203 = specialized Collection.dropLast(_:)(1);
  v205 = v204;
  v207 = v206;
  v209 = v208;

  *v304 = 3092014;
  *&v304[8] = 0xE300000000000000;
  *&v293[0] = MEMORY[0x1865CAE80](v203, v205, v207, v209);
  *(&v293[0] + 1) = v210;
  String.append<A>(contentsOf:)();
  v211 = MEMORY[0x1865CBC20](*&v293[0], *(&v293[0] + 1));
  v213 = v212;
  v215 = v214;
  v217 = v216;

  v218 = MEMORY[0x1865CAE80](v211, v213, v215, v217);
  v220 = v219;

  BYTE8(v307) = 0;
  BYTE14(v307) = 0;
  if ((v220 & 0x1000000000000000) != 0)
  {
    *v304 = v218;
    *&v304[8] = v220;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v264 = String._bridgeToObjectiveCImpl()();

    v265 = [v264 _fastCharacterContents];
    v266 = v264;
    if (v265)
    {
      *v304 = v218;
      *&v304[8] = v220;
      StringProtocol._ephemeralString.getter();
      v267 = String._bridgeToObjectiveCImpl()();

      v268 = [v267 length];
      swift_unknownObjectRelease();
      v269 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v265, v268, 0x10u, 1);
    }

    else
    {
      v269 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v218, v220, 0x10u, 1);
    }

    v199 = v282;
    if ((v269 & 1) == 0)
    {
      goto LABEL_249;
    }
  }

  else if ((v220 & 0x2000000000000000) != 0)
  {
    *v304 = v218;
    *&v304[8] = v220 & 0xFFFFFFFFFFFFFFLL;
    v223 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v304, HIBYTE(v220) & 0xF, 0x10u, 1);
    v199 = v282;
    if (!v223)
    {
      goto LABEL_249;
    }
  }

  else
  {
    if ((v218 & 0x1000000000000000) != 0)
    {
      v221 = ((v220 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v222 = v218 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v221 = _StringObject.sharedUTF8.getter();
    }

    v199 = v282;
    if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v221, v222, 0x10u, 1))
    {
      goto LABEL_249;
    }
  }

  v306 = *(v302 + 8);
  outlined destroy of TermOfAddress?(&v306, &_sSSSgMd);
  *(&v313 + 1) = v218;
  *&v314 = v220;
  *&v304[128] = v315[0];
  *&v304[138] = *(v315 + 10);
  *&v304[32] = v309;
  *&v304[48] = v310;
  *&v304[64] = v311;
  *&v304[80] = v312;
  *v304 = v307;
  *&v304[16] = v308;
  *&v304[96] = v313;
  *&v304[112] = v314;
  v293[6] = v313;
  v294[0] = v314;
  v294[1] = v315[0];
  *(&v294[1] + 10) = *(v315 + 10);
  v293[2] = v309;
  v293[3] = v310;
  v293[4] = v311;
  v293[5] = v312;
  v293[0] = v307;
  v293[1] = v308;
  outlined init with copy of URLComponents(v304, v291);
  v224 = [v2 baseURL];
  if (v224)
  {
    v225 = v224;
    static URL._unconditionallyBridgeFromObjectiveC(_:)(v224, v291);

    v226 = v291[0];
  }

  else
  {
    v226 = 0uLL;
  }

  v305 = v226;
  URLComponents.url(relativeTo:)(&v305, &v295);
  swift_unknownObjectRelease();
  v288[2] = v293[6];
  v288[3] = v294[0];
  v289[0] = v294[1];
  *(v289 + 10) = *(&v294[1] + 10);
  v286 = v293[2];
  v287 = v293[3];
  v288[0] = v293[4];
  v288[1] = v293[5];
  v284 = v293[0];
  v285 = v293[1];
  outlined destroy of URLComponents(&v284);
  v291[6] = v313;
  v292[0] = v314;
  v292[1] = v315[0];
  *(&v292[1] + 10) = *(v315 + 10);
  v291[2] = v309;
  v291[3] = v310;
  v291[4] = v311;
  v291[5] = v312;
  v291[0] = v307;
  v291[1] = v308;
  outlined destroy of URLComponents(v291);
  if (v295)
  {
    v227 = *(&v295 + 1);
    v228 = v283;
    *v283 = v295;
    v228[1] = v227;
    return;
  }

LABEL_175:
  if (*(*(v199 + 16) + 168))
  {
    v229 = MEMORY[0x1865CBC20](0, 0xE000000000000000);
  }

  else
  {
    v229 = String.subscript.getter();
  }

  v230 = MEMORY[0x1865CAE80](v229);
  v16 = v231;

  if (_SwiftURL.pathResolvesAgainstBase.getter())
  {
    v232 = HIBYTE(v16) & 0xF;
    if ((v16 & 0x2000000000000000) == 0)
    {
      v232 = v230 & 0xFFFFFFFFFFFFLL;
    }

    if (!v232)
    {
      goto LABEL_187;
    }

    if (String._lastPathComponent.getter(v230, v16) != 46 || v233 != 0xE100000000000000)
    {
      v235 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v235)
      {
        goto LABEL_187;
      }

      if (String._lastPathComponent.getter(v230, v16) != 11822 || v258 != 0xE200000000000000)
      {
        v234 = _stringCompareWithSmolCheck(_:_:expecting:)();

        goto LABEL_188;
      }
    }

LABEL_187:
    v234 = 1;
    goto LABEL_188;
  }

  v234 = 0;
LABEL_188:
  *&v300 = v230;
  *(&v300 + 1) = v16;

  if (String._lastPathComponent.getter(v230, v16) == 11822 && v236 == 0xE200000000000000)
  {

    v237 = v230;
    v238 = v16;
  }

  else
  {
    v239 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v237 = v230;
    v238 = v16;
    if ((v239 & 1) == 0)
    {
      v237 = String._deletingLastPathComponent()(v230, v16);
      v238 = v240;

      *&v300 = v237;
      *(&v300 + 1) = v238;
    }
  }

  v14 = v230;
  if (v234)
  {
    v237 = String._appendingPathComponent(_:)(11822, 0xE200000000000000, v237, v238);
    v242 = v241;

    *&v300 = v237;
    *(&v300 + 1) = v242;
    v238 = v242;
  }

  v243 = HIBYTE(v238) & 0xF;
  v244 = v237 & 0xFFFFFFFFFFFFLL;
  if ((v238 & 0x2000000000000000) == 0)
  {
    v243 = v237 & 0xFFFFFFFFFFFFLL;
  }

  if (!v243 && _SwiftURL.pathResolvesAgainstBase.getter())
  {

    v237 = 46;
    v238 = 0xE100000000000000;
    *&v300 = 46;
    *(&v300 + 1) = 0xE100000000000000;
LABEL_201:
    v244 = HIBYTE(v238) & 0xF;
    goto LABEL_202;
  }

  if ((v238 & 0x2000000000000000) != 0)
  {
    goto LABEL_201;
  }

LABEL_202:
  if (v244 && (specialized BidirectionalCollection.last.getter(v237, v238) & 0x1FF) != 0x2F)
  {
    MEMORY[0x1865CB0E0](47, 0xE100000000000000);
  }

  v13 = v282;

  specialized URLComponents._URLComponents.init(parseInfo:)(v245, v304);
  v21 = *v304;
  v298 = *&v304[9];
  v299 = v304[13];
  v286 = *&v304[47];
  v287 = *&v304[63];
  v288[0] = *&v304[79];
  *(v288 + 9) = *&v304[88];
  v284 = *&v304[15];
  v285 = *&v304[31];
  v297 = *&v304[152];
  v295 = *&v304[120];
  v296 = *&v304[136];
  v305 = *&v304[104];
  if (one-time initialization token for compatibility1 != -1)
  {
    goto LABEL_237;
  }

LABEL_206:
  if (static URL.compatibility1 != 1)
  {

    goto LABEL_211;
  }

  if (v14 != 47 || v16 != 0xE100000000000000)
  {
    v250 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v250)
    {
      goto LABEL_219;
    }

LABEL_211:
    v246 = *(&v300 + 1);
    v247 = v300;
    if ((*(&v300 + 1) & 0x1000000000000000) != 0)
    {
      v307 = v300;
      lazy protocol witness table accessor for type String and conformance String();
      StringProtocol._ephemeralString.getter();
      v270 = String._bridgeToObjectiveCImpl()();

      v271 = [v270 _fastCharacterContents];
      v272 = v270;
      if (v271)
      {
        v307 = __PAIR128__(v246, v247);
        StringProtocol._ephemeralString.getter();
        v273 = String._bridgeToObjectiveCImpl()();

        v274 = [v273 length];
        swift_unknownObjectRelease();
        v275 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v271, v274, 0x10u, 1);
      }

      else
      {
        v275 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(v247, v246, 0x10u, 1);
      }

      v13 = v282;
      if ((v275 & 1) == 0)
      {
        goto LABEL_249;
      }
    }

    else
    {
      if ((*(&v300 + 1) & 0x2000000000000000) != 0)
      {
        v249 = HIBYTE(*(&v300 + 1)) & 0xFLL;
        *&v307 = v300;
        *(&v307 + 1) = *(&v300 + 1) & 0xFFFFFFFFFFFFFFLL;
        v248 = &v307;
      }

      else if ((v300 & 0x1000000000000000) != 0)
      {
        v248 = ((*(&v300 + 1) & 0xFFFFFFFFFFFFFFFLL) + 32);
        v249 = v300 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        v248 = _StringObject.sharedUTF8.getter();
      }

      if (!_s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys5UInt8VG_Tt2g5(v248, v249, 0x10u, 1))
      {
        goto LABEL_249;
      }
    }

    goto LABEL_229;
  }

LABEL_219:
  v247 = 791555631;
  v251 = specialized String.UTF8View.withContiguousStorageIfAvailable<A>(_:)(791555631, 0xE400000000000000, 16, 1);
  if (v251 == 2)
  {
    *&v307 = 791555631;
    *(&v307 + 1) = 0xE400000000000000;
    lazy protocol witness table accessor for type String and conformance String();
    StringProtocol._ephemeralString.getter();
    v252 = String._bridgeToObjectiveCImpl()();

    v253 = [v252 _fastCharacterContents];
    v254 = v252;
    v246 = 0xE400000000000000;
    if (v253)
    {
      *&v307 = 791555631;
      *(&v307 + 1) = 0xE400000000000000;
      StringProtocol._ephemeralString.getter();
      v255 = String._bridgeToObjectiveCImpl()();

      v256 = [v255 length];
      swift_unknownObjectRelease();
      v257 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSRys6UInt16VG_Tt2g5(v253, v256, 0x10u, 1);
    }

    else
    {
      v257 = _s10Foundation13RFC3986ParserV8validate33_A90579D1FA072CB135F95EF00BA464506buffer9component22percentEncodingAllowedSbx_AA15URLComponentSetAELLVSbtSlRzSU7ElementRpzlFZSS8UTF8ViewV_Tt2g5(0x2F2E2E2FuLL, 0xE400000000000000, 0x10u, 1);
    }

    v13 = v282;
    if (v257)
    {
      goto LABEL_229;
    }

LABEL_249:
    v280 = 0;
    v279 = 1001;
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return;
  }

  if ((v251 & 1) == 0)
  {
    goto LABEL_249;
  }

  v246 = 0xE400000000000000;
LABEL_229:
  outlined destroy of TermOfAddress?(&v305, &_sSSSgMd);
  *&v291[0] = v21;
  BYTE8(v291[0]) = 0;
  *(v291 + 9) = v298;
  *(v291 + 13) = v299;
  *(&v291[2] + 15) = v286;
  *(&v291[3] + 15) = v287;
  *(&v291[4] + 15) = v288[0];
  *(&v291[5] + 8) = *(v288 + 9);
  *(v291 + 15) = v284;
  *(&v291[1] + 15) = v285;
  *(&v291[6] + 1) = v247;
  *&v292[0] = v246;
  *(v292 + 8) = v295;
  *(&v292[1] + 8) = v296;
  WORD4(v292[2]) = v297;
  v309 = v291[2];
  v310 = v291[3];
  v311 = v291[4];
  v312 = v291[5];
  v307 = v291[0];
  v308 = v291[1];
  v313 = v291[6];
  v314 = v292[0];
  v315[0] = v292[1];
  *(v315 + 10) = *(&v292[1] + 10);
  outlined init with copy of URLComponents(v291, v293);
  v259 = URLComponents._URLComponents._uncheckedString(original:)(0);
  outlined destroy of URLComponents(v291);
  v290 = *(v13 + 24);
  swift_unknownObjectRetain();
  v260 = specialized _SwiftURL.__allocating_init(stringOrEmpty:relativeTo:)(v259._countAndFlagsBits, v259._object, &v290);
  *(&v293[2] + 15) = v286;
  *(&v293[3] + 15) = v287;
  *(&v293[4] + 15) = v288[0];
  *(&v293[5] + 8) = *(v288 + 9);
  *(v293 + 15) = v284;
  *(&v293[1] + 15) = v285;
  *(v294 + 8) = v295;
  *&v293[0] = v21;
  BYTE8(v293[0]) = 0;
  *(v293 + 9) = v298;
  *(v293 + 13) = v299;
  *(&v293[6] + 1) = v247;
  *&v294[0] = v246;
  *(&v294[1] + 8) = v296;
  WORD4(v294[2]) = v297;
  outlined destroy of URLComponents(v293);

  if (v260)
  {
    v261 = &protocol witness table for _SwiftURL;
  }

  else
  {
    type metadata accessor for _BridgedNSSwiftURL();
    v260 = swift_allocObject();
    *(v260 + 16) = v2;
    v262 = v2;
    v261 = &protocol witness table for _BridgedNSSwiftURL;
  }

  v263 = v283;
  *v283 = v260;
  v263[1] = v261;
}