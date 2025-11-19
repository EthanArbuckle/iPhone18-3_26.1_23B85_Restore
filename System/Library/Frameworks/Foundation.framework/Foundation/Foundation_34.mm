uint64_t specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, unint64_t a2, unint64_t a3, char a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v9 = *a1;
  v8 = a1[1];
  v10 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v10 == 2)
    {
      swift_bridgeObjectRetain_n();
      outlined copy of Data._Representation(v9, v8);
      outlined consume of Data._Representation(v9, v8);
      *&__dst = v9;
      *(&__dst + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_181234410;
      outlined consume of Data._Representation(0, 0xC000000000000000);

      specialized Data.LargeSlice.withUnsafeMutableBytes<A>(_:)(&__dst, a2, a3, a4);
      a4 = v14;
      swift_bridgeObjectRelease_n();
      v15 = *(&__dst + 1) | 0x8000000000000000;
      *a1 = __dst;
      a1[1] = v15;
    }

    else
    {
      *(&__dst + 7) = 0;
      *&__dst = 0;
      specialized UnsafeMutableBufferPointer.initialize<A>(fromContentsOf:)(a2, a3, &__dst, 0);
      if (a4 == 2)
      {
        a4 = _allASCII(_:)(&__dst, 0);
      }
    }
  }

  else if (v10)
  {
    swift_bridgeObjectRetain_n();
    outlined copy of Data._Representation(v9, v8);
    outlined consume of Data._Representation(v9, v8);
    *&__dst = v9;
    *(&__dst + 1) = v8 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_181234410;
    outlined consume of Data._Representation(0, 0xC000000000000000);

    specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&__dst, a2, a3, a4);
    a4 = v16;
    swift_bridgeObjectRelease_n();
    v17 = *(&__dst + 1) | 0x4000000000000000;
    *a1 = __dst;
    a1[1] = v17;
  }

  else
  {
    v19 = HIWORD(v8);
    swift_bridgeObjectRetain_n();
    outlined consume of Data._Representation(v9, v8);
    *&__dst = v9;
    WORD4(__dst) = v8;
    BYTE10(__dst) = BYTE2(v8);
    BYTE11(__dst) = BYTE3(v8);
    BYTE12(__dst) = BYTE4(v8);
    BYTE13(__dst) = BYTE5(v8);
    v11 = BYTE6(v8);
    BYTE14(__dst) = v19;
    specialized UnsafeMutableBufferPointer.initialize<A>(fromContentsOf:)(a2, a3, &__dst, v11);
    if (a4 == 2)
    {
      a4 = _allASCII(_:)(&__dst, v11);
    }

    v12 = __dst;
    v13 = DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
    swift_bridgeObjectRelease_n();
    *a1 = v12;
    a1[1] = v13;
  }

  return a4 & 1;
}

unint64_t specialized UnsafeMutableBufferPointer.initialize<A>(fromContentsOf:)(unint64_t result, unint64_t a2, void *__dst, int64_t a4)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) == 0)
    {
      if ((result & 0x1000000000000000) != 0)
      {
        a2 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
        v4 = result & 0xFFFFFFFFFFFFLL;
        if ((result & 0xFFFFFFFFFFFFLL) == 0)
        {
          return v4;
        }
      }

      else
      {
        v6 = a4;
        v7 = __dst;
        result = _StringObject.sharedUTF8.getter();
        if (!result)
        {
          return 0;
        }

        v4 = v8;
        a2 = result;
        __dst = v7;
        a4 = v6;
        if (!v4)
        {
          return v4;
        }
      }

      if (v4 <= a4)
      {
LABEL_10:
        memcpy(__dst, a2, v4);
        return v4;
      }

      __break(1u);
    }

    v4 = HIBYTE(a2) & 0xF;
    v9[0] = result;
    v9[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (v4)
    {
      if (v4 <= a4)
      {
        a2 = v9;
        goto LABEL_10;
      }

      __break(1u);
      return 0;
    }

    return v4;
  }

  if (__dst)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void @objc static NSLocale._resetCurrent()()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleNotifications.reset()();
}

id @objc static NSTimeZone._resetSystemTimeZone()()
{
  v0 = specialized static NSTimeZone._resetSystemTimeZone()();

  return v0;
}

id specialized static NSTimeZone._resetSystemTimeZone()()
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v0 = static TimeZoneCache.cache;
  os_unfair_lock_lock((static TimeZoneCache.cache + 120));
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v3 = *(v0 + 80);
  *(v0 + 80) = 0;

  os_unfair_lock_unlock((v0 + 120));
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  LocaleNotifications.reset()();
  if (!v1)
  {
    return 0;
  }

  v4 = type metadata accessor for _NSSwiftTimeZone();
  v5 = objc_allocWithZone(v4);
  v6 = &v5[OBJC_IVAR____NSSwiftTimeZone_timeZone];
  *v6 = v1;
  *(v6 + 1) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation11LockedStateV7_Buffer33_5DF18145B0159EAD96B3D87D9CD90006LLCyAA16_NSSwiftTimeZoneC0C0V_GMd);
  v7 = swift_allocObject();
  *(v7 + 32) = 0;
  *(v7 + 16) = xmmword_18122E880;
  *&v5[OBJC_IVAR____NSSwiftTimeZone_lock] = v7;
  v9.receiver = v5;
  v9.super_class = v4;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t outlined destroy of String?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::String __swiftcall NSString._pathByInsertingResolveFlags(_:)(Swift::UInt32 a1)
{
  v43 = *MEMORY[0x1E69E9840];
  isTaggedPointer = _objc_isTaggedPointer(v1);
  v4 = v1;
  v5 = v4;
  if (!isTaggedPointer)
  {
    goto LABEL_7;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v4);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_17;
    case 0x16:
      v13 = [v5 UTF8String];
      if (!v13)
      {
        __break(1u);
        goto LABEL_43;
      }

      v15 = String.init(utf8String:)(v13);
      if (v16)
      {
LABEL_18:
        v7 = v15;
        v9 = v16;

        if (!a1)
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      __break(1u);
LABEL_17:
      LOWORD(prefixLength) = 0;
      _CFIndirectTaggedPointerStringGetContents();
      v15 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v16)
      {
        [v5 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();
        v7 = v33;
        v9 = v35;
        if (!a1)
        {
          goto LABEL_38;
        }

        goto LABEL_25;
      }

      goto LABEL_18;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      v7 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
      v9 = v8;

      if (!a1)
      {
        goto LABEL_38;
      }

LABEL_25:
      if ((specialized Collection.first.getter(v7, v9) & 0x1FF) != 0x2F)
      {
        goto LABEL_38;
      }

      prefixLength = 0;
      *&v18 = String._pathResolveFlags(prefixLength:)(&prefixLength);
      if ((v18 & 0x100000000) != 0)
      {
        goto LABEL_38;
      }

      v19 = v18 | a1;
      if ((v18 | a1) == v18)
      {
        goto LABEL_38;
      }

      if ((v9 & 0x1000000000000000) == 0)
      {
        if (prefixLength < 0)
        {
          __break(1u);
        }

        else
        {
          v20 = HIBYTE(v9) & 0xF;
          if ((v9 & 0x2000000000000000) == 0)
          {
            v20 = v7 & 0xFFFFFFFFFFFFLL;
          }

          if (v20 >= prefixLength)
          {
            v21 = (prefixLength << 16) | 4;
LABEL_34:
            v22 = specialized Collection.suffix(from:)(v21, v7, v9);
            v24 = v23;
            v26 = v25;
            v28 = v27;
            if (v19 == 1)
            {
              v29 = 0x6C6C6F666F6E2E2FLL;
              v30 = 0xEA0000000000776FLL;
            }

            else
            {
              v39 = 0x766C6F7365722E2FLL;
              v40 = 0xEA00000000002F65;
              v31 = dispatch thunk of CustomStringConvertible.description.getter();
              MEMORY[0x1865CB0E0](v31);

              v29 = v39;
              v30 = v40;
            }

            v34 = v29;
            v36 = v30;
            v39 = v22;
            v40 = v24;
            v41 = v26;
            v42 = v28;
            lazy protocol witness table accessor for type Substring and conformance Substring();
            String.append<A>(contentsOf:)();

            v7 = v34;
            v9 = v36;
            goto LABEL_38;
          }
        }

        __break(1u);
      }

      v21 = MEMORY[0x1865CB180](15, prefixLength, v7, v9);
      goto LABEL_34;
  }

LABEL_7:
  v39 = 0;
  LOBYTE(prefixLength) = 0;
  v38 = 0;
  if (__CFStringIsCF())
  {

    goto LABEL_12;
  }

  v10 = v5;
  v11 = String.init(_nativeStorage:)();
  if (v12)
  {
    v7 = v11;
    v9 = v12;

    if (!a1)
    {
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v39 = [v10 length];
  if (!v39)
  {

LABEL_12:
    v7 = 0;
    v9 = 0xE000000000000000;
    if (!a1)
    {
      goto LABEL_38;
    }

    goto LABEL_25;
  }

  v7 = String.init(_cocoaString:)();
  v9 = v17;
  if (a1)
  {
    goto LABEL_25;
  }

LABEL_38:
  v13 = v7;
  v14 = v9;
LABEL_43:
  result._object = v14;
  result._countAndFlagsBits = v13;
  return result;
}

uint64_t specialized static RFC3986Parser.compatibilityParse(urlString:encodedComponents:)(uint64_t a1, unint64_t a2, char a3)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;

  if ((a2 & 0x1000000000000000) != 0)
  {
    a1 = static String._copying(_:)();
    v127 = v126;

    *(v8 + 16) = a1;
    *(v8 + 24) = v127;
    a2 = v127;
  }

  v169 = a3;
  v167 = a2;
  v168 = a1;
  v170 = v8;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(a2) & 0xF;
    v222[0] = a1;
    v222[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    LOBYTE(v173) = 1;
    v210 = 1;
    v209 = 1;
    v208 = 1;
    v207 = 1;
    v206 = 1;
    v205 = 1;
    v204 = 1;
    v12 = 1;
    LOBYTE(v11) = 1;
    LOBYTE(v19) = 1;
    LOBYTE(v18) = 1;
    LOBYTE(v4) = 1;
    LOBYTE(v3) = 1;
    v219 = 1;
    v218 = 1;
    v217 = 1;
    v216 = 1;
    v215 = 1;
    v213 = 1;
    v211 = 1;
    if (!v15)
    {
      v206 = 0;
      v173 = 0;
      v174 = 0;
      v175 = 1;
      v177 = 0;
      v178 = 0;
      v179 = 1;
      v181 = 0;
      v182 = 0;
      v183 = 1;
      v185 = 0;
      v186 = 0;
      v187 = 1;
      v189 = 0;
      v190 = 0;
      v191 = 1;
      v193 = 0;
      v194 = 0;
      goto LABEL_16;
    }

    v16 = &v214;
    if ((a1 & 0xDF) - 91 < 0xFFFFFFE6)
    {
      if (a1 != 58)
      {
LABEL_66:
        v17 = 0;
        v13 = 0;
        goto LABEL_67;
      }

      v17 = 0;
      v219 = 0;
      goto LABEL_24;
    }

    if (v15 == 1)
    {
      v17 = 0;
LABEL_24:
      v13 = 1;
      if (v15 == 1)
      {
        goto LABEL_104;
      }

      goto LABEL_67;
    }

    v17 = 1;
    while (1)
    {
      result = *(v222 + v17);
      v10 = (result - 58);
      if (result <= 0x3A)
      {
        if (((1 << result) & 0x680000000000) != 0)
        {
          goto LABEL_58;
        }

        if (((1 << result) & 0x97D200000000) != 0)
        {
          goto LABEL_66;
        }

        if (result == 58)
        {
          v219 = 0;
          if (v17 - v15 == -1)
          {
            v206 = 0;
            v173 = 0;
            v174 = v17;
            v175 = v219;
            v177 = 0;
            v178 = 0;
            v179 = 1;
            v181 = 0;
            v182 = 0;
            v183 = 1;
            v185 = 0;
            v186 = 0;
            v187 = 1;
            v189 = 0;
            v190 = 0;
            v191 = 1;
            v193 = HIBYTE(a2) & 0xF;
            v194 = v193;
LABEL_16:
            v195 = 0;
            v197 = 0;
            v198 = 0;
            v199 = 1;
LABEL_105:
            v201 = 0;
            v202 = 0;
            LOBYTE(v203) = v3;
            *(&v203 + 1) = 0;
            HIBYTE(v203) = 0;
LABEL_110:
            _NSBundleDeallocatingImmortalBundle(&v173, v10);
            v20 = v173;
            v10 = v174;
            v27 = v175;
            v22 = v177;
            v21 = v178;
            v28 = v179;
            v23 = v182;
            v24 = v185;
            v4 = v186;
            v25 = v190;
            LOBYTE(v15) = v191;
            v26 = v193;
            v171 = v194;
            v162 = v199;
            v160 = v203 & 1;
            v146 = v183;
            v165 = v189;
            v148 = v187;
            v154 = v198;
            v155 = v181;
            v150 = v202;
            v151 = v197;
            v152 = v201;
            LODWORD(v164) = BYTE1(v203) & 1;
            LOBYTE(v163) = BYTE2(v203) & 1;
            v153 = v195;
            v158 = HIBYTE(HIWORD(v203)) & 1;
LABEL_111:
            v61 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v20, v10, v27 & 1, v170);
            v143 = v62;
            v145 = v61;
            v141 = v63;
            v64 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v22, v21, v28 & 1, v170);
            v137 = v65;
            v139 = v64;
            v135 = v66;
            v156 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v155, v23, v146 & 1, v170);
            v147 = v67;
            v133 = v68;
            v149 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v24, v4, v148 & 1, v170);
            v132 = v69;
            v131 = v70;
            v166 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v165, v25, v15 & 1, v170);
            v130 = v71;
            v129 = v72;
            v172 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v26, v171, v153 & 1, v170);
            v74 = v73;
            v76 = v75;
            v77 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v151, v154, v162 & 1, v170);
            v79 = v78;
            v81 = v80;
            v82 = convert #1 (_:) in static RFC3986Parser.parse(urlString:allowEmptyScheme:encodedComponents:)(v152, v150, v160 & 1, v170);
            v84 = v83;
            v86 = v85;

            type metadata accessor for URLParseInfo();
            result = swift_allocObject();
            *(result + 16) = v168;
            *(result + 24) = v167;
            *(result + 32) = v145;
            *(result + 40) = v143;
            *(result + 48) = v141 & 1;
            *(result + 56) = v139;
            *(result + 64) = v137;
            *(result + 72) = v135 & 1;
            *(result + 80) = v156;
            *(result + 88) = v147;
            *(result + 96) = v133 & 1;
            *(result + 104) = v149;
            *(result + 112) = v132;
            *(result + 120) = v131 & 1;
            *(result + 128) = v166;
            *(result + 136) = v130;
            *(result + 144) = v129 & 1;
            *(result + 152) = v172;
            *(result + 160) = v74;
            *(result + 168) = v76 & 1;
            *(result + 176) = v77;
            *(result + 184) = v79;
            *(result + 192) = v81 & 1;
            *(result + 200) = v82;
            *(result + 208) = v84;
            *(result + 216) = v86 & 1;
            *(result + 217) = v164 & 1;
            *(result + 218) = v163 & 1;
            *(result + 219) = v158 & 1;
            *(result + 220) = v169;
            return result;
          }

          v13 = v17 + 1;
          if (v17 + 1 == v15)
          {
LABEL_104:
            v206 = 0;
            v173 = 0;
            v174 = v17;
            v175 = v219;
            *v176 = *(v16 + 39);
            *&v176[3] = *(v16 + 42);
            v177 = 0;
            v178 = 0;
            v179 = v12;
            *v180 = *(v16 + 31);
            *&v180[3] = *(v16 + 34);
            v181 = 0;
            v182 = 0;
            v183 = v11;
            *v184 = *(v16 + 23);
            *&v184[3] = *(v16 + 26);
            v185 = 0;
            v186 = 0;
            v187 = v19;
            *v188 = *(v16 + 15);
            *&v188[3] = *(v16 + 18);
            v189 = 0;
            v190 = 0;
            v191 = v18;
            *&v192[3] = *(v16 + 10);
            *v192 = *(v16 + 7);
            v193 = 0;
            v194 = v15;
            v195 = 0;
            *&v196[3] = *(v16 + 3);
            *v196 = *v16;
            v197 = 0;
            v198 = 0;
            v199 = v4;
            *&v200[3] = *&v212[3];
            *v200 = *v212;
            goto LABEL_105;
          }

LABEL_67:
          if (v13 + 1 == v15 || *(v222 + v13) != 47 || *(v222 + v13 + 1) != 47)
          {
            v163 = 0;
            v164 = 0;
            v42 = 0;
            v43 = 0;
            v40 = 0;
            a2 = 0;
            v8 = 0;
            v157 = 0;
            v161 = 0;
            LOBYTE(a1) = 0;
            goto LABEL_75;
          }

          v40 = v13 + 2;
          v41 = HIBYTE(a2) & 0xF;
          if (v13 + 2 != v15)
          {
            v41 = v13 + 2;
            do
            {
              v88 = *(v222 + v41);
              v89 = v88 > 0x3F;
              v90 = (1 << v88) & 0x8000800800000000;
              if (!v89 && v90 != 0)
              {
                goto LABEL_71;
              }

              ++v41;
            }

            while (v15 != v41);
            v41 = HIBYTE(a2) & 0xF;
          }

LABEL_71:
          if (v41 >= v40)
          {
            if (v40 == v41)
            {
              v163 = 0;
              v164 = 0;
              v42 = 0;
              v43 = 0;
              v8 = 0;
              v157 = 0;
              v161 = 0;
              LOBYTE(a1) = 0;
              v216 = 0;
              a2 = v13 + 2;
              v13 += 2;
              goto LABEL_75;
            }

            v95 = 0;
            v96 = &v221;
            v97 = v13 + 2;
            do
            {
              if (v41 == v97)
              {
                result = 0;
                v100 = 0;
                v42 = 0;
                v43 = 0;
                v99 = v13 + 2;
                if (v40 == v41)
                {
                  goto LABEL_180;
                }

                goto LABEL_156;
              }

              v98 = v96[v41];
              ++v95;
              ++v97;
              --v96;
            }

            while (v98 != 64);
            v43 = v41 - v95;
            if (v41 - v95 < v40)
            {
              goto LABEL_260;
            }

            v99 = v43 + 1;
            if (v41 == v97)
            {
LABEL_137:
              v42 = 0;
              v218 = 0;
              result = v40;
              v100 = v43;
              v43 = 0;
              if (v99 != v41)
              {
                goto LABEL_156;
              }

LABEL_180:
              v8 = 0;
              v109 = 0;
              v108 = 0;
              a2 = v41;
              goto LABEL_202;
            }

            while (*(v222 + v13 + 2) != 58)
            {
              if (v43 - 2 == ++v13)
              {
                goto LABEL_137;
              }
            }

            v218 = 0;
            v42 = v13 + 3;
            if (v43 < v13 + 3)
            {
              goto LABEL_269;
            }

            v100 = v13 + 2;
            v217 = 0;
            result = v40;
            if (v99 == v41)
            {
              goto LABEL_180;
            }

LABEL_156:
            if (*(v222 + v99) != 91)
            {
LABEL_161:
              if (v41 < v99)
              {
                goto LABEL_263;
              }

              a2 = v99;
              while (1)
              {
                v8 = a2 + 1;
                if (*(v222 + a2) == 58)
                {
                  break;
                }

                ++a2;
                if (v41 == v8)
                {
                  goto LABEL_180;
                }
              }

              if (v41 >= v8)
              {
                v108 = 0;
                LOBYTE(v18) = 0;
                v215 = 0;
                goto LABEL_201;
              }

              goto LABEL_267;
            }

            if (v41 < v99)
            {
              goto LABEL_265;
            }

            v8 = v99 + 2;
            while (*(&v220 + v8) != 93)
            {
              if (++v8 - v41 == 2)
              {
                goto LABEL_161;
              }
            }

            if (v8 - v41 == 1)
            {
              v8 = 0;
              v109 = 0;
              v108 = 1;
              a2 = v41;
              goto LABEL_202;
            }

            if (v41 < v8)
            {
LABEL_271:
              __break(1u);
LABEL_272:
              __break(1u);
              return result;
            }

            LOBYTE(v18) = 0;
            a2 = v8 - 1;
            v215 = 0;
            v108 = 1;
LABEL_201:
            v109 = v41;
LABEL_202:
            if (a2 < v99)
            {
              goto LABEL_256;
            }

            LOBYTE(a1) = 0;
            v216 = 0;
            if (v99 != a2)
            {
              v112 = ~v99 + a2;
              v113 = v222 + v99;
              do
              {
                v114 = *v113++;
                LOBYTE(a1) = v114 == 37;
              }

              while (v114 != 37 && v112-- != 0);
            }

            if (!(v18 & 1 | (v8 == v109)))
            {
              v116 = v8;
              do
              {
                if (*(v222 + v116) < 0)
                {
                  goto LABEL_243;
                }

                v117 = *(v222 + v116) >= 0x40u ? 0x47FFFFFEAFFFFFFFLL : 0xAFFFFFDA00000000;
                if (((v117 >> *(v222 + v116)) & 1) == 0)
                {
                  goto LABEL_243;
                }

                ++v116;
              }

              while (v109 != v116);
            }

            v157 = v109;
            v161 = v108;
            v163 = v100;
            v164 = result;
            v40 = v99;
            v13 = v41;
LABEL_75:
            v159 = v40;
            v165 = v42;
            v171 = v43;
            if (v15 >= v13)
            {
              if (one-time initialization token for fileIDPrefix == -1)
              {
                goto LABEL_77;
              }

              goto LABEL_247;
            }

            __break(1u);
LABEL_246:
            __break(1u);
LABEL_247:
            swift_once();
LABEL_77:
            v44 = static URL.fileIDPrefix;
            result = specialized Sequence<>.starts<A>(with:)(static URL.fileIDPrefix, v13, v15, v222);
            if (result)
            {
              v45 = *(v44 + 16) + v13;
              v46 = 1;
            }

            else
            {
              v46 = 0;
              v45 = v13;
            }

            if (v45 == v15)
            {
LABEL_85:
              v206 = 0;
              v173 = 0;
              v174 = v17;
              v175 = v219;
              *v176 = *(v16 + 39);
              *&v176[3] = *(v16 + 42);
              v177 = v164;
              v178 = v163;
              v179 = v218;
              v49 = *(v16 + 31);
              *&v180[3] = *(v16 + 34);
              *v180 = v49;
              v181 = v165;
              v182 = v171;
              v183 = v217;
              v50 = *(v16 + 23);
              *&v184[3] = *(v16 + 26);
              *v184 = v50;
              v185 = v159;
              v186 = a2;
              v187 = v216;
              v51 = *(v16 + 15);
              *&v188[3] = *(v16 + 18);
              *v188 = v51;
              v189 = v8;
              v190 = v157;
              v191 = v215;
              v52 = *(v16 + 7);
              *&v192[3] = *(v16 + 10);
              *v192 = v52;
              v193 = v13;
              v194 = v15;
              v195 = 0;
              v53 = *v16;
              *&v196[3] = *(v16 + 3);
              *v196 = v53;
              v197 = 0;
              v198 = 0;
              v199 = v4;
              *&v200[3] = *&v212[3];
              *v200 = *v212;
              v201 = 0;
              v202 = 0;
              LOBYTE(v203) = v3;
              goto LABEL_109;
            }

            v47 = v45 + 1;
            while (1)
            {
              v48 = *(v222 + v47 - 1);
              if (v48 == 35 || v48 == 63)
              {
                break;
              }

              if (++v47 - v15 == 1)
              {
                goto LABEL_85;
              }
            }

            v54 = v47 - 1;
            if (v47 - 1 >= v13)
            {
              v206 = 0;
              if (v48 == 35)
              {
                if (v15 >= v47)
                {
                  v56 = 0;
                  v55 = 0;
                  v211 = 0;
                  goto LABEL_108;
                }
              }

              else
              {
                if (v15 >= v47)
                {
                  if (v47 == v15)
                  {
LABEL_93:
                    v213 = 0;
                    v56 = v47;
                    v55 = v15;
                    v47 = 0;
                    v15 = 0;
                    goto LABEL_108;
                  }

                  v55 = v47;
                  while (*(v222 + v55) != 35)
                  {
                    if (v15 == ++v55)
                    {
                      goto LABEL_93;
                    }
                  }

                  v213 = 0;
                  if (v15 >= v55 + 1)
                  {
                    v211 = 0;
                    v56 = v47;
                    v47 = v55 + 1;
LABEL_108:
                    v10 = v213;
                    v173 = 0;
                    v174 = v17;
                    v175 = v219;
                    *v176 = *(v16 + 39);
                    *&v176[3] = *(v16 + 42);
                    v177 = v164;
                    v178 = v163;
                    v179 = v218;
                    *&v180[3] = *(v16 + 34);
                    *v180 = *(v16 + 31);
                    v181 = v165;
                    v182 = v171;
                    v183 = v217;
                    *&v184[3] = *(v16 + 26);
                    *v184 = *(v16 + 23);
                    v185 = v159;
                    v186 = a2;
                    v187 = v216;
                    *v188 = *(v16 + 15);
                    *&v188[3] = *(v16 + 18);
                    v189 = v8;
                    v190 = v157;
                    v191 = v215;
                    *v192 = *(v16 + 7);
                    *&v192[3] = *(v16 + 10);
                    v193 = v13;
                    v194 = v54;
                    v195 = v206;
                    *v196 = *v16;
                    *&v196[3] = *(v16 + 3);
                    v197 = v56;
                    v198 = v55;
                    v199 = v213;
                    *&v200[3] = *&v212[3];
                    *v200 = *v212;
                    v201 = v47;
                    v202 = v15;
                    LOBYTE(v203) = v211;
LABEL_109:
                    BYTE1(v203) = v161;
                    BYTE2(v203) = a1;
                    HIBYTE(v203) = v46;
                    goto LABEL_110;
                  }

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
LABEL_265:
                  __break(1u);
LABEL_266:
                  __break(1u);
LABEL_267:
                  __break(1u);
LABEL_268:
                  __break(1u);
LABEL_269:
                  __break(1u);
LABEL_270:
                  __break(1u);
                  goto LABEL_271;
                }

LABEL_252:
                __break(1u);
              }

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
              goto LABEL_259;
            }

            __break(1u);
LABEL_249:
            __break(1u);
          }

          __break(1u);
LABEL_251:
          __break(1u);
          goto LABEL_252;
        }
      }

      v10 = (result - 58);
      if (v10 <= 0xF5)
      {
        v10 = (result - 59);
        if (v10 < 6)
        {
          v10 = 0x35u >> (result - 59);
          if (v10)
          {
            goto LABEL_66;
          }
        }

        result = ((result & 0xDF) - 91);
        if (result < 0xE6)
        {
          goto LABEL_66;
        }
      }

LABEL_58:
      if (++v17 == v15)
      {
        goto LABEL_103;
      }
    }
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v13 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v14 = a1 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
    v13 = result;
    v14 = v10;
  }

  v15 = 1;
  LOBYTE(v173) = 1;
  v211 = 1;
  v210 = 1;
  v209 = 1;
  v208 = 1;
  v207 = 1;
  v205 = 1;
  v16 = 1;
  v17 = 1;
  LOBYTE(v222[0]) = 1;
  v219 = 1;
  v218 = 1;
  v217 = 1;
  v216 = 1;
  v215 = 1;
  v213 = 1;
  if (!v14)
  {
    v173 = 0;
    v174 = 0;
    v175 = 1;
    v177 = 0;
    v178 = 0;
    v179 = 1;
    v181 = 0;
    v182 = 0;
    v183 = 1;
    v185 = 0;
    v186 = 0;
    v187 = 1;
    v189 = 0;
    v190 = 0;
    v191 = 1;
    v193 = 0;
    v194 = 0;
    v195 = 0;
    v197 = 0;
    v198 = 0;
    v199 = 1;
    v201 = 0;
    v202 = 0;
    v203 = 1;
    _NSBundleDeallocatingImmortalBundle(&v173, v10);
    v20 = v173;
    v10 = v174;
    v22 = v177;
    v21 = v178;
    v23 = v182;
    v24 = v185;
    v4 = v186;
    v25 = v190;
    v165 = v189;
    v26 = v193;
    v171 = v194;
    v154 = v198;
    v155 = v181;
    v151 = v197;
    v152 = v201;
    v150 = v202;
    v27 = v175;
    v28 = v179;
    v146 = v183;
    v148 = v187;
    LOBYTE(v15) = v191;
    v153 = v195;
    v160 = v203;
    LOBYTE(v164) = BYTE1(v203);
    v162 = v199;
    LOBYTE(v163) = BYTE2(v203);
    LOBYTE(v158) = HIBYTE(v203);
    goto LABEL_111;
  }

  LODWORD(v18) = *v13;
  LODWORD(v19) = (v18 & 0xFFFFFFDF) - 91;
  v171 = v14;
  if (v19 < 0xFFFFFFE6)
  {
    if (v18 != 58)
    {
LABEL_36:
      v10 = 0;
      v29 = 0;
      goto LABEL_37;
    }

    v10 = 0;
    LOBYTE(v222[0]) = 0;
LABEL_19:
    v29 = 1;
    if (v14 != 1)
    {
      goto LABEL_37;
    }

    goto LABEL_20;
  }

  v19 = v14 - 1;
  if (v14 == 1)
  {
    v10 = 0;
    goto LABEL_19;
  }

  v18 = 0;
  v11 = v13 + 1;
  v12 = 53;
  while (1)
  {
    v30 = *(v11 + v18);
    if (v30 > 0x3A)
    {
      goto LABEL_33;
    }

    if (((1 << v30) & 0x680000000000) == 0)
    {
      break;
    }

LABEL_28:
    if (v19 == ++v18)
    {
      v160 = 1;
      v10 = 0;
      v162 = 1;
      if ((v14 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_102;
    }
  }

  if (((1 << v30) & 0x97D200000000) != 0)
  {
    goto LABEL_36;
  }

  if (v30 != 58)
  {
LABEL_33:
    if ((v30 - 58) <= 0xF5u && ((v30 - 59) < 6 && ((0x35u >> (v30 - 59)) & 1) != 0 || ((v30 & 0xDF) - 91) < 0xE6u))
    {
      goto LABEL_36;
    }

    goto LABEL_28;
  }

  v10 = v18 + 1;
  if (v18 + 1 < 0)
  {
    goto LABEL_258;
  }

  LOBYTE(v222[0]) = 0;
  LOBYTE(v19) = v14 - 2;
  if (v14 - 2 == v18)
  {
    v160 = 1;
    v162 = 1;
    LOBYTE(v163) = 0;
    LOBYTE(v158) = 0;
    LOBYTE(v164) = 0;
    v153 = 0;
    v20 = 0;
    v22 = 0;
    v21 = 0;
    v154 = 0;
    v155 = 0;
    v23 = 0;
    v24 = 0;
    v4 = 0;
    v165 = 0;
    v25 = 0;
    v151 = 0;
    v152 = 0;
    v150 = 0;
    v27 = v222[0];
    v148 = 1;
    v146 = 1;
    v28 = 1;
    v26 = v14;
    goto LABEL_111;
  }

  v29 = v18 + 2;
  if (v18 + 2 == v14)
  {
LABEL_20:
    v160 = 1;
    v162 = 1;
    if ((v14 & 0x8000000000000000) == 0)
    {
LABEL_21:
      LOBYTE(v158) = 0;
      LOBYTE(v163) = 0;
      LOBYTE(v164) = 0;
      v153 = 0;
      v20 = 0;
      v22 = 0;
      v21 = 0;
      v154 = 0;
      v155 = 0;
      v23 = 0;
      v24 = 0;
      v4 = 0;
      v165 = 0;
      v25 = 0;
      v26 = 0;
      v151 = 0;
      v152 = 0;
      v150 = 0;
      v27 = v222[0];
      v148 = 1;
      v146 = 1;
      v28 = 1;
      goto LABEL_111;
    }

LABEL_102:
    __break(1u);
LABEL_103:
    v17 = 0;
    goto LABEL_104;
  }

LABEL_37:
  if (v29 + 1 == v14 || *(v13 + v29) != 47 || *(v13 + v29 + 1) != 47)
  {
    LODWORD(v163) = 0;
    LODWORD(v164) = 0;
    v134 = 0;
    v136 = 0;
    v165 = 0;
    v4 = 0;
    v33 = 0;
    v3 = 0;
    v142 = 0;
    v32 = 0;
LABEL_45:
    v138 = v33;
    v140 = v32;
    if (v14 < v29)
    {
      goto LABEL_246;
    }

    v34 = v10;
    if (one-time initialization token for fileIDPrefix != -1)
    {
      v128 = v29;
      swift_once();
      v29 = v128;
      v14 = v171;
    }

    v144 = v29;
    v35 = static URL.fileIDPrefix;
    result = specialized Sequence<>.starts<A>(with:)(static URL.fileIDPrefix, v29, v14, v13);
    v36 = v144;
    if (result)
    {
      v36 = *(v35 + 16) + v144;
    }

    v37 = v171;
    v10 = v34;
    LOBYTE(v158) = result;
    v155 = v3;
    if (v36 == v171)
    {
LABEL_55:
      v160 = 1;
      v162 = 1;
      v153 = 0;
      v20 = 0;
      v151 = 0;
      v152 = 0;
      v154 = 0;
      v150 = 0;
      v27 = v222[0];
      v28 = v219;
      v146 = v218;
      v148 = v217;
      LOBYTE(v15) = v216;
      v22 = v140;
      v21 = v142;
      v23 = v136;
      v24 = v138;
      v25 = v134;
      v26 = v144;
      goto LABEL_111;
    }

    v38 = v36 + 2;
    while (1)
    {
      v39 = *(v13 + v38 - 2);
      if (v39 == 35 || v39 == 63)
      {
        break;
      }

      if (++v38 - v171 == 2)
      {
        goto LABEL_55;
      }
    }

    v57 = v38 - 2;
    if (v38 - 2 >= v144)
    {
      if (v39 == 35)
      {
        v87 = v38 - 1;
        if (v171 < v87)
        {
          goto LABEL_255;
        }

        v60 = v87;
        v58 = 0;
        v213 = 0;
        v59 = v171;
        v37 = 0;
      }

      else
      {
        v58 = v38 - 1;
        if (v171 < v38 - 1)
        {
          goto LABEL_254;
        }

        if (v38 - v171 == 1)
        {
LABEL_100:
          v59 = 0;
          v60 = 0;
          v215 = 0;
        }

        else
        {
          while (*(v13 + 1 + v38 - 2) != 35)
          {
            ++v38;
            if (1 - v171 + v38 == 2)
            {
              goto LABEL_100;
            }
          }

          v215 = 0;
          if (v171 < v38)
          {
            goto LABEL_262;
          }

          v59 = v171;
          v60 = v38;
          v37 = v38 - 1;
          v213 = 0;
        }
      }

      v22 = v140;
      v21 = v142;
      v150 = v59;
      v151 = v58;
      v152 = v60;
      v20 = 0;
      v154 = v37;
      v27 = v222[0];
      v28 = v219;
      v146 = v218;
      v148 = v217;
      LOBYTE(v15) = v216;
      v153 = 0;
      v162 = v215;
      v171 = v57;
      v160 = v213;
      v23 = v136;
      v24 = v138;
      v25 = v134;
      v26 = v144;
      goto LABEL_111;
    }

    goto LABEL_249;
  }

  v4 = v29 + 2;
  v31 = v14;
  if (v29 + 2 != v14)
  {
    v31 = v29 + 2;
    while (1)
    {
      v92 = *(v13 + v31);
      v89 = v92 > 0x3F;
      v93 = (1 << v92) & 0x8000800800000000;
      if (!v89 && v93 != 0)
      {
        break;
      }

      if (v14 == ++v31)
      {
        v31 = v14;
        break;
      }
    }
  }

  if (v31 < v4)
  {
    goto LABEL_251;
  }

  if (v4 == v31)
  {
    LODWORD(v163) = 0;
    LODWORD(v164) = 0;
    v134 = 0;
    v136 = 0;
    v165 = 0;
    v3 = 0;
    v142 = 0;
    v32 = 0;
    v217 = 0;
    v33 = v29 + 2;
    v29 += 2;
    goto LABEL_45;
  }

  v101 = 0;
  v102 = v13 - 1;
  v103 = v29 + 2;
  do
  {
    if (v31 == v103)
    {
      v107 = 0;
      v3 = 0;
      v142 = 0;
      v32 = 0;
      v33 = v29 + 2;
      goto LABEL_184;
    }

    v104 = *(v102 + v31);
    ++v101;
    ++v103;
    --v102;
  }

  while (v104 != 64);
  v105 = v31 - v101;
  if (v105 < v4)
  {
    goto LABEL_261;
  }

  v142 = v105;
  v33 = v105 + 1;
  if (v31 == v103)
  {
LABEL_147:
    v107 = 0;
    v3 = 0;
    v219 = 0;
  }

  else
  {
    v106 = v105 - 2;
    while (*(v13 + 2 + v29) != 58)
    {
      if (v106 == ++v29)
      {
        goto LABEL_147;
      }
    }

    v219 = 0;
    v3 = v29 + 3;
    if (v142 < v29 + 3)
    {
      goto LABEL_270;
    }

    v107 = v142;
    v218 = 0;
    v142 = v29 + 2;
  }

  v32 = v4;
LABEL_184:
  if (v33 == v31)
  {
LABEL_194:
    v110 = 0;
    v111 = 0;
    result = 0;
    v4 = v31;
    goto LABEL_223;
  }

  if (*(v13 + v33) != 91)
  {
LABEL_190:
    if (v31 < v33)
    {
      goto LABEL_264;
    }

    v4 = v33;
    while (1)
    {
      result = v4 + 1;
      if (*(v13 + v4) == 58)
      {
        break;
      }

      ++v4;
      if (v31 == result)
      {
        goto LABEL_194;
      }
    }

    if (v31 >= result)
    {
      v110 = 0;
      v15 = 0;
      v216 = 0;
      goto LABEL_222;
    }

    goto LABEL_268;
  }

  if (v31 < v33)
  {
    goto LABEL_266;
  }

  result = v33 + 2;
  while (*(v13 + result - 2) != 93)
  {
    if (++result - v31 == 2)
    {
      goto LABEL_190;
    }
  }

  if (result - v31 == 1)
  {
    v111 = 0;
    result = 0;
    v110 = 1;
    v4 = v31;
    goto LABEL_223;
  }

  if (v31 < result)
  {
    goto LABEL_272;
  }

  v15 = 0;
  v4 = result - 1;
  v216 = 0;
  v110 = 1;
LABEL_222:
  v111 = v31;
LABEL_223:
  if (v4 < v33)
  {
    goto LABEL_257;
  }

  v118 = 0;
  v217 = 0;
  if (v33 != v4)
  {
    v119 = ~v33 + v4;
    v120 = (v13 + v33);
    do
    {
      v121 = *v120++;
      v118 = v121 == 37;
    }

    while (v121 != 37 && v119-- != 0);
  }

  if (result == v111)
  {
    v123 = 1;
  }

  else
  {
    v123 = v15;
  }

  if (v123)
  {
LABEL_242:
    LODWORD(v163) = v118;
    LODWORD(v164) = v110;
    v134 = v111;
    v136 = v107;
    v165 = result;
    v29 = v31;
    goto LABEL_45;
  }

  v124 = result;
  while ((*(v13 + v124) & 0x80000000) == 0)
  {
    v125 = *(v13 + v124) >= 0x40u ? 0x47FFFFFEAFFFFFFFLL : 0xAFFFFFDA00000000;
    if (((v125 >> *(v13 + v124)) & 1) == 0)
    {
      break;
    }

    if (v111 == ++v124)
    {
      goto LABEL_242;
    }
  }

LABEL_243:

  return 0;
}

Swift::Void __swiftcall URL.removeCachedResourceValue(forKey:)(NSURLResourceKey forKey)
{
  v3 = *(v1 + 8);
  ObjectType = swift_getObjectType();
  v5 = (*(v3 + 432))(ObjectType, v3);
  [v5 removeCachedResourceValueForKey_];
}

char *_SwiftURL.pathComponents.getter()
{
  v46 = *MEMORY[0x1E69E9840];
  v0 = _SwiftURL.absolutePath(percentEncoded:)(1);
  v1 = String._pathComponents.getter(v0._countAndFlagsBits, v0._object);

  v2 = *(v1 + 16);
  if (!v2)
  {

    v6 = MEMORY[0x1E69E7CC0];
    goto LABEL_37;
  }

  v45 = MEMORY[0x1E69E7CC0];
  v42 = v1;
  v43 = v2;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
  v3 = v1;
  v4 = v43;
  v5 = 0;
  v6 = v45;
  v7 = (v1 + 40);
  do
  {
    if (v5 >= *(v3 + 16))
    {
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v9 = *(v7 - 1);
    v8 = *v7;
    v10 = HIBYTE(*v7) & 0xF;
    v11 = v9 & 0xFFFFFFFFFFFFLL;
    if ((*v7 & 0x2000000000000000) != 0)
    {
      v12 = HIBYTE(*v7) & 0xF;
    }

    else
    {
      v12 = v9 & 0xFFFFFFFFFFFFLL;
    }

    if (!v12)
    {
      v20 = 0;
      v21 = 0xE000000000000000;
      goto LABEL_23;
    }

    if ((v8 & 0x1000000000000000) != 0)
    {

      v24 = String.UTF8View._foreignCount()();
      v12 = v24;
      if (v24 < 0)
      {
        goto LABEL_48;
      }

      goto LABEL_18;
    }

    if ((v8 & 0x2000000000000000) != 0)
    {
      v44[0] = *(v7 - 1);
      v44[1] = v8 & 0xFFFFFFFFFFFFFFLL;

      MEMORY[0x1EEE9AC00](v22);
      v16 = &v41 - v23;
      v18 = v44;
      v17 = v10;
      v19 = v10;
    }

    else
    {
      if ((v9 & 0x1000000000000000) != 0)
      {
        v13 = ((v8 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v13 = _StringObject.sharedUTF8.getter();
        v11 = v33;
        if (v33 < 0)
        {
          goto LABEL_49;
        }
      }

      if (v11 >= 1025)
      {
        isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
        if ((isStackAllocationSafe & 1) == 0)
        {
          v34 = swift_slowAlloc();
          v20 = specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)(v34, v11, v13, v11, MEMORY[0x1E69E7CD0], 4);
          v21 = v35;
          v24 = MEMORY[0x1865D2690](v34, -1, -1);
          if (v21 != 1)
          {
            goto LABEL_20;
          }

LABEL_17:
          if (v12 < 0)
          {
            goto LABEL_48;
          }

LABEL_18:
          if (v12 < 1025 || (v24 = swift_stdlib_isStackAllocationSafe(), (v24 & 1) != 0))
          {
            MEMORY[0x1EEE9AC00](v24);
            v20 = specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)(&v41 - v26, v12, v9, v8, MEMORY[0x1E69E7CD0], 4);
            v21 = v27;
          }

          else
          {
            v31 = swift_slowAlloc();
            v20 = specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)(v31, v12, v9, v8, MEMORY[0x1E69E7CD0], 4);
            v21 = v32;
            MEMORY[0x1865D2690](v31, -1, -1);
          }

          goto LABEL_20;
        }
      }

      MEMORY[0x1EEE9AC00](isStackAllocationSafe);
      v16 = &v41 - v15;
      v17 = v11;
      v18 = v13;
      v19 = v11;
    }

    v24 = specialized closure #1 in StringProtocol.removingURLPercentEncoding<A>(utf8Buffer:excluding:encoding:)(v16, v17, v18, v19, MEMORY[0x1E69E7CD0], 4);
    v20 = v24;
    v21 = v25;
    if (v25 == 1)
    {
      goto LABEL_17;
    }

LABEL_20:

    if (!v21)
    {
      v20 = 0;
      v21 = 0xE000000000000000;
    }

    v3 = v42;
    v4 = v43;
LABEL_23:
    v45 = v6;
    v29 = *(v6 + 2);
    v28 = *(v6 + 3);
    if (v29 >= v28 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
      v3 = v42;
      v4 = v43;
      v6 = v45;
    }

    ++v5;
    *(v6 + 2) = v29 + 1;
    v30 = &v6[16 * v29];
    *(v30 + 4) = v20;
    *(v30 + 5) = v21;
    v7 += 2;
  }

  while (v4 != v5);

LABEL_37:
  v36 = *(v6 + 2);
  if (v36 <= 1)
  {
    return v6;
  }

  v37 = &v6[16 * v36 + 16];
  v38 = *v37 == 47 && *(v37 + 1) == 0xE100000000000000;
  if (!v38 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return v6;
  }

  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v39 = *(v6 + 2);
    if (v39)
    {
      goto LABEL_45;
    }

LABEL_51:
    __break(1u);
  }

LABEL_50:
  v6 = specialized _ArrayBuffer._consumeAndCreateNew()(v6);
  v39 = *(v6 + 2);
  if (!v39)
  {
    goto LABEL_51;
  }

LABEL_45:
  *(v6 + 2) = v39 - 1;

  return v6;
}

uint64_t specialized withVaList<A>(_:_:)(uint64_t a1)
{
  type metadata accessor for __VaListBuilder();
  v2 = swift_allocObject();
  v2[2] = 8;
  v2[3] = 0;
  v3 = v2 + 3;
  v2[4] = 0;
  v2[5] = 0;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_26:
    v22 = __VaListBuilder.va_list()();
    v23 = String._bridgeToObjectiveCImpl()();
    NSLogv(v23, v22);

    return swift_unknownObjectRelease();
  }

  v5 = 0;
  v6 = a1 + 32;
  while (1)
  {
    __swift_project_boxed_opaque_existential_1((v6 + 40 * v5), *(v6 + 40 * v5 + 24));
    result = dispatch thunk of CVarArg._cVarArgEncoding.getter();
    v8 = *v3;
    v9 = *(result + 16);
    v10 = __OFADD__(*v3, v9);
    v11 = *v3 + v9;
    if (v10)
    {
      break;
    }

    v12 = v2[4];
    if (v12 >= v11)
    {
      goto LABEL_18;
    }

    if (v12 + 0x4000000000000000 < 0)
    {
      goto LABEL_31;
    }

    v13 = v2[5];
    if (2 * v12 > v11)
    {
      v11 = 2 * v12;
    }

    v2[4] = v11;
    if ((v11 - 0x1000000000000000) >> 61 != 7)
    {
      goto LABEL_32;
    }

    v14 = result;
    v15 = swift_slowAlloc();
    v16 = v15;
    v2[5] = v15;
    if (v13)
    {
      if (v15 != v13 || v15 >= &v13[8 * v8])
      {
        memmove(v15, v13, 8 * v8);
      }

      __VaListBuilder.deallocStorage(wordCount:storage:)();
      result = v14;
LABEL_18:
      v16 = v2[5];
      if (!v16)
      {
        goto LABEL_25;
      }

      goto LABEL_19;
    }

    result = v14;
    if (!v16)
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

LABEL_19:
    v18 = *(result + 16);
    if (v18)
    {
      v19 = (result + 32);
      v20 = *v3;
      while (1)
      {
        v21 = *v19++;
        *&v16[8 * v20] = v21;
        v20 = *v3 + 1;
        if (__OFADD__(*v3, 1))
        {
          break;
        }

        *v3 = v20;
        if (!--v18)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
      break;
    }

LABEL_3:

    if (++v5 == v4)
    {
      goto LABEL_26;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t __JSONEncoder.wrap<A>(_:for:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a2;
  v47 = a5;
  v48 = a1;
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v15 = v46 - v13;
  v16 = v5;
  v17 = *(v5 + 88);
  if (v17)
  {
    if (v17 == 1)
    {
      return _s10Foundation6Base64O14encodeToString5bytes7optionsSSx_So06NSDataB15EncodingOptionsVtSlRzs5UInt8V7ElementRtzlFZAA4DataV_Tt1g5(v48, v49, 0);
    }

    v46[1] = *(v16 + 96);
    (*(v9 + 16))(v11, a3, v8, v14);
    v20 = *(a4 - 8);
    if ((*(v20 + 48))(v11, 1, a4) == 1)
    {
      v21 = *(v9 + 8);

      v21(v11, v8);
      v64 = 0;
      v62 = 0u;
      v63 = 0u;
    }

    else
    {
      *(&v63 + 1) = a4;
      v64 = v47;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v62);
      (*(v20 + 32))(boxed_opaque_existential_0, v11, a4);
    }

    outlined init with copy of FloatingPointRoundingRule?(&v62, &v53, &_ss9CodingKey_pSgMd);
    v26 = v50;
    v27 = v16;
    if (*(&v54 + 1))
    {
      outlined init with take of Equatable(&v53, v61);
      v16 = *(v16 + 184);
      v28 = v17;
      if (v16)
      {
        *(v27 + 184) = 0;
        outlined destroy of TermOfAddress?(v16 + 192, &_ss9CodingKey_pSgMd);
        outlined init with take of Equatable(v61, v16 + 192);
        *(v16 + 176) = v27;
      }

      else
      {
        v37 = *(v27 + 136);
        v57 = *(v27 + 120);
        v58 = v37;
        v59 = *(v27 + 152);
        v60 = *(v27 + 168);
        v38 = *(v27 + 72);
        v53 = *(v27 + 56);
        v54 = v38;
        v39 = *(v27 + 104);
        v55 = *(v27 + 88);
        v56 = v39;
        outlined init with take of Equatable(v61, v52);
        type metadata accessor for __JSONEncoder();
        v16 = swift_allocObject();
        *(v16 + 184) = 0u;
        *(v16 + 200) = 0u;
        *(v16 + 216) = 0u;
        v40 = v58;
        *(v16 + 120) = v57;
        *(v16 + 136) = v40;
        *(v16 + 152) = v59;
        v41 = v54;
        *(v16 + 56) = v53;
        *(v16 + 72) = v41;
        v42 = v56;
        *(v16 + 88) = v55;
        *(v16 + 16) = 0;
        *(v16 + 24) = 0;
        *(v16 + 32) = -1;
        *(v16 + 40) = 0;
        *(v16 + 48) = 0;
        v43 = v60;
        *(v16 + 104) = v42;
        *(v16 + 168) = v43;
        *(v16 + 176) = v27;

        outlined init with copy of JSONEncoder._Options(&v53, v51);
        outlined assign with take of CodingKey?(v52, v16 + 192);
      }
    }

    else
    {
      v28 = v17;
      outlined destroy of TermOfAddress?(&v53, &_ss9CodingKey_pSgMd);
    }

    outlined destroy of TermOfAddress?(&v62, &_ss9CodingKey_pSgMd);
    v65 = v16;
    *(&v54 + 1) = type metadata accessor for __JSONEncoder();
    *&v55 = lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(&lazy protocol witness table cache variable for type __JSONEncoder and conformance __JSONEncoder, type metadata accessor for __JSONEncoder);
    *&v53 = v16;

    v28(v48, v49, &v53);
    if (v26)
    {
      __swift_destroy_boxed_opaque_existential_1(&v53);
      $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v27, &v65);
      sub_1807A5C7C(v28);
    }

    __swift_destroy_boxed_opaque_existential_1(&v53);
    v44 = __JSONEncoder.takeValue()();
    if (v45 == 255)
    {
      v36 = MEMORY[0x1E69E7CC8];
    }

    else
    {
      v36 = v44;
    }

    $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v27, &v65);
    sub_1807A5C7C(v28);
  }

  else
  {
    (*(v9 + 16))(v46 - v13, a3, v8, v14);
    v19 = *(a4 - 8);
    if ((*(v19 + 48))(v15, 1, a4) == 1)
    {
      (*(v9 + 8))(v15, v8);
      v64 = 0;
      v62 = 0u;
      v63 = 0u;
    }

    else
    {
      *(&v63 + 1) = a4;
      v64 = v47;
      v22 = __swift_allocate_boxed_opaque_existential_0(&v62);
      (*(v19 + 32))(v22, v15, a4);
    }

    v23 = v50;
    outlined init with copy of FloatingPointRoundingRule?(&v62, &v53, &_ss9CodingKey_pSgMd);
    if (*(&v54 + 1))
    {
      outlined init with take of Equatable(&v53, v61);
      v24 = *(v16 + 184);
      if (v24)
      {
        *(v16 + 184) = 0;
        outlined destroy of TermOfAddress?(v24 + 192, &_ss9CodingKey_pSgMd);
        outlined init with take of Equatable(v61, v24 + 192);
        *(v24 + 176) = v16;
      }

      else
      {
        v29 = *(v16 + 136);
        v57 = *(v16 + 120);
        v58 = v29;
        v59 = *(v16 + 152);
        v60 = *(v16 + 168);
        v30 = *(v16 + 72);
        v53 = *(v16 + 56);
        v54 = v30;
        v31 = *(v16 + 104);
        v55 = *(v16 + 88);
        v56 = v31;
        outlined init with take of Equatable(v61, v52);
        type metadata accessor for __JSONEncoder();
        v24 = swift_allocObject();
        *(v24 + 184) = 0u;
        *(v24 + 200) = 0u;
        *(v24 + 216) = 0u;
        v32 = v58;
        *(v24 + 120) = v57;
        *(v24 + 136) = v32;
        *(v24 + 152) = v59;
        v33 = v54;
        *(v24 + 56) = v53;
        *(v24 + 72) = v33;
        v34 = v56;
        *(v24 + 88) = v55;
        *(v24 + 16) = 0;
        *(v24 + 24) = 0;
        *(v24 + 32) = -1;
        *(v24 + 40) = 0;
        *(v24 + 48) = 0;
        v35 = v60;
        *(v24 + 104) = v34;
        *(v24 + 168) = v35;
        *(v24 + 176) = v16;

        outlined init with copy of JSONEncoder._Options(&v53, v51);
        outlined assign with take of CodingKey?(v52, v24 + 192);
      }
    }

    else
    {
      outlined destroy of TermOfAddress?(&v53, &_ss9CodingKey_pSgMd);

      v24 = v16;
    }

    outlined destroy of TermOfAddress?(&v62, &_ss9CodingKey_pSgMd);
    v65 = v24;

    __JSONEncoder.unkeyedContainer()(&v53);

    specialized Data._Representation.withUnsafeBytes<A>(_:)(v48, v49, &v53);
    if (v23)
    {
      __swift_destroy_boxed_opaque_existential_1(&v53);
      $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v16, &v65);
    }

    __swift_destroy_boxed_opaque_existential_1(&v53);
    v36 = __JSONEncoder.takeValue()();
    $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v16, &v65);
  }

  return v36;
}

uint64_t NSLog(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return specialized withVaList<A>(_:_:)(a3);
}

uint64_t _CalendarICU.__deallocating_deinit()
{
  ucal_close();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t PredicateExpressions.NotEqual.description.getter()
{
  _StringGuts.grow(_:)(26);
  MEMORY[0x1865CB0E0](0x6C61757145746F4ELL, 0xEE00203A73686C28);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](0x203A736872202CLL, 0xE700000000000000);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x1865CB0E0](41, 0xE100000000000000);
  return 0;
}

unint64_t lazy protocol witness table accessor for type PredicateCodableError and conformance PredicateCodableError()
{
  result = lazy protocol witness table cache variable for type PredicateCodableError and conformance PredicateCodableError;
  if (!lazy protocol witness table cache variable for type PredicateCodableError and conformance PredicateCodableError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PredicateCodableError and conformance PredicateCodableError);
  }

  return result;
}

uint64_t *JSONEncoder.encode<A>(_:configuration:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4;
  v39 = *MEMORY[0x1E69E9840];
  v11 = *(v4 + 96);
  v37[4] = *(v4 + 80);
  v37[5] = v11;
  v37[6] = *(v4 + 112);
  v38 = *(v4 + 128);
  v12 = *(v4 + 32);
  v37[0] = *(v4 + 16);
  v37[1] = v12;
  v13 = *(v4 + 64);
  v37[2] = *(v4 + 48);
  v37[3] = v13;
  type metadata accessor for __JSONEncoder();
  memset(v32, 0, sizeof(v32));
  v33 = 0;
  v14 = swift_allocObject();
  *(v14 + 23) = 0u;
  *(v14 + 25) = 0u;
  *(v14 + 27) = 0u;
  v15 = *(v6 + 96);
  *(v14 + 15) = *(v6 + 80);
  *(v14 + 17) = v15;
  *(v14 + 19) = *(v6 + 112);
  v16 = *(v6 + 32);
  *(v14 + 7) = *(v6 + 16);
  *(v14 + 9) = v16;
  v17 = *(v6 + 64);
  *(v14 + 11) = *(v6 + 48);
  v14[2] = 0;
  v14[3] = 0;
  *(v14 + 32) = -1;
  v14[5] = 0;
  v14[6] = 0;
  v18 = *(v6 + 128);
  *(v14 + 13) = v17;
  v14[21] = v18;
  v14[22] = 0;
  outlined init with copy of JSONEncoder._Options(v37, &v34);
  outlined assign with take of CodingKey?(v32, (v14 + 24));
  v19 = specialized __JSONEncoder.wrapGeneric<A, B>(_:configuration:for:)(a1, a2, 0, 0, 0, 255, a3, a4);
  if (!v5)
  {
    v23 = v21;
    if (v21 != 0xFF)
    {
      v24 = v19;
      v25 = v20;
      (*(*v6 + 96))(&v34);
      v26 = v34;
      v34 = 0;
      LOBYTE(v35) = v26 & 1;
      BYTE1(v35) = (v26 & 2) != 0;
      BYTE2(v35) = (v26 & 8) != 0;
      v36 = MEMORY[0x1E69E7CC0];
      JSONWriter.serializeJSON(_:depth:)(v24, v25, v23, 0);
      outlined consume of JSONEncoderValue?(v24, v25, v23);
      v14 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSayAEG_Tt0g5Tf4g_n(v36);

      return v14;
    }

    v27 = type metadata accessor for EncodingError();
    swift_allocError();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_syp_s13EncodingErrorO7ContextVtMd);
    v29[3] = a3;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
    v34 = 0;
    v35 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v34 = 0x6576656C2D706F54;
    v35 = 0xEA0000000000206CLL;
    v31 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v31);

    v14 = &v34;
    MEMORY[0x1865CB0E0](0xD00000000000001BLL, 0x8000000181482320);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6B30], v27);
    swift_willThrow();
  }

  return v14;
}

uint64_t specialized __JSONEncoder.wrapGeneric<A, B>(_:configuration:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  if (a6 == -1)
  {
    v16 = 0;
    v17 = 0;
    v15 = 0;
    v41[1] = 0;
    v41[2] = 0;
  }

  else
  {
    v15 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    *(v16 + 24) = a4;
    *(v16 + 32) = a5;
    *(v16 + 40) = a6;
    v17 = &type metadata for _CodingKey;
  }

  v41[0] = v16;
  v41[3] = v17;
  v41[4] = v15;
  outlined init with copy of FloatingPointRoundingRule?(v41, &v32, &_ss9CodingKey_pSgMd);
  if (*(&v33 + 1))
  {
    outlined init with take of Equatable(&v32, v40);
    v18 = *(v8 + 184);
    if (v18)
    {
      *(v8 + 184) = 0;
      outlined copy of _CodingKey?(a3, a4, a5, a6);
      outlined destroy of TermOfAddress?(v18 + 192, &_ss9CodingKey_pSgMd);
      outlined init with take of Equatable(v40, v18 + 192);
      *(v18 + 176) = v8;
    }

    else
    {
      v19 = *(v8 + 136);
      v36 = *(v8 + 120);
      v37 = v19;
      v38 = *(v8 + 152);
      v39 = *(v8 + 168);
      v20 = *(v8 + 72);
      v32 = *(v8 + 56);
      v33 = v20;
      v21 = *(v8 + 104);
      v34 = *(v8 + 88);
      v35 = v21;
      outlined init with take of Equatable(v40, v31);
      type metadata accessor for __JSONEncoder();
      v18 = swift_allocObject();
      *(v18 + 184) = 0u;
      *(v18 + 200) = 0u;
      *(v18 + 216) = 0u;
      v22 = v37;
      *(v18 + 120) = v36;
      *(v18 + 136) = v22;
      *(v18 + 152) = v38;
      v23 = v33;
      *(v18 + 56) = v32;
      *(v18 + 72) = v23;
      v24 = v35;
      *(v18 + 88) = v34;
      *(v18 + 16) = 0;
      *(v18 + 24) = 0;
      *(v18 + 32) = -1;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      v25 = v39;
      *(v18 + 104) = v24;
      *(v18 + 168) = v25;
      *(v18 + 176) = v8;
      outlined copy of _CodingKey?(a3, a4, a5, a6);

      outlined init with copy of JSONEncoder._Options(&v32, v30);
      outlined assign with take of CodingKey?(v31, v18 + 192);
    }
  }

  else
  {
    outlined copy of _CodingKey?(a3, a4, a5, a6);
    outlined destroy of TermOfAddress?(&v32, &_ss9CodingKey_pSgMd);

    v18 = v8;
  }

  outlined destroy of TermOfAddress?(v41, &_ss9CodingKey_pSgMd);
  v42 = v18;
  *(&v33 + 1) = type metadata accessor for __JSONEncoder();
  *&v34 = lazy protocol witness table accessor for type __JSONEncoder and conformance __JSONEncoder(&lazy protocol witness table cache variable for type __JSONEncoder and conformance __JSONEncoder, type metadata accessor for __JSONEncoder);
  *&v32 = v18;
  v26 = *(a8 + 16);

  v26(&v32, a2, a7, a8);
  __swift_destroy_boxed_opaque_existential_1(&v32);
  if (!v29)
  {
    v18 = __JSONEncoder.takeValue()();
  }

  $defer #1 <A>() in __JSONEncoder.wrap<A>(_:for:)(v8, &v42);

  return v18;
}

uint64_t Predicate.encode(to:configuration:)(void *a1, uint64_t a2, uint64_t a3)
{
  v94 = a1;
  v5 = *(a3 + 16);
  v99 = 8 * v5;
  if (v5 == 1)
  {
    MetatypeMetadata = swift_getMetatypeMetadata();
  }

  else
  {
    MEMORY[0x1EEE9AC00](a1);
    if (v5)
    {
      v8 = *(a3 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v9 = (&v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
      v10 = v5;
      do
      {
        v8 += 8;
        *v9++ = swift_getMetatypeMetadata();
        --v10;
      }

      while (v10);
    }

    MetatypeMetadata = swift_getTupleTypeMetadata();
  }

  v92 = &v78;
  v80 = MetatypeMetadata;
  MEMORY[0x1EEE9AC00](MetatypeMetadata);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10Foundation29PredicateExpressionCodingKeysOGMd);
  v91 = &v78;
  v96 = v13;
  v90 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v95 = &v78 - v15;
  v98 = a3;
  if (v5 == 1)
  {
    TupleTypeMetadata = type metadata accessor for PredicateExpressions.Variable();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v14);
    if (v5)
    {
      v18 = *(v98 + 24) & 0xFFFFFFFFFFFFFFFELL;
      v19 = (&v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
      v20 = v5;
      do
      {
        v18 += 8;
        *v19++ = type metadata accessor for PredicateExpressions.Variable();
        --v20;
      }

      while (v20);
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
  }

  v97 = TupleTypeMetadata;
  v89 = &v78;
  v81 = *(TupleTypeMetadata - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata - 8);
  v22 = &v78 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = &v78;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v78 - v24;
  v87 = &v78;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v78 - v27;
  v29 = *(a2 + 8);
  v82 = *a2;
  v83 = v29;
  v113 = *(a2 + 16);
  __swift_project_boxed_opaque_existential_1(v94, v94[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v30 = v84;
  outlined init with copy of Hashable & Sendable(v84, v107);
  v79 = v109;
  v93 = v108;
  v94 = __swift_project_boxed_opaque_existential_1(v107, v108);
  v86 = &v78;
  v31 = MEMORY[0x1EEE9AC00](v94);
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF0;
  v34 = &v78 - v33;
  v35 = v30 + *(v98 + 36);
  v36 = v97;
  (*(v81 + 16))(v25, v35, v97, v31);
  if (v5)
  {
    v37 = (v36 + 4);
    v38 = (&v78 - v33);
    v39 = v5;
    do
    {
      if (v5 == 1)
      {
        v40 = 0;
        v41 = v28;
      }

      else
      {
        v40 = *v37;
        v41 = &v28[v40];
      }

      *&v28[v40] = *&v25[v40];
      *v38++ = v41;
      v37 += 4;
      --v39;
    }

    while (v39);
  }

  __swift_mutable_project_boxed_opaque_existential_1(v110, v111);
  lazy protocol witness table accessor for type PredicateExpressionCodingKeys and conformance PredicateExpressionCodingKeys();
  v42 = v95;
  v43 = dispatch thunk of UnkeyedEncodingContainer.nestedContainer<A>(keyedBy:)();
  MEMORY[0x1EEE9AC00](v43);
  v44 = (&v78 - v33);
  if (v5)
  {
    v45 = 0;
    v46 = (v97 + 4);
    v47 = v83;
    v48 = v82;
    do
    {
      if (v5 == 1)
      {
        v49 = 0;
      }

      else
      {
        v49 = *v46;
      }

      *&v22[v49] = **&v34[8 * v45];
      v44[v45++] = &v22[v49];
      v46 += 4;
    }

    while (v5 != v45);
    v97 = &v78;
    v104 = v48;
    v105 = v47;
    v106 = v113;
    MEMORY[0x1EEE9AC00](v48);
    v52 = &v78 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
    v53 = 0;
    v54 = *(v50 + 24) & 0xFFFFFFFFFFFFFFFELL;
    v56 = (v55 + 32);
    v57 = v94;
    v58 = v93;
    do
    {
      if (v5 == 1)
      {
        v59 = 0;
      }

      else
      {
        v59 = *v56;
      }

      v60 = &v12[v59];
      *v60 = *(v54 + 8 * v53);
      *&v52[8 * v53++] = v60;
      v56 += 4;
    }

    while (v5 != v53);
  }

  else
  {
    v97 = &v78;
    v104 = v82;
    v105 = v83;
    v52 = &v112;
    v106 = v113;
    v50 = v98;
    v57 = v94;
    v58 = v93;
  }

  v61 = *(v50 + 24);

  PredicateCodableConfiguration.allowInputs<each A>(_:)(v52, v5, v61);
  v103 = v58;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v101);
  (*(*(v58 - 8) + 16))(boxed_opaque_existential_0, v57, v58);
  __swift_project_boxed_opaque_existential_1(v101, v103);
  DynamicType = swift_getDynamicType();
  __swift_destroy_boxed_opaque_existential_1(v101);
  v64 = v104;
  v101[0] = v104;
  v101[1] = v105;
  v102 = v106;

  v65 = v85;
  v66 = ExpressionStructure.init(_:with:path:)(DynamicType, v101, MEMORY[0x1E69E7CC0]);
  if (v65)
  {
  }

  else
  {
    v98 = v68;
    v99 = v67;
    v85 = v66;
    LOBYTE(v100) = 0;
    v69 = KeyedEncodingContainer.nestedUnkeyedContainer(forKey:)();
    v84 = v61;
    if (v5)
    {
      v70 = v61 & 0xFFFFFFFFFFFFFFFELL;
      v71 = v5;
      do
      {
        v100 = **v44;
        __swift_mutable_project_boxed_opaque_existential_1(v101, v103);
        type metadata accessor for PredicateExpressions.Variable();
        swift_getWitnessTable();
        v69 = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        ++v44;
        v70 += 8;
        --v71;
      }

      while (v71);
      v64 = v104;
      v42 = v95;
      v57 = v94;
      v58 = v93;
    }

    v72 = v105;
    MEMORY[0x1EEE9AC00](v69);
    *(&v78 - 10) = v5;
    *(&v78 - 9) = v58;
    *(&v78 - 8) = v84;
    v73 = v79;
    *(&v78 - 7) = *(v79 + 8);
    *(&v78 - 6) = *(v73 + 24);
    *(&v78 - 5) = v42;
    v75 = v98;
    v74 = v99;
    *(&v78 - 4) = v85;
    *(&v78 - 3) = v74;
    *(&v78 - 2) = v75;
    *(&v78 - 1) = v57;
    specialized _withPredicateArchivingState<A>(_:_:)(v64, v72, v76, closure #1 in KeyedEncodingContainer<>._encode<A, B>(_:variable:predicateConfiguration:)partial apply);

    __swift_destroy_boxed_opaque_existential_1(v101);
  }

  (*(v90 + 8))(v42, v96);
  __swift_destroy_boxed_opaque_existential_1(v107);
  return __swift_destroy_boxed_opaque_existential_1(v110);
}

uint64_t specialized PredicateExpressions.NilLiteral.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v3);
  dispatch thunk of SingleValueEncodingContainer.encodeNil()();
  return __swift_destroy_boxed_opaque_existential_1(v2);
}

uint64_t protocol witness for _LocaleProtocol.scriptCode.getter in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.scriptCode.getter(&v1[4], &v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

uint64_t closure #1 in _LocaleICU.scriptCode.getter@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = *MEMORY[0x1E69E9840];
  if (*(a1 + 8) == 1)
  {
    memset(v47, 0, sizeof(v47));
    outlined destroy of Locale.Language.Components(v47);
    LODWORD(v43[0]) = 0;
    String.utf8CString.getter();
    Language = uloc_getLanguage();

    v4 = 0;
    v5 = 0;
    if (Language > 0)
    {
      v46[Language] = 0;
      v4 = MEMORY[0x1865CAEB0](v46);
      v5 = v6;
    }

    LODWORD(v43[0]) = 0;
    String.utf8CString.getter();
    Script = uloc_getScript();

    v8 = 0;
    v9 = 0;
    if (Script > 0)
    {
      v45[Script] = 0;
      v8 = MEMORY[0x1865CAEB0](v45);
      v9 = v10;
    }

    LODWORD(v43[0]) = 0;
    String.utf8CString.getter();
    Country = uloc_getCountry();

    v12 = 0;
    v13 = 0;
    if (Country > 0)
    {
      v44[Country] = 0;
      v12 = MEMORY[0x1865CAEB0](v44);
      v13 = v14;
    }

    if (v5)
    {
      v15 = String.lowercased()();
      object = v15._object;
      countAndFlagsBits = v15._countAndFlagsBits;
      v33 = v5;
      v34 = v4;
      if (v9)
      {
        goto LABEL_13;
      }
    }

    else
    {
      object = 0;
      countAndFlagsBits = 0;
      v33 = 0;
      v34 = 0;
      if (v9)
      {
LABEL_13:
        *&v43[0] = v8;
        *(&v43[0] + 1) = v9;

        String.init<A>(_:)();
        v16 = String._capitalized()();
        v17 = v16._countAndFlagsBits;
        v18 = v16._object;

        if (v13)
        {
LABEL_14:
          v19 = String.uppercased()();
          v20 = v19._countAndFlagsBits;
          v21 = v19._object;
          goto LABEL_20;
        }

LABEL_19:
        v12 = 0;
        v20 = 0;
        v21 = 0;
LABEL_20:
        outlined consume of Locale.LanguageCode?(0, 0);
        outlined consume of Locale.LanguageCode?(0, 0);
        outlined consume of Locale.LanguageCode?(0, 0);
        *&v37 = v34;
        *(&v37 + 1) = v33;
        *&v38 = countAndFlagsBits;
        *(&v38 + 1) = object;
        *&v39 = v8;
        *(&v39 + 1) = v9;
        *&v40 = v17;
        *(&v40 + 1) = v18;
        *&v41 = v12;
        *(&v41 + 1) = v13;
        *&v42 = v20;
        *(&v42 + 1) = v21;
        v23 = *(a1 + 48);
        v43[2] = *(a1 + 32);
        v43[3] = v23;
        v24 = *(a1 + 80);
        v43[4] = *(a1 + 64);
        v43[5] = v24;
        v25 = *(a1 + 16);
        v43[0] = *a1;
        v43[1] = v25;
        v26 = v42;
        *(a1 + 64) = v41;
        *(a1 + 80) = v26;
        v27 = v40;
        *(a1 + 32) = v39;
        *(a1 + 48) = v27;
        v28 = v38;
        *a1 = v37;
        *(a1 + 16) = v28;
        outlined init with copy of Locale.Language.Components(&v37, v36);
        outlined destroy of TermOfAddress?(v43, &_s10Foundation6LocaleV8LanguageV10ComponentsVSgMd);
        v29 = *(&v39 + 1);
        if (*(&v39 + 1))
        {
          v30 = v39;

          outlined destroy of Locale.Language.Components(&v37);

          result = outlined consume of Locale.LanguageCode?(v30, v29);
          *a2 = v30;
          a2[1] = v29;
        }

        else
        {
          result = outlined destroy of Locale.Language.Components(&v37);
          *a2 = 0;
          a2[1] = 0;
        }

        return result;
      }
    }

    v8 = 0;
    v17 = 0;
    v18 = 0;
    if (v13)
    {
      goto LABEL_14;
    }

    goto LABEL_19;
  }

  result = *(a1 + 40);
  if (result)
  {
    *a2 = *(a1 + 32);
    a2[1] = result;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void sub_180962DD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void protocol witness for _LocaleProtocol.measurementSystem.getter in conformance _LocaleICU(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 200);
  os_unfair_lock_lock((v3 + 536));
  partial apply for closure #1 in _LocaleICU.measurementSystem.getter((v3 + 16), a1);

  os_unfair_lock_unlock((v3 + 536));
}

uint64_t _NSSwiftURLComponents.rangeOfQuery.getter()
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *&v0[OBJC_IVAR____NSSwiftURLComponents_lock];
  os_unfair_lock_lock((v1 + 172));
  v2 = *(v1 + 128);
  v32 = *(v1 + 112);
  v33 = v2;
  v34[0] = *(v1 + 144);
  *(v34 + 10) = *(v1 + 154);
  v3 = *(v1 + 64);
  v28 = *(v1 + 48);
  v29 = v3;
  v4 = *(v1 + 96);
  v30 = *(v1 + 80);
  v31 = v4;
  v5 = *(v1 + 32);
  v26 = *(v1 + 16);
  v27 = v5;
  outlined init with copy of URLComponents(&v26, v24);
  os_unfair_lock_unlock((v1 + 172));
  v24[6] = v32;
  v24[7] = v33;
  v25[0] = v34[0];
  *(v25 + 10) = *(v34 + 10);
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v24[0] = v26;
  v24[1] = v27;
  if (v26)
  {
    if (BYTE8(v26))
    {
      v6 = *(v26 + 192);
      goto LABEL_9;
    }
  }

  else if (BYTE8(v26))
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v7 = URLComponents._URLComponents.computedString.getter();
  if (!v8)
  {
    goto LABEL_8;
  }

  v6 = 1;
  v9 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v7, v8, 1, 0);

  if (v9)
  {
    v6 = *(v9 + 192);
  }

LABEL_9:
  outlined destroy of URLComponents(&v26);
  v10 = [v0 string];
  if (!v10)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v10;
  isTaggedPointer = _objc_isTaggedPointer(v10);
  v13 = v11;
  v14 = v13;
  if (!isTaggedPointer)
  {
    goto LABEL_16;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v13);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_26;
    case 0x16:
      result = [v14 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      String.init(utf8String:)(result);
      if (v19)
      {
LABEL_27:

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_26:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v20)
      {
        [v14 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      if (v6)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
  }

LABEL_16:
  if (__CFStringIsCF())
  {

    goto LABEL_21;
  }

  v16 = v14;
  String.init(_nativeStorage:)();
  if (v17)
  {

    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  if (![v16 length])
  {

LABEL_21:
    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  String.init(_cocoaString:)();

  if (v6)
  {
LABEL_35:

    return 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_28:
  lazy protocol witness table accessor for type String and conformance String();
  v21 = StringProtocol._toUTF16Offsets(_:)();
  v23 = v22;

  if (__OFSUB__(v23, v21))
  {
    __break(1u);
  }

  return v21;
}

uint64_t _NSSwiftURLComponents.rangeOfPath.getter()
{
  v35 = *MEMORY[0x1E69E9840];
  v1 = *&v0[OBJC_IVAR____NSSwiftURLComponents_lock];
  os_unfair_lock_lock((v1 + 172));
  v2 = *(v1 + 128);
  v32 = *(v1 + 112);
  v33 = v2;
  v34[0] = *(v1 + 144);
  *(v34 + 10) = *(v1 + 154);
  v3 = *(v1 + 64);
  v28 = *(v1 + 48);
  v29 = v3;
  v4 = *(v1 + 96);
  v30 = *(v1 + 80);
  v31 = v4;
  v5 = *(v1 + 32);
  v26 = *(v1 + 16);
  v27 = v5;
  outlined init with copy of URLComponents(&v26, v24);
  os_unfair_lock_unlock((v1 + 172));
  v24[6] = v32;
  v24[7] = v33;
  v25[0] = v34[0];
  *(v25 + 10) = *(v34 + 10);
  v24[2] = v28;
  v24[3] = v29;
  v24[4] = v30;
  v24[5] = v31;
  v24[0] = v26;
  v24[1] = v27;
  if (v26)
  {
    if (BYTE8(v26))
    {
      v6 = *(v26 + 168);
      goto LABEL_9;
    }
  }

  else if (BYTE8(v26))
  {
LABEL_8:
    v6 = 1;
    goto LABEL_9;
  }

  v7 = URLComponents._URLComponents.computedString.getter();
  if (!v8)
  {
    goto LABEL_8;
  }

  v6 = 1;
  v9 = specialized static RFC3986Parser.parse(urlString:encodingInvalidCharacters:allowEmptyScheme:)(v7, v8, 1, 0);

  if (v9)
  {
    v6 = *(v9 + 168);
  }

LABEL_9:
  outlined destroy of URLComponents(&v26);
  v10 = [v0 string];
  if (!v10)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v10;
  isTaggedPointer = _objc_isTaggedPointer(v10);
  v13 = v11;
  v14 = v13;
  if (!isTaggedPointer)
  {
    goto LABEL_16;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v13);
  switch(TaggedPointerTag)
  {
    case 0:
      goto LABEL_26;
    case 0x16:
      result = [v14 UTF8String];
      if (!result)
      {
        __break(1u);
        return result;
      }

      String.init(utf8String:)(result);
      if (v19)
      {
LABEL_27:

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      __break(1u);
LABEL_26:
      _CFIndirectTaggedPointerStringGetContents();
      _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
      if (!v20)
      {
        [v14 mutableCopy];
        _bridgeAnyObjectToAny(_:)();

        swift_unknownObjectRelease();
        swift_dynamicCast();

        if (v6)
        {
          goto LABEL_35;
        }

        goto LABEL_28;
      }

      goto LABEL_27;
    case 2:
      MEMORY[0x1EEE9AC00](TaggedPointerTag);
      String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

      if (v6)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
  }

LABEL_16:
  if (__CFStringIsCF())
  {

    goto LABEL_21;
  }

  v16 = v14;
  String.init(_nativeStorage:)();
  if (v17)
  {

    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  if (![v16 length])
  {

LABEL_21:
    if (v6)
    {
      goto LABEL_35;
    }

    goto LABEL_28;
  }

  String.init(_cocoaString:)();

  if (v6)
  {
LABEL_35:

    return 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_28:
  lazy protocol witness table accessor for type String and conformance String();
  v21 = StringProtocol._toUTF16Offsets(_:)();
  v23 = v22;

  if (__OFSUB__(v23, v21))
  {
    __break(1u);
  }

  return v21;
}

uint64_t URL.debugDescription.getter()
{
  v1 = *(v0 + 8);
  ObjectType = swift_getObjectType();
  return (*(v1 + 424))(ObjectType, v1);
}

id String.init(localized:defaultValue:table:bundle:locale:comment:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, unint64_t *a7, uint64_t *a8)
{
  v84 = *MEMORY[0x1E69E9840];
  v10 = *a4;
  v12 = *a8;
  v11 = a8[1];
  StaticString.description.getter();
  v77 = MEMORY[0x1E69E7CC0];
  v78 = 0;
  swift_unknownObjectRetain();
  v73 = v11;
  v13 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSaySS10FoundationE17LocalizationValueV14FormatArgumentVG_AJs5NeverOTg506_sSS10d3E17ef43V25argumentsWithReplacements_6localeSayAC14gH40VGSays7CVarArg_pGSg_AA6LocaleVtFA2GXEfU_s16IndexingIteratorVySays0tU0_pGGAF0X0VTf1cn_nTf4nng_n(v10, &v77, v12, v11);

  swift_unknownObjectRelease();
  if (a7)
  {
    v14 = a7;
  }

  else
  {
    v14 = [objc_opt_self() mainBundle];
  }

  v15 = a7;
  v16 = String._bridgeToObjectiveCImpl()();

  v17 = String._bridgeToObjectiveCImpl()();
  if (a6)
  {
    v18 = String._bridgeToObjectiveCImpl()();
  }

  else
  {
    v18 = 0;
  }

  v19 = [v14 _localizedStringForKey_value_table_localizations_];
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  if (!v19)
  {

    v24 = 0;
    goto LABEL_17;
  }

  isTaggedPointer = _objc_isTaggedPointer(v19);
  v21 = v19;
  v22 = v21;
  if ((isTaggedPointer & 1) == 0)
  {
LABEL_13:
    LOBYTE(v83[0]) = 0;
    v77 = 0;
    LOBYTE(v75[0]) = 0;
    if (__CFStringIsCF())
    {
      v25 = v73;
      if (!v77)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v56 = v22;
      v57 = String.init(_nativeStorage:)();
      v25 = v73;
      if (v58)
      {
        v24 = v57;

        v26 = v13[2];
        if (!v26)
        {
          goto LABEL_94;
        }

        goto LABEL_18;
      }

      v77 = [v56 length];
      if (!v77)
      {

        goto LABEL_62;
      }
    }

    v24 = String.init(_cocoaString:)();

LABEL_93:
    v26 = v13[2];
    if (!v26)
    {
      goto LABEL_94;
    }

    goto LABEL_18;
  }

  TaggedPointerTag = _objc_getTaggedPointerTag(v21);
  if (TaggedPointerTag)
  {
    if (TaggedPointerTag != 22)
    {
      if (TaggedPointerTag == 2)
      {
        MEMORY[0x1EEE9AC00](TaggedPointerTag);
        v24 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

        goto LABEL_17;
      }

      goto LABEL_13;
    }

    result = [v22 UTF8String];
    if (result)
    {
      result = String.init(utf8String:)(result);
      v25 = v73;
      if (v63)
      {
        v24 = result;

        goto LABEL_93;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_105:
    __break(1u);
    return result;
  }

  LOWORD(v75[0]) = 0;
  _CFIndirectTaggedPointerStringGetContents();
  v64 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
  if (v65)
  {
    v24 = v64;

LABEL_17:
    v25 = v73;
    v26 = v13[2];
    if (!v26)
    {
      goto LABEL_94;
    }

    goto LABEL_18;
  }

  [v22 mutableCopy];
  _bridgeAnyObjectToAny(_:)();

  swift_unknownObjectRelease();
  swift_dynamicCast();
  v24 = *&v83[0];

  v26 = v13[2];
  v25 = v73;
  if (!v26)
  {
    goto LABEL_94;
  }

LABEL_18:
  v72 = v15;
  v74 = MEMORY[0x1E69E7CC0];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26, 0);
  v14 = v74;
  v27 = (v13 + 4);
  do
  {
    outlined init with copy of String.LocalizationValue.FormatArgument(v27, &v77);
    _sSS10FoundationE17LocalizationValueV14FormatArgumentV7resolve10attributed4with9includings7CVarArg_p6vararg_AE15_AttributeFixupOSg11attrStrInfotSb_AA6LocaleVxmtAA0M5ScopeRzlFAA0M6ScopesO0A10AttributesV_Tt3B5(v83, v75, 0, v12, v25);
    outlined destroy of String.LocalizationValue.FormatArgument(&v77);
    outlined consume of String.LocalizationValue.FormatArgument._AttributeFixup?(v75[0], v75[1], v76);
    v29 = v74[2];
    v28 = v74[3];
    if (v29 >= v28 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
    }

    v74[2] = v29 + 1;
    outlined init with take of Equatable(v83, &v74[5 * v29 + 4]);
    v27 += 112;
    --v26;
  }

  while (v26);

  type metadata accessor for __VaListBuilder();
  v30 = swift_allocObject();
  v30[2] = 8;
  v30[3] = 0;
  v13 = v30 + 3;
  v30[4] = 0;
  v30[5] = 0;
  v25 = v74[2];
  swift_unknownObjectRetain();

  if (v25)
  {
    v12 = 0;
    v15 = 40;
    while (1)
    {
      __swift_project_boxed_opaque_existential_1(&v74[5 * v12 + 4], v74[5 * v12 + 7]);
      v31 = dispatch thunk of CVarArg._cVarArgEncoding.getter();
      v22 = *v13;
      v32 = *(v31 + 16);
      v33 = __OFADD__(*v13, v32);
      v34 = *v13 + v32;
      if (v33)
      {
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
      }

      v35 = v30[4];
      if (v35 >= v34)
      {
        goto LABEL_39;
      }

      if (v35 + 0x4000000000000000 < 0)
      {
        goto LABEL_101;
      }

      v36 = v30[5];
      if (2 * v35 > v34)
      {
        v34 = 2 * v35;
      }

      v30[4] = v34;
      if ((v34 - 0x1000000000000000) >> 61 != 7)
      {
        goto LABEL_102;
      }

      v37 = v31;
      v38 = swift_slowAlloc();
      v39 = v38;
      v30[5] = v38;
      if (v36)
      {
        break;
      }

      v31 = v37;
      v15 = 40;
      if (!v39)
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

LABEL_40:
      v41 = *(v31 + 16);
      if (v41)
      {
        v42 = (v31 + 32);
        v43 = *v13;
        while (1)
        {
          v44 = *v42++;
          *&v39[8 * v43] = v44;
          v43 = *v13 + 1;
          if (__OFADD__(*v13, 1))
          {
            break;
          }

          *v13 = v43;
          if (!--v41)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
LABEL_61:

LABEL_62:
        v24 = 0;
        v26 = v13[2];
        if (!v26)
        {
LABEL_94:

          swift_unknownObjectRelease();
          swift_bridgeObjectRelease_n();
          goto LABEL_99;
        }

        goto LABEL_18;
      }

LABEL_24:

      if (++v12 == v25)
      {
        goto LABEL_47;
      }
    }

    if (v38 != v36 || v38 >= &v36[8 * v22])
    {
      memmove(v38, v36, 8 * v22);
    }

    __VaListBuilder.deallocStorage(wordCount:storage:)();
    v31 = v37;
    v15 = 40;
LABEL_39:
    v39 = v30[5];
    if (!v39)
    {
      goto LABEL_46;
    }

    goto LABEL_40;
  }

LABEL_47:
  v45 = __VaListBuilder.va_list()();
  v46 = objc_opt_self();
  v47 = String._bridgeToObjectiveCImpl()();
  ObjectType = swift_getObjectType();
  v49 = (*(v73 + 488))(ObjectType);
  v77 = 0;
  v78 = 0;
  v79 = 256;
  v80 = 0;
  v81 = 0;
  v82 = 0;
  v50 = String.LocalizationOptions._nsOptions.getter();
  v51 = [v46 _stringWithFormat_locale_options_arguments_];

  swift_unknownObjectRelease();
  LODWORD(v46) = _objc_isTaggedPointer(v51);
  v52 = v51;
  v53 = v52;
  if (!v46)
  {
LABEL_52:
    LOBYTE(v83[0]) = 0;
    v77 = 0;
    LOBYTE(v75[0]) = 0;
    IsCF = __CFStringIsCF();
    if (IsCF)
    {
      if (v77)
      {
        if (v75[0])
        {
          if (LOBYTE(v83[0]) != 1)
          {
            IsCF = [v53 lengthOfBytesUsingEncoding_];
          }

          MEMORY[0x1EEE9AC00](IsCF);
          v69 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
          v71 = HIBYTE(v70) & 0xF;
          if ((v70 & 0x2000000000000000) == 0)
          {
            v71 = v69 & 0xFFFFFFFFFFFFLL;
          }

          if (v71)
          {
            v24 = v69;
            goto LABEL_76;
          }
        }

LABEL_96:
        v24 = String.init(_cocoaString:)();
        goto LABEL_97;
      }
    }

    else
    {
      v59 = v53;
      v60 = String.init(_nativeStorage:)();
      if (v61)
      {
        v24 = v60;

        goto LABEL_98;
      }

      v77 = [v59 length];
      if (v77)
      {
        goto LABEL_96;
      }
    }

    v24 = 0;
    goto LABEL_98;
  }

  v54 = _objc_getTaggedPointerTag(v52);
  if (!v54)
  {
    goto LABEL_74;
  }

  if (v54 == 22)
  {
    result = [v53 UTF8String];
    if (!result)
    {
      goto LABEL_105;
    }

    v66 = String.init(utf8String:)(result);
    if (v67)
    {
LABEL_75:
      v24 = v66;
LABEL_76:

LABEL_97:
      goto LABEL_98;
    }

    __break(1u);
LABEL_74:
    LOWORD(v75[0]) = 0;
    _CFIndirectTaggedPointerStringGetContents();
    v66 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
    if (!v68)
    {
      [v53 mutableCopy];
      _bridgeAnyObjectToAny(_:)();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      v24 = *&v83[0];
      goto LABEL_97;
    }

    goto LABEL_75;
  }

  if (v54 != 2)
  {
    goto LABEL_52;
  }

  MEMORY[0x1EEE9AC00](v54);
  v24 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

LABEL_98:

  swift_bridgeObjectRelease_n();
  swift_unknownObjectRelease_n();
  swift_bridgeObjectRelease_n();

LABEL_99:

  return v24;
}

unint64_t lazy protocol witness table accessor for type IndexSet.RangeView and conformance IndexSet.RangeView()
{
  result = lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView;
  if (!lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView;
  if (!lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView;
  if (!lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IndexSet.RangeView and conformance IndexSet.RangeView);
  }

  return result;
}

uint64_t URLRequest.description.getter()
{
  v1 = *(*v0 + 16);
  v2 = [v1 URL];
  if (v2)
  {
    v3 = v2;
    if (_foundation_swift_nsurl_feature_enabled())
    {
      type metadata accessor for _NSSwiftURL();
      v4 = swift_dynamicCastClass();
      if (v4)
      {
        v5 = v4;
        type metadata accessor for _BridgedNSSwiftURL();
        *(swift_allocObject() + 16) = v5;
        v6 = v3;
        _BridgedNSSwiftURL.convertingFileReference()();
        v8 = v7;

LABEL_9:
        ObjectType = swift_getObjectType();
        v9 = (*(v8 + 416))(ObjectType, v8);
        swift_unknownObjectRelease();
        return v9;
      }

      v14 = type metadata accessor for _BridgedURL();
      v15 = objc_allocWithZone(v14);
      *&v15[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v3;
      v20.receiver = v15;
      v12 = v3;
      v13 = objc_msgSendSuper2(&v20, sel_init, v20.receiver, v14, v21.receiver, v21.super_class);
    }

    else
    {
      v10 = type metadata accessor for _BridgedURL();
      v11 = objc_allocWithZone(v10);
      *&v11[OBJC_IVAR____TtC10Foundation11_BridgedURL__url] = v3;
      v21.receiver = v11;
      v12 = v3;
      v13 = objc_msgSendSuper2(&v21, sel_init, v20.receiver, v20.super_class, v21.receiver, v10);
    }

    v16 = v13;
    _BridgedURL.convertingFileReference()();
    v8 = v17;

    goto LABEL_9;
  }

  return 0x6C696E203A6C7275;
}

void closure #1 in _FileManagerImpl.createSymbolicLink(atPath:withDestinationPath:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (!a1)
  {

    if (_foundation_swift_url_feature_enabled())
    {

      v13 = specialized String.withFileSystemRepresentation<A>(_:)(a2, a3, a2, a3);
      v15 = v14;

      v28 = 3;
      type metadata accessor for _SwiftURL();
      v27[0] = 0;
      v27[1] = 0;
      swift_allocObject();
      _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v13, v15, 0, &v28, v27);
      v16 = _SwiftURL.convertingFileReference()();
      v18 = v17;
    }

    else
    {
      v19 = (specialized BidirectionalCollection.last.getter(a2, a3) & 0x1FF) == 47;
      objc_allocWithZone(type metadata accessor for _BridgedURL());

      v20 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a2, a3, v19);
      if (!v20)
      {

        v23 = String._bridgeToObjectiveCImpl()();
        goto LABEL_11;
      }

      v21 = v20;
      v16 = _BridgedURL.convertingFileReference()();
      v18 = v22;
    }

    v23 = String._bridgeToObjectiveCImpl()();
    if (v16)
    {
      ObjectType = swift_getObjectType();
      v25 = (*(v18 + 432))(ObjectType, v18);
      swift_unknownObjectRelease();
LABEL_12:
      [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
      swift_unknownObjectRelease();

      swift_willThrow();
      return;
    }

LABEL_11:
    v25 = 0;
    goto LABEL_12;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    MEMORY[0x1EEE9AC00](Strong);
    v26[2] = a5;
    v26[3] = a6;
    v26[4] = a1;
    v26[5] = a2;
    v26[6] = a3;
    specialized NSFileManager.withFileSystemRepresentation<A>(for:_:)(a5, a6, partial apply for closure #1 in closure #1 in _FileManagerImpl.createSymbolicLink(atPath:withDestinationPath:), v26);
  }

  else
  {
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t closure #1 in closure #1 in _FileManagerImpl.createSymbolicLink(atPath:withDestinationPath:)(const char *a1, unint64_t a2, unint64_t a3, char *a4, unint64_t a5, unint64_t a6)
{
  v97 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    result = symlink(a1, a4);
    if (!result)
    {
      return result;
    }

    v9 = MEMORY[0x1865CA7A0]();
    if (v9 > 27)
    {
      if (v9 <= 62)
      {
        if (v9 != 28)
        {
          if (v9 == 30)
          {
            v27 = 642;
            goto LABEL_32;
          }

          goto LABEL_31;
        }
      }

      else
      {
        if (v9 == 63)
        {
          v27 = 514;
          goto LABEL_32;
        }

        if (v9 != 69)
        {
          if (v9 == 102)
          {
            v10 = 0;
            v11 = 512;
            goto LABEL_96;
          }

LABEL_31:
          v27 = 512;
LABEL_32:
          if ((POSIXErrorCode.init(rawValue:)() & 0x100000000) != 0)
          {
LABEL_116:
            _StringGuts.grow(_:)(22);

            v87 = dispatch thunk of CustomStringConvertible.description.getter();
            MEMORY[0x1865CB0E0](v87);

            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          isTaggedPointer = _objc_isTaggedPointer(@"NSPOSIXErrorDomain");
          v29 = @"NSPOSIXErrorDomain";
          v30 = v29;
          v90 = isTaggedPointer;
          v88 = a5;
          v89 = v27;
          if (isTaggedPointer)
          {
            TaggedPointerTag = _objc_getTaggedPointerTag(v29);
            if (TaggedPointerTag)
            {
              if (TaggedPointerTag != 22)
              {
                if (TaggedPointerTag == 2)
                {
                  MEMORY[0x1EEE9AC00](TaggedPointerTag);
                  String.init(unsafeUninitializedCapacity:initializingUTF8With:)();

                  goto LABEL_51;
                }

                goto LABEL_38;
              }

              v34 = [(__CFString *)v30 UTF8String];
              if (!v34)
              {
                __break(1u);
LABEL_114:
                __break(1u);
                goto LABEL_115;
              }

              String.init(utf8String:)(v34);
              if (v35)
              {
                goto LABEL_39;
              }

              __break(1u);
            }

            v93 = 0;
            _CFIndirectTaggedPointerStringGetContents();
            _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
            if (v36)
            {
              goto LABEL_39;
            }

            [(__CFString *)v30 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            goto LABEL_51;
          }

LABEL_38:
          LOBYTE(v91) = 0;
          v95 = 0;
          LOBYTE(v93) = 0;
          v94 = 0;
          if (__CFStringIsCF())
          {
LABEL_39:

            goto LABEL_51;
          }

          v32 = v30;
          String.init(_nativeStorage:)();
          if (!v33 && (v95 = [(__CFString *)v32 length]) != 0)
          {
            String.init(_cocoaString:)();
          }

          else
          {
          }

LABEL_51:
          v37 = POSIXErrorCode.rawValue.getter();
          v38 = objc_allocWithZone(NSError);
          v39 = String._bridgeToObjectiveCImpl()();

          v10 = [v38 initWithDomain:v39 code:v37 userInfo:_NativeDictionary.bridged()()];
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
          v40 = [v10 domain];
          if (!v40)
          {
LABEL_61:
            v46 = 0;
            v48 = 0xE000000000000000;
            goto LABEL_72;
          }

          v41 = v40;
          v42 = _objc_isTaggedPointer(v40);
          v43 = v41;
          v44 = v43;
          if ((v42 & 1) == 0)
          {
            goto LABEL_57;
          }

          v45 = _objc_getTaggedPointerTag(v43);
          if (v45)
          {
            if (v45 != 22)
            {
              if (v45 == 2)
              {
                MEMORY[0x1EEE9AC00](v45);
                v46 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                v48 = v47;

LABEL_72:
                v56 = v30;
                v57 = v56;
                if (!v90)
                {
LABEL_77:
                  LOBYTE(v91) = 0;
                  v95 = 0;
                  LOBYTE(v93) = 0;
                  v94 = 0;
                  if (__CFStringIsCF())
                  {

LABEL_81:
                    v59 = 0;
                    v61 = 0xE000000000000000;
                    goto LABEL_91;
                  }

                  v62 = v57;
                  v63 = String.init(_nativeStorage:)();
                  if (v64)
                  {
                    v59 = v63;
                    v61 = v64;

                    goto LABEL_91;
                  }

                  v95 = [(__CFString *)v62 length];
                  if (!v95)
                  {

                    goto LABEL_81;
                  }

                  v59 = String.init(_cocoaString:)();
                  v61 = v68;
LABEL_91:
                  if (v46 == v59 && v48 == v61)
                  {
                  }

                  else
                  {
                    v69 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if ((v69 & 1) == 0)
                    {
                      __break(1u);
                    }
                  }

                  a5 = v88;
                  v11 = v89;
LABEL_96:

                  if (_foundation_swift_url_feature_enabled())
                  {

                    v70 = specialized String.withFileSystemRepresentation<A>(_:)(a5, a6, a5, a6);
                    v72 = v71;

                    LOBYTE(v91) = 3;
                    type metadata accessor for _SwiftURL();
                    v95 = 0;
                    v96 = 0;
                    swift_allocObject();
                    _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v70, v72, 0, &v91, &v95);
                    v73 = _SwiftURL.convertingFileReference()();
                    v75 = v74;
                  }

                  else
                  {
                    v76 = (specialized BidirectionalCollection.last.getter(a5, a6) & 0x1FF) == 47;
                    v77 = objc_allocWithZone(type metadata accessor for _BridgedURL());

                    v78 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a5, a6, v76);
                    if (!v78)
                    {

                      v81 = String._bridgeToObjectiveCImpl()();
                      goto LABEL_107;
                    }

                    v79 = v78;
                    v73 = _BridgedURL.convertingFileReference()();
                    v75 = v80;
                  }

                  v81 = String._bridgeToObjectiveCImpl()();
                  if (v73)
                  {
                    ObjectType = swift_getObjectType();
                    v83 = (*(v75 + 432))(ObjectType, v75);
                    swift_unknownObjectRelease();
                    if (v10)
                    {
LABEL_102:
                      v95 = v10;
                      lazy protocol witness table accessor for type POSIXError and conformance POSIXError();
                      v10 = v10;
                      v84 = _getErrorEmbeddedNSError<A>(_:)();

                      if (v84)
                      {
                      }

                      else
                      {
                        swift_allocError();
                        *v85 = v10;
                      }

                      v86 = _swift_stdlib_bridgeErrorToNSError();
                      goto LABEL_109;
                    }

LABEL_108:
                    v86 = 0;
LABEL_109:
                    [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
                    swift_unknownObjectRelease();

                    return swift_willThrow();
                  }

LABEL_107:
                  v83 = 0;
                  if (v10)
                  {
                    goto LABEL_102;
                  }

                  goto LABEL_108;
                }

                v58 = _objc_getTaggedPointerTag(v56);
                if (!v58)
                {
                  goto LABEL_85;
                }

                if (v58 != 22)
                {
                  if (v58 == 2)
                  {
                    MEMORY[0x1EEE9AC00](v58);
                    v59 = String.init(unsafeUninitializedCapacity:initializingUTF8With:)();
                    v61 = v60;

                    goto LABEL_91;
                  }

                  goto LABEL_77;
                }

                v65 = [(__CFString *)v57 UTF8String];
                if (v65)
                {
                  v66 = String.init(utf8String:)(v65);
                  if (v67)
                  {
                    goto LABEL_86;
                  }

                  __break(1u);
LABEL_85:
                  v93 = 0;
                  _CFIndirectTaggedPointerStringGetContents();
                  v66 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
                  if (!v67)
                  {
                    [(__CFString *)v57 mutableCopy];
                    _bridgeAnyObjectToAny(_:)();

                    swift_unknownObjectRelease();
                    swift_dynamicCast();
                    v59 = v91;
                    v61 = v92;
                    goto LABEL_91;
                  }

LABEL_86:
                  v59 = v66;
                  v61 = v67;

                  goto LABEL_91;
                }

                goto LABEL_114;
              }

LABEL_57:
              LOBYTE(v91) = 0;
              v95 = 0;
              LOBYTE(v93) = 0;
              v94 = 0;
              if (__CFStringIsCF())
              {

                goto LABEL_61;
              }

              v49 = v44;
              v50 = String.init(_nativeStorage:)();
              if (v51)
              {
                v46 = v50;
                v48 = v51;

                goto LABEL_72;
              }

              v95 = [v49 length];
              if (!v95)
              {

                goto LABEL_61;
              }

              v46 = String.init(_cocoaString:)();
              v48 = v55;
LABEL_71:

              goto LABEL_72;
            }

            v52 = [v44 UTF8String];
            if (!v52)
            {
LABEL_115:
              __break(1u);
              goto LABEL_116;
            }

            v53 = String.init(utf8String:)(v52);
            if (v54)
            {
LABEL_66:
              v46 = v53;
              v48 = v54;

              goto LABEL_71;
            }

            __break(1u);
          }

          v93 = 0;
          _CFIndirectTaggedPointerStringGetContents();
          v53 = _SwiftCreateImmortalString_ForFoundation(buffer:isASCII:)();
          if (!v54)
          {
            [v44 mutableCopy];
            _bridgeAnyObjectToAny(_:)();

            swift_unknownObjectRelease();
            swift_dynamicCast();
            v46 = v91;
            v48 = v92;
            goto LABEL_71;
          }

          goto LABEL_66;
        }
      }

      v27 = 640;
      goto LABEL_32;
    }

    if (v9 > 12)
    {
      if (v9 != 13)
      {
        if (v9 == 17)
        {
          v27 = 516;
          goto LABEL_32;
        }

        goto LABEL_31;
      }
    }

    else if (v9 != 1)
    {
      if (v9 == 2)
      {
        v27 = 4;
        goto LABEL_32;
      }

      goto LABEL_31;
    }

    v27 = 513;
    goto LABEL_32;
  }

  if (_foundation_swift_url_feature_enabled())
  {

    v14 = specialized String.withFileSystemRepresentation<A>(_:)(a2, a3, a2, a3);
    v16 = v15;

    LOBYTE(v91) = 3;
    type metadata accessor for _SwiftURL();
    v95 = 0;
    v96 = 0;
    swift_allocObject();
    _SwiftURL.init(filePath:pathStyle:directoryHint:relativeTo:)(v14, v16, 0, &v91, &v95);
    v17 = _SwiftURL.convertingFileReference()();
    v19 = v18;
  }

  else
  {
    v20 = (specialized BidirectionalCollection.last.getter(a2, a3) & 0x1FF) == 47;
    objc_allocWithZone(type metadata accessor for _BridgedURL());

    v21 = _BridgedURL.init(fileURLWithPath:isDirectory:)(a2, a3, v20);
    if (!v21)
    {

      v24 = String._bridgeToObjectiveCImpl()();
      goto LABEL_28;
    }

    v22 = v21;
    v17 = _BridgedURL.convertingFileReference()();
    v19 = v23;
  }

  v24 = String._bridgeToObjectiveCImpl()();
  if (!v17)
  {
LABEL_28:
    v26 = 0;
    goto LABEL_29;
  }

  v25 = swift_getObjectType();
  v26 = (*(v19 + 432))(v25, v19);
  swift_unknownObjectRelease();
LABEL_29:
  [objc_opt_self() _cocoaErrorWithCode_path_url_underlying_variant_source_destination_];
  swift_unknownObjectRelease();

  return swift_willThrow();
}

double specialized _PlistDecoder.unwrapFloatingPoint<A, B>(from:for:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v14 = *v6;
  v28[0] = a3;
  v28[1] = a4;
  v28[2] = a5;
  v29 = a6;
  v15 = *(v14 + 80);
  v16 = *(v14 + 88);
  if ((*(v16 + 40))(a1, v15, v16))
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    *v18 = MEMORY[0x1E69E63B0];
    if (a6 == -1)
    {
      _CodingPathNode.path.getter(a2);
    }

    else
    {
      outlined copy of _CodingKey(a3, a4, a5, a6);
      _CodingPathNode.path.getter(a2);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      *(inited + 56) = &type metadata for _CodingKey;
      *(inited + 64) = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
      v21 = swift_allocObject();
      *(inited + 32) = v21;
      *(v21 + 16) = a3;
      *(v21 + 24) = a4;
      *(v21 + 32) = a5;
      *(v21 + 40) = a6;
      specialized Array.append<A>(contentsOf:)(inited);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6B08], v17);
    swift_willThrow();
  }

  else
  {
    v22 = v7[3];
    v23 = *(v16 + 80);
    v24 = lazy protocol witness table accessor for type Double and conformance Double();
    v25 = lazy protocol witness table accessor for type _CodingKey and conformance _CodingKey();
    swift_unknownObjectRetain();
    v23(&v30, a1, v22, a2, v28, MEMORY[0x1E69E63B0], &type metadata for _CodingKey, v24, v25, v15, v16);
    swift_unknownObjectRelease();
    if (!v27)
    {
      return v30;
    }
  }

  return result;
}

char *static FormatStyle<>.iso8601.getter@<X0>(_OWORD *a1@<X8>)
{
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  v4 = *(&xmmword_1ED440468 + 1);
  v3 = xmmword_1ED440468;
  BYTE4(v55) = 1;
  *(&v55 + 1) = 0;
  v57 = xmmword_1ED440468;
  LODWORD(v55) = 0x10000;
  v5 = one-time initialization token for cache;
  swift_unknownObjectRetain_n();
  if (v5 != -1)
  {
    swift_once();
  }

  v6 = qword_1ED440450;
  os_unfair_lock_lock((qword_1ED440450 + 24));
  v7 = *(v6 + 16);
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(7), (v9 & 1) != 0))
  {
    v47 = *(*(v7 + 56) + 16 * v8);
    v10 = *(*(v7 + 56) + 16 * v8);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v6 + 24));
    if (v10)
    {
LABEL_41:
      v56 = v47;
      v52 = v3;
      v53 = v4;
      result = Calendar.timeZone.setter(&v52);
      v43 = v56;
      *a1 = v55;
      a1[1] = v43;
      a1[2] = v57;
      return result;
    }
  }

  else
  {
    os_unfair_lock_unlock((v6 + 24));
  }

  v11 = type metadata accessor for _CalendarGregorian();
  v12 = lazy protocol witness table accessor for type _CalendarGregorian and conformance _CalendarGregorian();
  v54 = 7;
  v52 = 0;
  v53 = 0;
  v51[0] = 0;
  v51[1] = 0;
  v49 = 0;
  v50 = 1;
  v13 = protocol witness for _CalendarProtocol.init(identifier:timeZone:locale:firstWeekday:minimumDaysInFirstWeek:gregorianStartDate:) in conformance _CalendarGregorian(&v54, &v52, v51, 0, 1, 0, 1, &v49);
  os_unfair_lock_lock((v6 + 24));
  v14 = *(v6 + 16);
  if (*(v14 + 16))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(7);
    if (v16)
    {
      v17 = *(*(v14 + 56) + 16 * v15);
LABEL_40:
      v47 = v17;
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v6 + 24));

      goto LABEL_41;
    }
  }

  v48 = v4;
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v52 = *(v6 + 16);
  v19 = v52;
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(7);
  v22 = *(v19 + 16);
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    v1 = v21;
    if (*(v19 + 24) < v25)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, isUniquelyReferenced_nonNull_native);
      v26 = v52;
      v20 = specialized __RawDictionaryStorage.find<A>(_:)(7);
      if ((v1 & 1) == (v27 & 1))
      {
        goto LABEL_19;
      }

      v20 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v26 = v19;
LABEL_19:
      v4 = v48;
      if (v1)
      {
LABEL_20:
        v28 = (*(v26 + 56) + 16 * v20);
        *v28 = v13;
        v28[1] = v12;
        swift_unknownObjectRelease();
LABEL_39:
        *(v6 + 16) = v26;
        *&v17 = v13;
        *(&v17 + 1) = v12;
        goto LABEL_40;
      }

LABEL_38:
      specialized _NativeDictionary._insert(at:key:value:)(v20, 7, v13, v26, v11, v12);
      goto LABEL_39;
    }
  }

  v44 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation8CalendarV10IdentifierOAC01_D8Protocol_pGMd);
  v29 = static _DictionaryStorage.copy(original:)();
  v26 = v29;
  if (!*(v19 + 16))
  {
LABEL_37:

    v20 = v44;
    v4 = v48;
    if (v1)
    {
      goto LABEL_20;
    }

    goto LABEL_38;
  }

  result = (v29 + 64);
  v31 = (v19 + 64);
  v32 = ((1 << *(v26 + 32)) + 63) >> 6;
  if (v26 != v19 || result >= &v31[8 * v32])
  {
    result = memmove(result, v31, 8 * v32);
  }

  v33 = 0;
  *(v26 + 16) = *(v19 + 16);
  v34 = 1 << *(v19 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  v36 = v35 & *(v19 + 64);
  v37 = (v34 + 63) >> 6;
  v45 = v37;
  if (v36)
  {
    do
    {
      v38 = __clz(__rbit64(v36));
      v46 = (v36 - 1) & v36;
LABEL_35:
      v41 = v38 | (v33 << 6);
      v42 = *(*(v19 + 56) + 16 * v41);
      *(*(v26 + 48) + v41) = *(*(v19 + 48) + v41);
      *(*(v26 + 56) + 16 * v41) = v42;
      result = swift_unknownObjectRetain();
      v37 = v45;
      v36 = v46;
    }

    while (v46);
  }

  v39 = v33;
  while (1)
  {
    v33 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v33 >= v37)
    {
      goto LABEL_37;
    }

    v40 = *(v19 + 64 + 8 * v33);
    ++v39;
    if (v40)
    {
      v38 = __clz(__rbit64(v40));
      v46 = (v40 - 1) & v40;
      goto LABEL_35;
    }
  }

  __break(1u);
  return result;
}

Swift::String __swiftcall Date.ISO8601FormatStyle.format(_:)(Foundation::Date a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *v1;
  v4 = v2[1];
  v24[0] = *v2;
  v24[1] = v4;
  v24[2] = v2[2];
  v5 = BYTE8(v24[0]);
  if (*(&v24[0] + 1))
  {
    if ((BYTE8(v24[0]) & 5) != 1)
    {
      v6 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v5 = 59;
  }

  v6 = 3;
LABEL_6:
  v7 = v6 | 0x40000;
  v8 = v6 & 0xFFFFFFFFFFFFFFFBLL | (4 * (((v5 & 2) >> 1) & 1));
  v9 = v8 | 0x1800;
  if ((v5 & 4) == 0)
  {
    v9 = v8;
  }

  if ((v5 & 2) != 0)
  {
    v10 = v8 | 8;
  }

  else
  {
    v10 = v7;
  }

  v11 = v8 | 0x1880;
  if ((v5 & 4) == 0)
  {
    v11 = v10;
  }

  if ((v5 & 8) == 0)
  {
    v11 = v9;
  }

  if ((v5 & 0x10) != 0)
  {
    if ((~v11 & 0x70) != 0)
    {
      v11 |= 0x70uLL;
    }

    if (BYTE1(v24[0]))
    {
      v11 |= 0x2000uLL;
    }
  }

  v23 = v2[1];
  __dst[0] = v2[1];
  v21[0] = v11;
  v22 = v3;
  outlined init with copy of Calendar(&v23, __src);
  Calendar._dateComponents(_:from:)(v21, &v22, __src);
  swift_unknownObjectRelease();
  memcpy(__dst, __src, 0x11BuLL);
  if ((v5 & 0x20) != 0)
  {
    __src[0] = v2[2];
    v13 = *(&__src[0] + 1);
    ObjectType = swift_getObjectType();
    v22 = v3;
    v15 = *(v13 + 40);
    outlined init with copy of TimeZone(__src, v21);
    v12 = v15(&v22, ObjectType, v13);
    outlined destroy of TimeZone(__src);
  }

  else
  {
    v12 = 0;
  }

  LOBYTE(v22) = 0;
  closure #1 in DateComponents.ISO8601FormatStyle.format(_:appendingTimeZoneOffset:)(v25, 129, v24, __dst, &v22, v12, (v5 & 0x20) == 0, v21);
  v16 = v21[0];
  v17 = v21[1];
  outlined destroy of DateComponents(__dst);
  v18 = v16;
  v19 = v17;
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

uint64_t closure #1 in DateComponents.ISO8601FormatStyle.format(_:appendingTimeZoneOffset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t *a8@<X8>)
{
  if (!result)
  {
    goto LABEL_154;
  }

  v10 = a3;
  v11 = a2;
  v12 = result;
  v46 = 0;
  v14 = *(a3 + 8);
  if (!v14)
  {
LABEL_9:
    if (*(a4 + 56))
    {
      result = 1970;
    }

    else
    {
      result = *(a4 + 48);
    }

    if ((*(a4 + 40) & 1) == 0 && !*(a4 + 32))
    {
      v15 = __OFSUB__(1, result);
      result = 1 - result;
      if (v15)
      {
        goto LABEL_138;
      }
    }

    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_21;
    }

    if (a2 < 1)
    {
LABEL_145:
      __break(1u);
      goto LABEL_146;
    }

    *v12 = 45;
    v46 = 1;
    v15 = __OFSUB__(0, result);
    result = -result;
    if (!v15)
    {
LABEL_21:
      result = OutputBuffer<A>.append(_:zeroPad:)(result, 4);
      *a5 = 1;
      if (v14 && (v14 & 2) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_23;
    }

    __break(1u);
LABEL_20:
    result = *(a4 + 272);
    goto LABEL_21;
  }

  if (v14)
  {
    if ((v14 & 4) != 0 && (*(a4 + 280) & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_9;
  }

  if ((v14 & 2) == 0)
  {
    goto LABEL_33;
  }

  if (*a5 != 1)
  {
    goto LABEL_29;
  }

LABEL_23:
  if (v10[3])
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      goto LABEL_29;
    }
  }

  else
  {
  }

  if (v46 >= v11)
  {
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v12[v46++] = 45;
LABEL_29:
  if (*(a4 + 72))
  {
    v17 = 1;
  }

  else
  {
    v17 = *(a4 + 64);
  }

  result = OutputBuffer<A>.append(_:zeroPad:)(v17, 2);
  *a5 = 1;
  if (!v14)
  {
    goto LABEL_52;
  }

LABEL_33:
  if ((v14 & 4) != 0)
  {
    if (*a5 != 1)
    {
      goto LABEL_44;
    }

    if (v10[3])
    {
      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    else
    {
    }

    if (v46 >= v11)
    {
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v12[v46++] = 45;
LABEL_44:
    if (v46 >= v11)
    {
LABEL_134:
      __break(1u);
      goto LABEL_135;
    }

    if (*(a4 + 264))
    {
      v19 = 1;
    }

    else
    {
      v19 = *(a4 + 256);
    }

    v12[v46++] = 87;
    result = OutputBuffer<A>.append(_:zeroPad:)(v19, 2);
    *a5 = 1;
    if ((v14 & 8) != 0)
    {
      goto LABEL_52;
    }

    goto LABEL_49;
  }

  if ((v14 & 8) != 0)
  {
    if (*a5 != 1)
    {
LABEL_60:
      if ((v14 & 2) == 0)
      {
        if (*(a4 + 104))
        {
          result = 1;
        }

        else
        {
          result = *(a4 + 96);
        }

        v21 = 3;
LABEL_74:
        result = OutputBuffer<A>.append(_:zeroPad:)(result, v21);
        *a5 = 1;
        if (!v14 || (v14 & 0x10) != 0)
        {
LABEL_76:
          if (v10[4])
          {
            if (v46 >= v11)
            {
LABEL_146:
              __break(1u);
              goto LABEL_147;
            }

            v23 = 84;
          }

          else
          {
            if (v46 >= v11)
            {
LABEL_147:
              __break(1u);
LABEL_148:
              __break(1u);
              goto LABEL_149;
            }

            v23 = 32;
          }

          v12[v46++] = v23;
LABEL_82:
          v43 = a6;
          v44 = a8;
          if (*(a4 + 120))
          {
            v24 = 0;
          }

          else
          {
            v24 = *(a4 + 112);
          }

          v25 = v10;
          if (*(a4 + 136))
          {
            v26 = 0;
          }

          else
          {
            v26 = *(a4 + 128);
          }

          if (*(a4 + 152))
          {
            v27 = 0;
          }

          else
          {
            v27 = *(a4 + 144);
          }

          v28 = v25;
          v29 = *v25;
          result = OutputBuffer<A>.append(_:zeroPad:)(v24, 2);
          if (v29)
          {
            OutputBuffer<A>.append(_:zeroPad:)(v26, 2);
          }

          else
          {
            if (v46 >= v11)
            {
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
              goto LABEL_141;
            }

            v12[v46] = 58;
            v47 = v46 + 1;
            result = OutputBuffer<A>.append(_:zeroPad:)(v26, 2);
            if (v47 >= v11)
            {
LABEL_141:
              __break(1u);
              goto LABEL_142;
            }

            v12[v47] = 58;
            v46 = v47 + 1;
          }

          result = OutputBuffer<A>.append(_:zeroPad:)(v27, 2);
          v10 = v28;
          v30 = v28[1];
          a8 = v44;
          a6 = v43;
          if (v30)
          {
            v31 = *(a4 + 160) / 1000000.0;
            if (*(a4 + 168))
            {
              v31 = 0.0;
            }

            v32 = trunc(v31);
            if ((*&v32 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_140;
            }

            if (v32 <= -9.22337204e18)
            {
LABEL_142:
              __break(1u);
              goto LABEL_143;
            }

            if (v32 >= 9.22337204e18)
            {
LABEL_143:
              __break(1u);
              goto LABEL_144;
            }

            if (v46 >= v11)
            {
LABEL_144:
              __break(1u);
              goto LABEL_145;
            }

            v12[v46++] = 46;
            result = OutputBuffer<A>.append(_:zeroPad:)(v32, 3);
          }

          *a5 = 1;
          if (!v14)
          {
            goto LABEL_106;
          }

          goto LABEL_105;
        }

        goto LABEL_105;
      }

      goto LABEL_65;
    }

LABEL_52:
    if (v10[3])
    {
      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v20 & 1) == 0)
      {
        if (!v14)
        {
LABEL_65:
          if (*(a4 + 88))
          {
            result = 1;
          }

          else
          {
            result = *(a4 + 80);
          }

LABEL_73:
          v21 = 2;
          goto LABEL_74;
        }

LABEL_59:
        if ((v14 & 4) != 0)
        {
          v22 = *(a4 + 176);
          if (v22 >= 10)
          {
            v22 = 10;
          }

          if (*(a4 + 184))
          {
            v22 = 1;
          }

          result = v22 - 1;
          if (__OFSUB__(v22, 1))
          {
            goto LABEL_148;
          }

          goto LABEL_73;
        }

        goto LABEL_60;
      }
    }

    else
    {
    }

    if (v46 >= v11)
    {
LABEL_136:
      __break(1u);
      goto LABEL_137;
    }

    v12[v46++] = 45;
    if (!v14)
    {
      goto LABEL_65;
    }

    goto LABEL_59;
  }

LABEL_49:
  if ((v14 & 0x10) != 0)
  {
    if (*a5 != 1)
    {
      goto LABEL_82;
    }

    goto LABEL_76;
  }

LABEL_105:
  if ((v14 & 0x20) == 0)
  {
    goto LABEL_109;
  }

LABEL_106:
  if ((a7 & 1) != 0 || !a6 || (a6 - 64800) <= 0xFFFFFFFFFFFE05C0)
  {
    if (v46 >= v11)
    {
LABEL_135:
      __break(1u);
      goto LABEL_136;
    }

    v12[v46++] = 90;
  }

  else
  {
    if (a6 < 0)
    {
      if (v46 >= v11)
      {
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
        goto LABEL_155;
      }

      v37 = a6;
      v35 = v11;
      v34 = -v37;
      v36 = 45;
    }

    else
    {
      if (v46 >= v11)
      {
LABEL_151:
        __break(1u);
        goto LABEL_152;
      }

      LOWORD(v34) = a6;
      v35 = v11;
      v36 = 43;
    }

    v12[v46] = v36;
    v38 = v34 % 0xE10u / 0x3C;
    v39 = v34 % 0xE10u % 0x3C;
    ++v46;
    OutputBuffer<A>.append(_:zeroPad:)(v34 / 0xE10u, 2);
    v40 = v10[2];
    if (v40)
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {
        result = OutputBuffer<A>.append(_:zeroPad:)(v38, 2);
        v11 = v35;
        if (!v39)
        {
          goto LABEL_109;
        }

        goto LABEL_127;
      }
    }

    else
    {
    }

    if (v46 >= v35)
    {
LABEL_150:
      __break(1u);
      goto LABEL_151;
    }

    v12[v46++] = 58;
    result = OutputBuffer<A>.append(_:zeroPad:)(v38, 2);
    v11 = v35;
    if (v39)
    {
      if ((v40 & 1) == 0)
      {

        goto LABEL_130;
      }

LABEL_127:
      v42 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v42 & 1) == 0)
      {
LABEL_132:
        result = OutputBuffer<A>.append(_:zeroPad:)(v39, 2);
        goto LABEL_109;
      }

LABEL_130:
      if (v46 >= v11)
      {
LABEL_152:
        __break(1u);
        goto LABEL_153;
      }

      v12[v46++] = 58;
      goto LABEL_132;
    }
  }

LABEL_109:
  if (v46 >= v11)
  {
    __break(1u);
    goto LABEL_134;
  }

  v12[v46] = 0;
  result = MEMORY[0x1865CAEB0](v12);
  if (v33)
  {
    *a8 = result;
    a8[1] = v33;
    return result;
  }

LABEL_155:
  __break(1u);
  return result;
}

unint64_t OutputBuffer<A>.append(_:zeroPad:)(unint64_t result, uint64_t a2)
{
  v66[1] = *MEMORY[0x1E69E9840];
  if (result <= 9)
  {
    if (!__OFSUB__(a2, 1))
    {
      if (a2 - 1 < 1)
      {
        goto LABEL_37;
      }

      v3 = v2[2];
      v4 = *v2;
      if (v3 <= v2[1])
      {
        v5 = v2[1];
      }

      else
      {
        v5 = v2[2];
      }

      v6 = v5 - v3;
      if (a2 - 2 < (v5 - v3))
      {
        v6 = a2 - 2;
      }

      v7 = v6 + 1;
      if (v7 >= 0x21)
      {
        v24 = v7 & 0x1F;
        if ((v7 & 0x1F) == 0)
        {
          v24 = 32;
        }

        v8 = v7 - v24;
        v9 = v3 + v8;
        v25 = (v3 + v4 + 16);
        *&v26 = 0x3030303030303030;
        *(&v26 + 1) = 0x3030303030303030;
        v27 = v8;
        do
        {
          *(v25 - 1) = v26;
          *v25 = v26;
          v25 += 2;
          v27 -= 32;
        }

        while (v27);
      }

      else
      {
        v8 = 0;
        v9 = v2[2];
      }

      v28 = v8 + v3 - v5;
      v29 = ~v8 + a2;
      while (v28)
      {
        *(v4 + v9++) = 48;
        ++v28;
        if (!--v29)
        {
          v2[2] = v9;
LABEL_37:
          if (result >= -128)
          {
            v30 = v2[2];
            if (v30 < v2[1])
            {
              *(*v2 + v30) = result + 48;
              v31 = v30 + 1;
              goto LABEL_86;
            }

LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
            goto LABEL_96;
          }

LABEL_92:
          __break(1u);
          goto LABEL_93;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
    }

    __break(1u);
    goto LABEL_92;
  }

  if (result > 0x63)
  {
    if (result > 0x3E7)
    {
      if (result >> 4 > 0x270)
      {
        v65 = specialized closure #1 in numericStringRepresentationForBinaryInteger<A>(words:isSigned:)(v66, 1, result, 1u);
        MEMORY[0x1EEE9AC00](v65);
        specialized String.withUTF8<A>(_:)(partial apply for closure #1 in OutputBuffer<A>.append(_:zeroPad:));
      }

      if (!__OFSUB__(a2, 4))
      {
        v32 = v2[2];
        if (a2 - 4 >= 1)
        {
          v33 = *v2;
          v34 = v2[1];
          if (v32 > v34)
          {
            v34 = v2[2];
          }

          v35 = v34 - v32;
          if (a2 - 5 < (v34 - v32))
          {
            v35 = a2 - 5;
          }

          v36 = v35 + 1;
          if (v36 >= 0x21)
          {
            v55 = v36 & 0x1F;
            if ((v36 & 0x1F) == 0)
            {
              v55 = 32;
            }

            v37 = v36 - v55;
            v38 = v32 + v37;
            v56 = (v32 + v33 + 16);
            *&v57 = 0x3030303030303030;
            *(&v57 + 1) = 0x3030303030303030;
            v58 = v37;
            do
            {
              *(v56 - 1) = v57;
              *v56 = v57;
              v56 += 2;
              v58 -= 32;
            }

            while (v58);
          }

          else
          {
            v37 = 0;
            v38 = v2[2];
          }

          v59 = v37 + v32 - v34;
          v60 = a2 - v37 - 4;
          v32 = v38;
          do
          {
            if (!v59)
            {
              goto LABEL_90;
            }

            *(v33 + v32++) = 48;
            ++v59;
            --v60;
          }

          while (v60);
          v2[2] = v32;
        }

        v61 = v2[1];
        if (v32 < v61)
        {
          v62 = *v2;
          *(*v2 + v32) = result / 0x3E8 + 48;
          v2[2] = v32 + 1;
          if (v32 + 1 < v61)
          {
            v63 = result % 0x3E8;
            *(v62 + v32 + 1) = (v63 / 0x64u) | 0x30;
            v2[2] = v32 + 2;
            if (v32 + 2 < v61)
            {
              v64 = v63 % 0x64u;
              *(v62 + v32 + 2) = (v64 / 0xAu) | 0x30;
              v2[2] = v32 + 3;
              if (v32 + 3 < v61)
              {
                *(v62 + v32 + 3) = (v64 % 0xAu) | 0x30;
                v31 = v32 + 4;
                goto LABEL_86;
              }

LABEL_105:
              __break(1u);
            }

LABEL_104:
            __break(1u);
            goto LABEL_105;
          }

LABEL_103:
          __break(1u);
          goto LABEL_104;
        }

LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

    if (!__OFSUB__(a2, 3))
    {
      v17 = v2[2];
      if (a2 - 3 >= 1)
      {
        v18 = *v2;
        v19 = v2[1];
        if (v17 > v19)
        {
          v19 = v2[2];
        }

        v20 = v19 - v17;
        if (a2 - 4 < (v19 - v17))
        {
          v20 = a2 - 4;
        }

        v21 = v20 + 1;
        if (v21 >= 0x21)
        {
          v47 = v21 & 0x1F;
          if ((v21 & 0x1F) == 0)
          {
            v47 = 32;
          }

          v22 = v21 - v47;
          v23 = v17 + v22;
          v48 = (v17 + v18 + 16);
          *&v49 = 0x3030303030303030;
          *(&v49 + 1) = 0x3030303030303030;
          v50 = v22;
          do
          {
            *(v48 - 1) = v49;
            *v48 = v49;
            v48 += 2;
            v50 -= 32;
          }

          while (v50);
        }

        else
        {
          v22 = 0;
          v23 = v2[2];
        }

        v51 = v22 + v17 - v19;
        v52 = a2 - v22 - 3;
        v17 = v23;
        do
        {
          if (!v51)
          {
            goto LABEL_89;
          }

          *(v18 + v17++) = 48;
          ++v51;
          --v52;
        }

        while (v52);
        v2[2] = v17;
      }

      v53 = v2[1];
      if (v17 < v53)
      {
        v54 = *v2;
        *(*v2 + v17) = (result / 0x64) | 0x30;
        v2[2] = v17 + 1;
        if (v17 + 1 < v53)
        {
          *(v54 + v17 + 1) = (result % 0x64 / 0xA) | 0x30;
          v2[2] = v17 + 2;
          if (v17 + 2 < v53)
          {
            *(v54 + v17 + 2) = (result % 0x64 % 0xA) | 0x30;
            v31 = v17 + 3;
            goto LABEL_86;
          }

          goto LABEL_100;
        }

LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
        goto LABEL_101;
      }

LABEL_98:
      __break(1u);
      goto LABEL_99;
    }

LABEL_97:
    __break(1u);
    goto LABEL_98;
  }

  if (__OFSUB__(a2, 2))
  {
    goto LABEL_94;
  }

  v10 = v2[2];
  if (a2 - 2 >= 1)
  {
    v11 = *v2;
    v12 = v2[1];
    if (v10 > v12)
    {
      v12 = v2[2];
    }

    v13 = v12 - v10;
    if (a2 - 3 < (v12 - v10))
    {
      v13 = a2 - 3;
    }

    v14 = v13 + 1;
    if (v14 >= 0x21)
    {
      v39 = v14 & 0x1F;
      if ((v14 & 0x1F) == 0)
      {
        v39 = 32;
      }

      v15 = v14 - v39;
      v16 = v10 + v15;
      v40 = (v10 + v11 + 16);
      *&v41 = 0x3030303030303030;
      *(&v41 + 1) = 0x3030303030303030;
      v42 = v15;
      do
      {
        *(v40 - 1) = v41;
        *v40 = v41;
        v40 += 2;
        v42 -= 32;
      }

      while (v42);
    }

    else
    {
      v15 = 0;
      v16 = v2[2];
    }

    v43 = v15 + v10 - v12;
    v44 = a2 - v15 - 2;
    v10 = v16;
    do
    {
      if (!v43)
      {
        goto LABEL_88;
      }

      *(v11 + v10++) = 48;
      ++v43;
      --v44;
    }

    while (v44);
    v2[2] = v10;
  }

  v45 = v2[1];
  if (v10 >= v45)
  {
    goto LABEL_95;
  }

  v46 = *v2;
  *(*v2 + v10) = (result / 0xA) | 0x30;
  v2[2] = v10 + 1;
  if (v10 + 1 >= v45)
  {
LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  *(v46 + v10 + 1) = (result % 0xA) | 0x30;
  v31 = v10 + 2;
LABEL_86:
  v2[2] = v31;
  return result;
}

uint64_t protocol witness for FormatStyle.format(_:) in conformance Date.ISO8601FormatStyle@<X0>(Swift::String *a1@<X8>, Foundation::Date a2@<D0>)
{
  v4 = Date.ISO8601FormatStyle.format(_:)(a2);
  result = v4._countAndFlagsBits;
  *a1 = v4;
  return result;
}

uint64_t protocol witness for _LocaleProtocol.currencySymbol.getter in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.currencySymbol.getter(&v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

void _compatEncodeValueOfObjCType(objc_class *a1, int a2, const char **a3, const char *a4)
{
  if (a2 <= 80)
  {
    if (a2 > 63)
    {
      if (a2 > 66)
      {
        if (a2 != 67)
        {
          if (a2 != 73 && a2 != 76)
          {
LABEL_93:
            v35 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: unknown type encoding ('%c')", _NSMethodExceptionProem(a1, a4), a2), 0}];
            objc_exception_throw(v35);
          }

          goto LABEL_37;
        }

LABEL_39:
        v16 = *(a1 + 11);
        *(a1 + 11) = v16 + 1;
        if (v16 > 0x27)
        {
          v8 = [NSString stringWithFormat:@"$%ld", v16];
        }

        else
        {
          v8 = generic_keys[v16];
        }

        v17 = *a3;
        goto LABEL_55;
      }

      if (a2 != 64)
      {
        if (a2 != 66)
        {
          goto LABEL_93;
        }

        v13 = *(a1 + 11);
        *(a1 + 11) = v13 + 1;
        if (v13 > 0x27)
        {
          v14 = [NSString stringWithFormat:@"$%ld", v13];
        }

        else
        {
          v14 = generic_keys[v13];
        }

        if (*a3)
        {
          v33 = MEMORY[0x1E695E4D0];
        }

        else
        {
          v33 = MEMORY[0x1E695E4C0];
        }

        v34 = *v33;

        addValueToTopContainerE(a1, v14, v34);
        return;
      }

      v25 = *(a1 + 11);
      *(a1 + 11) = v25 + 1;
      if (v25 > 0x27)
      {
        v26 = [NSString stringWithFormat:@"$%ld", v25];
      }

      else
      {
        v26 = generic_keys[v25];
      }

      v29 = *a3;
      v30 = a1;
LABEL_79:

      _encodeObject(v30, v26, v29, 0);
      return;
    }

    if (a2 > 41)
    {
      if (a2 != 42)
      {
        if (a2 != 58)
        {
          goto LABEL_93;
        }

        value = NSCopyStringFromSelector(*a3);
        v9 = *(a1 + 11);
        *(a1 + 11) = v9 + 1;
        if (v9 > 0x27)
        {
          v10 = [NSString stringWithFormat:@"$%ld", v9];
        }

        else
        {
          v10 = generic_keys[v9];
        }

        _encodeObject(a1, v10, value, 0);

        return;
      }
    }

    else
    {
      if (a2 == 35)
      {
        _NSCoderCheckPotentiallyMangledClassNameAndWarn(*a3, 1);
        v23 = *(a1 + 11);
        *(a1 + 11) = v23 + 1;
        if (v23 > 0x27)
        {
          v21 = [NSString stringWithFormat:@"$%ld", v23];
        }

        else
        {
          v21 = generic_keys[v23];
        }

        v24 = NSStringFromClass(*a3);
        goto LABEL_68;
      }

      if (a2 != 37)
      {
        goto LABEL_93;
      }

      v6 = _NSMethodExceptionProem(a1, a4);
      NSLog(@"%@: warning: NXAtom being encoded -- will not be decoded uniqued", v6);
    }

    v20 = *(a1 + 11);
    *(a1 + 11) = v20 + 1;
    if (v20 > 0x27)
    {
      v21 = [NSString stringWithFormat:@"$%ld", v20];
    }

    else
    {
      v21 = generic_keys[v20];
    }

    v24 = [NSString stringWithUTF8String:*a3];
LABEL_68:
    v29 = v24;
    v30 = a1;
    v26 = v21;
    goto LABEL_79;
  }

  if (a2 > 101)
  {
    if (a2 <= 107)
    {
      if (a2 == 102)
      {
        v27 = *(a1 + 11);
        *(a1 + 11) = v27 + 1;
        if (v27 > 0x27)
        {
          v28 = [NSString stringWithFormat:@"$%ld", v27];
        }

        else
        {
          v28 = generic_keys[v27];
        }

        v32 = *a3;

        _encodeFloat(a1, v28, v32);
        return;
      }

      if (a2 != 105)
      {
        goto LABEL_93;
      }
    }

    else if (a2 != 108)
    {
      if (a2 != 113)
      {
        if (a2 != 115)
        {
          goto LABEL_93;
        }

        goto LABEL_21;
      }

      goto LABEL_43;
    }

LABEL_37:
    v15 = *(a1 + 11);
    *(a1 + 11) = v15 + 1;
    if (v15 > 0x27)
    {
      v8 = [NSString stringWithFormat:@"$%ld", v15];
    }

    else
    {
      v8 = generic_keys[v15];
    }

    v17 = *a3;
LABEL_55:

    _encodeInt32(a1, v8, v17);
    return;
  }

  if (a2 <= 98)
  {
    if (a2 != 81)
    {
      if (a2 != 83)
      {
        goto LABEL_93;
      }

LABEL_21:
      v7 = *(a1 + 11);
      *(a1 + 11) = v7 + 1;
      if (v7 > 0x27)
      {
        v8 = [NSString stringWithFormat:@"$%ld", v7];
      }

      else
      {
        v8 = generic_keys[v7];
      }

      v17 = *a3;
      goto LABEL_55;
    }

LABEL_43:
    v18 = *(a1 + 11);
    *(a1 + 11) = v18 + 1;
    if (v18 > 0x27)
    {
      v19 = [NSString stringWithFormat:@"$%ld", v18];
    }

    else
    {
      v19 = generic_keys[v18];
    }

    v22 = *a3;

    _encodeInt64(a1, v19, v22);
    return;
  }

  if (a2 == 99)
  {
    goto LABEL_39;
  }

  if (a2 != 100)
  {
    goto LABEL_93;
  }

  v11 = *(a1 + 11);
  *(a1 + 11) = v11 + 1;
  if (v11 > 0x27)
  {
    v12 = [NSString stringWithFormat:@"$%ld", v11];
  }

  else
  {
    v12 = generic_keys[v11];
  }

  v31 = *a3;

  _encodeDouble(a1, v12, *&v31);
}

void _startElementNs(uint64_t a1, void *key, char *__s, void *a4, int a5, uint64_t a6, int a7, int a8, uint64_t a9)
{
  v83 = *MEMORY[0x1E69E9840];
  if (a1 && (*(a1 + 120) & 1) != 0)
  {
    return;
  }

  v73 = *(a1 + 8);
  v78 = *(a1 + 40);
  if (__s && (v16 = strlen(__s)) != 0)
  {
    v17 = v16;
    Value = 0;
    if (key)
    {
      if ((v78 & 4) != 0)
      {
        Value = CFDictionaryGetValue(*(a1 + 64), key);
        if (!Value)
        {
          Value = __SlowPathNSXMLParserNSStringFromBytes(*(a1 + 64), key);
        }
      }
    }

    v18 = strlen(key);
    v19 = _cachedColonSeparatedStringFromPrefixAndSuffix(__s, v17, key, v18, a1);
  }

  else
  {
    if (key)
    {
      v19 = CFDictionaryGetValue(*(a1 + 64), key);
      v20 = v78;
      Value = v19;
      if (!v19)
      {
        v19 = __SlowPathNSXMLParserNSStringFromBytes(*(a1 + 64), key);
        Value = v19;
      }

      goto LABEL_15;
    }

    Value = 0;
    v19 = 0;
  }

  v20 = v78;
LABEL_15:
  v74 = v19;
  v21 = 0;
  if (a4)
  {
    if ((v20 & 4) != 0)
    {
      v21 = CFDictionaryGetValue(*(a1 + 64), a4);
      if (!v21)
      {
        v21 = __SlowPathNSXMLParserNSStringFromBytes(*(a1 + 64), a4);
      }
    }
  }

  v72 = v21;
  v22 = a7 + a5;
  if (a7 + a5 < 0)
  {
    v68 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", 2 * v22);
    v69 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D920] reason:v68 userInfo:0];
    CFRelease(v68);
    objc_exception_throw(v69);
  }

  v76 = v70;
  if (v22)
  {
    v23 = 2 * v22;
  }

  else
  {
    v23 = 1;
  }

  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v70[-v25];
  v82 = 0;
  if (v27 >= 0x101)
  {
    v26 = _CFCreateArrayStorage();
    v77 = v26;
  }

  else
  {
    v77 = 0;
  }

  v80 = &v26[8 * v22];
  v81 = v26;
  v28 = &stru_1EEEFDF90;
  if (!v22)
  {
    v29 = 0;
    v79 = 0;
    if ((v20 & 8) == 0)
    {
      goto LABEL_58;
    }

LABEL_57:
    [a1 _pushNamespaces:{v79, v24}];
    goto LABEL_58;
  }

  if ((v20 & 8) != 0)
  {
    v79 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:a5];
  }

  else
  {
    v79 = 0;
  }

  if (!a5)
  {
    v29 = 0;
    if ((v20 & 8) == 0)
    {
      goto LABEL_58;
    }

    goto LABEL_57;
  }

  v71 = a7;
  v29 = 0;
  v30 = 0;
  v31 = 2 * a5;
  do
  {
    v32 = *(a6 + 8 * v30);
    if (v32)
    {
      if ((v20 & 8) != 0)
      {
        v33 = CFDictionaryGetValue(*(a1 + 64), *(a6 + 8 * v30));
        if (!v33)
        {
          v33 = __SlowPathNSXMLParserNSStringFromBytes(*(a1 + 64), v32);
        }
      }

      else
      {
        v33 = 0;
      }

      v35 = strlen(*(a6 + 8 * v30));
      v34 = _cachedColonSeparatedStringFromPrefixAndSuffix("xmlns", 5uLL, *(a6 + 8 * v30), v35, a1);
    }

    else
    {
      v34 = @"xmlns";
      v33 = &stru_1EEEFDF90;
    }

    v36 = a6 + 8 * v30;
    v37 = *(v36 + 8);
    if (!v37)
    {
      v39 = &stru_1EEEFDF90;
      if ((v20 & 8) == 0)
      {
        goto LABEL_51;
      }

LABEL_50:
      [v79 setObject:v39 forKey:v33];
      goto LABEL_51;
    }

    v38 = CFDictionaryGetValue(*(a1 + 64), *(v36 + 8));
    if (!v38)
    {
      v38 = __SlowPathNSXMLParserNSStringFromBytes(*(a1 + 64), v37);
    }

    if (v38)
    {
      v39 = v38;
    }

    else
    {
      v39 = &stru_1EEEFDF90;
    }

    if ((v20 & 8) != 0)
    {
      goto LABEL_50;
    }

LABEL_51:
    if ((v20 & 4) == 0)
    {
      v40 = v80;
      *&v81[8 * v29] = v34;
      *&v40[8 * v29++] = v39;
    }

    v30 += 2;
  }

  while (v30 < v31);
  a7 = v71;
  if ((v20 & 8) != 0)
  {
    goto LABEL_57;
  }

LABEL_58:

  if (a7)
  {
    v41 = 5 * a7;
    v42 = (a9 + 24);
    v43 = 3;
    while (1)
    {
      v44 = *(v42 - 3);
      if (v44)
      {
        break;
      }

LABEL_80:
      v59 = v43 + 2;
      v43 += 5;
      v42 += 5;
      if (v59 >= v41)
      {
        goto LABEL_81;
      }
    }

    v45 = *(v42 - 2);
    if (v45)
    {
      v46 = strlen(*(v42 - 2));
      if (v46)
      {
        v47 = v46;
        v48 = strlen(v44);
        v49 = _cachedColonSeparatedStringFromPrefixAndSuffix(v45, v47, v44, v48, a1);
        goto LABEL_66;
      }
    }

    v50 = CFDictionaryGetValue(*(a1 + 64), v44);
    if (!v50)
    {
      v49 = __SlowPathNSXMLParserNSStringFromBytes(*(a1 + 64), v44);
LABEL_66:
      v50 = v49;
    }

    v51 = *v42;
    if (*v42)
    {
      v52 = v42[1];
      if (v52)
      {
        v53 = v52 - v51;
        if (v52 != v51)
        {
          MEMORY[0x1EEE9AC00](v53 + 1);
          v56 = &v70[-v55];
          if (v53 >= 128)
          {
            v56 = malloc_type_malloc(v54, 0xA0EFF249uLL);
          }

          strncpy(v56, *v42, v53);
          v56[v53] = 0;
          v57 = CFDictionaryGetValue(*(a1 + 64), v56);
          if (!v57)
          {
            v57 = __SlowPathNSXMLParserNSStringFromBytes(*(a1 + 64), v56);
          }

          if (v57)
          {
            v28 = v57;
          }

          if (v53 >= 128)
          {
            free(v56);
          }

          v20 = v78;
        }
      }
    }

    v58 = v80;
    *&v81[8 * v29] = v50;
    *&v58[8 * v29++] = v28;
    v28 = &stru_1EEEFDF90;
    goto LABEL_80;
  }

LABEL_81:
  if (v29)
  {
    v60 = objc_alloc(MEMORY[0x1E695DF20]);
    v61 = [v60 initWithObjects:v80 forKeys:v81 count:v29];
  }

  else
  {
    v61 = 0;
  }

  if ((*(a1 + 43) & 0x20) != 0)
  {
    if (qword_1ED43FCA8 != -1)
    {
      dispatch_once(&qword_1ED43FCA8, &__block_literal_global_185);
    }

    if (_MergedGlobals_130 == 1)
    {
      if (v61)
      {
        v62 = v61;
        v63 = [v61 mutableCopy];
      }

      else
      {
        v63 = objc_alloc_init(MEMORY[0x1E695DF90]);
      }

      v61 = v63;
    }

    if ((v20 & 4) != 0)
    {
      if (Value)
      {
        v64 = Value;
      }

      else
      {
        v64 = &stru_1EEEFDF90;
      }

      if (v72)
      {
        v65 = v72;
      }

      else
      {
        v65 = &stru_1EEEFDF90;
      }

      if (v74)
      {
        v28 = v74;
      }

      v66 = v61;
      if (!v61)
      {
        v66 = [MEMORY[0x1E695DF20] dictionary];
      }

      [v73 parser:a1 didStartElement:v64 namespaceURI:v65 qualifiedName:v28 attributes:v66];
    }

    else
    {
      v67 = v61;
      if (!v61)
      {
        v67 = [MEMORY[0x1E695DF20] dictionary];
      }

      [v73 parser:a1 didStartElement:v74 namespaceURI:0 qualifiedName:0 attributes:v67];
    }
  }

  free(v77);
}

NSString *__SlowPathNSXMLParserNSStringFromBytes(__CFDictionary *a1, char *__s)
{
  v4 = [[NSString alloc] initWithBytes:__s length:strlen(__s) encoding:4];
  v5 = v4;
  if ((v4 & 0x8000000000000000) != 0)
  {
    return v5;
  }

  CStringPtr = CFStringGetCStringPtr(v4, 0x8000100u);
  if (CStringPtr)
  {
    v8 = CStringPtr;
    if (!strcmp(__s, CStringPtr))
    {
      CFDictionaryAddValue(a1, v8, v5);

      return v5;
    }
  }

  return v5;
}

uint64_t _endElementNs(uint64_t result, void *key, char *__s, void *a4)
{
  v7 = result;
  if (result && (*(result + 120) & 1) != 0)
  {
    return result;
  }

  v8 = *(result + 8);
  v9 = *(result + 40);
  if (__s)
  {
    v10 = strlen(__s);
    if (v10)
    {
      Value = 0;
      if (key)
      {
        if ((v9 & 4) != 0)
        {
          Value = CFDictionaryGetValue(*(v7 + 64), key);
          if (!Value)
          {
            Value = __SlowPathNSXMLParserNSStringFromBytes(*(v7 + 64), key);
          }
        }
      }

      v12 = strlen(key);
      v13 = _cachedColonSeparatedStringFromPrefixAndSuffix(__s, v10, key, v12, v7);
LABEL_13:
      v14 = v13;
      goto LABEL_15;
    }
  }

  if (key)
  {
    Value = CFDictionaryGetValue(*(v7 + 64), key);
    v14 = Value;
    if (Value)
    {
      goto LABEL_15;
    }

    v13 = __SlowPathNSXMLParserNSStringFromBytes(*(v7 + 64), key);
    Value = v13;
    goto LABEL_13;
  }

  Value = 0;
  v14 = 0;
LABEL_15:
  v15 = 0;
  if (a4)
  {
    if ((v9 & 4) != 0)
    {
      v15 = CFDictionaryGetValue(*(v7 + 64), a4);
      if (!v15)
      {
        v15 = __SlowPathNSXMLParserNSStringFromBytes(*(v7 + 64), a4);
      }
    }
  }

  if ((*(v7 + 43) & 0x40) != 0)
  {
    if ((v9 & 4) != 0)
    {
      if (v15)
      {
        v16 = v15;
      }

      else
      {
        v16 = &stru_1EEEFDF90;
      }

      if (v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = &stru_1EEEFDF90;
      }

      v18 = v8;
      v19 = v7;
      v20 = Value;
    }

    else
    {
      v18 = v8;
      v19 = v7;
      v20 = v14;
      v16 = 0;
      v17 = 0;
    }

    [v18 parser:v19 didEndElement:v20 namespaceURI:v16 qualifiedName:v17];
  }

  return [v7 _popNamespaces];
}

uint64_t _endDocument(uint64_t result)
{
  v1 = result;
  if (!result || (*(result + 120) & 1) == 0)
  {
    v2 = [result delegate];
    result = objc_opt_respondsToSelector();
    if (result)
    {

      return [v2 parserDidEndDocument:v1];
    }
  }

  return result;
}

uint64_t protocol witness for _LocaleProtocol.currencyCode.getter in conformance _LocaleICU()
{
  v1 = *(v0 + 200);
  os_unfair_lock_lock(v1 + 134);
  partial apply for closure #1 in _LocaleICU.currencyCode.getter(&v3);
  os_unfair_lock_unlock(v1 + 134);
  return v3;
}

uint64_t _startDocument(uint64_t result)
{
  v1 = result;
  if (!result || (*(result + 120) & 1) == 0)
  {
    v2 = [result delegate];
    result = objc_opt_respondsToSelector();
    if (result)
    {

      return [v2 parserDidStartDocument:v1];
    }
  }

  return result;
}

uint64_t ___startElementNs_block_invoke()
{
  result = _CFAppVersionCheckLessThan();
  _MergedGlobals_130 = result != 0;
  return result;
}

uint64_t _NSSwiftCalendar._components(in:from:)@<X0>(__int128 *a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  v18 = *a1;
  v5 = *a2;
  v6 = *&v3[OBJC_IVAR____NSSwiftCalendar__lock];
  os_unfair_lock_lock((v6 + 32));
  v7 = *(v6 + 16);
  v8 = *(v6 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v6 + 32));
  v21 = 327679;
  if (one-time initialization token for validCalendarRange != -1)
  {
    swift_once();
  }

  v9 = *(&static Date.validCalendarRange + 1);
  if (*(&static Date.validCalendarRange + 1) >= v5)
  {
    v9 = v5;
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
  v20 = v10;
  v19 = v18;
  (*(v8 + 184))(&v21, &v20, &v19, ObjectType, v8);
  *a3 = v7;
  a3[1] = v8;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  if (a3[2])
  {
    if (!v7)
    {
      goto LABEL_12;
    }

    v12 = a3[3];
    *&v19 = a3[2];
    *(&v19 + 1) = v12;
    swift_unknownObjectRetain();
    Calendar.timeZone.setter(&v19);
  }

  swift_unknownObjectRelease();
LABEL_12:
  v13 = v3;
  os_unfair_lock_lock((v6 + 32));
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v6 + 32));

  swift_unknownObjectRelease();
  *a3 = v14;
  a3[1] = v15;
  result = a3[2];
  if (result)
  {
    if (v14)
    {
      v17 = a3[3];
      *&v19 = a3[2];
      *(&v19 + 1) = v17;
      swift_unknownObjectRetain();
      return Calendar.timeZone.setter(&v19);
    }
  }

  return result;
}

uint64_t protocol witness for _CalendarProtocol.dateComponents(_:from:in:) in conformance _CalendarAutoupdating(uint64_t *a1, uint64_t *a2, __int128 *a3)
{
  v3 = *a1;
  v4 = *a2;
  v9 = *a3;
  if (one-time initialization token for cache != -1)
  {
    swift_once();
  }

  CalendarCache.current.getter();
  v6 = v5;
  ObjectType = swift_getObjectType();
  v12 = v3;
  v11 = v4;
  v10 = v9;
  (*(v6 + 184))(&v12, &v11, &v10, ObjectType, v6);

  return swift_unknownObjectRelease();
}

uint64_t _CalendarAutoupdating.timeZone.getter@<X0>(uint64_t a1@<X8>)
{
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
    v29 = a1;
    if (one-time initialization token for cache != -1)
    {
      swift_once();
    }

    v28 = *(&static LocaleCache.cache + 8);
    v5 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v7 = *(v5 + 16);
    v6 = *(v5 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v5 + 32));
    if (!v7)
    {
      LocaleCache.preferences()(&v40);
      v9 = v8;
      type metadata accessor for _LocaleICU();
      v6 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v38 = v46;
      v39[0] = v47[0];
      *(v39 + 12) = *(v47 + 12);
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v33[0] = v40;
      v33[1] = v41;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v40, v32);
      v10 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v33, 0);
      if (v9)
      {
        MEMORY[0x1EEE9AC00](v10);
        os_unfair_lock_lock((v5 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v5 + 16), v33);
        os_unfair_lock_unlock((v5 + 32));
        outlined destroy of LocalePreferences(&v40);

        v6 = *(&v33[0] + 1);
      }

      else
      {
        outlined destroy of LocalePreferences(&v40);
      }
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 200))(&v40, ObjectType, v6);
    swift_unknownObjectRelease();
    v12 = v40;
    if (v40 && v40 != 7)
    {
      *&v28 = type metadata accessor for _CalendarICU();
      v13 = &lazy protocol witness table cache variable for type _CalendarICU and conformance _CalendarICU;
      v14 = type metadata accessor for _CalendarICU;
    }

    else
    {
      *&v28 = type metadata accessor for _CalendarGregorian();
      v13 = &lazy protocol witness table cache variable for type _CalendarGregorian and conformance _CalendarGregorian;
      v14 = type metadata accessor for _CalendarGregorian;
    }

    v15 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(v13, 255, v14);
    v31 = v12;
    v30[0] = 0;
    v30[1] = 0;
    v16 = static LocaleCache.cache;
    v27 = *(&static LocaleCache.cache + 8);
    v17 = *(&static LocaleCache.cache + 1);
    os_unfair_lock_lock((*(&static LocaleCache.cache + 1) + 32));
    v19 = *(v17 + 16);
    v18 = *(v17 + 24);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v17 + 32));
    if (!v19)
    {
      v26[1] = 0;
      *&v33[0] = v16;
      *(v33 + 8) = v27;
      LocaleCache.preferences()(&v40);
      v21 = v20;
      type metadata accessor for _LocaleICU();
      v18 = lazy protocol witness table accessor for type _CalendarAutoupdating and conformance _CalendarAutoupdating(&lazy protocol witness table cache variable for type _LocaleICU and conformance _LocaleICU, 255, type metadata accessor for _LocaleICU);
      v38 = v46;
      v39[0] = v47[0];
      *(v39 + 12) = *(v47 + 12);
      v34 = v42;
      v35 = v43;
      v36 = v44;
      v37 = v45;
      v33[0] = v40;
      v33[1] = v41;
      swift_allocObject();
      outlined init with copy of LocalePreferences(&v40, v32);
      v22 = _LocaleICU.init(name:prefs:disableBundleMatching:)(0, 0, v33, 0);
      v19 = v22;
      if (v21)
      {
        *&v27 = v26;
        MEMORY[0x1EEE9AC00](v22);
        os_unfair_lock_lock((v17 + 32));
        closure #2 in LocaleCache._currentAndCache.getterpartial apply((v17 + 16), v33);
        os_unfair_lock_unlock((v17 + 32));
        outlined destroy of LocalePreferences(&v40);

        v18 = *(&v33[0] + 1);
        v19 = *&v33[0];
      }

      else
      {
        outlined destroy of LocalePreferences(&v40);
      }
    }

    *&v40 = v19;
    *(&v40 + 1) = v18;
    *&v33[0] = 0;
    BYTE8(v33[0]) = 1;
    v23 = (*(v15 + 16))(&v31, v30, &v40, 0, 1, 0, 1, v33, v28, v15);
    MEMORY[0x1EEE9AC00](v23);
    os_unfair_lock_lock((v2 + 32));
    closure #2 in CalendarCache.current.getterpartial apply((v2 + 16), &v40);
    os_unfair_lock_unlock((v2 + 32));
    swift_unknownObjectRelease();
    v4 = *(&v40 + 1);
  }

  v24 = swift_getObjectType();
  (*(v4 + 48))(v24, v4);
  return swift_unknownObjectRelease();
}

id protocol witness for _CalendarProtocol.bridgeToNSCalendar() in conformance _CalendarAutoupdating(uint64_t a1, uint64_t a2)
{
  inited = swift_initStaticObject();
  v4 = type metadata accessor for _NSSwiftCalendar();
  v5 = objc_allocWithZone(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCy10Foundation8CalendarVSo16os_unfair_lock_sVGMd);
  v6 = swift_allocObject();
  *(v6 + 32) = 0;
  *(v6 + 16) = inited;
  *(v6 + 24) = a2;
  *&v5[OBJC_IVAR____NSSwiftCalendar__lock] = v6;
  v7 = *MEMORY[0x1E695D850];
  v9.receiver = v5;
  v9.super_class = v4;
  result = objc_msgSendSuper2(&v9, sel_initWithCheckedCalendarIdentifier_, v7);
  if (!result)
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #1 in _LocaleICU.currencyCode.getter@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 136);
  v6 = *(a1 + 168);
  v15[6] = *(a1 + 152);
  v16[0] = v6;
  *(v16 + 12) = *(a1 + 180);
  v7 = *(a1 + 72);
  v8 = *(a1 + 104);
  v15[2] = *(a1 + 88);
  v15[3] = v8;
  v15[4] = *(a1 + 120);
  v15[5] = v5;
  v15[0] = *(a1 + 56);
  v15[1] = v7;
  if (_s10Foundation17LocalePreferencesVSgWOg(v15) == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *&v16[0];
  }

  v10 = _LocaleICU.State.NumberFormattersBox.formatter(for:identifier:numberSymbols:)(2u, v3, v4, v9);

  if (v10)
  {
    TextAttribute = unum_getTextAttribute();
    result = 0;
    v13 = 0;
    if (TextAttribute - 1 < 0x101)
    {
      result = specialized String.init(_utf16:)(v14, TextAttribute);
    }

    *a2 = result;
    a2[1] = v13;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

void closure #1 in XMLPlistMap.Value.integerValue<A, B>(in:as:for:_:)(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v99 = a6;
  v100 = a5;
  v15 = a1;
  v92 = a8;
  v101 = *(a9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v89 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v88 = &v87 - v18;
  v102 = v19;
  v117 = type metadata accessor for Optional();
  v103 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v94 = &v87 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v95 = &v87 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v93 = &v87 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v96 = &v87 - v26;
  v98 = a7;
  v27 = type metadata accessor for Optional();
  v90 = *(v27 - 8);
  v91 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v97 = &v87 - v28;
  v29 = type metadata accessor for Unicode.Scalar.Properties();
  MEMORY[0x1EEE9AC00](v29);
  v32 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = &v15[a2];
  *&v108 = a3;
  *(&v108 + 1) = a4;
  *&v109 = v15;
  *(&v109 + 1) = v15;
  v110 = &v15[a2];
  if (a2 < 1)
  {
LABEL_13:
    v111 = v108;
    v112 = v109;
    v113 = v110;
    if (v110 == *(&v109 + 1))
    {
      v106 = 0;
      v107 = 0xE000000000000000;
      _StringGuts.grow(_:)(38);

      v106 = 0xD000000000000024;
      v107 = 0x8000000181486080;
      v105 = BufferReader.lineNumber.getter();
      v57 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v57);

      v96 = v106;
      v93 = v107;
      v97 = type metadata accessor for DecodingError();
      v58 = swift_allocError();
      v92 = v59;
      v60 = v103;
      v61 = *(v103 + 16);
      v62 = v95;
      v63 = v117;
      v61(v95, v99, v117);
      v64 = v94;
      v61(v94, v62, v63);
      v66 = v101;
      v65 = v102;
      if ((*(v101 + 48))(v64, 1, v102) == 1)
      {
        v67 = *(v60 + 8);
        v67(v64, v63);
        _CodingPathNode.path.getter(v100);
        v67(v62, v63);
      }

      else
      {
        v68 = *(v66 + 32);
        v98 = a11;
        v69 = v89;
        v68(v89, v64, v65);
        v70 = _CodingPathNode.path.getter(v100);
        v104 = v58;
        v71 = v65;
        v72 = v70;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v73 = v62;
        v74 = v66;
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_181218E20;
        v76 = v98;
        *(inited + 56) = v71;
        *(inited + 64) = v76;
        boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
        (*(v74 + 16))(boxed_opaque_existential_0, v69, v71);
        v106 = v72;
        specialized Array.append<A>(contentsOf:)(inited);
        (*(v74 + 8))(v69, v71);
        (*(v60 + 8))(v73, v63);
      }

      v78 = v92;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v97 - 8) + 104))(v78, *MEMORY[0x1E69E6B00]);
    }

    else
    {
      v41 = v97;
      v40 = v98;
      XMLPlistMap.Value._parseXMLPlistInteger<A>(_:)(&v108, v98, a10, v97);
      v42 = *(v40 - 8);
      v43 = (*(v42 + 48))(v41, 1, v40);
      v44 = v117;
      if (v43 != 1)
      {
        (*(v42 + 32))(v92, v41, v40);
        return;
      }

      v98 = a11;
      (*(v90 + 8))(v41, v91);
      v106 = 0;
      v107 = 0xE000000000000000;
      _StringGuts.grow(_:)(34);

      v106 = 0xD000000000000020;
      v107 = 0x8000000181486050;
      v114 = v108;
      v115 = v109;
      v116 = v110;
      v105 = BufferReader.lineNumber.getter();
      v45 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x1865CB0E0](v45);

      v97 = v106;
      v95 = v107;
      v46 = type metadata accessor for DecodingError();
      v47 = swift_allocError();
      v94 = v48;
      v49 = v103;
      v50 = *(v103 + 16);
      v51 = v96;
      v50(v96, v99, v44);
      v52 = v93;
      v50(v93, v51, v44);
      v53 = v52;
      v55 = v101;
      v54 = v102;
      if ((*(v101 + 48))(v53, 1, v102) == 1)
      {
        v56 = *(v49 + 8);
        v56(v53, v44);
        _CodingPathNode.path.getter(v100);
        v56(v51, v44);
      }

      else
      {
        v79 = v88;
        (*(v55 + 32))(v88, v53, v54);
        v80 = _CodingPathNode.path.getter(v100);
        v104 = v47;
        v81 = v54;
        v82 = v80;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
        v83 = swift_initStackObject();
        *(v83 + 16) = xmmword_181218E20;
        v84 = v98;
        *(v83 + 56) = v81;
        *(v83 + 64) = v84;
        v85 = __swift_allocate_boxed_opaque_existential_0((v83 + 32));
        (*(v55 + 16))(v85, v79, v81);
        v106 = v82;
        specialized Array.append<A>(contentsOf:)(v83);
        (*(v55 + 8))(v79, v81);
        (*(v49 + 8))(v96, v44);
      }

      v86 = v94;
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v46 - 8) + 104))(v86, *MEMORY[0x1E69E6B00]);
    }

    swift_willThrow();
  }

  else
  {
    if (a3 + a4 - v33 >= 0)
    {
      v34 = v15 + 1;
      v35 = (v30 + 8);
      while (v33 >= v15)
      {
        if (&v15[-a3] < 0)
        {
          goto LABEL_27;
        }

        if (v33 - v15 < 0)
        {
          goto LABEL_28;
        }

        v36 = *v15;
        if (v36 >= 0x21 && v36 - 127 > 0x21)
        {
          if ((BufferView<A>._decodeScalar()(v15, v33 - v15) & 0x100000000) != 0)
          {
            goto LABEL_13;
          }

          v38 = v37;
          Unicode.Scalar.properties.getter();
          v39 = Unicode.Scalar.Properties.isWhitespace.getter();
          (*v35)(v32, v29);
          if ((v39 & 1) == 0)
          {
            goto LABEL_13;
          }

          v34 = &v15[v38];
        }

        *(&v109 + 1) = v34;
        v15 = v34++;
        if (v33 < v34)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
  }
}

void *specialized closure #1 in XMLPlistMap.withBuffer<A>(for:perform:)(void *result, uint64_t (*a2)(uint64_t, uint64_t, void, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = result[1];
  v6 = v5 < a5 + a4 || v5 < a5;
  if (!v6 && ((a5 | a4) & 0x8000000000000000) == 0 && v5 > a4)
  {
    return a2(*result + a4, a5, *result, v5);
  }

  __break(1u);
  return result;
}

void *partial apply for closure #1 in XMLPlistMap.withBuffer<A>(for:perform:)(void *a1)
{
  return specialized closure #1 in XMLPlistMap.withBuffer<A>(for:perform:)(a1, *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48));
}

{
  return partial apply for closure #1 in XMLPlistMap.withBuffer<A>(for:perform:)(a1);
}

uint64_t BufferView<A>._decodeScalar()(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if ((v2 & 0xC0) == 0x80)
  {
    goto LABEL_2;
  }

  if ((v2 & 0x80) == 0)
  {
    if (a2 >= 1)
    {
      v3 = *a1;
    }

    else
    {
      v3 = 0;
    }

    LOBYTE(v4) = a2 < 1;
    return v3 | ((v4 & 1) << 32);
  }

  v6 = __clz(v2 ^ 0xFF) - 24;
  if (a2 < v6)
  {
LABEL_2:
    v3 = 0;
    LOBYTE(v4) = 1;
    return v3 | ((v4 & 1) << 32);
  }

  if (v6 == 2)
  {
    v4 = a1[1] & 0xC0;
    v3 = a1[1] & 0x3F | ((v2 & 0x1F) << 6);
    if (v4 != 128)
    {
      v3 = 0;
    }

    LOBYTE(v4) = v4 != 128;
    return v3 | ((v4 & 1) << 32);
  }

  if (v6 == 3)
  {
    v3 = 0;
    v7 = a1[1];
    LOBYTE(v4) = 1;
    if ((v7 & 0xC0) == 0x80)
    {
      v8 = a1[2];
      if ((v8 & 0xC0) == 0x80)
      {
        v9 = v2 & 0xF;
        LOBYTE(v4) = v9 < 0xE && ((v9 << 12) | ((v7 & 0x3F) << 6)) >> 11 > 0x1A;
        if (v4)
        {
          v3 = 0;
        }

        else
        {
          v3 = (v9 << 12) | ((v7 & 0x3F) << 6) | v8 & 0x3F;
        }
      }
    }

    return v3 | ((v4 & 1) << 32);
  }

  if (v6 == 4)
  {
    v3 = 0;
    v10 = a1[1];
    LOBYTE(v4) = 1;
    if ((v10 & 0xC0) == 0x80)
    {
      v11 = a1[2];
      if ((v11 & 0xC0) == 0x80)
      {
        v12 = a1[3];
        if ((v12 & 0xC0) == 0x80)
        {
          v13 = ((v2 & 0xF) << 18) | ((v10 & 0x3F) << 12);
          v14 = v13 >= 0xE000;
          v15 = HIWORD(v13);
          v16 = v13 | ((v11 & 0x3F) << 6);
          v17 = v16 >> 11;
          v3 = v16 & 0xFFFFFFC0 | v12 & 0x3F;
          v18 = !v14 && v17 > 0x1A;
          v19 = v18 || v15 > 0x10;
          v4 = v19;
          if (v4)
          {
            v3 = 0;
          }
        }
      }
    }

    return v3 | ((v4 & 1) << 32);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t *XMLPlistMap.Value._parseXMLPlistInteger<A>(_:)@<X0>(uint64_t *result@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v5 = result[3];
  v6 = result[4];
  if (v6 == v5)
  {
    v20 = *(*(a2 - 8) + 56);

    return v20(a4, 1, 1, a2);
  }

  v8 = *result;
  v9 = result[1];
  v10 = v5 + 1;
  if (v6 < (v5 + 1))
  {
    goto LABEL_9;
  }

  if (&v5[-v8] < 0)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (((v6 - v5) & 0x8000000000000000) != 0)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if ((v8 + v9 - v6) < 0)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = *v5;
  if (v11 == 45)
  {
    v12 = a4;
    v13 = 1;
    goto LABEL_11;
  }

  if (v11 != 43)
  {
LABEL_9:
    v14 = 0;
    goto LABEL_12;
  }

  v12 = a4;
  v13 = 0;
LABEL_11:
  result[3] = v10;
  v15 = result;
  specialized XMLPlistMap.Value._skipIntegerWhitespace(_:)(result);
  result = v15;
  a4 = v12;
  v14 = v13;
LABEL_12:
  v16 = result[3];
  if (v6 < v16)
  {
    __break(1u);
    goto LABEL_30;
  }

  if (&v16[-v8] < 0)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if ((v6 - v16) < 0)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if ((v8 + v9 - v6) < 0)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v17 = v16 + 2;
  v18 = v6 - (v16 + 2);
  if (v6 >= (v16 + 2) && *v16 == 48 && (v16[1] | 0x20) == 0x78)
  {
    result[3] = v17;
    if (((&v17[-v8] | v18) & 0x8000000000000000) == 0)
    {

      return _parseHexIntegerDigits<A>(_:isNegative:)(v17, v18, v14, a2, a3, a4);
    }

LABEL_36:
    __break(1u);
    return result;
  }

  v19 = result[3];

  return _parseIntegerDigits<A>(_:isNegative:)(v19, v6 - v16, v14, a2, a3, a4);
}

uint64_t _parseIntegerDigits<A>(_:isNegative:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v55 = a3;
  v57 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v54 = &v46 - v11;
  v53 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v46 - v19;
  v23.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v25 = &v46 - v24;
  if (a2)
  {
    v51 = a5;
    v56 = a6;
    v58 = v22;
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v26 = v58;
    v27 = v58 + 8;
    if (a2 <= 0)
    {
      v34 = *v27;
LABEL_13:
      v34(v25, a4, v26);
      v43 = v56;
      (*(v58 + 32))(v56, v20, a4);
      return (*(v58 + 56))(v43, 0, 1, a4);
    }

    else
    {
      v28 = v57;
      v29 = &v57[a2];
      v30 = (v58 + 32);
      v31 = v27 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      while (1)
      {
        v32 = *v28 - 48;
        if (v32 >= 0xA)
        {
          v42 = *(v26 + 8);
          v42(v20, a4);
          v42(v25, a4);
          return (*(v58 + 56))(v56, 1, 1, a4);
        }

        v47 = v31;
        v48 = v29;
        v57 = v28;
        v59 = v32;
        lazy protocol witness table accessor for type UInt8 and conformance UInt8();
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v33 = v52;
        v49 = dispatch thunk of FixedWidthInteger.multipliedReportingOverflow(by:)();
        v34 = *v27;
        (*v27)(v20, a4);
        v35 = v30;
        v36 = *v30;
        v50 = v35;
        v36(v20, v33, a4);
        v37 = v54;
        v38 = (v55 & 1) != 0 ? dispatch thunk of FixedWidthInteger.subtractingReportingOverflow(_:)() : dispatch thunk of FixedWidthInteger.addingReportingOverflow(_:)();
        v39 = v38;
        (v34)(v17, a4);
        (v34)(v20, a4);
        v40 = v37;
        v41 = v50;
        v36(v20, v40, a4);
        if ((v49 | v39))
        {
          break;
        }

        v30 = v41;
        v26 = v58;
        v28 = v57 + 1;
        v31 = v47;
        v29 = v48;
        if ((v57 + 1) >= v48)
        {
          goto LABEL_13;
        }
      }

      (v34)(v20, a4);
      (v34)(v25, a4);
      return (*(v58 + 56))(v56, 1, 1, a4);
    }
  }

  else
  {
    v45 = *(v22 + 56);

    return v45(a6, 1, 1, a4, v23);
  }
}

unint64_t lazy protocol witness table accessor for type UInt8 and conformance UInt8()
{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UInt8 and conformance UInt8;
  if (!lazy protocol witness table cache variable for type UInt8 and conformance UInt8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UInt8 and conformance UInt8);
  }

  return result;
}

uint64_t static _XMLPlistDecodingFormat.unkeyedContainer(for:referencing:codingPathNode:)@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (a1 >> 60 == 1)
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v15 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v16 = *(a2 + 24);
    a4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation30_PlistUnkeyedDecodingContainerVyAA09_XMLPlistD6FormatVGMd);
    a4[4] = lazy protocol witness table accessor for type _PlistUnkeyedDecodingContainer<_XMLPlistDecodingFormat> and conformance _PlistUnkeyedDecodingContainer<A>();
    v20 = swift_allocObject();
    *a4 = v20;
    *(v20 + 32) = v16;
    *(v20 + 40) = 0xF000000000000007;
    *(v20 + 16) = a2;
    *(v20 + 24) = v14;
    *(v20 + 64) = 0;
    *(v20 + 72) = a3;
    *(v20 + 48) = v15;
    *(v20 + 56) = 0;
  }

  else
  {
    if (a1 >> 60 == 8 && a1 == 0x8000000000000000)
    {
      v6 = type metadata accessor for DecodingError();
      swift_allocError();
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd);
      *v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd);
      v9 = *(a2 + 40);

      _CodingPathNode.path.getter(v9);

      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B08], v6);
    }

    else
    {
      v10 = *(a2 + 40);

      _CodingPathNode.path.getter(v10);

      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSayypGMd);
      type metadata accessor for DecodingError();
      swift_allocError();
      _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC11XMLPlistMapC0K0O_Tt3g5(v11, a1, v12);
    }

    return swift_willThrow();
  }
}

uint64_t sub_18096C588()
{

  v1 = *(v0 + 40);
  if ((~v1 & 0xF000000000000007) != 0)
  {
    outlined consume of XMLPlistMap.Value(v1);
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

unint64_t lazy protocol witness table accessor for type _PlistUnkeyedDecodingContainer<_XMLPlistDecodingFormat> and conformance _PlistUnkeyedDecodingContainer<A>()
{
  result = lazy protocol witness table cache variable for type _PlistUnkeyedDecodingContainer<_XMLPlistDecodingFormat> and conformance _PlistUnkeyedDecodingContainer<A>;
  if (!lazy protocol witness table cache variable for type _PlistUnkeyedDecodingContainer<_XMLPlistDecodingFormat> and conformance _PlistUnkeyedDecodingContainer<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10Foundation30_PlistUnkeyedDecodingContainerVyAA09_XMLPlistD6FormatVGMd);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _PlistUnkeyedDecodingContainer<_XMLPlistDecodingFormat> and conformance _PlistUnkeyedDecodingContainer<A>);
  }

  return result;
}

unint64_t protocol witness for PlistArrayIterator.next() in conformance XMLPlistMap.ArrayIterator@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  result = XMLPlistMap.loadValue(at:)(*v1);
  v5 = result;
  if ((~result & 0xF000000000000007) != 0)
  {
    result = XMLPlistMap.offset(after:)(v3);
    *v1 = result;
  }

  *a1 = v5;
  return result;
}

uint64_t static _XMLPlistDecodingFormat.unwrapString<A>(from:in:for:_:)(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a2;
  v7 = a5;
  v43 = a4;
  v41 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v37 - v18;
  if (a1 >> 60)
  {
    v38 = a6;
    v39 = a3;
    v40 = a1;
    v28 = *(v13 + 16);
    v28(&v37 - v18, v43, v12, v19);
    (v28)(v15, v20, v12);
    v29 = v41;
    if ((*(v41 + 48))(v15, 1, v7) == 1)
    {
      v30 = *(v13 + 8);
      v30(v15, v12);
      v7 = _CodingPathNode.path.getter(v39);
      v30(v20, v12);
    }

    else
    {
      (*(v29 + 32))(v11, v15, v7);
      v31 = _CodingPathNode.path.getter(v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v33 = v38;
      *(inited + 56) = v7;
      *(inited + 64) = v33;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(v29 + 16))(boxed_opaque_existential_0, v11, v7);
      v42 = v31;
      specialized Array.append<A>(contentsOf:)(inited);
      (*(v29 + 8))(v11, v7);
      (*(v13 + 8))(v20, v12);
      v7 = v42;
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC11XMLPlistMapC0K0O_Tt3g5(MEMORY[0x1E69E6158], v40, v35);

    swift_willThrow();
  }

  else
  {
    MEMORY[0x1EEE9AC00](v17);
    *(&v37 - 6) = v7;
    *(&v37 - 5) = a6;
    *(&v37 - 32) = v21;
    v22 = v43;
    *(&v37 - 3) = a3;
    *(&v37 - 2) = v22;
    v23 = *(v39 + 24);
    *&v25 = MEMORY[0x1EEE9AC00](v24);
    *(&v37 - 4) = partial apply for closure #1 in static _XMLPlistDecodingFormat.unwrapString<A>(from:in:for:_:);
    *(&v37 - 3) = v26;
    *(&v37 - 1) = v25;

    os_unfair_lock_lock((v23 + 40));
    v27 = v40;
    partial apply for specialized closure #1 in JSONMap.withBuffer<A>(for:perform:)((v23 + 16), &v42);
    os_unfair_lock_unlock((v23 + 40));
    if (!v27)
    {
      v7 = v42;
    }
  }

  return v7;
}

uint64_t closure #1 in static _XMLPlistDecodingFormat.unwrapString<A>(from:in:for:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v71 = a6;
  v18 = *(a8 - 8);
  v58 = a7;
  v59 = v18;
  MEMORY[0x1EEE9AC00](a1);
  v57 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  if (a5)
  {
    v55 = &v52 - v25;
    v56 = v24;
    v27 = v26;
    result = static String._tryFromUTF8(_:)();
    if (v29)
    {
      *a9 = result;
      a9[1] = v29;
      return result;
    }

    v66 = a3;
    v67 = a4;
    v68 = a1;
    v69 = a1;
    v70 = a1 + a2;
    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(55);
    MEMORY[0x1865CB0E0](0xD000000000000035, 0x8000000181486100);
    v60[0] = BufferReader.lineNumber.getter();
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v31);

    v32 = v61;
    v54 = v62;
    v33 = v27;
    v34 = *(v27 + 16);
    v35 = v55;
    v36 = v56;
    v34(v55, v58, v56);
    v34(v22, v35, v36);
    v37 = v59;
    if ((*(v59 + 48))(v22, 1, a8) == 1)
    {
      v38 = *(v33 + 8);
      v38(v35, v36);
      v38(v22, v36);
      v39 = v71;

LABEL_14:
      v49 = type metadata accessor for DecodingError();
      swift_allocError();
      v51 = v50;
      _CodingPathNode.path.getter(v39);
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v49 - 8) + 104))(v51, *MEMORY[0x1E69E6B00], v49);

      return swift_willThrow();
    }

    v58 = v32;
    v53 = a10;
    v40 = *(v37 + 32);
    v41 = v57;
    v40(v57, v22, a8);
    v42 = swift_allocObject();
    v43 = v53;
    v42[5] = a8;
    v42[6] = v43;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v42 + 2);
    v40(boxed_opaque_existential_0, v41, a8);
    (*(v33 + 8))(v35, v36);
    v45 = v71;
    v42[7] = v71;
    if (v45 >> 62)
    {
      if (v45 >> 62 != 1)
      {
        v48 = 1;
LABEL_13:
        v42[8] = v48;
        v39 = v42;
        goto LABEL_14;
      }

      v46 = ((v45 & 0x3FFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v46 = (v45 + 64);
    }

    v47 = *v46;

    v48 = v47 + 1;
    if (__OFADD__(v47, 1))
    {
      __break(1u);
      return result;
    }

    goto LABEL_13;
  }

  v61 = a3;
  v62 = a4;
  v63 = a1;
  v64 = a1;
  v65 = a1 + a2;
  result = specialized static XMLPlistScanner.parseString(with:generate:)(&v61, 1, v60);
  if (!v10)
  {
    v30 = v60[3];
    *a9 = v60[2];
    a9[1] = v30;
  }

  return result;
}

void static _XMLPlistDecodingFormat.unwrapFixedWidthInteger<A, B>(from:in:for:_:)(unint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v90 = a8;
  v86 = a7;
  v91 = a3;
  v87 = a2;
  v82 = a9;
  v83 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v78 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v79 = &v78 - v15;
  v92 = v16;
  v85 = type metadata accessor for Optional();
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v78 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v80 = &v78 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v81 = &v78 - v25;
  v26 = type metadata accessor for Optional();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v78 - v27;
  v89 = a5;
  v29 = *(a5 - 8);
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v78 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 60 == 7)
  {
    MEMORY[0x1EEE9AC00](v31);
    v50 = v92;
    *(&v78 - 8) = v89;
    *(&v78 - 7) = v50;
    v51 = v90;
    *(&v78 - 6) = v86;
    *(&v78 - 5) = v51;
    v52 = v91;
    *(&v78 - 4) = a1;
    *(&v78 - 3) = v52;
    *(&v78 - 2) = a4;
    v53 = *(v87 + 24);
    *&v55 = MEMORY[0x1EEE9AC00](v54);
    *(&v78 - 6) = v56;
    *(&v78 - 5) = partial apply for closure #1 in XMLPlistMap.Value.integerValue<A, B>(in:as:for:_:);
    *(&v78 - 4) = v57;
    *(&v78 - 3) = v55;

    os_unfair_lock_lock((v53 + 40));
    partial apply for closure #1 in XMLPlistMap.withBuffer<A>(for:perform:)((v53 + 16));
    os_unfair_lock_unlock((v53 + 40));

    return;
  }

  if (a1 >> 60 == 6)
  {
    v78 = v32;
    v36 = v88;
    v37 = specialized XMLPlistMap.Value.realValue<A, B>(in:as:for:_:)(v87, v91, a4, a1, v92, v90);
    if (v36)
    {
      return;
    }

    v93 = *&v37;
    lazy protocol witness table accessor for type Double and conformance Double();
    v38 = v89;
    dispatch thunk of BinaryInteger.init<A>(exactly:)();
    if ((*(v29 + 48))(v28, 1, v38) != 1)
    {
      v69 = *(v29 + 32);
      v69(v35, v28, v38);
      v69(v82, v35, v38);
      return;
    }

    (*(v78 + 8))(v28, v26);
    v93 = 0;
    v94 = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    MEMORY[0x1865CB0E0](0xD00000000000001DLL, 0x8000000181484860);
    Double.write<A>(to:)();
    MEMORY[0x1865CB0E0](0xD000000000000012, 0x8000000181484880);
    v39 = _typeName(_:qualified:)();
    MEMORY[0x1865CB0E0](v39);

    MEMORY[0x1865CB0E0](46, 0xE100000000000000);
    v89 = v93;
    v88 = v94;
    v40 = type metadata accessor for DecodingError();
    swift_allocError();
    v87 = v41;
    v42 = v84;
    v43 = *(v84 + 16);
    v44 = v81;
    v45 = v85;
    v43(v81, a4, v85);
    v46 = v80;
    v43(v80, v44, v45);
    v47 = v83;
    v48 = v92;
    if ((*(v83 + 48))(v46, 1, v92) == 1)
    {
      v49 = *(v42 + 8);
      v49(v46, v45);
      _CodingPathNode.path.getter(v91);
      v49(v44, v45);
    }

    else
    {
      v70 = v79;
      (*(v47 + 32))(v79, v46, v48);
      v71 = _CodingPathNode.path.getter(v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v72 = v40;
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_181218E20;
      v74 = v90;
      *(inited + 56) = v48;
      *(inited + 64) = v74;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 32));
      (*(v47 + 16))(boxed_opaque_existential_0, v70, v48);
      v93 = v71;
      v76 = inited;
      v40 = v72;
      specialized Array.append<A>(contentsOf:)(v76);
      (*(v47 + 8))(v70, v48);
      (*(v42 + 8))(v81, v45);
    }

    v77 = v87;
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v40 - 8) + 104))(v77, *MEMORY[0x1E69E6B00], v40);
  }

  else
  {
    v58 = v84;
    v59 = *(v84 + 16);
    v60 = v85;
    v59(v21, a4, v85, v33);
    (v59)(v18, v21, v60);
    v61 = v83;
    v62 = v92;
    if ((*(v83 + 48))(v18, 1, v92) == 1)
    {
      v63 = *(v58 + 8);
      v63(v18, v60);
      _CodingPathNode.path.getter(v91);
      v63(v21, v60);
    }

    else
    {
      (*(v61 + 32))(v13, v18, v62);
      v64 = _CodingPathNode.path.getter(v91);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys9CodingKey_pGMd);
      v65 = swift_initStackObject();
      *(v65 + 16) = xmmword_181218E20;
      v66 = v90;
      *(v65 + 56) = v62;
      *(v65 + 64) = v66;
      v67 = __swift_allocate_boxed_opaque_existential_0((v65 + 32));
      (*(v61 + 16))(v67, v13, v62);
      v93 = v64;
      specialized Array.append<A>(contentsOf:)(v65);
      (*(v61 + 8))(v13, v62);
      (*(v58 + 8))(v21, v60);
    }

    type metadata accessor for DecodingError();
    swift_allocError();
    _ss13DecodingErrorO10FoundationE13_typeMismatch2at11expectation7realityABSays9CodingKey_pG_ypXpxtAC0aB31ValueTypeDebugStringConvertibleRzlFZAC11XMLPlistMapC0K0O_Tt3g5(v89, a1, v68);
  }

  swift_willThrow();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> XMLPlistScanner.scanArray()()
{
  v3 = v0;
  v4 = *v0;
  v5 = v0[1];
  v426 = *(v0 + 4);
  v425[1] = v5;
  v425[0] = v4;
  XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v425);
  v6 = *(v0 + 5);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v6 + 2) + 1, 1, v6);
  }

  v8 = *(v6 + 2);
  v7 = *(v6 + 3);
  if (v8 >= v7 >> 1)
  {
    v6 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v7 > 1), v8 + 1, 1, v6);
  }

  v427 = v8 + 1;
  *(v6 + 2) = v8 + 1;
  v271 = v8;
  *&v6[8 * v8 + 32] = 8;
  *(v3 + 5) = v6;
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of XMLPlistScanner.scanArray());
  v9 = 0;
  while (1)
  {
    v16 = *(v3 + 4);
    if (v16 == *(v3 + 3))
    {
      goto LABEL_128;
    }

    v17 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_array);
    if (v18)
    {
      goto LABEL_230;
    }

    if (!v17)
    {
LABEL_128:
      v1 = v427;
      XMLPlistScanner.checkForCloseTag(_:)(Foundation_XMLPlistTag_array);
      LOBYTE(v16) = v106;
      if (v106)
      {
        v107 = v3[1];
        v274[0] = *v3;
        v274[1] = v107;
        v275 = *(v3 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v274);
        v47 = *(v3 + 5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          goto LABEL_216;
        }

        goto LABEL_130;
      }

LABEL_135:
      v112 = v3[1];
      v272[0] = *v3;
      v272[1] = v112;
      v273 = *(v3 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v272);
      v47 = *(v3 + 5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
      }

      v114 = *(v47 + 2);
      v113 = *(v47 + 3);
      v115 = v114 + 1;
      if (v114 >= v113 >> 1)
      {
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v113 > 1), v114 + 1, 1, v47);
      }

      *(v47 + 2) = v115;
      *&v47[8 * v114 + 32] = 10;
      *&v47[8 * v1 + 32] = v115;
      if (!__OFADD__(v271, 2))
      {
        *&v47[8 * v271 + 48] = v9;
        goto LABEL_237;
      }

      __break(1u);
      goto LABEL_227;
    }

    LOBYTE(v19) = XMLPlistScanner.peekXMLElement()()._0;
    if (v20)
    {
      goto LABEL_230;
    }

    v1 = v19;
    if (v19 <= 2u)
    {
      break;
    }

    if (((1 << v19) & 0x1E0) != 0)
    {
      if ((v19 & 0x100) != 0)
      {
        v116 = v3[1];
        v417 = *v3;
        v418 = v116;
        v419 = *(v3 + 4);
        goto LABEL_142;
      }

      LOWORD(v10) = 0;
      v21 = XMLPlistScanner.scanThroughCloseTag(_:)(v19);
      v23 = v22;
      v1 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
      v24 = v23 - v21;
      v25 = *(v3 + 1);
      v2 = v21 - *v3;
      v420[0] = *v3;
      v420[1] = v25;
      v421 = v3[1];
      v422 = v16;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v420);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_18121D6B0;
      *(v12 + 32) = v1;
      *(v12 + 40) = v24;
      *(v12 + 48) = v2;
    }

    else
    {
      if (((1 << v19) & 0x18) == 0)
      {
        if ((v19 & 0x100) == 0)
        {
          XMLPlistScanner.checkForCloseTag(_:)(v19);
          if (v20)
          {
            goto LABEL_230;
          }
        }

        LOWORD(v10) = v20;
        v1 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
        v30 = v3[1];
        v423[0] = *v3;
        v423[1] = v30;
        v424 = *(v3 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v423);
        v31 = *(v3 + 5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v31 + 2) + 1, 1, v31);
        }

        v33 = *(v31 + 2);
        v32 = *(v31 + 3);
        v2 = v33 + 1;
        if (v33 >= v32 >> 1)
        {
          v31 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v31);
        }

        LOBYTE(v14) = v1;
        *(v31 + 2) = v2;
        *&v31[8 * v33 + 32] = v1;
        *(v3 + 5) = v31;
        goto LABEL_10;
      }

      v26 = v19;
      if ((v19 & 0x100) == 0)
      {
        XMLPlistScanner.scanString(asKey:)(v19 == 3);
        if (v27)
        {
          goto LABEL_230;
        }

        v28 = v1;
LABEL_125:
        XMLPlistScanner.checkForCloseTag(_:)(v28);
LABEL_126:
        LOWORD(v10) = v29;
        if (v29)
        {
          goto LABEL_230;
        }

        goto LABEL_10;
      }

      LOWORD(v10) = 0;
      v11 = v3[1];
      v415[0] = *v3;
      v415[1] = v11;
      v416 = *(v3 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v415);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_18121D6B0;
      v13 = 12;
      if (v26 == 3)
      {
        v13 = 13;
      }

      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 32) = v13;
    }

LABEL_9:
    specialized Array.append<A>(contentsOf:)(v12);
LABEL_10:
    if (__OFADD__(v9++, 1))
    {
      __break(1u);
      goto LABEL_157;
    }
  }

  if (v19)
  {
    if (v19 == 1)
    {
      if ((v19 & 0x100) == 0)
      {
        XMLPlistScanner.scanArray()();
        goto LABEL_126;
      }

      LOWORD(v10) = 0;
      v45 = v3[1];
      v411[0] = *v3;
      v411[1] = v45;
      v412 = *(v3 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v411);
      v46 = *(*(v3 + 5) + 16);
      v47 = (v46 + 4);
      if (__OFADD__(v46, 4))
      {
        goto LABEL_215;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_18121D6C0;
      v48 = 8;
    }

    else
    {
      if ((v19 & 0x100) == 0)
      {
        XMLPlistScanner.scanDict()();
        goto LABEL_126;
      }

      LOWORD(v10) = 0;
      v49 = v3[1];
      v413[0] = *v3;
      v413[1] = v49;
      v414 = *(v3 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v413);
      v50 = *(*(v3 + 5) + 16);
      v47 = (v50 + 4);
      if (__OFADD__(v50, 4))
      {
        __break(1u);
LABEL_215:
        __break(1u);
LABEL_216:
        v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
LABEL_130:
        v109 = *(v47 + 2);
        v108 = *(v47 + 3);
        v110 = v109 + 1;
        if (v109 >= v108 >> 1)
        {
          v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v108 > 1), v109 + 1, 1, v47);
        }

        *(v47 + 2) = v110;
        *&v47[8 * v109 + 32] = 10;
        *&v47[8 * v1 + 32] = v110;
        v111 = v271 + 2;
        if (!__OFADD__(v271, 2))
        {
          goto LABEL_236;
        }

        __break(1u);
        goto LABEL_135;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v12 = swift_allocObject();
      *(v12 + 16) = xmmword_18121D6C0;
      v48 = 9;
    }

    *(v12 + 32) = v48;
    *(v12 + 40) = v47;
    *(v12 + 48) = xmmword_181249E60;
    goto LABEL_9;
  }

  if ((v19 & 0x100) != 0)
  {
    v120 = v3[1];
    v278 = *v3;
    v279 = v120;
    v280 = *(v3 + 4);
    goto LABEL_146;
  }

  v34 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
  if (v35)
  {
    goto LABEL_230;
  }

  if (!v34)
  {
    v121 = v3[1];
    v408 = *v3;
    v409 = v121;
    v410 = *(v3 + 4);
    goto LABEL_146;
  }

  LOBYTE(v36) = XMLPlistScanner.peekXMLElement()()._0;
  if (v37)
  {
    goto LABEL_230;
  }

  v1 = v36;
  if (v36 <= 2u)
  {
    if (v36)
    {
      if (v36 == 1)
      {
        if ((v36 & 0x100) == 0)
        {
          XMLPlistScanner.scanArray()();
          if (v54)
          {
            goto LABEL_230;
          }

          goto LABEL_122;
        }

        v74 = v3[1];
        v394[0] = *v3;
        v394[1] = v74;
        v395 = *(v3 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v394);
        v75 = *(*(v3 + 5) + 16);
        v76 = v75 + 4;
        if (__OFADD__(v75, 4))
        {
          __break(1u);
LABEL_261:
          __break(1u);
          goto LABEL_262;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_18121D6C0;
        v77 = 8;
      }

      else
      {
        if ((v36 & 0x100) == 0)
        {
          XMLPlistScanner.scanDict()();
          if (v70)
          {
            goto LABEL_230;
          }

          goto LABEL_122;
        }

        v78 = v3[1];
        v396[0] = *v3;
        v396[1] = v78;
        v397 = *(v3 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v396);
        v75 = *(*(v3 + 5) + 16);
        v76 = v75 + 4;
        if (__OFADD__(v75, 4))
        {
          goto LABEL_261;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v44 = swift_allocObject();
        *(v44 + 16) = xmmword_18121D6C0;
        v77 = 9;
      }

      *(v44 + 32) = v77;
      *(v44 + 40) = v76;
      *(v44 + 48) = xmmword_181249E60;
LABEL_84:
      specialized Array.append<A>(contentsOf:)(v44);
      goto LABEL_122;
    }

    if ((v36 & 0x100) != 0)
    {
      v137 = v3[1];
      v281 = *v3;
      v282 = v137;
      v283 = *(v3 + 4);
      goto LABEL_146;
    }

    v59 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
    if (v60)
    {
      goto LABEL_230;
    }

    if (!v59)
    {
      v138 = v3[1];
      v391 = *v3;
      v392 = v138;
      v393 = *(v3 + 4);
      goto LABEL_146;
    }

    LOBYTE(v61) = XMLPlistScanner.peekXMLElement()()._0;
    if (v62)
    {
      goto LABEL_230;
    }

    v1 = v61;
    if (v61 <= 2u)
    {
      if (!v61)
      {
        if ((v61 & 0x100) != 0)
        {
          v190 = v3[1];
          v284 = *v3;
          v285 = v190;
          v286 = *(v3 + 4);
          goto LABEL_146;
        }

        v87 = XMLPlistScanner.scanAnyValue(for:)(Foundation_XMLPlistTag_plist);
        if (v88)
        {
          goto LABEL_230;
        }

        if (!v87)
        {
          v191 = v3[1];
          v374 = *v3;
          v375 = v191;
          v376 = *(v3 + 4);
          goto LABEL_146;
        }

        v89 = *(v3 + 3);
        v90 = XMLPlistScanner.scanAnyValue(for:)(Foundation_XMLPlistTag_plist);
        if (v91)
        {
          goto LABEL_230;
        }

        if (v90)
        {
          *(v3 + 3) = v89;
          _StringGuts.grow(_:)(77);
          MEMORY[0x1865CB0E0](0xD000000000000027, 0x8000000181486390);
          v192 = *(v3 + 2);
          v193 = *(v3 + 4);
          v287 = *v3;
          v288 = v192;
          v289 = v89;
          v290 = v193;
LABEL_225:
          BufferReader.lineNumber.getter();
          v194 = dispatch thunk of CustomStringConvertible.description.getter();
          MEMORY[0x1865CB0E0](v194);

          MEMORY[0x1865CB0E0](0xD000000000000024, 0x80000001814863C0);
          lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
          swift_allocError();
          *v119 = 0;
          *(v119 + 8) = 0xE000000000000000;
          *(v119 + 16) = 0;
          *(v119 + 24) = 0;
          v122 = 5;
          goto LABEL_148;
        }

        v81 = Foundation_XMLPlistTag_plist;
        goto LABEL_107;
      }

      if (v61 == 1)
      {
        if ((v61 & 0x100) == 0)
        {
          XMLPlistScanner.scanArray()();
          if (v82)
          {
            goto LABEL_230;
          }

          goto LABEL_118;
        }

        v97 = v3[1];
        v377[0] = *v3;
        v377[1] = v97;
        v378 = *(v3 + 4);
        v98 = v377;
        v99 = 8;
      }

      else
      {
        if ((v61 & 0x100) == 0)
        {
          XMLPlistScanner.scanDict()();
          if (v93)
          {
            goto LABEL_230;
          }

          goto LABEL_118;
        }

        v100 = v3[1];
        v379[0] = *v3;
        v379[1] = v100;
        v380 = *(v3 + 4);
        v98 = v379;
        v99 = 9;
      }

      XMLPlistScanner.PartialMapData.recordEmptyCollection(tagType:with:)(v99, v98);
    }

    else
    {
      if (((1 << v61) & 0x1E0) != 0)
      {
        if ((v61 & 0x100) != 0)
        {
          v175 = v3[1];
          v383 = *v3;
          v384 = v175;
          v385 = *(v3 + 4);
          goto LABEL_142;
        }

        v63 = XMLPlistScanner.scanThroughCloseTag(_:)(v61);
        v65 = v64;
        v66 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
        v67 = v65 - v63;
        v68 = *(v3 + 1);
        v2 = v63 - *v3;
        v386[0] = *v3;
        v386[1] = v68;
        v387 = v3[1];
        v388 = v16;
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v386);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
        v69 = swift_allocObject();
        *(v69 + 16) = xmmword_18121D6B0;
        *(v69 + 32) = v66;
        *(v69 + 40) = v67;
        *(v69 + 48) = v2;
        specialized Array.append<A>(contentsOf:)(v69);
        goto LABEL_118;
      }

      if (((1 << v61) & 0x18) == 0)
      {
        if ((v61 & 0x100) == 0)
        {
          XMLPlistScanner.checkForCloseTag(_:)(v61);
          if (v62)
          {
            goto LABEL_230;
          }
        }

        LOBYTE(v16) = v62;
        v83 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
        v84 = v3[1];
        v389[0] = *v3;
        v389[1] = v84;
        v390 = *(v3 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v389);
        v85 = *(v3 + 5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v85 + 2) + 1, 1, v85);
        }

        v2 = *(v85 + 2);
        v86 = *(v85 + 3);
        if (v2 >= v86 >> 1)
        {
          v85 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v2 + 1, 1, v85);
        }

        *(v85 + 2) = v2 + 1;
        *&v85[8 * v2 + 32] = v83;
        *(v3 + 5) = v85;
        goto LABEL_118;
      }

      v79 = v61;
      if ((v61 & 0x100) == 0)
      {
        XMLPlistScanner.scanString(asKey:)(v61 == 3);
        if (v80)
        {
          goto LABEL_230;
        }

        v81 = v1;
LABEL_107:
        XMLPlistScanner.checkForCloseTag(_:)(v81);
        if (v92)
        {
          goto LABEL_230;
        }

        goto LABEL_118;
      }

      v94 = v3[1];
      v381[0] = *v3;
      v381[1] = v94;
      v382 = *(v3 + 4);
      LOBYTE(v16) = 0;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v381);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v95 = swift_allocObject();
      *(v95 + 16) = xmmword_18121D6B0;
      v96 = 12;
      if (v79 == 3)
      {
        v96 = 13;
      }

      *(v95 + 40) = 0;
      *(v95 + 48) = 0;
      *(v95 + 32) = v96;
      specialized Array.append<A>(contentsOf:)(v95);
    }

LABEL_118:
    v1 = *(v3 + 3);
    v101 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
    if (v102)
    {
      goto LABEL_230;
    }

    if (!v101)
    {
      v53 = Foundation_XMLPlistTag_plist;
LABEL_121:
      XMLPlistScanner.checkForCloseTag(_:)(v53);
      if (v103)
      {
        goto LABEL_230;
      }

      goto LABEL_122;
    }

    LOBYTE(v139) = XMLPlistScanner.peekXMLElement()()._0;
    v2 = v427;
    if (v140)
    {
      goto LABEL_231;
    }

    LOBYTE(v16) = v139;
    if (v139 <= 2u)
    {
      if (v139)
      {
        if (v139 == 1)
        {
          if ((v139 & 0x100) == 0)
          {
            XMLPlistScanner.scanArray()();
            v2 = v427;
            if (v189)
            {
              goto LABEL_231;
            }

            goto LABEL_259;
          }

          v212 = v3[1];
          v298[0] = *v3;
          v298[1] = v212;
          v299 = *(v3 + 4);
          v213 = v298;
          v214 = 8;
        }

        else
        {
          if ((v139 & 0x100) == 0)
          {
            XMLPlistScanner.scanDict()();
            v2 = v427;
            if (v207)
            {
              goto LABEL_231;
            }

            goto LABEL_259;
          }

          v215 = v3[1];
          v300[0] = *v3;
          v300[1] = v215;
          v301 = *(v3 + 4);
          v213 = v300;
          v214 = 9;
        }

        XMLPlistScanner.PartialMapData.recordEmptyCollection(tagType:with:)(v214, v213);
        goto LABEL_258;
      }

      if ((v139 & 0x100) == 0)
      {
        XMLPlistScanner.scanPlist()();
        v2 = v427;
        if (v206)
        {
          goto LABEL_231;
        }

        goto LABEL_259;
      }

      v211 = v3[1];
      v291 = *v3;
      v292 = v211;
      v293 = *(v3 + 4);
      goto LABEL_146;
    }

    if (((1 << v139) & 0x1E0) == 0)
    {
      if (((1 << v139) & 0x18) != 0)
      {
        v186 = v139;
        if ((v139 & 0x100) != 0)
        {
          v208 = v3[1];
          v302[0] = *v3;
          v302[1] = v208;
          v303 = *(v3 + 4);
          XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v302);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
          v209 = swift_allocObject();
          *(v209 + 16) = xmmword_18121D6B0;
          v210 = 12;
          *(v209 + 40) = 0;
          *(v209 + 48) = 0;
          if (v186 == 3)
          {
            v210 = 13;
          }

          *(v209 + 32) = v210;
          specialized Array.append<A>(contentsOf:)(v209);
          goto LABEL_258;
        }

        XMLPlistScanner.scanString(asKey:)(v139 == 3);
        if (!v187)
        {
          XMLPlistScanner.checkForCloseTag(_:)(v16);
          v2 = v427;
          if (v188)
          {
            goto LABEL_231;
          }

          goto LABEL_259;
        }
      }

      else
      {
        if ((v139 & 0x100) != 0)
        {
          goto LABEL_239;
        }

        XMLPlistScanner.checkForCloseTag(_:)(v139);
        if (!v196)
        {
          goto LABEL_239;
        }
      }

      goto LABEL_230;
    }

    if ((v139 & 0x100) == 0)
    {
      v141 = XMLPlistScanner.scanThroughCloseTag(_:)(v139);
      v143 = v142;
      v144 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v16);
      v145 = v143 - v141;
      v146 = *(v3 + 1);
      v147 = v141 - *v3;
      v148 = *(v3 + 4);
      v307[0] = *v3;
      v307[1] = v146;
      v308 = v3[1];
      v309 = v148;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v307);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v149 = swift_allocObject();
      *(v149 + 16) = xmmword_18121D6B0;
      *(v149 + 32) = v144;
      *(v149 + 40) = v145;
      *(v149 + 48) = v147;
      specialized Array.append<A>(contentsOf:)(v149);
      goto LABEL_259;
    }

LABEL_227:
    v195 = v3[1];
    v304 = *v3;
    v305 = v195;
    v306 = *(v3 + 4);
    v151 = BufferReader.lineNumber.getter();
    v10 = v16;
    goto LABEL_175;
  }

  if (((1 << v36) & 0x1E0) != 0)
  {
    if ((v36 & 0x100) == 0)
    {
      v38 = XMLPlistScanner.scanThroughCloseTag(_:)(v36);
      v40 = v39;
      v41 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
      v2 = v40 - v38;
      v42 = *(v3 + 1);
      v43 = v38 - *v3;
      v403[0] = *v3;
      v403[1] = v42;
      v404 = v3[1];
      v405 = v16;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v403);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_18121D6B0;
      *(v44 + 32) = v41;
      *(v44 + 40) = v2;
      *(v44 + 48) = v43;
      goto LABEL_84;
    }

    v125 = v3[1];
    v400 = *v3;
    v401 = v125;
    v402 = *(v3 + 4);
LABEL_142:
    v117 = BufferReader.lineNumber.getter();
    v118 = v1;
LABEL_143:
    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v119 = v118;
LABEL_147:
    *(v119 + 8) = v117;
    *(v119 + 16) = 0;
    *(v119 + 24) = 0;
    v122 = 2;
LABEL_148:
    *(v119 + 32) = v122;
    swift_willThrow();
LABEL_230:
    v2 = v427;
    goto LABEL_231;
  }

  if (((1 << v36) & 0x18) != 0)
  {
    v51 = v36;
    if ((v36 & 0x100) == 0)
    {
      XMLPlistScanner.scanString(asKey:)(v36 == 3);
      if (v52)
      {
        goto LABEL_230;
      }

      v53 = v1;
      goto LABEL_121;
    }

    v71 = v3[1];
    v398[0] = *v3;
    v398[1] = v71;
    v399 = *(v3 + 4);
    LOBYTE(v16) = 0;
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v398);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_18121D6B0;
    v73 = 12;
    if (v51 == 3)
    {
      v73 = 13;
    }

    *(v72 + 40) = 0;
    *(v72 + 48) = 0;
    *(v72 + 32) = v73;
    specialized Array.append<A>(contentsOf:)(v72);
  }

  else
  {
    if ((v36 & 0x100) == 0)
    {
      XMLPlistScanner.checkForCloseTag(_:)(v36);
      if (v37)
      {
        goto LABEL_230;
      }
    }

    LOBYTE(v16) = v37;
    v55 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v1);
    v56 = v3[1];
    v406[0] = *v3;
    v406[1] = v56;
    v407 = *(v3 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v406);
    v57 = *(v3 + 5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v57 + 2) + 1, 1, v57);
    }

    v2 = *(v57 + 2);
    v58 = *(v57 + 3);
    if (v2 >= v58 >> 1)
    {
      v57 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v2 + 1, 1, v57);
    }

    *(v57 + 2) = v2 + 1;
    *&v57[8 * v2 + 32] = v55;
    *(v3 + 5) = v57;
  }

LABEL_122:
  v1 = *(v3 + 3);
  v104 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
  if (v105)
  {
    goto LABEL_230;
  }

  if (!v104)
  {
    v28 = Foundation_XMLPlistTag_plist;
    goto LABEL_125;
  }

  LOBYTE(v123) = XMLPlistScanner.peekXMLElement()()._0;
  v2 = v427;
  if (v124)
  {
    goto LABEL_231;
  }

  LOWORD(v10) = v123;
  if (v123 <= 2u)
  {
    if (v123)
    {
      if (v123 == 1)
      {
        if ((v123 & 0x100) == 0)
        {
          XMLPlistScanner.scanArray()();
          if (v136)
          {
            goto LABEL_231;
          }

          goto LABEL_206;
        }

        v177 = v3[1];
        v360[0] = *v3;
        v360[1] = v177;
        v361 = *(v3 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v360);
        v178 = *(*(v3 + 5) + 16);
        v179 = v178 + 4;
        if (!__OFADD__(v178, 4))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
          v133 = swift_allocObject();
          *(v133 + 16) = xmmword_18121D6C0;
          v180 = 8;
LABEL_204:
          *(v133 + 32) = v180;
          *(v133 + 40) = v179;
          *(v133 + 48) = xmmword_181249E60;
          goto LABEL_205;
        }

        __break(1u);
      }

      else
      {
        if ((v123 & 0x100) == 0)
        {
          XMLPlistScanner.scanDict()();
          if (v172)
          {
            goto LABEL_231;
          }

          goto LABEL_206;
        }

        v181 = v3[1];
        v362[0] = *v3;
        v362[1] = v181;
        v363 = *(v3 + 4);
        XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v362);
        v182 = *(*(v3 + 5) + 16);
        v179 = v182 + 4;
        if (!__OFADD__(v182, 4))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
          v133 = swift_allocObject();
          *(v133 + 16) = xmmword_18121D6C0;
          v180 = 9;
          goto LABEL_204;
        }
      }

      __break(1u);
      goto LABEL_314;
    }

    if ((v123 & 0x100) != 0)
    {
      v176 = v3[1];
      v312 = *v3;
      v313 = v176;
      v314 = *(v3 + 4);
      v151 = BufferReader.lineNumber.getter();
      lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
      swift_allocError();
      *v152 = 0;
      goto LABEL_176;
    }

    v160 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
    if (v161)
    {
      goto LABEL_231;
    }

    if (!v160)
    {
      v205 = v3[1];
      v357 = *v3;
      v358 = v205;
      v359 = *(v3 + 4);
      goto LABEL_146;
    }

    LOBYTE(v162) = XMLPlistScanner.peekXMLElement()()._0;
    if (v163)
    {
      goto LABEL_230;
    }

    LOWORD(v16) = v162;
    if (v162 <= 2u)
    {
      if (!v162)
      {
        if ((v162 & 0x100) != 0)
        {
          v229 = v3[1];
          v315 = *v3;
          v316 = v229;
          v317 = *(v3 + 4);
          goto LABEL_146;
        }

        XMLPlistScanner.scanPlist()();
        goto LABEL_283;
      }

      if (v162 == 1)
      {
        if ((v162 & 0x100) == 0)
        {
          XMLPlistScanner.scanArray()();
          goto LABEL_283;
        }

        v230 = v3[1];
        v343[0] = *v3;
        v343[1] = v230;
        v344 = *(v3 + 4);
        v231 = v343;
        v232 = 8;
      }

      else
      {
        if ((v162 & 0x100) == 0)
        {
          XMLPlistScanner.scanDict()();
          goto LABEL_283;
        }

        v233 = v3[1];
        v345[0] = *v3;
        v345[1] = v233;
        v346 = *(v3 + 4);
        v231 = v345;
        v232 = 9;
      }

      XMLPlistScanner.PartialMapData.recordEmptyCollection(tagType:with:)(v232, v231);
LABEL_293:
      v234 = *(v3 + 3);
      v235 = XMLPlistScanner.scanUpToNextValue(for:)(Foundation_XMLPlistTag_plist);
      if (v236)
      {
        goto LABEL_230;
      }

      if (!v235)
      {
        XMLPlistScanner.checkForCloseTag(_:)(Foundation_XMLPlistTag_plist);
        v2 = v427;
        if (v248)
        {
          goto LABEL_231;
        }

        goto LABEL_206;
      }

      LOBYTE(v237) = XMLPlistScanner.peekXMLElement()()._0;
      if (v238)
      {
        goto LABEL_230;
      }

      LOBYTE(v16) = v237;
      if (v237 > 2u)
      {
        if (((1 << v237) & 0x1E0) != 0)
        {
          if ((v237 & 0x100) != 0)
          {
LABEL_314:
            v253 = v3[1];
            v331 = *v3;
            v332 = v253;
            v333 = *(v3 + 4);
            goto LABEL_271;
          }

          v239 = XMLPlistScanner.scanThroughCloseTag(_:)(v237);
          v241 = v240;
          v242 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v16);
          v243 = v241 - v239;
          v244 = *(v3 + 1);
          v245 = v239 - *v3;
          v246 = *(v3 + 4);
          v334[0] = *v3;
          v334[1] = v244;
          v335 = v3[1];
          v336 = v246;
          XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v334);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
          v247 = swift_allocObject();
          *(v247 + 16) = xmmword_18121D6B0;
          *(v247 + 32) = v242;
          *(v247 + 40) = v243;
          *(v247 + 48) = v245;
        }

        else
        {
          if (((1 << v237) & 0x18) == 0)
          {
            if ((v237 & 0x100) == 0)
            {
              XMLPlistScanner.checkForCloseTag(_:)(v237);
              if (v254)
              {
                goto LABEL_230;
              }
            }

            v255 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v16);
            v256 = v3[1];
            v337[0] = *v3;
            v337[1] = v256;
            v338 = *(v3 + 4);
            XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v337);
            v257 = *(v3 + 5);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v257 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v257 + 2) + 1, 1, v257);
            }

            v259 = *(v257 + 2);
            v258 = *(v257 + 3);
            if (v259 >= v258 >> 1)
            {
              v257 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v258 > 1), v259 + 1, 1, v257);
            }

            *(v257 + 2) = v259 + 1;
            *&v257[8 * v259 + 32] = v255;
            *(v3 + 5) = v257;
            goto LABEL_336;
          }

          v249 = v237;
          if ((v237 & 0x100) == 0)
          {
            XMLPlistScanner.scanString(asKey:)(v237 == 3);
            if (v250)
            {
              goto LABEL_230;
            }

            XMLPlistScanner.checkForCloseTag(_:)(v16);
            if (v251)
            {
              goto LABEL_230;
            }

            goto LABEL_336;
          }

          v262 = v3[1];
          v329[0] = *v3;
          v329[1] = v262;
          v330 = *(v3 + 4);
          XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v329);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
          v247 = swift_allocObject();
          *(v247 + 16) = xmmword_18121D6B0;
          v263 = 12;
          *(v247 + 40) = 0;
          *(v247 + 48) = 0;
          if (v249 == 3)
          {
            v263 = 13;
          }

          *(v247 + 32) = v263;
        }

        specialized Array.append<A>(contentsOf:)(v247);
LABEL_336:
        *(v3 + 3) = v234;
        _StringGuts.grow(_:)(77);
        MEMORY[0x1865CB0E0](0xD000000000000027, 0x8000000181486390);
        v269 = *(v3 + 2);
        v270 = *(v3 + 4);
        v321 = *v3;
        v322 = v269;
        v323 = v234;
        v324 = v270;
        goto LABEL_225;
      }

      if (v237)
      {
        if (v237 == 1)
        {
          if ((v237 & 0x100) == 0)
          {
            XMLPlistScanner.scanArray()();
            if (v252)
            {
              goto LABEL_230;
            }

            goto LABEL_336;
          }

          v264 = v3[1];
          v325[0] = *v3;
          v325[1] = v264;
          v326 = *(v3 + 4);
          v265 = v325;
          v266 = 8;
        }

        else
        {
          if ((v237 & 0x100) == 0)
          {
            XMLPlistScanner.scanDict()();
            if (v261)
            {
              goto LABEL_230;
            }

            goto LABEL_336;
          }

          v268 = v3[1];
          v327[0] = *v3;
          v327[1] = v268;
          v328 = *(v3 + 4);
          v265 = v327;
          v266 = 9;
        }

        XMLPlistScanner.PartialMapData.recordEmptyCollection(tagType:with:)(v266, v265);
        goto LABEL_336;
      }

      if ((v237 & 0x100) == 0)
      {
        XMLPlistScanner.scanPlist()();
        if (v260)
        {
          goto LABEL_230;
        }

        goto LABEL_336;
      }

      v267 = v3[1];
      v318 = *v3;
      v319 = v267;
      v320 = *(v3 + 4);
LABEL_146:
      v117 = BufferReader.lineNumber.getter();
      lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
      swift_allocError();
      *v119 = 0;
      goto LABEL_147;
    }

    LODWORD(v75) = 1 << v162;
    if (((1 << v162) & 0x1E0) != 0)
    {
      if ((v162 & 0x100) != 0)
      {
        v220 = v3[1];
        v349 = *v3;
        v350 = v220;
        v351 = *(v3 + 4);
LABEL_271:
        v117 = BufferReader.lineNumber.getter();
        v118 = v16;
        goto LABEL_143;
      }

      v164 = XMLPlistScanner.scanThroughCloseTag(_:)(v162);
      v166 = v165;
      v167 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v16);
      v168 = *(v3 + 1);
      v169 = v164 - *v3;
      v170 = *(v3 + 4);
      v352[0] = *v3;
      v352[1] = v168;
      v353 = v3[1];
      v354 = v170;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v352);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v171 = swift_allocObject();
      *(v171 + 16) = xmmword_18121D6B0;
      *(v171 + 32) = v167;
      *(v171 + 40) = v166 - v164;
      *(v171 + 48) = v169;
      goto LABEL_288;
    }

LABEL_262:
    if ((v75 & 0x18) == 0)
    {
      if ((v16 & 0x100) == 0)
      {
        XMLPlistScanner.checkForCloseTag(_:)(v16);
        if (v221)
        {
          goto LABEL_230;
        }
      }

      v222 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v16);
      v223 = v3[1];
      v355[0] = *v3;
      v355[1] = v223;
      v356 = *(v3 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v355);
      v224 = *(v3 + 5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v224 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v224 + 2) + 1, 1, v224);
      }

      v226 = *(v224 + 2);
      v225 = *(v224 + 3);
      if (v226 >= v225 >> 1)
      {
        v224 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v225 > 1), v226 + 1, 1, v224);
      }

      *(v224 + 2) = v226 + 1;
      *&v224[8 * v226 + 32] = v222;
      *(v3 + 5) = v224;
      goto LABEL_293;
    }

    if ((v16 & 0x100) != 0)
    {
      v227 = v3[1];
      v347[0] = *v3;
      v347[1] = v227;
      v348 = *(v3 + 4);
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v347);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v171 = swift_allocObject();
      *(v171 + 16) = xmmword_18121D6B0;
      v228 = 12;
      *(v171 + 40) = 0;
      *(v171 + 48) = 0;
      if (v16 == 3)
      {
        v228 = 13;
      }

      *(v171 + 32) = v228;
LABEL_288:
      specialized Array.append<A>(contentsOf:)(v171);
      goto LABEL_293;
    }

    XMLPlistScanner.scanString(asKey:)(v16 == 3);
    if (v218)
    {
      goto LABEL_230;
    }

    XMLPlistScanner.checkForCloseTag(_:)(v16);
LABEL_283:
    if (v219)
    {
      goto LABEL_230;
    }

    goto LABEL_293;
  }

  v14 = 1 << v123;
  if (((1 << v123) & 0x1E0) != 0)
  {
    if ((v123 & 0x100) == 0)
    {
      v126 = XMLPlistScanner.scanThroughCloseTag(_:)(v123);
      v128 = v127;
      v129 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v10);
      v130 = *(v3 + 1);
      v131 = v126 - *v3;
      v132 = *(v3 + 4);
      v369[0] = *v3;
      v369[1] = v130;
      v370 = v3[1];
      v371 = v132;
      XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v369);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
      v133 = swift_allocObject();
      *(v133 + 16) = xmmword_18121D6B0;
      *(v133 + 32) = v129;
      *(v133 + 40) = v128 - v126;
      *(v133 + 48) = v131;
      goto LABEL_205;
    }

    v150 = v3[1];
    v366 = *v3;
    v367 = v150;
    v368 = *(v3 + 4);
    v151 = BufferReader.lineNumber.getter();
    v10 = v10;
LABEL_175:
    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v152 = v10;
LABEL_176:
    *(v152 + 8) = v151;
    *(v152 + 16) = 0;
    *(v152 + 24) = 0;
    v153 = 2;
    goto LABEL_208;
  }

LABEL_157:
  if ((v14 & 0x18) == 0)
  {
    if ((v10 & 0x100) == 0)
    {
      XMLPlistScanner.checkForCloseTag(_:)(v10);
      if (v154)
      {
        goto LABEL_231;
      }
    }

    v155 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v10);
    v156 = v3[1];
    v372[0] = *v3;
    v372[1] = v156;
    v373 = *(v3 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v372);
    v157 = *(v3 + 5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v157 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v157 + 2) + 1, 1, v157);
    }

    v159 = *(v157 + 2);
    v158 = *(v157 + 3);
    if (v159 >= v158 >> 1)
    {
      v157 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v158 > 1), v159 + 1, 1, v157);
    }

    *(v157 + 2) = v159 + 1;
    *&v157[8 * v159 + 32] = v155;
    *(v3 + 5) = v157;
    goto LABEL_206;
  }

  if ((v10 & 0x100) == 0)
  {
    XMLPlistScanner.scanString(asKey:)(v10 == 3);
    if (v134)
    {
      goto LABEL_231;
    }

    XMLPlistScanner.checkForCloseTag(_:)(v10);
    if (v135)
    {
      goto LABEL_231;
    }

    goto LABEL_206;
  }

  v173 = v3[1];
  v364[0] = *v3;
  v364[1] = v173;
  v365 = *(v3 + 4);
  XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v364);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd);
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_18121D6B0;
  v174 = 12;
  *(v133 + 40) = 0;
  *(v133 + 48) = 0;
  if (v10 == 3)
  {
    v174 = 13;
  }

  *(v133 + 32) = v174;
LABEL_205:
  specialized Array.append<A>(contentsOf:)(v133);
LABEL_206:
  *(v3 + 3) = v1;
  _StringGuts.grow(_:)(77);
  MEMORY[0x1865CB0E0](0xD000000000000027, 0x8000000181486390);
  v183 = *(v3 + 2);
  v184 = *(v3 + 4);
  v339 = *v3;
  v340 = v183;
  v341 = v1;
  v342 = v184;
  while (1)
  {
    BufferReader.lineNumber.getter();
    v185 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1865CB0E0](v185);

    MEMORY[0x1865CB0E0](0xD000000000000024, 0x80000001814863C0);
    lazy protocol witness table accessor for type XMLPlistError and conformance XMLPlistError();
    swift_allocError();
    *v152 = 0;
    *(v152 + 8) = 0xE000000000000000;
    *(v152 + 16) = 0;
    *(v152 + 24) = 0;
    v153 = 5;
LABEL_208:
    *(v152 + 32) = v153;
    swift_willThrow();
LABEL_231:
    v197 = v3[1];
    v276[0] = *v3;
    v276[1] = v197;
    v277 = *(v3 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v276);
    v47 = *(v3 + 5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v47 + 2) + 1, 1, v47);
    }

    v199 = *(v47 + 2);
    v198 = *(v47 + 3);
    v16 = v199 + 1;
    if (v199 >= v198 >> 1)
    {
      v47 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v198 > 1), v199 + 1, 1, v47);
    }

    *(v47 + 2) = v16;
    *&v47[8 * v199 + 32] = 10;
    *&v47[8 * v2 + 32] = v16;
    v111 = v271 + 2;
    if (!__OFADD__(v271, 2))
    {
      break;
    }

    __break(1u);
LABEL_239:
    v200 = specialized XMLPlistMap.TypeDescriptor.init(_:)(v16);
    v201 = v3[1];
    v310[0] = *v3;
    v310[1] = v201;
    v311 = *(v3 + 4);
    XMLPlistScanner.PartialMapData.resizeIfNecessary(with:)(v310);
    v202 = *(v3 + 5);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v202 + 2) + 1, 1, v202);
    }

    v204 = *(v202 + 2);
    v203 = *(v202 + 3);
    if (v204 >= v203 >> 1)
    {
      v202 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v203 > 1), v204 + 1, 1, v202);
    }

    *(v202 + 2) = v204 + 1;
    *&v202[8 * v204 + 32] = v200;
    *(v3 + 5) = v202;
LABEL_258:
    v2 = v427;
LABEL_259:
    *(v3 + 3) = v1;
    _StringGuts.grow(_:)(77);
    MEMORY[0x1865CB0E0](0xD000000000000027, 0x8000000181486390);
    v216 = *(v3 + 2);
    v217 = *(v3 + 4);
    v294 = *v3;
    v295 = v216;
    v296 = v1;
    v297 = v217;
  }

LABEL_236:
  *&v47[8 * v111 + 32] = v9;
LABEL_237:
  *(v3 + 5) = v47;
}